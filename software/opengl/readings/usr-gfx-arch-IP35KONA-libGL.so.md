# Readings: `usr/gfx/arch/IP35KONA/libGL.so`

One entry per routine, filed here from the reading batches by binary.

- `__glXBindHWContextToWindow` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd810634 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd810634-0xd810920 (748 bytes).
  It occupies 748 bytes.
  The `lw` at 0xd810650 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd810668, `lw` at 0xd8106d8.
  51 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd810670, `lw` at 0xd810690, `lw` at 0xd8106d4.
  The `lw` at 0xd810674 loads 4 bytes from [0x1014] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0xd8106b8, `lw` at 0xd8107b0, `lw` at 0xd8108a4.
  The `sw` at 0xd8106dc stores 4 bytes to [0x1014] +0x0.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0xd8106e8, `sb` at 0xd8107e0, `sb` at 0xd8108d0.
  7 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8107e8, `sw` at 0xd8107f4, `sw` at 0xd8107fc.
  The `jalr` at 0xd81065c calls __glXHWAttach with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd810698 calls Ioctl [0xd8113d4] with a0=?, a1=0x3ea, a2=sp-12, a3=?.
  The `jalr` at 0xd8106c0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd841624, a2=?, a3=?.
  The `jalr` at 0xd810790 calls Ioctl [0xd8113d4] with a0=?, a1=0x3eb, a2=sp-24, a3=?.
  The `jalr` at 0xd8107b8 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd84163c, a2=?, a3=?.
  The `jalr` at 0xd810880 calls Ioctl [0xd8113d4] with a0=?, a1=0x400, a2=sp-44, a3=?.
  The `jalr` at 0xd8108ac calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd841654, a2=?, a3=?.
  The `beq` branch at 0xd810680 targets 0xd8106e4, is taken when t7(=[[0x1014]]) == a3(?), and falls through when t7(=[[0x1014]]) != a3(?).
  The `bgez` branch at 0xd8106a4 targets 0xd8106d4, is taken when v0(=ret(Ioctl)) >= 0 (signed), and falls through when v0(=ret(Ioctl)) < 0 (signed).
  The `beq` branch at 0xd8106cc targets 0xd8106e0 and is always taken.
  The `bne` branch at 0xd8106e4 targets 0xd81070c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bnel` branch at 0xd8106f4 targets 0xd810710, is taken when t1(?) != t2(?), and falls through when t1(?) == t2(?); its branch-likely delay slot `lw t5,220(v1)` at 0xd8106f8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd810704 targets 0xd810914, is taken when t3(?) == t4(?), and falls through when t3(?) != t4(?); its branch-likely delay slot `lw ra,28(sp)` at 0xd810708 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd810714 targets 0xd810734, is taken when t5(?) == t6(?), and falls through when t5(?) != t6(?); its branch-likely delay slot `lw t8,204(v1)` at 0xd810718 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd810728 targets 0xd810804, is taken when t9(?) != at(=0x3), and falls through when t9(?) == at(=0x3); its branch-likely delay slot `lw t4,204(v1)` at 0xd81072c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd810740 targets 0xd810768, is taken when t0(?) >= 0x2 (signed), and falls through when t0(?) < 0x2 (signed); its branch-likely delay slot `lw t3,228(v1)` at 0xd810744 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd810750 targets 0xd810768, is taken when t1(?) >= 0x3 (signed), and falls through when t1(?) < 0x3 (signed); its branch-likely delay slot `lw t3,228(v1)` at 0xd810754 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd81075c targets 0xd810770 and is always taken.
  The `bne` branch at 0xd8107a0 targets 0xd8107c8, is taken when v0(=ret(Ioctl)) != at(=-0x1), and falls through when v0(=ret(Ioctl)) == at(=-0x1).
  The `beq` branch at 0xd8107c0 targets 0xd810910 and is always taken.
  The `beql` branch at 0xd8107d8 targets 0xd8107f0, is taken when t7(?) == t8(?), and falls through when t7(?) != t8(?); its branch-likely delay slot `lw t2,224(v1)` at 0xd8107dc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8107f8 targets 0xd810910 and is always taken.
  The `bnel` branch at 0xd810810 targets 0xd810840, is taken when t5(?) != at(=0x1), and falls through when t5(?) == at(=0x1); its branch-likely delay slot `lw t8,228(v1)` at 0xd810814 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd810820 targets 0xd810840, is taken when t6(?) >= 0x3 (signed), and falls through when t6(?) < 0x3 (signed); its branch-likely delay slot `lw t8,228(v1)` at 0xd810824 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd810834 targets 0xd810854 and is always taken.
  The `bne` branch at 0xd810890 targets 0xd8108bc, is taken when v0(=ret(Ioctl)) != at(=-0x1), and falls through when v0(=ret(Ioctl)) == at(=-0x1).
  The `beq` branch at 0xd8108b4 targets 0xd810910 and is always taken.
  The `bnel` branch at 0xd8108cc targets 0xd8108ec, is taken when t7(?) != t8(?), and falls through when t7(?) == t8(?); its branch-likely delay slot `sb t3,244(v1)` at 0xd8108d0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8108e0 targets 0xd810904, is taken when t0(?) == t2(?), and falls through when t0(?) != t2(?); its branch-likely delay slot `lw t9,224(v1)` at 0xd8108e4 runs only when taken and is annulled on fall-through.
  The return at 0xd810918 has v0 = ?.
  The instructions from 0xd810764 to 0xd810764 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd810800 to 0xd810800 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd81083c to 0xd81083c are not reached by any path from the entry, and their branches are not listed.

- `__glXSendMakeCurrent` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd810ad4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd810ad4-0xd810cc4 (496 bytes).
  It occupies 496 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd810b0c, `lw` at 0xd810be8, `lw` at 0xd810c70.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd810b18, `lw` at 0xd810b30, `lw` at 0xd810b5c.
  The `lw` at 0xd810b1c loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd810b34 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd810b64 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd810b70 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd810b74, `sb` at 0xd810ba0.
  The `lw` at 0xd810b78 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd810b8c stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd810b90 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd810b98 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd810bac stores 4 bytes to [a0+108] +0x4.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0xd810bb4, `lw` at 0xd810c3c.
  The `sw` at 0xd810bb8 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd810bc8 stores 4 bytes to [a0+108] +0xc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd810bf0, `lw` at 0xd810c08, `lw` at 0xd810c78.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd810bf4, `lw` at 0xd810c7c.
  The `sb` at 0xd810c54 stores 1 byte to a3 (arg3 at entry) +0x0.
  The `sh` at 0xd810c5c stores 2 bytes to a3 (arg3 at entry) +0x2.
  The `sw` at 0xd810c64 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `sw` at 0xd810c6c stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `jalr` at 0xd810b00 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd810b24 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd810b50 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd810bd8 calls _XReply with a0=a0 at entry (arg0), a1=sp-36, a2=0x0, a3=0x0.
  The `jalr` at 0xd810bfc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd810c18 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd810c38 calls __glXPostHiddenError with a0=a0 at entry (arg0), a1=sp-36, a2=0x5, a3=[a1+20].
  The `jalr` at 0xd810c84 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd810ca0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd810b14 targets 0xd810b34, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd810b18 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd810b40 targets 0xd810b64, is taken when t6(=[a0+112]) >= t7(=[a0+108]+16) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+16) (unsigned); its branch-likely delay slot `lw t1,84(sp)` at 0xd810b44 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd810ba8 targets 0xd810bb8, is taken when t1(=a1) == 0, and falls through when t1(=a1) != 0.
  The `beq` branch at 0xd810bb0 targets 0xd810bb8 and is always taken.
  The `bne` branch at 0xd810be0 targets 0xd810c4c, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd810bec targets 0xd810c0c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd810bf0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd810c10 targets 0xd810c24, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd810c44 targets 0xd810cb0 and is always taken.
  The `beql` branch at 0xd810c74 targets 0xd810c94, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd810c78 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd810c98 targets 0xd810cb0, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `addiu v0,zero,1` at 0xd810c9c runs only when taken and is annulled on fall-through.
  The return at 0xd810cbc has v0 = one of 0x0, 0x1.

- `Ioctl` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd8113d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd8113d4-0xd811418 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xd8113e0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd811400 loads 4 bytes from ([0x1014] + (a0 << 0x2)) +0x4.
  The `jalr` at 0xd8113fc calls ioctl with a0=[([0x1014] + (a0 << 0x2))+4], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd811410 has v0 = ret(ioctl).

- `Ioctl` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd8113d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd8113d4-0xd811418 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xd8113e0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd811400 loads 4 bytes from ([0x1014] + (a0 << 0x2)) +0x4.
  The `jalr` at 0xd8113fc calls ioctl with a0=[([0x1014] + (a0 << 0x2))+4], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd811410 has v0 = ret(ioctl).

- `__glx_LoadMatrixd` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd81e560 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd81e560-0xd81e5fc (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xd81e570 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81e580 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81e58c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81e598 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81e59c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81e5b8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81e5cc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81e5ac calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x80, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81e5dc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+132, a2=?, a3=[[[0x1014]+276]+4]+132.
  The `beq` branch at 0xd81e5c8 targets 0xd81e5e8, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+132) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+132) (unsigned).
  The return at 0xd81e5f4 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_LoadMatrixf` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd81e5fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd81e5fc-0xd81e698 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xd81e60c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81e61c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81e628 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81e634 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81e638 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81e654 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81e668 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81e648 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x40, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81e678 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+68, a2=?, a3=[[[0x1014]+276]+4]+68.
  The `beq` branch at 0xd81e664 targets 0xd81e684, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+68) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+68) (unsigned).
  The return at 0xd81e690 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glXGetPipeAddress` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd82077c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd82077c-0xd820784 (8 bytes).
  It occupies 8 bytes.
  The return at 0xd82077c has v0 = 0x4000.

- `__glXSendMakeCurrentRead` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd824394 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd824394-0xd824d30 (2460 bytes).
  It occupies 2460 bytes.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8243cc, `lw` at 0xd8244c8, `lw` at 0xd8245f4.
  The `lw` at 0xd8243dc loads 4 bytes from [a0+1232] +0x0.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8243f8, `lw` at 0xd8243fc, `lw` at 0xd824428.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xd824400, `lw` at 0xd82453c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd824430, `sw` at 0xd82456c.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xd82443c, `sh` at 0xd824578.
  4 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd824440, `sb` at 0xd824474, `sb` at 0xd82457c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xd824444, `lw` at 0xd824580.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xd824458, `sw` at 0xd824594.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xd82445c, `sw` at 0xd824598.
  2 such `sb` accesses store 1 byte to [a0+108] +0x1, including `sb` at 0xd82446c, `sb` at 0xd8245a0.
  2 such `sw` accesses store 4 bytes to [a0+108] +0x4, including `sw` at 0xd824470, `sw` at 0xd8245b4.
  2 such `sw` accesses store 4 bytes to [a0+108] +0x8, including `sw` at 0xd824484, `sw` at 0xd8245bc.
  2 such `sw` accesses store 4 bytes to [a0+108] +0xc, including `sw` at 0xd824490, `sw` at 0xd8245c8.
  2 such `sw` accesses store 4 bytes to [a0+108] +0x10, including `sw` at 0xd82449c, `sw` at 0xd8245d4.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0xd8244a4, `lw` at 0xd82451c, `lw` at 0xd8245d0.
  The `sw` at 0xd8244a8 stores 4 bytes to [a0+108] +0x14.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8244d0, `lw` at 0xd8244e8, `lw` at 0xd8245fc.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8244d4, `lw` at 0xd824600, `lw` at 0xd824708.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0xd824534, `lw` at 0xd82465c.
  The `lw` at 0xd8246a4 loads 4 bytes from ret(malloc) +0x0.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8246b8, `sw` at 0xd8246cc, `sw` at 0xd8246e0.
  The `lw` at 0xd8246bc loads 4 bytes from ret(malloc) +0x4.
  The `lw` at 0xd8246d0 loads 4 bytes from ret(malloc) +0x8.
  The `lw` at 0xd8246e4 loads 4 bytes from ret(malloc) +0xc.
  The `jalr` at 0xd8243c0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8243e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82441c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8244b8 calls _XReply with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x0, a3=0x0.
  The `jalr` at 0xd8244dc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8244f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824518 calls __glXPostHiddenError with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x11, a3=[a1+20].
  The `jalr` at 0xd824558 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8245e4 calls _XReply with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x0, a3=0x0.
  The `jalr` at 0xd824608 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824624 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824644 calls __glXPostHiddenError with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x1a, a3=[a1+20].
  The `jalr` at 0xd824670 calls malloc with a0=0x10, a1=?, a2=?, a3=?.
  The `jalr` at 0xd824690 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=0x10, a3=?.
  The `jalr` at 0xd8246f0 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824710 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82472c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8243d4 targets 0xd8243f4, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw t6,88(sp)` at 0xd8243d8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8243f4 targets 0xd82453c, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8243f8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82440c targets 0xd824430, is taken when t7(=[a0+112]) >= t8(=[a0+108]+24) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+24) (unsigned); its branch-likely delay slot `lw t1,60(sp)` at 0xd824410 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd824498 targets 0xd8244a8, is taken when t1(=a1) == 0, and falls through when t1(=a1) != 0.
  The `beq` branch at 0xd8244a0 targets 0xd8244a8 and is always taken.
  The `bne` branch at 0xd8244c0 targets 0xd82452c, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8244cc targets 0xd8244ec, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8244d0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8244f0 targets 0xd824504, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd824524 targets 0xd82473c and is always taken.
  The `beq` branch at 0xd824530 targets 0xd824660 and is always taken.
  The `beql` branch at 0xd824548 targets 0xd82456c, is taken when t8(=[a0+112]) >= t2(=[a0+108]+20) (unsigned), and falls through when t8(=[a0+112]) < t2(=[a0+108]+20) (unsigned); its branch-likely delay slot `lw t1,60(sp)` at 0xd82454c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8245c4 targets 0xd8245d4, is taken when t1(=a1) == 0, and falls through when t1(=a1) != 0.
  The `beq` branch at 0xd8245cc targets 0xd8245d4 and is always taken.
  The `bne` branch at 0xd8245ec targets 0xd824658, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8245f8 targets 0xd824618, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8245fc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82461c targets 0xd824630, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd824650 targets 0xd82473c and is always taken.
  The `beql` branch at 0xd824660 targets 0xd824700, is taken when v0(=[a3+4]) == 0, and falls through when v0(=[a3+4]) != 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd824664 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd824700 targets 0xd824720, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd824704 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd824724 targets 0xd82473c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `addiu v0,zero,1` at 0xd824728 runs only when taken and is annulled on fall-through.
  The return at 0xd824748 has v0 = one of 0x0, 0x1.
  The instructions from 0xd824538 to 0xd824538 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd824750 to 0xd824d2c are not reached by any path from the entry, and their branches are not listed.

