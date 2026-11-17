# Readings: `usr/cpu/sysgen/IP35boot/kona.a(kona_ioctl.o)`

One entry per routine, filed here from the reading batches by binary.

- `KONAprivate` in `usr/cpu/sysgen/IP35boot/kona.a(kona_ioctl.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_ioctl.o)`.
  Range: 0x0-0x93c (2364 bytes).
  It occupies 2364 bytes.
  The `ld` at 0x34 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x54 loads 8 bytes from table(sym(.rodata)) +0x0.
  The `lw` at 0x6c loads 4 bytes from [a0+40]:8 +0x888.
  The `jal` at 0x70 calls cmn_err_tag with a0=0x841, a1=0x5, a2=sym(.rodata), a3=sym(.rodata), a4=[[a0+40]:8+2184], a5=a2 at entry (arg2).
  The `beq` branch at 0x4c targets 0x60, is taken when at(?) >= 0x67 (unsigned), and falls through when at(?) < 0x67 (unsigned).
  The `beq` branch at 0x78 targets 0x8c and is always taken.
  The return at 0xa8 has v0 = 0x16.
  The instructions from 0x80 to 0x88 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xb0 to 0x938 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x58 uses a jump table whose successors are unresolved.
