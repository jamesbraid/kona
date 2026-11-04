# Instruction readings from hostfacts

These entries record established instruction facts from whole routine bodies in the identified binaries. They describe software behavior, not hardware behavior, and each instruction locator names an address in that binary build.

Skipped routines: 24,771 are located, understood, or marked as having no software dependency; 1,092 already have an exact entry for the same binary and routine; 592 eligible rows have no code address or size (one is in the selected slice and 591 fall later); 27,604 addressable eligible routines fall after the selected 250.

- `__glXGetPipeAddress` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd82077c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd82077c-0xd820784 (8 bytes).
  It occupies 8 bytes.
  The return at 0xd82077c has v0 = 0x4000.
- `glXQueryHyperpipeNetworkSGIX` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd83a484 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
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
- `glXHyperpipeConfigSGIX` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd83a758 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
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
- `glXDestroyHyperpipeConfigSGIX` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd83aa40 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
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
- `glXQueryHyperpipeConfigSGIX` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd83abe0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
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
- `glXBindHyperpipeSGIX` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd83ae9c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd83ae9c-0xd83af54 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0xd83aeac loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83aebc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83aec8 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd83aed0 loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd83aee0 loads 4 bytes from [[[0x1014]+276]+200] +0x98.
  The `lw` at 0xd83aee8 loads 4 bytes from [[0x1014]+276] +0x38.
  The `sw` at 0xd83af3c stores 4 bytes to ?.
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
- `glXQueryHyperpipeBestAttribSGIX` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd83af54 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
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
- `glXQueryHyperpipeAttribSGIX` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd83afec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
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
- `glXHyperpipeAttribSGIX` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd83b07c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
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
- `SubdivRegCreaseEdge` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda0d580 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda0d580-0xda0d6ac (300 bytes).
  It occupies 300 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda0d5c4, `lwc1` at 0xda0d5c8, `lwc1` at 0xda0d624.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda0d5f0, `swc1` at 0xda0d648, `swc1` at 0xda0d664.
  The `blez` branch at 0xda0d590 targets 0xda0d6a4, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xda0d59c targets 0xda0d5fc, is taken when (a0 & 0x3) == 0, and falls through when (a0 & 0x3) != 0.
  The `bne` branch at 0xda0d5ec targets 0xda0d5c4, is taken when t2(?) != v0(?), and falls through when t2(?) == v0(?).
  The `beq` branch at 0xda0d5f4 targets 0xda0d6a4, is taken when v0(?) == a0, and falls through when v0(?) != a0.
  The `bne` branch at 0xda0d69c targets 0xda0d624, is taken when t1(?) != t2(=((a0 << 0x2) + a1)), and falls through when t1(?) == t2(=((a0 << 0x2) + a1)).
  The return at 0xda0d6a4 has v0 = one of 0x0, ?.
- `SubdivIRRegCreaseEdge` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda0d6ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda0d6ac-0xda0d840 (404 bytes).
  It occupies 404 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda0d708, `lwc1` at 0xda0d70c, `lwc1` at 0xda0d788.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda0d740, `swc1` at 0xda0d7b8, `swc1` at 0xda0d7e0.
  The `blez` branch at 0xda0d6bc targets 0xda0d838, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xda0d6c8 targets 0xda0d748, is taken when (a0 & 0x3) == 0, and falls through when (a0 & 0x3) != 0.
  The `bne` branch at 0xda0d73c targets 0xda0d708, is taken when t2(?) != v0(?), and falls through when t2(?) == v0(?).
  The `beq` branch at 0xda0d744 targets 0xda0d838, is taken when v0(?) == a0, and falls through when v0(?) != a0.
  The `bne` branch at 0xda0d830 targets 0xda0d788, is taken when t1(?) != t2(=((a0 << 0x2) + a1)), and falls through when t1(?) == t2(=((a0 << 0x2) + a1)).
  The return at 0xda0d838 has v0 = one of 0x0, ?.
- `glInstrumentsBufferSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6f258 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6f258-0xda6f264 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6f258 loads 4 bytes from abs 0x1458.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6f25c).
- `__glXGetPipeAddress` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd80e4dc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd80e4dc-0xd80e4e4 (8 bytes).
  It occupies 8 bytes.
  The return at 0xd80e4dc has v0 = 0x4000.
- `glXQueryHyperpipeNetworkSGIX` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd83cc58 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd83cc58-0xd83cecc (628 bytes).
  It occupies 628 bytes.
  5 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0xd83cc8c, `sw` at 0xd83cd38, `sw` at 0xd83cd84.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83cc90, `lw` at 0xd83cd58, `lw` at 0xd83cde0.
  The `lw` at 0xd83cc9c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83cca8, `lw` at 0xd83cce0, `lw` at 0xd83ce7c.
  The `lw` at 0xd83ccac loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83ccc8 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83ccd0 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83ccd8, `sb` at 0xd83cd0c.
  The `lw` at 0xd83ccdc loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83cce8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83ccf4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83ccfc stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83cd04 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83cd18 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83cd24 stores 4 bytes to [a0+108] +0xc.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83cd64, `lw` at 0xd83cdec, `lw` at 0xd83ce34.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83cd70, `lw` at 0xd83cdf8, `lw` at 0xd83ce40.
  The `jalr` at 0xd83cc84 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83cca0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83cd20 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+132], a5=0x1000e, a6=0x11.
  The `jalr` at 0xd83cd50 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cd68 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83cd7c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cdbc calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cdd8 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cdf0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83ce04 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ce20 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd83ce38 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83ce4c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ce70 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ce90 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83cea4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83cc94 targets 0xd83cca8, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `bne` branch at 0xd83ccb8 targets 0xd83ce70, is taken when v1(=[a0+112]) < a0(=[a0+108]+16) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+16) (unsigned).
  The `beq` branch at 0xd83cd28 targets 0xd83ce80, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `blez` branch at 0xd83cd34 targets 0xd83cd48, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `bne` branch at 0xd83cd40 targets 0xd83cda4, is taken when a0(?) < 0x21 (signed), and falls through when a0(?) >= 0x21 (signed).
  The `beq` branch at 0xd83cd5c targets 0xd83cd70, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83cd74 targets 0xd83cd84, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `bne` branch at 0xd83cdc8 targets 0xd83ce18, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd83cde4 targets 0xd83cdf8, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83cdfc targets 0xd83ce0c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83ce10 targets 0xd83cd8c and is always taken.
  The `beq` branch at 0xd83ce2c targets 0xd83ce40, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83ce44 targets 0xd83ce58, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83ce78 targets 0xd83ccc0 and is always taken.
  The `beq` branch at 0xd83ce84 targets 0xd83ce98, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83ce9c targets 0xd83ceac, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The return at 0xd83cd9c has v0 = 0x0.
  The return at 0xd83ce68 has v0 = ?.
  The return at 0xd83cec4 has v0 = 0x0.
- `glXHyperpipeConfigSGIX` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd83cecc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd83cecc-0xd83d18c (704 bytes).
  It occupies 704 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83cf30, `lw` at 0xd83d07c, `lw` at 0xd83d0e8.
  The `lw` at 0xd83cf3c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83cf5c, `lw` at 0xd83cfa0, `lw` at 0xd83d140.
  The `lw` at 0xd83cf68 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83cf84 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83cf8c, `sb` at 0xd83cfd0.
  The `sh` at 0xd83cf98 stores 2 bytes to [a0+108] +0x2.
  The `lw` at 0xd83cf9c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83cfac stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83cfbc stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83cfc4 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83cfcc stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83cfd4 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83cfd8 stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd83cfe0 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd83cfec stores 4 bytes to [a0+108] +0xc.
  The `lbu` at 0xd83d000 loads 1 byte from a3 (arg3 at entry) +0x0.
  The `sb` at 0xd83d00c stores 1 byte to [a0+108] +0x20.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd83d01c, `lbu` at 0xd83d02c.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0xd83d024, `sb` at 0xd83d038.
  The `sw` at 0xd83d064 stores 4 bytes to a4 (arg4 at entry) +0x0.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83d088, `lw` at 0xd83d0f4, `lw` at 0xd83d150.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83d094, `lw` at 0xd83d100, `lw` at 0xd83d15c.
  The `jalr` at 0xd83cf08 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83cf40 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d050 calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0.
  The `jalr` at 0xd83d08c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d0a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d0f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d10c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d134 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d154 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d168 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `blez` branch at 0xd83cf10 targets 0xd83d0c8, is taken when s2(=a2) <= 0 (signed), and falls through when s2(=a2) > 0 (signed).
  The `beq` branch at 0xd83cf18 targets 0xd83d0c8, is taken when s3(=a3) == 0, and falls through when s3(=a3) != 0.
  The `beq` branch at 0xd83cf20 targets 0xd83d0c8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bltz` branch at 0xd83cf28 targets 0xd83d17c, is taken when v1(=a1) < 0 (signed), and falls through when v1(=a1) >= 0 (signed).
  The `beq` branch at 0xd83cf34 targets 0xd83cf4c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xd83cf78 targets 0xd83d134, is taken when a1(=[a0+112]) < a2(?) (unsigned), and falls through when a1(=[a0+112]) >= a2(?) (unsigned).
  The `blez` branch at 0xd83cfe8 targets 0xd83d03c, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0xd83cff4 targets 0xd83d010, is taken when (s0(?) & 0x1) == 0, and falls through when (s0(?) & 0x1) != 0.
  The `beq` branch at 0xd83d014 targets 0xd83d03c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xd83d034 targets 0xd83d01c, is taken when v0(?) != s0(?), and falls through when v0(?) == s0(?).
  The `beq` branch at 0xd83d058 targets 0xd83d144, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0xd83d06c targets 0xd83d0e8, is taken when s2(=a2) != t1(?), and falls through when s2(=a2) == t1(?).
  The `bltz` branch at 0xd83d074 targets 0xd83d0e8, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0xd83d080 targets 0xd83d094, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d098 targets 0xd83d0a8, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d0ec targets 0xd83d100, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d104 targets 0xd83d114, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d13c targets 0xd83cf80 and is always taken.
  The `beq` branch at 0xd83d148 targets 0xd83d15c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d160 targets 0xd83d170, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d174 targets 0xd83d0d4 and is always taken.
  The `beq` branch at 0xd83d184 targets 0xd83d0d4 and is always taken.
  The return at 0xd83d0c0 has v0 = 0x0.
  The return at 0xd83d0e0 has v0 = 0x5b.
  The return at 0xd83d12c has v0 = 0x5b.
- `glXDestroyHyperpipeConfigSGIX` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd83d18c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd83d18c-0xd83d300 (372 bytes).
  It occupies 372 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83d1c0, `lw` at 0xd83d25c.
  The `lw` at 0xd83d1cc loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83d1d8, `lw` at 0xd83d20c, `lw` at 0xd83d2b8.
  The `lw` at 0xd83d1dc loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83d1f4 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83d1fc stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83d204, `sb` at 0xd83d234.
  The `lw` at 0xd83d208 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83d214 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83d220 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83d228 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83d230 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83d23c loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83d248 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd83d254 stores 4 bytes to [a0+108] +0xc.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83d26c, `lw` at 0xd83d2c4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83d278, `lw` at 0xd83d2d0.
  The `jalr` at 0xd83d1b8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83d1d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd83d250 calls _XReply with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x0, a4=[a0+132], a5=[a0+108], a6=0x10011, a7=0x11.
  The `jalr` at 0xd83d270 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd83d284 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d2ac calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+108].
  The `jalr` at 0xd83d2c8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd83d2dc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83d1c4 targets 0xd83d1d8, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `bne` branch at 0xd83d1e8 targets 0xd83d2a8, is taken when v1(=[a0+112]) < a0(=[a0+108]+32) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+32) (unsigned).
  The `beq` branch at 0xd83d258 targets 0xd83d2bc, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xd83d264 targets 0xd83d278, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d27c targets 0xd83d290, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d2b4 targets 0xd83d1ec and is always taken.
  The `beq` branch at 0xd83d2bc targets 0xd83d2d0, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d2d4 targets 0xd83d2e8, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The return at 0xd83d2a0 has v0 = ?.
  The return at 0xd83d2f8 has v0 = 0x5c.
- `glXQueryHyperpipeConfigSGIX` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd83d300 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd83d300-0xd83d568 (616 bytes).
  It occupies 616 bytes.
  5 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xd83d338, `sw` at 0xd83d3f0, `sw` at 0xd83d3f4.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83d33c, `lw` at 0xd83d3f8, `lw` at 0xd83d47c.
  The `lw` at 0xd83d348 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83d354, `lw` at 0xd83d390, `lw` at 0xd83d52c.
  The `lw` at 0xd83d358 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83d378 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83d380 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83d388, `sb` at 0xd83d3b8.
  The `lw` at 0xd83d38c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83d398 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83d3a4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83d3ac stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83d3b4 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83d3c0 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83d3cc stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd83d3d8 stores 4 bytes to [a0+108] +0xc.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83d404, `lw` at 0xd83d488, `lw` at 0xd83d4e8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83d410, `lw` at 0xd83d494, `lw` at 0xd83d4f4.
  The `jalr` at 0xd83d330 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83d34c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d3d4 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+132], a5=a1 at entry (arg1), a6=0x1000f, a7=0x11.
  The `jalr` at 0xd83d408 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d41c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d458 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d470 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d48c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d4a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d4d4 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd83d4ec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d500 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d520 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d544 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d558 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83d340 targets 0xd83d354, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `bne` branch at 0xd83d364 targets 0xd83d520, is taken when v1(=[a0+112]) < a0(=[a0+108]+32) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+32) (unsigned).
  The `beq` branch at 0xd83d3dc targets 0xd83d530, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bgtz` branch at 0xd83d3ec targets 0xd83d440, is taken when t9(?) > 0 (signed), and falls through when t9(?) <= 0 (signed).
  The `beq` branch at 0xd83d3fc targets 0xd83d410, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d414 targets 0xd83d428, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `bne` branch at 0xd83d460 targets 0xd83d4c4, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd83d480 targets 0xd83d494, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d498 targets 0xd83d4ac, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d4e0 targets 0xd83d4f4, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d4f8 targets 0xd83d50c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d528 targets 0xd83d36c and is always taken.
  The `beq` branch at 0xd83d538 targets 0xd83d54c, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d550 targets 0xd83d560, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d560 targets 0xd83d50c and is always taken.
  The return at 0xd83d438 has v0 = 0x0.
  The return at 0xd83d4bc has v0 = 0x0.
  The return at 0xd83d518 has v0 = one of ?, 0x0.
- `glXBindHyperpipeSGIX` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd83d568 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd83d568-0xd83d630 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd83d570 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83d574 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83d594 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd83d59c loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd83d5a0 loads 4 bytes from [[[0x1014]+276]+200] +0x98.
  The `lw` at 0xd83d5ac loads 4 bytes from [[0x1014]+276] +0x38.
  The `sw` at 0xd83d624 stores 4 bytes to [[0x1014]+276] +0x38.
  The `jalr` at 0xd83d600 calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd83d58c targets 0xd83d5e4, is taken when s0(=[[0x1014]+276]) == 0, and falls through when s0(=[[0x1014]+276]) != 0.
  The `beq` branch at 0xd83d598 targets 0xd83d5e4, is taken when t8(=[[[0x1014]+276]+196]) == 0, and falls through when t8(=[[[0x1014]+276]+196]) != 0.
  The `beq` branch at 0xd83d5a4 targets 0xd83d618, is taken when t9(=[[[[0x1014]+276]+200]+152]) == 0, and falls through when t9(=[[[[0x1014]+276]+200]+152]) != 0.
  The `beq` branch at 0xd83d5b0 targets 0xd83d5f8, is taken when at(=[[[0x1014]+276]+56]) == a1(=-0x1), and falls through when at(=[[[0x1014]+276]+56]) != a1(=-0x1).
  The `beq` branch at 0xd83d5b8 targets 0xd83d5f8, is taken when v0(=a1) == a1(=-0x1), and falls through when v0(=a1) != a1(=-0x1).
  The `beq` branch at 0xd83d608 targets 0xd83d620, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xd83d610 targets 0xd83d5d4 and is always taken.
  The `beq` branch at 0xd83d618 targets 0xd83d5d4 and is always taken.
  The `beq` branch at 0xd83d628 targets 0xd83d5d4 and is always taken.
  The return at 0xd83d5cc has v0 = 0x5.
  The return at 0xd83d5dc has v0 = one of 0x0, 0x5, 0x5c.
  The return at 0xd83d5f0 has v0 = 0x5.
- `glXQueryHyperpipeBestAttribSGIX` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd83d630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd83d630-0xd83d6a8 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd83d630 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83d634 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83d650 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd83d658 loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd83d65c loads 4 bytes from [[[0x1014]+276]+200] +0x9c.
  The `jalr` at 0xd83d66c calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd83d648 targets 0xd83d690, is taken when v0(=[[0x1014]+276]) == 0, and falls through when v0(=[[0x1014]+276]) != 0.
  The `beq` branch at 0xd83d654 targets 0xd83d690, is taken when v1(=[[[0x1014]+276]+196]) == 0, and falls through when v1(=[[[0x1014]+276]+196]) != 0.
  The `beq` branch at 0xd83d660 targets 0xd83d6a0, is taken when t9(=[[[[0x1014]+276]+200]+156]) == 0, and falls through when t9(=[[[[0x1014]+276]+200]+156]) != 0.
  The `beq` branch at 0xd83d6a0 targets 0xd83d680 and is always taken.
  The return at 0xd83d688 has v0 = one of ?, 0x5c.
  The return at 0xd83d698 has v0 = 0x5.
- `glXQueryHyperpipeAttribSGIX` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd83d6a8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd83d6a8-0xd83d720 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd83d6a8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83d6ac loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83d6c8 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd83d6d0 loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd83d6d4 loads 4 bytes from [[[0x1014]+276]+200] +0xa0.
  The `jalr` at 0xd83d6e4 calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd83d6c0 targets 0xd83d708, is taken when v0(=[[0x1014]+276]) == 0, and falls through when v0(=[[0x1014]+276]) != 0.
  The `beq` branch at 0xd83d6cc targets 0xd83d708, is taken when v1(=[[[0x1014]+276]+196]) == 0, and falls through when v1(=[[[0x1014]+276]+196]) != 0.
  The `beq` branch at 0xd83d6d8 targets 0xd83d718, is taken when t9(=[[[[0x1014]+276]+200]+160]) == 0, and falls through when t9(=[[[[0x1014]+276]+200]+160]) != 0.
  The `beq` branch at 0xd83d718 targets 0xd83d6f8 and is always taken.
  The return at 0xd83d700 has v0 = one of ?, 0x5c.
  The return at 0xd83d710 has v0 = 0x5.
- `glXHyperpipeAttribSGIX` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd83d720 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd83d720-0xd83d798 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd83d720 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83d724 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83d740 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd83d748 loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd83d74c loads 4 bytes from [[[0x1014]+276]+200] +0xa4.
  The `jalr` at 0xd83d75c calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd83d738 targets 0xd83d780, is taken when v0(=[[0x1014]+276]) == 0, and falls through when v0(=[[0x1014]+276]) != 0.
  The `beq` branch at 0xd83d744 targets 0xd83d780, is taken when v1(=[[[0x1014]+276]+196]) == 0, and falls through when v1(=[[[0x1014]+276]+196]) != 0.
  The `beq` branch at 0xd83d750 targets 0xd83d790, is taken when t9(=[[[[0x1014]+276]+200]+164]) == 0, and falls through when t9(=[[[[0x1014]+276]+200]+164]) != 0.
  The `beq` branch at 0xd83d790 targets 0xd83d770 and is always taken.
  The return at 0xd83d778 has v0 = one of ?, 0x5c.
  The return at 0xd83d788 has v0 = 0x5.
- `SubdivRegCreaseEdge` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda0ae30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda0ae30-0xda0af18 (232 bytes).
  It occupies 232 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda0ae48, `lwc1` at 0xda0ae4c, `lwc1` at 0xda0ae90.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda0ae74, `swc1` at 0xda0aea8, `swc1` at 0xda0aec4.
  The `blez` branch at 0xda0ae30 targets 0xda0af10, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xda0ae40 targets 0xda0ae78, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xda0ae70 targets 0xda0ae48, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xda0ae7c targets 0xda0af10, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xda0af08 targets 0xda0ae90, is taken when a1(?) != a5(=((a0 << 0x2) + a1)), and falls through when a1(?) == a5(=((a0 << 0x2) + a1)).
  The return at 0xda0af10 has v0 = ?.
- `SubdivIRRegCreaseEdge` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda0af20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda0af20-0xda0b038 (280 bytes).
  It occupies 280 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda0af40, `lwc1` at 0xda0af44, `lwc1` at 0xda0af90.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda0af74, `swc1` at 0xda0afb0, `swc1` at 0xda0afd4.
  The `blez` branch at 0xda0af20 targets 0xda0b030, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xda0af38 targets 0xda0af78, is taken when (a0 & 0x3) == 0, and falls through when (a0 & 0x3) != 0.
  The `bne` branch at 0xda0af70 targets 0xda0af40, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xda0af7c targets 0xda0b030, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xda0b028 targets 0xda0af90, is taken when a1(?) != a5(=((a0 << 0x2) + a1)), and falls through when a1(?) == a5(=((a0 << 0x2) + a1)).
  The return at 0xda0b030 has v0 = ?.
- `glInstrumentsBufferSGIX` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda79118 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda79118-0xda79124 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda79118 loads 4 bytes from abs 0x1458.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda7911c).
- `__glXGetPipeAddress` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x2643004 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x2643004-0x264300c (8 bytes).
  It occupies 8 bytes.
  The return at 0x2643004 has v0 = 0x4000.
- `glXQueryHyperpipeNetworkSGIX` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x267187c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x267187c-0x2671af0 (628 bytes).
  It occupies 628 bytes.
  5 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x26718b0, `sw` at 0x267195c, `sw` at 0x26719a4.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x26718b4, `ld` at 0x2671978, `ld` at 0x2671a04.
  The `ld` at 0x26718c0 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x26718cc, `ld` at 0x2671904, `ld` at 0x2671aa0.
  The `ld` at 0x26718d0 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x26718ec stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x26718f4 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x26718fc, `sb` at 0x2671930.
  The `ld` at 0x2671900 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x267190c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2671918 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2671920 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2671928 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x267193c loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `sw` at 0x2671948 stores 4 bytes to [a0+176]:8 +0xc.
  4 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2671984, `ld` at 0x2671a10, `ld` at 0x2671a58.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2671990, `ld` at 0x2671a1c, `ld` at 0x2671a64.
  The `jalr` at 0x26718a8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x26718c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2671944 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+224], a5=0x1000e, a6=[a0+176]:8, a7=0x11.
  The `jalr` at 0x2671970 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2671988 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x267199c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x26719e0 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x26719fc calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2671a14 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2671a28 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2671a44 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0x2671a5c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2671a70 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2671a94 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+176]:8.
  The `jalr` at 0x2671ab4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2671ac8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x26718b8 targets 0x26718cc, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0x26718dc targets 0x2671a94, is taken when v0(=[a0+184]:8) < v1(=[a0+176]:8+16) (unsigned), and falls through when v0(=[a0+184]:8) >= v1(=[a0+176]:8+16) (unsigned).
  The `beq` branch at 0x267194c targets 0x2671aa4, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `blez` branch at 0x2671958 targets 0x2671968, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `bne` branch at 0x2671964 targets 0x26719c4, is taken when a0(?) < 0x21 (signed), and falls through when a0(?) >= 0x21 (signed).
  The `beq` branch at 0x267197c targets 0x2671990, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2671994 targets 0x26719a4, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `bne` branch at 0x26719ec targets 0x2671a3c, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0x2671a08 targets 0x2671a1c, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2671a20 targets 0x2671a30, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2671a34 targets 0x26719ac and is always taken.
  The `beq` branch at 0x2671a50 targets 0x2671a64, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2671a68 targets 0x2671a7c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2671a9c targets 0x26718e4 and is always taken.
  The `beq` branch at 0x2671aa8 targets 0x2671abc, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2671ac0 targets 0x2671ad0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The return at 0x26719bc has v0 = 0x0.
  The return at 0x2671a8c has v0 = ?.
  The return at 0x2671ae8 has v0 = 0x0.
- `glXHyperpipeConfigSGIX` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x2671af0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x2671af0-0x2671db4 (708 bytes).
  It occupies 708 bytes.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2671b54, `ld` at 0x2671c9c, `ld` at 0x2671d08.
  The `ld` at 0x2671b60 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2671b80, `ld` at 0x2671bc0, `ld` at 0x2671d68.
  The `ld` at 0x2671b88 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2671ba8 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2671bb0 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2671bb8, `sb` at 0x2671be0.
  The `ld` at 0x2671bbc loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2671bc8 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2671bd4 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2671bdc stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2671be8 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x2671bec loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `sw` at 0x2671bf0 stores 4 bytes to [a0+176]:8 +0x14.
  The `sw` at 0x2671bfc stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0x2671c08 stores 4 bytes to [a0+176]:8 +0xc.
  The `lbu` at 0x2671c1c loads 1 byte from a3 (arg3 at entry) +0x0.
  The `sb` at 0x2671c28 stores 1 byte to [a0+176]:8 +0x20.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x2671c40, `lbu` at 0x2671c50.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x2671c48, `sb` at 0x2671c5c.
  The `sw` at 0x2671c84 stores 4 bytes to a4 (arg4 at entry) +0x0.
  3 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2671ca8, `ld` at 0x2671d14, `ld` at 0x2671d78.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2671cb4, `ld` at 0x2671d20, `ld` at 0x2671d84.
  The `jalr` at 0x2671b2c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2671b64 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2671c70 calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0, a4=[a0+224], a5=a1 at entry (arg1), a6=0x10010.
  The `jalr` at 0x2671cac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a4 at entry (arg4), a3=?.
  The `jalr` at 0x2671cc0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2671d18 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a4 at entry (arg4), a3=?.
  The `jalr` at 0x2671d2c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2671d58 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2671d7c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2671d90 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `blez` branch at 0x2671b34 targets 0x2671ce8, is taken when s1(=a2) <= 0 (signed), and falls through when s1(=a2) > 0 (signed).
  The `beq` branch at 0x2671b3c targets 0x2671ce8, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `beq` branch at 0x2671b44 targets 0x2671ce8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bltz` branch at 0x2671b4c targets 0x2671da4, is taken when a0(=a1) < 0 (signed), and falls through when a0(=a1) >= 0 (signed).
  The `beq` branch at 0x2671b58 targets 0x2671b6c, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2671b98 targets 0x2671d54, is taken when a1(=[a0+184]:8) < a3(?) (unsigned), and falls through when a1(=[a0+184]:8) >= a3(?) (unsigned).
  The `blez` branch at 0x2671c04 targets 0x2671c60, is taken when a7(?) <= 0 (signed), and falls through when a7(?) > 0 (signed).
  The `beq` branch at 0x2671c10 targets 0x2671c2c, is taken when (a7(?) & 0x1) == 0, and falls through when (a7(?) & 0x1) != 0.
  The `beq` branch at 0x2671c30 targets 0x2671c60, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2671c58 targets 0x2671c40, is taken when a7(?) != a1(?), and falls through when a7(?) == a1(?).
  The `beq` branch at 0x2671c78 targets 0x2671d6c, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0x2671c8c targets 0x2671d08, is taken when s1(=a2) != a1(?), and falls through when s1(=a2) == a1(?).
  The `bltz` branch at 0x2671c94 targets 0x2671d08, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0x2671ca0 targets 0x2671cb4, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2671cb8 targets 0x2671cc8, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2671d0c targets 0x2671d20, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2671d24 targets 0x2671d34, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2671d64 targets 0x2671ba0 and is always taken.
  The `beq` branch at 0x2671d70 targets 0x2671d84, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2671d88 targets 0x2671d98, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2671d9c targets 0x2671cf4 and is always taken.
  The `beq` branch at 0x2671dac targets 0x2671cf4 and is always taken.
  The return at 0x2671ce0 has v0 = 0x0.
  The return at 0x2671d00 has v0 = 0x5b.
  The return at 0x2671d4c has v0 = 0x5b.
- `glXDestroyHyperpipeConfigSGIX` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x2671db4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x2671db4-0x2671f28 (372 bytes).
  It occupies 372 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2671de8, `ld` at 0x2671e84.
  The `ld` at 0x2671df4 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2671e00, `ld` at 0x2671e34, `ld` at 0x2671ee0.
  The `ld` at 0x2671e04 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2671e1c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2671e24 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2671e2c, `sb` at 0x2671e5c.
  The `ld` at 0x2671e30 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2671e3c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2671e48 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2671e50 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2671e58 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x2671e64 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `sw` at 0x2671e70 stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0x2671e7c stores 4 bytes to [a0+176]:8 +0xc.
  2 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2671e94, `ld` at 0x2671eec.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2671ea0, `ld` at 0x2671ef8.
  The `jalr` at 0x2671de0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2671df8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2671e78 calls _XReply with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x0, a4=[a0+224], a5=0x10011, a6=[a0+176]:8, a7=0x11.
  The `jalr` at 0x2671e98 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2671eac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2671ed4 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+176]:8.
  The `jalr` at 0x2671ef0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2671f04 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2671dec targets 0x2671e00, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2671e10 targets 0x2671ed0, is taken when v0(=[a0+184]:8) < v1(=[a0+176]:8+32) (unsigned), and falls through when v0(=[a0+184]:8) >= v1(=[a0+176]:8+32) (unsigned).
  The `beq` branch at 0x2671e80 targets 0x2671ee4, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0x2671e8c targets 0x2671ea0, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2671ea4 targets 0x2671eb8, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2671edc targets 0x2671e14 and is always taken.
  The `beq` branch at 0x2671ee4 targets 0x2671ef8, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2671efc targets 0x2671f10, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The return at 0x2671ec8 has v0 = ?.
  The return at 0x2671f20 has v0 = 0x5c.