- `__glx_Flush` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd8315a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd8315a4-0xd8316e8 (324 bytes).
  It occupies 324 bytes.
  The `lw` at 0xd8315b4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8315c8 loads 4 bytes from [0x1014] +0x114.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xd8, including `lw` at 0xd8315cc, `lw` at 0xd8316c4.
  The `lw` at 0xd8315dc loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8315f0, `lw` at 0xd831684.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8315fc, `lw` at 0xd831614, `lw` at 0xd831640.
  The `lw` at 0xd831600 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd831618 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd831628, `sw` at 0xd831644.
  The `sh` at 0xd83164c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd831650, `sb` at 0xd831678.
  The `lw` at 0xd831654 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd831668 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd83166c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd831670 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd831674 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd83167c loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd831680 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd83168c, `lw` at 0xd8316a4.
  The `lw` at 0xd831690 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd8315e8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd831608 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd831634 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd831698 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8316b4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8316c8 calls XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8315d0 targets 0xd8316d4, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd8315d8 targets 0xd8316c0, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd8315f8 targets 0xd831618, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8315fc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd831624 targets 0xd831648, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+8) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+8) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd831628 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd831688 targets 0xd8316a8, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83168c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8316ac targets 0xd8316c0, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  The return at 0xd8316e0 has v0 = one of [[[0x1014]+276]+216], ret(XFlush).

