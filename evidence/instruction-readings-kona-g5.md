- `Ioctl` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8113d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8113d4-0xd811418 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xd8113e0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd811400 loads 4 bytes from ([0x1014] + (a0 << 0x2)) +0x4.
  The `jalr` at 0xd8113fc calls ioctl with a0=[([0x1014] + (a0 << 0x2))+4], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd811410 has v0 = ret(ioctl).

- `Ioctl` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd8113d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd8113d4-0xd811418 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xd8113e0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd811400 loads 4 bytes from ([0x1014] + (a0 << 0x2)) +0x4.
  The `jalr` at 0xd8113fc calls ioctl with a0=[([0x1014] + (a0 << 0x2))+4], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd811410 has v0 = ret(ioctl).

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

- `__glkon_SuspendSelectfeed` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd95cc00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd95cc00-0xd95cd18 (280 bytes).
  It occupies 280 bytes.
  The `lw` at 0xd95cc08 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd95cc0c loads 4 bytes from [0x1010] +0xc84.
  The `lw` at 0xd95cc34 loads 4 bytes from [0x1010] +0x7b78.
  The `sw` at 0xd95cc68 stores 4 bytes to [0x1010] +0x7b88.
  2 such `lbu` accesses load 1 byte from [0x1010] +0x1304, including `lbu` at 0xd95cc78, `lbu` at 0xd95cca4.
  The `lw` at 0xd95cc98 loads 4 bytes from [0x1010] +0x7b6c.
  The `sw` at 0xd95cca8 stores 4 bytes to [0x1010] +0x7b6c.
  The `sb` at 0xd95ccb8 stores 1 byte to [0x1010] +0x1304.
  2 such `lbu` accesses load 1 byte from [0x1010] +0x1324, including `lbu` at 0xd95ccc8, `lbu` at 0xd95ccf4.
  The `lw` at 0xd95cce8 loads 4 bytes from [0x1010] +0x7b74.
  The `sw` at 0xd95ccf8 stores 4 bytes to [0x1010] +0x7b74.
  The `sb` at 0xd95cd08 stores 1 byte to [0x1010] +0x1324.
  The `bgezall` at 0xd95cc58 calls FinishSelectFeed [0xd95cba0] with a0=sp-32, a1=[[0x1010]+3204], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd95cc90 calls FinishSelectFeed [0xd95cba0] with a0=sp-32, a1=[[0x1010]+3204], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd95cce0 calls FinishSelectFeed [0xd95cba0] with a0=sp-32, a1=[[0x1010]+3204], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd95cc20 targets 0xd95cc78, is taken when a1(=[[0x1010]+3204]) == v0(=0x1c01), and falls through when a1(=[[0x1010]+3204]) != v0(=0x1c01).
  The `beq` branch at 0xd95cc2c targets 0xd95ccc8, is taken when a1(=[[0x1010]+3204]) == v0(=0x1c02), and falls through when a1(=[[0x1010]+3204]) != v0(=0x1c02).
  The `bne` branch at 0xd95cc38 targets 0xd95cc50, is taken when v1(=[[0x1010]+31608]) != 0, and falls through when v1(=[[0x1010]+31608]) == 0.
  The `bnel` branch at 0xd95cc7c targets 0xd95cc44, is taken when at(=[[0x1010]+4868]:1) != 0, and falls through when at(=[[0x1010]+4868]:1) == 0; its branch-likely delay slot `ld gp,8(sp)` at 0xd95cc80 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd95cccc targets 0xd95cc44, is taken when a0(=[[0x1010]+4900]:1) != 0, and falls through when a0(=[[0x1010]+4900]:1) == 0; its branch-likely delay slot `ld gp,8(sp)` at 0xd95ccd0 runs only when taken and is annulled on fall-through.
  The return at 0xd95cc48 has v0 = one of 0x1c01, 0x1c02.
  The return at 0xd95cc70 has v0 = ret(FinishSelectFeed).
  The return at 0xd95ccc0 has v0 = [[0x1010]+4868]:1.
  The return at 0xd95cd10 has v0 = [[0x1010]+4900]:1.

- `__glkon_ResumeSelectfeed` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd95cd20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd95cd20-0xd95ce18 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0xd95cd20 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd95cd24 loads 4 bytes from [0x1010] +0xc84.
  The `lw` at 0xd95cd50 loads 4 bytes from [0x1010] +0x7b78.
  The `lw` at 0xd95cd5c loads 4 bytes from [0x1010] +0x7b88.
  The `lw` at 0xd95cd64 loads 4 bytes from [0x1010] +0x7b8c.
  The `lbu` at 0xd95cd90 loads 1 byte from [0x1010] +0x1304.
  The `lw` at 0xd95cd9c loads 4 bytes from [0x1010] +0x7b6c.
  The `lw` at 0xd95cda4 loads 4 bytes from [0x1010] +0x1310.
  The `lw` at 0xd95cda8 loads 4 bytes from [0x1010] +0x7b68.
  The `lbu` at 0xd95cdcc loads 1 byte from [0x1010] +0x1324.
  The `lw` at 0xd95cddc loads 4 bytes from [0x1010] +0x1330.
  The `lw` at 0xd95cde0 loads 4 bytes from [0x1010] +0x7b50.
  The `lw` at 0xd95cdec loads 4 bytes from [0x1010] +0x7b74.
  The `lw` at 0xd95cdf4 loads 4 bytes from [0x1010] +0x7b70.
  The `bgezall` at 0xd95cd78 calls StartSelectFeed [0xd95cb30] with a0=([[0x1010]+31608] + ([[0x1010]+31624] << 0x2)), a1=?, a2=a2 at entry (arg2), a3=[0x1010], a4=[[0x1010]+31608].
  The `bgezall` at 0xd95cdbc calls StartSelectFeed [0xd95cb30] with a0=([[0x1010]+31592] + ([[0x1010]+31596] << 0x2)), a1=?, a2=([[0x1010]+31596] << 0x2), a3=[0x1010].
  The `bgezall` at 0xd95ce08 calls StartSelectFeed [0xd95cb30] with a0=([[0x1010]+31600] + ([[0x1010]+31604] << 0x2)), a1=?, a2=[[0x1010]+31604], a3=[0x1010].
  The `beq` branch at 0xd95cd3c targets 0xd95cd90, is taken when a1(=[[0x1010]+3204]) == v0(=0x1c01), and falls through when a1(=[[0x1010]+3204]) != v0(=0x1c01).
  The `beq` branch at 0xd95cd48 targets 0xd95cdcc, is taken when a1(=[[0x1010]+3204]) == v0(=0x1c02), and falls through when a1(=[[0x1010]+3204]) != v0(=0x1c02).
  The `beq` branch at 0xd95cd54 targets 0xd95cd84, is taken when a4(=[[0x1010]+31608]) == 0, and falls through when a4(=[[0x1010]+31608]) != 0.
  The `bne` branch at 0xd95cd94 targets 0xd95cd84, is taken when at(=[[0x1010]+4868]:1) != 0, and falls through when at(=[[0x1010]+4868]:1) == 0.
  The `beq` branch at 0xd95cdc4 targets 0xd95cd84 and is always taken.
  The `bne` branch at 0xd95cdd0 targets 0xd95cd84, is taken when at(=[[0x1010]+4900]:1) != 0, and falls through when at(=[[0x1010]+4900]:1) == 0.
  The `beq` branch at 0xd95ce10 targets 0xd95cd84 and is always taken.
  The return at 0xd95cd88 has v0 = one of 0x1c02, ret(StartSelectFeed), 0x1c01.

- `gfx_flow_delayed_hiwater_intr_prehandler` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`.
  Range: 0x0-0x90 (144 bytes).
  It occupies 144 bytes.
  2 such `lh` accesses load 2 bytes from abs 0xffffffffffffc420, including `lh` at 0x0, `lh` at 0x8c.
  The `ld` at 0x10 loads 8 bytes from ([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3be0]:2 << 0x3)) +0x0.
  The `ld` at 0x30 loads 8 bytes from (sym(pdaindr) + ([-0x3be0]:2 << 0x4)) +0x8.
  The `lbu` at 0x34 loads 1 byte from [(sym(pdaindr) + ([-0x3be0]:2 << 0x4))+8]:8 +0x520.
  The `sd` at 0x58 stores 8 bytes to table(0x9200000001000000) +0x0.
  The `ld` at 0x68 loads 8 bytes from a1 (arg1 at entry) +0xf8.
  The `ld` at 0x6c loads 8 bytes from [([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3be0]:2 << 0x3))]:8 +0x20.
  The `ld` at 0x78 loads 8 bytes from [([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3be0]:2 << 0x3))]:8 +0x28.
  The `jalr` at 0x7c calls (unknown callee) with a0=[[([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3be0]:2 << 0x3))]:8+40]:8, a1=?, a2=[[([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3be0]:2 << 0x3))]:8+32]:8, a3=[([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3be0]:2 << 0x3))]:8, a4=a1 at entry (arg1), a5=([-0x3be0]:2 << 0x3).
  The `bne` branch at 0x1c targets 0x68, is taken when a3(=[([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3be0]:2 << 0x3))]:8) != 0, and falls through when a3(=[([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3be0]:2 << 0x3))]:8) == 0.
  The `beq` branch at 0x88 targets 0x24 and is always taken.
  The return at 0x60 has v0 = one of ?, ret(?).

- `kona_intr_set` in `usr/cpu/sysgen/IP27boot/kona.a(kona_edtinit_hip2.o)` at 0xc8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_edtinit_hip2.o)`.
  Range: 0xc8-0xd0 (8 bytes).
  It occupies 8 bytes.
  The return at 0xc8 has v0 = 0x0.

- `gfx_flow_delayed_hiwater_intr_prehandler` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x0-0x94 (148 bytes).
  It occupies 148 bytes.
  2 such `lh` accesses load 2 bytes from abs 0xffffffffffffc428, including `lh` at 0x0, `lh` at 0x90.
  The `ld` at 0x10 loads 8 bytes from ([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3bd8]:2 << 0x3)) +0x0.
  The `ld` at 0x30 loads 8 bytes from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8.
  The `lbu` at 0x34 loads 1 byte from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528.
  The `sd` at 0x5c stores 8 bytes to table(0x9200000001000000) +0x0.
  The `ld` at 0x6c loads 8 bytes from a1 (arg1 at entry) +0xf8.
  The `ld` at 0x70 loads 8 bytes from [([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3bd8]:2 << 0x3))]:8 +0x20.
  The `ld` at 0x7c loads 8 bytes from [([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3bd8]:2 << 0x3))]:8 +0x28.
  The `jalr` at 0x80 calls (unknown callee) with a0=[[([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3bd8]:2 << 0x3))]:8+40]:8, a1=?, a2=[[([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3bd8]:2 << 0x3))]:8+32]:8, a3=[([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3bd8]:2 << 0x3))]:8, a4=a1 at entry (arg1), a5=([-0x3bd8]:2 << 0x3).
  The `bne` branch at 0x1c targets 0x6c, is taken when a3(=[([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3bd8]:2 << 0x3))]:8) != 0, and falls through when a3(=[([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3bd8]:2 << 0x3))]:8) == 0.
  The `beq` branch at 0x8c targets 0x24 and is always taken.
  The return at 0x64 has v0 = one of ?, ret(?).

- `kona_intr_set` in `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)` at 0xc8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)`.
  Range: 0xc8-0xd0 (8 bytes).
  It occupies 8 bytes.
  The return at 0xc8 has v0 = 0x0.

- `kona_lowater_intr` in `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)` at 0x4cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)`.
  Range: 0x4cc-0x5a4 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0x4e0 loads 4 bytes from a0 (arg0 at entry) +0x68.
  The `lw` at 0x4e4 loads 4 bytes from a0 (arg0 at entry) +0x1490.
  The `sw` at 0x4f0 stores 4 bytes to a0 (arg0 at entry) +0x1490.
  The `ld` at 0x4f4 loads 8 bytes from a0 (arg0 at entry) +0x920.
  The `sd` at 0x508 stores 8 bytes to a0 (arg0 at entry) +0x920.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x940, including `lw` at 0x50c, `lw` at 0x5a0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x948, including `ld` at 0x514, `ld` at 0x530.
  The `sw` at 0x524 stores 4 bytes to a0 (arg0 at entry) +0x940.
  The `sw` at 0x540 stores 4 bytes to a0 (arg0 at entry) +0x928.
  The `lw` at 0x54c loads 4 bytes from a0 (arg0 at entry) +0x6c.
  The `sw` at 0x558 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `sw` at 0x55c stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0x574 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `sw` at 0x580 stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `lw` at 0x590 loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `jal` at 0x4d8 calls gfx_waitf_on with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x500 calls kona_untimeout with a0=a0 at entry (arg0), a1=[a0+2336]:8, a2=?, a3=?.
  The `jal` at 0x528 calls gfx_pio_write_32 with a0=[a0+2376]:8+0x800230, a1=?, a2=0x800230, a3=-0x3.
  The `jal` at 0x544 calls gfx_pio_write_32 with a0=[a0+2376]:8+0x800238, a1=0x3, a2=0x800238, a3=?.
  The `jal` at 0x560 calls gfx_waitf_off with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x594 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `beq` branch at 0x4ec targets 0x560, is taken when v0(=[a0+104]) == 0, and falls through when v0(=[a0+104]) != 0.
  The `beq` branch at 0x4f8 targets 0x584, is taken when a1(=[a0+2336]:8) == 0, and falls through when a1(=[a0+2336]:8) != 0.
  The `beq` branch at 0x550 targets 0x574, is taken when a3(=[a0+108]) == 0, and falls through when a3(=[a0+108]) != 0.
  The `beq` branch at 0x57c targets 0x558 and is always taken.
  The `beq` branch at 0x59c targets 0x510 and is always taken.
  The return at 0x56c has v0 = ret(gfx_waitf_off).

