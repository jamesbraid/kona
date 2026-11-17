# Readings: `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)`

One entry per routine, filed here from the reading batches by binary.

- `unlock_dmavec` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0xc8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)`.
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

- `kona_idma_timeout` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x440 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)`.
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

- `kona_dmapool_update_pipe` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x7c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)`.
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

- `kona_dmapool_update` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0xc2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)`.
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

- `kona_dmapool_destroy` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0xc78 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)`.
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

- `kona_selectfeed_timeout` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x10b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)`.
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

- `kona_finish_selectfeed` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x1158 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)`.
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

- `kona_free_up_space` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x1520 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)`.
  Range: 0x1520-0x1554 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x1534 loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `jal` at 0x1540 calls cmn_err_tag with a0=0x84c, a1=0x0, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184].
  The return at 0x154c has v0 = ret(cmn_err_tag).

- `kona_diag_map_cleanup` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x1554 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)`.
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

- `abi32_to_kona_dmaread_args` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x17d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)`.
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

- `abi32_to_kona_dmawrite_args` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x189c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)`.
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

- `abi32_to_kona_dmapool_args` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x1958 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)`.
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

- `abi32_to_kona_dmavec` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x19d8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)`.
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

- `abi32_to_kona_start_selectfeed_args` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x1a58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)`.
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

- `abi32_to_kona_diag_map` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x1ae0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)`.
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

- `kona_diag_map_to_abi32` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x1b58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)`.
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