- `glXCreateWindow` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd837a78 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd837a78-0xd837c10 (408 bytes).
  It occupies 408 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd837ac8, `lw` at 0xd837ad4, `lw` at 0xd837af0.
  The `lw` at 0xd837acc loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lw` at 0xd837ae0 loads 4 bytes from a3 (arg3 at entry) +0x8.
  The `lw` at 0xd837aec loads 4 bytes from ?.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd837af8, `lw` at 0xd837b10, `lw` at 0xd837b3c.
  The `lw` at 0xd837afc loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd837b14 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd837b44 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd837b50 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd837b54, `sb` at 0xd837b7c.
  The `lw` at 0xd837b58 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd837b6c stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd837b70 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd837b78 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd837b80 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd837b84 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd837b88 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd837b8c stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd837b94 stores 4 bytes to [a0+108] +0xc.
  The `lw` at 0xd837b9c loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd837bb4 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd837bb8 stores 4 bytes to [a0+108] +0x14.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd837bc4, `lw` at 0xd837bdc.
  The `lw` at 0xd837bc8 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd837aa4 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd837b04 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd837b30 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd837ba0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x1f, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0xd837bd0 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd837bec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd837ab4 targets 0xd837ac4, is taken when v0(=ret(__glXSetupForCommand)) != 0, and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beq` branch at 0xd837abc targets 0xd837bfc and is always taken.
  The `beql` branch at 0xd837ac4 targets 0xd837af4, is taken when a3 == 0, and falls through when a3 != 0; its branch-likely delay slot `lw a1,1232(s0)` at 0xd837ac8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837ad0 targets 0xd837af4, is taken when v1(=[a3]) == 0, and falls through when v1(=[a3]) != 0; its branch-likely delay slot `lw a1,1232(s0)` at 0xd837ad4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd837ad8 targets 0xd837af0, is taken when v1(=[a3]) == 0, and falls through when v1(=[a3]) != 0.
  The `bnel` branch at 0xd837ae8 targets 0xd837ae4, is taken when t6(?) != 0, and falls through when t6(?) == 0; its branch-likely delay slot `lw t6,8(v0)` at 0xd837aec runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837af4 targets 0xd837b14, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,108(s0)` at 0xd837af8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837b20 targets 0xd837b44, is taken when t7(=[a0+112]) >= t8(=[a0+108]+24) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+24) (unsigned); its branch-likely delay slot `lw a2,60(sp)` at 0xd837b24 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837bc0 targets 0xd837be0, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd837bc4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837be4 targets 0xd837bfc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,48(sp)` at 0xd837be8 runs only when taken and is annulled on fall-through.
  The return at 0xd837c08 has v0 = one of 0x0, ret(?).

