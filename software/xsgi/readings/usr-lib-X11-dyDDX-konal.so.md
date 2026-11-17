# Readings: `usr/lib/X11/dyDDX/konal.so`

One entry per routine, filed here from the reading batches by binary.

- `nfbTellGainedMap` in `usr/lib/X11/dyDDX/konal.so` at 0x13fff40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/konal.so`.
  Range: 0x13fff40-0x14000d4 (404 bytes).
  It occupies 404 bytes.
  The `lbu` at 0x13fff4c loads 1 byte from a0 (arg0 at entry) +0x1.
  The `lw` at 0x13fff74 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x13fff80 loads 4 bytes from [a0+120] +0x8.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x13fff84, `lw` at 0x1400010, `lw` at 0x140007c.
  The `lw` at 0x13fff90 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x13fff94 loads 4 bytes from sym(rrmScreenPrivateIndex) +0x0.
  The `lw` at 0x13fff98 loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x13fffa4 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lw` at 0x13fffac loads 4 bytes from ([[a0+16]+436] + ([sym(rrmScreenPrivateIndex)] << 0x2)) +0x0.
  The `lw` at 0x13fffb4 loads 4 bytes from a1 (arg1 at entry) +0x44.
  The `lw` at 0x13fffbc loads 4 bytes from [a1+68] +0x0.
  The `lw` at 0x13fffc0 loads 4 bytes from abs 0x1527860 (nfbWindowPrivateIndex).
  The `lw` at 0x13fffc4 loads 4 bytes from [a0+16] +0x74.
  The `lw` at 0x13fffd4 loads 4 bytes from [[a0+16]+116] +0x74.
  The `lw` at 0x13fffe4 loads 4 bytes from ([a0+132] + ([0x1527860] << 0x2)) +0x0.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x13ffff0, `lw` at 0x1400038, `lw` at 0x1400094.
  The `lw` at 0x13ffff8 loads 4 bytes from [([a0+132] + ([0x1527860] << 0x2))] +0x4.
  The `lw` at 0x1400008 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0x1400090 stores 4 bytes to ?.
  The `lw` at 0x14000b0 loads 4 bytes from ret(FindWindowWithOptional) +0x78.
  The `lw` at 0x14000b8 loads 4 bytes from [ret(FindWindowWithOptional)+120] +0x8.
  The `jalr` at 0x140002c calls DeliverEvents with a0=a0 at entry (arg0), a1=sp-112, a2=0x1, a3=0x0, a4=[a1+8], a5=[a0+4], a6=0x20, a7=[[([a0+132] + ([0x1527860] << 0x2))]+4].
  The `jalr` at 0x1400098 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x14000a8 calls FindWindowWithOptional with a0=a0 at entry (arg0), a1=[a0+120], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x14000c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0x13fff6c targets 0x140007c, is taken when at(=[a0+1]:1) == v0(=0x2), and falls through when at(=[a0+1]:1) != v0(=0x2).
  The `beq` branch at 0x13fff78 targets 0x14000a8, is taken when a1(=[a0+120]) == 0, and falls through when a1(=[a0+120]) != 0.
  The `bne` branch at 0x13fff88 targets 0x1400060, is taken when a1(=[a1+8]) != a0(?), and falls through when a1(=[a1+8]) == a0(?).
  The `beq` branch at 0x1400048 targets 0x1400060, is taken when (a0(?) & 0x2) == 0, and falls through when (a0(?) & 0x2) != 0.
  The `beq` branch at 0x1400050 targets 0x14000bc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x1400058 targets 0x1400090, is taken when a4(?) != a1(?), and falls through when a4(?) == a1(?).
  The `bne` branch at 0x1400080 targets 0x1400064, is taken when a3(=[a1+8]) != 0, and falls through when a3(=[a1+8]) == 0.
  The `beq` branch at 0x1400088 targets 0x13fff90 and is always taken.
  The `beq` branch at 0x14000a0 targets 0x1400064 and is always taken.
  The `beq` branch at 0x14000b4 targets 0x13fff84 and is always taken.
  The `beq` branch at 0x14000cc targets 0x1400064 and is always taken.
  The return at 0x1400074 has v0 = 0x1.

- `miFindMaxBand` in `usr/lib/X11/dyDDX/konal.so` at 0x14194e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/konal.so`.
  Range: 0x14194e0-0x141956c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0x14194e0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x14194ec loads 4 bytes from [a0+8] +0x4.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x1419510, `lh` at 0x1419534.
  The `beq` branch at 0x14194e4 targets 0x14194f8, is taken when v0(=[a0+8]) == 0, and falls through when v0(=[a0+8]) != 0.
  The `blez` branch at 0x14194f0 targets 0x1419564, is taken when a5(=[[a0+8]+4]) <= 0 (signed), and falls through when a5(=[[a0+8]+4]) > 0 (signed).
  The `beq` branch at 0x14194f8 targets 0x141952c and is always taken.
  The `blez` branch at 0x1419508 targets 0x1419544, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `beq` branch at 0x1419514 targets 0x1419500, is taken when at(?) == a6(?), and falls through when at(?) != a6(?).
  The `beq` branch at 0x141951c targets 0x1419528, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `blez` branch at 0x1419528 targets 0x141955c, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `blez` branch at 0x1419530 targets 0x1419550, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `beq` branch at 0x141953c targets 0x1419500 and is always taken.
  The `beq` branch at 0x1419548 targets 0x1419518 and is always taken.
  The `beq` branch at 0x1419554 targets 0x141951c and is always taken.
  The return at 0x141955c has v0 = ?.
  The return at 0x1419564 has v0 = 0x0.
