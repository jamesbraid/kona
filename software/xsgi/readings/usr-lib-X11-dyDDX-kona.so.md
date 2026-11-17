# Readings: `usr/lib/X11/dyDDX/kona.so`

One entry per routine, filed here from the reading batches by binary.

- `nfbTellGainedMap` in `usr/lib/X11/dyDDX/kona.so` at 0x478b10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/kona.so`.
  Range: 0x478b10-0x478ca4 (404 bytes).
  It occupies 404 bytes.
  The `lbu` at 0x478b1c loads 1 byte from a0 (arg0 at entry) +0x1.
  The `lw` at 0x478b44 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x478b50 loads 4 bytes from [a0+120] +0x8.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x478b54, `lw` at 0x478be0, `lw` at 0x478c4c.
  The `lw` at 0x478b60 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x478b64 loads 4 bytes from sym(rrmScreenPrivateIndex) +0x0.
  The `lw` at 0x478b68 loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x478b74 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lw` at 0x478b7c loads 4 bytes from ([[a0+16]+436] + ([sym(rrmScreenPrivateIndex)] << 0x2)) +0x0.
  The `lw` at 0x478b84 loads 4 bytes from a1 (arg1 at entry) +0x44.
  The `lw` at 0x478b8c loads 4 bytes from [a1+68] +0x0.
  The `lw` at 0x478b90 loads 4 bytes from abs 0x59b808 (nfbWindowPrivateIndex).
  The `lw` at 0x478b94 loads 4 bytes from [a0+16] +0x74.
  The `lw` at 0x478ba4 loads 4 bytes from [[a0+16]+116] +0x74.
  The `lw` at 0x478bb4 loads 4 bytes from ([a0+132] + ([0x59b808] << 0x2)) +0x0.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x478bc0, `lw` at 0x478c08, `lw` at 0x478c64.
  The `lw` at 0x478bc8 loads 4 bytes from [([a0+132] + ([0x59b808] << 0x2))] +0x4.
  The `lw` at 0x478bd8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0x478c60 stores 4 bytes to ?.
  The `lw` at 0x478c80 loads 4 bytes from ret(FindWindowWithOptional) +0x78.
  The `lw` at 0x478c88 loads 4 bytes from [ret(FindWindowWithOptional)+120] +0x8.
  The `jalr` at 0x478bfc calls DeliverEvents with a0=a0 at entry (arg0), a1=sp-112, a2=0x1, a3=0x0, a4=[a1+8], a5=[a0+4], a6=0x20, a7=[[([a0+132] + ([0x59b808] << 0x2))]+4].
  The `jalr` at 0x478c68 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x478c78 calls FindWindowWithOptional with a0=a0 at entry (arg0), a1=[a0+120], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x478c94 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0x478b3c targets 0x478c4c, is taken when at(=[a0+1]:1) == v0(=0x2), and falls through when at(=[a0+1]:1) != v0(=0x2).
  The `beq` branch at 0x478b48 targets 0x478c78, is taken when a1(=[a0+120]) == 0, and falls through when a1(=[a0+120]) != 0.
  The `bne` branch at 0x478b58 targets 0x478c30, is taken when a1(=[a1+8]) != a0(?), and falls through when a1(=[a1+8]) == a0(?).
  The `beq` branch at 0x478c18 targets 0x478c30, is taken when (a0(?) & 0x2) == 0, and falls through when (a0(?) & 0x2) != 0.
  The `beq` branch at 0x478c20 targets 0x478c8c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x478c28 targets 0x478c60, is taken when a4(?) != a1(?), and falls through when a4(?) == a1(?).
  The `bne` branch at 0x478c50 targets 0x478c34, is taken when a3(=[a1+8]) != 0, and falls through when a3(=[a1+8]) == 0.
  The `beq` branch at 0x478c58 targets 0x478b60 and is always taken.
  The `beq` branch at 0x478c70 targets 0x478c34 and is always taken.
  The `beq` branch at 0x478c84 targets 0x478b54 and is always taken.
  The `beq` branch at 0x478c9c targets 0x478c34 and is always taken.
  The return at 0x478c44 has v0 = 0x1.

