# Readings: `usr/cpu/sysgen/IP35boot/kona.a(kona_nclops.o)`

One entry per routine, filed here from the reading batches by binary.

- `kona_nclops_destroy` in `usr/cpu/sysgen/IP35boot/kona.a(kona_nclops.o)` at 0x1b58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_nclops.o)`.
  Range: 0x1b58-0x1d48 (496 bytes).
  It occupies 496 bytes.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1b70, `lw` at 0x1b94, `lw` at 0x1c58.
  11 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1bf4, `ld` at 0x1c08, `ld` at 0x1c54.
  The `sd` at 0x1c20 stores 8 bytes to ?.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1c2c, `sw` at 0x1d24.
  The `jal` at 0x1c00 calls gfx_pio_write_32 with a0=table(0x8003c0), a1=0xe200, a2=?, a3=?.
  The `jal` at 0x1c0c calls gfx_pio_read_32 with a0=table(0x8003d0), a1=?, a2=?, a3=?.
  The `jal` at 0x1c30 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1c64 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1c78 calls gfx_pio_write_32 with a0=table(0x8003c0), a1=0x80, a2=?, a3=?.
  The `jal` at 0x1c88 calls gfx_pio_write_32 with a0=table(0x8003d0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x1c98 calls gfx_pio_write_32 with a0=table(0x8003c0), a1=0x8400, a2=?, a3=?.
  The `jal` at 0x1ca8 calls gfx_pio_write_32 with a0=table(0x8003d0), a1=0x7000, a2=?, a3=?.
  The `jal` at 0x1cb8 calls gfx_pio_write_32 with a0=table(0x8003c0), a1=0xe300, a2=?, a3=?.
  The `jal` at 0x1cc8 calls gfx_pio_write_32 with a0=table(0x8003d0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x1cd8 calls gfx_pio_write_32 with a0=table(0x8003c0), a1=0xe500, a2=?, a3=?.
  The `jal` at 0x1ce8 calls gfx_pio_write_32 with a0=table(0x8003d0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x1d18 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d28 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x1b7c targets 0x1b94, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x1ba4 targets 0x1bb4, is taken when at(?) == v1(=0x1), and falls through when at(?) != v1(=0x1).
  The `beq` branch at 0x1bac targets 0x1b88 and is always taken.
  The `blez` branch at 0x1bdc targets 0x1cf8, is taken when v0(=[sym(KonaGfxNumberOfBoards)]) <= 0 (signed), and falls through when v0(=[sym(KonaGfxNumberOfBoards)]) > 0 (signed).
  The `beq` branch at 0x1be4 targets 0x1d3c and is always taken.
  The `beq` branch at 0x1bec targets 0x1c20, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1c18 targets 0x1bec, is taken when (v0(=ret(gfx_pio_read_32)) & 0x2) == 0, and falls through when (v0(=ret(gfx_pio_read_32)) & 0x2) != 0.
  The `beq` branch at 0x1c48 targets 0x1cf8, is taken when s1(?) >= v0(=[sym(KonaGfxNumberOfBoards)]) (signed), and falls through when s1(?) < v0(=[sym(KonaGfxNumberOfBoards)]) (signed).
  The `bne` branch at 0x1c5c targets 0x1c3c, is taken when a3(?) != s5(=a1), and falls through when a3(?) == s5(=a1).
  The `beq` branch at 0x1cf0 targets 0x1bf4 and is always taken.
  The `beq` branch at 0x1d34 targets 0x1b84 and is always taken.
  The `beq` branch at 0x1d40 targets 0x1c54 and is always taken.
  The return at 0x1b8c has v0 = one of 0x0, 0x1.

- `kona_nclops_cleanup` in `usr/cpu/sysgen/IP35boot/kona.a(kona_nclops.o)` at 0x1d48 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_nclops.o)`.
  Range: 0x1d48-0x1e04 (188 bytes).
  It occupies 188 bytes.
  The `ld` at 0x1d48 loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `lh` at 0x1d4c loads 2 bytes from [a1+112]:8 +0xf8.
  The `sh` at 0x1d68 stores 2 bytes to [a1+112]:8 +0xf8.
  The `lw` at 0x1d78 loads 4 bytes from a0 (arg0 at entry) +0x158c.
  The `sw` at 0x1d90 stores 4 bytes to a0 (arg0 at entry) +0x158c.
  The `lw` at 0x1da8 loads 4 bytes from a0 (arg0 at entry) +0x157c.
  The `ld` at 0x1db0 loads 8 bytes from a0 (arg0 at entry) +0x1568.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1dcc, `lw` at 0x1ddc.
  The `sw` at 0x1de4 stores 4 bytes to ?.
  The `jal` at 0x1d70 calls mutex_spinlock with a0=a0+3520, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1d94 calls mutex_spinunlock with a0=a0+3520, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+5516]-1.
  The `jal` at 0x1dc4 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?, a5=[a0+5516].
  The `jal` at 0x1de8 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `bltz` branch at 0x1d5c targets 0x1df0, is taken when at(=[[a1+112]:8+248]:2) < 0 (signed), and falls through when at(=[[a1+112]:8+248]:2) >= 0 (signed).
  The `blez` branch at 0x1d88 targets 0x1d94, is taken when a4(=[a0+5516]) <= 0 (signed), and falls through when a4(=[a0+5516]) > 0 (signed).
  The `blez` branch at 0x1da0 targets 0x1df0, is taken when a5(=[a0+5516]) <= 0 (signed), and falls through when a5(=[a0+5516]) > 0 (signed).
  The `blez` branch at 0x1dd4 targets 0x1de8, is taken when ra(?) <= 0 (signed), and falls through when ra(?) > 0 (signed).
  The return at 0x1dfc has v0 = 0x0.