- `glXQueryHyperpipeConfigSGIX` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x2671f28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x2671f28-0x2672190 (616 bytes).
  It occupies 616 bytes.
  5 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x2671f60, `sw` at 0x2672014, `sw` at 0x2672018.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2671f64, `ld` at 0x267201c, `ld` at 0x26720a0.
  The `ld` at 0x2671f70 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2671f7c, `ld` at 0x2671fb4, `ld` at 0x2672154.
  The `ld` at 0x2671f80 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2671f9c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2671fa4 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2671fac, `sb` at 0x2671fdc.
  The `ld` at 0x2671fb0 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2671fbc stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2671fc8 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2671fd0 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2671fd8 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x2671fe4 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `sw` at 0x2671ff0 stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0x2671ffc stores 4 bytes to [a0+176]:8 +0xc.
  4 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2672028, `ld` at 0x26720ac, `ld` at 0x267210c.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2672034, `ld` at 0x26720b8, `ld` at 0x2672118.
  The `jalr` at 0x2671f58 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2671f74 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2671ff8 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+224], a5=a1 at entry (arg1), a6=[a0+176]:8, a7=0x1000f.
  The `jalr` at 0x267202c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2672040 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x267207c calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2672094 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x26720b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x26720c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x26720f8 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0x2672110 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2672124 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2672148 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=a1 at entry (arg1), a6=[a0+176]:8.
  The `jalr` at 0x267216c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2672180 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2671f68 targets 0x2671f7c, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2671f8c targets 0x2672144, is taken when v0(=[a0+184]:8) < v1(=[a0+176]:8+32) (unsigned), and falls through when v0(=[a0+184]:8) >= v1(=[a0+176]:8+32) (unsigned).
  The `beq` branch at 0x2672000 targets 0x2672158, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bgtz` branch at 0x2672010 targets 0x2672064, is taken when at(?) > 0 (signed), and falls through when at(?) <= 0 (signed).
  The `beq` branch at 0x2672020 targets 0x2672034, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2672038 targets 0x267204c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `bne` branch at 0x2672084 targets 0x26720e8, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0x26720a4 targets 0x26720b8, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x26720bc targets 0x26720d0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2672104 targets 0x2672118, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x267211c targets 0x2672130, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2672150 targets 0x2671f90 and is always taken.
  The `beq` branch at 0x2672160 targets 0x2672174, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2672178 targets 0x2672188, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2672188 targets 0x2672130 and is always taken.
  The return at 0x267205c has v0 = 0x0.
  The return at 0x26720e0 has v0 = 0x0.
  The return at 0x267213c has v0 = one of ?, 0x0.
- `glXBindHyperpipeSGIX` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x2672190 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x2672190-0x2672258 (200 bytes).
  It occupies 200 bytes.
  The `ld` at 0x2672198 loads 8 bytes from abs 0x1028.
  The `ld` at 0x267219c loads 8 bytes from [0x1028]:8 +0x118.
  The `lw` at 0x26721bc loads 4 bytes from [[0x1028]:8+280]:8 +0x118.
  The `ld` at 0x26721c4 loads 8 bytes from [[0x1028]:8+280]:8 +0x120.
  The `ld` at 0x26721c8 loads 8 bytes from [[[0x1028]:8+280]:8+288]:8 +0x130.
  The `lw` at 0x26721d4 loads 4 bytes from [[0x1028]:8+280]:8 +0x64.
  The `sw` at 0x267224c stores 4 bytes to [[0x1028]:8+280]:8 +0x64.
  The `jalr` at 0x2672228 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+288]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x26721b4 targets 0x267220c, is taken when s0(=[[0x1028]:8+280]:8) == 0, and falls through when s0(=[[0x1028]:8+280]:8) != 0.
  The `beq` branch at 0x26721c0 targets 0x267220c, is taken when t8(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when t8(=[[[0x1028]:8+280]:8+280]) != 0.
  The `beq` branch at 0x26721cc targets 0x2672240, is taken when t9(=[[[[0x1028]:8+280]:8+288]:8+304]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+288]:8+304]:8) != 0.
  The `beq` branch at 0x26721d8 targets 0x2672220, is taken when at(=[[[0x1028]:8+280]:8+100]) == a1(=-0x1), and falls through when at(=[[[0x1028]:8+280]:8+100]) != a1(=-0x1).
  The `beq` branch at 0x26721e0 targets 0x2672220, is taken when v0(=a1) == a1(=-0x1), and falls through when v0(=a1) != a1(=-0x1).
  The `beq` branch at 0x2672230 targets 0x2672248, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x2672238 targets 0x26721fc and is always taken.
  The `beq` branch at 0x2672240 targets 0x26721fc and is always taken.
  The `beq` branch at 0x2672250 targets 0x26721fc and is always taken.
  The return at 0x26721f4 has v0 = 0x5.
  The return at 0x2672204 has v0 = one of 0x0, 0x5, 0x5c.
  The return at 0x2672218 has v0 = 0x5.
- `glXQueryHyperpipeBestAttribSGIX` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x2672258 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x2672258-0x26722d0 (120 bytes).
  It occupies 120 bytes.
  The `ld` at 0x2672258 loads 8 bytes from abs 0x1028.
  The `ld` at 0x267225c loads 8 bytes from [0x1028]:8 +0x118.
  The `lw` at 0x2672278 loads 4 bytes from [[0x1028]:8+280]:8 +0x118.
  The `ld` at 0x2672280 loads 8 bytes from [[0x1028]:8+280]:8 +0x120.
  The `ld` at 0x2672284 loads 8 bytes from [[[0x1028]:8+280]:8+288]:8 +0x138.
  The `jalr` at 0x2672294 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+288]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2672270 targets 0x26722b8, is taken when v0(=[[0x1028]:8+280]:8) == 0, and falls through when v0(=[[0x1028]:8+280]:8) != 0.
  The `beq` branch at 0x267227c targets 0x26722b8, is taken when v1(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when v1(=[[[0x1028]:8+280]:8+280]) != 0.
  The `beq` branch at 0x2672288 targets 0x26722c8, is taken when t9(=[[[[0x1028]:8+280]:8+288]:8+312]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+288]:8+312]:8) != 0.
  The `beq` branch at 0x26722c8 targets 0x26722a8 and is always taken.
  The return at 0x26722b0 has v0 = one of ?, 0x5c.
  The return at 0x26722c0 has v0 = 0x5.
- `glXQueryHyperpipeAttribSGIX` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x26722d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x26722d0-0x2672348 (120 bytes).
  It occupies 120 bytes.
  The `ld` at 0x26722d0 loads 8 bytes from abs 0x1028.
  The `ld` at 0x26722d4 loads 8 bytes from [0x1028]:8 +0x118.
  The `lw` at 0x26722f0 loads 4 bytes from [[0x1028]:8+280]:8 +0x118.
  The `ld` at 0x26722f8 loads 8 bytes from [[0x1028]:8+280]:8 +0x120.
  The `ld` at 0x26722fc loads 8 bytes from [[[0x1028]:8+280]:8+288]:8 +0x140.
  The `jalr` at 0x267230c calls (unknown callee) with a0=[[[0x1028]:8+280]:8+288]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x26722e8 targets 0x2672330, is taken when v0(=[[0x1028]:8+280]:8) == 0, and falls through when v0(=[[0x1028]:8+280]:8) != 0.
  The `beq` branch at 0x26722f4 targets 0x2672330, is taken when v1(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when v1(=[[[0x1028]:8+280]:8+280]) != 0.
  The `beq` branch at 0x2672300 targets 0x2672340, is taken when t9(=[[[[0x1028]:8+280]:8+288]:8+320]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+288]:8+320]:8) != 0.
  The `beq` branch at 0x2672340 targets 0x2672320 and is always taken.
  The return at 0x2672328 has v0 = one of ?, 0x5c.
  The return at 0x2672338 has v0 = 0x5.
- `glXHyperpipeAttribSGIX` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x2672348 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x2672348-0x26723c0 (120 bytes).
  It occupies 120 bytes.
  The `ld` at 0x2672348 loads 8 bytes from abs 0x1028.
  The `ld` at 0x267234c loads 8 bytes from [0x1028]:8 +0x118.
  The `lw` at 0x2672368 loads 4 bytes from [[0x1028]:8+280]:8 +0x118.
  The `ld` at 0x2672370 loads 8 bytes from [[0x1028]:8+280]:8 +0x120.
  The `ld` at 0x2672374 loads 8 bytes from [[[0x1028]:8+280]:8+288]:8 +0x148.
  The `jalr` at 0x2672384 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+288]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2672360 targets 0x26723a8, is taken when v0(=[[0x1028]:8+280]:8) == 0, and falls through when v0(=[[0x1028]:8+280]:8) != 0.
  The `beq` branch at 0x267236c targets 0x26723a8, is taken when v1(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when v1(=[[[0x1028]:8+280]:8+280]) != 0.
  The `beq` branch at 0x2672378 targets 0x26723b8, is taken when t9(=[[[[0x1028]:8+280]:8+288]:8+328]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+288]:8+328]:8) != 0.
  The `beq` branch at 0x26723b8 targets 0x2672398 and is always taken.
  The return at 0x26723a0 has v0 = one of ?, 0x5c.
  The return at 0x26723b0 has v0 = 0x5.
- `SubdivRegCreaseEdge` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e6fbe0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e6fbe0-0x2e6fcc8 (232 bytes).
  It occupies 232 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e6fbf8, `lwc1` at 0x2e6fbfc, `lwc1` at 0x2e6fc40.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e6fc24, `swc1` at 0x2e6fc58, `swc1` at 0x2e6fc74.
  The `blez` branch at 0x2e6fbe0 targets 0x2e6fcc0, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x2e6fbf0 targets 0x2e6fc28, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x2e6fc20 targets 0x2e6fbf8, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x2e6fc2c targets 0x2e6fcc0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x2e6fcb8 targets 0x2e6fc40, is taken when a1(?) != a5(=((a0 << 0x2) + a1)), and falls through when a1(?) == a5(=((a0 << 0x2) + a1)).
  The return at 0x2e6fcc0 has v0 = ?.
- `SubdivIRRegCreaseEdge` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e6fcd0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e6fcd0-0x2e6fde8 (280 bytes).
  It occupies 280 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e6fcf0, `lwc1` at 0x2e6fcf4, `lwc1` at 0x2e6fd40.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e6fd24, `swc1` at 0x2e6fd60, `swc1` at 0x2e6fd84.
  The `blez` branch at 0x2e6fcd0 targets 0x2e6fde0, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x2e6fce8 targets 0x2e6fd28, is taken when (a0 & 0x3) == 0, and falls through when (a0 & 0x3) != 0.
  The `bne` branch at 0x2e6fd20 targets 0x2e6fcf0, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x2e6fd2c targets 0x2e6fde0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x2e6fdd8 targets 0x2e6fd40, is taken when a1(?) != a5(=((a0 << 0x2) + a1)), and falls through when a1(?) == a5(=((a0 << 0x2) + a1)).
  The return at 0x2e6fde0 has v0 = ?.
- `glInstrumentsBufferSGIX` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2ede6f8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2ede6f8-0x2ede704 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2ede6f8 loads 8 bytes from abs 0x18a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2ede6fc).
- `__glXGetPipeAddress` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd82077c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd82077c-0xd820784 (8 bytes).
  It occupies 8 bytes.
  The return at 0xd82077c has v0 = 0x4000.
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
  The `sw` at 0xd83af3c stores 4 bytes to ?.
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
- `SubdivRegCreaseEdge` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda0d580 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda0d580-0xda0d6ac (300 bytes).
  It occupies 300 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda0d5c4, `lwc1` at 0xda0d5c8, `lwc1` at 0xda0d624.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda0d5f0, `swc1` at 0xda0d648, `swc1` at 0xda0d664.
  The `blez` branch at 0xda0d590 targets 0xda0d6a4, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xda0d59c targets 0xda0d5fc, is taken when (a0 & 0x3) == 0, and falls through when (a0 & 0x3) != 0.
  The `bne` branch at 0xda0d5ec targets 0xda0d5c4, is taken when t2(?) != v0(?), and falls through when t2(?) == v0(?).
  The `beq` branch at 0xda0d5f4 targets 0xda0d6a4, is taken when v0(?) == a0, and falls through when v0(?) != a0.
  The `bne` branch at 0xda0d69c targets 0xda0d624, is taken when t1(?) != t2(=((a0 << 0x2) + a1)), and falls through when t1(?) == t2(=((a0 << 0x2) + a1)).
  The return at 0xda0d6a4 has v0 = one of 0x0, ?.
- `SubdivIRRegCreaseEdge` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda0d6ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda0d6ac-0xda0d840 (404 bytes).
  It occupies 404 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda0d708, `lwc1` at 0xda0d70c, `lwc1` at 0xda0d788.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda0d740, `swc1` at 0xda0d7b8, `swc1` at 0xda0d7e0.
  The `blez` branch at 0xda0d6bc targets 0xda0d838, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xda0d6c8 targets 0xda0d748, is taken when (a0 & 0x3) == 0, and falls through when (a0 & 0x3) != 0.
  The `bne` branch at 0xda0d73c targets 0xda0d708, is taken when t2(?) != v0(?), and falls through when t2(?) == v0(?).
  The `beq` branch at 0xda0d744 targets 0xda0d838, is taken when v0(?) == a0, and falls through when v0(?) != a0.
  The `bne` branch at 0xda0d830 targets 0xda0d788, is taken when t1(?) != t2(=((a0 << 0x2) + a1)), and falls through when t1(?) == t2(=((a0 << 0x2) + a1)).
  The return at 0xda0d838 has v0 = one of 0x0, ?.
- `glInstrumentsBufferSGIX` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6f258 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6f258-0xda6f264 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6f258 loads 4 bytes from abs 0x1458.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6f25c).
- `__glXGetPipeAddress` in `usr/gfx/arch/IP35KONA32/libGL.so` at 0xd80e4dc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGL.so`.
  Range: 0xd80e4dc-0xd80e4e4 (8 bytes).
  It occupies 8 bytes.
  The return at 0xd80e4dc has v0 = 0x4000.
- `glXQueryHyperpipeNetworkSGIX` in `usr/gfx/arch/IP35KONA32/libGL.so` at 0xd83cc58 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGL.so`.
  Range: 0xd83cc58-0xd83cecc (628 bytes).
  It occupies 628 bytes.
  5 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0xd83cc8c, `sw` at 0xd83cd38, `sw` at 0xd83cd84.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83cc90, `lw` at 0xd83cd58, `lw` at 0xd83cde0.
  The `lw` at 0xd83cc9c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83cca8, `lw` at 0xd83cce0, `lw` at 0xd83ce7c.
  The `lw` at 0xd83ccac loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83ccc8 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83ccd0 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83ccd8, `sb` at 0xd83cd0c.
  The `lw` at 0xd83ccdc loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83cce8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83ccf4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83ccfc stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83cd04 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83cd18 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83cd24 stores 4 bytes to [a0+108] +0xc.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83cd64, `lw` at 0xd83cdec, `lw` at 0xd83ce34.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83cd70, `lw` at 0xd83cdf8, `lw` at 0xd83ce40.
  The `jalr` at 0xd83cc84 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83cca0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83cd20 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+132], a5=0x1000e, a6=0x11.
  The `jalr` at 0xd83cd50 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cd68 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83cd7c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cdbc calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cdd8 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cdf0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83ce04 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ce20 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd83ce38 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83ce4c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ce70 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ce90 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83cea4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83cc94 targets 0xd83cca8, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `bne` branch at 0xd83ccb8 targets 0xd83ce70, is taken when v1(=[a0+112]) < a0(=[a0+108]+16) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+16) (unsigned).
  The `beq` branch at 0xd83cd28 targets 0xd83ce80, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `blez` branch at 0xd83cd34 targets 0xd83cd48, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `bne` branch at 0xd83cd40 targets 0xd83cda4, is taken when a0(?) < 0x21 (signed), and falls through when a0(?) >= 0x21 (signed).
  The `beq` branch at 0xd83cd5c targets 0xd83cd70, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83cd74 targets 0xd83cd84, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `bne` branch at 0xd83cdc8 targets 0xd83ce18, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd83cde4 targets 0xd83cdf8, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83cdfc targets 0xd83ce0c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83ce10 targets 0xd83cd8c and is always taken.
  The `beq` branch at 0xd83ce2c targets 0xd83ce40, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83ce44 targets 0xd83ce58, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83ce78 targets 0xd83ccc0 and is always taken.
  The `beq` branch at 0xd83ce84 targets 0xd83ce98, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83ce9c targets 0xd83ceac, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The return at 0xd83cd9c has v0 = 0x0.
  The return at 0xd83ce68 has v0 = ?.
  The return at 0xd83cec4 has v0 = 0x0.
- `glXHyperpipeConfigSGIX` in `usr/gfx/arch/IP35KONA32/libGL.so` at 0xd83cecc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGL.so`.
  Range: 0xd83cecc-0xd83d18c (704 bytes).
  It occupies 704 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83cf30, `lw` at 0xd83d07c, `lw` at 0xd83d0e8.
  The `lw` at 0xd83cf3c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83cf5c, `lw` at 0xd83cfa0, `lw` at 0xd83d140.
  The `lw` at 0xd83cf68 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83cf84 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83cf8c, `sb` at 0xd83cfd0.
  The `sh` at 0xd83cf98 stores 2 bytes to [a0+108] +0x2.
  The `lw` at 0xd83cf9c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83cfac stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83cfbc stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83cfc4 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83cfcc stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83cfd4 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83cfd8 stores 4 bytes to [a0+108] +0x14.
  The `sw` at 0xd83cfe0 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd83cfec stores 4 bytes to [a0+108] +0xc.
  The `lbu` at 0xd83d000 loads 1 byte from a3 (arg3 at entry) +0x0.
  The `sb` at 0xd83d00c stores 1 byte to [a0+108] +0x20.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd83d01c, `lbu` at 0xd83d02c.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0xd83d024, `sb` at 0xd83d038.
  The `sw` at 0xd83d064 stores 4 bytes to a4 (arg4 at entry) +0x0.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83d088, `lw` at 0xd83d0f4, `lw` at 0xd83d150.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83d094, `lw` at 0xd83d100, `lw` at 0xd83d15c.
  The `jalr` at 0xd83cf08 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83cf40 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d050 calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0.
  The `jalr` at 0xd83d08c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d0a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d0f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d10c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d134 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d154 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d168 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `blez` branch at 0xd83cf10 targets 0xd83d0c8, is taken when s2(=a2) <= 0 (signed), and falls through when s2(=a2) > 0 (signed).
  The `beq` branch at 0xd83cf18 targets 0xd83d0c8, is taken when s3(=a3) == 0, and falls through when s3(=a3) != 0.
  The `beq` branch at 0xd83cf20 targets 0xd83d0c8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bltz` branch at 0xd83cf28 targets 0xd83d17c, is taken when v1(=a1) < 0 (signed), and falls through when v1(=a1) >= 0 (signed).
  The `beq` branch at 0xd83cf34 targets 0xd83cf4c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xd83cf78 targets 0xd83d134, is taken when a1(=[a0+112]) < a2(?) (unsigned), and falls through when a1(=[a0+112]) >= a2(?) (unsigned).
  The `blez` branch at 0xd83cfe8 targets 0xd83d03c, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0xd83cff4 targets 0xd83d010, is taken when (s0(?) & 0x1) == 0, and falls through when (s0(?) & 0x1) != 0.
  The `beq` branch at 0xd83d014 targets 0xd83d03c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xd83d034 targets 0xd83d01c, is taken when v0(?) != s0(?), and falls through when v0(?) == s0(?).
  The `beq` branch at 0xd83d058 targets 0xd83d144, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0xd83d06c targets 0xd83d0e8, is taken when s2(=a2) != t1(?), and falls through when s2(=a2) == t1(?).
  The `bltz` branch at 0xd83d074 targets 0xd83d0e8, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0xd83d080 targets 0xd83d094, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d098 targets 0xd83d0a8, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d0ec targets 0xd83d100, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d104 targets 0xd83d114, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d13c targets 0xd83cf80 and is always taken.
  The `beq` branch at 0xd83d148 targets 0xd83d15c, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d160 targets 0xd83d170, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d174 targets 0xd83d0d4 and is always taken.
  The `beq` branch at 0xd83d184 targets 0xd83d0d4 and is always taken.
  The return at 0xd83d0c0 has v0 = 0x0.
  The return at 0xd83d0e0 has v0 = 0x5b.
  The return at 0xd83d12c has v0 = 0x5b.
- `glXDestroyHyperpipeConfigSGIX` in `usr/gfx/arch/IP35KONA32/libGL.so` at 0xd83d18c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGL.so`.
  Range: 0xd83d18c-0xd83d300 (372 bytes).
  It occupies 372 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83d1c0, `lw` at 0xd83d25c.
  The `lw` at 0xd83d1cc loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83d1d8, `lw` at 0xd83d20c, `lw` at 0xd83d2b8.
  The `lw` at 0xd83d1dc loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83d1f4 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83d1fc stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83d204, `sb` at 0xd83d234.
  The `lw` at 0xd83d208 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83d214 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83d220 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83d228 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83d230 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83d23c loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83d248 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd83d254 stores 4 bytes to [a0+108] +0xc.
  2 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83d26c, `lw` at 0xd83d2c4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83d278, `lw` at 0xd83d2d0.
  The `jalr` at 0xd83d1b8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83d1d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd83d250 calls _XReply with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x0, a4=[a0+132], a5=[a0+108], a6=0x10011, a7=0x11.
  The `jalr` at 0xd83d270 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd83d284 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d2ac calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+108].
  The `jalr` at 0xd83d2c8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232].
  The `jalr` at 0xd83d2dc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83d1c4 targets 0xd83d1d8, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `bne` branch at 0xd83d1e8 targets 0xd83d2a8, is taken when v1(=[a0+112]) < a0(=[a0+108]+32) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+32) (unsigned).
  The `beq` branch at 0xd83d258 targets 0xd83d2bc, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0xd83d264 targets 0xd83d278, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d27c targets 0xd83d290, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d2b4 targets 0xd83d1ec and is always taken.
  The `beq` branch at 0xd83d2bc targets 0xd83d2d0, is taken when a4(=[a0+1232]) == 0, and falls through when a4(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d2d4 targets 0xd83d2e8, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The return at 0xd83d2a0 has v0 = ?.
  The return at 0xd83d2f8 has v0 = 0x5c.
- `glXQueryHyperpipeConfigSGIX` in `usr/gfx/arch/IP35KONA32/libGL.so` at 0xd83d300 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGL.so`.
  Range: 0xd83d300-0xd83d568 (616 bytes).
  It occupies 616 bytes.
  5 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xd83d338, `sw` at 0xd83d3f0, `sw` at 0xd83d3f4.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83d33c, `lw` at 0xd83d3f8, `lw` at 0xd83d47c.
  The `lw` at 0xd83d348 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83d354, `lw` at 0xd83d390, `lw` at 0xd83d52c.
  The `lw` at 0xd83d358 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83d378 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83d380 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83d388, `sb` at 0xd83d3b8.
  The `lw` at 0xd83d38c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83d398 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83d3a4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83d3ac stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83d3b4 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83d3c0 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0xd83d3cc stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd83d3d8 stores 4 bytes to [a0+108] +0xc.
  4 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd83d404, `lw` at 0xd83d488, `lw` at 0xd83d4e8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83d410, `lw` at 0xd83d494, `lw` at 0xd83d4f4.
  The `jalr` at 0xd83d330 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83d34c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d3d4 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+132], a5=a1 at entry (arg1), a6=0x1000f, a7=0x11.
  The `jalr` at 0xd83d408 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d41c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d458 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d470 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d48c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d4a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d4d4 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd83d4ec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d500 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d520 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d544 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd83d558 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83d340 targets 0xd83d354, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `bne` branch at 0xd83d364 targets 0xd83d520, is taken when v1(=[a0+112]) < a0(=[a0+108]+32) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+32) (unsigned).
  The `beq` branch at 0xd83d3dc targets 0xd83d530, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bgtz` branch at 0xd83d3ec targets 0xd83d440, is taken when t9(?) > 0 (signed), and falls through when t9(?) <= 0 (signed).
  The `beq` branch at 0xd83d3fc targets 0xd83d410, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d414 targets 0xd83d428, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `bne` branch at 0xd83d460 targets 0xd83d4c4, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0xd83d480 targets 0xd83d494, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d498 targets 0xd83d4ac, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d4e0 targets 0xd83d4f4, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d4f8 targets 0xd83d50c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d528 targets 0xd83d36c and is always taken.
  The `beq` branch at 0xd83d538 targets 0xd83d54c, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd83d550 targets 0xd83d560, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83d560 targets 0xd83d50c and is always taken.
  The return at 0xd83d438 has v0 = 0x0.
  The return at 0xd83d4bc has v0 = 0x0.
  The return at 0xd83d518 has v0 = one of ?, 0x0.
- `glXBindHyperpipeSGIX` in `usr/gfx/arch/IP35KONA32/libGL.so` at 0xd83d568 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGL.so`.
  Range: 0xd83d568-0xd83d630 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd83d570 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83d574 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83d594 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd83d59c loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd83d5a0 loads 4 bytes from [[[0x1014]+276]+200] +0x98.
  The `lw` at 0xd83d5ac loads 4 bytes from [[0x1014]+276] +0x38.
  The `sw` at 0xd83d624 stores 4 bytes to [[0x1014]+276] +0x38.
  The `jalr` at 0xd83d600 calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd83d58c targets 0xd83d5e4, is taken when s0(=[[0x1014]+276]) == 0, and falls through when s0(=[[0x1014]+276]) != 0.
  The `beq` branch at 0xd83d598 targets 0xd83d5e4, is taken when t8(=[[[0x1014]+276]+196]) == 0, and falls through when t8(=[[[0x1014]+276]+196]) != 0.
  The `beq` branch at 0xd83d5a4 targets 0xd83d618, is taken when t9(=[[[[0x1014]+276]+200]+152]) == 0, and falls through when t9(=[[[[0x1014]+276]+200]+152]) != 0.
  The `beq` branch at 0xd83d5b0 targets 0xd83d5f8, is taken when at(=[[[0x1014]+276]+56]) == a1(=-0x1), and falls through when at(=[[[0x1014]+276]+56]) != a1(=-0x1).
  The `beq` branch at 0xd83d5b8 targets 0xd83d5f8, is taken when v0(=a1) == a1(=-0x1), and falls through when v0(=a1) != a1(=-0x1).
  The `beq` branch at 0xd83d608 targets 0xd83d620, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xd83d610 targets 0xd83d5d4 and is always taken.
  The `beq` branch at 0xd83d618 targets 0xd83d5d4 and is always taken.
  The `beq` branch at 0xd83d628 targets 0xd83d5d4 and is always taken.
  The return at 0xd83d5cc has v0 = 0x5.
  The return at 0xd83d5dc has v0 = one of 0x0, 0x5, 0x5c.
  The return at 0xd83d5f0 has v0 = 0x5.
- `glXQueryHyperpipeBestAttribSGIX` in `usr/gfx/arch/IP35KONA32/libGL.so` at 0xd83d630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGL.so`.
  Range: 0xd83d630-0xd83d6a8 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd83d630 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83d634 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83d650 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd83d658 loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd83d65c loads 4 bytes from [[[0x1014]+276]+200] +0x9c.
  The `jalr` at 0xd83d66c calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd83d648 targets 0xd83d690, is taken when v0(=[[0x1014]+276]) == 0, and falls through when v0(=[[0x1014]+276]) != 0.
  The `beq` branch at 0xd83d654 targets 0xd83d690, is taken when v1(=[[[0x1014]+276]+196]) == 0, and falls through when v1(=[[[0x1014]+276]+196]) != 0.
  The `beq` branch at 0xd83d660 targets 0xd83d6a0, is taken when t9(=[[[[0x1014]+276]+200]+156]) == 0, and falls through when t9(=[[[[0x1014]+276]+200]+156]) != 0.
  The `beq` branch at 0xd83d6a0 targets 0xd83d680 and is always taken.
  The return at 0xd83d688 has v0 = one of ?, 0x5c.
  The return at 0xd83d698 has v0 = 0x5.
- `glXQueryHyperpipeAttribSGIX` in `usr/gfx/arch/IP35KONA32/libGL.so` at 0xd83d6a8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGL.so`.
  Range: 0xd83d6a8-0xd83d720 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd83d6a8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83d6ac loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83d6c8 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd83d6d0 loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd83d6d4 loads 4 bytes from [[[0x1014]+276]+200] +0xa0.
  The `jalr` at 0xd83d6e4 calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd83d6c0 targets 0xd83d708, is taken when v0(=[[0x1014]+276]) == 0, and falls through when v0(=[[0x1014]+276]) != 0.
  The `beq` branch at 0xd83d6cc targets 0xd83d708, is taken when v1(=[[[0x1014]+276]+196]) == 0, and falls through when v1(=[[[0x1014]+276]+196]) != 0.
  The `beq` branch at 0xd83d6d8 targets 0xd83d718, is taken when t9(=[[[[0x1014]+276]+200]+160]) == 0, and falls through when t9(=[[[[0x1014]+276]+200]+160]) != 0.
  The `beq` branch at 0xd83d718 targets 0xd83d6f8 and is always taken.
  The return at 0xd83d700 has v0 = one of ?, 0x5c.
  The return at 0xd83d710 has v0 = 0x5.
- `glXHyperpipeAttribSGIX` in `usr/gfx/arch/IP35KONA32/libGL.so` at 0xd83d720 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGL.so`.
  Range: 0xd83d720-0xd83d798 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd83d720 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83d724 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83d740 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd83d748 loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd83d74c loads 4 bytes from [[[0x1014]+276]+200] +0xa4.
  The `jalr` at 0xd83d75c calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd83d738 targets 0xd83d780, is taken when v0(=[[0x1014]+276]) == 0, and falls through when v0(=[[0x1014]+276]) != 0.
  The `beq` branch at 0xd83d744 targets 0xd83d780, is taken when v1(=[[[0x1014]+276]+196]) == 0, and falls through when v1(=[[[0x1014]+276]+196]) != 0.
  The `beq` branch at 0xd83d750 targets 0xd83d790, is taken when t9(=[[[[0x1014]+276]+200]+164]) == 0, and falls through when t9(=[[[[0x1014]+276]+200]+164]) != 0.
  The `beq` branch at 0xd83d790 targets 0xd83d770 and is always taken.
  The return at 0xd83d778 has v0 = one of ?, 0x5c.
  The return at 0xd83d788 has v0 = 0x5.
- `SubdivRegCreaseEdge` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda0ae30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda0ae30-0xda0af18 (232 bytes).
  It occupies 232 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda0ae48, `lwc1` at 0xda0ae4c, `lwc1` at 0xda0ae90.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda0ae74, `swc1` at 0xda0aea8, `swc1` at 0xda0aec4.
  The `blez` branch at 0xda0ae30 targets 0xda0af10, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xda0ae40 targets 0xda0ae78, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xda0ae70 targets 0xda0ae48, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xda0ae7c targets 0xda0af10, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xda0af08 targets 0xda0ae90, is taken when a1(?) != a5(=((a0 << 0x2) + a1)), and falls through when a1(?) == a5(=((a0 << 0x2) + a1)).
  The return at 0xda0af10 has v0 = ?.
- `SubdivIRRegCreaseEdge` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda0af20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda0af20-0xda0b038 (280 bytes).
  It occupies 280 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda0af40, `lwc1` at 0xda0af44, `lwc1` at 0xda0af90.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda0af74, `swc1` at 0xda0afb0, `swc1` at 0xda0afd4.
  The `blez` branch at 0xda0af20 targets 0xda0b030, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xda0af38 targets 0xda0af78, is taken when (a0 & 0x3) == 0, and falls through when (a0 & 0x3) != 0.
  The `bne` branch at 0xda0af70 targets 0xda0af40, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xda0af7c targets 0xda0b030, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xda0b028 targets 0xda0af90, is taken when a1(?) != a5(=((a0 << 0x2) + a1)), and falls through when a1(?) == a5(=((a0 << 0x2) + a1)).
  The return at 0xda0b030 has v0 = ?.
- `glInstrumentsBufferSGIX` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda79118 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda79118-0xda79124 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda79118 loads 4 bytes from abs 0x1458.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda7911c).
- `__glXGetPipeAddress` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x2143004 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x2143004-0x214300c (8 bytes).
  It occupies 8 bytes.
  The return at 0x2143004 has v0 = 0x4000.
- `glXQueryHyperpipeNetworkSGIX` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x217187c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x217187c-0x2171af0 (628 bytes).
  It occupies 628 bytes.
  5 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x21718b0, `sw` at 0x217195c, `sw` at 0x21719a4.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x21718b4, `ld` at 0x2171978, `ld` at 0x2171a04.
  The `ld` at 0x21718c0 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x21718cc, `ld` at 0x2171904, `ld` at 0x2171aa0.
  The `ld` at 0x21718d0 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x21718ec stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x21718f4 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x21718fc, `sb` at 0x2171930.
  The `ld` at 0x2171900 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x217190c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2171918 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2171920 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2171928 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x217193c loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `sw` at 0x2171948 stores 4 bytes to [a0+176]:8 +0xc.
  4 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2171984, `ld` at 0x2171a10, `ld` at 0x2171a58.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2171990, `ld` at 0x2171a1c, `ld` at 0x2171a64.
  The `jalr` at 0x21718a8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x21718c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2171944 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+224], a5=0x1000e, a6=[a0+176]:8, a7=0x11.
  The `jalr` at 0x2171970 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2171988 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x217199c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x21719e0 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x21719fc calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2171a14 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2171a28 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2171a44 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0x2171a5c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2171a70 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2171a94 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+176]:8.
  The `jalr` at 0x2171ab4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2171ac8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x21718b8 targets 0x21718cc, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0x21718dc targets 0x2171a94, is taken when v0(=[a0+184]:8) < v1(=[a0+176]:8+16) (unsigned), and falls through when v0(=[a0+184]:8) >= v1(=[a0+176]:8+16) (unsigned).
  The `beq` branch at 0x217194c targets 0x2171aa4, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `blez` branch at 0x2171958 targets 0x2171968, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `bne` branch at 0x2171964 targets 0x21719c4, is taken when a0(?) < 0x21 (signed), and falls through when a0(?) >= 0x21 (signed).
  The `beq` branch at 0x217197c targets 0x2171990, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171994 targets 0x21719a4, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `bne` branch at 0x21719ec targets 0x2171a3c, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0x2171a08 targets 0x2171a1c, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171a20 targets 0x2171a30, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2171a34 targets 0x21719ac and is always taken.
  The `beq` branch at 0x2171a50 targets 0x2171a64, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171a68 targets 0x2171a7c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2171a9c targets 0x21718e4 and is always taken.
  The `beq` branch at 0x2171aa8 targets 0x2171abc, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171ac0 targets 0x2171ad0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The return at 0x21719bc has v0 = 0x0.
  The return at 0x2171a8c has v0 = ?.
  The return at 0x2171ae8 has v0 = 0x0.
- `glXHyperpipeConfigSGIX` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x2171af0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x2171af0-0x2171db4 (708 bytes).
  It occupies 708 bytes.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2171b54, `ld` at 0x2171c9c, `ld` at 0x2171d08.
  The `ld` at 0x2171b60 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2171b80, `ld` at 0x2171bc0, `ld` at 0x2171d68.
  The `ld` at 0x2171b88 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2171ba8 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2171bb0 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2171bb8, `sb` at 0x2171be0.
  The `ld` at 0x2171bbc loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2171bc8 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2171bd4 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2171bdc stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2171be8 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x2171bec loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `sw` at 0x2171bf0 stores 4 bytes to [a0+176]:8 +0x14.
  The `sw` at 0x2171bfc stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0x2171c08 stores 4 bytes to [a0+176]:8 +0xc.
  The `lbu` at 0x2171c1c loads 1 byte from a3 (arg3 at entry) +0x0.
  The `sb` at 0x2171c28 stores 1 byte to [a0+176]:8 +0x20.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x2171c40, `lbu` at 0x2171c50.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x2171c48, `sb` at 0x2171c5c.
  The `sw` at 0x2171c84 stores 4 bytes to a4 (arg4 at entry) +0x0.
  3 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2171ca8, `ld` at 0x2171d14, `ld` at 0x2171d78.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2171cb4, `ld` at 0x2171d20, `ld` at 0x2171d84.
  The `jalr` at 0x2171b2c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2171b64 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2171c70 calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0, a4=[a0+224], a5=a1 at entry (arg1), a6=0x10010.
  The `jalr` at 0x2171cac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a4 at entry (arg4), a3=?.
  The `jalr` at 0x2171cc0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2171d18 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a4 at entry (arg4), a3=?.
  The `jalr` at 0x2171d2c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2171d58 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2171d7c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2171d90 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `blez` branch at 0x2171b34 targets 0x2171ce8, is taken when s1(=a2) <= 0 (signed), and falls through when s1(=a2) > 0 (signed).
  The `beq` branch at 0x2171b3c targets 0x2171ce8, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `beq` branch at 0x2171b44 targets 0x2171ce8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bltz` branch at 0x2171b4c targets 0x2171da4, is taken when a0(=a1) < 0 (signed), and falls through when a0(=a1) >= 0 (signed).
  The `beq` branch at 0x2171b58 targets 0x2171b6c, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2171b98 targets 0x2171d54, is taken when a1(=[a0+184]:8) < a3(?) (unsigned), and falls through when a1(=[a0+184]:8) >= a3(?) (unsigned).
  The `blez` branch at 0x2171c04 targets 0x2171c60, is taken when a7(?) <= 0 (signed), and falls through when a7(?) > 0 (signed).
  The `beq` branch at 0x2171c10 targets 0x2171c2c, is taken when (a7(?) & 0x1) == 0, and falls through when (a7(?) & 0x1) != 0.
  The `beq` branch at 0x2171c30 targets 0x2171c60, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2171c58 targets 0x2171c40, is taken when a7(?) != a1(?), and falls through when a7(?) == a1(?).
  The `beq` branch at 0x2171c78 targets 0x2171d6c, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0x2171c8c targets 0x2171d08, is taken when s1(=a2) != a1(?), and falls through when s1(=a2) == a1(?).
  The `bltz` branch at 0x2171c94 targets 0x2171d08, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0x2171ca0 targets 0x2171cb4, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171cb8 targets 0x2171cc8, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2171d0c targets 0x2171d20, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171d24 targets 0x2171d34, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2171d64 targets 0x2171ba0 and is always taken.
  The `beq` branch at 0x2171d70 targets 0x2171d84, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171d88 targets 0x2171d98, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2171d9c targets 0x2171cf4 and is always taken.
  The `beq` branch at 0x2171dac targets 0x2171cf4 and is always taken.
  The return at 0x2171ce0 has v0 = 0x0.
  The return at 0x2171d00 has v0 = 0x5b.
  The return at 0x2171d4c has v0 = 0x5b.
- `glXDestroyHyperpipeConfigSGIX` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x2171db4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x2171db4-0x2171f28 (372 bytes).
  It occupies 372 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2171de8, `ld` at 0x2171e84.
  The `ld` at 0x2171df4 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2171e00, `ld` at 0x2171e34, `ld` at 0x2171ee0.
  The `ld` at 0x2171e04 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2171e1c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2171e24 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2171e2c, `sb` at 0x2171e5c.
  The `ld` at 0x2171e30 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2171e3c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2171e48 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2171e50 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2171e58 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x2171e64 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `sw` at 0x2171e70 stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0x2171e7c stores 4 bytes to [a0+176]:8 +0xc.
  2 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2171e94, `ld` at 0x2171eec.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2171ea0, `ld` at 0x2171ef8.
  The `jalr` at 0x2171de0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2171df8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2171e78 calls _XReply with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x0, a4=[a0+224], a5=0x10011, a6=[a0+176]:8, a7=0x11.
  The `jalr` at 0x2171e98 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2171eac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2171ed4 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+176]:8.
  The `jalr` at 0x2171ef0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2171f04 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2171dec targets 0x2171e00, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2171e10 targets 0x2171ed0, is taken when v0(=[a0+184]:8) < v1(=[a0+176]:8+32) (unsigned), and falls through when v0(=[a0+184]:8) >= v1(=[a0+176]:8+32) (unsigned).
  The `beq` branch at 0x2171e80 targets 0x2171ee4, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0x2171e8c targets 0x2171ea0, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171ea4 targets 0x2171eb8, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2171edc targets 0x2171e14 and is always taken.
  The `beq` branch at 0x2171ee4 targets 0x2171ef8, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171efc targets 0x2171f10, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The return at 0x2171ec8 has v0 = ?.
  The return at 0x2171f20 has v0 = 0x5c.
- `glXQueryHyperpipeConfigSGIX` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x2171f28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x2171f28-0x2172190 (616 bytes).
  It occupies 616 bytes.
  5 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x2171f60, `sw` at 0x2172014, `sw` at 0x2172018.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2171f64, `ld` at 0x217201c, `ld` at 0x21720a0.
  The `ld` at 0x2171f70 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2171f7c, `ld` at 0x2171fb4, `ld` at 0x2172154.
  The `ld` at 0x2171f80 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2171f9c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2171fa4 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2171fac, `sb` at 0x2171fdc.
  The `ld` at 0x2171fb0 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2171fbc stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2171fc8 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2171fd0 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2171fd8 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x2171fe4 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `sw` at 0x2171ff0 stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0x2171ffc stores 4 bytes to [a0+176]:8 +0xc.
  4 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2172028, `ld` at 0x21720ac, `ld` at 0x217210c.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2172034, `ld` at 0x21720b8, `ld` at 0x2172118.
  The `jalr` at 0x2171f58 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2171f74 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2171ff8 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+224], a5=a1 at entry (arg1), a6=[a0+176]:8, a7=0x1000f.
  The `jalr` at 0x217202c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2172040 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x217207c calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2172094 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x21720b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x21720c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x21720f8 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0x2172110 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2172124 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2172148 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=a1 at entry (arg1), a6=[a0+176]:8.
  The `jalr` at 0x217216c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2172180 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2171f68 targets 0x2171f7c, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2171f8c targets 0x2172144, is taken when v0(=[a0+184]:8) < v1(=[a0+176]:8+32) (unsigned), and falls through when v0(=[a0+184]:8) >= v1(=[a0+176]:8+32) (unsigned).
  The `beq` branch at 0x2172000 targets 0x2172158, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bgtz` branch at 0x2172010 targets 0x2172064, is taken when at(?) > 0 (signed), and falls through when at(?) <= 0 (signed).
  The `beq` branch at 0x2172020 targets 0x2172034, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2172038 targets 0x217204c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `bne` branch at 0x2172084 targets 0x21720e8, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0x21720a4 targets 0x21720b8, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x21720bc targets 0x21720d0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2172104 targets 0x2172118, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x217211c targets 0x2172130, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2172150 targets 0x2171f90 and is always taken.
  The `beq` branch at 0x2172160 targets 0x2172174, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2172178 targets 0x2172188, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2172188 targets 0x2172130 and is always taken.
  The return at 0x217205c has v0 = 0x0.
  The return at 0x21720e0 has v0 = 0x0.
  The return at 0x217213c has v0 = one of ?, 0x0.