- `TEST_intr` in `usr/diags/IR/bin/irsaudit` at 0x10079858 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x10079858-0x10079a94 (572 bytes).
  It occupies 572 bytes.
  The `lw` at 0x10079888 loads 4 bytes from abs 0x102bd69c.
  The `lw` at 0x1007988c loads 4 bytes from abs 0x102be464.
  The `lw` at 0x10079898 loads 4 bytes from sym(wg_flow_control) +0x0.
  2 such `sw` accesses store 4 bytes to sym(wg_flow_control) +0x0, including `sw` at 0x100798a0, `sw` at 0x1007999c.
  The `lw` at 0x100798ac loads 4 bytes from abs 0x102bdddc.
  The `lw` at 0x100798c4 loads 4 bytes from abs 0x102bd694.
  The `lw` at 0x100798d8 loads 4 bytes from abs 0x102bd698.
  The `lw` at 0x100798ec loads 4 bytes from abs 0x102bc844.
  The `lw` at 0x10079904 loads 4 bytes from abs 0x102be1e0.
  4 such `lw` accesses load 4 bytes from sym(KONAINFO) +0x0, including `lw` at 0x10079908, `lw` at 0x10079928, `lw` at 0x1007994c.
  4 such `lw` accesses load 4 bytes from [sym(KONAINFO)] +0x0, including `lw` at 0x1007990c, `lw` at 0x1007992c, `lw` at 0x10079950.
  The `lw` at 0x1007993c loads 4 bytes from abs 0x102bc848.
  The `lw` at 0x10079970 loads 4 bytes from abs 0x102bc84c.
  2 such `lw` accesses load 4 bytes from abs 0x102bd764, including `lw` at 0x100799a8, `lw` at 0x10079a44.
  The `lw` at 0x100799c4 loads 4 bytes from abs 0x102bd760.
  2 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x100799e0, `lw` at 0x10079a60.
  The `lw` at 0x100799f4 loads 4 bytes from abs 0x102bc850.
  The `lw` at 0x10079a28 loads 4 bytes from abs 0x102bc854.
  The `lw` at 0x10079a80 loads 4 bytes from abs 0x102bc858.
  The `jal` at 0x1007989c calls ResetKona [0x100388e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100798b4 calls fcPioWrite32 [0x1013dae8] with a0=0x308, a1=0x1, a2=?, a3=?.
  The `jal` at 0x100798c8 calls initialize_icu [0x100385d4] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100798dc calls init_hip_interrupt_regs [0x100387f8] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100798f4 calls (unnamed) [0x10079a94] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10079920 calls ResetKona [0x100388e0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10079940 calls (unnamed) [0x10079f48] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10079960 calls ResetKona [0x100388e0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10079974 calls (unnamed) [0x1007a3bc] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10079990 calls ResetKona [0x100388e0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100799b4 calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x100799d0 calls kt_code_chip [0x1004797c] with a0=0x2, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x100799f0 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x1019a658, a2=?, a3=?.
  The `jal` at 0x10079a2c calls (unnamed) [0x10079c70] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10079a50 calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x10079a68 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10079a84 calls (unnamed) [0x1007a540] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10079914 targets 0x10079a20, is taken when ra(=[[sym(KONAINFO)]]) == 0, and falls through when ra(=[[sym(KONAINFO)]]) != 0.
  The `beq` branch at 0x10079930 targets 0x10079a20, is taken when t8(=[[sym(KONAINFO)]]) == 0, and falls through when t8(=[[sym(KONAINFO)]]) != 0.
  The `beq` branch at 0x10079954 targets 0x1007996c, is taken when ra(=[[sym(KONAINFO)]]) == 0, and falls through when ra(=[[sym(KONAINFO)]]) != 0.
  The `beq` branch at 0x10079984 targets 0x10079a78, is taken when ra(=[[sym(KONAINFO)]]) == 0, and falls through when ra(=[[sym(KONAINFO)]]) != 0.
  The `beq` branch at 0x10079998 targets 0x10079a3c, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x10079a34 targets 0x1007994c and is always taken.
  The `beq` branch at 0x10079a70 targets 0x100799fc and is always taken.
  The `beq` branch at 0x10079a8c targets 0x1007998c and is always taken.
  The return at 0x10079a18 has v0 = ret(kt_output_rslt).

- `nic_xg_vertex_info` in `usr/cpu/sysgen/IP27boot/kona.a(kona_edtinit_hip2.o)` at 0x5ec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_edtinit_hip2.o)`.
  Range: 0x5ec-0x60c (32 bytes).
  It occupies 32 bytes.
  The `jal` at 0x5f8 calls nic_vertex_info_set with a0=sym(nic_access_mcr32), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0x604 has v0 = ret(nic_vertex_info_set).

- `nic_xg_vertex_info` in `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)` at 0x5ec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)`.
  Range: 0x5ec-0x60c (32 bytes).
  It occupies 32 bytes.
  The `jal` at 0x5f8 calls nic_vertex_info_set with a0=sym(nic_access_mcr32), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0x604 has v0 = ret(nic_vertex_info_set).

- `manual_set_jtag_reg_field` in `usr/diags/IR/bin/irsaudit` at 0x10032b18 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x10032b18-0x10032c50 (312 bytes).
  It occupies 312 bytes.
  The `lw` at 0x10032b7c loads 4 bytes from abs 0x102bd744.
  3 such `lw` accesses load 4 bytes from abs 0x102bc57c, including `lw` at 0x10032b88, `lw` at 0x10032c08, `lw` at 0x10032c2c.
  The `lw` at 0x10032ba4 loads 4 bytes from abs 0x102be020.
  The `lw` at 0x10032bbc loads 4 bytes from abs 0x102be038.
  2 such `lw` accesses load 4 bytes from abs 0x102bd470, including `lw` at 0x10032c00, `lw` at 0x10032c34.
  The `jal` at 0x10032b94 calls kt_output_dbug [0x10046d74] with a0=0x5, a1=0x10178f48, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=a4 at entry (arg4).
  The `jal` at 0x10032bac calls jt_int_to_vector [0x10164fa0] with a0=?, a1=sp-64, a2=?, a3=?.
  The `jal` at 0x10032bd8 calls jt_copy_bits [0x10166370] with a0=sp-64, a1=0x0, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0x10032c14 calls __assert with a0=0x10178f18, a1=0x10178f28, a2=0x100, a3=a3 at entry (arg3), a5=0x0.
  The `jalr` at 0x10032c40 calls __assert with a0=0x10178f38, a1=0x10178f28, a2=0x101, a3=?.
  The `beq` branch at 0x10032b58 targets 0x10032bf8, is taken when a4 >= 0x21 (signed), and falls through when a4 < 0x21 (signed).
  The `blez` branch at 0x10032b60 targets 0x10032c24, is taken when s0(=a4) <= 0 (signed), and falls through when s0(=a4) > 0 (signed).
  The `beq` branch at 0x10032c1c targets 0x10032b60 and is always taken.
  The `beq` branch at 0x10032c48 targets 0x10032b6c and is always taken.
  The return at 0x10032bf0 has v0 = ret(jt_copy_bits).

- `auto_set_jtag_reg_field` in `usr/diags/IR/bin/irsaudit` at 0x10032c50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x10032c50-0x10032d14 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0x10032c8c loads 4 bytes from abs 0x102bd744.
  The `lw` at 0x10032c98 loads 4 bytes from abs 0x102be17c.
  The `lw` at 0x10032ca0 loads 4 bytes from abs 0x102bc57c.
  The `lw` at 0x10032cbc loads 4 bytes from (sym(jt_regs) + (((a1 << 0x3) + a1) << 0x2)) +0x0.
  The `lw` at 0x10032cc4 loads 4 bytes from (sym(jt_regs) + (((a1 << 0x3) + a1) << 0x2)) +0x14.
  The `lw` at 0x10032ccc loads 4 bytes from (sym(jt_regs) + (((a1 << 0x3) + a1) << 0x2)) +0x10.
  The `lw` at 0x10032cdc loads 4 bytes from abs 0x102bd5ec.
  The `jal` at 0x10032cb8 calls kt_output_dbug [0x10046d74] with a0=0x5, a1=0x10178f90, a2=[(sym(jt_regs) + (((a1 << 0x3) + a1) << 0x2))], a3=a2 at entry (arg2), a4=sym(jt_regs), a5=(((a1 << 0x3) + a1) << 0x2), a6=0x102c4340.
  The `jal` at 0x10032cf8 calls manual_set_jtag_reg_field [0x10032b18] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=[(sym(jt_regs) + (((a1 << 0x3) + a1) << 0x2))+16], a6=[(sym(jt_regs) + (((a1 << 0x3) + a1) << 0x2))+16].
  The return at 0x10032d0c has v0 = ret(manual_set_jtag_reg_field).

- `auto_init_jtag_reg_field` in `usr/diags/IR/bin/irsaudit` at 0x10032d14 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x10032d14-0x10032dd4 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0x10032d48 loads 4 bytes from abs 0x102bc57c.
  The `lw` at 0x10032d54 loads 4 bytes from abs 0x102be17c.
  The `lw` at 0x10032d5c loads 4 bytes from abs 0x102bd744.
  The `lw` at 0x10032d70 loads 4 bytes from (sym(jt_regs) + (((a1 << 0x3) + a1) << 0x2)) +0x0.
  2 such `lw` accesses load 4 bytes from (sym(jt_regs) + (((a1 << 0x3) + a1) << 0x2)) +0x20, including `lw` at 0x10032d7c, `lw` at 0x10032db4.
  The `lw` at 0x10032d84 loads 4 bytes from (sym(jt_regs) + (((a1 << 0x3) + a1) << 0x2)) +0x10.
  The `lw` at 0x10032d8c loads 4 bytes from (sym(jt_regs) + (((a1 << 0x3) + a1) << 0x2)) +0x14.
  The `lw` at 0x10032d9c loads 4 bytes from abs 0x102bd5ec.
  The `jal` at 0x10032d78 calls kt_output_dbug [0x10046d74] with a0=0x5, a1=0x10178fc0, a2=[(sym(jt_regs) + (((a1 << 0x3) + a1) << 0x2))], a3=[(sym(jt_regs) + (((a1 << 0x3) + a1) << 0x2))+32], a4=(((a1 << 0x3) + a1) << 0x2), a5=0x0.
  The `jal` at 0x10032db8 calls manual_set_jtag_reg_field [0x10032b18] with a0=a0 at entry (arg0), a1=[(sym(jt_regs) + (((a1 << 0x3) + a1) << 0x2))+32], a2=?, a3=[(sym(jt_regs) + (((a1 << 0x3) + a1) << 0x2))+16], a6=[(sym(jt_regs) + (((a1 << 0x3) + a1) << 0x2))+16].
  The return at 0x10032dcc has v0 = ret(manual_set_jtag_reg_field).

- `auto_get_jtag_reg_field` in `usr/diags/IR/bin/irsaudit` at 0x10032dd4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x10032dd4-0x10032e64 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0x10032dfc loads 4 bytes from abs 0x102be17c.
  The `lw` at 0x10032e08 loads 4 bytes from abs 0x102be038.
  The `lw` at 0x10032e10 loads 4 bytes from (sym(jt_regs) + (((a1 << 0x3) + a1) << 0x2)) +0x14.
  The `lw` at 0x10032e14 loads 4 bytes from (sym(jt_regs) + (((a1 << 0x3) + a1) << 0x2)) +0x10.
  The `lw` at 0x10032e40 loads 4 bytes from abs 0x102be01c.
  The `jal` at 0x10032e30 calls jt_copy_bits [0x10166370] with a0=a0 at entry (arg0), a1=[(sym(jt_regs) + (((a1 << 0x3) + a1) << 0x2))+16], a2=sp-32, a3=0x0, a5=[(sym(jt_regs) + (((a1 << 0x3) + a1) << 0x2))+16], a6=(((a1 << 0x3) + a1) << 0x2).
  The `jal` at 0x10032e48 calls jt_vector_to_int [0x10164f30] with a0=sp-24, a1=sp-32, a2=?, a3=?.
  The return at 0x10032e5c has v0 = ?.

- `ge_host_reg_write` in `usr/diags/IR/bin/irsaudit` at 0x10039a14 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x10039a14-0x10039ab0 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0x10039a58 loads 4 bytes from abs 0x102bd688.
  The `jal` at 0x10039a7c calls PioWriteArm32 [0x10038444] with a0=0x200600, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10039a90 calls PioWriteArm32 [0x10038444] with a0=0x200ac0, a1=a1 at entry (arg1), a2=?, a3=?.
  The return at 0x10039aa8 has v0 = ret(PioWriteArm32).

- `TEST_ge_hip` in `usr/diags/IR/bin/irsaudit` at 0x1006f0f4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x1006f0f4-0x1006f460 (876 bytes).
  It occupies 876 bytes.
  The `lw` at 0x1006f160 loads 4 bytes from abs 0x102bd740.
  5 such `lw` accesses load 4 bytes from abs 0x102bc7ac, including `lw` at 0x1006f178, `lw` at 0x1006f2ac, `lw` at 0x1006f308.
  The `lw` at 0x1006f184 loads 4 bytes from abs 0x102bddf4.
  The `lw` at 0x1006f1a0 loads 4 bytes from abs 0x102bdddc.
  2 such `lw` accesses load 4 bytes from abs 0x102bc7b0, including `lw` at 0x1006f1d8, `lw` at 0x1006f360.
  The `lw` at 0x1006f1e4 loads 4 bytes from abs 0x102bde1c.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1006f1ec, `lw` at 0x1006f390, `lw` at 0x1006f394.
  2 such `lwu` accesses load 4 bytes from ?, including `lwu` at 0x1006f1f4, `lwu` at 0x1006f220.
  The `lw` at 0x1006f234 loads 4 bytes from abs 0x102bd744.
  The `lw` at 0x1006f23c loads 4 bytes from abs 0x102bd458.
  2 such `lw` accesses load 4 bytes from abs 0x102be1e0, including `lw` at 0x1006f258, `lw` at 0x1006f334.
  2 such `lw` accesses load 4 bytes from sym(KONAINFO) +0x0, including `lw` at 0x1006f25c, `lw` at 0x1006f338.
  2 such `lw` accesses load 4 bytes from [sym(KONAINFO)] +0x0, including `lw` at 0x1006f260, `lw` at 0x1006f33c.
  3 such `lw` accesses load 4 bytes from abs 0x102bd764, including `lw` at 0x1006f284, `lw` at 0x1006f3dc, `lw` at 0x1006f42c.
  3 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x1006f2a8, `lw` at 0x1006f400, `lw` at 0x1006f448.
  The `jal` at 0x1006f174 calls kt_output_trce [0x10046b88] with a0=0x10198660, a1=0x5050505, a2=0xffffffffa0a0a0a0, a3=0x0, a4=0xffffffffbabebabe, a5=0x25524c, a6=0xffffffffaaaaaaaa, a7=0x55555555.
  The `jal` at 0x1006f190 calls fcPioRead32 [0x1013dd88] with a0=0x238, a1=?, a2=?, a3=?.
  The `jal` at 0x1006f1c0 calls fcPioWrite32 [0x1013dae8] with a0=0x238, a1=?, a2=?, a3=?.
  The `jal` at 0x1006f1f0 calls tbRegWrite [0x1013eb3c] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1006f21c calls tbRegWrite [0x1013eb3c] with a0=0x400, a1=?, a2=?, a3=?.
  The `jal` at 0x1006f274 calls fcPioWrite32 [0x1013dae8] with a0=0x238, a1=one of 0x3ff, 0xfff, a2=?, a3=?.
  The `jal` at 0x1006f290 calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x1006f2b4 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x10198680, a2=?, a3=?.
  The `jalr` at 0x1006f2e4 calls sginap with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x1006f2f0 calls fcPioRead32 [0x1013dd88] with a0=0x238, a1=?, a2=?, a3=?.
  The `jal` at 0x1006f314 calls kt_output_dbug [0x10046d74] with a0=0x9, a1=0x101986a8, a2=ret(fcPioRead32), a3=?.
  The `jal` at 0x1006f34c calls fcPioWrite32 [0x1013dae8] with a0=0x238, a1=one of 0x3ff, 0xfff, a2=?, a3=[[sym(KONAINFO)]].
  The `jal` at 0x1006f38c calls fcPioRead32 [0x1013dd88] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1006f3c0 calls kt_output_dbug [0x10046d74] with a0=0x4, a1=0x101986e8, a2=?, a3=?.
  The `jal` at 0x1006f3e8 calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x1006f40c calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x10198700, a2=?, a3=?.
  The `jal` at 0x1006f438 calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x1006f450 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `bne` branch at 0x1006f204 targets 0x1006f1e8, is taken when s3(?) < 0x3 (signed), and falls through when s3(?) >= 0x3 (signed).
  The `bne` branch at 0x1006f248 targets 0x1006f2e4, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x1006f264 targets 0x1006f270, is taken when t9(=[[sym(KONAINFO)]]) == 0, and falls through when t9(=[[sym(KONAINFO)]]) != 0.
  The `beq` branch at 0x1006f324 targets 0x1006f248, is taken when (s3(=ret(fcPioRead32)) & 0x20) == 0, and falls through when (s3(=ret(fcPioRead32)) & 0x20) != 0.
  The `beq` branch at 0x1006f340 targets 0x1006f41c, is taken when a3(=[[sym(KONAINFO)]]) == 0, and falls through when a3(=[[sym(KONAINFO)]]) != 0.
  The `beq` branch at 0x1006f36c targets 0x1006f388 and is always taken.
  The `beq` branch at 0x1006f380 targets 0x1006f3d0, is taken when s3(?) >= 0x3 (signed), and falls through when s3(?) < 0x3 (signed).
  The `beq` branch at 0x1006f3a0 targets 0x1006f374, is taken when a3(?) == a4(?), and falls through when a3(?) != a4(?).
  The `beq` branch at 0x1006f3c8 targets 0x1006f378 and is always taken.
  The `beq` branch at 0x1006f3d0 targets 0x1006f424, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x1006f414 targets 0x1006f2c0 and is always taken.
  The `beq` branch at 0x1006f41c targets 0x1006f348 and is always taken.
  The `beq` branch at 0x1006f458 targets 0x1006f2c0 and is always taken.
  The return at 0x1006f2dc has v0 = ret(kt_output_rslt).

- `TEST_hh_reg` in `usr/diags/IR/bin/irsaudit` at 0x10078ff8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x10078ff8-0x10079244 (588 bytes).
  It occupies 588 bytes.
  The `lw` at 0x1007901c loads 4 bytes from abs 0x102bd7c4.
  5 such `lw` accesses load 4 bytes from abs 0x102bc83c, including `lw` at 0x1007903c, `lw` at 0x10079058, `lw` at 0x100790ac.
  The `lw` at 0x1007904c loads 4 bytes from abs 0x102bd744.
  The `lw` at 0x1007907c loads 4 bytes from abs 0x102bdddc.
  The `lw` at 0x100790ec loads 4 bytes from abs 0x102bc840.
  The `lw` at 0x100790f4 loads 4 bytes from abs 0x102bd8a0.
  The `lw` at 0x10079100 loads 4 bytes from abs 0x102bd730.
  The `lw` at 0x10079180 loads 4 bytes from abs 0x102bd760.
  2 such `lw` accesses load 4 bytes from abs 0x102bd764, including `lw` at 0x1007919c, `lw` at 0x10079210.
  2 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x100791c0, `lw` at 0x1007922c.
  The `jal` at 0x10079038 calls hash_value [0x10059f54] with a0=0x10199f50, a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1007906c calls kt_output_dbug [0x10046d74] with a0=0x3, a1=0x10199f60, a2=ret(hash_value), a3=?.
  The `jal` at 0x10079088 calls fcPioWrite32 [0x1013dae8] with a0=0x320, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10079098 calls fcPioWrite32 [0x1013dae8] with a0=0x308, a1=0x1, a2=?, a3=?.
  The `jal` at 0x100790b4 calls kt_output_dbug [0x10046d74] with a0=0x4, a1=0x10199f78, a2=?, a3=?.
  The `jal` at 0x10079114 calls basicSanityReg [0x1008a820] with a0=a0 at entry (arg0), a1=0x10200bf0, a2=0x10200c00, a3=0x0.
  The `jal` at 0x10079138 calls kt_output_info [0x10046374] with a0=0x10199fa0, a1=?, a2=?, a3=?.
  The `jal` at 0x10079158 calls fcPioWrite32 [0x1013dae8] with a0=0x308, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10079168 calls fcPioWrite32 [0x1013dae8] with a0=0x320, a1=0x1, a2=?, a3=?.
  The `jal` at 0x1007918c calls kt_code_chip [0x1004797c] with a0=0x2, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x100791a8 calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x100791d0 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x10199fd0, a2=?, a3=?.
  The `jal` at 0x1007921c calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x10079234 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `blez` branch at 0x100790e4 targets 0x10079150, is taken when s8(=ret(hash_value)) <= 0 (signed), and falls through when s8(=ret(hash_value)) > 0 (signed).
  The `beq` branch at 0x1007911c targets 0x10079140, is taken when v0(=ret(basicSanityReg)) == 0, and falls through when v0(=ret(basicSanityReg)) != 0.
  The `bne` branch at 0x10079148 targets 0x10079104, is taken when s2(?) < s8(=ret(hash_value)) (signed), and falls through when s2(?) >= s8(=ret(hash_value)) (signed).
  The `beq` branch at 0x10079170 targets 0x1007920c, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x1007923c targets 0x100791dc and is always taken.
  The return at 0x10079204 has v0 = ret(kt_output_rslt).

- `TEST_ha_reg` in `usr/diags/IR/bin/irsaudit` at 0x10079244 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x10079244-0x10079564 (800 bytes).
  It occupies 800 bytes.
  The `lw` at 0x10079264 loads 4 bytes from abs 0x102bd7c4.
  6 such `lw` accesses load 4 bytes from abs 0x102bc83c, including `lw` at 0x10079284, `lw` at 0x1007929c, `lw` at 0x100792f4.
  The `lw` at 0x10079294 loads 4 bytes from abs 0x102bd744.
  2 such `lw` accesses load 4 bytes from abs 0x102bdddc, including `lw` at 0x100792c4, `lw` at 0x10079458.
  The `lw` at 0x1007930c loads 4 bytes from abs 0x102bd6a0.
  The `lw` at 0x10079364 loads 4 bytes from abs 0x102be1e0.
  The `lw` at 0x10079368 loads 4 bytes from abs 0x102bc840.
  The `lw` at 0x10079370 loads 4 bytes from abs 0x102bd8a0.
  The `lw` at 0x1007937c loads 4 bytes from abs 0x102bd730.
  The `lw` at 0x10079418 loads 4 bytes from sym(KONAINFO) +0x0.
  The `lw` at 0x1007941c loads 4 bytes from [sym(KONAINFO)] +0x0.
  The `lw` at 0x1007948c loads 4 bytes from abs 0x102bd760.
  2 such `lw` accesses load 4 bytes from abs 0x102bd764, including `lw` at 0x100794a8, `lw` at 0x10079528.
  2 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x100794cc, `lw` at 0x10079544.
  The `jal` at 0x10079280 calls hash_value [0x10059f54] with a0=0x10199f50, a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100792b4 calls kt_output_dbug [0x10046d74] with a0=0x3, a1=0x10199f60, a2=ret(hash_value), a3=?.
  The `jal` at 0x100792d0 calls fcPioWrite32 [0x1013dae8] with a0=0x320, a1=0x0, a2=?, a3=?.
  The `jal` at 0x100792e0 calls fcPioWrite32 [0x1013dae8] with a0=0x308, a1=0x1, a2=?, a3=?.
  The `jal` at 0x100792fc calls kt_output_dbug [0x10046d74] with a0=0x4, a1=0x1019a000, a2=?, a3=?.
  The `jal` at 0x10079310 calls HipRevRead [0x10038954] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1007938c calls basicSanityReg [0x1008a820] with a0=a0 at entry (arg0), a1=0x10200bf0, a2=0x10200d60, a3=0x1.
  The `jal` at 0x100793b0 calls kt_output_info [0x10046374] with a0=0x1019a028, a1=?, a2=?, a3=?.
  The `jal` at 0x100793d4 calls basicSanityReg [0x1008a820] with a0=a0 at entry (arg0), a1=0x10200bf0, a2=one of 0x10200c60, 0x10200c78, a3=0x1.
  The `jal` at 0x100793f8 calls kt_output_info [0x10046374] with a0=0x1019a028, a1=?, a2=?, a3=?.
  The `jal` at 0x10079438 calls basicSanityReg [0x1008a820] with a0=a0 at entry (arg0), a1=0x10200bf0, a2=0x10200c90, a3=0x1.
  The `jal` at 0x10079464 calls fcPioWrite32 [0x1013dae8] with a0=0x308, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10079474 calls fcPioWrite32 [0x1013dae8] with a0=0x320, a1=0x1, a2=?, a3=?.
  The `jal` at 0x10079498 calls kt_code_chip [0x1004797c] with a0=0x2, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x100794b4 calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x100794dc calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x1019a060, a2=?, a3=?.
  The `jal` at 0x10079534 calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x1007954c calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x10079328 targets 0x10079518, is taken when v0(=ret(HipRevRead)) == ra(=0x30), and falls through when v0(=ret(HipRevRead)) != ra(=0x30).
  The `blez` branch at 0x1007935c targets 0x1007955c, is taken when at(=ret(hash_value)) <= 0 (signed), and falls through when at(=ret(hash_value)) > 0 (signed).
  The `beq` branch at 0x10079378 targets 0x10079418 and is always taken.
  The `beq` branch at 0x10079398 targets 0x100793b8, is taken when s3(=ret(basicSanityReg)) == 0, and falls through when s3(=ret(basicSanityReg)) != 0.
  The `beq` branch at 0x100793bc targets 0x10079448, is taken when a1(=one of 0x0, 0x1) == 0, and falls through when a1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x100793dc targets 0x10079400, is taken when v0(=ret(basicSanityReg)) == 0, and falls through when v0(=ret(basicSanityReg)) != 0.
  The `beq` branch at 0x10079410 targets 0x10079450, is taken when s5(?) >= t8(=ret(hash_value)) (signed), and falls through when s5(?) < t8(=ret(hash_value)) (signed).
  The `bne` branch at 0x10079420 targets 0x10079380, is taken when t9(=[[sym(KONAINFO)]]) != 0, and falls through when t9(=[[sym(KONAINFO)]]) == 0.
  The `beq` branch at 0x10079440 targets 0x10079398 and is always taken.
  The `beq` branch at 0x10079448 targets 0x100793cc and is always taken.
  The `beq` branch at 0x1007947c targets 0x10079524, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0x1007951c targets 0x10079334 and is always taken.
  The `beq` branch at 0x10079554 targets 0x100794e8 and is always taken.
  The `beq` branch at 0x1007955c targets 0x10079450 and is always taken.
  The return at 0x10079510 has v0 = ret(kt_output_rslt).

- `TEST_dg_reg` in `usr/diags/IR/bin/irsaudit` at 0x10079790 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x10079790-0x10079858 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0x100797b4 loads 4 bytes from abs 0x102bd818.
  The `lw` at 0x100797b8 loads 4 bytes from abs 0x102bc840.
  2 such `lw` accesses load 4 bytes from abs 0x102bd764, including `lw` at 0x100797d8, `lw` at 0x10079824.
  2 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x100797fc, `lw` at 0x10079840.
  The `lw` at 0x10079800 loads 4 bytes from abs 0x102bc83c.
  The `jal` at 0x100797c0 calls DgSanityTest [0x100642b4] with a0=a0 at entry (arg0), a1=0x10200bf0, a2=0x10200e30, a3=a3 at entry (arg3).
  The `jal` at 0x100797e4 calls kt_code_result [0x10048068] with a0=0x3, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x10079808 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x1019a100, a2=?, a3=?.
  The `jal` at 0x10079830 calls kt_code_result [0x10048068] with a0=0x3, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x10079848 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x100797c8 targets 0x10079820, is taken when v0(=ret(DgSanityTest)) == 0, and falls through when v0(=ret(DgSanityTest)) != 0.
  The `beq` branch at 0x10079850 targets 0x10079814 and is always taken.
  The return at 0x10079818 has v0 = ret(kt_output_rslt).

- `xg_xt_report_stats` in `usr/diags/IR/bin/irsaudit` at 0x101081e4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x101081e4-0x101082fc (280 bytes).
  It occupies 280 bytes.
  The `lw` at 0x10108204 loads 4 bytes from abs 0x102bddec.
  The `lw` at 0x10108228 loads 4 bytes from abs 0x102bd744.
  6 such `lw` accesses load 4 bytes from abs 0x102bcf84, including `lw` at 0x10108244, `lw` at 0x10108268, `lw` at 0x1010827c.
  The `jal` at 0x10108218 calls fcAdapPioRead32 [0x1013dd20] with a0=0xa4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10108240 calls kt_output_dbug [0x10046d74] with a0=0x1, a1=0x101b50f0, a2=?, a3=?.
  The `jal` at 0x1010824c calls fcAdapPioRead32 [0x1013dd20] with a0=0xc, a1=?, a2=?, a3=?.
  The `jal` at 0x10108284 calls kt_output_dbug [0x10046d74] with a0=0x1, a1=0x101b5118, a2=one of 0x101b5108, 0x101b5110, a3=0x101b50f0, a4=(ret(fcAdapPioRead32) << 0x1a).
  The `jal` at 0x101082a4 calls kt_output_dbug [0x10046d74] with a0=0x1, a1=0x101b5130, a2=?, a3=?.
  The `jal` at 0x101082c8 calls kt_output_dbug [0x10046d74] with a0=0x1, a1=0x101b5158, a2=?, a3=?.
  The `bltz` branch at 0x10108264 targets 0x101082e8, is taken when a4(=(ret(fcAdapPioRead32) << 0x1a)) < 0 (signed), and falls through when a4(=(ret(fcAdapPioRead32) << 0x1a)) >= 0 (signed).
  The `beq` branch at 0x101082f4 targets 0x10108270 and is always taken.
  The return at 0x101082e0 has v0 = ret(kt_output_dbug).

- `reg_test` in `usr/diags/IR/bin/irsaudit` at 0x101153a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x101153a0-0x1011582c (1164 bytes).
  It occupies 1164 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x102bd744, including `lw` at 0x10115438, `lw` at 0x10115810.
  2 such `lw` accesses load 4 bytes from abs 0x102bdea8, including `lw` at 0x10115448, `lw` at 0x10115828.
  2 such `lw` accesses load 4 bytes from abs 0x102bdea0, including `lw` at 0x10115470, `lw` at 0x10115804.
  2 such `lw` accesses load 4 bytes from abs 0x102bd730, including `lw` at 0x10115480, `lw` at 0x1011581c.
  13 such `lw` accesses load 4 bytes from abs 0x102bd09c, including `lw` at 0x10115494, `lw` at 0x101154f0, `lw` at 0x10115538.
  The `lw` at 0x1011562c loads 4 bytes from ?.
  The `jal` at 0x101154a0 calls kt_output_dbug [0x10046d74] with a0=0x8, a1=0x101b7110, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x101154d8 calls vcWrite [0x1014071c] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x101154fc calls kt_output_dbug [0x10046d74] with a0=0x8, a1=0x101b7028, a2=a0 at entry (arg0), a3=?.
  The `jal` at 0x1011550c calls vcWrite [0x1014071c] with a0=0xc008, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10115518 calls vcRead [0x10140bac] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x10115548 calls kt_output_info [0x10046374] with a0=0x101b7050, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x10115578 calls kt_output_dbug [0x10046d74] with a0=0x8, a1=0x101b7090, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x10115588 calls vcWrite [0x1014071c] with a0=0xc008, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10115594 calls vcRead [0x10140bac] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x101155c4 calls kt_output_info [0x10046374] with a0=0x101b70c8, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x10115600 calls kt_output_dbug [0x10046d74] with a0=0x8, a1=0x101b72d0, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x1011563c calls vcWrite [0x1014071c] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10115660 calls kt_output_dbug [0x10046d74] with a0=0x8, a1=0x101b7148, a2=a0 at entry (arg0), a3=?.
  The `jal` at 0x10115670 calls vcWrite [0x1014071c] with a0=0xc008, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1011567c calls vcRead [0x10140bac] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x101156ac calls kt_output_info [0x10046374] with a0=0x101b7170, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x101156dc calls kt_output_dbug [0x10046d74] with a0=0x8, a1=0x101b71b0, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x101156ec calls vcWrite [0x1014071c] with a0=0xc008, a1=0x0, a2=?, a3=?.
  The `jal` at 0x101156f8 calls vcRead [0x10140bac] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1011572c calls kt_output_info [0x10046374] with a0=0x101b71e8, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x10115738 calls vcRead [0x10140bac] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x10115764 calls kt_output_info [0x10046374] with a0=0x101b7230, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x10115780 calls kt_output_dbug [0x10046d74] with a0=0x4, a1=0x101b7278, a2=?, a3=?.
  The `jal` at 0x101157a8 calls kt_output_info [0x10046374] with a0=0x101b7288, a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0x10115424 targets 0x101157f0, is taken when a3 >= a2 (signed), and falls through when a3 < a2 (signed).
  The `bne` branch at 0x10115458 targets 0x1011544c, is taken when v0(?) < a2 (signed), and falls through when v0(?) >= a2 (signed).
  The `beq` branch at 0x1011547c targets 0x101154c0 and is always taken.
  The `beq` branch at 0x101154bc targets 0x101155d4, is taken when a2(?) >= a3(=a2) (signed), and falls through when a2(?) < a3(=a2) (signed).
  The `beq` branch at 0x10115524 targets 0x10115558, is taken when a2(?) == s6(?), and falls through when a2(?) != s6(?).
  The `beq` branch at 0x10115550 targets 0x10115580 and is always taken.
  The `beq` branch at 0x101155a4 targets 0x10115484, is taken when a2(?) == a4(?), and falls through when a2(?) != a4(?).
  The `beq` branch at 0x101155cc targets 0x101154a8 and is always taken.
  The `beq` branch at 0x101155d8 targets 0x10115628 and is always taken.
  The `beq` branch at 0x10115620 targets 0x101157b8, is taken when a2(?) >= 0x6 (signed), and falls through when a2(?) < 0x6 (signed).
  The `beq` branch at 0x10115688 targets 0x101156bc, is taken when a2(?) == s6(?), and falls through when a2(?) != s6(?).
  The `beq` branch at 0x101156b4 targets 0x101156e4 and is always taken.
  The `beq` branch at 0x10115708 targets 0x101155e0, is taken when a2(?) == a7(?), and falls through when a2(?) != a7(?).
  The `beq` branch at 0x10115748 targets 0x10115790, is taken when a1(?) == a3(?), and falls through when a1(?) != a3(?).
  The `beq` branch at 0x10115788 targets 0x101157b0 and is always taken.
  The `beq` branch at 0x101157b0 targets 0x10115608 and is always taken.
  The `beq` branch at 0x10115824 targets 0x101155d4 and is always taken.
  The return at 0x101157e8 has v0 = ?.

- `Compact_HIP_Geom_Control` in `usr/diags/IR/bin/irsaudit` at 0x1013f44c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x1013f44c-0x1013f4c0 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0x1013f44c loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0x1013f450 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0x1013f460 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x1013f468 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1013f470 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x1013f484 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The return at 0x1013f4b8 has v0 = ?.

- `Compact_HIP_Pass_Control` in `usr/diags/IR/bin/irsaudit` at 0x1013f4c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x1013f4c0-0x1013f51c (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0x1013f4c0 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x1013f4c4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x1013f4c8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0x1013f4d0 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0x1013f4d4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The return at 0x1013f514 has v0 = ?.

- `Compact_HIP_Reg_Pixel_Control` in `usr/diags/IR/bin/irsaudit` at 0x1013f51c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x1013f51c-0x1013f578 (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0x1013f51c loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x1013f520 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x1013f524 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0x1013f52c loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0x1013f530 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The return at 0x1013f570 has v0 = ?.

- `Compact_GED_Reg_Pixel_Control` in `usr/diags/IR/bin/irsaudit` at 0x1013f6fc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x1013f6fc-0x1013f728 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0x1013f6fc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x1013f700 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The return at 0x1013f720 has v0 = ?.

- `Transfer_GED_Reg` in `usr/diags/IR/bin/irsaudit` at 0x1013f940 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x1013f940-0x1013fa48 (264 bytes).
  It occupies 264 bytes.
  The `lw` at 0x1013f988 loads 4 bytes from abs 0x102bde78.
  The `lw` at 0x1013f9a8 loads 4 bytes from abs 0x102bddf8.
  The `lw` at 0x1013f9e4 loads 4 bytes from abs 0x102bde70.
  The `jal` at 0x1013f998 calls Compact_GED_Reg_Pixel_Control [0x1013f6fc] with a0=sp-48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1013f9b8 calls fcGfxWrite32 [0x1013df2c] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1013f9c4 calls fcGfxWrite32 [0x1013df2c] with a0=0x7, a1=?, a2=?, a3=?.
  The `jal` at 0x1013f9d4 calls fcGfxWrite32 [0x1013df2c] with a0=0x200600, a1=?, a2=?, a3=?.
  The `jal` at 0x1013f9e8 calls Compact_HIP_Reg_Pixel_Control [0x1013f51c] with a0=sp-80, a1=?, a2=?, a3=?.
  The `jal` at 0x1013f9f4 calls fcGfxWrite32 [0x1013df2c] with a0=ret(Compact_HIP_Reg_Pixel_Control), a1=?, a2=?, a3=?.
  The `jal` at 0x1013fa00 calls fcGfxWrite32 [0x1013df2c] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1013fa0c calls fcGfxWrite32 [0x1013df2c] with a0=0x7, a1=?, a2=?, a3=?.
  The `jal` at 0x1013fa1c calls fcGfxWrite32 [0x1013df2c] with a0=0x200a80, a1=?, a2=?, a3=?.
  The `jal` at 0x1013fa2c calls fcGfxWrite32 [0x1013df2c] with a0=0xffffffffdeadbeef, a1=?, a2=?, a3=?.
  The return at 0x1013fa40 has v0 = ret(fcGfxWrite32).

- `select_window__5FrameGP9_XDisplay` in `usr/gfx/ircombine` at 0x10048030 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10048030-0x1004823c (524 bytes).
  It occupies 524 bytes.
  The `lw` at 0x10048054 loads 4 bytes from a1 (arg1 at entry) +0x84.
  The `lw` at 0x10048064 loads 4 bytes from a1 (arg1 at entry) +0x8c.
  The `lw` at 0x1004807c loads 4 bytes from ([a1+140] + ((([a1+132] << 0x2) + [a1+132]) << 0x4)) +0x8.
  The `jalr` at 0x10048094 calls XCreateFontCursor with a0=a1 at entry (arg1), a1=0x22, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100480cc calls XGrabPointer with a0=a1 at entry (arg1), a1=[([a1+140] + ((([a1+132] << 0x2) + [a1+132]) << 0x4))+8], a2=0x0, a3=0xc, a4=0x0, a5=0x1, a6=[([a1+140] + ((([a1+132] << 0x2) + [a1+132]) << 0x4))+8], a7=ret(XCreateFontCursor).
  The `jalr` at 0x100480fc calls fprintf with a0=sym(__iob)+32, a1=0x10097c48, a2=?, a3=?.
  The `jalr` at 0x1004810c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004813c calls XAllowEvents with a0=a1 at entry (arg1), a1=0x1, a2=0x0, a3=?.
  The `jalr` at 0x10048158 calls XWindowEvent with a0=a1 at entry (arg1), a1=[([a1+140] + ((([a1+132] << 0x2) + [a1+132]) << 0x4))+8], a2=0xc, a3=sp-152.
  The `jalr` at 0x1004820c calls XUngrabPointer with a0=a1 at entry (arg1), a1=0x0, a2=?, a3=?, a4=0x4.
  The `beq` branch at 0x100480e0 targets 0x10048114, is taken when a0(=ret(XGrabPointer)) == 0, and falls through when a0(=ret(XGrabPointer)) != 0.
  The `beq` branch at 0x10048118 targets 0x1004812c and is always taken.
  The `beq` branch at 0x1004816c targets 0x1004818c, is taken when a3(?) == a4(=0x4), and falls through when a3(?) != a4(=0x4).
  The `beq` branch at 0x1004817c targets 0x100481c8, is taken when a5(?) == a6(=0x5), and falls through when a5(?) != a6(=0x5).
  The `beq` branch at 0x10048184 targets 0x100481e8 and is always taken.
  The `bne` branch at 0x10048190 targets 0x100481b4, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `bne` branch at 0x100481a4 targets 0x100481b4, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x100481c0 targets 0x100481e8 and is always taken.
  The `blez` branch at 0x100481cc targets 0x100481e0, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed).
  The `beq` branch at 0x100481e0 targets 0x100481e8 and is always taken.
  The `beq` branch at 0x100481ec targets 0x1004812c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x100481f8 targets 0x1004812c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x1004821c targets 0x10048224 and is always taken.
  The return at 0x10048234 has v0 = ?.
  The instructions from 0x10048120 to 0x10048128 are not reached by any path from the entry, and their branches are not listed.

- `gl_d_window` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec49aa8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec49aa8-0xec49b78 (208 bytes).
  It occupies 208 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xecdc60c (comm_curbufpos), including `lw` at 0xec49ac0, `lw` at 0xec49b00.
  2 such `lw` accesses load 4 bytes from abs 0xecdc608 (comm_endbuffer), including `lw` at 0xec49ac4, `lw` at 0xec49b48.
  The `sw` at 0xec49b0c stores 4 bytes to [0xecdc60c] +0x0.
  The `swc1` at 0xec49b18 stores 4 bytes to [0xecdc60c] +0x4.
  The `swc1` at 0xec49b20 stores 4 bytes to [0xecdc60c] +0x8.
  The `swc1` at 0xec49b28 stores 4 bytes to [0xecdc60c] +0xc.
  The `swc1` at 0xec49b30 stores 4 bytes to [0xecdc60c] +0x10.
  The `swc1` at 0xec49b38 stores 4 bytes to [0xecdc60c] +0x14.
  The `swc1` at 0xec49b40 stores 4 bytes to [0xecdc60c] +0x18.
  The `sw` at 0xec49b44 stores 4 bytes to abs 0xecdc60c (comm_curbufpos).
  The `jalr` at 0xec49af0 calls gl_comm_flush [0xec3ff10] with a0=0xecdc60c, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xec49b5c calls gl_comm_flush [0xec3ff10] with a0=0xecdc60c, a1=?, a2=?, a3=?.
  The `beq` branch at 0xec49ae4 targets 0xec49b08, is taken when t6(=[0xecdc608]) >= v1(=[0xecdc60c]+28) (unsigned), and falls through when t6(=[0xecdc608]) < v1(=[0xecdc60c]+28) (unsigned).
  The `beql` branch at 0xec49b50 targets 0xec49b6c, is taken when t8(=[0xecdc608]) >= v1(=[0xecdc60c]+28) (unsigned), and falls through when t8(=[0xecdc608]) < v1(=[0xecdc60c]+28) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xec49b54 runs only when taken and is annulled on fall-through.
  The return at 0xec49b70 has v0 = one of [0xecdc60c], ret(gl_comm_flush).

- `gl_g_window` in `usr/gfx/arch/IGLOO/libgl.so` at 0xecc67cc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xecc67cc-0xecc69dc (528 bytes).
  It occupies 528 bytes.
  The `jalr` at 0xecc6870 calls gl_ErrorHandler [0xec5dbec] with a0=0x4, a1=0x2, a2=0xecd8d30, a3=a3 at entry (arg3).
  The `jalr` at 0xecc68b8 calls gl_identifymatrix [0xecc69dc] with a0=sp-76, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc695c calls gl_nonprim_checkspace [0xecb42f4] with a0=0x2a, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc698c calls gl_compile [0xecb41a0] with a0=0x4, a1=sp-88, a2=?, a3=?.
  The `jalr` at 0xecc699c calls gl_savemmode [0xecc5f10] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc69b0 calls __GLloadmatrix with a0=sp-76, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc69c0 calls gl_restoremmode [0xecc5fec] with a0=?, a1=?, a2=?, a3=?.
  The `bc1t` branch at 0xecc6804 targets 0xecc6840, is taken when f4(=f14) == f6(=f12) (c.eq.s at 0xecc67f4), and falls through when not (f4(=f14) == f6(=f12) (c.eq.s at 0xecc67f4)).
  The `bc1tl` branch at 0xecc6824 targets 0xecc6844, is taken when f0 == f12 (c.eq.s at 0xecc681c), and falls through when not (f0 == f12 (c.eq.s at 0xecc681c)); its branch-likely delay slot `lwc1 $f8,148(sp)` at 0xecc6828 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xecc6838 targets 0xecc6888, is taken when not (f2 == f12 (c.eq.s at 0xecc6830)), and falls through when f2 == f12 (c.eq.s at 0xecc6830); its branch-likely delay slot `lwc1 $f8,140(sp)` at 0xecc683c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xecc6964 targets 0xecc69cc, is taken when v0(=ret(gl_nonprim_checkspace)) == 0, and falls through when v0(=ret(gl_nonprim_checkspace)) != 0.
  The return at 0xecc69d4 has v0 = one of ret(gl_nonprim_checkspace), ret(gl_restoremmode).

- `gl_adjust_window` in `usr/gfx/arch/IGLOO/libgl.so` at 0xecca1f4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xecca1f4-0xecca3cc (472 bytes).
  It occupies 472 bytes.
  The `lw` at 0xecca218 loads 4 bytes from a0 (arg0 at entry) +0x40.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0xecca224, `lw` at 0xecca284, `lw` at 0xecca2f4.
  The `lw` at 0xecca234 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xecca28c loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0xecca29c loads 4 bytes from a0 (arg0 at entry) +0x3c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0xecca2a4, `lw` at 0xecca304.
  The `sw` at 0xecca2f8 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `sw` at 0xecca300 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  The `lw` at 0xecca310 loads 4 bytes from [a0+12] +0x70.
  The `lw` at 0xecca31c loads 4 bytes from [[a0+12]+112] +0x40.
  The `sw` at 0xecca348 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `lbu` at 0xecca368 loads 1 byte from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xecca378 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `lw` at 0xecca388 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0xecca3a8 loads 4 bytes from ?.
  The `jalr` at 0xecca278 calls XGetGeometry with a0=[a0+4], a1=[a0+64], a2=sp-20, a3=sp-24.
  The `jalr` at 0xecca2b4 calls XResizeWindow with a0=?, a1=[a0+8], a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xecca2d0 calls _GLresizeOvWindows [0xec945d0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xecca2e4 calls XFlush with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xecca334 calls XTranslateCoordinates with a0=?, a1=[a0+8], a2=[[[a0+12]+112]+64], a3=0x0.
  The `jalr` at 0xecca360 calls _GLinvertY [0xecc8b80] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xecca3a0 calls gl_adjust_window [0xecca1f4] with a0=?, a1=0x0, a2=0x0, a3=?.
  The `beql` branch at 0xecca228 targets 0xecca3bc, is taken when t6(=[a0+64]) == a1(=[a0+8]), and falls through when t6(=[a0+64]) != a1(=[a0+8]); its branch-likely delay slot `lw ra,52(sp)` at 0xecca22c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xecca23c targets 0xecca288, is taken when t9(=a1) != 0, and falls through when t9(=a1) == 0.
  The `bne` branch at 0xecca294 targets 0xecca2a8, is taken when t5(=a1) != t6(=[a0+56]), and falls through when t5(=a1) == t6(=[a0+56]).
  The `beql` branch at 0xecca2a0 targets 0xecca308, is taken when t8(=a2) == t9(=[a0+60]), and falls through when t8(=a2) != t9(=[a0+60]); its branch-likely delay slot `lw t1,12(s0)` at 0xecca2a4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xecca374 targets 0xecca388, is taken when v1(=[a0+44]:1) == at(=0x2), and falls through when v1(=[a0+44]:1) != at(=0x2).
  The `bnel` branch at 0xecca380 targets 0xecca3bc, is taken when v1(=[a0+44]:1) != at(=0x4), and falls through when v1(=[a0+44]:1) == at(=0x4); its branch-likely delay slot `lw ra,52(sp)` at 0xecca384 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xecca38c targets 0xecca3bc, is taken when s0(=[a0+72]) == 0, and falls through when s0(=[a0+72]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xecca390 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xecca3b0 targets 0xecca394, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The return at 0xecca3c4 has v0 = one of ?, ret(_GLinvertY), ret(gl_adjust_window).

- `gl_d_window` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec49a70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec49a70-0xec49b5c (236 bytes).
  It occupies 236 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xecd6c4c (comm_curbufpos), including `lw` at 0xec49a90, `lw` at 0xec49b44.
  2 such `lw` accesses load 4 bytes from abs 0xecd6c48 (comm_endbuffer), including `lw` at 0xec49a98, `lw` at 0xec49ae0.
  The `swc1` at 0xec49ac0 stores 4 bytes to [0xecd6c4c] +0x18.
  The `swc1` at 0xec49ac4 stores 4 bytes to [0xecd6c4c] +0x14.
  The `swc1` at 0xec49ac8 stores 4 bytes to [0xecd6c4c] +0x10.
  The `swc1` at 0xec49acc stores 4 bytes to [0xecd6c4c] +0xc.
  The `swc1` at 0xec49ad0 stores 4 bytes to [0xecd6c4c] +0x8.
  The `swc1` at 0xec49ad4 stores 4 bytes to [0xecd6c4c] +0x4.
  The `sw` at 0xec49adc stores 4 bytes to [0xecd6c4c] +0x0.
  The `sw` at 0xec49af0 stores 4 bytes to abs 0xecd6c4c (comm_curbufpos).
  The `jalr` at 0xec49b1c calls gl_comm_flush [0xec40750] with a0=a0 at entry (arg0), a1=[0xecd6c4c], a2=0xecd6c4c, a3=0xecd6c48.
  The `jalr` at 0xec49b4c calls gl_comm_flush [0xec40750] with a0=[0xecd6c4c]+28, a1=[0xecd6c4c], a2=0xecd6c4c, a3=0xecd6c48, a5=0x97.
  The `bne` branch at 0xec49ab8 targets 0xec49b08, is taken when at(=[0xecd6c48]) < v0(=[0xecd6c4c]+28) (unsigned), and falls through when at(=[0xecd6c48]) >= v0(=[0xecd6c4c]+28) (unsigned).
  The `bne` branch at 0xec49aec targets 0xec49b48, is taken when a4(=[0xecd6c48]) < a0(=[0xecd6c4c]+28) (unsigned), and falls through when a4(=[0xecd6c48]) >= a0(=[0xecd6c4c]+28) (unsigned).
  The `beq` branch at 0xec49b40 targets 0xec49ac0 and is always taken.
  The `beq` branch at 0xec49b54 targets 0xec49af8 and is always taken.
  The return at 0xec49b00 has v0 = one of ?, ret(gl_comm_flush).

- `gl_g_window` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xecc52e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xecc52e0-0xecc54a8 (456 bytes).
  It occupies 456 bytes.
  The `jalr` at 0xecc5394 calls gl_ErrorHandler [0xec5d440] with a0=0x4, a1=0x2, a2=0xecded28, a3=a3 at entry (arg3).
  The `bgezall` at 0xecc53a4 calls (unnamed) [0xecc54b0] with a0=sp-176, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc5438 calls gl_nonprim_checkspace [0xecb5160] with a0=0x2a, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc545c calls gl_compile [0xecb5010] with a0=0x4, a1=sp-112, a2=?, a3=?.
  The `bgezall` at 0xecc5468 calls gl_savemmode [0xecc4b00] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc5474 calls __GLloadmatrix with a0=sp-176, a1=?, a2=?, a3=?.
  The `bgezall` at 0xecc5480 calls gl_restoremmode [0xecc4be0] with a0=?, a1=?, a2=?, a3=?.
  The `bc1t` branch at 0xecc5328 targets 0xecc536c, is taken when f8 == f9 (c.eq.s at 0xecc5304), and falls through when not (f8 == f9 (c.eq.s at 0xecc5304)).
  The `bc1t` branch at 0xecc534c targets 0xecc5388, is taken when f24 == f9 (c.eq.s at 0xecc533c), and falls through when not (f24 == f9 (c.eq.s at 0xecc533c)).
  The `bc1f` branch at 0xecc535c targets 0xecc53a0, is taken when not (f26 == f9 (c.eq.s at 0xecc5354)), and falls through when f26 == f9 (c.eq.s at 0xecc5354).
  The `beq` branch at 0xecc5364 targets 0xecc538c and is always taken.
  The `beq` branch at 0xecc5440 targets 0xecc5488, is taken when v0(=ret(gl_nonprim_checkspace)) == 0, and falls through when v0(=ret(gl_nonprim_checkspace)) != 0.
  The return at 0xecc54a0 has v0 = one of ret(gl_nonprim_checkspace), ret(gl_restoremmode).

- `gl_adjust_window` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xecc8a80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xecc8a80-0xecc8c24 (420 bytes).
  It occupies 420 bytes.
  The `lw` at 0xecc8a8c loads 4 bytes from a0 (arg0 at entry) +0x40.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0xecc8a94, `lw` at 0xecc8b0c, `lw` at 0xecc8c20.
  The `lw` at 0xecc8ac4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xecc8ac8 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0xecc8ad0 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `sw` at 0xecc8b14 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `sw` at 0xecc8b1c stores 4 bytes to a0 (arg0 at entry) +0x3c.
  The `lw` at 0xecc8b20 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xecc8b38 loads 4 bytes from [a0+12] +0x70.
  The `lw` at 0xecc8b4c loads 4 bytes from [[a0+12]+112] +0x40.
  The `sw` at 0xecc8b58 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `lbu` at 0xecc8b78 loads 1 byte from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xecc8b88 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `lw` at 0xecc8ba4 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0xecc8bd0 loads 4 bytes from ?.
  The `jalr` at 0xecc8ae4 calls XResizeWindow with a0=[a0+4], a1=[a0+8], a2=a1 at entry (arg1), a3=a2 at entry (arg2), a5=a1 at entry (arg1).
  The `jalr` at 0xecc8af8 calls _GLresizeOvWindows [0xec97950] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xecc8b04 calls XFlush with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0xecc8b48 calls XTranslateCoordinates with a0=[a0+4], a1=[a0+8], a2=[[[a0+12]+112]+64], a3=0x0, a4=0x0, a5=sp-76, a6=sp-72, a7=sp-68.
  The `bgezall` at 0xecc8b70 calls _GLinvertY [0xecc75d0] with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=?.
  The `bgezall` at 0xecc8bc8 calls gl_adjust_window [0xecc8a80] with a0=?, a1=0x0, a2=0x0, a3=?.
  The `jalr` at 0xecc8c0c calls XGetGeometry with a0=[a0+4], a1=[a0+64], a2=sp-96, a3=sp-92, a4=sp-88, a5=sp-20, a6=sp-12, a7=sp-84.
  The `beq` branch at 0xecc8ab4 targets 0xecc8b90, is taken when t1(=[a0+8]) == t2(=[a0+64]), and falls through when t1(=[a0+8]) != t2(=[a0+64]).
  The `beq` branch at 0xecc8ac0 targets 0xecc8be4, is taken when a1 == 0, and falls through when a1 != 0.
  The `bne` branch at 0xecc8acc targets 0xecc8ad8, is taken when v0(=[a0+56]) != a5(=a1), and falls through when v0(=[a0+56]) == a5(=a1).
  The `beq` branch at 0xecc8ad4 targets 0xecc8b20, is taken when v1(=[a0+60]) == a3(=a2), and falls through when v1(=[a0+60]) != a3(=a2).
  The `beq` branch at 0xecc8b84 targets 0xecc8ba4, is taken when a0(=[a0+44]:1) == a4(=0x2), and falls through when a0(=[a0+44]:1) != a4(=0x2).
  The `beq` branch at 0xecc8b8c targets 0xecc8ba4, is taken when a0(=[a0+44]:1) == a5(=0x4), and falls through when a0(=[a0+44]:1) != a5(=0x4).
  The `beq` branch at 0xecc8ba8 targets 0xecc8b94, is taken when s0(=[a0+72]) == 0, and falls through when s0(=[a0+72]) != 0.
  The `bne` branch at 0xecc8bd4 targets 0xecc8bc0, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0xecc8bdc targets 0xecc8b94 and is always taken.
  The `beq` branch at 0xecc8c1c targets 0xecc8ac8 and is always taken.
  The return at 0xecc8b9c has v0 = one of ret(_GLinvertY), ?, ret(gl_adjust_window).

- `gfx_flow_flush_my_wg` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x9d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`.
  Range: 0x9d4-0x9ec (24 bytes).
  It occupies 24 bytes.
  The `ld` at 0x9dc loads 8 bytes from abs 0x9200000001030100.
  The return at 0x9e4 has v0 = ?.

- `gfx_pio_write_64` in `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)` at 0xa00 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)`.
  Range: 0xa00-0xa10 (16 bytes).
  It occupies 16 bytes.
  The `sd` at 0xa00 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The return at 0xa08 has v0 = ?.

- `gfx_pio_read_64` in `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)` at 0xa18 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)`.
  Range: 0xa18-0xa20 (8 bytes).
  It occupies 8 bytes.
  The `ld` at 0xa1c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The return at 0xa18 has v0 = [a0]:8.

- `gfx_flow_flush_my_wg` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x7d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x7d4-0x7ec (24 bytes).
  It occupies 24 bytes.
  The `ld` at 0x7dc loads 8 bytes from abs 0x9200000001030100.
  The return at 0x7e4 has v0 = ?.

- `gfx_pio_write_32` in `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)` at 0x9f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)`.
  Range: 0x9f0-0xa00 (16 bytes).
  It occupies 16 bytes.
  The `sw` at 0x9f0 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The return at 0x9f8 has v0 = ?.

- `gfx_pio_write_64` in `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)` at 0xa00 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)`.
  Range: 0xa00-0xa10 (16 bytes).
  It occupies 16 bytes.
  The `sd` at 0xa00 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The return at 0xa08 has v0 = ?.

- `gfx_pio_read_32` in `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)` at 0xa10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)`.
  Range: 0xa10-0xa18 (8 bytes).
  It occupies 8 bytes.
  The `lw` at 0xa14 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The return at 0xa10 has v0 = [a0].