- `miFindMaxBand` in `usr/lib/X11/dyDDX/kona.so` at 0x491cf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/kona.so`.
  Range: 0x491cf0-0x491d7c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0x491cf0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x491cfc loads 4 bytes from [a0+8] +0x4.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x491d20, `lh` at 0x491d44.
  The `beq` branch at 0x491cf4 targets 0x491d08, is taken when v0(=[a0+8]) == 0, and falls through when v0(=[a0+8]) != 0.
  The `blez` branch at 0x491d00 targets 0x491d74, is taken when a5(=[[a0+8]+4]) <= 0 (signed), and falls through when a5(=[[a0+8]+4]) > 0 (signed).
  The `beq` branch at 0x491d08 targets 0x491d3c and is always taken.
  The `blez` branch at 0x491d18 targets 0x491d54, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `beq` branch at 0x491d24 targets 0x491d10, is taken when at(?) == a6(?), and falls through when at(?) != a6(?).
  The `beq` branch at 0x491d2c targets 0x491d38, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `blez` branch at 0x491d38 targets 0x491d6c, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `blez` branch at 0x491d40 targets 0x491d60, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `beq` branch at 0x491d4c targets 0x491d10 and is always taken.
  The `beq` branch at 0x491d58 targets 0x491d28 and is always taken.
  The `beq` branch at 0x491d64 targets 0x491d2c and is always taken.
  The return at 0x491d6c has v0 = ?.
  The return at 0x491d74 has v0 = 0x0.

- `konValidateSwapbuf` in `usr/lib/X11/dyDDX/kona.so` at 0x4b69b0
  **Inferred.** Role (from name): validates a swap-buffer request; the facts do not settle the validation rule. It uses two index words at abs 0x599794 and 0x59b808 (each scaled by 4) to pick entries from a table at +0x84 of the a0 record, and it reads a serial counter (globalSerialNumber). It calls ioctl with request 0x3f4 (call at 0x4b6ae0); a result of -1 falls through to two ErrorF calls and a perror call (0x4b6b04, 0x4b6b20 and 0x4b6b30), and any other result continues at 0x4b6b40. Later it compares the words at +0x18 of two records (branch at 0x4b6bb4), calls FlushClientCaches (0x4b6c58), tests globalSerialNumber against 0x10000000 (branch at 0x4b6c84) and calls rrmSetResourceMask with a1 = 8 and the serial counter and its successor (0x4b6ccc). The facts do not show which branches lead to FlushClientCaches.
  Reviewed: 2026-11-12

- `konRecolorCursor` in `usr/lib/X11/dyDDX/kona.so` at 0x53be80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/kona.so`.
  Range: 0x53be80-0x53c08c (524 bytes).
  It occupies 524 bytes.
  The `lw` at 0x53bea8 loads 4 bytes from a0 (arg0 at entry) +0x1b4.
  The `lw` at 0x53beb0 loads 4 bytes from abs 0x599790 (konScreenPrivateIndex).
  The `lw` at 0x53bebc loads 4 bytes from ([a0+436] + ([0x599790] << 0x2)) +0x0.
  The `lw` at 0x53bec8 loads 4 bytes from [([a0+436] + ([0x599790] << 0x2))] +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x53bed8, `lw` at 0x53bfb0.
  2 such `lw` accesses load 4 bytes from (a1 + ([a0] << 0x2)) +0x14, including `lw` at 0x53bee8, `lw` at 0x53bfc0.
  The `lhu` at 0x53bf10 loads 2 bytes from a1 (arg1 at entry) +0x4.
  The `lhu` at 0x53bf24 loads 2 bytes from a1 (arg1 at entry) +0x8.
  The `lhu` at 0x53bf34 loads 2 bytes from a1 (arg1 at entry) +0x6.
  2 such `sw` accesses store 4 bytes to [[([a0+436] + ([0x599790] << 0x2))]+8] +0x2620, including `sw` at 0x53bf60, `sw` at 0x53c024.
  8 such `sw` accesses store 4 bytes to [[([a0+436] + ([0x599790] << 0x2))]+8] +0x0, including `sw` at 0x53bf6c, `sw` at 0x53bf78, `sw` at 0x53bf84.
  The `sw` at 0x53bf9c stores 4 bytes to [([a0+436] + ([0x599790] << 0x2))] +0x70.
  2 such `lw` accesses load 4 bytes from [(a1 + ([a0] << 0x2))+20] +0x10, including `lw` at 0x53bfe4, `lw` at 0x53bff4.
  The `lw` at 0x53bff8 loads 4 bytes from [[(a1 + ([a0] << 0x2))+20]+16] +0x0.
  The `lw` at 0x53c004 loads 4 bytes from [(a1 + ([a0] << 0x2))+20] +0x8.
  The `lw` at 0x53c030 loads 4 bytes from [[(a1 + ([a0] << 0x2))+20]+8] +0x400.
  The `lw` at 0x53c044 loads 4 bytes from [[(a1 + ([a0] << 0x2))+20]+8] +0x404.
  The `lw` at 0x53c058 loads 4 bytes from [[(a1 + ([a0] << 0x2))+20]+8] +0x408.
  The `lw` at 0x53c06c loads 4 bytes from [[(a1 + ([a0] << 0x2))+20]+8] +0x40c.
  The `jalr` at 0x53bfd8 calls (unnamed) [0x531f50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x57d58.
  The `bne` branch at 0x53bef0 targets 0x53bfa8, is taken when at(=[(a1 + ([a0] << 0x2))+20]) != v0(=0x1), and falls through when at(=[(a1 + ([a0] << 0x2))+20]) == v0(=0x1).
  The `bne` branch at 0x53befc targets 0x53bf0c, is taken when a4(=a2) != 0, and falls through when a4(=a2) == 0.
  The `beq` branch at 0x53bf04 targets 0x53c078 and is always taken.
  The `beq` branch at 0x53bfa0 targets 0x53c078 and is always taken.
  The `beq` branch at 0x53bfe8 targets 0x53c078, is taken when v0(=[[(a1 + ([a0] << 0x2))+20]+16]) == 0, and falls through when v0(=[[(a1 + ([a0] << 0x2))+20]+16]) != 0.
  The return at 0x53c084 has v0 = one of 0x1, [[([a0+436] + ([0x599790] << 0x2))]+8]+9760, [[(a1 + ([a0] << 0x2))+20]+16].
