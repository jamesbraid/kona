# Readings: `usr/cpu/sysgen/IP27boot/kona.a(kona_edtinit.o)`

One entry per routine, filed here from the reading batches by binary.

- `kona_free_bdata` in `usr/cpu/sysgen/IP27boot/kona.a(kona_edtinit.o)` at 0x234 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_edtinit.o)`.
  Range: 0x234-0x250 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x23c calls kern_free with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x248 has v0 = ret(kern_free).