- `gfx_pio_read_64` in `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)` at 0xa18 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)`.
  Range: 0xa18-0xa20 (8 bytes).
  It occupies 8 bytes.
  The `ld` at 0xa1c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The return at 0xa18 has v0 = [a0]:8.

- `output_command_line` in `usr/diags/IR/bin/irsaudit` at 0x1003e9bc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x1003e9bc-0x1003eb70 (436 bytes).
  It occupies 436 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x102bd474, including `lw` at 0x1003ea10, `lw` at 0x1003eb3c.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1003ea1c, `lw` at 0x1003ea90, `lw` at 0x1003ea9c.
  The `lw` at 0x1003ea48 loads 4 bytes from abs 0x102bd48c.
  The `lw` at 0x1003ea80 loads 4 bytes from abs 0x102bd4a0.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x1003eab8, `sb` at 0x1003eafc.
  2 such `lw` accesses load 4 bytes from abs 0x102bc5dc, including `lw` at 0x1003eadc, `lw` at 0x1003eb4c.
  The `lw` at 0x1003eae4 loads 4 bytes from abs 0x102bd73c.
  The `lw` at 0x1003eb10 loads 4 bytes from abs 0x102bd420.
  The `lw` at 0x1003eb54 loads 4 bytes from abs 0x102bd470.
  The `jalr` at 0x1003ea18 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003ea4c calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003ea8c calls strcpy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003ea98 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1003eb00 calls kt_output_uniq [0x100469ac] with a0=0x101882b0, a1=0x101882b8, a2=ret(malloc), a3=?.
  The `jalr` at 0x1003eb18 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003eb60 calls __assert with a0=0x101882a8, a1=0x10188120, a2=0x2fa, a3=?.
  The `blez` branch at 0x1003e9f8 targets 0x1003eb34, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `bne` branch at 0x1003ea30 targets 0x1003ea14, is taken when s3(?) < s4(=a0) (signed), and falls through when s3(?) >= s4(=a0) (signed).
  The `blez` branch at 0x1003ea38 targets 0x1003eb44, is taken when s2(?) <= 0 (signed), and falls through when s2(?) > 0 (signed).
  The `blez` branch at 0x1003ea70 targets 0x1003eabc, is taken when s4(=a0) <= 0 (signed), and falls through when s4(=a0) > 0 (signed).
  The `bne` branch at 0x1003eab4 targets 0x1003ea84, is taken when s6(?) < s4(=a0) (signed), and falls through when s6(?) >= s4(=a0) (signed).
  The `beq` branch at 0x1003eb68 targets 0x1003ea44 and is always taken.
  The return at 0x1003eb2c has v0 = ret(free).

- `TEST_gedcrc_token` in `usr/diags/IR/bin/irsaudit` at 0x10072f08 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x10072f08-0x10073194 (652 bytes).
  It occupies 652 bytes.
  The `lw` at 0x10072f2c loads 4 bytes from abs 0x102bddf4.
  The `lw` at 0x10072f58 loads 4 bytes from abs 0x102bd730.
  4 such `lw` accesses load 4 bytes from abs 0x102bc7dc, including `lw` at 0x10072f5c, `lw` at 0x10073090, `lw` at 0x100730f0.
  The `lw` at 0x10072f80 loads 4 bytes from abs 0x102bd458.
  The `lw` at 0x10072fc0 loads 4 bytes from abs 0x102bdbec.
  The `lw` at 0x10072fd8 loads 4 bytes from abs 0x102bd45c.
  2 such `lw` accesses load 4 bytes from abs 0x102be77c, including `lw` at 0x10072fe0, `lw` at 0x10073150.
  2 such `lw` accesses load 4 bytes from sym(pipeFD) +0x0, including `lw` at 0x10072ff4, `lw` at 0x10073160.
  The `lw` at 0x10073010 loads 4 bytes from abs 0x102bd584.
  The `lw` at 0x10073014 loads 4 bytes from abs 0x102bc7e0.
  4 such `lw` accesses load 4 bytes from abs 0x102bd728, including `lw` at 0x10073034, `lw` at 0x100730ec, `lw` at 0x10073128.
  The `lw` at 0x10073050 loads 4 bytes from abs 0x102bdbf0.
  The `lw` at 0x10073068 loads 4 bytes from abs 0x102bc7e4.
  2 such `lw` accesses load 4 bytes from abs 0x102bd764, including `lw` at 0x100730c8, `lw` at 0x1007310c.
  The `jal` at 0x10072f40 calls fcPioRead32 [0x1013dd88] with a0=0x208, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10072f64 calls kt_output_info [0x10046374] with a0=0x10199448, a1=?, a2=?, a3=?.
  The `jalr` at 0x10072f88 calls sginap with a0=0x5, a1=?, a2=?, a3=?.
  The `jal` at 0x10072f94 calls fcPioRead32 [0x1013dd88] with a0=0x208, a1=?, a2=?, a3=?.
  The `jal` at 0x10072fc4 calls rm_hold [0x100ff9b0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10072ff0 calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=?.
  The `jal` at 0x1007301c calls run_crc_testlist [0x1001d0dc] with a0=0x102006f0, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x10073040 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10073058 calls rm_release [0x100ffa68] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1007306c calls (unnamed) [0x10075c9c] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1007307c calls rm_release [0x100ffa68] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10073098 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x101993e8, a2=?, a3=?.
  The `jal` at 0x100730d4 calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x100730f8 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x101993b0, a2=?, a3=?.
  The `jal` at 0x10073118 calls kt_code_result [0x10048068] with a0=0x1, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x10073134 calls kt_output_rslt [0x10045978] with a0=0x1, a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1007315c calls ioctl with a0=[sym(pipeFD)], a1=0x2775, a2=0x0, a3=?.
  The `jal` at 0x10073184 calls kt_output_rslt [0x10045978] with a0=0x0, a1=0x101993c8, a2=?, a3=?.
  The `beq` branch at 0x10072f6c targets 0x10072fb8, is taken when s0(=ret(fcPioRead32)) == 0, and falls through when s0(=ret(fcPioRead32)) != 0.
  The `beq` branch at 0x10072f9c targets 0x10072fb0, is taken when v0(=ret(fcPioRead32)) == 0, and falls through when v0(=ret(fcPioRead32)) != 0.
  The `bne` branch at 0x10072fa8 targets 0x10072f88, is taken when s0(?) < 0x5 (unsigned), and falls through when s0(?) >= 0x5 (unsigned).
  The `beq` branch at 0x10072fb4 targets 0x100730c0, is taken when s0(?) >= 0x5 (unsigned), and falls through when s0(?) < 0x5 (unsigned).
  The `bltz` branch at 0x10072ff8 targets 0x1007316c, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` branch at 0x10073024 targets 0x10073108, is taken when v0(=ret(run_crc_testlist)) == 0, and falls through when v0(=ret(run_crc_testlist)) != 0.
  The `beq` branch at 0x10073074 targets 0x10073144, is taken when v0(=ret(0x10075c9c)) == 0, and falls through when v0(=ret(0x10075c9c)) != 0.
  The `beq` branch at 0x10073100 targets 0x100730a4 and is always taken.
  The `beq` branch at 0x1007313c targets 0x1007304c and is always taken.
  The `beq` branch at 0x10073164 targets 0x100730a4 and is always taken.
  The `beq` branch at 0x1007318c targets 0x100730a4 and is always taken.
  The return at 0x100730b8 has v0 = one of ret(kt_output_rslt), ret(ioctl).

