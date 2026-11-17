# Readings: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`

One entry per routine, filed here from the reading batches by binary.

- `lock_dmavec` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0x0-0xc8 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0x0 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0x4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x24 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0x68 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `jal` at 0xa8 calls userdma with a0=[a0]:8, a1=?, a2=a1 at entry (arg1), a3=0x0.
  The `beq` branch at 0x10 targets 0x50, is taken when a5(=[a0+12]) == 0, and falls through when a5(=[a0+12]) != 0.
  The `beq` branch at 0x18 targets 0x58, is taken when a5(=[a0+12]) == v0(=[a0+8]), and falls through when a5(=[a0+12]) != v0(=[a0+8]).
  The `bne` branch at 0x40 targets 0x60, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x48 targets 0x90 and is always taken.
  The `bne` branch at 0x50 targets 0x20 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x58 targets 0x48, is taken when v0(=[a0+8]) == 0, and falls through when v0(=[a0+8]) != 0.
  The `bltz` branch at 0x60 targets 0x8c, is taken when s0(?) < 0 (signed), and falls through when s0(?) >= 0 (signed).
  The `bne` branch at 0x84 targets 0xa0, is taken when t9(?) < -0x1 (unsigned), and falls through when t9(?) >= -0x1 (unsigned).
  The `beq` branch at 0xb0 targets 0xc0, is taken when v0(=ret(userdma)) == 0, and falls through when v0(=ret(userdma)) != 0.
  The `beq` branch at 0xb8 targets 0x90 and is always taken.
  The `beq` branch at 0xc0 targets 0x94 and is always taken.
  The return at 0x98 has v0 = ?.

- `unlock_dmavec` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0xc8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0xc8-0x130 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xc8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xd0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xf4 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0x120 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `jal` at 0x11c calls undma with a0=[a0]:8, a1=?, a2=a1 at entry (arg1), a3=?, a4=[a0+8], a6=a0 at entry (arg0).
  The `beq` branch at 0xe0 targets 0x118, is taken when a5(=[a0+12]) == 0, and falls through when a5(=[a0+12]) != 0.
  The `beq` branch at 0xe8 targets 0x11c, is taken when a5(=[a0+12]) == a4(=[a0+8]), and falls through when a5(=[a0+12]) != a4(=[a0+8]).
  The `beq` branch at 0x110 targets 0x11c and is always taken.
  The return at 0x128 has v0 = ret(undma).

- `unlock_dmavec` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0xc8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0xc8-0x130 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xc8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xd0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xf4 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0x120 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `jal` at 0x11c calls undma with a0=[a0]:8, a1=?, a2=a1 at entry (arg1), a3=?, a4=[a0+8], a6=a0 at entry (arg0).
  The `beq` branch at 0xe0 targets 0x118, is taken when a5(=[a0+12]) == 0, and falls through when a5(=[a0+12]) != 0.
  The `beq` branch at 0xe8 targets 0x11c, is taken when a5(=[a0+12]) == a4(=[a0+8]), and falls through when a5(=[a0+12]) != a4(=[a0+8]).
  The `beq` branch at 0x110 targets 0x11c and is always taken.
  The return at 0x128 has v0 = ret(undma).