- `glXBindHyperpipeSGIX` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x2172190 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x2172190-0x2172258 (200 bytes).
  It occupies 200 bytes.
  The `ld` at 0x2172198 loads 8 bytes from abs 0x1028.
  The `ld` at 0x217219c loads 8 bytes from [0x1028]:8 +0x118.
  The `lw` at 0x21721bc loads 4 bytes from [[0x1028]:8+280]:8 +0x118.
  The `ld` at 0x21721c4 loads 8 bytes from [[0x1028]:8+280]:8 +0x120.
  The `ld` at 0x21721c8 loads 8 bytes from [[[0x1028]:8+280]:8+288]:8 +0x130.
  The `lw` at 0x21721d4 loads 4 bytes from [[0x1028]:8+280]:8 +0x64.
  The `sw` at 0x217224c stores 4 bytes to [[0x1028]:8+280]:8 +0x64.
  The `jalr` at 0x2172228 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+288]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x21721b4 targets 0x217220c, is taken when s0(=[[0x1028]:8+280]:8) == 0, and falls through when s0(=[[0x1028]:8+280]:8) != 0.
  The `beq` branch at 0x21721c0 targets 0x217220c, is taken when t8(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when t8(=[[[0x1028]:8+280]:8+280]) != 0.
  The `beq` branch at 0x21721cc targets 0x2172240, is taken when t9(=[[[[0x1028]:8+280]:8+288]:8+304]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+288]:8+304]:8) != 0.
  The `beq` branch at 0x21721d8 targets 0x2172220, is taken when at(=[[[0x1028]:8+280]:8+100]) == a1(=-0x1), and falls through when at(=[[[0x1028]:8+280]:8+100]) != a1(=-0x1).
  The `beq` branch at 0x21721e0 targets 0x2172220, is taken when v0(=a1) == a1(=-0x1), and falls through when v0(=a1) != a1(=-0x1).
  The `beq` branch at 0x2172230 targets 0x2172248, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x2172238 targets 0x21721fc and is always taken.
  The `beq` branch at 0x2172240 targets 0x21721fc and is always taken.
  The `beq` branch at 0x2172250 targets 0x21721fc and is always taken.
  The return at 0x21721f4 has v0 = 0x5.
  The return at 0x2172204 has v0 = one of 0x0, 0x5, 0x5c.
  The return at 0x2172218 has v0 = 0x5.
- `glXQueryHyperpipeBestAttribSGIX` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x2172258 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x2172258-0x21722d0 (120 bytes).
  It occupies 120 bytes.
  The `ld` at 0x2172258 loads 8 bytes from abs 0x1028.
  The `ld` at 0x217225c loads 8 bytes from [0x1028]:8 +0x118.
  The `lw` at 0x2172278 loads 4 bytes from [[0x1028]:8+280]:8 +0x118.
  The `ld` at 0x2172280 loads 8 bytes from [[0x1028]:8+280]:8 +0x120.
  The `ld` at 0x2172284 loads 8 bytes from [[[0x1028]:8+280]:8+288]:8 +0x138.
  The `jalr` at 0x2172294 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+288]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2172270 targets 0x21722b8, is taken when v0(=[[0x1028]:8+280]:8) == 0, and falls through when v0(=[[0x1028]:8+280]:8) != 0.
  The `beq` branch at 0x217227c targets 0x21722b8, is taken when v1(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when v1(=[[[0x1028]:8+280]:8+280]) != 0.
  The `beq` branch at 0x2172288 targets 0x21722c8, is taken when t9(=[[[[0x1028]:8+280]:8+288]:8+312]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+288]:8+312]:8) != 0.
  The `beq` branch at 0x21722c8 targets 0x21722a8 and is always taken.
  The return at 0x21722b0 has v0 = one of ?, 0x5c.
  The return at 0x21722c0 has v0 = 0x5.
- `glXQueryHyperpipeAttribSGIX` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x21722d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x21722d0-0x2172348 (120 bytes).
  It occupies 120 bytes.
  The `ld` at 0x21722d0 loads 8 bytes from abs 0x1028.
  The `ld` at 0x21722d4 loads 8 bytes from [0x1028]:8 +0x118.
  The `lw` at 0x21722f0 loads 4 bytes from [[0x1028]:8+280]:8 +0x118.
  The `ld` at 0x21722f8 loads 8 bytes from [[0x1028]:8+280]:8 +0x120.
  The `ld` at 0x21722fc loads 8 bytes from [[[0x1028]:8+280]:8+288]:8 +0x140.
  The `jalr` at 0x217230c calls (unknown callee) with a0=[[[0x1028]:8+280]:8+288]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x21722e8 targets 0x2172330, is taken when v0(=[[0x1028]:8+280]:8) == 0, and falls through when v0(=[[0x1028]:8+280]:8) != 0.
  The `beq` branch at 0x21722f4 targets 0x2172330, is taken when v1(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when v1(=[[[0x1028]:8+280]:8+280]) != 0.
  The `beq` branch at 0x2172300 targets 0x2172340, is taken when t9(=[[[[0x1028]:8+280]:8+288]:8+320]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+288]:8+320]:8) != 0.
  The `beq` branch at 0x2172340 targets 0x2172320 and is always taken.
  The return at 0x2172328 has v0 = one of ?, 0x5c.
  The return at 0x2172338 has v0 = 0x5.
- `glXHyperpipeAttribSGIX` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x2172348 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x2172348-0x21723c0 (120 bytes).
  It occupies 120 bytes.
  The `ld` at 0x2172348 loads 8 bytes from abs 0x1028.
  The `ld` at 0x217234c loads 8 bytes from [0x1028]:8 +0x118.
  The `lw` at 0x2172368 loads 4 bytes from [[0x1028]:8+280]:8 +0x118.
  The `ld` at 0x2172370 loads 8 bytes from [[0x1028]:8+280]:8 +0x120.
  The `ld` at 0x2172374 loads 8 bytes from [[[0x1028]:8+280]:8+288]:8 +0x148.
  The `jalr` at 0x2172384 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+288]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2172360 targets 0x21723a8, is taken when v0(=[[0x1028]:8+280]:8) == 0, and falls through when v0(=[[0x1028]:8+280]:8) != 0.
  The `beq` branch at 0x217236c targets 0x21723a8, is taken when v1(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when v1(=[[[0x1028]:8+280]:8+280]) != 0.
  The `beq` branch at 0x2172378 targets 0x21723b8, is taken when t9(=[[[[0x1028]:8+280]:8+288]:8+328]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+288]:8+328]:8) != 0.
  The `beq` branch at 0x21723b8 targets 0x2172398 and is always taken.
  The return at 0x21723a0 has v0 = one of ?, 0x5c.
  The return at 0x21723b0 has v0 = 0x5.
- `SubdivRegCreaseEdge` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x224fbe0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x224fbe0-0x224fcc8 (232 bytes).
  It occupies 232 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x224fbf8, `lwc1` at 0x224fbfc, `lwc1` at 0x224fc40.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x224fc24, `swc1` at 0x224fc58, `swc1` at 0x224fc74.
  The `blez` branch at 0x224fbe0 targets 0x224fcc0, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x224fbf0 targets 0x224fc28, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x224fc20 targets 0x224fbf8, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x224fc2c targets 0x224fcc0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x224fcb8 targets 0x224fc40, is taken when a1(?) != a5(=((a0 << 0x2) + a1)), and falls through when a1(?) == a5(=((a0 << 0x2) + a1)).
  The return at 0x224fcc0 has v0 = ?.
- `SubdivIRRegCreaseEdge` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x224fcd0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x224fcd0-0x224fde8 (280 bytes).
  It occupies 280 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x224fcf0, `lwc1` at 0x224fcf4, `lwc1` at 0x224fd40.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x224fd24, `swc1` at 0x224fd60, `swc1` at 0x224fd84.
  The `blez` branch at 0x224fcd0 targets 0x224fde0, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x224fce8 targets 0x224fd28, is taken when (a0 & 0x3) == 0, and falls through when (a0 & 0x3) != 0.
  The `bne` branch at 0x224fd20 targets 0x224fcf0, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x224fd2c targets 0x224fde0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x224fdd8 targets 0x224fd40, is taken when a1(?) != a5(=((a0 << 0x2) + a1)), and falls through when a1(?) == a5(=((a0 << 0x2) + a1)).
  The return at 0x224fde0 has v0 = ?.
- `glInstrumentsBufferSGIX` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be6f8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be6f8-0x22be704 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be6f8 loads 8 bytes from abs 0x18a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be6fc).
- `RegisterHdgvoFormatFormInterface` in `usr/gfx/ircombine` at 0x10061cd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10061cd0-0x10061d0c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0x10061ce4 loads 4 bytes from abs 0x100a90d8.
  The `beq` branch at 0x10061cf0 targets 0x10061cf8 and is always taken.
  The return at 0x10061d04 has v0 = 0x100a4f18.
- `RegisterSiriusFormInterface__10SiriusFormSGv` in `usr/gfx/ircombine` at 0x100658f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100658f0-0x1006592c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0x10065904 loads 4 bytes from abs 0x100a90d8.
  The `beq` branch at 0x10065910 targets 0x10065918 and is always taken.
  The return at 0x10065924 has v0 = 0x100a5558.
- `gl_dgl_foreground` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec4fec4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec4fec4-0xec4ff28 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xec4fedc loads 4 bytes from abs 0xecdc60c (comm_curbufpos).
  The `sw` at 0xec4feec stores 4 bytes to [0xecdc60c] +0x0.
  The `sw` at 0xec4fef4 stores 4 bytes to abs 0xecdc60c (comm_curbufpos).
  The `lw` at 0xec4fef8 loads 4 bytes from abs 0xecdc608 (comm_endbuffer).
  The `jalr` at 0xec4ff0c calls gl_comm_flush [0xec3ff10] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xec4ff00 targets 0xec4ff1c, is taken when t7(=[0xecdc608]) >= v0(=[0xecdc60c]+4) (unsigned), and falls through when t7(=[0xecdc608]) < v0(=[0xecdc60c]+4) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xec4ff04 runs only when taken and is annulled on fall-through.
  The return at 0xec4ff20 has v0 = one of [0xecdc60c]+4, ret(gl_comm_flush).
- `gl_d_foreground` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec5dd00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec5dd00-0xec5dd18 (24 bytes).
  It occupies 24 bytes.
  The `sw` at 0xec5dd14 stores 4 bytes to abs 0xecde3b4 (gl_putinbackground).
  The return at 0xec5dd10 has v0 = ?.
- `__GLforeground` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6323c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec6323c-0xec632d4 (152 bytes).
  It occupies 152 bytes.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xec6326c, `lw` at 0xec63298, `lw` at 0xec632bc.
  The `jalr` at 0xec63260 calls gl_initializer [0xec75620] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xec63280 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xec632cc).
  The `beq` branch at 0xec63270 targets 0xec6328c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0xec632ac targets 0xec632cc, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0xec632c0 targets 0xec632cc, is taken when t8(?) != 0, and falls through when t8(?) == 0.
- `foreground` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6323c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec6323c-0xec632d4 (152 bytes).
  It occupies 152 bytes.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xec6326c, `lw` at 0xec63298, `lw` at 0xec632bc.
  The `jalr` at 0xec63260 calls gl_initializer [0xec75620] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xec63280 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xec632cc).
  The `beq` branch at 0xec63270 targets 0xec6328c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0xec632ac targets 0xec632cc, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0xec632c0 targets 0xec632cc, is taken when t8(?) != 0, and falls through when t8(?) == 0.
- `__GLwindow` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec696f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec696f8-0xec69780 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xec69708 loads 4 bytes from abs 0xecdfba0 (gl_inMoveDraw).
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xec69754, `lw` at 0xec69768.
  The `jalr` at 0xec6972c calls __iglooCloseMoveDrawFromTable [0xec8fc18] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xec69778).
  The `beq` branch at 0xec6970c targets 0xec6974c, is taken when t8(=[0xecdfba0]) == 0, and falls through when t8(=[0xecdfba0]) != 0.
  The `bne` branch at 0xec69758 targets 0xec69778, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0xec6976c targets 0xec69778, is taken when t8(?) != 0, and falls through when t8(?) == 0.
- `__iglooWindowRasterPos` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec750d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec750d0-0xec751a0 (208 bytes).
  It occupies 208 bytes.
  The `jalr` at 0xec750f8 calls __iglooGetBooleanv [0xecb75d8] with a0=0xb08, a1=sp-1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xec75120 calls __iglooGetFloatv [0xecb760c] with a0=0xb07, a1=sp-20, a2=?, a3=?.
  The `jalr` at 0xec75164 calls glBitmap with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jalr` at 0xec75184 calls glLoadRasterPosSGIXXX [0xec751a0] with a0=?, a1=?, a2=?, a3=0x3f800000.
  The `beql` branch at 0xec7510c targets 0xec75178, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `mtc1 zero,$f0` at 0xec75110 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xec7516c targets 0xec75190 and is always taken.
  The return at 0xec75198 has v0 = one of ret(glBitmap), ret(glLoadRasterPosSGIXXX).
  The instructions from 0xec75174 to 0xec75174 are not reached by any path from the entry, and their branches are not listed.
- `gl_g_foreground` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec888e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec888e0-0xec8891c (60 bytes).
  It occupies 60 bytes.
  The `sw` at 0xec88918 stores 4 bytes to abs 0xecde3b4 (gl_putinbackground).
  The `jalr` at 0xec888fc calls _GLhintinit [0xec801c0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xec88914 has v0 = ret(_GLhintinit).
- `_GLcreateOvWindows` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec94458 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec94458-0xec945d0 (376 bytes).
  It occupies 376 bytes.
  The `lw` at 0xec94474 loads 4 bytes from abs 0xecde920.
  The `sw` at 0xec944b0 stores 4 bytes to abs 0xecde920.
  The `sw` at 0xec944bc stores 4 bytes to abs 0xecebd00.
  The `sw` at 0xec944c0 stores 4 bytes to abs 0xecebd04.
  The `sw` at 0xec944c4 stores 4 bytes to abs 0xecebd08.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xec944e0, `lw` at 0xec944f0, `lw` at 0xec94508.
  The `lw` at 0xec94528 loads 4 bytes from a1 (arg1 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from abs 0xecdfb9c (gl_sstatep), including `lw` at 0xec94564, `lw` at 0xec94590.
  2 such `lw` accesses load 4 bytes from [0xecdfb9c] +0x1c, including `lw` at 0xec94568, `lw` at 0xec94598.
  2 such `lw` accesses load 4 bytes from [[0xecdfb9c]+28] +0x4, including `lw` at 0xec94570, `lw` at 0xec945a0.
  The `jalr` at 0xec94510 calls _GLfindVis [0xec93be0] with a0=a1 at entry (arg1), a1=?, a2=sp-8, a3=?.
  The `jalr` at 0xec94534 calls _GLcreateOvWin [0xec93cf8] with a0=a1 at entry (arg1), a1=ret(_GLfindVis), a2=[a1+8], a3=?.
  The `jalr` at 0xec9456c calls XSync with a0=[[[0xecdfb9c]+28]+4], a1=0x0, a2=?, a3=?.
  The `jalr` at 0xec94584 calls _GLsetwmcolormaps [0xecc957c] with a0=a1 at entry (arg1), a1=0x0, a2=?, a3=?.
  The `jalr` at 0xec9459c calls XFlush with a0=[[[0xecdfb9c]+28]+4], a1=?, a2=?, a3=?.
  The `beq` branch at 0xec94498 targets 0xec944c8, is taken when t6(=[0xecde920]) == 0, and falls through when t6(=[0xecde920]) != 0.
  The `beql` branch at 0xec944e8 targets 0xec94548, is taken when t0(?) == 0, and falls through when t0(?) != 0; its branch-likely delay slot `addiu s0,s0,4` at 0xec944ec runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xec944f8 targets 0xec94548, is taken when t2(?) != 0, and falls through when t2(?) == 0; its branch-likely delay slot `addiu s0,s0,4` at 0xec944fc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xec94548 targets 0xec944e0, is taken when s0(?) != s6(=0xc), and falls through when s0(?) == s6(=0xc).
  The `beql` branch at 0xec94550 targets 0xec945ac, is taken when s3(?) == 0, and falls through when s3(?) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xec94554 runs only when taken and is annulled on fall-through.
  The return at 0xec945c8 has v0 = one of ?, ret(XFlush).
- `_GLresizeOvWindows` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec945d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec945d0-0xec94680 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0xec9460c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xec94620 loads 4 bytes from ?.
  The `jalr` at 0xec9463c calls XResizeWindow with a0=[a0+4], a1=?, a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `beql` branch at 0xec94628 targets 0xec9464c, is taken when a1(?) == 0, and falls through when a1(?) != 0; its branch-likely delay slot `addiu s0,s0,4` at 0xec9462c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xec9464c targets 0xec94620, is taken when s0(?) != s5(=0xc), and falls through when s0(?) == s5(=0xc).
  The return at 0xec94678 has v0 = one of 0x0, 0x1.
- `_GLdestroyOvWindows` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec94680 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec94680-0xec94748 (200 bytes).
  It occupies 200 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xec946b4, `lw` at 0xec946d8.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xec946c8, `lw` at 0xec946dc, `lw` at 0xec94704.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xec946ec, `sw` at 0xec946f8, `sw` at 0xec94714.
  The `lbu` at 0xec946f0 loads 1 byte from a0 (arg0 at entry) +0x2c.
  The `jalr` at 0xec946e0 calls __iglooDestroyContextInfo [0xec73718] with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0xec94708 calls XDestroyWindow with a0=[a0+4], a1=?, a2=?, a3=?.
  The `beql` branch at 0xec946cc targets 0xec9471c, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `addiu s1,s1,4` at 0xec946d0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xec946f4 targets 0xec94718, is taken when s4(=0x5) == t7(=[a0+44]:1), and falls through when s4(=0x5) != t7(=[a0+44]:1); its branch-likely delay slot `sw zero,136(s0)` at 0xec946f8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xec9471c targets 0xec946c8, is taken when s1(?) != s5(=0xc), and falls through when s1(?) == s5(=0xc).
  The return at 0xec94740 has v0 = ?.
- `_GLiconwindow` in `usr/gfx/arch/IGLOO/libgl.so` at 0xecc9258 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xecc9258-0xecc92d8 (128 bytes).
  It occupies 128 bytes.
  The `lbu` at 0xecc9274 loads 1 byte from a0 (arg0 at entry) +0x2c.
  The `sb` at 0xecc9294 stores 1 byte to a1 (arg1 at entry) +0x2c.
  The `lw` at 0xecc92b8 loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `lw` at 0xecc92bc loads 4 bytes from a1 (arg1 at entry) +0x40.
  The `sw` at 0xecc92c4 stores 4 bytes to [a0+100] +0x10.
  The `jalr` at 0xecc92a4 calls _GLallocWMHints [0xecc8c00] with a0=a0 at entry (arg0), a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xecc9280 targets 0xecc9294, is taken when t6(=[a0+44]:1) == at(=0x2), and falls through when t6(=[a0+44]:1) != at(=0x2); its branch-likely delay slot `addiu t7,zero,3` at 0xecc9284 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xecc9288 targets 0xecc92c8 and is always taken.
  The return at 0xecc92d0 has v0 = one of -0x5, 0x0.
  The instructions from 0xecc9290 to 0xecc9290 are not reached by any path from the entry, and their branches are not listed.
- `_GLinitXWindowAttributes` in `usr/gfx/arch/IGLOO/libgl.so` at 0xecc9560 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xecc9560-0xecc957c (28 bytes).
  It occupies 28 bytes.
  The `sw` at 0xecc9568 stores 4 bytes to a0 (arg0 at entry) +0x28.
  The `sw` at 0xecc956c stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0xecc9570 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The return at 0xecc9574 has v0 = 0x818.
- `_GLnewwindow` in `usr/gfx/arch/IGLOO/libgl.so` at 0xecc96b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xecc96b0-0xecc99e8 (824 bytes).
  It occupies 824 bytes.
  The `lw` at 0xecc970c loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `sw` at 0xecc9714 stores 4 bytes to ret(gl_malloc) +0x4c.
  The `sw` at 0xecc9718 stores 4 bytes to [a0+72] +0x50.
  The `sw` at 0xecc971c stores 4 bytes to a0 (arg0 at entry) +0x48.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0xecc9740, `lw` at 0xecc97dc.
  The `lw` at 0xecc9744 loads 4 bytes from abs 0xecdf9c8.
  The `sw` at 0xecc977c stores 4 bytes to abs 0xecdf9c8.
  The `sw` at 0xecc9788 stores 4 bytes to abs 0xecdf9d4.
  The `sw` at 0xecc97a4 stores 4 bytes to ret(gl_malloc) +0x44.
  The `lw` at 0xecc97a8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xecc97b0 stores 4 bytes to ret(gl_malloc) +0x4.
  The `lw` at 0xecc97b4 loads 4 bytes from a0 (arg0 at entry) +0x5c.
  The `sw` at 0xecc97bc stores 4 bytes to ret(gl_malloc) +0x5c.
  The `sw` at 0xecc97c0 stores 4 bytes to ret(gl_malloc) +0x54.
  The `lw` at 0xecc97c8 loads 4 bytes from ret(__iglooChooseVisual) +0x4.
  The `sw` at 0xecc97d4 stores 4 bytes to ret(gl_malloc) +0x14.
  The `sw` at 0xecc97d8 stores 4 bytes to ret(gl_malloc) +0x10.
  The `sw` at 0xecc97e0 stores 4 bytes to ret(gl_malloc) +0xc.
  2 such `lw` accesses load 4 bytes from ret(gl_malloc) +0xc, including `lw` at 0xecc97f0, `lw` at 0xecc9820.
  The `sw` at 0xecc97f8 stores 4 bytes to ret(gl_malloc) +0x68.
  The `sw` at 0xecc97fc stores 4 bytes to ret(gl_malloc) +0x20.
  The `lw` at 0xecc9800 loads 4 bytes from [ret(gl_malloc)+12] +0x70.
  2 such `sb` accesses store 1 byte to ret(gl_malloc) +0x2c, including `sb` at 0xecc9818, `sb` at 0xecc981c.
  2 such `lw` accesses load 4 bytes from [ret(gl_malloc)+12] +0x0, including `lw` at 0xecc982c, `lw` at 0xecc9848.
  The `lw` at 0xecc9838 loads 4 bytes from [[ret(gl_malloc)+12]] +0x14.
  The `sw` at 0xecc9844 stores 4 bytes to ret(gl_malloc) +0x0.
  The `sw` at 0xecc984c stores 4 bytes to [[ret(gl_malloc)+12]] +0x14.
  2 such `lw` accesses load 4 bytes from ret(gl_malloc) +0x14, including `lw` at 0xecc9850, `lw` at 0xecc99ac.
  The `sw` at 0xecc9854 stores 4 bytes to ret(gl_malloc) +0x38.
  The `sw` at 0xecc9858 stores 4 bytes to ret(gl_malloc) +0x3c.
  2 such `lw` accesses load 4 bytes from [ret(gl_malloc)+20] +0x0, including `lw` at 0xecc985c, `lw` at 0xecc99c4.
  The `lw` at 0xecc9860 loads 4 bytes from abs 0xecec5e0 (_GLuseCIvisual).
  The `lw` at 0xecc9868 loads 4 bytes from [[ret(gl_malloc)+20]] +0xc.
  The `lw` at 0xecc9874 loads 4 bytes from [[ret(gl_malloc)+20]] +0x0.
  5 such `lw` accesses load 4 bytes from ret(gl_malloc) +0x4, including `lw` at 0xecc9880, `lw` at 0xecc98d8, `lw` at 0xecc9928.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0xecc9884, `lw` at 0xecc98dc.
  2 such `sw` accesses store 4 bytes to ret(gl_malloc) +0x40, including `sw` at 0xecc98d4, `sw` at 0xecc9918.
  The `lw` at 0xecc992c loads 4 bytes from ret(gl_malloc) +0x40.
  The `sw` at 0xecc9978 stores 4 bytes to ret(gl_malloc) +0x8.
  The `lw` at 0xecc9998 loads 4 bytes from ret(gl_malloc) +0x8.
  The `sw` at 0xecc99cc stores 4 bytes to ret(gl_malloc) +0x18.
  The `jalr` at 0xecc96e0 calls gl_malloc [0xec5fcf4] with a0=0xbc, a1=0xecd8e10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xecc96fc calls bzero with a0=ret(gl_malloc), a1=0xbc, a2=?, a3=?.
  The `jalr` at 0xecc9728 calls _GLinitXWindowAttributes [0xecc9560] with a0=sp-60, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc9760 calls __GLgetgdesc with a0=0xc, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc9778 calls __GLgetgdesc with a0=0x10, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc9798 calls __iglooChooseVisual [0xecc86d0] with a0=?, a1=0xecdf9c0, a2=?, a3=?.
  The `jalr` at 0xecc97e8 calls _GLstrdup [0xecc8f04] with a0=0xecd8e1c, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc98c0 calls XCreateWindow with a0=[ret(gl_malloc)+4], a1=[a0+8], a2=0x1f4, a3=0x1f4.
  The `jalr` at 0xecc990c calls XCreateWindow with a0=[ret(gl_malloc)+4], a1=[a0+8], a2=0x1f4, a3=0x1f4.
  The `jalr` at 0xecc996c calls XCreateWindow with a0=[ret(gl_malloc)+4], a1=[ret(gl_malloc)+64], a2=0x0, a3=0x0.
  The `jalr` at 0xecc9988 calls _GLsetwmcolormaps [0xecc957c] with a0=ret(gl_malloc), a1=0x0, a2=?, a3=?.
  The `jalr` at 0xecc99a0 calls XMapWindow with a0=[ret(gl_malloc)+4], a1=[ret(gl_malloc)+8], a2=?, a3=?.
  The `jalr` at 0xecc99c0 calls __iglooCreateContextInfo [0xec73540] with a0=[ret(gl_malloc)+4], a1=ret(gl_malloc), a2=[[ret(gl_malloc)+20]], a3=0x0.
  The `beq` branch at 0xecc9704 targets 0xecc9720, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0xecc9710 targets 0xecc971c, is taken when v0(=[a0+72]) == 0, and falls through when v0(=[a0+72]) != 0.
  The `bne` branch at 0xecc9750 targets 0xecc978c, is taken when t0(=[0xecdf9c8]) != 0, and falls through when t0(=[0xecdf9c8]) == 0.
  The `bne` branch at 0xecc980c targets 0xecc981c, is taken when s1(=a0) != t6(=[[ret(gl_malloc)+12]+112]), and falls through when s1(=a0) == t6(=[[ret(gl_malloc)+12]+112]).
  The `beq` branch at 0xecc9814 targets 0xecc9820 and is always taken.
  The `beq` branch at 0xecc9878 targets 0xecc98d8, is taken when t5(=[0xecec5e0]) == 0, and falls through when t5(=[0xecec5e0]) != 0.
  The `beq` branch at 0xecc98d0 targets 0xecc9924 and is always taken.
  The return at 0xecc99e0 has v0 = ret(gl_malloc).
- `_GLdestroywindow` in `usr/gfx/arch/IGLOO/libgl.so` at 0xecc99e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xecc99e8-0xecc9bc8 (480 bytes).
  It occupies 480 bytes.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x2c, including `lbu` at 0xecc9a04, `lbu` at 0xecc9b14.
  The `lw` at 0xecc9a14 loads 4 bytes from a0 (arg0 at entry) +0x20.
  2 such `sw` accesses store 4 bytes to abs 0xecdfa30 (GLlasterror), including `sw` at 0xecc9a24, `sw` at 0xecc9bb0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xecc9a34, `lw` at 0xecc9a50.
  The `lw` at 0xecc9a58 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xecc9a5c loads 4 bytes from [a0+12] +0x0.
  The `lw` at 0xecc9a60 loads 4 bytes from [[a0+12]] +0x14.
  The `lw` at 0xecc9a68 loads 4 bytes from [[[a0+12]]+20] +0x0.
  The `lw` at 0xecc9a6c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xecc9a74 stores 4 bytes to [[a0+12]] +0x14.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0xecc9a84, `lw` at 0xecc9aac.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xecc9a90, `lw` at 0xecc9aa0.
  The `sw` at 0xecc9a98 stores 4 bytes to ?.
  The `lw` at 0xecc9ab8 loads 4 bytes from [a0+68] +0x48.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c, including `lw` at 0xecc9ac0, `lw` at 0xecc9ac4, `lw` at 0xecc9ae4.
  The `sw` at 0xecc9acc stores 4 bytes to [a0+68] +0x48.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x50, including `lw` at 0xecc9ad4, `lw` at 0xecc9ae0.
  The `sw` at 0xecc9adc stores 4 bytes to [a0+80] +0x4c.
  The `sw` at 0xecc9ae8 stores 4 bytes to [a0+76] +0x50.
  The `lw` at 0xecc9b04 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0xecc9b24 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0xecc9b30 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xecc9b44 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0xecc9b6c loads 4 bytes from a0 (arg0 at entry) +0x68.
  The `jalr` at 0xecc9a44 calls _GLdeletemakebgprop [0xecca1a0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xecc9af4 calls _GLdestroyOvWindows [0xec94680] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xecc9b0c calls __iglooDestroyContextInfo [0xec73718] with a0=?, a1=[a0+24], a2=?, a3=?.
  The `jalr` at 0xecc9b34 calls XDestroyWindow with a0=?, a1=[a0+8], a2=?, a3=?.
  The `jalr` at 0xecc9b4c calls XDestroyWindow with a0=?, a1=[a0+64], a2=?, a3=?.
  The `jalr` at 0xecc9b64 calls XSync with a0=?, a1=0x0, a2=?, a3=?.
  The `jalr` at 0xecc9b84 calls gl_free [0xec5fd74] with a0=[a0+104], a1=0xecd8e24, a2=?, a3=?.
  The `jalr` at 0xecc9b9c calls gl_free [0xec5fd74] with a0=a0 at entry (arg0), a1=0xecd8e34, a2=?, a3=?.
  The `bnel` branch at 0xecc9a10 targets 0xecc9a2c, is taken when t6(=[a0+44]:1) != at(=0x1), and falls through when t6(=[a0+44]:1) == at(=0x1); its branch-likely delay slot `lw t8,32(s0)` at 0xecc9a14 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xecc9a20 targets 0xecc9bb4 and is always taken.
  The `beql` branch at 0xecc9a30 targets 0xecc9a54, is taken when (t8(=[a0+32]) & 0x4) == 0, and falls through when (t8(=[a0+32]) & 0x4) != 0; its branch-likely delay slot `lw t0,4(s0)` at 0xecc9a34 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xecc9a64 targets 0xecc9a7c, is taken when s0(=a0) != a0(=[[[a0+12]]+20]), and falls through when s0(=a0) == a0(=[[[a0+12]]+20]); its branch-likely delay slot `lw v0,0(a0)` at 0xecc9a68 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xecc9a70 targets 0xecc9aac and is always taken.
  The `beql` branch at 0xecc9a80 targets 0xecc9ab0, is taken when v0(=[[[[a0+12]]+20]]) == 0, and falls through when v0(=[[[[a0+12]]+20]]) != 0; its branch-likely delay slot `lw v0,68(s0)` at 0xecc9a84 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xecc9a88 targets 0xecc9aa0, is taken when v0(?) != s0(=a0), and falls through when v0(?) == s0(=a0); its branch-likely delay slot `or v1,v0,zero` at 0xecc9a8c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xecc9a94 targets 0xecc9aac and is always taken.
  The `bne` branch at 0xecc9aa4 targets 0xecc9a88, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xecc9ab0 targets 0xecc9aec, is taken when v0(=[a0+68]) == 0, and falls through when v0(=[a0+68]) != 0.
  The `bnel` branch at 0xecc9abc targets 0xecc9ad4, is taken when s0(=a0) != t4(=[[a0+68]+72]), and falls through when s0(=a0) == t4(=[[a0+68]+72]); its branch-likely delay slot `lw v0,76(s0)` at 0xecc9ac0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xecc9ac8 targets 0xecc9aec and is always taken.
  The `beq` branch at 0xecc9ad8 targets 0xecc9aec, is taken when v0(=[a0+76]) == 0, and falls through when v0(=[a0+76]) != 0.
  The `beq` branch at 0xecc9b20 targets 0xecc9b58, is taken when t9(=[a0+44]:1) == at(=0x5), and falls through when t9(=[a0+44]:1) != at(=0x5).
  The `beq` branch at 0xecc9b74 targets 0xecc9b90, is taken when a0(=[a0+104]) == 0, and falls through when a0(=[a0+104]) != 0.
  The return at 0xecc9bc0 has v0 = one of -0x8, 0x0.
  The instructions from 0xecc9a28 to 0xecc9a28 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xecc9a78 to 0xecc9a78 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xecc9a9c to 0xecc9a9c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xecc9ad0 to 0xecc9ad0 are not reached by any path from the entry, and their branches are not listed.
- `gl_free_windows` in `usr/gfx/arch/IGLOO/libgl.so` at 0xecc9bc8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xecc9bc8-0xecc9c94 (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0xecc9be0 loads 4 bytes from abs 0xecdfa40 (gl_valid_cxs).
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xecc9c00, `lw` at 0xecc9c3c.
  The `lw` at 0xecc9c20 loads 4 bytes from abs 0xecdfa34 (gl_thedisplay).
  The `lw` at 0xecc9c2c loads 4 bytes from [0xecdfa34] +0x14.
  The `jalr` at 0xecc9c08 calls _GLdestroycontext [0xeccb17c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc9c44 calls _GLdestroywindow [0xecc99e8] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc9c5c calls _GLclearSlots [0xec8bf90] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc9c74 calls _GLattachScreen [0xeccb020] with a0=-0x1, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0xecc9bec targets 0xecc9c1c, is taken when v0(=[0xecdfa40]) == 0, and falls through when v0(=[0xecdfa40]) != 0.
  The `beq` branch at 0xecc9bf4 targets 0xecc9c1c, is taken when v0(=[0xecdfa40]) == 0, and falls through when v0(=[0xecdfa40]) != 0.
  The `bne` branch at 0xecc9c14 targets 0xecc9bfc, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0xecc9c24 targets 0xecc9c58, is taken when v0(=[0xecdfa34]) == 0, and falls through when v0(=[0xecdfa34]) != 0.
  The `beq` branch at 0xecc9c30 targets 0xecc9c58, is taken when s0(=[[0xecdfa34]+20]) == 0, and falls through when s0(=[[0xecdfa34]+20]) != 0.
  The `bne` branch at 0xecc9c50 targets 0xecc9c38, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The return at 0xecc9c8c has v0 = ret(_GLattachScreen).
- `_GLmapwindow` in `usr/gfx/arch/IGLOO/libgl.so` at 0xecca3cc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xecca3cc-0xecca57c (432 bytes).
  It occupies 432 bytes.
  The `lbu` at 0xecca3ec loads 1 byte from a0 (arg0 at entry) +0x2c.
  The `lw` at 0xecca3fc loads 4 bytes from a0 (arg0 at entry) +0x78.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0xecca410, `lw` at 0xecca4a0, `lw` at 0xecca4f0.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0xecca430, `lw` at 0xecca44c, `lw` at 0xecca4b8.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xecca438, `lw` at 0xecca444, `lw` at 0xecca474.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0xecca43c, `lw` at 0xecca46c.
  2 such `lw` accesses load 4 bytes from [a0+12] +0x74, including `lw` at 0xecca448, `lw` at 0xecca478.
  2 such `lw` accesses load 4 bytes from [a0+12] +0x78, including `lw` at 0xecca45c, `lw` at 0xecca488.
  The `lw` at 0xecca47c loads 4 bytes from a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from [a0+120] +0x20, including `lw` at 0xecca50c, `lw` at 0xecca54c.
  The `sw` at 0xecca578 stores 4 bytes to abs 0xecdfa30 (GLlasterror).
  The `jalr` at 0xecca404 calls _GLquit_close_setup [0xec85d8c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xecca434 calls XChangeWindowAttributes with a0=[a0+4], a1=[a0+64], a2=0x200, a3=sp-64.
  The `jalr` at 0xecca464 calls XMoveResizeWindow with a0=[a0+4], a1=[a0+64], a2=0x0, a3=0x0.
  The `jalr` at 0xecca494 calls XMoveResizeWindow with a0=[a0+4], a1=[a0+8], a2=0x0, a3=0x0.
  The `jalr` at 0xecca4bc calls XLowerWindow with a0=[a0+4], a1=[a0+64], a2=?, a3=?.
  The `jalr` at 0xecca4d4 calls XMapWindow with a0=[a0+4], a1=[a0+64], a2=?, a3=?.
  The `jalr` at 0xecca4e8 calls XFlush with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0xecca528 calls _GLupdateQueue [0xeccdd38] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `bne` branch at 0xecca3f8 targets 0xecca410, is taken when t6(=[a0+44]:1) != at(=0x2), and falls through when t6(=[a0+44]:1) == at(=0x2).
  The `beq` branch at 0xecca420 targets 0xecca4a4, is taken when (v0(=[a0+32]) & 0x18) == 0, and falls through when (v0(=[a0+32]) & 0x18) != 0.
  The `beq` branch at 0xecca4a8 targets 0xecca4c8, is taken when (v0(=[a0+32]) & 0x4) == 0, and falls through when (v0(=[a0+32]) & 0x4) != 0.
  The `bnel` branch at 0xecca4fc targets 0xecca560, is taken when (t4(=[a0+32]) & 0x2) != 0, and falls through when (t4(=[a0+32]) & 0x2) == 0; its branch-likely delay slot `lw ra,44(sp)` at 0xecca500 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xecca504 targets 0xecca51c, is taken when s1(=[a0+120]) == 0, and falls through when s1(=[a0+120]) != 0.
  The `bnel` branch at 0xecca514 targets 0xecca560, is taken when (t6(=[[a0+120]+32]) & 0x2) != 0, and falls through when (t6(=[[a0+120]+32]) & 0x2) == 0; its branch-likely delay slot `lw ra,44(sp)` at 0xecca518 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xecca53c targets 0xecca560, is taken when (t8(=[a0+32]) & 0x2) != 0, and falls through when (t8(=[a0+32]) & 0x2) == 0; its branch-likely delay slot `lw ra,44(sp)` at 0xecca540 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xecca544 targets 0xecca51c, is taken when s1(=[a0+120]) == 0, and falls through when s1(=[a0+120]) != 0.
  The `beq` branch at 0xecca554 targets 0xecca51c, is taken when (t0(=[[a0+120]+32]) & 0x2) == 0, and falls through when (t0(=[[a0+120]+32]) & 0x2) != 0.
  The return at 0xecca574 has v0 = 0x0.
- `_GLmakeglwindow` in `usr/gfx/arch/IGLOO/libgl.so` at 0xecca830 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xecca830-0xecca8d0 (160 bytes).
  It occupies 160 bytes.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xecca894, `sw` at 0xecca898, `sw` at 0xecca89c.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0xecca8a0, `lw` at 0xecca8ac, `lw` at 0xecca8b8.
  The `lw` at 0xecca8a4 loads 4 bytes from [a1] +0x14.
  The `lw` at 0xecca8b0 loads 4 bytes from [a1] +0x4.
  The `sw` at 0xecca8bc stores 4 bytes to [a1] +0x14.
  The `jalr` at 0xecca860 calls gl_malloc [0xec5fcf4] with a0=0xbc, a1=0xecd8f14, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0xecca87c calls bzero with a0=ret(gl_malloc), a1=0xbc, a2=?, a3=?.
  The return at 0xecca8c8 has v0 = ?.
- `_GLfreezeWindows` in `usr/gfx/arch/IGLOO/libgl.so` at 0xeccc020 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xeccc020-0xeccc0ac (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xeccc040 loads 4 bytes from abs 0xecdfa40 (gl_valid_cxs).
  The `lw` at 0xeccc058 loads 4 bytes from [0xecdfa40] +0xe0.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xeccc060, `lw` at 0xeccc06c, `lw` at 0xeccc088.
  The `lbu` at 0xeccc064 loads 1 byte from ?.
  The `jalr` at 0xeccc07c calls _GLunblock [0xeccc014] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0xeccc04c targets 0xeccc094, is taken when s0(=[0xecdfa40]) == 0, and falls through when s0(=[0xecdfa40]) != 0.
  The `beql` branch at 0xeccc05c targets 0xeccc08c, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `lw s0,0(s0)` at 0xeccc060 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xeccc068 targets 0xeccc08c, is taken when s1(=0x5) == t6(?), and falls through when s1(=0x5) != t6(?); its branch-likely delay slot `lw s0,0(s0)` at 0xeccc06c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xeccc08c targets 0xeccc05c, is taken when s0(?) != 0, and falls through when s0(?) == 0; its branch-likely delay slot `lw v0,224(s0)` at 0xeccc090 runs only when taken and is annulled on fall-through.
  The return at 0xeccc0a4 has v0 = ?.
- `gl_glx_findwindow` in `usr/gfx/arch/IGLOO/libgl.so` at 0xeccede8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xeccede8-0xeccee98 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0xeccee28 loads 4 bytes from ret(gl_glx_finddisplay) +0x14.
  The `lw` at 0xeccee34 loads 4 bytes from [ret(gl_glx_finddisplay)+20] +0x40.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0xeccee40, `lw` at 0xeccee4c, `lw` at 0xeccee58.
  The `jalr` at 0xeccee14 calls gl_glx_finddisplay [0xec8c4e8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xeccedfc targets 0xeccee0c, is taken when a1 != 0, and falls through when a1 == 0.
  The `beq` branch at 0xeccee04 targets 0xeccee88 and is always taken.
  The `beq` branch at 0xeccee20 targets 0xeccee84, is taken when v0(=ret(gl_glx_finddisplay)) == 0, and falls through when v0(=ret(gl_glx_finddisplay)) != 0.
  The `beql` branch at 0xeccee2c targets 0xeccee88, is taken when v1(=[ret(gl_glx_finddisplay)+20]) == 0, and falls through when v1(=[ret(gl_glx_finddisplay)+20]) != 0; its branch-likely delay slot `or v0,zero,zero` at 0xeccee30 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xeccee38 targets 0xeccee70, is taken when a1 == t6(?), and falls through when a1 != t6(?).
  The `beq` branch at 0xeccee44 targets 0xeccee70, is taken when a1 == t7(?), and falls through when a1 != t7(?).
  The `beq` branch at 0xeccee50 targets 0xeccee70, is taken when a1 == t8(?), and falls through when a1 != t8(?).
  The `beq` branch at 0xeccee5c targets 0xeccee70, is taken when a1 == t9(?), and falls through when a1 != t9(?).
  The `bnel` branch at 0xeccee68 targets 0xeccee7c, is taken when a1 != t0(?), and falls through when a1 == t0(?); its branch-likely delay slot `lw v1,0(v1)` at 0xeccee6c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xeccee70 targets 0xeccee88 and is always taken.
  The `bnel` branch at 0xeccee7c targets 0xeccee38, is taken when v1(?) != 0, and falls through when v1(?) == 0; its branch-likely delay slot `lw t6,64(v1)` at 0xeccee80 runs only when taken and is annulled on fall-through.
  The return at 0xeccee90 has v0 = one of 0x0, ?.
  The instructions from 0xeccee78 to 0xeccee78 are not reached by any path from the entry, and their branches are not listed.
- `BadAuxWindow` in `usr/gfx/arch/IGLOO/libgl.so` at 0xeccf9d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xeccf9d4-0xecd03b0 (2524 bytes).
  It occupies 2524 bytes.
  The `lw` at 0xeccfa2c loads 4 bytes from a0 (arg0 at entry) +0x4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0xeccfa8c, `lw` at 0xeccfb1c, `lw` at 0xeccfbdc.
  The `lw` at 0xeccfa98 loads 4 bytes from [a0+12] +0x8.
  The `lw` at 0xeccfb28 loads 4 bytes from [a0+12] +0x3c.
  The `lw` at 0xeccfb3c loads 4 bytes from [a0+12] +0x40.
  The `lw` at 0xeccfb4c loads 4 bytes from [[a0+12]+64] +0x0.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0xeccfb58, `lw` at 0xeccfb68, `lw` at 0xeccfb84.
  The `sw` at 0xeccfb90 stores 4 bytes to a0 (arg0 at entry) +0x8c.
  The `sw` at 0xeccfba4 stores 4 bytes to a0 (arg0 at entry) +0x98.
  The `sw` at 0xeccfbc0 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `lw` at 0xeccfbe0 loads 4 bytes from [a0+12] +0x18.
  3 such `lw` accesses load 4 bytes from [[a0+12]+24] +0x0, including `lw` at 0xeccfbe8, `lw` at 0xeccfc08, `lw` at 0xeccfc1c.
  The `lw` at 0xeccfbec loads 4 bytes from [[[a0+12]+24]] +0x4.
  The `sw` at 0xeccfc04 stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `lw` at 0xeccfc10 loads 4 bytes from [[[a0+12]+24]] +0x0.
  The `sw` at 0xeccfc14 stores 4 bytes to a0 (arg0 at entry) +0x94.
  The `sw` at 0xeccfc30 stores 4 bytes to a0 (arg0 at entry) +0xa0.
  The `lw` at 0xeccfc58 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `jalr` at 0xeccfa10 calls extract [0xeccf998] with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=0x9.
  The `jalr` at 0xeccfa44 calls gl_glx_findwindow [0xeccede8] with a0=[a0+4], a1=ret(extract), a2=?, a3=?.
  The `jalr` at 0xeccfa70 calls XGetWindowAttributes with a0=?, a1=?, a2=sp-128, a3=?.
  The `jalr` at 0xeccfa84 calls XScreenNumberOfScreen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xeccfabc calls extract [0xeccf998] with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=0x4.
  The `jalr` at 0xeccfaf0 calls extract [0xeccf998] with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=0x7.
  The `jalr` at 0xeccfbb4 calls __iglooCreateContextInfo [0xec73540] with a0=?, a1=a0 at entry (arg0), a2=?, a3=0x1.
  The `jalr` at 0xeccfc24 calls __iglooCreateContextInfo [0xec73540] with a0=?, a1=a0 at entry (arg0), a2=[[[a0+12]+24]], a3=0x1.
  The `jalr` at 0xeccfc4c calls XUnmapWindow with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xeccfc6c calls XReparentWindow with a0=?, a1=?, a2=[a0+8], a3=0x0.
  The `jalr` at 0xeccfc8c calls XResizeWindow with a0=?, a1=?, a2=0x7d0, a3=0x7d0.
  The `jalr` at 0xeccfca4 calls XMapWindow with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xeccfa28 targets 0xeccfa38, is taken when v0(=ret(extract)) != 0, and falls through when v0(=ret(extract)) == 0.
  The `beq` branch at 0xeccfa30 targets 0xeccfcb4 and is always taken.
  The `beq` branch at 0xeccfa4c targets 0xeccfa64, is taken when v0(=ret(gl_glx_findwindow)) == 0, and falls through when v0(=ret(gl_glx_findwindow)) != 0.
  The `beq` branch at 0xeccfa54 targets 0xeccfa64, is taken when v0(=ret(gl_glx_findwindow)) == s0(=a0), and falls through when v0(=ret(gl_glx_findwindow)) != s0(=a0).
  The `beq` branch at 0xeccfa5c targets 0xeccfcb4 and is always taken.
  The `beq` branch at 0xeccfa9c targets 0xeccfaac, is taken when v0(=ret(XScreenNumberOfScreen)) == t8(=[[a0+12]+8]), and falls through when v0(=ret(XScreenNumberOfScreen)) != t8(=[[a0+12]+8]).
  The `beq` branch at 0xeccfaa4 targets 0xeccfcb4 and is always taken.
  The `bne` branch at 0xeccfac8 targets 0xeccfad8, is taken when v0(=ret(extract)) != 0, and falls through when v0(=ret(extract)) == 0.
  The `beq` branch at 0xeccfad0 targets 0xeccfcb4 and is always taken.
  The `bne` branch at 0xeccfafc targets 0xeccfb0c, is taken when v0(=ret(extract)) != 0, and falls through when v0(=ret(extract)) == 0.
  The `beq` branch at 0xeccfb04 targets 0xeccfcb4 and is always taken.
  The `bnel` branch at 0xeccfb14 targets 0xeccfbd0, is taken when t9(=a3) != at(=0x2000), and falls through when t9(=a3) == at(=0x2000); its branch-likely delay slot `lw t9,204(sp)` at 0xeccfb18 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xeccfb34 targets 0xeccfb88, is taken when v1(=[[a0+12]+60]) <= 0 (signed), and falls through when v1(=[[a0+12]+60]) > 0 (signed).
  The `bne` branch at 0xeccfb60 targets 0xeccfb78, is taken when t1(?) != t4(?), and falls through when t1(?) == t4(?).
  The `bne` branch at 0xeccfb6c targets 0xeccfb78, is taken when v0(=ret(extract)) != t5(?), and falls through when v0(=ret(extract)) == t5(?).
  The `beq` branch at 0xeccfb78 targets 0xeccfb88, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beql` branch at 0xeccfb80 targets 0xeccfb50, is taken when t0(?) == 0, and falls through when t0(?) != 0; its branch-likely delay slot `lw a0,0(a2)` at 0xeccfb84 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xeccfb88 targets 0xeccfc34, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xeccfbc4 targets 0xeccfc34 and is always taken.
  The `bnel` branch at 0xeccfbd4 targets 0xeccfc38, is taken when t9(=a3) != at(=0x3000), and falls through when t9(=a3) == at(=0x3000); its branch-likely delay slot `lw t8,180(sp)` at 0xeccfbd8 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xeccfbf0 targets 0xeccfc38, is taken when v0(=ret(extract)) != t4(=[[[[a0+12]+24]]+4]), and falls through when v0(=ret(extract)) == t4(=[[[[a0+12]+24]]+4]); its branch-likely delay slot `lw t8,180(sp)` at 0xeccfbf4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xeccfc38 targets 0xeccfcb4, is taken when t8(?) != 0, and falls through when t8(?) == 0; its branch-likely delay slot `lw v0,180(sp)` at 0xeccfc3c runs only when taken and is annulled on fall-through.
  The return at 0xeccfcc0 has v0 = one of 0x0, 0x1, ?.
  The instructions from 0xeccfbcc to 0xeccfbcc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xeccfcc8 to 0xecd03ac are not reached by any path from the entry, and their branches are not listed.