- `Send_GED_CI_Token` in `usr/diags/IR/bin/irsaudit` at 0x1013f728 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/diags/IR/bin/irsaudit`.
  Range: 0x1013f728-0x1013f830 (264 bytes).
  It occupies 264 bytes.
  The `lw` at 0x1013f770 loads 4 bytes from abs 0x102bde78.
  The `lw` at 0x1013f790 loads 4 bytes from abs 0x102bddf8.
  The `lw` at 0x1013f7cc loads 4 bytes from abs 0x102bde70.
  The `jal` at 0x1013f780 calls Compact_GED_Reg_Pixel_Control [0x1013f6fc] with a0=sp-48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1013f7a0 calls fcGfxWrite32 [0x1013df2c] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1013f7ac calls fcGfxWrite32 [0x1013df2c] with a0=0x7, a1=?, a2=?, a3=?.
  The `jal` at 0x1013f7bc calls fcGfxWrite32 [0x1013df2c] with a0=0x200600, a1=?, a2=?, a3=?.
  The `jal` at 0x1013f7d0 calls Compact_HIP_Reg_Pixel_Control [0x1013f51c] with a0=sp-80, a1=?, a2=?, a3=?.
  The `jal` at 0x1013f7dc calls fcGfxWrite32 [0x1013df2c] with a0=ret(Compact_HIP_Reg_Pixel_Control), a1=?, a2=?, a3=?.
  The `jal` at 0x1013f7e8 calls fcGfxWrite32 [0x1013df2c] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1013f7f4 calls fcGfxWrite32 [0x1013df2c] with a0=0x7, a1=?, a2=?, a3=?.
  The `jal` at 0x1013f804 calls fcGfxWrite32 [0x1013df2c] with a0=0x200b80, a1=?, a2=?, a3=?.
  The `jal` at 0x1013f814 calls fcGfxWrite32 [0x1013df2c] with a0=0xffffffffdeedcafe, a1=?, a2=?, a3=?.
  The return at 0x1013f828 has v0 = ret(fcGfxWrite32).

- `rl_undo_command` in `usr/gfx/KONA/bin/kpm` at 0x1004c030 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004c030-0x1004c0ec (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0x1004c07c loads 4 bytes from abs 0x1014c570.
  The `lw` at 0x1004c0ac loads 4 bytes from abs 0x1014c514.
  The `jal` at 0x1004c080 calls rl_do_undo [0x1004bb40] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004c0b0 calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `bgez` branch at 0x1004c054 targets 0x1004c068, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x1004c060 targets 0x1004c0d4 and is always taken.
  The `beq` branch at 0x1004c06c targets 0x1004c0cc, is taken when v1(=a0) == 0, and falls through when v1(=a0) != 0.
  The `beq` branch at 0x1004c088 targets 0x1004c0a4, is taken when v0(=ret(rl_do_undo)) == 0, and falls through when v0(=ret(rl_do_undo)) != 0.
  The `beq` branch at 0x1004c09c targets 0x1004c0c0 and is always taken.
  The `beq` branch at 0x1004c0b8 targets 0x1004c0cc and is always taken.
  The `bne` branch at 0x1004c0c4 targets 0x1004c074, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The return at 0x1004c0e4 has v0 = 0x0.

- `rl_vi_textmod_command` in `usr/gfx/KONA/bin/kpm` at 0x10053ab0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053ab0-0x10053b2c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0x10053ae0 loads 4 bytes from abs 0x1014c048.
  The `lw` at 0x10053ae4 loads 4 bytes from abs 0x1014938c.
  The `lw` at 0x10053af4 loads 4 bytes from abs 0x1014c200.
  The `jalr` at 0x10053af8 calls strchr with a0=[0x1014938c], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10053ad0 targets 0x10053b10, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x10053b08 targets 0x10053b14 and is always taken.
  The return at 0x10053b24 has v0 = one of ?, 0x0.

- `_tr_flush_block` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100f59f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x100f59f0-0x100f5cac (700 bytes).
  It occupies 700 bytes.
  The `lw` at 0x100f59fc loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lbu` at 0x100f5a24 loads 1 byte from a0 (arg0 at entry) +0x1c.
  The `lw` at 0x100f5a70 loads 4 bytes from a0 (arg0 at entry) +0x16a4.
  The `lw` at 0x100f5a74 loads 4 bytes from a0 (arg0 at entry) +0x16a0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x16b4, including `lw` at 0x100f5ab0, `lw` at 0x100f5b14, `lw` at 0x100f5bf0.
  3 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x16b0, including `lhu` at 0x100f5ab8, `lhu` at 0x100f5afc, `lhu` at 0x100f5bd8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0x100f5ad8, `lw` at 0x100f5af4, `lw` at 0x100f5bb4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x100f5adc, `lw` at 0x100f5af8, `lw` at 0x100f5bb8.
  6 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x16b0, including `sh` at 0x100f5ae0, `sh` at 0x100f5b34, `sh` at 0x100f5b3c.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14, including `sw` at 0x100f5ae8, `sw` at 0x100f5b04, `sw` at 0x100f5bc4.
  4 such `sb` accesses store 1 byte to ([a0+20]+1 + [a0+8]) -0x1, including `sb` at 0x100f5af0, `sb` at 0x100f5b10, `sb` at 0x100f5bcc.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16b4, including `sw` at 0x100f5b28, `sw` at 0x100f5b38, `sw` at 0x100f5c04.
  The `lw` at 0x100f5c20 loads 4 bytes from a0 (arg0 at entry) +0xb20.
  The `lw` at 0x100f5c28 loads 4 bytes from a0 (arg0 at entry) +0xb14.
  The `jal` at 0x100f5a44 calls (unnamed) [0x101cf730] with a0=a0 at entry (arg0), a1=a0+2832, a2=?, a3=?.
  The `jal` at 0x100f5a58 calls (unnamed) [0x101cf730] with a0=a0 at entry (arg0), a1=a0+2844, a2=?, a3=?.
  The `jal` at 0x100f5a68 calls (unnamed) [0x101eaef0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100f5b58 calls (unnamed) [0x10223f80] with a0=a0 at entry (arg0), a1=0x102c03d0, a2=0x102c0850, a3=?.
  The `jal` at 0x100f5b68 calls (unnamed) [0x1022bae0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100f5b7c calls (unnamed) [0x101b0d90] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100f5c38 calls (unnamed) [0x10141b70] with a0=a0 at entry (arg0), a1=[a0+2836]+1, a2=[a0+2848]+1, a3=?.
  The `jal` at 0x100f5c50 calls (unnamed) [0x10223f80] with a0=a0 at entry (arg0), a1=a0+140, a2=a0+2432, a3=?.
  The `jal` at 0x100f5c84 calls _tr_stored_block [0x1026e230] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f5c9c calls (unnamed) [0x101e31f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `blez` branch at 0x100f5a1c targets 0x100f5c60, is taken when v0(=[a0+124]) <= 0 (signed), and falls through when v0(=[a0+124]) > 0 (signed).
  The `beq` branch at 0x100f5a30 targets 0x100f5c94, is taken when v0(=[a0+28]:1) == v1(=0x2), and falls through when v0(=[a0+28]:1) != v1(=0x2).
  The `bne` branch at 0x100f5a8c targets 0x100f5a98, is taken when a0(?) < a2(?) (unsigned), and falls through when a0(?) >= a2(?) (unsigned).
  The `bne` branch at 0x100f5aa0 targets 0x100f5ab0, is taken when a0(?) < a1(=a2+4) (unsigned), and falls through when a0(?) >= a1(=a2+4) (unsigned).
  The `bne` branch at 0x100f5aa8 targets 0x100f5c78, is taken when a3(=a1) != 0, and falls through when a3(=a1) == 0.
  The `bne` branch at 0x100f5abc targets 0x100f5ba0, is taken when a0(?) != a2(?), and falls through when a0(?) == a2(?).
  The `beq` branch at 0x100f5ad0 targets 0x100f5b38, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x100f5b30 targets 0x100f5b40 and is always taken.
  The `beq` branch at 0x100f5b70 targets 0x100f5b84, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `beq` branch at 0x100f5bac targets 0x100f5c14, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x100f5c0c targets 0x100f5c1c and is always taken.
  The `beq` branch at 0x100f5c58 targets 0x100f5b64 and is always taken.
  The `beq` branch at 0x100f5c70 targets 0x100f5a98 and is always taken.
  The `beq` branch at 0x100f5c8c targets 0x100f5b64 and is always taken.
  The `beq` branch at 0x100f5ca4 targets 0x100f5a3c and is always taken.
  The return at 0x100f5b98 has v0 = one of ret(0x1022bae0), ret(0x101b0d90).

- `scan_token` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1015de00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1015de00-0x1015df38 (312 bytes).
  It occupies 312 bytes.
  The `lw` at 0x1015de00 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x1015de4c loads 4 bytes from [a0+4] +0xc.
  The `lbu` at 0x1015de58 loads 1 byte from [a0+4] +0x10.
  The `sw` at 0x1015de6c stores 4 bytes to [a0+4] +0xc.
  The `lw` at 0x1015de74 loads 4 bytes from [a0+4] +0x8.
  The `lbu` at 0x1015de7c loads 1 byte from [[a0+4]+8] +0x0.
  The `sw` at 0x1015de88 stores 4 bytes to [a0+4] +0x8.
  The `lbu` at 0x1015deb4 loads 1 byte from ?.
  The `lw` at 0x1015dec0 loads 4 bytes from table(0x10294fa0) +0x0.
  The `lw` at 0x1015dec8 loads 4 bytes from table(0x10294fa4) +0x0.
  The `jal` at 0x1015de8c calls T1Getc [0x10232f70] with a0=[a0+4], a1=a1 at entry (arg1), a2=[a0+4], a3=[[a0+4]+12]-1, a4=[[a0+4]+12].
  The `jalr` at 0x1015dec4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1015de18 targets 0x1015df20, is taken when a2(=[a0+4]) == 0, and falls through when a2(=[a0+4]) != 0.
  The `beq` branch at 0x1015de30 targets 0x1015de3c, is taken when a4(=[0x102c7bec]) >= a3(=0xffff) (signed), and falls through when a4(=[0x102c7bec]) < a3(=0xffff) (signed).
  The `bne` branch at 0x1015de44 targets 0x1015defc, is taken when a3(?) < 0x80 (signed), and falls through when a3(?) >= 0x80 (signed).
  The `blez` branch at 0x1015de5c targets 0x1015de8c, is taken when a4(=[[a0+4]+12]) <= 0 (signed), and falls through when a4(=[[a0+4]+12]) > 0 (signed).
  The `bne` branch at 0x1015de64 targets 0x1015de8c, is taken when a0(=[[a0+4]+16]:1) != 0, and falls through when a0(=[[a0+4]+16]:1) == 0.
  The `beq` branch at 0x1015de84 targets 0x1015dea0 and is always taken.
  The `bne` branch at 0x1015decc targets 0x1015deb0, is taken when v0(=ret(?)) != s2(=0x100), and falls through when v0(=ret(?)) == s2(=0x100).
  The return at 0x1015def4 has v0 = ret(?).
  The return at 0x1015df18 has v0 = ?.
  The return at 0x1015df30 has v0 = ?.

- `inflate_flush` in `usr/gfx/arch/GENERIC/Xsgi` at 0x101613e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x101613e0-0x101615bc (476 bytes).
  It occupies 476 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x34, including `lw` at 0x101613f0, `lw` at 0x101614b8.
  The `lw` at 0x101613f8 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x10161404 loads 4 bytes from a1 (arg1 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x10161434, `lw` at 0x101614ac.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0x1016143c, `lw` at 0x101614d8.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0x1016145c, `lw` at 0x101614e8.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x10, including `sw` at 0x1016146c, `sw` at 0x10161500.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x14, including `sw` at 0x10161474, `sw` at 0x10161508.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x10161478, `lw` at 0x1016150c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3c, including `lw` at 0x10161484, `lw` at 0x10161518.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x3c, including `sw` at 0x10161490, `sw` at 0x10161524.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x30, including `sw` at 0x10161494, `sw` at 0x10161528.
  The `lw` at 0x101614cc loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `sw` at 0x101614d4 stores 4 bytes to a0 (arg0 at entry) +0x34.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0xc, including `sw` at 0x10161550, `sw` at 0x10161584.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x30, including `sw` at 0x10161554, `sw` at 0x10161588.
  The `jalr` at 0x10161488 calls (unknown callee) with a0=[a0+60], a1=[a0+48], a2=?, a3=?.
  The `jalr` at 0x101614a4 calls memcpy with a0=[a1+12], a1=[a0+48], a2=?, a3=?.
  The `jalr` at 0x1016151c calls (unknown callee) with a0=[a0+60], a1=[a0+40], a2=?, a3=?, a6=-0x5.
  The `jalr` at 0x10161538 calls memcpy with a0=?, a1=[a0+40], a2=?, a3=?.
  The `bne` branch at 0x10161424 targets 0x10161434, is taken when v0(=[a0+52]) < s3(=[a0+48]) (unsigned), and falls through when v0(=[a0+52]) >= s3(=[a0+48]) (unsigned).
  The `beq` branch at 0x1016142c targets 0x1016143c and is always taken.
  The `beq` branch at 0x10161448 targets 0x10161458, is taken when a0(=[a1+16]) >= s0(?) (unsigned), and falls through when a0(=[a1+16]) < s0(?) (unsigned).
  The `beq` branch at 0x10161458 targets 0x1016146c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x10161464 targets 0x101615ac, is taken when s5(=a2) == a2(=-0x5), and falls through when s5(=a2) != a2(=-0x5).
  The `beq` branch at 0x1016147c targets 0x10161498, is taken when t9(=[a0+56]) == 0, and falls through when t9(=[a0+56]) != 0.
  The `bne` branch at 0x101614c0 targets 0x1016157c, is taken when a0(=[a0+44]) != s3(?), and falls through when a0(=[a0+44]) == s3(?).
  The `bne` branch at 0x101614c8 targets 0x101614d8, is taken when v0(=[a0+52]) != a0(=[a0+44]), and falls through when v0(=[a0+52]) == a0(=[a0+44]).
  The `beq` branch at 0x101614e4 targets 0x101614f0, is taken when a0(=[a1+16]) >= s0(?) (unsigned), and falls through when a0(=[a1+16]) < s0(?) (unsigned).
  The `beq` branch at 0x101614f0 targets 0x10161500, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x101614f8 targets 0x101615b4, is taken when s5(?) == a6(=-0x5), and falls through when s5(?) != a6(=-0x5).
  The `beq` branch at 0x10161510 targets 0x1016152c, is taken when t9(=[a0+56]) == 0, and falls through when t9(=[a0+56]) != 0.
  The `beq` branch at 0x101615ac targets 0x1016146c and is always taken.
  The `beq` branch at 0x101615b4 targets 0x101614fc and is always taken.
  The return at 0x10161574 has v0 = ?.
  The return at 0x101615a4 has v0 = ?.

- `__glx_Flush` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8315a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGL.so`.
  Range: 0xd8315a4-0xd8316e8 (324 bytes).
  It occupies 324 bytes.
  The `lw` at 0xd8315b4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8315c8 loads 4 bytes from [0x1014] +0x114.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xd8, including `lw` at 0xd8315cc, `lw` at 0xd8316c4.
  The `lw` at 0xd8315dc loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8315f0, `lw` at 0xd831684.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8315fc, `lw` at 0xd831614, `lw` at 0xd831640.
  The `lw` at 0xd831600 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd831618 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd831628, `sw` at 0xd831644.
  The `sh` at 0xd83164c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd831650, `sb` at 0xd831678.
  The `lw` at 0xd831654 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd831668 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd83166c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd831670 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd831674 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd83167c loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd831680 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd83168c, `lw` at 0xd8316a4.
  The `lw` at 0xd831690 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd8315e8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd831608 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd831634 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd831698 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8316b4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8316c8 calls XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8315d0 targets 0xd8316d4, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd8315d8 targets 0xd8316c0, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd8315f8 targets 0xd831618, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8315fc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd831624 targets 0xd831648, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+8) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+8) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd831628 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd831688 targets 0xd8316a8, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83168c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8316ac targets 0xd8316c0, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  The return at 0xd8316e0 has v0 = one of [[[0x1014]+276]+216], ret(XFlush).

- `Flush` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda3d1cc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda3d1cc-0xda3d1dc (16 bytes).
  It occupies 16 bytes.
  The return at 0xda3d1cc has v0 = ?.
  The instructions from 0xda3d1d4 to 0xda3d1d8 are not reached by any path from the entry, and their branches are not listed.

- `__glce_Flush` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d340 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda6d340-0xda6d348 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d340 targets 0xda6db08 and is always taken.

- `__glx_Flush` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd82f67c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGL.so`.
  Range: 0xd82f67c-0xd82f78c (272 bytes).
  It occupies 272 bytes.
  The `lw` at 0xd82f684 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82f688 loads 4 bytes from [0x1014] +0x114.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xd8, including `lw` at 0xd82f690, `lw` at 0xd82f760.
  The `lw` at 0xd82f6b8 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd82f6bc, `lw` at 0xd82f72c.
  The `lw` at 0xd82f6c8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd82f6d4, `lw` at 0xd82f700, `lw` at 0xd82f788.
  The `lw` at 0xd82f6d8 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd82f6ec stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd82f6f4 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd82f6f8, `sb` at 0xd82f720.
  The `lw` at 0xd82f6fc loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd82f708 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd82f710 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `lw` at 0xd82f714 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd82f71c stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd82f724 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd82f728 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `lw` at 0xd82f738 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd82f744 loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `jalr` at 0xd82f6b4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd82f6cc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[[[0x1014]+276]+216]+1232], a3=?.
  The `jalr` at 0xd82f73c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=[[[[0x1014]+276]+216]+108]+8, a2=[[[[0x1014]+276]+216]+1232], a3=?.
  The `jalr` at 0xd82f750 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82f75c calls XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82f77c calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd82f6a0 targets 0xd82f768, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd82f6c0 targets 0xd82f6d4, is taken when a2(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a2(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd82f6e4 targets 0xd82f77c, is taken when t8(=[[[[0x1014]+276]+216]+112]) < t9(=[[[[0x1014]+276]+216]+108]+8) (unsigned), and falls through when t8(=[[[[0x1014]+276]+216]+112]) >= t9(=[[[[0x1014]+276]+216]+108]+8) (unsigned).
  The `beq` branch at 0xd82f730 targets 0xd82f744, is taken when a2(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a2(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd82f748 targets 0xd82f758, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd82f784 targets 0xd82f6ec and is always taken.
  The return at 0xd82f774 has v0 = one of ?, ret(XFlush).

- `Flush` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda37800 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda37800-0xda37808 (8 bytes).
  It occupies 8 bytes.
  The return at 0xda37800 has v0 = ?.

- `__glce_Flush` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda5b450 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA32/libGLcore.so`.
  Range: 0xda5b450-0xda5b49c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xda5b458 loads 4 bytes from abs 0x118c.
  The `lw` at 0xda5b460 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda5b478 loads 4 bytes from [0x1010] +0x27fc.
  2 such `sw` accesses store 4 bytes to abs 0x118c, including `sw` at 0xda5b480, `sw` at 0xda5b48c.
  The `jalr` at 0xda5b47c calls glFlush with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda5b494 has v0 = ret(glFlush).

- `__glx_Flush` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x26641dc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x26641dc-0x26642ec (272 bytes).
  It occupies 272 bytes.
  The `ld` at 0x26641e4 loads 8 bytes from abs 0x1028.
  The `ld` at 0x26641e8 loads 8 bytes from [0x1028]:8 +0x118.
  2 such `ld` accesses load 8 bytes from [[0x1028]:8+280]:8 +0x138, including `ld` at 0x26641f0, `ld` at 0x26642c0.
  The `ld` at 0x2664218 loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  2 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x968, including `ld` at 0x266421c, `ld` at 0x266428c.
  The `ld` at 0x2664228 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb0, including `ld` at 0x2664234, `ld` at 0x2664260, `ld` at 0x26642e8.
  The `ld` at 0x2664238 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb8.
  The `sd` at 0x266424c stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xa0.
  The `sh` at 0x2664254 stores 2 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0, including `sb` at 0x2664258, `sb` at 0x2664280.
  The `ld` at 0x266425c loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2664268 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2664270 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xb0.
  The `lw` at 0x2664274 loads 4 bytes from [[0x1028]:8+280]:8 +0x1a4.
  The `sb` at 0x266427c stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1.
  The `lw` at 0x2664284 loads 4 bytes from [[0x1028]:8+280]:8 +0x68.
  The `sw` at 0x2664288 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4.
  The `ld` at 0x2664298 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x8.
  The `ld` at 0x26642a4 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xd0.
  The `jalr` at 0x2664214 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x266422c calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=[[[[0x1028]:8+280]:8+312]:8+2408]:8, a3=?.
  The `jalr` at 0x266429c calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=[[[[0x1028]:8+280]:8+312]:8+176]:8+8, a2=[[[[0x1028]:8+280]:8+312]:8+2408]:8, a3=?.
  The `jalr` at 0x26642b0 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x26642bc calls XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x26642dc calls _XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x2664200 targets 0x26642c8, is taken when s0(=[[[0x1028]:8+280]:8+312]:8) == 0, and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` branch at 0x2664220 targets 0x2664234, is taken when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `bne` branch at 0x2664244 targets 0x26642dc, is taken when t8(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < t9(=[[[[0x1028]:8+280]:8+312]:8+176]:8+8) (unsigned), and falls through when t8(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= t9(=[[[[0x1028]:8+280]:8+312]:8+176]:8+8) (unsigned).
  The `beq` branch at 0x2664290 targets 0x26642a4, is taken when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `beq` branch at 0x26642a8 targets 0x26642b8, is taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  The `beq` branch at 0x26642e4 targets 0x266424c and is always taken.
  The return at 0x26642d4 has v0 = one of ?, ret(XFlush).

- `__glkonim_Flush` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dafd70 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2dafd70-0x2dafd88 (24 bytes).
  It occupies 24 bytes.
  2 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0x2dafd74, `sw` at 0x2dafd78.
  The `lw` at 0x2dafd84 loads 4 bytes from abs 0x10100.
  The return at 0x2dafd80 has v0 = 0xc7.

- `Flush` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e9c8a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e9c8a0-0x2e9c8a8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x2e9c8a0 has v0 = ?.

- `__glce_Flush` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2ec08b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2ec08b0-0x2ec08fc (76 bytes).
  It occupies 76 bytes.
  The `ld` at 0x2ec08b8 loads 8 bytes from abs 0x1308.
  The `ld` at 0x2ec08c0 loads 8 bytes from abs 0x1020.
  The `ld` at 0x2ec08d8 loads 8 bytes from [0x1020]:8 +0x3ad0.
  2 such `sd` accesses store 8 bytes to abs 0x1308, including `sd` at 0x2ec08e0, `sd` at 0x2ec08ec.
  The `jalr` at 0x2ec08dc calls glFlush with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2ec08f4 has v0 = ret(glFlush).

- `__glx_Flush` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd8315a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGL.so`.
  Range: 0xd8315a4-0xd8316e8 (324 bytes).
  It occupies 324 bytes.
  The `lw` at 0xd8315b4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8315c8 loads 4 bytes from [0x1014] +0x114.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xd8, including `lw` at 0xd8315cc, `lw` at 0xd8316c4.
  The `lw` at 0xd8315dc loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8315f0, `lw` at 0xd831684.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8315fc, `lw` at 0xd831614, `lw` at 0xd831640.
  The `lw` at 0xd831600 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd831618 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd831628, `sw` at 0xd831644.
  The `sh` at 0xd83164c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd831650, `sb` at 0xd831678.
  The `lw` at 0xd831654 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd831668 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd83166c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd831670 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd831674 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd83167c loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd831680 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd83168c, `lw` at 0xd8316a4.
  The `lw` at 0xd831690 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd8315e8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd831608 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd831634 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd831698 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8316b4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8316c8 calls XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8315d0 targets 0xd8316d4, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd8315d8 targets 0xd8316c0, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd8315f8 targets 0xd831618, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8315fc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd831624 targets 0xd831648, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+8) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+8) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd831628 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd831688 targets 0xd8316a8, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83168c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8316ac targets 0xd8316c0, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  The return at 0xd8316e0 has v0 = one of [[[0x1014]+276]+216], ret(XFlush).

- `__glim_Flush` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9dbb28 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9dbb28-0xd9dbb90 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xd9dbb44 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9dbb4c loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9dbb54 loads 4 bytes from [0x1010] +0x2e30.
  The `jalr` at 0xd9dbb60 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9dbb74 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xd9dbb50 targets 0xd9dbb74, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `lw t9,11824(a0)` at 0xd9dbb54 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9dbb68 targets 0xd9dbb80 and is always taken.
  The return at 0xd9dbb88 has v0 = one of ret(__glSetError), ret(?).
  The instructions from 0xd9dbb70 to 0xd9dbb70 are not reached by any path from the entry, and their branches are not listed.

- `Flush` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda3d1cc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda3d1cc-0xda3d1dc (16 bytes).
  It occupies 16 bytes.
  The return at 0xda3d1cc has v0 = ?.
  The instructions from 0xda3d1d4 to 0xda3d1d8 are not reached by any path from the entry, and their branches are not listed.

- `__glkonle_Push` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6c2f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6c2f0-0xda6c354 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xda6c2f8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xda6c2fc loads 4 bytes from a0 (arg0 at entry) +0x4.
  2 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xda6c308, `swc1` at 0xda6c348.
  The `ldc1` at 0xda6c31c loads 8 bytes from ?.
  The `sdc1` at 0xda6c330 stores 8 bytes to abs 0x4000.
  The `lwc1` at 0xda6c33c loads 4 bytes from ?.
  The `bne` branch at 0xda6c2f4 targets 0xda6c30c, is taken when (a0 & 0x4) != 0, and falls through when (a0 & 0x4) == 0.
  The `beq` branch at 0xda6c310 targets 0xda6c33c, is taken when a1(?) == at(=0x1), and falls through when a1(?) != at(=0x1).
  The `beq` branch at 0xda6c32c targets 0xda6c31c, is taken when a1(?) >= t2(=0x2) (signed), and falls through when a1(?) < t2(=0x2) (signed).
  The `beq` branch at 0xda6c334 targets 0xda6c34c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The return at 0xda6c344 has v0 = ?.
  The return at 0xda6c34c has v0 = ?.

- `__glce_Flush` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6d340 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6d340-0xda6d348 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d340 targets 0xda6db08 and is always taken.

- `__glx_Flush` in `usr/gfx/arch/IP35KONA32/libGL.so` at 0xd82f67c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGL.so`.
  Range: 0xd82f67c-0xd82f78c (272 bytes).
  It occupies 272 bytes.
  The `lw` at 0xd82f684 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82f688 loads 4 bytes from [0x1014] +0x114.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xd8, including `lw` at 0xd82f690, `lw` at 0xd82f760.
  The `lw` at 0xd82f6b8 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd82f6bc, `lw` at 0xd82f72c.
  The `lw` at 0xd82f6c8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd82f6d4, `lw` at 0xd82f700, `lw` at 0xd82f788.
  The `lw` at 0xd82f6d8 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd82f6ec stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd82f6f4 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd82f6f8, `sb` at 0xd82f720.
  The `lw` at 0xd82f6fc loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd82f708 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd82f710 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `lw` at 0xd82f714 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd82f71c stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd82f724 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd82f728 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `lw` at 0xd82f738 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd82f744 loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `jalr` at 0xd82f6b4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd82f6cc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[[[0x1014]+276]+216]+1232], a3=?.
  The `jalr` at 0xd82f73c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=[[[[0x1014]+276]+216]+108]+8, a2=[[[[0x1014]+276]+216]+1232], a3=?.
  The `jalr` at 0xd82f750 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82f75c calls XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82f77c calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd82f6a0 targets 0xd82f768, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd82f6c0 targets 0xd82f6d4, is taken when a2(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a2(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd82f6e4 targets 0xd82f77c, is taken when t8(=[[[[0x1014]+276]+216]+112]) < t9(=[[[[0x1014]+276]+216]+108]+8) (unsigned), and falls through when t8(=[[[[0x1014]+276]+216]+112]) >= t9(=[[[[0x1014]+276]+216]+108]+8) (unsigned).
  The `beq` branch at 0xd82f730 targets 0xd82f744, is taken when a2(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a2(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd82f748 targets 0xd82f758, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd82f784 targets 0xd82f6ec and is always taken.
  The return at 0xd82f774 has v0 = one of ?, ret(XFlush).

- `__glkonim_Flush` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd94dc70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd94dc70-0xd94dc88 (24 bytes).
  It occupies 24 bytes.
  2 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xd94dc74, `sw` at 0xd94dc78.
  The `lw` at 0xd94dc84 loads 4 bytes from abs 0x10100.
  The return at 0xd94dc80 has v0 = 0xc7.

- `update_cmpnd_cmd` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd95af20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd95af20-0xd95af54 (52 bytes).
  It occupies 52 bytes.
  2 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xd95af24, `sw` at 0xd95af44.
  The `lw` at 0xd95af28 loads 4 bytes from a0 (arg0 at entry) +0x151c.
  The `lw` at 0xd95af30 loads 4 bytes from a0 (arg0 at entry) +0x1518.
  The `lw` at 0xd95af38 loads 4 bytes from a0 (arg0 at entry) +0x8ac8.
  The `sw` at 0xd95af50 stores 4 bytes to a0 (arg0 at entry) +0x8ac8.
  The return at 0xd95af4c has v0 = a0+65536.

- `__glim_Flush` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d71c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9d71c0-0xd9d7218 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xd9d71c4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d71c8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9d71e8 loads 4 bytes from [0x1010] +0x2e30.
  The `jalr` at 0xd9d71ec calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d7208 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d71e0 targets 0xd9d7204, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9d7210 targets 0xd9d71f8 and is always taken.
  The return at 0xd9d71fc has v0 = one of ret(?), ret(__glSetError).

- `Flush` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda37800 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda37800-0xda37808 (8 bytes).
  It occupies 8 bytes.
  The return at 0xda37800 has v0 = ?.

- `__glce_Flush` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda5b450 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda5b450-0xda5b49c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xda5b458 loads 4 bytes from abs 0x118c.
  The `lw` at 0xda5b460 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda5b478 loads 4 bytes from [0x1010] +0x27fc.
  2 such `sw` accesses store 4 bytes to abs 0x118c, including `sw` at 0xda5b480, `sw` at 0xda5b48c.
  The `jalr` at 0xda5b47c calls glFlush with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda5b494 has v0 = ret(glFlush).

- `__glx_Flush` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x21641dc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x21641dc-0x21642ec (272 bytes).
  It occupies 272 bytes.
  The `ld` at 0x21641e4 loads 8 bytes from abs 0x1028.
  The `ld` at 0x21641e8 loads 8 bytes from [0x1028]:8 +0x118.
  2 such `ld` accesses load 8 bytes from [[0x1028]:8+280]:8 +0x138, including `ld` at 0x21641f0, `ld` at 0x21642c0.
  The `ld` at 0x2164218 loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  2 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x968, including `ld` at 0x216421c, `ld` at 0x216428c.
  The `ld` at 0x2164228 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb0, including `ld` at 0x2164234, `ld` at 0x2164260, `ld` at 0x21642e8.
  The `ld` at 0x2164238 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb8.
  The `sd` at 0x216424c stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xa0.
  The `sh` at 0x2164254 stores 2 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0, including `sb` at 0x2164258, `sb` at 0x2164280.
  The `ld` at 0x216425c loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2164268 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2164270 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xb0.
  The `lw` at 0x2164274 loads 4 bytes from [[0x1028]:8+280]:8 +0x1a4.
  The `sb` at 0x216427c stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1.
  The `lw` at 0x2164284 loads 4 bytes from [[0x1028]:8+280]:8 +0x68.
  The `sw` at 0x2164288 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4.
  The `ld` at 0x2164298 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x8.
  The `ld` at 0x21642a4 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xd0.
  The `jalr` at 0x2164214 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x216422c calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=[[[[0x1028]:8+280]:8+312]:8+2408]:8, a3=?.
  The `jalr` at 0x216429c calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=[[[[0x1028]:8+280]:8+312]:8+176]:8+8, a2=[[[[0x1028]:8+280]:8+312]:8+2408]:8, a3=?.
  The `jalr` at 0x21642b0 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x21642bc calls XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x21642dc calls _XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x2164200 targets 0x21642c8, is taken when s0(=[[[0x1028]:8+280]:8+312]:8) == 0, and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` branch at 0x2164220 targets 0x2164234, is taken when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `bne` branch at 0x2164244 targets 0x21642dc, is taken when t8(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < t9(=[[[[0x1028]:8+280]:8+312]:8+176]:8+8) (unsigned), and falls through when t8(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= t9(=[[[[0x1028]:8+280]:8+312]:8+176]:8+8) (unsigned).
  The `beq` branch at 0x2164290 targets 0x21642a4, is taken when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `beq` branch at 0x21642a8 targets 0x21642b8, is taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  The `beq` branch at 0x21642e4 targets 0x216424c and is always taken.
  The return at 0x21642d4 has v0 = one of ?, ret(XFlush).

- `__glkonim_Flush` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x218fd70 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x218fd70-0x218fd88 (24 bytes).
  It occupies 24 bytes.
  2 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0x218fd74, `sw` at 0x218fd78.
  The `lw` at 0x218fd84 loads 4 bytes from abs 0x10100.
  The return at 0x218fd80 has v0 = 0xc7.

- `__glim_Flush` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x221aff0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x221aff0-0x221b048 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0x221aff4 loads 4 bytes from abs 0x1030.
  The `ld` at 0x221aff8 loads 8 bytes from abs 0x1020.
  The `ld` at 0x221b018 loads 8 bytes from [0x1020]:8 +0x4728.
  The `jalr` at 0x221b01c calls (unknown callee) with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x221b038 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x221b010 targets 0x221b034, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x221b040 targets 0x221b028 and is always taken.
  The return at 0x221b02c has v0 = one of ret(?), ret(__glSetError).

- `Flush` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x227c8a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x227c8a0-0x227c8a8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x227c8a0 has v0 = ?.

- `__glce_Flush` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22a08b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22a08b0-0x22a08fc (76 bytes).
  It occupies 76 bytes.
  The `ld` at 0x22a08b8 loads 8 bytes from abs 0x1308.
  The `ld` at 0x22a08c0 loads 8 bytes from abs 0x1020.
  The `ld` at 0x22a08d8 loads 8 bytes from [0x1020]:8 +0x3ad0.
  2 such `sd` accesses store 8 bytes to abs 0x1308, including `sd` at 0x22a08e0, `sd` at 0x22a08ec.
  The `jalr` at 0x22a08dc calls glFlush with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x22a08f4 has v0 = ret(glFlush).