- `glXDestroyWindow` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd837c10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd837c10-0xd837d28 (280 bytes).
  It occupies 280 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd837c48, `lw` at 0xd837cd8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd837c50, `lw` at 0xd837c68, `lw` at 0xd837c94.
  The `lw` at 0xd837c54 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd837c6c loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd837c7c, `sw` at 0xd837c98.
  The `sh` at 0xd837ca4 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd837ca8, `sb` at 0xd837ccc.
  The `lw` at 0xd837cac loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd837cbc stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd837cc0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd837cc8 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd837cd4 stores 4 bytes to [a0+108] +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd837ce0, `lw` at 0xd837cf8.
  The `lw` at 0xd837ce4 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd837c34 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd837c5c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd837c88 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd837cec calls (unknown callee) with a0=a0 at entry (arg0), a1=0x20, a2=?, a3=?.
  The `jalr` at 0xd837d08 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd837c40 targets 0xd837d14, is taken when v0(=ret(__glXSetupForCommand)) == 0, and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `beql` branch at 0xd837c4c targets 0xd837c6c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd837c50 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837c78 targets 0xd837c9c, is taken when t6(=[a0+112]) >= t7(=[a0+108]+8) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+8) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd837c7c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837cdc targets 0xd837cfc, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd837ce0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837d00 targets 0xd837d18, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd837d04 runs only when taken and is annulled on fall-through.
  The return at 0xd837d20 has v0 = one of [a0+124], ?.

