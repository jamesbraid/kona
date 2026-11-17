# Readings: `usr/cpu/sysgen/IP35boot/kona.a(kona_genlock.o)`

One entry per routine, filed here from the reading batches by binary.

- `kona_voc_intr` in `usr/cpu/sysgen/IP35boot/kona.a(kona_genlock.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_genlock.o)`.
  Range: 0x0-0x20 (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `jal` at 0xc calls rrmGenlockNotify with a0=[a0]:8, a1=-0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x18 has v0 = ret(rrmGenlockNotify).