- `gl_dgl_foreground` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec4fbc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec4fbc0-0xec4fc20 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0xec4fbd8 loads 4 bytes from abs 0xecd6c4c (comm_curbufpos).
  The `sw` at 0xec4fbe4 stores 4 bytes to [0xecd6c4c] +0x0.
  The `lw` at 0xec4fbe8 loads 4 bytes from abs 0xecd6c48 (comm_endbuffer).
  The `sw` at 0xec4fbf8 stores 4 bytes to abs 0xecd6c4c (comm_curbufpos).
  The `jalr` at 0xec4fc10 calls gl_comm_flush [0xec40750] with a0=0x140, a1=0x92fb0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xec4fbf4 targets 0xec4fc08, is taken when v1(=[0xecd6c48]) < at(=[0xecd6c4c]+4) (unsigned), and falls through when v1(=[0xecd6c48]) >= at(=[0xecd6c4c]+4) (unsigned).
  The `beq` branch at 0xec4fc18 targets 0xec4fbfc and is always taken.
  The return at 0xec4fc00 has v0 = one of 0xecd6c4c, ret(gl_comm_flush).
- `gl_d_foreground` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec5d540 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec5d540-0xec5d558 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0xec5d54c loads 4 bytes from abs 0xecdcef0.
  The `sw` at 0xec5d554 stores 4 bytes to abs 0xecd9120 (gl_putinbackground).
  The return at 0xec5d550 has v0 = 0xecd9120.