- `glXBindChannelToWindowSGIX` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd839e08 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd839e08-0xd839f4c (324 bytes).
  It occupies 324 bytes.
  The `lw` at 0xd839e18 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd839e38 loads 4 bytes from [0x1014] +0x114.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0xd839eec, `sb` at 0xd839f30.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd839ef8, `lw` at 0xd839efc, `lw` at 0xd839f08.
  The `jalr` at 0xd839e40 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd839e68 calls __glXInitChannelRectState [0xd839c70] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0xd839ea0 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64.
  The `jalr` at 0xd839eb8 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd839f10 calls (unknown callee) with a0=?, a1=0x1, a2=?, a3=?.
  The `beq` branch at 0xd839e4c targets 0xd839f38, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` branch at 0xd839e70 targets 0xd839f38, is taken when v0(=ret(__glXInitChannelRectState)) == 0, and falls through when v0(=ret(__glXInitChannelRectState)) != 0.
  The `beq` branch at 0xd839ee8 targets 0xd839f20, is taken when (t5(?) & 0xff) == 0, and falls through when (t5(?) & 0xff) != 0.
  The `beql` branch at 0xd839f00 targets 0xd839f3c, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd839f04 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd839f28 targets 0xd839f38, is taken when t9(=a3) != 0, and falls through when t9(=a3) == 0; its branch-likely delay slot `sw t0,48(sp)` at 0xd839f2c runs only when taken and is annulled on fall-through.
  The return at 0xd839f44 has v0 = one of 0x0, 0x1.

- `glXQueryHyperpipeNetworkSGIX` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd83a484 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd83a484-0xd83a758 (724 bytes).
  It occupies 724 bytes.
  5 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0xd83a4bc, `sw` at 0xd83a5cc, `sw` at 0xd83a5e0.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83a4c0, `lw` at 0xd83a584, `lw` at 0xd83a604.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83a4c8, `lw` at 0xd83a4e0, `lw` at 0xd83a50c.
  The `lw` at 0xd83a4cc loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd83a4e4 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd83a4f4, `sw` at 0xd83a510.
  The `sh` at 0xd83a51c stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83a520, `sb` at 0xd83a554.
  The `lw` at 0xd83a524 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83a538 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83a53c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd83a54c stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd83a550 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd83a558 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83a564 stores 4 bytes to [a0+108] +0xc.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83a58c, `lw` at 0xd83a5a4, `lw` at 0xd83a610.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83a590, `lw` at 0xd83a614, `lw` at 0xd83a6ac.
  The `jalr` at 0xd83a4a8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83a4d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a500 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a574 calls _XReply with a0=a0 at entry (arg0), a1=sp-44, a2=0x0, a3=0x0.
  The `jalr` at 0xd83a598 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a5b4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a5fc calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a61c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a638 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a670 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a694 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a6b4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a6d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a6f8 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd83a718 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a734 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd83a4c4 targets 0xd83a4e4, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd83a4c8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83a4f0 targets 0xd83a514, is taken when t7(=[a0+112]) >= t8(=[a0+108]+16) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd83a4f4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83a57c targets 0xd83a5d0, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd83a588 targets 0xd83a5a8, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83a58c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83a5ac targets 0xd83a5c4, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw t0,100(sp)` at 0xd83a5b0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83a5c8 targets 0xd83a744 and is always taken.
  The `blez` branch at 0xd83a5dc targets 0xd83a5f0, is taken when t1(?) <= 0 (signed), and falls through when t1(?) > 0 (signed).
  The `bne` branch at 0xd83a5e8 targets 0xd83a654, is taken when t1(?) < 0x21 (signed), and falls through when t1(?) >= 0x21 (signed).
  The `beql` branch at 0xd83a60c targets 0xd83a62c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83a610 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83a630 targets 0xd83a648, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw t2,100(sp)` at 0xd83a634 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83a64c targets 0xd83a744 and is always taken.
  The `bne` branch at 0xd83a680 targets 0xd83a6ec, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xd83a6a4 targets 0xd83a6c4, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83a6a8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83a6c8 targets 0xd83a6e0, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw t3,100(sp)` at 0xd83a6cc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83a6e4 targets 0xd83a744 and is always taken.
  The `beql` branch at 0xd83a708 targets 0xd83a728, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83a70c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83a72c targets 0xd83a744, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,92(sp)` at 0xd83a730 runs only when taken and is annulled on fall-through.
  The return at 0xd83a750 has v0 = one of 0x0, ?.

- `glXHyperpipeConfigSGIX` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd83a758 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd83a758-0xd83aa40 (744 bytes).
  It occupies 744 bytes.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83a7e0, `lw` at 0xd83a944, `lw` at 0xd83a99c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83a7e8, `lw` at 0xd83a80c, `lw` at 0xd83a844.
  The `lw` at 0xd83a7f0 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd83a810 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd83a820, `sw` at 0xd83a848.
  The `sh` at 0xd83a854 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83a858, `sb` at 0xd83a88c.
  The `lw` at 0xd83a85c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83a870 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83a874 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd83a884 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd83a888 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd83a890 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83a894 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd83a89c stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd83a8ac stores 4 bytes to [a0+108] +0x14.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd83a8c8, `lbu` at 0xd83a8f0, `lbu` at 0xd83a900.
  5 such `sb` accesses store 1 byte to ?, including `sb` at 0xd83a8dc, `sb` at 0xd83a8fc, `sb` at 0xd83a908.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83a94c, `lw` at 0xd83a964, `lw` at 0xd83a9b0.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83a950, `lw` at 0xd83a9b4, `lw` at 0xd83a9f8.
  The `sw` at 0xd83a990 stores 4 bytes to ?.
  The `jalr` at 0xd83a784 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83a7f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a830 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+108].
  The `jalr` at 0xd83a930 calls _XReply with a0=a0 at entry (arg0), a1=sp-44, a2=0x0, a3=0x0.
  The `jalr` at 0xd83a958 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a974 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a9bc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83a9d8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83aa00 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83aa1c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `blez` branch at 0xd83a798 targets 0xd83a7b0, is taken when t1(=a2) <= 0 (signed), and falls through when t1(=a2) > 0 (signed).
  The `beq` branch at 0xd83a7a0 targets 0xd83a7b0, is taken when t6(=a3) == 0, and falls through when t6(=a3) != 0.
  The `bne` branch at 0xd83a7a8 targets 0xd83a7b8, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd83a7b0 targets 0xd83aa2c and is always taken.
  The `bgez` branch at 0xd83a7b8 targets 0xd83a7c8, is taken when t7(=a1) >= 0 (signed), and falls through when t7(=a1) < 0 (signed).
  The `beq` branch at 0xd83a7c0 targets 0xd83aa2c and is always taken.
  The `beql` branch at 0xd83a7e4 targets 0xd83a810, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw a3,108(s0)` at 0xd83a7e8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83a81c targets 0xd83a84c, is taken when t8(=[a0+112]) >= t2(?) (unsigned), and falls through when t8(=[a0+112]) < t2(?) (unsigned); its branch-likely delay slot `sw a3,100(s0)` at 0xd83a820 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xd83a8b0 targets 0xd83a920, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `beq` branch at 0xd83a8c0 targets 0xd83a8e8, is taken when (a3(?) & 0x3) == 0, and falls through when (a3(?) & 0x3) != 0.
  The `bne` branch at 0xd83a8d8 targets 0xd83a8c8, is taken when a1(?) != a0(?), and falls through when a1(?) == a0(?).
  The `beq` branch at 0xd83a8e0 targets 0xd83a920, is taken when a0(?) == t0(?), and falls through when a0(?) != t0(?).
  The `bne` branch at 0xd83a918 targets 0xd83a8f0, is taken when a0(?) != a1(?), and falls through when a0(?) == a1(?).
  The `bne` branch at 0xd83a93c targets 0xd83a988, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd83a948 targets 0xd83a968, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83a94c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83a96c targets 0xd83a980, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd83a980 targets 0xd83aa2c and is always taken.
  The `bnel` branch at 0xd83a998 targets 0xd83a9ac, is taken when t1(=a2) != t4(?), and falls through when t1(=a2) == t4(?); its branch-likely delay slot `lw v0,1232(s0)` at 0xd83a99c runs only when taken and is annulled on fall-through.
  The `bgezl` branch at 0xd83a9a0 targets 0xd83a9f0, is taken when t3(?) >= 0 (signed), and falls through when t3(?) < 0 (signed); its branch-likely delay slot `lw v0,1232(s0)` at 0xd83a9a4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83a9ac targets 0xd83a9cc, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83a9b0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83a9d0 targets 0xd83a9e4, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd83a9e4 targets 0xd83aa2c and is always taken.
  The `beql` branch at 0xd83a9f0 targets 0xd83aa10, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83a9f4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83aa14 targets 0xd83aa2c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `or v0,zero,zero` at 0xd83aa18 runs only when taken and is annulled on fall-through.
  The return at 0xd83aa38 has v0 = one of 0x0, 0x5b.
  The instructions from 0xd83a9ec to 0xd83a9ec are not reached by any path from the entry, and their branches are not listed.

