# Readings: `usr/cpu/sysgen/IP27boot/kona.a(kona_edtinit_hip2.o)`

One entry per routine, filed here from the reading batches by binary.

- `kona_intr_set` in `usr/cpu/sysgen/IP27boot/kona.a(kona_edtinit_hip2.o)` at 0xc8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_edtinit_hip2.o)`.
  Range: 0xc8-0xd0 (8 bytes).
  It occupies 8 bytes.
  The return at 0xc8 has v0 = 0x0.

- `nic_xg_vertex_info` in `usr/cpu/sysgen/IP27boot/kona.a(kona_edtinit_hip2.o)` at 0x5ec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_edtinit_hip2.o)`.
  Range: 0x5ec-0x60c (32 bytes).
  It occupies 32 bytes.
  The `jal` at 0x5f8 calls nic_vertex_info_set with a0=sym(nic_access_mcr32), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0x604 has v0 = ret(nic_vertex_info_set).

- `kona_detach` in `usr/cpu/sysgen/IP27boot/kona.a(kona_edtinit_hip2.o)` at 0x1634 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_edtinit_hip2.o)`.
  Range: 0x1634-0x163c (8 bytes).
  It occupies 8 bytes.
  The return at 0x1634 has v0 = ?.
