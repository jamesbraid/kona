# Readings: `usr/lib/X11/dyDDX/konad.so`

One entry per routine, filed here from the reading batches by binary.

- `nfbTellGainedMap` in `usr/lib/X11/dyDDX/konad.so` at 0x47ff40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/konad.so`.
  Range: 0x47ff40-0x4800d4 (404 bytes).
  It occupies 404 bytes.
  The `lbu` at 0x47ff4c loads 1 byte from a0 (arg0 at entry) +0x1.
  The `lw` at 0x47ff74 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x47ff80 loads 4 bytes from [a0+120] +0x8.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x47ff84, `lw` at 0x480010, `lw` at 0x48007c.
  The `lw` at 0x47ff90 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x47ff94 loads 4 bytes from sym(rrmScreenPrivateIndex) +0x0.
  The `lw` at 0x47ff98 loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x47ffa4 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lw` at 0x47ffac loads 4 bytes from ([[a0+16]+436] + ([sym(rrmScreenPrivateIndex)] << 0x2)) +0x0.
  The `lw` at 0x47ffb4 loads 4 bytes from a1 (arg1 at entry) +0x44.
  The `lw` at 0x47ffbc loads 4 bytes from [a1+68] +0x0.
  The `lw` at 0x47ffc0 loads 4 bytes from abs 0x5a7860 (nfbWindowPrivateIndex).
  The `lw` at 0x47ffc4 loads 4 bytes from [a0+16] +0x74.
  The `lw` at 0x47ffd4 loads 4 bytes from [[a0+16]+116] +0x74.
  The `lw` at 0x47ffe4 loads 4 bytes from ([a0+132] + ([0x5a7860] << 0x2)) +0x0.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x47fff0, `lw` at 0x480038, `lw` at 0x480094.
  The `lw` at 0x47fff8 loads 4 bytes from [([a0+132] + ([0x5a7860] << 0x2))] +0x4.
  The `lw` at 0x480008 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0x480090 stores 4 bytes to ?.
  The `lw` at 0x4800b0 loads 4 bytes from ret(FindWindowWithOptional) +0x78.
  The `lw` at 0x4800b8 loads 4 bytes from [ret(FindWindowWithOptional)+120] +0x8.
  The `jalr` at 0x48002c calls DeliverEvents with a0=a0 at entry (arg0), a1=sp-112, a2=0x1, a3=0x0, a4=[a1+8], a5=[a0+4], a6=0x20, a7=[[([a0+132] + ([0x5a7860] << 0x2))]+4].
  The `jalr` at 0x480098 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x4800a8 calls FindWindowWithOptional with a0=a0 at entry (arg0), a1=[a0+120], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4800c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0x47ff6c targets 0x48007c, is taken when at(=[a0+1]:1) == v0(=0x2), and falls through when at(=[a0+1]:1) != v0(=0x2).
  The `beq` branch at 0x47ff78 targets 0x4800a8, is taken when a1(=[a0+120]) == 0, and falls through when a1(=[a0+120]) != 0.
  The `bne` branch at 0x47ff88 targets 0x480060, is taken when a1(=[a1+8]) != a0(?), and falls through when a1(=[a1+8]) == a0(?).
  The `beq` branch at 0x480048 targets 0x480060, is taken when (a0(?) & 0x2) == 0, and falls through when (a0(?) & 0x2) != 0.
  The `beq` branch at 0x480050 targets 0x4800bc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x480058 targets 0x480090, is taken when a4(?) != a1(?), and falls through when a4(?) == a1(?).
  The `bne` branch at 0x480080 targets 0x480064, is taken when a3(=[a1+8]) != 0, and falls through when a3(=[a1+8]) == 0.
  The `beq` branch at 0x480088 targets 0x47ff90 and is always taken.
  The `beq` branch at 0x4800a0 targets 0x480064 and is always taken.
  The `beq` branch at 0x4800b4 targets 0x47ff84 and is always taken.
  The `beq` branch at 0x4800cc targets 0x480064 and is always taken.
  The return at 0x480074 has v0 = 0x1.

- `miFindMaxBand` in `usr/lib/X11/dyDDX/konad.so` at 0x4994e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/konad.so`.
  Range: 0x4994e0-0x49956c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0x4994e0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x4994ec loads 4 bytes from [a0+8] +0x4.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x499510, `lh` at 0x499534.
  The `beq` branch at 0x4994e4 targets 0x4994f8, is taken when v0(=[a0+8]) == 0, and falls through when v0(=[a0+8]) != 0.
  The `blez` branch at 0x4994f0 targets 0x499564, is taken when a5(=[[a0+8]+4]) <= 0 (signed), and falls through when a5(=[[a0+8]+4]) > 0 (signed).
  The `beq` branch at 0x4994f8 targets 0x49952c and is always taken.
  The `blez` branch at 0x499508 targets 0x499544, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `beq` branch at 0x499514 targets 0x499500, is taken when at(?) == a6(?), and falls through when at(?) != a6(?).
  The `beq` branch at 0x49951c targets 0x499528, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `blez` branch at 0x499528 targets 0x49955c, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `blez` branch at 0x499530 targets 0x499550, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `beq` branch at 0x49953c targets 0x499500 and is always taken.
  The `beq` branch at 0x499548 targets 0x499518 and is always taken.
  The `beq` branch at 0x499554 targets 0x49951c and is always taken.
  The return at 0x49955c has v0 = ?.
  The return at 0x499564 has v0 = 0x0.