- `glXDestroyHyperpipeConfigSGIX` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd83aa40 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd83aa40-0xd83abe0 (416 bytes).
  It occupies 416 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83aa70, `lw` at 0xd83ab40, `lw` at 0xd83ab8c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83aa7c, `lw` at 0xd83aa94, `lw` at 0xd83aac0.
  The `lw` at 0xd83aa80 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd83aa98 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd83aaa8, `sw` at 0xd83aac4.
  The `sh` at 0xd83aad0 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83aad4, `sb` at 0xd83ab08.
  The `lw` at 0xd83aad8 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83aaec stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83aaf0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd83ab00 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd83ab04 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd83ab0c loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83ab18 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd83ab28 stores 4 bytes to [a0+108] +0x10.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83ab48, `lw` at 0xd83ab60, `lw` at 0xd83ab94.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83ab4c, `lw` at 0xd83ab98.
  The `jalr` at 0xd83aa64 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83aa88 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83aab4 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ab30 calls _XReply with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0.
  The `jalr` at 0xd83ab54 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ab70 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83aba0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83abbc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd83aa78 targets 0xd83aa98, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd83aa7c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83aaa4 targets 0xd83aac8, is taken when t6(=[a0+112]) >= t7(=[a0+108]+32) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+32) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd83aaa8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83ab38 targets 0xd83ab84, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd83ab44 targets 0xd83ab64, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83ab48 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83ab68 targets 0xd83ab7c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd83ab7c targets 0xd83abcc and is always taken.
  The `beql` branch at 0xd83ab90 targets 0xd83abb0, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83ab94 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83abb4 targets 0xd83abcc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,40(sp)` at 0xd83abb8 runs only when taken and is annulled on fall-through.
  The return at 0xd83abd8 has v0 = one of 0x5c, ?.

- `glXQueryHyperpipeConfigSGIX` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd83abe0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd83abe0-0xd83ae9c (700 bytes).
  It occupies 700 bytes.
  5 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xd83ac1c, `sw` at 0xd83acf0, `sw` at 0xd83ad48.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83ac20, `lw` at 0xd83acf4, `lw` at 0xd83ad50.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83ac28, `lw` at 0xd83ac40, `lw` at 0xd83ac6c.
  The `lw` at 0xd83ac2c loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd83ac44 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd83ac54, `sw` at 0xd83ac70.
  The `sh` at 0xd83ac7c stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83ac80, `sb` at 0xd83acb4.
  The `lw` at 0xd83ac84 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83ac98 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83ac9c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd83acac stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd83acb0 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd83acb8 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83acc4 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd83acd4 stores 4 bytes to [a0+108] +0x10.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83acfc, `lw` at 0xd83ad14, `lw` at 0xd83ad58.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83ad00, `lw` at 0xd83ad5c, `lw` at 0xd83adf8.
  The `jalr` at 0xd83ac08 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83ac34 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ac60 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83acdc calls _XReply with a0=a0 at entry (arg0), a1=sp-44, a2=0x0, a3=0x0.
  The `jalr` at 0xd83ad08 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ad24 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ad64 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ad80 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83adb4 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83add8 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ae00 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ae1c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ae3c calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd83ae5c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ae78 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd83ac24 targets 0xd83ac44, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd83ac28 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83ac50 targets 0xd83ac74, is taken when t7(=[a0+112]) >= t8(=[a0+108]+32) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+32) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd83ac54 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83ace4 targets 0xd83ad38, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd83acf8 targets 0xd83ad18, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83acfc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83ad1c targets 0xd83ad30, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd83ad30 targets 0xd83ae88 and is always taken.
  The `bgtz` branch at 0xd83ad44 targets 0xd83ad94, is taken when t2(?) > 0 (signed), and falls through when t2(?) <= 0 (signed).
  The `beql` branch at 0xd83ad54 targets 0xd83ad74, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83ad58 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83ad78 targets 0xd83ad8c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd83ad8c targets 0xd83ae88 and is always taken.
  The `bne` branch at 0xd83adc4 targets 0xd83ae30, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beql` branch at 0xd83adf0 targets 0xd83ae10, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83adf4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83ae14 targets 0xd83ae28, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd83ae28 targets 0xd83ae88 and is always taken.
  The `beql` branch at 0xd83ae4c targets 0xd83ae6c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83ae50 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83ae70 targets 0xd83ae88, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,92(sp)` at 0xd83ae74 runs only when taken and is annulled on fall-through.
  The return at 0xd83ae94 has v0 = one of 0x0, ?.

- `glXBindHyperpipeSGIX` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd83ae9c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd83ae9c-0xd83af54 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0xd83aeac loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83aebc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83aec8 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd83aed0 loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd83aee0 loads 4 bytes from [[[0x1014]+276]+200] +0x98.
  The `lw` at 0xd83aee8 loads 4 bytes from [[0x1014]+276] +0x38.
  The `sw` at 0xd83af3c stores 4 bytes to [[0x1014]+276] +0x38.
  The `jalr` at 0xd83af1c calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=a1 at entry (arg1), a2=-0x1, a3=a3 at entry (arg3).
  The `beq` branch at 0xd83aec0 targets 0xd83aed4, is taken when v1(=[[0x1014]+276]) == 0, and falls through when v1(=[[0x1014]+276]) != 0.
  The `bnel` branch at 0xd83aecc targets 0xd83aee0, is taken when t7(=[[[0x1014]+276]+196]) != 0, and falls through when t7(=[[[0x1014]+276]+196]) == 0; its branch-likely delay slot `lw a0,200(v1)` at 0xd83aed0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83aed4 targets 0xd83af44 and is always taken.
  The `bnel` branch at 0xd83aee4 targets 0xd83aef8, is taken when v0(=[[[[0x1014]+276]+200]+152]) != 0, and falls through when v0(=[[[[0x1014]+276]+200]+152]) == 0; its branch-likely delay slot `lw t8,56(v1)` at 0xd83aee8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83aeec targets 0xd83af44 and is always taken.
  The `beql` branch at 0xd83aefc targets 0xd83af18, is taken when a2(=-0x1) == t8(=[[[0x1014]+276]+56]), and falls through when a2(=-0x1) != t8(=[[[0x1014]+276]+56]); its branch-likely delay slot `sw v1,36(sp)` at 0xd83af00 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83af04 targets 0xd83af18, is taken when a1 == a2(=-0x1), and falls through when a1 != a2(=-0x1); its branch-likely delay slot `sw v1,36(sp)` at 0xd83af08 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83af0c targets 0xd83af44 and is always taken.
  The `beq` branch at 0xd83af2c targets 0xd83af3c, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xd83af34 targets 0xd83af44 and is always taken.
  The return at 0xd83af4c has v0 = one of 0x0, 0x5, 0x5c.
  The instructions from 0xd83aedc to 0xd83aedc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd83aef4 to 0xd83aef4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd83af14 to 0xd83af14 are not reached by any path from the entry, and their branches are not listed.

- `glXQueryHyperpipeBestAttribSGIX` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd83af54 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd83af54-0xd83afec (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xd83af64 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83af74 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83af80 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd83af88 loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd83af9c loads 4 bytes from [[[0x1014]+276]+200] +0x9c.
  The `jalr` at 0xd83afbc calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd83af78 targets 0xd83af8c, is taken when v0(=[[0x1014]+276]) == 0, and falls through when v0(=[[0x1014]+276]) != 0.
  The `bnel` branch at 0xd83af84 targets 0xd83af98, is taken when t7(=[[[0x1014]+276]+196]) != 0, and falls through when t7(=[[[0x1014]+276]+196]) == 0; its branch-likely delay slot `lw a0,200(v0)` at 0xd83af88 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83af8c targets 0xd83afdc and is always taken.
  The `bnel` branch at 0xd83afa0 targets 0xd83afb4, is taken when v1(=[[[[0x1014]+276]+200]+156]) != 0, and falls through when v1(=[[[[0x1014]+276]+200]+156]) == 0; its branch-likely delay slot `lw t9,60(sp)` at 0xd83afa4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83afa8 targets 0xd83afdc and is always taken.
  The `beq` branch at 0xd83afc8 targets 0xd83afd8, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xd83afd0 targets 0xd83afdc and is always taken.
  The return at 0xd83afe4 has v0 = one of 0x5, 0x5c, ret(?).
  The instructions from 0xd83af94 to 0xd83af94 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd83afb0 to 0xd83afb0 are not reached by any path from the entry, and their branches are not listed.

- `glXQueryHyperpipeAttribSGIX` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd83afec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd83afec-0xd83b07c (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd83affc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83b00c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83b018 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd83b020 loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd83b034 loads 4 bytes from [[[0x1014]+276]+200] +0xa0.
  The `jalr` at 0xd83b04c calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd83b010 targets 0xd83b024, is taken when v0(=[[0x1014]+276]) == 0, and falls through when v0(=[[0x1014]+276]) != 0.
  The `bnel` branch at 0xd83b01c targets 0xd83b030, is taken when t7(=[[[0x1014]+276]+196]) != 0, and falls through when t7(=[[[0x1014]+276]+196]) == 0; its branch-likely delay slot `lw a0,200(v0)` at 0xd83b020 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83b024 targets 0xd83b06c and is always taken.
  The `bnel` branch at 0xd83b038 targets 0xd83b04c, is taken when v1(=[[[[0x1014]+276]+200]+160]) != 0, and falls through when v1(=[[[[0x1014]+276]+200]+160]) == 0; its branch-likely delay slot `sw t8,16(sp)` at 0xd83b03c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83b040 targets 0xd83b06c and is always taken.
  The `beq` branch at 0xd83b058 targets 0xd83b068, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xd83b060 targets 0xd83b06c and is always taken.
  The return at 0xd83b074 has v0 = one of 0x5, 0x5c, ret(?).
  The instructions from 0xd83b02c to 0xd83b02c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd83b048 to 0xd83b048 are not reached by any path from the entry, and their branches are not listed.

- `glXHyperpipeAttribSGIX` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd83b07c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd83b07c-0xd83b10c (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd83b08c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83b09c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83b0a8 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd83b0b0 loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd83b0c4 loads 4 bytes from [[[0x1014]+276]+200] +0xa4.
  The `jalr` at 0xd83b0dc calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd83b0a0 targets 0xd83b0b4, is taken when v0(=[[0x1014]+276]) == 0, and falls through when v0(=[[0x1014]+276]) != 0.
  The `bnel` branch at 0xd83b0ac targets 0xd83b0c0, is taken when t7(=[[[0x1014]+276]+196]) != 0, and falls through when t7(=[[[0x1014]+276]+196]) == 0; its branch-likely delay slot `lw a0,200(v0)` at 0xd83b0b0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83b0b4 targets 0xd83b0fc and is always taken.
  The `bnel` branch at 0xd83b0c8 targets 0xd83b0dc, is taken when v1(=[[[[0x1014]+276]+200]+164]) != 0, and falls through when v1(=[[[[0x1014]+276]+200]+164]) == 0; its branch-likely delay slot `sw t8,16(sp)` at 0xd83b0cc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83b0d0 targets 0xd83b0fc and is always taken.
  The `beq` branch at 0xd83b0e8 targets 0xd83b0f8, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xd83b0f0 targets 0xd83b0fc and is always taken.
  The return at 0xd83b104 has v0 = one of 0x5, 0x5c, ret(?).
  The instructions from 0xd83b0bc to 0xd83b0bc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd83b0d8 to 0xd83b0d8 are not reached by any path from the entry, and their branches are not listed.