- `kona_dmaread` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x130 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0x130-0x268 (312 bytes).
  It occupies 312 bytes.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x144, `ld` at 0x1a8, `ld` at 0x244.
  The `ld` at 0x150 loads 8 bytes from a2 (arg2 at entry) +0x0.
  The `lw` at 0x158 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x160 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lw` at 0x168 loads 4 bytes from a2 (arg2 at entry) +0x10.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0x50, including `lw` at 0x1ac, `lw` at 0x248.
  3 such `sw` accesses store 4 bytes to [a0+40]:8 +0x50, including `sw` at 0x1b4, `sw` at 0x258, `sw` at 0x25c.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x98, including `lw` at 0x1b8, `lw` at 0x210.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1d8, `lw` at 0x1dc, `lw` at 0x1f8.
  2 such `ld` accesses load 8 bytes from [a0+40]:8 +0x900, including `ld` at 0x1e8, `ld` at 0x200.
  The `jal` at 0x17c calls kona_start_selectfeed with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-112, a3=a3 at entry (arg3).
  The `jal` at 0x1e4 calls gfx_pio_write_32 with a0=[[a0+40]:8+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1fc calls gfx_pio_write_32 with a0=[[a0+40]:8+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x23c calls kona_finish_selectfeed with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-80, a3=?.
  The `beq` branch at 0x188 targets 0x1a8, is taken when v0(=ret(kona_start_selectfeed)) == 0, and falls through when v0(=ret(kona_start_selectfeed)) != 0.
  The `blez` branch at 0x1c8 targets 0x224, is taken when a1(=[a2+152]) <= 0 (signed), and falls through when a1(=[a2+152]) > 0 (signed).
  The `beq` branch at 0x1f0 targets 0x210, is taken when s1(?) == s3(=-0x1), and falls through when s1(?) != s3(=-0x1).
  The `bne` branch at 0x208 targets 0x1f8, is taken when s1(?) != s3(=-0x1), and falls through when s1(?) == s3(=-0x1).
  The `bne` branch at 0x21c targets 0x1d8, is taken when s4(?) < a3(=[a2+152]) (signed), and falls through when s4(?) >= a3(=[a2+152]) (signed).
  The `beq` branch at 0x24c targets 0x25c, is taken when v0(=ret(kona_finish_selectfeed)) == 0, and falls through when v0(=ret(kona_finish_selectfeed)) != 0.
  The `beq` branch at 0x254 targets 0x190 and is always taken.
  The `beq` branch at 0x260 targets 0x190 and is always taken.
  The return at 0x1a0 has v0 = one of ret(kona_start_selectfeed), ret(kona_finish_selectfeed), 0x0.

- `kona_dmawrite` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x268 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0x268-0x440 (472 bytes).
  It occupies 472 bytes.
  The `ld` at 0x270 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x278 loads 8 bytes from a2 (arg2 at entry) +0x0.
  The `lw` at 0x290 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `ld` at 0x2d0 loads 8 bytes from ?.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0x888, including `lw` at 0x2ec, `lw` at 0x3c4.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8c, including `lw` at 0x310, `lw` at 0x35c.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x324, `lw` at 0x328, `lw` at 0x344.
  2 such `ld` accesses load 8 bytes from [a0+40]:8 +0x900, including `ld` at 0x334, `ld` at 0x34c.
  The `jal` at 0x2c0 calls lock_dmavec with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2d8 calls kona_mapram_pagesizeshiftof with a0=?, a1=ret(lock_dmavec), a2=?, a3=?.
  The `jal` at 0x2f0 calls alloc_gfx_io_space with a0=[[a0+40]:8+2184], a1=?, a2=ret(lock_dmavec), a3=ret(kona_mapram_pagesizeshiftof).
  The `jal` at 0x330 calls gfx_pio_write_32 with a0=[[a0+40]:8+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x348 calls gfx_pio_write_32 with a0=[[a0+40]:8+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x3b0 calls kona_idma with a0=[a0+40]:8, a1=?, a2=?, a3=?, a6=0x1.
  The `jal` at 0x3bc calls psema with a0=[a0+40]:8+5176, a1=0x19, a2=?, a3=?.
  The `jal` at 0x3c8 calls free_gfx_io_space with a0=[[a0+40]:8+2184], a1=?, a2=?, a3=?.
  The `jal` at 0x3d4 calls unlock_dmavec with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x3ec calls valusema with a0=[a0+40]:8+56, a1=?, a2=?, a3=?.
  The `jal` at 0x3fc calls force_resched with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x2a0 targets 0x310, is taken when s4(=[a2+8]) <= 0 (signed), and falls through when s4(=[a2+8]) > 0 (signed).
  The `bltz` branch at 0x2c8 targets 0x438, is taken when v0(=ret(lock_dmavec)) < 0 (signed), and falls through when v0(=ret(lock_dmavec)) >= 0 (signed).
  The `bne` branch at 0x300 targets 0x2ac, is taken when s1(?) < s4(=[a2+8]) (signed), and falls through when s1(?) >= s4(=[a2+8]) (signed).
  The `blez` branch at 0x31c targets 0x370, is taken when t9(=[a2+140]) <= 0 (signed), and falls through when t9(=[a2+140]) > 0 (signed).
  The `beq` branch at 0x33c targets 0x35c, is taken when ra(?) == s3(=-0x1), and falls through when ra(?) != s3(=-0x1).
  The `bne` branch at 0x354 targets 0x344, is taken when s1(?) != s3(=-0x1), and falls through when s1(?) == s3(=-0x1).
  The `bne` branch at 0x368 targets 0x324, is taken when s6(?) < at(=[a2+140]) (signed), and falls through when s6(?) >= at(=[a2+140]) (signed).
  The `blez` branch at 0x370 targets 0x3ec, is taken when s4(=[a2+8]) <= 0 (signed), and falls through when s4(=[a2+8]) > 0 (signed).
  The `bne` branch at 0x3e4 targets 0x388, is taken when s1(?) < s4(=[a2+8]) (signed), and falls through when s1(?) >= s4(=[a2+8]) (signed).
  The `beq` branch at 0x3f4 targets 0x408, is taken when v0(=ret(valusema)) == 0, and falls through when v0(=ret(valusema)) != 0.
  The `beq` branch at 0x438 targets 0x408 and is always taken.
  The return at 0x430 has v0 = one of 0x0, ?.

- `kona_idma_timeout` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x440 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0x440-0x4cc (140 bytes).
  It occupies 140 bytes.
  The `ld` at 0x460 loads 8 bytes from a0 (arg0 at entry) +0x1448.
  The `lw` at 0x48c loads 4 bytes from a0 (arg0 at entry) +0x1458.
  The `ld` at 0x494 loads 8 bytes from a0 (arg0 at entry) +0x1450.
  The `lw` at 0x4a0 loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `sd` at 0x4c0 stores 8 bytes to a0 (arg0 at entry) +0x1448.
  The `jal` at 0x458 calls mutex_spinlock with a0=a0+2576, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x474 calls mutex_spinunlock with a0=a0+2576, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x4a4 calls cmn_err_tag with a0=0x84a, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184], a5=[a0+5200]:8, a6=[a0+5208].
  The `jal` at 0x4b0 calls kona_die with a0=a0 at entry (arg0), a1=0x4, a2=?, a3=?.
  The `jal` at 0x4bc calls vsema with a0=a0+5176, a1=?, a2=?, a3=?.
  The `bne` branch at 0x464 targets 0x48c, is taken when at(=[a0+5192]:8) != 0, and falls through when at(=[a0+5192]:8) == 0.
  The `beq` branch at 0x4c4 targets 0x46c and is always taken.
  The return at 0x484 has v0 = ret(mutex_spinunlock).

- `kona_idma_timeout` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x440 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0x440-0x4cc (140 bytes).
  It occupies 140 bytes.
  The `ld` at 0x460 loads 8 bytes from a0 (arg0 at entry) +0x1448.
  The `lw` at 0x48c loads 4 bytes from a0 (arg0 at entry) +0x1458.
  The `ld` at 0x494 loads 8 bytes from a0 (arg0 at entry) +0x1450.
  The `lw` at 0x4a0 loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `sd` at 0x4c0 stores 8 bytes to a0 (arg0 at entry) +0x1448.
  The `jal` at 0x458 calls mutex_spinlock with a0=a0+2576, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x474 calls mutex_spinunlock with a0=a0+2576, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x4a4 calls cmn_err_tag with a0=0x84a, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184], a5=[a0+5200]:8, a6=[a0+5208].
  The `jal` at 0x4b0 calls kona_die with a0=a0 at entry (arg0), a1=0x4, a2=?, a3=?.
  The `jal` at 0x4bc calls vsema with a0=a0+5176, a1=?, a2=?, a3=?.
  The `bne` branch at 0x464 targets 0x48c, is taken when at(=[a0+5192]:8) != 0, and falls through when at(=[a0+5192]:8) == 0.
  The `beq` branch at 0x4c4 targets 0x46c and is always taken.
  The return at 0x484 has v0 = ret(mutex_spinunlock).

- `kona_idma` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x4cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0x4cc-0x7c0 (756 bytes).
  It occupies 756 bytes.
  The `sw` at 0x51c stores 4 bytes to a0 (arg0 at entry) +0x1458.
  The `sd` at 0x520 stores 8 bytes to a0 (arg0 at entry) +0x1450.
  The `sd` at 0x528 stores 8 bytes to a0 (arg0 at entry) +0x1448.
  12 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8e0, including `ld` at 0x534, `ld` at 0x548, `ld` at 0x58c.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x938, including `sw` at 0x554, `sw` at 0x5ac, `sw` at 0x654.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x948, including `ld` at 0x564, `ld` at 0x5b8, `ld` at 0x660.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x938, including `lw` at 0x56c, `lw` at 0x5bc, `lw` at 0x668.
  7 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x900, including `ld` at 0x580, `ld` at 0x5cc, `ld` at 0x5dc.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x48, including `ld` at 0x688, `ld` at 0x6dc, `ld` at 0x6f0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c8, including `lw` at 0x698, `lw` at 0x700, `lw` at 0x768.
  The `jal` at 0x514 calls kona_timeout with a0=sym(kona_idma_timeout), a1=a0 at entry (arg0), a2=[sym(kona_idma_timeout_value)], a3=sym(splhi).
  The `jal` at 0x530 calls gfx_flow_flush_my_wg with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x538 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x544 calls gfx_flow_am_i_attached with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x558 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x570 calls gfx_pio_write_32 with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=?, a3=?.
  The `jal` at 0x57c calls gfx_pio_write_32 with a0=[a0+2304]:8, a1=0x1eb, a2=?, a3=?.
  The `jal` at 0x588 calls gfx_flow_flush_my_wg with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x590 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x59c calls gfx_flow_am_i_attached with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x5b0 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x5c0 calls gfx_pio_write_32 with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=?, a3=?.
  The `jal` at 0x5d0 calls gfx_pio_write_32 with a0=[a0+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x5e4 calls gfx_pio_write_32 with a0=[a0+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x5f4 calls gfx_pio_write_32 with a0=[a0+2304]:8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jal` at 0x600 calls gfx_pio_write_32 with a0=[a0+2304]:8, a1=a3 at entry (arg3), a2=?, a3=?.
  The `jal` at 0x60c calls gfx_pio_write_32 with a0=[a0+2304]:8, a1=a4 at entry (arg4), a2=?, a3=?.
  The `jal` at 0x618 calls gfx_pio_write_32 with a0=[a0+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x624 calls gfx_flow_flush_my_wg with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x62c calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x638 calls gfx_flow_am_i_attached with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x658 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x66c calls gfx_pio_write_32 with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=?, a3=?.
  The `jal` at 0x68c calls gfx_flow_attach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x6a4 calls gfx_pio_write_32 with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x6ac calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x6b8 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x6c0 calls kona_flow_await_returned_credits with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x6c8 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x6d8 calls gfx_flow_attach_me_finish with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x6e0 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jal` at 0x6f4 calls gfx_flow_attach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x70c calls gfx_pio_write_32 with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x714 calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x720 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x728 calls kona_flow_await_returned_credits with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x730 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x740 calls gfx_flow_attach_me_finish with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x748 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jal` at 0x75c calls gfx_flow_attach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x774 calls gfx_pio_write_32 with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x77c calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x788 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x790 calls kona_flow_await_returned_credits with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x798 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x7a8 calls gfx_flow_attach_me_finish with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x7b0 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `beq` branch at 0x500 targets 0x52c, is taken when a6 == 0, and falls through when a6 != 0.
  The `beq` branch at 0x54c targets 0x688, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x5a4 targets 0x6f0, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x640 targets 0x758, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x6e8 targets 0x554 and is always taken.
  The `beq` branch at 0x750 targets 0x5ac and is always taken.
  The `beq` branch at 0x7b8 targets 0x648 and is always taken.
  The return at 0x680 has v0 = ret(gfx_pio_write_32).

- `kona_dmapool_update_pipe` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x7c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0x7c0-0xa44 (644 bytes).
  It occupies 644 bytes.
  12 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8e0, including `ld` at 0x7e0, `ld` at 0x7f4, `ld` at 0x83c.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x938, including `sw` at 0x804, `sw` at 0x85c, `sw` at 0x8d8.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x948, including `ld` at 0x814, `ld` at 0x868, `ld` at 0x8e4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x938, including `lw` at 0x81c, `lw` at 0x86c, `lw` at 0x8ec.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x900, including `ld` at 0x830, `ld` at 0x880, `ld` at 0x894.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x10, including `ld` at 0x878, `ld` at 0x88c.
  The `lw` at 0x8a4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x48, including `ld` at 0x90c, `ld` at 0x960, `ld` at 0x974.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c8, including `lw` at 0x91c, `lw` at 0x984, `lw` at 0x9ec.
  The `jal` at 0x7dc calls gfx_flow_flush_my_wg with a0=[a0+2272]:8, a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x7e4 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x7f0 calls gfx_flow_am_i_attached with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x808 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x820 calls gfx_pio_write_32 with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=?, a3=?.
  The `jal` at 0x82c calls gfx_pio_write_32 with a0=[a0+2304]:8, a1=0x1ed, a2=?, a3=?.
  The `jal` at 0x838 calls gfx_flow_flush_my_wg with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x840 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x84c calls gfx_flow_am_i_attached with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x860 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x870 calls gfx_pio_write_32 with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=?, a3=?.
  The `jal` at 0x884 calls gfx_pio_write_32 with a0=[a0+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x89c calls gfx_pio_write_32 with a0=[a0+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x8a8 calls gfx_pio_write_32 with a0=[a0+2304]:8, a1=[a1+8], a2=?, a3=?.
  The `jal` at 0x8b4 calls gfx_flow_flush_my_wg with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x8bc calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x8c8 calls gfx_flow_am_i_attached with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x8dc calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x8f0 calls gfx_pio_write_32 with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=?, a3=?.
  The `jal` at 0x910 calls gfx_flow_attach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x928 calls gfx_pio_write_32 with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x930 calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x93c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x944 calls kona_flow_await_returned_credits with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x94c calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x95c calls gfx_flow_attach_me_finish with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x964 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jal` at 0x978 calls gfx_flow_attach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x990 calls gfx_pio_write_32 with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x998 calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9a4 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x9ac calls kona_flow_await_returned_credits with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x9b4 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9c4 calls gfx_flow_attach_me_finish with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x9cc calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jal` at 0x9e0 calls gfx_flow_attach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x9f8 calls gfx_pio_write_32 with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0xa00 calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa0c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xa14 calls kona_flow_await_returned_credits with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa1c calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa2c calls gfx_flow_attach_me_finish with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xa34 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `beq` branch at 0x7f8 targets 0x90c, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x854 targets 0x974, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x8d0 targets 0x9dc, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x96c targets 0x804 and is always taken.
  The `beq` branch at 0x9d4 targets 0x85c and is always taken.
  The `beq` branch at 0xa3c targets 0x8d8 and is always taken.
  The return at 0x904 has v0 = ret(gfx_pio_write_32).

- `kona_dmapool_update_pipe` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x7c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0x7c0-0xa44 (644 bytes).
  It occupies 644 bytes.
  12 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8e0, including `ld` at 0x7e0, `ld` at 0x7f4, `ld` at 0x83c.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x938, including `sw` at 0x804, `sw` at 0x85c, `sw` at 0x8d8.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x948, including `ld` at 0x814, `ld` at 0x868, `ld` at 0x8e4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x938, including `lw` at 0x81c, `lw` at 0x86c, `lw` at 0x8ec.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x900, including `ld` at 0x830, `ld` at 0x880, `ld` at 0x894.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x10, including `ld` at 0x878, `ld` at 0x88c.
  The `lw` at 0x8a4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x48, including `ld` at 0x90c, `ld` at 0x960, `ld` at 0x974.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c8, including `lw` at 0x91c, `lw` at 0x984, `lw` at 0x9ec.
  The `jal` at 0x7dc calls gfx_flow_flush_my_wg with a0=[a0+2272]:8, a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x7e4 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x7f0 calls gfx_flow_am_i_attached with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x808 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x820 calls gfx_pio_write_32 with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=?, a3=?.
  The `jal` at 0x82c calls gfx_pio_write_32 with a0=[a0+2304]:8, a1=0x1ed, a2=?, a3=?.
  The `jal` at 0x838 calls gfx_flow_flush_my_wg with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x840 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x84c calls gfx_flow_am_i_attached with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x860 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x870 calls gfx_pio_write_32 with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=?, a3=?.
  The `jal` at 0x884 calls gfx_pio_write_32 with a0=[a0+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x89c calls gfx_pio_write_32 with a0=[a0+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x8a8 calls gfx_pio_write_32 with a0=[a0+2304]:8, a1=[a1+8], a2=?, a3=?.
  The `jal` at 0x8b4 calls gfx_flow_flush_my_wg with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x8bc calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x8c8 calls gfx_flow_am_i_attached with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x8dc calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x8f0 calls gfx_pio_write_32 with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=?, a3=?.
  The `jal` at 0x910 calls gfx_flow_attach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x928 calls gfx_pio_write_32 with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x930 calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x93c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x944 calls kona_flow_await_returned_credits with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x94c calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x95c calls gfx_flow_attach_me_finish with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x964 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jal` at 0x978 calls gfx_flow_attach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x990 calls gfx_pio_write_32 with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x998 calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9a4 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x9ac calls kona_flow_await_returned_credits with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x9b4 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9c4 calls gfx_flow_attach_me_finish with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x9cc calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jal` at 0x9e0 calls gfx_flow_attach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x9f8 calls gfx_pio_write_32 with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0xa00 calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa0c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xa14 calls kona_flow_await_returned_credits with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa1c calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa2c calls gfx_flow_attach_me_finish with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xa34 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `beq` branch at 0x7f8 targets 0x90c, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x854 targets 0x974, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x8d0 targets 0x9dc, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x96c targets 0x804 and is always taken.
  The `beq` branch at 0x9d4 targets 0x85c and is always taken.
  The `beq` branch at 0xa3c targets 0x8d8 and is always taken.
  The return at 0x904 has v0 = ret(gfx_pio_write_32).

- `kona_dmapool` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0xa44 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0xa44-0xc2c (488 bytes).
  It occupies 488 bytes.
  The `ld` at 0xa44 loads 8 bytes from a1 (arg1 at entry) +0x70.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0xa50, `ld` at 0xae4, `ld` at 0xb68.
  The `lw` at 0xa54 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `ld` at 0xa8c loads 8 bytes from [a1+112]:8 +0xf0.
  The `lw` at 0xaa4 loads 4 bytes from a2 (arg2 at entry) +0x10.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0xabc, `ld` at 0xb04, `ld` at 0xb14.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0x50, including `lw` at 0xae8, `lw` at 0xb6c.
  2 such `sw` accesses store 4 bytes to [a0+40]:8 +0x50, including `sw` at 0xaf0, `sw` at 0xb7c.
  The `lw` at 0xaf4 loads 4 bytes from ?.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0x888, including `lw` at 0xb1c, `lw` at 0xc08.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xb20, `sw` at 0xbf4, `sw` at 0xc18.
  The `ld` at 0xb28 loads 8 bytes from a2 (arg2 at entry) +0x0.
  The `lw` at 0xb38 loads 4 bytes from a2 (arg2 at entry) +0x8.
  2 such `ld` accesses load 8 bytes from [a0+40]:8 +0x900, including `ld` at 0xb54, `ld` at 0xb5c.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0xbfc, `sd` at 0xc0c.
  The `jal` at 0xad4 calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=[a2+16], a2=?, a3=a3 at entry (arg3), a6=[a2+12].
  The `jal` at 0xb0c calls undma with a0=?, a1=?, a2=0x0, a3=[[a0+40]:8+80]+1, a4=[a0+40]:8, a5=a2 at entry (arg2).
  The `jal` at 0xb18 calls free_gfx_io_space with a0=[[a0+40]:8+2184], a1=?, a2=?, a3=?.
  The `jal` at 0xb44 calls kona_dmapool_update_pipe with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xb50 calls gfx_pio_write_32 with a0=[[a0+40]:8+2304]:8, a1=0x172, a2=?, a3=?.
  The `jal` at 0xb60 calls gfx_pio_write_32 with a0=[[a0+40]:8+2304]:8, a1=0x0, a2=?, a3=?.
  The `jal` at 0xbd4 calls userdma with a0=[a2]:8, a1=?, a2=0x0, a3=0x0, a5=[a2+8].
  The `jal` at 0xbe8 calls kona_mapram_pagesizeshiftof with a0=[a2]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xc04 calls alloc_gfx_io_space with a0=[[a0+40]:8+2184], a1=[a2]:8, a2=?, a3=ret(kona_mapram_pagesizeshiftof).
  The `beq` branch at 0xa68 targets 0xa8c, is taken when a6(=[a2+12]) == 0, and falls through when a6(=[a2+12]) != 0.
  The `beq` branch at 0xaa8 targets 0xb80, is taken when a7(=[[a1+112]:8+240]:8) == 0, and falls through when a7(=[[a1+112]:8+240]:8) != 0.
  The `beq` branch at 0xab4 targets 0xb90, is taken when a1(=[a2+16]) == 0, and falls through when a1(=[a2+16]) != 0.
  The `bne` branch at 0xac0 targets 0xb88, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0xac8 targets 0xb88, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bltz` branch at 0xadc targets 0xc1c, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `beq` branch at 0xaf8 targets 0xb28, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xb34 targets 0xbac, is taken when (a0(=[a2]:8) & 0x3fff) == 0, and falls through when (a0(=[a2]:8) & 0x3fff) != 0.
  The `beq` branch at 0xb78 targets 0xa74 and is always taken.
  The `beq` branch at 0xb80 targets 0xad0, is taken when a1(=[a2+16]) == 0, and falls through when a1(=[a2+16]) != 0.
  The `beq` branch at 0xb88 targets 0xa74 and is always taken.
  The `beq` branch at 0xb90 targets 0xad0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xb9c targets 0xb88, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0xba4 targets 0xad0 and is always taken.
  The `bne` branch at 0xbb8 targets 0xb3c, is taken when (a1(?) & 0x3fff) != 0, and falls through when (a1(?) & 0x3fff) == 0.
  The `beq` branch at 0xbc8 targets 0xc24, is taken when a5(=[a2+8]) == 0, and falls through when a5(=[a2+8]) != 0.
  The `bne` branch at 0xbdc targets 0xb40, is taken when v0(=ret(userdma)) != 0, and falls through when v0(=ret(userdma)) == 0.
  The `beq` branch at 0xc14 targets 0xb40 and is always taken.
  The `beq` branch at 0xc1c targets 0xa74 and is always taken.
  The `beq` branch at 0xc24 targets 0xb40 and is always taken.
  The return at 0xa84 has v0 = one of 0x2, ?, 0x22, 0xe.

- `kona_dmapool_update` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0xc2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0xc2c-0xc78 (76 bytes).
  It occupies 76 bytes.
  The `ld` at 0xc2c loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `ld` at 0xc30 loads 8 bytes from [a1+112]:8 +0xf0.
  The `lw` at 0xc54 loads 4 bytes from [[a1+112]:8+240]:8 +0x50.
  The `jal` at 0xc64 calls kona_dmapool_update_pipe with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=[[a1+112]:8+240]:8, a4=-0x48, a5=[[a1+112]:8+240]:8+72, a6=[a1+112]:8.
  The `beq` branch at 0xc44 targets 0xc64, is taken when a3(=[[a1+112]:8+240]:8) == 0, and falls through when a3(=[[a1+112]:8+240]:8) != 0.
  The `beq` branch at 0xc4c targets 0xc64, is taken when a3(=[[a1+112]:8+240]:8) == a4(=-0x48), and falls through when a3(=[[a1+112]:8+240]:8) != a4(=-0x48).
  The `beq` branch at 0xc58 targets 0xc64, is taken when at(=[[[a1+112]:8+240]:8+80]) == 0, and falls through when at(=[[[a1+112]:8+240]:8+80]) != 0.
  The return at 0xc70 has v0 = ret(kona_dmapool_update_pipe).

- `kona_dmapool_update` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0xc2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0xc2c-0xc78 (76 bytes).
  It occupies 76 bytes.
  The `ld` at 0xc2c loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `ld` at 0xc30 loads 8 bytes from [a1+112]:8 +0xf0.
  The `lw` at 0xc54 loads 4 bytes from [[a1+112]:8+240]:8 +0x50.
  The `jal` at 0xc64 calls kona_dmapool_update_pipe with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=[[a1+112]:8+240]:8, a4=-0x48, a5=[[a1+112]:8+240]:8+72, a6=[a1+112]:8.
  The `beq` branch at 0xc44 targets 0xc64, is taken when a3(=[[a1+112]:8+240]:8) == 0, and falls through when a3(=[[a1+112]:8+240]:8) != 0.
  The `beq` branch at 0xc4c targets 0xc64, is taken when a3(=[[a1+112]:8+240]:8) == a4(=-0x48), and falls through when a3(=[[a1+112]:8+240]:8) != a4(=-0x48).
  The `beq` branch at 0xc58 targets 0xc64, is taken when at(=[[[a1+112]:8+240]:8+80]) == 0, and falls through when at(=[[[a1+112]:8+240]:8+80]) != 0.
  The return at 0xc70 has v0 = ret(kona_dmapool_update_pipe).

- `kona_dmapool_destroy` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0xc78 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0xc78-0xcf4 (124 bytes).
  It occupies 124 bytes.
  The `ld` at 0xc78 loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `ld` at 0xc7c loads 8 bytes from [a1+112]:8 +0xf0.
  The `lw` at 0xc9c loads 4 bytes from ?.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xcb0, `ld` at 0xcc4.
  The `lw` at 0xccc loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `sw` at 0xcd4 stores 4 bytes to ?.
  The `jal` at 0xcb8 calls undma with a0=?, a1=?, a2=0x0, a3=a3 at entry (arg3), a5=[a1+112]:8.
  The `jal` at 0xcc8 calls free_gfx_io_space with a0=[a0+2184], a1=?, a2=?, a3=?.
  The `beq` branch at 0xc84 targets 0xce4, is taken when a4(=[[a1+112]:8+240]:8) == 0, and falls through when a4(=[[a1+112]:8+240]:8) != 0.
  The `beq` branch at 0xc8c targets 0xcec, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0xc94 targets 0xcd8, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xca4 targets 0xcd8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0xce4 targets 0xc94, is taken when a2 != 0, and falls through when a2 == 0.
  The `beq` branch at 0xcec targets 0xc94 and is always taken.
  The return at 0xcdc has v0 = one of ?, ret(free_gfx_io_space).

- `kona_start_selectfeed` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0xcf4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0xcf4-0x10b4 (960 bytes).
  It occupies 960 bytes.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0xcfc, `ld` at 0xd94, `ld` at 0xdc8.
  The `ld` at 0xd14 loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `ld` at 0xd18 loads 8 bytes from [a1+112]:8 +0x68.
  The `ld` at 0xd2c loads 8 bytes from a2 (arg2 at entry) +0x0.
  The `sd` at 0xd30 stores 8 bytes to [a1+112]:8 +0x20.
  The `lw` at 0xd34 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `sw` at 0xd38 stores 4 bytes to [a1+112]:8 +0x28.
  The `lw` at 0xd3c loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `sw` at 0xd40 stores 4 bytes to [a1+112]:8 +0x2c.
  The `lw` at 0xd44 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `sw` at 0xd48 stores 4 bytes to [a1+112]:8 +0x30.
  The `lw` at 0xd4c loads 4 bytes from a2 (arg2 at entry) +0x18.
  The `sw` at 0xd50 stores 4 bytes to [a1+112]:8 +0x44.
  The `sw` at 0xd58 stores 4 bytes to [a1+112]:8 +0x38.
  3 such `sw` accesses store 4 bytes to [a1+112]:8 +0x3c, including `sw` at 0xd74, `sw` at 0xd78, `sw` at 0xf68.
  The `lw` at 0xd88 loads 4 bytes from [a1+112]:8 +0x3c.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0x50, including `lw` at 0xd98, `lw` at 0xdcc.
  2 such `sw` accesses store 4 bytes to [a0+40]:8 +0x50, including `sw` at 0xda0, `sw` at 0xdd4.
  2 such `lwu` accesses load 4 bytes from [a1+112]:8 +0x3c, including `lwu` at 0xda4, `lwu` at 0xdb0.
  2 such `ld` accesses load 8 bytes from [a1+112]:8 +0x20, including `ld` at 0xdac, `ld` at 0xdb4.
  The `lw` at 0xdc0 loads 4 bytes from [a0+40]:8 +0x888.
  2 such `sd` accesses store 8 bytes to [a1+112]:8 +0x48, including `sd` at 0xdc4, `sd` at 0xf64.
  The `ld` at 0xde0 loads 8 bytes from [a1+112]:8 +0x48.
  The `sd` at 0xde4 stores 8 bytes to [a1+112]:8 +0x68.
  12 such `ld` accesses load 8 bytes from [a0+40]:8 +0x8e0, including `ld` at 0xdf0, `ld` at 0xe20, `ld` at 0xe64.
  4 such `sw` accesses store 4 bytes to [a0+40]:8 +0x938, including `sw` at 0xe2c, `sw` at 0xe88, `sw` at 0xf14.
  6 such `ld` accesses load 8 bytes from [a0+40]:8 +0x948, including `ld` at 0xe3c, `ld` at 0xe94, `ld` at 0xf20.
  3 such `lw` accesses load 4 bytes from [a0+40]:8 +0x938, including `lw` at 0xe44, `lw` at 0xe98, `lw` at 0xf24.
  7 such `ld` accesses load 8 bytes from [a0+40]:8 +0x900, including `ld` at 0xe58, `ld` at 0xea4, `ld` at 0xeb0.
  The `lw` at 0xebc loads 4 bytes from [a1+112]:8 +0x28.
  The `lw` at 0xec8 loads 4 bytes from [a1+112]:8 +0x2c.
  The `lw` at 0xed4 loads 4 bytes from [a1+112]:8 +0x30.
  The `lw` at 0xee0 loads 4 bytes from [a1+112]:8 +0x38.
  6 such `ld` accesses load 8 bytes from [a0+40]:8 +0x48, including `ld` at 0xf7c, `ld` at 0xfc4, `ld` at 0xfe4.
  3 such `lw` accesses load 4 bytes from [a0+40]:8 +0x8c8, including `lw` at 0xf8c, `lw` at 0xff4, `lw` at 0x105c.
  The `jal` at 0xd60 calls lock_dmavec with a0=[a1+112]:8+32, a1=0x1, a2=a2 at entry (arg2), a3=[a2+12], a4=[a2]:8.
  The `jal` at 0xd7c calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xda8 calls kona_mapram_pagesizeshiftof with a0=[[a1+112]:8+32]:8, a1=[[a1+112]:8+60], a2=?, a3=?, a5=[[a0+40]:8+80]+1, a6=[a0+40]:8.
  The `jal` at 0xdbc calls alloc_gfx_io_space with a0=[[a0+40]:8+2184], a1=[[a1+112]:8+32]:8, a2=[[a1+112]:8+60], a3=ret(kona_mapram_pagesizeshiftof).
  The `jal` at 0xdd8 calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xe08 calls gfx_flow_flush_my_wg with a0=[[a0+40]:8+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0xe10 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xe1c calls gfx_flow_am_i_attached with a0=[[a0+40]:8+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xe30 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xe48 calls gfx_pio_write_32 with a0=[[a0+40]:8+2376]:8+0xc00108, a1=[[a0+40]:8+2360], a2=?, a3=?.
  The `jal` at 0xe54 calls gfx_pio_write_32 with a0=[[a0+40]:8+2304]:8, a1=0x1f5, a2=?, a3=?.
  The `jal` at 0xe60 calls gfx_flow_flush_my_wg with a0=[[a0+40]:8+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0xe68 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xe78 calls gfx_flow_am_i_attached with a0=[[a0+40]:8+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xe8c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xe9c calls gfx_pio_write_32 with a0=[[a0+40]:8+2376]:8+0xc00108, a1=[[a0+40]:8+2360], a2=?, a3=?.
  The `jal` at 0xea8 calls gfx_pio_write_32 with a0=[[a0+40]:8+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xeb4 calls gfx_pio_write_32 with a0=[[a0+40]:8+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xec0 calls gfx_pio_write_32 with a0=[[a0+40]:8+2304]:8, a1=[[a1+112]:8+40], a2=?, a3=?.
  The `jal` at 0xecc calls gfx_pio_write_32 with a0=[[a0+40]:8+2304]:8, a1=[[a1+112]:8+44], a2=?, a3=?.
  The `jal` at 0xed8 calls gfx_pio_write_32 with a0=[[a0+40]:8+2304]:8, a1=[[a1+112]:8+48], a2=?, a3=?.
  The `jal` at 0xee4 calls gfx_pio_write_32 with a0=[[a0+40]:8+2304]:8, a1=[[a1+112]:8+56], a2=?, a3=?.
  The `jal` at 0xef0 calls gfx_flow_flush_my_wg with a0=[[a0+40]:8+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0xef8 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf04 calls gfx_flow_am_i_attached with a0=[[a0+40]:8+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xf18 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xf28 calls gfx_pio_write_32 with a0=[[a0+40]:8+2376]:8+0xc00108, a1=[[a0+40]:8+2360], a2=?, a3=?.
  The `jal` at 0xf5c calls unlock_dmavec with a0=[a1+112]:8+32, a1=0x1, a2=?, a3=?.
  The `jal` at 0xf80 calls gfx_flow_attach_me with a0=[[a0+40]:8+2272]:8, a1=[[a0+40]:8+72]:8, a2=?, a3=?.
  The `jal` at 0xf98 calls gfx_pio_write_32 with a0=[[a0+40]:8+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0xfa0 calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfac calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xfb4 calls kona_flow_await_returned_credits with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xfbc calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfcc calls gfx_flow_attach_me_finish with a0=[[a0+40]:8+2272]:8, a1=[[a0+40]:8+72]:8, a2=?, a3=?.
  The `jal` at 0xfd4 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jal` at 0xfe8 calls gfx_flow_attach_me with a0=[[a0+40]:8+2272]:8, a1=[[a0+40]:8+72]:8, a2=?, a3=?.
  The `jal` at 0x1000 calls gfx_pio_write_32 with a0=[[a0+40]:8+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x1008 calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1014 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x101c calls kona_flow_await_returned_credits with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1024 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1034 calls gfx_flow_attach_me_finish with a0=[[a0+40]:8+2272]:8, a1=[[a0+40]:8+72]:8, a2=?, a3=?.
  The `jal` at 0x103c calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jal` at 0x1050 calls gfx_flow_attach_me with a0=[[a0+40]:8+2272]:8, a1=[[a0+40]:8+72]:8, a2=?, a3=?.
  The `jal` at 0x1068 calls gfx_pio_write_32 with a0=[[a0+40]:8+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x1070 calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x107c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x1084 calls kona_flow_await_returned_credits with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x108c calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x109c calls gfx_flow_attach_me_finish with a0=[[a0+40]:8+2272]:8, a1=[[a0+40]:8+72]:8, a2=?, a3=?.
  The `jal` at 0x10a4 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd0c targets 0xf4c, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0xd1c targets 0xd2c, is taken when at(=[[a1+112]:8+104]:8) == 0, and falls through when at(=[[a1+112]:8+104]:8) != 0.
  The `beq` branch at 0xd24 targets 0xf34 and is always taken.
  The `beq` branch at 0xd54 targets 0xd78, is taken when a0(=[a2+8]) == 0, and falls through when a0(=[a2+8]) != 0.
  The `bltz` branch at 0xd68 targets 0xf74, is taken when v0(=ret(lock_dmavec)) < 0 (signed), and falls through when v0(=ret(lock_dmavec)) >= 0 (signed).
  The `beq` branch at 0xd70 targets 0xd7c and is always taken.
  The `bltz` branch at 0xd84 targets 0xf54, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `beq` branch at 0xd8c targets 0xdd8, is taken when a0(=[[a1+112]:8+60]) == 0, and falls through when a0(=[[a1+112]:8+60]) != 0.
  The `beq` branch at 0xe24 targets 0xf7c, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0xe80 targets 0xfe4, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0xf0c targets 0x104c, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0xf4c targets 0xf34 and is always taken.
  The `beq` branch at 0xf54 targets 0xf6c, is taken when a0(=[[a1+112]:8+60]) == 0, and falls through when a0(=[[a1+112]:8+60]) != 0.
  The `beq` branch at 0xf6c targets 0xf34 and is always taken.
  The `beq` branch at 0xf74 targets 0xf34 and is always taken.
  The `beq` branch at 0xfdc targets 0xe2c and is always taken.
  The `beq` branch at 0x1044 targets 0xe88 and is always taken.
  The `beq` branch at 0x10ac targets 0xf18 and is always taken.
  The return at 0xf44 has v0 = one of 0x10, 0x0, 0x2, 0xe, ?.

- `kona_selectfeed_timeout` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x10b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0x10b4-0x1158 (164 bytes).
  It occupies 164 bytes.
  The `ld` at 0x10dc loads 8 bytes from a1 (arg1 at entry) +0x40.
  The `lw` at 0x1110 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `ld` at 0x1118 loads 8 bytes from a1 (arg1 at entry) +0x28.
  The `lw` at 0x1124 loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `sw` at 0x1140 stores 4 bytes to a1 (arg1 at entry) +0x20.
  The `sd` at 0x114c stores 8 bytes to a1 (arg1 at entry) +0x40.
  The `jal` at 0x10d4 calls mutex_spinlock with a0=a0+2576, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10f4 calls mutex_spinunlock with a0=a0+2576, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1128 calls cmn_err_tag with a0=0x84b, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184], a5=[a1+40]:8, a6=[a1+8].
  The `jal` at 0x1134 calls kona_die with a0=a0 at entry (arg0), a1=0x5, a2=?, a3=?.
  The `jal` at 0x1148 calls vsema with a0=a1+48, a1=?, a2=?, a3=-0x1.
  The `bne` branch at 0x10e0 targets 0x110c, is taken when at(=[a1+64]:8) != 0, and falls through when at(=[a1+64]:8) == 0.
  The `beq` branch at 0x1150 targets 0x10e8 and is always taken.
  The return at 0x1104 has v0 = ret(mutex_spinunlock).

- `kona_selectfeed_timeout` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x10b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0x10b4-0x1158 (164 bytes).
  It occupies 164 bytes.
  The `ld` at 0x10dc loads 8 bytes from a1 (arg1 at entry) +0x40.
  The `lw` at 0x1110 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `ld` at 0x1118 loads 8 bytes from a1 (arg1 at entry) +0x28.
  The `lw` at 0x1124 loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `sw` at 0x1140 stores 4 bytes to a1 (arg1 at entry) +0x20.
  The `sd` at 0x114c stores 8 bytes to a1 (arg1 at entry) +0x40.
  The `jal` at 0x10d4 calls mutex_spinlock with a0=a0+2576, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10f4 calls mutex_spinunlock with a0=a0+2576, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1128 calls cmn_err_tag with a0=0x84b, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184], a5=[a1+40]:8, a6=[a1+8].
  The `jal` at 0x1134 calls kona_die with a0=a0 at entry (arg0), a1=0x5, a2=?, a3=?.
  The `jal` at 0x1148 calls vsema with a0=a1+48, a1=?, a2=?, a3=-0x1.
  The `bne` branch at 0x10e0 targets 0x110c, is taken when at(=[a1+64]:8) != 0, and falls through when at(=[a1+64]:8) == 0.
  The `beq` branch at 0x1150 targets 0x10e8 and is always taken.
  The return at 0x1104 has v0 = ret(mutex_spinunlock).

- `kona_finish_selectfeed` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x1158 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0x1158-0x1520 (968 bytes).
  It occupies 968 bytes.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x1160, `ld` at 0x1324, `ld` at 0x13a8.
  The `ld` at 0x11a8 loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `ld` at 0x11b4 loads 8 bytes from [a1+112]:8 +0x68.
  The `sd` at 0x11f8 stores 8 bytes to [a1+112]:8 +0x60.
  12 such `ld` accesses load 8 bytes from [a0+40]:8 +0x8e0, including `ld` at 0x1204, `ld` at 0x121c, `ld` at 0x1260.
  3 such `sw` accesses store 4 bytes to [a0+40]:8 +0x938, including `sw` at 0x1228, `sw` at 0x1284, `sw` at 0x1300.
  6 such `ld` accesses load 8 bytes from [a0+40]:8 +0x948, including `ld` at 0x1234, `ld` at 0x1290, `ld` at 0x1314.
  3 such `lw` accesses load 4 bytes from [a0+40]:8 +0x938, including `lw` at 0x1240, `lw` at 0x129c, `lw` at 0x1318.
  3 such `ld` accesses load 8 bytes from [a0+40]:8 +0x900, including `ld` at 0x1254, `ld` at 0x12b0, `ld` at 0x12c4.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0x50, including `lw` at 0x1328, `lw` at 0x13ac.
  2 such `sw` accesses store 4 bytes to [a0+40]:8 +0x50, including `sw` at 0x133c, `sw` at 0x13b4.
  The `lw` at 0x1340 loads 4 bytes from [a1+112]:8 +0x40.
  The `lw` at 0x1350 loads 4 bytes from [a1+112]:8 +0x28.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x1364, `sw` at 0x13e4.
  The `lw` at 0x1368 loads 4 bytes from [a1+112]:8 +0x44.
  The `sw` at 0x1378 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `lw` at 0x137c loads 4 bytes from [a1+112]:8 +0x3c.
  The `ld` at 0x1390 loads 8 bytes from [a1+112]:8 +0x48.
  The `lw` at 0x1398 loads 4 bytes from [a0+40]:8 +0x888.
  The `sw` at 0x139c stores 4 bytes to [a1+112]:8 +0x3c.
  The `sw` at 0x13a0 stores 4 bytes to [a1+112]:8 +0x28.
  The `sd` at 0x13a4 stores 8 bytes to [a1+112]:8 +0x48.
  The `sd` at 0x13c0 stores 8 bytes to [a1+112]:8 +0x68.
  6 such `ld` accesses load 8 bytes from [a0+40]:8 +0x48, including `ld` at 0x13e8, `ld` at 0x1434, `ld` at 0x1450.
  3 such `lw` accesses load 4 bytes from [a0+40]:8 +0x8c8, including `lw` at 0x13f8, `lw` at 0x1460, `lw` at 0x14c8.
  The `jal` at 0x11ac calls curproc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x11cc calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x11f0 calls kona_timeout with a0=sym(kona_selectfeed_timeout), a1=[a0+40]:8, a2=[sym(kona_selectfeed_timeout_value)], a3=sym(splhi), a4=[a1+112]:8+32.
  The `jal` at 0x1200 calls gfx_flow_flush_my_wg with a0=[[a0+40]:8+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x1208 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1218 calls gfx_flow_am_i_attached with a0=[[a0+40]:8+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x122c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x1244 calls gfx_pio_write_32 with a0=[[a0+40]:8+2376]:8+0xc00108, a1=[[a0+40]:8+2360], a2=[[a0+40]:8+2376]:8, a3=?.
  The `jal` at 0x1250 calls gfx_pio_write_32 with a0=[[a0+40]:8+2304]:8, a1=0x1f6, a2=?, a3=?.
  The `jal` at 0x125c calls gfx_flow_flush_my_wg with a0=[[a0+40]:8+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x1264 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1274 calls gfx_flow_am_i_attached with a0=[[a0+40]:8+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1288 calls splx with a0=ret(splhi), a1=?, a2=0x10000, a3=?.
  The `jal` at 0x12a0 calls gfx_pio_write_32 with a0=[[a0+40]:8+2376]:8+0xc00108, a1=[[a0+40]:8+2360], a2=[[a0+40]:8+2376]:8, a3=?.
  The `jal` at 0x12ac calls gfx_pio_write_32 with a0=[[a0+40]:8+2304]:8, a1=0x100, a2=?, a3=?.
  The `jal` at 0x12cc calls gfx_pio_write_32 with a0=[[a0+40]:8+2304]:8, a1=?, a2=?, a3=0xb0.
  The `jal` at 0x12d8 calls gfx_flow_flush_my_wg with a0=[[a0+40]:8+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x12e0 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x12f0 calls gfx_flow_am_i_attached with a0=[[a0+40]:8+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x130c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x131c calls gfx_pio_write_32 with a0=[[a0+40]:8+2376]:8+0xc00108, a1=[[a0+40]:8+2360], a2=?, a3=?.
  The `jal` at 0x1338 calls psema with a0=[a1+112]:8+80, a1=0x19, a2=[[a0+40]:8+80]+1, a3=[a0+40]:8.
  The `jal` at 0x1388 calls unlock_dmavec with a0=[a1+112]:8+32, a1=0x1, a2=?, a3=?, a5=[[a1+112]:8+60].
  The `jal` at 0x1394 calls free_gfx_io_space with a0=[[a0+40]:8+2184], a1=[[a1+112]:8+72]:8, a2=?, a3=?.
  The `jal` at 0x13bc calls valusema with a0=[a0+40]:8+56, a1=?, a2=?, a3=?, a6=[[a0+40]:8+80]-1, a7=[a0+40]:8.
  The `jal` at 0x13cc calls force_resched with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x13ec calls gfx_flow_attach_me with a0=[[a0+40]:8+2272]:8, a1=[[a0+40]:8+72]:8, a2=?, a3=?.
  The `jal` at 0x1404 calls gfx_pio_write_32 with a0=[[a0+40]:8+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x140c calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1418 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x1420 calls kona_flow_await_returned_credits with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1428 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1438 calls gfx_flow_attach_me_finish with a0=[[a0+40]:8+2272]:8, a1=[[a0+40]:8+72]:8, a2=?, a3=?.
  The `jal` at 0x1440 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jal` at 0x1454 calls gfx_flow_attach_me with a0=[[a0+40]:8+2272]:8, a1=[[a0+40]:8+72]:8, a2=0x10000, a3=?.
  The `jal` at 0x146c calls gfx_pio_write_32 with a0=[[a0+40]:8+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x1474 calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1480 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x1488 calls kona_flow_await_returned_credits with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1490 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x14a0 calls gfx_flow_attach_me_finish with a0=[[a0+40]:8+2272]:8, a1=[[a0+40]:8+72]:8, a2=?, a3=?.
  The `jal` at 0x14a8 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jal` at 0x14bc calls gfx_flow_attach_me with a0=[[a0+40]:8+2272]:8, a1=[[a0+40]:8+72]:8, a2=?, a3=?.
  The `jal` at 0x14d4 calls gfx_pio_write_32 with a0=[[a0+40]:8+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x14dc calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x14e8 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x14f0 calls kona_flow_await_returned_credits with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x14f8 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1508 calls gfx_flow_attach_me_finish with a0=[[a0+40]:8+2272]:8, a1=[[a0+40]:8+72]:8, a2=?, a3=?.
  The `jal` at 0x1510 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `bne` branch at 0x1180 targets 0x11a8, is taken when a1 != 0, and falls through when a1 == 0.
  The `beq` branch at 0x11b8 targets 0x11cc, is taken when t8(=[[a1+112]:8+104]:8) == v0(=ret(curproc)), and falls through when t8(=[[a1+112]:8+104]:8) != v0(=ret(curproc)).
  The `beq` branch at 0x11c4 targets 0x118c and is always taken.
  The `bgez` branch at 0x11d4 targets 0x11e4, is taken when v0(=ret(RRM_CheckValidFault)) >= 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) < 0 (signed).
  The `beq` branch at 0x11dc targets 0x137c and is always taken.
  The `beq` branch at 0x1220 targets 0x13e8, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x127c targets 0x1450, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x12f8 targets 0x14b8, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x1348 targets 0x13e0, is taken when v0(=[[a1+112]:8+64]) == a0(=-0x1), and falls through when v0(=[[a1+112]:8+64]) != a0(=-0x1).
  The `beq` branch at 0x1380 targets 0x13a8, is taken when a5(=[[a1+112]:8+60]) == 0, and falls through when a5(=[[a1+112]:8+60]) != 0.
  The `beq` branch at 0x13c4 targets 0x13d8, is taken when v0(=ret(valusema)) == 0, and falls through when v0(=ret(valusema)) != 0.
  The `beq` branch at 0x13d8 targets 0x118c and is always taken.
  The `beq` branch at 0x13e0 targets 0x1368 and is always taken.
  The `beq` branch at 0x1448 targets 0x1228 and is always taken.
  The `beq` branch at 0x14b0 targets 0x1284 and is always taken.
  The `beq` branch at 0x1518 targets 0x1300 and is always taken.
  The return at 0x11a0 has v0 = one of 0x0, 0x2, 0xe, 0x16.

- `kona_free_up_space` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x1520 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0x1520-0x1554 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x1534 loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `jal` at 0x1540 calls cmn_err_tag with a0=0x84c, a1=0x0, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184].
  The return at 0x154c has v0 = ret(cmn_err_tag).

- `kona_diag_map_cleanup` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x1554 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0x1554-0x15b8 (100 bytes).
  It occupies 100 bytes.
  The `ld` at 0x1568 loads 8 bytes from a0 (arg0 at entry) +0x1460.
  The `ld` at 0x1574 loads 8 bytes from a0 (arg0 at entry) +0x1468.
  The `lw` at 0x1584 loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `sd` at 0x1588 stores 8 bytes to a0 (arg0 at entry) +0x1468.
  The `lw` at 0x158c loads 4 bytes from a0 (arg0 at entry) +0x1478.
  The `sw` at 0x15a0 stores 4 bytes to a0 (arg0 at entry) +0x1478.
  The `sd` at 0x15a4 stores 8 bytes to a0 (arg0 at entry) +0x1460.
  The `jal` at 0x1560 calls curproc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1580 calls free_gfx_io_space with a0=[a0+2184], a1=[a0+5224]:8, a2=?, a3=?.
  The `jal` at 0x1598 calls unlock_dmavec with a0=a0+5232, a1=0x1, a2=?, a3=?.
  The `bne` branch at 0x156c targets 0x15ac, is taken when at(=[a0+5216]:8) != v0(=ret(curproc)), and falls through when at(=[a0+5216]:8) == v0(=ret(curproc)).
  The `beq` branch at 0x1578 targets 0x158c, is taken when a1(=[a0+5224]:8) == 0, and falls through when a1(=[a0+5224]:8) != 0.
  The `beq` branch at 0x1590 targets 0x15a4, is taken when v0(=[a0+5240]) == 0, and falls through when v0(=[a0+5240]) != 0.
  The return at 0x15b0 has v0 = one of ret(curproc), ?.

- `abi32_to_kona_dmaread_args` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x17d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0x17d0-0x189c (204 bytes).
  It occupies 204 bytes.
  The `ld` at 0x17e0 loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lwu` at 0x17e4 loads 4 bytes from [a3+16]:8 +0x0.
  The `sd` at 0x17e8 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0x17ec loads 4 bytes from [a3+16]:8 +0x4.
  The `sw` at 0x17f0 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x17f4 loads 4 bytes from [a3+16]:8 +0x8.
  The `sw` at 0x17f8 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `lw` at 0x17fc loads 4 bytes from [a3+16]:8 +0xc.
  The `sw` at 0x1800 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `lw` at 0x1804 loads 4 bytes from [a3+16]:8 +0x90.
  The `sw` at 0x180c stores 4 bytes to a1 (arg1 at entry) +0x98.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1824, `lw` at 0x1844.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1828, `sw` at 0x184c.
  The `lw` at 0x1860 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x1870 loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x1874, `sd` at 0x1898.
  The `sw` at 0x187c stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `jal` at 0x1888 calls kern_malloc with a0=0x94, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x17d8 targets 0x1860, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x182c targets 0x1850, is taken when v0(?) >= 0x20 (signed), and falls through when v0(?) < 0x20 (signed).
  The `bne` branch at 0x1848 targets 0x1810, is taken when v0(?) < 0x20 (signed), and falls through when v0(?) >= 0x20 (signed).
  The `bne` branch at 0x1868 targets 0x1888, is taken when t1(=[a3]) < 0x94 (unsigned), and falls through when t1(=[a3]) >= 0x94 (unsigned).
  The `beq` branch at 0x1880 targets 0x1854 and is always taken.
  The `beq` branch at 0x1894 targets 0x1878 and is always taken.
  The return at 0x1858 has v0 = 0x0.

- `abi32_to_kona_dmawrite_args` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x189c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0x189c-0x1958 (188 bytes).
  It occupies 188 bytes.
  The `ld` at 0x18ac loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lwu` at 0x18b0 loads 4 bytes from [a3+16]:8 +0x0.
  The `sd` at 0x18b4 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0x18b8 loads 4 bytes from [a3+16]:8 +0x4.
  The `sw` at 0x18bc stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x18c0 loads 4 bytes from [a3+16]:8 +0x88.
  The `sw` at 0x18c8 stores 4 bytes to a1 (arg1 at entry) +0x8c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x18e0, `lw` at 0x1900.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x18e4, `sw` at 0x1908.
  The `lw` at 0x191c loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x192c loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x1930, `sd` at 0x1954.
  The `sw` at 0x1938 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `jal` at 0x1944 calls kern_malloc with a0=0x8c, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x18a4 targets 0x191c, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x18e8 targets 0x190c, is taken when v0(?) >= 0x20 (signed), and falls through when v0(?) < 0x20 (signed).
  The `bne` branch at 0x1904 targets 0x18cc, is taken when v0(?) < 0x20 (signed), and falls through when v0(?) >= 0x20 (signed).
  The `bne` branch at 0x1924 targets 0x1944, is taken when a7(=[a3]) < 0x8c (unsigned), and falls through when a7(=[a3]) >= 0x8c (unsigned).
  The `beq` branch at 0x193c targets 0x1910 and is always taken.
  The `beq` branch at 0x1950 targets 0x1934 and is always taken.
  The return at 0x1914 has v0 = 0x0.

- `abi32_to_kona_dmapool_args` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x1958 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0x1958-0x19d8 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x196c loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x197c loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x1980, `sd` at 0x19d4.
  The `sw` at 0x1988 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x1994 loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lwu` at 0x1998 loads 4 bytes from [a3+16]:8 +0x0.
  The `sd` at 0x199c stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0x19a0 loads 4 bytes from [a3+16]:8 +0x4.
  The `sw` at 0x19a4 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x19a8 loads 4 bytes from [a3+16]:8 +0x8.
  The `sw` at 0x19ac stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `lw` at 0x19b0 loads 4 bytes from [a3+16]:8 +0xc.
  The `sw` at 0x19b4 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `jal` at 0x19c4 calls kern_malloc with a0=0x10, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1964 targets 0x1994, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x1974 targets 0x19c4, is taken when at(=[a3]) < 0x10 (unsigned), and falls through when at(=[a3]) >= 0x10 (unsigned).
  The `beq` branch at 0x198c targets 0x19b8 and is always taken.
  The `beq` branch at 0x19d0 targets 0x1984 and is always taken.
  The return at 0x19bc has v0 = 0x0.

- `abi32_to_kona_dmavec` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x19d8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0x19d8-0x1a58 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x19ec loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x19fc loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x1a00, `sd` at 0x1a54.
  The `sw` at 0x1a08 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x1a14 loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lwu` at 0x1a18 loads 4 bytes from [a3+16]:8 +0x0.
  The `sd` at 0x1a1c stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0x1a20 loads 4 bytes from [a3+16]:8 +0x4.
  The `sw` at 0x1a24 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x1a28 loads 4 bytes from [a3+16]:8 +0x8.
  The `sw` at 0x1a2c stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `lw` at 0x1a30 loads 4 bytes from [a3+16]:8 +0xc.
  The `sw` at 0x1a34 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `jal` at 0x1a44 calls kern_malloc with a0=0x10, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x19e4 targets 0x1a14, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x19f4 targets 0x1a44, is taken when at(=[a3]) < 0x10 (unsigned), and falls through when at(=[a3]) >= 0x10 (unsigned).
  The `beq` branch at 0x1a0c targets 0x1a38 and is always taken.
  The `beq` branch at 0x1a50 targets 0x1a04 and is always taken.
  The return at 0x1a3c has v0 = 0x0.

- `abi32_to_kona_start_selectfeed_args` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x1a58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0x1a58-0x1ae0 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0x1a6c loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x1a7c loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x1a80, `sd` at 0x1adc.
  The `sw` at 0x1a88 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x1a94 loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lwu` at 0x1a98 loads 4 bytes from [a3+16]:8 +0x0.
  The `sd` at 0x1a9c stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0x1aa0 loads 4 bytes from [a3+16]:8 +0x4.
  The `sw` at 0x1aa4 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x1aa8 loads 4 bytes from [a3+16]:8 +0x8.
  The `sw` at 0x1aac stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `lw` at 0x1ab0 loads 4 bytes from [a3+16]:8 +0xc.
  The `sw` at 0x1ab4 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `lw` at 0x1ab8 loads 4 bytes from [a3+16]:8 +0x10.
  The `sw` at 0x1abc stores 4 bytes to a1 (arg1 at entry) +0x18.
  The `jal` at 0x1acc calls kern_malloc with a0=0x14, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1a64 targets 0x1a94, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x1a74 targets 0x1acc, is taken when at(=[a3]) < 0x14 (unsigned), and falls through when at(=[a3]) >= 0x14 (unsigned).
  The `beq` branch at 0x1a8c targets 0x1ac0 and is always taken.
  The `beq` branch at 0x1ad8 targets 0x1a84 and is always taken.
  The return at 0x1ac4 has v0 = 0x0.

- `abi32_to_kona_diag_map` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x1ae0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0x1ae0-0x1b58 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x1af4 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x1b04 loads 8 bytes from a3 (arg3 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x10, including `sd` at 0x1b08, `sd` at 0x1b54.
  The `sw` at 0x1b10 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `ld` at 0x1b1c loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lwu` at 0x1b20 loads 4 bytes from [a3+16]:8 +0x0.
  The `sd` at 0x1b24 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0x1b28 loads 4 bytes from [a3+16]:8 +0x4.
  The `sw` at 0x1b2c stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x1b30 loads 4 bytes from [a3+16]:8 +0xc.
  The `sw` at 0x1b34 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `jal` at 0x1b44 calls kern_malloc with a0=0x14, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1aec targets 0x1b1c, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x1afc targets 0x1b44, is taken when at(=[a3]) < 0x14 (unsigned), and falls through when at(=[a3]) >= 0x14 (unsigned).
  The `beq` branch at 0x1b14 targets 0x1b38 and is always taken.
  The `beq` branch at 0x1b50 targets 0x1b0c and is always taken.
  The return at 0x1b3c has v0 = 0x0.

- `kona_diag_map_to_abi32` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x1b58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`.
  Range: 0x1b58-0x1be0 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0x1b58 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `ld` at 0x1b7c loads 8 bytes from a2 (arg2 at entry) +0x8.
  2 such `sd` accesses store 8 bytes to a2 (arg2 at entry) +0x10, including `sd` at 0x1b80, `sd` at 0x1bdc.
  The `sw` at 0x1b88 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `ld` at 0x1b90 loads 8 bytes from a0 (arg0 at entry) +0x0.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1b94, `sw` at 0x1b9c, `sw` at 0x1ba4.
  The `lw` at 0x1b98 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1ba0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x1ba8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0x1bb0 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `jal` at 0x1bc8 calls kern_malloc with a0=0x14, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1b74 targets 0x1bc8, is taken when at(=[a2]) < 0x14 (unsigned), and falls through when at(=[a2]) >= 0x14 (unsigned).
  The `beq` branch at 0x1bd8 targets 0x1b84 and is always taken.
  The return at 0x1bc0 has v0 = 0x0.
