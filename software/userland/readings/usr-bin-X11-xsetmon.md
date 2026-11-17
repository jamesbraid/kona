# Readings: `usr/bin/X11/xsetmon`

One entry per routine, filed here from the reading batches by binary.

- `__start` in `usr/bin/X11/xsetmon` at 0x1001e5a0
  **Inferred.** Looks like the program startup stub. The bal at 0x1001e5b8 targets __start+32 (0x1001e5c0), the next instruction of the routine itself. It loads three words at offsets 0x3250c, 0x32e18 and 0x32e14 (shown as entry(...) in the facts) and stores words through them; the stored values are not shown, and the store through the first happens only when its loaded word is zero (branch at 0x1001e5ec). It then makes four indirect calls at 0x1001e634, 0x1001e648, 0x1001e688 and 0x1001e6a0. The call at 0x1001e688 passes the values loaded through the three slots as a0, a1 and a2, and the last passes the result of that call as a0. No call names a callee in the facts, so whether any reaches main is not shown.
  Reviewed: 2026-11-12

- `__start` in `usr/bin/X11/xsetmon` at 0x1001e5a0
  **Inferred.** A 268-byte startup routine. It calls its own internal entry at __start+32 (0x1001e5c0) through the branch-and-link at 0x1001e5b8, then loads and stores words in three table slots (0x3250c, 0x32e14, 0x32e18). It makes four indirect calls at 0x1001e634, 0x1001e648, 0x1001e688 and 0x1001e6a0, and the one at 0x1001e688 passes the slot values as arguments. When the word in the slot at 0x3250c is nonzero, the branch at 0x1001e5ec skips the store at 0x1001e5fc.
  Reviewed: 2026-11-12

- `_main` in `usr/bin/X11/xsetmon` at 0x1001e6c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001e6c0-0x1001e774 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0x1001e6dc loads 4 bytes from abs 0x10050980.
  The `lw` at 0x1001e6e0 loads 4 bytes from abs 0x1004c010.
  The `lw` at 0x1001e6fc loads 4 bytes from abs 0x10050b38.
  The `sw` at 0x1001e708 stores 4 bytes to abs 0x1004c010.
  The `lw` at 0x1001e714 loads 4 bytes from abs 0x10050988.
  The `lw` at 0x1001e72c loads 4 bytes from abs 0x10050990.
  The `lw` at 0x1001e73c loads 4 bytes from abs 0x100508fc (__elf_vaddr___cplinit).
  The `lw` at 0x1001e758 loads 4 bytes from ?.
  The `jalr` at 0x1001e704 calls __ct__13Iostream_initGv with a0=0x1, a1=a1 at entry (arg1), a2=0x1004c000, a3=a3 at entry (arg3).
  The `jalr` at 0x1001e748 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1001e6ec targets 0x1001e75c, is taken when v0(=[0x1004c010]) == 0, and falls through when v0(=[0x1004c010]) != 0.
  The `beq` branch at 0x1001e730 targets 0x1001e75c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1001e740 targets 0x1001e750, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bnel` branch at 0x1001e754 targets 0x1001e740, is taken when s5(?) != s7(=table(0x100508fc)), and falls through when s5(?) == s7(=table(0x100508fc)); its branch-likely delay slot `lw t9,0(s5)` at 0x1001e758 runs only when taken and is annulled on fall-through.
  The return at 0x1001e76c has v0 = one of [0x1004c010], ret(__ct__13Iostream_initGv), ?.

- `_fini` in `usr/bin/X11/xsetmon` at 0x1001e780 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001e780-0x1001e7d4 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x1001e7a0 loads 4 bytes from abs 0x1005098c.
  The `lw` at 0x1001e7b4 loads 4 bytes from abs 0x10050b3c.
  The `jal` at 0x1001e7a4 calls __process_needed_destructions__Gv [0x1001e7e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001e7bc calls __dt__13Iostream_initGv with a0=0x1, a1=0x2, a2=?, a3=?.
  The return at 0x1001e7cc has v0 = ret(__dt__13Iostream_initGv).

- `__process_needed_destructions__Gv` in `usr/bin/X11/xsetmon` at 0x1001e7e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001e7e0-0x1001e860 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x1001e800 loads 4 bytes from abs 0x10050984.
  2 such `lw` accesses load 4 bytes from abs 0x10051e34, including `lw` at 0x1001e804, `lw` at 0x1001e820.
  The `lw` at 0x1001e82c loads 4 bytes from [0x10051e34] +0x4.
  The `lw` at 0x1001e830 loads 4 bytes from [0x10051e34] +0x8.
  The `lw` at 0x1001e834 loads 4 bytes from [0x10051e34] +0x0.
  The `sw` at 0x1001e83c stores 4 bytes to abs 0x10051e34.
  The `jalr` at 0x1001e818 calls (unknown callee) with a0=[[0x10051e34]+4], a1=0x2, a2=[0x10051e34], a3=?.
  The `jalr` at 0x1001e840 calls (unknown callee) with a0=[[0x10051e34]+4], a1=?, a2=[0x10051e34], a3=?.
  The `beq` branch at 0x1001e808 targets 0x1001e850, is taken when a2(=[0x10051e34]) == 0, and falls through when a2(=[0x10051e34]) != 0.
  The `beq` branch at 0x1001e810 targets 0x1001e82c and is always taken.
  The `beq` branch at 0x1001e824 targets 0x1001e850, is taken when a2(=[0x10051e34]) == 0, and falls through when a2(=[0x10051e34]) != 0.
  The `bne` branch at 0x1001e838 targets 0x1001e818, is taken when a0(=[[0x10051e34]+4]) != 0, and falls through when a0(=[[0x10051e34]+4]) == 0.
  The `beq` branch at 0x1001e848 targets 0x1001e820 and is always taken.
  The return at 0x1001e858 has v0 = one of ?, ret(?).

- `__record_needed_destruction` in `usr/bin/X11/xsetmon` at 0x1001e860 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001e860-0x1001e888 (40 bytes).
  It occupies 40 bytes.
  The `lw` at 0x1001e874 loads 4 bytes from abs 0x10050984.
  The `lw` at 0x1001e878 loads 4 bytes from abs 0x10051e34.
  The `sw` at 0x1001e87c stores 4 bytes to abs 0x10051e34.
  The `sw` at 0x1001e884 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The return at 0x1001e880 has v0 = [0x10051e34].

- `__std__needed_destruction_list` in `usr/bin/X11/xsetmon` at 0x1001e890 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001e890-0x1001e8cc (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0x1001e8b0 loads 4 bytes from abs 0x1005098c.
  The `jal` at 0x1001e8b4 calls __process_needed_destructions__Gv [0x1001e7e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1001e8c4 has v0 = ret(__process_needed_destructions__Gv).

- `InitEZ__Gv` in `usr/bin/X11/xsetmon` at 0x1001e8f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001e8f0-0x1001e910 (32 bytes).
  It occupies 32 bytes.
  The `beq` branch at 0x1001e8f8 targets 0x1001e900 and is always taken.
  The return at 0x1001e908 has v0 = ?.

- `EZ__GP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1001e910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001e910-0x1001e9c4 (180 bytes).
  It occupies 180 bytes.
  The `jal` at 0x1001e938 calls __nw__9EZWrapperSGUi [0x1001f720] with a0=0xb4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1001e960 calls __ct__9EZWrapperGP10_WidgetRec [0x1001f820] with a0=ret(__nw__9EZWrapperSGUi), a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0x1001e944 targets 0x1001e97c, is taken when v0(=ret(__nw__9EZWrapperSGUi)) == 0, and falls through when v0(=ret(__nw__9EZWrapperSGUi)) != 0.
  The `beq` branch at 0x1001e974 targets 0x1001e980 and is always taken.
  The return at 0x1001e9a8 has v0 = one of ret(__nw__9EZWrapperSGUi), 0x0.
  The instructions from 0x1001e9b0 to 0x1001e9c0 are not reached by any path from the entry, and their branches are not listed.

- `CommaListToVkNameList__GPCc` in `usr/bin/X11/xsetmon` at 0x1001e9d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001e9d0-0x1001eba4 (468 bytes).
  It occupies 468 bytes.
  The `lbu` at 0x1001ea68 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x1001e9f8 calls __nw__GUi with a0=0xc, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001ea24 calls __ct__10VkNameListGv with a0=ret(__nw__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x1001eaa8 calls strlen with a0=a0 at entry (arg0), a1=a0 at entry (arg0), a2=?, a3=?, a4=[a0]:1, a6=a0 at entry (arg0).
  The `jalr` at 0x1001eabc calls XtMalloc with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001ead4 calls strcpy with a0=ret(XtMalloc), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x1001eb08 calls strtok with a0=?, a1=0x100519d0, a2=?, a3=?.
  The `jalr` at 0x1001eb30 calls add__10VkNameListGPc with a0=?, a1=ret(strtok), a2=?, a3=?.
  The `jalr` at 0x1001eb44 calls strtok with a0=0x0, a1=0x100519d0, a2=?, a3=?.
  The `jalr` at 0x1001eb68 calls XtFree with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1001ea0c targets 0x1001ea44, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1001ea3c targets 0x1001ea48 and is always taken.
  The `beq` branch at 0x1001ea5c targets 0x1001ea74, is taken when a1(=a0) == 0, and falls through when a1(=a0) != 0.
  The `bne` branch at 0x1001ea6c targets 0x1001ea94, is taken when a4(=[a0]:1) != 0, and falls through when a4(=[a0]:1) == 0.
  The `beq` branch at 0x1001ea98 targets 0x1001eaf0, is taken when a6(=a0) == 0, and falls through when a6(=a0) != 0.
  The `beq` branch at 0x1001eae8 targets 0x1001eaf4 and is always taken.
  The `beq` branch at 0x1001eb1c targets 0x1001eb60, is taken when t1(=ret(strtok)) == 0, and falls through when t1(=ret(strtok)) != 0.
  The `bne` branch at 0x1001eb58 targets 0x1001eb24, is taken when t2(=ret(strtok)) != 0, and falls through when t2(=ret(strtok)) == 0.
  The return at 0x1001ea8c has v0 = ?.
  The return at 0x1001eb88 has v0 = ?.
  The instructions from 0x1001eb90 to 0x1001eba0 are not reached by any path from the entry, and their branches are not listed.

- `__opUs__11EZDimensionGv` in `usr/bin/X11/xsetmon` at 0x1001ed90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001ed90-0x1001edf8 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x1001edb0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1001edb8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `jalr` at 0x1001edc8 calls XtVaGetValues with a0=[a0+8], a1=[a0+4], a2=sp-48, a3=0x0.
  The `beq` branch at 0x1001edd8 targets 0x1001ede0 and is always taken.
  The return at 0x1001edf0 has v0 = ?.

- `__as__11EZDimensionGi` in `usr/bin/X11/xsetmon` at 0x1001ee00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001ee00-0x1001ee70 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1001ee24 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1001ee2c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x1001ee48 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x1001ee3c calls XtVaSetValues with a0=[a0+8], a1=[a0+4], a2=a1 at entry (arg1), a3=0x0.
  The `beq` branch at 0x1001ee50 targets 0x1001ee58 and is always taken.
  The return at 0x1001ee68 has v0 = [a0].

- `__ops__5EZPosGv` in `usr/bin/X11/xsetmon` at 0x1001ef60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001ef60-0x1001efc8 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x1001ef80 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1001ef88 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `jalr` at 0x1001ef98 calls XtVaGetValues with a0=[a0+8], a1=[a0+4], a2=sp-48, a3=0x0.
  The `beq` branch at 0x1001efa8 targets 0x1001efb0 and is always taken.
  The return at 0x1001efc0 has v0 = ?.

- `__as__5EZPosGi` in `usr/bin/X11/xsetmon` at 0x1001efd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001efd0-0x1001f040 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1001eff4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1001effc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x1001f018 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x1001f00c calls XtVaSetValues with a0=[a0+8], a1=[a0+4], a2=a1 at entry (arg1), a3=0x0.
  The `beq` branch at 0x1001f020 targets 0x1001f028 and is always taken.
  The return at 0x1001f038 has v0 = [a0].

- `__opi__5EZIntGv` in `usr/bin/X11/xsetmon` at 0x1001f130 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001f130-0x1001f198 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x1001f150 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1001f158 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `jalr` at 0x1001f168 calls XtVaGetValues with a0=[a0+8], a1=[a0+4], a2=sp-48, a3=0x0.
  The `beq` branch at 0x1001f178 targets 0x1001f180 and is always taken.
  The return at 0x1001f190 has v0 = ?.

- `__as__5EZIntGi` in `usr/bin/X11/xsetmon` at 0x1001f1a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001f1a0-0x1001f210 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1001f1c4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1001f1cc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x1001f1e8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x1001f1dc calls XtVaSetValues with a0=[a0+8], a1=[a0+4], a2=a1 at entry (arg1), a3=0x0.
  The `beq` branch at 0x1001f1f0 targets 0x1001f1f8 and is always taken.
  The return at 0x1001f208 has v0 = [a0].

- `__opUl__7EZColorGv` in `usr/bin/X11/xsetmon` at 0x1001f300 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001f300-0x1001f368 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x1001f320 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1001f328 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `jalr` at 0x1001f338 calls XtVaGetValues with a0=[a0+8], a1=[a0+4], a2=sp-48, a3=0x0.
  The `beq` branch at 0x1001f348 targets 0x1001f350 and is always taken.
  The return at 0x1001f360 has v0 = ?.

- `__as__7EZColorGPc` in `usr/bin/X11/xsetmon` at 0x1001f370 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001f370-0x1001f400 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0x1001f3a4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1001f3b4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x1001f3d8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x1001f398 calls strlen with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001f3cc calls XtVaSetValues with a0=[a0+8], a1=0x10049658, a2=[a0+4], a3=-0x1a, a4=a1 at entry (arg1), a5=ret(strlen)+1, a6=0x0.
  The `beq` branch at 0x1001f3e0 targets 0x1001f3e8 and is always taken.
  The return at 0x1001f3f8 has v0 = [a0].

- `__as__7EZColorGUl` in `usr/bin/X11/xsetmon` at 0x1001f400 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001f400-0x1001f470 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1001f424 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1001f42c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x1001f448 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x1001f43c calls XtVaSetValues with a0=[a0+8], a1=[a0+4], a2=a1 at entry (arg1), a3=0x0.
  The `beq` branch at 0x1001f450 targets 0x1001f458 and is always taken.
  The return at 0x1001f468 has v0 = [a0].

- `__opPc__10EZXmStringGv` in `usr/bin/X11/xsetmon` at 0x1001f560 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001f560-0x1001f5f4 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x1001f580 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1001f588 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `jalr` at 0x1001f598 calls XtVaGetValues with a0=[a0+8], a1=[a0+4], a2=sp-48, a3=0x0.
  The `jalr` at 0x1001f5b4 calls XmStringGetLtoR with a0=?, a1=sym(_XmStrings)+12544, a2=sp-44, a3=?.
  The `jalr` at 0x1001f5c4 calls XmStringFree with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1001f5d4 targets 0x1001f5dc and is always taken.
  The return at 0x1001f5ec has v0 = ?.

- `__as__10EZXmStringGPc` in `usr/bin/X11/xsetmon` at 0x1001f600 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001f600-0x1001f690 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0x1001f634 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1001f644 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x1001f668 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x1001f628 calls strlen with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001f65c calls XtVaSetValues with a0=[a0+8], a1=0x10049658, a2=[a0+4], a3=-0x1a, a4=a1 at entry (arg1), a5=ret(strlen)+1, a6=0x0.
  The `beq` branch at 0x1001f670 targets 0x1001f678 and is always taken.
  The return at 0x1001f688 has v0 = [a0].

- `__nw__9EZWrapperSGUi` in `usr/bin/X11/xsetmon` at 0x1001f720 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001f720-0x1001f7f0 (208 bytes).
  It occupies 208 bytes.
  2 such `lw` accesses load 4 bytes from sym(_objList__9EZWrapper) +0x0, including `lw` at 0x1001f740, `lw` at 0x1001f784.
  The `sw` at 0x1001f760 stores 4 bytes to sym(_objList__9EZWrapper) +0x0.
  3 such `lw` accesses load 4 bytes from sym(_index__9EZWrapper) +0x0, including `lw` at 0x1001f768, `lw` at 0x1001f78c, `lw` at 0x1001f7b8.
  2 such `sw` accesses store 4 bytes to sym(_index__9EZWrapper) +0x0, including `sw` at 0x1001f77c, `sw` at 0x1001f7c4.
  The `jalr` at 0x1001f754 calls __nwa__GUi with a0=0xe10, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1001f744 targets 0x1001f764, is taken when at(=[sym(_objList__9EZWrapper)]) != 0, and falls through when at(=[sym(_objList__9EZWrapper)]) == 0.
  The `bne` branch at 0x1001f770 targets 0x1001f780, is taken when a0(=[sym(_index__9EZWrapper)]) < 0x14 (signed), and falls through when a0(=[sym(_index__9EZWrapper)]) >= 0x14 (signed).
  The `beq` branch at 0x1001f7d0 targets 0x1001f7d8 and is always taken.
  The return at 0x1001f7e8 has v0 = ?.

- `__dl__9EZWrapperSGPvUi` in `usr/bin/X11/xsetmon` at 0x1001f7f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001f7f0-0x1001f818 (40 bytes).
  It occupies 40 bytes.
  The `beq` branch at 0x1001f800 targets 0x1001f808 and is always taken.
  The return at 0x1001f810 has v0 = ?.

- `__ct__9EZWrapperGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1001f820 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001f820-0x1001fac0 (672 bytes).
  It occupies 672 bytes.
  The `sw` at 0x1001f950 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x1001f850 calls (unnamed) [0x1001ed30] with a0=a0+4, a1=a1 at entry (arg1), a2=0x390dc, a3=a3 at entry (arg3).
  The `jal` at 0x1001f868 calls (unnamed) [0x1001ed30] with a0=a0+20, a1=?, a2=?, a3=?.
  The `jal` at 0x1001f880 calls (unnamed) [0x1001ed30] with a0=a0+36, a1=?, a2=?, a3=?.
  The `jal` at 0x1001f898 calls (unnamed) [0x1001ef00] with a0=a0+52, a1=?, a2=?, a3=?.
  The `jal` at 0x1001f8b0 calls (unnamed) [0x1001ef00] with a0=a0+68, a1=?, a2=?, a3=?.
  The `jal` at 0x1001f8c8 calls (unnamed) [0x1001f2a0] with a0=a0+84, a1=?, a2=?, a3=?.
  The `jal` at 0x1001f8e0 calls (unnamed) [0x1001f2a0] with a0=a0+100, a1=?, a2=?, a3=?.
  The `jal` at 0x1001f8f8 calls (unnamed) [0x1001f500] with a0=a0+116, a1=?, a2=?, a3=?.
  The `jal` at 0x1001f910 calls (unnamed) [0x1001f0d0] with a0=a0+132, a1=?, a2=?, a3=?.
  The `jal` at 0x1001f928 calls (unnamed) [0x1001f0d0] with a0=a0+148, a1=?, a2=?, a3=?.
  The `jal` at 0x1001f940 calls (unnamed) [0x1001f0d0] with a0=a0+164, a1=?, a2=?, a3=?.
  The `jal` at 0x1001f96c calls (unnamed) [0x1001ecd0] with a0=a0+20, a1=a0 at entry (arg0), a2=-0x17, a3=?.
  The `jal` at 0x1001f98c calls (unnamed) [0x1001ecd0] with a0=a0+36, a1=a0 at entry (arg0), a2=-0x16, a3=?.
  The `jal` at 0x1001f9ac calls (unnamed) [0x1001ecd0] with a0=a0+52, a1=a0 at entry (arg0), a2=-0x2f, a3=?.
  The `jal` at 0x1001f9cc calls (unnamed) [0x1001ecd0] with a0=a0+68, a1=a0 at entry (arg0), a2=-0x30, a3=?.
  The `jal` at 0x1001f9ec calls (unnamed) [0x1001ecd0] with a0=a0+84, a1=a0 at entry (arg0), a2=-0x5, a3=?.
  The `jal` at 0x1001fa0c calls (unnamed) [0x1001ecd0] with a0=a0+100, a1=a0 at entry (arg0), a2=-0x2, a3=?.
  The `jal` at 0x1001fa2c calls (unnamed) [0x1001ecd0] with a0=a0+116, a1=a0 at entry (arg0), a2=-0x7, a3=?.
  The `jal` at 0x1001fa4c calls (unnamed) [0x1001ecd0] with a0=a0+132, a1=a0 at entry (arg0), a2=-0x8, a3=?.
  The `jal` at 0x1001fa6c calls (unnamed) [0x1001ecd0] with a0=a0+148, a1=a0 at entry (arg0), a2=-0x18, a3=?.
  The `jal` at 0x1001fa8c calls (unnamed) [0x1001ecd0] with a0=a0+164, a1=a0 at entry (arg0), a2=-0xd, a3=?.
  The return at 0x1001faa4 has v0 = a0.
  The instructions from 0x1001faac to 0x1001fabc are not reached by any path from the entry, and their branches are not listed.

- `__dt__9EZWrapperGv` in `usr/bin/X11/xsetmon` at 0x1001fac0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001fac0-0x1001fb38 (120 bytes).
  It occupies 120 bytes.
  The `jal` at 0x1001fb08 calls __dl__9EZWrapperSGPvUi [0x1001f7f0] with a0=a0 at entry (arg0), a1=0xb4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1001fae4 targets 0x1001fb10, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x1001faf4 targets 0x1001fb10, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x1001fb1c has v0 = one of 0x38e3c, ret(__dl__9EZWrapperSGPvUi).
  The instructions from 0x1001fb24 to 0x1001fb34 are not reached by any path from the entry, and their branches are not listed.

- `__as__9EZWrapperGi` in `usr/bin/X11/xsetmon` at 0x1001fb40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001fb40-0x1001fe9c (860 bytes).
  It occupies 860 bytes.
  17 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x1001fb64, `lw` at 0x1001fb8c, `lw` at 0x1001fbb4.
  The `lw` at 0x1001fb6c loads 4 bytes from sym(xmToggleButtonWidgetClass) +0x0.
  The `lw` at 0x1001fb94 loads 4 bytes from sym(xmToggleButtonGadgetClass) +0x0.
  The `lw` at 0x1001fbe4 loads 4 bytes from sym(xmScrollBarWidgetClass) +0x0.
  The `lw` at 0x1001fc0c loads 4 bytes from sym(xmScaleWidgetClass) +0x0.
  The `lw` at 0x1001fc3c loads 4 bytes from sym(sgThumbWheelWidgetClass) +0x0.
  The `lw` at 0x1001fc68 loads 4 bytes from sym(sgDialWidgetClass) +0x0.
  The `lw` at 0x1001fd04 loads 4 bytes from sym(xmLabelWidgetClass) +0x0.
  The `lw` at 0x1001fd2c loads 4 bytes from sym(xmLabelGadgetClass) +0x0.
  The `lw` at 0x1001fda0 loads 4 bytes from sym(xmTextWidgetClass) +0x0.
  The `lw` at 0x1001fdc8 loads 4 bytes from sym(xmTextFieldWidgetClass) +0x0.
  The `lw` at 0x1001fe3c loads 4 bytes from sym(xmListWidgetClass) +0x0.
  The `jalr` at 0x1001fb74 calls XtIsSubclass with a0=[a0], a1=[sym(xmToggleButtonWidgetClass)], a2=0x38dbc, a3=a3 at entry (arg3).
  The `jalr` at 0x1001fb9c calls XtIsSubclass with a0=[a0], a1=[sym(xmToggleButtonGadgetClass)], a2=?, a3=?.
  The `jalr` at 0x1001fbc8 calls XtVaSetValues with a0=[a0], a1=-0x38, a2=a1 at entry (arg1), a3=0x0.
  The `jalr` at 0x1001fbec calls XtIsSubclass with a0=[a0], a1=[sym(xmScrollBarWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x1001fc14 calls XtIsSubclass with a0=[a0], a1=[sym(xmScaleWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x1001fc44 calls XtIsSubclass with a0=[a0], a1=[sym(sgThumbWheelWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x1001fc70 calls XtIsSubclass with a0=[a0], a1=[sym(sgDialWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x1001fca0 calls XtVaGetValues with a0=[a0], a1=-0xd, a2=sp-64, a3=-0x18, a4=sp-60, a5=0x0.
  The `jalr` at 0x1001fce8 calls XtVaSetValues with a0=[a0], a1=-0x8, a2=a1 at entry (arg1), a3=0x0, a4=a1 at entry (arg1).
  The `jalr` at 0x1001fd0c calls XtIsSubclass with a0=[a0], a1=[sym(xmLabelWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x1001fd34 calls XtIsSubclass with a0=[a0], a1=[sym(xmLabelGadgetClass)], a2=?, a3=?.
  The `jal` at 0x1001fd54 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x1001fd6c calls VkFormat__GPCce with a0=0x100519d4, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1001fd84 calls __as__9EZWrapperGPCc [0x100201d0] with a0=?, a1=ret(VkFormat__GPCce), a2=?, a3=?.
  The `jalr` at 0x1001fda8 calls XtIsSubclass with a0=[a0], a1=[sym(xmTextWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x1001fdd0 calls XtIsSubclass with a0=[a0], a1=[sym(xmTextFieldWidgetClass)], a2=?, a3=?.
  The `jal` at 0x1001fdf0 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x1001fe08 calls VkFormat__GPCce with a0=0x100519d4, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1001fe20 calls __as__9EZWrapperGPCc [0x100201d0] with a0=?, a1=ret(VkFormat__GPCce), a2=?, a3=?.
  The `jalr` at 0x1001fe44 calls XtIsSubclass with a0=[a0], a1=[sym(xmListWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x1001fe6c calls XmListSelectPos with a0=[a0], a1=a1 at entry (arg1), a2=0x1, a3=?.
  The `bne` branch at 0x1001fb80 targets 0x1001fbb0, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x1001fba8 targets 0x1001fbd8, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x1001fbd0 targets 0x1001fe74 and is always taken.
  The `bne` branch at 0x1001fbf8 targets 0x1001fc80, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x1001fc20 targets 0x1001fc30, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x1001fc28 targets 0x1001fc80 and is always taken.
  The `beq` branch at 0x1001fc4c targets 0x1001fc5c, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x1001fc54 targets 0x1001fc80 and is always taken.
  The `beq` branch at 0x1001fc78 targets 0x1001fcf8, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `bne` branch at 0x1001fcb4 targets 0x1001fcf0, is taken when a1 < a2(?) (signed), and falls through when a1 >= a2(?) (signed).
  The `bne` branch at 0x1001fcc8 targets 0x1001fcf0, is taken when a3(?) < a4(=a1) (signed), and falls through when a3(?) >= a4(=a1) (signed).
  The `beq` branch at 0x1001fcf0 targets 0x1001fe74 and is always taken.
  The `bne` branch at 0x1001fd18 targets 0x1001fd48, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x1001fd40 targets 0x1001fd94, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x1001fd8c targets 0x1001fe74 and is always taken.
  The `bne` branch at 0x1001fdb4 targets 0x1001fde4, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x1001fddc targets 0x1001fe30, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x1001fe28 targets 0x1001fe74 and is always taken.
  The `beq` branch at 0x1001fe50 targets 0x1001fe74, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x1001fe7c targets 0x1001fe84 and is always taken.
  The return at 0x1001fe94 has v0 = a0.

- `__as__9EZWrapperGf` in `usr/bin/X11/xsetmon` at 0x1001fea0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1001fea0-0x100201c4 (804 bytes).
  It occupies 804 bytes.
  14 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x1001fec4, `lw` at 0x1001feec, `lw` at 0x1001ff1c.
  The `lw` at 0x1001fecc loads 4 bytes from sym(xmScrollBarWidgetClass) +0x0.
  The `lw` at 0x1001fef4 loads 4 bytes from sym(xmScaleWidgetClass) +0x0.
  The `lw` at 0x1001ff24 loads 4 bytes from sym(sgThumbWheelWidgetClass) +0x0.
  The `lw` at 0x1001ff50 loads 4 bytes from sym(sgDialWidgetClass) +0x0.
  The `lw` at 0x10020014 loads 4 bytes from sym(xmLabelWidgetClass) +0x0.
  The `lw` at 0x1002003c loads 4 bytes from sym(xmLabelGadgetClass) +0x0.
  The `lw` at 0x100200b8 loads 4 bytes from sym(xmTextWidgetClass) +0x0.
  The `lw` at 0x100200e0 loads 4 bytes from sym(xmTextFieldWidgetClass) +0x0.
  The `lw` at 0x1002015c loads 4 bytes from sym(xmListWidgetClass) +0x0.
  The `jalr` at 0x1001fed4 calls XtIsSubclass with a0=[a0], a1=[sym(xmScrollBarWidgetClass)], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001fefc calls XtIsSubclass with a0=[a0], a1=[sym(xmScaleWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x1001ff2c calls XtIsSubclass with a0=[a0], a1=[sym(sgThumbWheelWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x1001ff58 calls XtIsSubclass with a0=[a0], a1=[sym(sgDialWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x1001ff88 calls XtVaGetValues with a0=[a0], a1=-0xd, a2=sp-64, a3=-0x18, a4=sp-60, a5=0x0.
  The `jalr` at 0x1001fff8 calls XtVaSetValues with a0=[a0], a1=-0x8, a2=?, a3=0x0.
  The `jalr` at 0x1002001c calls XtIsSubclass with a0=[a0], a1=[sym(xmLabelWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10020044 calls XtIsSubclass with a0=[a0], a1=[sym(xmLabelGadgetClass)], a2=?, a3=?.
  The `jal` at 0x10020064 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x10020084 calls VkFormat__GPCce with a0=0x100519d8, a1=?, a2=?, a3=?.
  The `jal` at 0x1002009c calls __as__9EZWrapperGPCc [0x100201d0] with a0=?, a1=ret(VkFormat__GPCce), a2=?, a3=?.
  The `jalr` at 0x100200c0 calls XtIsSubclass with a0=[a0], a1=[sym(xmTextWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x100200e8 calls XtIsSubclass with a0=[a0], a1=[sym(xmTextFieldWidgetClass)], a2=?, a3=?.
  The `jal` at 0x10020108 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x10020128 calls VkFormat__GPCce with a0=0x100519d8, a1=?, a2=?, a3=?.
  The `jal` at 0x10020140 calls __as__9EZWrapperGPCc [0x100201d0] with a0=?, a1=ret(VkFormat__GPCce), a2=?, a3=?.
  The `jalr` at 0x10020164 calls XtIsSubclass with a0=[a0], a1=[sym(xmListWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10020194 calls XmListSelectPos with a0=[a0], a1=?, a2=0x1, a3=?.
  The `bne` branch at 0x1001fee0 targets 0x1001ff68, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x1001ff08 targets 0x1001ff18, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x1001ff10 targets 0x1001ff68 and is always taken.
  The `beq` branch at 0x1001ff34 targets 0x1001ff44, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x1001ff3c targets 0x1001ff68 and is always taken.
  The `beq` branch at 0x1001ff60 targets 0x10020008, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `bc1f` branch at 0x1001ffac targets 0x10020000, is taken when not (f0 <= f1(=f13) (c.le.s at 0x1001ffa4)), and falls through when f0 <= f1(=f13) (c.le.s at 0x1001ffa4).
  The `bc1f` branch at 0x1001ffd0 targets 0x10020000, is taken when not (f1(=f13) <= f2 (c.le.s at 0x1001ffc8)), and falls through when f1(=f13) <= f2 (c.le.s at 0x1001ffc8).
  The `beq` branch at 0x10020000 targets 0x1002019c and is always taken.
  The `bne` branch at 0x10020028 targets 0x10020058, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x10020050 targets 0x100200ac, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x100200a4 targets 0x1002019c and is always taken.
  The `bne` branch at 0x100200cc targets 0x100200fc, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x100200f4 targets 0x10020150, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10020148 targets 0x1002019c and is always taken.
  The `beq` branch at 0x10020170 targets 0x1002019c, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x100201a4 targets 0x100201ac and is always taken.
  The return at 0x100201bc has v0 = a0.

- `__as__9EZWrapperGPCc` in `usr/bin/X11/xsetmon` at 0x100201d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100201d0-0x1002052c (860 bytes).
  It occupies 860 bytes.
  12 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x100201f4, `lw` at 0x1002021c, `lw` at 0x1002025c.
  The `lw` at 0x100201fc loads 4 bytes from sym(xmLabelWidgetClass) +0x0.
  The `lw` at 0x10020224 loads 4 bytes from sym(xmLabelGadgetClass) +0x0.
  The `lw` at 0x1002029c loads 4 bytes from sym(xmScrollBarWidgetClass) +0x0.
  The `lw` at 0x100202c4 loads 4 bytes from sym(xmScaleWidgetClass) +0x0.
  The `lw` at 0x100202f4 loads 4 bytes from sym(sgThumbWheelWidgetClass) +0x0.
  The `lw` at 0x10020364 loads 4 bytes from sym(xmTextWidgetClass) +0x0.
  The `lw` at 0x1002038c loads 4 bytes from sym(xmTextFieldWidgetClass) +0x0.
  The `lw` at 0x100203d4 loads 4 bytes from sym(xmListWidgetClass) +0x0.
  The `lw` at 0x1002049c loads 4 bytes from ?.
  The `jalr` at 0x10020204 calls XtIsSubclass with a0=[a0], a1=[sym(xmLabelWidgetClass)], a2=0x3872c, a3=a3 at entry (arg3).
  The `jalr` at 0x1002022c calls XtIsSubclass with a0=[a0], a1=[sym(xmLabelGadgetClass)], a2=?, a3=?.
  The `jalr` at 0x10020248 calls XmStringCreateLocalized with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x10020270 calls XtVaSetValues with a0=[a0], a1=-0x7, a2=ret(XmStringCreateLocalized), a3=0x0.
  The `jalr` at 0x10020280 calls XmStringFree with a0=ret(XmStringCreateLocalized), a1=?, a2=?, a3=?.
  The `jalr` at 0x100202a4 calls XtIsSubclass with a0=[a0], a1=[sym(xmScrollBarWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x100202cc calls XtIsSubclass with a0=[a0], a1=[sym(xmScaleWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x100202fc calls XtIsSubclass with a0=[a0], a1=[sym(sgThumbWheelWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10020314 calls strlen with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x10020348 calls XtVaSetValues with a0=[a0], a1=0x10049658, a2=-0x78, a3=-0x1a, a4=a1 at entry (arg1), a5=ret(strlen)+1, a6=0x0.
  The `jalr` at 0x1002036c calls XtIsSubclass with a0=[a0], a1=[sym(xmTextWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10020394 calls XtIsSubclass with a0=[a0], a1=[sym(xmTextFieldWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x100203b8 calls XmTextSetString with a0=[a0], a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x100203dc calls XtIsSubclass with a0=[a0], a1=[sym(xmListWidgetClass)], a2=?, a3=?.
  The `jal` at 0x100203f8 calls CommaListToVkNameList__GPCc [0x1001e9d0] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x10020410 calls __opPPUc__10VkNameListCGv with a0=ret(CommaListToVkNameList__GPCc), a1=?, a2=?, a3=?.
  The `jal` at 0x1002042c calls (unnamed) [0x1001ebd0] with a0=ret(CommaListToVkNameList__GPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10020458 calls XtVaSetValues with a0=[a0], a1=-0x84, a2=ret(__opPPUc__10VkNameListCGv), a3=-0x74, a4=ret(0x1001ebd0), a5=0x0.
  The `jal` at 0x10020470 calls (unnamed) [0x1001ebd0] with a0=ret(CommaListToVkNameList__GPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100204a4 calls XmStringFree with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100204c4 calls (unnamed) [0x1001ebd0] with a0=ret(CommaListToVkNameList__GPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100204e8 calls XtFree with a0=ret(__opPPUc__10VkNameListCGv), a1=?, a2=?, a3=?.
  The `jalr` at 0x100204fc calls __dt__10VkNameListGv with a0=ret(CommaListToVkNameList__GPCc), a1=0x3, a2=?, a3=?.
  The `bne` branch at 0x10020210 targets 0x10020240, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x10020238 targets 0x10020290, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10020288 targets 0x10020504 and is always taken.
  The `bne` branch at 0x100202b0 targets 0x1002030c, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x100202d8 targets 0x100202e8, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x100202e0 targets 0x1002030c and is always taken.
  The `beq` branch at 0x10020304 targets 0x10020358, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10020350 targets 0x10020504 and is always taken.
  The `bne` branch at 0x10020378 targets 0x100203a8, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x100203a0 targets 0x100203c8, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x100203c0 targets 0x10020504 and is always taken.
  The `beq` branch at 0x100203e8 targets 0x10020504, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10020484 targets 0x100204e0, is taken when ra(=0x0) >= v0(=ret(0x1001ebd0)) (signed), and falls through when ra(=0x0) < v0(=ret(0x1001ebd0)) (signed).
  The `bne` branch at 0x100204d8 targets 0x1002048c, is taken when at(?) < v0(=ret(0x1001ebd0)) (signed), and falls through when at(?) >= v0(=ret(0x1001ebd0)) (signed).
  The `beq` branch at 0x1002050c targets 0x10020514 and is always taken.
  The return at 0x10020524 has v0 = a0.

- `__ami__9EZWrapperGi` in `usr/bin/X11/xsetmon` at 0x10020530 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10020530-0x1002089c (876 bytes).
  It occupies 876 bytes.
  17 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10020554, `lw` at 0x1002057c, `lw` at 0x100205a4.
  The `lw` at 0x1002055c loads 4 bytes from sym(xmToggleButtonWidgetClass) +0x0.
  The `lw` at 0x10020584 loads 4 bytes from sym(xmToggleButtonGadgetClass) +0x0.
  The `lw` at 0x10020604 loads 4 bytes from sym(xmScrollBarWidgetClass) +0x0.
  The `lw` at 0x1002062c loads 4 bytes from sym(xmScaleWidgetClass) +0x0.
  The `lw` at 0x1002065c loads 4 bytes from sym(sgThumbWheelWidgetClass) +0x0.
  The `lw` at 0x10020730 loads 4 bytes from sym(sgDialWidgetClass) +0x0.
  The `lw` at 0x10020808 loads 4 bytes from sym(xmListWidgetClass) +0x0.
  The `lw` at 0x10020858 loads 4 bytes from ?.
  The `jalr` at 0x10020564 calls XtIsSubclass with a0=[a0], a1=[sym(xmToggleButtonWidgetClass)], a2=0x383cc, a3=a3 at entry (arg3).
  The `jalr` at 0x1002058c calls XtIsSubclass with a0=[a0], a1=[sym(xmToggleButtonGadgetClass)], a2=?, a3=?.
  The `jalr` at 0x100205b8 calls XtVaSetValues with a0=[a0], a1=-0x38, a2=sp-96, a3=0x0.
  The `jalr` at 0x100205e8 calls XtVaSetValues with a0=[a0], a1=-0x38, a2=?, a3=0x0.
  The `jalr` at 0x1002060c calls XtIsSubclass with a0=[a0], a1=[sym(xmScrollBarWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10020634 calls XtIsSubclass with a0=[a0], a1=[sym(xmScaleWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10020664 calls XtIsSubclass with a0=[a0], a1=[sym(sgThumbWheelWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10020694 calls XtVaGetValues with a0=[a0], a1=-0xd, a2=sp-92, a3=-0x18, a4=sp-88, a5=0x0.
  The `jalr` at 0x100206b4 calls XtVaGetValues with a0=[a0], a1=-0x8, a2=sp-84, a3=0x0.
  The `jalr` at 0x10020714 calls XtVaSetValues with a0=[a0], a1=-0x8, a2=?, a3=0x0, a6=a1 at entry (arg1).
  The `jalr` at 0x10020738 calls XtIsSubclass with a0=[a0], a1=[sym(sgDialWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x1002076c calls XtVaGetValues with a0=[a0], a1=-0xd, a2=sp-80, a3=-0x18, a4=sp-76, a5=0x0.
  The `jalr` at 0x1002078c calls XtVaGetValues with a0=[a0], a1=-0x8, a2=sp-72, a3=0x0.
  The `jalr` at 0x100207ec calls XtVaSetValues with a0=[a0], a1=-0x8, a2=?, a3=0x0, a6=a1 at entry (arg1).
  The `jalr` at 0x10020810 calls XtIsSubclass with a0=[a0], a1=[sym(xmListWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10020838 calls XmListGetSelectedPos with a0=[a0], a1=sp-68, a2=sp-64, a3=?.
  The `jalr` at 0x1002086c calls XmListSelectPos with a0=[a0], a1=?, a2=0x1, a3=?.
  The `bne` branch at 0x10020570 targets 0x100205a0, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x10020598 targets 0x100205f8, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x100205f0 targets 0x10020874 and is always taken.
  The `bne` branch at 0x10020618 targets 0x10020674, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x10020640 targets 0x10020650, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10020648 targets 0x10020674 and is always taken.
  The `beq` branch at 0x1002066c targets 0x10020724, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `bne` branch at 0x100206d0 targets 0x1002071c, is taken when a1(?) < a2(?) (signed), and falls through when a1(?) >= a2(?) (signed).
  The `bne` branch at 0x100206ec targets 0x1002071c, is taken when a4(?) < a5(?) (signed), and falls through when a4(?) >= a5(?) (signed).
  The `beq` branch at 0x1002071c targets 0x10020874 and is always taken.
  The `beq` branch at 0x10020744 targets 0x100207fc, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `bne` branch at 0x100207a8 targets 0x100207f4, is taken when a1(?) < a2(?) (signed), and falls through when a1(?) >= a2(?) (signed).
  The `bne` branch at 0x100207c4 targets 0x100207f4, is taken when a4(?) < a5(?) (signed), and falls through when a4(?) >= a5(?) (signed).
  The `beq` branch at 0x100207f4 targets 0x10020874 and is always taken.
  The `beq` branch at 0x1002081c targets 0x10020874, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10020844 targets 0x10020874, is taken when v0(=ret(XmListGetSelectedPos)) == 0, and falls through when v0(=ret(XmListGetSelectedPos)) != 0.
  The `beq` branch at 0x1002087c targets 0x10020884 and is always taken.
  The return at 0x10020894 has v0 = a0.

- `__apl__9EZWrapperGi` in `usr/bin/X11/xsetmon` at 0x100208a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100208a0-0x10020d90 (1264 bytes).
  It occupies 1264 bytes.
  25 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x100208c4, `lw` at 0x100208ec, `lw` at 0x10020914.
  The `lw` at 0x100208cc loads 4 bytes from sym(xmToggleButtonWidgetClass) +0x0.
  The `lw` at 0x100208f4 loads 4 bytes from sym(xmToggleButtonGadgetClass) +0x0.
  The `lw` at 0x10020974 loads 4 bytes from sym(xmLabelWidgetClass) +0x0.
  The `lw` at 0x1002099c loads 4 bytes from sym(xmLabelGadgetClass) +0x0.
  The `lw` at 0x10020a54 loads 4 bytes from sym(xmScrollBarWidgetClass) +0x0.
  The `lw` at 0x10020a7c loads 4 bytes from sym(xmScaleWidgetClass) +0x0.
  The `lw` at 0x10020aac loads 4 bytes from sym(sgThumbWheelWidgetClass) +0x0.
  The `lw` at 0x10020b80 loads 4 bytes from sym(sgDialWidgetClass) +0x0.
  The `lw` at 0x10020c58 loads 4 bytes from sym(xmTextWidgetClass) +0x0.
  The `lw` at 0x10020c80 loads 4 bytes from sym(xmTextFieldWidgetClass) +0x0.
  The `lw` at 0x10020cfc loads 4 bytes from sym(xmListWidgetClass) +0x0.
  The `lw` at 0x10020d4c loads 4 bytes from ?.
  The `jalr` at 0x100208d4 calls XtIsSubclass with a0=[a0], a1=[sym(xmToggleButtonWidgetClass)], a2=0x3805c, a3=a3 at entry (arg3).
  The `jalr` at 0x100208fc calls XtIsSubclass with a0=[a0], a1=[sym(xmToggleButtonGadgetClass)], a2=?, a3=?.
  The `jalr` at 0x10020928 calls XtVaSetValues with a0=[a0], a1=-0x38, a2=sp-96, a3=0x0.
  The `jalr` at 0x10020958 calls XtVaSetValues with a0=[a0], a1=-0x38, a2=?, a3=0x0.
  The `jalr` at 0x1002097c calls XtIsSubclass with a0=[a0], a1=[sym(xmLabelWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x100209a4 calls XtIsSubclass with a0=[a0], a1=[sym(xmLabelGadgetClass)], a2=?, a3=?.
  The `jal` at 0x100209c4 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0], a1=?, a2=?, a3=?.
  The `jal` at 0x100209d8 calls getstring__9EZWrapperGv [0x10021c90] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x100209f4 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x10020a10 calls VkFormat__GPCce with a0=0x100519e0, a1=?, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x10020a28 calls __as__9EZWrapperGPCc [0x100201d0] with a0=?, a1=ret(VkFormat__GPCce), a2=?, a3=?.
  The `jalr` at 0x10020a38 calls XtFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10020a5c calls XtIsSubclass with a0=[a0], a1=[sym(xmScrollBarWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10020a84 calls XtIsSubclass with a0=[a0], a1=[sym(xmScaleWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10020ab4 calls XtIsSubclass with a0=[a0], a1=[sym(sgThumbWheelWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10020ae4 calls XtVaGetValues with a0=[a0], a1=-0xd, a2=sp-88, a3=-0x18, a4=sp-84, a5=0x0.
  The `jalr` at 0x10020b04 calls XtVaGetValues with a0=[a0], a1=-0x8, a2=sp-80, a3=0x0.
  The `jalr` at 0x10020b64 calls XtVaSetValues with a0=[a0], a1=-0x8, a2=?, a3=0x0.
  The `jalr` at 0x10020b88 calls XtIsSubclass with a0=[a0], a1=[sym(sgDialWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10020bbc calls XtVaGetValues with a0=[a0], a1=-0xd, a2=sp-76, a3=-0x18, a4=sp-72, a5=0x0.
  The `jalr` at 0x10020bdc calls XtVaGetValues with a0=[a0], a1=-0x8, a2=sp-68, a3=0x0.
  The `jalr` at 0x10020c3c calls XtVaSetValues with a0=[a0], a1=-0x8, a2=?, a3=0x0, a6=a1 at entry (arg1).
  The `jalr` at 0x10020c60 calls XtIsSubclass with a0=[a0], a1=[sym(xmTextWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10020c88 calls XtIsSubclass with a0=[a0], a1=[sym(xmTextFieldWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10020ca8 calls XmTextGetLastPosition with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x10020cc0 calls VkFormat__GPCce with a0=0x100519d4, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x10020ce0 calls XmTextInsert with a0=[a0], a1=?, a2=ret(VkFormat__GPCce), a3=?.
  The `jalr` at 0x10020d04 calls XtIsSubclass with a0=[a0], a1=[sym(xmListWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10020d2c calls XmListGetSelectedPos with a0=[a0], a1=sp-64, a2=sp-60, a3=?.
  The `jalr` at 0x10020d60 calls XmListSelectPos with a0=[a0], a1=?, a2=0x1, a3=?.
  The `bne` branch at 0x100208e0 targets 0x10020910, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x10020908 targets 0x10020968, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10020960 targets 0x10020d68 and is always taken.
  The `bne` branch at 0x10020988 targets 0x100209b8, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x100209b0 targets 0x10020a48, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10020a40 targets 0x10020d68 and is always taken.
  The `bne` branch at 0x10020a68 targets 0x10020ac4, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x10020a90 targets 0x10020aa0, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10020a98 targets 0x10020ac4 and is always taken.
  The `beq` branch at 0x10020abc targets 0x10020b74, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `bne` branch at 0x10020b20 targets 0x10020b6c, is taken when a1(?) < a2(?) (signed), and falls through when a1(?) >= a2(?) (signed).
  The `bne` branch at 0x10020b3c targets 0x10020b6c, is taken when a4(?) < a5(?) (signed), and falls through when a4(?) >= a5(?) (signed).
  The `beq` branch at 0x10020b6c targets 0x10020d68 and is always taken.
  The `beq` branch at 0x10020b94 targets 0x10020c4c, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `bne` branch at 0x10020bf8 targets 0x10020c44, is taken when a1(?) < a2(?) (signed), and falls through when a1(?) >= a2(?) (signed).
  The `bne` branch at 0x10020c14 targets 0x10020c44, is taken when a4(?) < a5(?) (signed), and falls through when a4(?) >= a5(?) (signed).
  The `beq` branch at 0x10020c44 targets 0x10020d68 and is always taken.
  The `bne` branch at 0x10020c6c targets 0x10020c9c, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x10020c94 targets 0x10020cf0, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10020ce8 targets 0x10020d68 and is always taken.
  The `beq` branch at 0x10020d10 targets 0x10020d68, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10020d38 targets 0x10020d68, is taken when v0(=ret(XmListGetSelectedPos)) == 0, and falls through when v0(=ret(XmListGetSelectedPos)) != 0.
  The `beq` branch at 0x10020d70 targets 0x10020d78 and is always taken.
  The return at 0x10020d88 has v0 = a0.

- `__apl__9EZWrapperGf` in `usr/bin/X11/xsetmon` at 0x10020d90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10020d90-0x10021338 (1448 bytes).
  It occupies 1448 bytes.
  25 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10020db4, `lw` at 0x10020ddc, `lw` at 0x10020e04.
  The `lw` at 0x10020dbc loads 4 bytes from sym(xmToggleButtonWidgetClass) +0x0.
  The `lw` at 0x10020de4 loads 4 bytes from sym(xmToggleButtonGadgetClass) +0x0.
  The `lw` at 0x10020e70 loads 4 bytes from sym(xmLabelWidgetClass) +0x0.
  The `lw` at 0x10020e98 loads 4 bytes from sym(xmLabelGadgetClass) +0x0.
  The `lw` at 0x10020f58 loads 4 bytes from sym(xmScrollBarWidgetClass) +0x0.
  The `lw` at 0x10020f80 loads 4 bytes from sym(xmScaleWidgetClass) +0x0.
  The `lw` at 0x10020fb0 loads 4 bytes from sym(sgThumbWheelWidgetClass) +0x0.
  The `lw` at 0x100210d0 loads 4 bytes from sym(sgDialWidgetClass) +0x0.
  The `lw` at 0x100211ec loads 4 bytes from sym(xmTextWidgetClass) +0x0.
  The `lw` at 0x10021214 loads 4 bytes from sym(xmTextFieldWidgetClass) +0x0.
  The `lw` at 0x10021298 loads 4 bytes from sym(xmListWidgetClass) +0x0.
  The `lw` at 0x100212e8 loads 4 bytes from ?.
  The `jalr` at 0x10020dc4 calls XtIsSubclass with a0=[a0], a1=[sym(xmToggleButtonWidgetClass)], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10020dec calls XtIsSubclass with a0=[a0], a1=[sym(xmToggleButtonGadgetClass)], a2=?, a3=?.
  The `jalr` at 0x10020e18 calls XtVaSetValues with a0=[a0], a1=-0x38, a2=sp-96, a3=0x0.
  The `jalr` at 0x10020e54 calls XtVaSetValues with a0=[a0], a1=-0x38, a2=?, a3=0x0.
  The `jalr` at 0x10020e78 calls XtIsSubclass with a0=[a0], a1=[sym(xmLabelWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10020ea0 calls XtIsSubclass with a0=[a0], a1=[sym(xmLabelGadgetClass)], a2=?, a3=?.
  The `jal` at 0x10020ec0 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0], a1=?, a2=?, a3=?.
  The `jal` at 0x10020ed4 calls getstring__9EZWrapperGv [0x10021c90] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10020ef0 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x10020f14 calls VkFormat__GPCce with a0=0x100519e8, a1=?, a2=?, a3=?.
  The `jal` at 0x10020f2c calls __as__9EZWrapperGPCc [0x100201d0] with a0=?, a1=ret(VkFormat__GPCce), a2=?, a3=?.
  The `jalr` at 0x10020f3c calls XtFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10020f60 calls XtIsSubclass with a0=[a0], a1=[sym(xmScrollBarWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10020f88 calls XtIsSubclass with a0=[a0], a1=[sym(xmScaleWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10020fb8 calls XtIsSubclass with a0=[a0], a1=[sym(sgThumbWheelWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10020fe8 calls XtVaGetValues with a0=[a0], a1=-0xd, a2=sp-88, a3=-0x18, a4=sp-84, a5=0x0.
  The `jalr` at 0x10021008 calls XtVaGetValues with a0=[a0], a1=-0x8, a2=sp-80, a3=0x0.
  The `jalr` at 0x100210b4 calls XtVaSetValues with a0=[a0], a1=-0x8, a2=?, a3=0x0.
  The `jalr` at 0x100210d8 calls XtIsSubclass with a0=[a0], a1=[sym(sgDialWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x1002110c calls XtVaGetValues with a0=[a0], a1=-0xd, a2=sp-76, a3=-0x18, a4=sp-72, a5=0x0.
  The `jalr` at 0x1002112c calls XtVaGetValues with a0=[a0], a1=-0x8, a2=sp-68, a3=0x0.
  The `jalr` at 0x100211d0 calls XtVaSetValues with a0=[a0], a1=-0x8, a2=?, a3=0x0.
  The `jalr` at 0x100211f4 calls XtIsSubclass with a0=[a0], a1=[sym(xmTextWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x1002121c calls XtIsSubclass with a0=[a0], a1=[sym(xmTextFieldWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x1002123c calls XmTextGetLastPosition with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002125c calls VkFormat__GPCce with a0=0x100519d8, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002127c calls XmTextInsert with a0=[a0], a1=?, a2=ret(VkFormat__GPCce), a3=?.
  The `jalr` at 0x100212a0 calls XtIsSubclass with a0=[a0], a1=[sym(xmListWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x100212c8 calls XmListGetSelectedPos with a0=[a0], a1=sp-64, a2=sp-60, a3=?.
  The `jalr` at 0x10021308 calls XmListSelectPos with a0=[a0], a1=?, a2=0x1, a3=?.
  The `bne` branch at 0x10020dd0 targets 0x10020e00, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x10020df8 targets 0x10020e64, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10020e5c targets 0x10021310 and is always taken.
  The `bne` branch at 0x10020e84 targets 0x10020eb4, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x10020eac targets 0x10020f4c, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10020f44 targets 0x10021310 and is always taken.
  The `bne` branch at 0x10020f6c targets 0x10020fc8, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x10020f94 targets 0x10020fa4, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10020f9c targets 0x10020fc8 and is always taken.
  The `beq` branch at 0x10020fc0 targets 0x100210c4, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `bc1f` branch at 0x10021040 targets 0x100210bc, is taken when not (f2 <= f3 (c.le.s at 0x10021038)), and falls through when f2 <= f3 (c.le.s at 0x10021038).
  The `bc1f` branch at 0x10021078 targets 0x100210bc, is taken when not (f3 <= f4 (c.le.s at 0x10021070)), and falls through when f3 <= f4 (c.le.s at 0x10021070).
  The `beq` branch at 0x100210bc targets 0x10021310 and is always taken.
  The `beq` branch at 0x100210e4 targets 0x100211e0, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `bc1f` branch at 0x10021164 targets 0x100211d8, is taken when not (f6 <= f7 (c.le.s at 0x1002115c)), and falls through when f6 <= f7 (c.le.s at 0x1002115c).
  The `bc1f` branch at 0x1002119c targets 0x100211d8, is taken when not (f7 <= f8 (c.le.s at 0x10021194)), and falls through when f7 <= f8 (c.le.s at 0x10021194).
  The `beq` branch at 0x100211d8 targets 0x10021310 and is always taken.
  The `bne` branch at 0x10021200 targets 0x10021230, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x10021228 targets 0x1002128c, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10021284 targets 0x10021310 and is always taken.
  The `beq` branch at 0x100212ac targets 0x10021310, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x100212d4 targets 0x10021310, is taken when v0(=ret(XmListGetSelectedPos)) == 0, and falls through when v0(=ret(XmListGetSelectedPos)) != 0.
  The `beq` branch at 0x10021318 targets 0x10021320 and is always taken.
  The return at 0x10021330 has v0 = a0.

- `__apl__9EZWrapperGPCc` in `usr/bin/X11/xsetmon` at 0x10021340 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10021340-0x100217a0 (1120 bytes).
  It occupies 1120 bytes.
  15 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10021364, `lw` at 0x1002138c, `lw` at 0x100213b4.
  The `lw` at 0x1002136c loads 4 bytes from sym(xmLabelWidgetClass) +0x0.
  The `lw` at 0x10021394 loads 4 bytes from sym(xmLabelGadgetClass) +0x0.
  The `lw` at 0x100214d0 loads 4 bytes from sym(xmScrollBarWidgetClass) +0x0.
  The `lw` at 0x100214f8 loads 4 bytes from sym(xmScaleWidgetClass) +0x0.
  The `lw` at 0x10021528 loads 4 bytes from sym(sgThumbWheelWidgetClass) +0x0.
  The `lw` at 0x10021658 loads 4 bytes from sym(xmTextWidgetClass) +0x0.
  The `lw` at 0x10021680 loads 4 bytes from sym(xmTextFieldWidgetClass) +0x0.
  The `lw` at 0x100216e4 loads 4 bytes from sym(xmListWidgetClass) +0x0.
  The `jalr` at 0x10021374 calls XtIsSubclass with a0=[a0], a1=[sym(xmLabelWidgetClass)], a2=0x375bc, a3=a3 at entry (arg3).
  The `jalr` at 0x1002139c calls XtIsSubclass with a0=[a0], a1=[sym(xmLabelGadgetClass)], a2=?, a3=?.
  The `jalr` at 0x100213c8 calls XtVaGetValues with a0=[a0], a1=-0x7, a2=sp-96, a3=0x0.
  The `jalr` at 0x100213e4 calls XmStringGetLtoR with a0=?, a1=sym(_XmStrings)+12544, a2=sp-92, a3=?.
  The `jalr` at 0x100213f4 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10021408 calls strlen with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x10021424 calls __nwa__GUi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10021440 calls strcpy with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x10021454 calls strcat with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x10021464 calls XmStringCreateLocalized with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002148c calls XtVaSetValues with a0=[a0], a1=-0x7, a2=ret(XmStringCreateLocalized), a3=0x0.
  The `jalr` at 0x1002149c calls XmStringFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100214ac calls XmStringFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100214bc calls __dl__GPv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100214d8 calls XtIsSubclass with a0=[a0], a1=[sym(xmScrollBarWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10021500 calls XtIsSubclass with a0=[a0], a1=[sym(xmScaleWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10021530 calls XtIsSubclass with a0=[a0], a1=[sym(sgThumbWheelWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x1002155c calls XtVaGetValues with a0=[a0], a1=-0x78, a2=sp-80, a3=0x0.
  The `jalr` at 0x10021578 calls XmStringGetLtoR with a0=?, a1=sym(_XmStrings)+12544, a2=sp-76, a3=?.
  The `jalr` at 0x10021588 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002159c calls strlen with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x100215b8 calls __nwa__GUi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100215d4 calls strcpy with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x100215e8 calls strcat with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x100215f8 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002162c calls XtVaSetValues with a0=[a0], a1=0x10049658, a2=-0x78, a3=-0x1a, a5=ret(strlen)+1, a6=0x0.
  The `jalr` at 0x1002163c calls __dl__GPv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10021660 calls XtIsSubclass with a0=[a0], a1=[sym(xmTextWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10021688 calls XtIsSubclass with a0=[a0], a1=[sym(xmTextFieldWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x100216a8 calls XmTextGetLastPosition with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x100216c8 calls XmTextInsert with a0=[a0], a1=ret(XmTextGetLastPosition), a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x100216ec calls XtIsSubclass with a0=[a0], a1=[sym(xmListWidgetClass)], a2=?, a3=?.
  The `jal` at 0x10021708 calls CommaListToVkNameList__GPCc [0x1001e9d0] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x10021720 calls __opPPUc__10VkNameListCGv with a0=ret(CommaListToVkNameList__GPCc), a1=?, a2=?, a3=?.
  The `jal` at 0x10021738 calls (unnamed) [0x1001ebd0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002175c calls XmListAddItems with a0=[a0], a1=?, a2=ret(0x1001ebd0), a3=0x0.
  The `jalr` at 0x10021770 calls __dt__10VkNameListGv with a0=?, a1=0x3, a2=?, a3=?.
  The `bne` branch at 0x10021380 targets 0x100213b0, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x100213a8 targets 0x100214c4, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `bne` branch at 0x100214e4 targets 0x10021544, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x1002150c targets 0x1002151c, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10021514 targets 0x10021544 and is always taken.
  The `beq` branch at 0x1002153c targets 0x1002164c, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10021644 targets 0x10021778 and is always taken.
  The `bne` branch at 0x1002166c targets 0x1002169c, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x10021694 targets 0x100216d8, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x100216d0 targets 0x10021778 and is always taken.
  The `beq` branch at 0x100216f8 targets 0x10021778, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10021780 targets 0x10021788 and is always taken.
  The return at 0x10021798 has v0 = a0.

- `__ls__9EZWrapperGi` in `usr/bin/X11/xsetmon` at 0x100217a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100217a0-0x100217fc (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x100217cc calls __apl__9EZWrapperGi [0x100208a0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x100217dc targets 0x100217e4 and is always taken.
  The return at 0x100217f4 has v0 = a0.

- `__ls__9EZWrapperGf` in `usr/bin/X11/xsetmon` at 0x10021800 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10021800-0x1002185c (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x1002182c calls __apl__9EZWrapperGf [0x10020d90] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1002183c targets 0x10021844 and is always taken.
  The return at 0x10021854 has v0 = a0.

- `__ls__9EZWrapperGPCc` in `usr/bin/X11/xsetmon` at 0x10021860 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10021860-0x100218bc (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x1002188c calls __apl__9EZWrapperGPCc [0x10021340] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1002189c targets 0x100218a4 and is always taken.
  The return at 0x100218b4 has v0 = a0.

- `getint__9EZWrapperGv` in `usr/bin/X11/xsetmon` at 0x100218c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100218c0-0x10021c84 (964 bytes).
  It occupies 964 bytes.
  18 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x100218e0, `lw` at 0x10021908, `lw` at 0x10021930.
  The `lw` at 0x100218e8 loads 4 bytes from sym(xmToggleButtonWidgetClass) +0x0.
  The `lw` at 0x10021910 loads 4 bytes from sym(xmToggleButtonGadgetClass) +0x0.
  The `lw` at 0x10021970 loads 4 bytes from sym(xmPushButtonWidgetClass) +0x0.
  The `lw` at 0x10021998 loads 4 bytes from sym(xmPushButtonGadgetClass) +0x0.
  The `lw` at 0x100219cc loads 4 bytes from sym(xmScrollBarWidgetClass) +0x0.
  The `lw` at 0x100219f4 loads 4 bytes from sym(xmScaleWidgetClass) +0x0.
  The `lw` at 0x10021a24 loads 4 bytes from sym(sgThumbWheelWidgetClass) +0x0.
  The `lw` at 0x10021a80 loads 4 bytes from sym(sgDialWidgetClass) +0x0.
  The `lw` at 0x10021ae0 loads 4 bytes from sym(xmLabelWidgetClass) +0x0.
  The `lw` at 0x10021b08 loads 4 bytes from sym(xmLabelGadgetClass) +0x0.
  The `lw` at 0x10021b3c loads 4 bytes from sym(xmTextWidgetClass) +0x0.
  The `lw` at 0x10021b64 loads 4 bytes from sym(xmTextFieldWidgetClass) +0x0.
  The `lw` at 0x10021be8 loads 4 bytes from sym(xmListWidgetClass) +0x0.
  The `lw` at 0x10021c3c loads 4 bytes from ?.
  The `jalr` at 0x100218f0 calls XtIsSubclass with a0=[a0], a1=[sym(xmToggleButtonWidgetClass)], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10021918 calls XtIsSubclass with a0=[a0], a1=[sym(xmToggleButtonGadgetClass)], a2=?, a3=?.
  The `jalr` at 0x10021944 calls XtVaGetValues with a0=[a0], a1=-0x38, a2=sp-96, a3=0x0.
  The `jalr` at 0x10021978 calls XtIsSubclass with a0=[a0], a1=[sym(xmPushButtonWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x100219a0 calls XtIsSubclass with a0=[a0], a1=[sym(xmPushButtonGadgetClass)], a2=?, a3=?.
  The `jalr` at 0x100219d4 calls XtIsSubclass with a0=[a0], a1=[sym(xmScrollBarWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x100219fc calls XtIsSubclass with a0=[a0], a1=[sym(xmScaleWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10021a2c calls XtIsSubclass with a0=[a0], a1=[sym(sgThumbWheelWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10021a54 calls XtVaGetValues with a0=[a0], a1=-0x8, a2=sp-92, a3=0x0.
  The `jalr` at 0x10021a88 calls XtIsSubclass with a0=[a0], a1=[sym(sgDialWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10021ab4 calls XtVaGetValues with a0=[a0], a1=-0x8, a2=sp-88, a3=0x0.
  The `jalr` at 0x10021ae8 calls XtIsSubclass with a0=[a0], a1=[sym(xmLabelWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10021b10 calls XtIsSubclass with a0=[a0], a1=[sym(xmLabelGadgetClass)], a2=?, a3=?.
  The `jalr` at 0x10021b44 calls XtIsSubclass with a0=[a0], a1=[sym(xmTextWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10021b6c calls XtIsSubclass with a0=[a0], a1=[sym(xmTextFieldWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10021b8c calls XmTextGetString with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x10021ba4 calls atoi with a0=ret(XmTextGetString), a1=?, a2=?, a3=?.
  The `jalr` at 0x10021bbc calls XtFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10021bf0 calls XtIsSubclass with a0=[a0], a1=[sym(xmListWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10021c18 calls XmListGetSelectedPos with a0=[a0], a1=sp-76, a2=sp-72, a3=?.
  The `bne` branch at 0x100218fc targets 0x1002192c, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x10021924 targets 0x10021964, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10021954 targets 0x10021c6c and is always taken.
  The `bne` branch at 0x10021984 targets 0x100219b4, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x100219ac targets 0x100219c0, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x100219b8 targets 0x10021c6c and is always taken.
  The `bne` branch at 0x100219e0 targets 0x10021a3c, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x10021a08 targets 0x10021a18, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10021a10 targets 0x10021a3c and is always taken.
  The `beq` branch at 0x10021a34 targets 0x10021a74, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10021a64 targets 0x10021c6c and is always taken.
  The `beq` branch at 0x10021a94 targets 0x10021ad4, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10021ac4 targets 0x10021c6c and is always taken.
  The `bne` branch at 0x10021af4 targets 0x10021b24, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x10021b1c targets 0x10021b30, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10021b28 targets 0x10021c6c and is always taken.
  The `bne` branch at 0x10021b50 targets 0x10021b80, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x10021b78 targets 0x10021bdc, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10021bcc targets 0x10021c6c and is always taken.
  The `beq` branch at 0x10021bfc targets 0x10021c5c, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10021c24 targets 0x10021c4c, is taken when v0(=ret(XmListGetSelectedPos)) == 0, and falls through when v0(=ret(XmListGetSelectedPos)) != 0.
  The `beq` branch at 0x10021c44 targets 0x10021c6c and is always taken.
  The `beq` branch at 0x10021c54 targets 0x10021c6c and is always taken.
  The `beq` branch at 0x10021c64 targets 0x10021c6c and is always taken.
  The return at 0x10021c7c has v0 = one of ?, 0x0, -0x1.
  The instructions from 0x1002195c to 0x10021960 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10021a6c to 0x10021a70 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10021acc to 0x10021ad0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10021bd4 to 0x10021bd8 are not reached by any path from the entry, and their branches are not listed.

- `getstring__9EZWrapperGv` in `usr/bin/X11/xsetmon` at 0x10021c90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10021c90-0x10021e84 (500 bytes).
  It occupies 500 bytes.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10021cb0, `lw` at 0x10021cd8, `lw` at 0x10021d00.
  The `lw` at 0x10021cb8 loads 4 bytes from sym(xmLabelWidgetClass) +0x0.
  The `lw` at 0x10021ce0 loads 4 bytes from sym(xmLabelGadgetClass) +0x0.
  The `lw` at 0x10021d64 loads 4 bytes from sym(xmTextWidgetClass) +0x0.
  The `lw` at 0x10021d8c loads 4 bytes from sym(xmTextFieldWidgetClass) +0x0.
  The `lw` at 0x10021ddc loads 4 bytes from sym(xmListWidgetClass) +0x0.
  The `lw` at 0x10021e30 loads 4 bytes from ?.
  The `jalr` at 0x10021cc0 calls XtIsSubclass with a0=[a0], a1=[sym(xmLabelWidgetClass)], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10021ce8 calls XtIsSubclass with a0=[a0], a1=[sym(xmLabelGadgetClass)], a2=?, a3=?.
  The `jalr` at 0x10021d14 calls XtVaGetValues with a0=[a0], a1=-0x7, a2=sp-80, a3=0x0.
  The `jalr` at 0x10021d30 calls XmStringGetLtoR with a0=?, a1=sym(_XmStrings)+12544, a2=sp-76, a3=?.
  The `jalr` at 0x10021d40 calls XmStringFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10021d6c calls XtIsSubclass with a0=[a0], a1=[sym(xmTextWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10021d94 calls XtIsSubclass with a0=[a0], a1=[sym(xmTextFieldWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10021db4 calls XmTextGetString with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x10021de4 calls XtIsSubclass with a0=[a0], a1=[sym(xmListWidgetClass)], a2=?, a3=?.
  The `jalr` at 0x10021e18 calls XtVaGetValues with a0=[a0], a1=-0x313, a2=sp-72, a3=-0x18c, a4=sp-68, a5=0x0.
  The `jalr` at 0x10021e44 calls XmStringGetLtoR with a0=?, a1=sym(_XmStrings)+12544, a2=sp-76, a3=?.
  The `bne` branch at 0x10021ccc targets 0x10021cfc, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x10021cf4 targets 0x10021d58, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10021d50 targets 0x10021e6c and is always taken.
  The `bne` branch at 0x10021d78 targets 0x10021da8, is taken when v0(=ret(XtIsSubclass)) != 0, and falls through when v0(=ret(XtIsSubclass)) == 0.
  The `beq` branch at 0x10021da0 targets 0x10021dd0, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10021dc8 targets 0x10021e6c and is always taken.
  The `beq` branch at 0x10021df0 targets 0x10021e5c, is taken when v0(=ret(XtIsSubclass)) == 0, and falls through when v0(=ret(XtIsSubclass)) != 0.
  The `beq` branch at 0x10021e24 targets 0x10021e4c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10021e54 targets 0x10021e6c and is always taken.
  The `beq` branch at 0x10021e64 targets 0x10021e6c and is always taken.
  The return at 0x10021e7c has v0 = one of ?, ret(XmTextGetString), 0x0.

- `mtest__Gv` in `usr/bin/X11/xsetmon` at 0x10021ed0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10021ed0-0x10022394 (1220 bytes).
  It occupies 1220 bytes.
  20 such `swc1` accesses store 4 bytes to ret(0x1002d700) +0x0, including `swc1` at 0x10021f38, `swc1` at 0x10021f58, `swc1` at 0x10021f74.
  The `jal` at 0x10021ef8 calls __ct__7MMatrixGiT1 [0x1002da60] with a0=sp-96, a1=0x2, a2=0x3, a3=a3 at entry (arg3).
  The `jal` at 0x10021f14 calls (unnamed) [0x1002d700] with a0=sp-96, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10021f34 calls (unnamed) [0x1002d700] with a0=sp-96, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x10021f54 calls (unnamed) [0x1002d700] with a0=sp-96, a1=0x0, a2=0x2, a3=?.
  The `jal` at 0x10021f70 calls (unnamed) [0x1002d700] with a0=sp-96, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x10021f8c calls (unnamed) [0x1002d700] with a0=sp-96, a1=0x1, a2=0x1, a3=?.
  The `jal` at 0x10021fa8 calls (unnamed) [0x1002d700] with a0=sp-96, a1=0x1, a2=0x2, a3=?.
  The `jal` at 0x10021fc4 calls __ct__7MMatrixGiT1 [0x1002da60] with a0=sp-92, a1=0x2, a2=0x2, a3=?.
  The `jal` at 0x10021fd8 calls __ct__7MMatrixGiT1 [0x1002da60] with a0=sp-88, a1=0x2, a2=0x3, a3=?.
  The `jal` at 0x10021fec calls (unnamed) [0x1002d700] with a0=sp-92, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10022004 calls (unnamed) [0x1002d700] with a0=sp-92, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x1002201c calls (unnamed) [0x1002d700] with a0=sp-92, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x10022038 calls (unnamed) [0x1002d700] with a0=sp-92, a1=0x1, a2=0x1, a3=?.
  The `jal` at 0x10022054 calls (unnamed) [0x1002d700] with a0=sp-88, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10022070 calls (unnamed) [0x1002d700] with a0=sp-88, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x10022088 calls (unnamed) [0x1002d700] with a0=sp-88, a1=0x0, a2=0x2, a3=?.
  The `jal` at 0x100220a0 calls (unnamed) [0x1002d700] with a0=sp-88, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x100220b8 calls (unnamed) [0x1002d700] with a0=sp-88, a1=0x1, a2=0x1, a3=?.
  The `jal` at 0x100220d4 calls (unnamed) [0x1002d700] with a0=sp-88, a1=0x1, a2=0x2, a3=?.
  The `jalr` at 0x100220f8 calls __ls__7ostreamGPCc with a0=sym(cout), a1=0x100495b0, a2=?, a3=?.
  The `jalr` at 0x10022108 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jal` at 0x10022118 calls __ls__GR7ostreamRC7MMatrix [0x10025bc0] with a0=ret(endl__GR7ostream), a1=sp-92, a2=?, a3=?.
  The `jalr` at 0x1002212c calls __ls__7ostreamGPCc with a0=sym(cout), a1=0x100495c8, a2=?, a3=?.
  The `jalr` at 0x10022138 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jal` at 0x10022148 calls __ls__GR7ostreamRC7MMatrix [0x10025bc0] with a0=ret(endl__GR7ostream), a1=sp-88, a2=?, a3=?.
  The `jal` at 0x10022158 calls __ct__7MMatrixGRC7MMatrix [0x10026f50] with a0=sp-84, a1=sp-92, a2=?, a3=?.
  The `jalr` at 0x1002216c calls __ls__7ostreamGPCc with a0=sym(cout), a1=0x100495e0, a2=?, a3=?.
  The `jalr` at 0x10022178 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jal` at 0x10022188 calls __ls__GR7ostreamRC7MMatrix [0x10025bc0] with a0=ret(endl__GR7ostream), a1=sp-84, a2=?, a3=?.
  The `jal` at 0x10022198 calls multRight__7MMatrixGRC7MMatrix [0x10037680] with a0=sp-84, a1=sp-88, a2=?, a3=?.
  The `jalr` at 0x100221ac calls __ls__7ostreamGPCc with a0=sym(cout), a1=0x100495f8, a2=?, a3=?.
  The `jalr` at 0x100221b8 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jal` at 0x100221c8 calls __ls__GR7ostreamRC7MMatrix [0x10025bc0] with a0=ret(endl__GR7ostream), a1=sp-84, a2=?, a3=?.
  The `jal` at 0x100221dc calls __ct__7MMatrixGiT1 [0x1002da60] with a0=sp-80, a1=0x2, a2=0x2, a3=?.
  The `jal` at 0x100221f0 calls (unnamed) [0x1002d700] with a0=sp-80, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10022208 calls (unnamed) [0x1002d700] with a0=sp-80, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x10022224 calls (unnamed) [0x1002d700] with a0=sp-80, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x10022244 calls (unnamed) [0x1002d700] with a0=sp-80, a1=0x1, a2=0x1, a3=?.
  The `jal` at 0x10022264 calls tInverse__7MMatrixCGRi [0x100329e0] with a0=sp-80, a1=sp-76, a2=sp-72, a3=?.
  The `jalr` at 0x10022278 calls __ls__7ostreamGPCc with a0=sym(cout), a1=0x10049610, a2=?, a3=?.
  The `jalr` at 0x10022284 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jal` at 0x10022294 calls __ls__GR7ostreamRC7MMatrix [0x10025bc0] with a0=ret(endl__GR7ostream), a1=sp-76, a2=?, a3=?.
  The `jalr` at 0x100222a0 calls endl__GR7ostream with a0=ret(__ls__GR7ostreamRC7MMatrix), a1=?, a2=?, a3=?.
  The `jal` at 0x100222b4 calls __ml__GRC7MMatrixT1 [0x10038a30] with a0=sp-68, a1=sp-80, a2=sp-76, a3=?.
  The `jalr` at 0x100222c4 calls __ls__7ostreamGPCc with a0=sym(cout), a1=0x100519c8, a2=?, a3=?.
  The `jalr` at 0x100222d4 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jal` at 0x100222e4 calls __ls__GR7ostreamRC7MMatrix [0x10025bc0] with a0=ret(endl__GR7ostream), a1=sp-68, a2=?, a3=?.
  The `jalr` at 0x100222f0 calls endl__GR7ostream with a0=ret(__ls__GR7ostreamRC7MMatrix), a1=?, a2=?, a3=?.
  The `jalr` at 0x10022300 calls time with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002230c calls srand with a0=ret(time), a1=?, a2=?, a3=?.
  The `jal` at 0x1002231c calls __dt__7MMatrixGv [0x10029770] with a0=sp-68, a1=0x2, a2=?, a3=?.
  The `jal` at 0x1002232c calls __dt__7MMatrixGv [0x10029770] with a0=sp-76, a1=0x2, a2=?, a3=?.
  The `jal` at 0x1002233c calls __dt__7MMatrixGv [0x10029770] with a0=sp-80, a1=0x2, a2=?, a3=?.
  The `jal` at 0x1002234c calls __dt__7MMatrixGv [0x10029770] with a0=sp-84, a1=0x2, a2=?, a3=?.
  The `jal` at 0x1002235c calls __dt__7MMatrixGv [0x10029770] with a0=sp-88, a1=0x2, a2=?, a3=?.
  The `jal` at 0x1002236c calls __dt__7MMatrixGv [0x10029770] with a0=sp-92, a1=0x2, a2=?, a3=?.
  The `jal` at 0x1002237c calls __dt__7MMatrixGv [0x10029770] with a0=sp-96, a1=0x2, a2=?, a3=?.
  The return at 0x1002238c has v0 = ret(__dt__7MMatrixGv).

- `__ct__21AboutXsetmonFormClassGPCc` in `usr/bin/X11/xsetmon` at 0x100223a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100223a0-0x100223e8 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x100223d8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x100223c0 calls __ct__23AboutXsetmonFormClassUIGPCc [0x10037de0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100223e0 has v0 = a0.

- `tTranspose__7MMatrixCGv` in `usr/bin/X11/xsetmon` at 0x100223f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100223f0-0x100224ec (252 bytes).
  It occupies 252 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10022404, `lw` at 0x10022430, `lw` at 0x1002249c.
  3 such `lw` accesses load 4 bytes from [a0] +0x0, including `lw` at 0x10022420, `lw` at 0x1002245c, `lw` at 0x100224a0.
  3 such `lw` accesses load 4 bytes from [a0] +0x4, including `lw` at 0x1002242c, `lw` at 0x10022438, `lw` at 0x100224b4.
  The `lw` at 0x1002243c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x10022444 loads 4 bytes from [a1] +0xc.
  The `lwc1` at 0x10022494 loads 4 bytes from ret(0x1002d620) +0x0.
  The `swc1` at 0x10022498 stores 4 bytes to ?.
  The `jal` at 0x10022428 calls __ct__7MMatrixGiT1 [0x1002da60] with a0=a1 at entry (arg1), a1=[[a0]+4], a2=[[a0]], a3=a3 at entry (arg3).
  The `jal` at 0x1002248c calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `blez` branch at 0x10022440 targets 0x100224d4, is taken when a2(=[[a0]+4]) <= 0 (signed), and falls through when a2(=[[a0]+4]) > 0 (signed).
  The `blez` branch at 0x10022470 targets 0x100224b8, is taken when a0(=[[a0]]) <= 0 (signed), and falls through when a0(=[[a0]]) > 0 (signed).
  The `bnel` branch at 0x100224ac targets 0x10022480, is taken when s0(?) < a0(=[[a0]]) (signed), and falls through when s0(?) >= a0(=[[a0]]) (signed); its branch-likely delay slot `addiu s1,s1,4` at 0x100224b0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x100224c0 targets 0x10022470, is taken when s4(?) < a2(=[[a0]+4]) (signed), and falls through when s4(?) >= a2(=[[a0]+4]) (signed).
  The return at 0x100224e4 has v0 = one of ret(__ct__7MMatrixGiT1), ?.

- `changeSyncFormat__17SyncSelectorFrameGPC25SyncFormatDescriptorClass` in `usr/bin/X11/xsetmon` at 0x100224f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100224f0-0x10022554 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x100224fc loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x10022510 loads 4 bytes from a0 (arg0 at entry) +0x38.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10022518, `lw` at 0x10022538.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x10022520, `lw` at 0x10022540.
  The `lw` at 0x10022524 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lw` at 0x1002252c loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `jalr` at 0x10022528 calls XSGIvcSetOutputSync with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[a0+52], a3=[a0+56], a4=[a1].
  The `jalr` at 0x1002253c calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=?, a2=?, a3=?.
  The return at 0x1002254c has v0 = ret(XFlush).

- `__dt__19ServerInfoFormClassGv` in `usr/bin/X11/xsetmon` at 0x10022560 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10022560-0x100225c8 (104 bytes).
  It occupies 104 bytes.
  The `sw` at 0x10022590 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10022598 calls __dt__21ServerInfoFormClassUIGv [0x10037910] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x100225b0 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10022580 targets 0x100225b8, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x100225a8 targets 0x100225b8, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x100225c0 has v0 = one of ?, ret(__dt__21ServerInfoFormClassUIGv), ret(__dl__GPv).

- `doFinishRegionDragCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi` in `usr/bin/X11/xsetmon` at 0x100225d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100225d0-0x10022640 (112 bytes).
  It occupies 112 bytes.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10022610, `lw` at 0x10022614, `lw` at 0x10022618.
  The `jalr` at 0x10022604 calls XtVaGetValues with a0=a0 at entry (arg0), a1=-0xa, a2=sp-48, a3=0x0.
  The `jalr` at 0x10022624 calls (unknown callee) with a0=?, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The return at 0x10022638 has v0 = ret(?).

- `fbDepthSelected__27FormatCombinationListsClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10022640 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10022640-0x100226b8 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x1002264c loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lw` at 0x10022670 loads 4 bytes from table(0x10051afc) +0x0.
  The `sw` at 0x10022674 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  The `lw` at 0x10022678 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x1002267c loads 4 bytes from [sym(xsetmonApp)] +0x130.
  The `lw` at 0x10022684 loads 4 bytes from [[sym(xsetmonApp)]+304] +0x44.
  The `lw` at 0x10022690 loads 4 bytes from [[[sym(xsetmonApp)]+304]+68] +0x2c.
  The `jalr` at 0x1002268c calls atoi with a0=entry(0x10051afc), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002269c calls DisplayfbDepth__21SetmonMasterFormClassGi [0x100389f0] with a0=[[[[sym(xsetmonApp)]+304]+68]+44], a1=ret(atoi), a2=?, a3=?.
  The return at 0x100226b0 has v0 = ret(DisplayfbDepth__21SetmonMasterFormClassGi).

- `tInverseWithLU__7MMatrixCGv` in `usr/bin/X11/xsetmon` at 0x100231a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100231a0-0x100233fc (604 bytes).
  It occupies 604 bytes.
  The `lw` at 0x100231bc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x100231c4 loads 4 bytes from [a0] +0x0.
  The `lw` at 0x100231c8 loads 4 bytes from [a0] +0x4.
  6 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x10023208, `lw` at 0x10023224, `lw` at 0x10023258.
  6 such `lw` accesses load 4 bytes from [a1] +0x0, including `lw` at 0x1002320c, `lw` at 0x10023228, `lw` at 0x1002325c.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x10023290, `swc1` at 0x100232b8.
  The `lwc1` at 0x1002335c loads 4 bytes from ?.
  The `jal` at 0x100231f8 calls __ct__7MMatrixGRC7MMatrix [0x10026f50] with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x10023214 calls __nwa__GUi with a0=([[a1]] << 0x2), a1=?, a2=?, a3=?.
  The `jalr` at 0x10023234 calls __nwa__GUi with a0=([[a1]] << 0x2), a1=?, a2=?, a3=?.
  The `jal` at 0x1002324c calls vLUDecompose__7MMatrixGPiPf [0x100237b0] with a0=a1 at entry (arg1), a1=ret(__nwa__GUi), a2=sp-112, a3=?.
  The `jal` at 0x100232c0 calls vLUBackSubstitute__7MMatrixGPiPf [0x10041730] with a0=a1 at entry (arg1), a1=ret(__nwa__GUi), a2=ret(__nwa__GUi), a3=?, a5=[[a1]].
  The `jalr` at 0x100232e8 calls __ls__7ostreamGPCc with a0=sym(cout), a1=0x100519a2, a2=?, a3=?, a5=[[a1]].
  The `jalr` at 0x100232f8 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10023308 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x100519a4, a2=?, a3=?.
  The `jalr` at 0x10023318 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGPCc), a1=0x100519a2, a2=?, a3=?.
  The `jalr` at 0x10023328 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10023338 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x100519a4, a2=?, a3=?.
  The `jalr` at 0x10023348 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGPCc), a1=0x100519a8, a2=?, a3=?.
  The `jalr` at 0x10023358 calls __ls__7ostreamGf with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100233a8 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?, a5=[[a1]].
  The `jalr` at 0x100233b8 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x100233ec calls __assert with a0=0x100494e8, a1=0x100494a0, a2=0x122, a3=a3 at entry (arg3).
  The `bne` branch at 0x100231e8 targets 0x100233d8, is taken when at(=[[a0]]) != v1(=[[a0]+4]), and falls through when at(=[[a0]]) == v1(=[[a0]+4]).
  The `blez` branch at 0x10023260 targets 0x10023390, is taken when a5(=[[a1]]) <= 0 (signed), and falls through when a5(=[[a1]]) > 0 (signed).
  The `blez` branch at 0x10023280 targets 0x100232b4, is taken when a5(=[[a1]]) <= 0 (signed), and falls through when a5(=[[a1]]) > 0 (signed).
  The `bne` branch at 0x100232a8 targets 0x10023290, is taken when s1(?) < a6(=[[a1]]) (signed), and falls through when s1(?) >= a6(=[[a1]]) (signed).
  The `blez` branch at 0x100232d8 targets 0x1002337c, is taken when a5(=[[a1]]) <= 0 (signed), and falls through when a5(=[[a1]]) > 0 (signed).
  The `bne` branch at 0x10023374 targets 0x100232e0, is taken when s1(?) < a5(=[[a1]]) (signed), and falls through when s1(?) >= a5(=[[a1]]) (signed).
  The `bne` branch at 0x10023384 targets 0x10023280, is taken when s2(?) < a5(=[[a1]]) (signed), and falls through when s2(?) >= a5(=[[a1]]) (signed).
  The `beq` branch at 0x100233f4 targets 0x100231f0 and is always taken.
  The return at 0x100233d0 has v0 = ret(__dla__GPv).

- `CreateCombinationContentsListClass__28CombinationContentsListClassSGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10023400 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10023400-0x10023480 (128 bytes).
  It occupies 128 bytes.
  The `jalr` at 0x10023428 calls __nw__GUi with a0=0x3c, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10023450 calls __ct__28CombinationContentsListClassGPCcP10_WidgetRec [0x10042360] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x10023434 targets 0x1002346c, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x10023464 has v0 = ret(__nw__GUi).
  The return at 0x10023478 has v0 = 0x0.

- `__ct__18GainControlClassUIGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10023480 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10023480-0x100234e4 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0x100234bc stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x100234a8 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100234c4 calls create__18GainControlClassUIGP10_WidgetRec [0x1002b340] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The return at 0x100234dc has v0 = a0.

- `DisplayaccumBufType__19StatisticsFormClassGi` in `usr/bin/X11/xsetmon` at 0x100234f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100234f0-0x10023570 (128 bytes).
  It occupies 128 bytes.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10023508, `lw` at 0x1002354c.
  The `lw` at 0x1002350c loads 4 bytes from [sym(xsetmonApp)] +0xf4.
  The `lwc1` at 0x1002351c loads 4 bytes from [sym(xsetmonApp)] +0x100.
  The `lw` at 0x10023534 loads 4 bytes from table(0x1004e660) +0x0.
  The `sw` at 0x10023548 stores 4 bytes to [sym(xsetmonApp)] +0xf8.
  The `swc1` at 0x1002355c stores 4 bytes to [sym(xsetmonApp)] +0x10c.
  The `jal` at 0x10023558 calls updateMemoUsageOdsy__19StatisticsFormClassGv [0x1002bd50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(a1 << 0x2), a3=0x3540c.
  The return at 0x10023568 has v0 = ret(updateMemoUsageOdsy__19StatisticsFormClassGv).

- `doDownloadCombinationButton__29FormatCombinationListsClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10023570 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10023570-0x10023578 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10023570 has v0 = ?.

- `className__22GammaAssignmentClassUIGv` in `usr/bin/X11/xsetmon` at 0x10023580 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10023580-0x10023598 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1002358c loads 4 bytes from abs 0x1005091c.
  The return at 0x10023590 has v0 = 0x100450c8.

- `ClearaccumBufType__21SetmonMasterFormClassGv` in `usr/bin/X11/xsetmon` at 0x100235a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100235a0-0x100235d4 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x100235c0 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x100235bc calls ClearaccumBufType__19StatisticsFormClassGv [0x1003d800] with a0=[a0+40], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100235cc has v0 = ret(ClearaccumBufType__19StatisticsFormClassGv).

- `vCalculateGammaCurve__GfiPUs` in `usr/bin/X11/xsetmon` at 0x100235e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100235e0-0x100236a8 (200 bytes).
  It occupies 200 bytes.
  The `sh` at 0x1002367c stores 2 bytes to ?.
  The `jalr` at 0x10023658 calls pow with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x10023600 targets 0x10023694, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bne` branch at 0x10023678 targets 0x10023640, is taken when s2(=a1) != s0(?), and falls through when s2(=a1) == s0(?).
  The return at 0x100236a0 has v0 = ?.

- `vPopulateList__27FormatCombinationListsClassGv` in `usr/bin/X11/xsetmon` at 0x100236b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100236b0-0x10023794 (228 bytes).
  It occupies 228 bytes.
  4 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x100236c8, `lw` at 0x100236f4, `lw` at 0x10023714.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x9c, including `lw` at 0x100236cc, `lw` at 0x100236f8.
  The `lbu` at 0x10023718 loads 1 byte from [sym(xsetmonApp)] +0xc8.
  The `lbu` at 0x10023734 loads 1 byte from [sym(xsetmonApp)] +0xc9.
  The `sw` at 0x10023780 stores 4 bytes to sym(old_handler) +0x0.
  The `jal` at 0x100236e8 calls vListCombinations__27FormatCombinationListsClassGv [0x10025f10] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[sym(xsetmonApp)], a3=[[sym(xsetmonApp)]+156], a4=sym(xsetmonApp).
  The `jal` at 0x10023708 calls vListFormats__27FormatCombinationListsClassGv [0x10038e50] with a0=a0 at entry (arg0), a1=?, a2=[sym(xsetmonApp)], a3=[[sym(xsetmonApp)]+156], a4=sym(xsetmonApp).
  The `jal` at 0x10023724 calls vListfbConfigs__27FormatCombinationListsClassGv [0x1002dfb0] with a0=a0 at entry (arg0), a1=?, a2=[sym(xsetmonApp)], a3=?, a4=sym(xsetmonApp).
  The `jal` at 0x10023744 calls vListfbDepths__27FormatCombinationListsClassGv [0x1003eea0] with a0=a0 at entry (arg0), a1=?, a2=[sym(xsetmonApp)], a3=[[sym(xsetmonApp)]+201]:1.
  The `jal` at 0x10023750 calls vListaccumBufTypes__27FormatCombinationListsClassGv [0x10037f50] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10023760 calls XSetErrorHandler with a0=0x1002b6a0, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100236dc targets 0x100236fc, is taken when (a3(=[[sym(xsetmonApp)]+156]) & 0x2) == 0, and falls through when (a3(=[[sym(xsetmonApp)]+156]) & 0x2) != 0.
  The `beq` branch at 0x10023700 targets 0x10023718, is taken when (a3(=[[sym(xsetmonApp)]+156]) & 0x1) == 0, and falls through when (a3(=[[sym(xsetmonApp)]+156]) & 0x1) != 0.
  The `beq` branch at 0x1002371c targets 0x10023734, is taken when a0(=[[sym(xsetmonApp)]+200]:1) == 0, and falls through when a0(=[[sym(xsetmonApp)]+200]:1) != 0.
  The `beq` branch at 0x10023738 targets 0x10023784, is taken when a3(=[[sym(xsetmonApp)]+201]:1) == 0, and falls through when a3(=[[sym(xsetmonApp)]+201]:1) != 0.
  The return at 0x1002377c has v0 = ret(XSetErrorHandler).
  The return at 0x1002378c has v0 = ?.

- `doButtonNominalGain__18GainControlClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x100237a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100237a0-0x100237a8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x100237a0 has v0 = ?.

- `vLUDecompose__7MMatrixGPiPf` in `usr/bin/X11/xsetmon` at 0x100237b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100237b0-0x10023d18 (1384 bytes).
  It occupies 1384 bytes.
  10 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x100237c0, `lw` at 0x10023818, `lw` at 0x1002385c.
  10 such `lw` accesses load 4 bytes from [a0] +0x0, including `lw` at 0x100237d8, `lw` at 0x10023820, `lw` at 0x10023860.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0x10023814, `swc1` at 0x10023a0c.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x10023858, `swc1` at 0x10023a1c.
  12 such `lwc1` accesses load 4 bytes from ret(0x1002d620) +0x0, including `lwc1` at 0x100238a0, `lwc1` at 0x1002399c, `lwc1` at 0x100239c0.
  6 such `swc1` accesses store 4 bytes to ret(0x1002d620) +0x0, including `swc1` at 0x100239d8, `swc1` at 0x100239dc, `swc1` at 0x10023b30.
  The `lwc1` at 0x100239fc loads 4 bytes from a2 (arg2 at entry) +0x0.
  2 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x10023a14, `lwc1` at 0x10023bd0.
  The `sw` at 0x10023a38 stores 4 bytes to ?.
  The `jalr` at 0x100237e4 calls __nwa__GUi with a0=([[a0]] << 0x2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10023898 calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x100238f0 calls __assert with a0=0x10049570, a1=0x100494a0, a2=0x158, a3=?.
  The `jal` at 0x10023988 calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100239a0 calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100239b8 calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100239d4 calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10023a34 calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10023abc calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10023adc calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10023af4 calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10023b20 calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10023b7c calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10023b94 calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10023bc0 calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10023c18 calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[[a0]].
  The `jal` at 0x10023c40 calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[[a0]].
  The `jal` at 0x10023c78 calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[[a0]].
  The `jal` at 0x10023cb4 calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10023cc8 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?, a5=[[a0]].
  The `blez` branch at 0x1002382c targets 0x1002390c, is taken when a5(=[[a0]]) <= 0 (signed), and falls through when a5(=[[a0]]) > 0 (signed).
  The `beq` branch at 0x10023848 targets 0x10023874 and is always taken.
  The `beq` branch at 0x1002386c targets 0x1002390c, is taken when s4(?) >= a5(=[[a0]]) (signed), and falls through when s4(?) < a5(=[[a0]]) (signed).
  The `blez` branch at 0x10023874 targets 0x10023900, is taken when a5(=[[a0]]) <= 0 (signed), and falls through when a5(=[[a0]]) > 0 (signed).
  The `bc1f` branch at 0x100238b0 targets 0x100238bc, is taken when not (f22 < f4 (c.lt.s at 0x100238a8)), and falls through when f22 < f4 (c.lt.s at 0x100238a8).
  The `bne` branch at 0x100238c4 targets 0x10023890, is taken when s1(?) < a6(=[[a0]]) (signed), and falls through when s1(?) >= a6(=[[a0]]) (signed).
  The `bc1f` branch at 0x100238d8 targets 0x10023850, is taken when not (f20 == f24 (c.eq.d at 0x100238d0)), and falls through when f20 == f24 (c.eq.d at 0x100238d0).
  The `beq` branch at 0x100238f8 targets 0x10023854 and is always taken.
  The `beq` branch at 0x10023904 targets 0x100238cc and is always taken.
  The `blez` branch at 0x10023918 targets 0x10023cc4, is taken when a5(=[[a0]]) <= 0 (signed), and falls through when a5(=[[a0]]) > 0 (signed).
  The `beq` branch at 0x10023950 targets 0x10023a9c and is always taken.
  The `beq` branch at 0x10023960 targets 0x10023a24, is taken when s5(?) == s7(?), and falls through when s5(?) != s7(?).
  The `blez` branch at 0x10023968 targets 0x100239fc, is taken when a5(=[[a0]]) <= 0 (signed), and falls through when a5(=[[a0]]) > 0 (signed).
  The `bne` branch at 0x100239f0 targets 0x10023980, is taken when s1(?) < v0(=[[a0]]) (signed), and falls through when s1(?) >= v0(=[[a0]]) (signed).
  The `bc1t` branch at 0x10023a4c targets 0x10023cac, is taken when f8 == f24 (c.eq.d at 0x10023a44), and falls through when not (f8 == f24 (c.eq.d at 0x10023a44)).
  The `bne` branch at 0x10023a5c targets 0x10023c34, is taken when a5(=[[a0]]) != s5(?), and falls through when a5(=[[a0]]) == s5(?).
  The `beq` branch at 0x10023a94 targets 0x10023cc4, is taken when a6(?) >= a5(=[[a0]]) (signed), and falls through when a6(?) < a5(=[[a0]]) (signed).
  The `blez` branch at 0x10023a9c targets 0x10023b3c, is taken when a6(?) <= 0 (signed), and falls through when a6(?) > 0 (signed).
  The `blez` branch at 0x10023ac8 targets 0x10023b14, is taken when s4(?) <= 0 (signed), and falls through when s4(?) > 0 (signed).
  The `bne` branch at 0x10023b0c targets 0x10023ad0, is taken when s1(?) != s4(?), and falls through when s1(?) == s4(?).
  The `bne` branch at 0x10023b2c targets 0x10023ab0, is taken when s5(?) != s4(?), and falls through when s5(?) == s4(?).
  The `beq` branch at 0x10023b40 targets 0x10023960, is taken when s5(?) >= a5(=[[a0]]) (signed), and falls through when s5(?) < a5(=[[a0]]) (signed).
  The `beq` branch at 0x10023b5c targets 0x10023c0c and is always taken.
  The `bne` branch at 0x10023bac targets 0x10023b70, is taken when s5(?) != s1(?), and falls through when s5(?) == s1(?).
  The `bc1f` branch at 0x10023bf0 targets 0x10023c00, is taken when not (f22 <= f4 (c.le.s at 0x10023be4)), and falls through when f22 <= f4 (c.le.s at 0x10023be4).
  The `beq` branch at 0x10023c08 targets 0x10023960, is taken when s4(?) >= a5(=[[a0]]) (signed), and falls through when s4(?) < a5(=[[a0]]) (signed).
  The `beq` branch at 0x10023c24 targets 0x10023bb4, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0x10023c2c targets 0x10023b74 and is always taken.
  The `beq` branch at 0x10023c64 targets 0x10023a60, is taken when s4(?) >= a5(=[[a0]]) (signed), and falls through when s4(?) < a5(=[[a0]]) (signed).
  The `bne` branch at 0x10023c9c targets 0x10023c70, is taken when s4(?) < a5(=[[a0]]) (signed), and falls through when s4(?) >= a5(=[[a0]]) (signed).
  The `beq` branch at 0x10023ca4 targets 0x10023a64 and is always taken.
  The `beq` branch at 0x10023cbc targets 0x10023a54 and is always taken.
  The return at 0x10023d10 has v0 = ret(__dla__GPv).
  The instructions from 0x10023958 to 0x1002395c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10023b64 to 0x10023b6c are not reached by any path from the entry, and their branches are not listed.

- `postWarningMessage__17TextErrorMessagerGP9strstream` in `usr/bin/X11/xsetmon` at 0x10023d20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10023d20-0x10023d80 (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0x10023d44 calls str__9strstreamGv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10023d58 calls appendText__17TextErrorMessagerGPc [0x1002cbb0] with a0=a0 at entry (arg0), a1=ret(str__9strstreamGv), a2=?, a3=?.
  The `jalr` at 0x10023d68 calls __dl__GPv with a0=ret(str__9strstreamGv), a1=?, a2=?, a3=?.
  The return at 0x10023d78 has v0 = ret(__dl__GPv).

- `doFinishScalarDrag__21GammaMapEditorClassUIGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x10023d80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10023d80-0x10023d88 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10023d80 has v0 = ?.

- `CreateAboutXsetmonFormClass__21AboutXsetmonFormClassSGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10023d90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10023d90-0x10023e10 (128 bytes).
  It occupies 128 bytes.
  The `jalr` at 0x10023db8 calls __nw__GUi with a0=0x30, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10023de0 calls __ct__21AboutXsetmonFormClassGPCcP10_WidgetRec [0x10028cb0] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x10023dc4 targets 0x10023dfc, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x10023df4 has v0 = ret(__nw__GUi).
  The return at 0x10023e08 has v0 = 0x0.

- `doOptionMap__12GammaClassUIGP18GammaMapDescriptor` in `usr/bin/X11/xsetmon` at 0x10023e10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10023e10-0x10023e18 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10023e10 has v0 = ?.

- `CreateGainControlClass__16GainControlClassSGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10023e20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10023e20-0x10023ea0 (128 bytes).
  It occupies 128 bytes.
  The `jalr` at 0x10023e48 calls __nw__GUi with a0=0x3c, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10023e70 calls __ct__16GainControlClassGPCcP10_WidgetRec [0x1003ed80] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x10023e54 targets 0x10023e8c, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x10023e84 has v0 = ret(__nw__GUi).
  The return at 0x10023e98 has v0 = 0x0.

- `__dt__16AboutDialogClassGv` in `usr/bin/X11/xsetmon` at 0x10023ea0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10023ea0-0x10023f08 (104 bytes).
  It occupies 104 bytes.
  The `sw` at 0x10023ed0 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10023ed8 calls __dt__15VkGenericDialogGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10023ef0 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10023ec0 targets 0x10023ef8, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10023ee8 targets 0x10023ef8, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10023f00 has v0 = one of ?, ret(__dt__15VkGenericDialogGv), ret(__dl__GPv).

- `DisplayFormat__19StatisticsFormClassGPC21XSGIvcVideoFormatInfo` in `usr/bin/X11/xsetmon` at 0x10023f10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10023f10-0x1002444c (1340 bytes).
  It occupies 1340 bytes.
  The `lw` at 0x10023f10 loads 4 bytes from a1 (arg1 at entry) +0x108.
  6 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10c, including `lw` at 0x10023f14, `lw` at 0x100241a8, `lw` at 0x100241e4.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x110, including `lwc1` at 0x10023f40, `lwc1` at 0x100242d4.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x104, including `lw` at 0x10023f48, `lw` at 0x10023f9c, `lw` at 0x100243bc.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x100, including `lw` at 0x10023f78, `lw` at 0x10023fc8, `lw` at 0x100243b8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x10023f8c, `lw` at 0x10023fa8.
  The `lw` at 0x10023fd4 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lw` at 0x10023fe8 loads 4 bytes from a1 (arg1 at entry) +0x124.
  The `lw` at 0x10024010 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lw` at 0x1002401c loads 4 bytes from a1 (arg1 at entry) +0x11c.
  The `lw` at 0x10024044 loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `lw` at 0x10024050 loads 4 bytes from a1 (arg1 at entry) +0x120.
  The `lw` at 0x10024078 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x10024084 loads 4 bytes from a1 (arg1 at entry) +0x128.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5c, including `lw` at 0x100240ac, `lw` at 0x100240e0.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x12c, including `lw` at 0x1002410c, `lw` at 0x1002414c, `lw` at 0x1002417c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x10024120, `lw` at 0x1002413c, `lw` at 0x10024168.
  6 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x130, including `lw` at 0x1002416c, `lw` at 0x1002419c, `lw` at 0x100241d8.
  The `lw` at 0x10024188 loads 4 bytes from a0 (arg0 at entry) +0x8c.
  The `lw` at 0x100241b8 loads 4 bytes from [a1+304] +0x14.
  The `lw` at 0x100241d4 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lw` at 0x100241f4 loads 4 bytes from [a1+304] +0x8.
  The `lw` at 0x10024210 loads 4 bytes from a0 (arg0 at entry) +0x94.
  The `lw` at 0x10024230 loads 4 bytes from [a1+304] +0xc.
  The `lw` at 0x1002424c loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lw` at 0x1002426c loads 4 bytes from [a1+304] +0x18.
  The `lw` at 0x10024288 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0x100242a8 loads 4 bytes from [a1+304] +0x10.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3c, including `lw` at 0x100242c8, `lw` at 0x100242f8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x74, including `lw` at 0x10024314, `lw` at 0x10024344.
  The `lwc1` at 0x10024320 loads 4 bytes from a1 (arg1 at entry) +0x114.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0x10024360, `lw` at 0x10024390.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x100243a8, `lw` at 0x100243ec.
  The `lbu` at 0x100243ac loads 1 byte from [sym(xsetmonApp)] +0xc9.
  The `lw` at 0x100243c8 loads 4 bytes from [sym(xsetmonApp)] +0xf4.
  The `swc1` at 0x100243e8 stores 4 bytes to [sym(xsetmonApp)] +0x100.
  The `lw` at 0x100243f4 loads 4 bytes from [sym(xsetmonApp)] +0xf8.
  The `lw` at 0x10024404 loads 4 bytes from table(0x1004e660) +0x0.
  The `swc1` at 0x10024424 stores 4 bytes to [sym(xsetmonApp)] +0x10c.
  The `jal` at 0x10023f88 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+48], a1=a1 at entry (arg1), a2=[a1+264], a3=[a1+268], a4=[a1+256].
  The `jal` at 0x10023f98 calls __as__9EZWrapperGi [0x1001fb40] with a0=ret(EZ__GP10_WidgetRec), a1=[a1+260], a2=?, a3=?.
  The `jal` at 0x10023fa4 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+48], a1=?, a2=?, a3=?.
  The `jal` at 0x10023fb4 calls __ls__9EZWrapperGPCc [0x10021860] with a0=ret(EZ__GP10_WidgetRec), a1=0x100517a0, a2=?, a3=?.
  The `jal` at 0x10023fc4 calls __ls__9EZWrapperGi [0x100217a0] with a0=ret(__ls__9EZWrapperGPCc), a1=[a1+256], a2=?, a3=?.
  The `jal` at 0x10023fd0 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+84], a1=?, a2=?, a3=?.
  The `jal` at 0x10023ff0 calls (unnamed) [0x10029dc0] with a0=sp-176, a1=[a1+292], a2=?, a3=?.
  The `jal` at 0x10024000 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=ret(0x10029dc0), a2=?, a3=?.
  The `jal` at 0x1002400c calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+76], a1=?, a2=?, a3=?.
  The `jal` at 0x10024024 calls (unnamed) [0x10029dc0] with a0=sp-176, a1=[a1+284], a2=?, a3=?.
  The `jal` at 0x10024034 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=ret(0x10029dc0), a2=?, a3=?.
  The `jal` at 0x10024040 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+100], a1=?, a2=?, a3=?.
  The `jal` at 0x10024058 calls (unnamed) [0x10029dc0] with a0=sp-176, a1=[a1+288], a2=?, a3=?.
  The `jal` at 0x10024068 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=ret(0x10029dc0), a2=?, a3=?.
  The `jal` at 0x10024074 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+68], a1=?, a2=?, a3=?.
  The `jal` at 0x1002408c calls (unnamed) [0x10029dc0] with a0=sp-176, a1=[a1+296], a2=?, a3=?.
  The `jal` at 0x1002409c calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=ret(0x10029dc0), a2=?, a3=?.
  The `jal` at 0x100240a8 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+92], a1=?, a2=?, a3=?.
  The `jal` at 0x100240c0 calls (unnamed) [0x10039390] with a0=sp-176, a1=?, a2=?, a3=?.
  The `jal` at 0x100240d0 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=ret(0x10039390), a2=?, a3=?.
  The `jal` at 0x100240dc calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+92], a1=?, a2=?, a3=?.
  The `jalr` at 0x100240f4 calls VkGetResource__GPCcT1 with a0=0x10046908, a1=0x10046908, a2=?, a3=?.
  The `jal` at 0x10024104 calls __ls__9EZWrapperGPCc [0x10021860] with a0=ret(EZ__GP10_WidgetRec), a1=ret(VkGetResource__GPCcT1), a2=?, a3=?.
  The `jal` at 0x1002411c calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+56], a1=[a1+300], a2=0x1, a3=?.
  The `jal` at 0x1002412c calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=0x100517a4, a2=?, a3=?.
  The `jal` at 0x10024138 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+56], a1=?, a2=?, a3=?.
  The `jal` at 0x10024148 calls __ls__9EZWrapperGi [0x100217a0] with a0=ret(EZ__GP10_WidgetRec), a1=[a1+300], a2=?, a3=?.
  The `jal` at 0x10024158 calls __ls__9EZWrapperGPCc [0x10021860] with a0=ret(__ls__9EZWrapperGi), a1=0x100517a8, a2=?, a3=?.
  The `jalr` at 0x10024164 calls XtManageChild with a0=[a0+56], a1=?, a2=?, a3=?.
  The `jal` at 0x1002418c calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+140], a1=?, a2=?, a3=?.
  The `jal` at 0x100241b4 calls (unnamed) [0x10030e10] with a0=sp-176, a1=[[a1+304]+20], a2=?, a3=[a1+268].
  The `jal` at 0x100241c4 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=ret(0x10030e10), a2=?, a3=?.
  The `jal` at 0x100241d0 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+132], a1=?, a2=?, a3=?.
  The `jal` at 0x100241f0 calls (unnamed) [0x10030e10] with a0=sp-176, a1=[[a1+304]+8], a2=?, a3=[a1+268].
  The `jal` at 0x10024200 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=ret(0x10030e10), a2=?, a3=?.
  The `jal` at 0x1002420c calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+148], a1=?, a2=?, a3=?.
  The `jal` at 0x1002422c calls (unnamed) [0x10030e10] with a0=sp-176, a1=[[a1+304]+12], a2=?, a3=[a1+268].
  The `jal` at 0x1002423c calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=ret(0x10030e10), a2=?, a3=?.
  The `jal` at 0x10024248 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+124], a1=?, a2=?, a3=?.
  The `jal` at 0x10024268 calls (unnamed) [0x10030e10] with a0=sp-176, a1=[[a1+304]+24], a2=?, a3=[a1+268].
  The `jal` at 0x10024278 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=ret(0x10030e10), a2=?, a3=?.
  The `jal` at 0x10024284 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+156], a1=?, a2=?, a3=?.
  The `jal` at 0x100242a4 calls (unnamed) [0x10030e10] with a0=sp-176, a1=[[a1+304]+16], a2=?, a3=[a1+268].
  The `jal` at 0x100242b8 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=ret(0x10030e10), a2=?, a3=?.
  The `jal` at 0x100242c4 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+60], a1=?, a2=?, a3=?.
  The `jal` at 0x100242d8 calls (unnamed) [0x10039390] with a0=sp-176, a1=?, a2=?, a3=?; fp f13=[a1+272].
  The `jal` at 0x100242e8 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=ret(0x10039390), a2=?, a3=?.
  The `jal` at 0x100242f4 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+60], a1=?, a2=?, a3=?.
  The `jal` at 0x10024304 calls __ls__9EZWrapperGPCc [0x10021860] with a0=ret(EZ__GP10_WidgetRec), a1=0x100517b0, a2=?, a3=?.
  The `jal` at 0x10024310 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+116], a1=?, a2=?, a3=?.
  The `jal` at 0x10024324 calls (unnamed) [0x10039390] with a0=sp-176, a1=?, a2=?, a3=?; fp f13=[a1+276].
  The `jal` at 0x10024334 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=ret(0x10039390), a2=?, a3=?.
  The `jal` at 0x10024340 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+116], a1=?, a2=?, a3=?.
  The `jal` at 0x10024350 calls __ls__9EZWrapperGPCc [0x10021860] with a0=ret(EZ__GP10_WidgetRec), a1=0x100517b0, a2=?, a3=?.
  The `jal` at 0x1002435c calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+108], a1=?, a2=?, a3=?.
  The `jal` at 0x10024370 calls (unnamed) [0x10039390] with a0=sp-176, a1=?, a2=?, a3=?.
  The `jal` at 0x10024380 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=ret(0x10039390), a2=?, a3=?.
  The `jal` at 0x1002438c calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+108], a1=?, a2=?, a3=?.
  The `jal` at 0x1002439c calls __ls__9EZWrapperGPCc [0x10021860] with a0=ret(EZ__GP10_WidgetRec), a1=0x100517b0, a2=?, a3=?.
  The `jal` at 0x10024420 calls updateMemoUsageOdsy__19StatisticsFormClassGv [0x1002bd50] with a0=a0 at entry (arg0), a1=sym(xsetmonApp), a2=[[sym(xsetmonApp)]+201]:1, a3=[sym(xsetmonApp)], a4=entry(0x1004e660), a5=([[sym(xsetmonApp)]+248] << 0x2), a7=[a1+256].
  The `beq` branch at 0x10023f70 targets 0x1002416c, is taken when at(=[a1+260]) == 0, and falls through when at(=[a1+260]) != 0.
  The `beq` branch at 0x10023f7c targets 0x1002416c, is taken when a4(=[a1+256]) == 0, and falls through when a4(=[a1+256]) != 0.
  The `beq` branch at 0x10024114 targets 0x1002416c, is taken when a1(=[a1+300]) == a2(=0x1), and falls through when a1(=[a1+300]) != a2(=0x1).
  The `beq` branch at 0x10024174 targets 0x100242c0, is taken when t8(=[a1+304]) == 0, and falls through when t8(=[a1+304]) != 0.
  The `beq` branch at 0x10024180 targets 0x100242c0, is taken when t9(=[a1+300]) == 0, and falls through when t9(=[a1+300]) != 0.
  The `beq` branch at 0x100243b0 targets 0x10024428, is taken when a2(=[[sym(xsetmonApp)]+201]:1) == 0, and falls through when a2(=[[sym(xsetmonApp)]+201]:1) != 0.
  The return at 0x10024444 has v0 = one of [sym(xsetmonApp)], ret(updateMemoUsageOdsy__19StatisticsFormClassGv).

- `formatSelected__29FormatCombinationListsClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10024450 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024450-0x10024458 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10024450 has v0 = ?.

- `saveSettingsFileCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10024460 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024460-0x100244a4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10024464 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10024470 loads 4 bytes from [a1+8] +0x1b0.
  The `lw` at 0x1002447c loads 4 bytes from [a1+8] +0x1b8.
  The `jalr` at 0x1002448c calls (unknown callee) with a0=([[a1+8]+432] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x3449c.
  The return at 0x1002449c has v0 = ret(?).

- `doFinishScalarDrag__19GammaMapEditorClassGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x100244b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100244b0-0x1002457c (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0x100244b4 loads 4 bytes from a0 (arg0 at entry) +0x68.
  The `lwc1` at 0x10024564 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `jalr` at 0x100244e0 calls __nw__GUi with a0=0x14, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10024500 calls __ct__13GammaEditUndoGP19GammaMapEditorClass [0x1002e2e0] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x10024520 calls getTheUndoManager__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10024538 calls VkGetResource__GPCcT1 with a0=0x100459b0, a1=0x100459b0, a2=?, a3=?.
  The `jalr` at 0x10024550 calls add__17VkMenuUndoManagerGPCcPGP10_WidgetRecPvT2_vPv with a0=ret(getTheUndoManager__Gv), a1=ret(VkGetResource__GPCcT1), a2=sym(vPerformUndo__13GammaEditUndoSGPvT1), a3=?.
  The `jal` at 0x10024560 calls vGammaScalarChanged__19GammaMapEditorClassGf [0x10026610] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?; fp f13=[a0+132].
  The `beq` branch at 0x100244d0 targets 0x10024568, is taken when at(=[a0+104]) == 0, and falls through when at(=[a0+104]) != 0.
  The `beq` branch at 0x100244ec targets 0x10024518, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10024510 targets 0x1002451c and is always taken.
  The return at 0x10024574 has v0 = one of 0x3444c, ret(vGammaScalarChanged__19GammaMapEditorClassGf).

- `resetEditing__27FormatCombinationListsClassGv` in `usr/bin/X11/xsetmon` at 0x10024580 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024580-0x1002467c (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0x10024584 loads 4 bytes from a0 (arg0 at entry) +0xd8.
  The `lw` at 0x100245b4 loads 4 bytes from a0 (arg0 at entry) +0x40.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x100245c4, `lw` at 0x10024604, `lw` at 0x10024658.
  The `lw` at 0x100245c8 loads 4 bytes from [a0+8] +0xe0.
  The `lw` at 0x100245cc loads 4 bytes from [a0+8] +0xd8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe0, including `lw` at 0x100245e0, `lw` at 0x10024678.
  The `lw` at 0x100245f4 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x10024608 loads 4 bytes from [a0+8] +0xbc.
  The `lw` at 0x1002460c loads 4 bytes from [a0+8] +0xb4.
  The `lw` at 0x10024634 loads 4 bytes from a0 (arg0 at entry) +0xdc.
  The `lw` at 0x10024648 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0x1002465c loads 4 bytes from [a0+8] +0xb0.
  The `lw` at 0x10024660 loads 4 bytes from [a0+8] +0xa8.
  The `jalr` at 0x100245b0 calls XmListSelectPos with a0=[a0+64], a1=[a0+216], a2=0x1, a3=a3 at entry (arg3).
  The `jalr` at 0x100245bc calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x100245d8 calls (unknown callee) with a0=([[a0+8]+216] + a0), a1=ret(baseWidget__11VkComponentCGv), a2=0x0, a3=?.
  The `jalr` at 0x100245f0 calls XmListSelectPos with a0=[a0+68], a1=[a0+224], a2=0x1, a3=?.
  The `jalr` at 0x100245fc calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10024618 calls (unknown callee) with a0=([[a0+8]+180] + a0), a1=ret(baseWidget__11VkComponentCGv), a2=0x0, a3=?.
  The `jalr` at 0x10024644 calls XmListSelectPos with a0=[a0+32], a1=[a0+220], a2=0x1, a3=a3 at entry (arg3).
  The `jalr` at 0x10024650 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002466c calls (unknown callee) with a0=([[a0+8]+168] + a0), a1=ret(baseWidget__11VkComponentCGv), a2=0x0, a3=?.
  The `blez` branch at 0x100245a0 targets 0x10024634, is taken when a1(=[a0+216]) <= 0 (signed), and falls through when a1(=[a0+216]) > 0 (signed).
  The `blez` branch at 0x100245e4 targets 0x10024620, is taken when a1(=[a0+224]) <= 0 (signed), and falls through when a1(=[a0+224]) > 0 (signed).
  The `blez` branch at 0x10024638 targets 0x100245e0, is taken when a1(=[a0+220]) <= 0 (signed), and falls through when a1(=[a0+220]) > 0 (signed).
  The `beq` branch at 0x10024674 targets 0x100245e4 and is always taken.
  The return at 0x1002462c has v0 = one of ?, ret(?).

- `__ct__22GammaAssignmentClassUIGPCc` in `usr/bin/X11/xsetmon` at 0x10024680 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024680-0x100246d8 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0x100246b0 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x100246bc stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `sw` at 0x100246c8 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  The `jalr` at 0x100246a0 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100246d0 has v0 = a0.

- `apply__21AboutXsetmonFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x100246e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100246e0-0x1002471c (60 bytes).
  It occupies 60 bytes.
  The `jal` at 0x10024704 calls VkUnimplemented__GP10_WidgetRecPCc [0x10042a40] with a0=0x0, a1=0x10043ec8, a2=0x3421c, a3=a3 at entry (arg3).
  The return at 0x10024714 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDragRegion__21GammaMapEditorClassUIGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x10024720 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024720-0x10024728 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10024720 has v0 = ?.

- `doOptionBlankedCallback__18ChannelFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10024730 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024730-0x10024774 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10024734 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10024740 loads 4 bytes from [a1+8] +0xc0.
  The `lw` at 0x1002474c loads 4 bytes from [a1+8] +0xc8.
  The `jalr` at 0x1002475c calls (unknown callee) with a0=([[a1+8]+192] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x341cc.
  The return at 0x1002476c has v0 = ret(?).

- `__dt__27FormatCombinationListsClassGv` in `usr/bin/X11/xsetmon` at 0x10024780 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024780-0x10024878 (248 bytes).
  It occupies 248 bytes.
  The `sw` at 0x100247a8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x100247b0 loads 4 bytes from a0 (arg0 at entry) +0xc0.
  The `lw` at 0x100247c8 loads 4 bytes from a0 (arg0 at entry) +0xc8.
  The `lw` at 0x100247e0 loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `lw` at 0x100247f8 loads 4 bytes from a0 (arg0 at entry) +0xbc.
  The `lw` at 0x10024810 loads 4 bytes from a0 (arg0 at entry) +0xd0.
  The `lw` at 0x10024828 loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `jalr` at 0x100247bc calls XFree with a0=[a0+192], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+192].
  The `jalr` at 0x100247d4 calls XFree with a0=[a0+200], a1=?, a2=?, a3=[a0+200].
  The `jalr` at 0x100247ec calls XFree with a0=[a0+180], a1=?, a2=?, a3=[a0+180].
  The `jalr` at 0x10024804 calls XFree with a0=[a0+188], a1=?, a2=?, a3=[a0+188].
  The `jalr` at 0x1002481c calls __dla__GPv with a0=[a0+208], a1=?, a2=?, a3=[a0+208].
  The `jalr` at 0x10024838 calls __dla__GPv with a0=[a0+212], a1=?, a2=?, a3=[a0+212].
  The `jal` at 0x10024848 calls __dt__29FormatCombinationListsClassUIGv [0x100372d0] with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10024860 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10024798 targets 0x10024868, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x100247b4 targets 0x100247c8, is taken when a3(=[a0+192]) == 0, and falls through when a3(=[a0+192]) != 0.
  The `beq` branch at 0x100247cc targets 0x100247e0, is taken when a3(=[a0+200]) == 0, and falls through when a3(=[a0+200]) != 0.
  The `beq` branch at 0x100247e4 targets 0x100247f8, is taken when a3(=[a0+180]) == 0, and falls through when a3(=[a0+180]) != 0.
  The `beq` branch at 0x100247fc targets 0x10024810, is taken when a3(=[a0+188]) == 0, and falls through when a3(=[a0+188]) != 0.
  The `beq` branch at 0x10024814 targets 0x10024828, is taken when a3(=[a0+208]) == 0, and falls through when a3(=[a0+208]) != 0.
  The `beq` branch at 0x1002482c targets 0x10024848, is taken when a3(=[a0+212]) == 0, and falls through when a3(=[a0+212]) != 0.
  The `beq` branch at 0x10024858 targets 0x10024868, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10024870 has v0 = one of ?, ret(__dt__29FormatCombinationListsClassUIGv), ret(__dl__GPv).

- `vDetermineSplinePoints__19GammaMapEditorClassGv` in `usr/bin/X11/xsetmon` at 0x10024880 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024880-0x10024a0c (396 bytes).
  It occupies 396 bytes.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xac, including `lw` at 0x10024884, `lw` at 0x100248b8, `lw` at 0x100248d0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lw` at 0x100248b0, `lw` at 0x100249b8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb0, including `lw` at 0x100248c4, `lw` at 0x10024958, `lw` at 0x100249c0.
  The `sw` at 0x100248c8 stores 4 bytes to a0 (arg0 at entry) +0xb8.
  The `sw` at 0x100248d4 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  The `sw` at 0x100248e0 stores 4 bytes to a0 (arg0 at entry) +0xbc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb4, including `lw` at 0x100248ec, `lw` at 0x10024988, `lw` at 0x100249ac.
  The `sw` at 0x10024908 stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x10024920 stores 4 bytes to a0 (arg0 at entry) +0xb4.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x10024970, `swc1` at 0x10024994.
  The `lw` at 0x10024974 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lhu` at 0x10024980 loads 2 bytes from ([a0+80] + (ret(iSplineIndexToGammaIndex__19GammaMapEditorClassCGi) + ret(iSplineIndexToGammaIndex__19GammaMapEditorClassCGi))) +0x0.
  The `lw` at 0x100249c4 loads 4 bytes from a0 (arg0 at entry) +0xbc.
  The `lw` at 0x100249d0 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `jalr` at 0x100248ac calls __dla__GPv with a0=[a0+168], a1=?, a2=?, a3=?.
  The `jalr` at 0x100248bc calls __nwa__GUi with a0=([a0+172] << 0x2), a1=?, a2=?, a3=?.
  The `jalr` at 0x100248dc calls __dla__GPv with a0=[a0+176], a1=[a0+172]-1, a2=?, a3=?.
  The `jalr` at 0x100248e8 calls __dla__GPv with a0=[a0+180], a1=?, a2=?, a3=?.
  The `jalr` at 0x100248f8 calls __nwa__GUi with a0=([a0+172] << 0x2), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002490c calls __nwa__GUi with a0=([a0+172] << 0x2), a1=?, a2=?, a3=?.
  The `jal` at 0x10024948 calls iSplineIndexToGammaIndex__19GammaMapEditorClassCGi [0x10028dd0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1002496c calls iSplineIndexToGammaIndex__19GammaMapEditorClassCGi [0x10028dd0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100249cc calls vSplineFit__19GammaMapEditorClassCGiT1PCfT3Pf [0x10037b40] with a0=a0 at entry (arg0), a1=[a0+184], a2=[a0+188], a3=[a0+176], a5=[a0+168].
  The `jalr` at 0x100249fc calls __assert with a0=0x10045aa8, a1=0x10045ac0, a2=0x1db, a3=a3 at entry (arg3).
  The `beq` branch at 0x100248a0 targets 0x100249e8, is taken when at(=[a0+172]) == 0, and falls through when at(=[a0+172]) != 0.
  The `blez` branch at 0x1002491c targets 0x100249b8, is taken when a1(=[a0+172]) <= 0 (signed), and falls through when a1(=[a0+172]) > 0 (signed).
  The `bne` branch at 0x100249a4 targets 0x10024940, is taken when s1(?) < a3(=[a0+172]) (signed), and falls through when s1(?) >= a3(=[a0+172]) (signed).
  The `beq` branch at 0x10024a04 targets 0x100248ac and is always taken.
  The return at 0x100249e0 has v0 = ret(vSplineFit__19GammaMapEditorClassCGiT1PCfT3Pf).

- `__ct__17SyncSelectorFrameGPCc` in `usr/bin/X11/xsetmon` at 0x10024a10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024a10-0x10024a58 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x10024a48 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10024a30 calls __ct__19SyncSelectorFrameUIGPCc [0x10029600] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10024a50 has v0 = a0.

- `DisplayfbConfig__21SetmonMasterFormClassGPCc` in `usr/bin/X11/xsetmon` at 0x10024a60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024a60-0x10024a94 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x10024a80 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x10024a7c calls DisplayfbConfig__19StatisticsFormClassGPCc [0x1002a800] with a0=[a0+40], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10024a8c has v0 = ret(DisplayfbConfig__19StatisticsFormClassGPCc).

- `DisplayCombination__21SetmonMasterFormClassGPCc` in `usr/bin/X11/xsetmon` at 0x10024aa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024aa0-0x10024ad4 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x10024ac0 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `jal` at 0x10024abc calls DisplayCombination__28CombinationContentsListClassGPCc [0x1002a8e0] with a0=[a0+36], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10024acc has v0 = ret(DisplayCombination__28CombinationContentsListClassGPCc).

- `__dt__22GammaAssignmentClassUIGv` in `usr/bin/X11/xsetmon` at 0x10024ae0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024ae0-0x10024c14 (308 bytes).
  It occupies 308 bytes.
  The `sw` at 0x10024b18 stores 4 bytes to a0 (arg0 at entry) +0x8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x10024b20, `lw` at 0x10024b44, `lw` at 0x10024b74.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10024b2c, `lw` at 0x10024b88.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x98, including `lw` at 0x10024b30, `lw` at 0x10024b8c.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10024b4c, `lw` at 0x10024b58, `lw` at 0x10024b5c.
  The `lw` at 0x10024bb8 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `jalr` at 0x10024b68 calls (unknown callee) with a0=?, a1=0x3, a2=?, a3=?.
  The `jalr` at 0x10024b80 calls __dla__GPv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10024bac calls __dla__GPv with a0=[a0+56], a1=?, a2=?, a3=[a0+56].
  The `jalr` at 0x10024bc8 calls __dla__GPv with a0=[a0+60], a1=?, a2=?, a3=[a0+60].
  The `jalr` at 0x10024bdc calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10024bf0 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10024b08 targets 0x10024bf8, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10024b28 targets 0x10024bb8, is taken when a3(=[a0+56]) == 0, and falls through when a3(=[a0+56]) != 0.
  The `blez` branch at 0x10024b34 targets 0x10024bac, is taken when v1(=[[sym(xsetmonApp)]+152]) <= 0 (signed), and falls through when v1(=[[sym(xsetmonApp)]+152]) > 0 (signed).
  The `beq` branch at 0x10024b50 targets 0x10024b80, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x10024b98 targets 0x10024b40, is taken when s1(?) < a4(=[[sym(xsetmonApp)]+152]) (signed), and falls through when s1(?) >= a4(=[[sym(xsetmonApp)]+152]) (signed).
  The `beq` branch at 0x10024bbc targets 0x10024bd8, is taken when a3(=[a0+60]) == 0, and falls through when a3(=[a0+60]) != 0.
  The `beq` branch at 0x10024be8 targets 0x10024bf8, is taken when (s0(=a1) & 0x1) == 0, and falls through when (s0(=a1) & 0x1) != 0.
  The return at 0x10024c0c has v0 = one of ?, ret(__dt__11VkComponentGv), ret(__dl__GPv).

- `alarmFunc__Gi` in `usr/bin/X11/xsetmon` at 0x10024c20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024c20-0x10024c5c (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0x10024c44 calls longjmp with a0=0x10051e48, a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10024c54 has v0 = ret(longjmp).

- `populateHPhaseWithChannel__16ChannelFormClassGiPC17XSGIvcChannelInfo` in `usr/bin/X11/xsetmon` at 0x10024c60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024c60-0x10024d74 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0x10024c70 loads 4 bytes from a2 (arg2 at entry) +0x164.
  The `lw` at 0x10024c98 loads 4 bytes from a2 (arg2 at entry) +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa0, including `lw` at 0x10024ca8, `lw` at 0x10024cf8, `lw` at 0x10024d68.
  The `lw` at 0x10024cb0 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x10024cb8 loads 4 bytes from [sym(xsetmonApp)] +0x138.
  The `lw` at 0x10024cc8 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `lw` at 0x10024cd4 loads 4 bytes from a2 (arg2 at entry) +0x16c.
  The `lw` at 0x10024ce0 loads 4 bytes from a2 (arg2 at entry) +0x168.
  The `jalr` at 0x10024ca4 calls XtManageChild with a0=[a0+160], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10024cc4 calls XSGIvcQueryOutputPhaseH with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=a1 at entry (arg1), a3=sp-48.
  The `jalr` at 0x10024cf4 calls XtVaSetValues with a0=[a0+160], a1=-0x8, a2=?, a3=-0x18, a4=[a2+360], a5=-0xd, a6=[a2+364], a7=0x0.
  The `jalr` at 0x10024d20 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10043f90, a2=?, a3=?.
  The `jalr` at 0x10024d30 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x10024d40 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x10051498, a2=?, a3=?.
  The `jalr` at 0x10024d4c calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10024d58 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10024d64 calls XtUnmanageChild with a0=[a0+160], a1=?, a2=?, a3=?.
  The `beq` branch at 0x10024c90 targets 0x10024d60, is taken when at(=[a2+356]) == 0, and falls through when at(=[a2+356]) != 0.
  The `beq` branch at 0x10024c9c targets 0x10024d60, is taken when v1(=[a2]) == 0, and falls through when v1(=[a2]) != 0.
  The `beq` branch at 0x10024ccc targets 0x10024d18, is taken when v0(=ret(XSGIvcQueryOutputPhaseH)) == 0, and falls through when v0(=ret(XSGIvcQueryOutputPhaseH)) != 0.
  The `beq` branch at 0x10024d6c targets 0x10024d00 and is always taken.
  The return at 0x10024d10 has v0 = one of ret(XtVaSetValues), ret(XtUnmanageChild).

- `__ct__21GammaMapEditorClassUIGPCc` in `usr/bin/X11/xsetmon` at 0x10024d80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024d80-0x10024dc8 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x10024db8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10024da0 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10024dc0 has v0 = a0.

- `getTheStereoDialog__Gv` in `usr/bin/X11/xsetmon` at 0x10024dd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024dd0-0x10024e58 (136 bytes).
  It occupies 136 bytes.
  The `jalr` at 0x10024e04 calls __nw__GUi with a0=0x60, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10024e44 calls (unnamed) [0x1003edf0] with a0=ret(__nw__GUi), a1=0x10049030, a2=?, a3=?.
  The `beq` branch at 0x10024de8 targets 0x10024dfc, is taken when v0(=[0x10051e24]) == 0, and falls through when v0(=[0x10051e24]) != 0.
  The `bne` branch at 0x10024e0c targets 0x10024e2c, is taken when v0(=ret(__nw__GUi)) != 0, and falls through when v0(=ret(__nw__GUi)) == 0.
  The `beq` branch at 0x10024e50 targets 0x10024e1c and is always taken.
  The return at 0x10024df4 has v0 = [0x10051e24].
  The return at 0x10024e24 has v0 = one of 0x0, ret(__nw__GUi).

- `expose__19GammaMapEditorClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10024e60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024e60-0x10024e94 (52 bytes).
  It occupies 52 bytes.
  The `jal` at 0x10024e7c calls redraw__19GammaMapEditorClassCGi [0x1002ad90] with a0=a0 at entry (arg0), a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10024e8c has v0 = ret(redraw__19GammaMapEditorClassCGi).

- `postInfoMessage__17TextErrorMessagerGP9strstream` in `usr/bin/X11/xsetmon` at 0x10024ea0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024ea0-0x10024f00 (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0x10024ec4 calls str__9strstreamGv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10024ed8 calls appendText__17TextErrorMessagerGPc [0x1002cbb0] with a0=a0 at entry (arg0), a1=ret(str__9strstreamGv), a2=?, a3=?.
  The `jalr` at 0x10024ee8 calls __dl__GPv with a0=ret(str__9strstreamGv), a1=?, a2=?, a3=?.
  The return at 0x10024ef8 has v0 = ret(__dl__GPv).

- `doArmRegionDragCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi` in `usr/bin/X11/xsetmon` at 0x10024f00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024f00-0x10024f70 (112 bytes).
  It occupies 112 bytes.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10024f40, `lw` at 0x10024f44, `lw` at 0x10024f48.
  The `jalr` at 0x10024f34 calls XtVaGetValues with a0=a0 at entry (arg0), a1=-0xa, a2=sp-48, a3=0x0.
  The `jalr` at 0x10024f54 calls (unknown callee) with a0=?, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The return at 0x10024f68 has v0 = ret(?).

- `doOptionSyncSourceExternal__21ServerInfoFormClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10024f70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024f70-0x10024f78 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10024f70 has v0 = ?.

- `saveSettingsFile__18XSetmonWindowClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10024f80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10024f80-0x1002504c (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0x10024fa4 loads 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x8.
  The `lw` at 0x10024fb4 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x110.
  The `lw` at 0x10024fc0 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x108.
  3 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10024fe4, `lw` at 0x10025020, `lw` at 0x1002502c.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x88, including `lw` at 0x10024fe8, `lw` at 0x10025038.
  The `lw` at 0x10025014 loads 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x54.
  The `sw` at 0x10025028 stores 4 bytes to [sym(xsetmonApp)] +0x88.
  The `lw` at 0x10025030 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `jalr` at 0x10024f9c calls getTheFileSelectionDialog__Gv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10024fcc calls (unknown callee) with a0=([[ret(getTheFileSelectionDialog__Gv)+8]+264] + ret(getTheFileSelectionDialog__Gv)), a1=0x0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10024ff8 calls free with a0=[[sym(xsetmonApp)]+136], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x10025004 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10025010 calls strdup with a0=[ret(getTheFileSelectionDialog__Gv)+84], a1=?, a2=?, a3=?.
  The `jal` at 0x10025034 calls saveData__21MasterTabbedDeckClassGPCc [0x1002c050] with a0=[a0+68], a1=[[sym(xsetmonApp)]+136], a2=[sym(xsetmonApp)], a3=?.
  The `bne` branch at 0x10024fd8 targets 0x10025040, is taken when v0(=ret(?)) != a1(=0x1), and falls through when v0(=ret(?)) == a1(=0x1).
  The `beq` branch at 0x10024fec targets 0x10025004, is taken when a0(=[[sym(xsetmonApp)]+136]) == 0, and falls through when a0(=[[sym(xsetmonApp)]+136]) != 0.
  The return at 0x10025044 has v0 = one of ret(?), ret(saveData__21MasterTabbedDeckClassGPCc).

- `__dt__16ChannelFormClassGv` in `usr/bin/X11/xsetmon` at 0x10025050 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10025050-0x10025154 (260 bytes).
  It occupies 260 bytes.
  The `sw` at 0x10025088 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x10025090 stores 4 bytes to a0 (arg0 at entry) +0x100.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x104, including `lw` at 0x10025098, `lw` at 0x100250f0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdc, including `lw` at 0x100250a4, `lw` at 0x100250ec.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100250c4, `lw` at 0x100250d0, `lw` at 0x100250d4.
  The `jalr` at 0x100250e0 calls (unknown callee) with a0=?, a1=0x3, a2=?, a3=[a0+220].
  The `jalr` at 0x10025108 calls __dla__GPv with a0=[a0+260], a1=?, a2=?, a3=[a0+220].
  The `jal` at 0x10025120 calls __dt__18ChannelFormClassUIGv [0x10038200] with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?, a4=a0 at entry (arg0).
  The `jalr` at 0x10025134 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10025078 targets 0x1002513c, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1002509c targets 0x10025118, is taken when a0(=[a0+260]) == 0, and falls through when a0(=[a0+260]) != 0.
  The `blez` branch at 0x100250a8 targets 0x10025108, is taken when a3(=[a0+220]) <= 0 (signed), and falls through when a3(=[a0+220]) > 0 (signed).
  The `beq` branch at 0x100250c8 targets 0x100250f4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x100250fc targets 0x100250c0, is taken when s1(?) < a3(=[a0+220]) (signed), and falls through when s1(?) >= a3(=[a0+220]) (signed).
  The `beq` branch at 0x1002512c targets 0x1002513c, is taken when (s0(=a1) & 0x1) == 0, and falls through when (s0(=a1) & 0x1) != 0.
  The return at 0x1002514c has v0 = one of ?, ret(__dt__18ChannelFormClassUIGv), ret(__dl__GPv).

- `__ct__22GammaAssignmentClassUIGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10025160 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10025160-0x100251d4 (116 bytes).
  It occupies 116 bytes.
  The `sw` at 0x10025198 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x100251a4 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `sw` at 0x100251ac stores 4 bytes to a0 (arg0 at entry) +0x3c.
  The `jalr` at 0x10025188 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100251b4 calls create__22GammaAssignmentClassUIGP10_WidgetRec [0x10042580] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a0 at entry (arg0), a3=?.
  The return at 0x100251cc has v0 = a0.

- `doButtonNominalGainCallback__18GainControlClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x100251e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100251e0-0x10025224 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x100251e4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100251f0 loads 4 bytes from [a1+8] +0x9c.
  The `lw` at 0x100251fc loads 4 bytes from [a1+8] +0xa4.
  The `jalr` at 0x1002520c calls (unknown callee) with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x3371c.
  The return at 0x1002521c has v0 = ret(?).

- `__ct__29FormatCombinationListsClassUIGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10025230 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10025230-0x10025294 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0x1002526c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10025258 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10025274 calls create__29FormatCombinationListsClassUIGP10_WidgetRec [0x1002ed10] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The return at 0x1002528c has v0 = a0.

- `hideGamma__21MasterTabbedDeckClassGv` in `usr/bin/X11/xsetmon` at 0x100252a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100252a0-0x100252e8 (72 bytes).
  It occupies 72 bytes.
  The `sb` at 0x100252a8 stores 1 byte to a0 (arg0 at entry) +0x40.
  The `lw` at 0x100252c8 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `jal` at 0x100252d0 calls unregisterChild__12MyTabbedDeckGP11VkComponentPCc [0x10025b40] with a0=a0 at entry (arg0), a1=[a0+56], a2=0x10045e00, a3=0x1, a4=0x3365c.
  The return at 0x100252e0 has v0 = ret(unregisterChild__12MyTabbedDeckGP11VkComponentPCc).

- `doLockStatusChanged__19ServerInfoFormClassGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x100256b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100256b0-0x10025700 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x100256c8 loads 4 bytes from a0 (arg0 at entry) +0x5c.
  The `lw` at 0x100256e8 loads 4 bytes from a2 (arg2 at entry) +0x1c.
  The `jal` at 0x100256d4 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+92], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100256e4 calls __as__9EZWrapperGi [0x1001fb40] with a0=ret(EZ__GP10_WidgetRec), a1=[a2+28], a2=?, a3=?.
  The return at 0x100256f8 has v0 = ret(__as__9EZWrapperGi).

- `populateMapSelectorMenu__12GammaClassUIGv` in `usr/bin/X11/xsetmon` at 0x10025700 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10025700-0x10025884 (388 bytes).
  It occupies 388 bytes.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10025724, `lw` at 0x100257ac.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x13c, including `lw` at 0x10025730, `lw` at 0x100257b8.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x1002573c, `lw` at 0x100257c4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x68, including `lw` at 0x1002575c, `lw` at 0x10025760, `lw` at 0x100257ec.
  The `sw` at 0x10025768 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0x10025798, `lw` at 0x10025834.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100257d8, `sw` at 0x100257e8.
  The `lw` at 0x100257e4 loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `lw` at 0x1002583c loads 4 bytes from [a0+108] +0x10.
  The `jalr` at 0x10025738 calls XSGIvcQueryScreenGammaMaps with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=a0+104, a3=a3 at entry (arg3).
  The `jalr` at 0x10025758 calls __vec_new2 with a0=0x0, a1=[a0+104], a2=0x18, a3=sym(__ct__18GammaMapDescriptorGv).
  The `jalr` at 0x100257a4 calls sprintf with a0=sp-176, a1=0x100516a0, a2=?, a3=?.
  The `jal` at 0x100257c0 calls vInitialize__18GammaMapDescriptorGiP9_XDisplayT1 [0x1003ecd0] with a0=?, a1=?, a2=[[sym(xsetmonApp)]+312], a3=[[sym(xsetmonApp)]+316].
  The `jalr` at 0x100257e0 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+100], a1=sp-176, a2=sym(doOptionMapCallback__12GammaClassUISGP10_WidgetRecPvT2), a3=?, a4=-0x1.
  The `jalr` at 0x10025838 calls baseWidget__10VkMenuItemCGv with a0=[[a0+108]+16], a1=?, a2=?, a3=?.
  The `jalr` at 0x10025848 calls XtSetSensitive with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10025864 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x100455c0, a2=?, a3=?.
  The `jalr` at 0x10025870 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002587c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10025740 targets 0x10025858, is taken when v0(=ret(XSGIvcQueryScreenGammaMaps)) == 0, and falls through when v0(=ret(XSGIvcQueryScreenGammaMaps)) != 0.
  The `blez` branch at 0x10025764 targets 0x1002580c, is taken when a0(=[a0+104]) <= 0 (signed), and falls through when a0(=[a0+104]) > 0 (signed).
  The `bne` branch at 0x100257f8 targets 0x10025790, is taken when s0(?) < a0(=[a0+104]) (signed), and falls through when s0(?) >= a0(=[a0+104]) (signed).
  The `bne` branch at 0x10025810 targets 0x10025834, is taken when a0(=[a0+104]) < 0x2 (signed), and falls through when a0(=[a0+104]) >= 0x2 (signed).
  The `beq` branch at 0x10025850 targets 0x1002581c and is always taken.
  The return at 0x1002582c has v0 = one of ?, ret(XtSetSensitive).

- `doDownloadaccumBufTypeButton__29FormatCombinationListsClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10025890 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10025890-0x10025898 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10025890 has v0 = ?.

- `RegisterGammaAssignmentClassInterface__20GammaAssignmentClassSGv` in `usr/bin/X11/xsetmon` at 0x100258a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100258a0-0x100258b8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x100258ac loads 4 bytes from abs 0x10050950.
  The return at 0x100258b0 has v0 = 0x1004d670.

- `create__30CombinationContentsListClassUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x100258c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100258c0-0x10025b3c (636 bytes).
  It occupies 636 bytes.
  The `lw` at 0x10025908 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0x10025914 loads 4 bytes from sym(xmFormWidgetClass) +0x0.
  The `sw` at 0x10025920 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x1002592c stores 4 bytes to a0 (arg0 at entry) +0x20.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x10025934, `lw` at 0x100259e0.
  The `lw` at 0x10025938 loads 4 bytes from sym(xmLabelWidgetClass) +0x0.
  The `sw` at 0x100259e8 stores 4 bytes to a0 (arg0 at entry) +0x24.
  The `lw` at 0x100259ec loads 4 bytes from sym(xmScrolledWindowWidgetClass) +0x0.
  The `sw` at 0x10025ae4 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `lw` at 0x10025ae8 loads 4 bytes from sym(xmListWidgetClass) +0x0.
  The `sw` at 0x10025b0c stores 4 bytes to a0 (arg0 at entry) +0x28.
  The `lw` at 0x10025b24 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jalr` at 0x100258ec calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultCombinationContentsListClassUIResources__30CombinationContentsListClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x10025910 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=-0xd1, a4=0x1, a5=0x0.
  The `jalr` at 0x10025928 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x100259d8 calls XtVaCreateManagedWidget with a0=0x10051568, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x10025ab8 calls XtVaCreateManagedWidget with a0=0x100448a0, a1=[sym(xmScrolledWindowWidgetClass)], a2=[a0+16], a3=-0x5b, a4=0x0, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x10025aec calls XtVaCreateManagedWidget with a0=0x100448b0, a1=[sym(xmListWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x17, a4=0x164, a5=-0x16, a6=0x241, a7=0x0.
  The `jalr` at 0x10025b08 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x169, a2=sym(nameSelectedCallback__30CombinationContentsListClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10025b20 calls XtAddCallback with a0=[a0+40], a1=-0x176, a2=sym(nameSelectedCallback__30CombinationContentsListClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The return at 0x10025b34 has v0 = ret(XtAddCallback).

- `unregisterChild__12MyTabbedDeckGP11VkComponentPCc` in `usr/bin/X11/xsetmon` at 0x10025b40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10025b40-0x10025bbc (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0x10025ba8 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `jalr` at 0x10025b68 calls baseWidget__11VkComponentCGv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10025b8c calls VkGetResource__GP10_WidgetRecPCcN32 with a0=ret(baseWidget__11VkComponentCGv), a1=0x10049590, a2=0x100495a0, a3=-0x1a, a4=a2 at entry (arg2).
  The `jalr` at 0x10025ba4 calls removeTab__10VkTabPanelGPc with a0=[a0+36], a1=ret(VkGetResource__GP10_WidgetRecPCcN32), a2=?, a3=?.
  The return at 0x10025bb4 has v0 = ret(removeTab__10VkTabPanelGPc).

- `__ls__GR7ostreamRC7MMatrix` in `usr/bin/X11/xsetmon` at 0x10025bc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10025bc0-0x10025cc8 (264 bytes).
  It occupies 264 bytes.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x10025bc0, `lw` at 0x10025c60, `lw` at 0x10025c84.
  2 such `lw` accesses load 4 bytes from [a1] +0x0, including `lw` at 0x10025bc8, `lw` at 0x10025c88.
  3 such `lw` accesses load 4 bytes from [a1] +0x4, including `lw` at 0x10025c1c, `lw` at 0x10025c64, `lw` at 0x10025c98.
  The `lwc1` at 0x10025c4c loads 4 bytes from ret(0x1002d620) +0x0.
  The `jal` at 0x10025c38 calls (unnamed) [0x1002d620] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x10025c48 calls __ls__7ostreamGf with a0=a0 at entry (arg0), a1=?, a2=?, a3=?; fp f13=[ret(0x1002d620)].
  The `jalr` at 0x10025c58 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGf), a1=0x10051994, a2=?, a3=?.
  The `jalr` at 0x10025c7c calls endl__GR7ostream with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `blez` branch at 0x10025be8 targets 0x10025cb0, is taken when v1(=[[a1]]) <= 0 (signed), and falls through when v1(=[[a1]]) > 0 (signed).
  The `blez` branch at 0x10025c20 targets 0x10025c78, is taken when t8(=[[a1]+4]) <= 0 (signed), and falls through when t8(=[[a1]+4]) > 0 (signed).
  The `bne` branch at 0x10025c70 targets 0x10025c30, is taken when s0(?) < t9(=[[a1]+4]) (signed), and falls through when s0(?) >= t9(=[[a1]+4]) (signed).
  The `bnel` branch at 0x10025c94 targets 0x10025c20, is taken when s3(?) < ra(=[[a1]]) (signed), and falls through when s3(?) >= ra(=[[a1]]) (signed); its branch-likely delay slot `lw t8,4(v0)` at 0x10025c98 runs only when taken and is annulled on fall-through.
  The return at 0x10025cc0 has v0 = a0.

- `doArmScalarDrag__19GammaMapEditorClassGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x10025cd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10025cd0-0x10025e68 (408 bytes).
  It occupies 408 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x10025cd0, `lw` at 0x10025e00, `lw` at 0x10025e28.
  The `sw` at 0x10025cf4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0x10025cf8 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `lw` at 0x10025cfc loads 4 bytes from a2 (arg2 at entry) +0x20.
  The `sh` at 0x10025d00 stores 2 bytes to a0 (arg0 at entry) +0x74.
  The `sh` at 0x10025d08 stores 2 bytes to a0 (arg0 at entry) +0x78.
  The `lw` at 0x10025d0c loads 4 bytes from a2 (arg2 at entry) +0x24.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x50, including `lw` at 0x10025d10, `lw` at 0x10025e08.
  The `sh` at 0x10025d14 stores 2 bytes to a0 (arg0 at entry) +0x76.
  The `sh` at 0x10025d1c stores 2 bytes to a0 (arg0 at entry) +0x7a.
  3 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x10025d2c, `lhu` at 0x10025e20, `lhu` at 0x10025e3c.
  The `swc1` at 0x10025db0 stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `swc1` at 0x10025db4 stores 4 bytes to a0 (arg0 at entry) +0x84.
  The `swc1` at 0x10025dd4 stores 4 bytes to a0 (arg0 at entry) +0x8c.
  The `lhu` at 0x10025dd8 loads 2 bytes from a0 (arg0 at entry) +0x96.
  The `lw` at 0x10025dfc loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `swc1` at 0x10025e10 stores 4 bytes to a0 (arg0 at entry) +0x90.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x10025e24, `sh` at 0x10025e40.
  The `jalr` at 0x10025d5c calls log with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=[a2+32], a4=0x1, a5=[a0+84].
  The `jalr` at 0x10025d74 calls log with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10025d88 calls isnan with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10025db8 calls log with a0=?, a1=?, a2=?, a3=?; fp f13=0x46ac1400.
  The `jal` at 0x10025dd0 calls vTellGammaScalarValue__19GammaMapEditorClassCGf [0x1003ee30] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10025d90 targets 0x10025d9c, is taken when v0(=ret(isnan)) == 0, and falls through when v0(=ret(isnan)) != 0.
  The `blez` branch at 0x10025e0c targets 0x10025e5c, is taken when a2(=[a0+84]) <= 0 (signed), and falls through when a2(=[a0+84]) > 0 (signed).
  The `beq` branch at 0x10025e34 targets 0x10025e5c, is taken when a2(?) >= a5(=[a0+84]) (signed), and falls through when a2(?) < a5(=[a0+84]) (signed).
  The `bne` branch at 0x10025e54 targets 0x10025e20, is taken when a2(?) < a7(=[a0+84]) (signed), and falls through when a2(?) >= a7(=[a0+84]) (signed).
  The return at 0x10025e60 has v0 = ret(vTellGammaScalarValue__19GammaMapEditorClassCGf).

- `doSetSCHPhaseCallback__18ChannelFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10025e70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10025e70-0x10025eb4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10025e74 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10025e80 loads 4 bytes from [a1+8] +0xd8.
  The `lw` at 0x10025e8c loads 4 bytes from [a1+8] +0xe0.
  The `jalr` at 0x10025e9c calls (unknown callee) with a0=([[a1+8]+216] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x32a8c.
  The return at 0x10025eac has v0 = ret(?).

- `doToggleExternalLock__19ServerInfoFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10025ec0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10025ec0-0x10025f10 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x10025ee8 loads 4 bytes from a0 (arg0 at entry) +0x5c.
  The `lw` at 0x10025ef8 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `jal` at 0x10025ee4 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+92], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10025ef4 calls __as__9EZWrapperGi [0x1001fb40] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+120], a2=?, a3=?.
  The return at 0x10025f08 has v0 = ret(__as__9EZWrapperGi).

- `vListCombinations__27FormatCombinationListsClassGv` in `usr/bin/X11/xsetmon` at 0x10025f10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10025f10-0x10026448 (1336 bytes).
  It occupies 1336 bytes.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xdc, including `sw` at 0x10025f48, `sw` at 0x10026150, `sw` at 0x10026274.
  4 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10025f4c, `lw` at 0x10025f68, `lw` at 0x10025fa0.
  4 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x10025f54, `lw` at 0x10025f70, `lw` at 0x10026004.
  4 such `lw` accesses load 4 bytes from [[sym(xsetmonApp)]+312] +0x84, including `lw` at 0x10025f64, `lw` at 0x10025f84, `lw` at 0x10026018.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb0, including `lw` at 0x10025f8c, `lw` at 0x10025fe8, `lw` at 0x1002601c.
  The `sw` at 0x10025f90 stores 4 bytes to a0 (arg0 at entry) +0xb4.
  The `sw` at 0x10025f9c stores 4 bytes to a0 (arg0 at entry) +0xd4.
  The `lw` at 0x10025fa8 loads 4 bytes from [sym(xsetmonApp)] +0x8c.
  The `lw` at 0x10025fd4 loads 4 bytes from [sym(xsetmonApp)] +0x90.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xbc, including `sw` at 0x10026028, `sw` at 0x100261c0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb4, including `lw` at 0x10026050, `lw` at 0x100262b0.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1002605c, `lw` at 0x100260c4, `lw` at 0x100261ec.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd4, including `lw` at 0x10026090, `lw` at 0x100260e8.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10026098, `sw` at 0x100260f4.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb8, including `lw` at 0x1002609c, `lw` at 0x100260cc, `lw` at 0x100260fc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xbc, including `lw` at 0x100260b4, `lw` at 0x10026178, `lw` at 0x100261e0.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xf0, including `sw` at 0x10026148, `sw` at 0x10026264, `sw` at 0x10026328.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xa0, including `sw` at 0x1002614c, `sw` at 0x10026268, `sw` at 0x1002632c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdc, including `lw` at 0x1002623c, `lw` at 0x100263c8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x10026378, `lw` at 0x10026384, `lw` at 0x100263b8.
  The `lw` at 0x100263ec loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0x100263fc loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x10026408 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jalr` at 0x10025f38 calls __ct__10VkNameListGv with a0=sp-128, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10025f60 calls XSGIvcQueryChannelInfo with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=sp-112.
  The `jalr` at 0x10025f80 calls XSGIvcListVideoFormatCombinations with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x10051572, a3=0x3e8, a4=a0+176.
  The `jalr` at 0x10025f94 calls __nwa__GUi with a0=([a0+176] << 0x2), a1=?, a2=?, a3=?.
  The `jalr` at 0x10026014 calls XSGIvcNVListVideoFormatCombinations with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x10051572, a3=0x0, a4=0x3e8, a5=a0+184.
  The `jalr` at 0x10026060 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002606c calls __nwa__GUi with a0=ret(strlen)+10, a1=?, a2=?, a3=?.
  The `jalr` at 0x10026088 calls sprintf with a0=ret(__nwa__GUi), a1=0x10044aa0, a2=?, a3=?.
  The `jalr` at 0x100260c0 calls strcmp with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100260e0 calls sprintf with a0=ret(__nwa__GUi), a1=0x10044ab0, a2=?, a3=?.
  The `jalr` at 0x10026118 calls add__10VkNameListGPc with a0=sp-128, a1=ret(__nwa__GUi), a2=?, a3=?.
  The `jalr` at 0x10026124 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x10026138 calls strcmp with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10026190 calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100261b4 calls XSGIvcNVListVideoFormatCombinations with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x10051572, a3=0x1, a4=0x3e8.
  The `jalr` at 0x100261f0 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100261fc calls __nwa__GUi with a0=ret(strlen)+10, a1=?, a2=?, a3=?.
  The `jalr` at 0x10026218 calls sprintf with a0=ret(__nwa__GUi), a1=0x10044ac0, a2=?, a3=?.
  The `jalr` at 0x10026228 calls add__10VkNameListGPc with a0=sp-128, a1=ret(__nwa__GUi), a2=?, a3=?.
  The `jalr` at 0x10026234 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x10026250 calls strcmp with a0=?, a1=?, a2=[a0+220], a3=?.
  The `jalr` at 0x100262c0 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100262cc calls __nwa__GUi with a0=ret(strlen)+10, a1=?, a2=?, a3=?.
  The `jalr` at 0x100262e8 calls sprintf with a0=ret(__nwa__GUi), a1=0x10044aa0, a2=?, a3=?.
  The `jalr` at 0x100262f8 calls add__10VkNameListGPc with a0=sp-128, a1=ret(__nwa__GUi), a2=?, a3=?.
  The `jalr` at 0x10026304 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x10026318 calls strcmp with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002635c calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10026374 calls XtVaGetValues with a0=[a0+32], a1=-0x84, a2=sp-108, a3=0x0.
  The `jalr` at 0x10026380 calls XmListDeleteAllItems with a0=[a0+32], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002638c calls freeXmStringTable__10VkNameListSGPPUc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10026398 calls getXmStringTable__10VkNameListCGv with a0=sp-128, a1=?, a2=?, a3=?.
  The `jalr` at 0x100263b4 calls XmListAddItems with a0=[a0+32], a1=ret(getXmStringTable__10VkNameListCGv), a2=?, a3=0x1.
  The `jalr` at 0x100263c0 calls freeXmStringTable__10VkNameListSGPPUc with a0=ret(getXmStringTable__10VkNameListCGv), a1=?, a2=?, a3=?.
  The `jalr` at 0x100263d8 calls XmListSelectPos with a0=[a0+32], a1=[a0+220], a2=0x0, a3=?.
  The `jalr` at 0x100263e8 calls XtSetSensitive with a0=[a0+116], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x100263f8 calls XtSetSensitive with a0=[a0+120], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10026404 calls XmListDeselectAllItems with a0=[a0+64], a1=?, a2=?, a3=?.
  The `jalr` at 0x10026430 calls __dt__10VkNameListGv with a0=sp-128, a1=0x2, a2=?, a3=?.
  The `beq` branch at 0x10025fc0 targets 0x10025fe0, is taken when a0(=[[sym(xsetmonApp)]+140]) >= 0x2 (signed), and falls through when a0(=[[sym(xsetmonApp)]+140]) < 0x2 (signed).
  The `bne` branch at 0x10025fcc targets 0x10025fe8, is taken when a0(=[[sym(xsetmonApp)]+140]) != a2(=0x1), and falls through when a0(=[[sym(xsetmonApp)]+140]) == a2(=0x1).
  The `blez` branch at 0x10025fd8 targets 0x10025fe8, is taken when a3(=[[sym(xsetmonApp)]+144]) <= 0 (signed), and falls through when a3(=[[sym(xsetmonApp)]+144]) > 0 (signed).
  The `beq` branch at 0x10025fe0 targets 0x10025ffc and is always taken.
  The `bgtz` branch at 0x10025fec targets 0x1002629c, is taken when a4(=[a0+176]) > 0 (signed), and falls through when a4(=[a0+176]) <= 0 (signed).
  The `beq` branch at 0x10025ff4 targets 0x1002635c and is always taken.
  The `blez` branch at 0x10026024 targets 0x1002618c, is taken when a5(=[a0+176]) <= 0 (signed), and falls through when a5(=[a0+176]) > 0 (signed).
  The `blez` branch at 0x100260a4 targets 0x10026110, is taken when a2(=[a0+184]) <= 0 (signed), and falls through when a2(=[a0+184]) > 0 (signed).
  The `bnel` branch at 0x100260c8 targets 0x10026100, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0; its branch-likely delay slot `lw a4,184(s0)` at 0x100260cc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x10026108 targets 0x100260b0, is taken when s2(?) < a4(=[a0+184]) (signed), and falls through when s2(?) >= a4(=[a0+184]) (signed).
  The `bne` branch at 0x10026140 targets 0x10026160, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `bne` branch at 0x10026170 targets 0x10026050, is taken when s7(?) < a2(=[a0+176]) (signed), and falls through when s7(?) >= a2(=[a0+176]) (signed).
  The `beq` branch at 0x100261bc targets 0x10026358, is taken when v0(=ret(XSGIvcNVListVideoFormatCombinations)) == 0, and falls through when v0(=ret(XSGIvcNVListVideoFormatCombinations)) != 0.
  The `blez` branch at 0x100261c8 targets 0x1002635c, is taken when a1(=[a0+184]) <= 0 (signed), and falls through when a1(=[a0+184]) > 0 (signed).
  The `bne` branch at 0x10026240 targets 0x10026280, is taken when a2(=[a0+220]) != s5(=-0x1), and falls through when a2(=[a0+220]) == s5(=-0x1).
  The `bne` branch at 0x10026258 targets 0x10026280, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `bne` branch at 0x1002628c targets 0x100261e0, is taken when s2(?) < a3(=[a0+184]) (signed), and falls through when s2(?) >= a3(=[a0+184]) (signed).
  The `beq` branch at 0x10026294 targets 0x1002635c and is always taken.
  The `bne` branch at 0x10026320 targets 0x10026340, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `bne` branch at 0x10026350 targets 0x100262b0, is taken when s5(?) < a2(=[a0+176]) (signed), and falls through when s5(?) >= a2(=[a0+176]) (signed).
  The `blez` branch at 0x100263cc targets 0x1002640c, is taken when a1(=[a0+220]) <= 0 (signed), and falls through when a1(=[a0+220]) > 0 (signed).
  The return at 0x10026440 has v0 = ret(__dt__10VkNameListGv).

- `resize__21GammaMapEditorClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10026450 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10026450-0x10026458 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10026450 has v0 = ?.

- `__dt__17SyncSelectorFrameGv` in `usr/bin/X11/xsetmon` at 0x10026460 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10026460-0x100264c8 (104 bytes).
  It occupies 104 bytes.
  The `sw` at 0x10026490 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10026498 calls __dt__19SyncSelectorFrameUIGv [0x10039ed0] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x100264b0 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10026480 targets 0x100264b8, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x100264a8 targets 0x100264b8, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x100264c0 has v0 = one of ?, ret(__dt__19SyncSelectorFrameUIGv), ret(__dl__GPv).

- `__ct__12GammaClassUIGPCc` in `usr/bin/X11/xsetmon` at 0x100264d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100264d0-0x10026528 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0x10026500 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x1002650c stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0x10026518 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `jalr` at 0x100264f0 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10026520 has v0 = a0.

- `className__19StatisticsFormClassGv` in `usr/bin/X11/xsetmon` at 0x10026530 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10026530-0x10026548 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1002653c loads 4 bytes from abs 0x1005091c.
  The return at 0x10026540 has v0 = 0x100468f0.

- `doDownloadfbDepthButtonCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10026550 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10026550-0x10026594 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10026554 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10026560 loads 4 bytes from [a1+8] +0xc0.
  The `lw` at 0x1002656c loads 4 bytes from [a1+8] +0xc8.
  The `jalr` at 0x1002657c calls (unknown callee) with a0=([[a1+8]+192] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x323ac.
  The return at 0x1002658c has v0 = ret(?).

- `__ct__21GammaMapEditorClassUIGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x100265a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100265a0-0x1002660c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x100265e4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x100265cc calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100265ec calls create__21GammaMapEditorClassUIGP10_WidgetRecPCc [0x1003bb20] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a1 at entry (arg1), a3=?.
  The return at 0x10026604 has v0 = a0.

- `vGammaScalarChanged__19GammaMapEditorClassGf` in `usr/bin/X11/xsetmon` at 0x10026610 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10026610-0x100266b8 (168 bytes).
  It occupies 168 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x50, including `lw` at 0x10026614, `lw` at 0x10026644.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x1002662c, `lw` at 0x1002664c.
  The `lw` at 0x10026648 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0x10026650 loads 4 bytes from a0 (arg0 at entry) +0x58.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1002665c, `lw` at 0x10026678.
  The `lw` at 0x10026660 loads 4 bytes from [a0+88] +0x0.
  The `lw` at 0x10026664 loads 4 bytes from [sym(xsetmonApp)] +0x13c.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x1002666c, `lw` at 0x10026684.
  The `jal` at 0x1002663c calls vCalculateGammaCurve__GfiPUs [0x100235e0] with a0=a0 at entry (arg0), a1=[a0+84], a2=[a0+80], a3=a3 at entry (arg3); fp f12=f13.
  The `jalr` at 0x10026668 calls XSGIvcStoreGammaColors16 with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=[[a0+88]], a3=[a0+84], a4=[a0+96], a5=[a0+80].
  The `jalr` at 0x10026680 calls XSync with a0=[[sym(xsetmonApp)]+312], a1=0x0, a2=?, a3=?.
  The `jal` at 0x1002668c calls calculateDrawing__19GammaMapEditorClassGv [0x10026710] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1002669c calls redraw__19GammaMapEditorClassCGi [0x1002ad90] with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?.
  The return at 0x100266b0 has v0 = ret(redraw__19GammaMapEditorClassCGi).

- `doOptionTTLVoltageCallback__21ServerInfoFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x100266c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100266c0-0x10026704 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x100266c4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100266d0 loads 4 bytes from [a1+8] +0xb4.
  The `lw` at 0x100266dc loads 4 bytes from [a1+8] +0xbc.
  The `jalr` at 0x100266ec calls (unknown callee) with a0=([[a1+8]+180] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x3223c.
  The return at 0x100266fc has v0 = ret(?).

- `calculateDrawing__19GammaMapEditorClassGv` in `usr/bin/X11/xsetmon` at 0x10026710 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10026710-0x10026aec (988 bytes).
  It occupies 988 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x58, including `lw` at 0x10026720, `lw` at 0x1002680c, `lw` at 0x10026840.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x10026744, `lw` at 0x100269b0, `lw` at 0x10026a00.
  3 such `lw` accesses load 4 bytes from [a0+88] +0x8, including `lw` at 0x10026750, `lw` at 0x1002684c, `lw` at 0x1002686c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x50, including `lw` at 0x10026764, `lw` at 0x100268fc, `lw` at 0x10026a34.
  The `lhu` at 0x10026798 loads 2 bytes from [a0+80] +0x0.
  5 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x100267c0, `lhu` at 0x10026910, `lhu` at 0x10026a4c.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x100267c8, `lw` at 0x1002695c.
  The `lbu` at 0x100267cc loads 1 byte from [sym(xsetmonApp)] +0x94.
  The `lw` at 0x10026818 loads 4 bytes from [a0+88] +0x0.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x134, including `lw` at 0x10026960, `lw` at 0x10026984.
  The `lw` at 0x10026988 loads 4 bytes from [[sym(xsetmonApp)]+308] +0x4.
  The `lw` at 0x1002698c loads 4 bytes from [[[sym(xsetmonApp)]+308]+4] +0x20.
  The `lw` at 0x10026990 loads 4 bytes from [[[sym(xsetmonApp)]+308]+4] +0x18.
  The `lhu` at 0x100269b4 loads 2 bytes from a0 (arg0 at entry) +0x96.
  The `lhu` at 0x100269cc loads 2 bytes from a0 (arg0 at entry) +0x94.
  The `lw` at 0x100269e4 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `sw` at 0x100269ec stores 4 bytes to a0 (arg0 at entry) +0x98.
  The `swc1` at 0x100269f0 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `swc1` at 0x100269f8 stores 4 bytes to a0 (arg0 at entry) +0xa0.
  The `sw` at 0x10026a18 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The `jalr` at 0x100267e8 calls __ct__9strstreamGv with a0=sp-208, a1=0x0, a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x10026800 calls __ls__7ostreamGPCc with a0=sp-128, a1=0x100459c0, a2=?, a3=?.
  The `jalr` at 0x10026814 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=[[a0+88]], a2=?, a3=?.
  The `jalr` at 0x10026820 calls endl__GR7ostream with a0=ret(__ls__7ostreamGi), a1=?, a2=?, a3=?.
  The `jalr` at 0x10026834 calls __ls__7ostreamGPCc with a0=sp-128, a1=0x100459d8, a2=?, a3=?.
  The `jalr` at 0x10026848 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=[[a0+88]+8], a2=?, a3=?.
  The `jalr` at 0x1002685c calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x100459f0, a2=?, a3=?.
  The `jalr` at 0x1002687c calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=[[a0+88]+8], a3=?.
  The `jalr` at 0x10026888 calls endl__GR7ostream with a0=ret(__ls__7ostreamGi), a1=?, a2=?, a3=?.
  The `jalr` at 0x10026898 calls __ls__7ostreamGPCc with a0=sp-128, a1=0x100516b8, a2=?, a3=?.
  The `jalr` at 0x100268a8 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100268bc calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x10045a18, a2=?, a3=?.
  The `jalr` at 0x100268cc calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100268dc calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x100516c0, a2=?, a3=?.
  The `jalr` at 0x100268f0 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGPCc), a1=0x10045a50, a2=?, a3=?.
  The `jalr` at 0x1002690c calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002691c calls endl__GR7ostream with a0=ret(__ls__7ostreamGi), a1=?, a2=?, a3=?.
  The `jalr` at 0x10026930 calls __ls__7ostreamGPCc with a0=sp-128, a1=0x10045a60, a2=?, a3=?.
  The `jalr` at 0x10026944 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10026950 calls endl__GR7ostream with a0=ret(__ls__7ostreamGi), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002697c calls __assert with a0=0x10045a78, a1=0x10045a98, a2=0x90, a3=?.
  The `jalr` at 0x10026998 calls (unknown callee) with a0=([[[[sym(xsetmonApp)]+308]+4]+24] + [[sym(xsetmonApp)]+308]), a1=sp-208, a2=[[sym(xsetmonApp)]+308], a3=?.
  The `jalr` at 0x100269a8 calls __dt__9strstreamGv with a0=sp-208, a1=0x2, a2=?, a3=?.
  The `jalr` at 0x100269f4 calls __dla__GPv with a0=[a0+156], a1=[a0+84], a2=[a0+148]:2, a3=[a0+150]:2.
  The `jalr` at 0x10026a04 calls __nwa__GUi with a0=([a0+84] << 0x2), a1=?, a2=?, a3=?.
  The `jal` at 0x10026a48 calls vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint [0x1003a020] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002673c targets 0x10026a68, is taken when a3(=[a0+88]) == 0, and falls through when a3(=[a0+88]) != 0.
  The `beq` branch at 0x10026748 targets 0x10026a6c, is taken when a1(=[a0+84]) == 0, and falls through when a1(=[a0+84]) != 0.
  The `blez` branch at 0x10026768 targets 0x100267c4, is taken when a1(=[a0+84]) <= 0 (signed), and falls through when a1(=[a0+84]) > 0 (signed).
  The `bne` branch at 0x10026778 targets 0x10026784, is taken when a1(=[a0+84]) < a0(=0x1) (signed), and falls through when a1(=[a0+84]) >= a0(=0x1) (signed).
  The `beq` branch at 0x10026790 targets 0x100267b8, is taken when (a0(?) & 0x1) == 0, and falls through when (a0(?) & 0x1) != 0.
  The `beq` branch at 0x100267a4 targets 0x100267b8, is taken when s0(?) >= a5(=[[a0+80]]:2) (signed), and falls through when s0(?) < a5(=[[a0+80]]:2) (signed).
  The `bnel` branch at 0x100267bc targets 0x10026ac4, is taken when at(?) != 0, and falls through when at(?) == 0; its branch-likely delay slot `lhu a5,0(a4)` at 0x100267c0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x100267d8 targets 0x100269b4, is taken when (v0(?) & v1(=[[sym(xsetmonApp)]+148]:1)) == 0, and falls through when (v0(?) & v1(=[[sym(xsetmonApp)]+148]:1)) != 0.
  The `bne` branch at 0x10026964 targets 0x10026984, is taken when a2(=[[sym(xsetmonApp)]+308]) != 0, and falls through when a2(=[[sym(xsetmonApp)]+308]) == 0.
  The `blez` branch at 0x10026a14 targets 0x10026a68, is taken when a1(=[a0+84]) <= 0 (signed), and falls through when a1(=[a0+84]) > 0 (signed).
  The `bne` branch at 0x10026a60 targets 0x10026a30, is taken when s2(?) < a3(=[a0+84]) (signed), and falls through when s2(?) >= a3(=[a0+84]) (signed).
  The `beq` branch at 0x10026a98 targets 0x10026aac, is taken when s0(?) >= a5(?) (signed), and falls through when s0(?) < a5(?) (signed).
  The `bltz` branch at 0x10026aa4 targets 0x10026ae4, is taken when s2(?) < 0 (signed), and falls through when s2(?) >= 0 (signed).
  The `beq` branch at 0x10026ab8 targets 0x100267c4, is taken when a3(?) >= a1(=[a0+84]) (signed), and falls through when a3(?) < a1(=[a0+84]) (signed).
  The `beq` branch at 0x10026ac8 targets 0x10026a90, is taken when s0(?) >= a5(?) (signed), and falls through when s0(?) < a5(?) (signed).
  The `bgez` branch at 0x10026ad4 targets 0x10026a90, is taken when s2(?) >= 0 (signed), and falls through when s2(?) < 0 (signed).
  The `beq` branch at 0x10026adc targets 0x10026a90 and is always taken.
  The `beq` branch at 0x10026ae4 targets 0x10026aac and is always taken.
  The return at 0x10026a80 has v0 = ?.
  The instructions from 0x10026a88 to 0x10026a8c are not reached by any path from the entry, and their branches are not listed.

- `ok__21AboutXsetmonFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10026af0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10026af0-0x10026af8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10026af0 has v0 = ?.

- `RegisterGammaMapEditorClassInterface__19GammaMapEditorClassSGv` in `usr/bin/X11/xsetmon` at 0x10026b00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10026b00-0x10026b18 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10026b0c loads 4 bytes from abs 0x10050950.
  The return at 0x10026b10 has v0 = 0x1004dcd8.

- `updateMemoUsageO2__19StatisticsFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10026b20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10026b20-0x10026cac (396 bytes).
  It occupies 396 bytes.
  The `lw` at 0x10026b3c loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x10026b50 loads 4 bytes from [sym(xsetmonApp)] +0x138.
  The `lw` at 0x10026b60 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `lw` at 0x10026b94 loads 4 bytes from a0 (arg0 at entry) +0xc4.
  The `lw` at 0x10026bd0 loads 4 bytes from a0 (arg0 at entry) +0xcc.
  The `lw` at 0x10026c0c loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `lw` at 0x10026c48 loads 4 bytes from a0 (arg0 at entry) +0xdc.
  The `lw` at 0x10026c84 loads 4 bytes from a0 (arg0 at entry) +0xe4.
  The `jalr` at 0x10026b64 calls XSGIvcQueryPlatformParameter with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=0x0, a4=sp-176, a5=0x24.
  The `jalr` at 0x10026b84 calls sprintf with a0=sp-136, a1=0x10046918, a2=?, a3=?.
  The `jal` at 0x10026b90 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+196], a1=?, a2=?, a3=?.
  The `jal` at 0x10026ba0 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=sp-136, a2=?, a3=?.
  The `jalr` at 0x10026bc0 calls sprintf with a0=sp-136, a1=0x10046918, a2=?, a3=?.
  The `jal` at 0x10026bcc calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+204], a1=?, a2=?, a3=?.
  The `jal` at 0x10026bdc calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=sp-136, a2=?, a3=?.
  The `jalr` at 0x10026bfc calls sprintf with a0=sp-136, a1=0x10046918, a2=?, a3=?.
  The `jal` at 0x10026c08 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+212], a1=?, a2=?, a3=?.
  The `jal` at 0x10026c18 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=sp-136, a2=?, a3=?.
  The `jalr` at 0x10026c38 calls sprintf with a0=sp-136, a1=0x10046918, a2=?, a3=?.
  The `jal` at 0x10026c44 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+220], a1=?, a2=?, a3=?.
  The `jal` at 0x10026c54 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=sp-136, a2=?, a3=?.
  The `jalr` at 0x10026c74 calls sprintf with a0=sp-136, a1=0x10046918, a2=?, a3=?.
  The `jal` at 0x10026c80 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+228], a1=?, a2=?, a3=?.
  The `jal` at 0x10026c94 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=sp-136, a2=?, a3=?.
  The return at 0x10026ca4 has v0 = ret(__as__9EZWrapperGPCc).

- `__ct__21StatisticsFormClassUIGPCc` in `usr/bin/X11/xsetmon` at 0x10026cb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10026cb0-0x10026cf8 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x10026ce8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10026cd0 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10026cf0 has v0 = a0.

- `__ct__27FormatCombinationListsClassGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10026d00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10026d00-0x10026e08 (264 bytes).
  It occupies 264 bytes.
  The `sw` at 0x10026d30 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x10026d38 stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x10026d40 stores 4 bytes to a0 (arg0 at entry) +0xc4.
  The `sw` at 0x10026d48 stores 4 bytes to a0 (arg0 at entry) +0xc0.
  The `sw` at 0x10026d50 stores 4 bytes to a0 (arg0 at entry) +0xc8.
  The `sw` at 0x10026d58 stores 4 bytes to a0 (arg0 at entry) +0xb4.
  The `sw` at 0x10026d60 stores 4 bytes to a0 (arg0 at entry) +0xbc.
  The `sw` at 0x10026d68 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The `sw` at 0x10026d70 stores 4 bytes to a0 (arg0 at entry) +0xd0.
  The `sw` at 0x10026d78 stores 4 bytes to a0 (arg0 at entry) +0xd4.
  The `sw` at 0x10026d80 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `sw` at 0x10026d88 stores 4 bytes to a0 (arg0 at entry) +0xa0.
  The `sw` at 0x10026d90 stores 4 bytes to a0 (arg0 at entry) +0xac.
  The `sw` at 0x10026d98 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  The `sw` at 0x10026da4 stores 4 bytes to a0 (arg0 at entry) +0xe0.
  The `sw` at 0x10026dac stores 4 bytes to a0 (arg0 at entry) +0xdc.
  The `sw` at 0x10026db4 stores 4 bytes to a0 (arg0 at entry) +0xd8.
  The `sw` at 0x10026dbc stores 4 bytes to a0 (arg0 at entry) +0xe8.
  The `sw` at 0x10026dc8 stores 4 bytes to a0 (arg0 at entry) +0xe4.
  The `sw` at 0x10026dd0 stores 4 bytes to sym(requestErrCatched) +0x0.
  The `sw` at 0x10026dd4 stores 4 bytes to a0 (arg0 at entry) +0xf4.
  The `sw` at 0x10026de0 stores 4 bytes to a0 (arg0 at entry) +0xf0.
  The `sw` at 0x10026de8 stores 4 bytes to a0 (arg0 at entry) +0xec.
  The `jal` at 0x10026d20 calls __ct__29FormatCombinationListsClassUIGPCcP10_WidgetRec [0x10025230] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10026dec calls vPopulateList__27FormatCombinationListsClassGv [0x100236b0] with a0=a0 at entry (arg0), a1=a0 at entry (arg0), a2=sym(requestErrCatched), a3=-0x1, a4=a0 at entry (arg0), a5=a0 at entry (arg0), a6=a0 at entry (arg0), a7=a0 at entry (arg0).
  The return at 0x10026e00 has v0 = a0.

- `__dt__30CombinationContentsListClassUIGv` in `usr/bin/X11/xsetmon` at 0x10026e10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10026e10-0x10026e7c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x10026e40 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10026e48 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10026e64 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10026e30 targets 0x10026e6c, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10026e58 targets 0x10026e70, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10026e74 has v0 = one of ret(__dt__11VkComponentGv), ?.

- `doResetEditing__18XSetmonWindowClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10026e80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10026e80-0x10026eb4 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x10026ea0 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `jal` at 0x10026e9c calls resetEditing__21MasterTabbedDeckClassGv [0x100394b0] with a0=[a0+68], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10026eac has v0 = ret(resetEditing__21MasterTabbedDeckClassGv).

- `doOptionTTLVoltage__21ServerInfoFormClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10026ec0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10026ec0-0x10026ec8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10026ec0 has v0 = ?.

- `setToggleGammaScalar__21GammaMapEditorClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10026ed0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10026ed0-0x10026ed8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10026ed0 has v0 = ?.

- `ok__16AboutDialogClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10026ee0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10026ee0-0x10026f48 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x10026ee8 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lw` at 0x10026ef4 loads 4 bytes from [a0+84] +0x8.
  The `lw` at 0x10026f04 loads 4 bytes from [[a0+84]+8] +0xbc.
  The `lw` at 0x10026f08 loads 4 bytes from [[a0+84]+8] +0xb4.
  The `jalr` at 0x10026f18 calls (unknown callee) with a0=([[[a0+84]+8]+180] + [a0+84]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10026f2c calls ok__15VkDialogManagerGP10_WidgetRecPv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The return at 0x10026f40 has v0 = ret(ok__15VkDialogManagerGP10_WidgetRecPv).

- `__ct__7MMatrixGRC7MMatrix` in `usr/bin/X11/xsetmon` at 0x10026f50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10026f50-0x10027000 (176 bytes).
  It occupies 176 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x10026f98, `lw` at 0x10026fd0.
  The `lw` at 0x10026fa0 loads 4 bytes from [a1] +0x4.
  The `lw` at 0x10026fac loads 4 bytes from [a1] +0x0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `sw` at 0x10026fbc, `sw` at 0x10026fc4.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10026fc8, `lw` at 0x10026fd4.
  The `lw` at 0x10026fe0 loads 4 bytes from [a1] +0xc.
  The `jalr` at 0x10026f80 calls __nw__GUi with a0=0x10, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10026fa8 calls __ct__9MMdtArrayGiT1 [0x1002d5c0] with a0=ret(__nw__GUi), a1=[[a1]], a2=[[a1]+4], a3=?.
  The `jalr` at 0x10026fdc calls memcpy with a0=?, a1=[[a1]+12], a2=?, a3=?.
  The `beq` branch at 0x10026f8c targets 0x10026fc0, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10026fb8 targets 0x10026fc8 and is always taken.
  The return at 0x10026ff8 has v0 = a0.

- `vWindowToGamma__19GammaMapEditorClassCGPC6XPointRiT2` in `usr/bin/X11/xsetmon` at 0x10027000 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027000-0x1002704c (76 bytes).
  It occupies 76 bytes.
  The `lh` at 0x10027000 loads 2 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0x10027010 loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The `swc1` at 0x1002701c stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `lh` at 0x10027020 loads 2 bytes from a1 (arg1 at entry) +0x2.
  The `lhu` at 0x10027024 loads 2 bytes from a0 (arg0 at entry) +0x96.
  The `lwc1` at 0x10027038 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `swc1` at 0x10027048 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The return at 0x10027044 has v0 = [a1+2]:2.

- `__dt__21AboutXsetmonFormClassGv` in `usr/bin/X11/xsetmon` at 0x10027090 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027090-0x100270f8 (104 bytes).
  It occupies 104 bytes.
  The `sw` at 0x100270c0 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x100270c8 calls __dt__23AboutXsetmonFormClassUIGv [0x100320e0] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x100270e0 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100270b0 targets 0x100270e8, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x100270d8 targets 0x100270e8, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x100270f0 has v0 = one of ?, ret(__dt__23AboutXsetmonFormClassUIGv), ret(__dl__GPv).

- `cancel__16AboutDialogClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10027100 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027100-0x10027168 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x10027108 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lw` at 0x10027114 loads 4 bytes from [a0+84] +0x8.
  The `lw` at 0x10027124 loads 4 bytes from [[a0+84]+8] +0xb0.
  The `lw` at 0x10027128 loads 4 bytes from [[a0+84]+8] +0xa8.
  The `jalr` at 0x10027138 calls (unknown callee) with a0=([[[a0+84]+8]+168] + [a0+84]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002714c calls cancel__15VkDialogManagerGP10_WidgetRecPv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The return at 0x10027160 has v0 = ret(cancel__15VkDialogManagerGP10_WidgetRecPv).

- `__ct__18XSetmonWindowClassGPCcP3ArgUi` in `usr/bin/X11/xsetmon` at 0x10027170 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027170-0x10027490 (800 bytes).
  It occupies 800 bytes.
  The `sw` at 0x100271a4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x100271ec loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x100271f0 loads 4 bytes from [a0+8] +0xec.
  The `lw` at 0x100271f4 loads 4 bytes from [a0+8] +0xe4.
  The `sw` at 0x10027230 stores 4 bytes to a0 (arg0 at entry) +0x44.
  The `lw` at 0x10027234 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x10027238 loads 4 bytes from [sym(xsetmonApp)] +0x9c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x10027274, `lw` at 0x100272a8.
  The `sw` at 0x100272c8 stores 4 bytes to a0 (arg0 at entry) +0x48.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x100272d8, `lw` at 0x10027304, `lw` at 0x10027330.
  The `sw` at 0x100272e8 stores 4 bytes to a0 (arg0 at entry) +0x4c.
  The `sw` at 0x10027314 stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `sw` at 0x10027340 stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `sw` at 0x10027368 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `sw` at 0x10027388 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x100273b4 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0x100273d0 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x64, including `lw` at 0x100273e8, `lw` at 0x1002740c.
  The `sw` at 0x10027418 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  2 such `lw` accesses load 4 bytes from sym(theApplication) +0x0, including `lw` at 0x10027458, `lw` at 0x10027478.
  2 such `sw` accesses store 4 bytes to [sym(theApplication)] +0x50, including `sw` at 0x10027460, `sw` at 0x10027480.
  The `jalr` at 0x10027190 calls __ct__8VkWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100271a8 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x100271bc calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultXSetmonWindowClassResources__18XSetmonWindowClass), a3=?.
  The `jalr` at 0x100271cc calls __nw__GUi with a0=0x44, a1=?, a2=?, a3=?.
  The `jalr` at 0x100271f8 calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x10027210 calls __ct__21MasterTabbedDeckClassGPCcP10_WidgetRec [0x1002e390] with a0=ret(__nw__GUi), a1=0x10048818, a2=ret(?), a3=?.
  The `jalr` at 0x10027254 calls strncmp with a0=[sym(xsetmonApp)]+164, a1=0x100518f0, a2=0x4, a3=?.
  The `jalr` at 0x10027270 calls baseWidget__11VkComponentCGv with a0=[a0+68], a1=?, a2=?, a3=?.
  The `jalr` at 0x10027290 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x17, a2=one of 0x2f8, 0x474, a3=-0x16, a4=0x2bc, a5=0x0.
  The `jalr` at 0x100272a4 calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+68], a2=?, a3=?.
  The `jalr` at 0x100272b8 calls addMenuPane__8VkWindowGPCc with a0=a0 at entry (arg0), a1=0x10048830, a2=?, a3=?.
  The `jalr` at 0x100272d4 calls addSeparator__6VkMenuGi with a0=[a0+72], a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x10027300 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10048840, a2=sym(loadSettingsFileCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002732c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10048858, a2=sym(saveSettingsFileCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10027358 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10048870, a2=sym(closeCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10027374 calls addSeparator__6VkMenuGi with a0=[a0+72], a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x100273a0 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10048880, a2=sym(quitCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100273bc calls addMenuPane__8VkWindowGPCc with a0=a0 at entry (arg0), a1=0x10048890, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x100273cc calls getTheUndoManager__Gv with a0=?, a1=?, a2=?, a3=a0 at entry (arg0).
  The `jalr` at 0x100273e4 calls add__6VkMenuGP10VkMenuItemi with a0=[a0+100], a1=ret(getTheUndoManager__Gv), a2=-0x1, a3=?.
  The `jalr` at 0x10027408 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+100], a1=0x100488a0, a2=sym(doResetEditingCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10027420 calls __nw__GUi with a0=0x58, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jal` at 0x10027444 calls __ct__16AboutDialogClassGPCc [0x1002e170] with a0=ret(__nw__GUi), a1=0x100488b0, a2=?, a3=0x1.
  The `beq` branch at 0x100271d8 targets 0x10027228, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10027220 targets 0x1002722c and is always taken.
  The `bne` branch at 0x10027240 targets 0x10027264, is taken when (a2(=[[sym(xsetmonApp)]+156]) & 0x2) != 0, and falls through when (a2(=[[sym(xsetmonApp)]+156]) & 0x2) == 0.
  The `bne` branch at 0x1002725c targets 0x10027268, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0x10027428 targets 0x10027470, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x10027468 has v0 = a0.
  The return at 0x10027488 has v0 = a0.

- `className__28CombinationContentsListClassGv` in `usr/bin/X11/xsetmon` at 0x10027490 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027490-0x100274a8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1002749c loads 4 bytes from abs 0x1005091c.
  The return at 0x100274a0 has v0 = 0x10044850.

- `__ct__12GammaClassUIGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x100274b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100274b0-0x10027524 (116 bytes).
  It occupies 116 bytes.
  The `sw` at 0x100274e8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x100274f4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0x100274fc stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `jalr` at 0x100274d8 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10027504 calls create__12GammaClassUIGP10_WidgetRec [0x1003b110] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a0 at entry (arg0), a3=?.
  The return at 0x1002751c has v0 = a0.

- `WaitForVerifyDisplayMode__27FormatCombinationListsClassGPc` in `usr/bin/X11/xsetmon` at 0x10027530 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027530-0x10027630 (256 bytes).
  It occupies 256 bytes.
  The `lw` at 0x100275e8 loads 4 bytes from ret(getTheQuestionDialog__Gv) +0x8.
  The `lw` at 0x100275f4 loads 4 bytes from [ret(getTheQuestionDialog__Gv)+8] +0x110.
  The `lw` at 0x10027600 loads 4 bytes from [ret(getTheQuestionDialog__Gv)+8] +0x108.
  The `jalr` at 0x10027558 calls signal with a0=0xe, a1=sym(alarmFunc__Gi), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10027568 calls alarm with a0=0xf, a1=?, a2=?, a3=?.
  The `jalr` at 0x10027578 calls setjmp with a0=0x10051e48, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002758c calls getTheQuestionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10027598 calls unpost__15VkDialogManagerGv with a0=ret(getTheQuestionDialog__Gv), a1=?, a2=?, a3=?.
  The `jalr` at 0x100275b0 calls signal with a0=0xe, a1=ret(signal), a2=?, a3=?.
  The `jalr` at 0x100275c0 calls alarm with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x100275e0 calls getTheQuestionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10027610 calls (unknown callee) with a0=([[ret(getTheQuestionDialog__Gv)+8]+264] + ret(getTheQuestionDialog__Gv)), a1=a1 at entry (arg1), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `beq` branch at 0x10027580 targets 0x100275e0, is taken when v0(=ret(setjmp)) == 0, and falls through when v0(=ret(setjmp)) != 0.
  The `beq` branch at 0x10027618 targets 0x10027628, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x10027620 targets 0x100275a4 and is always taken.
  The `beq` branch at 0x10027628 targets 0x100275a4 and is always taken.
  The return at 0x100275d8 has v0 = one of 0x0, 0x1, 0x2.

- `postErrorMessage__17TextErrorMessagerGP9strstream` in `usr/bin/X11/xsetmon` at 0x10027630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027630-0x10027690 (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0x10027654 calls str__9strstreamGv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10027668 calls appendText__17TextErrorMessagerGPc [0x1002cbb0] with a0=a0 at entry (arg0), a1=ret(str__9strstreamGv), a2=?, a3=?.
  The `jalr` at 0x10027678 calls __dl__GPv with a0=ret(str__9strstreamGv), a1=?, a2=?, a3=?.
  The return at 0x10027688 has v0 = ret(__dl__GPv).

- `okToQuit__18XSetmonWindowClassGv` in `usr/bin/X11/xsetmon` at 0x10027690 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027690-0x100276d0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10027690 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x1002769c loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x100276ac loads 4 bytes from [[a0+68]+8] +0x50.
  The `lw` at 0x100276b0 loads 4 bytes from [[a0+68]+8] +0x48.
  The `jalr` at 0x100276b8 calls (unknown callee) with a0=([[[a0+68]+8]+72] + [a0+68]), a1=[a0+68], a2=0x3126c, a3=a3 at entry (arg3).
  The return at 0x100276c8 has v0 = ret(?).

- `doToggleExternalLock__21ServerInfoFormClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x100276d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100276d0-0x100276d8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x100276d0 has v0 = ?.

- `__ct__28CombinationContentsListClassGPCc` in `usr/bin/X11/xsetmon` at 0x100276e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100276e0-0x10027740 (96 bytes).
  It occupies 96 bytes.
  The `sw` at 0x10027710 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x10027718 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `sw` at 0x10027724 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `sw` at 0x10027730 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `jal` at 0x10027700 calls __ct__30CombinationContentsListClassUIGPCc [0x10031a90] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10027738 has v0 = a0.

- `assignChannelMap__20GammaAssignmentClassGP10_WidgetRecPviT3` in `usr/bin/X11/xsetmon` at 0x10027740 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027740-0x100277fc (188 bytes).
  It occupies 188 bytes.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1002776c, `lw` at 0x100277e0.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x13c, including `lw` at 0x1002777c, `lw` at 0x100277e4.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x10027788, `lw` at 0x100277f0.
  The `lw` at 0x1002779c loads 4 bytes from ?.
  The `lw` at 0x100277c8 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `sw` at 0x100277dc stores 4 bytes to ([a0+60] + (a3 << 0x2)) +0x0.
  The `jalr` at 0x10027784 calls XSGIvcQueryChannelInfo with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=a3 at entry (arg3), a3=sp-64.
  The `jalr` at 0x10027798 calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100277ec calls XSGIvcSetChannelGammaMap with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=a3 at entry (arg3), a3=a4 at entry (arg4).
  The `beq` branch at 0x100277a4 targets 0x100277c4, is taken when s2(?) >= s0(=a4) (signed), and falls through when s2(?) < s0(=a4) (signed).
  The `beq` branch at 0x100277f4 targets 0x100277b0 and is always taken.
  The return at 0x100277bc has v0 = one of ret(XFree), ret(XSGIvcSetChannelGammaMap).

- `CreateStatisticsFormClass__19StatisticsFormClassSGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10027800 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027800-0x10027880 (128 bytes).
  It occupies 128 bytes.
  The `jalr` at 0x10027828 calls __nw__GUi with a0=0x164, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10027850 calls __ct__19StatisticsFormClassGPCcP10_WidgetRec [0x100422c0] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x10027834 targets 0x1002786c, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x10027864 has v0 = ret(__nw__GUi).
  The return at 0x10027878 has v0 = 0x0.

- `populateGainWithChannel__16ChannelFormClassGiPC17XSGIvcChannelInfo` in `usr/bin/X11/xsetmon` at 0x10027880 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027880-0x10027a50 (464 bytes).
  It occupies 464 bytes.
  The `lw` at 0x10027888 loads 4 bytes from a2 (arg2 at entry) +0x15c.
  The `lw` at 0x100278b0 loads 4 bytes from a2 (arg2 at entry) +0x14c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3c, including `lw` at 0x100278c0, `lw` at 0x10027940, `lw` at 0x10027998.
  3 such `lw` accesses load 4 bytes from [a0+60] +0x8, including `lw` at 0x100278c4, `lw` at 0x1002799c, `lw` at 0x100279ec.
  The `lw` at 0x100278c8 loads 4 bytes from [[a0+60]+8] +0x2c.
  The `lw` at 0x100278cc loads 4 bytes from [[a0+60]+8] +0x24.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x100278d8, `lw` at 0x1002792c, `lw` at 0x100279b0.
  3 such `lw` accesses load 4 bytes from [a0+56] +0x8, including `lw` at 0x100278dc, `lw` at 0x100279b4, `lw` at 0x10027a04.
  The `lw` at 0x100278e0 loads 4 bytes from [[a0+56]+8] +0x2c.
  The `lw` at 0x100278e4 loads 4 bytes from [[a0+56]+8] +0x24.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x34, including `lw` at 0x100278f0, `lw` at 0x10027918, `lw` at 0x100279c8.
  3 such `lw` accesses load 4 bytes from [a0+52] +0x8, including `lw` at 0x100278f4, `lw` at 0x100279cc, `lw` at 0x10027a1c.
  The `lw` at 0x100278f8 loads 4 bytes from [[a0+52]+8] +0x2c.
  The `lw` at 0x100278fc loads 4 bytes from [[a0+52]+8] +0x24.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x10027944, `lw` at 0x1002797c, `lw` at 0x10027980.
  3 such `lw` accesses load 4 bytes from [a0+48] +0x8, including `lw` at 0x10027948, `lw` at 0x10027984, `lw` at 0x10027a34.
  2 such `lw` accesses load 4 bytes from [[a0+48]+8] +0x38, including `lw` at 0x1002794c, `lw` at 0x10027a38.
  2 such `lw` accesses load 4 bytes from [[a0+48]+8] +0x30, including `lw` at 0x10027950, `lw` at 0x10027a3c.
  The `lw` at 0x10027988 loads 4 bytes from [[a0+48]+8] +0x2c.
  The `lw` at 0x1002798c loads 4 bytes from [[a0+48]+8] +0x24.
  2 such `lw` accesses load 4 bytes from [[a0+60]+8] +0x38, including `lw` at 0x100279a0, `lw` at 0x100279f0.
  2 such `lw` accesses load 4 bytes from [[a0+60]+8] +0x30, including `lw` at 0x100279a4, `lw` at 0x100279f4.
  2 such `lw` accesses load 4 bytes from [[a0+56]+8] +0x38, including `lw` at 0x100279b8, `lw` at 0x10027a08.
  2 such `lw` accesses load 4 bytes from [[a0+56]+8] +0x30, including `lw` at 0x100279bc, `lw` at 0x10027a0c.
  2 such `lw` accesses load 4 bytes from [[a0+52]+8] +0x38, including `lw` at 0x100279d0, `lw` at 0x10027a20.
  2 such `lw` accesses load 4 bytes from [[a0+52]+8] +0x30, including `lw` at 0x100279d4, `lw` at 0x10027a24.
  The `jalr` at 0x100278d0 calls (unknown callee) with a0=([[[a0+60]+8]+36] + [a0+60]), a1=[a0+60], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100278e8 calls (unknown callee) with a0=([[[a0+56]+8]+36] + [a0+56]), a1=[a0+56], a2=?, a3=?.
  The `jalr` at 0x10027900 calls (unknown callee) with a0=([[[a0+52]+8]+36] + [a0+52]), a1=[a0+52], a2=?, a3=?.
  The `jal` at 0x10027914 calls configureGain__16GainControlClassGiT1 [0x10037340] with a0=[a0+52], a1=a1 at entry (arg1), a2=0x3, a3=?.
  The `jal` at 0x10027928 calls configureGain__16GainControlClassGiT1 [0x10037340] with a0=[a0+56], a1=a1 at entry (arg1), a2=0x2, a3=?.
  The `jal` at 0x1002793c calls configureGain__16GainControlClassGiT1 [0x10037340] with a0=[a0+60], a1=a1 at entry (arg1), a2=0x1, a3=?.
  The `jalr` at 0x10027954 calls (unknown callee) with a0=([[[a0+48]+8]+48] + [a0+48]), a1=[a0+48], a2=?, a3=?.
  The `jal` at 0x10027978 calls configureGain__16GainControlClassGiT1 [0x10037340] with a0=[a0+48], a1=a1 at entry (arg1), a2=0x5, a3=a3 at entry (arg3).
  The `jalr` at 0x10027990 calls (unknown callee) with a0=([[[a0+48]+8]+36] + [a0+48]), a1=[a0+48], a2=?, a3=?.
  The `jalr` at 0x100279a8 calls (unknown callee) with a0=([[[a0+60]+8]+48] + [a0+60]), a1=[a0+60], a2=?, a3=?.
  The `jalr` at 0x100279c0 calls (unknown callee) with a0=([[[a0+56]+8]+48] + [a0+56]), a1=[a0+56], a2=?, a3=?.
  The `jalr` at 0x100279d8 calls (unknown callee) with a0=([[[a0+52]+8]+48] + [a0+52]), a1=[a0+52], a2=?, a3=?.
  The `jalr` at 0x100279f8 calls (unknown callee) with a0=([[[a0+60]+8]+48] + [a0+60]), a1=[a0+60], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10027a10 calls (unknown callee) with a0=([[[a0+56]+8]+48] + [a0+56]), a1=[a0+56], a2=?, a3=?.
  The `jalr` at 0x10027a28 calls (unknown callee) with a0=([[[a0+52]+8]+48] + [a0+52]), a1=[a0+52], a2=?, a3=?.
  The `jalr` at 0x10027a40 calls (unknown callee) with a0=([[[a0+48]+8]+48] + [a0+48]), a1=[a0+48], a2=?, a3=?.
  The `beq` branch at 0x100278a8 targets 0x100279e8, is taken when at(=[a2+348]) == 0, and falls through when at(=[a2+348]) != 0.
  The `beq` branch at 0x100278b8 targets 0x10027974, is taken when (v1(=[a2+332]) & 0x2) == 0, and falls through when (v1(=[a2+332]) & 0x2) != 0.
  The `beq` branch at 0x100279e0 targets 0x10027960 and is always taken.
  The `beq` branch at 0x10027a48 targets 0x10027960 and is always taken.
  The return at 0x1002796c has v0 = ret(?).

- `doInputSyncSourceNotify__21ServerInfoFormClassUIGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x10027a50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027a50-0x10027a58 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10027a50 has v0 = ?.

- `__dt__19StatisticsFormClassGv` in `usr/bin/X11/xsetmon` at 0x10027a60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027a60-0x10027ac8 (104 bytes).
  It occupies 104 bytes.
  The `sw` at 0x10027a90 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10027a98 calls __dt__21StatisticsFormClassUIGv [0x10033e70] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10027ab0 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10027a80 targets 0x10027ab8, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10027aa8 targets 0x10027ab8, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10027ac0 has v0 = one of ?, ret(__dt__21StatisticsFormClassUIGv), ret(__dl__GPv).

- `apply__16AboutDialogClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10027ad0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027ad0-0x10027b10 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10027ad0 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lw` at 0x10027adc loads 4 bytes from [a0+84] +0x8.
  The `lw` at 0x10027aec loads 4 bytes from [[a0+84]+8] +0xa4.
  The `lw` at 0x10027af0 loads 4 bytes from [[a0+84]+8] +0x9c.
  The `jalr` at 0x10027af8 calls (unknown callee) with a0=([[[a0+84]+8]+156] + [a0+84]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+84], a4=0x30e2c.
  The return at 0x10027b08 has v0 = ret(?).

- `__ct__18GammaMapDescriptorGv` in `usr/bin/X11/xsetmon` at 0x10027b10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027b10-0x10027b30 (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0x10027b10 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `sw` at 0x10027b14 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x10027b18 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0x10027b1c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x10027b20 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0x10027b2c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The return at 0x10027b28 has v0 = a0.

- `populateBlankingWithChannel__16ChannelFormClassGiPC17XSGIvcChannelInfo` in `usr/bin/X11/xsetmon` at 0x10027b30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027b30-0x10027c44 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0x10027b40 loads 4 bytes from a2 (arg2 at entry) +0x158.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc0, including `lw` at 0x10027b44, `lw` at 0x10027ba4.
  The `lw` at 0x10027b58 loads 4 bytes from [a0+192] +0x8.
  The `lw` at 0x10027b64 loads 4 bytes from [[a0+192]+8] +0x2c.
  The `lw` at 0x10027b68 loads 4 bytes from [[a0+192]+8] +0x24.
  The `lw` at 0x10027b78 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x10027b80 loads 4 bytes from [sym(xsetmonApp)] +0x138.
  The `lw` at 0x10027b90 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `lw` at 0x10027bb4 loads 4 bytes from a0 (arg0 at entry) +0xc8.
  The `lw` at 0x10027bd8 loads 4 bytes from a0 (arg0 at entry) +0xcc.
  The `lw` at 0x10027be4 loads 4 bytes from [[a0+192]+8] +0x38.
  The `lw` at 0x10027be8 loads 4 bytes from [[a0+192]+8] +0x30.
  The `jalr` at 0x10027b6c calls (unknown callee) with a0=([[[a0+192]+8]+36] + [a0+192]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[a0+192], a5=[[a0+192]+8].
  The `jalr` at 0x10027b8c calls XSGIvcQueryOutputBlanking with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=a1 at entry (arg1), a3=sp-48.
  The `jalr` at 0x10027bb0 calls set__12VkOptionMenuGP10VkMenuItem with a0=[a0+192], a1=[a0+200], a2=?, a3=?, a4=[a0+192].
  The `jalr` at 0x10027bd4 calls set__12VkOptionMenuGP10VkMenuItem with a0=[a0+192], a1=[a0+204], a2=?, a3=?, a4=[a0+192].
  The `jalr` at 0x10027bec calls (unknown callee) with a0=([[[a0+192]+8]+48] + [a0+192]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[a0+192], a5=[[a0+192]+8].
  The `jalr` at 0x10027c04 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10043f90, a2=?, a3=?.
  The `jalr` at 0x10027c14 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x10027c24 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x10051498, a2=?, a3=?.
  The `jalr` at 0x10027c30 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10027c3c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10027b5c targets 0x10027be4, is taken when at(=[a2+344]) == 0, and falls through when at(=[a2+344]) != 0.
  The `beq` branch at 0x10027b94 targets 0x10027bfc, is taken when v0(=ret(XSGIvcQueryOutputBlanking)) == 0, and falls through when v0(=ret(XSGIvcQueryOutputBlanking)) != 0.
  The `beq` branch at 0x10027ba0 targets 0x10027bcc, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10027bdc targets 0x10027bbc and is always taken.
  The `beq` branch at 0x10027bf4 targets 0x10027bbc and is always taken.
  The return at 0x10027bc4 has v0 = one of ret(set__12VkOptionMenuGP10VkMenuItem), ret(?).

- `RegisterServerInfoFormClassInterface__19ServerInfoFormClassSGv` in `usr/bin/X11/xsetmon` at 0x10027c50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027c50-0x10027c68 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10027c5c loads 4 bytes from abs 0x10050950.
  The return at 0x10027c60 has v0 = 0x1004e168.

- `appendText__22ScrollingErrorMessagerGPc` in `usr/bin/X11/xsetmon` at 0x10027c70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027c70-0x10027cb0 (64 bytes).
  It occupies 64 bytes.
  The `jalr` at 0x10027c8c calls __ls__7ostreamGPCc with a0=sym(cout), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10027c98 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The return at 0x10027ca8 has v0 = ret(endl__GR7ostream).

- `loadData__19GammaMapEditorClassGP18GammaMapDescriptorP8__file_s` in `usr/bin/X11/xsetmon` at 0x10027cb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027cb0-0x10027ea4 (500 bytes).
  It occupies 500 bytes.
  The `sw` at 0x10027cf8 stores 4 bytes to a0 (arg0 at entry) +0x58.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x10027d4c, `lw` at 0x10027d68, `lw` at 0x10027d78.
  The `lw` at 0x10027d74 loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `lw` at 0x10027d7c loads 4 bytes from [a0+88] +0x4.
  The `lw` at 0x10027e54 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x10027e60 loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `sw` at 0x10027e7c stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `sw` at 0x10027e98 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `jalr` at 0x10027cf4 calls fread with a0=a1 at entry (arg1), a1=0x4, a2=0x1, a3=a2 at entry (arg2).
  The `jalr` at 0x10027d10 calls fread with a0=a0+84, a1=0x4, a2=0x1, a3=a2 at entry (arg2).
  The `jalr` at 0x10027d28 calls fread with a0=a0+96, a1=0x4, a2=0x1, a3=a2 at entry (arg2).
  The `jalr` at 0x10027d40 calls fread with a0=?, a1=0x4, a2=0x1, a3=a2 at entry (arg2).
  The `jalr` at 0x10027d50 calls __nwa__GUi with a0=([a0+84] + [a0+84]), a1=?, a2=?, a3=?.
  The `jalr` at 0x10027d6c calls fread with a0=ret(__nwa__GUi), a1=0x2, a2=[a0+84], a3=a2 at entry (arg2).
  The `jalr` at 0x10027d8c calls __dla__GPv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10027dbc calls fread with a0=sp-64, a1=0x4, a2=0x1, a3=a2 at entry (arg2).
  The `jalr` at 0x10027dd4 calls fread with a0=sp-64, a1=0x4, a2=0x1, a3=a2 at entry (arg2).
  The `jalr` at 0x10027dec calls fread with a0=sp-64, a1=0x4, a2=0x1, a3=a2 at entry (arg2).
  The `jalr` at 0x10027e04 calls fread with a0=sp-60, a1=0x4, a2=0x1, a3=a2 at entry (arg2).
  The `jalr` at 0x10027e14 calls __nwa__GUi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10027e30 calls fread with a0=ret(__nwa__GUi), a1=0x2, a2=[a0+84], a3=a2 at entry (arg2).
  The `jalr` at 0x10027e3c calls __dla__GPv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10027e50 calls __dla__GPv with a0=[a0+80], a1=[[a0+88]+4], a2=[a0+84], a3=?.
  The `jalr` at 0x10027e5c calls __dla__GPv with a0=[a0+100], a1=?, a2=?, a3=?.
  The `jalr` at 0x10027e6c calls __nwa__GUi with a0=([a0+84] + [a0+84]), a1=?, a2=?, a3=?.
  The `jalr` at 0x10027e80 calls __nwa__GUi with a0=([a0+84] + [a0+84]), a1=?, a2=?, a3=?.
  The `jal` at 0x10027e94 calls vLoadDrawTable__19GammaMapEditorClassGPUs [0x10028ff0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10027cd8 targets 0x10027dac, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x10027d80 targets 0x10027e4c, is taken when a1(=[[a0+88]+4]) == a2(=[a0+84]), and falls through when a1(=[[a0+88]+4]) != a2(=[a0+84]).
  The `beq` branch at 0x10027e44 targets 0x10027d98 and is always taken.
  The `beq` branch at 0x10027e9c targets 0x10027d8c and is always taken.
  The return at 0x10027da4 has v0 = ret(__dla__GPv).

- `className__21ServerInfoFormClassUIGv` in `usr/bin/X11/xsetmon` at 0x10027eb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027eb0-0x10027ec8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10027ebc loads 4 bytes from abs 0x1005091c.
  The return at 0x10027ec0 has v0 = 0x10046100.

- `className__21MasterTabbedDeckClassGv` in `usr/bin/X11/xsetmon` at 0x10027ed0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027ed0-0x10027ee8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10027edc loads 4 bytes from abs 0x1005091c.
  The return at 0x10027ee0 has v0 = 0x10045e10.

- `doDownloadFormatButton__27FormatCombinationListsClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10027fd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10027fd0-0x100288c8 (2296 bytes).
  It occupies 2296 bytes.
  The `lw` at 0x10028004 loads 4 bytes from a0 (arg0 at entry) +0x40.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10028018, `lw` at 0x10028168, `lw` at 0x100287f8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc4, including `lw` at 0x1002801c, `lw` at 0x10028138.
  The `lw` at 0x1002803c loads 4 bytes from a0 (arg0 at entry) +0xc0.
  The `lw` at 0x10028064 loads 4 bytes from a0 (arg0 at entry) +0xc8.
  15 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1002814c, `lw` at 0x100281e0, `lw` at 0x10028250.
  3 such `lbu` accesses load 1 byte from [sym(xsetmonApp)] +0x84, including `lbu` at 0x10028150, `lbu` at 0x10028424, `lbu` at 0x100284c4.
  3 such `lbu` accesses load 1 byte from [sym(xsetmonApp)] +0xcb, including `lbu` at 0x1002815c, `lbu` at 0x10028540, `lbu` at 0x10028660.
  The `sw` at 0x1002818c stores 4 bytes to ret(getTheStereoDialog__Gv) +0x5c.
  The `lw` at 0x10028190 loads 4 bytes from ret(getTheStereoDialog__Gv) +0x8.
  The `lw` at 0x100281a0 loads 4 bytes from [ret(getTheStereoDialog__Gv)+8] +0x110.
  The `lw` at 0x100281ac loads 4 bytes from [ret(getTheStereoDialog__Gv)+8] +0x108.
  4 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x8c, including `lw` at 0x100281e4, `lw` at 0x10028224, `lw` at 0x1002825c.
  4 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x90, including `lw` at 0x100281fc, `lw` at 0x10028278, `lw` at 0x10028490.
  15 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x10028208, `lw` at 0x10028288, `lw` at 0x100282b0.
  12 such `lw` accesses load 4 bytes from [[sym(xsetmonApp)]+312] +0x84, including `lw` at 0x10028218, `lw` at 0x10028298, `lw` at 0x100282c8.
  The `lw` at 0x100282b8 loads 4 bytes from [sym(xsetmonApp)] +0x11c.
  The `sw` at 0x10028324 stores 4 bytes to sym(requestErrCatched) +0x0.
  6 such `lw` accesses load 4 bytes from [[sym(xsetmonApp)]+312] +0x8c, including `lw` at 0x10028384, `lw` at 0x100283d4, `lw` at 0x1002855c.
  6 such `lw` accesses load 4 bytes from ([[[sym(xsetmonApp)]+312]+140] + ((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4)) +0x8, including `lw` at 0x100283a4, `lw` at 0x100283e8, `lw` at 0x1002857c.
  The `lw` at 0x100283bc loads 4 bytes from ret(getTheStereoDialog__Gv) +0x54.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xec, including `lw` at 0x100284a0, `lw` at 0x10028528, `lw` at 0x10028618.
  4 such `lw` accesses load 4 bytes from ret(getTheQuestionDialog__Gv) +0x8, including `lw` at 0x100284d8, `lw` at 0x100286f0, `lw` at 0x1002880c.
  4 such `lw` accesses load 4 bytes from [ret(getTheQuestionDialog__Gv)+8] +0x110, including `lw` at 0x100284e4, `lw` at 0x100286fc, `lw` at 0x10028818.
  4 such `lw` accesses load 4 bytes from [ret(getTheQuestionDialog__Gv)+8] +0x108, including `lw` at 0x100284f0, `lw` at 0x10028708, `lw` at 0x10028824.
  The `lw` at 0x10028580 loads 4 bytes from a0 (arg0 at entry) +0xf4.
  2 such `lw` accesses load 4 bytes from ret(getTheWarningDialog__Gv) +0x8, including `lw` at 0x10028628, `lw` at 0x1002876c.
  2 such `lw` accesses load 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x110, including `lw` at 0x10028634, `lw` at 0x1002877c.
  2 such `lw` accesses load 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x108, including `lw` at 0x10028640, `lw` at 0x10028788.
  The `lw` at 0x10028740 loads 4 bytes from sym(requestErrCatched) +0x0.
  The `sw` at 0x100287e0 stores 4 bytes to a0 (arg0 at entry) +0xec.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd0, including `lw` at 0x100287e4, `lw` at 0x10028858.
  The `sw` at 0x100287f0 stores 4 bytes to a0 (arg0 at entry) +0xf4.
  The `jalr` at 0x10028000 calls XmListGetSelectedPos with a0=[a0+64], a1=sp-128, a2=sp-124, a3=a3 at entry (arg3).
  The `jalr` at 0x10028084 calls VkGetResource__GPCcT1 with a0=0x10044a08, a1=0x10044a08, a2=?, a3=?.
  The `jalr` at 0x10028098 calls strlen with a0=ret(VkGetResource__GPCcT1), a1=?, a2=?, a3=?.
  The `jalr` at 0x100280a8 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100280b8 calls __nwa__GUi with a0=(ret(strlen) + ret(strlen))+10, a1=?, a2=?, a3=?.
  The `jalr` at 0x100280d0 calls sprintf with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x100280e4 calls VkGetResource__GPCcT1 with a0=0x10044a20, a1=0x10044a20, a2=?, a3=?.
  The `jalr` at 0x100280f4 calls strlen with a0=ret(VkGetResource__GPCcT1), a1=?, a2=?, a3=?.
  The `jalr` at 0x10028104 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10028114 calls __nwa__GUi with a0=(ret(strlen) + ret(strlen))+10, a1=?, a2=?, a3=?.
  The `jalr` at 0x10028130 calls sprintf with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jal` at 0x10028178 calls getTheStereoDialog__Gv [0x10024dd0] with a0=?, a1=?, a2=0x1, a3=[[sym(xsetmonApp)]+132]:1, a4=[[sym(xsetmonApp)]+203]:1.
  The `jal` at 0x10028188 calls getTheStereoDialog__Gv [0x10024dd0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100281b8 calls (unknown callee) with a0=([[ret(getTheStereoDialog__Gv)+8]+264] + ret(getTheStereoDialog__Gv)), a1=0x0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10028214 calls XSGIvcLoadVideoFormatByName with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=?.
  The `jal` at 0x1002824c calls checkPriv__7xsetmonGv [0x10041490] with a0=[sym(xsetmonApp)], a1=?, a2=?, a3=?.
  The `jalr` at 0x10028294 calls XSGIvcNVLoadVideoFormatByName with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=?.
  The `jalr` at 0x100282c4 calls XSGIvcNVLoadVideoFormat with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=?, a4=0x7e, a5=0x1, a6=[[sym(xsetmonApp)]+284], a7=0x0.
  The `jalr` at 0x100282d4 calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=?, a2=?, a3=?.
  The `jalr` at 0x100282f8 calls XtFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10028304 calls __dla__GPv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10028314 calls __dla__GPv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002835c calls XSGIvcLoadVideoFormat with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=?, a4=0x7e, a5=0x1.
  The `jalr` at 0x100283a0 calls XSGISetStereoMode with a0=[[sym(xsetmonApp)]+312], a1=[([[[sym(xsetmonApp)]+312]+140] + ((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4))+8], a2=0x0, a3=0x0, a4=0x0, a5=((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4), a6=[[[sym(xsetmonApp)]+312]+132].
  The `jal` at 0x100283ac calls getTheStereoDialog__Gv [0x10024dd0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100283b8 calls XmToggleButtonGetState with a0=[ret(getTheStereoDialog__Gv)+84], a1=?, a2=?, a3=?.
  The `jalr` at 0x100283f8 calls XSGISetStereoMode with a0=[[sym(xsetmonApp)]+312], a1=[([[[sym(xsetmonApp)]+312]+140] + ((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4))+8], a2=0x1ec, a3=0x214, a4=0x2.
  The `jalr` at 0x10028414 calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002843c calls VkGetResource__GPCcT1 with a0=0x10044978, a1=0x10044978, a2=?, a3=?.
  The `jal` at 0x10028458 calls WaitForVerifyDisplayMode__27FormatCombinationListsClassGPc [0x10027530] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x100284a8 calls XSGIvcLoadVideoFormatByName with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=[a0+236].
  The `jalr` at 0x100284d0 calls getTheQuestionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10028500 calls (unknown callee) with a0=([[ret(getTheQuestionDialog__Gv)+8]+264] + ret(getTheQuestionDialog__Gv)), a1=?, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10028530 calls XSGIvcLoadVideoFormat with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=[a0+236], a4=0x7e, a5=0x1.
  The `jalr` at 0x10028578 calls XSGISetStereoMode with a0=[[sym(xsetmonApp)]+312], a1=[([[[sym(xsetmonApp)]+312]+140] + ((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4))+8], a2=0x0, a3=0x0, a4=0x0, a5=((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4), a6=[[[sym(xsetmonApp)]+312]+132].
  The `jalr` at 0x100285bc calls XSGISetStereoMode with a0=[[sym(xsetmonApp)]+312], a1=[([[[sym(xsetmonApp)]+312]+140] + ((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4))+8], a2=0x1ec, a3=0x214, a4=[a0+244], a5=((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4), a6=[[[sym(xsetmonApp)]+312]+132].
  The `jalr` at 0x100285d0 calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=?, a2=?, a3=?.
  The `jalr` at 0x100285f4 calls VkGetResource__GPCcT1 with a0=0x100449b8, a1=0x100449b8, a2=?, a3=?.
  The `jalr` at 0x10028614 calls sprintf with a0=?, a1=?, a2=[a0+236], a3=?.
  The `jalr` at 0x10028620 calls getTheWarningDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10028650 calls (unknown callee) with a0=([[ret(getTheWarningDialog__Gv)+8]+264] + ret(getTheWarningDialog__Gv)), a1=?, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1002868c calls XSGIQueryStereoMode with a0=[[sym(xsetmonApp)]+312], a1=[([[[sym(xsetmonApp)]+312]+140] + ((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4))+8], a2=((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4), a3=[[[sym(xsetmonApp)]+312]+132].
  The `jalr` at 0x100286cc calls XSGISetStereoMode with a0=[[sym(xsetmonApp)]+312], a1=[([[[sym(xsetmonApp)]+312]+140] + ((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4))+8], a2=0x0, a3=0x0, a4=0x0, a5=((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4), a6=[[[sym(xsetmonApp)]+312]+132].
  The `jalr` at 0x100286e8 calls getTheQuestionDialog__Gv with a0=?, a1=?, a2=0x1, a3=[[sym(xsetmonApp)]+132]:1, a4=[[sym(xsetmonApp)]+203]:1.
  The `jalr` at 0x10028718 calls (unknown callee) with a0=([[ret(getTheQuestionDialog__Gv)+8]+264] + ret(getTheQuestionDialog__Gv)), a1=?, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1002874c calls getTheWarningDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10028764 calls VkGetResource__GPCcT1 with a0=0x100449f8, a1=0x100449f8, a2=?, a3=?.
  The `jalr` at 0x10028794 calls (unknown callee) with a0=([[ret(getTheWarningDialog__Gv)+8]+264] + ret(getTheWarningDialog__Gv)), a1=ret(VkGetResource__GPCcT1), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x100287cc calls XSGISetStereoMode with a0=[[sym(xsetmonApp)]+312], a1=[([[[sym(xsetmonApp)]+312]+140] + ((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4))+8], a2=0x1ec, a3=0x214, a4=0x1.
  The `jalr` at 0x10028804 calls getTheQuestionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10028834 calls (unknown callee) with a0=([[ret(getTheQuestionDialog__Gv)+8]+264] + ret(getTheQuestionDialog__Gv)), a1=?, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10028870 calls getTheQuestionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100288a0 calls (unknown callee) with a0=([[ret(getTheQuestionDialog__Gv)+8]+264] + ret(getTheQuestionDialog__Gv)), a1=?, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `beq` branch at 0x1002800c targets 0x10028334, is taken when (v0(=ret(XmListGetSelectedPos)) & 0xff) == 0, and falls through when (v0(=ret(XmListGetSelectedPos)) & 0xff) != 0.
  The `beq` branch at 0x10028028 targets 0x10028054, is taken when v0(?) >= a0(=[a0+196]) (signed), and falls through when v0(?) < a0(=[a0+196]) (signed).
  The `beq` branch at 0x1002804c targets 0x10028078 and is always taken.
  The `beq` branch at 0x10028148 targets 0x10028224, is taken when s2(?) >= a1(=[a0+196]) (signed), and falls through when s2(?) < a1(=[a0+196]) (signed).
  The `beq` branch at 0x10028154 targets 0x100287a4, is taken when a3(=[[sym(xsetmonApp)]+132]:1) == 0, and falls through when a3(=[[sym(xsetmonApp)]+132]:1) != 0.
  The `beq` branch at 0x10028160 targets 0x100286e8, is taken when a4(=[[sym(xsetmonApp)]+203]:1) == 0, and falls through when a4(=[[sym(xsetmonApp)]+203]:1) != 0.
  The `beq` branch at 0x10028170 targets 0x100286e4, is taken when (a5(?) & 0x4) == 0, and falls through when (a5(?) & 0x4) != 0.
  The `beq` branch at 0x100281c0 targets 0x100287b8, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x100281ec targets 0x10028204, is taken when a2(=[[sym(xsetmonApp)]+140]) >= 0x2 (signed), and falls through when a2(=[[sym(xsetmonApp)]+140]) < 0x2 (signed).
  The `bne` branch at 0x100281f4 targets 0x10028348, is taken when a2(=[[sym(xsetmonApp)]+140]) != ra(=0x1), and falls through when a2(=[[sym(xsetmonApp)]+140]) == ra(=0x1).
  The `blez` branch at 0x10028200 targets 0x10028344, is taken when at(=[[sym(xsetmonApp)]+144]) <= 0 (signed), and falls through when at(=[[sym(xsetmonApp)]+144]) > 0 (signed).
  The `beq` branch at 0x1002821c targets 0x10028368 and is always taken.
  The `beq` branch at 0x1002822c targets 0x100284c4, is taken when a2(=[[sym(xsetmonApp)]+140]) >= 0x2 (signed), and falls through when a2(=[[sym(xsetmonApp)]+140]) < 0x2 (signed).
  The `beq` branch at 0x10028234 targets 0x100284b8, is taken when a2(=[[sym(xsetmonApp)]+140]) == v1(=0x1), and falls through when a2(=[[sym(xsetmonApp)]+140]) != v1(=0x1).
  The `beq` branch at 0x10028240 targets 0x100282e8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10028254 targets 0x100282e8, is taken when v0(=ret(checkPriv__7xsetmonGv)) == 0, and falls through when v0(=ret(checkPriv__7xsetmonGv)) != 0.
  The `beq` branch at 0x10028264 targets 0x10028288, is taken when a2(=[[sym(xsetmonApp)]+140]) >= 0x2 (signed), and falls through when a2(=[[sym(xsetmonApp)]+140]) < 0x2 (signed).
  The `bne` branch at 0x10028270 targets 0x100282a8, is taken when a2(=[[sym(xsetmonApp)]+140]) != a1(=0x1), and falls through when a2(=[[sym(xsetmonApp)]+140]) == a1(=0x1).
  The `blez` branch at 0x1002827c targets 0x100282a8, is taken when a2(=[[sym(xsetmonApp)]+144]) <= 0 (signed), and falls through when a2(=[[sym(xsetmonApp)]+144]) > 0 (signed).
  The `beq` branch at 0x1002829c targets 0x100282cc and is always taken.
  The `beq` branch at 0x100282e0 targets 0x10028740, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1002836c targets 0x10028660, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x100283e4 targets 0x100287c0, is taken when v0(=ret(XmToggleButtonGetState)) == 0, and falls through when v0(=ret(XmToggleButtonGetState)) != 0.
  The `beq` branch at 0x10028428 targets 0x10028240, is taken when a1(=[[sym(xsetmonApp)]+132]:1) == 0, and falls through when a1(=[[sym(xsetmonApp)]+132]:1) != 0.
  The `bne` branch at 0x10028444 targets 0x10028454, is taken when v0(=ret(VkGetResource__GPCcT1)) != 0, and falls through when v0(=ret(VkGetResource__GPCcT1)) == 0.
  The `beq` branch at 0x10028464 targets 0x100287e0, is taken when v0(=ret(WaitForVerifyDisplayMode__27FormatCombinationListsClassGPc)) == 0, and falls through when v0(=ret(WaitForVerifyDisplayMode__27FormatCombinationListsClassGPc)) != 0.
  The `beq` branch at 0x1002847c targets 0x10028498, is taken when a2(=[[sym(xsetmonApp)]+140]) >= 0x2 (signed), and falls through when a2(=[[sym(xsetmonApp)]+140]) < 0x2 (signed).
  The `bne` branch at 0x10028488 targets 0x1002851c, is taken when a2(=[[sym(xsetmonApp)]+140]) != t3(=0x1), and falls through when a2(=[[sym(xsetmonApp)]+140]) == t3(=0x1).
  The `blez` branch at 0x10028494 targets 0x10028518, is taken when t8(=[[sym(xsetmonApp)]+144]) <= 0 (signed), and falls through when t8(=[[sym(xsetmonApp)]+144]) > 0 (signed).
  The `beq` branch at 0x100284b0 targets 0x10028538 and is always taken.
  The `blez` branch at 0x100284bc targets 0x1002823c, is taken when t9(=[[sym(xsetmonApp)]+144]) <= 0 (signed), and falls through when t9(=[[sym(xsetmonApp)]+144]) > 0 (signed).
  The `beq` branch at 0x100284c8 targets 0x100286dc, is taken when ra(=[[sym(xsetmonApp)]+132]:1) == 0, and falls through when ra(=[[sym(xsetmonApp)]+132]:1) != 0.
  The `beq` branch at 0x10028508 targets 0x10028850, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x10028510 targets 0x1002823c and is always taken.
  The `beq` branch at 0x10028544 targets 0x100285d0, is taken when a1(=[[sym(xsetmonApp)]+203]:1) == 0, and falls through when a1(=[[sym(xsetmonApp)]+203]:1) != 0.
  The `beq` branch at 0x10028584 targets 0x100285c8, is taken when a4(=[a0+244]) == 0, and falls through when a4(=[a0+244]) != 0.
  The `bne` branch at 0x100285e0 targets 0x100282ec, is taken when t3(?) != t8(=0x2), and falls through when t3(?) == t8(=0x2).
  The `bne` branch at 0x100285fc targets 0x1002860c, is taken when v0(=ret(VkGetResource__GPCcT1)) != 0, and falls through when v0(=ret(VkGetResource__GPCcT1)) == 0.
  The `beq` branch at 0x10028658 targets 0x100282ec and is always taken.
  The `beq` branch at 0x10028664 targets 0x100286d4, is taken when a1(=[[sym(xsetmonApp)]+203]:1) == 0, and falls through when a1(=[[sym(xsetmonApp)]+203]:1) != 0.
  The `beq` branch at 0x10028694 targets 0x100286d4, is taken when v0(=ret(XSGIQueryStereoMode)) == 0, and falls through when v0(=ret(XSGIQueryStereoMode)) != 0.
  The `beq` branch at 0x100286d4 targets 0x10028408 and is always taken.
  The `beq` branch at 0x100286dc targets 0x1002823c and is always taken.
  The `beq` branch at 0x10028720 targets 0x10028858, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x10028738 targets 0x100281e4 and is always taken.
  The `bne` branch at 0x10028744 targets 0x100282e8, is taken when t8(=[sym(requestErrCatched)]) != 0, and falls through when t8(=[sym(requestErrCatched)]) == 0.
  The `beq` branch at 0x1002879c targets 0x100282ec and is always taken.
  The `beq` branch at 0x100287b0 targets 0x100281e4 and is always taken.
  The `beq` branch at 0x100287b8 targets 0x10028240 and is always taken.
  The `beq` branch at 0x100287d8 targets 0x10028408 and is always taken.
  The `beq` branch at 0x100287fc targets 0x10028240, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x10028840 targets 0x10028248, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0x10028848 targets 0x10028240 and is always taken.
  The `beq` branch at 0x10028850 targets 0x10028240 and is always taken.
  The `beq` branch at 0x10028868 targets 0x100288b8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x100288a8 targets 0x100288c0, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x100288b0 targets 0x10028240 and is always taken.
  The `beq` branch at 0x100288b8 targets 0x100288b0 and is always taken.
  The `beq` branch at 0x100288c0 targets 0x100288b0 and is always taken.
  The return at 0x1002832c has v0 = ret(__dla__GPv).
  The return at 0x1002833c has v0 = ?.
  The instructions from 0x100282a4 to 0x100282a4 are not reached by any path from the entry, and their branches are not listed.

- `__dt__10GammaClassGv` in `usr/bin/X11/xsetmon` at 0x100288d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100288d0-0x10028938 (104 bytes).
  It occupies 104 bytes.
  The `sw` at 0x10028900 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10028908 calls __dt__12GammaClassUIGv [0x100311b0] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10028920 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100288f0 targets 0x10028928, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10028918 targets 0x10028928, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10028930 has v0 = one of ?, ret(__dt__12GammaClassUIGv), ret(__dl__GPv).

- `nameSelectedCallback__30CombinationContentsListClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10028940 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10028940-0x10028984 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10028944 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028950 loads 4 bytes from [a1+8] +0x9c.
  The `lw` at 0x1002895c loads 4 bytes from [a1+8] +0xa4.
  The `jalr` at 0x1002896c calls (unknown callee) with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x2ffbc.
  The return at 0x1002897c has v0 = ret(?).

- `className__30CombinationContentsListClassUIGv` in `usr/bin/X11/xsetmon` at 0x10028990 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10028990-0x100289a8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1002899c loads 4 bytes from abs 0x1005091c.
  The return at 0x100289a0 has v0 = 0x100448c0.

- `expose__21GammaMapEditorClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x100289b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100289b0-0x100289b8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x100289b0 has v0 = ?.

- `doDownloadaccumBufTypeButtonCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x100289c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100289c0-0x10028a04 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x100289c4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100289d0 loads 4 bytes from [a1+8] +0xcc.
  The `lw` at 0x100289dc loads 4 bytes from [a1+8] +0xd4.
  The `jalr` at 0x100289ec calls (unknown callee) with a0=([[a1+8]+204] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x2ff3c.
  The return at 0x100289fc has v0 = ret(?).

- `__ct__7xsetmonGPcPiPPcP16XrmOptionDescReci` in `usr/bin/X11/xsetmon` at 0x10028a10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10028a10-0x10028be0 (464 bytes).
  It occupies 464 bytes.
  The `sw` at 0x10028a54 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x10028a6c stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `lbu` at 0x10028a80 loads 1 byte from a0 (arg0 at entry) +0x85.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x134, including `sw` at 0x10028a98, `sw` at 0x10028b04.
  The `lbu` at 0x10028aa0 loads 1 byte from a0 (arg0 at entry) +0x94.
  The `lw` at 0x10028b2c loads 4 bytes from a0 (arg0 at entry) +0x134.
  The `lw` at 0x10028b30 loads 4 bytes from [a0+308] +0x4.
  The `lw` at 0x10028b34 loads 4 bytes from [[a0+308]+4] +0x44.
  The `lw` at 0x10028b38 loads 4 bytes from [[a0+308]+4] +0x3c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x88, including `sw` at 0x10028b5c, `sw` at 0x10028ba4.
  The `lw` at 0x10028b60 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lw` at 0x10028b74 loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `lbu` at 0x10028b78 loads 1 byte from [a3+4] +0x0.
  The `lw` at 0x10028bb4 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `jalr` at 0x10028a3c calls __ct__5VkAppGPcPiPPcP16XrmOptionDescReci with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10028a5c calls parseCommandLine__5VkAppGP16XrmOptionDescRecUi with a0=a0 at entry (arg0), a1=sym(cmdLineOptions__7xsetmon), a2=0x4, a3=?.
  The `jalr` at 0x10028a74 calls getResources__11VkComponentGP11_XtResourcei with a0=a0 at entry (arg0), a1=sym(_resources__7xsetmon), a2=0x4, a3=?.
  The `jal` at 0x10028a8c calls usage__7xsetmonGv [0x1002c610] with a0=a0 at entry (arg0), a1=[a0+133]:1, a2=?, a3=?.
  The `jalr` at 0x10028ab0 calls __nw__GUi with a0=0xc, a1=?, a2=[a0+148]:1, a3=?.
  The `jal` at 0x10028ad4 calls __ct__17TextErrorMessagerGPCc [0x1002df50] with a0=ret(__nw__GUi), a1=0x10043c18, a2=?, a3=0x1.
  The `jalr` at 0x10028b00 calls __ct__9strstreamGv with a0=sp-232, a1=0x0, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10028b14 calls __ls__7ostreamGPCc with a0=sp-152, a1=0x10043c30, a2=?, a3=?.
  The `jalr` at 0x10028b20 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10028b40 calls (unknown callee) with a0=([[[a0+308]+4]+60] + [a0+308]), a1=sp-232, a2=[a0+308], a3=?.
  The `jalr` at 0x10028b50 calls __dt__9strstreamGv with a0=sp-232, a1=0x2, a2=?, a3=?.
  The `jal` at 0x10028b88 calls usage__7xsetmonGv [0x1002c610] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[[a3+4]]:1, a5=0x2d.
  The `jalr` at 0x10028b98 calls strdup with a0=[a3+4], a1=?, a2=?, a3=?, a4=[[a3+4]]:1, a5=0x2d.
  The `jal` at 0x10028bb0 calls getDpyInfo__7xsetmonGPc [0x10034110] with a0=a0 at entry (arg0), a1=[a0+128], a2=?, a3=?.
  The `jalr` at 0x10028bc4 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10028a84 targets 0x10028a98, is taken when a1(=[a0+133]:1) == 0, and falls through when a1(=[a0+133]:1) != 0.
  The `beq` branch at 0x10028aa4 targets 0x10028b5c, is taken when a2(=[a0+148]:1) == 0, and falls through when a2(=[a0+148]:1) != 0.
  The `beq` branch at 0x10028abc targets 0x10028aec, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10028ae4 targets 0x10028af4 and is always taken.
  The `bne` branch at 0x10028b6c targets 0x10028ba8, is taken when a3(=[a2]) < 0x2 (signed), and falls through when a3(=[a2]) >= 0x2 (signed).
  The `bne` branch at 0x10028b7c targets 0x10028b98, is taken when a4(=[[a3+4]]:1) != a5(=0x2d), and falls through when a4(=[[a3+4]]:1) == a5(=0x2d).
  The `beq` branch at 0x10028b90 targets 0x10028bac and is always taken.
  The `bne` branch at 0x10028bb8 targets 0x10028bcc, is taken when v0(=ret(getDpyInfo__7xsetmonGPc)) != 0, and falls through when v0(=ret(getDpyInfo__7xsetmonGPc)) == 0.
  The return at 0x10028bd8 has v0 = a0.

- `className__12GammaClassUIGv` in `usr/bin/X11/xsetmon` at 0x10028be0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10028be0-0x10028bf8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10028bec loads 4 bytes from abs 0x1005091c.
  The return at 0x10028bf0 has v0 = 0x100455b0.

- `DisplayCurrent__21SetmonMasterFormClassGv` in `usr/bin/X11/xsetmon` at 0x10028c00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10028c00-0x10028c08 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10028c00 has v0 = ?.

- `postWarningMessage__13ErrorMessagerGP9strstream` in `usr/bin/X11/xsetmon` at 0x10028c10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10028c10-0x10028c94 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0x10028c44 loads 4 bytes from ret(getTheWarningDialog__Gv) +0x8.
  The `lw` at 0x10028c54 loads 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x110.
  The `lw` at 0x10028c60 loads 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x108.
  The `jalr` at 0x10028c30 calls str__9strstreamGv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10028c3c calls getTheWarningDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10028c6c calls (unknown callee) with a0=([[ret(getTheWarningDialog__Gv)+8]+264] + ret(getTheWarningDialog__Gv)), a1=ret(str__9strstreamGv), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10028c78 calls __dl__GPv with a0=ret(str__9strstreamGv), a1=?, a2=?, a3=?.
  The return at 0x10028c8c has v0 = ret(__dl__GPv).

- `changeSyncFormat__19SyncSelectorFrameUIGPC25SyncFormatDescriptorClass` in `usr/bin/X11/xsetmon` at 0x10028ca0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10028ca0-0x10028ca8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10028ca0 has v0 = ?.

- `__ct__21AboutXsetmonFormClassGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10028cb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10028cb0-0x10028cf8 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x10028ce8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10028cd0 calls __ct__23AboutXsetmonFormClassUIGPCcP10_WidgetRec [0x1002bfe0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10028cf0 has v0 = a0.

- `doOptionBlanked__16ChannelFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10028d00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10028d00-0x10028d60 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x10028d18 loads 4 bytes from a0 (arg0 at entry) +0xd8.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10028d1c, `lw` at 0x10028d44.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x10028d24, `lw` at 0x10028d4c.
  The `lw` at 0x10028d30 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `jalr` at 0x10028d34 calls XSGIvcSetOutputBlanking with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[a0+216], a3=0x1.
  The `jalr` at 0x10028d48 calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=?, a2=?, a3=?.
  The return at 0x10028d58 has v0 = ret(XFlush).

- `ClearfbConfig__19StatisticsFormClassGv` in `usr/bin/X11/xsetmon` at 0x10028d60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10028d60-0x10028dcc (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x10028d88 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `lw` at 0x10028da4 loads 4 bytes from a0 (arg0 at entry) +0xbc.
  The `jal` at 0x10028d84 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+184], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10028d94 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cb8], a2=?, a3=?.
  The `jal` at 0x10028da0 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+188], a1=?, a2=?, a3=?.
  The `jal` at 0x10028db4 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cb8], a2=?, a3=?.
  The return at 0x10028dc4 has v0 = ret(__as__9EZWrapperGPCc).

- `iSplineIndexToGammaIndex__19GammaMapEditorClassCGi` in `usr/bin/X11/xsetmon` at 0x10028dd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10028dd0-0x10028e08 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0x10028dd0 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0x10028ddc loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `bne` branch at 0x10028dd8 targets 0x10028de8, is taken when a4(=[a0+172]-1) != a1, and falls through when a4(=[a0+172]-1) == a1.
  The return at 0x10028de0 has v0 = [a0+152]-1.
  The return at 0x10028e00 has v0 = ?.

- `doButtonSet__18ChannelFormClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10028e10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10028e10-0x10028e18 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10028e10 has v0 = ?.

- `doOptionBlanked__18ChannelFormClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10028e20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10028e20-0x10028e28 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10028e20 has v0 = ?.

- `setToggleGammaPointsCallback__21GammaMapEditorClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10028e30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10028e30-0x10028e74 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10028e34 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028e40 loads 4 bytes from [a1+8] +0xc0.
  The `lw` at 0x10028e4c loads 4 bytes from [a1+8] +0xc8.
  The `jalr` at 0x10028e5c calls (unknown callee) with a0=([[a1+8]+192] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x2facc.
  The return at 0x10028e6c has v0 = ret(?).

- `RegisterAboutXsetmonFormClassInterface__21AboutXsetmonFormClassSGv` in `usr/bin/X11/xsetmon` at 0x10028fd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10028fd0-0x10028fe8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10028fdc loads 4 bytes from abs 0x10050950.
  The return at 0x10028fe0 has v0 = 0x1004c620.

- `vLoadDrawTable__19GammaMapEditorClassGPUs` in `usr/bin/X11/xsetmon` at 0x10028ff0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10028ff0-0x100290e0 (240 bytes).
  It occupies 240 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x50, including `lw` at 0x10028ff0, `lw` at 0x10029070.
  The `lw` at 0x10028ff4 loads 4 bytes from a0 (arg0 at entry) +0x64.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x10028ffc, `lw` at 0x10029034, `lw` at 0x10029054.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x10029028, `lhu` at 0x10029048.
  4 such `sh` accesses store 2 bytes to ?, including `sh` at 0x1002902c, `sh` at 0x10029030, `sh` at 0x1002904c.
  The `lw` at 0x10029074 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0x10029078 loads 4 bytes from a0 (arg0 at entry) +0x58.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10029084, `lw` at 0x100290a0.
  The `lw` at 0x10029088 loads 4 bytes from [a0+88] +0x0.
  The `lw` at 0x1002908c loads 4 bytes from [sym(xsetmonApp)] +0x13c.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x10029094, `lw` at 0x100290ac.
  The `jalr` at 0x10029090 calls XSGIvcStoreGammaColors16 with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=[[a0+88]], a3=[a0+84], a4=[a0+96], a5=[a0+80].
  The `jalr` at 0x100290a8 calls XSync with a0=[[sym(xsetmonApp)]+312], a1=0x0, a2=?, a3=?.
  The `jal` at 0x100290b4 calls calculateDrawing__19GammaMapEditorClassGv [0x10026710] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100290c4 calls redraw__19GammaMapEditorClassCGi [0x1002ad90] with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?.
  The `blez` branch at 0x1002901c targets 0x10029074, is taken when a3(=[a0+84]) <= 0 (signed), and falls through when a3(=[a0+84]) > 0 (signed).
  The `beq` branch at 0x10029040 targets 0x10029070, is taken when a2(?) >= a3(=[a0+84]) (signed), and falls through when a2(?) < a3(=[a0+84]) (signed).
  The `bne` branch at 0x10029068 targets 0x10029028, is taken when a2(?) < a3(=[a0+84]) (signed), and falls through when a2(?) >= a3(=[a0+84]) (signed).
  The return at 0x100290d8 has v0 = ret(redraw__19GammaMapEditorClassCGi).

- `createChannelChanger__18ChannelFormClassUIGv` in `usr/bin/X11/xsetmon` at 0x100290e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100290e0-0x1002926c (396 bytes).
  It occupies 396 bytes.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x100290fc, `lw` at 0x10029164.
  The `lw` at 0x10029104 loads 4 bytes from [sym(xsetmonApp)] +0x98.
  The `sw` at 0x10029118 stores 4 bytes to a0 (arg0 at entry) +0xd4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd4, including `lw` at 0x10029128, `lw` at 0x100291d4.
  The `sw` at 0x1002912c stores 4 bytes to a0 (arg0 at entry) +0xd0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd0, including `lw` at 0x10029160, `lw` at 0x100291e8.
  The `lw` at 0x1002916c loads 4 bytes from [sym(xsetmonApp)] +0x138.
  The `lw` at 0x10029180 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100291a8, `sw` at 0x100291b4, `sw` at 0x100291c8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc4, including `lw` at 0x100291c0, `lw` at 0x10029208.
  The `lw` at 0x10029200 loads 4 bytes from ?.
  The `jalr` at 0x10029120 calls __nwa__GUi with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002917c calls XSGIvcQueryChannelInfo with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=?, a3=sp-96.
  The `jalr` at 0x10029198 calls sprintf with a0=sp-88, a1=0x1005153c, a2=?, a3=?.
  The `jalr` at 0x100291bc calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+196], a1=sp-88, a2=sym(changeChannelCallback__18ChannelFormClassUISGP10_WidgetRecPvT2), a3=?, a4=-0x1.
  The `jalr` at 0x100291cc calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10029204 calls set__12VkOptionMenuGP10VkMenuItem with a0=[a0+196], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002922c calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10044380, a2=?, a3=?.
  The `jalr` at 0x1002923c calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002924c calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x10051538, a2=?, a3=?.
  The `jalr` at 0x10029258 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10029264 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `blez` branch at 0x10029134 targets 0x100291f8, is taken when a0(=[a0+212]) <= 0 (signed), and falls through when a0(=[a0+212]) > 0 (signed).
  The `beq` branch at 0x10029184 targets 0x10029224, is taken when v0(=ret(XSGIvcQueryChannelInfo)) == 0, and falls through when v0(=ret(XSGIvcQueryChannelInfo)) != 0.
  The `bne` branch at 0x100291e0 targets 0x10029160, is taken when s0(?) < a1(=[a0+212]) (signed), and falls through when s0(?) >= a1(=[a0+212]) (signed).
  The return at 0x1002921c has v0 = ret(set__12VkOptionMenuGP10VkMenuItem).

- `populateSyncWithChannel__16ChannelFormClassGiPC17XSGIvcChannelInfo` in `usr/bin/X11/xsetmon` at 0x10029270 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10029270-0x100295d4 (868 bytes).
  It occupies 868 bytes.
  The `lw` at 0x10029270 loads 4 bytes from a0 (arg0 at entry) +0x68.
  The `lw` at 0x1002928c loads 4 bytes from a2 (arg2 at entry) +0x188.
  The `lw` at 0x100292d0 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0x100292ec loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x10029308 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x10029324 loads 4 bytes from a0 (arg0 at entry) +0x24.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x100, including `lw` at 0x10029330, `lw` at 0x100293a0, `lw` at 0x10029434.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x104, including `lw` at 0x10029334, `lw` at 0x10029350, `lw` at 0x10029398.
  14 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10029374, `lw` at 0x10029380, `lw` at 0x10029384.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x100, including `sw` at 0x100293b0, `sw` at 0x100293e4, `sw` at 0x10029410.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x18c, including `lw` at 0x100293b4, `lw` at 0x100293e8, `lw` at 0x10029414.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x190, including `lw` at 0x100293c8, `lw` at 0x100293f8, `lw` at 0x1002953c.
  The `sw` at 0x10029430 stores 4 bytes to a0 (arg0 at entry) +0x104.
  The `sw` at 0x10029438 stores 4 bytes to a0 (arg0 at entry) +0xdc.
  The `lw` at 0x10029464 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `sw` at 0x10029480 stores 4 bytes to ?.
  The `jalr` at 0x100292b8 calls XtManageChild with a0=[a0+104], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100292d4 calls populateSyncPortWithChannel__16ChannelFormClassGiT1P17SyncSelectorFramePC17XSGIvcChannelInfo [0x10043040] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=-0x1, a3=[a0+32], a4=a2 at entry (arg2).
  The `jal` at 0x100292f0 calls populateSyncPortWithChannel__16ChannelFormClassGiT1P17SyncSelectorFramePC17XSGIvcChannelInfo [0x10043040] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=-0x2, a3=[a0+44], a4=a2 at entry (arg2).
  The `jal` at 0x1002930c calls populateSyncPortWithChannel__16ChannelFormClassGiT1P17SyncSelectorFramePC17XSGIvcChannelInfo [0x10043040] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=-0x3, a3=[a0+40], a4=a2 at entry (arg2).
  The `jal` at 0x10029328 calls populateSyncPortWithChannel__16ChannelFormClassGiT1P17SyncSelectorFramePC17XSGIvcChannelInfo [0x10043040] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=-0x4, a3=[a0+36], a4=a2 at entry (arg2).
  The `jalr` at 0x10029390 calls (unknown callee) with a0=?, a1=0x3, a2=?, a3=?.
  The `jalr` at 0x100293a8 calls __dl__GPv with a0=[a0+260], a1=?, a2=?, a3=?.
  The `jalr` at 0x10029428 calls __nwa__GUi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10029468 calls __ct__17SyncSelectorFrameGPCcP10_WidgetRec [0x100379d0] with a0=ret(__nw__GUi), a1=sp-304, a2=[a0+156], a3=?, a6=0x1.
  The `jalr` at 0x1002949c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100294b0 calls sprintf with a0=sp-192, a1=0x100514a0, a2=?, a3=?.
  The `jalr` at 0x100294bc calls XmStringCreateSimple with a0=sp-192, a1=?, a2=?, a3=?.
  The `jalr` at 0x100294d4 calls baseWidget__11VkComponentCGv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100294ec calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x7, a2=ret(XmStringCreateSimple), a3=0x0.
  The `jalr` at 0x100294f8 calls XmStringFree with a0=ret(XmStringCreateSimple), a1=?, a2=?, a3=?.
  The `jal` at 0x1002951c calls populateSyncPortWithChannel__16ChannelFormClassGiT1P17SyncSelectorFramePC17XSGIvcChannelInfo [0x10043040] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=a2 at entry (arg2).
  The `jalr` at 0x1002955c calls sprintf with a0=sp-304, a1=0x10044040, a2=?, a3=?.
  The `jalr` at 0x1002956c calls __nw__GUi with a0=0x3c, a1=?, a2=?, a3=?.
  The `jalr` at 0x100295bc calls XtUnmanageChild with a0=[a0+104], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x100292ac targets 0x100295b8, is taken when at(=[a2+392]) == 0, and falls through when at(=[a2+392]) != 0.
  The `blez` branch at 0x10029340 targets 0x100293a4, is taken when v0(=[a0+256]) <= 0 (signed), and falls through when v0(=[a0+256]) > 0 (signed).
  The `beq` branch at 0x1002934c targets 0x10029370 and is always taken.
  The `beq` branch at 0x10029368 targets 0x100293a4, is taken when s0(?) >= v0(=[a0+256]) (signed), and falls through when s0(?) < v0(=[a0+256]) (signed).
  The `beq` branch at 0x10029378 targets 0x10029360, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1002939c targets 0x10029360 and is always taken.
  The `blez` branch at 0x100293c0 targets 0x10029424, is taken when a0(=[a2+396]) <= 0 (signed), and falls through when a0(=[a2+396]) > 0 (signed).
  The `bltz` branch at 0x100293d8 targets 0x100293ec, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `beq` branch at 0x100293f0 targets 0x10029424, is taken when s0(?) >= a0(=[a2+396]) (signed), and falls through when s0(?) < a0(=[a2+396]) (signed).
  The `bltz` branch at 0x10029404 targets 0x10029418, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `bne` branch at 0x1002941c targets 0x100293c8, is taken when s0(?) < a0(=[a2+396]) (signed), and falls through when s0(?) >= a0(=[a2+396]) (signed).
  The `blez` branch at 0x10029440 targets 0x10029588, is taken when a0(=[a2+396]) <= 0 (signed), and falls through when a0(=[a2+396]) > 0 (signed).
  The `beq` branch at 0x10029450 targets 0x1002953c and is always taken.
  The `beq` branch at 0x10029534 targets 0x10029588, is taken when s0(?) >= a0(=[a2+396]) (signed), and falls through when s0(?) < a0(=[a2+396]) (signed).
  The `bltz` branch at 0x10029548 targets 0x1002952c, is taken when a5(?) < 0 (signed), and falls through when a5(?) >= 0 (signed).
  The `bne` branch at 0x10029578 targets 0x10029458, is taken when v0(=ret(__nw__GUi)) != 0, and falls through when v0(=ret(__nw__GUi)) == 0.
  The `beq` branch at 0x10029580 targets 0x10029478 and is always taken.
  The `beq` branch at 0x100295cc targets 0x10029588 and is always taken.
  The return at 0x100295b0 has v0 = one of ret(__nwa__GUi), ?, ret(XtUnmanageChild).
  The instructions from 0x10029354 to 0x1002935c are not reached by any path from the entry, and their branches are not listed.

- `className__20GammaAssignmentClassGv` in `usr/bin/X11/xsetmon` at 0x100295e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100295e0-0x100295f8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x100295ec loads 4 bytes from abs 0x1005091c.
  The return at 0x100295f0 has v0 = 0x10045050.

- `__ct__19SyncSelectorFrameUIGPCc` in `usr/bin/X11/xsetmon` at 0x10029600 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10029600-0x10029658 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0x10029630 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x1002963c stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `sw` at 0x10029648 stores 4 bytes to a0 (arg0 at entry) +0x28.
  The `jalr` at 0x10029620 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10029650 has v0 = a0.

- `className__18XSetmonWindowClassGv` in `usr/bin/X11/xsetmon` at 0x10029660 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10029660-0x10029678 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1002966c loads 4 bytes from abs 0x10050920.
  The return at 0x10029670 has v0 = 0x100488c0.

- `className__19ServerInfoFormClassGv` in `usr/bin/X11/xsetmon` at 0x10029680 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10029680-0x10029698 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1002968c loads 4 bytes from abs 0x1005091c.
  The return at 0x10029690 has v0 = 0x10045f38.

- `pop__12MyTabbedDeckGP16VkCallbackObjectPvT2` in `usr/bin/X11/xsetmon` at 0x100296a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100296a0-0x100296f0 (80 bytes).
  It occupies 80 bytes.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0x100296c0, `lw` at 0x100296d0.
  The `sw` at 0x100296cc stores 4 bytes to a0 (arg0 at entry) +0x28.
  The `lw` at 0x100296dc loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `jalr` at 0x100296d8 calls pop__6VkDeckGP10_WidgetRecQ2_6VkDeck15TransitionStyle with a0=[a0+32], a1=[a3+4], a2=0x0, a3=a3 at entry (arg3), a5=a0 at entry (arg0), a6=[a3+4].
  The `beq` branch at 0x100296b8 targets 0x100296e0, is taken when a3 == 0, and falls through when a3 != 0.
  The `beq` branch at 0x100296c4 targets 0x100296e0, is taken when a6(=[a3+4]) == 0, and falls through when a6(=[a3+4]) != 0.
  The return at 0x100296e8 has v0 = one of ?, ret(pop__6VkDeckGP10_WidgetRecQ2_6VkDeck15TransitionStyle).

- `CreateGammaAssignmentClass__20GammaAssignmentClassSGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x100296f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100296f0-0x10029770 (128 bytes).
  It occupies 128 bytes.
  The `jalr` at 0x10029718 calls __nw__GUi with a0=0x44, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10029740 calls __ct__20GammaAssignmentClassGPCcP10_WidgetRec [0x1003ea40] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x10029724 targets 0x1002975c, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x10029754 has v0 = ret(__nw__GUi).
  The return at 0x10029768 has v0 = 0x0.

- `__dt__7MMatrixGv` in `usr/bin/X11/xsetmon` at 0x10029770 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10029770-0x100297d0 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x100297a4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jal` at 0x100297a0 calls __dt__9MMdtArrayGv [0x100340b0] with a0=[a0], a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100297b8 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002978c targets 0x100297c0, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x100297b0 targets 0x100297c0, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x100297c8 has v0 = one of 0x2f18c, ret(__dt__9MMdtArrayGv), ret(__dl__GPv).

- `__ct__7MMatrixGv` in `usr/bin/X11/xsetmon` at 0x100297d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100297d0-0x10029860 (144 bytes).
  It occupies 144 bytes.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `sw` at 0x10029834, `sw` at 0x1002984c.
  The `jalr` at 0x100297f8 calls __nw__GUi with a0=0x10, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002981c calls __ct__9MMdtArrayGiT1 [0x1002d5c0] with a0=ret(__nw__GUi), a1=0x0, a2=0x0, a3=?.
  The `beq` branch at 0x10029804 targets 0x10029844, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x1002983c has v0 = a0.
  The return at 0x10029858 has v0 = a0.

- `__dt__16GainControlClassGv` in `usr/bin/X11/xsetmon` at 0x10029860 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10029860-0x100298c8 (104 bytes).
  It occupies 104 bytes.
  The `sw` at 0x10029890 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10029898 calls __dt__18GainControlClassUIGv [0x1003e160] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x100298b0 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10029880 targets 0x100298b8, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x100298a8 targets 0x100298b8, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x100298c0 has v0 = one of ?, ret(__dt__18GainControlClassUIGv), ret(__dl__GPv).

- `createSyncFormats__19SyncSelectorFrameUIGv` in `usr/bin/X11/xsetmon` at 0x100298d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100298d0-0x100299b8 (232 bytes).
  It occupies 232 bytes.
  The `sw` at 0x10029900 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `sw` at 0x10029914 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `lw` at 0x10029940 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10029944, `lw` at 0x10029954.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10029950, `sw` at 0x10029958, `sw` at 0x10029964.
  The `lw` at 0x10029970 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jalr` at 0x10029904 calls __vec_new2 with a0=0x0, a1=[0x10051d08], a2=0x10, a3=sym(__ct__25SyncFormatDescriptorClassGv).
  The `jalr` at 0x1002996c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+40], a1=?, a2=sym(changeSyncFormatCallback__19SyncSelectorFrameUISGP10_WidgetRecPvT2), a3=?, a4=-0x1.
  The `beq` branch at 0x10029910 targets 0x100299a4, is taken when v1(=[0x10051d08]) == 0, and falls through when v1(=[0x10051d08]) != 0.
  The `bne` branch at 0x10029988 targets 0x10029940, is taken when s2(?) < t8(=[0x10051d08]) (unsigned), and falls through when s2(?) >= t8(=[0x10051d08]) (unsigned).
  The return at 0x100299b0 has v0 = one of ret(__vec_new2), ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).

- `createDialog__12StereoDialogGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x100299c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100299c0-0x10029c78 (696 bytes).
  It occupies 696 bytes.
  3 such `lw` accesses load 4 bytes from sym(xmRowColumnWidgetClass) +0x0, including `lw` at 0x10029a14, `lw` at 0x10029b24, `lw` at 0x10029b4c.
  The `lw` at 0x10029a44 loads 4 bytes from sym(xmMessageBoxWidgetClass) +0x0.
  The `lw` at 0x10029b08 loads 4 bytes from sym(xmFrameWidgetClass) +0x0.
  2 such `lw` accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0, including `lw` at 0x10029b70, `lw` at 0x10029c54.
  2 such `lw` accesses load 4 bytes from sym(xmToggleButtonWidgetClass) +0x0, including `lw` at 0x10029bd4, `lw` at 0x10029c0c.
  The `sw` at 0x10029bf4 stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `lw` at 0x10029c20 loads 4 bytes from a0 (arg0 at entry) +0x5c.
  The `sw` at 0x10029c24 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `jalr` at 0x100299e8 calls createDialog__15VkGenericDialogGP10_WidgetRec with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10029a18 calls XtVaCreateManagedWidget with a0=0x10049040, a1=[sym(xmRowColumnWidgetClass)], a2=ret(createDialog__15VkGenericDialogGP10_WidgetRec), a3=-0xb, a4=0x2, a5=0x0.
  The `jalr` at 0x10029a48 calls XtVaCreateManagedWidget with a0=0x10049050, a1=[sym(xmMessageBoxWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x9b, a4=0x4, a5=0x0.
  The `jalr` at 0x10029a5c calls XmMessageBoxGetChild with a0=ret(XtVaCreateManagedWidget), a1=0x2, a2=?, a3=?.
  The `jalr` at 0x10029a68 calls XtUnmanageChild with a0=ret(XmMessageBoxGetChild), a1=?, a2=?, a3=?.
  The `jalr` at 0x10029a78 calls XmMessageBoxGetChild with a0=ret(XtVaCreateManagedWidget), a1=0x7, a2=?, a3=?.
  The `jalr` at 0x10029a84 calls XtUnmanageChild with a0=ret(XmMessageBoxGetChild), a1=?, a2=?, a3=?.
  The `jalr` at 0x10029a94 calls XmMessageBoxGetChild with a0=ret(XtVaCreateManagedWidget), a1=0x4, a2=?, a3=?.
  The `jalr` at 0x10029aa0 calls XtUnmanageChild with a0=ret(XmMessageBoxGetChild), a1=?, a2=?, a3=?.
  The `jalr` at 0x10029ab0 calls XmMessageBoxGetChild with a0=ret(XtVaCreateManagedWidget), a1=0x3, a2=?, a3=?.
  The `jalr` at 0x10029abc calls XtUnmanageChild with a0=ret(XmMessageBoxGetChild), a1=?, a2=?, a3=?.
  The `jalr` at 0x10029acc calls XmMessageBoxGetChild with a0=ret(XtVaCreateManagedWidget), a1=0xa, a2=?, a3=?.
  The `jalr` at 0x10029ad8 calls XtUnmanageChild with a0=ret(XmMessageBoxGetChild), a1=?, a2=?, a3=?.
  The `jalr` at 0x10029b04 calls XtVaCreateManagedWidget with a0=0x10051910, a1=[sym(xmFrameWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0xa7, a4=0x5, a5=-0x23, a6=0x2, a7=0x0.
  The `jalr` at 0x10029b28 calls XtVaCreateManagedWidget with a0=0x10049060, a1=[sym(xmRowColumnWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=0x0.
  The `jalr` at 0x10029b50 calls XtVaCreateManagedWidget with a0=0x10049070, a1=[sym(xmRowColumnWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0xb, a4=0x2, a5=0x0.
  The `jalr` at 0x10029b74 calls XtVaCreateManagedWidget with a0=0x10049080, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=0x0.
  The `jalr` at 0x10029b90 calls XmCreateRadioBox with a0=ret(XtVaCreateManagedWidget), a1=0x10049098, a2=0x0, a3=0x0.
  The `jalr` at 0x10029bac calls XtVaSetValues with a0=ret(XmCreateRadioBox), a1=-0xb, a2=0x2, a3=0x0.
  The `jalr` at 0x10029bb8 calls XtManageChild with a0=ret(XmCreateRadioBox), a1=?, a2=?, a3=?.
  The `jalr` at 0x10029bd8 calls XtVaCreateManagedWidget with a0=0x100490a8, a1=[sym(xmToggleButtonWidgetClass)], a2=ret(XmCreateRadioBox), a3=0x0.
  The `jalr` at 0x10029bf0 calls XmToggleButtonSetState with a0=ret(XtVaCreateManagedWidget), a1=0x1, a2=0x0, a3=?.
  The `jalr` at 0x10029c10 calls XtVaCreateManagedWidget with a0=0x100490b8, a1=[sym(xmToggleButtonWidgetClass)], a2=ret(XmCreateRadioBox), a3=0x0.
  The `jalr` at 0x10029c28 calls XmStringCreateLtoR with a0=[a0+92], a1=sym(_XmStrings)+12544, a2=?, a3=?.
  The `jalr` at 0x10029c58 calls XtVaCreateManagedWidget with a0=0x100490c8, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x7, a4=ret(XmStringCreateLtoR), a5=0x0.
  The return at 0x10029c70 has v0 = ret(createDialog__15VkGenericDialogGP10_WidgetRec).

- `loadData__19ServerInfoFormClassGP8__file_s` in `usr/bin/X11/xsetmon` at 0x10029c80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10029c80-0x10029d04 (132 bytes).
  It occupies 132 bytes.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10029ca8, `lw` at 0x10029cd0.
  The `jalr` at 0x10029cbc calls fread with a0=[sym(xsetmonApp)]+280, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10029cdc calls fread with a0=[sym(xsetmonApp)]+284, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jal` at 0x10029cec calls setSyncOptionMenus__19ServerInfoFormClassGv [0x10038a90] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x10029cfc has v0 = ret(setSyncOptionMenus__19ServerInfoFormClassGv).

- `doSetVerticalPhase__18ChannelFormClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10029d10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10029d10-0x10029d18 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10029d10 has v0 = ?.

- `doDragCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi` in `usr/bin/X11/xsetmon` at 0x10029d20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10029d20-0x10029db8 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x10029d70 loads 4 bytes from ?.
  The `jalr` at 0x10029d5c calls XtVaGetValues with a0=a0 at entry (arg0), a1=-0xa, a2=sp-64, a3=0x0.
  The `jalr` at 0x10029d6c calls XmToggleButtonGetState with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10029d88 calls doDragRegionCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi [0x1003aee0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10029da8 calls doDragScalarCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi [0x100307b0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10029d7c targets 0x10029da4, is taken when v0(=ret(XmToggleButtonGetState)) == 0, and falls through when v0(=ret(XmToggleButtonGetState)) != 0.
  The `beq` branch at 0x10029db0 targets 0x10029d94 and is always taken.
  The return at 0x10029d9c has v0 = one of ret(doDragRegionCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi), ret(doDragScalarCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi).

- `saveData__19ServerInfoFormClassGP8__file_s` in `usr/bin/X11/xsetmon` at 0x1002a250 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002a250-0x1002a2c4 (116 bytes).
  It occupies 116 bytes.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1002a278, `lw` at 0x1002a29c.
  The `jalr` at 0x1002a288 calls fwrite with a0=[sym(xsetmonApp)]+280, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x1002a2a8 calls fwrite with a0=[sym(xsetmonApp)]+284, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The return at 0x1002a2bc has v0 = ret(fwrite).

- `className__12MyTabbedDeckGv` in `usr/bin/X11/xsetmon` at 0x1002a2d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002a2d0-0x1002a2e8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1002a2dc loads 4 bytes from abs 0x10050920.
  The return at 0x1002a2e0 has v0 = 0x10049580.

- `__dt__23SetmonMasterFormClassUIGv` in `usr/bin/X11/xsetmon` at 0x1002a2f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002a2f0-0x1002a3cc (220 bytes).
  It occupies 220 bytes.
  The `sw` at 0x1002a318 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x1002a320 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0x1002a32c loads 4 bytes from [a0+32] +0x8.
  The `lw` at 0x1002a330 loads 4 bytes from [[a0+32]+8] +0x14.
  The `lw` at 0x1002a334 loads 4 bytes from [[a0+32]+8] +0xc.
  The `lw` at 0x1002a348 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x1002a354 loads 4 bytes from [a0+36] +0x8.
  The `lw` at 0x1002a358 loads 4 bytes from [[a0+36]+8] +0x14.
  The `lw` at 0x1002a35c loads 4 bytes from [[a0+36]+8] +0xc.
  The `lw` at 0x1002a370 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x1002a37c loads 4 bytes from [a0+40] +0x8.
  The `lw` at 0x1002a380 loads 4 bytes from [[a0+40]+8] +0x14.
  The `lw` at 0x1002a384 loads 4 bytes from [[a0+40]+8] +0xc.
  The `jalr` at 0x1002a33c calls (unknown callee) with a0=([[[a0+32]+8]+12] + [a0+32]), a1=0x3, a2=a2 at entry (arg2), a3=[a0+32].
  The `jalr` at 0x1002a364 calls (unknown callee) with a0=([[[a0+36]+8]+12] + [a0+36]), a1=0x3, a2=?, a3=[a0+36].
  The `jalr` at 0x1002a38c calls (unknown callee) with a0=([[[a0+40]+8]+12] + [a0+40]), a1=0x3, a2=?, a3=[a0+40].
  The `jalr` at 0x1002a39c calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1002a3b4 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002a308 targets 0x1002a3bc, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1002a324 targets 0x1002a348, is taken when a3(=[a0+32]) == 0, and falls through when a3(=[a0+32]) != 0.
  The `beq` branch at 0x1002a34c targets 0x1002a370, is taken when a3(=[a0+36]) == 0, and falls through when a3(=[a0+36]) != 0.
  The `beq` branch at 0x1002a374 targets 0x1002a39c, is taken when a3(=[a0+40]) == 0, and falls through when a3(=[a0+40]) != 0.
  The `beq` branch at 0x1002a3ac targets 0x1002a3bc, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x1002a3c4 has v0 = one of ?, ret(__dt__11VkComponentGv), ret(__dl__GPv).

- `doDownloadfbConfigButton__27FormatCombinationListsClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1002a3d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002a3d0-0x1002a5d8 (520 bytes).
  It occupies 520 bytes.
  The `lw` at 0x1002a404 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x1002a418 loads 4 bytes from ?.
  The `lw` at 0x1002a438 loads 4 bytes from table(0x1004cf5c) +0x0.
  The `sw` at 0x1002a444 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa4, including `lw` at 0x1002a468, `lw` at 0x1002a490, `lw` at 0x1002a50c.
  4 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1002a498, `lw` at 0x1002a4fc, `lw` at 0x1002a51c.
  The `lbu` at 0x1002a49c loads 1 byte from [sym(xsetmonApp)] +0x84.
  The `lw` at 0x1002a4b4 loads 4 bytes from ret(getTheQuestionDialog__Gv) +0x8.
  The `lw` at 0x1002a4c4 loads 4 bytes from [ret(getTheQuestionDialog__Gv)+8] +0x110.
  The `lw` at 0x1002a4d0 loads 4 bytes from [ret(getTheQuestionDialog__Gv)+8] +0x108.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x1002a528, `lw` at 0x1002a550.
  The `lw` at 0x1002a53c loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `lw` at 0x1002a578 loads 4 bytes from ret(getTheWarningDialog__Gv) +0x8.
  The `lw` at 0x1002a588 loads 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x110.
  The `lw` at 0x1002a594 loads 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x108.
  The `jalr` at 0x1002a400 calls XmListGetSelectedPos with a0=[a0+68], a1=sp-96, a2=sp-92, a3=a3 at entry (arg3).
  The `jalr` at 0x1002a440 calls VkGetResource__GPCcT1 with a0=0x10044a38, a1=0x10044a50, a2=?, a3=?.
  The `jalr` at 0x1002a454 calls strlen with a0=ret(VkGetResource__GPCcT1), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002a464 calls strlen with a0=[a0+164], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002a474 calls __nwa__GUi with a0=(ret(strlen) + ret(strlen))+10, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002a48c calls sprintf with a0=ret(__nwa__GUi), a1=?, a2=[a0+164], a3=?.
  The `jalr` at 0x1002a4ac calls getTheQuestionDialog__Gv with a0=?, a1=[[sym(xsetmonApp)]+132]:1, a2=?, a3=?.
  The `jalr` at 0x1002a4e0 calls (unknown callee) with a0=([[ret(getTheQuestionDialog__Gv)+8]+264] + ret(getTheQuestionDialog__Gv)), a1=ret(__nwa__GUi), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x1002a4f8 calls checkPriv__7xsetmonGv [0x10041490] with a0=[sym(xsetmonApp)], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002a510 calls strcpy with a0=sp-88, a1=[a0+164], a2=?, a3=?.
  The `jalr` at 0x1002a538 calls XSGIvcSetPlatformParameter with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=0x0, a4=sp-88, a5=0x24.
  The `jalr` at 0x1002a54c calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002a558 calls getTheWarningDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002a570 calls VkGetResource__GPCcT1 with a0=0x100449f8, a1=0x100449f8, a2=?, a3=?.
  The `jalr` at 0x1002a5a0 calls (unknown callee) with a0=([[ret(getTheWarningDialog__Gv)+8]+264] + ret(getTheWarningDialog__Gv)), a1=ret(VkGetResource__GPCcT1), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1002a5ac calls XtFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002a5bc calls __dla__GPv with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002a40c targets 0x1002a5c4, is taken when (v0(=ret(XmListGetSelectedPos)) & 0xff) == 0, and falls through when (v0(=ret(XmListGetSelectedPos)) & 0xff) != 0.
  The `beq` branch at 0x1002a4a0 targets 0x1002a5a8, is taken when a1(=[[sym(xsetmonApp)]+132]:1) == 0, and falls through when a1(=[[sym(xsetmonApp)]+132]:1) != 0.
  The `beq` branch at 0x1002a4e8 targets 0x1002a5ac, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x1002a500 targets 0x1002a5ac, is taken when v0(=ret(checkPriv__7xsetmonGv)) == 0, and falls through when v0(=ret(checkPriv__7xsetmonGv)) != 0.
  The return at 0x1002a5d0 has v0 = one of ?, ret(__dla__GPv).

- `className__23AboutXsetmonFormClassUIGv` in `usr/bin/X11/xsetmon` at 0x1002a5e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002a5e0-0x1002a5f8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1002a5ec loads 4 bytes from abs 0x1005091c.
  The return at 0x1002a5f0 has v0 = 0x10043f08.

- `populateRectangleWithChannel__16ChannelFormClassGiPC17XSGIvcChannelInfo` in `usr/bin/X11/xsetmon` at 0x1002a600 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002a600-0x1002a7ac (428 bytes).
  It occupies 428 bytes.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1002a62c, `lw` at 0x1002a650.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x1002a644, `lw` at 0x1002a688.
  The `lw` at 0x1002a654 loads 4 bytes from [sym(xsetmonApp)] +0x8c.
  The `lw` at 0x1002a660 loads 4 bytes from [sym(xsetmonApp)] +0x90.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0x1002a67c, `lwc1` at 0x1002a720.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lwc1` at 0x1002a680, `lwc1` at 0x1002a73c.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0x1002a684, `lwc1` at 0x1002a6e8.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0x1002a68c, `lwc1` at 0x1002a704.
  The `lw` at 0x1002a690 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x50, including `lw` at 0x1002a6c0, `lw` at 0x1002a760.
  The `lw` at 0x1002a6d8 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `lw` at 0x1002a6f4 loads 4 bytes from a0 (arg0 at entry) +0xbc.
  The `lw` at 0x1002a710 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lw` at 0x1002a72c loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `jalr` at 0x1002a640 calls XSGIvcQueryVersion with a0=[[sym(xsetmonApp)]+312], a1=sp-80, a2=sp-76, a3=a3 at entry (arg3).
  The `jalr` at 0x1002a6b4 calls XSGIvcQueryBestChannelRectangle with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=a1 at entry (arg1), a3=[a2+4], a4=[a2+12], a5=sp-56, a7=[sym(xsetmonApp)].
  The `jalr` at 0x1002a6c8 calls XtManageChild with a0=[a0+80], a1=?, a2=?, a3=?.
  The `jal` at 0x1002a6d4 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+184], a1=?, a2=?, a3=?.
  The `jal` at 0x1002a6e4 calls __as__9EZWrapperGf [0x1001fea0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?; fp f13=[a2+4].
  The `jal` at 0x1002a6f0 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+188], a1=?, a2=?, a3=?.
  The `jal` at 0x1002a700 calls __as__9EZWrapperGf [0x1001fea0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?; fp f13=[a2+8].
  The `jal` at 0x1002a70c calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+176], a1=?, a2=?, a3=?.
  The `jal` at 0x1002a71c calls __as__9EZWrapperGf [0x1001fea0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?; fp f13=[a2+12].
  The `jal` at 0x1002a728 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+180], a1=?, a2=?, a3=?.
  The `jal` at 0x1002a738 calls __as__9EZWrapperGf [0x1001fea0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?; fp f13=[a2+16].
  The `jalr` at 0x1002a75c calls XtUnmanageChild with a0=[a0+80], a1=?, a2=?, a3=?, a7=[sym(xsetmonApp)].
  The `jalr` at 0x1002a770 calls XtUnmanageChild with a0=[a0+80], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002a78c calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10044020, a2=?, a3=?, a7=sym(xsetmonApp).
  The `jalr` at 0x1002a798 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002a7a4 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002a648 targets 0x1002a780, is taken when v0(=ret(XSGIvcQueryVersion)) == 0, and falls through when v0(=ret(XSGIvcQueryVersion)) != 0.
  The `beq` branch at 0x1002a65c targets 0x1002a678, is taken when a0(=[[sym(xsetmonApp)]+140]) >= 0x2 (signed), and falls through when a0(=[[sym(xsetmonApp)]+140]) < 0x2 (signed).
  The `bne` branch at 0x1002a668 targets 0x1002a75c, is taken when a0(=[[sym(xsetmonApp)]+140]) != t0(=0x1), and falls through when a0(=[[sym(xsetmonApp)]+140]) == t0(=0x1).
  The `blez` branch at 0x1002a670 targets 0x1002a75c, is taken when t1(=[[sym(xsetmonApp)]+144]) <= 0 (signed), and falls through when t1(=[[sym(xsetmonApp)]+144]) > 0 (signed).
  The `beq` branch at 0x1002a6bc targets 0x1002a76c, is taken when v0(=ret(XSGIvcQueryBestChannelRectangle)) == 0, and falls through when v0(=ret(XSGIvcQueryBestChannelRectangle)) != 0.
  The `beq` branch at 0x1002a764 targets 0x1002a744 and is always taken.
  The `beq` branch at 0x1002a778 targets 0x1002a744 and is always taken.
  The return at 0x1002a750 has v0 = one of ret(__as__9EZWrapperGf), ret(XtUnmanageChild).
  The instructions from 0x1002a758 to 0x1002a758 are not reached by any path from the entry, and their branches are not listed.

- `closeCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x1002a7b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002a7b0-0x1002a7f4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1002a7b4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1002a7c0 loads 4 bytes from [a1+8] +0x180.
  The `lw` at 0x1002a7cc loads 4 bytes from [a1+8] +0x188.
  The `jalr` at 0x1002a7dc calls (unknown callee) with a0=([[a1+8]+384] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x2e14c.
  The return at 0x1002a7ec has v0 = ret(?).

- `DisplayfbConfig__19StatisticsFormClassGPCc` in `usr/bin/X11/xsetmon` at 0x1002a800 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002a800-0x1002a8dc (220 bytes).
  It occupies 220 bytes.
  The `sb` at 0x1002a858 stores 1 byte to ret(strchr) +0x0.
  The `lw` at 0x1002a884 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `lw` at 0x1002a8a0 loads 4 bytes from a0 (arg0 at entry) +0xbc.
  The `jalr` at 0x1002a824 calls strcpy with a0=sp-64, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002a834 calls strchr with a0=sp-64, a1=0x78, a2=?, a3=?.
  The `jalr` at 0x1002a854 calls sprintf with a0=sp-48, a1=0x100517b4, a2=ret(strchr)+1, a3=?.
  The `jalr` at 0x1002a864 calls strcat with a0=sp-64, a1=0x100517c0, a2=?, a3=?.
  The `jalr` at 0x1002a874 calls strcat with a0=sp-48, a1=0x100517c0, a2=?, a3=?.
  The `jal` at 0x1002a880 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+184], a1=?, a2=?, a3=?.
  The `jal` at 0x1002a890 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=sp-64, a2=?, a3=?.
  The `jal` at 0x1002a89c calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+188], a1=?, a2=?, a3=?.
  The `jal` at 0x1002a8b0 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=sp-48, a2=?, a3=?.
  The `jalr` at 0x1002a8cc calls sprintf with a0=sp-48, a1=0x100517b8, a2=?, a3=?.
  The `beq` branch at 0x1002a83c targets 0x1002a8c8, is taken when v0(=ret(strchr)) == 0, and falls through when v0(=ret(strchr)) != 0.
  The `beq` branch at 0x1002a8d4 targets 0x1002a860 and is always taken.
  The return at 0x1002a8c0 has v0 = ret(__as__9EZWrapperGPCc).

- `DisplayCombination__28CombinationContentsListClassGPCc` in `usr/bin/X11/xsetmon` at 0x1002a8e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002a8e0-0x1002aafc (540 bytes).
  It occupies 540 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x1002a910, `lw` at 0x1002a9ec.
  4 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1002a930, `lw` at 0x1002a950, `lw` at 0x1002a988.
  The `lw` at 0x1002a938 loads 4 bytes from [sym(xsetmonApp)] +0x138.
  The `lw` at 0x1002a948 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `sw` at 0x1002a94c stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `lw` at 0x1002a954 loads 4 bytes from [sym(xsetmonApp)] +0x8.
  The `lw` at 0x1002a958 loads 4 bytes from [[sym(xsetmonApp)]+8] +0x14c.
  The `lw` at 0x1002a95c loads 4 bytes from [[sym(xsetmonApp)]+8] +0x144.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x1002a970, `lw` at 0x1002a994, `lw` at 0x1002a9d4.
  The `sw` at 0x1002a984 stores 4 bytes to a0 (arg0 at entry) +0x34.
  2 such `sb` accesses store 1 byte to [sym(xsetmonApp)] +0xcc, including `sb` at 0x1002a990, `sb` at 0x1002aa1c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x34, including `lw` at 0x1002a9c8, `lw` at 0x1002aa8c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1002a9d0, `sw` at 0x1002aaa0.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1002aa0c, `lw` at 0x1002aa20, `lw` at 0x1002aa24.
  The `lbu` at 0x1002aa10 loads 1 byte from [sym(xsetmonApp)] +0xcc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x1002aa88, `lw` at 0x1002aaf0.
  The `jal` at 0x1002a908 calls DeleteCombination__28CombinationContentsListClassGv [0x10038440] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002a920 calls XFree with a0=[a0+48], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002a944 calls XSGIvcListVideoFormatsInCombination with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=a1 at entry (arg1), a3=a0+56.
  The `jalr` at 0x1002a964 calls (unknown callee) with a0=([[[sym(xsetmonApp)]+8]+324] + [sym(xsetmonApp)]), a1=0x0, a2=[sym(xsetmonApp)], a3=?.
  The `jalr` at 0x1002a974 calls __nwa__GUi with a0=([a0+56] << 0x2), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002aa00 calls VkGetResource__GPCcT1 with a0=0x10044870, a1=0x10044870, a2=?, a3=?.
  The `jalr` at 0x1002aa40 calls sprintf with a0=sp-384, a1=ret(VkGetResource__GPCcT1), a2=?, a3=?.
  The `jalr` at 0x1002aa4c calls strlen with a0=sp-384, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002aa60 calls sprintf with a0=(ret(strlen) + sp-384), a1=0x10051540, a2=?, a3=?.
  The `jalr` at 0x1002aa70 calls XmStringCreateLtoR with a0=sp-384, a1=sym(_XmStrings)+12544, a2=?, a3=?.
  The `jalr` at 0x1002aa84 calls XmListAddItem with a0=[a0+40], a1=ret(XmStringCreateLtoR), a2=0x0, a3=?.
  The `jalr` at 0x1002aaec calls XmListSelectPos with a0=[a0+40], a1=0x1, a2=0x1, a3=?.
  The `beq` branch at 0x1002a914 targets 0x1002a928, is taken when a0(=[a0+48]) == 0, and falls through when a0(=[a0+48]) != 0.
  The `blez` branch at 0x1002a9b0 targets 0x1002aab0, is taken when a1(=[a0+56]) <= 0 (signed), and falls through when a1(=[a0+56]) > 0 (signed).
  The `beq` branch at 0x1002a9c0 targets 0x1002a9ec and is always taken.
  The `beq` branch at 0x1002a9e4 targets 0x1002aaa4, is taken when s4(?) >= v0(=[a0+56]) (signed), and falls through when s4(?) < v0(=[a0+56]) (signed).
  The `beq` branch at 0x1002aa28 targets 0x1002a9c8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x1002aa30 targets 0x1002a9c8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1002aa9c targets 0x1002a9d4 and is always taken.
  The `beq` branch at 0x1002aaa8 targets 0x1002aae4, is taken when s5(?) == a2(=0x1), and falls through when s5(?) != a2(=0x1).
  The `beq` branch at 0x1002aaf4 targets 0x1002aab4 and is always taken.
  The return at 0x1002aadc has v0 = one of ?, ret(XmListSelectPos).

- `vDrawText__19GammaMapEditorClassCGPCc` in `usr/bin/X11/xsetmon` at 0x1002ab00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002ab00-0x1002aba8 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x1002ab0c loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x1002ab2c loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x1002ab34 loads 4 bytes from [sym(xsetmonApp)] +0x6c.
  The `lhu` at 0x1002ab54 loads 2 bytes from a0 (arg0 at entry) +0x96.
  The `lhu` at 0x1002ab58 loads 2 bytes from a0 (arg0 at entry) +0x94.
  The `lw` at 0x1002ab80 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `jalr` at 0x1002ab3c calls XtWindow with a0=[a0+36], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002ab4c calls strlen with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002ab88 calls XDrawString with a0=[[sym(xsetmonApp)]+108], a1=ret(XtWindow), a2=[a0+60], a3=?, a5=a1 at entry (arg1), a6=ret(strlen), a7=[a0+148]:2.
  The return at 0x1002aba0 has v0 = ret(XDrawString).

- `__dt__12MyTabbedDeckGv` in `usr/bin/X11/xsetmon` at 0x1002abb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002abb0-0x1002ac68 (184 bytes).
  It occupies 184 bytes.
  The `sw` at 0x1002abd8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x1002abe0 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0x1002abec loads 4 bytes from [a0+32] +0x8.
  The `lw` at 0x1002abf0 loads 4 bytes from [[a0+32]+8] +0x14.
  The `lw` at 0x1002abf4 loads 4 bytes from [[a0+32]+8] +0xc.
  The `lw` at 0x1002ac08 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x1002ac14 loads 4 bytes from [a0+36] +0x8.
  The `lw` at 0x1002ac18 loads 4 bytes from [[a0+36]+8] +0x14.
  The `lw` at 0x1002ac1c loads 4 bytes from [[a0+36]+8] +0xc.
  The `jalr` at 0x1002abfc calls (unknown callee) with a0=([[[a0+32]+8]+12] + [a0+32]), a1=0x3, a2=a2 at entry (arg2), a3=[a0+32].
  The `jalr` at 0x1002ac24 calls (unknown callee) with a0=([[[a0+36]+8]+12] + [a0+36]), a1=0x3, a2=?, a3=[a0+36].
  The `jalr` at 0x1002ac34 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1002ac50 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002abc8 targets 0x1002ac58, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1002abe4 targets 0x1002ac08, is taken when a3(=[a0+32]) == 0, and falls through when a3(=[a0+32]) != 0.
  The `beq` branch at 0x1002ac0c targets 0x1002ac34, is taken when a3(=[a0+36]) == 0, and falls through when a3(=[a0+36]) != 0.
  The `beq` branch at 0x1002ac44 targets 0x1002ac5c, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x1002ac60 has v0 = one of ret(__dt__11VkComponentGv), ?.

- `bIsIdentity__7MMatrixCGv` in `usr/bin/X11/xsetmon` at 0x1002ac70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002ac70-0x1002ad20 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0x1002ac70 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x1002ac74 loads 4 bytes from [a0] +0x4.
  The `lw` at 0x1002ac78 loads 4 bytes from [a0] +0x0.
  The `lw` at 0x1002ac84 loads 4 bytes from [a0] +0xc.
  The `ldc1` at 0x1002ac9c loads 8 bytes from abs 0x10051db8.
  The `lwc1` at 0x1002acc8 loads 4 bytes from ?.
  The `bne` branch at 0x1002ac88 targets 0x1002ad18, is taken when a5(=[[a0]+4]) != a6(=[[a0]]), and falls through when a5(=[[a0]+4]) == a6(=[[a0]]).
  The `blez` branch at 0x1002ac90 targets 0x1002ad08, is taken when a6(=[[a0]]) <= 0 (signed), and falls through when a6(=[[a0]]) > 0 (signed).
  The `blez` branch at 0x1002aca0 targets 0x1002acf8, is taken when a5(=[[a0]+4]) <= 0 (signed), and falls through when a5(=[[a0]+4]) > 0 (signed).
  The `beq` branch at 0x1002aca8 targets 0x1002acc0 and is always taken.
  The `beq` branch at 0x1002acb8 targets 0x1002acf8, is taken when a2(?) >= a5(=[[a0]+4]) (signed), and falls through when a2(?) < a5(=[[a0]+4]) (signed).
  The `bne` branch at 0x1002acc0 targets 0x1002acb0, is taken when a2(?) != a4(?), and falls through when a2(?) == a4(?).
  The `bc1f` branch at 0x1002acd8 targets 0x1002ad10, is taken when not (f4 == f5(=0x3ff0000000000000) (c.eq.d at 0x1002acd0)), and falls through when f4 == f5(=0x3ff0000000000000) (c.eq.d at 0x1002acd0).
  The `bc1t` branch at 0x1002ace8 targets 0x1002acb4, is taken when f4 == f6 (c.eq.d at 0x1002ace0), and falls through when not (f4 == f6 (c.eq.d at 0x1002ace0)).
  The `bne` branch at 0x1002ad00 targets 0x1002aca0, is taken when a4(?) < a6(=[[a0]]) (signed), and falls through when a4(?) >= a6(=[[a0]]) (signed).
  The return at 0x1002acf0 has v0 = 0x0.
  The return at 0x1002ad08 has v0 = 0x1.
  The return at 0x1002ad10 has v0 = 0x0.
  The return at 0x1002ad18 has v0 = 0x0.

- `doArmScalarDragCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi` in `usr/bin/X11/xsetmon` at 0x1002ad20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002ad20-0x1002ad90 (112 bytes).
  It occupies 112 bytes.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1002ad60, `lw` at 0x1002ad64, `lw` at 0x1002ad68.
  The `jalr` at 0x1002ad54 calls XtVaGetValues with a0=a0 at entry (arg0), a1=-0xa, a2=sp-48, a3=0x0.
  The `jalr` at 0x1002ad74 calls (unknown callee) with a0=?, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The return at 0x1002ad88 has v0 = ret(?).

- `redraw__19GammaMapEditorClassCGi` in `usr/bin/X11/xsetmon` at 0x1002ad90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002ad90-0x1002ae4c (188 bytes).
  It occupies 188 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9c, including `lw` at 0x1002ad90, `lw` at 0x1002adf4.
  The `lw` at 0x1002add0 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x1002add4 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x1002add8 loads 4 bytes from [sym(xsetmonApp)] +0x6c.
  The `lw` at 0x1002adec loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lw` at 0x1002ae00 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x1002ae04 loads 4 bytes from a0 (arg0 at entry) +0xc0.
  The `lw` at 0x1002ae08 loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `lw` at 0x1002ae10 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `jal` at 0x1002adc0 calls vClearScreen__19GammaMapEditorClassCGv [0x1002de60] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002addc calls XtWindow with a0=[a0+36], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002adfc calls XDrawLines with a0=[[sym(xsetmonApp)]+108], a1=ret(XtWindow), a2=[a0+64], a3=[a0+156], a4=[a0+84], a5=0x0.
  The `jal` at 0x1002ae3c calls vDrawSpline__19GammaMapEditorClassCGv [0x10034750] with a0=a0 at entry (arg0), a1=[a0+176], a2=[a0+180], a3=?.
  The `beq` branch at 0x1002adac targets 0x1002ae2c, is taken when v0(=[a0+156]) == 0, and falls through when v0(=[a0+156]) != 0.
  The `beq` branch at 0x1002adb4 targets 0x1002adc8, is taken when a1 == 0, and falls through when a1 != 0.
  The `bne` branch at 0x1002ae14 targets 0x1002ae2c, is taken when v1(=[a0+192]) != a0(=0x1), and falls through when v1(=[a0+192]) == a0(=0x1).
  The `beq` branch at 0x1002ae1c targets 0x1002ae2c, is taken when a1(=[a0+176]) == 0, and falls through when a1(=[a0+176]) != 0.
  The `bne` branch at 0x1002ae24 targets 0x1002ae3c, is taken when a2(=[a0+180]) != 0, and falls through when a2(=[a0+180]) == 0.
  The `beq` branch at 0x1002ae44 targets 0x1002ae2c and is always taken.
  The return at 0x1002ae34 has v0 = one of [a0+156], ret(XDrawLines), ret(vDrawSpline__19GammaMapEditorClassCGv).

- `nameSelected__30CombinationContentsListClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1002ae50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002ae50-0x1002ae58 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1002ae50 has v0 = ?.

- `CreateGammaMapEditorClass__19GammaMapEditorClassSGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1002ae60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002ae60-0x1002aee0 (128 bytes).
  It occupies 128 bytes.
  The `jalr` at 0x1002ae88 calls __nw__GUi with a0=0xc4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002aeb0 calls __ct__19GammaMapEditorClassGPCcP10_WidgetRec [0x1002ec70] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x1002ae94 targets 0x1002aecc, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x1002aec4 has v0 = ret(__nw__GUi).
  The return at 0x1002aed8 has v0 = 0x0.

- `className__16ChannelFormClassGv` in `usr/bin/X11/xsetmon` at 0x1002aee0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002aee0-0x1002aef8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1002aeec loads 4 bytes from abs 0x1005091c.
  The return at 0x1002aef0 has v0 = 0x10043f78.

- `doButtonQueryBest__16ChannelFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1002af00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002af00-0x1002b05c (348 bytes).
  It occupies 348 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb8, including `lw` at 0x1002af28, `lw` at 0x1002afe0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xbc, including `lw` at 0x1002af44, `lw` at 0x1002affc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb0, including `lw` at 0x1002af68, `lw` at 0x1002b018.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb4, including `lw` at 0x1002af8c, `lw` at 0x1002b034.
  The `lw` at 0x1002afac loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x1002afb0 loads 4 bytes from a0 (arg0 at entry) +0xd8.
  The `lw` at 0x1002afb8 loads 4 bytes from [sym(xsetmonApp)] +0x138.
  The `lw` at 0x1002afc0 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `jal` at 0x1002af24 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+184], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002af30 calls getint__9EZWrapperGv [0x100218c0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1002af48 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+188], a1=?, a2=?, a3=?.
  The `jal` at 0x1002af54 calls getint__9EZWrapperGv [0x100218c0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1002af6c calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+176], a1=?, a2=?, a3=?.
  The `jal` at 0x1002af78 calls getint__9EZWrapperGv [0x100218c0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1002af90 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+180], a1=?, a2=?, a3=?.
  The `jal` at 0x1002af9c calls getint__9EZWrapperGv [0x100218c0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002afd0 calls XSGIvcQueryBestChannelRectangle with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[a0+216], a3=?, a5=sp-48.
  The `jal` at 0x1002afdc calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+184], a1=?, a2=?, a3=?.
  The `jal` at 0x1002afec calls __as__9EZWrapperGf [0x1001fea0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1002aff8 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+188], a1=?, a2=?, a3=?.
  The `jal` at 0x1002b008 calls __as__9EZWrapperGf [0x1001fea0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1002b014 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+176], a1=?, a2=?, a3=?.
  The `jal` at 0x1002b024 calls __as__9EZWrapperGf [0x1001fea0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1002b030 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+180], a1=?, a2=?, a3=?.
  The `jal` at 0x1002b044 calls __as__9EZWrapperGf [0x1001fea0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The return at 0x1002b054 has v0 = ret(__as__9EZWrapperGf).

- `__ct__25SyncFormatDescriptorClassGv` in `usr/bin/X11/xsetmon` at 0x1002b060 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002b060-0x1002b078 (24 bytes).
  It occupies 24 bytes.
  The `sw` at 0x1002b060 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0x1002b064 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x1002b068 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0x1002b074 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The return at 0x1002b070 has v0 = a0.

- `close__18XSetmonWindowClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1002b080 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002b080-0x1002b124 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0x1002b0a4 loads 4 bytes from ret(getTheTargetPromptDialog__Gv) +0x8.
  The `lw` at 0x1002b0b4 loads 4 bytes from [ret(getTheTargetPromptDialog__Gv)+8] +0x110.
  The `lw` at 0x1002b0c0 loads 4 bytes from [ret(getTheTargetPromptDialog__Gv)+8] +0x108.
  The `lw` at 0x1002b0ec loads 4 bytes from ret(getTheTargetPromptDialog__Gv) +0x54.
  The `lw` at 0x1002b104 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `jal` at 0x1002b09c calls getTheTargetPromptDialog__Gv [0x1003df60] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002b0cc calls (unknown callee) with a0=([[ret(getTheTargetPromptDialog__Gv)+8]+264] + ret(getTheTargetPromptDialog__Gv)), a1=0x0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x1002b0dc calls getTheTargetPromptDialog__Gv [0x1003df60] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002b0e8 calls XmTextFieldGetString with a0=[ret(getTheTargetPromptDialog__Gv)+84], a1=?, a2=?, a3=?.
  The `jal` at 0x1002b100 calls changeTargetDisplay__21MasterTabbedDeckClassGPc [0x10031540] with a0=[a0+68], a1=ret(XmTextFieldGetString), a2=?, a3=?.
  The `jalr` at 0x1002b10c calls free with a0=ret(XmTextFieldGetString), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002b0d4 targets 0x1002b114, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The return at 0x1002b11c has v0 = one of ret(?), ret(free).

- `create__19SyncSelectorFrameUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1002b130 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002b130-0x1002b320 (496 bytes).
  It occupies 496 bytes.
  The `lw` at 0x1002b178 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0x1002b184 loads 4 bytes from sym(xmFrameWidgetClass) +0x0.
  The `sw` at 0x1002b190 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x1002b19c stores 4 bytes to a0 (arg0 at entry) +0x24.
  The `lw` at 0x1002b1a4 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x1002b1a8 loads 4 bytes from sym(xmFormWidgetClass) +0x0.
  The `sw` at 0x1002b1fc stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `lw` at 0x1002b234 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `sw` at 0x1002b258 stores 4 bytes to a0 (arg0 at entry) +0x28.
  The `jalr` at 0x1002b15c calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultSyncSelectorFrameUIResources__19SyncSelectorFrameUI), a3=a3 at entry (arg3).
  The `jalr` at 0x1002b180 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFrameWidgetClass)], a2=a1 at entry (arg1), a3=-0xa7, a4=0x5, a5=0x0.
  The `jalr` at 0x1002b198 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002b1f0 calls XtVaCreateManagedWidget with a0=0x100518e8, a1=[sym(xmFormWidgetClass)], a2=[a0+16], a3=-0xd1, a4=0x1, a5=-0x338, a6=0x0, a7=-0x32e.
  The `jalr` at 0x1002b204 calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002b238 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+32], a2=0x100483a0, a3=0x0, a4=0x0.
  The `jalr` at 0x1002b254 calls baseWidget__10VkMenuItemCGv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002b2f8 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=-0x42, a2=0x1, a3=-0x66, a4=0x0, a5=-0x46, a6=0x1, a7=-0x67.
  The `jal` at 0x1002b304 calls createSyncFormats__19SyncSelectorFrameUIGv [0x100298d0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002b210 targets 0x1002b250, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1002b248 targets 0x1002b254 and is always taken.
  The return at 0x1002b318 has v0 = ret(createSyncFormats__19SyncSelectorFrameUIGv).

- `className__21StatisticsFormClassUIGv` in `usr/bin/X11/xsetmon` at 0x1002b320 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002b320-0x1002b338 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1002b32c loads 4 bytes from abs 0x1005091c.
  The return at 0x1002b330 has v0 = 0x10046ea0.

- `create__18GainControlClassUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1002b340 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002b340-0x1002b6a0 (864 bytes).
  It occupies 864 bytes.
  The `lw` at 0x1002b388 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0x1002b394 loads 4 bytes from sym(xmFrameWidgetClass) +0x0.
  The `sw` at 0x1002b3a0 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x1002b3ac stores 4 bytes to a0 (arg0 at entry) +0x2c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x1002b3b0, `lw` at 0x1002b3fc.
  The `lw` at 0x1002b3bc loads 4 bytes from sym(xmLabelWidgetClass) +0x0.
  The `sw` at 0x1002b404 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `lw` at 0x1002b408 loads 4 bytes from sym(xmFormWidgetClass) +0x0.
  The `sw` at 0x1002b44c stores 4 bytes to a0 (arg0 at entry) +0x28.
  The `lw` at 0x1002b450 loads 4 bytes from sym(sgDialWidgetClass) +0x0.
  The `sw` at 0x1002b578 stores 4 bytes to a0 (arg0 at entry) +0x24.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0x1002b590, `lw` at 0x1002b5cc.
  The `lw` at 0x1002b598 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x1002b59c loads 4 bytes from sym(xmPushButtonWidgetClass) +0x0.
  The `sw` at 0x1002b688 stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `jalr` at 0x1002b36c calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultGainControlClassUIResources__18GainControlClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x1002b390 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFrameWidgetClass)], a2=a1 at entry (arg1), a3=-0xa7, a4=0x5, a5=0x0.
  The `jalr` at 0x1002b3a8 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002b3f4 calls XtVaCreateManagedWidget with a0=0x10044f70, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x337, a6=0x2, a7=-0x17.
  The `jalr` at 0x1002b440 calls XtVaCreateManagedWidget with a0=0x10051628, a1=[sym(xmFormWidgetClass)], a2=[a0+16], a3=-0xd1, a4=0x1, a5=-0x32e, a6=0x0, a7=-0x17.
  The `jalr` at 0x1002b558 calls XtVaCreateManagedWidget with a0=0x10044f80, a1=[sym(sgDialWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=0x10044f90, a4=0xb, a5=-0xd, a6=0x64, a7=0x10044fa0.
  The `jalr` at 0x1002b574 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x4d, a2=sym(doSetGainCallbackCallback__18GainControlClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002b58c calls XtAddCallback with a0=[a0+36], a1=-0x40, a2=sym(doSetGainCallbackCallback__18GainControlClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002b668 calls XtVaCreateManagedWidget with a0=0x10044fd0, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+40], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1002b684 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x25, a2=sym(doButtonNominalGainCallback__18GainControlClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The return at 0x1002b698 has v0 = ret(XtAddCallback).

- `updateMemoUsageO2Callback__21StatisticsFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x1002b760 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002b760-0x1002b7a4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1002b764 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1002b770 loads 4 bytes from [a1+8] +0x9c.
  The `lw` at 0x1002b77c loads 4 bytes from [a1+8] +0xa4.
  The `jalr` at 0x1002b78c calls (unknown callee) with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x2d19c.
  The return at 0x1002b79c has v0 = ret(?).

- `__dt__18XSetmonWindowClassGv` in `usr/bin/X11/xsetmon` at 0x1002b7b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002b7b0-0x1002b840 (144 bytes).
  It occupies 144 bytes.
  The `sw` at 0x1002b7d8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x1002b7e0 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x1002b7ec loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x1002b7f0 loads 4 bytes from [[a0+68]+8] +0x14.
  The `lw` at 0x1002b7f4 loads 4 bytes from [[a0+68]+8] +0xc.
  The `jalr` at 0x1002b7fc calls (unknown callee) with a0=([[[a0+68]+8]+12] + [a0+68]), a1=0x3, a2=a2 at entry (arg2), a3=[a0+68].
  The `jalr` at 0x1002b80c calls __dt__8VkWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1002b828 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002b7c8 targets 0x1002b830, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1002b7e4 targets 0x1002b80c, is taken when a3(=[a0+68]) == 0, and falls through when a3(=[a0+68]) != 0.
  The `beq` branch at 0x1002b81c targets 0x1002b834, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x1002b838 has v0 = one of ret(__dt__8VkWindowGv), ?.

- `__ct__21StatisticsFormClassUIGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1002b840 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002b840-0x1002b8a4 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0x1002b87c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1002b868 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002b884 calls create__21StatisticsFormClassUIGP10_WidgetRec [0x1003f180] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The return at 0x1002b89c has v0 = a0.

- `doOptionNotBlanked__18ChannelFormClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1002b8b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002b8b0-0x1002b8b8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1002b8b0 has v0 = ?.

- `assignChannelMapCallback__22GammaAssignmentClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x1002b8c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002b8c0-0x1002b910 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x1002b8c4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x1002b8c8 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1002b8d4 loads 4 bytes from [a1] +0x8.
  The `lw` at 0x1002b8e4 loads 4 bytes from [[a1]+8] +0xa4.
  The `lw` at 0x1002b8e8 loads 4 bytes from [[a1]+8] +0x9c.
  The `lw` at 0x1002b8f0 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `jalr` at 0x1002b8f8 calls (unknown callee) with a0=([[[a1]+8]+156] + [a1]), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[a1+4], a4=[a1+8].
  The return at 0x1002b908 has v0 = ret(?).

- `loadData__21MasterTabbedDeckClassGPCc` in `usr/bin/X11/xsetmon` at 0x1002b910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002b910-0x1002bbec (732 bytes).
  It occupies 732 bytes.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1002b9d8, `lw` at 0x1002badc.
  2 such `lbu` accesses load 1 byte from [sym(xsetmonApp)] +0x84, including `lbu` at 0x1002b9dc, `lbu` at 0x1002bae0.
  2 such `lw` accesses load 4 bytes from ret(getTheInfoDialog__Gv) +0x8, including `lw` at 0x1002b9f0, `lw` at 0x1002baf8.
  2 such `lw` accesses load 4 bytes from [ret(getTheInfoDialog__Gv)+8] +0xe4, including `lw` at 0x1002b9f4, `lw` at 0x1002bafc.
  2 such `lw` accesses load 4 bytes from [ret(getTheInfoDialog__Gv)+8] +0xec, including `lw` at 0x1002ba08, `lw` at 0x1002bb10.
  The `lw` at 0x1002ba70 loads 4 bytes from sym(errno) +0x0.
  The `lw` at 0x1002bb5c loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x1002bb68 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x1002bb74 loads 4 bytes from [a0+44] +0x20.
  The `lw` at 0x1002bb88 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `jalr` at 0x1002b940 calls fopen with a0=a1 at entry (arg1), a1=0x10051702, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002b960 calls fread with a0=sp-96, a1=0x4, a2=0x1, a3=ret(fopen).
  The `jalr` at 0x1002b984 calls VkGetResource__GPCcT1 with a0=0x10045ec0, a1=0x10045ec0, a2=?, a3=?.
  The `jalr` at 0x1002b994 calls strlen with a0=ret(VkGetResource__GPCcT1), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002b9a4 calls strlen with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002b9b4 calls __nwa__GUi with a0=(ret(strlen) + ret(strlen))+10, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002b9cc calls sprintf with a0=ret(__nwa__GUi), a1=?, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x1002b9e8 calls getTheInfoDialog__Gv with a0=?, a1=[[sym(xsetmonApp)]+132]:1, a2=?, a3=?.
  The `jalr` at 0x1002ba1c calls (unknown callee) with a0=([[ret(getTheInfoDialog__Gv)+8]+228] + ret(getTheInfoDialog__Gv)), a1=ret(__nwa__GUi), a2=0x0, a3=0x0, a4=0x0, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1002ba34 calls __dla__GPv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002ba58 calls VkGetResource__GPCcT1 with a0=0x10045ed8, a1=0x10045ed8, a2=?, a3=?.
  The `jalr` at 0x1002ba6c calls strerror with a0=[sym(errno)], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002ba7c calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002ba8c calls strlen with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002ba9c calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002bab4 calls __nwa__GUi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002bad0 calls sprintf with a0=ret(__nwa__GUi), a1=?, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x1002baf0 calls getTheInfoDialog__Gv with a0=?, a1=[[sym(xsetmonApp)]+132]:1, a2=?, a3=?.
  The `jalr` at 0x1002bb24 calls (unknown callee) with a0=([[ret(getTheInfoDialog__Gv)+8]+228] + ret(getTheInfoDialog__Gv)), a1=ret(__nwa__GUi), a2=0x0, a3=0x0, a4=0x0, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1002bb30 calls __dl__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jal` at 0x1002bb58 calls loadData__19ServerInfoFormClassGP8__file_s [0x10029c80] with a0=[a0+48], a1=ret(fopen), a2=?, a3=?.
  The `jal` at 0x1002bb70 calls loadData__27FormatCombinationListsClassGP8__file_s [0x100384b0] with a0=[[a0+44]+32], a1=ret(fopen), a2=?, a3=?.
  The `jal` at 0x1002bb84 calls loadData__10GammaClassGP8__file_s [0x1002eab0] with a0=[a0+56], a1=ret(fopen), a2=?, a3=?.
  The `jalr` at 0x1002bb90 calls fclose with a0=ret(fopen), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002bbb0 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=ret(__nwa__GUi), a2=?, a3=?.
  The `jalr` at 0x1002bbbc calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002bbd0 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=ret(__nwa__GUi), a2=?, a3=?.
  The `jalr` at 0x1002bbdc calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002b948 targets 0x1002ba4c, is taken when v0(=ret(fopen)) == 0, and falls through when v0(=ret(fopen)) != 0.
  The `beq` branch at 0x1002b970 targets 0x1002bb4c, is taken when v0(?) == v1(=[0x10051c08]), and falls through when v0(?) != v1(=[0x10051c08]).
  The `beq` branch at 0x1002b9e0 targets 0x1002bba4, is taken when a1(=[[sym(xsetmonApp)]+132]:1) == 0, and falls through when a1(=[[sym(xsetmonApp)]+132]:1) != 0.
  The `beq` branch at 0x1002bae4 targets 0x1002bbcc, is taken when a1(=[[sym(xsetmonApp)]+132]:1) == 0, and falls through when a1(=[[sym(xsetmonApp)]+132]:1) != 0.
  The `beq` branch at 0x1002bb44 targets 0x1002ba44 and is always taken.
  The `beq` branch at 0x1002bb9c targets 0x1002ba40 and is always taken.
  The `beq` branch at 0x1002bbc4 targets 0x1002ba2c and is always taken.
  The `beq` branch at 0x1002bbe4 targets 0x1002bb30 and is always taken.
  The return at 0x1002ba44 has v0 = one of ?, ret(__dl__GPv).

- `doButtonSet__16ChannelFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1002bbf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002bbf0-0x1002bcec (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0x1002bc18 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `lw` at 0x1002bc34 loads 4 bytes from a0 (arg0 at entry) +0xbc.
  The `lw` at 0x1002bc58 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lw` at 0x1002bc7c loads 4 bytes from a0 (arg0 at entry) +0xb4.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1002bc9c, `lw` at 0x1002bccc.
  The `lw` at 0x1002bca0 loads 4 bytes from a0 (arg0 at entry) +0xd8.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x1002bca8, `lw` at 0x1002bcd8.
  The `lw` at 0x1002bcb0 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `jal` at 0x1002bc14 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+184], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002bc20 calls getint__9EZWrapperGv [0x100218c0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1002bc38 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+188], a1=?, a2=?, a3=?.
  The `jal` at 0x1002bc44 calls getint__9EZWrapperGv [0x100218c0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1002bc5c calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+176], a1=?, a2=?, a3=?.
  The `jal` at 0x1002bc68 calls getint__9EZWrapperGv [0x100218c0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1002bc80 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+180], a1=?, a2=?, a3=?.
  The `jal` at 0x1002bc8c calls getint__9EZWrapperGv [0x100218c0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002bcbc calls XSGIvcSetChannelInputRectangle with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[a0+216], a3=?.
  The `jalr` at 0x1002bcd4 calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=?, a2=?, a3=?.
  The return at 0x1002bce4 has v0 = ret(XFlush).

- `__ct__22ScrollingErrorMessagerGPCc` in `usr/bin/X11/xsetmon` at 0x1002bcf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002bcf0-0x1002bd4c (92 bytes).
  It occupies 92 bytes.
  The `sw` at 0x1002bd28 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x1002bd34 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0x1002bd38 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `jal` at 0x1002bd18 calls __ct__13ErrorMessagerGv [0x1003cf80] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1002bd44 has v0 = a0.

- `updateMemoUsageOdsy__19StatisticsFormClassGv` in `usr/bin/X11/xsetmon` at 0x1002bd50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002bd50-0x1002bfe0 (656 bytes).
  It occupies 656 bytes.
  10 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1002bd6c, `lw` at 0x1002bdbc, `lw` at 0x1002be0c.
  2 such `lwc1` accesses load 4 bytes from [sym(xsetmonApp)] +0x100, including `lwc1` at 0x1002bd70, `lwc1` at 0x1002be54.
  The `lw` at 0x1002bda4 loads 4 bytes from a0 (arg0 at entry) +0x104.
  The `lwc1` at 0x1002bdc0 loads 4 bytes from [sym(xsetmonApp)] +0x104.
  The `lwc1` at 0x1002bdc4 loads 4 bytes from [sym(xsetmonApp)] +0xfc.
  The `lwc1` at 0x1002bdc8 loads 4 bytes from [sym(xsetmonApp)] +0x108.
  The `lw` at 0x1002bdf8 loads 4 bytes from a0 (arg0 at entry) +0x114.
  2 such `lwc1` accesses load 4 bytes from [sym(xsetmonApp)] +0x10c, including `lwc1` at 0x1002be10, `lwc1` at 0x1002be50.
  The `lw` at 0x1002be38 loads 4 bytes from a0 (arg0 at entry) +0x10c.
  2 such `lwc1` accesses load 4 bytes from [sym(xsetmonApp)] +0x110, including `lwc1` at 0x1002be5c, `lwc1` at 0x1002bea8.
  The `lw` at 0x1002be90 loads 4 bytes from a0 (arg0 at entry) +0x11c.
  The `lw` at 0x1002bed0 loads 4 bytes from a0 (arg0 at entry) +0x124.
  The `lw` at 0x1002befc loads 4 bytes from [sym(xsetmonApp)] +0x124.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x128, including `lw` at 0x1002bf1c, `lw` at 0x1002bfac.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x12c, including `lw` at 0x1002bf30, `lw` at 0x1002bfc0.
  The `lw` at 0x1002bf58 loads 4 bytes from ret(getTheWarningDialog__Gv) +0x8.
  The `lw` at 0x1002bf68 loads 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x110.
  The `lw` at 0x1002bf74 loads 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x108.
  The `jalr` at 0x1002bd94 calls sprintf with a0=sp-160, a1=0x10046918, a2=?, a3=0x2cbac.
  The `jal` at 0x1002bda0 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+260], a1=?, a2=?, a3=?.
  The `jal` at 0x1002bdb4 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=sp-160, a2=?, a3=?.
  The `jalr` at 0x1002bde8 calls sprintf with a0=sp-160, a1=0x10046918, a2=?, a3=?.
  The `jal` at 0x1002bdf4 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+276], a1=?, a2=?, a3=?.
  The `jal` at 0x1002be04 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=sp-160, a2=?, a3=?.
  The `jalr` at 0x1002be28 calls sprintf with a0=sp-160, a1=0x10046918, a2=?, a3=?.
  The `jal` at 0x1002be34 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+268], a1=?, a2=?, a3=?.
  The `jal` at 0x1002be44 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=sp-160, a2=?, a3=?.
  The `jalr` at 0x1002be80 calls sprintf with a0=sp-160, a1=0x10046918, a2=?, a3=?.
  The `jal` at 0x1002be8c calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+284], a1=?, a2=?, a3=?.
  The `jal` at 0x1002be9c calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=sp-160, a2=?, a3=?.
  The `jalr` at 0x1002bec0 calls sprintf with a0=sp-160, a1=0x10046918, a2=?, a3=?.
  The `jal` at 0x1002becc calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+292], a1=?, a2=?, a3=?.
  The `jal` at 0x1002bee0 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=sp-160, a2=?, a3=?.
  The `jalr` at 0x1002bf04 calls XtSetSensitive with a0=[[sym(xsetmonApp)]+292], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1002bf18 calls XtSetSensitive with a0=[[sym(xsetmonApp)]+296], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1002bf2c calls XtSetSensitive with a0=[[sym(xsetmonApp)]+300], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1002bf38 calls getTheWarningDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002bf50 calls VkGetResource__GPCcT1 with a0=0x10046928, a1=0x10046928, a2=?, a3=?.
  The `jalr` at 0x1002bf80 calls (unknown callee) with a0=([[ret(getTheWarningDialog__Gv)+8]+264] + ret(getTheWarningDialog__Gv)), a1=ret(VkGetResource__GPCcT1), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1002bf94 calls XtSetSensitive with a0=[[sym(xsetmonApp)]+292], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1002bfa8 calls XtSetSensitive with a0=[[sym(xsetmonApp)]+296], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1002bfbc calls XtSetSensitive with a0=[[sym(xsetmonApp)]+300], a1=0x1, a2=?, a3=?.
  The `bc1f` branch at 0x1002bef8 targets 0x1002bf90, is taken when not (f30 < f6 (c.lt.d at 0x1002bef0)), and falls through when f30 < f6 (c.lt.d at 0x1002bef0).
  The `beq` branch at 0x1002bf88 targets 0x1002bfc4 and is always taken.
  The return at 0x1002bfd8 has v0 = one of ret(?), ret(XtSetSensitive).

- `__ct__23AboutXsetmonFormClassUIGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1002bfe0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002bfe0-0x1002c044 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0x1002c01c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1002c008 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002c024 calls create__23AboutXsetmonFormClassUIGP10_WidgetRec [0x1003da10] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The return at 0x1002c03c has v0 = a0.

- `saveData__21MasterTabbedDeckClassGPCc` in `usr/bin/X11/xsetmon` at 0x1002c050 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002c050-0x1002c2c0 (624 bytes).
  It occupies 624 bytes.
  The `lw` at 0x1002c0cc loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x1002c0d4 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x1002c0e0 loads 4 bytes from [a0+44] +0x20.
  The `lw` at 0x1002c0f0 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x1002c140 loads 4 bytes from sym(errno) +0x0.
  The `lw` at 0x1002c1b4 loads 4 bytes from ret(getTheInfoDialog__Gv) +0x8.
  The `lw` at 0x1002c1b8 loads 4 bytes from [ret(getTheInfoDialog__Gv)+8] +0xe4.
  The `lw` at 0x1002c1cc loads 4 bytes from [ret(getTheInfoDialog__Gv)+8] +0xec.
  The `lw` at 0x1002c264 loads 4 bytes from ret(getTheQuestionDialog__Gv) +0x8.
  The `lw` at 0x1002c274 loads 4 bytes from [ret(getTheQuestionDialog__Gv)+8] +0x110.
  The `lw` at 0x1002c280 loads 4 bytes from [ret(getTheQuestionDialog__Gv)+8] +0x108.
  The `jalr` at 0x1002c080 calls stat with a0=a1 at entry (arg1), a1=sp-224, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002c098 calls fopen with a0=a1 at entry (arg1), a1=0x10051700, a2=?, a3=?.
  The `jalr` at 0x1002c0b8 calls fwrite with a0=0x10051c08, a1=0x4, a2=0x1, a3=ret(fopen).
  The `jal` at 0x1002c0c8 calls saveData__19ServerInfoFormClassGP8__file_s [0x1002a250] with a0=[a0+48], a1=ret(fopen), a2=?, a3=?.
  The `jal` at 0x1002c0dc calls saveData__27FormatCombinationListsClassGP8__file_s [0x10042b10] with a0=[[a0+44]+32], a1=ret(fopen), a2=?, a3=?.
  The `jal` at 0x1002c0ec calls saveData__10GammaClassGP8__file_s [0x10030c20] with a0=[a0+56], a1=ret(fopen), a2=?, a3=?.
  The `jalr` at 0x1002c0f8 calls fclose with a0=ret(fopen), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002c128 calls VkGetResource__GPCcT1 with a0=0x10045eb0, a1=0x10045eb0, a2=?, a3=?.
  The `jalr` at 0x1002c13c calls strerror with a0=[sym(errno)], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002c14c calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002c15c calls strlen with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002c16c calls strlen with a0=ret(strerror), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002c184 calls __nwa__GUi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002c1a0 calls sprintf with a0=ret(__nwa__GUi), a1=?, a2=a1 at entry (arg1), a3=ret(strerror).
  The `jalr` at 0x1002c1ac calls getTheInfoDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002c1e0 calls (unknown callee) with a0=([[ret(getTheInfoDialog__Gv)+8]+228] + ret(getTheInfoDialog__Gv)), a1=ret(__nwa__GUi), a2=0x0, a3=0x0, a4=0x0, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1002c1ec calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002c208 calls VkGetResource__GPCcT1 with a0=0x10045ea0, a1=0x10045ea0, a2=?, a3=?.
  The `jalr` at 0x1002c218 calls strlen with a0=ret(VkGetResource__GPCcT1), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002c228 calls strlen with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002c238 calls __nwa__GUi with a0=(ret(strlen) + ret(strlen))+10, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002c250 calls sprintf with a0=ret(__nwa__GUi), a1=?, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x1002c25c calls getTheQuestionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002c28c calls (unknown callee) with a0=([[ret(getTheQuestionDialog__Gv)+8]+264] + ret(getTheQuestionDialog__Gv)), a1=ret(__nwa__GUi), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1002c2a0 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002c2b0 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002c088 targets 0x1002c1fc, is taken when v0(=ret(stat)) == 0, and falls through when v0(=ret(stat)) != 0.
  The `beq` branch at 0x1002c0a0 targets 0x1002c11c, is taken when v0(=ret(fopen)) == 0, and falls through when v0(=ret(fopen)) != 0.
  The `beq` branch at 0x1002c1f4 targets 0x1002c104 and is always taken.
  The `beq` branch at 0x1002c294 targets 0x1002c2b0, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x1002c2a8 targets 0x1002c094 and is always taken.
  The `beq` branch at 0x1002c2b8 targets 0x1002c104 and is always taken.
  The return at 0x1002c114 has v0 = one of ret(fclose), ret(__dla__GPv).

- `doDragRegion__19GammaMapEditorClassGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x1002c2c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002c2c0-0x1002c610 (848 bytes).
  It occupies 848 bytes.
  The `lw` at 0x1002c2c0 loads 4 bytes from a0 (arg0 at entry) +0x6c.
  The `lh` at 0x1002c2e8 loads 2 bytes from a2 (arg2 at entry) +0x22.
  The `lw` at 0x1002c2f0 loads 4 bytes from a2 (arg2 at entry) +0x24.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0x1002c2f8, `lw` at 0x1002c384, `lw` at 0x1002c3f0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xac, including `lw` at 0x1002c30c, `lw` at 0x1002c388.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb4, including `lw` at 0x1002c324, `lw` at 0x1002c414, `lw` at 0x1002c430.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb0, including `lw` at 0x1002c32c, `lw` at 0x1002c3f4, `lw` at 0x1002c434.
  The `lwc1` at 0x1002c338 loads 4 bytes from ([a0+180] + ([a0+112] << 0x2)) -0x4.
  The `lwc1` at 0x1002c33c loads 4 bytes from ([a0+176] + ([a0+112] << 0x2)) -0x4.
  The `lhu` at 0x1002c3a0 loads 2 bytes from a0 (arg0 at entry) +0x96.
  The `lhu` at 0x1002c3bc loads 2 bytes from a0 (arg0 at entry) +0x94.
  The `swc1` at 0x1002c404 stores 4 bytes to ([a0+176] + ([a0+112] << 0x2)) +0x0.
  The `swc1` at 0x1002c428 stores 4 bytes to ([a0+180] + ([a0+112] << 0x2)) +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lw` at 0x1002c42c, `lw` at 0x1002c460, `lw` at 0x1002c490.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xbc, including `lw` at 0x1002c438, `lw` at 0x1002c4a4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb8, including `lw` at 0x1002c444, `lw` at 0x1002c4b0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x1002c448, `lw` at 0x1002c480.
  The `sh` at 0x1002c47c stores 2 bytes to ?.
  The `lw` at 0x1002c4b8 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x1002c518 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `sw` at 0x1002c530 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `lwc1` at 0x1002c574 loads 4 bytes from ([a0+180] + ([a0+112] << 0x2)) +0x0.
  The `lwc1` at 0x1002c578 loads 4 bytes from ([a0+176] + ([a0+112] << 0x2)) +0x0.
  The `lwc1` at 0x1002c5c0 loads 4 bytes from ([a0+180] + ([a0+112] << 0x2)) +0x4.
  The `lwc1` at 0x1002c5c4 loads 4 bytes from ([a0+176] + ([a0+112] << 0x2)) +0x4.
  The `jal` at 0x1002c358 calls vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint [0x1003a020] with a0=a0 at entry (arg0), a1=?, a2=?, a3=sp-72, a5=[a0+112].
  The `jal` at 0x1002c3e0 calls vWindowToGamma__19GammaMapEditorClassCGPC6XPointRiT2 [0x10027000] with a0=a0 at entry (arg0), a1=sp-80, a2=sp-64, a3=sp-60.
  The `jal` at 0x1002c440 calls vSplineFit__19GammaMapEditorClassCGiT1PCfT3Pf [0x10037b40] with a0=a0 at entry (arg0), a1=[a0+184], a2=[a0+188], a3=[a0+176], a4=[a0+180], a5=[a0+168].
  The `jal` at 0x1002c4ac calls fSplineCalc__19GammaMapEditorClassCGiT1PfN23T1 [0x10033820] with a0=a0 at entry (arg0), a1=[a0+184], a2=[a0+188], a3=[a0+176], a4=[a0+180], a5=[a0+168].
  The `jal` at 0x1002c4ec calls vClearScreen__19GammaMapEditorClassCGv [0x1002de60] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1002c4f8 calls calculateDrawing__19GammaMapEditorClassGv [0x10026710] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1002c508 calls redraw__19GammaMapEditorClassCGi [0x1002ad90] with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jal` at 0x1002c51c calls vDrawControlPoint__19GammaMapEditorClassCGPC6XPointP4_XGC [0x10030f10] with a0=a0 at entry (arg0), a1=sp-80, a2=[a0+76], a3=?.
  The `jal` at 0x1002c594 calls vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint [0x1003a020] with a0=a0 at entry (arg0), a1=?, a2=?, a3=sp-76, a5=[a0+112].
  The `jal` at 0x1002c5e0 calls vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint [0x1003a020] with a0=a0 at entry (arg0), a1=?, a2=?, a3=sp-68, a4=([a0+176] + ([a0+112] << 0x2)), a5=([a0+112] << 0x2), a6=([a0+180] + ([a0+112] << 0x2)).
  The `beq` branch at 0x1002c2dc targets 0x1002c540, is taken when v0(=[a0+108]) == 0, and falls through when v0(=[a0+108]) != 0.
  The `beq` branch at 0x1002c304 targets 0x1002c560, is taken when a5(=[a0+112]) == 0, and falls through when a5(=[a0+112]) != 0.
  The `beq` branch at 0x1002c314 targets 0x1002c560, is taken when a5(=[a0+112]) == v1(=[a0+172]-1), and falls through when a5(=[a0+112]) != v1(=[a0+172]-1).
  The `beq` branch at 0x1002c31c targets 0x1002c388, is taken when a5(=[a0+112]) == 0, and falls through when a5(=[a0+112]) != 0.
  The `bne` branch at 0x1002c36c targets 0x1002c384, is taken when a2(?) < a0(?) (signed), and falls through when a2(?) >= a0(?) (signed).
  The `bne` branch at 0x1002c390 targets 0x1002c5ac, is taken when a5(=[a0+112]) != a1(=[a0+172]-1), and falls through when a5(=[a0+112]) == a1(=[a0+172]-1).
  The `bltz` branch at 0x1002c398 targets 0x1002c550, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `bne` branch at 0x1002c3a8 targets 0x1002c3b4, is taken when a2(?) < a3(=[a0+150]:2) (signed), and falls through when a2(?) >= a3(=[a0+150]:2) (signed).
  The `bltz` branch at 0x1002c3b4 targets 0x1002c558, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `bne` branch at 0x1002c3c4 targets 0x1002c3d0, is taken when a0(?) < a2(=[a0+148]:2) (signed), and falls through when a0(?) >= a2(=[a0+148]:2) (signed).
  The `blez` branch at 0x1002c454 targets 0x1002c4dc, is taken when ra(=[a0+84]) <= 0 (signed), and falls through when ra(=[a0+84]) > 0 (signed).
  The `beq` branch at 0x1002c45c targets 0x1002c494 and is always taken.
  The `beq` branch at 0x1002c470 targets 0x1002c47c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x1002c488 targets 0x1002c4dc, is taken when s1(?) >= v0(=[a0+84]) (signed), and falls through when s1(?) < v0(=[a0+84]) (signed).
  The `bgez` branch at 0x1002c4cc targets 0x1002c470, is taken when a0(?) >= 0 (signed), and falls through when a0(?) < 0 (signed).
  The `beq` branch at 0x1002c4d4 targets 0x1002c47c and is always taken.
  The `bgez` branch at 0x1002c550 targets 0x1002c3bc, is taken when a0(?) >= 0 (signed), and falls through when a0(?) < 0 (signed).
  The `beq` branch at 0x1002c558 targets 0x1002c3d0 and is always taken.
  The `beq` branch at 0x1002c5a4 targets 0x1002c31c and is always taken.
  The `bne` branch at 0x1002c5f4 targets 0x1002c394, is taken when a0(?) < a2(?) (signed), and falls through when a0(?) >= a2(?) (signed).
  The `beq` branch at 0x1002c608 targets 0x1002c394 and is always taken.
  The return at 0x1002c538 has v0 = ret(vDrawControlPoint__19GammaMapEditorClassCGPC6XPointP4_XGC).
  The return at 0x1002c548 has v0 = [a0+108].
  The instructions from 0x1002c464 to 0x1002c46c are not reached by any path from the entry, and their branches are not listed.

- `usage__7xsetmonGv` in `usr/bin/X11/xsetmon` at 0x1002c610 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002c610-0x1002c65c (76 bytes).
  It occupies 76 bytes.
  The `jalr` at 0x1002c62c calls VkGetResource__GPCcT1 with a0=0x100513f8, a1=0x100513f8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002c63c calls __ls__7ostreamGPCc with a0=sym(cerr), a1=ret(VkGetResource__GPCcT1), a2=?, a3=?.
  The `jalr` at 0x1002c648 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002c654 calls exit with a0=0x1, a1=?, a2=?, a3=?.

- `__dt__7xsetmonGv` in `usr/bin/X11/xsetmon` at 0x1002c660 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002c660-0x1002c6cc (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x1002c690 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1002c698 calls __dt__5VkAppGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002c6b4 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002c680 targets 0x1002c6bc, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1002c6a8 targets 0x1002c6c0, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x1002c6c4 has v0 = one of ret(__dt__5VkAppGv), ?.

- `__dt__28CombinationContentsListClassGv` in `usr/bin/X11/xsetmon` at 0x1002c6d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002c6d0-0x1002c768 (152 bytes).
  It occupies 152 bytes.
  The `sw` at 0x1002c6f8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x1002c700 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x1002c718 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `jalr` at 0x1002c70c calls XFree with a0=[a0+48], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+48].
  The `jalr` at 0x1002c728 calls __dla__GPv with a0=[a0+52], a1=?, a2=?, a3=[a0+52].
  The `jal` at 0x1002c738 calls __dt__30CombinationContentsListClassUIGv [0x10026e10] with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1002c750 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002c6e8 targets 0x1002c758, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1002c704 targets 0x1002c718, is taken when a3(=[a0+48]) == 0, and falls through when a3(=[a0+48]) != 0.
  The `beq` branch at 0x1002c71c targets 0x1002c738, is taken when a3(=[a0+52]) == 0, and falls through when a3(=[a0+52]) != 0.
  The `beq` branch at 0x1002c748 targets 0x1002c758, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x1002c760 has v0 = one of ?, ret(__dt__30CombinationContentsListClassUIGv), ret(__dl__GPv).

- `CreateFormatCombinationListsClass__27FormatCombinationListsClassSGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1002c770 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002c770-0x1002c7f0 (128 bytes).
  It occupies 128 bytes.
  The `jalr` at 0x1002c798 calls __nw__GUi with a0=0xf8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002c7c0 calls __ct__27FormatCombinationListsClassGPCcP10_WidgetRec [0x10026d00] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x1002c7a4 targets 0x1002c7dc, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x1002c7d4 has v0 = ret(__nw__GUi).
  The return at 0x1002c7e8 has v0 = 0x0.

- `appendText__17TextErrorMessagerGPc` in `usr/bin/X11/xsetmon` at 0x1002cbb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002cbb0-0x1002cbf0 (64 bytes).
  It occupies 64 bytes.
  The `jalr` at 0x1002cbcc calls __ls__7ostreamGPCc with a0=sym(cout), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002cbd8 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The return at 0x1002cbe8 has v0 = ret(endl__GR7ostream).

- `fbConfigSelectedCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x1002cbf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002cbf0-0x1002cc34 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1002cbf4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1002cc00 loads 4 bytes from [a1+8] +0xf0.
  The `lw` at 0x1002cc0c loads 4 bytes from [a1+8] +0xf8.
  The `jalr` at 0x1002cc1c calls (unknown callee) with a0=([[a1+8]+240] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x2bd0c.
  The return at 0x1002cc2c has v0 = ret(?).

- `__ct__19StatisticsFormClassGPCc` in `usr/bin/X11/xsetmon` at 0x1002cc40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002cc40-0x1002cc88 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x1002cc78 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x1002cc60 calls __ct__21StatisticsFormClassUIGPCc [0x10026cb0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1002cc80 has v0 = a0.

- `saveData__19GammaMapEditorClassGP18GammaMapDescriptorilP8__file_s` in `usr/bin/X11/xsetmon` at 0x1002cc90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002cc90-0x1002cd90 (256 bytes).
  It occupies 256 bytes.
  The `sw` at 0x1002cca0 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `lw` at 0x1002cd14 loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `lw` at 0x1002cd20 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x1002cd24 loads 4 bytes from [a0+88] +0x0.
  The `lw` at 0x1002cd2c loads 4 bytes from [sym(xsetmonApp)] +0x13c.
  The `lw` at 0x1002cd38 loads 4 bytes from [sym(xsetmonApp)] +0x138.
  The `jalr` at 0x1002ccd8 calls fwrite with a0=a1 at entry (arg1), a1=0x4, a2=0x1, a3=a4 at entry (arg4).
  The `jalr` at 0x1002ccf0 calls fwrite with a0=sp-28, a1=0x4, a2=0x1, a3=a4 at entry (arg4).
  The `jalr` at 0x1002cd08 calls fwrite with a0=sp-20, a1=0x4, a2=0x1, a3=a4 at entry (arg4).
  The `jalr` at 0x1002cd34 calls XSGIvcQueryGammaColors with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=[[a0+88]], a3=a2 at entry (arg2), a4=sp-96, a5=sp-92.
  The `jalr` at 0x1002cd50 calls fwrite with a0=sp-96, a1=0x4, a2=0x1, a3=a4 at entry (arg4).
  The `jalr` at 0x1002cd68 calls fwrite with a0=?, a1=0x2, a2=?, a3=a4 at entry (arg4).
  The `jalr` at 0x1002cd78 calls XFree with a0=?, a1=?, a2=?, a3=?.
  The return at 0x1002cd88 has v0 = ret(XFree).

- `__ct__21ServerInfoFormClassUIGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1002cd90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002cd90-0x1002ce24 (148 bytes).
  It occupies 148 bytes.
  The `sw` at 0x1002cdc8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x1002cdd0 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sw` at 0x1002cdd8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0x1002cde0 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sw` at 0x1002cde8 stores 4 bytes to a0 (arg0 at entry) +0x70.
  The `sw` at 0x1002cdf4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0x1002cdfc stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `jalr` at 0x1002cdb8 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002ce04 calls create__21ServerInfoFormClassUIGP10_WidgetRec [0x1003a080] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a0 at entry (arg0), a3=a0 at entry (arg0), a4=a0 at entry (arg0), a5=sym(__vtbl__21ServerInfoFormClassUI), a6=a0 at entry (arg0).
  The return at 0x1002ce1c has v0 = a0.

- `ClearFormat__21SetmonMasterFormClassGv` in `usr/bin/X11/xsetmon` at 0x1002ce30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002ce30-0x1002ce64 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x1002ce50 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x1002ce4c calls ClearFormat__19StatisticsFormClassGv [0x10041c30] with a0=[a0+40], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1002ce5c has v0 = ret(ClearFormat__19StatisticsFormClassGv).

- `inputCallback__21GammaMapEditorClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x1002ce70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002ce70-0x1002ceb4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1002ce74 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1002ce80 loads 4 bytes from [a1+8] +0xa8.
  The `lw` at 0x1002ce8c loads 4 bytes from [a1+8] +0xb0.
  The `jalr` at 0x1002ce9c calls (unknown callee) with a0=([[a1+8]+168] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x2ba8c.
  The return at 0x1002ceac has v0 = ret(?).

- `__ct__18ChannelFormClassUIGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1002cec0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002cec0-0x1002cf3c (124 bytes).
  It occupies 124 bytes.
  The `sw` at 0x1002cef8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x1002cf00 stores 4 bytes to a0 (arg0 at entry) +0xd0.
  The `sw` at 0x1002cf0c stores 4 bytes to a0 (arg0 at entry) +0xc0.
  The `sw` at 0x1002cf14 stores 4 bytes to a0 (arg0 at entry) +0xc4.
  The `jalr` at 0x1002cee8 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002cf1c calls create__18ChannelFormClassUIGP10_WidgetRec [0x10034b70] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=sym(__vtbl__18ChannelFormClassUI), a3=a0 at entry (arg0).
  The return at 0x1002cf34 has v0 = a0.

- `accumBufTypeSelected__29FormatCombinationListsClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1002cf40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002cf40-0x1002cf48 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1002cf40 has v0 = ?.

- `setPrefix__13ErrorMessagerGP9strstream` in `usr/bin/X11/xsetmon` at 0x1002cf50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002cf50-0x1002cfbc (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x1002cf54 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x1002cfa4 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jalr` at 0x1002cf84 calls str__9strstreamGv with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002cfac calls __dl__GPv with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0].
  The `bne` branch at 0x1002cf78 targets 0x1002cfa8, is taken when at(=[0x10051d48]) != a3(=[a0]), and falls through when at(=[0x10051d48]) == a3(=[a0]).
  The `beq` branch at 0x1002cfb4 targets 0x1002cf84 and is always taken.
  The return at 0x1002cfa0 has v0 = ret(str__9strstreamGv).

- `postHaltMessage__13ErrorMessagerGP9strstream` in `usr/bin/X11/xsetmon` at 0x1002cfc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002cfc0-0x1002d044 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0x1002cff4 loads 4 bytes from ret(getTheFatalErrorDialog__Gv) +0x8.
  The `lw` at 0x1002d004 loads 4 bytes from [ret(getTheFatalErrorDialog__Gv)+8] +0x110.
  The `lw` at 0x1002d010 loads 4 bytes from [ret(getTheFatalErrorDialog__Gv)+8] +0x108.
  The `jalr` at 0x1002cfe0 calls str__9strstreamGv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002cfec calls getTheFatalErrorDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002d01c calls (unknown callee) with a0=([[ret(getTheFatalErrorDialog__Gv)+8]+264] + ret(getTheFatalErrorDialog__Gv)), a1=ret(str__9strstreamGv), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1002d028 calls __dl__GPv with a0=ret(str__9strstreamGv), a1=?, a2=?, a3=?.
  The return at 0x1002d03c has v0 = ret(__dl__GPv).

- `populateFormWithChannel__16ChannelFormClassGi` in `usr/bin/X11/xsetmon` at 0x1002d050 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002d050-0x1002d410 (960 bytes).
  It occupies 960 bytes.
  The `sw` at 0x1002d070 stores 4 bytes to a0 (arg0 at entry) +0xd8.
  4 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1002d074, `lw` at 0x1002d1c8, `lw` at 0x1002d1d8.
  The `lw` at 0x1002d084 loads 4 bytes from [sym(xsetmonApp)] +0x138.
  The `lw` at 0x1002d094 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1002d0ac, `lw` at 0x1002d138, `lw` at 0x1002d144.
  The `lw` at 0x1002d0b4 loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `lw` at 0x1002d100 loads 4 bytes from a0 (arg0 at entry) +0x98.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x94, including `lw` at 0x1002d130, `lw` at 0x1002d180, `lw` at 0x1002d390.
  2 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x1002d150, `lwc1` at 0x1002d154.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x1002d19c, `lw` at 0x1002d1b8, `lw` at 0x1002d1cc.
  The `lbu` at 0x1002d1dc loads 1 byte from [sym(xsetmonApp)] +0xc8.
  The `lw` at 0x1002d1ec loads 4 bytes from [a0+64] +0x8.
  The `lw` at 0x1002d1f0 loads 4 bytes from [[a0+64]+8] +0xa4.
  The `lw` at 0x1002d1f4 loads 4 bytes from [[a0+64]+8] +0x9c.
  The `lbu` at 0x1002d20c loads 1 byte from [sym(xsetmonApp)] +0xc9.
  The `jalr` at 0x1002d098 calls XSGIvcQueryChannelInfo with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=a1 at entry (arg1), a3=sp-112.
  The `jal` at 0x1002d0bc calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+144], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002d0d4 calls VkGetResource__GPCcT1 with a0=0x10044088, a1=0x10044088, a2=?, a3=?.
  The `jal` at 0x1002d0e4 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=ret(VkGetResource__GPCcT1), a2=?, a3=?.
  The `jalr` at 0x1002d0f4 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1002d108 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+152], a1=?, a2=?, a3=?.
  The `jal` at 0x1002d11c calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002d12c calls XtManageChild with a0=[a0+148], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002d170 calls sprintf with a0=sp-104, a1=0x100514b0, a2=?, a3=?.
  The `jal` at 0x1002d17c calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+148], a1=?, a2=?, a3=?.
  The `jal` at 0x1002d18c calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=sp-104, a2=?, a3=?.
  The `jalr` at 0x1002d198 calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002d1a8 calls XtSetSensitive with a0=ret(baseWidget__11VkComponentCGv), a1=0x1, a2=?, a3=?.
  The `jal` at 0x1002d1bc calls DisplayFormat__19StatisticsFormClassGPC21XSGIvcVideoFormatInfo [0x10023f10] with a0=[a0+64], a1=?, a2=?, a3=?.
  The `jal` at 0x1002d1d0 calls DisplayfbConfig__19StatisticsFormClassGPCc [0x1002a800] with a0=[a0+64], a1=[sym(xsetmonApp)]+208, a2=?, a3=?.
  The `jalr` at 0x1002d200 calls (unknown callee) with a0=([[[a0+64]+8]+156] + [a0+64]), a1=0x0, a2=0x0, a3=[a0+64].
  The `jal` at 0x1002d21c calls updateMemoUsageOdsy__19StatisticsFormClassGv [0x1002bd50] with a0=[a0+64], a1=[[sym(xsetmonApp)]+201]:1, a2=?, a3=?.
  The `jal` at 0x1002d234 calls populateBlankingWithChannel__16ChannelFormClassGiPC17XSGIvcChannelInfo [0x10027b30] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1002d248 calls populateGainWithChannel__16ChannelFormClassGiPC17XSGIvcChannelInfo [0x10027880] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1002d25c calls populateHPhaseWithChannel__16ChannelFormClassGiPC17XSGIvcChannelInfo [0x10024c60] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1002d270 calls populateVPhaseWithChannel__16ChannelFormClassGiPC17XSGIvcChannelInfo [0x1003e1e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1002d284 calls populateSCHPhaseWithChannel__16ChannelFormClassGiPC17XSGIvcChannelInfo [0x10042460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1002d298 calls populateSyncWithChannel__16ChannelFormClassGiPC17XSGIvcChannelInfo [0x10029270] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1002d2ac calls populateRectangleWithChannel__16ChannelFormClassGiPC17XSGIvcChannelInfo [0x1002a600] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x1002d2b8 calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1002d2dc calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+144], a1=?, a2=?, a3=?.
  The `jal` at 0x1002d2ec calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=0x100514a8, a2=?, a3=?.
  The `jal` at 0x1002d2f8 calls ClearFormat__19StatisticsFormClassGv [0x10041c30] with a0=[a0+64], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002d304 calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002d314 calls XtSetSensitive with a0=ret(baseWidget__11VkComponentCGv), a1=0x0, a2=?, a3=?.
  The `jal` at 0x1002d328 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+152], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002d340 calls VkGetResource__GPCcT1 with a0=0x10044098, a1=0x10044098, a2=?, a3=?.
  The `jal` at 0x1002d350 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=ret(VkGetResource__GPCcT1), a2=?, a3=?.
  The `jal` at 0x1002d364 calls ClearFormat__19StatisticsFormClassGv [0x10041c30] with a0=[a0+64], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002d370 calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002d380 calls XtSetSensitive with a0=ret(baseWidget__11VkComponentCGv), a1=0x0, a2=?, a3=?.
  The `jal` at 0x1002d38c calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+148], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002d3a4 calls VkGetResource__GPCcT1 with a0=0x10044098, a1=0x10044098, a2=?, a3=?.
  The `jal` at 0x1002d3b4 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=ret(VkGetResource__GPCcT1), a2=?, a3=?.
  The `jalr` at 0x1002d3d0 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10044058, a2=?, a3=?.
  The `jalr` at 0x1002d3e0 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x1002d3f0 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x10051498, a2=?, a3=?.
  The `jalr` at 0x1002d3fc calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002d408 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002d0a0 targets 0x1002d3c4, is taken when v0(=ret(XSGIvcQueryChannelInfo)) == 0, and falls through when v0(=ret(XSGIvcQueryChannelInfo)) != 0.
  The `beq` branch at 0x1002d0b0 targets 0x1002d2d8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1002d0fc targets 0x1002d324, is taken when v0(=ret(strlen)) == 0, and falls through when v0(=ret(strlen)) != 0.
  The `beq` branch at 0x1002d13c targets 0x1002d364, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1002d148 targets 0x1002d364, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1002d1e0 targets 0x1002d20c, is taken when a2(=[[sym(xsetmonApp)]+200]:1) == 0, and falls through when a2(=[[sym(xsetmonApp)]+200]:1) != 0.
  The `beq` branch at 0x1002d210 targets 0x1002d228, is taken when a1(=[[sym(xsetmonApp)]+201]:1) == 0, and falls through when a1(=[[sym(xsetmonApp)]+201]:1) != 0.
  The `beq` branch at 0x1002d31c targets 0x1002d228 and is always taken.
  The `beq` branch at 0x1002d358 targets 0x1002d128 and is always taken.
  The `beq` branch at 0x1002d3bc targets 0x1002d228 and is always taken.
  The return at 0x1002d2d0 has v0 = ret(XFree).
  The instructions from 0x1002d360 to 0x1002d360 are not reached by any path from the entry, and their branches are not listed.

- `__ct__19GammaMapEditorClassGPCc` in `usr/bin/X11/xsetmon` at 0x1002d410 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002d410-0x1002d4ac (156 bytes).
  It occupies 156 bytes.
  The `sw` at 0x1002d440 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x1002d448 stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `sw` at 0x1002d450 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sw` at 0x1002d458 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The `sw` at 0x1002d460 stores 4 bytes to a0 (arg0 at entry) +0x98.
  The `sw` at 0x1002d468 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0x1002d470 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x1002d478 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  The `sw` at 0x1002d480 stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x1002d48c stores 4 bytes to a0 (arg0 at entry) +0xb4.
  The `sw` at 0x1002d49c stores 4 bytes to a0 (arg0 at entry) +0xac.
  The `jal` at 0x1002d430 calls __ct__21GammaMapEditorClassUIGPCc [0x10024d80] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1002d4a4 has v0 = a0.

- `className__17SyncSelectorFrameGv` in `usr/bin/X11/xsetmon` at 0x1002d4b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002d4b0-0x1002d4c8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1002d4bc loads 4 bytes from abs 0x10050920.
  The return at 0x1002d4c0 has v0 = 0x10048128.

- `resize__19GammaMapEditorClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1002d4d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002d4d0-0x1002d52c (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x1002d4f4 calls querySize__19GammaMapEditorClassGv [0x10030a90] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002d500 calls calculateDrawing__19GammaMapEditorClassGv [0x10026710] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1002d510 calls redraw__19GammaMapEditorClassCGi [0x1002ad90] with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?.
  The return at 0x1002d524 has v0 = ret(redraw__19GammaMapEditorClassCGi).

- `__ct__29FormatCombinationListsClassUIGPCc` in `usr/bin/X11/xsetmon` at 0x1002d530 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002d530-0x1002d578 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x1002d568 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1002d550 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1002d570 has v0 = a0.

- `afterRealizeHook__10GammaClassGv` in `usr/bin/X11/xsetmon` at 0x1002d580 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002d580-0x1002d5c0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x1002d584 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1002d598 loads 4 bytes from [a0+8] +0xa4.
  The `lw` at 0x1002d59c loads 4 bytes from [a0+8] +0x9c.
  The `lw` at 0x1002d5a0 loads 4 bytes from a0 (arg0 at entry) +0x6c.
  The `jalr` at 0x1002d5a8 calls (unknown callee) with a0=([[a0+8]+156] + a0), a1=[a0+108], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1002d5b8 has v0 = ret(?).

- `__ct__9MMdtArrayGiT1` in `usr/bin/X11/xsetmon` at 0x1002d5c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002d5c0-0x1002d61c (92 bytes).
  It occupies 92 bytes.
  The `sw` at 0x1002d5c0 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0x1002d5cc stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sw` at 0x1002d5f4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x1002d608 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `jalr` at 0x1002d5f8 calls __nwa__GUi with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1002d614 has v0 = a0.

- `doDownloadfbDepthButton__27FormatCombinationListsClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1002d7e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002d7e0-0x1002da14 (564 bytes).
  It occupies 564 bytes.
  The `lw` at 0x1002d814 loads 4 bytes from a0 (arg0 at entry) +0x48.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1002d828, `lw` at 0x1002d91c, `lw` at 0x1002d9dc.
  The `lw` at 0x1002d84c loads 4 bytes from table(0x10051b00) +0x0.
  The `sw` at 0x1002d858 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lw` at 0x1002d878, `lw` at 0x1002d8a4.
  4 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1002d8ac, `lw` at 0x1002d908, `lw` at 0x1002d928.
  The `lbu` at 0x1002d8b0 loads 1 byte from [sym(xsetmonApp)] +0x84.
  The `lw` at 0x1002d8c8 loads 4 bytes from ret(getTheQuestionDialog__Gv) +0x8.
  The `lw` at 0x1002d8d8 loads 4 bytes from [ret(getTheQuestionDialog__Gv)+8] +0x110.
  The `lw` at 0x1002d8e4 loads 4 bytes from [ret(getTheQuestionDialog__Gv)+8] +0x108.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x1002d934, `lw` at 0x1002d960.
  The `lw` at 0x1002d948 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `lw` at 0x1002d968 loads 4 bytes from sym(requestErrCatched) +0x0.
  The `sw` at 0x1002d9a4 stores 4 bytes to sym(requestErrCatched) +0x0.
  The `jalr` at 0x1002d810 calls XmListGetSelectedPos with a0=[a0+72], a1=sp-96, a2=sp-92, a3=a3 at entry (arg3).
  The `jalr` at 0x1002d854 calls VkGetResource__GPCcT1 with a0=0x10044a70, a1=0x10044a70, a2=?, a3=?.
  The `jalr` at 0x1002d864 calls strlen with a0=ret(VkGetResource__GPCcT1), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002d874 calls strlen with a0=[a0+168], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002d888 calls __nwa__GUi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002d8a0 calls sprintf with a0=ret(__nwa__GUi), a1=?, a2=[a0+168], a3=?.
  The `jalr` at 0x1002d8c0 calls getTheQuestionDialog__Gv with a0=?, a1=[[sym(xsetmonApp)]+132]:1, a2=?, a3=?.
  The `jalr` at 0x1002d8f0 calls (unknown callee) with a0=([[ret(getTheQuestionDialog__Gv)+8]+264] + ret(getTheQuestionDialog__Gv)), a1=?, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x1002d904 calls checkPriv__7xsetmonGv [0x10041490] with a0=[sym(xsetmonApp)], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002d918 calls atoi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002d944 calls XSGIvcSetPlatformParameter with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=0x0, a4=sp-88, a5=0x20.
  The `jalr` at 0x1002d95c calls XSync with a0=[[sym(xsetmonApp)]+312], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1002d978 calls XtFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002d984 calls __dla__GPv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002d9b8 calls getTheWarningDialog__Gv with a0=?, a1=[sym(requestErrCatched)], a2=?, a3=?.
  The `jalr` at 0x1002d9d0 calls VkGetResource__GPCcT1 with a0=0x100449f8, a1=0x100449f8, a2=?, a3=?.
  The `jalr` at 0x1002da04 calls (unknown callee) with a0=?, a1=ret(VkGetResource__GPCcT1), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `beq` branch at 0x1002d81c targets 0x1002d9a8, is taken when (v0(=ret(XmListGetSelectedPos)) & 0xff) == 0, and falls through when (v0(=ret(XmListGetSelectedPos)) & 0xff) != 0.
  The `beq` branch at 0x1002d8b4 targets 0x1002d974, is taken when a1(=[[sym(xsetmonApp)]+132]:1) == 0, and falls through when a1(=[[sym(xsetmonApp)]+132]:1) != 0.
  The `beq` branch at 0x1002d8f8 targets 0x1002d974, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x1002d90c targets 0x1002d974, is taken when v0(=ret(checkPriv__7xsetmonGv)) == 0, and falls through when v0(=ret(checkPriv__7xsetmonGv)) != 0.
  The `beq` branch at 0x1002d96c targets 0x1002d9b8, is taken when a1(=[sym(requestErrCatched)]) == 0, and falls through when a1(=[sym(requestErrCatched)]) != 0.
  The `beq` branch at 0x1002da0c targets 0x1002d974 and is always taken.
  The return at 0x1002d9a0 has v0 = ret(__dla__GPv).
  The return at 0x1002d9b0 has v0 = ?.

- `className__21AboutXsetmonFormClassGv` in `usr/bin/X11/xsetmon` at 0x1002da20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002da20-0x1002da38 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1002da2c loads 4 bytes from abs 0x1005091c.
  The return at 0x1002da30 has v0 = 0x10043eb0.

- `className__21SetmonMasterFormClassGv` in `usr/bin/X11/xsetmon` at 0x1002da40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002da40-0x1002da58 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1002da4c loads 4 bytes from abs 0x1005091c.
  The return at 0x1002da50 has v0 = 0x10046738.

- `__ct__7MMatrixGiT1` in `usr/bin/X11/xsetmon` at 0x1002da60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002da60-0x1002db04 (164 bytes).
  It occupies 164 bytes.
  The `sw` at 0x1002dad4 stores 4 bytes to a0 (arg0 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1002dad8, `lw` at 0x1002dae0.
  The `jalr` at 0x1002da90 calls __nw__GUi with a0=0x10, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002dab4 calls __ct__9MMdtArrayGiT1 [0x1002d5c0] with a0=ret(__nw__GUi), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x1002dae4 calls memset with a0=?, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x1002da9c targets 0x1002dacc, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1002dac4 targets 0x1002dad4 and is always taken.
  The return at 0x1002dafc has v0 = a0.

- `localmemset__7MMatrixGPviUi` in `usr/bin/X11/xsetmon` at 0x1002db10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002db10-0x1002dbd0 (192 bytes).
  It occupies 192 bytes.
  The `jalr` at 0x1002db48 calls __ls__7ostreamGPCc with a0=sym(cout), a1=0x10049548, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002db58 calls __ls__7ostreamGPv with a0=ret(__ls__7ostreamGPCc), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x1002db6c calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGPv), a1=0x10049560, a2=?, a3=?.
  The `jalr` at 0x1002db7c calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0x1002db90 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x100519b0, a2=?, a3=?.
  The `jalr` at 0x1002dba0 calls __ls__7ostreamGUi with a0=ret(__ls__7ostreamGPCc), a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0x1002dbb0 calls endl__GR7ostream with a0=ret(__ls__7ostreamGUi), a1=?, a2=?, a3=?.
  The return at 0x1002dbc8 has v0 = a1.

- `ClearfbConfig__21SetmonMasterFormClassGv` in `usr/bin/X11/xsetmon` at 0x1002dbd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002dbd0-0x1002dc04 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x1002dbf0 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x1002dbec calls ClearfbConfig__19StatisticsFormClassGv [0x10028d60] with a0=[a0+40], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1002dbfc has v0 = ret(ClearfbConfig__19StatisticsFormClassGv).

- `doArmDragCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi` in `usr/bin/X11/xsetmon` at 0x1002dc10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002dc10-0x1002dca8 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x1002dc60 loads 4 bytes from ?.
  The `jalr` at 0x1002dc4c calls XtVaGetValues with a0=a0 at entry (arg0), a1=-0xa, a2=sp-64, a3=0x0.
  The `jalr` at 0x1002dc5c calls XmToggleButtonGetState with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1002dc78 calls doArmRegionDragCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi [0x10024f00] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002dc98 calls doArmScalarDragCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi [0x1002ad20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1002dc6c targets 0x1002dc94, is taken when v0(=ret(XmToggleButtonGetState)) == 0, and falls through when v0(=ret(XmToggleButtonGetState)) != 0.
  The `beq` branch at 0x1002dca0 targets 0x1002dc84 and is always taken.
  The return at 0x1002dc8c has v0 = one of ret(doArmRegionDragCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi), ret(doArmScalarDragCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi).

- `loadData__18XSetmonWindowClassGPCc` in `usr/bin/X11/xsetmon` at 0x1002dcb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002dcb0-0x1002ddd0 (288 bytes).
  It occupies 288 bytes.
  The `lbu` at 0x1002dcbc loads 1 byte from a1 (arg1 at entry) +0x0.
  The `lw` at 0x1002ddb8 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `jalr` at 0x1002dce8 calls getTheFileSelectionDialog__Gv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002dcf8 calls setSelection__21VkFileSelectionDialogGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x1002dd14 calls getcwd with a0=0x0, a1=0x64, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002dd28 calls strlen with a0=ret(getcwd), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002dd38 calls strlen with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002dd48 calls __nwa__GUi with a0=(ret(strlen) + ret(strlen))+10, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002dd64 calls sprintf with a0=ret(__nwa__GUi), a1=0x100518f8, a2=ret(getcwd), a3=a1 at entry (arg1).
  The `jalr` at 0x1002dd70 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002dd80 calls setSelection__21VkFileSelectionDialogGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=ret(__nwa__GUi), a2=?, a3=?.
  The `jalr` at 0x1002dd8c calls free with a0=ret(getcwd), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002dd98 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jal` at 0x1002ddb4 calls loadData__21MasterTabbedDeckClassGPCc [0x1002b910] with a0=[a0+68], a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0x1002dcdc targets 0x1002dd08, is taken when at(=[a1]:1) != v0(=0x2f), and falls through when at(=[a1]:1) == v0(=0x2f).
  The `beq` branch at 0x1002dd00 targets 0x1002dda0 and is always taken.
  The return at 0x1002ddc8 has v0 = ret(loadData__21MasterTabbedDeckClassGPCc).

- `changeChannel__16ChannelFormClassGPC22ChannelDescriptorClass` in `usr/bin/X11/xsetmon` at 0x1002ddd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002ddd0-0x1002de04 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x1002ddf0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `jal` at 0x1002ddec calls populateFormWithChannel__16ChannelFormClassGi [0x1002d050] with a0=a0 at entry (arg0), a1=[a1], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1002ddfc has v0 = ret(populateFormWithChannel__16ChannelFormClassGi).

- `__ct__16GainControlClassGPCc` in `usr/bin/X11/xsetmon` at 0x1002de10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002de10-0x1002de58 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x1002de48 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x1002de30 calls __ct__18GainControlClassUIGPCc [0x1003cc90] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1002de50 has v0 = a0.

- `vClearScreen__19GammaMapEditorClassCGv` in `usr/bin/X11/xsetmon` at 0x1002de60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002de60-0x1002deb8 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0x1002de84 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x1002de88 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x1002de90 loads 4 bytes from [sym(xsetmonApp)] +0x6c.
  The `jalr` at 0x1002de8c calls XtWindow with a0=[a0+36], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002de9c calls XClearWindow with a0=[[sym(xsetmonApp)]+108], a1=ret(XtWindow), a2=?, a3=?.
  The return at 0x1002deb0 has v0 = ret(XClearWindow).

- `doHorizontalPhaseCallbackCallback__18ChannelFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x1002dec0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002dec0-0x1002df04 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1002dec4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1002ded0 loads 4 bytes from [a1+8] +0xb4.
  The `lw` at 0x1002dedc loads 4 bytes from [a1+8] +0xbc.
  The `jalr` at 0x1002deec calls (unknown callee) with a0=([[a1+8]+180] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x2aa3c.
  The return at 0x1002defc has v0 = ret(?).

- `doResetEditing__21MasterTabbedDeckClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1002df10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002df10-0x1002df4c (60 bytes).
  It occupies 60 bytes.
  The `jal` at 0x1002df34 calls VkUnimplemented__GP10_WidgetRecPCc [0x10042a40] with a0=0x0, a1=0x10045e28, a2=0x2a9ec, a3=a3 at entry (arg3).
  The return at 0x1002df44 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `__ct__17TextErrorMessagerGPCc` in `usr/bin/X11/xsetmon` at 0x1002df50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002df50-0x1002dfa8 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0x1002df90 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x1002df94 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `jal` at 0x1002df78 calls __ct__13ErrorMessagerGv [0x1003cf80] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1002dfa0 has v0 = a0.

- `vListfbConfigs__27FormatCombinationListsClassGv` in `usr/bin/X11/xsetmon` at 0x1002dfb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002dfb0-0x1002e170 (448 bytes).
  It occupies 448 bytes.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xe0, including `sw` at 0x1002dff0, `sw` at 0x1002e0a0.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1002dff4, `lw` at 0x1002e088.
  The `lw` at 0x1002e000 loads 4 bytes from [sym(xsetmonApp)] +0x138.
  The `lw` at 0x1002e018 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1002e03c, `lw` at 0x1002e05c, `lw` at 0x1002e08c.
  The `sw` at 0x1002e0a8 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1002e0d0, `lw` at 0x1002e0dc, `lw` at 0x1002e110.
  The `lw` at 0x1002e120 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `jalr` at 0x1002dfd8 calls __ct__10VkNameListGv with a0=sp-96, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002e014 calls XSGIvcQueryPlatformParameter with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=0x0, a4=[sym(xsetmonApp)]+208, a5=0x24.
  The `jalr` at 0x1002e038 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002e044 calls __nwa__GUi with a0=ret(strlen)+10, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002e060 calls sprintf with a0=ret(__nwa__GUi), a1=0x10044ac0, a2=?, a3=?.
  The `jalr` at 0x1002e070 calls add__10VkNameListGPc with a0=sp-96, a1=ret(__nwa__GUi), a2=?, a3=?.
  The `jalr` at 0x1002e07c calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002e090 calls strcmp with a0=?, a1=[sym(xsetmonApp)]+208, a2=?, a3=?.
  The `jalr` at 0x1002e0cc calls XtVaGetValues with a0=[a0+68], a1=-0x84, a2=sp-80, a3=0x0.
  The `jalr` at 0x1002e0d8 calls XmListDeleteAllItems with a0=[a0+68], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002e0e4 calls freeXmStringTable__10VkNameListSGPPUc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002e0f0 calls getXmStringTable__10VkNameListCGv with a0=sp-96, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002e10c calls XmListAddItems with a0=[a0+68], a1=ret(getXmStringTable__10VkNameListCGv), a2=?, a3=0x1.
  The `jalr` at 0x1002e118 calls freeXmStringTable__10VkNameListSGPPUc with a0=ret(getXmStringTable__10VkNameListCGv), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002e130 calls XmListSelectPos with a0=[a0+68], a1=[a0+224], a2=0x0, a3=?.
  The `jalr` at 0x1002e158 calls __dt__10VkNameListGv with a0=sp-96, a1=0x2, a2=?, a3=?.
  The `bne` branch at 0x1002e098 targets 0x1002e0b0, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `bne` branch at 0x1002e0b4 targets 0x1002e034, is taken when s0(?) != s4(=0x1004cf70), and falls through when s0(?) == s4(=0x1004cf70).
  The `blez` branch at 0x1002e124 targets 0x1002e138, is taken when a1(=[a0+224]) <= 0 (signed), and falls through when a1(=[a0+224]) > 0 (signed).
  The return at 0x1002e168 has v0 = ret(__dt__10VkNameListGv).

- `__ct__16AboutDialogClassGPCc` in `usr/bin/X11/xsetmon` at 0x1002e170 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002e170-0x1002e1c8 (88 bytes).
  It occupies 88 bytes.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0x1002e1ac, `sw` at 0x1002e1b8.
  The `jalr` at 0x1002e194 calls __ct__15VkDialogManagerGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1002e1c0 has v0 = a0.

- `className__16AboutDialogClassGv` in `usr/bin/X11/xsetmon` at 0x1002e1d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002e1d0-0x1002e1e8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1002e1dc loads 4 bytes from abs 0x1005091c.
  The return at 0x1002e1e0 has v0 = 0x10043e80.

- `input__19GammaMapEditorClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1002e1f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002e1f0-0x1002e22c (60 bytes).
  It occupies 60 bytes.
  The `jal` at 0x1002e214 calls VkUnimplemented__GP10_WidgetRecPCc [0x10042a40] with a0=a1 at entry (arg1), a1=0x10045980, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1002e224 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doButtonNominalGain__16GainControlClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1002e230 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002e230-0x1002e2b8 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0x1002e258 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x1002e274 loads 4 bytes from a0 (arg0 at entry) +0x38.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1002e278, `lw` at 0x1002e298.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x1002e280, `lw` at 0x1002e2a4.
  The `lw` at 0x1002e284 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lw` at 0x1002e28c loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `jal` at 0x1002e254 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+36], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002e264 calls __as__9EZWrapperGi [0x1001fb40] with a0=ret(EZ__GP10_WidgetRec), a1=0xa, a2=?, a3=?.
  The `jalr` at 0x1002e288 calls XSGIvcSetOutputGain with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[a0+52], a3=[a0+56]; fp f16=0x3f800000.
  The `jalr` at 0x1002e2a0 calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=?, a2=?, a3=?.
  The return at 0x1002e2b0 has v0 = ret(XFlush).

- `className__10GammaClassGv` in `usr/bin/X11/xsetmon` at 0x1002e2c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002e2c0-0x1002e2d8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1002e2cc loads 4 bytes from abs 0x1005091c.
  The return at 0x1002e2d0 has v0 = 0x10045400.

- `__ct__13GammaEditUndoGP19GammaMapEditorClass` in `usr/bin/X11/xsetmon` at 0x1002e2e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002e2e0-0x1002e390 (176 bytes).
  It occupies 176 bytes.
  The `sw` at 0x1002e2e4 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0x1002e2fc loads 4 bytes from a1 (arg1 at entry) +0x54.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x1002e314, `lw` at 0x1002e348, `lw` at 0x1002e368.
  The `sw` at 0x1002e318 stores 4 bytes to a0 (arg0 at entry) +0x4.
  3 such `lw` accesses load 4 bytes from [a0] +0x54, including `lw` at 0x1002e31c, `lw` at 0x1002e34c, `lw` at 0x1002e36c.
  The `lw` at 0x1002e338 loads 4 bytes from [a0] +0x64.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x1002e340, `lhu` at 0x1002e360.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x1002e344, `sh` at 0x1002e364.
  The `jalr` at 0x1002e30c calls __nwa__GUi with a0=([a1+84] + [a1+84]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `blez` branch at 0x1002e334 targets 0x1002e384, is taken when a5(=[[a0]+84]) <= 0 (signed), and falls through when a5(=[[a0]+84]) > 0 (signed).
  The `beq` branch at 0x1002e358 targets 0x1002e384, is taken when a2(?) >= a6(=[[a0]+84]) (signed), and falls through when a2(?) < a6(=[[a0]+84]) (signed).
  The `bne` branch at 0x1002e37c targets 0x1002e340, is taken when a2(?) < t0(=[[a0]+84]) (signed), and falls through when a2(?) >= t0(=[[a0]+84]) (signed).
  The return at 0x1002e388 has v0 = a0.

- `__ct__21MasterTabbedDeckClassGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1002e390 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002e390-0x1002e6b8 (808 bytes).
  It occupies 808 bytes.
  The `sw` at 0x1002e3c4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x1002e414, `lw` at 0x1002e494, `lw` at 0x1002e514.
  The `sw` at 0x1002e444 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x1002e44c, `lw` at 0x1002e650.
  The `lw` at 0x1002e450 loads 4 bytes from [a0+44] +0x8.
  The `lw` at 0x1002e454 loads 4 bytes from [[a0+44]+8] +0x2c.
  The `lw` at 0x1002e458 loads 4 bytes from [[a0+44]+8] +0x24.
  The `sw` at 0x1002e4c4 stores 4 bytes to a0 (arg0 at entry) +0x30.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x1002e4cc, `lw` at 0x1002e670.
  The `lw` at 0x1002e4d0 loads 4 bytes from [a0+48] +0x8.
  The `lw` at 0x1002e4d4 loads 4 bytes from [[a0+48]+8] +0x2c.
  The `lw` at 0x1002e4d8 loads 4 bytes from [[a0+48]+8] +0x24.
  The `sw` at 0x1002e544 stores 4 bytes to a0 (arg0 at entry) +0x34.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x34, including `lw` at 0x1002e54c, `lw` at 0x1002e688.
  The `lw` at 0x1002e550 loads 4 bytes from [a0+52] +0x8.
  The `lw` at 0x1002e554 loads 4 bytes from [[a0+52]+8] +0x2c.
  The `lw` at 0x1002e558 loads 4 bytes from [[a0+52]+8] +0x24.
  The `sb` at 0x1002e56c stores 1 byte to a0 (arg0 at entry) +0x40.
  The `sw` at 0x1002e5d0 stores 4 bytes to a0 (arg0 at entry) +0x38.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x1002e5e0, `lw` at 0x1002e5e8, `lw` at 0x1002e610.
  2 such `lw` accesses load 4 bytes from [a0+56] +0x8, including `lw` at 0x1002e5ec, `lw` at 0x1002e614.
  The `lw` at 0x1002e5f0 loads 4 bytes from [[a0+56]+8] +0x2c.
  The `lw` at 0x1002e5f4 loads 4 bytes from [[a0+56]+8] +0x24.
  The `lbu` at 0x1002e604 loads 1 byte from a0 (arg0 at entry) +0x40.
  The `lw` at 0x1002e618 loads 4 bytes from [[a0+56]+8] +0x38.
  The `lw` at 0x1002e61c loads 4 bytes from [[a0+56]+8] +0x30.
  The `jal` at 0x1002e3b0 calls __ct__12MyTabbedDeckGPCcP10_WidgetRec [0x10032e20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002e3c8 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002e3dc calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultMasterTabbedDeckClassResources__21MasterTabbedDeckClass), a3=?.
  The `jalr` at 0x1002e3ec calls __nw__GUi with a0=0x40, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002e410 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=0x1, a2=?, a3=0x0.
  The `jal` at 0x1002e428 calls __ct__21SetmonMasterFormClassGPCcP10_WidgetRec [0x10030fd0] with a0=ret(__nw__GUi), a1=0x10045db8, a2=ret(baseWidget__11VkComponentCGv), a3=?.
  The `jalr` at 0x1002e45c calls (unknown callee) with a0=([[[a0+44]+8]+36] + [a0+44]), a1=[a0+44], a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1002e46c calls __nw__GUi with a0=0x7c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002e490 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=?, a3=0x1.
  The `jal` at 0x1002e4a8 calls __ct__19ServerInfoFormClassGPCcP10_WidgetRec [0x10042400] with a0=ret(__nw__GUi), a1=0x10045dd0, a2=ret(baseWidget__11VkComponentCGv), a3=?.
  The `jalr` at 0x1002e4dc calls (unknown callee) with a0=([[[a0+48]+8]+36] + [a0+48]), a1=[a0+48], a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1002e4ec calls __nw__GUi with a0=0x108, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002e510 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=?, a3=0x1.
  The `jal` at 0x1002e528 calls __ct__16ChannelFormClassGPCcP10_WidgetRec [0x10037ad0] with a0=ret(__nw__GUi), a1=0x10045de8, a2=ret(baseWidget__11VkComponentCGv), a3=?.
  The `jalr` at 0x1002e55c calls (unknown callee) with a0=([[[a0+52]+8]+36] + [a0+52]), a1=[a0+52], a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1002e574 calls __nw__GUi with a0=0x78, a1=?, a2=?, a3=a0 at entry (arg0).
  The `jalr` at 0x1002e598 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=?, a3=0x0, a4=0x1.
  The `jal` at 0x1002e5b0 calls __ct__10GammaClassGPCcP10_WidgetRec [0x10037630] with a0=ret(__nw__GUi), a1=0x10045e00, a2=ret(baseWidget__11VkComponentCGv), a3=?.
  The `jal` at 0x1002e5dc calls setTabbedDeckParent__10GammaClassGP21MasterTabbedDeckClass [0x10042a30] with a0=[a0+56], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x1002e5f8 calls (unknown callee) with a0=([[[a0+56]+8]+36] + [a0+56]), a1=[a0+56], a2=?, a3=?.
  The `jalr` at 0x1002e620 calls (unknown callee) with a0=([[[a0+56]+8]+48] + [a0+56]), a1=[a0+56], a2=[a0+64]:1, a3=?, a4=a0 at entry (arg0).
  The `jal` at 0x1002e638 calls unregisterChild__12MyTabbedDeckGP11VkComponentPCc [0x10025b40] with a0=a0 at entry (arg0), a1=[a0+56], a2=0x10045e00, a3=?.
  The `jal` at 0x1002e654 calls registerChild__12MyTabbedDeckGP11VkComponentPCc [0x10041ed0] with a0=a0 at entry (arg0), a1=[a0+44], a2=0x10045db8, a3=?, a4=a0 at entry (arg0).
  The `jal` at 0x1002e66c calls registerChild__12MyTabbedDeckGP11VkComponentPCc [0x10041ed0] with a0=a0 at entry (arg0), a1=[a0+48], a2=0x10045dd0, a3=?.
  The `jal` at 0x1002e684 calls registerChild__12MyTabbedDeckGP11VkComponentPCc [0x10041ed0] with a0=a0 at entry (arg0), a1=[a0+52], a2=0x10045de8, a3=?.
  The `jal` at 0x1002e69c calls registerChild__12MyTabbedDeckGP11VkComponentPCc [0x10041ed0] with a0=a0 at entry (arg0), a1=[a0+56], a2=0x10045e00, a3=?.
  The `beq` branch at 0x1002e3f8 targets 0x1002e440, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1002e438 targets 0x1002e444 and is always taken.
  The `beq` branch at 0x1002e478 targets 0x1002e4c0, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1002e4b8 targets 0x1002e4c4 and is always taken.
  The `beq` branch at 0x1002e4f8 targets 0x1002e540, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1002e538 targets 0x1002e544 and is always taken.
  The `beq` branch at 0x1002e580 targets 0x1002e5c8, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1002e5c0 targets 0x1002e5cc and is always taken.
  The `beq` branch at 0x1002e608 targets 0x1002e648, is taken when a2(=[a0+64]:1) == 0, and falls through when a2(=[a0+64]:1) != 0.
  The return at 0x1002e6b0 has v0 = a0.

- `configureSyncPort__17SyncSelectorFrameGiP21XSGIvcChannelSyncInfo` in `usr/bin/X11/xsetmon` at 0x1002e6c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002e6c0-0x1002e958 (664 bytes).
  It occupies 664 bytes.
  The `sw` at 0x1002e6c0 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `lw` at 0x1002e6c4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sw` at 0x1002e6cc stores 4 bytes to a0 (arg0 at entry) +0x38.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x1002e748, `lw` at 0x1002e784, `lw` at 0x1002e7b0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x1002e764, `lw` at 0x1002e7b4, `lw` at 0x1002e840.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1002e770, `lw` at 0x1002e7cc, `lw` at 0x1002e7f4.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x1002e798, `lw` at 0x1002e89c.
  The `lw` at 0x1002e7c0 loads 4 bytes from a2 (arg2 at entry) +0x4.
  2 such `lw` accesses load 4 bytes from [a0+44] +0x0, including `lw` at 0x1002e7dc, `lw` at 0x1002e85c.
  The `lw` at 0x1002e80c loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x1002e814 loads 4 bytes from [sym(xsetmonApp)] +0x138.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x1002e81c, `lw` at 0x1002e92c.
  The `lw` at 0x1002e828 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `lw` at 0x1002e8a8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jalr` at 0x1002e730 calls sprintf with a0=sp-176, a1=0x10051890, a2=[a2], a3=a3 at entry (arg3), a4=[a2].
  The `jal` at 0x1002e740 calls setLabel__17SyncSelectorFrameGPCc [0x100416b0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002e76c calls baseWidget__10VkMenuItemCGv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002e77c calls XtSetSensitive with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1002e824 calls XSGIvcQueryOutputSync with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=a1 at entry (arg1), a3=[a0+56], a4=sp-72.
  The `jalr` at 0x1002e880 calls baseWidget__10VkMenuItemCGv with a0=?, a1=?, a2=?, a3=?, a5=([a0+44] + ([a0+48] << 0x4)).
  The `jalr` at 0x1002e890 calls XtSetSensitive with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1002e8a4 calls set__12VkOptionMenuGP10VkMenuItem with a0=[a0+40], a1=?, a2=?, a3=?, a5=([a0+44] + ([a0+48] << 0x4)).
  The `jalr` at 0x1002e8f8 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10048140, a2=?, a3=?.
  The `jalr` at 0x1002e908 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x1002e918 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x100518b8, a2=?, a3=?.
  The `jalr` at 0x1002e928 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=[a0+56], a2=?, a3=?.
  The `jalr` at 0x1002e938 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x100518c0, a2=?, a3=?.
  The `jalr` at 0x1002e944 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002e950 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002e704 targets 0x1002e8d8, is taken when a4(=[a2]) == at(=-0x1), and falls through when a4(=[a2]) != at(=-0x1).
  The `beq` branch at 0x1002e710 targets 0x1002e8e0, is taken when a4(=[a2]) == v1(=-0x2), and falls through when a4(=[a2]) != v1(=-0x2).
  The `beq` branch at 0x1002e718 targets 0x1002e8e8, is taken when a4(=[a2]) == a0(=-0x3), and falls through when a4(=[a2]) != a0(=-0x3).
  The `beq` branch at 0x1002e720 targets 0x1002e8d0, is taken when a4(=[a2]) == a1(=-0x4), and falls through when a4(=[a2]) != a1(=-0x4).
  The `blez` branch at 0x1002e74c targets 0x1002e798, is taken when a2(=[a0+48]) <= 0 (signed), and falls through when a2(=[a0+48]) > 0 (signed).
  The `bne` branch at 0x1002e790 targets 0x1002e760, is taken when s2(?) < a1(=[a0+48]) (signed), and falls through when s2(?) >= a1(=[a0+48]) (signed).
  The `blez` branch at 0x1002e79c targets 0x1002e80c, is taken when t0(=[a2+8]) <= 0 (signed), and falls through when t0(=[a2+8]) > 0 (signed).
  The `blez` branch at 0x1002e7b8 targets 0x1002e7f8, is taken when a0(=[a0+48]) <= 0 (signed), and falls through when a0(=[a0+48]) > 0 (signed).
  The `beq` branch at 0x1002e7e0 targets 0x1002e880, is taken when t1(?) == a6(?), and falls through when t1(?) != a6(?).
  The `bnel` branch at 0x1002e7f0 targets 0x1002e7e0, is taken when a4(?) < a5(=([a0+44] + ([a0+48] << 0x4))) (unsigned), and falls through when a4(?) >= a5(=([a0+44] + ([a0+48] << 0x4))) (unsigned); its branch-likely delay slot `lw t1,0(a4)` at 0x1002e7f4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x1002e800 targets 0x1002e7b0, is taken when s2(?) < t0(=[a2+8]) (signed), and falls through when s2(?) >= t0(=[a2+8]) (signed).
  The `beq` branch at 0x1002e82c targets 0x1002e8f0, is taken when v0(=ret(XSGIvcQueryOutputSync)) == 0, and falls through when v0(=ret(XSGIvcQueryOutputSync)) != 0.
  The `blez` branch at 0x1002e838 targets 0x1002e8b0, is taken when a0(=[a0+48]) <= 0 (signed), and falls through when a0(=[a0+48]) > 0 (signed).
  The `beq` branch at 0x1002e860 targets 0x1002e8a0, is taken when a6(?) == a2(?), and falls through when a6(?) != a2(?).
  The `bnel` branch at 0x1002e870 targets 0x1002e860, is taken when a4(?) < a5(=([a0+44] + ([a0+48] << 0x4))) (unsigned), and falls through when a4(?) >= a5(=([a0+44] + ([a0+48] << 0x4))) (unsigned); its branch-likely delay slot `lw a6,0(a4)` at 0x1002e874 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1002e878 targets 0x1002e8b0 and is always taken.
  The `beq` branch at 0x1002e898 targets 0x1002e7f8 and is always taken.
  The `beq` branch at 0x1002e8d0 targets 0x1002e73c and is always taken.
  The `beq` branch at 0x1002e8d8 targets 0x1002e73c and is always taken.
  The `beq` branch at 0x1002e8e0 targets 0x1002e73c and is always taken.
  The `beq` branch at 0x1002e8e8 targets 0x1002e73c and is always taken.
  The return at 0x1002e8c8 has v0 = one of ret(XSGIvcQueryOutputSync), ret(set__12VkOptionMenuGP10VkMenuItem).

- `ClearfbDepth__19StatisticsFormClassGv` in `usr/bin/X11/xsetmon` at 0x1002e960 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002e960-0x1002e968 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1002e960 has v0 = ?.

- `CreateGammaClass__10GammaClassSGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1002e970 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002e970-0x1002e9f0 (128 bytes).
  It occupies 128 bytes.
  The `jalr` at 0x1002e998 calls __nw__GUi with a0=0x78, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002e9c0 calls __ct__10GammaClassGPCcP10_WidgetRec [0x10037630] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x1002e9a4 targets 0x1002e9dc, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x1002e9d4 has v0 = ret(__nw__GUi).
  The return at 0x1002e9e8 has v0 = 0x0.

- `quitCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x1002e9f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002e9f0-0x1002ea34 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1002e9f4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1002ea00 loads 4 bytes from [a1+8] +0x1a4.
  The `lw` at 0x1002ea0c loads 4 bytes from [a1+8] +0x1ac.
  The `jalr` at 0x1002ea1c calls (unknown callee) with a0=([[a1+8]+420] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x29f0c.
  The return at 0x1002ea2c has v0 = ret(?).

- `combinationSelected__29FormatCombinationListsClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1002ea40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002ea40-0x1002ea48 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1002ea40 has v0 = ?.

- `postWarningMessage__22ScrollingErrorMessagerGP9strstream` in `usr/bin/X11/xsetmon` at 0x1002ea50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002ea50-0x1002eab0 (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0x1002ea74 calls str__9strstreamGv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002ea88 calls appendText__22ScrollingErrorMessagerGPc [0x10027c70] with a0=a0 at entry (arg0), a1=ret(str__9strstreamGv), a2=?, a3=?.
  The `jalr` at 0x1002ea98 calls __dl__GPv with a0=ret(str__9strstreamGv), a1=?, a2=?, a3=?.
  The return at 0x1002eaa8 has v0 = ret(__dl__GPv).

- `loadData__10GammaClassGP8__file_s` in `usr/bin/X11/xsetmon` at 0x1002eab0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002eab0-0x1002ec64 (436 bytes).
  It occupies 436 bytes.
  The `lw` at 0x1002eb3c loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x1002eb40 loads 4 bytes from [sym(xsetmonApp)] +0x98.
  The `lw` at 0x1002eb5c loads 4 bytes from a0 (arg0 at entry) +0x30.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x68, including `lw` at 0x1002eb94, `lw` at 0x1002ebf0.
  The `lw` at 0x1002ebb0 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x1002ebc4 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x1002ebd8 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0x1002ebf4, `lw` at 0x1002ec2c.
  The `lw` at 0x1002ec28 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1002ec38 loads 4 bytes from [a0+8] +0xa4.
  The `lw` at 0x1002ec40 loads 4 bytes from [a0+8] +0x9c.
  The `jalr` at 0x1002eae8 calls fread with a0=sp-80, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x1002eb34 calls fread with a0=sp-76, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jal` at 0x1002eb58 calls setChannelCurMap__22GammaAssignmentClassUIGiT1 [0x10039640] with a0=[a0+48], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002eb78 calls fread with a0=sp-72, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jal` at 0x1002ebac calls loadData__19GammaMapEditorClassGP18GammaMapDescriptorP8__file_s [0x10027cb0] with a0=[a0+36], a1=?, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x1002ebc0 calls loadData__19GammaMapEditorClassGP18GammaMapDescriptorP8__file_s [0x10027cb0] with a0=[a0+40], a1=?, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x1002ebd4 calls loadData__19GammaMapEditorClassGP18GammaMapDescriptorP8__file_s [0x10027cb0] with a0=[a0+44], a1=?, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x1002ec20 calls getOpMenuIndex__12GammaClassUIGv [0x10038b50] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002ec48 calls (unknown callee) with a0=([[a0+8]+156] + a0), a1=?, a2=?, a3=?.
  The `blez` branch at 0x1002eb00 targets 0x1002eb68, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `beq` branch at 0x1002eb0c targets 0x1002eb28 and is always taken.
  The `beq` branch at 0x1002eb20 targets 0x1002eb68, is taken when s2(?) >= v1(?) (signed), and falls through when s2(?) < v1(?) (signed).
  The `beq` branch at 0x1002eb48 targets 0x1002eb14, is taken when s2(?) >= a0(=[[sym(xsetmonApp)]+152]) (signed), and falls through when s2(?) < a0(=[[sym(xsetmonApp)]+152]) (signed).
  The `beq` branch at 0x1002eb60 targets 0x1002eb18 and is always taken.
  The `blez` branch at 0x1002eb88 targets 0x1002ec0c, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `beq` branch at 0x1002eb90 targets 0x1002ebf4 and is always taken.
  The `beq` branch at 0x1002ebe8 targets 0x1002ec0c, is taken when s3(?) >= t8(?) (signed), and falls through when s3(?) < t8(?) (signed).
  The `bne` branch at 0x1002ebfc targets 0x1002eba0, is taken when s3(?) < t9(=[a0+104]) (signed), and falls through when s3(?) >= t9(=[a0+104]) (signed).
  The `beq` branch at 0x1002ec04 targets 0x1002eba0 and is always taken.
  The return at 0x1002ec5c has v0 = ret(?).
  The instructions from 0x1002eb98 to 0x1002eb9c are not reached by any path from the entry, and their branches are not listed.

- `__ct__19GammaMapEditorClassGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1002ec70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002ec70-0x1002ed0c (156 bytes).
  It occupies 156 bytes.
  The `sw` at 0x1002eca0 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x1002eca8 stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `sw` at 0x1002ecb0 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sw` at 0x1002ecb8 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The `sw` at 0x1002ecc0 stores 4 bytes to a0 (arg0 at entry) +0x98.
  The `sw` at 0x1002ecc8 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0x1002ecd0 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x1002ecd8 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  The `sw` at 0x1002ece0 stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x1002ecec stores 4 bytes to a0 (arg0 at entry) +0xb4.
  The `sw` at 0x1002ecfc stores 4 bytes to a0 (arg0 at entry) +0xac.
  The `jal` at 0x1002ec90 calls __ct__21GammaMapEditorClassUIGPCcP10_WidgetRec [0x100265a0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1002ed04 has v0 = a0.

- `create__29FormatCombinationListsClassUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1002ed10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1002ed10-0x10030508 (6136 bytes).
  It occupies 6136 bytes.
  The `lw` at 0x1002ed44 loads 4 bytes from a0 (arg0 at entry) +0xc.
  11 such `lw` accesses load 4 bytes from sym(xmFormWidgetClass) +0x0, including `lw` at 0x1002ed64, `lw` at 0x1002ed80, `lw` at 0x1002ee48.
  The `sw` at 0x1002ed6c stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x1002ed78 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x1002ed7c, `lw` at 0x1002f1cc, `lw` at 0x1002f608.
  The `sw` at 0x1002ee44 stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `sw` at 0x1002eef8 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  5 such `lw` accesses load 4 bytes from sym(xmPushButtonWidgetClass) +0x0, including `lw` at 0x1002eefc, `lw` at 0x1002f358, `lw` at 0x1002f780.
  The `sw` at 0x1002efc4 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x1002efdc, `lw` at 0x1002f0d8.
  5 such `lw` accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0, including `lw` at 0x1002efe0, `lw` at 0x1002f42c, `lw` at 0x1002f854.
  The `lw` at 0x1002f01c loads 4 bytes from a0 (arg0 at entry) +0x7c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x1002f0a0, `lw` at 0x1002fa30, `lw` at 0x100302dc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0x1002f0a8, `sw` at 0x1002fd3c.
  5 such `lw` accesses load 4 bytes from sym(xmScrolledWindowWidgetClass) +0x0, including `lw` at 0x1002f0ac, `lw` at 0x1002f4ec, `lw` at 0x1002f914.
  The `sw` at 0x1002f1a0 stores 4 bytes to a0 (arg0 at entry) +0x90.
  5 such `lw` accesses load 4 bytes from sym(xmListWidgetClass) +0x0, including `lw` at 0x1002f1a4, `lw` at 0x1002f5e0, `lw` at 0x1002fa08.
  The `sw` at 0x1002f1c8 stores 4 bytes to a0 (arg0 at entry) +0x44.
  The `lw` at 0x1002f26c loads 4 bytes from sym(numFbDepths) +0x0.
  The `sw` at 0x1002f2a8 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x1002f354 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `sw` at 0x1002f424 stores 4 bytes to a0 (arg0 at entry) +0x80.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x1002f428, `lw` at 0x1002f518.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x80, including `lw` at 0x1002f468, `lw` at 0x10030380, `lw` at 0x100304e4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x58, including `lw` at 0x1002f4e4, `lw` at 0x1003030c, `lw` at 0x10030460.
  The `sw` at 0x1002f4e8 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0x1002f5dc stores 4 bytes to a0 (arg0 at entry) +0x94.
  The `sw` at 0x1002f604 stores 4 bytes to a0 (arg0 at entry) +0x48.
  The `sw` at 0x1002f6d0 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `sw` at 0x1002f77c stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `sw` at 0x1002f84c stores 4 bytes to a0 (arg0 at entry) +0x84.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x34, including `lw` at 0x1002f850, `lw` at 0x1002f940.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x84, including `lw` at 0x1002f890, `lw` at 0x10030388, `lw` at 0x100304ec.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5c, including `lw` at 0x1002f90c, `lw` at 0x1003033c, `lw` at 0x10030420.
  The `sw` at 0x1002f910 stores 4 bytes to a0 (arg0 at entry) +0x70.
  The `sw` at 0x1002fa04 stores 4 bytes to a0 (arg0 at entry) +0x98.
  The `sw` at 0x1002fa2c stores 4 bytes to a0 (arg0 at entry) +0x4c.
  The `sw` at 0x1002fafc stores 4 bytes to a0 (arg0 at entry) +0x24.
  The `sw` at 0x1002fba8 stores 4 bytes to a0 (arg0 at entry) +0x28.
  The `sw` at 0x1002fc78 stores 4 bytes to a0 (arg0 at entry) +0x74.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x1002fc7c, `lw` at 0x1002fd6c.
  The `lw` at 0x1002fcbc loads 4 bytes from a0 (arg0 at entry) +0x74.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0x1002fd38, `lw` at 0x1002fe74, `lw` at 0x100302a4.
  The `sw` at 0x1002fe30 stores 4 bytes to a0 (arg0 at entry) +0x8c.
  The `sw` at 0x1002fe58 stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `sw` at 0x1002ff2c stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `sw` at 0x1002ffd8 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `sw` at 0x100300a8 stores 4 bytes to a0 (arg0 at entry) +0x78.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x100300ac, `lw` at 0x100301a4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x78, including `lw` at 0x100300f8, `lw` at 0x10030374, `lw` at 0x100304d4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x50, including `lw` at 0x10030170, `lw` at 0x100302ac, `lw` at 0x100304a8.
  The `sw` at 0x10030174 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `sw` at 0x10030268 stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x10030290 stores 4 bytes to a0 (arg0 at entry) +0x40.
  14 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10030298, `lw` at 0x100302d0, `lw` at 0x10030300.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x9c, including `lw` at 0x1003029c, `lw` at 0x10030350.
  The `lbu` at 0x100302d4 loads 1 byte from [sym(xsetmonApp)] +0xc8.
  The `lbu` at 0x10030304 loads 1 byte from [sym(xsetmonApp)] +0xc9.
  The `lbu` at 0x10030330 loads 1 byte from [sym(xsetmonApp)] +0xca.
  2 such `sw` accesses store 4 bytes to [sym(xsetmonApp)] +0x124, including `sw` at 0x10030378, `sw` at 0x100304d8.
  2 such `sw` accesses store 4 bytes to [sym(xsetmonApp)] +0x128, including `sw` at 0x10030384, `sw` at 0x100304e8.
  2 such `sw` accesses store 4 bytes to [sym(xsetmonApp)] +0x12c, including `sw` at 0x100303a0, `sw` at 0x100304f8.
  The `jalr` at 0x1002ed3c calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultFormatCombinationListsClassUIResources__29FormatCombinationListsClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x1002ed60 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=-0xd1, a4=0x1, a5=0x0.
  The `jalr` at 0x1002ed74 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002ee3c calls XtVaCreateManagedWidget with a0=0x10044b48, a1=[sym(xmFormWidgetClass)], a2=[a0+16], a3=-0xd1, a4=0x1, a5=-0x42, a6=0x0, a7=-0x66.
  The `jalr` at 0x1002eeec calls XtVaCreateManagedWidget with a0=0x100515b8, a1=[sym(xmFormWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0xd1, a4=0x1, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1002efac calls XtVaCreateManagedWidget with a0=0x10044b60, a1=[sym(xmPushButtonWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1002efcc calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x25, a2=sym(doDownloadfbConfigButtonCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002f094 calls XtVaCreateManagedWidget with a0=0x10044b78, a1=[sym(xmLabelWidgetClass)], a2=[a0+44], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1002f174 calls XtVaCreateManagedWidget with a0=0x10044b88, a1=[sym(xmScrolledWindowWidgetClass)], a2=[a0+84], a3=-0x5b, a4=0x0, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x1002f1a8 calls XtVaCreateManagedWidget with a0=0x10044b98, a1=[sym(xmListWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x17, a4=0x170, a5=-0x16, a6=0xfd, a7=0x0.
  The `jalr` at 0x1002f1c4 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x176, a2=sym(fbConfigSelectedCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002f2a0 calls XtVaCreateManagedWidget with a0=0x10044bb0, a1=[sym(xmFormWidgetClass)], a2=[a0+16], a3=-0xd1, a4=0x1, a5=-0x42, a6=0x0, a7=-0x66.
  The `jalr` at 0x1002f34c calls XtVaCreateManagedWidget with a0=0x100515c0, a1=[sym(xmFormWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0xd1, a4=0x1, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1002f404 calls XtVaCreateManagedWidget with a0=0x10044bc0, a1=[sym(xmPushButtonWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1002f420 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x25, a2=sym(doDownloadfbDepthButtonCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002f4dc calls XtVaCreateManagedWidget with a0=0x100515c8, a1=[sym(xmLabelWidgetClass)], a2=[a0+48], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1002f5b4 calls XtVaCreateManagedWidget with a0=0x10044bd8, a1=[sym(xmScrolledWindowWidgetClass)], a2=[a0+88], a3=-0x5b, a4=0x0, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x1002f5e4 calls XtVaCreateManagedWidget with a0=0x10044bf0, a1=[sym(xmListWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x17, a4=0x170, a5=-0x16, a6=0xfd, a7=0x0.
  The `jalr` at 0x1002f600 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x176, a2=sym(fbDepthSelectedCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002f6c8 calls XtVaCreateManagedWidget with a0=0x10044c08, a1=[sym(xmFormWidgetClass)], a2=[a0+16], a3=-0xd1, a4=0x1, a5=-0x42, a6=0x0, a7=-0x66.
  The `jalr` at 0x1002f774 calls XtVaCreateManagedWidget with a0=0x100515d0, a1=[sym(xmFormWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0xd1, a4=0x1, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1002f82c calls XtVaCreateManagedWidget with a0=0x10044c20, a1=[sym(xmPushButtonWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1002f848 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x25, a2=sym(doDownloadaccumBufTypeButtonCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002f904 calls XtVaCreateManagedWidget with a0=0x100515d8, a1=[sym(xmLabelWidgetClass)], a2=[a0+52], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1002f9dc calls XtVaCreateManagedWidget with a0=0x10044c38, a1=[sym(xmScrolledWindowWidgetClass)], a2=[a0+92], a3=-0x5b, a4=0x0, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x1002fa0c calls XtVaCreateManagedWidget with a0=0x10044c50, a1=[sym(xmListWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x17, a4=0x170, a5=-0x16, a6=0xfd, a7=0x0.
  The `jalr` at 0x1002fa28 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x176, a2=sym(accumBufTypeSelectedCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002faf4 calls XtVaCreateManagedWidget with a0=0x10044c70, a1=[sym(xmFormWidgetClass)], a2=[a0+16], a3=-0xd1, a4=0x1, a5=-0x66, a6=0x3, a7=-0x1b3.
  The `jalr` at 0x1002fba0 calls XtVaCreateManagedWidget with a0=0x100515e0, a1=[sym(xmFormWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0xd1, a4=0x1, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1002fc58 calls XtVaCreateManagedWidget with a0=0x10044c88, a1=[sym(xmPushButtonWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1002fc74 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x25, a2=sym(doDownloadCombinationButtonCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002fd30 calls XtVaCreateManagedWidget with a0=0x100515e8, a1=[sym(xmLabelWidgetClass)], a2=[a0+40], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1002fe08 calls XtVaCreateManagedWidget with a0=0x10044ca0, a1=[sym(xmScrolledWindowWidgetClass)], a2=[a0+36], a3=-0x5b, a4=0x0, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x1002fe38 calls XtVaCreateManagedWidget with a0=0x10044cb0, a1=[sym(xmListWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x17, a4=0x170, a5=-0x16, a6=0xfd, a7=0x0.
  The `jalr` at 0x1002fe54 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x176, a2=sym(combinationSelectedCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002ff24 calls XtVaCreateManagedWidget with a0=0x10044cc8, a1=[sym(xmFormWidgetClass)], a2=[a0+16], a3=-0xd1, a4=0x1, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1002ffd0 calls XtVaCreateManagedWidget with a0=0x100515f0, a1=[sym(xmFormWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0xd1, a4=0x1, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x10030088 calls XtVaCreateManagedWidget with a0=0x10044cd8, a1=[sym(xmPushButtonWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x100300a4 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x25, a2=sym(doDownloadFormatButtonCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030168 calls XtVaCreateManagedWidget with a0=0x100515f8, a1=[sym(xmLabelWidgetClass)], a2=[a0+56], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x10030240 calls XtVaCreateManagedWidget with a0=0x10044cf0, a1=[sym(xmScrolledWindowWidgetClass)], a2=[a0+80], a3=-0x5b, a4=0x0, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x10030270 calls XtVaCreateManagedWidget with a0=0x10044d00, a1=[sym(xmListWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x17, a4=0x170, a5=-0x16, a6=0xfe, a7=0x0.
  The `jalr` at 0x1003028c calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x176, a2=sym(formatSelectedCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100302c4 calls XtVaSetValues with a0=[a0+80], a1=-0x66, a2=0x3, a3=-0x1b3, a4=[a0+36], a5=0x0.
  The `jalr` at 0x100302f4 calls XtVaSetValues with a0=?, a1=-0x66, a2=0x3, a3=-0x1b3, a4=[a0+84], a5=0x0.
  The `jalr` at 0x10030324 calls XtVaSetValues with a0=?, a1=-0x66, a2=0x3, a3=-0x1b3, a4=[a0+88], a5=0x0.
  The `jalr` at 0x10030344 calls XtUnmanageChild with a0=[a0+92], a1=?, a2=?, a3=?, a4=[a0+92], a5=0x1.
  The `jalr` at 0x100303a8 calls XtUnmanageChild with a0=[a0+36], a1=?, a2=?, a3=?, a4=[a0+36].
  The `jalr` at 0x100303c8 calls XtVaSetValues with a0=[a0+80], a1=-0x66, a2=0x1, a3=-0xc6, a4=0x0, a5=0x0.
  The `jalr` at 0x100303dc calls XtUnmanageChild with a0=[a0+84], a1=?, a2=[[sym(xsetmonApp)]+200]:1, a3=?, a4=[a0+84].
  The `jalr` at 0x100303fc calls XtVaSetValues with a0=?, a1=-0x66, a2=0x1, a3=-0xc6, a4=0x0, a5=0x0.
  The `jalr` at 0x10030410 calls XtUnmanageChild with a0=[a0+88], a1=?, a2=?, a3=[[sym(xsetmonApp)]+201]:1, a4=[a0+88].
  The `jalr` at 0x1003041c calls XtUnmanageChild with a0=[a0+92], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003043c calls XtVaSetValues with a0=?, a1=-0x66, a2=0x1, a3=-0xc6, a4=0x0, a5=0x0.
  The `jalr` at 0x1003045c calls XtVaSetValues with a0=[a0+88], a1=-0x66, a2=0x1, a3=-0xc6, a4=0x0, a5=0x0.
  The `jalr` at 0x10030480 calls XtVaSetValues with a0=[a0+88], a1=-0x66, a2=0x3, a3=-0x1b3, a4=[a0+92], a5=0x0.
  The `jalr` at 0x100304a4 calls XtUnmanageChild with a0=[a0+80], a1=?, a2=?, a3=?.
  The `jalr` at 0x100304c4 calls XtVaSetValues with a0=[a0+36], a1=-0x42, a2=0x1, a3=-0xb3, a4=0x0, a5=0x0.
  The `beq` branch at 0x100302a8 targets 0x100303a4, is taken when (a1(=[[sym(xsetmonApp)]+156]) & 0x2) == 0, and falls through when (a1(=[[sym(xsetmonApp)]+156]) & 0x2) != 0.
  The `beq` branch at 0x100302d8 targets 0x100303d8, is taken when a2(=[[sym(xsetmonApp)]+200]:1) == 0, and falls through when a2(=[[sym(xsetmonApp)]+200]:1) != 0.
  The `beq` branch at 0x10030308 targets 0x1003040c, is taken when a3(=[[sym(xsetmonApp)]+201]:1) == 0, and falls through when a3(=[[sym(xsetmonApp)]+201]:1) != 0.
  The `beq` branch at 0x10030338 targets 0x1003046c, is taken when a4(=[[sym(xsetmonApp)]+202]:1) == a5(=0x1), and falls through when a4(=[[sym(xsetmonApp)]+202]:1) != a5(=0x1).
  The `beq` branch at 0x10030364 targets 0x10030490, is taken when (a5(=[[sym(xsetmonApp)]+156]) & 0x1) == 0, and falls through when (a5(=[[sym(xsetmonApp)]+156]) & 0x1) != 0.
  The `beq` branch at 0x100303d0 targets 0x100302d4 and is always taken.
  The `beq` branch at 0x10030404 targets 0x10030304 and is always taken.
  The `beq` branch at 0x10030464 targets 0x10030350 and is always taken.
  The `beq` branch at 0x10030488 targets 0x10030350 and is always taken.
  The return at 0x1003039c has v0 = ?.
  The return at 0x10030500 has v0 = ret(XtVaSetValues).

- `doOptionSyncSourceExternalCallback__21ServerInfoFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10030510 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030510-0x10030554 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10030514 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10030520 loads 4 bytes from [a1+8] +0x9c.
  The `lw` at 0x1003052c loads 4 bytes from [a1+8] +0xa4.
  The `jalr` at 0x1003053c calls (unknown callee) with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x283ec.
  The return at 0x1003054c has v0 = ret(?).

- `__ct__25SyncFormatDescriptorClassGiPcP10VkMenuItemP19SyncSelectorFrameUI` in `usr/bin/X11/xsetmon` at 0x10030560 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030560-0x10030578 (24 bytes).
  It occupies 24 bytes.
  The `sw` at 0x10030560 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0x10030564 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x10030568 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0x10030574 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The return at 0x10030570 has v0 = a0.

- `__ct__23SyncPortDescriptorClassGv` in `usr/bin/X11/xsetmon` at 0x10030580 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030580-0x10030598 (24 bytes).
  It occupies 24 bytes.
  The `sw` at 0x10030580 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0x10030584 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x10030588 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0x10030594 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The return at 0x10030590 has v0 = a0.

- `doDownloadfbConfigButtonCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10030760 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030760-0x100307a4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10030764 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10030770 loads 4 bytes from [a1+8] +0xb4.
  The `lw` at 0x1003077c loads 4 bytes from [a1+8] +0xbc.
  The `jalr` at 0x1003078c calls (unknown callee) with a0=([[a1+8]+180] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x2819c.
  The return at 0x1003079c has v0 = ret(?).

- `doDragScalarCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi` in `usr/bin/X11/xsetmon` at 0x100307b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100307b0-0x10030820 (112 bytes).
  It occupies 112 bytes.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100307f0, `lw` at 0x100307f4, `lw` at 0x100307f8.
  The `jalr` at 0x100307e4 calls XtVaGetValues with a0=a0 at entry (arg0), a1=-0xa, a2=sp-48, a3=0x0.
  The `jalr` at 0x10030804 calls (unknown callee) with a0=?, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The return at 0x10030818 has v0 = ret(?).

- `__ct__19ServerInfoFormClassGPCc` in `usr/bin/X11/xsetmon` at 0x10030820 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030820-0x10030874 (84 bytes).
  It occupies 84 bytes.
  The `sw` at 0x10030854 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10030840 calls __ct__21ServerInfoFormClassUIGPCc [0x1003ae50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10030858 calls OneTimeInitialization__19ServerInfoFormClassGv [0x10033c90] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x1003086c has v0 = a0.

- `updateMemoUsageO2__21StatisticsFormClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10030880 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030880-0x10030888 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10030880 has v0 = ?.

- `formatSelectedCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10030890 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030890-0x100308d4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10030894 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100308a0 loads 4 bytes from [a1+8] +0xe4.
  The `lw` at 0x100308ac loads 4 bytes from [a1+8] +0xec.
  The `jalr` at 0x100308bc calls (unknown callee) with a0=([[a1+8]+228] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x2806c.
  The return at 0x100308cc has v0 = ret(?).

- `afterRealizeHook__19GammaMapEditorClassGv` in `usr/bin/X11/xsetmon` at 0x100308e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100308e0-0x10030914 (52 bytes).
  It occupies 52 bytes.
  The `jal` at 0x100308fc calls querySize__19GammaMapEditorClassGv [0x10030a90] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1003090c has v0 = ret(querySize__19GammaMapEditorClassGv).

- `className__18ChannelFormClassUIGv` in `usr/bin/X11/xsetmon` at 0x10030920 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030920-0x10030938 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1003092c loads 4 bytes from abs 0x1005091c.
  The return at 0x10030930 has v0 = 0x10044368.

- `setToggleGammaScalarCallback__21GammaMapEditorClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10030940 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030940-0x10030984 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10030944 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10030950 loads 4 bytes from [a1+8] +0xcc.
  The `lw` at 0x1003095c loads 4 bytes from [a1+8] +0xd4.
  The `jalr` at 0x1003096c calls (unknown callee) with a0=([[a1+8]+204] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x27fbc.
  The return at 0x1003097c has v0 = ret(?).

- `__ct__18GammaMapDescriptorGiP9_XDisplayT1` in `usr/bin/X11/xsetmon` at 0x10030990 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030990-0x100309ec (92 bytes).
  It occupies 92 bytes.
  The `sw` at 0x10030990 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `sw` at 0x10030994 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x10030998 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0x1003099c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x100309a4 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0x100309bc stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x100309cc calls vInitialize__18GammaMapDescriptorGiP9_XDisplayT1 [0x1003ecd0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100309e4 has v0 = a0.

- `ClearfbDepth__21SetmonMasterFormClassGv` in `usr/bin/X11/xsetmon` at 0x100309f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100309f0-0x10030a24 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x10030a10 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x10030a0c calls ClearfbDepth__19StatisticsFormClassGv [0x1002e960] with a0=[a0+40], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10030a1c has v0 = ret(ClearfbDepth__19StatisticsFormClassGv).

- `changeChannel__18ChannelFormClassUIGPC22ChannelDescriptorClass` in `usr/bin/X11/xsetmon` at 0x10030a30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030a30-0x10030a38 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10030a30 has v0 = ?.

- `exposeCallback__21GammaMapEditorClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10030a40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030a40-0x10030a84 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10030a44 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10030a50 loads 4 bytes from [a1+8] +0x9c.
  The `lw` at 0x10030a5c loads 4 bytes from [a1+8] +0xa4.
  The `jalr` at 0x10030a6c calls (unknown callee) with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x27ebc.
  The return at 0x10030a7c has v0 = ret(?).

- `querySize__19GammaMapEditorClassGv` in `usr/bin/X11/xsetmon` at 0x10030a90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030a90-0x10030adc (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x10030ab8 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `jalr` at 0x10030ac4 calls XtVaGetValues with a0=[a0+36], a1=-0x16, a2=a0+150, a3=-0x17, a4=a0+148, a5=0x0.
  The return at 0x10030ad4 has v0 = ret(XtVaGetValues).

- `doFinishDragCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi` in `usr/bin/X11/xsetmon` at 0x10030ae0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030ae0-0x10030b78 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x10030b30 loads 4 bytes from ?.
  The `jalr` at 0x10030b1c calls XtVaGetValues with a0=a0 at entry (arg0), a1=-0xa, a2=sp-64, a3=0x0.
  The `jalr` at 0x10030b2c calls XmToggleButtonGetState with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10030b48 calls doFinishRegionDragCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi [0x100225d0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10030b68 calls doFinishScalarDragCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi [0x10038d80] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10030b3c targets 0x10030b64, is taken when v0(=ret(XmToggleButtonGetState)) == 0, and falls through when v0(=ret(XmToggleButtonGetState)) != 0.
  The `beq` branch at 0x10030b70 targets 0x10030b54 and is always taken.
  The return at 0x10030b5c has v0 = one of ret(doFinishRegionDragCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi), ret(doFinishScalarDragCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi).

- `doInputSyncSourceNotifyHandler__21ServerInfoFormClassUISGP10_WidgetRecPvP7_XEventPc` in `usr/bin/X11/xsetmon` at 0x10030b80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030b80-0x10030bc4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10030b84 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10030b90 loads 4 bytes from [a1+8] +0xe4.
  The `lw` at 0x10030b9c loads 4 bytes from [a1+8] +0xec.
  The `jalr` at 0x10030bac calls (unknown callee) with a0=([[a1+8]+228] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x27d7c.
  The return at 0x10030bbc has v0 = ret(?).

- `__ct__20GammaAssignmentClassGPCc` in `usr/bin/X11/xsetmon` at 0x10030bd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030bd0-0x10030c18 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x10030c08 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10030bf0 calls __ct__22GammaAssignmentClassUIGPCc [0x10024680] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10030c10 has v0 = a0.

- `saveData__10GammaClassGP8__file_s` in `usr/bin/X11/xsetmon` at 0x10030c20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030c20-0x10030d94 (372 bytes).
  It occupies 372 bytes.
  The `lw` at 0x10030c48 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x10030c60 loads 4 bytes from [sym(xsetmonApp)] +0x98.
  The `lw` at 0x10030c90 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x10030c94 loads 4 bytes from [a0+48] +0x3c.
  The `lw` at 0x10030cac loads 4 bytes from ?.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x68, including `lw` at 0x10030ce8, `lw` at 0x10030d60.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0x10030d08, `lw` at 0x10030d28, `lw` at 0x10030d48.
  The `lw` at 0x10030d14 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x10030d34 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x10030d54 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `jalr` at 0x10030c68 calls fwrite with a0=sp-64, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10030cb4 calls fwrite with a0=sp-60, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10030ce0 calls fwrite with a0=a0+104, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jal` at 0x10030d18 calls saveData__19GammaMapEditorClassGP18GammaMapDescriptorilP8__file_s [0x1002cc90] with a0=[a0+36], a1=?, a2=0x1, a3=0x1, a4=a1 at entry (arg1).
  The `jal` at 0x10030d38 calls saveData__19GammaMapEditorClassGP18GammaMapDescriptorilP8__file_s [0x1002cc90] with a0=[a0+40], a1=?, a2=0x2, a3=0x2, a4=a1 at entry (arg1).
  The `jal` at 0x10030d58 calls saveData__19GammaMapEditorClassGP18GammaMapDescriptorilP8__file_s [0x1002cc90] with a0=[a0+44], a1=?, a2=0x3, a3=0x4, a4=a1 at entry (arg1).
  The `blez` branch at 0x10030c7c targets 0x10030cd0, is taken when v1(?) <= 0 (signed), and falls through when v1(?) > 0 (signed).
  The `bne` branch at 0x10030cc8 targets 0x10030c90, is taken when s3(?) < a5(?) (signed), and falls through when s3(?) >= a5(?) (signed).
  The `blez` branch at 0x10030cf0 targets 0x10030d74, is taken when a6(=[a0+104]) <= 0 (signed), and falls through when a6(=[a0+104]) > 0 (signed).
  The `bne` branch at 0x10030d6c targets 0x10030d00, is taken when s3(?) < a2(=[a0+104]) (signed), and falls through when s3(?) >= a2(=[a0+104]) (signed).
  The return at 0x10030d8c has v0 = one of ret(fwrite), ret(saveData__19GammaMapEditorClassGP18GammaMapDescriptorilP8__file_s).

- `__dt__21MasterTabbedDeckClassGv` in `usr/bin/X11/xsetmon` at 0x10030da0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030da0-0x10030e0c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x10030dd0 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10030dd8 calls __dt__12MyTabbedDeckGv [0x1002abb0] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030df4 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10030dc0 targets 0x10030dfc, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10030de8 targets 0x10030e00, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10030e04 has v0 = one of ret(__dt__12MyTabbedDeckGv), ?.

- `vDrawControlPoint__19GammaMapEditorClassCGPC6XPointP4_XGC` in `usr/bin/X11/xsetmon` at 0x10030f10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030f10-0x10030f90 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x10030f10 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x10030f38 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x10030f40 loads 4 bytes from [sym(xsetmonApp)] +0x6c.
  The `lh` at 0x10030f50 loads 2 bytes from a1 (arg1 at entry) +0x2.
  The `lh` at 0x10030f60 loads 2 bytes from a1 (arg1 at entry) +0x0.
  The `jalr` at 0x10030f48 calls XtWindow with a0=[a0+36], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10030f74 calls XFillRectangle with a0=[[sym(xsetmonApp)]+108], a1=ret(XtWindow), a2=a2 at entry (arg2), a3=[a1]:2-2, a4=[a1+2]:2-2, a5=0x5, a6=0x5.
  The return at 0x10030f88 has v0 = ret(XFillRectangle).

- `__ct__21SetmonMasterFormClassGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10030fd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10030fd0-0x1003114c (380 bytes).
  It occupies 380 bytes.
  The `sw` at 0x10031004 stores 4 bytes to a0 (arg0 at entry) +0x8.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x10031010, `lw` at 0x10031020, `lw` at 0x10031030.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x10031048, `lw` at 0x10031064, `lw` at 0x10031080.
  The `lw` at 0x1003104c loads 4 bytes from [a0+32] +0x9c.
  The `lw` at 0x10031068 loads 4 bytes from [a0+32] +0xa0.
  The `lw` at 0x10031084 loads 4 bytes from [a0+32] +0xa4.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x100310a4, `lw` at 0x100310c4.
  The `lbu` at 0x100310a8 loads 1 byte from [sym(xsetmonApp)] +0xc9.
  The `lbu` at 0x100310c8 loads 1 byte from [sym(xsetmonApp)] +0xc8.
  The `lw` at 0x100310d8 loads 4 bytes from [a0+40] +0x8.
  The `lw` at 0x100310dc loads 4 bytes from [[a0+40]+8] +0xa4.
  The `lw` at 0x100310e0 loads 4 bytes from [[a0+40]+8] +0x9c.
  The `lw` at 0x100310fc loads 4 bytes from [a0+32] +0xb0.
  The `lw` at 0x10031100 loads 4 bytes from [a0+32] +0xc4.
  The `lw` at 0x10031104 loads 4 bytes from [a0+32] +0xb8.
  The `lw` at 0x10031108 loads 4 bytes from [a0+32] +0xcc.
  The `lw` at 0x10031128 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `jal` at 0x10030ff0 calls __ct__23SetmonMasterFormClassUIGPCcP10_WidgetRec [0x1003f100] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003100c calls ClearFormat__19StatisticsFormClassGv [0x10041c30] with a0=[a0+40], a1=sym(__vtbl__21SetmonMasterFormClass), a2=a0 at entry (arg0), a3=?.
  The `jal` at 0x1003101c calls ClearfbConfig__19StatisticsFormClassGv [0x10028d60] with a0=[a0+40], a1=?, a2=?, a3=?.
  The `jal` at 0x1003102c calls ClearfbDepth__19StatisticsFormClassGv [0x1002e960] with a0=[a0+40], a1=?, a2=?, a3=?.
  The `jal` at 0x1003103c calls ClearaccumBufType__19StatisticsFormClassGv [0x1003d800] with a0=[a0+40], a1=?, a2=?, a3=?.
  The `jal` at 0x10031058 calls DisplayFormat__21SetmonMasterFormClassGPC21XSGIvcVideoFormatInfo [0x1003d7c0] with a0=a0 at entry (arg0), a1=[[a0+32]+156], a2=?, a3=?.
  The `jal` at 0x10031074 calls DisplayCombination__21SetmonMasterFormClassGPCc [0x10024aa0] with a0=a0 at entry (arg0), a1=[[a0+32]+160], a2=?, a3=?.
  The `jal` at 0x10031094 calls DisplayfbConfig__21SetmonMasterFormClassGPCc [0x10024a60] with a0=a0 at entry (arg0), a1=[[a0+32]+164], a2=?, a3=?.
  The `jal` at 0x100310b4 calls updateMemoUsageOdsy__19StatisticsFormClassGv [0x1002bd50] with a0=[a0+40], a1=[[sym(xsetmonApp)]+201]:1, a2=?, a3=?.
  The `jalr` at 0x100310ec calls (unknown callee) with a0=([[[a0+40]+8]+156] + [a0+40]), a1=0x0, a2=0x0, a3=[a0+40].
  The `jalr` at 0x10031124 calls XtUnmanageChild with a0=[a0+48], a1=(([[a0+32]+176] + [[a0+32]+196]) + ([[a0+32]+184] + [[a0+32]+204])), a2=([[a0+32]+184] + [[a0+32]+204]), a3=[[a0+32]+204], a4=[[a0+32]+196].
  The `beq` branch at 0x10031050 targets 0x10031068, is taken when a1(=[[a0+32]+156]) == 0, and falls through when a1(=[[a0+32]+156]) != 0.
  The `beq` branch at 0x1003106c targets 0x10031084, is taken when a1(=[[a0+32]+160]) == 0, and falls through when a1(=[[a0+32]+160]) != 0.
  The `beq` branch at 0x10031088 targets 0x100310a4, is taken when a1(=[[a0+32]+164]) == 0, and falls through when a1(=[[a0+32]+164]) != 0.
  The `beq` branch at 0x100310ac targets 0x100310c8, is taken when a1(=[[sym(xsetmonApp)]+201]:1) == 0, and falls through when a1(=[[sym(xsetmonApp)]+201]:1) != 0.
  The `beq` branch at 0x100310cc targets 0x100310f8, is taken when a1(=[[sym(xsetmonApp)]+200]:1) == 0, and falls through when a1(=[[sym(xsetmonApp)]+200]:1) != 0.
  The `beq` branch at 0x10031118 targets 0x10031140, is taken when a1(=(([[a0+32]+176] + [[a0+32]+196]) + ([[a0+32]+184] + [[a0+32]+204]))) == 0, and falls through when a1(=(([[a0+32]+176] + [[a0+32]+196]) + ([[a0+32]+184] + [[a0+32]+204]))) != 0.
  The return at 0x10031138 has v0 = a0.
  The return at 0x10031144 has v0 = a0.

- `postInfoMessage__22ScrollingErrorMessagerGP9strstream` in `usr/bin/X11/xsetmon` at 0x10031150 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10031150-0x100311b0 (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0x10031174 calls str__9strstreamGv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10031188 calls appendText__22ScrollingErrorMessagerGPc [0x10027c70] with a0=a0 at entry (arg0), a1=ret(str__9strstreamGv), a2=?, a3=?.
  The `jalr` at 0x10031198 calls __dl__GPv with a0=ret(str__9strstreamGv), a1=?, a2=?, a3=?.
  The return at 0x100311a8 has v0 = ret(__dl__GPv).

- `__dt__12GammaClassUIGv` in `usr/bin/X11/xsetmon` at 0x100311b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100311b0-0x10031334 (388 bytes).
  It occupies 388 bytes.
  The `sw` at 0x100311d8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x100311e0 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0x100311ec loads 4 bytes from [a0+32] +0x8.
  The `lw` at 0x100311f0 loads 4 bytes from [[a0+32]+8] +0x14.
  The `lw` at 0x100311f4 loads 4 bytes from [[a0+32]+8] +0xc.
  The `lw` at 0x10031208 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x10031214 loads 4 bytes from [a0+48] +0x8.
  The `lw` at 0x10031218 loads 4 bytes from [[a0+48]+8] +0x14.
  The `lw` at 0x1003121c loads 4 bytes from [[a0+48]+8] +0xc.
  The `lw` at 0x10031230 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x1003123c loads 4 bytes from [a0+36] +0x8.
  The `lw` at 0x10031240 loads 4 bytes from [[a0+36]+8] +0x14.
  The `lw` at 0x10031244 loads 4 bytes from [[a0+36]+8] +0xc.
  The `lw` at 0x10031258 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x10031264 loads 4 bytes from [a0+40] +0x8.
  The `lw` at 0x10031268 loads 4 bytes from [[a0+40]+8] +0x14.
  The `lw` at 0x1003126c loads 4 bytes from [[a0+40]+8] +0xc.
  The `lw` at 0x10031280 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x1003128c loads 4 bytes from [a0+44] +0x8.
  The `lw` at 0x10031290 loads 4 bytes from [[a0+44]+8] +0x14.
  The `lw` at 0x10031294 loads 4 bytes from [[a0+44]+8] +0xc.
  The `lw` at 0x100312a8 loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `lw` at 0x100312b4 loads 4 bytes from [a0+100] +0x8.
  The `lw` at 0x100312b8 loads 4 bytes from [[a0+100]+8] +0x14.
  The `lw` at 0x100312bc loads 4 bytes from [[a0+100]+8] +0xc.
  The `lw` at 0x100312d0 loads 4 bytes from a0 (arg0 at entry) +0x6c.
  The `jalr` at 0x100311fc calls (unknown callee) with a0=([[[a0+32]+8]+12] + [a0+32]), a1=0x3, a2=a2 at entry (arg2), a3=[a0+32].
  The `jalr` at 0x10031224 calls (unknown callee) with a0=([[[a0+48]+8]+12] + [a0+48]), a1=0x3, a2=?, a3=[a0+48].
  The `jalr` at 0x1003124c calls (unknown callee) with a0=([[[a0+36]+8]+12] + [a0+36]), a1=0x3, a2=?, a3=[a0+36].
  The `jalr` at 0x10031274 calls (unknown callee) with a0=([[[a0+40]+8]+12] + [a0+40]), a1=0x3, a2=?, a3=[a0+40].
  The `jalr` at 0x1003129c calls (unknown callee) with a0=([[[a0+44]+8]+12] + [a0+44]), a1=0x3, a2=?, a3=[a0+44].
  The `jalr` at 0x100312c4 calls (unknown callee) with a0=([[[a0+100]+8]+12] + [a0+100]), a1=0x3, a2=?, a3=[a0+100].
  The `jalr` at 0x100312f4 calls __vec_delete2 with a0=[a0+108], a1=-0x1, a2=0x18, a3=0x0, a4=0x1, a5=0x0, a7=[a0+108].
  The `jalr` at 0x10031304 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1003131c calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100311c8 targets 0x10031324, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x100311e4 targets 0x10031208, is taken when a3(=[a0+32]) == 0, and falls through when a3(=[a0+32]) != 0.
  The `beq` branch at 0x1003120c targets 0x10031230, is taken when a3(=[a0+48]) == 0, and falls through when a3(=[a0+48]) != 0.
  The `beq` branch at 0x10031234 targets 0x10031258, is taken when a3(=[a0+36]) == 0, and falls through when a3(=[a0+36]) != 0.
  The `beq` branch at 0x1003125c targets 0x10031280, is taken when a3(=[a0+40]) == 0, and falls through when a3(=[a0+40]) != 0.
  The `beq` branch at 0x10031284 targets 0x100312a8, is taken when a3(=[a0+44]) == 0, and falls through when a3(=[a0+44]) != 0.
  The `beq` branch at 0x100312ac targets 0x100312d0, is taken when a3(=[a0+100]) == 0, and falls through when a3(=[a0+100]) != 0.
  The `beq` branch at 0x100312d4 targets 0x10031304, is taken when a7(=[a0+108]) == 0, and falls through when a7(=[a0+108]) != 0.
  The `beq` branch at 0x10031314 targets 0x10031324, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x1003132c has v0 = one of ?, ret(__dt__11VkComponentGv), ret(__dl__GPv).

- `doOptionNotBlankedCallback__18ChannelFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10031340 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10031340-0x10031384 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10031344 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031350 loads 4 bytes from [a1+8] +0xcc.
  The `lw` at 0x1003135c loads 4 bytes from [a1+8] +0xd4.
  The `jalr` at 0x1003136c calls (unknown callee) with a0=([[a1+8]+204] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x275bc.
  The return at 0x1003137c has v0 = ret(?).

- `__dt__13GammaEditUndoGv` in `usr/bin/X11/xsetmon` at 0x10031390 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10031390-0x100313f0 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x100313c0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `jalr` at 0x100313bc calls __dla__GPv with a0=[a0+4], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100313d8 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100313ac targets 0x100313e0, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x100313cc targets 0x100313e4, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x100313e8 has v0 = one of ret(__dla__GPv), ?.

- `changeTargetDisplay__21MasterTabbedDeckClassGPc` in `usr/bin/X11/xsetmon` at 0x10031540 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10031540-0x10031a90 (1360 bytes).
  It occupies 1360 bytes.
  The `lbu` at 0x1003156c loads 1 byte from a1 (arg1 at entry) +0x0.
  The `lw` at 0x100315c8 loads 4 bytes from ret(XOpenDisplay) +0x84.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x100315e8, `lw` at 0x1003163c, `lw` at 0x10031820.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x10031600, `lw` at 0x10031660, `lw` at 0x10031838.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x34, including `lw` at 0x10031618, `lw` at 0x10031684, `lw` at 0x10031850.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x10031630, `lw` at 0x100316a8, `lw` at 0x100317bc.
  The `lw` at 0x10031648 loads 4 bytes from [a0+44] +0x8.
  The `lw` at 0x1003164c loads 4 bytes from [[a0+44]+8] +0x14.
  The `lw` at 0x10031650 loads 4 bytes from [[a0+44]+8] +0xc.
  The `lw` at 0x1003166c loads 4 bytes from [a0+48] +0x8.
  The `lw` at 0x10031670 loads 4 bytes from [[a0+48]+8] +0x14.
  The `lw` at 0x10031674 loads 4 bytes from [[a0+48]+8] +0xc.
  The `lw` at 0x10031690 loads 4 bytes from [a0+52] +0x8.
  The `lw` at 0x10031694 loads 4 bytes from [[a0+52]+8] +0x14.
  The `lw` at 0x10031698 loads 4 bytes from [[a0+52]+8] +0xc.
  3 such `lw` accesses load 4 bytes from [a0+56] +0x8, including `lw` at 0x100316b4, `lw` at 0x100317c0, `lw` at 0x100317e4.
  The `lw` at 0x100316b8 loads 4 bytes from [[a0+56]+8] +0x14.
  The `lw` at 0x100316bc loads 4 bytes from [[a0+56]+8] +0xc.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x100316dc, `lw` at 0x100316e8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2c, including `sw` at 0x10031708, `sw` at 0x100318c4.
  9 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1003170c, `lw` at 0x10031710, `lw` at 0x10031714.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x30, including `sw` at 0x1003173c, `sw` at 0x10031900.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x34, including `sw` at 0x10031770, `sw` at 0x1003193c.
  The `sb` at 0x1003178c stores 1 byte to a0 (arg0 at entry) +0x40.
  The `sw` at 0x100317b8 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `lw` at 0x100317c4 loads 4 bytes from [[a0+56]+8] +0x2c.
  The `lw` at 0x100317c8 loads 4 bytes from [[a0+56]+8] +0x24.
  The `lbu` at 0x100317d4 loads 1 byte from a0 (arg0 at entry) +0x40.
  The `lw` at 0x100317e8 loads 4 bytes from [[a0+56]+8] +0x38.
  The `lw` at 0x100317ec loads 4 bytes from [[a0+56]+8] +0x30.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x1003189c, `lw` at 0x100318d8, `lw` at 0x10031914.
  2 such `lw` accesses load 4 bytes from ret(getTheErrorDialog__Gv) +0x8, including `lw` at 0x100319c8, `lw` at 0x10031a48.
  2 such `lw` accesses load 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110, including `lw` at 0x100319d8, `lw` at 0x10031a58.
  2 such `lw` accesses load 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108, including `lw` at 0x100319e4, `lw` at 0x10031a64.
  The `jalr` at 0x10031580 calls putenv with a0=0x10045ee8, a1=?, a2=?, a3=?.
  The `jalr` at 0x10031590 calls XOpenDisplay with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100315ac calls XSGIvcQueryVersion with a0=ret(XOpenDisplay), a1=sp-1120, a2=sp-1116, a3=?.
  The `jalr` at 0x100315c4 calls XSGIvcQueryScreenGammaMaps with a0=ret(XOpenDisplay), a1=[ret(XOpenDisplay)+132], a2=sp-1112, a3=?.
  The `jal` at 0x100315ec calls unregisterChild__12MyTabbedDeckGP11VkComponentPCc [0x10025b40] with a0=a0 at entry (arg0), a1=[a0+44], a2=0x10045db8, a3=?.
  The `jal` at 0x10031604 calls unregisterChild__12MyTabbedDeckGP11VkComponentPCc [0x10025b40] with a0=a0 at entry (arg0), a1=[a0+48], a2=0x10045dd0, a3=?.
  The `jal` at 0x1003161c calls unregisterChild__12MyTabbedDeckGP11VkComponentPCc [0x10025b40] with a0=a0 at entry (arg0), a1=[a0+52], a2=0x10045de8, a3=?.
  The `jal` at 0x10031634 calls unregisterChild__12MyTabbedDeckGP11VkComponentPCc [0x10025b40] with a0=a0 at entry (arg0), a1=[a0+56], a2=0x10045e00, a3=?.
  The `jalr` at 0x10031658 calls (unknown callee) with a0=([[[a0+44]+8]+12] + [a0+44]), a1=0x3, a2=?, a3=?.
  The `jalr` at 0x1003167c calls (unknown callee) with a0=([[[a0+48]+8]+12] + [a0+48]), a1=0x3, a2=?, a3=?.
  The `jalr` at 0x100316a0 calls (unknown callee) with a0=([[[a0+52]+8]+12] + [a0+52]), a1=0x3, a2=?, a3=?.
  The `jalr` at 0x100316c4 calls (unknown callee) with a0=([[[a0+56]+8]+12] + [a0+56]), a1=0x3, a2=?, a3=?.
  The `jal` at 0x100316d8 calls getDpyInfo__7xsetmonGPc [0x10034110] with a0=[sym(xsetmonApp)], a1=?, a2=?, a3=?.
  The `jal` at 0x100316e4 calls setTitle__7xsetmonGv [0x10038c60] with a0=[sym(xsetmonApp)], a1=?, a2=?, a3=?.
  The `jalr` at 0x100316f4 calls __nw__GUi with a0=0x40, a1=?, a2=?, a3=?.
  The `jalr` at 0x10031718 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10031728 calls __nw__GUi with a0=0x7c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003174c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003175c calls __nw__GUi with a0=0x108, a1=?, a2=?, a3=?.
  The `jalr` at 0x10031780 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10031794 calls __nw__GUi with a0=0x78, a1=?, a2=?, a3=?.
  The `jal` at 0x100317b4 calls setTabbedDeckParent__10GammaClassGP21MasterTabbedDeckClass [0x10042a30] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x100317cc calls (unknown callee) with a0=([[[a0+56]+8]+36] + [a0+56]), a1=[a0+56], a2=?, a3=?.
  The `jalr` at 0x100317f0 calls (unknown callee) with a0=([[[a0+56]+8]+48] + [a0+56]), a1=[a0+56], a2=?, a3=?.
  The `jal` at 0x10031808 calls unregisterChild__12MyTabbedDeckGP11VkComponentPCc [0x10025b40] with a0=a0 at entry (arg0), a1=[a0+56], a2=0x10045e00, a3=?.
  The `jal` at 0x10031824 calls registerChild__12MyTabbedDeckGP11VkComponentPCc [0x10041ed0] with a0=a0 at entry (arg0), a1=[a0+44], a2=0x10045db8, a3=?.
  The `jal` at 0x1003183c calls registerChild__12MyTabbedDeckGP11VkComponentPCc [0x10041ed0] with a0=a0 at entry (arg0), a1=[a0+48], a2=0x10045dd0, a3=?.
  The `jal` at 0x10031854 calls registerChild__12MyTabbedDeckGP11VkComponentPCc [0x10041ed0] with a0=a0 at entry (arg0), a1=[a0+52], a2=0x10045de8, a3=?.
  The `jal` at 0x1003186c calls registerChild__12MyTabbedDeckGP11VkComponentPCc [0x10041ed0] with a0=a0 at entry (arg0), a1=[a0+56], a2=0x10045e00, a3=?.
  The `jalr` at 0x10031898 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=?, a3=0x1.
  The `jal` at 0x100318b0 calls __ct__21SetmonMasterFormClassGPCcP10_WidgetRec [0x10030fd0] with a0=?, a1=0x10045db8, a2=ret(baseWidget__11VkComponentCGv), a3=?.
  The `jalr` at 0x100318d4 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=0x1, a3=?.
  The `jal` at 0x100318ec calls __ct__19ServerInfoFormClassGPCcP10_WidgetRec [0x10042400] with a0=?, a1=0x10045dd0, a2=ret(baseWidget__11VkComponentCGv), a3=?.
  The `jalr` at 0x10031910 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=0x1, a3=?.
  The `jal` at 0x10031928 calls __ct__16ChannelFormClassGPCcP10_WidgetRec [0x10037ad0] with a0=?, a1=0x10045de8, a2=ret(baseWidget__11VkComponentCGv), a3=?.
  The `jalr` at 0x1003194c calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=0x1, a3=?.
  The `jal` at 0x10031964 calls __ct__10GammaClassGPCcP10_WidgetRec [0x10037630] with a0=?, a1=0x10045e00, a2=ret(baseWidget__11VkComponentCGv), a3=?.
  The `jalr` at 0x10031980 calls getenv with a0=0x10051708, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100319a0 calls VkGetResource__GPCcT1 with a0=0x10045f00, a1=0x10045f00, a2=?, a3=?.
  The `jalr` at 0x100319b4 calls sprintf with a0=sp-1104, a1=ret(VkGetResource__GPCcT1), a2=?, a3=?.
  The `jalr` at 0x100319c0 calls getTheErrorDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100319f0 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-1104, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10031a20 calls VkGetResource__GPCcT1 with a0=0x10045f20, a1=0x10045f20, a2=?, a3=?.
  The `jalr` at 0x10031a34 calls sprintf with a0=sp-1104, a1=ret(VkGetResource__GPCcT1), a2=?, a3=?.
  The `jalr` at 0x10031a40 calls getTheErrorDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10031a70 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-1104, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `beq` branch at 0x10031564 targets 0x1003197c, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x10031570 targets 0x10031980, is taken when v0(=[a1]:1) == 0, and falls through when v0(=[a1]:1) != 0.
  The `beq` branch at 0x10031598 targets 0x10031a10, is taken when v0(=ret(XOpenDisplay)) == 0, and falls through when v0(=ret(XOpenDisplay)) != 0.
  The `beq` branch at 0x100315d0 targets 0x10031994, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x100315d8 targets 0x10031990, is taken when v0(=ret(XSGIvcQueryScreenGammaMaps)) == 0, and falls through when v0(=ret(XSGIvcQueryScreenGammaMaps)) != 0.
  The `beq` branch at 0x10031640 targets 0x10031660, is taken when v0(=[a0+44]) == 0, and falls through when v0(=[a0+44]) != 0.
  The `beq` branch at 0x10031664 targets 0x10031684, is taken when v0(=[a0+48]) == 0, and falls through when v0(=[a0+48]) != 0.
  The `beq` branch at 0x10031688 targets 0x100316a8, is taken when v0(=[a0+52]) == 0, and falls through when v0(=[a0+52]) != 0.
  The `beq` branch at 0x100316ac targets 0x100316d0, is taken when v0(=[a0+56]) == 0, and falls through when v0(=[a0+56]) != 0.
  The `bne` branch at 0x100316fc targets 0x1003188c, is taken when v0(=ret(__nw__GUi)) != 0, and falls through when v0(=ret(__nw__GUi)) == 0.
  The `bne` branch at 0x10031730 targets 0x100318c8, is taken when v0(=ret(__nw__GUi)) != 0, and falls through when v0(=ret(__nw__GUi)) == 0.
  The `bne` branch at 0x10031764 targets 0x10031904, is taken when v0(=ret(__nw__GUi)) != 0, and falls through when v0(=ret(__nw__GUi)) == 0.
  The `bne` branch at 0x1003179c targets 0x10031940, is taken when v0(=ret(__nw__GUi)) != 0, and falls through when v0(=ret(__nw__GUi)) == 0.
  The `beq` branch at 0x100317d8 targets 0x10031814, is taken when a1(=[a0+64]:1) == 0, and falls through when a1(=[a0+64]:1) != 0.
  The `beq` branch at 0x100318c0 targets 0x1003170c and is always taken.
  The `beq` branch at 0x100318fc targets 0x10031740 and is always taken.
  The `beq` branch at 0x10031938 targets 0x10031774 and is always taken.
  The `beq` branch at 0x10031974 targets 0x100317ac and is always taken.
  The `beq` branch at 0x10031988 targets 0x10031578 and is always taken.
  The return at 0x10031884 has v0 = ret(registerChild__12MyTabbedDeckGP11VkComponentPCc).
  The return at 0x10031a08 has v0 = ret(?).
  The return at 0x10031a88 has v0 = ret(?).

- `__ct__30CombinationContentsListClassUIGPCc` in `usr/bin/X11/xsetmon` at 0x10031a90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10031a90-0x10031ad8 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x10031ac8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10031ab0 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10031ad0 has v0 = a0.

- `doOptionMap__10GammaClassGP18GammaMapDescriptor` in `usr/bin/X11/xsetmon` at 0x10031ea0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10031ea0-0x100320d4 (564 bytes).
  It occupies 564 bytes.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x10031ea0, `lw` at 0x10031f30, `lw` at 0x10031f8c.
  3 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10031ec8, `lw` at 0x10031f2c, `lw` at 0x10031f88.
  3 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x13c, including `lw` at 0x10031ee0, `lw` at 0x10031f3c, `lw` at 0x10031f98.
  3 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x10031eec, `lw` at 0x10031f48, `lw` at 0x10031fa4.
  The `lw` at 0x10031f14 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x10031f70 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x10031fc8 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x10031fe0 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lw` at 0x10031ff0 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x10031ffc loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x1003200c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032018 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lw` at 0x1003201c loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0x10032050 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0x10032054 loads 4 bytes from [a0+32] +0x8.
  The `lw` at 0x10032058 loads 4 bytes from [[a0+32]+8] +0x38.
  The `lw` at 0x1003205c loads 4 bytes from [[a0+32]+8] +0x30.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x74, including `lw` at 0x100320a4, `lw` at 0x100320b4, `lw` at 0x100320c8.
  The `jalr` at 0x10031ee8 calls XSGIvcQueryGammaColors with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=[a1], a3=0x1, a4=sp-48, a5=sp-44.
  The `jal` at 0x10031f10 calls loadEditor__19GammaMapEditorClassGPUsiP18GammaMapDescriptorT2l [0x10032d60] with a0=[a0+36], a1=?, a2=?, a3=a1 at entry (arg1), a4=0x1, a5=0x1.
  The `jalr` at 0x10031f1c calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10031f44 calls XSGIvcQueryGammaColors with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=[a1], a3=0x2, a4=sp-48, a5=sp-44.
  The `jal` at 0x10031f6c calls loadEditor__19GammaMapEditorClassGPUsiP18GammaMapDescriptorT2l [0x10032d60] with a0=[a0+40], a1=?, a2=?, a3=a1 at entry (arg1), a4=0x2, a5=0x2.
  The `jalr` at 0x10031f78 calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10031fa0 calls XSGIvcQueryGammaColors with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=[a1], a3=0x3, a4=sp-48, a5=sp-44.
  The `jal` at 0x10031fc4 calls loadEditor__19GammaMapEditorClassGPUsiP18GammaMapDescriptorT2l [0x10032d60] with a0=[a0+44], a1=?, a2=?, a3=a1 at entry (arg1), a4=0x3, a5=0x4.
  The `jalr` at 0x10031fd0 calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10031fdc calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+84], a1=?, a2=?, a3=?.
  The `jal` at 0x10031fec calls __as__9EZWrapperGi [0x1001fb40] with a0=ret(EZ__GP10_WidgetRec), a1=[a1+4], a2=?, a3=?.
  The `jal` at 0x10031ff8 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+80], a1=?, a2=?, a3=?.
  The `jal` at 0x10032008 calls __as__9EZWrapperGi [0x1001fb40] with a0=ret(EZ__GP10_WidgetRec), a1=[a1+8], a2=?, a3=?.
  The `jal` at 0x10032014 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+76], a1=?, a2=?, a3=?.
  The `jalr` at 0x10032038 calls VkGetResource__GPCcT1 with a0=0x10045410, a1=0x10045410, a2=?, a3=?.
  The `jal` at 0x10032048 calls __as__9EZWrapperGPCc [0x100201d0] with a0=?, a1=ret(VkGetResource__GPCcT1), a2=?, a3=?.
  The `jalr` at 0x10032060 calls (unknown callee) with a0=([[[a0+32]+8]+48] + [a0+32]), a1=[a0+32], a2=?, a3=?.
  The `jalr` at 0x1003208c calls VkGetResource__GPCcT1 with a0=0x10045420, a1=0x10045420, a2=?, a3=?.
  The `jal` at 0x100320a0 calls hideGamma__21MasterTabbedDeckClassGv [0x100252a0] with a0=[a0+116], a1=?, a2=?, a3=?.
  The `jal` at 0x100320b0 calls hideGamma__21MasterTabbedDeckClassGv [0x100252a0] with a0=[a0+116], a1=?, a2=?, a3=?.
  The `jal` at 0x100320c4 calls hideGamma__21MasterTabbedDeckClassGv [0x100252a0] with a0=[a0+116], a1=?, a2=?, a3=?.
  The `beq` branch at 0x10031ef0 targets 0x100320a0, is taken when v0(=ret(XSGIvcQueryGammaColors)) == 0, and falls through when v0(=ret(XSGIvcQueryGammaColors)) != 0.
  The `beq` branch at 0x10031f4c targets 0x100320b0, is taken when v0(=ret(XSGIvcQueryGammaColors)) == 0, and falls through when v0(=ret(XSGIvcQueryGammaColors)) != 0.
  The `beq` branch at 0x10031fa8 targets 0x100320c0, is taken when v0(=ret(XSGIvcQueryGammaColors)) == 0, and falls through when v0(=ret(XSGIvcQueryGammaColors)) != 0.
  The `beq` branch at 0x10032020 targets 0x10032080, is taken when a1(=[a1+12]) == 0, and falls through when a1(=[a1+12]) != 0.
  The `beq` branch at 0x10032098 targets 0x10032044 and is always taken.
  The `beq` branch at 0x100320a8 targets 0x1003206c and is always taken.
  The `beq` branch at 0x100320b8 targets 0x1003206c and is always taken.
  The `beq` branch at 0x100320cc targets 0x1003206c and is always taken.
  The return at 0x10032078 has v0 = one of ret(?), ret(hideGamma__21MasterTabbedDeckClassGv).

- `__dt__23AboutXsetmonFormClassUIGv` in `usr/bin/X11/xsetmon` at 0x100320e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100320e0-0x1003214c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x10032110 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10032118 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10032134 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10032100 targets 0x1003213c, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10032128 targets 0x10032140, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10032144 has v0 = one of ret(__dt__11VkComponentGv), ?.

- `create__23SetmonMasterFormClassUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10032150 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10032150-0x100327d4 (1668 bytes).
  It occupies 1668 bytes.
  The `lw` at 0x10032198 loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from sym(xmFormWidgetClass) +0x0, including `lw` at 0x100321a4, `lw` at 0x100322cc.
  The `sw` at 0x100321b0 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x100321bc stores 4 bytes to a0 (arg0 at entry) +0x38.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x100321c4, `lw` at 0x100323c8, `lw` at 0x1003242c.
  2 such `lw` accesses load 4 bytes from sym(xmFrameWidgetClass) +0x0, including `lw` at 0x100321c8, `lw` at 0x1003246c.
  The `sw` at 0x100322ac stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `sw` at 0x100322ec stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `lw` at 0x100322f0 loads 4 bytes from sym(xmLabelWidgetClass) +0x0.
  The `sw` at 0x1003239c stores 4 bytes to a0 (arg0 at entry) +0x34.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x20, including `sw` at 0x100323e0, `sw` at 0x100323e8.
  9 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100323ec, `lw` at 0x100323f0, `lw` at 0x100323f4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x24, including `sw` at 0x10032444, `sw` at 0x1003244c.
  The `sw` at 0x10032524 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3c, including `lw` at 0x10032550, `lw` at 0x10032694, `lw` at 0x100327c8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x28, including `sw` at 0x10032568, `sw` at 0x10032570.
  The `lw` at 0x10032590 loads 4 bytes from a0 (arg0 at entry) +0x28.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x100325b4, `lw` at 0x10032670, `lw` at 0x10032784.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0x10032660, `lw` at 0x10032764.
  The `lw` at 0x10032740 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x10032744 loads 4 bytes from [sym(xsetmonApp)] +0x9c.
  The `lw` at 0x10032768 loads 4 bytes from [a0+36] +0x8.
  The `lw` at 0x1003276c loads 4 bytes from [[a0+36]+8] +0x38.
  The `lw` at 0x10032770 loads 4 bytes from [[a0+36]+8] +0x30.
  The `jalr` at 0x1003217c calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultSetmonMasterFormClassUIResources__23SetmonMasterFormClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x100321a0 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=-0xd1, a4=0x1, a5=0x0.
  The `jalr` at 0x100321b8 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x100322a4 calls XtVaCreateManagedWidget with a0=0x10046770, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x5, a7=-0x66.
  The `jalr` at 0x100322e0 calls XtVaCreateManagedWidget with a0=0x10051790, a1=[sym(xmFormWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0xd1, a4=0x1, a5=-0x17, a6=0x2a2, a7=-0x16.
  The `jalr` at 0x10032390 calls XtVaCreateManagedWidget with a0=0x10051798, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=-0x42, a6=0x5, a7=-0x66.
  The `jalr` at 0x100323a4 calls __nw__GUi with a0=0xf8, a1=?, a2=?, a3=?.
  The `jal` at 0x100323cc calls __ct__27FormatCombinationListsClassGPCcP10_WidgetRec [0x10026d00] with a0=ret(__nw__GUi), a1=0x10046788, a2=[a0+16], a3=?.
  The `jalr` at 0x100323f8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10032408 calls __nw__GUi with a0=0x3c, a1=?, a2=?, a3=?.
  The `jal` at 0x10032430 calls __ct__28CombinationContentsListClassGPCcP10_WidgetRec [0x10042360] with a0=ret(__nw__GUi), a1=0x100467a8, a2=[a0+16], a3=?.
  The `jalr` at 0x1003245c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10032518 calls XtVaCreateManagedWidget with a0=0x100467c8, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1003252c calls __nw__GUi with a0=0x164, a1=?, a2=?, a3=?.
  The `jal` at 0x10032554 calls __ct__19StatisticsFormClassGPCcP10_WidgetRec [0x100422c0] with a0=ret(__nw__GUi), a1=0x100467d8, a2=[a0+60], a3=?.
  The `jalr` at 0x10032580 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003258c calls baseWidget__11VkComponentCGv with a0=[a0+40], a1=?, a2=?, a3=?.
  The `jalr` at 0x100325a4 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x16, a2=0x255, a3=0x0.
  The `jalr` at 0x100325b0 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=?, a3=?.
  The `jalr` at 0x10032650 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x1, a3=-0x66, a4=0x1, a5=-0x46, a6=0x1, a7=-0x67.
  The `jalr` at 0x1003265c calls baseWidget__11VkComponentCGv with a0=[a0+36], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003266c calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=?, a3=?.
  The `jalr` at 0x10032734 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x1, a3=-0x66, a4=0x1, a5=-0x46, a6=0x3, a7=-0xa5.
  The `jalr` at 0x10032774 calls (unknown callee) with a0=([[[a0+36]+8]+48] + [a0+36]), a1=[a0+36], a2=?, a3=?.
  The `jalr` at 0x10032780 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=?, a3=?.
  The `jalr` at 0x10032798 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x2e1, a2=0x32, a3=0x0.
  The `jalr` at 0x100327a4 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=?, a3=?.
  The `jalr` at 0x100327c4 calls XtVaSetValues with a0=[a0+60], a1=-0x46, a2=0x3, a3=-0xa5, a4=ret(baseWidget__11VkComponentCGv), a5=0x0.
  The `beq` branch at 0x100323b0 targets 0x100323e4, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100323dc targets 0x100323ec and is always taken.
  The `beq` branch at 0x10032414 targets 0x10032448, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10032440 targets 0x10032450 and is always taken.
  The `beq` branch at 0x10032538 targets 0x1003256c, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10032564 targets 0x10032574 and is always taken.
  The `beq` branch at 0x1003274c targets 0x10032764, is taken when (ra(=[[sym(xsetmonApp)]+156]) & 0x2) == 0, and falls through when (ra(=[[sym(xsetmonApp)]+156]) & 0x2) != 0.
  The `beq` branch at 0x100327cc targets 0x10032754 and is always taken.
  The return at 0x1003275c has v0 = ret(XtVaSetValues).

- `doFinishRegionDrag__19GammaMapEditorClassGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x100327e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100327e0-0x10032934 (340 bytes).
  It occupies 340 bytes.
  The `sw` at 0x100327e0 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0x100327e8 loads 4 bytes from a0 (arg0 at entry) +0x68.
  4 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10032810, `lw` at 0x10032848, `lw` at 0x10032864.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x8, including `lw` at 0x10032814, `lw` at 0x100328fc.
  The `lw` at 0x10032818 loads 4 bytes from [[sym(xsetmonApp)]+8] +0x128.
  The `lw` at 0x1003281c loads 4 bytes from [[sym(xsetmonApp)]+8] +0x120.
  The `lw` at 0x10032830 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x10032834 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0x10032838 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lw` at 0x1003283c loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `lw` at 0x1003284c loads 4 bytes from [a0+88] +0x0.
  The `lw` at 0x10032850 loads 4 bytes from [sym(xsetmonApp)] +0x13c.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x10032858, `lw` at 0x10032870.
  The `lw` at 0x10032900 loads 4 bytes from [[sym(xsetmonApp)]+8] +0x140.
  The `lw` at 0x10032904 loads 4 bytes from [[sym(xsetmonApp)]+8] +0x138.
  The `jalr` at 0x10032828 calls (unknown callee) with a0=([[[sym(xsetmonApp)]+8]+288] + [sym(xsetmonApp)]), a1=0x0, a2=0x0, a3=[sym(xsetmonApp)].
  The `jalr` at 0x10032854 calls XSGIvcStoreGammaColors16 with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=[[a0+88]], a3=[a0+84], a4=[a0+96], a5=[a0+80].
  The `jalr` at 0x1003286c calls XSync with a0=[[sym(xsetmonApp)]+312], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1003287c calls __nw__GUi with a0=0x14, a1=?, a2=?, a3=?.
  The `jal` at 0x1003289c calls __ct__13GammaEditUndoGP19GammaMapEditorClass [0x1002e2e0] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x100328bc calls getTheUndoManager__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100328d4 calls VkGetResource__GPCcT1 with a0=0x100459a0, a1=0x100459a0, a2=?, a3=?.
  The `jalr` at 0x100328ec calls add__17VkMenuUndoManagerGPCcPGP10_WidgetRecPvT2_vPv with a0=ret(getTheUndoManager__Gv), a1=ret(VkGetResource__GPCcT1), a2=sym(vPerformUndo__13GammaEditUndoSGPvT1), a3=?.
  The `jalr` at 0x10032908 calls (unknown callee) with a0=([[[sym(xsetmonApp)]+8]+312] + [sym(xsetmonApp)]), a1=[sym(xsetmonApp)], a2=?, a3=?.
  The `jal` at 0x10032918 calls redraw__19GammaMapEditorClassCGi [0x1002ad90] with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?.
  The `beq` branch at 0x10032804 targets 0x10032910, is taken when at(=[a0+104]) == 0, and falls through when at(=[a0+104]) != 0.
  The `beq` branch at 0x10032888 targets 0x100328b4, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100328ac targets 0x100328b8 and is always taken.
  The return at 0x1003292c has v0 = ret(redraw__19GammaMapEditorClassCGi).

- `saveSettingsFile__21MasterTabbedDeckClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10032940 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10032940-0x1003297c (60 bytes).
  It occupies 60 bytes.
  The `jal` at 0x10032964 calls VkUnimplemented__GP10_WidgetRecPCc [0x10042a40] with a0=0x0, a1=0x10045e78, a2=0x25fbc, a3=a3 at entry (arg3).
  The return at 0x10032974 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `DisplayaccumBufType__21SetmonMasterFormClassGi` in `usr/bin/X11/xsetmon` at 0x10032980 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10032980-0x100329b4 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x100329a0 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x1003299c calls DisplayaccumBufType__19StatisticsFormClassGi [0x100234f0] with a0=[a0+40], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100329ac has v0 = ret(DisplayaccumBufType__19StatisticsFormClassGi).

- `RegisterGainControlClassInterface__16GainControlClassSGv` in `usr/bin/X11/xsetmon` at 0x100329c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100329c0-0x100329d8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x100329cc loads 4 bytes from abs 0x10050950.
  The return at 0x100329d0 has v0 = 0x1004d390.

- `tInverse__7MMatrixCGRi` in `usr/bin/X11/xsetmon` at 0x100329e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100329e0-0x10032b6c (396 bytes).
  It occupies 396 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x100329e8, `lw` at 0x10032a38, `lw` at 0x10032a5c.
  4 such `lw` accesses load 4 bytes from [a0] +0x0, including `lw` at 0x100329f0, `lw` at 0x10032a40, `lw` at 0x10032a60.
  2 such `lw` accesses load 4 bytes from [a0] +0x4, including `lw` at 0x100329f8, `lw` at 0x10032a80.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x10032a44, `lw` at 0x10032abc, `lw` at 0x10032ae4.
  The `lw` at 0x10032a50 loads 4 bytes from [a1] +0xc.
  The `sw` at 0x10032a98 stores 4 bytes to ?.
  2 such `lw` accesses load 4 bytes from [a1] +0x4, including `lw` at 0x10032acc, `lw` at 0x10032af4.
  2 such `lw` accesses load 4 bytes from [a1] +0x0, including `lw` at 0x10032ad8, `lw` at 0x10032b00.
  The `sw` at 0x10032b08 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `lw` at 0x10032b10 loads 4 bytes from ret(0x100305a0) +0x4.
  The `jal` at 0x10032a2c calls __ct__7MMatrixGRC7MMatrix [0x10026f50] with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x10032a54 calls __nwa__GUi with a0=([[a0]] << 0x2)+4, a1=?, a2=?, a3=?.
  The `jal` at 0x10032ad4 calls (unnamed) [0x100305a0] with a0=0x1, a1=[[a1]], a2=0x1, a3=[[a1]+4], a5=[a0].
  The `jal` at 0x10032afc calls (unnamed) [0x100226c0] with a0=ret(__nwa__GUi), a1=[[a1]], a2=ret(0x100305a0), a3=[[a1]+4].
  The `jalr` at 0x10032b0c calls free with a0=[ret(0x100305a0)+4], a1=?, a2=?, a3=?.
  The `jalr` at 0x10032b1c calls free with a0=ret(0x100305a0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10032b2c calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x10032b5c calls __assert with a0=0x100494e8, a1=0x100494a0, a2=0x104, a3=a3 at entry (arg3).
  The `bne` branch at 0x10032a18 targets 0x10032b48, is taken when at(=[[a0]]) != v1(=[[a0]+4]), and falls through when at(=[[a0]]) == v1(=[[a0]+4]).
  The `blez` branch at 0x10032a6c targets 0x10032ab4, is taken when a1(=[[a0]]) <= 0 (signed), and falls through when a1(=[[a0]]) > 0 (signed).
  The `bne` branch at 0x10032aac targets 0x10032a80, is taken when a7(?) < a2(=[[a0]]) (signed), and falls through when a7(?) >= a2(=[[a0]]) (signed).
  The `beq` branch at 0x10032b64 targets 0x10032a20 and is always taken.
  The return at 0x10032b40 has v0 = ret(__dla__GPv).

- `vPerformUndo__13GammaEditUndoSGPvT1` in `usr/bin/X11/xsetmon` at 0x10032b70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10032b70-0x10032bf4 (132 bytes).
  It occupies 132 bytes.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x10032b88, `lw` at 0x10032ba8, `lw` at 0x10032bac.
  The `lw` at 0x10032ba0 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x10032bb0 loads 4 bytes from [a1] +0xc0.
  The `jal` at 0x10032b94 calls vClearScreen__19GammaMapEditorClassCGv [0x1002de60] with a0=[a1], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10032ba4 calls vLoadDrawTable__19GammaMapEditorClassGPUs [0x10028ff0] with a0=[a1], a1=[a1+4], a2=?, a3=?.
  The `jal` at 0x10032bd4 calls vDetermineSplinePoints__19GammaMapEditorClassGv [0x10024880] with a0=[a1], a1=?, a2=?, a3=?.
  The `jal` at 0x10032be4 calls redraw__19GammaMapEditorClassCGi [0x1002ad90] with a0=[a1], a1=0x1, a2=?, a3=?.
  The `beq` branch at 0x10032bb8 targets 0x10032bd0, is taken when v0(=[[a1]+192]) == v1(=0x1), and falls through when v0(=[[a1]+192]) != v1(=0x1).
  The `beq` branch at 0x10032bec targets 0x10032bc0 and is always taken.
  The return at 0x10032bc8 has v0 = one of [[a1]+192], ret(redraw__19GammaMapEditorClassCGi).

- `doDragScalar__21GammaMapEditorClassUIGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x10032c00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10032c00-0x10032c08 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10032c00 has v0 = ?.

- `doSetVerticalPhaseCallback__18ChannelFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10032c10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10032c10-0x10032c54 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10032c14 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032c20 loads 4 bytes from [a1+8] +0xe4.
  The `lw` at 0x10032c2c loads 4 bytes from [a1+8] +0xec.
  The `jalr` at 0x10032c3c calls (unknown callee) with a0=([[a1+8]+228] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x25cec.
  The return at 0x10032c4c has v0 = ret(?).

- `doSetVerticalPhase__16ChannelFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10032c60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10032c60-0x10032cc0 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x10032c64 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10032c7c loads 4 bytes from a0 (arg0 at entry) +0xd8.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10032c80, `lw` at 0x10032ca4.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x10032c88, `lw` at 0x10032cac.
  The `lw` at 0x10032c90 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `jalr` at 0x10032c94 calls XSGIvcSetOutputPhaseV with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[a0+216], a3=[a2+8].
  The `jalr` at 0x10032ca8 calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=?, a2=?, a3=?.
  The return at 0x10032cb8 has v0 = ret(XFlush).

- `fbDepthSelectedCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10032cc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10032cc0-0x10032d04 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10032cc4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032cd0 loads 4 bytes from [a1+8] +0xfc.
  The `lw` at 0x10032cdc loads 4 bytes from [a1+8] +0x104.
  The `jalr` at 0x10032cec calls (unknown callee) with a0=([[a1+8]+252] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x25c3c.
  The return at 0x10032cfc has v0 = ret(?).

- `quit__18XSetmonWindowClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10032d10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10032d10-0x10032d54 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10032d28 loads 4 bytes from sym(theApplication) +0x0.
  The `lw` at 0x10032d2c loads 4 bytes from [sym(theApplication)] +0x8.
  The `lw` at 0x10032d30 loads 4 bytes from [[sym(theApplication)]+8] +0xc8.
  The `lw` at 0x10032d34 loads 4 bytes from [[sym(theApplication)]+8] +0xc0.
  The `jalr` at 0x10032d3c calls (unknown callee) with a0=([[[sym(theApplication)]+8]+192] + [sym(theApplication)]), a1=[sym(theApplication)], a2=0x25bec, a3=a3 at entry (arg3).
  The return at 0x10032d4c has v0 = ret(?).

- `loadEditor__19GammaMapEditorClassGPUsiP18GammaMapDescriptorT2l` in `usr/bin/X11/xsetmon` at 0x10032d60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10032d60-0x10032e18 (184 bytes).
  It occupies 184 bytes.
  The `sw` at 0x10032d60 stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `lw` at 0x10032d90 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x10032dac loads 4 bytes from a0 (arg0 at entry) +0x64.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x10032db4, `lw` at 0x10032dc4.
  The `sw` at 0x10032dc8 stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `sw` at 0x10032dd4 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sw` at 0x10032de8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0x10032df0 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `sw` at 0x10032dfc stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `jalr` at 0x10032d9c calls __dla__GPv with a0=[a0+80], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10032da8 calls __dla__GPv with a0=[a0+100], a1=?, a2=?, a3=?.
  The `jalr` at 0x10032db8 calls __nwa__GUi with a0=([a0+84] + [a0+84]), a1=?, a2=?, a3=?.
  The `jalr` at 0x10032dcc calls __nwa__GUi with a0=([a0+84] + [a0+84]), a1=?, a2=?, a3=?.
  The `jal` at 0x10032df8 calls vLoadDrawTable__19GammaMapEditorClassGPUs [0x10028ff0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=a5 at entry (arg5).
  The return at 0x10032e10 has v0 = ret(vLoadDrawTable__19GammaMapEditorClassGPUs).

- `__ct__12MyTabbedDeckGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10032e20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10032e20-0x100330c0 (672 bytes).
  It occupies 672 bytes.
  The `sw` at 0x10032e5c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x10032e74 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0x10032e80 stores 4 bytes to a0 (arg0 at entry) +0x10.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x10032ec0, `lw` at 0x10032f34.
  The `sw` at 0x10032edc stores 4 bytes to a0 (arg0 at entry) +0x20.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x10032ee4, `lw` at 0x10032fac.
  The `lw` at 0x10032ee8 loads 4 bytes from [a0+32] +0x8.
  The `lw` at 0x10032eec loads 4 bytes from [[a0+32]+8] +0x2c.
  The `lw` at 0x10032ef0 loads 4 bytes from [[a0+32]+8] +0x24.
  The `sw` at 0x10032f50 stores 4 bytes to a0 (arg0 at entry) +0x24.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0x10032f58, `lw` at 0x10032f84, `lw` at 0x10032fc0.
  The `lw` at 0x10032f5c loads 4 bytes from [a0+36] +0x8.
  The `lw` at 0x10032f60 loads 4 bytes from [[a0+36]+8] +0x2c.
  The `lw` at 0x10032f64 loads 4 bytes from [[a0+36]+8] +0x24.
  The `lw` at 0x10032f78 loads 4 bytes from sym(tabSelectCallback__10VkTabPanel) +0x0.
  The `lw` at 0x10032f8c loads 4 bytes from abs 0x1004f3f0.
  The `ld` at 0x10032f94 loads 8 bytes from abs 0x1004f3e8.
  The `jalr` at 0x10032e48 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10032e70 calls XmCreateForm with a0=a2 at entry (arg2), a1=[a0+12], a2=0x0, a3=0x0.
  The `jalr` at 0x10032e84 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=a0 at entry (arg0).
  The `jalr` at 0x10032e94 calls __nw__GUi with a0=0x30, a1=?, a2=?, a3=?.
  The `jalr` at 0x10032ebc calls __ct__6VkDeckGPCcP10_WidgetRec with a0=ret(__nw__GUi), a1=0x100519b8, a2=[a0+16], a3=?, a5=0x1.
  The `jalr` at 0x10032ef4 calls (unknown callee) with a0=([[[a0+32]+8]+36] + [a0+32]), a1=[a0+32], a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10032f04 calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x10032f30 calls __ct__10VkTabPanelGPCcP10_WidgetRecci with a0=ret(__nw__GUi), a1=0x100519c0, a2=[a0+16], a3=0x1, a4=0x0.
  The `jalr` at 0x10032f68 calls (unknown callee) with a0=([[[a0+36]+8]+36] + [a0+36]), a1=[a0+36], a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10032f98 calls addCallback__16VkCallbackObjectGPCcP16VkCallbackObjectM16VkCallbackObjectGP16VkCallbackObjectPvT2_vPv with a0=[a0+36], a1=[sym(tabSelectCallback__10VkTabPanel)], a2=a0 at entry (arg0), a3=[0x1004f3e8]:8, a4=([0x1004f3f0] << 0x20), a5=0x0.
  The `jalr` at 0x10032fa8 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=?, a3=?.
  The `jalr` at 0x10032fbc calls baseWidget__11VkComponentCGv with a0=[a0+36], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003302c calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x1, a3=-0x46, a4=0x1, a5=-0x67, a6=0x1, a7=-0x66.
  The `jalr` at 0x10033040 calls baseWidget__11VkComponentCGv with a0=[a0+36], a1=?, a2=?, a3=?.
  The `jalr` at 0x100330a4 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x0, a3=-0x46, a4=0x1, a5=-0x67, a6=0x1, a7=-0x66.
  The `beq` branch at 0x10032ea0 targets 0x10032ed4, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10032ecc targets 0x10032edc and is always taken.
  The `beq` branch at 0x10032f10 targets 0x10032f48, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10032f40 targets 0x10032f50 and is always taken.
  The return at 0x100330b8 has v0 = a0.

- `nameSelected__28CombinationContentsListClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x100330c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100330c0-0x10033168 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x100330c8 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x100330cc loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lw` at 0x100330f4 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lw` at 0x10033100 loads 4 bytes from ?.
  The `lw` at 0x1003311c loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x10033120 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x1003312c loads 4 bytes from [sym(xsetmonApp)] +0x130.
  The `lw` at 0x1003313c loads 4 bytes from [[sym(xsetmonApp)]+304] +0x44.
  The `lw` at 0x1003314c loads 4 bytes from [[[sym(xsetmonApp)]+304]+68] +0x2c.
  The `jal` at 0x10033148 calls DisplayFormat__21SetmonMasterFormClassGPC21XSGIvcVideoFormatInfo [0x1003d7c0] with a0=[[[[sym(xsetmonApp)]+304]+68]+44], a1=?, a2=?, a3=?, a7=a0 at entry (arg0).
  The `blez` branch at 0x100330e8 targets 0x10033160, is taken when t0(=[a0+56]) <= 0 (signed), and falls through when t0(=[a0+56]) > 0 (signed).
  The `beq` branch at 0x10033108 targets 0x10033118, is taken when t0(?) == a5(=[a2+16]-1), and falls through when t0(?) != a5(=[a2+16]-1).
  The `bne` branch at 0x10033110 targets 0x10033100, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x10033160 targets 0x1003311c and is always taken.
  The return at 0x10033158 has v0 = ret(DisplayFormat__21SetmonMasterFormClassGPC21XSGIvcVideoFormatInfo).

- `populateAssignmentWindow__22GammaAssignmentClassUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10033170 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033170-0x10033820 (1712 bytes).
  It occupies 1712 bytes.
  10 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10033194, `lw` at 0x100331f0, `lw` at 0x1003320c.
  3 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x13c, including `lw` at 0x100331a0, `lw` at 0x100332f4, `lw` at 0x100333d8.
  3 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x100331ac, `lw` at 0x10033300, `lw` at 0x100333e4.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x100331d4, `lw` at 0x10033284, `lw` at 0x10033294.
  The `lw` at 0x100331e4 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  4 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x98, including `lw` at 0x100331f4, `lw` at 0x10033210, `lw` at 0x10033228.
  The `sw` at 0x10033208 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `sw` at 0x10033220 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10033258, `sw` at 0x10033290, `sw` at 0x100332ac.
  20 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100332a4, `lw` at 0x100332c8, `lw` at 0x1003330c.
  The `sw` at 0x10033378 stores 4 bytes to ret(__nw__GUi) +0x8.
  The `sw` at 0x10033384 stores 4 bytes to ret(__nw__GUi) +0x4.
  The `sw` at 0x10033390 stores 4 bytes to ret(__nw__GUi) +0x0.
  The `lbu` at 0x10033424 loads 1 byte from [sym(xsetmonApp)] +0x94.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x134, including `lw` at 0x1003357c, `lw` at 0x100335a0.
  The `lw` at 0x100335a4 loads 4 bytes from [[sym(xsetmonApp)]+308] +0x4.
  The `lw` at 0x100335a8 loads 4 bytes from [[[sym(xsetmonApp)]+308]+4] +0x20.
  The `lw` at 0x100335ac loads 4 bytes from [[[sym(xsetmonApp)]+308]+4] +0x18.
  The `lw` at 0x10033628 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lw` at 0x1003363c loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `jalr` at 0x100331a8 calls XSGIvcQueryScreenGammaMaps with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=a0+64, a3=a3 at entry (arg3).
  The `jalr` at 0x100331e0 calls XtUnmanageChild with a0=[a0+44], a1=?, a2=?, a3=?.
  The `jalr` at 0x100331f8 calls __nwa__GUi with a0=([[sym(xsetmonApp)]+152] << 0x3), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033214 calls __nwa__GUi with a0=([[sym(xsetmonApp)]+152] << 0x2), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033254 calls baseWidget__10VkMenuItemCGv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003326c calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=-0x7, a2=ret(XmStringCreateSimple), a3=0x0.
  The `jalr` at 0x10033278 calls XmStringFree with a0=ret(XmStringCreateSimple), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033288 calls __nwa__GUi with a0=([a0+64] << 0x2), a1=?, a2=?, a3=?.
  The `jalr` at 0x100332fc calls XSGIvcQueryChannelInfo with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=?, a3=sp-128.
  The `jalr` at 0x10033330 calls __nw__GUi with a0=0xc, a1=?, a2=?, a3=?.
  The `jalr` at 0x10033348 calls sprintf with a0=sp-344, a1=[0x10051b80], a2=?, a3=?.
  The `jalr` at 0x1003335c calls VkGetResource__GPCcT1 with a0=0x10045148, a1=0x10045148, a2=?, a3=?.
  The `jalr` at 0x10033370 calls sprintf with a0=sp-240, a1=ret(VkGetResource__GPCcT1), a2=?, a3=?.
  The `jalr` at 0x10033398 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=?, a1=sp-240, a2=sym(assignChannelMapCallback__22GammaAssignmentClassUISGP10_WidgetRecPvT2), a3=ret(__nw__GUi), a4=-0x1.
  The `jalr` at 0x100333e0 calls XSGIvcQueryChannelGammaMap with a0=[[sym(xsetmonApp)]+312], a1=[[sym(xsetmonApp)]+316], a2=?, a3=sp-124.
  The `jalr` at 0x10033438 calls __ct__9strstreamGv with a0=sp-496, a1=0x0, a2=?, a3=[[sym(xsetmonApp)]+148]:1.
  The `jalr` at 0x1003344c calls __ls__7ostreamGPCc with a0=sp-416, a1=0x10045188, a2=?, a3=?.
  The `jalr` at 0x1003345c calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033470 calls __ls__7ostreamGPCc with a0=sp-416, a1=0x10045198, a2=?, a3=?.
  The `jalr` at 0x10033480 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033494 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x100451c8, a2=?, a3=?.
  The `jalr` at 0x100334a4 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100334b0 calls endl__GR7ostream with a0=ret(__ls__7ostreamGi), a1=?, a2=?, a3=?.
  The `jalr` at 0x100334c4 calls __ls__7ostreamGPCc with a0=sp-416, a1=0x100451e0, a2=?, a3=?.
  The `jalr` at 0x100334d8 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100334ec calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x10045208, a2=?, a3=?.
  The `jalr` at 0x100334f8 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033538 calls __ls__7ostreamGPCc with a0=sp-416, a1=0x10045220, a2=?, a3=?.
  The `jalr` at 0x10033548 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033554 calls endl__GR7ostream with a0=ret(__ls__7ostreamGi), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033598 calls __assert with a0=0x10045230, a1=0x10045250, a2=0x90, a3=?.
  The `jalr` at 0x100335b4 calls (unknown callee) with a0=([[[[sym(xsetmonApp)]+308]+4]+24] + [[sym(xsetmonApp)]+308]), a1=sp-496, a2=[[sym(xsetmonApp)]+308], a3=?.
  The `jalr` at 0x100335c4 calls __dt__9strstreamGv with a0=sp-496, a1=0x2, a2=?, a3=?.
  The `jalr` at 0x100335d0 calls baseWidget__10VkMenuItemCGv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100335e0 calls XtSetSensitive with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x100335ec calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003364c calls sprintf with a0=sp-344, a1=[0x10051b84], a2=?, a3=?.
  The `jalr` at 0x10033660 calls VkGetResource__GPCcT1 with a0=0x10045108, a1=0x10045108, a2=?, a3=?.
  The `jalr` at 0x10033674 calls sprintf with a0=sp-240, a1=ret(VkGetResource__GPCcT1), a2=?, a3=?.
  The `jalr` at 0x10033680 calls XmStringCreateSimple with a0=sp-240, a1=?, a2=?, a3=?.
  The `jalr` at 0x10033694 calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x100336c4 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=a1 at entry (arg1), a2=sp-344, a3=0x0, a4=0x0.
  The `jalr` at 0x100336dc calls set__12VkOptionMenuGP10VkMenuItem with a0=?, a1=?, a2=?, a3=sym(xsetmonApp).
  The `jalr` at 0x1003370c calls baseWidget__10VkMenuItemCGv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003371c calls XtSetSensitive with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1003376c calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10045118, a2=?, a3=?.
  The `jalr` at 0x1003377c calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003378c calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x10051658, a2=?, a3=?.
  The `jalr` at 0x10033798 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100337a4 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x100337b4 calls (unknown callee) with a0=sym(cerr), a1=0x10045158, a2=?, a3=?.
  The `jalr` at 0x100337c4 calls __ls__7ostreamGi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100337d4 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x10051658, a2=?, a3=?.
  The `jalr` at 0x100337e0 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100337ec calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10033800 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x100450e0, a2=?, a3=?.
  The `jalr` at 0x1003380c calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033818 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100331cc targets 0x100337f4, is taken when v0(=ret(XSGIvcQueryScreenGammaMaps)) == 0, and falls through when v0(=ret(XSGIvcQueryScreenGammaMaps)) != 0.
  The `beq` branch at 0x100331d8 targets 0x1003372c, is taken when v1(=[a0+64]) == 0, and falls through when v1(=[a0+64]) != 0.
  The `blez` branch at 0x1003322c targets 0x1003372c, is taken when a1(=[[sym(xsetmonApp)]+152]) <= 0 (signed), and falls through when a1(=[[sym(xsetmonApp)]+152]) > 0 (signed).
  The `beq` branch at 0x10033244 targets 0x10033624 and is always taken.
  The `blez` branch at 0x1003329c targets 0x100332e8, is taken when a1(=[a0+64]) <= 0 (signed), and falls through when a1(=[a0+64]) > 0 (signed).
  The `beq` branch at 0x100332c0 targets 0x100332e8, is taken when v0(?) >= a2(=[a0+64]) (signed), and falls through when v0(?) < a2(=[a0+64]) (signed).
  The `bne` branch at 0x100332e0 targets 0x100332a4, is taken when v0(?) < a5(=[a0+64]) (signed), and falls through when v0(?) >= a5(=[a0+64]) (signed).
  The `beq` branch at 0x10033304 targets 0x10033760, is taken when v0(=ret(XSGIvcQueryChannelInfo)) == 0, and falls through when v0(=ret(XSGIvcQueryChannelInfo)) != 0.
  The `blez` branch at 0x10033310 targets 0x100333d0, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `bne` branch at 0x100333c0 targets 0x10033320, is taken when s4(?) < a1(?) (signed), and falls through when s4(?) >= a1(?) (signed).
  The `beq` branch at 0x100333e8 targets 0x100337ac, is taken when v0(=ret(XSGIvcQueryChannelGammaMap)) == 0, and falls through when v0(=ret(XSGIvcQueryChannelGammaMap)) != 0.
  The `beq` branch at 0x100333fc targets 0x10033420, is taken when v0(?) >= a1(=[a0+64]) (signed), and falls through when v0(?) < a1(=[a0+64]) (signed).
  The `bne` branch at 0x10033414 targets 0x100336dc, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x10033428 targets 0x100335d0, is taken when a3(=[[sym(xsetmonApp)]+148]:1) == 0, and falls through when a3(=[[sym(xsetmonApp)]+148]:1) != 0.
  The `blez` branch at 0x1003350c targets 0x10033574, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `bne` branch at 0x1003356c targets 0x10033520, is taken when s2(?) < t8(?) (signed), and falls through when s2(?) >= t8(?) (signed).
  The `bne` branch at 0x10033580 targets 0x100335a0, is taken when t9(=[[sym(xsetmonApp)]+308]) != 0, and falls through when t9(=[[sym(xsetmonApp)]+308]) == 0.
  The `beq` branch at 0x1003361c targets 0x1003372c, is taken when s6(?) >= a1(=[[sym(xsetmonApp)]+152]) (signed), and falls through when s6(?) < a1(=[[sym(xsetmonApp)]+152]) (signed).
  The `beq` branch at 0x100336a0 targets 0x1003324c, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100336d4 targets 0x10033250 and is always taken.
  The `beq` branch at 0x100336f0 targets 0x100335ec, is taken when a2(?) >= 0x2 (signed), and falls through when a2(?) < 0x2 (signed).
  The `beq` branch at 0x10033724 targets 0x100335ec and is always taken.
  The return at 0x10033758 has v0 = one of ret(XSGIvcQueryScreenGammaMaps), ret(__nwa__GUi), ?.

- `fSplineCalc__19GammaMapEditorClassCGiT1PfN23T1` in `usr/bin/X11/xsetmon` at 0x10033820 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033820-0x100339dc (444 bytes).
  It occupies 444 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x10033878, `lwc1` at 0x100338a4, `lwc1` at 0x100338a8.
  The `jalr` at 0x10033994 calls __assert with a0=0x10045ad8, a1=0x10045ac0, a2=0x224, a3=a3 at entry (arg3).
  The `bne` branch at 0x10033844 targets 0x1003395c, is taken when a7(?) < 0x2 (signed), and falls through when a7(?) >= 0x2 (signed).
  The `beq` branch at 0x10033850 targets 0x100339c4 and is always taken.
  The `bne` branch at 0x10033870 targets 0x10033894, is taken when v0(?) < 0x2 (signed), and falls through when v0(?) >= 0x2 (signed).
  The `bc1t` branch at 0x10033884 targets 0x10033858, is taken when f20 < f21 (c.lt.s at 0x1003387c), and falls through when not (f20 < f21 (c.lt.s at 0x1003387c)).
  The `beq` branch at 0x1003388c targets 0x1003385c and is always taken.
  The `bc1t` branch at 0x100338c0 targets 0x1003396c, is taken when f23 == f25 (c.eq.d at 0x100338b8), and falls through when not (f23 == f25 (c.eq.d at 0x100338b8)).
  The `beq` branch at 0x10033964 targets 0x10033894 and is always taken.
  The `beq` branch at 0x100339bc targets 0x100338c8 and is always taken.
  The `beq` branch at 0x100339d4 targets 0x1003387c and is always taken.
  The return at 0x10033954 has v0 = one of ?, ret(__assert).

- `doOptionSyncSourceExternal__19ServerInfoFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x100339e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100339e0-0x10033a48 (104 bytes).
  It occupies 104 bytes.
  3 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x100339f8, `lw` at 0x10033a08, `lw` at 0x10033a2c.
  The `sw` at 0x10033a04 stores 4 bytes to [sym(xsetmonApp)] +0x11c.
  The `lw` at 0x10033a10 loads 4 bytes from [sym(xsetmonApp)] +0x11c.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x10033a14, `lw` at 0x10033a34.
  The `lw` at 0x10033a18 loads 4 bytes from [sym(xsetmonApp)] +0x118.
  The `lw` at 0x10033a20 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `jalr` at 0x10033a1c calls XSGIvcSetScreenInputSyncSource with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[[sym(xsetmonApp)]+280], a3=[[sym(xsetmonApp)]+284], a4=[sym(xsetmonApp)], a5=0x24f1c.
  The `jalr` at 0x10033a30 calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=?, a2=?, a3=?.
  The return at 0x10033a40 has v0 = ret(XFlush).

- `doButtonSetCallback__18ChannelFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10033a50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033a50-0x10033a94 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10033a54 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10033a60 loads 4 bytes from [a1+8] +0xa8.
  The `lw` at 0x10033a6c loads 4 bytes from [a1+8] +0xb0.
  The `jalr` at 0x10033a7c calls (unknown callee) with a0=([[a1+8]+168] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24eac.
  The return at 0x10033a8c has v0 = ret(?).

- `DeleteCombination__21SetmonMasterFormClassGv` in `usr/bin/X11/xsetmon` at 0x10033aa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033aa0-0x10033ad4 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x10033ac0 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `jal` at 0x10033abc calls DeleteCombination__28CombinationContentsListClassGv [0x10038440] with a0=[a0+36], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10033acc has v0 = ret(DeleteCombination__28CombinationContentsListClassGv).

- `doArmRegionDrag__19GammaMapEditorClassGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x10033ae0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033ae0-0x10033c68 (392 bytes).
  It occupies 392 bytes.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x70, including `sw` at 0x10033ae0, `sw` at 0x10033b44.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0x10033ae4, `sw` at 0x10033bd8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xac, including `lw` at 0x10033af4, `lw` at 0x10033b34.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb4, including `lw` at 0x10033b20, `lw` at 0x10033b48.
  The `lw` at 0x10033b30 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0x10033b50 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  2 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x10033b5c, `lwc1` at 0x10033b60.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x20, including `lw` at 0x10033b88, `lw` at 0x10033bdc.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x24, including `lw` at 0x10033bb0, `lw` at 0x10033bec.
  The `lw` at 0x10033bc8 loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `lw` at 0x10033bcc loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `sw` at 0x10033bd0 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `sh` at 0x10033be0 stores 2 bytes to a0 (arg0 at entry) +0x74.
  The `sh` at 0x10033be4 stores 2 bytes to a0 (arg0 at entry) +0x78.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x10033be8, `lw` at 0x10033c08, `lw` at 0x10033c24.
  The `sh` at 0x10033bf0 stores 2 bytes to a0 (arg0 at entry) +0x76.
  The `sh` at 0x10033bfc stores 2 bytes to a0 (arg0 at entry) +0x7a.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x10033c00, `lhu` at 0x10033c1c.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x10033c04, `sh` at 0x10033c20.
  The `lw` at 0x10033c44 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `jal` at 0x10033b7c calls vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint [0x1003a020] with a0=a0 at entry (arg0), a1=?, a2=?, a3=sp-48.
  The `jal` at 0x10033c48 calls vDrawControlPoint__19GammaMapEditorClassCGPC6XPointP4_XGC [0x10030f10] with a0=a0 at entry (arg0), a1=sp-48, a2=[a0+76], a3=?.
  The `blez` branch at 0x10033b14 targets 0x10033c50, is taken when at(=[a0+172]) <= 0 (signed), and falls through when at(=[a0+172]) > 0 (signed).
  The `beq` branch at 0x10033b1c targets 0x10033b4c and is always taken.
  The `beq` branch at 0x10033b40 targets 0x10033c50, is taken when a5(=[a0+112]+1) >= v1(=[a0+172]) (signed), and falls through when a5(=[a0+112]+1) < v1(=[a0+172]) (signed).
  The `bne` branch at 0x10033b9c targets 0x10033b30, is taken when a3(=[a2+32]) < t1(?) (signed), and falls through when a3(=[a2+32]) >= t1(?) (signed).
  The `bne` branch at 0x10033ba8 targets 0x10033b30, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0x10033bb8 targets 0x10033b30, is taken when a0(=[a2+36]) < t3(?) (signed), and falls through when a0(=[a2+36]) >= t3(?) (signed).
  The `bne` branch at 0x10033bc0 targets 0x10033b30, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `blez` branch at 0x10033bf8 targets 0x10033c3c, is taken when ra(=[a0+84]) <= 0 (signed), and falls through when ra(=[a0+84]) > 0 (signed).
  The `beq` branch at 0x10033c14 targets 0x10033c3c, is taken when a2(?) >= v1(=[a0+84]) (signed), and falls through when a2(?) < v1(=[a0+84]) (signed).
  The `bne` branch at 0x10033c34 targets 0x10033c00, is taken when a2(?) < a4(=[a0+84]) (signed), and falls through when a2(?) >= a4(=[a0+84]) (signed).
  The return at 0x10033c60 has v0 = one of 0x24e1c, ret(vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint), ret(vDrawControlPoint__19GammaMapEditorClassCGPC6XPointP4_XGC).
  The instructions from 0x10033b24 to 0x10033b2c are not reached by any path from the entry, and their branches are not listed.

- `className__23SetmonMasterFormClassUIGv` in `usr/bin/X11/xsetmon` at 0x10033c70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033c70-0x10033c88 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10033c7c loads 4 bytes from abs 0x1005091c.
  The return at 0x10033c80 has v0 = 0x100467f0.

- `OneTimeInitialization__19ServerInfoFormClassGv` in `usr/bin/X11/xsetmon` at 0x10033c90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033c90-0x10033e50 (448 bytes).
  It occupies 448 bytes.
  8 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10033cb4, `lw` at 0x10033cd0, `lw` at 0x10033cf0.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x10033cbc, `lw` at 0x10033dac.
  The `lw` at 0x10033ccc loads 4 bytes from [[sym(xsetmonApp)]+312] +0x80.
  The `sw` at 0x10033cdc stores 4 bytes to [sym(xsetmonApp)] +0x11c.
  The `lw` at 0x10033ce8 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x10033cfc loads 4 bytes from [sym(xsetmonApp)] +0x98.
  The `lw` at 0x10033d08 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x10033d28 loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `lw` at 0x10033d44 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x10033d58 loads 4 bytes from [sym(xsetmonApp)] +0x90.
  The `lw` at 0x10033d64 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lw` at 0x10033d78 loads 4 bytes from [sym(xsetmonApp)] +0x8c.
  The `lw` at 0x10033d80 loads 4 bytes from [sym(xsetmonApp)] +0xa0.
  The `lw` at 0x10033d90 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x10033dc0 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `lw` at 0x10033dd0 loads 4 bytes from a0 (arg0 at entry) +0x5c.
  The `lw` at 0x10033de0 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x10033e44 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `jalr` at 0x10033cc8 calls XDisplayName with a0=[[[sym(xsetmonApp)]+312]+128], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10033ce4 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+64], a1=?, a2=?, a3=?.
  The `jal` at 0x10033cf8 calls __as__9EZWrapperGi [0x1001fb40] with a0=ret(EZ__GP10_WidgetRec), a1=[[sym(xsetmonApp)]+152], a2=?, a3=?.
  The `jal` at 0x10033d04 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+72], a1=?, a2=?, a3=?.
  The `jal` at 0x10033d18 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=[sym(xsetmonApp)]+164, a2=?, a3=?.
  The `jal` at 0x10033d24 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+88], a1=?, a2=?, a3=?.
  The `jal` at 0x10033d34 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=ret(XDisplayName), a2=?, a3=?.
  The `jal` at 0x10033d40 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+80], a1=?, a2=?, a3=?.
  The `jal` at 0x10033d54 calls __as__9EZWrapperGi [0x1001fb40] with a0=ret(EZ__GP10_WidgetRec), a1=[[sym(xsetmonApp)]+144], a2=?, a3=?.
  The `jal` at 0x10033d60 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+76], a1=?, a2=?, a3=?.
  The `jal` at 0x10033d74 calls __as__9EZWrapperGi [0x1001fb40] with a0=ret(EZ__GP10_WidgetRec), a1=[[sym(xsetmonApp)]+140], a2=?, a3=?.
  The `jal` at 0x10033d8c calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+68], a1=?, a2=[[sym(xsetmonApp)]+160], a3=?.
  The `jal` at 0x10033d9c calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=0x10051710, a2=?, a3=?.
  The `jalr` at 0x10033dbc calls XSGIvcQueryScreenInputSyncSource with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[sym(xsetmonApp)]+280, a3=[sym(xsetmonApp)]+284, a4=a0+120.
  The `jal` at 0x10033dcc calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+92], a1=?, a2=?, a3=?.
  The `jal` at 0x10033ddc calls __as__9EZWrapperGi [0x1001fb40] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+120], a2=?, a3=?.
  The `jal` at 0x10033de8 calls setSyncOptionMenus__19ServerInfoFormClassGv [0x10038a90] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033e18 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10045f50, a2=?, a3=?.
  The `jalr` at 0x10033e24 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10033e30 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10033e40 calls XtSetSensitive with a0=[a0+36], a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x10033d84 targets 0x10033e38, is taken when a2(=[[sym(xsetmonApp)]+160]) == 0, and falls through when a2(=[[sym(xsetmonApp)]+160]) != 0.
  The `beq` branch at 0x10033dc4 targets 0x10033e0c, is taken when v0(=ret(XSGIvcQueryScreenInputSyncSource)) == 0, and falls through when v0(=ret(XSGIvcQueryScreenInputSyncSource)) != 0.
  The `beq` branch at 0x10033e48 targets 0x10033df4 and is always taken.
  The return at 0x10033e04 has v0 = one of ret(setSyncOptionMenus__19ServerInfoFormClassGv), ret(XtSetSensitive).

- `className__29FormatCombinationListsClassUIGv` in `usr/bin/X11/xsetmon` at 0x10033e50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033e50-0x10033e68 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10033e5c loads 4 bytes from abs 0x1005091c.
  The return at 0x10033e60 has v0 = 0x10044d18.

- `__dt__21StatisticsFormClassUIGv` in `usr/bin/X11/xsetmon` at 0x10033e70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033e70-0x10033edc (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x10033ea0 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10033ea8 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10033ec4 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10033e90 targets 0x10033ecc, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10033eb8 targets 0x10033ed0, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10033ed4 has v0 = one of ret(__dt__11VkComponentGv), ?.

- `cancel__21AboutXsetmonFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10033ee0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033ee0-0x10033ee8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10033ee0 has v0 = ?.

- `__dt__12StereoDialogGv` in `usr/bin/X11/xsetmon` at 0x10033ef0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033ef0-0x10033f5c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x10033f20 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10033f28 calls __dt__15VkGenericDialogGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10033f44 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10033f10 targets 0x10033f4c, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10033f38 targets 0x10033f50, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10033f54 has v0 = one of ret(__dt__15VkGenericDialogGv), ?.

- `postHaltMessage__17TextErrorMessagerGP9strstream` in `usr/bin/X11/xsetmon` at 0x10033f60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033f60-0x10033fc0 (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0x10033f84 calls str__9strstreamGv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10033f98 calls appendText__17TextErrorMessagerGPc [0x1002cbb0] with a0=a0 at entry (arg0), a1=ret(str__9strstreamGv), a2=?, a3=?.
  The `jalr` at 0x10033fa8 calls __dl__GPv with a0=ret(str__9strstreamGv), a1=?, a2=?, a3=?.
  The return at 0x10033fb8 has v0 = ret(__dl__GPv).

- `__as__7MMatrixGRC7MMatrix` in `usr/bin/X11/xsetmon` at 0x10033fc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10033fc0-0x10034034 (116 bytes).
  It occupies 116 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10033ff4, `lw` at 0x10034000.
  The `lw` at 0x10033ff8 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x10034004 loads 4 bytes from [a1] +0xc.
  The `lw` at 0x10034008 loads 4 bytes from [a0] +0x8.
  The `lw` at 0x1003400c loads 4 bytes from [a0] +0xc.
  The `jal` at 0x10033ff0 calls __dt__9MMdtArrayGv [0x100340b0] with a0=[a0], a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10034010 calls memcpy with a0=[[a0]+12], a1=[[a1]+12], a2=([[a0]+8] << 0x2), a3=?.
  The return at 0x1003402c has v0 = a0.

- `sFindDistanceIndex__19GammaMapEditorClassGfsT2` in `usr/bin/X11/xsetmon` at 0x10034040 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10034040-0x100340a4 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x10034074 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `bltz` branch at 0x1003406c targets 0x1003409c, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `bne` branch at 0x1003407c targets 0x10034094, is taken when v0(?) < a3(=[a0+84]) (signed), and falls through when v0(?) >= a3(=[a0+84]) (signed).
  The return at 0x1003408c has v0 = ?.
  The return at 0x10034094 has v0 = ?.
  The return at 0x1003409c has v0 = 0x0.

- `__dt__9MMdtArrayGv` in `usr/bin/X11/xsetmon` at 0x100340b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100340b0-0x10034110 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x100340e0 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `jalr` at 0x100340dc calls __dla__GPv with a0=[a0+12], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100340f8 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100340cc targets 0x10034100, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x100340ec targets 0x10034104, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10034108 has v0 = one of ret(__dla__GPv), ?.

- `getDpyInfo__7xsetmonGPc` in `usr/bin/X11/xsetmon` at 0x10034110 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10034110-0x1003456c (1116 bytes).
  It occupies 1116 bytes.
  The `lbu` at 0x10034134 loads 1 byte from a1 (arg1 at entry) +0x0.
  The `sw` at 0x10034154 stores 4 bytes to a0 (arg0 at entry) +0x80.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x80, including `lw` at 0x10034168, `lw` at 0x1003419c, `lw` at 0x1003423c.
  The `sw` at 0x10034170 stores 4 bytes to a0 (arg0 at entry) +0x138.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x84, including `lbu` at 0x10034174, `lbu` at 0x10034214, `lbu` at 0x100342d8.
  3 such `lw` accesses load 4 bytes from ret(getTheErrorDialog__Gv) +0x8, including `lw` at 0x100341b4, `lw` at 0x10034254, `lw` at 0x100342ec.
  3 such `lw` accesses load 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110, including `lw` at 0x100341c4, `lw` at 0x10034264, `lw` at 0x10034300.
  3 such `lw` accesses load 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108, including `lw` at 0x100341d0, `lw` at 0x10034270, `lw` at 0x1003430c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x138, including `lw` at 0x100342b0, `lw` at 0x10034390, `lw` at 0x1003440c.
  4 such `lw` accesses load 4 bytes from [a0+312] +0x84, including `lw` at 0x100342b8, `lw` at 0x100342cc, `lw` at 0x1003439c.
  The `sw` at 0x100342c0 stores 4 bytes to a0 (arg0 at entry) +0x13c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c, including `lw` at 0x100343a0, `lw` at 0x100343d8.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0xc8, including `sb` at 0x100343c0, `sb` at 0x100344c0.
  The `sb` at 0x100343e8 stores 1 byte to a0 (arg0 at entry) +0xcd.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0xc9, including `sb` at 0x100343f8, `sb` at 0x10034568.
  The `sb` at 0x10034418 stores 1 byte to a0 (arg0 at entry) +0xcb.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x90, including `lw` at 0x10034430, `lw` at 0x10034494.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0xca, including `sb` at 0x10034490, `sb` at 0x10034560.
  The `jalr` at 0x10034144 calls strdup with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10034158 calls putenv with a0=0x10043cd8, a1=?, a2=?, a3=?.
  The `jalr` at 0x10034164 calls XOpenDisplay with a0=[a0+128], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003418c calls VkGetResource__GPCcT1 with a0=0x10043da8, a1=0x10043da8, a2=?, a3=?.
  The `jalr` at 0x100341a0 calls sprintf with a0=sp-1104, a1=ret(VkGetResource__GPCcT1), a2=[a0+128], a3=?.
  The `jalr` at 0x100341ac calls getTheErrorDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100341dc calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-1104, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10034204 calls XSGIvcQueryVersion with a0=ret(XOpenDisplay), a1=a0+140, a2=a0+144, a3=?.
  The `jalr` at 0x1003422c calls VkGetResource__GPCcT1 with a0=0x10043cf0, a1=0x10043cf0, a2=?, a3=?.
  The `jalr` at 0x10034240 calls sprintf with a0=sp-1104, a1=ret(VkGetResource__GPCcT1), a2=[a0+128], a3=?.
  The `jalr` at 0x1003424c calls getTheErrorDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003427c calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-1104, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x100342a0 calls getenv with a0=0x10051400, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100342c8 calls XSGIvcQueryVideoScreenInfo with a0=[a0+312], a1=[[a0+312]+132], a2=a0+152, a3=[[a0+312]+132].
  The `jalr` at 0x100342e4 calls getTheErrorDialog__Gv with a0=?, a1=?, a2=?, a3=?, a4=[a0+132]:1.
  The `jalr` at 0x10034318 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=0x10043cf0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10034340 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10043dc0, a2=?, a3=?.
  The `jalr` at 0x10034350 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGPCc), a1=[a0+128], a2=?, a3=?.
  The `jalr` at 0x10034364 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGPCc), a1=0x10043de0, a2=?, a3=?.
  The `jalr` at 0x10034370 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10034398 calls XSGIvcQueryScreenGammaMaps with a0=[a0+312], a1=[[a0+312]+132], a2=a0+276, a3=?.
  The `jalr` at 0x100343d0 calls strncmp with a0=?, a1=0x1005140c, a2=0x3, a3=?.
  The `jalr` at 0x10034408 calls XSGIStereoQueryExtension with a0=[a0+312], a1=sp-48, a2=sp-44, a3=?.
  The `jalr` at 0x10034444 calls strncmp with a0=?, a1=0x10051410, a2=0x7, a3=?.
  The `jalr` at 0x10034468 calls XSGIvcQueryPlatformParameter with a0=[a0+312], a1=[[a0+312]+132], a2=0x0, a3=0x0, a4=sp-80, a5=0x20.
  The `jalr` at 0x100344ac calls strncmp with a0=a0+164, a1=0x10051408, a2=0x3, a3=?.
  The `jalr` at 0x100344cc calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10043d10, a2=?, a3=?.
  The `jalr` at 0x100344dc calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGPCc), a1=[a0+128], a2=?, a3=?.
  The `jalr` at 0x100344f0 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGPCc), a1=0x10043d28, a2=?, a3=?.
  The `jalr` at 0x10034504 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGPCc), a1=0x10043d48, a2=?, a3=?.
  The `jalr` at 0x10034510 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10034540 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10043d80, a2=?, a3=?, a4=[a0+132]:1.
  The `jalr` at 0x1003454c calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1003412c targets 0x1003429c, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x10034138 targets 0x100342a0, is taken when v0(=[a1]:1) == 0, and falls through when v0(=[a1]:1) != 0.
  The `bne` branch at 0x1003416c targets 0x100341f8, is taken when v0(=ret(XOpenDisplay)) != 0, and falls through when v0(=ret(XOpenDisplay)) == 0.
  The `beq` branch at 0x10034178 targets 0x10034338, is taken when a1(=[a0+132]:1) == 0, and falls through when a1(=[a0+132]:1) != 0.
  The `bne` branch at 0x1003420c targets 0x100342b0, is taken when v0(=ret(XSGIvcQueryVersion)) != 0, and falls through when v0(=ret(XSGIvcQueryVersion)) == 0.
  The `beq` branch at 0x10034218 targets 0x100344c4, is taken when a1(=[a0+132]:1) == 0, and falls through when a1(=[a0+132]:1) != 0.
  The `beq` branch at 0x100342a8 targets 0x10034140 and is always taken.
  The `bne` branch at 0x100342d0 targets 0x10034390, is taken when v0(=ret(XSGIvcQueryVideoScreenInfo)) != 0, and falls through when v0(=ret(XSGIvcQueryVideoScreenInfo)) == 0.
  The `beq` branch at 0x100342dc targets 0x10034530, is taken when a4(=[a0+132]:1) == 0, and falls through when a4(=[a0+132]:1) != 0.
  The `beq` branch at 0x100343a8 targets 0x100344a0, is taken when a1(=[a0+140]) >= 0x2 (signed), and falls through when a1(=[a0+140]) < 0x2 (signed).
  The `beq` branch at 0x100343b4 targets 0x10034494, is taken when a1(=[a0+140]) == a3(=0x1), and falls through when a1(=[a0+140]) != a3(=0x1).
  The `beq` branch at 0x100343e4 targets 0x10034438, is taken when a1(=[a0+140]) >= 0x2 (signed), and falls through when a1(=[a0+140]) < 0x2 (signed).
  The `beq` branch at 0x100343f0 targets 0x10034430, is taken when a1(=[a0+140]) == a7(=0x1), and falls through when a1(=[a0+140]) != a7(=0x1).
  The `blez` branch at 0x10034434 targets 0x100343f8, is taken when t1(=[a0+144]) <= 0 (signed), and falls through when t1(=[a0+144]) > 0 (signed).
  The `bne` branch at 0x1003444c targets 0x100343f8, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `bc1f` branch at 0x10034484 targets 0x10034560, is taken when not (f0 < f1(=0x4060000000000000) (c.lt.d at 0x1003447c)), and falls through when f0 < f1(=0x4060000000000000) (c.lt.d at 0x1003447c).
  The `beq` branch at 0x1003448c targets 0x10034564 and is always taken.
  The `blez` branch at 0x10034498 targets 0x100343b8, is taken when t2(=[a0+144]) <= 0 (signed), and falls through when t2(=[a0+144]) > 0 (signed).
  The `bne` branch at 0x100344b4 targets 0x100343c0, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0x100344bc targets 0x100343c4 and is always taken.
  The `beq` branch at 0x10034558 targets 0x100341ec and is always taken.
  The `beq` branch at 0x10034564 targets 0x100343fc and is always taken.
  The return at 0x100341f0 has v0 = 0x0.
  The return at 0x10034294 has v0 = 0x0.
  The return at 0x10034330 has v0 = 0x0.
  The return at 0x10034388 has v0 = 0x0.
  The return at 0x10034428 has v0 = 0x1.
  The return at 0x10034528 has v0 = 0x0.

- `__dt__21GammaMapEditorClassUIGv` in `usr/bin/X11/xsetmon` at 0x10034570 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10034570-0x100345dc (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x100345a0 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x100345a8 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x100345c4 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10034590 targets 0x100345cc, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x100345b8 targets 0x100345d0, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x100345d4 has v0 = one of ret(__dt__11VkComponentGv), ?.

- `vFindRegionAffected__19GammaMapEditorClassGP6XPointT1f` in `usr/bin/X11/xsetmon` at 0x100345e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100345e0-0x10034750 (368 bytes).
  It occupies 368 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x10034604, `lw` at 0x100346bc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9c, including `lw` at 0x10034640, `lw` at 0x10034698.
  The `lh` at 0x10034644 loads 2 bytes from a1 (arg1 at entry) +0x2.
  The `lh` at 0x1003464c loads 2 bytes from a1 (arg1 at entry) +0x0.
  4 such `lh` accesses load 2 bytes from ?, including `lh` at 0x10034658, `lh` at 0x10034660, `lh` at 0x100346a0.
  The `sh` at 0x100346a4 stores 2 bytes to a2 (arg2 at entry) +0x0.
  The `sh` at 0x100346b4 stores 2 bytes to a2 (arg2 at entry) +0x2.
  The `sh` at 0x1003471c stores 2 bytes to a0 (arg0 at entry) +0x7c.
  The `sh` at 0x10034724 stores 2 bytes to a0 (arg0 at entry) +0x80.
  The `sh` at 0x1003472c stores 2 bytes to a0 (arg0 at entry) +0x7e.
  The `jal` at 0x10034680 calls fDistanceFunction__19GammaMapEditorClassGfN31 [0x10043150] with a0=a0 at entry (arg0), a1=[a1]:2, a2=[a1+2]:2, a3=?.
  The `jal` at 0x100346f4 calls sFindDistanceIndex__19GammaMapEditorClassGfsT2 [0x10034040] with a0=a0 at entry (arg0), a1=?, a2=?, a3=-0x1.
  The `jal` at 0x10034718 calls sFindDistanceIndex__19GammaMapEditorClassGfsT2 [0x10034040] with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `blez` branch at 0x10034628 targets 0x10034740, is taken when at(=[a0+84]) <= 0 (signed), and falls through when at(=[a0+84]) > 0 (signed).
  The `bc1f` branch at 0x10034690 targets 0x100346b8, is taken when not (f0(=ret(fDistanceFunction__19GammaMapEditorClassGfN31)) < f20 (c.lt.s at 0x10034688)), and falls through when f0(=ret(fDistanceFunction__19GammaMapEditorClassGfN31)) < f20 (c.lt.s at 0x10034688).
  The `bne` branch at 0x100346cc targets 0x10034640, is taken when s0(?) < a1(=[a0+84]) (signed), and falls through when s0(?) >= a1(=[a0+84]) (signed).
  The `beq` branch at 0x10034748 targets 0x100346d4 and is always taken.
  The return at 0x10034738 has v0 = ret(sFindDistanceIndex__19GammaMapEditorClassGfsT2).

- `vDrawSpline__19GammaMapEditorClassCGv` in `usr/bin/X11/xsetmon` at 0x10034750 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10034750-0x10034978 (552 bytes).
  It occupies 552 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xac, including `lw` at 0x10034764, `lw` at 0x100348c0, `lw` at 0x1003491c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lw` at 0x10034788, `lw` at 0x10034874, `lw` at 0x10034974.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb4, including `lw` at 0x1003478c, `lw` at 0x10034878, `lw` at 0x100348d0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb0, including `lw` at 0x10034794, `lw` at 0x10034880, `lw` at 0x100348d4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xbc, including `lw` at 0x1003479c, `lw` at 0x10034888.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb8, including `lw` at 0x100347a8, `lw` at 0x10034894.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x100347c8, `lw` at 0x1003485c.
  The `lw` at 0x10034824 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x10034828 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x10034830 loads 4 bytes from [sym(xsetmonApp)] +0x6c.
  2 such `lh` accesses load 2 bytes from (sp + one of -0x5e, -0x5a) +0x0, including `lh` at 0x10034834, `lh` at 0x10034840.
  2 such `lh` accesses load 2 bytes from (sp + one of -0x60, -0x5c) +0x0, including `lh` at 0x10034838, `lh` at 0x1003484c.
  The `lw` at 0x10034858 loads 4 bytes from a0 (arg0 at entry) +0x44.
  2 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x100348e0, `lwc1` at 0x100348e4.
  The `lw` at 0x10034910 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `jal` at 0x100347a4 calls fSplineCalc__19GammaMapEditorClassCGiT1PfN23T1 [0x10033820] with a0=a0 at entry (arg0), a1=[a0+184], a2=[a0+188], a3=[a0+176], a4=[a0+180], a5=[a0+168], a6=0x0.
  The `jal` at 0x100347c0 calls vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint [0x1003a020] with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=sp-96.
  The `jal` at 0x10034818 calls vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint [0x1003a020] with a0=a0 at entry (arg0), a1=?, a2=?, a3=(sp + one of -0x60, -0x5c).
  The `jalr` at 0x1003482c calls XtWindow with a0=[a0+36], a1=?, a2=?, a3=?.
  The `jalr` at 0x10034854 calls XDrawLine with a0=[[sym(xsetmonApp)]+108], a1=ret(XtWindow), a2=[a0+68], a3=?.
  The `jal` at 0x10034890 calls fSplineCalc__19GammaMapEditorClassCGiT1PfN23T1 [0x10033820] with a0=a0 at entry (arg0), a1=[a0+184], a2=[a0+188], a3=[a0+176], a4=[a0+180], a5=[a0+168].
  The `jal` at 0x10034900 calls vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint [0x1003a020] with a0=a0 at entry (arg0), a1=?, a2=?, a3=sp-88.
  The `jal` at 0x10034914 calls vDrawControlPoint__19GammaMapEditorClassCGPC6XPointP4_XGC [0x10030f10] with a0=a0 at entry (arg0), a1=sp-88, a2=[a0+72], a3=?.
  The `jalr` at 0x10034968 calls __assert with a0=0x10045aa8, a1=0x10045ac0, a2=0x256, a3=a3 at entry (arg3).
  The `beq` branch at 0x10034780 targets 0x10034954, is taken when at(=[a0+172]) == 0, and falls through when at(=[a0+172]) != 0.
  The `blez` branch at 0x100347d0 targets 0x100348c0, is taken when v1(=[a0+84]) <= 0 (signed), and falls through when v1(=[a0+84]) > 0 (signed).
  The `beq` branch at 0x100347ec targets 0x10034874 and is always taken.
  The `beq` branch at 0x10034800 targets 0x10034810, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1003486c targets 0x100348b4, is taken when s2(?) >= t8(=[a0+84]) (signed), and falls through when s2(?) < t8(=[a0+84]) (signed).
  The `bgez` branch at 0x100348a4 targets 0x10034800, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `beq` branch at 0x100348ac targets 0x1003480c and is always taken.
  The `blez` branch at 0x100348c8 targets 0x10034930, is taken when t9(=[a0+172]) <= 0 (signed), and falls through when t9(=[a0+172]) > 0 (signed).
  The `bne` branch at 0x10034928 targets 0x100348d0, is taken when s2(?) < v0(=[a0+172]) (signed), and falls through when s2(?) >= v0(=[a0+172]) (signed).
  The `beq` branch at 0x10034970 targets 0x1003478c and is always taken.
  The return at 0x1003494c has v0 = ?.
  The instructions from 0x100347f4 to 0x100347fc are not reached by any path from the entry, and their branches are not listed.

- `accumBufTypeSelectedCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10034980 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10034980-0x100349c4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10034984 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10034990 loads 4 bytes from [a1+8] +0x108.
  The `lw` at 0x1003499c loads 4 bytes from [a1+8] +0x110.
  The `jalr` at 0x100349ac calls (unknown callee) with a0=([[a1+8]+264] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23f7c.
  The return at 0x100349bc has v0 = ret(?).

- `setOpMenuIndex__12GammaClassUIGi` in `usr/bin/X11/xsetmon` at 0x100349d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100349d0-0x10034a04 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x100349f0 loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `jalr` at 0x100349ec calls set__12VkOptionMenuGi with a0=[a0+100], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100349fc has v0 = ret(set__12VkOptionMenuGi).

- `fbConfigSelected__27FormatCombinationListsClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10034a10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10034a10-0x10034a70 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x10034a24 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lw` at 0x10034a3c loads 4 bytes from table(0x1004cf5c) +0x0.
  The `sw` at 0x10034a40 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `lw` at 0x10034a44 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x10034a48 loads 4 bytes from [sym(xsetmonApp)] +0x130.
  The `lw` at 0x10034a50 loads 4 bytes from [[sym(xsetmonApp)]+304] +0x44.
  The `lw` at 0x10034a5c loads 4 bytes from [[[sym(xsetmonApp)]+304]+68] +0x2c.
  The `jal` at 0x10034a58 calls DisplayfbConfig__21SetmonMasterFormClassGPCc [0x10024a60] with a0=[[[[sym(xsetmonApp)]+304]+68]+44], a1=entry(0x1004cf5c), a2=sym(xsetmonApp), a3=([a2+16] << 0x2).
  The return at 0x10034a68 has v0 = ret(DisplayfbConfig__21SetmonMasterFormClassGPCc).

- `className__19GammaMapEditorClassGv` in `usr/bin/X11/xsetmon` at 0x10034a70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10034a70-0x10034a88 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10034a7c loads 4 bytes from abs 0x1005091c.
  The return at 0x10034a80 has v0 = 0x10045968.

- `create__18ChannelFormClassUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10034b70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10034b70-0x10036f34 (9156 bytes).
  It occupies 9156 bytes.
  The `lw` at 0x10034bbc loads 4 bytes from a0 (arg0 at entry) +0xc.
  5 such `lw` accesses load 4 bytes from sym(xmFormWidgetClass) +0x0, including `lw` at 0x10034bc8, `lw` at 0x10034be4, `lw` at 0x10034dc4.
  The `sw` at 0x10034bd0 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x10034bdc stores 4 bytes to a0 (arg0 at entry) +0x4c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x10034be0, `lw` at 0x10036e08.
  The `sw` at 0x10034ca0 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  3 such `lw` accesses load 4 bytes from sym(xmFrameWidgetClass) +0x0, including `lw` at 0x10034ca4, `lw` at 0x10034e00, `lw` at 0x100357ac.
  The `sw` at 0x10034d84 stores 4 bytes to a0 (arg0 at entry) +0x50.
  12 such `lw` accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0, including `lw` at 0x10034da4, `lw` at 0x1003523c, `lw` at 0x10035328.
  The `sw` at 0x10034dc0 stores 4 bytes to a0 (arg0 at entry) +0x78.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x50, including `lw` at 0x10034dd4, `lw` at 0x1003686c.
  The `sw` at 0x10034dfc stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x10034ec4 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sw` at 0x10034f04 stores 4 bytes to a0 (arg0 at entry) +0x54.
  4 such `lw` accesses load 4 bytes from sym(xmTextFieldWidgetClass) +0x0, including `lw` at 0x10034f08, `lw` at 0x10034fe0, `lw` at 0x100350a8.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x10034fd8, `lw` at 0x100350a0, `lw` at 0x10035170.
  The `sw` at 0x10034fdc stores 4 bytes to a0 (arg0 at entry) +0xbc.
  The `sw` at 0x100350a4 stores 4 bytes to a0 (arg0 at entry) +0xb8.
  The `sw` at 0x10035174 stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x10035238 stores 4 bytes to a0 (arg0 at entry) +0xb4.
  The `sw` at 0x10035324 stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x10035410 stores 4 bytes to a0 (arg0 at entry) +0x84.
  The `sw` at 0x100354ec stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `sw` at 0x100355bc stores 4 bytes to a0 (arg0 at entry) +0x7c.
  2 such `lw` accesses load 4 bytes from sym(xmPushButtonWidgetClass) +0x0, including `lw` at 0x100355c0, `lw` at 0x100356a4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x58, including `lw` at 0x100355c4, `lw` at 0x100356a8.
  The `sw` at 0x100356a0 stores 4 bytes to a0 (arg0 at entry) +0x48.
  The `sw` at 0x10035760 stores 4 bytes to a0 (arg0 at entry) +0x44.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1003576c, `lw` at 0x1003577c.
  The `lw` at 0x10035778 loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `lw` at 0x1003579c loads 4 bytes from a0 (arg0 at entry) +0x48.
  17 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5c, including `lw` at 0x100357a8, `lw` at 0x10035e38, `lw` at 0x10035f78.
  The `sw` at 0x10035874 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `sw` at 0x100358a8 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `lw` at 0x100358b0 loads 4 bytes from a0 (arg0 at entry) +0x68.
  The `sw` at 0x100358e8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0x10035914, `lw` at 0x10035954, `lw` at 0x10035b14.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x20, including `sw` at 0x1003592c, `sw` at 0x10035934.
  27 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10035938, `lw` at 0x1003593c, `lw` at 0x10035940.
  The `lw` at 0x10035950 loads 4 bytes from sym(xmScrolledWindowWidgetClass) +0x0.
  The `sw` at 0x10035a40 stores 4 bytes to a0 (arg0 at entry) +0xac.
  The `lw` at 0x10035a64 loads 4 bytes from sym(xmRowColumnWidgetClass) +0x0.
  The `sw` at 0x10035a84 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The `lw` at 0x10035ab0 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x24, including `sw` at 0x10035ac8, `sw` at 0x10035ad0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x28, including `sw` at 0x10035b2c, `sw` at 0x10035b34.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2c, including `sw` at 0x10035b90, `sw` at 0x10035b98.
  The `lw` at 0x10035bb8 loads 4 bytes from a0 (arg0 at entry) +0x20.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xac, including `lw` at 0x10035bcc, `lw` at 0x10035ca0, `lw` at 0x10035d78.
  The `lw` at 0x10035c8c loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x10035d64 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  3 such `lw` accesses load 4 bytes from sym(xmScaleWidgetClass) +0x0, including `lw` at 0x10035e3c, `lw` at 0x10035f7c, `lw` at 0x100360b0.
  The `sw` at 0x10035f54 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `lw` at 0x10035f74 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `sw` at 0x10036088 stores 4 bytes to a0 (arg0 at entry) +0xa0.
  The `lw` at 0x100360a8 loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The `sw` at 0x100361a8 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  The `lw` at 0x100361c8 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x30, including `sw` at 0x10036210, `sw` at 0x10036218.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x34, including `sw` at 0x10036274, `sw` at 0x1003627c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x38, including `sw` at 0x100362d8, `sw` at 0x100362e0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x3c, including `sw` at 0x1003633c, `sw` at 0x10036344.
  The `sw` at 0x100363c8 stores 4 bytes to a0 (arg0 at entry) +0xc0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc0, including `lw` at 0x100363e8, `lw` at 0x10036bec.
  The `sw` at 0x100363ec stores 4 bytes to a0 (arg0 at entry) +0xc8.
  The `sw` at 0x100363f8 stores 4 bytes to a0 (arg0 at entry) +0xcc.
  The `sw` at 0x100364a4 stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `sw` at 0x10036554 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0x10036600 stores 4 bytes to a0 (arg0 at entry) +0x94.
  The `sw` at 0x100366b0 stores 4 bytes to a0 (arg0 at entry) +0x70.
  The `sw` at 0x1003675c stores 4 bytes to a0 (arg0 at entry) +0x98.
  The `sw` at 0x10036804 stores 4 bytes to a0 (arg0 at entry) +0x8c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x90, including `lw` at 0x10036860, `lw` at 0x10036c94.
  The `sw` at 0x10036870 stores 4 bytes to a0 (arg0 at entry) +0xc4.
  The `lw` at 0x10036884 loads 4 bytes from a0 (arg0 at entry) +0x34.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x10036894, `lw` at 0x1003696c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3c, including `lw` at 0x1003697c, `lw` at 0x10036a54.
  The `lw` at 0x10036b20 loads 4 bytes from a0 (arg0 at entry) +0x30.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0x10036c88, `lw` at 0x10036d38.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0x10036ca8, `lw` at 0x10036cd4.
  The `lw` at 0x10036cb4 loads 4 bytes from a0 (arg0 at entry) +0x94.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x98, including `lw` at 0x10036cc8, `lw` at 0x10036cf4.
  The `lw` at 0x10036ce8 loads 4 bytes from a0 (arg0 at entry) +0x8c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc4, including `lw` at 0x10036d08, `lw` at 0x10036d18, `lw` at 0x10036d48.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x40, including `sw` at 0x10036e20, `sw` at 0x10036e28.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x10036e50, `lw` at 0x10036e74.
  The `jalr` at 0x10034ba0 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultChannelFormClassUIResources__18ChannelFormClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x10034bc4 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=-0xd1, a4=0x1, a5=0x0.
  The `jalr` at 0x10034bd8 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10034c94 calls XtVaCreateManagedWidget with a0=0x100440c8, a1=[sym(xmFormWidgetClass)], a2=[a0+16], a3=-0xd1, a4=0x1, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x10034d7c calls XtVaCreateManagedWidget with a0=0x100440e0, a1=[sym(xmFrameWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0xa7, a4=0x5, a5=-0x42, a6=0x4, a7=-0x66.
  The `jalr` at 0x10034db8 calls XtVaCreateManagedWidget with a0=0x100514d8, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=-0x337, a6=0x2, a7=-0x16.
  The `jalr` at 0x10034df0 calls XtVaCreateManagedWidget with a0=0x100514e0, a1=[sym(xmFormWidgetClass)], a2=[a0+80], a3=-0xd1, a4=0x1, a5=-0x17, a6=0x8364, a7=-0x16.
  The `jalr` at 0x10034ebc calls XtVaCreateManagedWidget with a0=0x100514e8, a1=[sym(xmFrameWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0xa7, a4=0x5, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x10034ef8 calls XtVaCreateManagedWidget with a0=0x100514f0, a1=[sym(xmFormWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0xd1, a4=0x1, a5=-0x17, a6=0x8304, a7=-0x16.
  The `jalr` at 0x10034fd0 calls XtVaCreateManagedWidget with a0=0x100440f8, a1=[sym(xmTextFieldWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x42, a4=0x5, a5=-0x66, a6=0x1, a7=-0x46.
  The `jalr` at 0x10035098 calls XtVaCreateManagedWidget with a0=0x10044110, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+84], a3=-0x42, a4=0x1, a5=-0x66, a6=0x5, a7=-0x46.
  The `jalr` at 0x10035168 calls XtVaCreateManagedWidget with a0=0x10044128, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+84], a3=-0x42, a4=0x5, a5=-0x66, a6=0x1, a7=-0x46.
  The `jalr` at 0x1003522c calls XtVaCreateManagedWidget with a0=0x10044140, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+84], a3=-0x42, a4=0x1, a5=-0x66, a6=0x5, a7=-0x46.
  The `jalr` at 0x10035318 calls XtVaCreateManagedWidget with a0=0x100514f8, a1=[sym(xmLabelWidgetClass)], a2=[a0+84], a3=-0x3, a4=0x2, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x10035404 calls XtVaCreateManagedWidget with a0=0x10051500, a1=[sym(xmLabelWidgetClass)], a2=[a0+84], a3=-0x3, a4=0x2, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x100354e0 calls XtVaCreateManagedWidget with a0=0x10051508, a1=[sym(xmLabelWidgetClass)], a2=[a0+84], a3=-0x3, a4=0x2, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x100355b0 calls XtVaCreateManagedWidget with a0=0x10051510, a1=[sym(xmLabelWidgetClass)], a2=[a0+84], a3=-0x3, a4=0x2, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x10035680 calls XtVaCreateManagedWidget with a0=0x10044158, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+88], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x1003569c calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x25, a2=sym(doButtonSetCallback__18ChannelFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10035740 calls XtVaCreateManagedWidget with a0=0x10044168, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+88], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1003575c calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x25, a2=sym(doButtonQueryBestCallback__18ChannelFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10035774 calls XtVaSetValues with a0=[a0+100], a1=-0xa5, a2=[a0+68], a3=0x0.
  The `jalr` at 0x100357a0 calls XtVaSetValues with a0=[a0+72], a1=-0x76, a2=[a0+68], a3=-0xa5, a4=[a0+68], a5=-0x116, a6=[a0+68], a7=0x0.
  The `jalr` at 0x10035868 calls XtVaCreateManagedWidget with a0=0x10044178, a1=[sym(xmFrameWidgetClass)], a2=[a0+92], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x5, a7=-0x66.
  The `jalr` at 0x100358a0 calls XtVaCreateManagedWidget with a0=0x10051518, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=-0x337, a6=0x2, a7=-0x16.
  The `jalr` at 0x100358dc calls XtVaCreateManagedWidget with a0=0x10044190, a1=[sym(xmFormWidgetClass)], a2=[a0+104], a3=-0xd1, a4=0x1, a5=-0x17, a6=0x847f, a7=-0x16.
  The `jalr` at 0x100358f0 calls __nw__GUi with a0=0x3c, a1=?, a2=?, a3=?.
  The `jal` at 0x10035918 calls __ct__17SyncSelectorFrameGPCcP10_WidgetRec [0x100379d0] with a0=ret(__nw__GUi), a1=0x100441a8, a2=[a0+96], a3=?.
  The `jalr` at 0x10035944 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10035a38 calls XtVaCreateManagedWidget with a0=0x100441b8, a1=[sym(xmScrolledWindowWidgetClass)], a2=[a0+96], a3=-0x5a, a4=0x0, a5=-0x5b, a6=0x1, a7=-0x42.
  The `jalr` at 0x10035a78 calls XtVaCreateManagedWidget with a0=0x100441d0, a1=[sym(xmRowColumnWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x1d4, a4=0x0, a5=-0xc1, a6=0x1, a7=-0x16.
  The `jalr` at 0x10035a8c calls __nw__GUi with a0=0x3c, a1=?, a2=?, a3=?.
  The `jal` at 0x10035ab4 calls __ct__17SyncSelectorFrameGPCcP10_WidgetRec [0x100379d0] with a0=ret(__nw__GUi), a1=0x100441e8, a2=[a0+156], a3=?.
  The `jalr` at 0x10035ae0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10035af0 calls __nw__GUi with a0=0x3c, a1=?, a2=?, a3=?.
  The `jal` at 0x10035b18 calls __ct__17SyncSelectorFrameGPCcP10_WidgetRec [0x100379d0] with a0=ret(__nw__GUi), a1=0x10044200, a2=[a0+96], a3=?.
  The `jalr` at 0x10035b44 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10035b54 calls __nw__GUi with a0=0x3c, a1=?, a2=?, a3=?.
  The `jal` at 0x10035b7c calls __ct__17SyncSelectorFrameGPCcP10_WidgetRec [0x100379d0] with a0=ret(__nw__GUi), a1=0x10044218, a2=[a0+96], a3=?.
  The `jalr` at 0x10035ba8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10035bb4 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=?, a3=?.
  The `jalr` at 0x10035c7c calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x5, a3=-0x66, a4=0x5, a5=-0x46, a6=0x1, a7=-0x67.
  The `jalr` at 0x10035c88 calls baseWidget__11VkComponentCGv with a0=[a0+40], a1=?, a2=?, a3=?.
  The `jalr` at 0x10035d54 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x5, a3=-0x66, a4=0x5, a5=-0x46, a6=0x1, a7=-0x67.
  The `jalr` at 0x10035d60 calls baseWidget__11VkComponentCGv with a0=[a0+44], a1=?, a2=?, a3=?.
  The `jalr` at 0x10035e2c calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x5, a3=-0x66, a4=0x5, a5=-0x46, a6=0x1, a7=-0x67.
  The `jalr` at 0x10035f38 calls XtVaCreateManagedWidget with a0=0x10044230, a1=[sym(xmScaleWidgetClass)], a2=[a0+92], a3=-0xb, a4=0x2, a5=-0x3a0, a6=0x1, a7=-0x39a.
  The `jalr` at 0x10035f58 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x40, a2=sym(doSetSCHPhaseCallback__18ChannelFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10035f70 calls XtAddCallback with a0=[a0+164], a1=-0x4d, a2=sym(doSetSCHPhaseCallback__18ChannelFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003606c calls XtVaCreateManagedWidget with a0=0x10044240, a1=[sym(xmScaleWidgetClass)], a2=[a0+92], a3=-0xb, a4=0x2, a5=-0x3a0, a6=0x1, a7=-0x39a.
  The `jalr` at 0x1003608c calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x40, a2=sym(doHorizontalPhaseCallbackCallback__18ChannelFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100360a4 calls XtAddCallback with a0=[a0+160], a1=-0x4d, a2=sym(doHorizontalPhaseCallbackCallback__18ChannelFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003618c calls XtVaCreateManagedWidget with a0=0x10044258, a1=[sym(xmScaleWidgetClass)], a2=[a0+92], a3=-0xb, a4=0x2, a5=-0x3a0, a6=0x1, a7=-0x42.
  The `jalr` at 0x100361ac calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x40, a2=sym(doSetVerticalPhaseCallback__18ChannelFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100361c4 calls XtAddCallback with a0=[a0+168], a1=-0x4d, a2=sym(doSetVerticalPhaseCallback__18ChannelFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100361d4 calls __nw__GUi with a0=0x3c, a1=?, a2=?, a3=?.
  The `jal` at 0x100361fc calls __ct__16GainControlClassGPCcP10_WidgetRec [0x1003ed80] with a0=ret(__nw__GUi), a1=0x10044270, a2=[a0+92], a3=?.
  The `jalr` at 0x10036228 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10036238 calls __nw__GUi with a0=0x3c, a1=?, a2=?, a3=?.
  The `jal` at 0x10036260 calls __ct__16GainControlClassGPCcP10_WidgetRec [0x1003ed80] with a0=ret(__nw__GUi), a1=0x10044280, a2=[a0+92], a3=?.
  The `jalr` at 0x1003628c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003629c calls __nw__GUi with a0=0x3c, a1=?, a2=?, a3=?.
  The `jal` at 0x100362c4 calls __ct__16GainControlClassGPCcP10_WidgetRec [0x1003ed80] with a0=ret(__nw__GUi), a1=0x10044290, a2=[a0+92], a3=?.
  The `jalr` at 0x100362f0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10036300 calls __nw__GUi with a0=0x3c, a1=?, a2=?, a3=?.
  The `jal` at 0x10036328 calls __ct__16GainControlClassGPCcP10_WidgetRec [0x1003ed80] with a0=ret(__nw__GUi), a1=0x100442a8, a2=[a0+92], a3=?.
  The `jalr` at 0x10036354 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10036364 calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x10036394 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+92], a2=0x100442b8, a3=0x0, a4=0x0.
  The `jalr` at 0x100363cc calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=?, a1=0x100442d0, a2=sym(doOptionBlankedCallback__18ChannelFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100363f0 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+192], a1=0x100442e0, a2=sym(doOptionNotBlankedCallback__18ChannelFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1003649c calls XtVaCreateManagedWidget with a0=0x100442f8, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x4, a7=-0x66.
  The `jalr` at 0x1003654c calls XtVaCreateManagedWidget with a0=0x10051520, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x5, a7=-0x66.
  The `jalr` at 0x100365f8 calls XtVaCreateManagedWidget with a0=0x10044308, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x4, a7=-0x66.
  The `jalr` at 0x100366a8 calls XtVaCreateManagedWidget with a0=0x10051528, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x5, a7=-0x66.
  The `jalr` at 0x10036754 calls XtVaCreateManagedWidget with a0=0x10044318, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x4, a7=-0x66.
  The `jalr` at 0x100367f8 calls XtVaCreateManagedWidget with a0=0x10051530, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x5, a7=-0x66.
  The `jalr` at 0x1003680c calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003683c calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+92], a2=0x10044330, a3=0x0, a4=0x0.
  The `jalr` at 0x10036874 calls XtVaSetValues with a0=[a0+80], a1=-0x76, a2=[a0+144], a3=-0xa5, a4=[a0+144], a5=0x0.
  The `jalr` at 0x10036880 calls baseWidget__11VkComponentCGv with a0=[a0+52], a1=?, a2=?, a3=?.
  The `jalr` at 0x10036890 calls baseWidget__11VkComponentCGv with a0=[a0+56], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003695c calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x4, a3=-0x66, a4=0x5, a5=-0x46, a6=0x5, a7=-0x67.
  The `jalr` at 0x10036968 calls baseWidget__11VkComponentCGv with a0=[a0+56], a1=?, a2=?, a3=?.
  The `jalr` at 0x10036978 calls baseWidget__11VkComponentCGv with a0=[a0+60], a1=?, a2=?, a3=?.
  The `jalr` at 0x10036a44 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x4, a3=-0x66, a4=0x5, a5=-0x46, a6=0x5, a7=-0x67.
  The `jalr` at 0x10036a50 calls baseWidget__11VkComponentCGv with a0=[a0+60], a1=?, a2=?, a3=?.
  The `jalr` at 0x10036b10 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x5, a3=-0x66, a4=0x5, a5=-0x46, a6=0x5, a7=-0x67.
  The `jalr` at 0x10036b1c calls baseWidget__11VkComponentCGv with a0=[a0+48], a1=?, a2=?, a3=?.
  The `jalr` at 0x10036bdc calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x5, a3=-0x66, a4=0x5, a5=-0x46, a6=0x5, a7=-0x67.
  The `jalr` at 0x10036be8 calls baseWidget__10VkMenuItemCGv with a0=[a0+192], a1=?, a2=?, a3=?.
  The `jalr` at 0x10036c78 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=-0x42, a2=0x5, a3=-0x66, a4=0x0, a5=-0x46, a6=0x1, a7=-0x67.
  The `jalr` at 0x10036c98 calls XtVaSetValues with a0=[a0+144], a1=-0x76, a2=[a0+108], a3=-0xa5, a4=[a0+108], a5=0x0.
  The `jalr` at 0x10036cb8 calls XtVaSetValues with a0=[a0+148], a1=-0x76, a2=[a0+112], a3=-0xa5, a4=[a0+112], a5=0x0.
  The `jalr` at 0x10036cd8 calls XtVaSetValues with a0=[a0+112], a1=-0x76, a2=[a0+152], a3=-0xa5, a4=[a0+152], a5=0x0.
  The `jalr` at 0x10036cf8 calls XtVaSetValues with a0=[a0+152], a1=-0x76, a2=[a0+140], a3=-0xa5, a4=[a0+140], a5=0x0.
  The `jalr` at 0x10036d04 calls baseWidget__10VkMenuItemCGv with a0=[a0+196], a1=?, a2=?, a3=?.
  The `jalr` at 0x10036d14 calls baseWidget__10VkMenuItemCGv with a0=[a0+196], a1=?, a2=?, a3=?.
  The `jalr` at 0x10036d34 calls XtVaSetValues with a0=[a0+108], a1=-0x76, a2=ret(baseWidget__10VkMenuItemCGv), a3=-0xa5, a4=ret(baseWidget__10VkMenuItemCGv), a5=0x0.
  The `jalr` at 0x10036d44 calls baseWidget__10VkMenuItemCGv with a0=[a0+196], a1=?, a2=?, a3=?.
  The `jalr` at 0x10036dd4 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=-0x42, a2=0x5, a3=-0x66, a4=0x0, a5=-0x46, a6=0x1, a7=-0x67.
  The `jalr` at 0x10036de4 calls __nw__GUi with a0=0x164, a1=?, a2=?, a3=?.
  The `jal` at 0x10036e0c calls __ct__19StatisticsFormClassGPCcP10_WidgetRec [0x100422c0] with a0=ret(__nw__GUi), a1=0x10044350, a2=[a0+16], a3=?.
  The `jalr` at 0x10036e40 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10036e4c calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=?, a2=?, a3=?.
  The `jalr` at 0x10036e64 calls XtVaSetValues with a0=[a0+92], a1=-0x116, a2=ret(baseWidget__11VkComponentCGv), a3=0x0.
  The `jalr` at 0x10036e70 calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=?, a2=?, a3=?.
  The `jalr` at 0x10036f0c calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x1, a3=-0x66, a4=0x1, a5=-0x46, a6=0x0, a7=-0x67.
  The `jal` at 0x10036f18 calls createChannelChanger__18ChannelFormClassUIGv [0x100290e0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100358f8 targets 0x10035930, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10035928 targets 0x10035938 and is always taken.
  The `beq` branch at 0x10035a98 targets 0x10035acc, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10035ac4 targets 0x10035ad4 and is always taken.
  The `beq` branch at 0x10035afc targets 0x10035b30, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10035b28 targets 0x10035b38 and is always taken.
  The `beq` branch at 0x10035b5c targets 0x10035b94, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10035b8c targets 0x10035b9c and is always taken.
  The `beq` branch at 0x100361dc targets 0x10036214, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1003620c targets 0x1003621c and is always taken.
  The `beq` branch at 0x10036240 targets 0x10036278, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10036270 targets 0x10036280 and is always taken.
  The `beq` branch at 0x100362a4 targets 0x100362dc, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100362d4 targets 0x100362e4 and is always taken.
  The `beq` branch at 0x10036308 targets 0x10036340, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10036338 targets 0x10036348 and is always taken.
  The `beq` branch at 0x1003636c targets 0x100363ac, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100363a4 targets 0x100363b4 and is always taken.
  The `beq` branch at 0x10036814 targets 0x10036854, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1003684c targets 0x1003685c and is always taken.
  The `beq` branch at 0x10036dec targets 0x10036e24, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10036e1c targets 0x10036e2c and is always taken.
  The return at 0x10036f2c has v0 = ret(createChannelChanger__18ChannelFormClassUIGv).

- `doDownloadaccumBufTypeButton__27FormatCombinationListsClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10036f50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10036f50-0x10037178 (552 bytes).
  It occupies 552 bytes.
  The `lw` at 0x10036f84 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10036f94, `lw` at 0x10037140, `lw` at 0x10037150.
  The `lw` at 0x10036fb8 loads 4 bytes from table(0x10051af8) +0x0.
  The `sw` at 0x10036fc4 stores 4 bytes to a0 (arg0 at entry) +0xac.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xac, including `lw` at 0x10036fe4, `lw` at 0x10037010.
  4 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10037018, `lw` at 0x10037074, `lw` at 0x10037088.
  The `lbu` at 0x1003701c loads 1 byte from [sym(xsetmonApp)] +0x84.
  The `lw` at 0x10037034 loads 4 bytes from ret(getTheQuestionDialog__Gv) +0x8.
  The `lw` at 0x10037044 loads 4 bytes from [ret(getTheQuestionDialog__Gv)+8] +0x110.
  The `lw` at 0x10037050 loads 4 bytes from [ret(getTheQuestionDialog__Gv)+8] +0x108.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x10037094, `lw` at 0x100370c0.
  The `lw` at 0x100370a8 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `lw` at 0x100370c8 loads 4 bytes from sym(requestErrCatched) +0x0.
  The `sw` at 0x10037104 stores 4 bytes to sym(requestErrCatched) +0x0.
  The `jalr` at 0x10036f80 calls XmListGetSelectedPos with a0=[a0+76], a1=sp-96, a2=sp-92, a3=a3 at entry (arg3).
  The `jalr` at 0x10036fc0 calls VkGetResource__GPCcT1 with a0=0x10044a88, a1=0x10044a88, a2=?, a3=?.
  The `jalr` at 0x10036fd0 calls strlen with a0=ret(VkGetResource__GPCcT1), a1=?, a2=?, a3=?.
  The `jalr` at 0x10036fe0 calls strlen with a0=[a0+172], a1=?, a2=?, a3=?.
  The `jalr` at 0x10036ff4 calls __nwa__GUi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003700c calls sprintf with a0=ret(__nwa__GUi), a1=?, a2=[a0+172], a3=?.
  The `jalr` at 0x1003702c calls getTheQuestionDialog__Gv with a0=?, a1=[[sym(xsetmonApp)]+132]:1, a2=?, a3=?.
  The `jalr` at 0x1003705c calls (unknown callee) with a0=([[ret(getTheQuestionDialog__Gv)+8]+264] + ret(getTheQuestionDialog__Gv)), a1=?, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x10037070 calls checkPriv__7xsetmonGv [0x10041490] with a0=[sym(xsetmonApp)], a1=?, a2=?, a3=?.
  The `jalr` at 0x100370a4 calls XSGIvcSetPlatformParameter with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=0x1, a4=sp-88, a5=0x20.
  The `jalr` at 0x100370bc calls XSync with a0=[[sym(xsetmonApp)]+312], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x100370d8 calls XtFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100370e4 calls __dla__GPv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003711c calls getTheWarningDialog__Gv with a0=?, a1=[sym(requestErrCatched)], a2=?, a3=?.
  The `jalr` at 0x10037134 calls VkGetResource__GPCcT1 with a0=0x100449f8, a1=0x100449f8, a2=?, a3=?.
  The `jalr` at 0x10037168 calls (unknown callee) with a0=?, a1=ret(VkGetResource__GPCcT1), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `beq` branch at 0x10036f8c targets 0x10037108, is taken when (v0(=ret(XmListGetSelectedPos)) & 0xff) == 0, and falls through when (v0(=ret(XmListGetSelectedPos)) & 0xff) != 0.
  The `beq` branch at 0x10037020 targets 0x100370d4, is taken when a1(=[[sym(xsetmonApp)]+132]:1) == 0, and falls through when a1(=[[sym(xsetmonApp)]+132]:1) != 0.
  The `beq` branch at 0x10037064 targets 0x100370d4, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x10037078 targets 0x100370d4, is taken when v0(=ret(checkPriv__7xsetmonGv)) == 0, and falls through when v0(=ret(checkPriv__7xsetmonGv)) != 0.
  The `beq` branch at 0x100370cc targets 0x1003711c, is taken when a1(=[sym(requestErrCatched)]) == 0, and falls through when a1(=[sym(requestErrCatched)]) != 0.
  The `beq` branch at 0x10037170 targets 0x100370d4 and is always taken.
  The return at 0x10037100 has v0 = ret(__dla__GPv).
  The return at 0x10037114 has v0 = ?.

- `postInfoMessage__13ErrorMessagerGP9strstream` in `usr/bin/X11/xsetmon` at 0x10037180 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037180-0x10037204 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0x100371b4 loads 4 bytes from ret(getTheInfoDialog__Gv) +0x8.
  The `lw` at 0x100371c4 loads 4 bytes from [ret(getTheInfoDialog__Gv)+8] +0x110.
  The `lw` at 0x100371d0 loads 4 bytes from [ret(getTheInfoDialog__Gv)+8] +0x108.
  The `jalr` at 0x100371a0 calls str__9strstreamGv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100371ac calls getTheInfoDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100371dc calls (unknown callee) with a0=([[ret(getTheInfoDialog__Gv)+8]+264] + ret(getTheInfoDialog__Gv)), a1=ret(str__9strstreamGv), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x100371e8 calls __dl__GPv with a0=ret(str__9strstreamGv), a1=?, a2=?, a3=?.
  The return at 0x100371fc has v0 = ret(__dl__GPv).

- `doDownloadFormatButton__29FormatCombinationListsClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10037210 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037210-0x10037218 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10037210 has v0 = ?.

- `afterRealizeHook__21ServerInfoFormClassUIGv` in `usr/bin/X11/xsetmon` at 0x10037220 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037220-0x100372c8 (168 bytes).
  It occupies 168 bytes.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1003723c, `lw` at 0x10037280.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x10037244, `lw` at 0x10037288.
  2 such `lw` accesses load 4 bytes from [[sym(xsetmonApp)]+312] +0x84, including `lw` at 0x10037254, `lw` at 0x10037294.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x10037278, `lw` at 0x100372b0.
  The `jalr` at 0x10037258 calls XSGIvcSelectInput with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x4, a3=a3 at entry (arg3).
  The `jalr` at 0x10037274 calls XtAddEventHandler with a0=[a0+16], a1=0x4, a2=0x0, a3=sym(doLockStatusChangedHandler__21ServerInfoFormClassUISGP10_WidgetRecPvP7_XEventPc), a4=a0 at entry (arg0).
  The `jalr` at 0x10037290 calls XSGIvcSelectInput with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x2, a3=?.
  The `jalr` at 0x100372ac calls XtAddEventHandler with a0=[a0+16], a1=0x2, a2=0x0, a3=sym(doInputSyncSourceNotifyHandler__21ServerInfoFormClassUISGP10_WidgetRecPvP7_XEventPc), a4=a0 at entry (arg0).
  The return at 0x100372c0 has v0 = ret(XtAddEventHandler).

- `__dt__29FormatCombinationListsClassUIGv` in `usr/bin/X11/xsetmon` at 0x100372d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100372d0-0x1003733c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x10037300 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10037308 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10037324 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100372f0 targets 0x1003732c, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10037318 targets 0x10037330, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10037334 has v0 = one of ret(__dt__11VkComponentGv), ?.

- `configureGain__16GainControlClassGiT1` in `usr/bin/X11/xsetmon` at 0x10037340 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037340-0x10037420 (224 bytes).
  It occupies 224 bytes.
  The `sw` at 0x1003734c stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `sw` at 0x10037360 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `lw` at 0x10037364 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x10037374 loads 4 bytes from [sym(xsetmonApp)] +0x138.
  The `lw` at 0x10037384 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `lw` at 0x100373bc loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x100373f4 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `jalr` at 0x10037388 calls XSGIvcQueryOutputGain with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=sp-32.
  The `jalr` at 0x100373b8 calls XtVaSetValues with a0=[a0+36], a1=-0x8, a2=?, a3=0x0.
  The `jalr` at 0x100373e0 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10044f20, a2=?, a3=?.
  The `jalr` at 0x100373f0 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=[a0+52], a2=?, a3=?.
  The `jalr` at 0x10037400 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x10051600, a2=?, a3=?.
  The `jalr` at 0x1003740c calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10037418 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10037390 targets 0x100373d4, is taken when v0(=ret(XSGIvcQueryOutputGain)) == 0, and falls through when v0(=ret(XSGIvcQueryOutputGain)) != 0.
  The return at 0x100373cc has v0 = ret(XtVaSetValues).

- `prepost__16AboutDialogClassGPCcPGP10_WidgetRecPvT2_vN22PvT1P14VkSimpleWindow` in `usr/bin/X11/xsetmon` at 0x10037420 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037420-0x10037454 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0x1003743c calls prepost__15VkDialogManagerGPCcPGP10_WidgetRecPvT2_vN22PvT1P14VkSimpleWindow with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1003744c has v0 = ret(prepost__15VkDialogManagerGPCcPGP10_WidgetRecPvT2_vN22PvT1P14VkSimpleWindow).

- `SG2applyChanges__21StatisticsFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10037460 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037460-0x10037574 (276 bytes).
  It occupies 276 bytes.
  3 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10037490, `lw` at 0x100374d8, `lw` at 0x10037500.
  The `lw` at 0x100374a0 loads 4 bytes from a1 (arg1 at entry) +0x14c.
  The `lw` at 0x100374bc loads 4 bytes from a1 (arg1 at entry) +0x15c.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x100374e4, `lw` at 0x10037508.
  The `lw` at 0x100374f8 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `lw` at 0x10037530 loads 4 bytes from ret(getTheWarningDialog__Gv) +0x8.
  The `lw` at 0x10037540 loads 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x110.
  The `lw` at 0x1003754c loads 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x108.
  The `jal` at 0x1003748c calls checkPriv__7xsetmonGv [0x10041490] with a0=[sym(xsetmonApp)], a1=a1 at entry (arg1), a2=0x2149c, a3=a3 at entry (arg3).
  The `jalr` at 0x1003749c calls XmToggleButtonGetState with a0=[a1+332], a1=?, a2=?, a3=?.
  The `jalr` at 0x100374b8 calls XmToggleButtonGetState with a0=[a1+348], a1=?, a2=?, a3=?.
  The `jalr` at 0x100374f4 calls XSGIvcSetPlatformParameter with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=0x0, a4=sp-32, a5=0x4.
  The `jalr` at 0x10037504 calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=?, a2=?, a3=?.
  The `jalr` at 0x10037510 calls getTheWarningDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10037528 calls VkGetResource__GPCcT1 with a0=0x10046eb8, a1=0x10046eb8, a2=?, a3=?.
  The `jalr` at 0x10037558 calls (unknown callee) with a0=([[ret(getTheWarningDialog__Gv)+8]+264] + ret(getTheWarningDialog__Gv)), a1=ret(VkGetResource__GPCcT1), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `beq` branch at 0x10037494 targets 0x10037560, is taken when v0(=ret(checkPriv__7xsetmonGv)) == 0, and falls through when v0(=ret(checkPriv__7xsetmonGv)) != 0.
  The `beq` branch at 0x100374a4 targets 0x100374b4, is taken when v0(=ret(XmToggleButtonGetState)) == 0, and falls through when v0(=ret(XmToggleButtonGetState)) != 0.
  The `beq` branch at 0x100374c0 targets 0x100374d8, is taken when v0(=ret(XmToggleButtonGetState)) == 0, and falls through when v0(=ret(XmToggleButtonGetState)) != 0.
  The return at 0x1003756c has v0 = one of ret(checkPriv__7xsetmonGv), ret(?).

- `doHorizontalPhaseCallback__18ChannelFormClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10037580 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037580-0x10037588 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10037580 has v0 = ?.

- `loadSettingsFileCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10037590 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037590-0x100375d4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10037594 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100375a0 loads 4 bytes from [a1+8] +0x198.
  The `lw` at 0x100375ac loads 4 bytes from [a1+8] +0x1a0.
  The `jalr` at 0x100375bc calls (unknown callee) with a0=([[a1+8]+408] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x2136c.
  The return at 0x100375cc has v0 = ret(?).

- `doLockStatusChangedHandler__21ServerInfoFormClassUISGP10_WidgetRecPvP7_XEventPc` in `usr/bin/X11/xsetmon` at 0x100375e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100375e0-0x10037624 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x100375e4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100375f0 loads 4 bytes from [a1+8] +0xd8.
  The `lw` at 0x100375fc loads 4 bytes from [a1+8] +0xe0.
  The `jalr` at 0x1003760c calls (unknown callee) with a0=([[a1+8]+216] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x2131c.
  The return at 0x1003761c has v0 = ret(?).

- `__ct__10GammaClassGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10037630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037630-0x10037678 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x10037668 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10037650 calls __ct__12GammaClassUIGPCcP10_WidgetRec [0x100274b0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10037670 has v0 = a0.

- `multRight__7MMatrixGRC7MMatrix` in `usr/bin/X11/xsetmon` at 0x10037680 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037680-0x10037908 (648 bytes).
  It occupies 648 bytes.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x1003770c, `lw` at 0x10037744, `lw` at 0x10037848.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10037710, `lw` at 0x1003774c, `lw` at 0x1003778c.
  The `lw` at 0x10037714 loads 4 bytes from [a1] +0x0.
  3 such `lw` accesses load 4 bytes from [a0] +0x4, including `lw` at 0x10037718, `lw` at 0x100377d8, `lw` at 0x10037834.
  3 such `lw` accesses load 4 bytes from [a1] +0x4, including `lw` at 0x10037750, `lw` at 0x1003784c, `lw` at 0x10037888.
  3 such `lw` accesses load 4 bytes from [a0] +0x0, including `lw` at 0x1003775c, `lw` at 0x10037794, `lw` at 0x10037860.
  The `lw` at 0x100377a4 loads 4 bytes from ?.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x100377d0, `swc1` at 0x1003782c.
  2 such `lwc1` accesses load 4 bytes from ret(0x1002d620) +0x0, including `lwc1` at 0x10037818, `lwc1` at 0x1003781c.
  The `lwc1` at 0x10037820 loads 4 bytes from ?.
  The `sw` at 0x100378d8 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x100376ac calls bIsIdentity__7MMatrixCGv [0x1002ac70] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100376d8 calls bIsIdentity__7MMatrixCGv [0x1002ac70] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100376ec calls __as__7MMatrixGRC7MMatrix [0x10033fc0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x1003772c calls __nw__GUi with a0=0x10, a1=?, a2=?, a3=?.
  The `jal` at 0x10037758 calls __ct__9MMdtArrayGiT1 [0x1002d5c0] with a0=ret(__nw__GUi), a1=[[a0]], a2=[[a1]+4], a3=?.
  The `jal` at 0x100377f8 calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10037810 calls (unnamed) [0x1002d620] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1003787c calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=?.
  The `jal` at 0x100378a0 calls __dt__9MMdtArrayGv [0x100340b0] with a0=[a0], a1=0x3, a2=?, a3=?.
  The `jalr` at 0x100378f8 calls __assert with a0=0x10049508, a1=0x100494a0, a2=0x7f, a3=?.
  The `beq` branch at 0x100376b4 targets 0x100376d8, is taken when v0(=ret(bIsIdentity__7MMatrixCGv)) == 0, and falls through when v0(=ret(bIsIdentity__7MMatrixCGv)) != 0.
  The `beq` branch at 0x100376e0 targets 0x1003770c, is taken when v0(=ret(bIsIdentity__7MMatrixCGv)) == 0, and falls through when v0(=ret(bIsIdentity__7MMatrixCGv)) != 0.
  The `bne` branch at 0x1003771c targets 0x100378e8, is taken when v0(=[[a1]]) != v1(=[[a0]+4]), and falls through when v0(=[[a1]]) == v1(=[[a0]+4]).
  The `beq` branch at 0x10037734 targets 0x10037774, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1003776c targets 0x1003777c and is always taken.
  The `blez` branch at 0x100377a0 targets 0x1003789c, is taken when a4(=[[a0]]) <= 0 (signed), and falls through when a4(=[[a0]]) > 0 (signed).
  The `beq` branch at 0x100377c0 targets 0x10037870 and is always taken.
  The `blez` branch at 0x100377dc targets 0x10037848, is taken when t8(=[[a0]+4]) <= 0 (signed), and falls through when t8(=[[a0]+4]) > 0 (signed).
  The `bne` branch at 0x10037840 targets 0x100377f0, is taken when s0(?) < t9(=[[a0]+4]) (signed), and falls through when s0(?) >= t9(=[[a0]+4]) (signed).
  The `bne` branch at 0x10037858 targets 0x100377d0, is taken when s5(?) < ra(=[[a1]+4]) (signed), and falls through when s5(?) >= ra(=[[a1]+4]) (signed).
  The `beq` branch at 0x1003786c targets 0x1003789c, is taken when s7(?) >= at(=[[a0]]) (signed), and falls through when s7(?) < at(=[[a0]]) (signed).
  The `bgtz` branch at 0x1003788c targets 0x100377d0, is taken when v0(=[[a1]+4]) > 0 (signed), and falls through when v0(=[[a1]+4]) <= 0 (signed).
  The `beq` branch at 0x10037894 targets 0x10037860 and is always taken.
  The `beq` branch at 0x10037900 targets 0x10037728 and is always taken.
  The return at 0x100376d0 has v0 = a0.
  The return at 0x10037704 has v0 = ret(__as__7MMatrixGRC7MMatrix).
  The return at 0x100378e0 has v0 = a0.
  The instructions from 0x100377c8 to 0x100377cc are not reached by any path from the entry, and their branches are not listed.

- `__dt__21ServerInfoFormClassUIGv` in `usr/bin/X11/xsetmon` at 0x10037910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037910-0x100379c4 (180 bytes).
  It occupies 180 bytes.
  The `sw` at 0x10037938 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x10037940 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0x1003794c loads 4 bytes from [a0+96] +0x8.
  The `lw` at 0x10037950 loads 4 bytes from [[a0+96]+8] +0x14.
  The `lw` at 0x10037954 loads 4 bytes from [[a0+96]+8] +0xc.
  The `lw` at 0x10037968 loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `lw` at 0x10037974 loads 4 bytes from [a0+100] +0x8.
  The `lw` at 0x10037978 loads 4 bytes from [[a0+100]+8] +0x14.
  The `lw` at 0x1003797c loads 4 bytes from [[a0+100]+8] +0xc.
  The `jalr` at 0x1003795c calls (unknown callee) with a0=([[[a0+96]+8]+12] + [a0+96]), a1=0x3, a2=a2 at entry (arg2), a3=[a0+96].
  The `jalr` at 0x10037984 calls (unknown callee) with a0=([[[a0+100]+8]+12] + [a0+100]), a1=0x3, a2=?, a3=[a0+100].
  The `jalr` at 0x10037994 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x100379ac calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10037928 targets 0x100379b4, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10037944 targets 0x10037968, is taken when a3(=[a0+96]) == 0, and falls through when a3(=[a0+96]) != 0.
  The `beq` branch at 0x1003796c targets 0x10037994, is taken when a3(=[a0+100]) == 0, and falls through when a3(=[a0+100]) != 0.
  The `beq` branch at 0x100379a4 targets 0x100379b4, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x100379bc has v0 = one of ?, ret(__dt__11VkComponentGv), ret(__dl__GPv).

- `__ct__17SyncSelectorFrameGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x100379d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100379d0-0x10037a18 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x10037a08 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x100379f0 calls __ct__19SyncSelectorFrameUIGPCcP10_WidgetRec [0x1003cbd0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10037a10 has v0 = a0.

- `doToggleExternalLockCallback__21ServerInfoFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10037a20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037a20-0x10037a64 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10037a24 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10037a30 loads 4 bytes from [a1+8] +0xcc.
  The `lw` at 0x10037a3c loads 4 bytes from [a1+8] +0xd4.
  The `jalr` at 0x10037a4c calls (unknown callee) with a0=([[a1+8]+204] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x20edc.
  The return at 0x10037a5c has v0 = ret(?).

- `doSetSCHPhase__16ChannelFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10037a70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037a70-0x10037ad0 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x10037a74 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10037a8c loads 4 bytes from a0 (arg0 at entry) +0xd8.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10037a90, `lw` at 0x10037ab4.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x10037a98, `lw` at 0x10037abc.
  The `lw` at 0x10037aa0 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `jalr` at 0x10037aa4 calls XSGIvcSetOutputPhaseSCH with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[a0+216], a3=[a2+8].
  The `jalr` at 0x10037ab8 calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=?, a2=?, a3=?.
  The return at 0x10037ac8 has v0 = ret(XFlush).

- `__ct__16ChannelFormClassGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10037ad0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037ad0-0x10037b38 (104 bytes).
  It occupies 104 bytes.
  The `sw` at 0x10037b00 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x10037b0c stores 4 bytes to a0 (arg0 at entry) +0x100.
  The `sw` at 0x10037b14 stores 4 bytes to a0 (arg0 at entry) +0x104.
  The `jal` at 0x10037af0 calls __ct__18ChannelFormClassUIGPCcP10_WidgetRec [0x1002cec0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10037b1c calls populateFormWithChannel__16ChannelFormClassGi [0x1002d050] with a0=a0 at entry (arg0), a1=0x0, a2=a0 at entry (arg0), a3=?.
  The return at 0x10037b30 has v0 = a0.

- `vSplineFit__19GammaMapEditorClassCGiT1PCfT3Pf` in `usr/bin/X11/xsetmon` at 0x10037b40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037b40-0x10037d70 (560 bytes).
  It occupies 560 bytes.
  2 such `swc1` accesses store 4 bytes to ret(__nwa__GUi) +0x0, including `swc1` at 0x10037bb8, `swc1` at 0x10037bc4.
  18 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x10037bf0, `lwc1` at 0x10037bf4, `lwc1` at 0x10037bf8.
  7 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x10037c30, `swc1` at 0x10037c68, `swc1` at 0x10037cb4.
  The `jalr` at 0x10037b88 calls __nwa__GUi with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10037b98 calls __nwa__GUi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10037d48 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?, a7=ret(__nwa__GUi)-4.
  The `jalr` at 0x10037d54 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `blez` branch at 0x10037bc0 targets 0x10037cb8, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `bne` branch at 0x10037cb0 targets 0x10037bf0, is taken when t0(?) != t2(?), and falls through when t0(?) == t2(?).
  The `bltz` branch at 0x10037d08 targets 0x10037d3c, is taken when a5(?) < 0 (signed), and falls through when a5(?) >= 0 (signed).
  The `bne` branch at 0x10037d34 targets 0x10037d10, is taken when a6(?) != a7(=ret(__nwa__GUi)-4), and falls through when a6(?) == a7(=ret(__nwa__GUi)-4).
  The return at 0x10037d68 has v0 = ret(__dla__GPv).

- `doLockStatusChanged__21ServerInfoFormClassUIGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x10037d70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037d70-0x10037d78 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10037d70 has v0 = ?.

- `doOptionVideoVoltage__21ServerInfoFormClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10037d80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037d80-0x10037d88 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10037d80 has v0 = ?.

- `topWidget__12MyTabbedDeckGv` in `usr/bin/X11/xsetmon` at 0x10037d90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037d90-0x10037d98 (8 bytes).
  It occupies 8 bytes.
  The `lw` at 0x10037d94 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The return at 0x10037d90 has v0 = [a0+40].

- `RegisterSetmonMasterFormClassInterface__21SetmonMasterFormClassSGv` in `usr/bin/X11/xsetmon` at 0x10037da0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037da0-0x10037db8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10037dac loads 4 bytes from abs 0x10050950.
  The return at 0x10037db0 has v0 = 0x1004e4e8.

- `fbConfigSelected__29FormatCombinationListsClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10037dc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037dc0-0x10037dc8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10037dc0 has v0 = ?.

- `fbDepthSelected__29FormatCombinationListsClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10037dd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037dd0-0x10037dd8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10037dd0 has v0 = ?.

- `__ct__23AboutXsetmonFormClassUIGPCc` in `usr/bin/X11/xsetmon` at 0x10037de0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037de0-0x10037e28 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x10037e18 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10037e00 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10037e20 has v0 = a0.

- `afterRealizeHook__7xsetmonGv` in `usr/bin/X11/xsetmon` at 0x10037e30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037e30-0x10037f1c (236 bytes).
  It occupies 236 bytes.
  The `lw` at 0x10037e48 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lbu` at 0x10037e4c loads 1 byte from [sym(xsetmonApp)] +0x94.
  The `sw` at 0x10037eb8 stores 4 bytes to a0 (arg0 at entry) +0x134.
  The `lw` at 0x10037edc loads 4 bytes from a0 (arg0 at entry) +0x134.
  The `lw` at 0x10037ee0 loads 4 bytes from [a0+308] +0x4.
  The `lw` at 0x10037ee4 loads 4 bytes from [[a0+308]+4] +0x44.
  The `lw` at 0x10037ee8 loads 4 bytes from [[a0+308]+4] +0x3c.
  The `jalr` at 0x10037e68 calls __nw__GUi with a0=0x10, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10037e8c calls __ct__22ScrollingErrorMessagerGPCc [0x1002bcf0] with a0=ret(__nw__GUi), a1=0x10043c18, a2=?, a3=?.
  The `jalr` at 0x10037eb4 calls __ct__9strstreamGv with a0=sp-184, a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10037ec8 calls __ls__7ostreamGPCc with a0=sp-104, a1=0x10043c30, a2=?, a3=?.
  The `jalr` at 0x10037ed4 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10037ef0 calls (unknown callee) with a0=([[[a0+308]+4]+60] + [a0+308]), a1=sp-184, a2=[a0+308], a3=?.
  The `jalr` at 0x10037f00 calls __dt__9strstreamGv with a0=sp-184, a1=0x2, a2=?, a3=?.
  The `beq` branch at 0x10037e58 targets 0x10037f08, is taken when at(=[[sym(xsetmonApp)]+148]:1) == 0, and falls through when at(=[[sym(xsetmonApp)]+148]:1) != 0.
  The `beq` branch at 0x10037e74 targets 0x10037ea4, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10037e9c targets 0x10037eac and is always taken.
  The return at 0x10037f14 has v0 = one of 0x20acc, ret(__dt__9strstreamGv).

- `RegisterGammaClassInterface__10GammaClassSGv` in `usr/bin/X11/xsetmon` at 0x10037f20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037f20-0x10037f38 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10037f2c loads 4 bytes from abs 0x10050950.
  The return at 0x10037f30 has v0 = 0x1004d950.

- `vListaccumBufTypes__27FormatCombinationListsClassGv` in `usr/bin/X11/xsetmon` at 0x10037f50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10037f50-0x10038124 (468 bytes).
  It occupies 468 bytes.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xe8, including `sw` at 0x10037f84, `sw` at 0x10038074.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10037f88, `lw` at 0x1003805c.
  The `lw` at 0x10037f94 loads 4 bytes from [sym(xsetmonApp)] +0x138.
  The `lw` at 0x10037fac loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `lw` at 0x10037fe0 loads 4 bytes from abs 0x10051af8.
  2 such `lw` accesses load 4 bytes from abs 0x10051afc, including `lw` at 0x10038010, `lw` at 0x10038030.
  The `lw` at 0x10038060 loads 4 bytes from [sym(xsetmonApp)] +0xf8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c, including `lw` at 0x10038064, `lw` at 0x1003809c, `lw` at 0x100380d0.
  The `lw` at 0x10038084 loads 4 bytes from table(0x10051af4) +0x0.
  The `sw` at 0x10038090 stores 4 bytes to a0 (arg0 at entry) +0xac.
  The `lw` at 0x100380e0 loads 4 bytes from a0 (arg0 at entry) +0xe8.
  The `jalr` at 0x10037f74 calls __ct__10VkNameListGv with a0=sp-64, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10037fa8 calls XSGIvcQueryPlatformParameter with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=0x1, a4=[sym(xsetmonApp)]+244, a5=0x20.
  The `jalr` at 0x10037fb8 calls strlen with a0=[0x10051af8], a1=?, a2=?, a3=?.
  The `jalr` at 0x10037fc8 calls __nwa__GUi with a0=ret(strlen)+10, a1=?, a2=?, a3=?.
  The `jalr` at 0x10037fe4 calls sprintf with a0=ret(__nwa__GUi), a1=0x10044ac0, a2=[0x10051af8], a3=?.
  The `jalr` at 0x10037ff4 calls add__10VkNameListGPc with a0=sp-64, a1=ret(__nwa__GUi), a2=?, a3=?.
  The `jalr` at 0x10038000 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003800c calls strlen with a0=[0x10051afc], a1=?, a2=?, a3=?.
  The `jalr` at 0x10038018 calls __nwa__GUi with a0=ret(strlen)+10, a1=?, a2=?, a3=?.
  The `jalr` at 0x10038034 calls sprintf with a0=ret(__nwa__GUi), a1=0x10044ac0, a2=[0x10051afc], a3=?.
  The `jalr` at 0x10038044 calls add__10VkNameListGPc with a0=sp-64, a1=ret(__nwa__GUi), a2=?, a3=?.
  The `jalr` at 0x10038050 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003808c calls XtVaGetValues with a0=[a0+76], a1=-0x84, a2=sp-48, a3=0x0, a4=entry(0x10051af4), a5=[[sym(xsetmonApp)]+248]+1.
  The `jalr` at 0x10038098 calls XmListDeleteAllItems with a0=[a0+76], a1=?, a2=?, a3=?.
  The `jalr` at 0x100380a4 calls freeXmStringTable__10VkNameListSGPPUc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100380b0 calls getXmStringTable__10VkNameListCGv with a0=sp-64, a1=?, a2=?, a3=?.
  The `jalr` at 0x100380cc calls XmListAddItems with a0=[a0+76], a1=ret(getXmStringTable__10VkNameListCGv), a2=?, a3=0x1.
  The `jalr` at 0x100380d8 calls freeXmStringTable__10VkNameListSGPPUc with a0=ret(getXmStringTable__10VkNameListCGv), a1=?, a2=?, a3=?.
  The `jalr` at 0x100380f0 calls XmListSelectPos with a0=[a0+76], a1=[a0+232], a2=0x0, a3=?.
  The `jalr` at 0x1003810c calls __dt__10VkNameListGv with a0=sp-64, a1=0x2, a2=?, a3=?.
  The `blez` branch at 0x100380e4 targets 0x100380f8, is taken when a1(=[a0+232]) <= 0 (signed), and falls through when a1(=[a0+232]) > 0 (signed).
  The return at 0x1003811c has v0 = ret(__dt__10VkNameListGv).

- `doOptionNotBlanked__16ChannelFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10038130 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10038130-0x10038190 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x10038148 loads 4 bytes from a0 (arg0 at entry) +0xd8.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1003814c, `lw` at 0x10038174.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x10038154, `lw` at 0x1003817c.
  The `lw` at 0x10038160 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `jalr` at 0x10038164 calls XSGIvcSetOutputBlanking with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[a0+216], a3=0x0.
  The `jalr` at 0x10038178 calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=?, a2=?, a3=?.
  The return at 0x10038188 has v0 = ret(XFlush).

- `__dt__18TargetPromptDialogGv` in `usr/bin/X11/xsetmon` at 0x10038190 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10038190-0x100381fc (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x100381c0 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x100381c8 calls __dt__15VkGenericDialogGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x100381e4 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100381b0 targets 0x100381ec, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x100381d8 targets 0x100381f0, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x100381f4 has v0 = one of ret(__dt__15VkGenericDialogGv), ?.

- `__dt__18ChannelFormClassUIGv` in `usr/bin/X11/xsetmon` at 0x10038200 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10038200-0x10038438 (568 bytes).
  It occupies 568 bytes.
  The `sw` at 0x10038228 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x10038230 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x1003823c loads 4 bytes from [a0+64] +0x8.
  The `lw` at 0x10038240 loads 4 bytes from [[a0+64]+8] +0x14.
  The `lw` at 0x10038244 loads 4 bytes from [[a0+64]+8] +0xc.
  The `lw` at 0x10038258 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0x10038264 loads 4 bytes from [a0+32] +0x8.
  The `lw` at 0x10038268 loads 4 bytes from [[a0+32]+8] +0x14.
  The `lw` at 0x1003826c loads 4 bytes from [[a0+32]+8] +0xc.
  The `lw` at 0x10038280 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x1003828c loads 4 bytes from [a0+44] +0x8.
  The `lw` at 0x10038290 loads 4 bytes from [[a0+44]+8] +0x14.
  The `lw` at 0x10038294 loads 4 bytes from [[a0+44]+8] +0xc.
  The `lw` at 0x100382a8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x100382b4 loads 4 bytes from [a0+40] +0x8.
  The `lw` at 0x100382b8 loads 4 bytes from [[a0+40]+8] +0x14.
  The `lw` at 0x100382bc loads 4 bytes from [[a0+40]+8] +0xc.
  The `lw` at 0x100382d0 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lw` at 0x100382dc loads 4 bytes from [a0+60] +0x8.
  The `lw` at 0x100382e0 loads 4 bytes from [[a0+60]+8] +0x14.
  The `lw` at 0x100382e4 loads 4 bytes from [[a0+60]+8] +0xc.
  The `lw` at 0x100382f8 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x10038304 loads 4 bytes from [a0+56] +0x8.
  The `lw` at 0x10038308 loads 4 bytes from [[a0+56]+8] +0x14.
  The `lw` at 0x1003830c loads 4 bytes from [[a0+56]+8] +0xc.
  The `lw` at 0x10038320 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lw` at 0x1003832c loads 4 bytes from [a0+52] +0x8.
  The `lw` at 0x10038330 loads 4 bytes from [[a0+52]+8] +0x14.
  The `lw` at 0x10038334 loads 4 bytes from [[a0+52]+8] +0xc.
  The `lw` at 0x10038348 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x10038354 loads 4 bytes from [a0+48] +0x8.
  The `lw` at 0x10038358 loads 4 bytes from [[a0+48]+8] +0x14.
  The `lw` at 0x1003835c loads 4 bytes from [[a0+48]+8] +0xc.
  The `lw` at 0x10038370 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x1003837c loads 4 bytes from [a0+36] +0x8.
  The `lw` at 0x10038380 loads 4 bytes from [[a0+36]+8] +0x14.
  The `lw` at 0x10038384 loads 4 bytes from [[a0+36]+8] +0xc.
  The `lw` at 0x10038398 loads 4 bytes from a0 (arg0 at entry) +0xc0.
  The `lw` at 0x100383a4 loads 4 bytes from [a0+192] +0x8.
  The `lw` at 0x100383a8 loads 4 bytes from [[a0+192]+8] +0x14.
  The `lw` at 0x100383ac loads 4 bytes from [[a0+192]+8] +0xc.
  The `lw` at 0x100383c0 loads 4 bytes from a0 (arg0 at entry) +0xc4.
  The `lw` at 0x100383cc loads 4 bytes from [a0+196] +0x8.
  The `lw` at 0x100383d0 loads 4 bytes from [[a0+196]+8] +0x14.
  The `lw` at 0x100383d4 loads 4 bytes from [[a0+196]+8] +0xc.
  The `lw` at 0x100383e8 loads 4 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0x1003824c calls (unknown callee) with a0=([[[a0+64]+8]+12] + [a0+64]), a1=0x3, a2=a2 at entry (arg2), a3=[a0+64].
  The `jalr` at 0x10038274 calls (unknown callee) with a0=([[[a0+32]+8]+12] + [a0+32]), a1=0x3, a2=?, a3=[a0+32].
  The `jalr` at 0x1003829c calls (unknown callee) with a0=([[[a0+44]+8]+12] + [a0+44]), a1=0x3, a2=?, a3=[a0+44].
  The `jalr` at 0x100382c4 calls (unknown callee) with a0=([[[a0+40]+8]+12] + [a0+40]), a1=0x3, a2=?, a3=[a0+40].
  The `jalr` at 0x100382ec calls (unknown callee) with a0=([[[a0+60]+8]+12] + [a0+60]), a1=0x3, a2=?, a3=[a0+60].
  The `jalr` at 0x10038314 calls (unknown callee) with a0=([[[a0+56]+8]+12] + [a0+56]), a1=0x3, a2=?, a3=[a0+56].
  The `jalr` at 0x1003833c calls (unknown callee) with a0=([[[a0+52]+8]+12] + [a0+52]), a1=0x3, a2=?, a3=[a0+52].
  The `jalr` at 0x10038364 calls (unknown callee) with a0=([[[a0+48]+8]+12] + [a0+48]), a1=0x3, a2=?, a3=[a0+48].
  The `jalr` at 0x1003838c calls (unknown callee) with a0=([[[a0+36]+8]+12] + [a0+36]), a1=0x3, a2=?, a3=[a0+36].
  The `jalr` at 0x100383b4 calls (unknown callee) with a0=([[[a0+192]+8]+12] + [a0+192]), a1=0x3, a2=?, a3=[a0+192].
  The `jalr` at 0x100383dc calls (unknown callee) with a0=([[[a0+196]+8]+12] + [a0+196]), a1=0x3, a2=?, a3=[a0+196].
  The `jalr` at 0x100383f8 calls __dla__GPv with a0=[a0+208], a1=?, a2=?, a3=[a0+208].
  The `jalr` at 0x10038408 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10038420 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10038218 targets 0x10038428, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10038234 targets 0x10038258, is taken when a3(=[a0+64]) == 0, and falls through when a3(=[a0+64]) != 0.
  The `beq` branch at 0x1003825c targets 0x10038280, is taken when a3(=[a0+32]) == 0, and falls through when a3(=[a0+32]) != 0.
  The `beq` branch at 0x10038284 targets 0x100382a8, is taken when a3(=[a0+44]) == 0, and falls through when a3(=[a0+44]) != 0.
  The `beq` branch at 0x100382ac targets 0x100382d0, is taken when a3(=[a0+40]) == 0, and falls through when a3(=[a0+40]) != 0.
  The `beq` branch at 0x100382d4 targets 0x100382f8, is taken when a3(=[a0+60]) == 0, and falls through when a3(=[a0+60]) != 0.
  The `beq` branch at 0x100382fc targets 0x10038320, is taken when a3(=[a0+56]) == 0, and falls through when a3(=[a0+56]) != 0.
  The `beq` branch at 0x10038324 targets 0x10038348, is taken when a3(=[a0+52]) == 0, and falls through when a3(=[a0+52]) != 0.
  The `beq` branch at 0x1003834c targets 0x10038370, is taken when a3(=[a0+48]) == 0, and falls through when a3(=[a0+48]) != 0.
  The `beq` branch at 0x10038374 targets 0x10038398, is taken when a3(=[a0+36]) == 0, and falls through when a3(=[a0+36]) != 0.
  The `beq` branch at 0x1003839c targets 0x100383c0, is taken when a3(=[a0+192]) == 0, and falls through when a3(=[a0+192]) != 0.
  The `beq` branch at 0x100383c4 targets 0x100383e8, is taken when a3(=[a0+196]) == 0, and falls through when a3(=[a0+196]) != 0.
  The `beq` branch at 0x100383ec targets 0x10038408, is taken when a3(=[a0+208]) == 0, and falls through when a3(=[a0+208]) != 0.
  The `beq` branch at 0x10038418 targets 0x10038428, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10038430 has v0 = one of ?, ret(__dt__11VkComponentGv), ret(__dl__GPv).

- `DeleteCombination__28CombinationContentsListClassGv` in `usr/bin/X11/xsetmon` at 0x10038440 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10038440-0x100384b0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x10038444 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x10038478 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `sw` at 0x10038480 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `lw` at 0x10038488 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x10038494 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `sw` at 0x100384a0 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `jalr` at 0x1003846c calls XFree with a0=[a0+48], a1=a1 at entry (arg1), a2=[a0+48], a3=a3 at entry (arg3).
  The `jalr` at 0x1003847c calls __dla__GPv with a0=[a0+52], a1=?, a2=?, a3=?.
  The `jalr` at 0x10038490 calls XmListDeleteItemsPos with a0=[a0+40], a1=[a0+56], a2=0x1, a3=?.
  The `beq` branch at 0x10038460 targets 0x10038484, is taken when a2(=[a0+48]) == 0, and falls through when a2(=[a0+48]) != 0.
  The return at 0x100384a8 has v0 = ret(XmListDeleteItemsPos).

- `loadData__27FormatCombinationListsClassGP8__file_s` in `usr/bin/X11/xsetmon` at 0x100384b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100384b0-0x100389e4 (1332 bytes).
  It occupies 1332 bytes.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1003851c, `lw` at 0x100385d4.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x10038524, `sb` at 0x1003863c.
  The `lbu` at 0x10038528 loads 1 byte from [sym(xsetmonApp)] +0xc8.
  The `lw` at 0x1003854c loads 4 bytes from abs 0x1004cf60.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1003856c, `lw` at 0x1003858c, `lw` at 0x100385ac.
  The `lw` at 0x100385dc loads 4 bytes from [sym(xsetmonApp)] +0x98.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb0, including `lw` at 0x1003864c, `lw` at 0x1003867c, `lw` at 0x100388a4.
  The `lw` at 0x10038660 loads 4 bytes from a0 (arg0 at entry) +0xb4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb8, including `lw` at 0x10038694, `lw` at 0x100386cc.
  The `lw` at 0x100386b0 loads 4 bytes from a0 (arg0 at entry) +0xbc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc4, including `lw` at 0x10038710, `lw` at 0x1003873c, `lw` at 0x10038944.
  The `lw` at 0x10038724 loads 4 bytes from a0 (arg0 at entry) +0xc0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xcc, including `lw` at 0x10038754, `lw` at 0x10038784.
  The `lw` at 0x1003876c loads 4 bytes from a0 (arg0 at entry) +0xc8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x100387b0, `lw` at 0x100387f0, `lw` at 0x10038830.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x100387c0, `lw` at 0x10038800, `lw` at 0x10038840.
  4 such `lw` accesses load 4 bytes from [a0+8] +0xbc, including `lw` at 0x100387c4, `lw` at 0x10038804, `lw` at 0x10038844.
  4 such `lw` accesses load 4 bytes from [a0+8] +0xb4, including `lw` at 0x100387c8, `lw` at 0x10038808, `lw` at 0x10038848.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x100388b0, `lw` at 0x10038904.
  2 such `lw` accesses load 4 bytes from [a0+8] +0xb0, including `lw` at 0x100388cc, `lw` at 0x10038918.
  2 such `lw` accesses load 4 bytes from [a0+8] +0xa8, including `lw` at 0x100388d0, `lw` at 0x1003891c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x10038950, `lw` at 0x100389a4.
  2 such `lw` accesses load 4 bytes from [a0+8] +0xe0, including `lw` at 0x1003896c, `lw` at 0x100389b8.
  2 such `lw` accesses load 4 bytes from [a0+8] +0xd8, including `lw` at 0x10038970, `lw` at 0x100389bc.
  The `jalr` at 0x100384e8 calls fread with a0=sp-112, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10038508 calls fread with a0=sp-104, a1=?, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10038548 calls strcmp with a0=sp-104, a1=[0x1004cf60], a2=?, a3=?.
  The `jalr` at 0x10038568 calls strcmp with a0=sp-104, a1=?, a2=?, a3=?.
  The `jalr` at 0x10038588 calls strcmp with a0=sp-104, a1=?, a2=?, a3=?.
  The `jalr` at 0x100385a8 calls strcmp with a0=sp-104, a1=?, a2=?, a3=?.
  The `jalr` at 0x100385cc calls fread with a0=sp-64, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x100385fc calls fread with a0=sp-112, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10038610 calls __nwa__GUi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003862c calls fread with a0=ret(__nwa__GUi), a1=?, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x1003866c calls strcmp with a0=?, a1=ret(__nwa__GUi), a2=?, a3=?.
  The `jalr` at 0x100386bc calls strcmp with a0=?, a1=ret(__nwa__GUi), a2=?, a3=?.
  The `jalr` at 0x100386e8 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003872c calls strcmp with a0=?, a1=ret(__nwa__GUi), a2=?, a3=?.
  The `jalr` at 0x10038774 calls strcmp with a0=?, a1=ret(__nwa__GUi), a2=?, a3=?.
  The `jalr` at 0x100387ac calls XmListSelectPos with a0=[a0+68], a1=0x1, a2=0x1, a3=?.
  The `jalr` at 0x100387b8 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x100387d4 calls (unknown callee) with a0=([[a0+8]+180] + a0), a1=ret(baseWidget__11VkComponentCGv), a2=0x0, a3=?.
  The `jalr` at 0x100387ec calls XmListSelectPos with a0=[a0+68], a1=0x2, a2=0x1, a3=?.
  The `jalr` at 0x100387f8 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10038814 calls (unknown callee) with a0=([[a0+8]+180] + a0), a1=ret(baseWidget__11VkComponentCGv), a2=0x0, a3=?.
  The `jalr` at 0x1003882c calls XmListSelectPos with a0=[a0+68], a1=0x3, a2=0x1, a3=?.
  The `jalr` at 0x10038838 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10038854 calls (unknown callee) with a0=([[a0+8]+180] + a0), a1=ret(baseWidget__11VkComponentCGv), a2=0x0, a3=?.
  The `jalr` at 0x1003886c calls XmListSelectPos with a0=[a0+68], a1=0x4, a2=0x1, a3=?.
  The `jalr` at 0x10038878 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10038894 calls (unknown callee) with a0=([[a0+8]+180] + a0), a1=ret(baseWidget__11VkComponentCGv), a2=0x0, a3=?.
  The `jalr` at 0x100388b4 calls XmListSelectPos with a0=[a0+32], a1=?, a2=0x1, a3=?.
  The `jalr` at 0x100388c0 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x100388dc calls (unknown callee) with a0=([[a0+8]+168] + a0), a1=ret(baseWidget__11VkComponentCGv), a2=0x0, a3=?.
  The `jalr` at 0x100388e8 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x10038900 calls XmListSelectPos with a0=[a0+32], a1=?, a2=0x1, a3=?.
  The `jalr` at 0x1003890c calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10038928 calls (unknown callee) with a0=([[a0+8]+168] + a0), a1=ret(baseWidget__11VkComponentCGv), a2=0x0, a3=?.
  The `jalr` at 0x10038934 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x10038954 calls XmListSelectPos with a0=[a0+64], a1=?, a2=0x1, a3=?.
  The `jalr` at 0x10038960 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003897c calls (unknown callee) with a0=([[a0+8]+216] + a0), a1=ret(baseWidget__11VkComponentCGv), a2=0x0, a3=?.
  The `jalr` at 0x10038988 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x100389a0 calls XmListSelectPos with a0=[a0+64], a1=?, a2=0x1, a3=?.
  The `jalr` at 0x100389ac calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x100389c8 calls (unknown callee) with a0=([[a0+8]+216] + a0), a1=ret(baseWidget__11VkComponentCGv), a2=0x0, a3=?.
  The `jalr` at 0x100389d4 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `blez` branch at 0x100384f4 targets 0x100385b8, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `beq` branch at 0x1003852c targets 0x100385b8, is taken when v0(=[[sym(xsetmonApp)]+200]:1) == 0, and falls through when v0(=[[sym(xsetmonApp)]+200]:1) != 0.
  The `beq` branch at 0x10038550 targets 0x100387a4, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x10038570 targets 0x100387e4, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x10038590 targets 0x10038824, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x100385b0 targets 0x10038864, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x100385e4 targets 0x100386f8, is taken when a2(?) >= a3(=[[sym(xsetmonApp)]+152]) (signed), and falls through when a2(?) < a3(=[[sym(xsetmonApp)]+152]) (signed).
  The `beq` branch at 0x10038644 targets 0x10038710, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `blez` branch at 0x10038650 targets 0x10038694, is taken when a3(=[a0+176]) <= 0 (signed), and falls through when a3(=[a0+176]) > 0 (signed).
  The `beq` branch at 0x10038674 targets 0x100388f8, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x1003868c targets 0x10038660, is taken when s2(?) < a1(=[a0+176]) (signed), and falls through when s2(?) >= a1(=[a0+176]) (signed).
  The `blez` branch at 0x10038698 targets 0x100386e8, is taken when a2(=[a0+184]) <= 0 (signed), and falls through when a2(=[a0+184]) > 0 (signed).
  The `beq` branch at 0x100386c4 targets 0x100388a4, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x100386dc targets 0x100386b0, is taken when s2(?) < a1(=[a0+184]) (signed), and falls through when s2(?) >= a1(=[a0+184]) (signed).
  The `blez` branch at 0x10038714 targets 0x10038754, is taken when a2(=[a0+196]) <= 0 (signed), and falls through when a2(=[a0+196]) > 0 (signed).
  The `beq` branch at 0x10038734 targets 0x10038998, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x1003874c targets 0x10038724, is taken when s2(?) < a1(=[a0+196]) (signed), and falls through when s2(?) >= a1(=[a0+196]) (signed).
  The `blez` branch at 0x10038758 targets 0x100386e8, is taken when a2(=[a0+204]) <= 0 (signed), and falls through when a2(=[a0+204]) > 0 (signed).
  The `beq` branch at 0x1003877c targets 0x10038944, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x10038794 targets 0x1003876c, is taken when s2(?) < a1(=[a0+204]) (signed), and falls through when s2(?) >= a1(=[a0+204]) (signed).
  The `beq` branch at 0x1003879c targets 0x100386e8 and is always taken.
  The `beq` branch at 0x100387dc targets 0x1003855c and is always taken.
  The `beq` branch at 0x1003881c targets 0x1003857c and is always taken.
  The `beq` branch at 0x1003885c targets 0x1003859c and is always taken.
  The `beq` branch at 0x1003889c targets 0x100385b8 and is always taken.
  The `beq` branch at 0x100388f0 targets 0x100386f4 and is always taken.
  The `beq` branch at 0x1003893c targets 0x100386f4 and is always taken.
  The `beq` branch at 0x10038990 targets 0x100386f4 and is always taken.
  The `beq` branch at 0x100389dc targets 0x100386f4 and is always taken.
  The return at 0x10038708 has v0 = one of ret(fread), ret(__dla__GPv).

- `DisplayfbDepth__21SetmonMasterFormClassGi` in `usr/bin/X11/xsetmon` at 0x100389f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100389f0-0x10038a24 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x10038a10 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x10038a0c calls DisplayfbDepth__19StatisticsFormClassGi [0x1003cfb0] with a0=[a0+40], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10038a1c has v0 = ret(DisplayfbDepth__19StatisticsFormClassGi).

- `__ml__GRC7MMatrixT1` in `usr/bin/X11/xsetmon` at 0x10038a30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10038a30-0x10038a84 (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0x10038a58 calls __ct__7MMatrixGRC7MMatrix [0x10026f50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10038a68 calls multRight__7MMatrixGRC7MMatrix [0x10037680] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The return at 0x10038a7c has v0 = ret(multRight__7MMatrixGRC7MMatrix).

- `setSyncOptionMenus__19ServerInfoFormClassGv` in `usr/bin/X11/xsetmon` at 0x10038a90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10038a90-0x10038b44 (180 bytes).
  It occupies 180 bytes.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10038aa8, `lw` at 0x10038ae0.
  The `lw` at 0x10038aac loads 4 bytes from [sym(xsetmonApp)] +0x118.
  The `lw` at 0x10038ad8 loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `lw` at 0x10038ae4 loads 4 bytes from [sym(xsetmonApp)] +0x11c.
  The `lw` at 0x10038b04 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0x10038b1c loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0x10038b2c loads 4 bytes from a0 (arg0 at entry) +0x6c.
  The `lw` at 0x10038b30 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0x10038b40 loads 4 bytes from a0 (arg0 at entry) +0x68.
  The `jalr` at 0x10038ad4 calls set__12VkOptionMenuGP10VkMenuItem with a0=[a0+100], a1=?, a2=0x1fe6c, a3=sym(xsetmonApp).
  The `jalr` at 0x10038b00 calls set__12VkOptionMenuGP10VkMenuItem with a0=[a0+96], a1=?, a2=-0x2, a3=?, a5=-0x1.
  The `beq` branch at 0x10038ab8 targets 0x10038b1c, is taken when a1(=[[sym(xsetmonApp)]+280]) == at(=0x1), and falls through when a1(=[[sym(xsetmonApp)]+280]) != at(=0x1).
  The `beq` branch at 0x10038ac4 targets 0x10038b30, is taken when a1(=[[sym(xsetmonApp)]+280]) == a4(=0x2), and falls through when a1(=[[sym(xsetmonApp)]+280]) != a4(=0x2).
  The `beq` branch at 0x10038aec targets 0x10038b28, is taken when a1(=[[sym(xsetmonApp)]+284]) == a5(=-0x1), and falls through when a1(=[[sym(xsetmonApp)]+284]) != a5(=-0x1).
  The `beq` branch at 0x10038af4 targets 0x10038b3c, is taken when a1(=[[sym(xsetmonApp)]+284]) == a2(=-0x2), and falls through when a1(=[[sym(xsetmonApp)]+284]) != a2(=-0x2).
  The `beq` branch at 0x10038b20 targets 0x10038ad0 and is always taken.
  The `beq` branch at 0x10038b28 targets 0x10038afc and is always taken.
  The `beq` branch at 0x10038b34 targets 0x10038ad0 and is always taken.
  The `beq` branch at 0x10038b3c targets 0x10038afc and is always taken.
  The return at 0x10038b14 has v0 = ret(set__12VkOptionMenuGP10VkMenuItem).

- `getOpMenuIndex__12GammaClassUIGv` in `usr/bin/X11/xsetmon` at 0x10038b50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10038b50-0x10038b84 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x10038b70 loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `jalr` at 0x10038b6c calls getIndex__12VkOptionMenuGv with a0=[a0+100], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10038b7c has v0 = ret(getIndex__12VkOptionMenuGv).

- `doOptionVideoVoltage__19ServerInfoFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10038b90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10038b90-0x10038bf8 (104 bytes).
  It occupies 104 bytes.
  3 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10038ba8, `lw` at 0x10038bb8, `lw` at 0x10038bdc.
  The `sw` at 0x10038bb4 stores 4 bytes to [sym(xsetmonApp)] +0x118.
  The `lw` at 0x10038bc0 loads 4 bytes from [sym(xsetmonApp)] +0x11c.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x10038bc4, `lw` at 0x10038be4.
  The `lw` at 0x10038bc8 loads 4 bytes from [sym(xsetmonApp)] +0x118.
  The `lw` at 0x10038bd0 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `jalr` at 0x10038bcc calls XSGIvcSetScreenInputSyncSource with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[[sym(xsetmonApp)]+280], a3=[[sym(xsetmonApp)]+284], a4=[sym(xsetmonApp)], a5=0x1fd6c.
  The `jalr` at 0x10038be0 calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=?, a2=?, a3=?.
  The return at 0x10038bf0 has v0 = ret(XFlush).

- `doOptionMapCallback__12GammaClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10038c00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10038c00-0x10038c40 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10038c00 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lw` at 0x10038c0c loads 4 bytes from [a1+20] +0x8.
  The `lw` at 0x10038c1c loads 4 bytes from [[a1+20]+8] +0xa4.
  The `lw` at 0x10038c20 loads 4 bytes from [[a1+20]+8] +0x9c.
  The `jalr` at 0x10038c28 calls (unknown callee) with a0=([[[a1+20]+8]+156] + [a1+20]), a1=a1 at entry (arg1), a2=[a1+20], a3=0x1fcfc.
  The return at 0x10038c38 has v0 = ret(?).

- `RegisterSyncSelectorFrameInterface__17SyncSelectorFrameSGv` in `usr/bin/X11/xsetmon` at 0x10038c40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10038c40-0x10038c58 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10038c4c loads 4 bytes from abs 0x10050950.
  The return at 0x10038c50 has v0 = 0x1004ec70.

- `setTitle__7xsetmonGv` in `usr/bin/X11/xsetmon` at 0x10038c60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10038c60-0x10038d30 (208 bytes).
  It occupies 208 bytes.
  3 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10038cac, `lw` at 0x10038cd4, `lw` at 0x10038cfc.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x80, including `lw` at 0x10038cb8, `lw` at 0x10038ce8.
  The `jalr` at 0x10038c88 calls VkGetResource__GPCcT1 with a0=0x10043df0, a1=0x10043df0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10038c9c calls strlen with a0=ret(VkGetResource__GPCcT1), a1=?, a2=?, a3=?.
  The `jalr` at 0x10038cb4 calls strlen with a0=[[sym(xsetmonApp)]+128], a1=?, a2=?, a3=?.
  The `jalr` at 0x10038cc4 calls __nwa__GUi with a0=(ret(strlen) + ret(strlen))+10, a1=?, a2=?, a3=?.
  The `jalr` at 0x10038ce4 calls sprintf with a0=ret(__nwa__GUi), a1=ret(VkGetResource__GPCcT1), a2=[[sym(xsetmonApp)]+128], a3=?.
  The `jalr` at 0x10038cf8 calls mainWindow__5VkAppCGv with a0=[sym(xsetmonApp)], a1=?, a2=?, a3=?.
  The `jalr` at 0x10038d08 calls setTitle__14VkSimpleWindowGPCc with a0=ret(mainWindow__5VkAppCGv), a1=ret(__nwa__GUi), a2=?, a3=?.
  The `jalr` at 0x10038d14 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The return at 0x10038d28 has v0 = ret(__dla__GPv).

- `accumBufTypeSelected__27FormatCombinationListsClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10038d30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10038d30-0x10038d7c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x10038d48 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x10038d4c loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lw` at 0x10038d50 loads 4 bytes from [sym(xsetmonApp)] +0x130.
  The `lw` at 0x10038d58 loads 4 bytes from [[sym(xsetmonApp)]+304] +0x44.
  The `lw` at 0x10038d68 loads 4 bytes from [[[sym(xsetmonApp)]+304]+68] +0x2c.
  The `jal` at 0x10038d64 calls DisplayaccumBufType__21SetmonMasterFormClassGi [0x10032980] with a0=[[[[sym(xsetmonApp)]+304]+68]+44], a1=[a2+16]-1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10038d74 has v0 = ret(DisplayaccumBufType__21SetmonMasterFormClassGi).

- `doFinishScalarDragCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi` in `usr/bin/X11/xsetmon` at 0x10038d80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10038d80-0x10038df0 (112 bytes).
  It occupies 112 bytes.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10038dc0, `lw` at 0x10038dc4, `lw` at 0x10038dc8.
  The `jalr` at 0x10038db4 calls XtVaGetValues with a0=a0 at entry (arg0), a1=-0xa, a2=sp-48, a3=0x0.
  The `jalr` at 0x10038dd4 calls (unknown callee) with a0=?, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The return at 0x10038de8 has v0 = ret(?).

- `doResetEditingCallback__18XSetmonWindowClassSGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10038df0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10038df0-0x10038e34 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10038df4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10038e00 loads 4 bytes from [a1+8] +0x18c.
  The `lw` at 0x10038e0c loads 4 bytes from [a1+8] +0x194.
  The `jalr` at 0x10038e1c calls (unknown callee) with a0=([[a1+8]+396] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1fb0c.
  The return at 0x10038e2c has v0 = ret(?).

- `vListFormats__27FormatCombinationListsClassGv` in `usr/bin/X11/xsetmon` at 0x10038e50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10038e50-0x10039384 (1332 bytes).
  It occupies 1332 bytes.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xd8, including `sw` at 0x10038e88, `sw` at 0x10039094, `sw` at 0x100391c0.
  4 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10038e8c, `lw` at 0x10038ea8, `lw` at 0x10038eec.
  4 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x10038e94, `lw` at 0x10038ebc, `lw` at 0x10038f2c.
  4 such `lw` accesses load 4 bytes from [[sym(xsetmonApp)]+312] +0x84, including `lw` at 0x10038ea4, `lw` at 0x10038ed0, `lw` at 0x10038f60.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc4, including `lw` at 0x10038ed8, `lw` at 0x10038f30, `lw` at 0x10038f70.
  The `sw` at 0x10038edc stores 4 bytes to a0 (arg0 at entry) +0xc0.
  The `sw` at 0x10038ee8 stores 4 bytes to a0 (arg0 at entry) +0xd0.
  The `lw` at 0x10038ef0 loads 4 bytes from [sym(xsetmonApp)] +0x8c.
  The `lw` at 0x10038f1c loads 4 bytes from [sym(xsetmonApp)] +0x90.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xc8, including `sw` at 0x10038f7c, `sw` at 0x10039118.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc0, including `lw` at 0x10038fa4, `lw` at 0x10039204.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd0, including `lw` at 0x10038fdc, `lw` at 0x10039030.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10038fe4, `sw` at 0x1003903c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xcc, including `lw` at 0x10038fe8, `lw` at 0x10039040, `lw` at 0x1003911c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc8, including `lw` at 0x10039004, `lw` at 0x100390bc, `lw` at 0x10039134.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xec, including `sw` at 0x1003908c, `sw` at 0x100391b0, `sw` at 0x10039274.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x9c, including `sw` at 0x10039090, `sw` at 0x100391b4, `sw` at 0x10039278.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd8, including `lw` at 0x10039188, `lw` at 0x10039308.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x100392b8, `lw` at 0x100392c4, `lw` at 0x100392f8.
  The `lw` at 0x1003932c loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0x1003933c loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x10039348 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `jalr` at 0x10038e78 calls __ct__10VkNameListGv with a0=sp-448, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10038ea0 calls XSGIvcQueryChannelInfo with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=sp-432.
  The `jalr` at 0x10038ecc calls XSGIvcListVideoFormats with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=sp-424, a4=0x0, a5=0x0, a6=0x3e8, a7=a0+196.
  The `jalr` at 0x10038ee0 calls __nwa__GUi with a0=([a0+196] << 0x2), a1=?, a2=?, a3=?.
  The `jalr` at 0x10038f68 calls XSGIvcNVListVideoFormats with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=sp-424, a4=0x0, a5=0x0, a6=0x0, a7=0x3e8.
  The `jalr` at 0x10038fac calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10038fb8 calls __nwa__GUi with a0=ret(strlen)+10, a1=?, a2=?, a3=?.
  The `jalr` at 0x10038fd4 calls sprintf with a0=ret(__nwa__GUi), a1=0x10044aa0, a2=?, a3=?.
  The `jalr` at 0x1003900c calls strcmp with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10039028 calls sprintf with a0=ret(__nwa__GUi), a1=0x10044ab0, a2=?, a3=?.
  The `jalr` at 0x1003905c calls add__10VkNameListGPc with a0=sp-448, a1=ret(__nwa__GUi), a2=?, a3=?.
  The `jalr` at 0x10039068 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003907c calls strcmp with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100390dc calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003910c calls XSGIvcNVListVideoFormats with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=sp-424, a4=0x0, a5=0x0, a6=0x1, a7=0x3e8.
  The `jalr` at 0x1003913c calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10039148 calls __nwa__GUi with a0=ret(strlen)+10, a1=?, a2=?, a3=?.
  The `jalr` at 0x10039164 calls sprintf with a0=ret(__nwa__GUi), a1=0x10044ac0, a2=?, a3=?.
  The `jalr` at 0x10039174 calls add__10VkNameListGPc with a0=sp-448, a1=ret(__nwa__GUi), a2=?, a3=?.
  The `jalr` at 0x10039180 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003919c calls strcmp with a0=?, a1=?, a2=[a0+216], a3=?.
  The `jalr` at 0x1003920c calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10039218 calls __nwa__GUi with a0=ret(strlen)+10, a1=?, a2=?, a3=?.
  The `jalr` at 0x10039234 calls sprintf with a0=ret(__nwa__GUi), a1=0x10044aa0, a2=?, a3=?.
  The `jalr` at 0x10039244 calls add__10VkNameListGPc with a0=sp-448, a1=ret(__nwa__GUi), a2=?, a3=?.
  The `jalr` at 0x10039250 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x10039264 calls strcmp with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003929c calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100392b4 calls XtVaGetValues with a0=[a0+64], a1=-0x84, a2=sp-112, a3=0x0.
  The `jalr` at 0x100392c0 calls XmListDeleteAllItems with a0=[a0+64], a1=?, a2=?, a3=?.
  The `jalr` at 0x100392cc calls freeXmStringTable__10VkNameListSGPPUc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100392d8 calls getXmStringTable__10VkNameListCGv with a0=sp-448, a1=?, a2=?, a3=?.
  The `jalr` at 0x100392f4 calls XmListAddItems with a0=[a0+64], a1=ret(getXmStringTable__10VkNameListCGv), a2=?, a3=0x1.
  The `jalr` at 0x10039300 calls freeXmStringTable__10VkNameListSGPPUc with a0=ret(getXmStringTable__10VkNameListCGv), a1=?, a2=?, a3=?.
  The `jalr` at 0x10039318 calls XmListSelectPos with a0=[a0+64], a1=[a0+216], a2=0x0, a3=?.
  The `jalr` at 0x10039328 calls XtSetSensitive with a0=[a0+116], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10039338 calls XtSetSensitive with a0=[a0+120], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x10039344 calls XmListDeselectAllItems with a0=[a0+32], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003936c calls __dt__10VkNameListGv with a0=sp-448, a1=0x2, a2=?, a3=?.
  The `beq` branch at 0x10038f08 targets 0x10038f28, is taken when a0(=[[sym(xsetmonApp)]+140]) >= 0x2 (signed), and falls through when a0(=[[sym(xsetmonApp)]+140]) < 0x2 (signed).
  The `bne` branch at 0x10038f14 targets 0x10038f30, is taken when a0(=[[sym(xsetmonApp)]+140]) != a2(=0x1), and falls through when a0(=[[sym(xsetmonApp)]+140]) == a2(=0x1).
  The `blez` branch at 0x10038f20 targets 0x10038f30, is taken when a3(=[[sym(xsetmonApp)]+144]) <= 0 (signed), and falls through when a3(=[[sym(xsetmonApp)]+144]) > 0 (signed).
  The `beq` branch at 0x10038f28 targets 0x10038f44 and is always taken.
  The `bgtz` branch at 0x10038f34 targets 0x100391ec, is taken when a4(=[a0+196]) > 0 (signed), and falls through when a4(=[a0+196]) <= 0 (signed).
  The `beq` branch at 0x10038f3c targets 0x1003929c and is always taken.
  The `blez` branch at 0x10038f78 targets 0x100390d8, is taken when a5(=[a0+196]) <= 0 (signed), and falls through when a5(=[a0+196]) > 0 (signed).
  The `blez` branch at 0x10038ff0 targets 0x10039054, is taken when a2(=[a0+204]) <= 0 (signed), and falls through when a2(=[a0+204]) > 0 (signed).
  The `bne` branch at 0x10039014 targets 0x10039040, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `bne` branch at 0x1003904c targets 0x10039000, is taken when s2(?) < a4(=[a0+204]) (signed), and falls through when s2(?) >= a4(=[a0+204]) (signed).
  The `bne` branch at 0x10039084 targets 0x100390a0, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `bne` branch at 0x100390b4 targets 0x10038fa0, is taken when s8(?) < a2(=[a0+196]) (signed), and falls through when s8(?) >= a2(=[a0+196]) (signed).
  The `beq` branch at 0x10039114 targets 0x10039298, is taken when v0(=ret(XSGIvcNVListVideoFormats)) == 0, and falls through when v0(=ret(XSGIvcNVListVideoFormats)) != 0.
  The `blez` branch at 0x10039120 targets 0x1003929c, is taken when a1(=[a0+204]) <= 0 (signed), and falls through when a1(=[a0+204]) > 0 (signed).
  The `bne` branch at 0x1003918c targets 0x100391d0, is taken when a2(=[a0+216]) != s5(=-0x1), and falls through when a2(=[a0+216]) == s5(=-0x1).
  The `bne` branch at 0x100391a4 targets 0x100391d0, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `bne` branch at 0x100391dc targets 0x10039130, is taken when s2(?) < a3(=[a0+204]) (signed), and falls through when s2(?) >= a3(=[a0+204]) (signed).
  The `beq` branch at 0x100391e4 targets 0x1003929c and is always taken.
  The `bne` branch at 0x1003926c targets 0x10039280, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `bne` branch at 0x10039290 targets 0x10039200, is taken when s5(?) < a2(=[a0+196]) (signed), and falls through when s5(?) >= a2(=[a0+196]) (signed).
  The `blez` branch at 0x1003930c targets 0x1003934c, is taken when a1(=[a0+216]) <= 0 (signed), and falls through when a1(=[a0+216]) > 0 (signed).
  The return at 0x1003937c has v0 = ret(__dt__10VkNameListGv).

- `resetEditing__21MasterTabbedDeckClassGv` in `usr/bin/X11/xsetmon` at 0x100394b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100394b0-0x10039544 (148 bytes).
  It occupies 148 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x100394e8, `lw` at 0x10039520.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x100394f8, `lw` at 0x10039530.
  The `lw` at 0x10039538 loads 4 bytes from [a0+44] +0x20.
  The `jal` at 0x100394d4 calls topWidget__12MyTabbedDeckGv [0x10037d90] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100394e4 calls baseWidget__11VkComponentCGv with a0=[a0+56], a1=?, a2=?, a3=?.
  The `jalr` at 0x100394f4 calls baseWidget__11VkComponentCGv with a0=[a0+44], a1=?, a2=?, a3=?.
  The `jal` at 0x1003951c calls resetEditing__10GammaClassGv [0x10042890] with a0=[a0+56], a1=?, a2=?, a3=?.
  The `jal` at 0x10039534 calls resetEditing__27FormatCombinationListsClassGv [0x10024580] with a0=[[a0+44]+32], a1=?, a2=?, a3=?.
  The `beq` branch at 0x100394ec targets 0x10039518, is taken when v0(=ret(baseWidget__11VkComponentCGv)) == s1(=ret(topWidget__12MyTabbedDeckGv)), and falls through when v0(=ret(baseWidget__11VkComponentCGv)) != s1(=ret(topWidget__12MyTabbedDeckGv)).
  The `beq` branch at 0x100394fc targets 0x1003952c, is taken when v0(=ret(baseWidget__11VkComponentCGv)) == s1(=ret(topWidget__12MyTabbedDeckGv)), and falls through when v0(=ret(baseWidget__11VkComponentCGv)) != s1(=ret(topWidget__12MyTabbedDeckGv)).
  The `beq` branch at 0x10039524 targets 0x10039504 and is always taken.
  The `beq` branch at 0x1003953c targets 0x10039504 and is always taken.
  The return at 0x10039510 has v0 = one of ret(baseWidget__11VkComponentCGv), ret(resetEditing__10GammaClassGv), ret(resetEditing__27FormatCombinationListsClassGv).

- `combinationSelected__27FormatCombinationListsClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10039550 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10039550-0x10039638 (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0x10039570 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0x10039594 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x100395a0 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x100395a4 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lw` at 0x100395a8 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lw` at 0x100395b4 loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `lw` at 0x100395c8 loads 4 bytes from ([a0+180] + ([a2+16] << 0x2)) -0x4.
  The `lw` at 0x100395cc loads 4 bytes from a0 (arg0 at entry) +0xbc.
  The `lw` at 0x100395dc loads 4 bytes from ?.
  The `sw` at 0x100395e4 stores 4 bytes to a0 (arg0 at entry) +0xa0.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x100395e8, `lw` at 0x10039604.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x130, including `lw` at 0x100395ec, `lw` at 0x10039608.
  2 such `lw` accesses load 4 bytes from [[sym(xsetmonApp)]+304] +0x44, including `lw` at 0x100395f4, `lw` at 0x10039610.
  2 such `lw` accesses load 4 bytes from [[[sym(xsetmonApp)]+304]+68] +0x2c, including `lw` at 0x100395fc, `lw` at 0x10039620.
  The `jalr` at 0x10039580 calls XtSetSensitive with a0=[a0+116], a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10039590 calls XtSetSensitive with a0=[a0+120], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1003959c calls XmListDeselectAllItems with a0=[a0+64], a1=?, a2=?, a3=?.
  The `jal` at 0x100395f8 calls ClearFormat__21SetmonMasterFormClassGv [0x1002ce30] with a0=[[[[sym(xsetmonApp)]+304]+68]+44], a1=[a2+16], a2=[a0+176], a3=?.
  The `jal` at 0x1003961c calls DisplayCombination__21SetmonMasterFormClassGPCc [0x10024aa0] with a0=[[[[sym(xsetmonApp)]+304]+68]+44], a1=?, a2=?, a3=?.
  The `beq` branch at 0x100395b8 targets 0x100395cc, is taken when v0(=[a2+16]-1) >= a2(=[a0+176]) (signed), and falls through when v0(=[a2+16]-1) < a2(=[a0+176]) (signed).
  The `beq` branch at 0x100395c4 targets 0x100395e0 and is always taken.
  The return at 0x10039630 has v0 = ret(DisplayCombination__21SetmonMasterFormClassGPCc).

- `setChannelCurMap__22GammaAssignmentClassUIGiT1` in `usr/bin/X11/xsetmon` at 0x10039640 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10039640-0x100396c0 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x10039650 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x10039684 loads 4 bytes from ([a0+56] + (a1 << 0x3)) +0x0.
  The `lw` at 0x10039688 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1003968c loads 4 bytes from [a0+8] +0xa4.
  The `lw` at 0x10039690 loads 4 bytes from [a0+8] +0x9c.
  The `jalr` at 0x10039680 calls set__12VkOptionMenuGi with a0=[([a0+56] + (a1 << 0x3))], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x1f2bc.
  The `jalr` at 0x100396a4 calls (unknown callee) with a0=([[a0+8]+156] + a0), a1=0x0, a2=0x0, a3=a1 at entry (arg1), a4=a2 at entry (arg2).
  The return at 0x100396b8 has v0 = ret(?).

- `doHorizontalPhaseCallback__16ChannelFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x100396c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100396c0-0x10039720 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x100396c4 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x100396dc loads 4 bytes from a0 (arg0 at entry) +0xd8.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x100396e0, `lw` at 0x10039704.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x100396e8, `lw` at 0x1003970c.
  The `lw` at 0x100396f0 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `jalr` at 0x100396f4 calls XSGIvcSetOutputPhaseH with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[a0+216], a3=[a2+8].
  The `jalr` at 0x10039708 calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=?, a2=?, a3=?.
  The return at 0x10039718 has v0 = ret(XFlush).

- `RegisterFormatCombinationListsClassInterface__27FormatCombinationListsClassSGv` in `usr/bin/X11/xsetmon` at 0x10039ae0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10039ae0-0x10039af8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10039aec loads 4 bytes from abs 0x10050950.
  The return at 0x10039af0 has v0 = 0x1004d020.

- `doDownloadfbDepthButton__29FormatCombinationListsClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10039ec0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10039ec0-0x10039ec8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10039ec0 has v0 = ?.

- `__dt__19SyncSelectorFrameUIGv` in `usr/bin/X11/xsetmon` at 0x10039ed0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10039ed0-0x10039ffc (300 bytes).
  It occupies 300 bytes.
  The `sw` at 0x10039efc stores 4 bytes to a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x10039f04, `lw` at 0x10039f60.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10039f34, `lw` at 0x10039f40, `lw` at 0x10039f44.
  The `lw` at 0x10039f9c loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x10039fa8 loads 4 bytes from [a0+40] +0x8.
  The `lw` at 0x10039fac loads 4 bytes from [[a0+40]+8] +0x14.
  The `lw` at 0x10039fb0 loads 4 bytes from [[a0+40]+8] +0xc.
  The `jalr` at 0x10039f50 calls (unknown callee) with a0=?, a1=0x3, a2=?, a3=?, a4=[0x10051d08].
  The `jalr` at 0x10039f90 calls __vec_delete2 with a0=[a0+44], a1=-0x1, a2=0x10, a3=0x0, a4=0x1, a5=0x0.
  The `jalr` at 0x10039fb8 calls (unknown callee) with a0=([[[a0+40]+8]+12] + [a0+40]), a1=0x3, a2=?, a3=a0 at entry (arg0), a4=[a0+40].
  The `jalr` at 0x10039fcc calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=a0 at entry (arg0).
  The `jalr` at 0x10039fe4 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10039eec targets 0x10039fec, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10039f0c targets 0x10039f9c, is taken when a0(=[a0+44]) == 0, and falls through when a0(=[a0+44]) != 0.
  The `beq` branch at 0x10039f14 targets 0x10039f80, is taken when a4(=[0x10051d08]) == 0, and falls through when a4(=[0x10051d08]) != 0.
  The `beq` branch at 0x10039f38 targets 0x10039f64, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x10039f6c targets 0x10039f30, is taken when s1(?) < a4(=[0x10051d08]) (unsigned), and falls through when s1(?) >= a4(=[0x10051d08]) (unsigned).
  The `beq` branch at 0x10039fa0 targets 0x10039fc8, is taken when a4(=[a0+40]) == 0, and falls through when a4(=[a0+40]) != 0.
  The `beq` branch at 0x10039fdc targets 0x10039fec, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10039ff4 has v0 = one of ?, ret(__dt__11VkComponentGv), ret(__dl__GPv).

- `iSplineXValue__19GammaMapEditorClassCGi` in `usr/bin/X11/xsetmon` at 0x1003a000 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003a000-0x1003a014 (20 bytes).
  It occupies 20 bytes.
  The `lw` at 0x1003a000 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lhu` at 0x1003a010 loads 2 bytes from ([a0+80] + (a1 + a1)) +0x0.
  The return at 0x1003a00c has v0 = [([a0+80] + (a1 + a1))]:2.

- `vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint` in `usr/bin/X11/xsetmon` at 0x1003a020 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003a020-0x1003a078 (88 bytes).
  It occupies 88 bytes.
  The `lwc1` at 0x1003a02c loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The `sh` at 0x1003a044 stores 2 bytes to a3 (arg3 at entry) +0x0.
  The `lwc1` at 0x1003a048 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `lhu` at 0x1003a050 loads 2 bytes from a0 (arg0 at entry) +0x96.
  The `sh` at 0x1003a074 stores 2 bytes to a3 (arg3 at entry) +0x2.
  The return at 0x1003a070 has v0 = [a0+150]:2.

- `create__21ServerInfoFormClassUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003a080 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003a080-0x1003ae4c (3532 bytes).
  It occupies 3532 bytes.
  The `lw` at 0x1003a0c8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from sym(xmFormWidgetClass) +0x0, including `lw` at 0x1003a0d4, `lw` at 0x1003a5f4.
  The `sw` at 0x1003a0dc stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x1003a0e8 stores 4 bytes to a0 (arg0 at entry) +0x54.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x1003a0f0, `lw` at 0x1003a1a8, `lw` at 0x1003a260.
  12 such `lw` accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0, including `lw` at 0x1003a0f4, `lw` at 0x1003a1b0, `lw` at 0x1003a268.
  The `sw` at 0x1003a1ac stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `sw` at 0x1003a264 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  The `sw` at 0x1003a314 stores 4 bytes to a0 (arg0 at entry) +0x4c.
  The `sw` at 0x1003a3ac stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `sw` at 0x1003a46c stores 4 bytes to a0 (arg0 at entry) +0x44.
  The `sw` at 0x1003a508 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `lw` at 0x1003a50c loads 4 bytes from sym(xmFrameWidgetClass) +0x0.
  The `sw` at 0x1003a5d4 stores 4 bytes to a0 (arg0 at entry) +0x24.
  The `sw` at 0x1003a614 stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `lw` at 0x1003a618 loads 4 bytes from sym(xmToggleButtonWidgetClass) +0x0.
  The `sw` at 0x1003a6e8 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x1003a724, `lw` at 0x1003a7c0.
  The `sw` at 0x1003a754 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x64, including `lw` at 0x1003a774, `lw` at 0x1003a824.
  The `sw` at 0x1003a778 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sw` at 0x1003a788 stores 4 bytes to a0 (arg0 at entry) +0x70.
  The `sw` at 0x1003a7f0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0x1003a810, `lw` at 0x1003a8b0.
  The `sw` at 0x1003a814 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0x1003a82c stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `sw` at 0x1003a9f4 stores 4 bytes to a0 (arg0 at entry) +0x48.
  The `sw` at 0x1003aa8c stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `sw` at 0x1003ab4c stores 4 bytes to a0 (arg0 at entry) +0x40.
  The `sw` at 0x1003abe4 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `sw` at 0x1003ac78 stores 4 bytes to a0 (arg0 at entry) +0x28.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3c, including `lw` at 0x1003ad54, `lw` at 0x1003ad8c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c, including `lw` at 0x1003ad5c, `lw` at 0x1003ad80, `lw` at 0x1003adac.
  The `lw` at 0x1003ad68 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `sw` at 0x1003ad74 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `lw` at 0x1003ada0 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x1003adc0 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lw` at 0x1003adcc loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x1003ade0 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x1003adec loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x1003ae00 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x1003ae0c loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x1003ae34 loads 4 bytes from a0 (arg0 at entry) +0x5c.
  The `jalr` at 0x1003a0ac calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultServerInfoFormClassUIResources__21ServerInfoFormClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x1003a0d0 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=-0xd1, a4=0x1, a5=0x0.
  The `jalr` at 0x1003a0e4 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003a1a0 calls XtVaCreateManagedWidget with a0=0x10045fa0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x0, a7=-0x66.
  The `jalr` at 0x1003a258 calls XtVaCreateManagedWidget with a0=0x10051738, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x0, a7=-0x66.
  The `jalr` at 0x1003a30c calls XtVaCreateManagedWidget with a0=0x10045fb8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1003a3a4 calls XtVaCreateManagedWidget with a0=0x10051740, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1003a464 calls XtVaCreateManagedWidget with a0=0x10045fd0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x0, a7=-0x66.
  The `jalr` at 0x1003a4fc calls XtVaCreateManagedWidget with a0=0x10051748, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1003a5cc calls XtVaCreateManagedWidget with a0=0x10045ff0, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x1003a608 calls XtVaCreateManagedWidget with a0=0x10051750, a1=[sym(xmFormWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0xd1, a4=0x1, a5=-0x337, a6=0x1, a7=-0x16.
  The `jalr` at 0x1003a6c8 calls XtVaCreateManagedWidget with a0=0x10046008, a1=[sym(xmToggleButtonWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x38.
  The `jalr` at 0x1003a6e4 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x40, a2=sym(doToggleExternalLockCallback__21ServerInfoFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003a6f4 calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003a728 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+32], a2=0x10046020, a3=0x0, a4=0x0.
  The `jalr` at 0x1003a758 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=?, a1=0x10046038, a2=sym(doOptionVideoVoltageCallback__21ServerInfoFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1003a77c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+100], a1=0x10046050, a2=sym(doOptionTTLVoltageCallback__21ServerInfoFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1003a790 calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003a7c4 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+32], a2=0x10046068, a3=0x0, a4=0x0.
  The `jalr` at 0x1003a7f4 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=?, a1=0x10046080, a2=sym(doOptionSyncSourceInternalCallback__21ServerInfoFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1003a818 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+96], a1=0x100460a0, a2=sym(doOptionSyncSourceExternalCallback__21ServerInfoFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1003a828 calls baseWidget__10VkMenuItemCGv with a0=[a0+100], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003a8a0 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=-0x42, a2=0x1, a3=-0x66, a4=0x0, a5=-0x46, a6=0x1, a7=-0x67.
  The `jalr` at 0x1003a8ac calls baseWidget__10VkMenuItemCGv with a0=[a0+96], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003a920 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=-0x42, a2=0x1, a3=-0x66, a4=0x0, a5=-0x46, a6=0x1, a7=-0x67.
  The `jalr` at 0x1003a9e8 calls XtVaCreateManagedWidget with a0=0x100460c0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x1003aa80 calls XtVaCreateManagedWidget with a0=0x10051758, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1003ab40 calls XtVaCreateManagedWidget with a0=0x100460d8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x0, a7=-0x66.
  The `jalr` at 0x1003abd8 calls XtVaCreateManagedWidget with a0=0x10051760, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1003ac6c calls XtVaCreateManagedWidget with a0=0x10051768, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1003ad48 calls XtVaCreateManagedWidget with a0=0x100460f0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x1003ad70 calls XtVaSetValues with a0=[a0+80], a1=-0x1b3, a2=[a0+76], a3=-0xa5, a4=[a0+60], a5=0x0.
  The `jalr` at 0x1003ad90 calls XtVaSetValues with a0=[a0+60], a1=-0x1b3, a2=[a0+76], a3=-0xa5, a4=[a0+76], a5=0x0.
  The `jalr` at 0x1003adb0 calls XtVaSetValues with a0=[a0+76], a1=-0x1b3, a2=[a0+56], a3=-0xa5, a4=[a0+56], a5=0x0.
  The `jalr` at 0x1003add0 calls XtVaSetValues with a0=[a0+68], a1=-0x1b3, a2=[a0+52], a3=-0xa5, a4=[a0+52], a5=0x0.
  The `jalr` at 0x1003adf0 calls XtVaSetValues with a0=[a0+72], a1=-0x1b3, a2=[a0+48], a3=-0xa5, a4=[a0+48], a5=0x0.
  The `jalr` at 0x1003ae10 calls XtVaSetValues with a0=[a0+64], a1=-0x1b3, a2=[a0+44], a3=-0xa5, a4=[a0+44], a5=0x0.
  The `jalr` at 0x1003ae30 calls XtVaSetValues with a0=[a0+92], a1=-0xa1, a2=0x0, a3=-0x31, a4=0x0, a5=0x0.
  The `beq` branch at 0x1003a700 targets 0x1003a740, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1003a738 targets 0x1003a744 and is always taken.
  The `beq` branch at 0x1003a79c targets 0x1003a7dc, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1003a7d4 targets 0x1003a7e0 and is always taken.
  The return at 0x1003ae44 has v0 = ret(XtVaSetValues).

- `__ct__21ServerInfoFormClassUIGPCc` in `usr/bin/X11/xsetmon` at 0x1003ae50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003ae50-0x1003aec8 (120 bytes).
  It occupies 120 bytes.
  The `sw` at 0x1003ae80 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x1003ae88 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sw` at 0x1003ae90 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0x1003ae98 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sw` at 0x1003aea0 stores 4 bytes to a0 (arg0 at entry) +0x70.
  The `sw` at 0x1003aeac stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0x1003aeb8 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `jalr` at 0x1003ae70 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1003aec0 has v0 = a0.

- `input__21GammaMapEditorClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1003aed0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003aed0-0x1003aed8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1003aed0 has v0 = ?.

- `doDragRegionCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi` in `usr/bin/X11/xsetmon` at 0x1003aee0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003aee0-0x1003af50 (112 bytes).
  It occupies 112 bytes.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1003af20, `lw` at 0x1003af24, `lw` at 0x1003af28.
  The `jalr` at 0x1003af14 calls XtVaGetValues with a0=a0 at entry (arg0), a1=-0xa, a2=sp-48, a3=0x0.
  The `jalr` at 0x1003af34 calls (unknown callee) with a0=?, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The return at 0x1003af48 has v0 = ret(?).

- `doOptionTTLVoltage__19ServerInfoFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1003b050 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003b050-0x1003b0b8 (104 bytes).
  It occupies 104 bytes.
  3 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1003b068, `lw` at 0x1003b078, `lw` at 0x1003b09c.
  The `sw` at 0x1003b074 stores 4 bytes to [sym(xsetmonApp)] +0x118.
  The `lw` at 0x1003b080 loads 4 bytes from [sym(xsetmonApp)] +0x11c.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x1003b084, `lw` at 0x1003b0a4.
  The `lw` at 0x1003b088 loads 4 bytes from [sym(xsetmonApp)] +0x118.
  The `lw` at 0x1003b090 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `jalr` at 0x1003b08c calls XSGIvcSetScreenInputSyncSource with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[[sym(xsetmonApp)]+280], a3=[[sym(xsetmonApp)]+284], a4=[sym(xsetmonApp)], a5=0x1d8ac.
  The `jalr` at 0x1003b0a0 calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=?, a2=?, a3=?.
  The return at 0x1003b0b0 has v0 = ret(XFlush).

- `doButtonQueryBestCallback__18ChannelFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x1003b0c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003b0c0-0x1003b104 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1003b0c4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1003b0d0 loads 4 bytes from [a1+8] +0x9c.
  The `lw` at 0x1003b0dc loads 4 bytes from [a1+8] +0xa4.
  The `jalr` at 0x1003b0ec calls (unknown callee) with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1d83c.
  The return at 0x1003b0fc has v0 = ret(?).

- `create__12GammaClassUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003b110 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003b110-0x1003bab4 (2468 bytes).
  It occupies 2468 bytes.
  The `lw` at 0x1003b158 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0x1003b164 loads 4 bytes from sym(xmFormWidgetClass) +0x0.
  The `sw` at 0x1003b16c stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x1003b178 stores 4 bytes to a0 (arg0 at entry) +0x38.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x1003b180, `lw` at 0x1003b3e0, `lw` at 0x1003b430.
  The `lw` at 0x1003b184 loads 4 bytes from sym(xmFrameWidgetClass) +0x0.
  The `sw` at 0x1003b25c stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `lw` at 0x1003b268 loads 4 bytes from sym(xmRowColumnWidgetClass) +0x0.
  The `sw` at 0x1003b2d4 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  6 such `lw` accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0, including `lw` at 0x1003b2e0, `lw` at 0x1003b300, `lw` at 0x1003b324.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5c, including `lw` at 0x1003b2e4, `lw` at 0x1003b314, `lw` at 0x1003b330.
  The `sw` at 0x1003b2fc stores 4 bytes to a0 (arg0 at entry) +0x3c.
  The `sw` at 0x1003b320 stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `sw` at 0x1003b348 stores 4 bytes to a0 (arg0 at entry) +0x40.
  The `sw` at 0x1003b36c stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `sw` at 0x1003b394 stores 4 bytes to a0 (arg0 at entry) +0x44.
  The `sw` at 0x1003b3a8 stores 4 bytes to a0 (arg0 at entry) +0x4c.
  The `sw` at 0x1003b404 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x20, including `sw` at 0x1003b448, `sw` at 0x1003b450.
  15 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1003b454, `lw` at 0x1003b458, `lw` at 0x1003b45c.
  The `lw` at 0x1003b470 loads 4 bytes from sym(sgSpringBoxWidgetClass) +0x0.
  The `sw` at 0x1003b53c stores 4 bytes to a0 (arg0 at entry) +0x60.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0x1003b568, `lw` at 0x1003b5cc, `lw` at 0x1003b630.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x24, including `sw` at 0x1003b580, `sw` at 0x1003b588.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x28, including `sw` at 0x1003b5e4, `sw` at 0x1003b5ec.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2c, including `sw` at 0x1003b648, `sw` at 0x1003b650.
  The `lw` at 0x1003b670 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x1003b6e0 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x1003b750 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x30, including `sw` at 0x1003b7fc, `sw` at 0x1003b804.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x64, including `lw` at 0x1003b828, `lw` at 0x1003b838, `lw` at 0x1003b880.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x1003b848, `lw` at 0x1003b930.
  The `lw` at 0x1003b870 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lw` at 0x1003ba04 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `jalr` at 0x1003b13c calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultGammaClassUIResources__12GammaClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x1003b160 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=-0xd1, a4=0x1, a5=0x0.
  The `jalr` at 0x1003b174 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003b254 calls XtVaCreateManagedWidget with a0=0x10051680, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x1003b2b4 calls XtVaCreateManagedWidget with a0=0x10045450, a1=[sym(xmRowColumnWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0xb, a4=0x2, a5=-0xc1, a6=0x2, a7=-0x41.
  The `jalr` at 0x1003b2dc calls XtVaCreateManagedWidget with a0=0x10051688, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x1003b304 calls XtVaCreateManagedWidget with a0=0x10045460, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x1003b328 calls XtVaCreateManagedWidget with a0=0x10051690, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x1003b350 calls XtVaCreateManagedWidget with a0=0x10045470, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x1003b374 calls XtVaCreateManagedWidget with a0=0x10051698, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x1003b39c calls XtVaCreateManagedWidget with a0=0x10045488, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x1003b3b0 calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003b3e4 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x100454a0, a3=0x0, a4=0x0.
  The `jalr` at 0x1003b40c calls __nw__GUi with a0=0xc4, a1=?, a2=?, a3=?.
  The `jal` at 0x1003b434 calls __ct__19GammaMapEditorClassGPCcP10_WidgetRec [0x1002ec70] with a0=ret(__nw__GUi), a1=0x100454b0, a2=[a0+16], a3=0x1.
  The `jalr` at 0x1003b460 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003b530 calls XtVaCreateManagedWidget with a0=0x100454c8, a1=[sym(sgSpringBoxWidgetClass)], a2=[a0+16], a3=0x100454d8, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1003b544 calls __nw__GUi with a0=0xc4, a1=?, a2=?, a3=?.
  The `jal` at 0x1003b56c calls __ct__19GammaMapEditorClassGPCcP10_WidgetRec [0x1002ec70] with a0=ret(__nw__GUi), a1=0x100454e8, a2=[a0+96], a3=?.
  The `jalr` at 0x1003b598 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003b5a8 calls __nw__GUi with a0=0xc4, a1=?, a2=?, a3=?.
  The `jal` at 0x1003b5d0 calls __ct__19GammaMapEditorClassGPCcP10_WidgetRec [0x1002ec70] with a0=ret(__nw__GUi), a1=0x10045500, a2=[a0+96], a3=?.
  The `jalr` at 0x1003b5fc calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003b60c calls __nw__GUi with a0=0xc4, a1=?, a2=?, a3=?.
  The `jal` at 0x1003b634 calls __ct__19GammaMapEditorClassGPCcP10_WidgetRec [0x1002ec70] with a0=ret(__nw__GUi), a1=0x10045518, a2=[a0+96], a3=?.
  The `jalr` at 0x1003b660 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003b66c calls baseWidget__11VkComponentCGv with a0=[a0+36], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003b6d0 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=0x10045530, a2=0x32, a3=0x10045540, a4=0x19, a5=0x10045550, a6=0x32, a7=0x10045560.
  The `jalr` at 0x1003b6dc calls baseWidget__11VkComponentCGv with a0=[a0+40], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003b740 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=0x10045530, a2=0x19, a3=0x10045540, a4=0x19, a5=0x10045550, a6=0x32, a7=0x10045560.
  The `jalr` at 0x1003b74c calls baseWidget__11VkComponentCGv with a0=[a0+44], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003b7b0 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=0x10045530, a2=0x19, a3=0x10045540, a4=0x32, a5=0x10045550, a6=0x32, a7=0x10045560.
  The `jalr` at 0x1003b7c0 calls __nw__GUi with a0=0x44, a1=?, a2=?, a3=?.
  The `jal` at 0x1003b7e8 calls __ct__20GammaAssignmentClassGPCcP10_WidgetRec [0x1003ea40] with a0=ret(__nw__GUi), a1=0x10045598, a2=[a0+16], a3=?.
  The `jalr` at 0x1003b818 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003b824 calls baseWidget__10VkMenuItemCGv with a0=[a0+100], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003b834 calls baseWidget__10VkMenuItemCGv with a0=[a0+100], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003b844 calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003b86c calls XtVaSetValues with a0=[a0+52], a1=-0x76, a2=ret(baseWidget__10VkMenuItemCGv), a3=-0xa5, a4=ret(baseWidget__10VkMenuItemCGv), a5=-0x116, a6=ret(baseWidget__11VkComponentCGv), a7=0x0.
  The `jalr` at 0x1003b87c calls baseWidget__10VkMenuItemCGv with a0=[a0+100], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003b920 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=-0x42, a2=0x3, a3=-0x66, a4=0x0, a5=-0x46, a6=0x1, a7=-0x67.
  The `jalr` at 0x1003b92c calls baseWidget__11VkComponentCGv with a0=[a0+32], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003b9f4 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x3, a3=-0x66, a4=0x1, a5=-0x46, a6=0x5, a7=-0x67.
  The `jalr` at 0x1003ba00 calls baseWidget__11VkComponentCGv with a0=[a0+48], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003ba8c calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x3, a3=-0x66, a4=0x1, a5=-0x46, a6=0x5, a7=-0x67.
  The `jal` at 0x1003ba98 calls populateMapSelectorMenu__12GammaClassUIGv [0x10025700] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1003b3bc targets 0x1003b3fc, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1003b3f4 targets 0x1003b404 and is always taken.
  The `beq` branch at 0x1003b414 targets 0x1003b44c, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1003b444 targets 0x1003b454 and is always taken.
  The `beq` branch at 0x1003b550 targets 0x1003b584, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1003b57c targets 0x1003b58c and is always taken.
  The `beq` branch at 0x1003b5b4 targets 0x1003b5e8, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1003b5e0 targets 0x1003b5f0 and is always taken.
  The `beq` branch at 0x1003b618 targets 0x1003b64c, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1003b644 targets 0x1003b654 and is always taken.
  The `beq` branch at 0x1003b7c8 targets 0x1003b800, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1003b7f8 targets 0x1003b808 and is always taken.
  The return at 0x1003baac has v0 = ret(populateMapSelectorMenu__12GammaClassUIGv).

- `__ct__18ChannelFormClassUIGPCc` in `usr/bin/X11/xsetmon` at 0x1003bac0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003bac0-0x1003bb20 (96 bytes).
  It occupies 96 bytes.
  The `sw` at 0x1003baf0 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x1003baf8 stores 4 bytes to a0 (arg0 at entry) +0xd0.
  The `sw` at 0x1003bb04 stores 4 bytes to a0 (arg0 at entry) +0xc0.
  The `sw` at 0x1003bb10 stores 4 bytes to a0 (arg0 at entry) +0xc4.
  The `jalr` at 0x1003bae0 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1003bb18 has v0 = a0.

- `create__21GammaMapEditorClassUIGP10_WidgetRecPCc` in `usr/bin/X11/xsetmon` at 0x1003bb20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003bb20-0x1003c050 (1328 bytes).
  It occupies 1328 bytes.
  The `lw` at 0x1003bb70 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0x1003bb7c loads 4 bytes from sym(xmFormWidgetClass) +0x0.
  The `sw` at 0x1003bb88 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x1003bb94 stores 4 bytes to a0 (arg0 at entry) +0x28.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x1003bb9c, `lw` at 0x1003bd24, `lw` at 0x1003bdf4.
  The `lw` at 0x1003bba0 loads 4 bytes from sym(xmRowColumnWidgetClass) +0x0.
  The `sw` at 0x1003bcb0 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  2 such `lw` accesses load 4 bytes from sym(xmToggleButtonWidgetClass) +0x0, including `lw` at 0x1003bcb4, `lw` at 0x1003bcf8.
  The `sw` at 0x1003bcd8 stores 4 bytes to a0 (arg0 at entry) +0x38.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x1003bcf4, `lw` at 0x1003bee4.
  The `sw` at 0x1003bd1c stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `lw` at 0x1003bd28 loads 4 bytes from sym(sgSpringBoxWidgetClass) +0x0.
  The `sw` at 0x1003bdfc stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `lw` at 0x1003be00 loads 4 bytes from sym(xmLabelWidgetClass) +0x0.
  The `sw` at 0x1003beb4 stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `lw` at 0x1003beb8 loads 4 bytes from sym(xmDrawingAreaWidgetClass) +0x0.
  The `sw` at 0x1003bfa4 stores 4 bytes to a0 (arg0 at entry) +0x24.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0x1003bfbc, `lw` at 0x1003bfd4, `lw` at 0x1003c018.
  The `lw` at 0x1003bfec loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x1003c028 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x1003c03c loads 4 bytes from [sym(xsetmonApp)] +0x70.
  The `jalr` at 0x1003bb4c calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultGammaMapEditorClassUIResources__21GammaMapEditorClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x1003bb78 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=-0xd1, a4=0x1, a5=-0x2e3, a6=0x3e8, a7=0x0.
  The `jalr` at 0x1003bb90 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003bc84 calls XtVaCreateManagedWidget with a0=0x10045b08, a1=[sym(xmRowColumnWidgetClass)], a2=[a0+16], a3=-0xb, a4=0x2, a5=-0xc1, a6=0x2, a7=-0x39.
  The `jalr` at 0x1003bcb8 calls XtVaCreateManagedWidget with a0=0x10045b18, a1=[sym(xmToggleButtonWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=-0x38, a6=0x1, a7=0x0.
  The `jalr` at 0x1003bcd4 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x40, a2=sym(setToggleGammaScalarCallback__21GammaMapEditorClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003bcfc calls XtVaCreateManagedWidget with a0=0x10045b30, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+44], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x1003bd18 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x40, a2=sym(setToggleGammaPointsCallback__21GammaMapEditorClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003bdec calls XtVaCreateManagedWidget with a0=0x10045b48, a1=[sym(sgSpringBoxWidgetClass)], a2=[a0+16], a3=0x10045b60, a4=0x0, a5=-0x42, a6=0x0, a7=-0x66.
  The `jalr` at 0x1003bea4 calls XtVaCreateManagedWidget with a0=0x10045b70, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1003bf84 calls XtVaCreateManagedWidget with a0=0x10045b80, a1=[sym(xmDrawingAreaWidgetClass)], a2=[a0+16], a3=-0x42, a4=0x3, a5=-0x66, a6=0x3, a7=-0x46.
  The `jalr` at 0x1003bfa0 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x160, a2=sym(resizeCallback__21GammaMapEditorClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003bfb8 calls XtAddCallback with a0=[a0+36], a1=-0xe1, a2=sym(exposeCallback__21GammaMapEditorClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003bfd0 calls XtAddCallback with a0=[a0+36], a1=-0x2cf, a2=sym(inputCallback__21GammaMapEditorClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jal` at 0x1003bfdc calls allocGC__21GammaMapEditorClassUIGv [0x1003cd60] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003bfe8 calls XtUnmanageChild with a0=[a0+48], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003bff4 calls XtParseTranslationTable with a0=[0x10051bf8], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003c014 calls XtVaSetValues with a0=[a0+36], a1=-0xa3, a2=ret(XtParseTranslationTable), a3=-0xa, a4=a0 at entry (arg0), a5=0x0.
  The `jalr` at 0x1003c038 calls XtAppAddActions with a0=[[sym(xsetmonApp)]+112], a1=0x1004de30, a2=0x3, a3=?.
  The return at 0x1003c048 has v0 = ret(XtAppAddActions).

- `__ct__21SetmonMasterFormClassGPCc` in `usr/bin/X11/xsetmon` at 0x1003c050 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003c050-0x1003c0a8 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0x1003c084 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x1003c090 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x1003c070 calls __ct__23SetmonMasterFormClassUIGPCc [0x10043100] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003c08c calls ClearFormat__19StatisticsFormClassGv [0x10041c30] with a0=[a0+40], a1=sym(__vtbl__21SetmonMasterFormClass), a2=a0 at entry (arg0), a3=?.
  The return at 0x1003c0a0 has v0 = a0.

- `doOptionSyncSourceInternal__19ServerInfoFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1003c0b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003c0b0-0x1003c124 (116 bytes).
  It occupies 116 bytes.
  4 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1003c0c8, `lw` at 0x1003c0d4, `lw` at 0x1003c0e4.
  The `sw` at 0x1003c0d0 stores 4 bytes to [sym(xsetmonApp)] +0x11c.
  The `sw` at 0x1003c0e0 stores 4 bytes to [sym(xsetmonApp)] +0x118.
  The `lw` at 0x1003c0ec loads 4 bytes from [sym(xsetmonApp)] +0x11c.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x1003c0f0, `lw` at 0x1003c110.
  The `lw` at 0x1003c0f4 loads 4 bytes from [sym(xsetmonApp)] +0x118.
  The `lw` at 0x1003c0fc loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `jalr` at 0x1003c0f8 calls XSGIvcSetScreenInputSyncSource with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[[sym(xsetmonApp)]+280], a3=[[sym(xsetmonApp)]+284], a4=[sym(xsetmonApp)], a5=-0x1, a6=[sym(xsetmonApp)], a7=0x1c84c.
  The `jalr` at 0x1003c10c calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=?, a2=?, a3=?.
  The return at 0x1003c11c has v0 = ret(XFlush).

- `__dt__21SetmonMasterFormClassGv` in `usr/bin/X11/xsetmon` at 0x1003ca00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003ca00-0x1003ca6c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x1003ca30 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x1003ca38 calls __dt__23SetmonMasterFormClassUIGv [0x1002a2f0] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003ca54 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1003ca20 targets 0x1003ca5c, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1003ca48 targets 0x1003ca60, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x1003ca64 has v0 = one of ret(__dt__23SetmonMasterFormClassUIGv), ?.

- `main` in `usr/bin/X11/xsetmon` at 0x1003ca70
  **Inferred.** Role (from name): program entry for the monitor-setup window tool. It calls InitEZ__Gv (0x1003ca90), sets the locale (setlocale at 0x1003caa0), sets the toolkit language procedure and fallbacks (XtSetLanguageProc at 0x1003cab4, setFallbacks at 0x1003cac4), and allocates a 0x140-byte object (__nw__GUi at 0x1003cad4). When the allocation returns nonzero (branch at 0x1003cae0) it calls the constructor __ct__7xsetmonGPcPiPPcP16XrmOptionDescReci at 0x1003cb04; the facts show the argument list but not what the constructor does. It then creates the windows (createWindows at 0x1003cb2c), skips one indirect call when a field of the object at +0x88 is null (branch at 0x1003cb40), sets the title (setTitle at 0x1003cb64) and calls exit with 0 at 0x1003cb90. The facts do not show the window contents.
  Reviewed: 2026-11-12

- `RegisterStatisticsFormClassInterface__19StatisticsFormClassSGv` in `usr/bin/X11/xsetmon` at 0x1003cba0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003cba0-0x1003cbb8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1003cbac loads 4 bytes from abs 0x10050950.
  The return at 0x1003cbb0 has v0 = 0x1004e840.

- `doArmScalarDrag__21GammaMapEditorClassUIGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x1003cbc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003cbc0-0x1003cbc8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1003cbc0 has v0 = ?.

- `__ct__19SyncSelectorFrameUIGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003cbd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003cbd0-0x1003cc44 (116 bytes).
  It occupies 116 bytes.
  The `sw` at 0x1003cc08 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x1003cc14 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `sw` at 0x1003cc1c stores 4 bytes to a0 (arg0 at entry) +0x28.
  The `jalr` at 0x1003cbf8 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003cc24 calls create__19SyncSelectorFrameUIGP10_WidgetRec [0x1002b130] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a0 at entry (arg0), a3=?.
  The return at 0x1003cc3c has v0 = a0.

- `setToggleGammaScalar__19GammaMapEditorClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1003cc50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003cc50-0x1003cc90 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x1003cc50 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `sw` at 0x1003cc7c stores 4 bytes to a0 (arg0 at entry) +0xc0.
  The `jal` at 0x1003cc78 calls redraw__19GammaMapEditorClassCGi [0x1002ad90] with a0=a0 at entry (arg0), a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1003cc68 targets 0x1003cc80, is taken when at(=[a2+8]) == 0, and falls through when at(=[a2+8]) != 0.
  The return at 0x1003cc88 has v0 = one of 0x1bcac, ret(redraw__19GammaMapEditorClassCGi).

- `__ct__18GainControlClassUIGPCc` in `usr/bin/X11/xsetmon` at 0x1003cc90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003cc90-0x1003ccd8 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x1003ccc8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1003ccb0 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1003ccd0 has v0 = a0.

- `CreateChannelFormClass__16ChannelFormClassSGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003cce0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003cce0-0x1003cd60 (128 bytes).
  It occupies 128 bytes.
  The `jalr` at 0x1003cd08 calls __nw__GUi with a0=0x108, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003cd30 calls __ct__16ChannelFormClassGPCcP10_WidgetRec [0x10037ad0] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x1003cd14 targets 0x1003cd4c, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x1003cd44 has v0 = ret(__nw__GUi).
  The return at 0x1003cd58 has v0 = 0x0.

- `allocGC__21GammaMapEditorClassUIGv` in `usr/bin/X11/xsetmon` at 0x1003cd60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003cd60-0x1003cf80 (544 bytes).
  It occupies 544 bytes.
  14 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0x1003cdb4, `lw` at 0x1003cdd0, `lw` at 0x1003cdf4.
  The `sw` at 0x1003cdd4 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  The `sw` at 0x1003ce38 stores 4 bytes to a0 (arg0 at entry) +0x40.
  The `sw` at 0x1003ce9c stores 4 bytes to a0 (arg0 at entry) +0x44.
  The `sw` at 0x1003cf00 stores 4 bytes to a0 (arg0 at entry) +0x48.
  The `sw` at 0x1003cf70 stores 4 bytes to a0 (arg0 at entry) +0x4c.
  The `jalr` at 0x1003cdb0 calls XtGetValues with a0=[a0+36], a1=sp-624, a2=0x2, a3=a3 at entry (arg3).
  The `jalr` at 0x1003cdcc calls XtGetGC with a0=[a0+36], a1=0x3c, a2=sp-720, a3=?.
  The `jalr` at 0x1003cdf0 calls XtGetValues with a0=[a0+36], a1=sp-584, a2=0x1, a3=?.
  The `jalr` at 0x1003ce18 calls VkGetResource__GP10_WidgetRecPCcN32 with a0=[a0+36], a1=0x10045bb0, a2=-0xd7, a3=-0x4a, a4=0x100516e8.
  The `jalr` at 0x1003ce30 calls XtGetGC with a0=[a0+36], a1=0x3c, a2=sp-544, a3=?.
  The `jalr` at 0x1003ce54 calls XtGetValues with a0=[a0+36], a1=sp-448, a2=0x1, a3=sp-396.
  The `jalr` at 0x1003ce7c calls VkGetResource__GP10_WidgetRecPCcN32 with a0=[a0+36], a1=0x10045bc0, a2=-0xd7, a3=-0x4a, a4=0x100516e8.
  The `jalr` at 0x1003ce94 calls XtGetGC with a0=[a0+36], a1=0x3c, a2=sp-408, a3=?.
  The `jalr` at 0x1003ceb8 calls XtGetValues with a0=[a0+36], a1=sp-312, a2=0x1, a3=sp-260.
  The `jalr` at 0x1003cee0 calls VkGetResource__GP10_WidgetRecPCcN32 with a0=[a0+36], a1=0x10045bd0, a2=-0xd7, a3=-0x4a, a4=0x100516e8.
  The `jalr` at 0x1003cef8 calls XtGetGC with a0=[a0+36], a1=0x3c, a2=sp-272, a3=?.
  The `jalr` at 0x1003cf1c calls XtGetValues with a0=[a0+36], a1=sp-176, a2=0x1, a3=sp-124.
  The `jalr` at 0x1003cf48 calls VkGetResource__GP10_WidgetRecPCcN32 with a0=[a0+36], a1=0x10045be0, a2=-0xd7, a3=-0x4a, a4=0x100516e8.
  The `jalr` at 0x1003cf60 calls XtGetGC with a0=[a0+36], a1=0x3c, a2=sp-136, a3=?.
  The return at 0x1003cf78 has v0 = ret(XtGetGC).

- `__ct__13ErrorMessagerGv` in `usr/bin/X11/xsetmon` at 0x1003cf80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003cf80-0x1003cfa4 (36 bytes).
  It occupies 36 bytes.
  The `lw` at 0x1003cf8c loads 4 bytes from abs 0x1005130c.
  The `lw` at 0x1003cf90 loads 4 bytes from abs 0x10051d48.
  The `sw` at 0x1003cf94 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sw` at 0x1003cfa0 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The return at 0x1003cf9c has v0 = a0.

- `DisplayfbDepth__19StatisticsFormClassGi` in `usr/bin/X11/xsetmon` at 0x1003cfb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003cfb0-0x1003d01c (108 bytes).
  It occupies 108 bytes.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1003cfc8, `lw` at 0x1003cff8.
  The `lw` at 0x1003cfcc loads 4 bytes from [sym(xsetmonApp)] +0xf4.
  The `lwc1` at 0x1003cfdc loads 4 bytes from [sym(xsetmonApp)] +0x100.
  The `sw` at 0x1003cff4 stores 4 bytes to [sym(xsetmonApp)] +0xf4.
  The `swc1` at 0x1003d008 stores 4 bytes to [sym(xsetmonApp)] +0x100.
  The `jal` at 0x1003d004 calls updateMemoUsageOdsy__19StatisticsFormClassGv [0x1002bd50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1b94c, a3=a3 at entry (arg3).
  The return at 0x1003d014 has v0 = ret(updateMemoUsageOdsy__19StatisticsFormClassGv).

- `doDownloadCombinationButton__27FormatCombinationListsClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1003d020 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003d020-0x1003d7b4 (1940 bytes).
  It occupies 1940 bytes.
  The `lw` at 0x1003d054 loads 4 bytes from a0 (arg0 at entry) +0x20.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1003d078, `lw` at 0x1003d0a0, `lw` at 0x1003d0b4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb0, including `lw` at 0x1003d07c, `lw` at 0x1003d170.
  The `lw` at 0x1003d090 loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `lw` at 0x1003d0a4 loads 4 bytes from a0 (arg0 at entry) +0xbc.
  15 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1003d184, `lw` at 0x1003d210, `lw` at 0x1003d230.
  3 such `lbu` accesses load 1 byte from [sym(xsetmonApp)] +0x84, including `lbu` at 0x1003d188, `lbu` at 0x1003d2d8, `lbu` at 0x1003d44c.
  2 such `lbu` accesses load 1 byte from [sym(xsetmonApp)] +0xcb, including `lbu` at 0x1003d194, `lbu` at 0x1003d4a0.
  The `lbu` at 0x1003d1a0 loads 1 byte from [sym(xsetmonApp)] +0xcc.
  The `sw` at 0x1003d1c0 stores 4 bytes to ret(getTheStereoDialog__Gv) +0x5c.
  The `lw` at 0x1003d1c4 loads 4 bytes from ret(getTheStereoDialog__Gv) +0x8.
  The `lw` at 0x1003d1d4 loads 4 bytes from [ret(getTheStereoDialog__Gv)+8] +0x110.
  The `lw` at 0x1003d1e0 loads 4 bytes from [ret(getTheStereoDialog__Gv)+8] +0x108.
  12 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x1003d218, `lw` at 0x1003d234, `lw` at 0x1003d284.
  9 such `lw` accesses load 4 bytes from [[sym(xsetmonApp)]+312] +0x84, including `lw` at 0x1003d224, `lw` at 0x1003d238, `lw` at 0x1003d288.
  6 such `lw` accesses load 4 bytes from [[sym(xsetmonApp)]+312] +0x8c, including `lw` at 0x1003d244, `lw` at 0x1003d290, `lw` at 0x1003d4bc.
  6 such `lw` accesses load 4 bytes from ([[[sym(xsetmonApp)]+312]+140] + ((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4)) +0x8, including `lw` at 0x1003d264, `lw` at 0x1003d2a4, `lw` at 0x1003d4d0.
  The `lw` at 0x1003d27c loads 4 bytes from ret(getTheStereoDialog__Gv) +0x54.
  The `sw` at 0x1003d320 stores 4 bytes to a0 (arg0 at entry) +0xf0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd4, including `lw` at 0x1003d324, `lw` at 0x1003d73c.
  The `sw` at 0x1003d330 stores 4 bytes to a0 (arg0 at entry) +0xf4.
  4 such `lw` accesses load 4 bytes from ret(getTheQuestionDialog__Gv) +0x8, including `lw` at 0x1003d34c, `lw` at 0x1003d460, `lw` at 0x1003d654.
  4 such `lw` accesses load 4 bytes from [ret(getTheQuestionDialog__Gv)+8] +0x110, including `lw` at 0x1003d35c, `lw` at 0x1003d470, `lw` at 0x1003d664.
  4 such `lw` accesses load 4 bytes from [ret(getTheQuestionDialog__Gv)+8] +0x108, including `lw` at 0x1003d368, `lw` at 0x1003d47c, `lw` at 0x1003d670.
  The `lw` at 0x1003d38c loads 4 bytes from [sym(xsetmonApp)] +0x8c.
  The `lw` at 0x1003d440 loads 4 bytes from [sym(xsetmonApp)] +0x90.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xf0, including `lw` at 0x1003d524, `lw` at 0x1003d5f8.
  The `lw` at 0x1003d568 loads 4 bytes from a0 (arg0 at entry) +0xf4.
  2 such `lw` accesses load 4 bytes from ret(getTheWarningDialog__Gv) +0x8, including `lw` at 0x1003d608, `lw` at 0x1003d704.
  2 such `lw` accesses load 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x110, including `lw` at 0x1003d618, `lw` at 0x1003d714.
  2 such `lw` accesses load 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x108, including `lw` at 0x1003d624, `lw` at 0x1003d720.
  The `jalr` at 0x1003d050 calls XmListGetSelectedPos with a0=[a0+32], a1=sp-128, a2=sp-124, a3=a3 at entry (arg3).
  The `jalr` at 0x1003d0c4 calls VkGetResource__GPCcT1 with a0=0x10044940, a1=0x10044940, a2=?, a3=?.
  The `jalr` at 0x1003d0d4 calls strlen with a0=ret(VkGetResource__GPCcT1), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d0e4 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d0f4 calls __nwa__GUi with a0=(ret(strlen) + ret(strlen))+10, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d10c calls sprintf with a0=ret(__nwa__GUi), a1=ret(VkGetResource__GPCcT1), a2=?, a3=?.
  The `jalr` at 0x1003d120 calls VkGetResource__GPCcT1 with a0=0x10044958, a1=0x10044958, a2=?, a3=?.
  The `jalr` at 0x1003d130 calls strlen with a0=ret(VkGetResource__GPCcT1), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d140 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d150 calls __nwa__GUi with a0=(ret(strlen) + ret(strlen))+10, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d168 calls sprintf with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jal` at 0x1003d1b0 calls getTheStereoDialog__Gv [0x10024dd0] with a0=0x1, a1=?, a2=[[sym(xsetmonApp)]+132]:1, a3=[[sym(xsetmonApp)]+203]:1, a4=[[sym(xsetmonApp)]+204]:1, a7=[sym(xsetmonApp)].
  The `jal` at 0x1003d1bc calls getTheStereoDialog__Gv [0x10024dd0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d1ec calls (unknown callee) with a0=([[ret(getTheStereoDialog__Gv)+8]+264] + ret(getTheStereoDialog__Gv)), a1=0x0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1003d220 calls XSGIvcLoadVideoFormatCombination with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=?, a3=?, a7=[sym(xsetmonApp)].
  The `jalr` at 0x1003d260 calls XSGISetStereoMode with a0=[[sym(xsetmonApp)]+312], a1=[([[[sym(xsetmonApp)]+312]+140] + ((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4))+8], a2=0x0, a3=0x0, a4=0x0, a5=((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4), a6=[[[sym(xsetmonApp)]+312]+132], a7=[sym(xsetmonApp)].
  The `jal` at 0x1003d26c calls getTheStereoDialog__Gv [0x10024dd0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d278 calls XmToggleButtonGetState with a0=[ret(getTheStereoDialog__Gv)+84], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d2b4 calls XSGISetStereoMode with a0=[[sym(xsetmonApp)]+312], a1=[([[[sym(xsetmonApp)]+312]+140] + ((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4))+8], a2=0x1ec, a3=0x214, a4=0x2.
  The `jalr` at 0x1003d2cc calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d2f0 calls VkGetResource__GPCcT1 with a0=0x10044978, a1=0x10044978, a2=?, a3=?.
  The `jal` at 0x1003d30c calls WaitForVerifyDisplayMode__27FormatCombinationListsClassGPc [0x10027530] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d344 calls getTheQuestionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d374 calls (unknown callee) with a0=([[ret(getTheQuestionDialog__Gv)+8]+264] + ret(getTheQuestionDialog__Gv)), a1=ret(__nwa__GUi), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x1003d3b4 calls checkPriv__7xsetmonGv [0x10041490] with a0=[sym(xsetmonApp)], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d3d0 calls XSGIvcNVLoadVideoFormatCombination with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=?, a3=?.
  The `jalr` at 0x1003d3e4 calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d3f8 calls XtFree with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d404 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d410 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d458 calls getTheQuestionDialog__Gv with a0=one of 0x0, 0x1, a1=?, a2=[[sym(xsetmonApp)]+132]:1, a3=?, a7=[sym(xsetmonApp)].
  The `jalr` at 0x1003d488 calls (unknown callee) with a0=([[ret(getTheQuestionDialog__Gv)+8]+264] + ret(getTheQuestionDialog__Gv)), a1=ret(__nwa__GUi), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1003d4cc calls XSGIQueryStereoMode with a0=[[sym(xsetmonApp)]+312], a1=[([[[sym(xsetmonApp)]+312]+140] + ((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4))+8], a2=((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4), a3=[[[sym(xsetmonApp)]+312]+132], a7=[sym(xsetmonApp)].
  The `jalr` at 0x1003d508 calls XSGISetStereoMode with a0=[[sym(xsetmonApp)]+312], a1=[([[[sym(xsetmonApp)]+312]+140] + ((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4))+8], a2=0x0, a3=0x0, a4=0x0, a5=((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4), a6=[[[sym(xsetmonApp)]+312]+132].
  The `jalr` at 0x1003d528 calls XSGIvcLoadVideoFormatCombination with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[a0+240], a3=?.
  The `jalr` at 0x1003d560 calls XSGISetStereoMode with a0=[[sym(xsetmonApp)]+312], a1=[([[[sym(xsetmonApp)]+312]+140] + ((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4))+8], a2=0x0, a3=0x0, a4=0x0, a5=((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4), a6=[[[sym(xsetmonApp)]+312]+132].
  The `jalr` at 0x1003d5a0 calls XSGISetStereoMode with a0=[[sym(xsetmonApp)]+312], a1=[([[[sym(xsetmonApp)]+312]+140] + ((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4))+8], a2=0x1ec, a3=0x214, a4=[a0+244], a5=((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4), a6=[[[sym(xsetmonApp)]+312]+132].
  The `jalr` at 0x1003d5b0 calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d5d4 calls VkGetResource__GPCcT1 with a0=0x100449b8, a1=0x100449b8, a2=0x2, a3=?.
  The `jalr` at 0x1003d5f4 calls sprintf with a0=ret(__nwa__GUi), a1=?, a2=[a0+240], a3=?.
  The `jalr` at 0x1003d600 calls getTheWarningDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d630 calls (unknown callee) with a0=([[ret(getTheWarningDialog__Gv)+8]+264] + ret(getTheWarningDialog__Gv)), a1=ret(__nwa__GUi), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1003d64c calls getTheQuestionDialog__Gv with a0=0x1, a1=?, a2=[[sym(xsetmonApp)]+132]:1, a3=[[sym(xsetmonApp)]+203]:1, a7=[sym(xsetmonApp)].
  The `jalr` at 0x1003d67c calls (unknown callee) with a0=([[ret(getTheQuestionDialog__Gv)+8]+264] + ret(getTheQuestionDialog__Gv)), a1=ret(__nwa__GUi), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1003d6c8 calls XSGISetStereoMode with a0=[[sym(xsetmonApp)]+312], a1=[([[[sym(xsetmonApp)]+312]+140] + ((([[[sym(xsetmonApp)]+312]+132] << 0x2) + [[[sym(xsetmonApp)]+312]+132]) << 0x4))+8], a2=0x1ec, a3=0x214, a4=0x1.
  The `jalr` at 0x1003d6e4 calls getTheWarningDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d6fc calls VkGetResource__GPCcT1 with a0=0x100449f8, a1=0x100449f8, a2=?, a3=?.
  The `jalr` at 0x1003d72c calls (unknown callee) with a0=([[ret(getTheWarningDialog__Gv)+8]+264] + ret(getTheWarningDialog__Gv)), a1=ret(VkGetResource__GPCcT1), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1003d754 calls getTheQuestionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d784 calls (unknown callee) with a0=([[ret(getTheQuestionDialog__Gv)+8]+264] + ret(getTheQuestionDialog__Gv)), a1=ret(__nwa__GUi), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `beq` branch at 0x1003d06c targets 0x1003d418, is taken when (v0(=ret(XmListGetSelectedPos)) & 0xff) == 0, and falls through when (v0(=ret(XmListGetSelectedPos)) & 0xff) != 0.
  The `beq` branch at 0x1003d088 targets 0x1003d0a4, is taken when s3(?) >= v0(=[a0+176]) (signed), and falls through when s3(?) < v0(=[a0+176]) (signed).
  The `beq` branch at 0x1003d09c targets 0x1003d0b8 and is always taken.
  The `beq` branch at 0x1003d180 targets 0x1003d38c, is taken when s3(?) >= a1(=[a0+176]) (signed), and falls through when s3(?) < a1(=[a0+176]) (signed).
  The `beq` branch at 0x1003d18c targets 0x1003d6a0, is taken when a2(=[[sym(xsetmonApp)]+132]:1) == 0, and falls through when a2(=[[sym(xsetmonApp)]+132]:1) != 0.
  The `beq` branch at 0x1003d198 targets 0x1003d64c, is taken when a3(=[[sym(xsetmonApp)]+203]:1) == 0, and falls through when a3(=[[sym(xsetmonApp)]+203]:1) != 0.
  The `beq` branch at 0x1003d1a4 targets 0x1003d64c, is taken when a4(=[[sym(xsetmonApp)]+204]:1) == 0, and falls through when a4(=[[sym(xsetmonApp)]+204]:1) != 0.
  The `beq` branch at 0x1003d1f4 targets 0x1003d6b4, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x1003d22c targets 0x1003d4a0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1003d2a0 targets 0x1003d6bc, is taken when v0(=ret(XmToggleButtonGetState)) == 0, and falls through when v0(=ret(XmToggleButtonGetState)) != 0.
  The `beq` branch at 0x1003d2dc targets 0x1003d3a8, is taken when a1(=[[sym(xsetmonApp)]+132]:1) == 0, and falls through when a1(=[[sym(xsetmonApp)]+132]:1) != 0.
  The `bne` branch at 0x1003d2f8 targets 0x1003d308, is taken when v0(=ret(VkGetResource__GPCcT1)) != 0, and falls through when v0(=ret(VkGetResource__GPCcT1)) == 0.
  The `bne` branch at 0x1003d318 targets 0x1003d518, is taken when v0(=ret(WaitForVerifyDisplayMode__27FormatCombinationListsClassGPc)) != 0, and falls through when v0(=ret(WaitForVerifyDisplayMode__27FormatCombinationListsClassGPc)) == 0.
  The `beq` branch at 0x1003d33c targets 0x1003d3a8, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x1003d37c targets 0x1003d3b4, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0x1003d384 targets 0x1003d3a8 and is always taken.
  The `beq` branch at 0x1003d394 targets 0x1003d44c, is taken when v0(=[[sym(xsetmonApp)]+140]) >= 0x2 (signed), and falls through when v0(=[[sym(xsetmonApp)]+140]) < 0x2 (signed).
  The `beq` branch at 0x1003d39c targets 0x1003d440, is taken when v0(=[[sym(xsetmonApp)]+140]) == a0(=0x1), and falls through when v0(=[[sym(xsetmonApp)]+140]) != a0(=0x1).
  The `beq` branch at 0x1003d3a8 targets 0x1003d3f8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1003d3bc targets 0x1003d3f4, is taken when v0(=ret(checkPriv__7xsetmonGv)) == 0, and falls through when v0(=ret(checkPriv__7xsetmonGv)) != 0.
  The `beq` branch at 0x1003d3ec targets 0x1003d6e4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `blez` branch at 0x1003d444 targets 0x1003d3a4, is taken when a1(=[[sym(xsetmonApp)]+144]) <= 0 (signed), and falls through when a1(=[[sym(xsetmonApp)]+144]) > 0 (signed).
  The `beq` branch at 0x1003d450 targets 0x1003d640, is taken when a2(=[[sym(xsetmonApp)]+132]:1) == 0, and falls through when a2(=[[sym(xsetmonApp)]+132]:1) != 0.
  The `beq` branch at 0x1003d490 targets 0x1003d6dc, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x1003d498 targets 0x1003d3a4 and is always taken.
  The `beq` branch at 0x1003d4a4 targets 0x1003d510, is taken when a1(=[[sym(xsetmonApp)]+203]:1) == 0, and falls through when a1(=[[sym(xsetmonApp)]+203]:1) != 0.
  The `beq` branch at 0x1003d4d4 targets 0x1003d510, is taken when v0(=ret(XSGIQueryStereoMode)) == 0, and falls through when v0(=ret(XSGIQueryStereoMode)) != 0.
  The `beq` branch at 0x1003d510 targets 0x1003d2c4 and is always taken.
  The `beq` branch at 0x1003d56c targets 0x1003d5ac, is taken when a4(=[a0+244]) == 0, and falls through when a4(=[a0+244]) != 0.
  The `bne` branch at 0x1003d5c0 targets 0x1003d3f8, is taken when a1(?) != a2(=0x2), and falls through when a1(?) == a2(=0x2).
  The `bne` branch at 0x1003d5dc targets 0x1003d5ec, is taken when v0(=ret(VkGetResource__GPCcT1)) != 0, and falls through when v0(=ret(VkGetResource__GPCcT1)) == 0.
  The `beq` branch at 0x1003d638 targets 0x1003d3f8 and is always taken.
  The `beq` branch at 0x1003d640 targets 0x1003d3a4 and is always taken.
  The `beq` branch at 0x1003d684 targets 0x1003d73c, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x1003d698 targets 0x1003d214 and is always taken.
  The `beq` branch at 0x1003d6ac targets 0x1003d214 and is always taken.
  The `beq` branch at 0x1003d6b4 targets 0x1003d3a8 and is always taken.
  The `beq` branch at 0x1003d6d4 targets 0x1003d2c4 and is always taken.
  The `beq` branch at 0x1003d6dc targets 0x1003d3a8 and is always taken.
  The `beq` branch at 0x1003d734 targets 0x1003d3f8 and is always taken.
  The `beq` branch at 0x1003d74c targets 0x1003d7a4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1003d78c targets 0x1003d7ac, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x1003d79c targets 0x1003d3a8 and is always taken.
  The `beq` branch at 0x1003d7a4 targets 0x1003d798 and is always taken.
  The `beq` branch at 0x1003d7ac targets 0x1003d798 and is always taken.
  The return at 0x1003d438 has v0 = one of ?, ret(__dla__GPv).
  The instructions from 0x1003d648 to 0x1003d648 are not reached by any path from the entry, and their branches are not listed.

- `DisplayFormat__21SetmonMasterFormClassGPC21XSGIvcVideoFormatInfo` in `usr/bin/X11/xsetmon` at 0x1003d7c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003d7c0-0x1003d7f4 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x1003d7e0 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jal` at 0x1003d7dc calls DisplayFormat__19StatisticsFormClassGPC21XSGIvcVideoFormatInfo [0x10023f10] with a0=[a0+40], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1003d7ec has v0 = ret(DisplayFormat__19StatisticsFormClassGPC21XSGIvcVideoFormatInfo).

- `ClearaccumBufType__19StatisticsFormClassGv` in `usr/bin/X11/xsetmon` at 0x1003d800 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003d800-0x1003d8c0 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0x1003d828 loads 4 bytes from a0 (arg0 at entry) +0x104.
  The `lw` at 0x1003d844 loads 4 bytes from a0 (arg0 at entry) +0x114.
  The `lw` at 0x1003d860 loads 4 bytes from a0 (arg0 at entry) +0x10c.
  The `lw` at 0x1003d87c loads 4 bytes from a0 (arg0 at entry) +0x11c.
  The `lw` at 0x1003d898 loads 4 bytes from a0 (arg0 at entry) +0x124.
  The `jal` at 0x1003d824 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+260], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003d834 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cbc], a2=?, a3=?.
  The `jal` at 0x1003d840 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+276], a1=?, a2=?, a3=?.
  The `jal` at 0x1003d850 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cbc], a2=?, a3=?.
  The `jal` at 0x1003d85c calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+268], a1=?, a2=?, a3=?.
  The `jal` at 0x1003d86c calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cbc], a2=?, a3=?.
  The `jal` at 0x1003d878 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+284], a1=?, a2=?, a3=?.
  The `jal` at 0x1003d888 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cbc], a2=?, a3=?.
  The `jal` at 0x1003d894 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+292], a1=?, a2=?, a3=?.
  The `jal` at 0x1003d8a8 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cbc], a2=?, a3=?.
  The return at 0x1003d8b8 has v0 = ret(__as__9EZWrapperGPCc).

- `doOptionVideoVoltageCallback__21ServerInfoFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x1003d8c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003d8c0-0x1003d904 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1003d8c4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1003d8d0 loads 4 bytes from [a1+8] +0xc0.
  The `lw` at 0x1003d8dc loads 4 bytes from [a1+8] +0xc8.
  The `jalr` at 0x1003d8ec calls (unknown callee) with a0=([[a1+8]+192] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1b03c.
  The return at 0x1003d8fc has v0 = ret(?).

- `RegisterCombinationContentsListClassInterface__28CombinationContentsListClassSGv` in `usr/bin/X11/xsetmon` at 0x1003d910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003d910-0x1003d928 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1003d91c loads 4 bytes from abs 0x10050950.
  The return at 0x1003d920 has v0 = 0x1004ccd0.

- `createDialog__16AboutDialogClassGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003d930 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003d930-0x1003da10 (224 bytes).
  It occupies 224 bytes.
  The `sw` at 0x1003d9b8 stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `lw` at 0x1003d9dc loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lw` at 0x1003d9e0 loads 4 bytes from [a0+84] +0x8.
  The `lw` at 0x1003d9e4 loads 4 bytes from [[a0+84]+8] +0x2c.
  The `lw` at 0x1003d9e8 loads 4 bytes from [[a0+84]+8] +0x24.
  The `jalr` at 0x1003d958 calls createDialog__15VkGenericDialogGP10_WidgetRec with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1003d96c calls __nw__GUi with a0=0x30, a1=?, a2=?, a3=?.
  The `jal` at 0x1003d998 calls __ct__21AboutXsetmonFormClassGPCcP10_WidgetRec [0x10028cb0] with a0=ret(__nw__GUi), a1=0x10043e98, a2=ret(createDialog__15VkGenericDialogGP10_WidgetRec), a3=?.
  The `jalr` at 0x1003d9b4 calls baseWidget__11VkComponentCGv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d9d4 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x17, a2=0x1b8, a3=-0x16, a4=0xaa, a5=0x0.
  The `jalr` at 0x1003d9ec calls (unknown callee) with a0=([[[a0+84]+8]+36] + [a0+84]), a1=[a0+84], a2=?, a3=?.
  The `beq` branch at 0x1003d978 targets 0x1003d9b0, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1003d9a8 targets 0x1003d9b4 and is always taken.
  The return at 0x1003da08 has v0 = ret(createDialog__15VkGenericDialogGP10_WidgetRec).

- `create__23AboutXsetmonFormClassUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003da10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003da10-0x1003dc30 (544 bytes).
  It occupies 544 bytes.
  The `lw` at 0x1003da58 loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from sym(xmFormWidgetClass) +0x0, including `lw` at 0x1003da64, `lw` at 0x1003db74.
  The `sw` at 0x1003da70 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x1003da7c stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `lw` at 0x1003da84 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x1003da88 loads 4 bytes from sym(xmFrameWidgetClass) +0x0.
  The `sw` at 0x1003db54 stores 4 bytes to a0 (arg0 at entry) +0x28.
  The `sw` at 0x1003db94 stores 4 bytes to a0 (arg0 at entry) +0x24.
  The `lw` at 0x1003db98 loads 4 bytes from sym(xmLabelWidgetClass) +0x0.
  The `sw` at 0x1003dc20 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `jalr` at 0x1003da3c calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultAboutXsetmonFormClassUIResources__23AboutXsetmonFormClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x1003da60 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=-0xd1, a4=0x1, a5=0x0.
  The `jalr` at 0x1003da78 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003db4c calls XtVaCreateManagedWidget with a0=0x10051480, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1003db88 calls XtVaCreateManagedWidget with a0=0x10051488, a1=[sym(xmFormWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0xd1, a4=0x1, a5=-0x17, a6=0x1a8, a7=-0x16.
  The `jalr` at 0x1003dc10 calls XtVaCreateManagedWidget with a0=0x10051490, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The return at 0x1003dc28 has v0 = ret(XtVaCreateManagedWidget).

- `multLeft__7MMatrixGRC7MMatrix` in `usr/bin/X11/xsetmon` at 0x1003dc30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003dc30-0x1003debc (652 bytes).
  It occupies 652 bytes.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x1003dcbc, `lw` at 0x1003dcfc, `lw` at 0x1003dde8.
  6 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x1003dcc0, `lw` at 0x1003dcf4, `lw` at 0x1003dd30.
  2 such `lw` accesses load 4 bytes from [a0] +0x0, including `lw` at 0x1003dcc4, `lw` at 0x1003dd0c.
  4 such `lw` accesses load 4 bytes from [a1] +0x4, including `lw` at 0x1003dcc8, `lw` at 0x1003dd00, `lw` at 0x1003dd78.
  2 such `lw` accesses load 4 bytes from [a1] +0x0, including `lw` at 0x1003dd38, `lw` at 0x1003de00.
  The `lw` at 0x1003dd48 loads 4 bytes from ?.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x1003dd70, `swc1` at 0x1003ddcc.
  2 such `lwc1` accesses load 4 bytes from ret(0x1002d620) +0x0, including `lwc1` at 0x1003ddb8, `lwc1` at 0x1003ddbc.
  The `lwc1` at 0x1003ddc0 loads 4 bytes from ?.
  2 such `lw` accesses load 4 bytes from [a0] +0x4, including `lw` at 0x1003ddec, `lw` at 0x1003de2c.
  The `sw` at 0x1003de8c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x1003dc5c calls bIsIdentity__7MMatrixCGv [0x1002ac70] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003dc88 calls bIsIdentity__7MMatrixCGv [0x1002ac70] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1003dc9c calls __as__7MMatrixGRC7MMatrix [0x10033fc0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x1003dcdc calls __nw__GUi with a0=0x10, a1=?, a2=?, a3=?.
  The `jal` at 0x1003dd08 calls __ct__9MMdtArrayGiT1 [0x1002d5c0] with a0=ret(__nw__GUi), a1=[[a0]], a2=[[a1]+4], a3=?.
  The `jal` at 0x1003dd98 calls (unnamed) [0x1002d620] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1003ddb0 calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1003de20 calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=?.
  The `jal` at 0x1003de54 calls __dt__9MMdtArrayGv [0x100340b0] with a0=[a0], a1=0x3, a2=?, a3=?.
  The `jalr` at 0x1003deac calls __assert with a0=0x10049528, a1=0x100494a0, a2=0xb6, a3=?.
  The `beq` branch at 0x1003dc64 targets 0x1003dc88, is taken when v0(=ret(bIsIdentity__7MMatrixCGv)) == 0, and falls through when v0(=ret(bIsIdentity__7MMatrixCGv)) != 0.
  The `beq` branch at 0x1003dc90 targets 0x1003dcbc, is taken when v0(=ret(bIsIdentity__7MMatrixCGv)) == 0, and falls through when v0(=ret(bIsIdentity__7MMatrixCGv)) != 0.
  The `bne` branch at 0x1003dccc targets 0x1003de9c, is taken when v0(=[[a0]]) != v1(=[[a1]+4]), and falls through when v0(=[[a0]]) == v1(=[[a1]+4]).
  The `beq` branch at 0x1003dce4 targets 0x1003dd24, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1003dd1c targets 0x1003dd2c and is always taken.
  The `blez` branch at 0x1003dd44 targets 0x1003de40, is taken when a4(=[[a1]]) <= 0 (signed), and falls through when a4(=[[a1]]) > 0 (signed).
  The `beq` branch at 0x1003dd64 targets 0x1003de14 and is always taken.
  The `blez` branch at 0x1003dd7c targets 0x1003dde8, is taken when t8(=[[a1]+4]) <= 0 (signed), and falls through when t8(=[[a1]+4]) > 0 (signed).
  The `bne` branch at 0x1003dde0 targets 0x1003dd90, is taken when s0(?) < t9(=[[a1]+4]) (signed), and falls through when s0(?) >= t9(=[[a1]+4]) (signed).
  The `bne` branch at 0x1003ddf8 targets 0x1003dd70, is taken when s5(?) < ra(=[[a0]+4]) (signed), and falls through when s5(?) >= ra(=[[a0]+4]) (signed).
  The `beq` branch at 0x1003de0c targets 0x1003de54, is taken when s7(?) >= at(=[[a1]]) (signed), and falls through when s7(?) < at(=[[a1]]) (signed).
  The `bgtz` branch at 0x1003de30 targets 0x1003dd70, is taken when v0(=[[a0]+4]) > 0 (signed), and falls through when v0(=[[a0]+4]) <= 0 (signed).
  The `beq` branch at 0x1003de38 targets 0x1003de00 and is always taken.
  The `beq` branch at 0x1003deb4 targets 0x1003dcd8 and is always taken.
  The return at 0x1003dc80 has v0 = a0.
  The return at 0x1003dcb4 has v0 = ret(__as__7MMatrixGRC7MMatrix).
  The return at 0x1003de94 has v0 = a0.
  The instructions from 0x1003dd6c to 0x1003dd6c are not reached by any path from the entry, and their branches are not listed.

- `RegisterChannelFormClassInterface__16ChannelFormClassSGv` in `usr/bin/X11/xsetmon` at 0x1003dec0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003dec0-0x1003ded8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1003decc loads 4 bytes from abs 0x10050950.
  The return at 0x1003ded0 has v0 = 0x1004c940.

- `CreateServerInfoFormClass__19ServerInfoFormClassSGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003dee0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003dee0-0x1003df60 (128 bytes).
  It occupies 128 bytes.
  The `jalr` at 0x1003df08 calls __nw__GUi with a0=0x7c, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003df30 calls __ct__19ServerInfoFormClassGPCcP10_WidgetRec [0x10042400] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x1003df14 targets 0x1003df4c, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x1003df44 has v0 = ret(__nw__GUi).
  The return at 0x1003df58 has v0 = 0x0.

- `getTheTargetPromptDialog__Gv` in `usr/bin/X11/xsetmon` at 0x1003df60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003df60-0x1003dfe8 (136 bytes).
  It occupies 136 bytes.
  The `jalr` at 0x1003df94 calls __nw__GUi with a0=0x60, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003dfd4 calls (unnamed) [0x10027050] with a0=ret(__nw__GUi), a1=0x10048fc0, a2=?, a3=?.
  The `beq` branch at 0x1003df78 targets 0x1003df8c, is taken when v0(=[0x10051e20]) == 0, and falls through when v0(=[0x10051e20]) != 0.
  The `bne` branch at 0x1003df9c targets 0x1003dfbc, is taken when v0(=ret(__nw__GUi)) != 0, and falls through when v0(=ret(__nw__GUi)) == 0.
  The `beq` branch at 0x1003dfe0 targets 0x1003dfac and is always taken.
  The return at 0x1003df84 has v0 = [0x10051e20].
  The return at 0x1003dfb4 has v0 = one of 0x0, ret(__nw__GUi).

- `loadSettingsFile__21MasterTabbedDeckClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1003dff0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003dff0-0x1003e02c (60 bytes).
  It occupies 60 bytes.
  The `jal` at 0x1003e014 calls VkUnimplemented__GP10_WidgetRecPCc [0x10042a40] with a0=0x0, a1=0x10045e50, a2=0x1a90c, a3=a3 at entry (arg3).
  The return at 0x1003e024 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doFinishRegionDrag__21GammaMapEditorClassUIGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x1003e030 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003e030-0x1003e038 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1003e030 has v0 = ?.

- `doOptionSyncSourceInternal__21ServerInfoFormClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1003e040 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003e040-0x1003e048 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1003e040 has v0 = ?.

- `doOptionSyncSourceInternalCallback__21ServerInfoFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x1003e050 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003e050-0x1003e094 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1003e054 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1003e060 loads 4 bytes from [a1+8] +0xa8.
  The `lw` at 0x1003e06c loads 4 bytes from [a1+8] +0xb0.
  The `jalr` at 0x1003e07c calls (unknown callee) with a0=([[a1+8]+168] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1a8ac.
  The return at 0x1003e08c has v0 = ret(?).

- `doSetGainCallback__18GainControlClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1003e0a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003e0a0-0x1003e0a8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1003e0a0 has v0 = ?.

- `postErrorMessage__22ScrollingErrorMessagerGP9strstream` in `usr/bin/X11/xsetmon` at 0x1003e0b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003e0b0-0x1003e110 (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0x1003e0d4 calls str__9strstreamGv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003e0e8 calls appendText__22ScrollingErrorMessagerGPc [0x10027c70] with a0=a0 at entry (arg0), a1=ret(str__9strstreamGv), a2=?, a3=?.
  The `jalr` at 0x1003e0f8 calls __dl__GPv with a0=ret(str__9strstreamGv), a1=?, a2=?, a3=?.
  The return at 0x1003e108 has v0 = ret(__dl__GPv).

- `doDownloadCombinationButtonCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x1003e110 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003e110-0x1003e154 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1003e114 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1003e120 loads 4 bytes from [a1+8] +0xa8.
  The `lw` at 0x1003e12c loads 4 bytes from [a1+8] +0xb0.
  The `jalr` at 0x1003e13c calls (unknown callee) with a0=([[a1+8]+168] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1a7ec.
  The return at 0x1003e14c has v0 = ret(?).

- `__dt__18GainControlClassUIGv` in `usr/bin/X11/xsetmon` at 0x1003e160 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003e160-0x1003e1cc (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x1003e190 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1003e198 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003e1b4 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1003e180 targets 0x1003e1bc, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1003e1a8 targets 0x1003e1c0, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x1003e1c4 has v0 = one of ret(__dt__11VkComponentGv), ?.

- `doButtonQueryBest__18ChannelFormClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1003e1d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003e1d0-0x1003e1d8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1003e1d0 has v0 = ?.

- `populateVPhaseWithChannel__16ChannelFormClassGiPC17XSGIvcChannelInfo` in `usr/bin/X11/xsetmon` at 0x1003e1e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003e1e0-0x1003e2f4 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0x1003e1f0 loads 4 bytes from a2 (arg2 at entry) +0x170.
  The `lw` at 0x1003e218 loads 4 bytes from a2 (arg2 at entry) +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lw` at 0x1003e228, `lw` at 0x1003e278, `lw` at 0x1003e2e8.
  The `lw` at 0x1003e230 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x1003e238 loads 4 bytes from [sym(xsetmonApp)] +0x138.
  The `lw` at 0x1003e248 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `lw` at 0x1003e254 loads 4 bytes from a2 (arg2 at entry) +0x178.
  The `lw` at 0x1003e260 loads 4 bytes from a2 (arg2 at entry) +0x174.
  The `jalr` at 0x1003e224 calls XtManageChild with a0=[a0+168], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1003e244 calls XSGIvcQueryOutputPhaseV with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=a1 at entry (arg1), a3=sp-48.
  The `jalr` at 0x1003e274 calls XtVaSetValues with a0=[a0+168], a1=-0x8, a2=?, a3=-0x18, a4=[a2+372], a5=-0xd, a6=[a2+376], a7=0x0.
  The `jalr` at 0x1003e2a0 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10043fc0, a2=?, a3=?.
  The `jalr` at 0x1003e2b0 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x1003e2c0 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x10051498, a2=?, a3=?.
  The `jalr` at 0x1003e2cc calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003e2d8 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003e2e4 calls XtUnmanageChild with a0=[a0+168], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1003e210 targets 0x1003e2e0, is taken when at(=[a2+368]) == 0, and falls through when at(=[a2+368]) != 0.
  The `beq` branch at 0x1003e21c targets 0x1003e2e0, is taken when v1(=[a2]) == 0, and falls through when v1(=[a2]) != 0.
  The `beq` branch at 0x1003e24c targets 0x1003e298, is taken when v0(=ret(XSGIvcQueryOutputPhaseV)) == 0, and falls through when v0(=ret(XSGIvcQueryOutputPhaseV)) != 0.
  The `beq` branch at 0x1003e2ec targets 0x1003e280 and is always taken.
  The return at 0x1003e290 has v0 = one of ret(XtVaSetValues), ret(XtUnmanageChild).

- `vCheckCommandLine__GP7xsetmonPiPPc` in `usr/bin/X11/xsetmon` at 0x1003e300 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003e300-0x1003e578 (632 bytes).
  It occupies 632 bytes.
  The `lw` at 0x1003e30c loads 4 bytes from a1 (arg1 at entry) +0x0.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1003e360, `lw` at 0x1003e37c, `lw` at 0x1003e388.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1003e40c, `lbu` at 0x1003e490, `lbu` at 0x1003e4ac.
  The `sb` at 0x1003e420 stores 1 byte to ?.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1003e430, `sw` at 0x1003e538.
  The `sb` at 0x1003e49c stores 1 byte to a0 (arg0 at entry) +0x84.
  The `jalr` at 0x1003e364 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003e384 calls strncmp with a0=?, a1=?, a2=ret(strlen), a3=?.
  The `jalr` at 0x1003e3a8 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10049128, a2=?, a3=?.
  The `jalr` at 0x1003e3b8 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003e3c4 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jal` at 0x1003e3d8 calls (unnamed) [0x10028e80] with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1003e3ec calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10049118, a2=?, a3=?.
  The `jalr` at 0x1003e3f8 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003e404 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003e440 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=?.
  The `jalr` at 0x1003e4c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003e4e0 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10049118, a2=?, a3=?.
  The `jalr` at 0x1003e4ec calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003e4f8 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1003e544 calls (unnamed) [0x10028e80] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003e558 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10049118, a2=?, a3=?.
  The `jalr` at 0x1003e564 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003e570 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `blez` branch at 0x1003e334 targets 0x1003e464, is taken when s4(=[a1]-1) <= 0 (signed), and falls through when s4(=[a1]-1) > 0 (signed).
  The `beq` branch at 0x1003e38c targets 0x1003e40c, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `bne` branch at 0x1003e394 targets 0x1003e378, is taken when s2(?) != s5(=0x6), and falls through when s2(?) == s5(=0x6).
  The `beq` branch at 0x1003e41c targets 0x1003e534, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1003e438 targets 0x1003e454, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x1003e44c targets 0x1003e53c, is taken when (v0(=ret(?)) & 0xff) == 0, and falls through when (v0(=ret(?)) & 0xff) != 0.
  The `bgtz` branch at 0x1003e454 targets 0x1003e360, is taken when s4(?) > 0 (signed), and falls through when s4(?) <= 0 (signed).
  The `beq` branch at 0x1003e45c targets 0x1003e488 and is always taken.
  The `beq` branch at 0x1003e488 targets 0x1003e4ac and is always taken.
  The `beq` branch at 0x1003e494 targets 0x1003e4a0, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x1003e4a4 targets 0x1003e500, is taken when s1(?) == s5(=0x6), and falls through when s1(?) != s5(=0x6).
  The `beq` branch at 0x1003e4b0 targets 0x1003e4a0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x1003e4bc targets 0x1003e4a0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x1003e4d0 targets 0x1003e490, is taken when (v0(=ret(?)) & 0xff) != 0, and falls through when (v0(=ret(?)) & 0xff) == 0.
  The `beq` branch at 0x1003e534 targets 0x1003e434 and is always taken.
  The return at 0x1003e52c has v0 = one of ?, ret(exit).

- `formatSelected__27FormatCombinationListsClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1003e6d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003e6d0-0x1003e7d0 (256 bytes).
  It occupies 256 bytes.
  The `lw` at 0x1003e6f0 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0x1003e714 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x1003e720 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0x1003e724 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lw` at 0x1003e728 loads 4 bytes from a0 (arg0 at entry) +0xc4.
  The `lw` at 0x1003e73c loads 4 bytes from a0 (arg0 at entry) +0xc0.
  The `lw` at 0x1003e768 loads 4 bytes from a0 (arg0 at entry) +0xc8.
  The `sw` at 0x1003e77c stores 4 bytes to a0 (arg0 at entry) +0x9c.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1003e780, `lw` at 0x1003e79c.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x130, including `lw` at 0x1003e784, `lw` at 0x1003e7a0.
  2 such `lw` accesses load 4 bytes from [[sym(xsetmonApp)]+304] +0x44, including `lw` at 0x1003e78c, `lw` at 0x1003e7a8.
  2 such `lw` accesses load 4 bytes from [[[sym(xsetmonApp)]+304]+68] +0x2c, including `lw` at 0x1003e794, `lw` at 0x1003e7b8.
  The `jalr` at 0x1003e700 calls XtSetSensitive with a0=[a0+116], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1003e710 calls XtSetSensitive with a0=[a0+120], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1003e71c calls XmListDeselectAllItems with a0=[a0+32], a1=?, a2=?, a3=?.
  The `jal` at 0x1003e790 calls DeleteCombination__21SetmonMasterFormClassGv [0x10033aa0] with a0=[[[[sym(xsetmonApp)]+304]+68]+44], a1=[a2+16]-1, a2=[a0+196], a3=?.
  The `jal` at 0x1003e7b4 calls DisplayFormat__21SetmonMasterFormClassGPC21XSGIvcVideoFormatInfo [0x1003d7c0] with a0=[[[[sym(xsetmonApp)]+304]+68]+44], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1003e740 targets 0x1003e75c, is taken when a1(=[a2+16]-1) >= a2(=[a0+196]) (signed), and falls through when a1(=[a2+16]-1) < a2(=[a0+196]) (signed).
  The `beq` branch at 0x1003e754 targets 0x1003e778 and is always taken.
  The return at 0x1003e7c8 has v0 = ret(DisplayFormat__21SetmonMasterFormClassGPC21XSGIvcVideoFormatInfo).

- `__ct__27FormatCombinationListsClassGPCc` in `usr/bin/X11/xsetmon` at 0x1003e7d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003e7d0-0x1003e8c0 (240 bytes).
  It occupies 240 bytes.
  The `sw` at 0x1003e800 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x1003e808 stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x1003e810 stores 4 bytes to a0 (arg0 at entry) +0xc4.
  The `sw` at 0x1003e818 stores 4 bytes to a0 (arg0 at entry) +0xc0.
  The `sw` at 0x1003e820 stores 4 bytes to a0 (arg0 at entry) +0xc8.
  The `sw` at 0x1003e828 stores 4 bytes to a0 (arg0 at entry) +0xb4.
  The `sw` at 0x1003e830 stores 4 bytes to a0 (arg0 at entry) +0xbc.
  The `sw` at 0x1003e838 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The `sw` at 0x1003e840 stores 4 bytes to a0 (arg0 at entry) +0xd0.
  The `sw` at 0x1003e848 stores 4 bytes to a0 (arg0 at entry) +0xd4.
  The `sw` at 0x1003e850 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `sw` at 0x1003e858 stores 4 bytes to a0 (arg0 at entry) +0xa0.
  The `sw` at 0x1003e860 stores 4 bytes to a0 (arg0 at entry) +0xac.
  The `sw` at 0x1003e868 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  The `sw` at 0x1003e874 stores 4 bytes to a0 (arg0 at entry) +0xe0.
  The `sw` at 0x1003e87c stores 4 bytes to a0 (arg0 at entry) +0xdc.
  The `sw` at 0x1003e884 stores 4 bytes to a0 (arg0 at entry) +0xd8.
  The `sw` at 0x1003e88c stores 4 bytes to a0 (arg0 at entry) +0xf4.
  The `sw` at 0x1003e898 stores 4 bytes to a0 (arg0 at entry) +0xf0.
  The `sw` at 0x1003e8a0 stores 4 bytes to a0 (arg0 at entry) +0xec.
  The `jal` at 0x1003e7f0 calls __ct__29FormatCombinationListsClassUIGPCc [0x1002d530] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003e8a4 calls vPopulateList__27FormatCombinationListsClassGv [0x100236b0] with a0=a0 at entry (arg0), a1=a0 at entry (arg0), a2=-0x1, a3=a0 at entry (arg0), a4=a0 at entry (arg0), a5=a0 at entry (arg0), a6=a0 at entry (arg0), a7=a0 at entry (arg0).
  The return at 0x1003e8b8 has v0 = a0.

- `__dt__19GammaMapEditorClassGv` in `usr/bin/X11/xsetmon` at 0x1003e8c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003e8c0-0x1003e970 (176 bytes).
  It occupies 176 bytes.
  The `sw` at 0x1003e8e8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x1003e8f0 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0x1003e908 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x1003e920 loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `jalr` at 0x1003e8fc calls __dla__GPv with a0=[a0+156], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+156].
  The `jalr` at 0x1003e914 calls __dla__GPv with a0=[a0+80], a1=?, a2=?, a3=[a0+80].
  The `jalr` at 0x1003e930 calls __dla__GPv with a0=[a0+100], a1=?, a2=?, a3=[a0+100].
  The `jal` at 0x1003e940 calls __dt__21GammaMapEditorClassUIGv [0x10034570] with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1003e958 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1003e8d8 targets 0x1003e960, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1003e8f4 targets 0x1003e908, is taken when a3(=[a0+156]) == 0, and falls through when a3(=[a0+156]) != 0.
  The `beq` branch at 0x1003e90c targets 0x1003e920, is taken when a3(=[a0+80]) == 0, and falls through when a3(=[a0+80]) != 0.
  The `beq` branch at 0x1003e924 targets 0x1003e940, is taken when a3(=[a0+100]) == 0, and falls through when a3(=[a0+100]) != 0.
  The `beq` branch at 0x1003e950 targets 0x1003e960, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x1003e968 has v0 = one of ?, ret(__dt__21GammaMapEditorClassUIGv), ret(__dl__GPv).

- `doArmRegionDrag__21GammaMapEditorClassUIGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x1003e970 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003e970-0x1003e978 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1003e970 has v0 = ?.

- `doSetGainCallback__16GainControlClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1003e980 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003e980-0x1003e9f4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0x1003e980 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1003e988 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lw` at 0x1003e990 loads 4 bytes from a0 (arg0 at entry) +0x38.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1003e9b4, `lw` at 0x1003e9d8.
  2 such `lw` accesses load 4 bytes from [sym(xsetmonApp)] +0x138, including `lw` at 0x1003e9bc, `lw` at 0x1003e9e0.
  The `lw` at 0x1003e9c4 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `jalr` at 0x1003e9c8 calls XSGIvcSetOutputGain with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[a0+52], a3=[a0+56], a4=[a2+8]; fp f17=0x41200000.
  The `jalr` at 0x1003e9dc calls XFlush with a0=[[sym(xsetmonApp)]+312], a1=?, a2=?, a3=?.
  The return at 0x1003e9ec has v0 = ret(XFlush).

- `changeChannelCallback__18ChannelFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x1003ea00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003ea00-0x1003ea40 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x1003ea00 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1003ea0c loads 4 bytes from [a1+8] +0x8.
  The `lw` at 0x1003ea1c loads 4 bytes from [[a1+8]+8] +0xf8.
  The `lw` at 0x1003ea20 loads 4 bytes from [[a1+8]+8] +0xf0.
  The `jalr` at 0x1003ea28 calls (unknown callee) with a0=([[[a1+8]+8]+240] + [a1+8]), a1=a1 at entry (arg1), a2=[a1+8], a3=0x19efc.
  The return at 0x1003ea38 has v0 = ret(?).

- `__ct__20GammaAssignmentClassGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003ea40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003ea40-0x1003ea88 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x1003ea78 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x1003ea60 calls __ct__22GammaAssignmentClassUIGPCcP10_WidgetRec [0x10025160] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1003ea80 has v0 = a0.

- `vSetIdentity__7MMatrixGv` in `usr/bin/X11/xsetmon` at 0x1003ea90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003ea90-0x1003eba8 (280 bytes).
  It occupies 280 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x1003ea90, `lw` at 0x1003eb14, `lw` at 0x1003eb40.
  3 such `lw` accesses load 4 bytes from [a0] +0x0, including `lw` at 0x1003ea94, `lw` at 0x1003eae0, `lw` at 0x1003eba4.
  4 such `lw` accesses load 4 bytes from [a0] +0x4, including `lw` at 0x1003ea98, `lw` at 0x1003ead4, `lw` at 0x1003eb18.
  The `lw` at 0x1003eac0 loads 4 bytes from [a0] +0xc.
  4 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x1003eb10, `swc1` at 0x1003eb38, `swc1` at 0x1003eb3c.
  The `jalr` at 0x1003eb90 calls __assert with a0=0x100494e8, a1=0x100494a0, a2=0x3a, a3=a3 at entry (arg3), a6=[a0].
  The `bne` branch at 0x1003eab4 targets 0x1003eb78, is taken when v0(=[[a0]+4]) != a2(=[[a0]]), and falls through when v0(=[[a0]+4]) == a2(=[[a0]]).
  The `blez` branch at 0x1003eabc targets 0x1003eb68, is taken when a2(=[[a0]]) <= 0 (signed), and falls through when a2(=[[a0]]) > 0 (signed).
  The `beq` branch at 0x1003ead0 targets 0x1003eaf4 and is always taken.
  The `beq` branch at 0x1003eaec targets 0x1003eb6c, is taken when a4(?) >= a2(=[[a0]]) (signed), and falls through when a4(?) < a2(=[[a0]]) (signed).
  The `blez` branch at 0x1003eaf4 targets 0x1003eae4, is taken when a5(=[[a0]+4]) <= 0 (signed), and falls through when a5(=[[a0]+4]) > 0 (signed).
  The `beq` branch at 0x1003eafc targets 0x1003eb2c and is always taken.
  The `beq` branch at 0x1003eb24 targets 0x1003eae0, is taken when a2(?) >= a5(=[[a0]+4]) (signed), and falls through when a2(?) < a5(=[[a0]+4]) (signed).
  The `bne` branch at 0x1003eb2c targets 0x1003eb3c, is taken when a2(?) != a4(?), and falls through when a2(?) == a4(?).
  The `beq` branch at 0x1003eb34 targets 0x1003eb40 and is always taken.
  The `beq` branch at 0x1003eb50 targets 0x1003eae0, is taken when a2(?) >= a5(=[[a0]+4]) (signed), and falls through when a2(?) < a5(=[[a0]+4]) (signed).
  The `bne` branch at 0x1003eb58 targets 0x1003eb10, is taken when a2(?) != a4(?), and falls through when a2(?) == a4(?).
  The `beq` branch at 0x1003eb60 targets 0x1003eb14 and is always taken.
  The `beq` branch at 0x1003eba0 targets 0x1003eabc and is always taken.
  The return at 0x1003eb70 has v0 = ?.
  The instructions from 0x1003ead8 to 0x1003eadc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1003eb04 to 0x1003eb0c are not reached by any path from the entry, and their branches are not listed.

- `combinationSelectedCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x1003ebb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003ebb0-0x1003ebf4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1003ebb4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1003ebc0 loads 4 bytes from [a1+8] +0x9c.
  The `lw` at 0x1003ebcc loads 4 bytes from [a1+8] +0xa4.
  The `jalr` at 0x1003ebdc calls (unknown callee) with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x19d4c.
  The return at 0x1003ebec has v0 = ret(?).

- `__ct__30CombinationContentsListClassUIGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003ec00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003ec00-0x1003ec64 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0x1003ec3c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1003ec28 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003ec44 calls create__30CombinationContentsListClassUIGP10_WidgetRec [0x100258c0] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The return at 0x1003ec5c has v0 = a0.

- `assignChannelMap__22GammaAssignmentClassUIGP10_WidgetRecPviT3` in `usr/bin/X11/xsetmon` at 0x1003ec70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003ec70-0x1003ec78 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1003ec70 has v0 = ?.

- `__ct__10GammaClassGPCc` in `usr/bin/X11/xsetmon` at 0x1003ec80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003ec80-0x1003ecc8 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x1003ecb8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x1003eca0 calls __ct__12GammaClassUIGPCc [0x100264d0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1003ecc0 has v0 = a0.

- `vInitialize__18GammaMapDescriptorGiP9_XDisplayT1` in `usr/bin/X11/xsetmon` at 0x1003ecd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003ecd0-0x1003ed7c (172 bytes).
  It occupies 172 bytes.
  The `sw` at 0x1003ecf8 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0x1003ed50 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x1003ed10 calls XSGIvcQueryGammaMap with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a1 at entry (arg1), a3=a0+4, a4=a0+8, a5=a0+12, a7=0x19c2c.
  The `jalr` at 0x1003ed38 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10049478, a2=?, a3=?.
  The `jalr` at 0x1003ed4c calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=[a0], a2=?, a3=?.
  The `jalr` at 0x1003ed5c calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x1005198e, a2=?, a3=?.
  The `jalr` at 0x1003ed68 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003ed74 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1003ed18 targets 0x1003ed30, is taken when v0(=ret(XSGIvcQueryGammaMap)) == 0, and falls through when v0(=ret(XSGIvcQueryGammaMap)) != 0.
  The return at 0x1003ed28 has v0 = ret(XSGIvcQueryGammaMap).

- `__ct__16GainControlClassGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003ed80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003ed80-0x1003edc8 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x1003edb8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x1003eda0 calls __ct__18GainControlClassUIGPCcP10_WidgetRec [0x10023480] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1003edc0 has v0 = a0.

- `className__18GainControlClassUIGv` in `usr/bin/X11/xsetmon` at 0x1003edd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003edd0-0x1003ede8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1003eddc loads 4 bytes from abs 0x1005091c.
  The return at 0x1003ede0 has v0 = 0x10044fe8.

- `vTellGammaScalarValue__19GammaMapEditorClassCGf` in `usr/bin/X11/xsetmon` at 0x1003ee30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003ee30-0x1003ee8c (92 bytes).
  It occupies 92 bytes.
  The `jalr` at 0x1003ee60 calls sprintf with a0=sp-48, a1=0x100516b0, a2=?, a3=a3 at entry (arg3).
  The `jal` at 0x1003ee70 calls vDrawText__19GammaMapEditorClassCGPCc [0x1002ab00] with a0=a0 at entry (arg0), a1=sp-48, a2=?, a3=?.
  The return at 0x1003ee84 has v0 = ret(vDrawText__19GammaMapEditorClassCGPCc).

- `vListfbDepths__27FormatCombinationListsClassGv` in `usr/bin/X11/xsetmon` at 0x1003eea0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003eea0-0x1003f078 (472 bytes).
  It occupies 472 bytes.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xe4, including `sw` at 0x1003eed8, `sw` at 0x1003ef9c.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1003eedc, `lw` at 0x1003ef8c.
  The `lw` at 0x1003eee8 loads 4 bytes from [sym(xsetmonApp)] +0x138.
  The `lw` at 0x1003ef00 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  2 such `lw` accesses load 4 bytes from sym(numFbDepths) +0x0, including `lw` at 0x1003ef0c, `lw` at 0x1003efa8.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1003ef38, `lw` at 0x1003ef58, `lw` at 0x1003ef88.
  The `lw` at 0x1003ef90 loads 4 bytes from [sym(xsetmonApp)] +0xf4.
  The `sw` at 0x1003efa4 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1003efd0, `lw` at 0x1003efdc, `lw` at 0x1003f010.
  The `lw` at 0x1003f020 loads 4 bytes from a0 (arg0 at entry) +0xe4.
  The `jalr` at 0x1003eec8 calls __ct__10VkNameListGv with a0=sp-96, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1003eefc calls XSGIvcQueryPlatformParameter with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=0x0, a4=[sym(xsetmonApp)]+244, a5=0x20.
  The `jalr` at 0x1003ef34 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003ef40 calls __nwa__GUi with a0=ret(strlen)+10, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003ef5c calls sprintf with a0=ret(__nwa__GUi), a1=0x10044ac0, a2=?, a3=?.
  The `jalr` at 0x1003ef6c calls add__10VkNameListGPc with a0=sp-96, a1=ret(__nwa__GUi), a2=?, a3=?.
  The `jalr` at 0x1003ef78 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003ef84 calls atoi with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003efcc calls XtVaGetValues with a0=[a0+72], a1=-0x84, a2=sp-80, a3=0x0.
  The `jalr` at 0x1003efd8 calls XmListDeleteAllItems with a0=[a0+72], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003efe4 calls freeXmStringTable__10VkNameListSGPPUc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003eff0 calls getXmStringTable__10VkNameListCGv with a0=sp-96, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003f00c calls XmListAddItems with a0=[a0+72], a1=ret(getXmStringTable__10VkNameListCGv), a2=?, a3=0x1.
  The `jalr` at 0x1003f018 calls freeXmStringTable__10VkNameListSGPPUc with a0=ret(getXmStringTable__10VkNameListCGv), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003f034 calls XmListSelectPos with a0=[a0+72], a1=[a0+228], a2=0x0, a3=?.
  The `jalr` at 0x1003f060 calls __dt__10VkNameListGv with a0=sp-96, a1=0x2, a2=?, a3=?.
  The `blez` branch at 0x1003ef24 targets 0x1003efbc, is taken when a6(=[sym(numFbDepths)]) <= 0 (signed), and falls through when a6(=[sym(numFbDepths)]) > 0 (signed).
  The `bne` branch at 0x1003ef94 targets 0x1003efa8, is taken when a2(=[[sym(xsetmonApp)]+244]) != v0(=ret(atoi)), and falls through when a2(=[[sym(xsetmonApp)]+244]) == v0(=ret(atoi)).
  The `bne` branch at 0x1003efb4 targets 0x1003ef30, is taken when s3(?) < a4(=[sym(numFbDepths)]) (signed), and falls through when s3(?) >= a4(=[sym(numFbDepths)]) (signed).
  The `blez` branch at 0x1003f024 targets 0x1003f040, is taken when a1(=[a0+228]) <= 0 (signed), and falls through when a1(=[a0+228]) > 0 (signed).
  The return at 0x1003f070 has v0 = ret(__dt__10VkNameListGv).

- `CreateSetmonMasterFormClass__21SetmonMasterFormClassSGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003f080 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003f080-0x1003f100 (128 bytes).
  It occupies 128 bytes.
  The `jalr` at 0x1003f0a8 calls __nw__GUi with a0=0x40, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003f0d0 calls __ct__21SetmonMasterFormClassGPCcP10_WidgetRec [0x10030fd0] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x1003f0b4 targets 0x1003f0ec, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x1003f0e4 has v0 = ret(__nw__GUi).
  The return at 0x1003f0f8 has v0 = 0x0.

- `__ct__23SetmonMasterFormClassUIGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003f100 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003f100-0x1003f16c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x1003f13c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x1003f144 stores 4 bytes to a0 (arg0 at entry) +0x28.
  The `jalr` at 0x1003f128 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003f14c calls create__23SetmonMasterFormClassUIGP10_WidgetRec [0x10032150] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The return at 0x1003f164 has v0 = a0.

- `create__21StatisticsFormClassUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003f180 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x1003f180-0x1004148c (8972 bytes).
  It occupies 8972 bytes.
  The `lw` at 0x1003f1c8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0x1003f1d4 loads 4 bytes from sym(xmFormWidgetClass) +0x0.
  The `sw` at 0x1003f1dc stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x1003f1e8 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  23 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x1003f1f4, `lw` at 0x1003f2bc, `lw` at 0x1003f4b4.
  61 such `lw` accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0, including `lw` at 0x1003f1f8, `lw` at 0x1003f3e8, `lw` at 0x1003f424.
  The `sw` at 0x1003f2c4 stores 4 bytes to a0 (arg0 at entry) +0xec.
  6 such `lw` accesses load 4 bytes from sym(xmFrameWidgetClass) +0x0, including `lw` at 0x1003f2c8, `lw` at 0x1003f670, `lw` at 0x1003fa28.
  The `sw` at 0x1003f380 stores 4 bytes to a0 (arg0 at entry) +0xf8.
  8 such `lw` accesses load 4 bytes from sym(xmRowColumnWidgetClass) +0x0, including `lw` at 0x1003f384, `lw` at 0x1003f720, `lw` at 0x1003fad8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xfc, including `sw` at 0x1003f3e4, `sw` at 0x1003f7a4.
  12 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xfc, including `lw` at 0x1003f41c, `lw` at 0x1003f454, `lw` at 0x1003f484.
  The `sw` at 0x1003f420 stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x1003f474 stores 4 bytes to a0 (arg0 at entry) +0xb8.
  The `sw` at 0x1003f4a4 stores 4 bytes to a0 (arg0 at entry) +0xb4.
  The `sw` at 0x1003f4b8 stores 4 bytes to a0 (arg0 at entry) +0xbc.
  The `sw` at 0x1003f584 stores 4 bytes to a0 (arg0 at entry) +0xf0.
  2 such `lw` accesses load 4 bytes from sym(xmPushButtonWidgetClass) +0x0, including `lw` at 0x1003f588, `lw` at 0x1003fe1c.
  The `sw` at 0x1003f644 stores 4 bytes to a0 (arg0 at entry) +0xe8.
  5 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x1003f648, `lw` at 0x1003fd24, `lw` at 0x10041294.
  2 such `lbu` accesses load 1 byte from [sym(xsetmonApp)] +0xc8, including `lbu` at 0x1003f64c, `lbu` at 0x100413f8.
  The `sw` at 0x1003f71c stores 4 bytes to a0 (arg0 at entry) +0xf4.
  The `sw` at 0x1003f7d4 stores 4 bytes to a0 (arg0 at entry) +0xc0.
  The `sw` at 0x1003f804 stores 4 bytes to a0 (arg0 at entry) +0xc4.
  The `sw` at 0x1003f834 stores 4 bytes to a0 (arg0 at entry) +0xc8.
  The `sw` at 0x1003f864 stores 4 bytes to a0 (arg0 at entry) +0xcc.
  The `sw` at 0x1003f894 stores 4 bytes to a0 (arg0 at entry) +0xd0.
  The `sw` at 0x1003f8c4 stores 4 bytes to a0 (arg0 at entry) +0xd4.
  The `sw` at 0x1003f8f4 stores 4 bytes to a0 (arg0 at entry) +0xd8.
  The `sw` at 0x1003f924 stores 4 bytes to a0 (arg0 at entry) +0xdc.
  The `sw` at 0x1003f954 stores 4 bytes to a0 (arg0 at entry) +0xe0.
  The `sw` at 0x1003f964 stores 4 bytes to a0 (arg0 at entry) +0xe4.
  The `sw` at 0x1003fa24 stores 4 bytes to a0 (arg0 at entry) +0x128.
  The `sw` at 0x1003fad4 stores 4 bytes to a0 (arg0 at entry) +0x12c.
  The `sw` at 0x1003fb5c stores 4 bytes to a0 (arg0 at entry) +0x130.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x130, including `lw` at 0x1003fb6c, `lw` at 0x1003fb9c, `lw` at 0x1003fbcc.
  The `sw` at 0x1003fb8c stores 4 bytes to a0 (arg0 at entry) +0x100.
  The `sw` at 0x1003fbbc stores 4 bytes to a0 (arg0 at entry) +0x104.
  The `sw` at 0x1003fbec stores 4 bytes to a0 (arg0 at entry) +0x108.
  The `sw` at 0x1003fc1c stores 4 bytes to a0 (arg0 at entry) +0x10c.
  The `sw` at 0x1003fc4c stores 4 bytes to a0 (arg0 at entry) +0x110.
  The `sw` at 0x1003fc7c stores 4 bytes to a0 (arg0 at entry) +0x114.
  The `sw` at 0x1003fcac stores 4 bytes to a0 (arg0 at entry) +0x118.
  The `sw` at 0x1003fcdc stores 4 bytes to a0 (arg0 at entry) +0x11c.
  The `sw` at 0x1003fd0c stores 4 bytes to a0 (arg0 at entry) +0x120.
  The `sw` at 0x1003fd20 stores 4 bytes to a0 (arg0 at entry) +0x124.
  2 such `lbu` accesses load 1 byte from [sym(xsetmonApp)] +0xcd, including `lbu` at 0x1003fd28, `lbu` at 0x10041298.
  The `lw` at 0x1003fd38 loads 4 bytes from [sym(xsetmonApp)] +0x138.
  The `lw` at 0x1003fd4c loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `sw` at 0x1003fe18 stores 4 bytes to a0 (arg0 at entry) +0x134.
  The `sw` at 0x1003fee4 stores 4 bytes to a0 (arg0 at entry) +0x140.
  The `sw` at 0x1003ff9c stores 4 bytes to a0 (arg0 at entry) +0x138.
  The `sw` at 0x10040034 stores 4 bytes to a0 (arg0 at entry) +0x13c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x13c, including `lw` at 0x10040044, `lw` at 0x100401ec, `lw` at 0x100401fc.
  The `sw` at 0x10040048 stores 4 bytes to a0 (arg0 at entry) +0x154.
  The `sw` at 0x10040158 stores 4 bytes to a0 (arg0 at entry) +0x148.
  4 such `lw` accesses load 4 bytes from sym(xmToggleButtonWidgetClass) +0x0, including `lw` at 0x1004015c, `lw` at 0x10040188, `lw` at 0x10040314.
  The `lw` at 0x10040168 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x10040184 stores 4 bytes to a0 (arg0 at entry) +0x14c.
  The `sw` at 0x10040198 stores 4 bytes to a0 (arg0 at entry) +0x150.
  The `lw` at 0x100401a8 loads 4 bytes from a0 (arg0 at entry) +0x14c.
  The `lw` at 0x100401c4 loads 4 bytes from a0 (arg0 at entry) +0x150.
  The `sw` at 0x10040200 stores 4 bytes to a0 (arg0 at entry) +0x144.
  The `sw` at 0x10040310 stores 4 bytes to a0 (arg0 at entry) +0x158.
  The `lw` at 0x10040320 loads 4 bytes from a0 (arg0 at entry) +0x158.
  The `sw` at 0x1004033c stores 4 bytes to a0 (arg0 at entry) +0x15c.
  The `sw` at 0x10040350 stores 4 bytes to a0 (arg0 at entry) +0x160.
  The `lw` at 0x10040360 loads 4 bytes from a0 (arg0 at entry) +0x15c.
  The `lw` at 0x1004037c loads 4 bytes from a0 (arg0 at entry) +0x160.
  The `sw` at 0x10040450 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `sw` at 0x10040508 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0x100405ac stores 4 bytes to a0 (arg0 at entry) +0x70.
  The `sw` at 0x10040674 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  The `sw` at 0x10040724 stores 4 bytes to a0 (arg0 at entry) +0x24.
  The `sw` at 0x1004078c stores 4 bytes to a0 (arg0 at entry) +0x2c.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x100407c4, `lw` at 0x100407f4, `lw` at 0x10040824.
  The `sw` at 0x100407e4 stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `sw` at 0x10040814 stores 4 bytes to a0 (arg0 at entry) +0x8c.
  The `sw` at 0x10040844 stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x10040874 stores 4 bytes to a0 (arg0 at entry) +0x84.
  The `sw` at 0x100408a0 stores 4 bytes to a0 (arg0 at entry) +0x98.
  The `sw` at 0x100408d0 stores 4 bytes to a0 (arg0 at entry) +0x94.
  The `sw` at 0x100408fc stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `sw` at 0x1004092c stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x1004093c stores 4 bytes to a0 (arg0 at entry) +0xa0.
  The `sw` at 0x10040978 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The `sw` at 0x10040a48 stores 4 bytes to a0 (arg0 at entry) +0xac.
  The `sw` at 0x10040afc stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `sw` at 0x10040b90 stores 4 bytes to a0 (arg0 at entry) +0x28.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x10040ba0, `lw` at 0x10040bc8, `lw` at 0x10040bf0.
  The `sw` at 0x10040bb8 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x10040be0 stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `sw` at 0x10040c08 stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `sw` at 0x10040c30 stores 4 bytes to a0 (arg0 at entry) +0x4c.
  The `sw` at 0x10040c54 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `sw` at 0x10040c7c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sw` at 0x10040ca0 stores 4 bytes to a0 (arg0 at entry) +0x48.
  The `sw` at 0x10040cc8 stores 4 bytes to a0 (arg0 at entry) +0x44.
  The `sw` at 0x10040cf0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0x10040d00 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `sw` at 0x10040dbc stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `sw` at 0x10040e78 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sw` at 0x10040f34 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  The `sw` at 0x10040ff0 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `sw` at 0x1004109c stores 4 bytes to a0 (arg0 at entry) +0x40.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0x10041138, `lw` at 0x1004117c, `lw` at 0x10041198.
  The `lw` at 0x10041144 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `sw` at 0x10041148 stores 4 bytes to a0 (arg0 at entry) +0x34.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0x1004115c, `lw` at 0x10041188, `lw` at 0x100411c8.
  The `lw` at 0x10041168 loads 4 bytes from a0 (arg0 at entry) +0x6c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x100411a0, `lw` at 0x10041314, `lw` at 0x1004132c.
  The `lw` at 0x100411a8 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xf8, including `lw` at 0x100411c0, `lw` at 0x100411f0, `lw` at 0x10041208.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xec, including `lw` at 0x100411d0, `lw` at 0x1004143c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xf4, including `lw` at 0x10041200, `lw` at 0x10041250, `lw` at 0x10041448.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xf0, including `lw` at 0x10041210, `lw` at 0x10041220, `lw` at 0x10041454.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe8, including `lw` at 0x10041238, `lw` at 0x10041460.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x12c, including `lw` at 0x10041260, `lw` at 0x10041290, `lw` at 0x10041474.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x128, including `lw` at 0x10041270, `lw` at 0x10041480.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x138, including `lw` at 0x100412b0, `lw` at 0x100412d8, `lw` at 0x10041308.
  The `lw` at 0x100412c0 loads 4 bytes from a0 (arg0 at entry) +0x134.
  The `lw` at 0x100412e8 loads 4 bytes from a0 (arg0 at entry) +0x140.
  The `lw` at 0x10041338 loads 4 bytes from a0 (arg0 at entry) +0xac.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x1004134c, `lw` at 0x100413a4, `lw` at 0x100413c0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x34, including `lw` at 0x10041364, `lw` at 0x100413e4.
  The `lw` at 0x10041370 loads 4 bytes from a0 (arg0 at entry) +0x30.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x78, including `lw` at 0x10041384, `lw` at 0x100413d8.
  The `lw` at 0x10041390 loads 4 bytes from a0 (arg0 at entry) +0x74.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3c, including `lw` at 0x100413b0, `lw` at 0x100413cc.
  The `lbu` at 0x10041404 loads 1 byte from [sym(xsetmonApp)] +0xc9.
  The `jalr` at 0x1003f1ac calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultStatisticsFormClassUIResources__21StatisticsFormClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x1003f1d0 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=-0xd1, a4=0x1, a5=0x0.
  The `jalr` at 0x1003f1e4 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003f2b0 calls XtVaCreateManagedWidget with a0=0x10051808, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x1003f370 calls XtVaCreateManagedWidget with a0=0x10051810, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x1003f3dc calls XtVaCreateManagedWidget with a0=0x10046960, a1=[sym(xmRowColumnWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x1d4, a4=0x0, a5=-0xb, a6=0x2, a7=-0x29a.
  The `jalr` at 0x1003f414 calls XtVaCreateManagedWidget with a0=0x10046970, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x5f.
  The `jalr` at 0x1003f44c calls XtVaCreateManagedWidget with a0=0x10046988, a1=[sym(xmLabelWidgetClass)], a2=[a0+252], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x5f.
  The `jalr` at 0x1003f47c calls XtVaCreateManagedWidget with a0=0x100469a0, a1=[sym(xmLabelWidgetClass)], a2=[a0+252], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003f4ac calls XtVaCreateManagedWidget with a0=0x100469b8, a1=[sym(xmLabelWidgetClass)], a2=[a0+252], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003f574 calls XtVaCreateManagedWidget with a0=0x10051818, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x1003f638 calls XtVaCreateManagedWidget with a0=0x10051820, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x1003f664 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x25, a2=sym(updateMemoUsageO2Callback__21StatisticsFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003f714 calls XtVaCreateManagedWidget with a0=0x10051828, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x1003f77c calls XtVaCreateManagedWidget with a0=0x10046960, a1=[sym(xmRowColumnWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x1d4, a4=0x0, a5=-0xb, a6=0x2, a7=-0x29a.
  The `jalr` at 0x1003f7ac calls XtVaCreateManagedWidget with a0=0x100469d0, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003f7dc calls XtVaCreateManagedWidget with a0=0x100469e8, a1=[sym(xmLabelWidgetClass)], a2=[a0+252], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003f80c calls XtVaCreateManagedWidget with a0=0x10046a00, a1=[sym(xmLabelWidgetClass)], a2=[a0+252], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003f83c calls XtVaCreateManagedWidget with a0=0x10046a18, a1=[sym(xmLabelWidgetClass)], a2=[a0+252], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003f86c calls XtVaCreateManagedWidget with a0=0x10046a30, a1=[sym(xmLabelWidgetClass)], a2=[a0+252], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003f89c calls XtVaCreateManagedWidget with a0=0x10046a48, a1=[sym(xmLabelWidgetClass)], a2=[a0+252], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003f8cc calls XtVaCreateManagedWidget with a0=0x10046a60, a1=[sym(xmLabelWidgetClass)], a2=[a0+252], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003f8fc calls XtVaCreateManagedWidget with a0=0x10046a80, a1=[sym(xmLabelWidgetClass)], a2=[a0+252], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003f92c calls XtVaCreateManagedWidget with a0=0x10046aa0, a1=[sym(xmLabelWidgetClass)], a2=[a0+252], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003f95c calls XtVaCreateManagedWidget with a0=0x10046ab8, a1=[sym(xmLabelWidgetClass)], a2=[a0+252], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003fa18 calls XtVaCreateManagedWidget with a0=0x10051830, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x1003facc calls XtVaCreateManagedWidget with a0=0x10051838, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x1003fb34 calls XtVaCreateManagedWidget with a0=0x10046ad8, a1=[sym(xmRowColumnWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x1d4, a4=0x0, a5=-0xb, a6=0x2, a7=-0x29a.
  The `jalr` at 0x1003fb64 calls XtVaCreateManagedWidget with a0=0x10046ae8, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003fb94 calls XtVaCreateManagedWidget with a0=0x10046b00, a1=[sym(xmLabelWidgetClass)], a2=[a0+304], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003fbc4 calls XtVaCreateManagedWidget with a0=0x10046b18, a1=[sym(xmLabelWidgetClass)], a2=[a0+304], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003fbf4 calls XtVaCreateManagedWidget with a0=0x10046b30, a1=[sym(xmLabelWidgetClass)], a2=[a0+304], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003fc24 calls XtVaCreateManagedWidget with a0=0x10046b48, a1=[sym(xmLabelWidgetClass)], a2=[a0+304], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003fc54 calls XtVaCreateManagedWidget with a0=0x10046b60, a1=[sym(xmLabelWidgetClass)], a2=[a0+304], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003fc84 calls XtVaCreateManagedWidget with a0=0x10046b78, a1=[sym(xmLabelWidgetClass)], a2=[a0+304], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003fcb4 calls XtVaCreateManagedWidget with a0=0x10046b90, a1=[sym(xmLabelWidgetClass)], a2=[a0+304], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003fce4 calls XtVaCreateManagedWidget with a0=0x10046bb0, a1=[sym(xmLabelWidgetClass)], a2=[a0+304], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003fd14 calls XtVaCreateManagedWidget with a0=0x10046bc8, a1=[sym(xmLabelWidgetClass)], a2=[a0+304], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003fd48 calls XSGIvcQueryPlatformParameter with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=0x0, a4=sp-64, a5=0x4.
  The `jalr` at 0x1003fe04 calls XtVaCreateManagedWidget with a0=0x10046be8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x1003fec4 calls XtVaCreateManagedWidget with a0=0x10046bf8, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x1003fee0 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=-0x25, a2=sym(SG2applyChanges__21StatisticsFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003ff94 calls XtVaCreateManagedWidget with a0=0x10046c08, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x1004000c calls XtVaCreateManagedWidget with a0=0x10046c18, a1=[sym(xmRowColumnWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x1d4, a4=0x0, a5=-0xb, a6=0x2, a7=-0x29a.
  The `jalr` at 0x1004003c calls XtVaCreateManagedWidget with a0=0x10046c28, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1004012c calls XtVaCreateManagedWidget with a0=0x10046c40, a1=[sym(xmRowColumnWidgetClass)], a2=[a0+316], a3=-0xb, a4=0x2, a5=-0xc1, a6=0x2, a7=-0x39.
  The `jalr` at 0x10040160 calls XtVaCreateManagedWidget with a0=0x10046c50, a1=[sym(xmToggleButtonWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=-0x38, a6=0x1, a7=0x0.
  The `jalr` at 0x1004018c calls XtVaCreateManagedWidget with a0=0x10046c68, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+328], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x100401ac calls XmToggleButtonSetState with a0=[a0+332], a1=?, a2=0x0, a3=?.
  The `jalr` at 0x100401c8 calls XmToggleButtonSetState with a0=[a0+336], a1=?, a2=0x0, a3=?.
  The `jalr` at 0x100401f4 calls XtVaCreateManagedWidget with a0=0x10046c80, a1=[sym(xmLabelWidgetClass)], a2=[a0+316], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x100402e4 calls XtVaCreateManagedWidget with a0=0x10046c40, a1=[sym(xmRowColumnWidgetClass)], a2=[a0+316], a3=-0xb, a4=0x2, a5=-0xc1, a6=0x2, a7=-0x39.
  The `jalr` at 0x10040318 calls XtVaCreateManagedWidget with a0=0x10046c98, a1=[sym(xmToggleButtonWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=-0x38, a6=0x1, a7=0x0.
  The `jalr` at 0x10040344 calls XtVaCreateManagedWidget with a0=0x10046cb0, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+344], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x10040364 calls XmToggleButtonSetState with a0=[a0+348], a1=?, a2=0x0, a3=?.
  The `jalr` at 0x10040380 calls XmToggleButtonSetState with a0=[a0+352], a1=?, a2=0x0, a3=?.
  The `jalr` at 0x10040444 calls XtVaCreateManagedWidget with a0=0x10051840, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x100404fc calls XtVaCreateManagedWidget with a0=0x10051848, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x100405a0 calls XtVaCreateManagedWidget with a0=0x10046cc8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x10040668 calls XtVaCreateManagedWidget with a0=0x10051850, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x1004071c calls XtVaCreateManagedWidget with a0=0x10051858, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x10040784 calls XtVaCreateManagedWidget with a0=0x10046cd8, a1=[sym(xmRowColumnWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x1d4, a4=0x0, a5=-0xb, a6=0x2, a7=-0x29a.
  The `jalr` at 0x100407bc calls XtVaCreateManagedWidget with a0=0x10046ce8, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x5f.
  The `jalr` at 0x100407ec calls XtVaCreateManagedWidget with a0=0x10046d00, a1=[sym(xmLabelWidgetClass)], a2=[a0+44], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1004081c calls XtVaCreateManagedWidget with a0=0x10046d10, a1=[sym(xmLabelWidgetClass)], a2=[a0+44], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1004084c calls XtVaCreateManagedWidget with a0=0x10046d28, a1=[sym(xmLabelWidgetClass)], a2=[a0+44], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1004087c calls XtVaCreateManagedWidget with a0=0x10046d38, a1=[sym(xmLabelWidgetClass)], a2=[a0+44], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x100408a8 calls XtVaCreateManagedWidget with a0=0x10051860, a1=[sym(xmLabelWidgetClass)], a2=[a0+44], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x100408d8 calls XtVaCreateManagedWidget with a0=0x10046d48, a1=[sym(xmLabelWidgetClass)], a2=[a0+44], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x10040904 calls XtVaCreateManagedWidget with a0=0x10051868, a1=[sym(xmLabelWidgetClass)], a2=[a0+44], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x10040934 calls XtVaCreateManagedWidget with a0=0x10046d58, a1=[sym(xmLabelWidgetClass)], a2=[a0+44], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x10040970 calls XtVaCreateManagedWidget with a0=0x10046d70, a1=[sym(xmLabelWidgetClass)], a2=[a0+44], a3=-0x29, a4=0x0, a5=-0x3, a6=0x0, a7=-0x2d.
  The `jalr` at 0x10040a3c calls XtVaCreateManagedWidget with a0=0x10051870, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x5f.
  The `jalr` at 0x10040af0 calls XtVaCreateManagedWidget with a0=0x10051878, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x10040b70 calls XtVaCreateManagedWidget with a0=0x10046d80, a1=[sym(xmRowColumnWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x1d4, a4=0x0, a5=-0xb, a6=0x2, a7=-0x29a.
  The `jalr` at 0x10040b98 calls XtVaCreateManagedWidget with a0=0x10046d90, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x10040bc0 calls XtVaCreateManagedWidget with a0=0x10046da8, a1=[sym(xmLabelWidgetClass)], a2=[a0+40], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x10040be8 calls XtVaCreateManagedWidget with a0=0x10046db8, a1=[sym(xmLabelWidgetClass)], a2=[a0+40], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x10040c10 calls XtVaCreateManagedWidget with a0=0x10046dd0, a1=[sym(xmLabelWidgetClass)], a2=[a0+40], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x10040c38 calls XtVaCreateManagedWidget with a0=0x10046de0, a1=[sym(xmLabelWidgetClass)], a2=[a0+40], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x10040c5c calls XtVaCreateManagedWidget with a0=0x10051880, a1=[sym(xmLabelWidgetClass)], a2=[a0+40], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x10040c84 calls XtVaCreateManagedWidget with a0=0x10046df0, a1=[sym(xmLabelWidgetClass)], a2=[a0+40], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x10040ca8 calls XtVaCreateManagedWidget with a0=0x10051888, a1=[sym(xmLabelWidgetClass)], a2=[a0+40], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x10040cd0 calls XtVaCreateManagedWidget with a0=0x10046e00, a1=[sym(xmLabelWidgetClass)], a2=[a0+40], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x10040cf8 calls XtVaCreateManagedWidget with a0=0x10046e18, a1=[sym(xmLabelWidgetClass)], a2=[a0+40], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x10040db4 calls XtVaCreateManagedWidget with a0=0x10046e28, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x10040e70 calls XtVaCreateManagedWidget with a0=0x10046e38, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x10040f2c calls XtVaCreateManagedWidget with a0=0x10046e48, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x10040fe8 calls XtVaCreateManagedWidget with a0=0x10046e58, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x10041090 calls XtVaCreateManagedWidget with a0=0x10046e70, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x10041128 calls XtVaCreateManagedWidget with a0=0x10046e88, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x1004114c calls XtVaSetValues with a0=[a0+56], a1=-0x1b3, a2=[a0+36], a3=-0x116, a4=[a0+36], a5=0x0.
  The `jalr` at 0x1004116c calls XtVaSetValues with a0=[a0+108], a1=-0x1b3, a2=[a0+112], a3=-0xa5, a4=[a0+112], a5=0x0.
  The `jalr` at 0x10041184 calls XtVaSetValues with a0=[a0+112], a1=-0x76, a2=[a0+36], a3=0x0.
  The `jalr` at 0x100411ac calls XtVaSetValues with a0=[a0+168], a1=-0x76, a2=[a0+32], a3=-0x1b3, a4=[a0+36], a5=-0xa5, a6=[a0+36], a7=0x0.
  The `jalr` at 0x100411d4 calls XtVaSetValues with a0=[a0+236], a1=-0x76, a2=[a0+112], a3=-0x1b3, a4=[a0+248], a5=-0xa5, a6=[a0+248], a7=0x0.
  The `jalr` at 0x100411ec calls XtVaSetValues with a0=[a0+248], a1=-0x76, a2=[a0+112], a3=0x0.
  The `jalr` at 0x10041214 calls XtVaSetValues with a0=[a0+240], a1=-0x76, a2=[a0+248], a3=-0x1b3, a4=[a0+244], a5=-0xa5, a6=[a0+244], a7=0x0.
  The `jalr` at 0x10041234 calls XtVaSetValues with a0=[a0+232], a1=-0x76, a2=[a0+248], a3=-0xa5, a4=[a0+240], a5=0x0.
  The `jalr` at 0x1004124c calls XtVaSetValues with a0=[a0+244], a1=-0x76, a2=[a0+248], a3=0x0.
  The `jalr` at 0x10041274 calls XtVaSetValues with a0=[a0+296], a1=-0x76, a2=[a0+112], a3=-0x1b3, a4=[a0+300], a5=-0xa5, a6=[a0+300], a7=0x0.
  The `jalr` at 0x1004128c calls XtVaSetValues with a0=[a0+300], a1=-0x76, a2=[a0+112], a3=0x0.
  The `jalr` at 0x100412c4 calls XtVaSetValues with a0=[a0+308], a1=-0x76, a2=[a0+112], a3=-0x1b3, a4=[a0+312], a5=-0xa5, a6=[a0+312], a7=0x0.
  The `jalr` at 0x100412ec calls XtVaSetValues with a0=[a0+320], a1=-0x76, a2=[a0+112], a3=-0x1b3, a4=[a0+312], a5=-0x116, a6=[a0+312], a7=0x0.
  The `jalr` at 0x10041304 calls XtVaSetValues with a0=[a0+312], a1=-0x76, a2=[a0+112], a3=0x0.
  The `jalr` at 0x1004131c calls XtVaSetValues with a0=[a0+36], a1=-0x76, a2=[a0+32], a3=0x0.
  The `jalr` at 0x1004133c calls XtVaSetValues with a0=[a0+172], a1=-0x1b3, a2=[a0+32], a3=-0xa5, a4=[a0+32], a5=0x0.
  The `jalr` at 0x10041354 calls XtVaSetValues with a0=[a0+32], a1=-0x76, a2=[a0+64], a3=0x0.
  The `jalr` at 0x10041374 calls XtVaSetValues with a0=[a0+48], a1=-0x1b3, a2=[a0+52], a3=-0xa5, a4=[a0+52], a5=0x0.
  The `jalr` at 0x10041394 calls XtVaSetValues with a0=[a0+116], a1=-0x1b3, a2=[a0+120], a3=-0xa5, a4=[a0+120], a5=0x0.
  The `jalr` at 0x100413b4 calls XtVaSetValues with a0=[a0+60], a1=-0x1b3, a2=[a0+64], a3=-0xa5, a4=[a0+64], a5=0x0.
  The `jalr` at 0x100413d4 calls XtVaSetValues with a0=[a0+120], a1=-0xa5, a2=[a0+60], a3=-0x1b3, a4=[a0+64], a5=0x0.
  The `jalr` at 0x100413ec calls XtVaSetValues with a0=[a0+64], a1=-0x76, a2=[a0+52], a3=0x0.
  The `jalr` at 0x1004142c calls XtUnmanageChild with a0=[a0+248], a1=[[sym(xsetmonApp)]+200]:1, a2=?, a3=?.
  The `jalr` at 0x10041438 calls XtUnmanageChild with a0=[a0+236], a1=?, a2=?, a3=?.
  The `jalr` at 0x10041444 calls XtUnmanageChild with a0=[a0+244], a1=?, a2=?, a3=?.
  The `jalr` at 0x10041450 calls XtUnmanageChild with a0=[a0+240], a1=?, a2=?, a3=?.
  The `jalr` at 0x1004145c calls XtUnmanageChild with a0=[a0+232], a1=?, a2=?, a3=?.
  The `jalr` at 0x10041470 calls XtUnmanageChild with a0=[a0+300], a1=?, a2=[[sym(xsetmonApp)]+201]:1, a3=?.
  The `jalr` at 0x1004147c calls XtUnmanageChild with a0=[a0+296], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1003f650 targets 0x1003f66c, is taken when a2(=[[sym(xsetmonApp)]+200]:1) == 0, and falls through when a2(=[[sym(xsetmonApp)]+200]:1) != 0.
  The `beq` branch at 0x1003fd2c targets 0x10040388, is taken when a1(=[[sym(xsetmonApp)]+205]:1) == 0, and falls through when a1(=[[sym(xsetmonApp)]+205]:1) != 0.
  The `beq` branch at 0x1004129c targets 0x10041310, is taken when a0(=[[sym(xsetmonApp)]+205]:1) == 0, and falls through when a0(=[[sym(xsetmonApp)]+205]:1) != 0.
  The `beq` branch at 0x100413fc targets 0x1004142c, is taken when a1(=[[sym(xsetmonApp)]+200]:1) == 0, and falls through when a1(=[[sym(xsetmonApp)]+200]:1) != 0.
  The `beq` branch at 0x10041408 targets 0x1004146c, is taken when a2(=[[sym(xsetmonApp)]+201]:1) == 0, and falls through when a2(=[[sym(xsetmonApp)]+201]:1) != 0.
  The `beq` branch at 0x10041464 targets 0x10041404 and is always taken.
  The `beq` branch at 0x10041484 targets 0x10041410 and is always taken.
  The return at 0x10041424 has v0 = one of ?, ret(XtUnmanageChild).

- `checkPriv__7xsetmonGv` in `usr/bin/X11/xsetmon` at 0x10041490 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10041490-0x100416a8 (536 bytes).
  It occupies 536 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x80, including `lw` at 0x100414d0, `lw` at 0x10041508.
  The `sb` at 0x10041530 stores 1 byte to ret(strchr) +0x0.
  The `lw` at 0x10041540 loads 4 bytes from ret(gethostbyname) +0x0.
  The `lw` at 0x1004160c loads 4 bytes from ret(getTheInfoDialog__Gv) +0x8.
  The `lw` at 0x10041610 loads 4 bytes from [ret(getTheInfoDialog__Gv)+8] +0xe4.
  The `lw` at 0x10041624 loads 4 bytes from [ret(getTheInfoDialog__Gv)+8] +0xec.
  The `jalr` at 0x100414b8 calls gethostname with a0=sp-848, a1=0x100, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100414c8 calls gethostname with a0=sp-568, a1=0x100, a2=?, a3=?.
  The `jalr` at 0x100414e0 calls strchr with a0=[a0+128], a1=0x2f, a2=?, a3=?.
  The `jalr` at 0x100414f8 calls strcpy with a0=sp-568, a1=ret(strchr)+1, a2=?, a3=?.
  The `jalr` at 0x1004150c calls strcpy with a0=sp-568, a1=[a0+128], a2=?, a3=?.
  The `jalr` at 0x1004151c calls strchr with a0=sp-568, a1=0x3a, a2=?, a3=?.
  The `jalr` at 0x1004152c calls gethostbyname with a0=sp-568, a1=?, a2=?, a3=?.
  The `jalr` at 0x10041544 calls strcpy with a0=sp-568, a1=[ret(gethostbyname)], a2=?, a3=?.
  The `jalr` at 0x10041558 calls gethostname with a0=sp-568, a1=0x100, a2=?, a3=?.
  The `jalr` at 0x1004156c calls strcmp with a0=0x10043c78, a1=sp-568, a2=?, a3=?.
  The `jalr` at 0x10041580 calls strcmp with a0=sp-848, a1=sp-568, a2=?, a3=?.
  The `jalr` at 0x100415a0 calls sprintf with a0=sp-312, a1=0x10043c88, a2=sp-568, a3=?.
  The `jalr` at 0x100415ac calls system with a0=sp-312, a1=?, a2=?, a3=?.
  The `jalr` at 0x100415c4 calls VkGetResource__GPCcT1 with a0=0x10043cc0, a1=0x10043cc0, a2=?, a3=?.
  The `jalr` at 0x100415d4 calls strlen with a0=ret(VkGetResource__GPCcT1), a1=?, a2=?, a3=?.
  The `jalr` at 0x100415e0 calls __nwa__GUi with a0=ret(strlen)+256, a1=?, a2=?, a3=?.
  The `jalr` at 0x100415f8 calls sprintf with a0=ret(__nwa__GUi), a1=?, a2=sp-568, a3=?.
  The `jalr` at 0x10041604 calls getTheInfoDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10041638 calls (unknown callee) with a0=([[ret(getTheInfoDialog__Gv)+8]+228] + ret(getTheInfoDialog__Gv)), a1=ret(__nwa__GUi), a2=0x0, a3=0x0, a4=0x0, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10041644 calls __dla__GPv with a0=ret(__nwa__GUi), a1=?, a2=?, a3=?.
  The `jalr` at 0x10041680 calls getuid with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100414d4 targets 0x10041564, is taken when a0(=[a0+128]) == 0, and falls through when a0(=[a0+128]) != 0.
  The `beq` branch at 0x100414e8 targets 0x10041508, is taken when v0(=ret(strchr)) == 0, and falls through when v0(=ret(strchr)) != 0.
  The `beq` branch at 0x10041500 targets 0x10041514 and is always taken.
  The `beq` branch at 0x10041534 targets 0x10041554, is taken when v0(=ret(gethostbyname)) == 0, and falls through when v0(=ret(gethostbyname)) != 0.
  The `beq` branch at 0x1004154c targets 0x10041564 and is always taken.
  The `beq` branch at 0x10041574 targets 0x1004167c, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x10041588 targets 0x10041680, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x100415b4 targets 0x10041664, is taken when v0(=ret(system)) == 0, and falls through when v0(=ret(system)) != 0.
  The `bne` branch at 0x10041688 targets 0x10041594, is taken when v0(=ret(getuid)) != 0, and falls through when v0(=ret(getuid)) == 0.
  The return at 0x1004165c has v0 = 0x0.
  The return at 0x10041674 has v0 = 0x1.
  The return at 0x100416a0 has v0 = 0x1.

- `setLabel__17SyncSelectorFrameGPCc` in `usr/bin/X11/xsetmon` at 0x100416b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100416b0-0x1004172c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0x100416ec loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jalr` at 0x100416d8 calls XmStringCreateSimple with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100416e8 calls baseWidget__10VkMenuItemCGv with a0=[a0+40], a1=?, a2=?, a3=?.
  The `jalr` at 0x10041704 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=-0x7, a2=ret(XmStringCreateSimple), a3=0x0.
  The `jalr` at 0x10041710 calls XmStringFree with a0=ret(XmStringCreateSimple), a1=?, a2=?, a3=?.
  The return at 0x10041724 has v0 = ret(XmStringFree).

- `vLUBackSubstitute__7MMatrixGPiPf` in `usr/bin/X11/xsetmon` at 0x10041730 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10041730-0x10041970 (576 bytes).
  It occupies 576 bytes.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10041758, `lw` at 0x10041804, `lw` at 0x100418bc.
  4 such `lw` accesses load 4 bytes from [a0] +0x0, including `lw` at 0x10041760, `lw` at 0x10041808, `lw` at 0x100418c0.
  5 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x100417e4, `lwc1` at 0x10041830, `lwc1` at 0x10041838.
  3 such `lwc1` accesses load 4 bytes from ret(0x1002d620) +0x0, including `lwc1` at 0x100417e8, `lwc1` at 0x10041898, `lwc1` at 0x100418fc.
  3 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x10041800, `swc1` at 0x10041848, `swc1` at 0x100418b8.
  The `lw` at 0x10041824 loads 4 bytes from ?.
  The `jal` at 0x100417dc calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10041890 calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100418ec calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x10041784 targets 0x10041864, is taken when s0(=[[a0]]) < 0x2 (signed), and falls through when s0(=[[a0]]) >= 0x2 (signed).
  The `beq` branch at 0x100417ac targets 0x10041824 and is always taken.
  The `bne` branch at 0x100417c4 targets 0x10041800, is taken when s7(?) < s8(?) (signed), and falls through when s7(?) >= s8(?) (signed).
  The `bne` branch at 0x100417f8 targets 0x100417d0, is taken when s0(?) != s4(?), and falls through when s0(?) == s4(?).
  The `beq` branch at 0x1004181c targets 0x10041864, is taken when s4(?) >= s0(=[[a0]]) (signed), and falls through when s4(?) < s0(=[[a0]]) (signed).
  The `bne` branch at 0x10041844 targets 0x100417c0, is taken when s8(?) != 0, and falls through when s8(?) == 0.
  The `bc1t` branch at 0x10041854 targets 0x10041800, is taken when f20 == f22 (c.eq.s at 0x1004184c), and falls through when not (f20 == f22 (c.eq.s at 0x1004184c)).
  The `beq` branch at 0x1004185c targets 0x10041800 and is always taken.
  The `bltz` branch at 0x1004186c targets 0x10041924, is taken when s4(=[[a0]]-1) < 0 (signed), and falls through when s4(=[[a0]]-1) >= 0 (signed).
  The `beq` branch at 0x1004187c targets 0x10041960 and is always taken.
  The `bltz` branch at 0x100418b4 targets 0x10041924, is taken when s4(?) < 0 (signed), and falls through when s4(?) >= 0 (signed).
  The `beq` branch at 0x100418d0 targets 0x10041884, is taken when s0(?) >= t9(=[[a0]]) (signed), and falls through when s0(?) < t9(=[[a0]]) (signed).
  The `bne` branch at 0x10041914 targets 0x100418e0, is taken when s0(?) < t9(=[[a0]]) (signed), and falls through when s0(?) >= t9(=[[a0]]) (signed).
  The `beq` branch at 0x1004191c targets 0x10041888 and is always taken.
  The `beq` branch at 0x10041968 targets 0x100418c0 and is always taken.
  The return at 0x10041958 has v0 = one of ?, ret(0x1002d620).
  The instructions from 0x100417b4 to 0x100417bc are not reached by any path from the entry, and their branches are not listed.

- `doSetSCHPhase__18ChannelFormClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10041970 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10041970-0x10041978 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10041970 has v0 = ?.

- `__dt__20GammaAssignmentClassGv` in `usr/bin/X11/xsetmon` at 0x100419e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100419e0-0x10041a48 (104 bytes).
  It occupies 104 bytes.
  The `sw` at 0x10041a10 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10041a18 calls __dt__22GammaAssignmentClassUIGv [0x10024ae0] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10041a30 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10041a00 targets 0x10041a38, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10041a28 targets 0x10041a38, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10041a40 has v0 = one of ?, ret(__dt__22GammaAssignmentClassUIGv), ret(__dl__GPv).

- `doDragScalar__19GammaMapEditorClassGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x10041a50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10041a50-0x10041b7c (300 bytes).
  It occupies 300 bytes.
  The `lw` at 0x10041a50 loads 4 bytes from a2 (arg2 at entry) +0x24.
  The `lhu` at 0x10041a54 loads 2 bytes from a0 (arg0 at entry) +0x96.
  The `lh` at 0x10041a58 loads 2 bytes from a0 (arg0 at entry) +0x76.
  The `lwc1` at 0x10041a90 loads 4 bytes from a0 (arg0 at entry) +0x8c.
  The `lwc1` at 0x10041ab8 loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `lwc1` at 0x10041abc loads 4 bytes from a0 (arg0 at entry) +0x88.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x84, including `swc1` at 0x10041ad4, `swc1` at 0x10041b04, `swc1` at 0x10041b0c.
  The `sw` at 0x10041b20 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `lwc1` at 0x10041b30 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `jalr` at 0x10041ad0 calls exp with a0=a0 at entry (arg0), a1=[a2+36], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10041b1c calls vGammaScalarChanged__19GammaMapEditorClassGf [0x10026610] with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=?; fp f14=0x3dcccccd, f15=0x41a00000.
  The `jal` at 0x10041b2c calls vTellGammaScalarValue__19GammaMapEditorClassCGf [0x1003ee30] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?; fp f13=[a0+132].
  The `bc1f` branch at 0x10041aa8 targets 0x10041b64, is taken when not (f4 < f0 (c.lt.s at 0x10041aa0)), and falls through when f4 < f0 (c.lt.s at 0x10041aa0).
  The `bc1f` branch at 0x10041b00 targets 0x10041b48, is taken when not (f13 < f5(=0x3dcccccd) (c.lt.s at 0x10041af4)), and falls through when f13 < f5(=0x3dcccccd) (c.lt.s at 0x10041af4).
  The `bc1f` branch at 0x10041b50 targets 0x10041b14, is taken when not (f4(=0x41a00000) < f13 (c.lt.s at 0x10041b48)), and falls through when f4(=0x41a00000) < f13 (c.lt.s at 0x10041b48).
  The `beq` branch at 0x10041b5c targets 0x10041b10 and is always taken.
  The `bc1f` branch at 0x10041b6c targets 0x10041ab8, is taken when not (f6(=0x41200000) < f4 (c.lt.s at 0x10041b64)), and falls through when f6(=0x41200000) < f4 (c.lt.s at 0x10041b64).
  The `beq` branch at 0x10041b74 targets 0x10041ab8 and is always taken.
  The return at 0x10041b40 has v0 = ret(vTellGammaScalarValue__19GammaMapEditorClassCGf).

- `createWindows__7xsetmonGv` in `usr/bin/X11/xsetmon` at 0x10041b80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10041b80-0x10041c24 (164 bytes).
  It occupies 164 bytes.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x84, including `lbu` at 0x10041be8, `lbu` at 0x10041bf0.
  The `sw` at 0x10041bf8 stores 4 bytes to a0 (arg0 at entry) +0x130.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10041bfc, `lw` at 0x10041c00, `lw` at 0x10041c04.
  The `jalr` at 0x10041ba8 calls __nw__GUi with a0=0x70, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10041bd4 calls __ct__18XSetmonWindowClassGPCcP3ArgUi [0x10027170] with a0=ret(__nw__GUi), a1=0x10043c60, a2=0x0, a3=0x0.
  The `jalr` at 0x10041c08 calls (unknown callee) with a0=?, a1=?, a2=[a0+132]:1, a3=?.
  The `beq` branch at 0x10041bb4 targets 0x10041bec, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10041be4 targets 0x10041bf4 and is always taken.
  The `beq` branch at 0x10041bf4 targets 0x10041c10, is taken when a2(=[a0+132]:1) == 0, and falls through when a2(=[a0+132]:1) != 0.
  The return at 0x10041c1c has v0 = one of ?, ret(?).

- `ClearFormat__19StatisticsFormClassGv` in `usr/bin/X11/xsetmon` at 0x10041c30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10041c30-0x10041e14 (484 bytes).
  It occupies 484 bytes.
  The `lw` at 0x10041c58 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x10041c74 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lw` at 0x10041c90 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lw` at 0x10041cac loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `lw` at 0x10041cc8 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x10041ce4 loads 4 bytes from a0 (arg0 at entry) +0x5c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x10041d00, `lw` at 0x10041dc4.
  The `lw` at 0x10041d1c loads 4 bytes from a0 (arg0 at entry) +0x6c.
  The `lw` at 0x10041d38 loads 4 bytes from a0 (arg0 at entry) +0x8c.
  The `lw` at 0x10041d54 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lw` at 0x10041d70 loads 4 bytes from a0 (arg0 at entry) +0x94.
  The `lw` at 0x10041d8c loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lw` at 0x10041da8 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0x10041dd0 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lw` at 0x10041dec loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `jal` at 0x10041c54 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+48], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10041c64 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=?, a3=?.
  The `jal` at 0x10041c70 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+84], a1=?, a2=?, a3=?.
  The `jal` at 0x10041c80 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=?, a3=?.
  The `jal` at 0x10041c8c calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+76], a1=?, a2=?, a3=?.
  The `jal` at 0x10041c9c calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=?, a3=?.
  The `jal` at 0x10041ca8 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+100], a1=?, a2=?, a3=?.
  The `jal` at 0x10041cb8 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=?, a3=?.
  The `jal` at 0x10041cc4 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+68], a1=?, a2=?, a3=?.
  The `jal` at 0x10041cd4 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=?, a3=?.
  The `jal` at 0x10041ce0 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+92], a1=?, a2=?, a3=?.
  The `jal` at 0x10041cf0 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=?, a3=?.
  The `jal` at 0x10041cfc calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+56], a1=?, a2=?, a3=?.
  The `jal` at 0x10041d0c calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=?, a3=?.
  The `jal` at 0x10041d18 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+108], a1=?, a2=?, a3=?.
  The `jal` at 0x10041d28 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=?, a3=?.
  The `jal` at 0x10041d34 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+140], a1=?, a2=?, a3=?.
  The `jal` at 0x10041d44 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=?, a3=?.
  The `jal` at 0x10041d50 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+132], a1=?, a2=?, a3=?.
  The `jal` at 0x10041d60 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=?, a3=?.
  The `jal` at 0x10041d6c calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+148], a1=?, a2=?, a3=?.
  The `jal` at 0x10041d7c calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=?, a3=?.
  The `jal` at 0x10041d88 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+124], a1=?, a2=?, a3=?.
  The `jal` at 0x10041d98 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=?, a3=?.
  The `jal` at 0x10041da4 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+156], a1=?, a2=?, a3=?.
  The `jal` at 0x10041db4 calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=?, a3=?.
  The `jalr` at 0x10041dc0 calls XtUnmanageChild with a0=[a0+56], a1=?, a2=?, a3=?.
  The `jal` at 0x10041dcc calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+60], a1=?, a2=?, a3=?.
  The `jal` at 0x10041ddc calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=?, a3=?.
  The `jal` at 0x10041de8 calls EZ__GP10_WidgetRec [0x1001e910] with a0=[a0+116], a1=?, a2=?, a3=?.
  The `jal` at 0x10041dfc calls __as__9EZWrapperGPCc [0x100201d0] with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=?, a3=?.
  The return at 0x10041e0c has v0 = ret(__as__9EZWrapperGPCc).

- `postErrorMessage__13ErrorMessagerGP9strstream` in `usr/bin/X11/xsetmon` at 0x10041e20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10041e20-0x10041ea4 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0x10041e54 loads 4 bytes from ret(getTheErrorDialog__Gv) +0x8.
  The `lw` at 0x10041e64 loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110.
  The `lw` at 0x10041e70 loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108.
  The `jalr` at 0x10041e40 calls str__9strstreamGv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10041e4c calls getTheErrorDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10041e7c calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=ret(str__9strstreamGv), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10041e88 calls __dl__GPv with a0=ret(str__9strstreamGv), a1=?, a2=?, a3=?.
  The return at 0x10041e9c has v0 = ret(__dl__GPv).

- `className__19SyncSelectorFrameUIGv` in `usr/bin/X11/xsetmon` at 0x10041eb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10041eb0-0x10041ec8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10041ebc loads 4 bytes from abs 0x10050920.
  The return at 0x10041ec0 has v0 = 0x100483b8.

- `registerChild__12MyTabbedDeckGP11VkComponentPCc` in `usr/bin/X11/xsetmon` at 0x10041ed0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10041ed0-0x10041f8c (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0x10041f48 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0x10041f70 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `jalr` at 0x10041f04 calls baseWidget__11VkComponentCGv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10041f2c calls VkGetResource__GP10_WidgetRecPCcN32 with a0=ret(baseWidget__11VkComponentCGv), a1=0x10049590, a2=0x100495a0, a3=-0x1a, a4=a2 at entry (arg2).
  The `jalr` at 0x10041f44 calls addView__6VkDeckGP11VkComponent with a0=[a0+32], a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x10041f50 calls baseWidget__11VkComponentCGv with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x10041f6c calls addTab__10VkTabPanelGPcPvc with a0=[a0+36], a1=ret(VkGetResource__GP10_WidgetRecPCcN32), a2=ret(baseWidget__11VkComponentCGv), a3=0x0.
  The return at 0x10041f84 has v0 = ret(addTab__10VkTabPanelGPcPvc).

- `createDialog__18TargetPromptDialogGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10041f90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10041f90-0x10042154 (452 bytes).
  It occupies 452 bytes.
  2 such `lw` accesses load 4 bytes from sym(xmRowColumnWidgetClass) +0x0, including `lw` at 0x10041fd8, `lw` at 0x100420ec.
  The `lw` at 0x10042008 loads 4 bytes from sym(xmMessageBoxWidgetClass) +0x0.
  The `lw` at 0x100420d0 loads 4 bytes from sym(xmFrameWidgetClass) +0x0.
  The `lw` at 0x10042110 loads 4 bytes from sym(xmLabelWidgetClass) +0x0.
  The `lw` at 0x10042134 loads 4 bytes from sym(xmTextFieldWidgetClass) +0x0.
  The `sw` at 0x10042144 stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `jalr` at 0x10041fac calls createDialog__15VkGenericDialogGP10_WidgetRec with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10041fdc calls XtVaCreateManagedWidget with a0=0x10048fd0, a1=[sym(xmRowColumnWidgetClass)], a2=ret(createDialog__15VkGenericDialogGP10_WidgetRec), a3=-0xb, a4=0x2, a5=0x0.
  The `jalr` at 0x1004200c calls XtVaCreateManagedWidget with a0=0x10048fe0, a1=[sym(xmMessageBoxWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x9b, a4=0x4, a5=0x0.
  The `jalr` at 0x10042020 calls XmMessageBoxGetChild with a0=ret(XtVaCreateManagedWidget), a1=0x2, a2=?, a3=?.
  The `jalr` at 0x1004202c calls XtUnmanageChild with a0=ret(XmMessageBoxGetChild), a1=?, a2=?, a3=?.
  The `jalr` at 0x1004203c calls XmMessageBoxGetChild with a0=ret(XtVaCreateManagedWidget), a1=0x7, a2=?, a3=?.
  The `jalr` at 0x10042048 calls XtUnmanageChild with a0=ret(XmMessageBoxGetChild), a1=?, a2=?, a3=?.
  The `jalr` at 0x10042058 calls XmMessageBoxGetChild with a0=ret(XtVaCreateManagedWidget), a1=0x4, a2=?, a3=?.
  The `jalr` at 0x10042064 calls XtUnmanageChild with a0=ret(XmMessageBoxGetChild), a1=?, a2=?, a3=?.
  The `jalr` at 0x10042074 calls XmMessageBoxGetChild with a0=ret(XtVaCreateManagedWidget), a1=0x3, a2=?, a3=?.
  The `jalr` at 0x10042080 calls XtUnmanageChild with a0=ret(XmMessageBoxGetChild), a1=?, a2=?, a3=?.
  The `jalr` at 0x10042090 calls XmMessageBoxGetChild with a0=ret(XtVaCreateManagedWidget), a1=0xa, a2=?, a3=?.
  The `jalr` at 0x100420a0 calls XtUnmanageChild with a0=ret(XmMessageBoxGetChild), a1=?, a2=?, a3=?.
  The `jalr` at 0x100420cc calls XtVaCreateManagedWidget with a0=0x10051900, a1=[sym(xmFrameWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0xa7, a4=0x5, a5=-0x23, a6=0x2, a7=0x0.
  The `jalr` at 0x100420f0 calls XtVaCreateManagedWidget with a0=0x10048ff0, a1=[sym(xmRowColumnWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=0x0.
  The `jalr` at 0x10042114 calls XtVaCreateManagedWidget with a0=0x10049000, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=0x0.
  The `jalr` at 0x10042130 calls XtVaCreateManagedWidget with a0=0x10051908, a1=[sym(xmTextFieldWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=0x0.
  The return at 0x1004214c has v0 = ret(createDialog__15VkGenericDialogGP10_WidgetRec).

- `loadSettingsFile__18XSetmonWindowClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10042160 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10042160-0x100421f4 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x10042184 loads 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x8.
  The `lw` at 0x10042194 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x110.
  The `lw` at 0x100421a0 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x108.
  The `lw` at 0x100421e0 loads 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x54.
  The `lw` at 0x100421e8 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `jalr` at 0x1004217c calls getTheFileSelectionDialog__Gv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100421ac calls (unknown callee) with a0=([[ret(getTheFileSelectionDialog__Gv)+8]+264] + ret(getTheFileSelectionDialog__Gv)), a1=0x0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x100421d0 calls getTheFileSelectionDialog__Gv with a0=?, a1=0x1, a2=?, a3=?.
  The `jal` at 0x100421e4 calls loadData__21MasterTabbedDeckClassGPCc [0x1002b910] with a0=[a0+68], a1=[ret(getTheFileSelectionDialog__Gv)+84], a2=?, a3=?.
  The `beq` branch at 0x100421b8 targets 0x100421cc, is taken when v0(=ret(?)) == a1(=0x1), and falls through when v0(=ret(?)) != a1(=0x1).
  The `beq` branch at 0x100421ec targets 0x100421c0 and is always taken.
  The return at 0x100421c4 has v0 = one of ret(?), ret(loadData__21MasterTabbedDeckClassGPCc).

- `setToggleGammaPoints__19GammaMapEditorClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10042200 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10042200-0x1004225c (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0x10042204 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `sw` at 0x10042234 stores 4 bytes to a0 (arg0 at entry) +0xc0.
  The `jal` at 0x10042230 calls vDetermineSplinePoints__19GammaMapEditorClassGv [0x10024880] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10042240 calls redraw__19GammaMapEditorClassCGi [0x1002ad90] with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?.
  The `beq` branch at 0x10042220 targets 0x10042248, is taken when at(=[a2+8]) == 0, and falls through when at(=[a2+8]) != 0.
  The return at 0x10042254 has v0 = one of 0x166fc, ret(redraw__19GammaMapEditorClassCGi).

- `postHaltMessage__22ScrollingErrorMessagerGP9strstream` in `usr/bin/X11/xsetmon` at 0x10042260 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10042260-0x100422c0 (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0x10042284 calls str__9strstreamGv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10042298 calls appendText__22ScrollingErrorMessagerGPc [0x10027c70] with a0=a0 at entry (arg0), a1=ret(str__9strstreamGv), a2=?, a3=?.
  The `jalr` at 0x100422a8 calls __dl__GPv with a0=ret(str__9strstreamGv), a1=?, a2=?, a3=?.
  The return at 0x100422b8 has v0 = ret(__dl__GPv).

- `__ct__19StatisticsFormClassGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x100422c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100422c0-0x10042308 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x100422f8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x100422e0 calls __ct__21StatisticsFormClassUIGPCcP10_WidgetRec [0x1002b840] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10042300 has v0 = a0.

- `doInputSyncSourceNotify__19ServerInfoFormClassGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x10042310 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10042310-0x1004235c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x1004232c loads 4 bytes from a2 (arg2 at entry) +0x1c.
  2 such `lw` accesses load 4 bytes from sym(xsetmonApp) +0x0, including `lw` at 0x10042330, `lw` at 0x1004233c.
  The `sw` at 0x10042338 stores 4 bytes to [sym(xsetmonApp)] +0x118.
  The `lw` at 0x10042340 loads 4 bytes from a2 (arg2 at entry) +0x20.
  The `sw` at 0x10042348 stores 4 bytes to [sym(xsetmonApp)] +0x11c.
  The `jal` at 0x10042344 calls setSyncOptionMenus__19ServerInfoFormClassGv [0x10038a90] with a0=a0 at entry (arg0), a1=[sym(xsetmonApp)], a2=a2 at entry (arg2), a3=0x165ec.
  The return at 0x10042354 has v0 = ret(setSyncOptionMenus__19ServerInfoFormClassGv).

- `__ct__28CombinationContentsListClassGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10042360 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10042360-0x100423c0 (96 bytes).
  It occupies 96 bytes.
  The `sw` at 0x10042390 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x10042398 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `sw` at 0x100423a4 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `sw` at 0x100423b0 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `jal` at 0x10042380 calls __ct__30CombinationContentsListClassUIGPCcP10_WidgetRec [0x1003ec00] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100423b8 has v0 = a0.

- `changeSyncFormatCallback__19SyncSelectorFrameUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x100423c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x100423c0-0x10042400 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x100423c0 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0x100423cc loads 4 bytes from [a1+12] +0x8.
  The `lw` at 0x100423dc loads 4 bytes from [[a1+12]+8] +0xa4.
  The `lw` at 0x100423e0 loads 4 bytes from [[a1+12]+8] +0x9c.
  The `jalr` at 0x100423e8 calls (unknown callee) with a0=([[[a1+12]+8]+156] + [a1+12]), a1=a1 at entry (arg1), a2=[a1+12], a3=0x1653c.
  The return at 0x100423f8 has v0 = ret(?).

- `__ct__19ServerInfoFormClassGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10042400 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10042400-0x10042454 (84 bytes).
  It occupies 84 bytes.
  The `sw` at 0x10042434 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10042420 calls __ct__21ServerInfoFormClassUIGPCcP10_WidgetRec [0x1002cd90] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10042438 calls OneTimeInitialization__19ServerInfoFormClassGv [0x10033c90] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x1004244c has v0 = a0.

- `populateSCHPhaseWithChannel__16ChannelFormClassGiPC17XSGIvcChannelInfo` in `usr/bin/X11/xsetmon` at 0x10042460 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10042460-0x10042578 (280 bytes).
  It occupies 280 bytes.
  The `lw` at 0x10042470 loads 4 bytes from a2 (arg2 at entry) +0x17c.
  The `lw` at 0x10042498 loads 4 bytes from a2 (arg2 at entry) +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa4, including `lw` at 0x100424ac, `lw` at 0x100424fc, `lw` at 0x1004256c.
  The `lw` at 0x100424b4 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lw` at 0x100424bc loads 4 bytes from [sym(xsetmonApp)] +0x138.
  The `lw` at 0x100424cc loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84.
  The `lw` at 0x100424d8 loads 4 bytes from a2 (arg2 at entry) +0x184.
  The `lw` at 0x100424e4 loads 4 bytes from a2 (arg2 at entry) +0x180.
  The `jalr` at 0x100424a8 calls XtManageChild with a0=[a0+164], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100424c8 calls XSGIvcQueryOutputPhaseSCH with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=a1 at entry (arg1), a3=sp-48.
  The `jalr` at 0x100424f8 calls XtVaSetValues with a0=[a0+164], a1=-0x8, a2=?, a3=-0x18, a4=[a2+384], a5=-0xd, a6=[a2+388], a7=0x0.
  The `jalr` at 0x10042524 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10043ff0, a2=?, a3=?.
  The `jalr` at 0x10042534 calls __ls__7ostreamGi with a0=ret(__ls__7ostreamGPCc), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x10042544 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGi), a1=0x10051498, a2=?, a3=?.
  The `jalr` at 0x10042550 calls endl__GR7ostream with a0=ret(__ls__7ostreamGPCc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1004255c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10042568 calls XtUnmanageChild with a0=[a0+164], a1=?, a2=?, a3=?.
  The `beq` branch at 0x10042490 targets 0x10042564, is taken when at(=[a2+380]) == 0, and falls through when at(=[a2+380]) != 0.
  The `beq` branch at 0x1004249c targets 0x10042568, is taken when v1(=[a2]) == 0, and falls through when v1(=[a2]) != 0.
  The `beq` branch at 0x100424d0 targets 0x1004251c, is taken when v0(=ret(XSGIvcQueryOutputPhaseSCH)) == 0, and falls through when v0(=ret(XSGIvcQueryOutputPhaseSCH)) != 0.
  The `beq` branch at 0x10042570 targets 0x10042504 and is always taken.
  The return at 0x10042514 has v0 = one of ret(XtVaSetValues), ret(XtUnmanageChild).

- `create__22GammaAssignmentClassUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10042580 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10042580-0x10042844 (708 bytes).
  It occupies 708 bytes.
  The `lw` at 0x100425c8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0x100425d4 loads 4 bytes from sym(xmFormWidgetClass) +0x0.
  The `sw` at 0x100425e0 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x100425ec stores 4 bytes to a0 (arg0 at entry) +0x20.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x100425f4, `lw` at 0x10042748.
  The `lw` at 0x100425f8 loads 4 bytes from sym(xmScrolledWindowWidgetClass) +0x0.
  The `sw` at 0x100426c4 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `lw` at 0x100426d4 loads 4 bytes from sym(xmRowColumnWidgetClass) +0x0.
  The `sw` at 0x10042738 stores 4 bytes to a0 (arg0 at entry) +0x30.
  2 such `lw` accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0, including `lw` at 0x1004273c, `lw` at 0x10042754.
  The `sw` at 0x10042750 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `lw` at 0x10042810 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `sw` at 0x1004281c stores 4 bytes to a0 (arg0 at entry) +0x28.
  The `lw` at 0x1004282c loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `jalr` at 0x100425ac calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultGammaAssignmentClassUIResources__22GammaAssignmentClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x100425d0 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=-0xd1, a4=0x1, a5=0x0.
  The `jalr` at 0x100425e8 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x100426bc calls XtVaCreateManagedWidget with a0=0x10045088, a1=[sym(xmScrolledWindowWidgetClass)], a2=[a0+16], a3=-0x5a, a4=0x0, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x1004270c calls XtVaCreateManagedWidget with a0=0x10045098, a1=[sym(xmRowColumnWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x1d4, a4=0x0, a5=-0xc1, a6=0x2, a7=-0x17.
  The `jalr` at 0x10042740 calls XtVaCreateManagedWidget with a0=0x100450b0, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=-0x5f, a6=0x1, a7=0x0.
  The `jalr` at 0x100427fc calls XtVaCreateManagedWidget with a0=0x10051650, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x5f, a6=0x0, a7=-0x42.
  The `jalr` at 0x10042818 calls XtVaSetValues with a0=[a0+52], a1=-0x76, a2=ret(XtVaCreateManagedWidget), a3=0x0.
  The `jal` at 0x10042828 calls populateAssignmentWindow__22GammaAssignmentClassUIGP10_WidgetRec [0x10033170] with a0=a0 at entry (arg0), a1=[a0+48], a2=?, a3=?.
  The return at 0x1004283c has v0 = ret(populateAssignmentWindow__22GammaAssignmentClassUIGP10_WidgetRec).

- `__ct__23SyncPortDescriptorClassGiPcP10VkMenuItemP19SyncSelectorFrameUI` in `usr/bin/X11/xsetmon` at 0x10042850 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10042850-0x10042868 (24 bytes).
  It occupies 24 bytes.
  The `sw` at 0x10042850 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0x10042854 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x10042858 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0x10042864 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The return at 0x10042860 has v0 = a0.

- `className__21GammaMapEditorClassUIGv` in `usr/bin/X11/xsetmon` at 0x10042870 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10042870-0x10042888 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1004287c loads 4 bytes from abs 0x1005091c.
  The return at 0x10042880 has v0 = 0x10045b98.

- `resetEditing__10GammaClassGv` in `usr/bin/X11/xsetmon` at 0x10042890 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10042890-0x10042900 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x100428b8 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x100428d4 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x100428e4 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `jal` at 0x100428c0 calls vGammaScalarChanged__19GammaMapEditorClassGf [0x10026610] with a0=[a0+36], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f13=0x3fd9999a.
  The `jal` at 0x100428d0 calls vGammaScalarChanged__19GammaMapEditorClassGf [0x10026610] with a0=[a0+40], a1=?, a2=?, a3=?; fp f13=0x3fd9999a.
  The `jal` at 0x100428e0 calls vGammaScalarChanged__19GammaMapEditorClassGf [0x10026610] with a0=[a0+44], a1=?, a2=?, a3=?; fp f13=0x3fd9999a.
  The return at 0x100428f8 has v0 = ret(vGammaScalarChanged__19GammaMapEditorClassGf).

- `className__16GainControlClassGv` in `usr/bin/X11/xsetmon` at 0x10042a00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10042a00-0x10042a18 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10042a0c loads 4 bytes from abs 0x1005091c.
  The return at 0x10042a10 has v0 = 0x10044f08.

- `doDownloadfbConfigButton__29FormatCombinationListsClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10042a20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10042a20-0x10042a28 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10042a20 has v0 = ?.

- `setTabbedDeckParent__10GammaClassGP21MasterTabbedDeckClass` in `usr/bin/X11/xsetmon` at 0x10042a30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10042a30-0x10042a38 (8 bytes).
  It occupies 8 bytes.
  The `sw` at 0x10042a34 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The return at 0x10042a30 has v0 = ?.

- `VkUnimplemented__GP10_WidgetRecPCc` in `usr/bin/X11/xsetmon` at 0x10042a40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10042a40-0x10042b10 (208 bytes).
  It occupies 208 bytes.
  The `jalr` at 0x10042a78 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x100490f0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10042a88 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGPCc), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x10042aa0 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGPCc), a1=0x10049108, a2=?, a3=?.
  The `jalr` at 0x10042ab4 calls endl__GR7ostream with a0=sym(cerr), a1=?, a2=?, a3=?.
  The `jalr` at 0x10042ac0 calls flush__GR7ostream with a0=ret(endl__GR7ostream), a1=?, a2=?, a3=?.
  The `jalr` at 0x10042ae0 calls __ls__7ostreamGPCc with a0=sym(cerr), a1=0x10051918, a2=?, a3=?.
  The `jalr` at 0x10042af0 calls XtName with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10042b00 calls __ls__7ostreamGPCc with a0=ret(__ls__7ostreamGPCc), a1=ret(XtName), a2=?, a3=?.
  The `bne` branch at 0x10042aa8 targets 0x10042ad8, is taken when s0(=a0) != 0, and falls through when s0(=a0) == 0.
  The `beq` branch at 0x10042b08 targets 0x10042ab0 and is always taken.
  The return at 0x10042ad0 has v0 = ret(flush__GR7ostream).

- `saveData__27FormatCombinationListsClassGP8__file_s` in `usr/bin/X11/xsetmon` at 0x10042b10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10042b10-0x10042ca4 (404 bytes).
  It occupies 404 bytes.
  The `lw` at 0x10042b28 loads 4 bytes from sym(xsetmonApp) +0x0.
  The `lbu` at 0x10042b2c loads 1 byte from [sym(xsetmonApp)] +0xc8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa4, including `lw` at 0x10042b50, `lw` at 0x10042b84.
  The `lw` at 0x10042b90 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x10042b9c loads 4 bytes from a0 (arg0 at entry) +0x9c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa0, including `lw` at 0x10042c64, `lw` at 0x10042c98.
  The `jalr` at 0x10042b4c calls strlen with a0=[a0+164], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10042b68 calls fwrite with a0=sp-48, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10042b80 calls fwrite with a0=[a0+164], a1=?, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10042b8c calls XtIsSensitive with a0=[a0+120], a1=?, a2=?, a3=?.
  The `jalr` at 0x10042bc0 calls fwrite with a0=sp-44, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10042bcc calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10042be8 calls fwrite with a0=sp-48, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10042c00 calls fwrite with a0=?, a1=?, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10042c34 calls fwrite with a0=sp-48, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10042c54 calls fwrite with a0=sp-44, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10042c60 calls strlen with a0=[a0+160], a1=?, a2=?, a3=?.
  The `jalr` at 0x10042c7c calls fwrite with a0=sp-48, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10042c94 calls fwrite with a0=[a0+160], a1=?, a2=0x1, a3=a1 at entry (arg1).
  The `beq` branch at 0x10042b40 targets 0x10042c20, is taken when at(=[[sym(xsetmonApp)]+200]:1) == 0, and falls through when at(=[[sym(xsetmonApp)]+200]:1) != 0.
  The `beq` branch at 0x10042b94 targets 0x10042c44, is taken when v0(=ret(XtIsSensitive)) == 0, and falls through when v0(=ret(XtIsSensitive)) != 0.
  The `beq` branch at 0x10042ba0 targets 0x10042bac, is taken when a0(=[a0+156]) == 0, and falls through when a0(=[a0+156]) != 0.
  The `beq` branch at 0x10042c3c targets 0x10042b8c and is always taken.
  The `beq` branch at 0x10042c9c targets 0x10042c0c and is always taken.
  The return at 0x10042c18 has v0 = ret(fwrite).

- `doSetGainCallbackCallback__18GainControlClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10042cb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10042cb0-0x10042cf4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10042cb4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10042cc0 loads 4 bytes from [a1+8] +0xa8.
  The `lw` at 0x10042ccc loads 4 bytes from [a1+8] +0xb0.
  The `jalr` at 0x10042cdc calls (unknown callee) with a0=([[a1+8]+168] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x15c4c.
  The return at 0x10042cec has v0 = ret(?).

- `resizeCallback__21GammaMapEditorClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10042d00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10042d00-0x10042d44 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10042d04 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10042d10 loads 4 bytes from [a1+8] +0xb4.
  The `lw` at 0x10042d1c loads 4 bytes from [a1+8] +0xbc.
  The `jalr` at 0x10042d2c calls (unknown callee) with a0=([[a1+8]+180] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x15bfc.
  The return at 0x10042d3c has v0 = ret(?).

- `className__27FormatCombinationListsClassGv` in `usr/bin/X11/xsetmon` at 0x10042d50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10042d50-0x10042d68 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10042d5c loads 4 bytes from abs 0x1005091c.
  The return at 0x10042d60 has v0 = 0x10044920.

- `textWidget__22ScrollingErrorMessagerGv` in `usr/bin/X11/xsetmon` at 0x10042d70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10042d70-0x10042f3c (460 bytes).
  It occupies 460 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x10042d70, `lw` at 0x10042f30.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x10042dd8, `lw` at 0x10042e90.
  The `lw` at 0x10042e5c loads 4 bytes from sym(xmFormWidgetClass) +0x0.
  The `sw` at 0x10042e98 stores 4 bytes to a0 (arg0 at entry) +0x8.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10042f10, `lw` at 0x10042f14, `lw` at 0x10042f18.
  The `jalr` at 0x10042da8 calls __nw__GUi with a0=0x40, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10042dd4 calls __ct__14VkSimpleWindowGPCcP3ArgUi with a0=ret(__nw__GUi), a1=[a0+12], a2=0x0, a3=0x0.
  The `jalr` at 0x10042dfc calls setTitle__14VkSimpleWindowGPCc with a0=?, a1=0x10049418, a2=?, a3=?.
  The `jalr` at 0x10042e08 calls baseWidget__11VkComponentCGv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10042e28 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=-0x17, a2=0x258, a3=-0x16, a4=0x12c, a5=0x0.
  The `jalr` at 0x10042e34 calls baseWidget__11VkComponentCGv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10042e70 calls XtVaCreateManagedWidget with a0=0x10049428, a1=[sym(xmFormWidgetClass)], a2=ret(baseWidget__11VkComponentCGv), a3=-0xd1, a4=0x1, a5=-0x17, a6=0x2a2, a7=-0x16.
  The `jalr` at 0x10042e8c calls XmCreateScrolledText with a0=ret(XtVaCreateManagedWidget), a1=[a0+12], a2=0x0, a3=0x0.
  The `jalr` at 0x10042f04 calls XtVaSetValues with a0=ret(XmCreateScrolledText), a1=-0xa1, a2=0x0, a3=-0x42, a4=0x1, a5=-0x66, a6=0x1, a7=-0x46.
  The `jalr` at 0x10042f1c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10042d88 targets 0x10042d9c, is taken when v0(=[a0+8]) == 0, and falls through when v0(=[a0+8]) != 0.
  The `beq` branch at 0x10042db4 targets 0x10042dec, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10042de4 targets 0x10042df0 and is always taken.
  The return at 0x10042d94 has v0 = [a0+8].
  The return at 0x10042f34 has v0 = [a0+8].

- `CreateSyncSelectorFrame__17SyncSelectorFrameSGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10042f40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10042f40-0x10042fc0 (128 bytes).
  It occupies 128 bytes.
  The `jalr` at 0x10042f68 calls __nw__GUi with a0=0x3c, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10042f90 calls __ct__17SyncSelectorFrameGPCcP10_WidgetRec [0x100379d0] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x10042f74 targets 0x10042fac, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x10042fa4 has v0 = ret(__nw__GUi).
  The return at 0x10042fb8 has v0 = 0x0.

- `__ct__16ChannelFormClassGPCc` in `usr/bin/X11/xsetmon` at 0x10042fc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10042fc0-0x10043028 (104 bytes).
  It occupies 104 bytes.
  The `sw` at 0x10042ff0 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x10042ffc stores 4 bytes to a0 (arg0 at entry) +0x100.
  The `sw` at 0x10043004 stores 4 bytes to a0 (arg0 at entry) +0x104.
  The `jal` at 0x10042fe0 calls __ct__18ChannelFormClassUIGPCc [0x1003bac0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004300c calls populateFormWithChannel__16ChannelFormClassGi [0x1002d050] with a0=a0 at entry (arg0), a1=0x0, a2=a0 at entry (arg0), a3=?.
  The return at 0x10043020 has v0 = a0.

- `setToggleGammaPoints__21GammaMapEditorClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10043030 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10043030-0x10043038 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10043030 has v0 = ?.

- `populateSyncPortWithChannel__16ChannelFormClassGiT1P17SyncSelectorFramePC17XSGIvcChannelInfo` in `usr/bin/X11/xsetmon` at 0x10043040 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10043040-0x100430f4 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0x10043048 loads 4 bytes from a4 (arg4 at entry) +0x18c.
  The `lw` at 0x10043074 loads 4 bytes from a4 (arg4 at entry) +0x190.
  The `lw` at 0x1004308c loads 4 bytes from [a4+400] +0x0.
  The `lw` at 0x100430a4 loads 4 bytes from ?.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0x100430a8, `lw` at 0x100430d8.
  The `lw` at 0x100430ac loads 4 bytes from [a3+8] +0x38.
  The `lw` at 0x100430b0 loads 4 bytes from [a3+8] +0x30.
  The `lw` at 0x100430dc loads 4 bytes from [a3+8] +0x2c.
  The `lw` at 0x100430e0 loads 4 bytes from [a3+8] +0x24.
  The `jalr` at 0x100430b4 calls (unknown callee) with a0=([[a3+8]+48] + a3), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3), a6=a2 at entry (arg2).
  The `jal` at 0x100430d0 calls configureSyncPort__17SyncSelectorFrameGiP21XSGIvcChannelSyncInfo [0x1002e6c0] with a0=a3 at entry (arg3), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3), a6=a2 at entry (arg2).
  The `jalr` at 0x100430e4 calls (unknown callee) with a0=([[a3+8]+36] + a3), a1=?, a2=?, a3=?.
  The `blez` branch at 0x10043068 targets 0x100430a8, is taken when a0(=[a4+396]) <= 0 (signed), and falls through when a0(=[a4+396]) > 0 (signed).
  The `beq` branch at 0x10043090 targets 0x100430d0, is taken when t1(?) == a6(=a2), and falls through when t1(?) != a6(=a2).
  The `bnel` branch at 0x100430a0 targets 0x10043090, is taken when a2(?) < a7(?) (unsigned), and falls through when a2(?) >= a7(?) (unsigned); its branch-likely delay slot `lw t1,0(a2)` at 0x100430a4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x100430ec targets 0x100430bc and is always taken.
  The return at 0x100430c8 has v0 = ret(?).

- `__ct__23SetmonMasterFormClassUIGPCc` in `usr/bin/X11/xsetmon` at 0x10043100 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10043100-0x10043150 (80 bytes).
  It occupies 80 bytes.
  The `sw` at 0x10043134 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x10043140 stores 4 bytes to a0 (arg0 at entry) +0x28.
  The `jalr` at 0x10043120 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10043148 has v0 = a0.

- `fDistanceFunction__19GammaMapEditorClassGfN31` in `usr/bin/X11/xsetmon` at 0x10043150 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10043150-0x10043174 (36 bytes).
  It occupies 36 bytes.
  The return at 0x1004316c has v0 = ?.

- `doDownloadFormatButtonCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10043180 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/bin/X11/xsetmon`.
  Range: 0x10043180-0x100431c4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10043184 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10043190 loads 4 bytes from [a1+8] +0xd8.
  The `lw` at 0x1004319c loads 4 bytes from [a1+8] +0xe0.
  The `jalr` at 0x100431ac calls (unknown callee) with a0=([[a1+8]+216] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1577c.
  The return at 0x100431bc has v0 = ret(?).