- `__GLforeground` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec62db4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec62db4-0xec62e7c (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xec62dfc loads 4 bytes from abs 0xece8bf0 (gl_inMoveDraw).
  The `lw` at 0xec62e20 loads 4 bytes from abs 0xece8cc0 (gl_immediate_mode).
  The `lw` at 0xec62e54 loads 4 bytes from abs 0xecdf178 (gl_dgl_table_is_remote).
  The `jalr` at 0xec62df0 calls gl_initializer [0xec79530] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xec62e0c calls __iglooCloseMoveDrawFromTable [0xec92d40] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xec62e64 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xec62e00 targets 0xec62e14, is taken when t8(=[0xece8bf0]) == 0, and falls through when t8(=[0xece8bf0]) != 0.
  The `bne` branch at 0xec62e44 targets 0xec62e64, is taken when t2(=[0xece8cc0]) != 0, and falls through when t2(=[0xece8cc0]) == 0.
  The `bne` branch at 0xec62e58 targets 0xec62e64, is taken when t8(=[0xecdf178]) != 0, and falls through when t8(=[0xecdf178]) == 0.
  The return at 0xec62e74 has v0 = ret(?).
- `foreground` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec62db4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec62db4-0xec62e7c (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xec62dfc loads 4 bytes from abs 0xece8bf0 (gl_inMoveDraw).
  The `lw` at 0xec62e20 loads 4 bytes from abs 0xece8cc0 (gl_immediate_mode).
  The `lw` at 0xec62e54 loads 4 bytes from abs 0xecdf178 (gl_dgl_table_is_remote).
  The `jalr` at 0xec62df0 calls gl_initializer [0xec79530] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xec62e0c calls __iglooCloseMoveDrawFromTable [0xec92d40] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xec62e64 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xec62e00 targets 0xec62e14, is taken when t8(=[0xece8bf0]) == 0, and falls through when t8(=[0xece8bf0]) != 0.
  The `bne` branch at 0xec62e44 targets 0xec62e64, is taken when t2(=[0xece8cc0]) != 0, and falls through when t2(=[0xece8cc0]) == 0.
  The `bne` branch at 0xec62e58 targets 0xec62e64, is taken when t8(=[0xecdf178]) != 0, and falls through when t8(=[0xecdf178]) == 0.
  The return at 0xec62e74 has v0 = ret(?).
- `__GLwindow` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec6b120 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec6b120-0xec6b1d4 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0xec6b134 loads 4 bytes from abs 0xece8bf0 (gl_inMoveDraw).
  The `lw` at 0xec6b1a8 loads 4 bytes from abs 0xece8cc0 (gl_immediate_mode).
  The `lw` at 0xec6b1bc loads 4 bytes from abs 0xecdf178 (gl_dgl_table_is_remote).
  The `jalr` at 0xec6b16c calls __iglooCloseMoveDrawFromTable [0xec92d40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xec6b1cc).
  The `beq` branch at 0xec6b138 targets 0xec6b1a0, is taken when t8(=[0xece8bf0]) == 0, and falls through when t8(=[0xece8bf0]) != 0.
  The `bne` branch at 0xec6b1ac targets 0xec6b1cc, is taken when t2(=[0xece8cc0]) != 0, and falls through when t2(=[0xece8cc0]) == 0.
  The `bne` branch at 0xec6b1c0 targets 0xec6b1cc, is taken when t8(=[0xecdf178]) != 0, and falls through when t8(=[0xecdf178]) == 0.
- `__iglooWindowRasterPos` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec79090 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec79090-0xec79144 (180 bytes).
  It occupies 180 bytes.
  The `jalr` at 0xec790bc calls __iglooGetBooleanv [0xecb7fb0] with a0=0xb08, a1=sp-64, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xec790dc calls __iglooGetFloatv [0xecb7ff0] with a0=0xb07, a1=sp-56, a2=?, a3=?.
  The `jalr` at 0xec7910c calls glBitmap with a0=0x0, a1=0x0, a2=?, a3=?, a6=0x0.
  The `bgezall` at 0xec79134 calls glLoadRasterPosSGIXXX [0xec79150] with a0=?, a1=?, a2=?, a3=?; fp f15=0x3f800000.
  The `beq` branch at 0xec790cc targets 0xec79128, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xec7913c targets 0xec79118 and is always taken.
  The return at 0xec79120 has v0 = one of ret(glBitmap), ret(glLoadRasterPosSGIXXX).
- `gl_g_foreground` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec8c1b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec8c1b0-0xec8c1ec (60 bytes).
  It occupies 60 bytes.
  The `sw` at 0xec8c1e8 stores 4 bytes to abs 0xecd9120 (gl_putinbackground).
  The `jalr` at 0xec8c1cc calls _GLhintinit [0xec84150] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xec8c1e4 has v0 = 0xecd9120.
- `_GLcreateOvWindows` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec97750 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec97750-0xec97948 (504 bytes).
  It occupies 504 bytes.
  The `sw` at 0xec97794 stores 4 bytes to abs 0xece8090.
  The `sw` at 0xec977a0 stores 4 bytes to abs 0xece8098.
  The `sw` at 0xec977a4 stores 4 bytes to abs 0xece8094.
  The `lw` at 0xec977b8 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0xec977cc loads 4 bytes from a1 (arg1 at entry) +0x88.
  The `lw` at 0xec977e4 loads 4 bytes from a0 (arg0 at entry) +0x8c.
  The `lw` at 0xec977f0 loads 4 bytes from a1 (arg1 at entry) +0x8c.
  The `lw` at 0xec97808 loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `lw` at 0xec97814 loads 4 bytes from a1 (arg1 at entry) +0x90.
  2 such `lw` accesses load 4 bytes from abs 0xece8bec (gl_sstatep), including `lw` at 0xec97828, `lw` at 0xec97850.
  2 such `lw` accesses load 4 bytes from [0xece8bec] +0x1c, including `lw` at 0xec97830, `lw` at 0xec97858.
  2 such `lw` accesses load 4 bytes from [[0xece8bec]+28] +0x4, including `lw` at 0xec9783c, `lw` at 0xec97860.
  The `lw` at 0xec97898 loads 4 bytes from abs 0xece8090.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0xec978b4, `lw` at 0xec978f8, `lw` at 0xec9793c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xec978dc, `lw` at 0xec97920.
  The `jalr` at 0xec97838 calls XSync with a0=[[[0xece8bec]+28]+4], a1=0x0, a2=?, a3=?.
  The `jalr` at 0xec97848 calls _GLsetwmcolormaps [0xecc7f70] with a0=a1 at entry (arg1), a1=0x0, a2=?, a3=?.
  The `jalr` at 0xec9785c calls XFlush with a0=[[[0xece8bec]+28]+4], a1=?, a2=?, a3=?.
  The `bgezall` at 0xec97894 calls (unnamed) [0xec96e50] with a0=a1 at entry (arg1), a1=[0xece8090], a2=sp-80, a3=0xece8090, a4=0xecf0000, a7=[a0+136].
  The `bgezall` at 0xec978b0 calls (unnamed) [0xec96f70] with a0=a1 at entry (arg1), a1=ret(0xec96e50), a2=[a1+8], a3=?.
  The `bgezall` at 0xec978d8 calls (unnamed) [0xec96e50] with a0=a1 at entry (arg1), a1=?, a2=sp-80, a3=?.
  The `bgezall` at 0xec978f4 calls (unnamed) [0xec96f70] with a0=a1 at entry (arg1), a1=ret(0xec96e50), a2=[a1+8], a3=?.
  The `bgezall` at 0xec9791c calls (unnamed) [0xec96e50] with a0=a1 at entry (arg1), a1=?, a2=sp-80, a3=?.
  The `bgezall` at 0xec97938 calls (unnamed) [0xec96f70] with a0=a1 at entry (arg1), a1=ret(0xec96e50), a2=[a1+8], a3=?.
  The `beq` branch at 0xec9777c targets 0xec977a8, is taken when at(=[0xecdf080]) == 0, and falls through when at(=[0xecdf080]) != 0.
  The `beq` branch at 0xec977c4 targets 0xec977d8, is taken when a7(=[a0+136]) == 0, and falls through when a7(=[a0+136]) != 0.
  The `beq` branch at 0xec977d0 targets 0xec97884, is taken when t0(=[a1+136]) == 0, and falls through when t0(=[a1+136]) != 0.
  The `beq` branch at 0xec977dc targets 0xec97820, is taken when s0(=a0+4) == s2(=a0+12), and falls through when s0(=a0+4) != s2(=a0+12).
  The `beq` branch at 0xec977e8 targets 0xec977fc, is taken when t1(=[a0+140]) == 0, and falls through when t1(=[a0+140]) != 0.
  The `beq` branch at 0xec977f4 targets 0xec978c4, is taken when t2(=[a1+140]) == 0, and falls through when t2(=[a1+140]) != 0.
  The `beq` branch at 0xec97800 targets 0xec97820, is taken when s0(=a0+8) == s2(=a0+12), and falls through when s0(=a0+8) != s2(=a0+12).
  The `beq` branch at 0xec9780c targets 0xec97820, is taken when t3(=[a0+144]) == 0, and falls through when t3(=[a0+144]) != 0.
  The `beq` branch at 0xec97818 targets 0xec97908, is taken when t8(=[a1+144]) == 0, and falls through when t8(=[a1+144]) != 0.
  The `beq` branch at 0xec97820 targets 0xec97864, is taken when s3(=one of 0x0, 0x1, 0x2, 0x3) == 0, and falls through when s3(=one of 0x0, 0x1, 0x2, 0x3) != 0.
  The `beq` branch at 0xec978bc targets 0xec977d8 and is always taken.
  The `beq` branch at 0xec97900 targets 0xec977fc and is always taken.
  The `beq` branch at 0xec97940 targets 0xec97820 and is always taken.
  The return at 0xec9787c has v0 = one of ?, ret(XFlush).
- `_GLresizeOvWindows` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec97950 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec97950-0xec97a30 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xec97958 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xec97990 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0xec979c0 loads 4 bytes from a0 (arg0 at entry) +0x8c.
  The `lw` at 0xec979ec loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `jalr` at 0xec979a8 calls XResizeWindow with a0=[a0+4], a1=[a0+136], a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xec979d4 calls XResizeWindow with a0=[a0+4], a1=[a0+140], a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xec97a00 calls XResizeWindow with a0=[a0+4], a1=[a0+144], a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `beq` branch at 0xec97994 targets 0xec979b4, is taken when a1(=[a0+136]) == 0, and falls through when a1(=[a0+136]) != 0.
  The `beq` branch at 0xec979b8 targets 0xec97a0c, is taken when s0(=a0+4) == s1(=a0+12), and falls through when s0(=a0+4) != s1(=a0+12).
  The `beq` branch at 0xec979c4 targets 0xec979e0, is taken when a1(=[a0+140]) == 0, and falls through when a1(=[a0+140]) != 0.
  The `beq` branch at 0xec979e4 targets 0xec97a0c, is taken when s0(=a0+8) == s1(=a0+12), and falls through when s0(=a0+8) != s1(=a0+12).
  The `beq` branch at 0xec979f0 targets 0xec97a0c, is taken when a1(=[a0+144]) == 0, and falls through when a1(=[a0+144]) != 0.
  The return at 0xec97a28 has v0 = one of 0x0, 0x1.
- `_GLdestroyOvWindows` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec97a30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec97a30-0xec97b50 (288 bytes).
  It occupies 288 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xec97a30, `lw` at 0xec97a7c, `lw` at 0xec97ac4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x88, including `lw` at 0xec97a60, `lw` at 0xec97a9c.
  The `lw` at 0xec97a74 loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The `sw` at 0xec97a80 stores 4 bytes to a0 (arg0 at entry) +0xa0.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x2c, including `lbu` at 0xec97a84, `lbu` at 0xec97acc, `lbu` at 0xec97b14.
  The `sw` at 0xec97aa0 stores 4 bytes to a0 (arg0 at entry) +0x88.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c, including `lw` at 0xec97ab0, `lw` at 0xec97ae4.
  The `lw` at 0xec97abc loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `sw` at 0xec97ac8 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `sw` at 0xec97ae8 stores 4 bytes to a0 (arg0 at entry) +0x8c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x90, including `lw` at 0xec97af8, `lw` at 0xec97b2c.
  The `lw` at 0xec97b04 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `sw` at 0xec97b10 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  The `sw` at 0xec97b30 stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `jalr` at 0xec97a78 calls __iglooDestroyContextInfo [0xec777c0] with a0=[a0+4], a1=[a0+160], a2=[a0+4], a3=a3 at entry (arg3).
  The `jalr` at 0xec97a98 calls XDestroyWindow with a0=?, a1=[a0+136], a2=?, a3=?.
  The `jalr` at 0xec97ac0 calls __iglooDestroyContextInfo [0xec777c0] with a0=[a0+4], a1=[a0+164], a2=?, a3=?.
  The `jalr` at 0xec97ae0 calls XDestroyWindow with a0=?, a1=[a0+140], a2=0x5, a3=[a0+44]:1.
  The `jalr` at 0xec97b08 calls __iglooDestroyContextInfo [0xec777c0] with a0=[a0+4], a1=[a0+168], a2=?, a3=?, a4=[a0+144].
  The `jalr` at 0xec97b28 calls XDestroyWindow with a0=?, a1=[a0+144], a2=?, a3=?, a5=0x5, a6=[a0+44]:1.
  The `beq` branch at 0xec97a68 targets 0xec97aa4, is taken when v0(=[a0+136]) == 0, and falls through when v0(=[a0+136]) != 0.
  The `beq` branch at 0xec97a8c targets 0xec97aa0, is taken when v1(=0x5) == a0(=[a0+44]:1), and falls through when v1(=0x5) != a0(=[a0+44]:1).
  The `beq` branch at 0xec97aa8 targets 0xec97b34, is taken when s0(=a0+4) == s2(=a0+12), and falls through when s0(=a0+4) != s2(=a0+12).
  The `beq` branch at 0xec97ab4 targets 0xec97aec, is taken when a1(=[a0+140]) == 0, and falls through when a1(=[a0+140]) != 0.
  The `beq` branch at 0xec97ad4 targets 0xec97ae8, is taken when a2(=0x5) == a3(=[a0+44]:1), and falls through when a2(=0x5) != a3(=[a0+44]:1).
  The `beq` branch at 0xec97af0 targets 0xec97b34, is taken when s0(=a0+8) == s2(=a0+12), and falls through when s0(=a0+8) != s2(=a0+12).
  The `beq` branch at 0xec97afc targets 0xec97b34, is taken when a4(=[a0+144]) == 0, and falls through when a4(=[a0+144]) != 0.
  The `beq` branch at 0xec97b1c targets 0xec97b30, is taken when a5(=0x5) == a6(=[a0+44]:1), and falls through when a5(=0x5) != a6(=[a0+44]:1).
  The return at 0xec97b48 has v0 = ?.
- `_GLiconwindow` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xecc7c90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xecc7c90-0xecc7d10 (128 bytes).
  It occupies 128 bytes.
  The `lbu` at 0xecc7c94 loads 1 byte from a0 (arg0 at entry) +0x2c.
  The `sb` at 0xecc7ce4 stores 1 byte to a1 (arg1 at entry) +0x2c.
  The `lw` at 0xecc7cf8 loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `lw` at 0xecc7d00 loads 4 bytes from a1 (arg1 at entry) +0x40.
  The `sw` at 0xecc7d0c stores 4 bytes to [a0+100] +0x10.
  The `bgezall` at 0xecc7ce0 calls _GLallocWMHints [0xecc7670] with a0=a0 at entry (arg0), a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xecc7cb0 targets 0xecc7cc8, is taken when v0(=[a0+44]:1) == v1(=0x2), and falls through when v0(=[a0+44]:1) != v1(=0x2).
  The return at 0xecc7cc0 has v0 = -0x5.
  The return at 0xecc7d08 has v0 = 0x0.
- `_GLinitXWindowAttributes` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xecc7f50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xecc7f50-0xecc7f6c (28 bytes).
  It occupies 28 bytes.
  The `sw` at 0xecc7f50 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0xecc7f58 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0xecc7f68 stores 4 bytes to a0 (arg0 at entry) +0x28.
  The return at 0xecc7f64 has v0 = 0x818.
- `_GLnewwindow` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xecc80a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xecc80a0-0xecc8344 (676 bytes).
  It occupies 676 bytes.
  The `lw` at 0xecc8100 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `sw` at 0xecc8108 stores 4 bytes to ret(gl_malloc) +0x4c.
  The `sw` at 0xecc810c stores 4 bytes to [a0+72] +0x50.
  The `sw` at 0xecc8110 stores 4 bytes to a0 (arg0 at entry) +0x48.
  The `lw` at 0xecc8128 loads 4 bytes from abs 0xecda668.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0xecc812c, `lw` at 0xecc817c.
  The `sw` at 0xecc8150 stores 4 bytes to ret(gl_malloc) +0x44.
  The `lw` at 0xecc8154 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xecc8158 stores 4 bytes to ret(gl_malloc) +0x4.
  The `lw` at 0xecc815c loads 4 bytes from a0 (arg0 at entry) +0x5c.
  The `sw` at 0xecc8160 stores 4 bytes to ret(gl_malloc) +0x54.
  The `sw` at 0xecc8164 stores 4 bytes to ret(gl_malloc) +0x5c.
  The `lw` at 0xecc816c loads 4 bytes from ret(__iglooChooseVisual) +0x4.
  The `sw` at 0xecc8174 stores 4 bytes to ret(gl_malloc) +0x14.
  The `sw` at 0xecc8178 stores 4 bytes to ret(gl_malloc) +0x10.
  The `sw` at 0xecc8188 stores 4 bytes to ret(gl_malloc) +0xc.
  The `sw` at 0xecc818c stores 4 bytes to ret(gl_malloc) +0x68.
  The `lw` at 0xecc8190 loads 4 bytes from ret(gl_malloc) +0xc.
  The `sw` at 0xecc8194 stores 4 bytes to ret(gl_malloc) +0x20.
  The `lw` at 0xecc8198 loads 4 bytes from [ret(gl_malloc)+12] +0x70.
  The `sb` at 0xecc81b4 stores 1 byte to ret(gl_malloc) +0x2c.
  2 such `lw` accesses load 4 bytes from [ret(gl_malloc)+12] +0x0, including `lw` at 0xecc81b8, `lw` at 0xecc81c4.
  The `lw` at 0xecc81bc loads 4 bytes from [[ret(gl_malloc)+12]] +0x14.
  The `sw` at 0xecc81c0 stores 4 bytes to ret(gl_malloc) +0x0.
  The `sw` at 0xecc81c8 stores 4 bytes to [[ret(gl_malloc)+12]] +0x14.
  The `sw` at 0xecc81cc stores 4 bytes to ret(gl_malloc) +0x3c.
  The `sw` at 0xecc81d0 stores 4 bytes to ret(gl_malloc) +0x38.
  The `lw` at 0xecc81d4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from ret(gl_malloc) +0x14, including `lw` at 0xecc81d8, `lw` at 0xecc82a8.
  The `lw` at 0xecc81dc loads 4 bytes from abs 0xece8954 (_GLuseCIvisual).
  2 such `lw` accesses load 4 bytes from [ret(gl_malloc)+20] +0x0, including `lw` at 0xecc81e0, `lw` at 0xecc82bc.
  4 such `lw` accesses load 4 bytes from ret(gl_malloc) +0x4, including `lw` at 0xecc81e4, `lw` at 0xecc8234, `lw` at 0xecc82a0.
  The `lw` at 0xecc81e8 loads 4 bytes from [[ret(gl_malloc)+20]] +0x0.
  The `lw` at 0xecc81f0 loads 4 bytes from [[ret(gl_malloc)+20]] +0xc.
  The `sw` at 0xecc8238 stores 4 bytes to ret(gl_malloc) +0x40.
  The `sw` at 0xecc8290 stores 4 bytes to ret(gl_malloc) +0x8.
  The `lw` at 0xecc8298 loads 4 bytes from ret(gl_malloc) +0x8.
  The `sw` at 0xecc82c8 stores 4 bytes to ret(gl_malloc) +0x18.
  The `sw` at 0xecc8338 stores 4 bytes to abs 0xecda668.
  The `sw` at 0xecc8340 stores 4 bytes to abs 0xecda674.
  The `jalr` at 0xecc80d0 calls gl_malloc [0xec5f4e0] with a0=0xbc, a1=0xecd29e0, a2=0x1aad0, a3=a3 at entry (arg3).
  The `jalr` at 0xecc80e4 calls bzero with a0=ret(gl_malloc), a1=0xbc, a2=?, a3=?.
  The `bgezall` at 0xecc8118 calls _GLinitXWindowAttributes [0xecc7f50] with a0=sp-128, a1=?, a2=?, a3=?.
  The `bgezall` at 0xecc8144 calls __iglooChooseVisual [0xecc7000] with a0=[a0+12]+28, a1=0xecda660, a2=?, a3=?.
  The `bgezall` at 0xecc8184 calls _GLstrdup [0xecc7980] with a0=0xecded48, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc8228 calls XCreateWindow with a0=[ret(gl_malloc)+4], a1=[a0+8], a2=0x1f4, a3=0x1f4, a4=0x64, a5=0x64, a6=0x0, a7=[[[ret(gl_malloc)+20]]+12].
  The `jalr` at 0xecc826c calls XCreateWindow with a0=[ret(gl_malloc)+4], a1=ret(XCreateWindow), a2=0x0, a3=0x0, a4=0x64, a5=0x64, a6=0x0, a7=[[[ret(gl_malloc)+20]]+12].
  The `bgezall` at 0xecc828c calls _GLsetwmcolormaps [0xecc7f70] with a0=ret(gl_malloc), a1=0x0, a2=?, a3=?.
  The `jalr` at 0xecc829c calls XMapWindow with a0=[ret(gl_malloc)+4], a1=[ret(gl_malloc)+8], a2=?, a3=?.
  The `jalr` at 0xecc82b8 calls __iglooCreateContextInfo [0xec77600] with a0=[ret(gl_malloc)+4], a1=ret(gl_malloc), a2=[[ret(gl_malloc)+20]], a3=0x0.
  The `jalr` at 0xecc830c calls XCreateWindow with a0=[ret(gl_malloc)+4], a1=[a0+8], a2=0x1f4, a3=0x1f4, a4=0x64, a5=0x64, a6=0x0, a7=0x0.
  The `jalr` at 0xecc8324 calls __GLgetgdesc with a0=0xc, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc8334 calls __GLgetgdesc with a0=0x10, a1=?, a2=?, a3=?.
  The `beq` branch at 0xecc80f8 targets 0xecc8114, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0xecc8104 targets 0xecc8110, is taken when v0(=[a0+72]) == 0, and falls through when v0(=[a0+72]) != 0.
  The `beq` branch at 0xecc8134 targets 0xecc8320, is taken when t8(=[0xecda668]) == 0, and falls through when t8(=[0xecda668]) != 0.
  The `beq` branch at 0xecc81a8 targets 0xecc81b4, is taken when a0(=[[ret(gl_malloc)+12]+112]) == s1(=a0), and falls through when a0(=[[ret(gl_malloc)+12]+112]) != s1(=a0).
  The `beq` branch at 0xecc81ec targets 0xecc82dc, is taken when t8(=[0xece8954]) == 0, and falls through when t8(=[0xece8954]) != 0.
  The `beq` branch at 0xecc8318 targets 0xecc8234 and is always taken.
  The `beq` branch at 0xecc833c targets 0xecc813c and is always taken.
  The return at 0xecc82d4 has v0 = ret(gl_malloc).
- `_GLdestroywindow` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xecc8350 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xecc8350-0xecc84f8 (424 bytes).
  It occupies 424 bytes.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x2c, including `lbu` at 0xecc8358, `lbu` at 0xecc8408.
  The `lw` at 0xecc8380 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0xecc839c loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xecc83a0 loads 4 bytes from [a0+12] +0x0.
  The `lw` at 0xecc83a4 loads 4 bytes from [[a0+12]] +0x14.
  The `lw` at 0xecc83a8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xecc83b0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xecc83b4 stores 4 bytes to [[a0+12]] +0x14.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0xecc83b8, `lw` at 0xecc84c4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x50, including `lw` at 0xecc83c0, `lw` at 0xecc83e4.
  The `lw` at 0xecc83c4 loads 4 bytes from [a0+68] +0x48.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c, including `lw` at 0xecc83cc, `lw` at 0xecc83e0.
  The `sw` at 0xecc83d4 stores 4 bytes to [a0+68] +0x48.
  The `sw` at 0xecc83dc stores 4 bytes to [a0+80] +0x4c.
  The `sw` at 0xecc83e8 stores 4 bytes to [a0+76] +0x50.
  The `lw` at 0xecc8404 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0xecc8414 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0xecc8424 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xecc8434 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0xecc8448 loads 4 bytes from a0 (arg0 at entry) +0x68.
  2 such `sw` accesses store 4 bytes to abs 0xece8998 (GLlasterror), including `sw` at 0xecc8498, `sw` at 0xecc84f4.
  The `lw` at 0xecc849c loads 4 bytes from [[[a0+12]]+20] +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xecc84b0, `lw` at 0xecc84c8.
  The `sw` at 0xecc84d0 stores 4 bytes to ?.
  The `bgezall` at 0xecc8394 calls (unnamed) [0xecc8a50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xecc83f0 calls _GLdestroyOvWindows [0xec97a30] with a0=a0 at entry (arg0), a1=[a0], a2=?, a3=[a0+80].
  The `jalr` at 0xecc8400 calls __iglooDestroyContextInfo [0xec777c0] with a0=[a0+4], a1=[a0+24], a2=?, a3=?.
  The `jalr` at 0xecc8420 calls XDestroyWindow with a0=[a0+4], a1=[a0+8], a2=?, a3=?, a6=[a0+44]:1, a7=0x5.
  The `jalr` at 0xecc8430 calls XDestroyWindow with a0=[a0+4], a1=[a0+64], a2=?, a3=?.
  The `jalr` at 0xecc8440 calls XSync with a0=[a0+4], a1=0x0, a2=?, a3=?.
  The `jalr` at 0xecc845c calls gl_free [0xec5f570] with a0=[a0+104], a1=0xecd29f0, a2=?, a3=?.
  The `jalr` at 0xecc8474 calls gl_free [0xec5f570] with a0=a0 at entry (arg0), a1=0xecd29f0, a2=?, a3=?.
  The `beq` branch at 0xecc8378 targets 0xecc84d4, is taken when at(=[a0+44]:1) == v0(=0x1), and falls through when at(=[a0+44]:1) != v0(=0x1).
  The `beq` branch at 0xecc8388 targets 0xecc839c, is taken when (a0(=[a0+32]) & 0x4) == 0, and falls through when (a0(=[a0+32]) & 0x4) != 0.
  The `bne` branch at 0xecc83ac targets 0xecc849c, is taken when a3(=[[[a0+12]]+20]) != s0(=a0), and falls through when a3(=[[[a0+12]]+20]) == s0(=a0).
  The `beq` branch at 0xecc83bc targets 0xecc83ec, is taken when a0(=[a0+68]) == 0, and falls through when a0(=[a0+68]) != 0.
  The `bne` branch at 0xecc83c8 targets 0xecc83d8, is taken when a2(=[[a0+68]+72]) != s0(=a0), and falls through when a2(=[[a0+68]+72]) == s0(=a0).
  The `beq` branch at 0xecc83d0 targets 0xecc83ec and is always taken.
  The `beq` branch at 0xecc83d8 targets 0xecc83ec, is taken when a2(=[a0+76]) == 0, and falls through when a2(=[a0+76]) != 0.
  The `beq` branch at 0xecc8410 targets 0xecc8438, is taken when a6(=[a0+44]:1) == a7(=0x5), and falls through when a6(=[a0+44]:1) != a7(=0x5).
  The `beq` branch at 0xecc844c targets 0xecc8468, is taken when a0(=[a0+104]) == 0, and falls through when a0(=[a0+104]) != 0.
  The `beq` branch at 0xecc84a0 targets 0xecc83b8, is taken when a4(=[[[[a0+12]]+20]]) == 0, and falls through when a4(=[[[[a0+12]]+20]]) != 0.
  The `beq` branch at 0xecc84a8 targets 0xecc84c8, is taken when s0(=a0) == a2(?), and falls through when s0(=a0) != a2(?).
  The `bne` branch at 0xecc84b8 targets 0xecc84a8, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xecc84c0 targets 0xecc83bc and is always taken.
  The `beq` branch at 0xecc84cc targets 0xecc83b8 and is always taken.
  The return at 0xecc8494 has v0 = 0x0.
  The return at 0xecc84f0 has v0 = -0x8.
- `gl_free_windows` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xecc8500 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xecc8500-0xecc85a0 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xecc8518 loads 4 bytes from abs 0xece89a8 (gl_valid_cxs).
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xecc8538, `lw` at 0xecc8568.
  The `lw` at 0xecc8548 loads 4 bytes from abs 0xece899c (gl_thedisplay).
  The `lw` at 0xecc8554 loads 4 bytes from [0xece899c] +0x14.
  The `bgezall` at 0xecc8534 calls _GLdestroycontext [0xecc9920] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xecc8564 calls _GLdestroywindow [0xecc8350] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc8578 calls _GLclearSlots [0xec8f200] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xecc8588 calls _GLattachScreen [0xecc97c0] with a0=-0x1, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0xecc8520 targets 0xecc8544, is taken when a0(=[0xece89a8]) == 0, and falls through when a0(=[0xece89a8]) != 0.
  The `bne` branch at 0xecc853c targets 0xecc8530, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0xecc854c targets 0xecc8578, is taken when a2(=[0xece899c]) == 0, and falls through when a2(=[0xece899c]) != 0.
  The `beq` branch at 0xecc8558 targets 0xecc8578, is taken when a0(=[[0xece899c]+20]) == 0, and falls through when a0(=[[0xece899c]+20]) != 0.
  The `bne` branch at 0xecc856c targets 0xecc8560, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The return at 0xecc8598 has v0 = ret(_GLattachScreen).
- `_GLmapwindow` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xecc8c30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xecc8c30-0xecc8dc0 (400 bytes).
  It occupies 400 bytes.
  The `lbu` at 0xecc8c3c loads 1 byte from a0 (arg0 at entry) +0x2c.
  The `lw` at 0xecc8c54 loads 4 bytes from a0 (arg0 at entry) +0x78.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0xecc8c64, `lw` at 0xecc8cdc, `lw` at 0xecc8d18.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0xecc8c84, `lw` at 0xecc8c94, `lw` at 0xecc8cf0.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xecc8c90, `lw` at 0xecc8ca0, `lw` at 0xecc8cc4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0xecc8c98, `lw` at 0xecc8cbc.
  2 such `lw` accesses load 4 bytes from [a0+12] +0x78, including `lw` at 0xecc8ca8, `lw` at 0xecc8ccc.
  2 such `lw` accesses load 4 bytes from [a0+12] +0x74, including `lw` at 0xecc8cb4, `lw` at 0xecc8cd8.
  The `lw` at 0xecc8cb8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xecc8d34, `lw` at 0xecc8da8.
  The `sw` at 0xecc8d90 stores 4 bytes to abs 0xece8998 (GLlasterror).
  The `jalr` at 0xecc8c8c calls XChangeWindowAttributes with a0=[a0+4], a1=[a0+64], a2=0x200, a3=sp-96.
  The `jalr` at 0xecc8cb0 calls XMoveResizeWindow with a0=[a0+4], a1=[a0+64], a2=0x0, a3=0x0, a4=[[a0+12]+116], a5=[[a0+12]+120].
  The `jalr` at 0xecc8cd4 calls XMoveResizeWindow with a0=[a0+4], a1=[a0+8], a2=0x0, a3=0x0, a4=[[a0+12]+116], a5=[[a0+12]+120].
  The `jalr` at 0xecc8cf4 calls XLowerWindow with a0=[a0+4], a1=[a0+64], a2=?, a3=?.
  The `jalr` at 0xecc8d04 calls XMapWindow with a0=[a0+4], a1=[a0+64], a2=?, a3=?.
  The `jalr` at 0xecc8d10 calls XFlush with a0=[a0+4], a1=?, a2=?, a3=?.
  The `bgezall` at 0xecc8d5c calls _GLupdateQueue [0xeccc310] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `jalr` at 0xecc8d98 calls _GLquit_close_setup [0xec896e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xecc8c5c targets 0xecc8d94, is taken when v0(=[a0+44]:1) == v1(=0x2), and falls through when v0(=[a0+44]:1) != v1(=0x2).
  The `beq` branch at 0xecc8c6c targets 0xecc8ce4, is taken when (a0(=[a0+32]) & 0x18) == 0, and falls through when (a0(=[a0+32]) & 0x18) != 0.
  The `beq` branch at 0xecc8ce4 targets 0xecc8d00, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0xecc8d24 targets 0xecc8d74, is taken when (a6(=[a0+32]) & 0x2) != 0, and falls through when (a6(=[a0+32]) & 0x2) == 0.
  The `beq` branch at 0xecc8d2c targets 0xecc8d58, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0xecc8d3c targets 0xecc8d78, is taken when (t0(?) & 0x2) != 0, and falls through when (t0(?) & 0x2) == 0.
  The `beq` branch at 0xecc8d44 targets 0xecc8d58 and is always taken.
  The `bne` branch at 0xecc8d4c targets 0xecc8da8, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0xecc8d6c targets 0xecc8d4c, is taken when (t2(=[a0+32]) & 0x2) == 0, and falls through when (t2(=[a0+32]) & 0x2) != 0.
  The `beq` branch at 0xecc8da0 targets 0xecc8c68 and is always taken.
  The `beq` branch at 0xecc8db0 targets 0xecc8d58, is taken when (t8(?) & 0x2) == 0, and falls through when (t8(?) & 0x2) != 0.
  The `beq` branch at 0xecc8db8 targets 0xecc8d78 and is always taken.
  The return at 0xecc8d8c has v0 = 0x0.
- `_GLmakeglwindow` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xecc9030 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xecc9030-0xecc90c4 (148 bytes).
  It occupies 148 bytes.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xecc9084, `sw` at 0xecc9088, `sw` at 0xecc908c.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0xecc9090, `lw` at 0xecc90a0, `lw` at 0xecc90b0.
  The `lw` at 0xecc9098 loads 4 bytes from [a1] +0x14.
  The `lw` at 0xecc90a8 loads 4 bytes from [a1] +0x4.
  The `sw` at 0xecc90c0 stores 4 bytes to [a1] +0x14.
  The `jalr` at 0xecc9060 calls gl_malloc [0xec5f4e0] with a0=0xbc, a1=0xecd2ac8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xecc9074 calls bzero with a0=ret(gl_malloc), a1=0xbc, a2=?, a3=?.
  The return at 0xecc90bc has v0 = ?.
- `_GLfreezeWindows` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xecca7b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xecca7b0-0xecca858 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0xecca7cc loads 4 bytes from abs 0xece89a8 (gl_valid_cxs).
  The `lw` at 0xecca7f0 loads 4 bytes from [0xece89a8] +0xe0.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xecca800, `lw` at 0xecca80c, `lw` at 0xecca830.
  The `lbu` at 0xecca818 loads 1 byte from ?.
  The `bgezall` at 0xecca828 calls _GLunblock [0xecca7a0] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0xecca7e4 targets 0xecca83c, is taken when at(=[0xece89a8]) == 0, and falls through when at(=[0xece89a8]) != 0.
  The `beq` branch at 0xecca7ec targets 0xecca810 and is always taken.
  The `beq` branch at 0xecca804 targets 0xecca83c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xecca810 targets 0xecca800, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xecca81c targets 0xecca800, is taken when s2(=0x5) == v1(?), and falls through when s2(=0x5) != v1(?).
  The `bne` branch at 0xecca834 targets 0xecca80c, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The return at 0xecca850 has v0 = one of 0x183c0, ?, ret(_GLunblock).
  The instructions from 0xecca7f4 to 0xecca7fc are not reached by any path from the entry, and their branches are not listed.
- `gl_glx_findwindow` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xeccd2e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xeccd2e0-0xeccd3a8 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xeccd318 loads 4 bytes from ret(gl_glx_finddisplay) +0x14.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0xeccd324, `lw` at 0xeccd330, `lw` at 0xeccd33c.
  The `jalr` at 0xeccd308 calls gl_glx_finddisplay [0xec8f760] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xeccd2f8 targets 0xeccd394, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0xeccd310 targets 0xeccd368, is taken when v0(=ret(gl_glx_finddisplay)) == 0, and falls through when v0(=ret(gl_glx_finddisplay)) != 0.
  The `beq` branch at 0xeccd31c targets 0xeccd368, is taken when a0(=[ret(gl_glx_finddisplay)+20]) == 0, and falls through when a0(=[ret(gl_glx_finddisplay)+20]) != 0.
  The `beq` branch at 0xeccd328 targets 0xeccd384, is taken when v0(?) == s0(=a1), and falls through when v0(?) != s0(=a1).
  The `beq` branch at 0xeccd334 targets 0xeccd384, is taken when v1(?) == s0(=a1), and falls through when v1(?) != s0(=a1).
  The `beq` branch at 0xeccd344 targets 0xeccd380, is taken when a1(?) == s0(=a1), and falls through when a1(?) != s0(=a1).
  The `beq` branch at 0xeccd34c targets 0xeccd384, is taken when a2(?) == s0(=a1), and falls through when a2(?) != s0(=a1).
  The `beq` branch at 0xeccd354 targets 0xeccd384, is taken when a3(?) == s0(=a1), and falls through when a3(?) != s0(=a1).
  The `bne` branch at 0xeccd360 targets 0xeccd324, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The return at 0xeccd378 has v0 = 0x0.
  The return at 0xeccd38c has v0 = ?.
  The return at 0xeccd3a0 has v0 = 0x0.
- `__fm_BitmapRegisterFontFileFunctions` in `usr/lib32/libfm.so` at 0xee351f4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libfm.so`.
  Range: 0xee351f4-0xee35264 (112 bytes).
  It occupies 112 bytes.
  The `jalr` at 0xee3522c calls __fm_FontFileRegisterRenderer with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xee3523c targets 0xee35228, is taken when s1(?) < 0x6 (unsigned), and falls through when s1(?) >= 0x6 (unsigned).
  The return at 0xee3525c has v0 = 0x0.
- `__fm_FontFileRegisterFontFileFunctions` in `usr/lib32/libfm.so` at 0xee353d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libfm.so`.
  Range: 0xee353d0-0xee35408 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xee353ec calls __fm_BitmapRegisterFontFileFunctions with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xee35400 has v0 = 0x0.
- `__fm_FontFileRegisterRenderer` in `usr/lib32/libfm.so` at 0xee35408 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libfm.so`.
  Range: 0xee35408-0xee354fc (244 bytes).
  It occupies 244 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xee749c8, including `lw` at 0xee35430, `lw` at 0xee35474.
  2 such `lw` accesses load 4 bytes from abs 0xee749cc, including `lw` at 0xee35454, `lw` at 0xee35498.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xee35460, `lw` at 0xee3546c.
  The `lw` at 0xee35464 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xee354b4 stores 4 bytes to abs 0xee749c8.
  The `sw` at 0xee354b8 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `sw` at 0xee354bc stores 4 bytes to abs 0xee749cc.
  The `sw` at 0xee354c4 stores 4 bytes to (ret(__fm_Xrealloc) + ([0xee749c8]+1 << 0x2)) -0x4.
  The `jalr` at 0xee35468 calls strcmp with a0=?, a1=[a0], a2=?, a3=?.
  The `jalr` at 0xee3549c calls __fm_Xrealloc with a0=[0xee749cc], a1=([0xee749c8] << 0x2)+4, a2=?, a3=?.
  The `blez` branch at 0xee35444 targets 0xee35488, is taken when v0(=[0xee749c8]) <= 0 (signed), and falls through when v0(=[0xee749c8]) > 0 (signed).
  The `beq` branch at 0xee35470 targets 0xee354f4, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0xee35484 targets 0xee35454, is taken when s2(?) < v0(=[0xee749c8]) (signed), and falls through when s2(?) >= v0(=[0xee749c8]) (signed).
  The `beq` branch at 0xee354a8 targets 0xee354ec, is taken when v0(=ret(__fm_Xrealloc)) == 0, and falls through when v0(=ret(__fm_Xrealloc)) != 0.
  The `beq` branch at 0xee354ec targets 0xee354c8 and is always taken.
  The `beq` branch at 0xee354f4 targets 0xee354c8 and is always taken.
  The return at 0xee354e4 has v0 = one of 0x0, 0x1.
- `__fm_FontFileRegisterBitmapSource` in `usr/lib32/libfm.so` at 0xee370e4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libfm.so`.
  Range: 0xee370e4-0xee371bc (216 bytes).
  It occupies 216 bytes.
  2 such `lw` accesses load 4 bytes from sym(FontFileBitmapSources) +0x8, including `lw` at 0xee370fc, `lw` at 0xee37170.
  The `lw` at 0xee37108 loads 4 bytes from sym(FontFileBitmapSources) +0x0.
  The `lw` at 0xee37114 loads 4 bytes from sym(FontFileBitmapSources) +0x4.
  The `lw` at 0xee37124 loads 4 bytes from ?.
  The `sw` at 0xee37178 stores 4 bytes to sym(FontFileBitmapSources) +0x0.
  The `sw` at 0xee3717c stores 4 bytes to sym(FontFileBitmapSources) +0x4.
  The `sw` at 0xee37188 stores 4 bytes to sym(FontFileBitmapSources) +0x8.
  The `sw` at 0xee37194 stores 4 bytes to ?.
  The `jalr` at 0xee37158 calls __fm_Xrealloc with a0=[sym(FontFileBitmapSources)], a1=([sym(FontFileBitmapSources)+4] << 0x2)+16, a2=[sym(FontFileBitmapSources)+4]+4, a3=?, a6=[sym(FontFileBitmapSources)+8], a7=0x1.
  The `blez` branch at 0xee37110 targets 0xee3713c, is taken when a6(=[sym(FontFileBitmapSources)+8]) <= 0 (signed), and falls through when a6(=[sym(FontFileBitmapSources)+8]) > 0 (signed).
  The `beq` branch at 0xee3712c targets 0xee371ac, is taken when v1(?) == s0(=a0), and falls through when v1(?) != s0(=a0).
  The `bne` branch at 0xee37134 targets 0xee37124, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0xee3713c targets 0xee37180, is taken when t0(=[sym(FontFileBitmapSources)+4]) != a6(=[sym(FontFileBitmapSources)+8]), and falls through when t0(=[sym(FontFileBitmapSources)+4]) == a6(=[sym(FontFileBitmapSources)+8]).
  The `beq` branch at 0xee3716c targets 0xee371b4, is taken when v0(=ret(__fm_Xrealloc)) == 0, and falls through when v0(=ret(__fm_Xrealloc)) != 0.
  The `beq` branch at 0xee371ac targets 0xee3719c and is always taken.
  The `beq` branch at 0xee371b4 targets 0xee3719c and is always taken.
  The return at 0xee371a4 has v0 = one of 0x0, 0x1.
- `__fm_FontFileUnregisterBitmapSource` in `usr/lib32/libfm.so` at 0xee371bc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libfm.so`.
  Range: 0xee371bc-0xee3728c (208 bytes).
  It occupies 208 bytes.
  2 such `lw` accesses load 4 bytes from sym(FontFileBitmapSources) +0x8, including `lw` at 0xee371d8, `lw` at 0xee37248.
  2 such `lw` accesses load 4 bytes from sym(FontFileBitmapSources) +0x0, including `lw` at 0xee371e8, `lw` at 0xee37238.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xee371f0, `lw` at 0xee37240.
  The `sw` at 0xee37220 stores 4 bytes to sym(FontFileBitmapSources) +0x8.
  The `sw` at 0xee37244 stores 4 bytes to ?.
  The `sw` at 0xee37270 stores 4 bytes to sym(FontFileBitmapSources) +0x4.
  The `sw` at 0xee3727c stores 4 bytes to sym(FontFileBitmapSources) +0x0.
  The `jalr` at 0xee3726c calls __fm_Xfree with a0=[sym(FontFileBitmapSources)], a1=a1 at entry (arg1), a2=?, a3=?, a5=[sym(FontFileBitmapSources)+8]-1, a6=[sym(FontFileBitmapSources)].
  The `blez` branch at 0xee371e4 targets 0xee3720c, is taken when a5(=[sym(FontFileBitmapSources)+8]) <= 0 (signed), and falls through when a5(=[sym(FontFileBitmapSources)+8]) > 0 (signed).
  The `beq` branch at 0xee371f4 targets 0xee3721c, is taken when v0(?) == a0, and falls through when v0(?) != a0.
  The `bne` branch at 0xee37204 targets 0xee371f0, is taken when a2(?) < a5(=[sym(FontFileBitmapSources)+8]) (signed), and falls through when a2(?) >= a5(=[sym(FontFileBitmapSources)+8]) (signed).
  The `beq` branch at 0xee37228 targets 0xee37264, is taken when a5(=[sym(FontFileBitmapSources)+8]-1) == 0, and falls through when a5(=[sym(FontFileBitmapSources)+8]-1) != 0.
  The `beq` branch at 0xee37230 targets 0xee37210, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xee37254 targets 0xee37238, is taken when a2(?) < a0(=[sym(FontFileBitmapSources)+8]) (signed), and falls through when a2(?) >= a0(=[sym(FontFileBitmapSources)+8]) (signed).
  The `beq` branch at 0xee3725c targets 0xee37210 and is always taken.
  The return at 0xee37214 has v0 = ?.
  The return at 0xee37284 has v0 = ret(__fm_Xfree).
- `CIDRegisterFontFileFunctions` in `usr/lib32/libfm.so` at 0xee406d4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libfm.so`.
  Range: 0xee406d4-0xee40718 (68 bytes).
  It occupies 68 bytes.
  The `jalr` at 0xee406f0 calls __fm_T1InitStdProps with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xee40700 calls __fm_FontFileRegisterRenderer with a0=0xee63638, a1=?, a2=?, a3=?.
  The return at 0xee40710 has v0 = ret(__fm_FontFileRegisterRenderer).
- `Type1RegisterFontFileFunctions` in `usr/lib32/libfm.so` at 0xee40718 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libfm.so`.
  Range: 0xee40718-0xee40780 (104 bytes).
  It occupies 104 bytes.
  The `jalr` at 0xee40738 calls __fm_T1InitStdProps with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xee40750 calls __fm_FontFileRegisterRenderer with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xee40760 targets 0xee4074c, is taken when s1(?) < 0x2 (unsigned), and falls through when s1(?) >= 0x2 (unsigned).
  The return at 0xee40778 has v0 = ret(__fm_FontFileRegisterRenderer).
- `t1_KillRegion` in `usr/lib32/libfm.so` at 0xee483f4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libfm.so`.
  Range: 0xee483f4-0xee484c4 (208 bytes).
  It occupies 208 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x2, including `lh` at 0xee48400, `lh` at 0xee484c0.
  The `lw` at 0xee48438 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `sh` at 0xee48444 stores 2 bytes to a0 (arg0 at entry) +0x2.
  The `lw` at 0xee48460 loads 4 bytes from ?.
  The `lbu` at 0xee48494 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `jalr` at 0xee4845c calls t1_Free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xee48470 calls t1_Free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xee484b4 calls __fm_FatalError with a0=0xee5dd08, a1=a1 at entry (arg1), a2=[a0+2]:2, a3=a3 at entry (arg3).
  The `bltz` branch at 0xee4841c targets 0xee484ac, is taken when a2(=[a0+2]:2) < 0 (signed), and falls through when a2(=[a0+2]:2) >= 0 (signed).
  The `beq` branch at 0xee48440 targets 0xee48478, is taken when a2(?) >= 0x2 (signed), and falls through when a2(?) < 0x2 (signed).
  The `beq` branch at 0xee48448 targets 0xee48494, is taken when a2(?) == a3(=0x1), and falls through when a2(?) != a3(=0x1).
  The `beq` branch at 0xee48450 targets 0xee48470, is taken when a0(=[a0+28]) == 0, and falls through when a0(=[a0+28]) != 0.
  The `bne` branch at 0xee48464 targets 0xee48458, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `bne` branch at 0xee4849c targets 0xee48450, is taken when (a3(=[a0+1]:1) & 0x1) != 0, and falls through when (a3(=[a0+1]:1) & 0x1) == 0.
  The `beq` branch at 0xee484a4 targets 0xee4847c and is always taken.
  The `beq` branch at 0xee484bc targets 0xee48424 and is always taken.
  The return at 0xee4848c has v0 = ?.
- `t1_CopyRegion` in `usr/lib32/libfm.so` at 0xee484c4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libfm.so`.
  Range: 0xee484c4-0xee485c8 (260 bytes).
  It occupies 260 bytes.
  2 such `sw` accesses store 4 bytes to ret(t1_Allocate) +0x1c, including `sw` at 0xee48500, `sw` at 0xee48574.
  The `lw` at 0xee48504 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lh` at 0xee48518 loads 2 bytes from [a0+28] +0x12.
  The `lh` at 0xee4851c loads 2 bytes from [a0+28] +0x10.
  The `lw` at 0xee48538 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `sw` at 0xee48554 stores 4 bytes to ret(t1_Allocate) +0x20.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xee48578, `lw` at 0xee485a8.
  4 such `lh` accesses load 2 bytes from ?, including `lh` at 0xee48584, `lh` at 0xee48588, `lh` at 0xee48598.
  The `lbu` at 0xee4859c loads 1 byte from ?.
  The `lw` at 0xee485b4 loads 4 bytes from ret(t1_Allocate) +0x1c.
  The `sw` at 0xee485c4 stores 4 bytes to ?.
  The `jalr` at 0xee484f8 calls t1_Allocate with a0=0x50, a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3).
  The `jalr` at 0xee4854c calls t1_Dup with a0=[a0+32], a1=?, a2=?, a3=?.
  The `bgezall` at 0xee485ac calls NewEdge [0xee485c8] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xee48510 targets 0xee48538, is taken when s0(=[a0+28]) == 0, and falls through when s0(=[a0+28]) != 0.
  The `beq` branch at 0xee48528 targets 0xee48538, is taken when a2(=[[a0+28]+16]:2) >= a3(=[[a0+28]+18]:2) (signed), and falls through when a2(=[[a0+28]+16]:2) < a3(=[[a0+28]+18]:2) (signed).
  The `beq` branch at 0xee48530 targets 0xee48598 and is always taken.
  The `beq` branch at 0xee48540 targets 0xee48558, is taken when a0(=[a0+32]) == 0, and falls through when a0(=[a0+32]) != 0.
  The `beq` branch at 0xee4857c targets 0xee48538, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xee48590 targets 0xee48538, is taken when a2(?) >= a3(?) (signed), and falls through when a2(?) < a3(?) (signed).
  The `beq` branch at 0xee485b8 targets 0xee48574, is taken when a6(=[ret(t1_Allocate)+28]) == 0, and falls through when a6(=[ret(t1_Allocate)+28]) != 0.
  The `beq` branch at 0xee485c0 targets 0xee48578 and is always taken.
  The return at 0xee4856c has v0 = ret(t1_Allocate).
- `t1_RegionBounds` in `usr/lib32/libfm.so` at 0xee4a280 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib32/libfm.so`.
  Range: 0xee4a280-0xee4a31c (156 bytes).
  It occupies 156 bytes.
  The `lh` at 0xee4a280 loads 2 bytes from a0 (arg0 at entry) +0x1a.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x16, including `lh` at 0xee4a284, `lh` at 0xee4a2d4.
  The `lh` at 0xee4a288 loads 2 bytes from a0 (arg0 at entry) +0x18.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x14, including `lh` at 0xee4a28c, `lh` at 0xee4a2d0.
  The `lw` at 0xee4a2c4 loads 4 bytes from sym(t1_Identity) +0x0.
  The `lw` at 0xee4a2c8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xee4a2dc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `jalr` at 0xee4a2c0 calls t1_BoxPath with a0=[sym(t1_Identity)], a1=?, a2=?, a3=[a0+20]:2, a4=[a0+22]:2, a5=0x22e24.
  The `jalr` at 0xee4a2f0 calls t1_PathSegment with a0=0x15, a1=([a0+4] + ([a0+20]:2 << 0x10)), a2=([a0+8] + ([a0+22]:2 << 0x10)), a3=([a0+22]:2 << 0x10), a4=([a0+20]:2 << 0x10).
  The `jalr` at 0xee4a304 calls t1_Join with a0=ret(t1_PathSegment), a1=?, a2=?, a3=?.
  The return at 0xee4a314 has v0 = ret(t1_Join).
- `RegisterDmconfMainFrameClassInterface__20DmconfMainFrameClassSGv` in `usr/gfx/dmconf` at 0x10009aa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009aa0-0x10009adc (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0x10009ab4 loads 4 bytes from abs 0x10023f54.
  The `beq` branch at 0x10009ac0 targets 0x10009ac8 and is always taken.
  The return at 0x10009ad4 has v0 = 0x10023028.
- `__ct__17DmconfWindowClassGPCcP3ArgUi` in `usr/gfx/dmconf` at 0x1000bd50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000bd50-0x1000c0f8 (936 bytes).
  It occupies 936 bytes.
  The `sw` at 0x1000bd9c stores 4 bytes to a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x1000be00, `lw` at 0x1000be14.
  The `lw` at 0x1000be04 loads 4 bytes from [a0+8] +0xe4.
  The `lw` at 0x1000be18 loads 4 bytes from [a0+8] +0xec.
  The `sw` at 0x1000be60 stores 4 bytes to a0 (arg0 at entry) +0x44.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000be68, `lw` at 0x1000beb0.
  The `sw` at 0x1000bee0 stores 4 bytes to a0 (arg0 at entry) +0x48.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1000bee8, `lw` at 0x1000bf1c, `lw` at 0x1000bf50.
  The `sw` at 0x1000bf14 stores 4 bytes to a0 (arg0 at entry) +0x4c.
  The `sw` at 0x1000bf48 stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `sw` at 0x1000bf7c stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `sw` at 0x1000bfb0 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x1000bfd4 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `sw` at 0x1000c008 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0x1000c03c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sw` at 0x1000c060 stores 4 bytes to a0 (arg0 at entry) +0x68.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x68, including `lw` at 0x1000c068, `lw` at 0x1000c09c.
  The `sw` at 0x1000c094 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0x1000c0c8 stores 4 bytes to a0 (arg0 at entry) +0x70.
  The `jalr` at 0x1000bd8c calls __ct__8VkWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000bda8 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000bdc4 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultDmconfWindowClassResources__17DmconfWindowClass), a3=?.
  The `jalr` at 0x1000bdd8 calls __nw__GUi with a0=0xc0, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000be1c calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1000be38 calls __ct__20DmconfMainFrameClassGPCcP10_WidgetRec [0x10008a80] with a0=?, a1=0x10020c30, a2=ret(?), a3=?.
  The `jalr` at 0x1000be70 calls baseWidget__11VkComponentCGv with a0=[a0+68], a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1000bea0 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x307, a3=sym(XtStrings)+234, a4=0x21e, a5=0x0.
  The `jalr` at 0x1000beb8 calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+68], a2=?, a3=?.
  The `jalr` at 0x1000bed0 calls addMenuPane__8VkWindowGPCc with a0=a0 at entry (arg0), a1=0x10020c48, a2=?, a3=?.
  The `jalr` at 0x1000bf04 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020c58, a2=sym(newFileCallback__17DmconfWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000bf38 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020c68, a2=sym(openFileCallback__17DmconfWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000bf6c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020c78, a2=sym(saveCallback__17DmconfWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000bfa0 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020c88, a2=sym(saveasCallback__17DmconfWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000bfc4 calls addSeparator__6VkMenuGi with a0=[a0+72], a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x1000bff8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020c98, a2=sym(closeCallback__17DmconfWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000c02c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020ca8, a2=sym(quitCallback__17DmconfWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000c050 calls addMenuPane__8VkWindowGPCc with a0=a0 at entry (arg0), a1=0x10020cb8, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1000c084 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+104], a1=0x10020cc8, a2=sym(doDmxPropertiesButtonCallback__17DmconfWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000c0b8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+104], a1=0x10020ce0, a2=sym(doOdyPropertiesButtonCallback__17DmconfWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `beq` branch at 0x1000bdec targets 0x1000be54, is taken when a0(=ret(__nw__GUi)) == 0, and falls through when a0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1000be4c targets 0x1000be58 and is always taken.
  The return at 0x1000c0dc has v0 = a0.
  The instructions from 0x1000c0e4 to 0x1000c0f4 are not reached by any path from the entry, and their branches are not listed.
- `__dt__17DmconfWindowClassGv` in `usr/gfx/dmconf` at 0x1000c100 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c100-0x1000c1dc (220 bytes).
  It occupies 220 bytes.
  The `sw` at 0x1000c134 stores 4 bytes to a0 (arg0 at entry) +0x8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000c13c, `lw` at 0x1000c14c, `lw` at 0x1000c15c.
  2 such `lw` accesses load 4 bytes from [a0+68] +0x8, including `lw` at 0x1000c150, `lw` at 0x1000c170.
  The `lw` at 0x1000c154 loads 4 bytes from [[a0+68]+8] +0xc.
  The `lw` at 0x1000c174 loads 4 bytes from [[a0+68]+8] +0x14.
  The `jalr` at 0x1000c178 calls (unknown callee) with a0=([[[a0+68]+8]+12] + [a0+68]), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000c18c calls __dt__8VkWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1000c1ac calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1000c124 targets 0x1000c1b4, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x1000c140 targets 0x1000c180, is taken when a1(=[a0+68]) == 0, and falls through when a1(=[a0+68]) != 0.
  The `beq` branch at 0x1000c19c targets 0x1000c1b4, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x1000c1c0 has v0 = one of 0x1fe08, ret(__dt__8VkWindowGv), ret(__dl__GPv).
  The instructions from 0x1000c1c8 to 0x1000c1d8 are not reached by any path from the entry, and their branches are not listed.
- `className__17DmconfWindowClassGv` in `usr/gfx/dmconf` at 0x1000c1e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c1e0-0x1000c220 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x1000c1f8 loads 4 bytes from abs 0x10023f54.
  The `beq` branch at 0x1000c204 targets 0x1000c20c and is always taken.
  The return at 0x1000c218 has v0 = 0x10020cf8.
- `okToQuit__17DmconfWindowClassGv` in `usr/gfx/dmconf` at 0x1000c220 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c220-0x1000c298 (120 bytes).
  It occupies 120 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000c240, `lw` at 0x1000c250, `lw` at 0x1000c25c.
  2 such `lw` accesses load 4 bytes from [a0+68] +0x8, including `lw` at 0x1000c244, `lw` at 0x1000c260.
  The `lw` at 0x1000c248 loads 4 bytes from [[a0+68]+8] +0x48.
  The `lw` at 0x1000c264 loads 4 bytes from [[a0+68]+8] +0x50.
  The `jalr` at 0x1000c268 calls (unknown callee) with a0=([[[a0+68]+8]+72] + [a0+68]), a1=[a0+68], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1000c278 targets 0x1000c280 and is always taken.
  The return at 0x1000c290 has v0 = ret(?).
- `close__17DmconfWindowClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000c2a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c2a0-0x1000c348 (168 bytes).
  It occupies 168 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x1000c2c8, `lw` at 0x1000c2dc, `lw` at 0x1000c304.
  The `lw` at 0x1000c2cc loads 4 bytes from [a0+8] +0x48.
  The `lw` at 0x1000c2e0 loads 4 bytes from [a0+8] +0x50.
  The `lw` at 0x1000c308 loads 4 bytes from [a0+8] +0xc.
  The `lw` at 0x1000c320 loads 4 bytes from [a0+8] +0x14.
  The `jalr` at 0x1000c2e4 calls (unknown callee) with a0=([[a0+8]+72] + a0), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1fc68.
  The `jalr` at 0x1000c324 calls (unknown callee) with a0=([[a0+8]+12] + a0), a1=0x3, a2=?, a3=?, a4=a0 at entry (arg0).
  The `beq` branch at 0x1000c2ec targets 0x1000c32c, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x1000c2f8 targets 0x1000c32c, is taken when a4(=a0) == 0, and falls through when a4(=a0) != 0.
  The `beq` branch at 0x1000c32c targets 0x1000c334 and is always taken.
  The return at 0x1000c340 has v0 = ret(?).
- `doDmxPropertiesButton__17DmconfWindowClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000c350 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c350-0x1000c3d4 (132 bytes).
  It occupies 132 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000c380, `lw` at 0x1000c390, `lw` at 0x1000c3a4.
  2 such `lw` accesses load 4 bytes from [a0+68] +0x8, including `lw` at 0x1000c384, `lw` at 0x1000c3a8.
  The `lw` at 0x1000c388 loads 4 bytes from [[a0+68]+8] +0x174.
  The `lw` at 0x1000c3ac loads 4 bytes from [[a0+68]+8] +0x17c.
  The `jalr` at 0x1000c3b0 calls (unknown callee) with a0=([[[a0+68]+8]+372] + [a0+68]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1fbb8.
  The `beq` branch at 0x1000c3b8 targets 0x1000c3c0 and is always taken.
  The return at 0x1000c3cc has v0 = ret(?).
- `doOdyPropertiesButton__17DmconfWindowClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000c3e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c3e0-0x1000c464 (132 bytes).
  It occupies 132 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000c410, `lw` at 0x1000c420, `lw` at 0x1000c434.
  2 such `lw` accesses load 4 bytes from [a0+68] +0x8, including `lw` at 0x1000c414, `lw` at 0x1000c438.
  The `lw` at 0x1000c418 loads 4 bytes from [[a0+68]+8] +0x180.
  The `lw` at 0x1000c43c loads 4 bytes from [[a0+68]+8] +0x188.
  The `jalr` at 0x1000c440 calls (unknown callee) with a0=([[[a0+68]+8]+384] + [a0+68]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1fb28.
  The `beq` branch at 0x1000c448 targets 0x1000c450 and is always taken.
  The return at 0x1000c45c has v0 = ret(?).
- `newFile__17DmconfWindowClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000c470 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c470-0x1000c4ec (124 bytes).
  It occupies 124 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000c4a0, `lw` at 0x1000c4b0, `lw` at 0x1000c4bc.
  2 such `lw` accesses load 4 bytes from [a0+68] +0x8, including `lw` at 0x1000c4a4, `lw` at 0x1000c4c0.
  The `lw` at 0x1000c4a8 loads 4 bytes from [[a0+68]+8] +0x18c.
  The `lw` at 0x1000c4c4 loads 4 bytes from [[a0+68]+8] +0x194.
  The `jalr` at 0x1000c4c8 calls (unknown callee) with a0=([[[a0+68]+8]+396] + [a0+68]), a1=[a0+68], a2=a2 at entry (arg2), a3=0x1fa98.
  The `beq` branch at 0x1000c4d0 targets 0x1000c4d8 and is always taken.
  The return at 0x1000c4e4 has v0 = ret(?).
- `openFile__17DmconfWindowClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000c4f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c4f0-0x1000c5e8 (248 bytes).
  It occupies 248 bytes.
  2 such `lw` accesses load 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x8, including `lw` at 0x1000c524, `lw` at 0x1000c54c.
  The `lw` at 0x1000c528 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x108.
  The `lw` at 0x1000c550 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x110.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000c59c, `lw` at 0x1000c5ac, `lw` at 0x1000c5b8.
  2 such `lw` accesses load 4 bytes from [a0+68] +0x8, including `lw` at 0x1000c5a0, `lw` at 0x1000c5bc.
  The `lw` at 0x1000c5a4 loads 4 bytes from [[a0+68]+8] +0x198.
  The `lw` at 0x1000c5c0 loads 4 bytes from [[a0+68]+8] +0x1a0.
  The `jalr` at 0x1000c518 calls getTheFileSelectionDialog__Gv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000c554 calls (unknown callee) with a0=([[ret(getTheFileSelectionDialog__Gv)+8]+264] + ret(getTheFileSelectionDialog__Gv)), a1=0x0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1000c570 calls getTheFileSelectionDialog__Gv with a0=?, a1=0x1, a2=?, a3=?.
  The `jal` at 0x1000c588 calls (unnamed) [0x1000cbf0] with a0=ret(getTheFileSelectionDialog__Gv), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000c5c4 calls (unknown callee) with a0=([[[a0+68]+8]+408] + [a0+68]), a1=ret(0x1000cbf0), a2=[a0+68], a3=?.
  The `bne` branch at 0x1000c564 targets 0x1000c5cc, is taken when v0(=ret(?)) != a1(=0x1), and falls through when v0(=ret(?)) == a1(=0x1).
  The `beq` branch at 0x1000c5cc targets 0x1000c5d4 and is always taken.
  The return at 0x1000c5e0 has v0 = ret(?).
- `quit__17DmconfWindowClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000c5f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c5f0-0x1000c664 (116 bytes).
  It occupies 116 bytes.
  3 such `lw` accesses load 4 bytes from sym(theApplication) +0x0, including `lw` at 0x1000c618, `lw` at 0x1000c628, `lw` at 0x1000c634.
  2 such `lw` accesses load 4 bytes from [sym(theApplication)] +0x8, including `lw` at 0x1000c61c, `lw` at 0x1000c638.
  The `lw` at 0x1000c620 loads 4 bytes from [[sym(theApplication)]+8] +0xc0.
  The `lw` at 0x1000c63c loads 4 bytes from [[sym(theApplication)]+8] +0xc8.
  The `jalr` at 0x1000c640 calls (unknown callee) with a0=([[[sym(theApplication)]+8]+192] + [sym(theApplication)]), a1=[sym(theApplication)], a2=a2 at entry (arg2), a3=0x1f918.
  The `beq` branch at 0x1000c648 targets 0x1000c650 and is always taken.
  The return at 0x1000c65c has v0 = ret(?).
- `save__17DmconfWindowClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000c670 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c670-0x1000c6ec (124 bytes).
  It occupies 124 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000c6a0, `lw` at 0x1000c6b0, `lw` at 0x1000c6bc.
  2 such `lw` accesses load 4 bytes from [a0+68] +0x8, including `lw` at 0x1000c6a4, `lw` at 0x1000c6c0.
  The `lw` at 0x1000c6a8 loads 4 bytes from [[a0+68]+8] +0x1a4.
  The `lw` at 0x1000c6c4 loads 4 bytes from [[a0+68]+8] +0x1ac.
  The `jalr` at 0x1000c6c8 calls (unknown callee) with a0=([[[a0+68]+8]+420] + [a0+68]), a1=[a0+68], a2=a2 at entry (arg2), a3=0x1f898.
  The `beq` branch at 0x1000c6d0 targets 0x1000c6d8 and is always taken.
  The return at 0x1000c6e4 has v0 = ret(?).
- `saveas__17DmconfWindowClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000c6f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c6f0-0x1000c7e8 (248 bytes).
  It occupies 248 bytes.
  2 such `lw` accesses load 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x8, including `lw` at 0x1000c724, `lw` at 0x1000c74c.
  The `lw` at 0x1000c728 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x108.
  The `lw` at 0x1000c750 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x110.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000c79c, `lw` at 0x1000c7ac, `lw` at 0x1000c7b8.
  2 such `lw` accesses load 4 bytes from [a0+68] +0x8, including `lw` at 0x1000c7a0, `lw` at 0x1000c7bc.
  The `lw` at 0x1000c7a4 loads 4 bytes from [[a0+68]+8] +0x1b0.
  The `lw` at 0x1000c7c0 loads 4 bytes from [[a0+68]+8] +0x1b8.
  The `jalr` at 0x1000c718 calls getTheFileSelectionDialog__Gv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000c754 calls (unknown callee) with a0=([[ret(getTheFileSelectionDialog__Gv)+8]+264] + ret(getTheFileSelectionDialog__Gv)), a1=0x0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1000c770 calls getTheFileSelectionDialog__Gv with a0=?, a1=0x1, a2=?, a3=?.
  The `jal` at 0x1000c788 calls (unnamed) [0x1000cbf0] with a0=ret(getTheFileSelectionDialog__Gv), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000c7c4 calls (unknown callee) with a0=([[[a0+68]+8]+432] + [a0+68]), a1=ret(0x1000cbf0), a2=[a0+68], a3=?.
  The `bne` branch at 0x1000c764 targets 0x1000c7cc, is taken when v0(=ret(?)) != a1(=0x1), and falls through when v0(=ret(?)) == a1(=0x1).
  The `beq` branch at 0x1000c7cc targets 0x1000c7d4 and is always taken.
  The return at 0x1000c7e0 has v0 = ret(?).
- `closeCallback__17DmconfWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000c7f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c7f0-0x1000c868 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000c820, `lw` at 0x1000c83c.
  The `lw` at 0x1000c824 loads 4 bytes from [a1+8] +0x174.
  The `lw` at 0x1000c840 loads 4 bytes from [a1+8] +0x17c.
  The `jalr` at 0x1000c844 calls (unknown callee) with a0=([[a1+8]+372] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1f718.
  The `beq` branch at 0x1000c84c targets 0x1000c854 and is always taken.
  The return at 0x1000c860 has v0 = ret(?).
- `doDmxPropertiesButtonCallback__17DmconfWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000c870 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c870-0x1000c8e8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000c8a0, `lw` at 0x1000c8bc.
  The `lw` at 0x1000c8a4 loads 4 bytes from [a1+8] +0x180.
  The `lw` at 0x1000c8c0 loads 4 bytes from [a1+8] +0x188.
  The `jalr` at 0x1000c8c4 calls (unknown callee) with a0=([[a1+8]+384] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1f698.
  The `beq` branch at 0x1000c8cc targets 0x1000c8d4 and is always taken.
  The return at 0x1000c8e0 has v0 = ret(?).
- `doOdyPropertiesButtonCallback__17DmconfWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000c8f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c8f0-0x1000c968 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000c920, `lw` at 0x1000c93c.
  The `lw` at 0x1000c924 loads 4 bytes from [a1+8] +0x18c.
  The `lw` at 0x1000c940 loads 4 bytes from [a1+8] +0x194.
  The `jalr` at 0x1000c944 calls (unknown callee) with a0=([[a1+8]+396] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1f618.
  The `beq` branch at 0x1000c94c targets 0x1000c954 and is always taken.
  The return at 0x1000c960 has v0 = ret(?).
- `newFileCallback__17DmconfWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000c970 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c970-0x1000c9e8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000c9a0, `lw` at 0x1000c9bc.
  The `lw` at 0x1000c9a4 loads 4 bytes from [a1+8] +0x198.
  The `lw` at 0x1000c9c0 loads 4 bytes from [a1+8] +0x1a0.
  The `jalr` at 0x1000c9c4 calls (unknown callee) with a0=([[a1+8]+408] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1f598.
  The `beq` branch at 0x1000c9cc targets 0x1000c9d4 and is always taken.
  The return at 0x1000c9e0 has v0 = ret(?).
- `openFileCallback__17DmconfWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000c9f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c9f0-0x1000ca68 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000ca20, `lw` at 0x1000ca3c.
  The `lw` at 0x1000ca24 loads 4 bytes from [a1+8] +0x1a4.
  The `lw` at 0x1000ca40 loads 4 bytes from [a1+8] +0x1ac.
  The `jalr` at 0x1000ca44 calls (unknown callee) with a0=([[a1+8]+420] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1f518.
  The `beq` branch at 0x1000ca4c targets 0x1000ca54 and is always taken.
  The return at 0x1000ca60 has v0 = ret(?).
- `quitCallback__17DmconfWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000ca70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000ca70-0x1000cae8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000caa0, `lw` at 0x1000cabc.
  The `lw` at 0x1000caa4 loads 4 bytes from [a1+8] +0x1b0.
  The `lw` at 0x1000cac0 loads 4 bytes from [a1+8] +0x1b8.
  The `jalr` at 0x1000cac4 calls (unknown callee) with a0=([[a1+8]+432] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1f498.
  The `beq` branch at 0x1000cacc targets 0x1000cad4 and is always taken.
  The return at 0x1000cae0 has v0 = ret(?).
- `saveCallback__17DmconfWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000caf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000caf0-0x1000cb68 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000cb20, `lw` at 0x1000cb3c.
  The `lw` at 0x1000cb24 loads 4 bytes from [a1+8] +0x1bc.
  The `lw` at 0x1000cb40 loads 4 bytes from [a1+8] +0x1c4.
  The `jalr` at 0x1000cb44 calls (unknown callee) with a0=([[a1+8]+444] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1f418.
  The `beq` branch at 0x1000cb4c targets 0x1000cb54 and is always taken.
  The return at 0x1000cb60 has v0 = ret(?).
- `saveasCallback__17DmconfWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000cb70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000cb70-0x1000cbe8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000cba0, `lw` at 0x1000cbbc.
  The `lw` at 0x1000cba4 loads 4 bytes from [a1+8] +0x1c8.
  The `lw` at 0x1000cbc0 loads 4 bytes from [a1+8] +0x1d0.
  The `jalr` at 0x1000cbc4 calls (unknown callee) with a0=([[a1+8]+456] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1f398.
  The `beq` branch at 0x1000cbcc targets 0x1000cbd4 and is always taken.
  The return at 0x1000cbe0 has v0 = ret(?).
- `venice_set_pipeaddr` in `usr/gfx/gfxinfo` at 0x1000fc78 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinfo`.
  Range: 0x1000fc78-0x1000fcb4 (60 bytes).
  It occupies 60 bytes.
  The `sw` at 0x1000fca0 stores 4 bytes to sym(ven_pipeMapped) +0x0.
  The `jal` at 0x1000fc9c calls fcg_venice_set_pipeaddr [0x1000f5dc] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1000fcac has v0 = ret(fcg_venice_set_pipeaddr).
- `venice_dg2initXMAPRegs` in `usr/gfx/gfxinfo` at 0x10015d20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinfo`.
  Range: 0x10015d20-0x10016048 (808 bytes).
  It occupies 808 bytes.
  3 such `lh` accesses load 2 bytes from ?, including `lh` at 0x10015e18, `lh` at 0x10015e1c, `lh` at 0x10015e24.
  The `lw` at 0x10015e64 loads 4 bytes from sym(VEN_info) +0x50.
  The `lw` at 0x10015e6c loads 4 bytes from sym(VEN_info) +0x78.
  The `lw` at 0x10015ee8 loads 4 bytes from sym(vif_genlock) +0x0.
  The `lw` at 0x10015f00 loads 4 bytes from sym(vof_outsync_level) +0x0.
  The `lw` at 0x10015f04 loads 4 bytes from sym(VEN_info) +0x40.
  The `lw` at 0x10015f84 loads 4 bytes from sym(hrate_picoseconds) +0x0.
  The `jal` at 0x10015d5c calls venice_set_vcreg [0x1000fce8] with a0=?, a1=0xc, a2=0x0, a3=?.
  The `jal` at 0x10015d88 calls venice_set_vcreg [0x1000fce8] with a0=?, a1=?, a2=0x0, a3=?.
  The `jal` at 0x10015dac calls venice_set_vcreg [0x1000fce8] with a0=0xaa28, a1=0x10, a2=0x0, a3=?.
  The `jal` at 0x10015dc0 calls venice_set_vcreg [0x1000fce8] with a0=0xaa29, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015dd8 calls venice_set_vcreg [0x1000fce8] with a0=0xaa38, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015e48 calls venice_set_vcreg [0x1000fce8] with a0=0xaa3a, a1=?, a2=0x0, a3=?.
  The `jal` at 0x10015e7c calls venice_set_vcreg [0x1000fce8] with a0=0xa63b, a1=one of 0x0, 0x4, a2=0x0, a3=?, a4=[sym(VEN_info)+80].
  The `jal` at 0x10015e90 calls venice_set_vcreg [0x1000fce8] with a0=0xa63d, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015ea4 calls venice_set_vcreg [0x1000fce8] with a0=0xa73d, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015eb8 calls venice_set_vcreg [0x1000fce8] with a0=0xa63e, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015ecc calls venice_set_vcreg [0x1000fce8] with a0=0xa93e, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015ee4 calls venice_set_vcreg [0x1000fce8] with a0=0xa73c, a1=[sym(vif_genlock)], a2=0x0, a3=?.
  The `jal` at 0x10015efc calls venice_set_vcreg [0x1000fce8] with a0=0xa73e, a1=[sym(vof_outsync_level)], a2=0x0, a3=?.
  The `jalr` at 0x10015f28 calls printf with a0=0x100267b0, a1=0x4, a2=0x1, a3=?.
  The `jalr` at 0x10015f34 calls printf with a0=0x100267e8, a1=?, a2=?, a3=?.
  The `jal` at 0x10015f48 calls venice_set_vcreg [0x1000fce8] with a0=0xaa35, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015f5c calls venice_set_vcreg [0x1000fce8] with a0=0xaa36, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015f70 calls venice_set_vcreg [0x1000fce8] with a0=0xaa39, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015f80 calls venice_load_clockDivider [0x100125f4] with a0=[sym(hrate_picoseconds)], a1=?, a2=?, a3=?.
  The `jal` at 0x10015fb4 calls venice_set_vcreg [0x1000fce8] with a0=0xaa35, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x10015fc8 calls venice_set_vcreg [0x1000fce8] with a0=0xaa36, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10015ff8 calls venice_set_vcreg [0x1000fce8] with a0=0xaa35, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x1001600c calls venice_set_vcreg [0x1000fce8] with a0=0xaa36, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x10016024 calls venice_set_vcreg [0x1000fce8] with a0=0xaa35, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016038 calls venice_set_vcreg [0x1000fce8] with a0=0xaa36, a1=0x0, a2=0x0, a3=?.
  The `bne` branch at 0x10015d6c targets 0x10015d50, is taken when s1(?) < 0x20 (signed), and falls through when s1(?) >= 0x20 (signed).
  The `bne` branch at 0x10015d98 targets 0x10015d7c, is taken when s1(?) < 0x8 (signed), and falls through when s1(?) >= 0x8 (signed).
  The `bne` branch at 0x10015e58 targets 0x10015df4, is taken when s0(?) < s3(=0x8000) (signed), and falls through when s0(?) >= s3(=0x8000) (signed).
  The `beq` branch at 0x10015e68 targets 0x10015fd8, is taken when a4(=[sym(VEN_info)+80]) == 0, and falls through when a4(=[sym(VEN_info)+80]) != 0.
  The `beq` branch at 0x10015f0c targets 0x10015fec, is taken when a0(=[sym(VEN_info)+64]) == a2(=0x1), and falls through when a0(=[sym(VEN_info)+64]) != a2(=0x1).
  The `beq` branch at 0x10015f14 targets 0x1001601c, is taken when a0(=[sym(VEN_info)+64]) == 0, and falls through when a0(=[sym(VEN_info)+64]) != 0.
  The `beq` branch at 0x10015f1c targets 0x10015fa8, is taken when a0(=[sym(VEN_info)+64]) == a1(=0x4), and falls through when a0(=[sym(VEN_info)+64]) != a1(=0x4).
  The `beq` branch at 0x10015fd0 targets 0x10015f68 and is always taken.
  The `bltz` branch at 0x10015fdc targets 0x10015e74, is taken when a1(=([sym(VEN_info)+120] << 0x2e)) < 0 (signed), and falls through when a1(=([sym(VEN_info)+120] << 0x2e)) >= 0 (signed).
  The `beq` branch at 0x10015fe4 targets 0x10015e74 and is always taken.
  The `beq` branch at 0x10016014 targets 0x10015f68 and is always taken.
  The `beq` branch at 0x10016040 targets 0x10015f68 and is always taken.
  The return at 0x10015fa0 has v0 = ret(venice_load_clockDivider).
- `venice_dg2initRegs` in `usr/gfx/gfxinfo` at 0x10016048 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinfo`.
  Range: 0x10016048-0x1001696c (2340 bytes).
  It occupies 2340 bytes.
  The `lw` at 0x100160a0 loads 4 bytes from sym(VEN_info) +0x40.
  The `lw` at 0x100160fc loads 4 bytes from sym(VEN_info) +0x2c.
  The `lw` at 0x10016100 loads 4 bytes from sym(VEN_info) +0x78.
  The `lw` at 0x10016108 loads 4 bytes from sym(VEN_info) +0x50.
  The `lbu` at 0x100164c0 loads 1 byte from ?.
  The `jal` at 0x10016074 calls venice_set_vcreg [0x1000fce8] with a0=0xb0e0, a1=0x0, a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x10016080 calls venice_dg2initXMAPRegs [0x10015d20] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1001608c calls venice_dg2initIMPS [0x10015b34] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100160e0 calls printf with a0=0x10026818, a1=[sym(VEN_info)+64], a2=0x0, a3=0x4.
  The `jalr` at 0x100160ec calls printf with a0=0x10026848, a1=?, a2=?, a3=?.
  The `jal` at 0x1001612c calls venice_set_vcreg [0x1000fce8] with a0=0xb301, a1=?, a2=0x0, a3=?, a4=[sym(VEN_info)+120].
  The `jal` at 0x10016140 calls venice_set_vcreg [0x1000fce8] with a0=0xa83d, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x10016154 calls venice_set_vcreg [0x1000fce8] with a0=0xa83d, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016168 calls venice_set_vcreg [0x1000fce8] with a0=0xa83d, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x1001617c calls venice_set_vcreg [0x1000fce8] with a0=0xa83c, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x10016198 calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x10101, a2=0x0, a3=?.
  The `jal` at 0x100161b4 calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x100161cc calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0xd0d0d0, a2=0x0, a3=?.
  The `jal` at 0x100161e0 calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x100161f4 calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x10016208 calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x1001621c calls venice_set_vcreg [0x1000fce8] with a0=0xbb00, a1=0x10101, a2=0x0, a3=?.
  The `jal` at 0x10016230 calls venice_set_vcreg [0x1000fce8] with a0=0xbb01, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x10016244 calls venice_set_vcreg [0x1000fce8] with a0=0xbb02, a1=0xc0, a2=0x0, a3=?.
  The `jal` at 0x10016258 calls venice_set_vcreg [0x1000fce8] with a0=0xbb00, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x1001626c calls venice_set_vcreg [0x1000fce8] with a0=0xbb01, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x10016280 calls venice_set_vcreg [0x1000fce8] with a0=0xbb02, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x1001629c calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x40404, a2=0x0, a3=?.
  The `jal` at 0x100162b0 calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x100162cc calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0xffffff, a2=0x0, a3=?.
  The `jal` at 0x100162e8 calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x50505, a2=0x0, a3=?.
  The `jal` at 0x100162fc calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x10016310 calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0xffffff, a2=0x0, a3=?.
  The `jal` at 0x10016324 calls venice_set_vcreg [0x1000fce8] with a0=0xbb00, a1=0x40404, a2=0x0, a3=?.
  The `jal` at 0x10016338 calls venice_set_vcreg [0x1000fce8] with a0=0xbb01, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x1001634c calls venice_set_vcreg [0x1000fce8] with a0=0xbb02, a1=0xffffff, a2=0x0, a3=?.
  The `jal` at 0x10016360 calls venice_set_vcreg [0x1000fce8] with a0=0xbb00, a1=0x50505, a2=0x0, a3=?.
  The `jal` at 0x10016374 calls venice_set_vcreg [0x1000fce8] with a0=0xbb01, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x10016388 calls venice_set_vcreg [0x1000fce8] with a0=0xbb02, a1=0xffffff, a2=0x0, a3=?.
  The `jal` at 0x100163a4 calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x60606, a2=0x0, a3=?.
  The `jal` at 0x100163b8 calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x100163cc calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100163e8 calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x70707, a2=0x0, a3=?.
  The `jal` at 0x100163fc calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x10016410 calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016424 calls venice_set_vcreg [0x1000fce8] with a0=0xbb00, a1=0x60606, a2=0x0, a3=?.
  The `jal` at 0x10016438 calls venice_set_vcreg [0x1000fce8] with a0=0xbb01, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x1001644c calls venice_set_vcreg [0x1000fce8] with a0=0xbb02, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016460 calls venice_set_vcreg [0x1000fce8] with a0=0xbb00, a1=0x70707, a2=0x0, a3=?.
  The `jal` at 0x10016474 calls venice_set_vcreg [0x1000fce8] with a0=0xbb01, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x10016488 calls venice_set_vcreg [0x1000fce8] with a0=0xbb02, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x1001649c calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100164b0 calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100164dc calls venice_set_vcreg [0x1000fce8] with a0=0xb803, a1=?, a2=0x0, a3=?.
  The `jal` at 0x10016500 calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016514 calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016550 calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=?, a2=0x0, a3=?.
  The `jal` at 0x10016574 calls venice_set_vcreg [0x1000fce8] with a0=0xbb00, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x1001658c calls venice_set_vcreg [0x1000fce8] with a0=0xbb01, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100165a4 calls venice_set_vcreg [0x1000fce8] with a0=0xbb03, a1=?, a2=0x0, a3=?.
  The `jal` at 0x100165b8 calls venice_set_vcreg [0x1000fce8] with a0=0xbb03, a1=?, a2=0x0, a3=?.
  The `jal` at 0x100165cc calls venice_set_vcreg [0x1000fce8] with a0=0xbb03, a1=?, a2=0x0, a3=?.
  The `jal` at 0x100165e0 calls venice_set_vcreg [0x1000fce8] with a0=0xbb03, a1=?, a2=0x0, a3=?.
  The `jal` at 0x10016600 calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016614 calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016638 calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=?, a2=0x0, a3=?.
  The `jal` at 0x10016654 calls venice_set_vcreg [0x1000fce8] with a0=0xbb00, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016668 calls venice_set_vcreg [0x1000fce8] with a0=0xbb01, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016680 calls venice_set_vcreg [0x1000fce8] with a0=0xbb02, a1=?, a2=0x0, a3=?.
  The `jal` at 0x100166a0 calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x80808, a2=0x0, a3=?.
  The `jal` at 0x100166b8 calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x100166cc calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0xffffff, a2=0x0, a3=?.
  The `jal` at 0x100166e8 calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x80808, a2=0x0, a3=?.
  The `jal` at 0x100166fc calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x10016710 calls venice_set_vcreg [0x1000fce8] with a0=0xbb02, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016728 calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x90909, a2=0x0, a3=?.
  The `jal` at 0x1001673c calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x10016750 calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016768 calls venice_set_vcreg [0x1000fce8] with a0=0xbb00, a1=0x90909, a2=0x0, a3=?.
  The `jal` at 0x1001677c calls venice_set_vcreg [0x1000fce8] with a0=0xbb01, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x10016790 calls venice_set_vcreg [0x1000fce8] with a0=0xbb02, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100167a8 calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0xc0c0c, a2=0x0, a3=?.
  The `jal` at 0x100167bc calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x100167d0 calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100167e8 calls venice_set_vcreg [0x1000fce8] with a0=0xbb00, a1=0xc0c0c, a2=0x0, a3=?.
  The `jal` at 0x100167fc calls venice_set_vcreg [0x1000fce8] with a0=0xbb01, a1=0x20202, a2=0x0, a3=?.
  The `jal` at 0x10016814 calls venice_set_vcreg [0x1000fce8] with a0=0xbb02, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016828 calls venice_set_vcreg [0x1000fce8] with a0=0xac00, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x1001683c calls venice_set_vcreg [0x1000fce8] with a0=0xac01, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x10016850 calls venice_set_vcreg [0x1000fce8] with a0=0xac03, a1=0x4848, a2=0x0, a3=?.
  The `jal` at 0x10016864 calls venice_set_vcreg [0x1000fce8] with a0=0xac03, a1=0x8080, a2=0x0, a3=?.
  The `jal` at 0x10016878 calls venice_set_vcreg [0x1000fce8] with a0=0xac03, a1=0x303, a2=0x0, a3=?.
  The `jal` at 0x1001688c calls venice_set_vcreg [0x1000fce8] with a0=0xac03, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100168a0 calls venice_set_vcreg [0x1000fce8] with a0=0xac03, a1=0x202, a2=0x0, a3=?.
  The `jal` at 0x100168b4 calls venice_set_vcreg [0x1000fce8] with a0=0xb800, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100168c8 calls venice_set_vcreg [0x1000fce8] with a0=0xb801, a1=0x10101, a2=0x0, a3=?.
  The `jal` at 0x100168e0 calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x100168f4 calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0xff, a2=0x0, a3=?.
  The `jal` at 0x10016908 calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0xff, a2=0x0, a3=?.
  The `jal` at 0x1001691c calls venice_set_vcreg [0x1000fce8] with a0=0xb802, a1=0xff, a2=0x0, a3=?.
  The `jal` at 0x10016928 calls venice_center_dpots [0x10016d10] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100160b8 targets 0x10016948, is taken when a1(=[sym(VEN_info)+64]) == v0(=0x1), and falls through when a1(=[sym(VEN_info)+64]) != v0(=0x1).
  The `beq` branch at 0x100160c0 targets 0x10016964, is taken when a1(=[sym(VEN_info)+64]) == 0, and falls through when a1(=[sym(VEN_info)+64]) != 0.
  The `beq` branch at 0x100160c8 targets 0x10016940, is taken when a1(=[sym(VEN_info)+64]) == a3(=0x4), and falls through when a1(=[sym(VEN_info)+64]) != a3(=0x4).
  The `beq` branch at 0x10016118 targets 0x10016950, is taken when t8(=[sym(VEN_info)+80]) == 0, and falls through when t8(=[sym(VEN_info)+80]) != 0.
  The `bne` branch at 0x100164ec targets 0x100164c0, is taken when s1(?) < 0x400 (signed), and falls through when s1(?) >= 0x400 (signed).
  The `bne` branch at 0x10016560 targets 0x10016524, is taken when s1(?) < 0x100 (signed), and falls through when s1(?) >= 0x100 (signed).
  The `bne` branch at 0x100165f0 targets 0x10016598, is taken when s0(?) < 0x100 (signed), and falls through when s0(?) >= 0x100 (signed).
  The `bgez` branch at 0x10016644 targets 0x10016620, is taken when s0(?) >= 0 (signed), and falls through when s0(?) < 0 (signed).
  The `bgez` branch at 0x1001668c targets 0x10016674, is taken when s0(?) >= 0 (signed), and falls through when s0(?) < 0 (signed).
  The `beq` branch at 0x10016940 targets 0x100160fc and is always taken.
  The `beq` branch at 0x10016948 targets 0x100160fc and is always taken.
  The `bltz` branch at 0x10016954 targets 0x10016120, is taken when a2(=([sym(VEN_info)+120] << 0x2e)) < 0 (signed), and falls through when a2(=([sym(VEN_info)+120] << 0x2e)) >= 0 (signed).
  The `beq` branch at 0x1001695c targets 0x10016128 and is always taken.
  The `beq` branch at 0x10016964 targets 0x100160f8 and is always taken.
  The return at 0x10016938 has v0 = ret(venice_center_dpots).
- `vs2RegisterClearBit` in `usr/gfx/gfxinfo` at 0x10018360 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinfo`.
  Range: 0x10018360-0x100183c8 (104 bytes).
  It occupies 104 bytes.
  The `jal` at 0x1001838c calls vs2ReadByte [0x1001834c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100183ac calls vs2WriteByte [0x10018864] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The return at 0x100183c0 has v0 = ret(vs2WriteByte).
- `venice_set_pipeaddr` in `usr/gfx/setmon` at 0x1000fefc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1000fefc-0x1000ff38 (60 bytes).
  It occupies 60 bytes.
  The `sw` at 0x1000ff24 stores 4 bytes to sym(ven_pipeMapped) +0x0.
  The `jal` at 0x1000ff20 calls fcg_venice_set_pipeaddr [0x10010f84] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1000ff30 has v0 = ret(fcg_venice_set_pipeaddr).
- `vs2RegisterClearBit` in `usr/gfx/setmon` at 0x10012c04 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10012c04-0x10012c6c (104 bytes).
  It occupies 104 bytes.
  The `jal` at 0x10012c30 calls vs2ReadByte [0x10012bf0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10012c50 calls vs2WriteByte [0x10013108] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The return at 0x10012c64 has v0 = ret(vs2WriteByte).
- `saXSGIvcStoreGammaColors16` in `usr/gfx/setmon` at 0x1002a210 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1002a210-0x1002a29c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0x1002a24c loads 4 bytes from ret(XSGIvcInitTestJig) +0x20.
  The `jal` at 0x1002a23c calls XSGIvcInitTestJig [0x1002fa40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls (unnamed) [0x10033fc0] via direct with a0=0x0, a1=a4 at entry (arg4), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a5 at entry (arg5) (`j` at 0x1002a294).
  The `bltz` branch at 0x1002a244 targets 0x1002a25c, is taken when s0(=a2) < 0 (signed), and falls through when s0(=a2) >= 0 (signed).
  The `bne` branch at 0x1002a254 targets 0x1002a26c, is taken when s0(=a2) < v1(=[ret(XSGIvcInitTestJig)+32]) (signed), and falls through when s0(=a2) >= v1(=[ret(XSGIvcInitTestJig)+32]) (signed).
  The return at 0x1002a264 has v0 = ret(XSGIvcInitTestJig).
- `doSyncSrcPipe0Button__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10012960 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10012960-0x100129b0 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x10012980 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x1001298c stores 4 bytes to sym(combination) +0x304.
  The `sw` at 0x10012994 stores 4 bytes to sym(combination) +0x300.
  The `sw` at 0x1001299c stores 4 bytes to sym(combination) +0x308.
  The `jal` at 0x10012998 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x27f80, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100129a8 has v0 = ret(update__20StcombineWindowClassGv).
- `doSyncSrcPipe1Button__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100129b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100129b0-0x10012a04 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x100129d0 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x100129dc stores 4 bytes to sym(combination) +0x304.
  The `sw` at 0x100129e4 stores 4 bytes to sym(combination) +0x300.
  The `sw` at 0x100129f0 stores 4 bytes to sym(combination) +0x308.
  The `jal` at 0x100129ec calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100129fc has v0 = ret(update__20StcombineWindowClassGv).
- `doSyncSrcPipe2Button__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10012a10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10012a10-0x10012a64 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x10012a30 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x10012a3c stores 4 bytes to sym(combination) +0x304.
  The `sw` at 0x10012a44 stores 4 bytes to sym(combination) +0x300.
  The `sw` at 0x10012a50 stores 4 bytes to sym(combination) +0x308.
  The `jal` at 0x10012a4c calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10012a5c has v0 = ret(update__20StcombineWindowClassGv).
- `doSyncSrcPipe3Button__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10012a70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10012a70-0x10012ac4 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x10012a90 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x10012a9c stores 4 bytes to sym(combination) +0x304.
  The `sw` at 0x10012aa4 stores 4 bytes to sym(combination) +0x300.
  The `sw` at 0x10012ab0 stores 4 bytes to sym(combination) +0x308.
  The `jal` at 0x10012aac calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10012abc has v0 = ret(update__20StcombineWindowClassGv).
- `doSyncSrcPipe0Button__25StcombineMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10015880 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015880-0x10015888 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10015880 has v0 = ?.
- `doSyncSrcPipe1Button__25StcombineMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10015890 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015890-0x10015898 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10015890 has v0 = ?.
- `doSyncSrcPipe2Button__25StcombineMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100158a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100158a0-0x100158a8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x100158a0 has v0 = ?.
- `doSyncSrcPipe3Button__25StcombineMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100158b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100158b0-0x100158b8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x100158b0 has v0 = ?.
- `doSyncSrcPipe0ButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10015b40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015b40-0x10015b84 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10015b44 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10015b50 loads 4 bytes from [a1+8] +0xe4.
  The `lw` at 0x10015b5c loads 4 bytes from [a1+8] +0xec.
  The `jalr` at 0x10015b6c calls (unknown callee) with a0=([[a1+8]+228] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24da0.
  The return at 0x10015b7c has v0 = ret(?).
- `doSyncSrcPipe1ButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10015b90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015b90-0x10015bd4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10015b94 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10015ba0 loads 4 bytes from [a1+8] +0xf0.
  The `lw` at 0x10015bac loads 4 bytes from [a1+8] +0xf8.
  The `jalr` at 0x10015bbc calls (unknown callee) with a0=([[a1+8]+240] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24d50.
  The return at 0x10015bcc has v0 = ret(?).
- `doSyncSrcPipe2ButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10015be0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015be0-0x10015c24 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10015be4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10015bf0 loads 4 bytes from [a1+8] +0xfc.
  The `lw` at 0x10015bfc loads 4 bytes from [a1+8] +0x104.
  The `jalr` at 0x10015c0c calls (unknown callee) with a0=([[a1+8]+252] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24d00.
  The return at 0x10015c1c has v0 = ret(?).
- `doSyncSrcPipe3ButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10015c30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015c30-0x10015c74 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10015c34 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10015c40 loads 4 bytes from [a1+8] +0x108.
  The `lw` at 0x10015c4c loads 4 bytes from [a1+8] +0x110.
  The `jalr` at 0x10015c5c calls (unknown callee) with a0=([[a1+8]+264] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24cb0.
  The return at 0x10015c6c has v0 = ret(?).
- `__ct__20StcombineWindowClassGPCcP3ArgUi` in `usr/gfx/sgcombine` at 0x10015fc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015fc0-0x100163d0 (1040 bytes).
  It occupies 1040 bytes.
  The `sw` at 0x10015ff4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x1001603c, `lw` at 0x10016398.
  The `lw` at 0x10016040 loads 4 bytes from [a0+8] +0xec.
  The `lw` at 0x10016044 loads 4 bytes from [a0+8] +0xe4.
  The `sw` at 0x10016080 stores 4 bytes to a0 (arg0 at entry) +0x44.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1001608c, `lw` at 0x100160c0, `lw` at 0x10016314.
  The `sw` at 0x100160e4 stores 4 bytes to a0 (arg0 at entry) +0x48.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x10016100, `lw` at 0x1001612c, `lw` at 0x10016158.
  The `sw` at 0x10016110 stores 4 bytes to a0 (arg0 at entry) +0x4c.
  The `sw` at 0x1001613c stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `sw` at 0x10016168 stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `sw` at 0x10016190 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x100161b0 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `sw` at 0x100161dc stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0x100161f8 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x64, including `lw` at 0x10016214, `lw` at 0x10016240.
  The `sw` at 0x10016224 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `sw` at 0x10016250 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0x1001626c stores 4 bytes to a0 (arg0 at entry) +0x70.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0x1001628c, `lw` at 0x100162bc, `lw` at 0x100162d8.
  The `sw` at 0x1001629c stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sw` at 0x100162c8 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `sw` at 0x100162e8 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x1001630c stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `lw` at 0x10016318 loads 4 bytes from [a0+68] +0x9c.
  The `lw` at 0x10016330 loads 4 bytes from a0 (arg0 at entry) +0x80.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x78, including `lw` at 0x10016344, `lw` at 0x1001637c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x74, including `lw` at 0x10016358, `lw` at 0x10016368, `lw` at 0x10016390.
  The `lw` at 0x1001639c loads 4 bytes from [a0+8] +0x170.
  The `lw` at 0x100163a0 loads 4 bytes from [a0+8] +0x168.
  The `jalr` at 0x10015fe0 calls __ct__8VkWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10015ff8 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1001600c calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultStcombineWindowClassResources__20StcombineWindowClass), a3=?.
  The `jalr` at 0x1001601c calls __nw__GUi with a0=0x1f58, a1=?, a2=?, a3=?.
  The `jalr` at 0x10016048 calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=0x0, a3=?.
  The `jal` at 0x10016060 calls __ct__23StcombineMainFrameClassGPCcP10_WidgetRec [0x10010ed0] with a0=?, a1=0x1002d078, a2=ret(?), a3=?.
  The `jalr` at 0x10016088 calls baseWidget__11VkComponentCGv with a0=[a0+68], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x100160ac calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x312, a3=sym(XtStrings)+234, a4=0x2a0, a5=0x0.
  The `jalr` at 0x100160bc calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+68], a2=?, a3=?.
  The `jalr` at 0x100160d0 calls addMenuPane__8VkWindowGPCc with a0=a0 at entry (arg0), a1=0x1002d090, a2=?, a3=?.
  The `jalr` at 0x100160fc calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x1002d0a0, a2=sym(newFileCallback__20StcombineWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10016128 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x1002d0b0, a2=sym(openFileCallback__20StcombineWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10016154 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x1002d0c0, a2=sym(saveCallback__20StcombineWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10016180 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x1002d0d0, a2=sym(saveasCallback__20StcombineWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1001619c calls addSeparator__6VkMenuGi with a0=[a0+72], a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x100161c8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x1002d0e0, a2=sym(quitCallback__20StcombineWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100161e4 calls addMenuPane__8VkWindowGPCc with a0=a0 at entry (arg0), a1=0x1002d0f0, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10016210 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+100], a1=0x1002d100, a2=sym(doTilingPropertiesButtonCallback__20StcombineWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1001623c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+100], a1=0x1002d118, a2=sym(doVideoPropertiesButtonCallback__20StcombineWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10016258 calls addRadioMenuPane__8VkWindowGPCc with a0=a0 at entry (arg0), a1=0x1002d130, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10016288 calls addToggle__6VkMenuGPCcPGP10_WidgetRecPvT2_vPviT4 with a0=[a0+112], a1=0x1002d140, a2=sym(setUseCurrentHardwareTargetCallback__20StcombineWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1, a5=-0x1.
  The `jalr` at 0x100162b8 calls addToggle__6VkMenuGPCcPGP10_WidgetRecPvT2_vPviT4 with a0=[a0+112], a1=0x1002d160, a2=sym(setUserDefinedHardwareTargetButtonCallback__20StcombineWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1, a5=-0x1.
  The `jalr` at 0x100162d4 calls addSeparator__6VkMenuGi with a0=[a0+112], a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x10016300 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+112], a1=0x1002d180, a2=sym(doEditUserHardwareButtonCallback__20StcombineWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1001632c calls deactivate__10VkMenuItemGv with a0=[a0+128], a1=?, a2=a0 at entry (arg0), a3=[[a0+68]+156], a4=[a0+68]+172, a5=a0 at entry (arg0).
  The `jalr` at 0x10016340 calls setVisualState__12VkMenuToggleGc with a0=[a0+120], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10016354 calls setVisualState__12VkMenuToggleGc with a0=[a0+116], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x10016364 calls deactivate__10VkMenuItemGv with a0=[a0+116], a1=?, a2=a0 at entry (arg0), a3=[[a0+68]+156], a4=[a0+68]+172, a5=a0 at entry (arg0).
  The `jalr` at 0x10016378 calls setVisualState__12VkMenuToggleGc with a0=[a0+120], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1001638c calls setVisualState__12VkMenuToggleGc with a0=[a0+116], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x100163a4 calls (unknown callee) with a0=([[a0+8]+360] + a0), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x100163b4 calls showHelpPane__9VkMenuBarGc with a0=ret(?), a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x10016028 targets 0x10016078, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10016070 targets 0x1001607c and is always taken.
  The `bne` branch at 0x10016320 targets 0x10016364, is taken when a3(=[[a0+68]+156]) != a4(=[a0+68]+172), and falls through when a3(=[[a0+68]+156]) == a4(=[a0+68]+172).
  The `beq` branch at 0x1001635c targets 0x10016394 and is always taken.
  The return at 0x100163c8 has v0 = a0.
- `__dt__20StcombineWindowClassGv` in `usr/gfx/sgcombine` at 0x100163d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100163d0-0x10016460 (144 bytes).
  It occupies 144 bytes.
  The `sw` at 0x100163f8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x10016400 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x1001640c loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x10016410 loads 4 bytes from [[a0+68]+8] +0x14.
  The `lw` at 0x10016414 loads 4 bytes from [[a0+68]+8] +0xc.
  The `jalr` at 0x1001641c calls (unknown callee) with a0=([[[a0+68]+8]+12] + [a0+68]), a1=0x3, a2=a2 at entry (arg2), a3=[a0+68].
  The `jalr` at 0x1001642c calls __dt__8VkWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10016448 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100163e8 targets 0x10016450, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10016404 targets 0x1001642c, is taken when a3(=[a0+68]) == 0, and falls through when a3(=[a0+68]) != 0.
  The `beq` branch at 0x1001643c targets 0x10016454, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10016458 has v0 = one of ret(__dt__8VkWindowGv), ?.
- `className__20StcombineWindowClassGv` in `usr/gfx/sgcombine` at 0x10016460 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016460-0x10016478 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1001646c loads 4 bytes from abs 0x10032930.
  The return at 0x10016470 has v0 = 0x1002d198.
- `okToQuit__20StcombineWindowClassGv` in `usr/gfx/sgcombine` at 0x10016480 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016480-0x100164c0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10016480 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x1001648c loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x1001649c loads 4 bytes from [[a0+68]+8] +0x50.
  The `lw` at 0x100164a0 loads 4 bytes from [[a0+68]+8] +0x48.
  The `jalr` at 0x100164a8 calls (unknown callee) with a0=([[[a0+68]+8]+72] + [a0+68]), a1=[a0+68], a2=0x24460, a3=a3 at entry (arg3).
  The return at 0x100164b8 has v0 = ret(?).
- `update__20StcombineWindowClassGv` in `usr/gfx/sgcombine` at 0x100164c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100164c0-0x100164f4 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x100164e0 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `jal` at 0x100164dc calls update__23StcombineMainFrameClassGv [0x10011a90] with a0=[a0+68], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100164ec has v0 = ret(update__23StcombineMainFrameClassGv).
- `loadCmpFormat__20StcombineWindowClassGPc` in `usr/gfx/sgcombine` at 0x10016500 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016500-0x10016534 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x10016520 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `jal` at 0x1001651c calls loadCmpFormat__23StcombineMainFrameClassGPCc [0x10011d40] with a0=[a0+68], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1001652c has v0 = ret(loadCmpFormat__23StcombineMainFrameClassGPCc).
- `doEditUserHardwareButton__20StcombineWindowClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10016540 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016540-0x10016580 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10016540 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x1001654c loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x1001655c loads 4 bytes from [[a0+68]+8] +0x194.
  The `lw` at 0x10016560 loads 4 bytes from [[a0+68]+8] +0x18c.
  The `jalr` at 0x10016568 calls (unknown callee) with a0=([[[a0+68]+8]+396] + [a0+68]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+68], a4=0x243a0.
  The return at 0x10016578 has v0 = ret(?).
- `doTilingPropertiesButton__20StcombineWindowClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10016580 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016580-0x100165c0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10016580 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x1001658c loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x1001659c loads 4 bytes from [[a0+68]+8] +0x1a0.
  The `lw` at 0x100165a0 loads 4 bytes from [[a0+68]+8] +0x198.
  The `jalr` at 0x100165a8 calls (unknown callee) with a0=([[[a0+68]+8]+408] + [a0+68]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+68], a4=0x24360.
  The return at 0x100165b8 has v0 = ret(?).
- `doVideoPropertiesButton__20StcombineWindowClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100165c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100165c0-0x10016600 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x100165c0 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x100165cc loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x100165dc loads 4 bytes from [[a0+68]+8] +0x1ac.
  The `lw` at 0x100165e0 loads 4 bytes from [[a0+68]+8] +0x1a4.
  The `jalr` at 0x100165e8 calls (unknown callee) with a0=([[[a0+68]+8]+420] + [a0+68]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+68], a4=0x24320.
  The return at 0x100165f8 has v0 = ret(?).
- `newFile__20StcombineWindowClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10016600 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016600-0x10016640 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10016600 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x1001660c loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x1001661c loads 4 bytes from [[a0+68]+8] +0x1b8.
  The `lw` at 0x10016620 loads 4 bytes from [[a0+68]+8] +0x1b0.
  The `jalr` at 0x10016628 calls (unknown callee) with a0=([[[a0+68]+8]+432] + [a0+68]), a1=[a0+68], a2=0x242e0, a3=a3 at entry (arg3).
  The return at 0x10016638 has v0 = ret(?).
- `openFile__20StcombineWindowClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10016640 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016640-0x100167e0 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0x10016710 loads 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x8.
  The `lw` at 0x10016724 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x110.
  The `lw` at 0x10016730 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x108.
  The `lw` at 0x100167bc loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x100167c0 loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x100167c4 loads 4 bytes from [[a0+68]+8] +0x1c4.
  The `lw` at 0x100167c8 loads 4 bytes from [[a0+68]+8] +0x1bc.
  The `lw` at 0x100167cc loads 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x54.
  The `jalr` at 0x10016664 calls getenv with a0=0x1002d1b0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10016684 calls sprintf with a0=sp-1056, a1=0x1002d1c0, a2=?, a3=?.
  The `jalr` at 0x10016690 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100166a4 calls setTitle__15VkDialogManagerGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=0x1002d1e0, a2=?, a3=?.
  The `jalr` at 0x100166b0 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100166c0 calls setDirectory__21VkFileSelectionDialogGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=sp-1056, a2=?, a3=?.
  The `jalr` at 0x100166cc calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100166dc calls setFilterPattern__21VkFileSelectionDialogGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=0x100334b8, a2=?, a3=?.
  The `jalr` at 0x100166e8 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100166f4 calls baseWidget__11VkComponentCGv with a0=ret(getTheFileSelectionDialog__Gv), a1=?, a2=?, a3=?.
  The `jalr` at 0x10016708 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001673c calls (unknown callee) with a0=([[ret(getTheFileSelectionDialog__Gv)+8]+264] + ret(getTheFileSelectionDialog__Gv)), a1=0x1002d1f8, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10016760 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001676c calls baseWidget__11VkComponentCGv with a0=ret(getTheFileSelectionDialog__Gv), a1=?, a2=?, a3=?.
  The `jalr` at 0x1001677c calls XmFileSelectionBoxGetChild with a0=ret(baseWidget__11VkComponentCGv), a1=0x8, a2=?, a3=?.
  The `jalr` at 0x100167a0 calls XtVaSetValues with a0=ret(XmFileSelectionBoxGetChild), a1=sym(_XmStrings)+9512, a2=0x0, a3=sym(_XmStrings)+9494, a4=0x0, a5=0x0.
  The `jalr` at 0x100167b0 calls getTheFileSelectionDialog__Gv with a0=?, a1=0x1, a2=?, a3=?.
  The `jalr` at 0x100167d0 calls (unknown callee) with a0=([[[a0+68]+8]+444] + [a0+68]), a1=[ret(getTheFileSelectionDialog__Gv)+84], a2=[a0+68], a3=?.
  The `bne` branch at 0x1001666c targets 0x10016678, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `bne` branch at 0x100166fc targets 0x10016760, is taken when v0(=ret(baseWidget__11VkComponentCGv)) != 0, and falls through when v0(=ret(baseWidget__11VkComponentCGv)) == 0.
  The `beq` branch at 0x10016748 targets 0x100167b0, is taken when v0(=ret(?)) == a1(=0x1), and falls through when v0(=ret(?)) != a1(=0x1).
  The `beq` branch at 0x100167a8 targets 0x10016708 and is always taken.
  The `beq` branch at 0x100167d8 targets 0x10016754 and is always taken.
  The return at 0x10016758 has v0 = ret(?).
- `quit__20StcombineWindowClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100167e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100167e0-0x10016824 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x100167f8 loads 4 bytes from sym(theApplication) +0x0.
  The `lw` at 0x100167fc loads 4 bytes from [sym(theApplication)] +0x8.
  The `lw` at 0x10016800 loads 4 bytes from [[sym(theApplication)]+8] +0xc8.
  The `lw` at 0x10016804 loads 4 bytes from [[sym(theApplication)]+8] +0xc0.
  The `jalr` at 0x1001680c calls (unknown callee) with a0=([[[sym(theApplication)]+8]+192] + [sym(theApplication)]), a1=[sym(theApplication)], a2=0x24100, a3=a3 at entry (arg3).
  The return at 0x1001681c has v0 = ret(?).
- `save__20StcombineWindowClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10016830 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016830-0x10016870 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10016830 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x1001683c loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x1001684c loads 4 bytes from [[a0+68]+8] +0x1d0.
  The `lw` at 0x10016850 loads 4 bytes from [[a0+68]+8] +0x1c8.
  The `jalr` at 0x10016858 calls (unknown callee) with a0=([[[a0+68]+8]+456] + [a0+68]), a1=[a0+68], a2=0x240b0, a3=a3 at entry (arg3).
  The return at 0x10016868 has v0 = ret(?).
- `saveas__20StcombineWindowClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10016870 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016870-0x1001699c (300 bytes).
  It occupies 300 bytes.
  The `lw` at 0x10016920 loads 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x8.
  The `lw` at 0x10016930 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x110.
  The `lw` at 0x1001693c loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x108.
  The `lw` at 0x10016978 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x1001697c loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x10016980 loads 4 bytes from [[a0+68]+8] +0x1dc.
  The `lw` at 0x10016984 loads 4 bytes from [[a0+68]+8] +0x1d4.
  The `lw` at 0x10016988 loads 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x54.
  The `jalr` at 0x10016894 calls getenv with a0=0x1002d1b0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100168b4 calls sprintf with a0=sp-1056, a1=0x1002d1c0, a2=?, a3=?.
  The `jalr` at 0x100168c0 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100168d4 calls setTitle__15VkDialogManagerGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=0x1002d210, a2=?, a3=?.
  The `jalr` at 0x100168e0 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100168f0 calls setDirectory__21VkFileSelectionDialogGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=sp-1056, a2=?, a3=?.
  The `jalr` at 0x100168fc calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001690c calls setFilterPattern__21VkFileSelectionDialogGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=0x100334b8, a2=?, a3=?.
  The `jalr` at 0x10016918 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10016948 calls (unknown callee) with a0=([[ret(getTheFileSelectionDialog__Gv)+8]+264] + ret(getTheFileSelectionDialog__Gv)), a1=0x0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1001696c calls getTheFileSelectionDialog__Gv with a0=?, a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1001698c calls (unknown callee) with a0=([[[a0+68]+8]+468] + [a0+68]), a1=[ret(getTheFileSelectionDialog__Gv)+84], a2=[a0+68], a3=?.
  The `bne` branch at 0x1001689c targets 0x100168a8, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `beq` branch at 0x10016954 targets 0x1001696c, is taken when v0(=ret(?)) == a1(=0x1), and falls through when v0(=ret(?)) != a1(=0x1).
  The `beq` branch at 0x10016994 targets 0x10016960 and is always taken.
  The return at 0x10016964 has v0 = ret(?).
- `setUseCurrentHardwareTarget__20StcombineWindowClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100169a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100169a0-0x100169e0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x100169a0 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x100169ac loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x100169bc loads 4 bytes from [[a0+68]+8] +0x1e8.
  The `lw` at 0x100169c0 loads 4 bytes from [[a0+68]+8] +0x1e0.
  The `jalr` at 0x100169c8 calls (unknown callee) with a0=([[[a0+68]+8]+480] + [a0+68]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+68], a4=0x23f40.
  The return at 0x100169d8 has v0 = ret(?).
- `setUserDefinedHardwareTargetButton__20StcombineWindowClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100169e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100169e0-0x10016a20 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x100169e0 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x100169ec loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x100169fc loads 4 bytes from [[a0+68]+8] +0x1f4.
  The `lw` at 0x10016a00 loads 4 bytes from [[a0+68]+8] +0x1ec.
  The `jalr` at 0x10016a08 calls (unknown callee) with a0=([[[a0+68]+8]+492] + [a0+68]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+68], a4=0x23f00.
  The return at 0x10016a18 has v0 = ret(?).
- `doEditUserHardwareButtonCallback__20StcombineWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10016a20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016a20-0x10016a64 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10016a24 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10016a30 loads 4 bytes from [a1+8] +0x174.
  The `lw` at 0x10016a3c loads 4 bytes from [a1+8] +0x17c.
  The `jalr` at 0x10016a4c calls (unknown callee) with a0=([[a1+8]+372] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23ec0.
  The return at 0x10016a5c has v0 = ret(?).
- `doTilingPropertiesButtonCallback__20StcombineWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10016a70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016a70-0x10016ab4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10016a74 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10016a80 loads 4 bytes from [a1+8] +0x180.
  The `lw` at 0x10016a8c loads 4 bytes from [a1+8] +0x188.
  The `jalr` at 0x10016a9c calls (unknown callee) with a0=([[a1+8]+384] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23e70.
  The return at 0x10016aac has v0 = ret(?).
- `doVideoPropertiesButtonCallback__20StcombineWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10016ac0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016ac0-0x10016b04 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10016ac4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10016ad0 loads 4 bytes from [a1+8] +0x18c.
  The `lw` at 0x10016adc loads 4 bytes from [a1+8] +0x194.
  The `jalr` at 0x10016aec calls (unknown callee) with a0=([[a1+8]+396] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23e20.
  The return at 0x10016afc has v0 = ret(?).
- `newFileCallback__20StcombineWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10016b10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016b10-0x10016b54 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10016b14 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10016b20 loads 4 bytes from [a1+8] +0x198.
  The `lw` at 0x10016b2c loads 4 bytes from [a1+8] +0x1a0.
  The `jalr` at 0x10016b3c calls (unknown callee) with a0=([[a1+8]+408] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23dd0.
  The return at 0x10016b4c has v0 = ret(?).
- `openFileCallback__20StcombineWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10016b60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016b60-0x10016ba4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10016b64 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10016b70 loads 4 bytes from [a1+8] +0x1a4.
  The `lw` at 0x10016b7c loads 4 bytes from [a1+8] +0x1ac.
  The `jalr` at 0x10016b8c calls (unknown callee) with a0=([[a1+8]+420] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23d80.
  The return at 0x10016b9c has v0 = ret(?).
- `quitCallback__20StcombineWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10016bb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016bb0-0x10016bf4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10016bb4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10016bc0 loads 4 bytes from [a1+8] +0x1b0.
  The `lw` at 0x10016bcc loads 4 bytes from [a1+8] +0x1b8.
  The `jalr` at 0x10016bdc calls (unknown callee) with a0=([[a1+8]+432] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23d30.
  The return at 0x10016bec has v0 = ret(?).
- `saveCallback__20StcombineWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10016c00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016c00-0x10016c44 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10016c04 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10016c10 loads 4 bytes from [a1+8] +0x1bc.
  The `lw` at 0x10016c1c loads 4 bytes from [a1+8] +0x1c4.
  The `jalr` at 0x10016c2c calls (unknown callee) with a0=([[a1+8]+444] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23ce0.
  The return at 0x10016c3c has v0 = ret(?).
- `saveasCallback__20StcombineWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10016c50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016c50-0x10016c94 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10016c54 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10016c60 loads 4 bytes from [a1+8] +0x1c8.
  The `lw` at 0x10016c6c loads 4 bytes from [a1+8] +0x1d0.
  The `jalr` at 0x10016c7c calls (unknown callee) with a0=([[a1+8]+456] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23c90.
  The return at 0x10016c8c has v0 = ret(?).
- `setUseCurrentHardwareTargetCallback__20StcombineWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10016ca0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016ca0-0x10016ce4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10016ca4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10016cb0 loads 4 bytes from [a1+8] +0x1d4.
  The `lw` at 0x10016cbc loads 4 bytes from [a1+8] +0x1dc.
  The `jalr` at 0x10016ccc calls (unknown callee) with a0=([[a1+8]+468] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23c40.
  The return at 0x10016cdc has v0 = ret(?).
- `setUserDefinedHardwareTargetButtonCallback__20StcombineWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10016cf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016cf0-0x10016d34 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10016cf4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10016d00 loads 4 bytes from [a1+8] +0x1e0.
  The `lw` at 0x10016d0c loads 4 bytes from [a1+8] +0x1e8.
  The `jalr` at 0x10016d1c calls (unknown callee) with a0=([[a1+8]+480] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23bf0.
  The return at 0x10016d2c has v0 = ret(?).
- `setParent__25TargetPropertiesFormClassGP14VkSimpleWindow` in `usr/gfx/sgcombine` at 0x10016f00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016f00-0x10016f08 (8 bytes).
  It occupies 8 bytes.
  The `sw` at 0x10016f04 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  The return at 0x10016f00 has v0 = ?.
- `doTargetFourPipeButton__25TargetPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10016f60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016f60-0x10016fa4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10016f6c loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `sw` at 0x10016f88 stores 4 bytes to [a0+64] +0xa0.
  The `lw` at 0x10016f90 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `jal` at 0x10016f8c calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x4, a2=[a0+64], a3=0x23980.
  The return at 0x10016f9c has v0 = ret(update__20StcombineWindowClassGv).
- `doTargetOnePipeButton__25TargetPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10016fb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016fb0-0x10016ff4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10016fbc loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `sw` at 0x10016fd8 stores 4 bytes to [a0+64] +0xa0.
  The `lw` at 0x10016fe0 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `jal` at 0x10016fdc calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x1, a2=[a0+64], a3=0x23930.
  The return at 0x10016fec has v0 = ret(update__20StcombineWindowClassGv).
- `doTargetThreePipeButton__25TargetPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10017040 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017040-0x10017084 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001704c loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `sw` at 0x10017068 stores 4 bytes to [a0+64] +0xa0.
  The `lw` at 0x10017070 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `jal` at 0x1001706c calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x3, a2=[a0+64], a3=0x238a0.
  The return at 0x1001707c has v0 = ret(update__20StcombineWindowClassGv).
- `doTargetTwoPipeButton__25TargetPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10017090 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017090-0x100170d4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001709c loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `sw` at 0x100170b8 stores 4 bytes to [a0+64] +0xa0.
  The `lw` at 0x100170c0 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `jal` at 0x100170bc calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x2, a2=[a0+64], a3=0x23850.
  The return at 0x100170cc has v0 = ret(update__20StcombineWindowClassGv).
- `RegisterTargetPropertiesFormClassInterface__25TargetPropertiesFormClassSGv` in `usr/gfx/sgcombine` at 0x100170e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100170e0-0x100170f8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x100170ec loads 4 bytes from abs 0x10032930.
  The return at 0x100170f0 has v0 = 0x10030bd0.
- `doTargetFourPipeButton__27TargetPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10017770 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017770-0x10017778 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10017770 has v0 = ?.
- `doTargetOnePipeButton__27TargetPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10017780 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017780-0x10017788 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10017780 has v0 = ?.
- `doTargetThreePipeButton__27TargetPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100177a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100177a0-0x100177a8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x100177a0 has v0 = ?.
- `doTargetTwoPipeButton__27TargetPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100177b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100177b0-0x100177b8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x100177b0 has v0 = ?.
- `doTargetFourPipeButtonCallback__27TargetPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x100177c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100177c0-0x10017804 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x100177c4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100177d0 loads 4 bytes from [a1+8] +0x9c.
  The `lw` at 0x100177dc loads 4 bytes from [a1+8] +0xa4.
  The `jalr` at 0x100177ec calls (unknown callee) with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23120.
  The return at 0x100177fc has v0 = ret(?).
- `doTargetOnePipeButtonCallback__27TargetPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10017810 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017810-0x10017854 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10017814 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10017820 loads 4 bytes from [a1+8] +0xa8.
  The `lw` at 0x1001782c loads 4 bytes from [a1+8] +0xb0.
  The `jalr` at 0x1001783c calls (unknown callee) with a0=([[a1+8]+168] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x230d0.
  The return at 0x1001784c has v0 = ret(?).
- `doTargetThreePipeButtonCallback__27TargetPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x100178b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100178b0-0x100178f4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x100178b4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100178c0 loads 4 bytes from [a1+8] +0xc0.
  The `lw` at 0x100178cc loads 4 bytes from [a1+8] +0xc8.
  The `jalr` at 0x100178dc calls (unknown callee) with a0=([[a1+8]+192] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23030.
  The return at 0x100178ec has v0 = ret(?).
- `doTargetTwoPipeButtonCallback__27TargetPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10017900 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017900-0x10017944 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10017904 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10017910 loads 4 bytes from [a1+8] +0xcc.
  The `lw` at 0x1001791c loads 4 bytes from [a1+8] +0xd4.
  The `jalr` at 0x1001792c calls (unknown callee) with a0=([[a1+8]+204] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x22fe0.
  The return at 0x1001793c has v0 = ret(?).
- `__ct__27TargetPropertiesWindowClassGPCcP3ArgUi` in `usr/gfx/sgcombine` at 0x10017960 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017960-0x10017ab4 (340 bytes).
  It occupies 340 bytes.
  The `sw` at 0x10017994 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x100179dc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x100179e0 loads 4 bytes from [a0+8] +0xec.
  The `lw` at 0x100179e4 loads 4 bytes from [a0+8] +0xe4.
  The `sw` at 0x10017a20 stores 4 bytes to a0 (arg0 at entry) +0x40.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x10017a2c, `lw` at 0x10017a60, `lw` at 0x10017a9c.
  The `jalr` at 0x10017980 calls __ct__14VkSimpleWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10017998 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x100179ac calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultTargetPropertiesWindowClassResources__27TargetPropertiesWindowClass), a3=?.
  The `jalr` at 0x100179bc calls __nw__GUi with a0=0x44, a1=?, a2=?, a3=?.
  The `jalr` at 0x100179e8 calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=0x0, a3=?.
  The `jal` at 0x10017a00 calls __ct__25TargetPropertiesFormClassGPCcP10_WidgetRec [0x10016d50] with a0=?, a1=0x1002daf8, a2=ret(?), a3=?.
  The `jalr` at 0x10017a28 calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x10017a4c calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x10d, a3=sym(XtStrings)+234, a4=0xb2, a5=0x0.
  The `jalr` at 0x10017a5c calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+64], a2=?, a3=?.
  The `jalr` at 0x10017a84 calls VkConfigureWM__GP14VkSimpleWindowcN62 with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x1, a4=0x1, a5=0x1, a6=0x1, a7=0x1.
  The `jal` at 0x10017a98 calls setParent__25TargetPropertiesFormClassGP14VkSimpleWindow [0x10016f00] with a0=[a0+64], a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0x100179c8 targets 0x10017a18, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10017a10 targets 0x10017a1c and is always taken.
  The return at 0x10017aac has v0 = a0.
- `__dt__27TargetPropertiesWindowClassGv` in `usr/gfx/sgcombine` at 0x10017ac0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017ac0-0x10017b50 (144 bytes).
  It occupies 144 bytes.
  The `sw` at 0x10017ae8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x10017af0 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x10017afc loads 4 bytes from [a0+64] +0x8.
  The `lw` at 0x10017b00 loads 4 bytes from [[a0+64]+8] +0x14.
  The `lw` at 0x10017b04 loads 4 bytes from [[a0+64]+8] +0xc.
  The `jalr` at 0x10017b0c calls (unknown callee) with a0=([[[a0+64]+8]+12] + [a0+64]), a1=0x3, a2=a2 at entry (arg2), a3=[a0+64].
  The `jalr` at 0x10017b1c calls __dt__14VkSimpleWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10017b38 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10017ad8 targets 0x10017b40, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10017af4 targets 0x10017b1c, is taken when a3(=[a0+64]) == 0, and falls through when a3(=[a0+64]) != 0.
  The `beq` branch at 0x10017b2c targets 0x10017b44, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10017b48 has v0 = one of ret(__dt__14VkSimpleWindowGv), ?.
- `className__27TargetPropertiesWindowClassGv` in `usr/gfx/sgcombine` at 0x10017b50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017b50-0x10017b68 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10017b5c loads 4 bytes from abs 0x10032930.
  The return at 0x10017b60 has v0 = 0x1002db18.
- `okToQuit__27TargetPropertiesWindowClassGv` in `usr/gfx/sgcombine` at 0x10017b70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017b70-0x10017bb0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10017b74 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x10017b88 loads 4 bytes from [a0+8] +0x38.
  The `lw` at 0x10017b8c loads 4 bytes from [a0+8] +0x30.
  The `jalr` at 0x10017b94 calls (unknown callee) with a0=([[a0+8]+48] + a0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10017ba8 has v0 = 0x0.
- `setMainFrame__27TargetPropertiesWindowClassGP23StcombineMainFrameClass` in `usr/gfx/sgcombine` at 0x10017bb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017bb0-0x10017be4 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x10017bd0 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x10017bcc calls setMainFrame__25TargetPropertiesFormClassGP23StcombineMainFrameClass [0x10016f50] with a0=[a0+64], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10017bdc has v0 = ret(setMainFrame__25TargetPropertiesFormClassGP23StcombineMainFrameClass).
- `update__27TargetPropertiesWindowClassGv` in `usr/gfx/sgcombine` at 0x10017bf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017bf0-0x10017c24 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x10017c10 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x10017c0c calls update__25TargetPropertiesFormClassGv [0x10016f10] with a0=[a0+64], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10017c1c has v0 = ret(update__25TargetPropertiesFormClassGv).
- `setParent__25TilingPropertiesFormClassGP14VkSimpleWindow` in `usr/gfx/sgcombine` at 0x10018210 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018210-0x10018218 (8 bytes).
  It occupies 8 bytes.
  The `sw` at 0x10018214 stores 4 bytes to a0 (arg0 at entry) +0xe0.
  The return at 0x10018210 has v0 = ?.
- `doCmpPropFourPipeButton__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018220 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018220-0x10018264 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10018244 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x10018250 stores 4 bytes to sym(combination) +0x350.
  The `jal` at 0x1001824c calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x226c0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1001825c has v0 = ret(update__20StcombineWindowClassGv).
- `doCmpPropOnePipeButton__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018270 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018270-0x100182b4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10018294 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x100182a0 stores 4 bytes to sym(combination) +0x350.
  The `jal` at 0x1001829c calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x22670, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100182ac has v0 = ret(update__20StcombineWindowClassGv).
- `doCmpPropThreePipeButton__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100182c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100182c0-0x10018304 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x100182e4 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x100182f0 stores 4 bytes to sym(combination) +0x350.
  The `jal` at 0x100182ec calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x22620, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100182fc has v0 = ret(update__20StcombineWindowClassGv).
- `doCmpPropTwoPipeButton__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018310 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018310-0x10018354 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10018334 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x10018340 stores 4 bytes to sym(combination) +0x350.
  The `jal` at 0x1001833c calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x225d0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1001834c has v0 = ret(update__20StcombineWindowClassGv).
- `pipe0Height__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018720 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018720-0x100187c8 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x10018740 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x10018754 loads 4 bytes from sym(combination) +0x30c.
  The `lw` at 0x1001875c loads 4 bytes from sym(combination) +0x314.
  The `sw` at 0x10018770 stores 4 bytes to sym(combination) +0x31c.
  The `lw` at 0x1001878c loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x100187a0 stores 4 bytes to sym(combination) +0x34c.
  The `sw` at 0x100187a4 stores 4 bytes to sym(combination) +0x33c.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x32c, including `sw` at 0x100187ac, `sw` at 0x100187b4.
  The `sw` at 0x100187b0 stores 4 bytes to sym(combination) +0x344.
  The `sw` at 0x100187bc stores 4 bytes to sym(combination) +0x334.
  The `sw` at 0x100187c4 stores 4 bytes to sym(combination) +0x324.
  The `jal` at 0x1001873c calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+44], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018748 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018788 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=[sym(combination)+780], a3=([sym(combination)+788] + ret(getint__9EZWrapperGv)), a4=sym(combination), a5=0x2, a6=0x3.
  The `beq` branch at 0x1001876c targets 0x100187b0, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x10018774 targets 0x100187c0, is taken when a2(=[sym(combination)+780]) == a5(=0x2), and falls through when a2(=[sym(combination)+780]) != a5(=0x2).
  The `beq` branch at 0x1001877c targets 0x100187a0, is taken when a2(=[sym(combination)+780]) == a6(=0x3), and falls through when a2(=[sym(combination)+780]) != a6(=0x3).
  The `beq` branch at 0x100187a8 targets 0x10018780 and is always taken.
  The `beq` branch at 0x100187b8 targets 0x10018780 and is always taken.
  The `beq` branch at 0x100187c0 targets 0x10018780 and is always taken.
  The return at 0x10018798 has v0 = ret(update__20StcombineWindowClassGv).
- `pipe0Width__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100187d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100187d0-0x10018878 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x100187f0 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lw` at 0x10018804 loads 4 bytes from sym(combination) +0x30c.
  The `lw` at 0x1001880c loads 4 bytes from sym(combination) +0x310.
  The `sw` at 0x10018820 stores 4 bytes to sym(combination) +0x318.
  The `lw` at 0x1001883c loads 4 bytes from sym(stcombineWindow) +0x0.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x320, including `sw` at 0x10018854, `sw` at 0x10018864.
  The `sw` at 0x10018858 stores 4 bytes to sym(combination) +0x340.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x338, including `sw` at 0x1001885c, `sw` at 0x1001886c.
  The `sw` at 0x10018868 stores 4 bytes to sym(combination) +0x348.
  The `sw` at 0x10018874 stores 4 bytes to sym(combination) +0x328.
  The `jal` at 0x100187ec calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+52], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100187f8 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018838 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=[sym(combination)+780], a3=([sym(combination)+784] + ret(getint__9EZWrapperGv)), a4=sym(combination), a5=0x2, a6=0x3.
  The `beq` branch at 0x1001881c targets 0x10018858, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x10018824 targets 0x10018868, is taken when a2(=[sym(combination)+780]) == a5(=0x2), and falls through when a2(=[sym(combination)+780]) != a5(=0x2).
  The `beq` branch at 0x1001882c targets 0x10018850, is taken when a2(=[sym(combination)+780]) == a6(=0x3), and falls through when a2(=[sym(combination)+780]) != a6(=0x3).
  The `beq` branch at 0x10018850 targets 0x10018830 and is always taken.
  The `beq` branch at 0x10018860 targets 0x10018830 and is always taken.
  The `beq` branch at 0x10018870 targets 0x10018830 and is always taken.
  The return at 0x10018848 has v0 = ret(update__20StcombineWindowClassGv).
- `pipe0X1__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018880 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018880-0x10018904 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0x100188a0 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x100188b4 loads 4 bytes from sym(combination) +0x30c.
  The `sw` at 0x100188c4 stores 4 bytes to sym(combination) +0x310.
  The `lw` at 0x100188d8 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x100188ec stores 4 bytes to sym(combination) +0x340.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x330, including `sw` at 0x100188f0, `sw` at 0x10018900.
  The `sw` at 0x100188f8 stores 4 bytes to sym(combination) +0x320.
  The `jal` at 0x1001889c calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+56], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100188a8 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x100188d4 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=[sym(combination)+780], a3=sym(combination).
  The `beq` branch at 0x100188c0 targets 0x100188fc, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x100188c8 targets 0x100188ec, is taken when a2(=[sym(combination)+780]) == a0(=0x2), and falls through when a2(=[sym(combination)+780]) != a0(=0x2).
  The `beq` branch at 0x100188f4 targets 0x100188cc and is always taken.
  The `beq` branch at 0x100188fc targets 0x100188cc and is always taken.
  The return at 0x100188e4 has v0 = ret(update__20StcombineWindowClassGv).
- `pipe0Y1__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018910-0x100189a0 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0x10018930 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x10018944 loads 4 bytes from sym(combination) +0x30c.
  The `sw` at 0x10018958 stores 4 bytes to sym(combination) +0x314.
  The `lw` at 0x10018974 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x10018988 stores 4 bytes to sym(combination) +0x344.
  The `sw` at 0x1001898c stores 4 bytes to sym(combination) +0x334.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x324, including `sw` at 0x10018994, `sw` at 0x1001899c.
  The `jal` at 0x1001892c calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+64], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018938 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018970 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x3, a2=[sym(combination)+780], a3=sym(combination).
  The `beq` branch at 0x10018954 targets 0x10018998, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x1001895c targets 0x1001896c, is taken when a2(=[sym(combination)+780]) == a0(=0x2), and falls through when a2(=[sym(combination)+780]) != a0(=0x2).
  The `beq` branch at 0x10018964 targets 0x10018988, is taken when a2(=[sym(combination)+780]) == a1(=0x3), and falls through when a2(=[sym(combination)+780]) != a1(=0x3).
  The `beq` branch at 0x10018990 targets 0x10018968 and is always taken.
  The `beq` branch at 0x10018998 targets 0x10018968 and is always taken.
  The return at 0x10018980 has v0 = ret(update__20StcombineWindowClassGv).
- `pipe1Height__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100189a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100189a0-0x10018a48 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x100189c0 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lw` at 0x100189d4 loads 4 bytes from sym(combination) +0x30c.
  The `lw` at 0x100189dc loads 4 bytes from sym(combination) +0x324.
  The `sw` at 0x100189f0 stores 4 bytes to sym(combination) +0x32c.
  The `lw` at 0x10018a0c loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x10018a20 stores 4 bytes to sym(combination) +0x34c.
  The `sw` at 0x10018a24 stores 4 bytes to sym(combination) +0x33c.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x31c, including `sw` at 0x10018a2c, `sw` at 0x10018a34.
  The `sw` at 0x10018a30 stores 4 bytes to sym(combination) +0x344.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x334, including `sw` at 0x10018a3c, `sw` at 0x10018a44.
  The `jal` at 0x100189bc calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+76], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100189c8 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018a08 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=[sym(combination)+780], a3=([sym(combination)+804] + ret(getint__9EZWrapperGv)), a4=sym(combination), a5=0x2, a6=0x3.
  The `beq` branch at 0x100189ec targets 0x10018a30, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x100189f4 targets 0x10018a40, is taken when a2(=[sym(combination)+780]) == a5(=0x2), and falls through when a2(=[sym(combination)+780]) != a5(=0x2).
  The `beq` branch at 0x100189fc targets 0x10018a20, is taken when a2(=[sym(combination)+780]) == a6(=0x3), and falls through when a2(=[sym(combination)+780]) != a6(=0x3).
  The `beq` branch at 0x10018a28 targets 0x10018a00 and is always taken.
  The `beq` branch at 0x10018a38 targets 0x10018a00 and is always taken.
  The `beq` branch at 0x10018a40 targets 0x10018a00 and is always taken.
  The return at 0x10018a18 has v0 = ret(update__20StcombineWindowClassGv).
- `pipe1Width__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018a50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018a50-0x10018af0 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x10018a70 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lw` at 0x10018a84 loads 4 bytes from sym(combination) +0x30c.
  The `lw` at 0x10018a8c loads 4 bytes from sym(combination) +0x320.
  The `sw` at 0x10018aa0 stores 4 bytes to sym(combination) +0x328.
  The `lw` at 0x10018abc loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x10018ad4 stores 4 bytes to sym(combination) +0x330.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x348, including `sw` at 0x10018adc, `sw` at 0x10018ae0.
  The `sw` at 0x10018ae4 stores 4 bytes to sym(combination) +0x338.
  The `sw` at 0x10018aec stores 4 bytes to sym(combination) +0x318.
  The `jal` at 0x10018a6c calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+84], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018a78 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018ab8 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=[sym(combination)+780], a3=([sym(combination)+800] + ret(getint__9EZWrapperGv)), a4=sym(combination), a5=0x2, a6=0x3.
  The `beq` branch at 0x10018a9c targets 0x10018ad8, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x10018aa4 targets 0x10018ae0, is taken when a2(=[sym(combination)+780]) == a5(=0x2), and falls through when a2(=[sym(combination)+780]) != a5(=0x2).
  The `beq` branch at 0x10018aac targets 0x10018ad0, is taken when a2(=[sym(combination)+780]) == a6(=0x3), and falls through when a2(=[sym(combination)+780]) != a6(=0x3).
  The `beq` branch at 0x10018ad0 targets 0x10018ab0 and is always taken.
  The `beq` branch at 0x10018ad8 targets 0x10018ab0 and is always taken.
  The `beq` branch at 0x10018ae8 targets 0x10018ab0 and is always taken.
  The return at 0x10018ac8 has v0 = ret(update__20StcombineWindowClassGv).
- `pipe1X1__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018af0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018af0-0x10018b90 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x10018b10 loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `lw` at 0x10018b24 loads 4 bytes from sym(combination) +0x30c.
  The `sw` at 0x10018b38 stores 4 bytes to sym(combination) +0x320.
  The `lw` at 0x10018b54 loads 4 bytes from sym(stcombineWindow) +0x0.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x318, including `sw` at 0x10018b6c, `sw` at 0x10018b7c.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x340, including `sw` at 0x10018b70, `sw` at 0x10018b80.
  The `sw` at 0x10018b74 stores 4 bytes to sym(combination) +0x338.
  The `sw` at 0x10018b84 stores 4 bytes to sym(combination) +0x330.
  The `sw` at 0x10018b8c stores 4 bytes to sym(combination) +0x310.
  The `jal` at 0x10018b0c calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+88], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018b18 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018b50 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x3, a2=[sym(combination)+780], a3=sym(combination).
  The `beq` branch at 0x10018b34 targets 0x10018b70, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x10018b3c targets 0x10018b80, is taken when a2(=[sym(combination)+780]) == a0(=0x2), and falls through when a2(=[sym(combination)+780]) != a0(=0x2).
  The `beq` branch at 0x10018b44 targets 0x10018b68, is taken when a2(=[sym(combination)+780]) == a1(=0x3), and falls through when a2(=[sym(combination)+780]) != a1(=0x3).
  The `beq` branch at 0x10018b68 targets 0x10018b48 and is always taken.
  The `beq` branch at 0x10018b78 targets 0x10018b48 and is always taken.
  The `beq` branch at 0x10018b88 targets 0x10018b48 and is always taken.
  The return at 0x10018b60 has v0 = ret(update__20StcombineWindowClassGv).
- `pipe1Y1__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018b90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018b90-0x10018c28 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x10018bb0 loads 4 bytes from a0 (arg0 at entry) +0x5c.
  The `lw` at 0x10018bc4 loads 4 bytes from sym(combination) +0x30c.
  The `sw` at 0x10018bd8 stores 4 bytes to sym(combination) +0x324.
  The `lw` at 0x10018bf4 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x10018c08 stores 4 bytes to sym(combination) +0x344.
  The `sw` at 0x10018c0c stores 4 bytes to sym(combination) +0x334.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x314, including `sw` at 0x10018c14, `sw` at 0x10018c1c.
  The `sw` at 0x10018c24 stores 4 bytes to sym(combination) +0x31c.
  The `jal` at 0x10018bac calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+92], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018bb8 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018bf0 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x3, a2=[sym(combination)+780], a3=sym(combination).
  The `beq` branch at 0x10018bd4 targets 0x10018c18, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x10018bdc targets 0x10018c20, is taken when a2(=[sym(combination)+780]) == a0(=0x2), and falls through when a2(=[sym(combination)+780]) != a0(=0x2).
  The `beq` branch at 0x10018be4 targets 0x10018c08, is taken when a2(=[sym(combination)+780]) == a1(=0x3), and falls through when a2(=[sym(combination)+780]) != a1(=0x3).
  The `beq` branch at 0x10018c10 targets 0x10018be8 and is always taken.
  The `beq` branch at 0x10018c18 targets 0x10018be8 and is always taken.
  The `beq` branch at 0x10018c20 targets 0x10018be8 and is always taken.
  The return at 0x10018c00 has v0 = ret(update__20StcombineWindowClassGv).
- `pipe2Height__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018c30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018c30-0x10018cd0 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x10018c50 loads 4 bytes from a0 (arg0 at entry) +0x6c.
  The `lw` at 0x10018c64 loads 4 bytes from sym(combination) +0x30c.
  The `lw` at 0x10018c6c loads 4 bytes from sym(combination) +0x334.
  The `sw` at 0x10018c80 stores 4 bytes to sym(combination) +0x33c.
  The `lw` at 0x10018c9c loads 4 bytes from sym(stcombineWindow) +0x0.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x34c, including `sw` at 0x10018cb0, `sw` at 0x10018cc4.
  The `sw` at 0x10018cb4 stores 4 bytes to sym(combination) +0x31c.
  The `sw` at 0x10018cbc stores 4 bytes to sym(combination) +0x32c.
  The `sw` at 0x10018ccc stores 4 bytes to sym(combination) +0x344.
  The `jal` at 0x10018c4c calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+108], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018c58 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018c98 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=[sym(combination)+780], a3=([sym(combination)+820] + ret(getint__9EZWrapperGv)), a4=sym(combination), a5=0x2, a6=0x3.
  The `beq` branch at 0x10018c7c targets 0x10018cc0, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x10018c84 targets 0x10018cc8, is taken when a2(=[sym(combination)+780]) == a5(=0x2), and falls through when a2(=[sym(combination)+780]) != a5(=0x2).
  The `beq` branch at 0x10018c8c targets 0x10018cb0, is taken when a2(=[sym(combination)+780]) == a6(=0x3), and falls through when a2(=[sym(combination)+780]) != a6(=0x3).
  The `beq` branch at 0x10018cb8 targets 0x10018c90 and is always taken.
  The `beq` branch at 0x10018cc0 targets 0x10018c90 and is always taken.
  The `beq` branch at 0x10018cc8 targets 0x10018c90 and is always taken.
  The return at 0x10018ca8 has v0 = ret(update__20StcombineWindowClassGv).
- `pipe2Width__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018cd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018cd0-0x10018d78 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x10018cf0 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0x10018d04 loads 4 bytes from sym(combination) +0x30c.
  The `lw` at 0x10018d0c loads 4 bytes from sym(combination) +0x330.
  The `sw` at 0x10018d20 stores 4 bytes to sym(combination) +0x338.
  The `lw` at 0x10018d3c loads 4 bytes from sym(stcombineWindow) +0x0.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x340, including `sw` at 0x10018d54, `sw` at 0x10018d58.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x318, including `sw` at 0x10018d5c, `sw` at 0x10018d6c.
  The `sw` at 0x10018d64 stores 4 bytes to sym(combination) +0x320.
  The `sw` at 0x10018d68 stores 4 bytes to sym(combination) +0x348.
  The `sw` at 0x10018d74 stores 4 bytes to sym(combination) +0x328.
  The `jal` at 0x10018cec calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+116], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018cf8 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018d38 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=[sym(combination)+780], a3=([sym(combination)+816] + ret(getint__9EZWrapperGv)), a4=sym(combination), a5=0x2, a6=0x3.
  The `beq` branch at 0x10018d1c targets 0x10018d58, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x10018d24 targets 0x10018d68, is taken when a2(=[sym(combination)+780]) == a5(=0x2), and falls through when a2(=[sym(combination)+780]) != a5(=0x2).
  The `beq` branch at 0x10018d2c targets 0x10018d50, is taken when a2(=[sym(combination)+780]) == a6(=0x3), and falls through when a2(=[sym(combination)+780]) != a6(=0x3).
  The `beq` branch at 0x10018d50 targets 0x10018d30 and is always taken.
  The `beq` branch at 0x10018d60 targets 0x10018d30 and is always taken.
  The `beq` branch at 0x10018d70 targets 0x10018d30 and is always taken.
  The return at 0x10018d48 has v0 = ret(update__20StcombineWindowClassGv).
- `pipe2X1__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018d80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018d80-0x10018e18 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x10018da0 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x10018db4 loads 4 bytes from sym(combination) +0x30c.
  The `sw` at 0x10018dc8 stores 4 bytes to sym(combination) +0x330.
  The `lw` at 0x10018de4 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x10018dfc stores 4 bytes to sym(combination) +0x328.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x310, including `sw` at 0x10018e04, `sw` at 0x10018e0c.
  The `sw` at 0x10018e08 stores 4 bytes to sym(combination) +0x340.
  The `sw` at 0x10018e14 stores 4 bytes to sym(combination) +0x320.
  The `jal` at 0x10018d9c calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+120], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018da8 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018de0 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x3, a2=[sym(combination)+780], a3=sym(combination).
  The `beq` branch at 0x10018dc4 targets 0x10018e00, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x10018dcc targets 0x10018e08, is taken when a2(=[sym(combination)+780]) == a0(=0x2), and falls through when a2(=[sym(combination)+780]) != a0(=0x2).
  The `beq` branch at 0x10018dd4 targets 0x10018df8, is taken when a2(=[sym(combination)+780]) == a1(=0x3), and falls through when a2(=[sym(combination)+780]) != a1(=0x3).
  The `beq` branch at 0x10018df8 targets 0x10018dd8 and is always taken.
  The `beq` branch at 0x10018e00 targets 0x10018dd8 and is always taken.
  The `beq` branch at 0x10018e10 targets 0x10018dd8 and is always taken.
  The return at 0x10018df0 has v0 = ret(update__20StcombineWindowClassGv).
- `pipe2Y1__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018e20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018e20-0x10018ec0 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x10018e40 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `lw` at 0x10018e54 loads 4 bytes from sym(combination) +0x30c.
  The `sw` at 0x10018e68 stores 4 bytes to sym(combination) +0x334.
  The `lw` at 0x10018e84 loads 4 bytes from sym(stcombineWindow) +0x0.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x344, including `sw` at 0x10018e98, `sw` at 0x10018ea8.
  The `sw` at 0x10018e9c stores 4 bytes to sym(combination) +0x324.
  The `sw` at 0x10018ea4 stores 4 bytes to sym(combination) +0x314.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x32c, including `sw` at 0x10018eac, `sw` at 0x10018ebc.
  The `sw` at 0x10018eb4 stores 4 bytes to sym(combination) +0x31c.
  The `jal` at 0x10018e3c calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+128], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018e48 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018e80 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x3, a2=[sym(combination)+780], a3=sym(combination).
  The `beq` branch at 0x10018e64 targets 0x10018ea8, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x10018e6c targets 0x10018eb8, is taken when a2(=[sym(combination)+780]) == a0(=0x2), and falls through when a2(=[sym(combination)+780]) != a0(=0x2).
  The `beq` branch at 0x10018e74 targets 0x10018e98, is taken when a2(=[sym(combination)+780]) == a1(=0x3), and falls through when a2(=[sym(combination)+780]) != a1(=0x3).
  The `beq` branch at 0x10018ea0 targets 0x10018e78 and is always taken.
  The `beq` branch at 0x10018eb0 targets 0x10018e78 and is always taken.
  The `beq` branch at 0x10018eb8 targets 0x10018e78 and is always taken.
  The return at 0x10018e90 has v0 = ret(update__20StcombineWindowClassGv).
- `pipe3Height__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018ec0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018ec0-0x10018f58 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x10018ee0 loads 4 bytes from a0 (arg0 at entry) +0x8c.
  The `lw` at 0x10018ef4 loads 4 bytes from sym(combination) +0x30c.
  The `lw` at 0x10018efc loads 4 bytes from sym(combination) +0x344.
  The `sw` at 0x10018f10 stores 4 bytes to sym(combination) +0x34c.
  The `lw` at 0x10018f2c loads 4 bytes from sym(stcombineWindow) +0x0.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x33c, including `sw` at 0x10018f40, `sw` at 0x10018f54.
  The `sw` at 0x10018f44 stores 4 bytes to sym(combination) +0x31c.
  The `sw` at 0x10018f4c stores 4 bytes to sym(combination) +0x32c.
  The `jal` at 0x10018edc calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+140], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018ee8 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018f28 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=[sym(combination)+780], a3=([sym(combination)+836] + ret(getint__9EZWrapperGv)), a4=sym(combination), a5=0x2, a6=0x3.
  The `beq` branch at 0x10018f0c targets 0x10018f50, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x10018f14 targets 0x10018f24, is taken when a2(=[sym(combination)+780]) == a5(=0x2), and falls through when a2(=[sym(combination)+780]) != a5(=0x2).
  The `beq` branch at 0x10018f1c targets 0x10018f40, is taken when a2(=[sym(combination)+780]) == a6(=0x3), and falls through when a2(=[sym(combination)+780]) != a6(=0x3).
  The `beq` branch at 0x10018f48 targets 0x10018f20 and is always taken.
  The `beq` branch at 0x10018f50 targets 0x10018f20 and is always taken.
  The return at 0x10018f38 has v0 = ret(update__20StcombineWindowClassGv).
- `pipe3Width__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018f60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018f60-0x10018fec (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0x10018f80 loads 4 bytes from a0 (arg0 at entry) +0x94.
  The `lw` at 0x10018f94 loads 4 bytes from sym(combination) +0x30c.
  The `lw` at 0x10018f9c loads 4 bytes from sym(combination) +0x340.
  The `sw` at 0x10018fac stores 4 bytes to sym(combination) +0x348.
  The `lw` at 0x10018fc0 loads 4 bytes from sym(stcombineWindow) +0x0.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x328, including `sw` at 0x10018fd4, `sw` at 0x10018fe8.
  The `sw` at 0x10018fd8 stores 4 bytes to sym(combination) +0x338.
  The `sw` at 0x10018fe0 stores 4 bytes to sym(combination) +0x318.
  The `jal` at 0x10018f7c calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+148], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018f88 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018fbc calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=[sym(combination)+780], a3=([sym(combination)+832] + ret(getint__9EZWrapperGv)), a4=sym(combination), a5=0x2.
  The `beq` branch at 0x10018fa8 targets 0x10018fe4, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x10018fb0 targets 0x10018fd4, is taken when a2(=[sym(combination)+780]) == a5(=0x2), and falls through when a2(=[sym(combination)+780]) != a5(=0x2).
  The `beq` branch at 0x10018fdc targets 0x10018fb4 and is always taken.
  The `beq` branch at 0x10018fe4 targets 0x10018fb4 and is always taken.
  The return at 0x10018fcc has v0 = ret(update__20StcombineWindowClassGv).
- `pipe3X1__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018ff0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018ff0-0x10019090 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x10019010 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `lw` at 0x10019024 loads 4 bytes from sym(combination) +0x30c.
  The `sw` at 0x10019038 stores 4 bytes to sym(combination) +0x340.
  The `lw` at 0x10019054 loads 4 bytes from sym(stcombineWindow) +0x0.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x338, including `sw` at 0x1001906c, `sw` at 0x10019074.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x320, including `sw` at 0x10019070, `sw` at 0x10019080.
  The `sw` at 0x1001907c stores 4 bytes to sym(combination) +0x318.
  The `sw` at 0x10019084 stores 4 bytes to sym(combination) +0x330.
  The `sw` at 0x1001908c stores 4 bytes to sym(combination) +0x310.
  The `jal` at 0x1001900c calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+152], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10019018 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10019050 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x3, a2=[sym(combination)+780], a3=sym(combination).
  The `beq` branch at 0x10019034 targets 0x10019070, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x1001903c targets 0x10019080, is taken when a2(=[sym(combination)+780]) == a0(=0x2), and falls through when a2(=[sym(combination)+780]) != a0(=0x2).
  The `beq` branch at 0x10019044 targets 0x10019068, is taken when a2(=[sym(combination)+780]) == a1(=0x3), and falls through when a2(=[sym(combination)+780]) != a1(=0x3).
  The `beq` branch at 0x10019068 targets 0x10019048 and is always taken.
  The `beq` branch at 0x10019078 targets 0x10019048 and is always taken.
  The `beq` branch at 0x10019088 targets 0x10019048 and is always taken.
  The return at 0x10019060 has v0 = ret(update__20StcombineWindowClassGv).
- `pipe3Y1__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10019090 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10019090-0x10019130 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x100190b0 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0x100190c4 loads 4 bytes from sym(combination) +0x30c.
  The `sw` at 0x100190d8 stores 4 bytes to sym(combination) +0x344.
  The `lw` at 0x100190f4 loads 4 bytes from sym(stcombineWindow) +0x0.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x334, including `sw` at 0x10019108, `sw` at 0x10019118.
  The `sw` at 0x1001910c stores 4 bytes to sym(combination) +0x324.
  The `sw` at 0x10019114 stores 4 bytes to sym(combination) +0x314.
  The `sw` at 0x1001911c stores 4 bytes to sym(combination) +0x32c.
  The `sw` at 0x10019124 stores 4 bytes to sym(combination) +0x31c.
  The `sw` at 0x1001912c stores 4 bytes to sym(combination) +0x33c.
  The `jal` at 0x100190ac calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+156], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100190b8 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x100190f0 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x3, a2=[sym(combination)+780], a3=sym(combination).
  The `beq` branch at 0x100190d4 targets 0x10019118, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x100190dc targets 0x10019128, is taken when a2(=[sym(combination)+780]) == a0(=0x2), and falls through when a2(=[sym(combination)+780]) != a0(=0x2).
  The `beq` branch at 0x100190e4 targets 0x10019108, is taken when a2(=[sym(combination)+780]) == a1(=0x3), and falls through when a2(=[sym(combination)+780]) != a1(=0x3).
  The `beq` branch at 0x10019110 targets 0x100190e8 and is always taken.
  The `beq` branch at 0x10019120 targets 0x100190e8 and is always taken.
  The `beq` branch at 0x10019128 targets 0x100190e8 and is always taken.
  The return at 0x10019100 has v0 = ret(update__20StcombineWindowClassGv).
- `RegisterTilingPropertiesFormClassInterface__25TilingPropertiesFormClassSGv` in `usr/gfx/sgcombine` at 0x10019130 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10019130-0x10019148 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1001913c loads 4 bytes from abs 0x10032930.
  The return at 0x10019140 has v0 = 0x100311a0.
- `doCmpPropFourPipeButton__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b7b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b7b0-0x1001b7b8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b7b0 has v0 = ?.
- `doCmpPropOnePipeButton__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b7c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b7c0-0x1001b7c8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b7c0 has v0 = ?.
- `doCmpPropThreePipeButton__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b7d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b7d0-0x1001b7d8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b7d0 has v0 = ?.
- `doCmpPropTwoPipeButton__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b7e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b7e0-0x1001b7e8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b7e0 has v0 = ?.
- `pipe0Height__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b860 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b860-0x1001b868 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b860 has v0 = ?.
- `pipe0Width__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b870 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b870-0x1001b878 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b870 has v0 = ?.
- `pipe0X1__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b880 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b880-0x1001b888 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b880 has v0 = ?.
- `pipe0Y1__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b890 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b890-0x1001b898 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b890 has v0 = ?.
- `pipe1Height__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b8a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b8a0-0x1001b8a8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b8a0 has v0 = ?.
- `pipe1Width__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b8b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b8b0-0x1001b8b8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b8b0 has v0 = ?.
- `pipe1X1__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b8c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b8c0-0x1001b8c8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b8c0 has v0 = ?.
- `pipe1Y1__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b8d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b8d0-0x1001b8d8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b8d0 has v0 = ?.
- `pipe2Height__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b8e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b8e0-0x1001b8e8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b8e0 has v0 = ?.
- `pipe2Width__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b8f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b8f0-0x1001b8f8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b8f0 has v0 = ?.
- `pipe2X1__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b900 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b900-0x1001b908 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b900 has v0 = ?.
- `pipe2Y1__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b910-0x1001b918 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b910 has v0 = ?.
- `pipe3Height__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b920 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b920-0x1001b928 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b920 has v0 = ?.
- `pipe3Width__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b930 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b930-0x1001b938 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b930 has v0 = ?.
- `pipe3X1__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b940 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b940-0x1001b948 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b940 has v0 = ?.
