- `Ioctl` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8113d4 (o32).
  It occupies 68 bytes.
  The `jalr` at 0xd8113fc calls `ioctl` with a0=[([0x1014] + (a0 << 0x2))+4], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd811410 has v0 = ret(ioctl).

- `Ioctl` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd8113d4 (o32).
  It occupies 68 bytes.
  The `jalr` at 0xd8113fc calls `ioctl` with a0=[([0x1014] + (a0 << 0x2))+4], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd811410 has v0 = ret(ioctl).

- `unlock_dmavec` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0xc8 (n64).
  It occupies 104 bytes.
  The `jal` at 0x11c calls `undma` with a0=[a0]:8, a1=?, a2=a1 at entry (arg1), a3=?, a4=[a0+8], a6=a0 at entry (arg0).
  The `beq` at 0xe0 is taken when a5(=[a0+12]) == 0 and falls through when a5(=[a0+12]) != 0.
  The `beq` at 0xe8 is taken when a5(=[a0+12]) == a4(=[a0+8]) and falls through when a5(=[a0+12]) != a4(=[a0+8]).
  The return at 0x128 has v0 = ret(undma).

- `kona_dmapool_update_pipe` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x7c0 (n64).
  It occupies 644 bytes.
  The `sw` at 0x804 stores 4 bytes from at at a0 (arg0 at entry) +0x938.
  The `sw` at 0x85c stores 4 bytes from t8 at a0 (arg0 at entry) +0x938.
  The `sw` at 0x8d8 stores 4 bytes from zero at a0 (arg0 at entry) +0x938.
  The `jal` at 0x7dc calls `gfx_flow_flush_my_wg` with a0=[a0+2272]:8, a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x7e4 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x7f0 calls `gfx_flow_am_i_attached` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x808 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x820 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=?, a3=?.
  The `jal` at 0x82c calls `gfx_pio_write_32` with a0=[a0+2304]:8, a1=0x1ed, a2=?, a3=?.
  The `jal` at 0x838 calls `gfx_flow_flush_my_wg` with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x840 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x84c calls `gfx_flow_am_i_attached` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x860 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x870 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=?, a3=?.
  The `jal` at 0x884 calls `gfx_pio_write_32` with a0=[a0+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x89c calls `gfx_pio_write_32` with a0=[a0+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x8a8 calls `gfx_pio_write_32` with a0=[a0+2304]:8, a1=[a1+8], a2=?, a3=?.
  The `jal` at 0x8b4 calls `gfx_flow_flush_my_wg` with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x8bc calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x8c8 calls `gfx_flow_am_i_attached` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x8dc calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x8f0 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=?, a3=?.
  The `jal` at 0x910 calls `gfx_flow_attach_me` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x928 calls `gfx_pio_write_32` with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x930 calls `rt_pin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x93c calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x944 calls `kona_flow_await_returned_credits` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x94c calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x95c calls `gfx_flow_attach_me_finish` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x964 calls `rt_unpin_thread` with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jal` at 0x978 calls `gfx_flow_attach_me` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x990 calls `gfx_pio_write_32` with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x998 calls `rt_pin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9a4 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x9ac calls `kona_flow_await_returned_credits` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x9b4 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9c4 calls `gfx_flow_attach_me_finish` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x9cc calls `rt_unpin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9e0 calls `gfx_flow_attach_me` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x9f8 calls `gfx_pio_write_32` with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0xa00 calls `rt_pin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa0c calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xa14 calls `kona_flow_await_returned_credits` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa1c calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa2c calls `gfx_flow_attach_me_finish` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xa34 calls `rt_unpin_thread` with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `beq` at 0x7f8 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` at 0x854 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` at 0x8d0 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The return at 0x904 has v0 = ret(gfx_pio_write_32).

- `kona_dmapool_update` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0xc2c (n64).
  It occupies 76 bytes.
  The `jal` at 0xc64 calls `kona_dmapool_update_pipe` with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=[[a1+112]:8+240]:8, a4=-0x48, a5=[[a1+112]:8+240]:8+72, a6=[a1+112]:8.
  The `beq` at 0xc44 is taken when a3(=[[a1+112]:8+240]:8) == 0 and falls through when a3(=[[a1+112]:8+240]:8) != 0.
  The `beq` at 0xc4c is taken when a3(=[[a1+112]:8+240]:8) == a4(=-0x48) and falls through when a3(=[[a1+112]:8+240]:8) != a4(=-0x48).
  The `beq` at 0xc58 is taken when at(=[[[a1+112]:8+240]:8+80]) == 0 and falls through when at(=[[[a1+112]:8+240]:8+80]) != 0.
  The return at 0xc70 has v0 = ret(kona_dmapool_update_pipe).

- `kona_selectfeed_timeout` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x10b4 (n64).
  It occupies 164 bytes.
  The `sw` at 0x1140 stores 4 bytes from a3 at a1 (arg1 at entry) +0x20.
  The `sd` at 0x114c stores 8 bytes from zero at a1 (arg1 at entry) +0x40.
  The `jal` at 0x10d4 calls `mutex_spinlock` with a0=a0+2576, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10f4 calls `mutex_spinunlock` with a0=a0+2576, a1=?, a2=?, a3=?.
  The `jal` at 0x1128 calls `cmn_err_tag` with a0=0x84b, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184], a5=[a1+40]:8, a6=[a1+8].
  The `jal` at 0x1134 calls `kona_die` with a0=a0 at entry (arg0), a1=0x5, a2=?, a3=?.
  The `jal` at 0x1148 calls `vsema` with a0=a1+48, a1=?, a2=?, a3=-0x1.
  The `bne` at 0x10e0 is taken when at(=[a1+64]:8) != 0 and falls through when at(=[a1+64]:8) == 0.
  The return at 0x1104 has v0 = ret(mutex_spinunlock).

- `abi32_to_kona_dmawrite_args` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x189c (n64).
  It occupies 188 bytes.
  The `sd` at 0x18b4 stores 8 bytes from v1 at a1 (arg1 at entry) +0x0.
  The `sw` at 0x18bc stores 4 bytes from v0 at a1 (arg1 at entry) +0x8.
  The `sw` at 0x18c8 stores 4 bytes from at at a1 (arg1 at entry) +0x8c.
  The `sw` at 0x18e4 stores 4 bytes from a2 at ? (base unknown).
  The `sw` at 0x1908 stores 4 bytes from a5 at ? (base unknown).
  The `sd` at 0x1930 stores 8 bytes from t0 at a3 (arg3 at entry) +0x10.
  The `sw` at 0x1938 stores 4 bytes from t1 at a3 (arg3 at entry) +0x4.
  The `sd` at 0x1954 stores 8 bytes from v0 at a3 (arg3 at entry) +0x10.
  The `jal` at 0x1944 calls `kern_malloc` with a0=0x8c, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` at 0x18a4 is taken when a0 == 0 and falls through when a0 != 0.
  The `beq` at 0x18e8 is taken when v0(?) >= 0x20 (signed) and falls through when v0(?) < 0x20 (signed).
  The `bne` at 0x1904 is taken when v0(?) < 0x20 (signed) and falls through when v0(?) >= 0x20 (signed).
  The `bne` at 0x1924 is taken when a7(=[a3]) < 0x8c (unsigned) and falls through when a7(=[a3]) >= 0x8c (unsigned).
  The return at 0x1914 has v0 = 0x0.

- `abi32_to_kona_dmapool_args` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x1958 (n64).
  It occupies 128 bytes.
  The `sd` at 0x1980 stores 8 bytes from v0 at a3 (arg3 at entry) +0x10.
  The `sw` at 0x1988 stores 4 bytes from v1 at a3 (arg3 at entry) +0x4.
  The `sd` at 0x199c stores 8 bytes from a4 at a1 (arg1 at entry) +0x0.
  The `sw` at 0x19a4 stores 4 bytes from a3 at a1 (arg1 at entry) +0x8.
  The `sw` at 0x19ac stores 4 bytes from a2 at a1 (arg1 at entry) +0xc.
  The `sw` at 0x19b4 stores 4 bytes from a0 at a1 (arg1 at entry) +0x10.
  The `sd` at 0x19d4 stores 8 bytes from v0 at a3 (arg3 at entry) +0x10.
  The `jal` at 0x19c4 calls `kern_malloc` with a0=0x10, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` at 0x1964 is taken when a0 != 0 and falls through when a0 == 0.
  The `bne` at 0x1974 is taken when at(=[a3]) < 0x10 (unsigned) and falls through when at(=[a3]) >= 0x10 (unsigned).
  The return at 0x19bc has v0 = 0x0.

- `abi32_to_kona_dmavec` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x19d8 (n64).
  It occupies 128 bytes.
  The `sd` at 0x1a00 stores 8 bytes from v0 at a3 (arg3 at entry) +0x10.
  The `sw` at 0x1a08 stores 4 bytes from v1 at a3 (arg3 at entry) +0x4.
  The `sd` at 0x1a1c stores 8 bytes from a4 at a1 (arg1 at entry) +0x0.
  The `sw` at 0x1a24 stores 4 bytes from a3 at a1 (arg1 at entry) +0x8.
  The `sw` at 0x1a2c stores 4 bytes from a2 at a1 (arg1 at entry) +0xc.
  The `sw` at 0x1a34 stores 4 bytes from a0 at a1 (arg1 at entry) +0x10.
  The `sd` at 0x1a54 stores 8 bytes from v0 at a3 (arg3 at entry) +0x10.
  The `jal` at 0x1a44 calls `kern_malloc` with a0=0x10, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` at 0x19e4 is taken when a0 != 0 and falls through when a0 == 0.
  The `bne` at 0x19f4 is taken when at(=[a3]) < 0x10 (unsigned) and falls through when at(=[a3]) >= 0x10 (unsigned).
  The return at 0x1a3c has v0 = 0x0.

- `abi32_to_kona_start_selectfeed_args` in `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)` at 0x1a58 (n64).
  It occupies 136 bytes.
  The `sd` at 0x1a80 stores 8 bytes from v0 at a3 (arg3 at entry) +0x10.
  The `sw` at 0x1a88 stores 4 bytes from v1 at a3 (arg3 at entry) +0x4.
  The `sd` at 0x1a9c stores 8 bytes from a5 at a1 (arg1 at entry) +0x0.
  The `sw` at 0x1aa4 stores 4 bytes from a4 at a1 (arg1 at entry) +0x8.
  The `sw` at 0x1aac stores 4 bytes from a3 at a1 (arg1 at entry) +0xc.
  The `sw` at 0x1ab4 stores 4 bytes from a2 at a1 (arg1 at entry) +0x10.
  The `sw` at 0x1abc stores 4 bytes from a0 at a1 (arg1 at entry) +0x18.
  The `sd` at 0x1adc stores 8 bytes from v0 at a3 (arg3 at entry) +0x10.
  The `jal` at 0x1acc calls `kern_malloc` with a0=0x14, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` at 0x1a64 is taken when a0 != 0 and falls through when a0 == 0.
  The `bne` at 0x1a74 is taken when at(=[a3]) < 0x14 (unsigned) and falls through when at(=[a3]) >= 0x14 (unsigned).
  The return at 0x1ac4 has v0 = 0x0.

- `unlock_dmavec` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0xc8 (n64).
  It occupies 104 bytes.
  The `jal` at 0x11c calls `undma` with a0=[a0]:8, a1=?, a2=a1 at entry (arg1), a3=?, a4=[a0+8], a6=a0 at entry (arg0).
  The `beq` at 0xe0 is taken when a5(=[a0+12]) == 0 and falls through when a5(=[a0+12]) != 0.
  The `beq` at 0xe8 is taken when a5(=[a0+12]) == a4(=[a0+8]) and falls through when a5(=[a0+12]) != a4(=[a0+8]).
  The return at 0x128 has v0 = ret(undma).

- `kona_dmapool_update_pipe` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x7c0 (n64).
  It occupies 644 bytes.
  The `sw` at 0x804 stores 4 bytes from at at a0 (arg0 at entry) +0x938.
  The `sw` at 0x85c stores 4 bytes from t8 at a0 (arg0 at entry) +0x938.
  The `sw` at 0x8d8 stores 4 bytes from zero at a0 (arg0 at entry) +0x938.
  The `jal` at 0x7dc calls `gfx_flow_flush_my_wg` with a0=[a0+2272]:8, a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x7e4 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x7f0 calls `gfx_flow_am_i_attached` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x808 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x820 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=?, a3=?.
  The `jal` at 0x82c calls `gfx_pio_write_32` with a0=[a0+2304]:8, a1=0x1ed, a2=?, a3=?.
  The `jal` at 0x838 calls `gfx_flow_flush_my_wg` with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x840 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x84c calls `gfx_flow_am_i_attached` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x860 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x870 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=?, a3=?.
  The `jal` at 0x884 calls `gfx_pio_write_32` with a0=[a0+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x89c calls `gfx_pio_write_32` with a0=[a0+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x8a8 calls `gfx_pio_write_32` with a0=[a0+2304]:8, a1=[a1+8], a2=?, a3=?.
  The `jal` at 0x8b4 calls `gfx_flow_flush_my_wg` with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x8bc calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x8c8 calls `gfx_flow_am_i_attached` with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x8dc calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x8f0 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=?, a3=?.
  The `jal` at 0x910 calls `gfx_flow_attach_me` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x928 calls `gfx_pio_write_32` with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x930 calls `rt_pin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x93c calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x944 calls `kona_flow_await_returned_credits` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x94c calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x95c calls `gfx_flow_attach_me_finish` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x964 calls `rt_unpin_thread` with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jal` at 0x978 calls `gfx_flow_attach_me` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x990 calls `gfx_pio_write_32` with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x998 calls `rt_pin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9a4 calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x9ac calls `kona_flow_await_returned_credits` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x9b4 calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9c4 calls `gfx_flow_attach_me_finish` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x9cc calls `rt_unpin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9e0 calls `gfx_flow_attach_me` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x9f8 calls `gfx_pio_write_32` with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0xa00 calls `rt_pin_thread` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa0c calls `splx` with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xa14 calls `kona_flow_await_returned_credits` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa1c calls `splhi` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa2c calls `gfx_flow_attach_me_finish` with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xa34 calls `rt_unpin_thread` with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `beq` at 0x7f8 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` at 0x854 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` at 0x8d0 is taken when v0(=ret(gfx_flow_am_i_attached)) == 0 and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The return at 0x904 has v0 = ret(gfx_pio_write_32).

- `kona_dmapool_update` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0xc2c (n64).
  It occupies 76 bytes.
  The `jal` at 0xc64 calls `kona_dmapool_update_pipe` with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=[[a1+112]:8+240]:8, a4=-0x48, a5=[[a1+112]:8+240]:8+72, a6=[a1+112]:8.
  The `beq` at 0xc44 is taken when a3(=[[a1+112]:8+240]:8) == 0 and falls through when a3(=[[a1+112]:8+240]:8) != 0.
  The `beq` at 0xc4c is taken when a3(=[[a1+112]:8+240]:8) == a4(=-0x48) and falls through when a3(=[[a1+112]:8+240]:8) != a4(=-0x48).
  The `beq` at 0xc58 is taken when at(=[[[a1+112]:8+240]:8+80]) == 0 and falls through when at(=[[[a1+112]:8+240]:8+80]) != 0.
  The return at 0xc70 has v0 = ret(kona_dmapool_update_pipe).

- `kona_dmapool_destroy` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0xc78 (n64).
  It occupies 124 bytes.
  The `sw` at 0xcd4 stores 4 bytes from zero at ? (base unknown).
  The `jal` at 0xcb8 calls `undma` with a0=?, a1=?, a2=0x0, a3=a3 at entry (arg3), a5=[a1+112]:8.
  The `jal` at 0xcc8 calls `free_gfx_io_space` with a0=[a0+2184], a1=?, a2=?, a3=?.
  The `beq` at 0xc84 is taken when a4(=[[a1+112]:8+240]:8) == 0 and falls through when a4(=[[a1+112]:8+240]:8) != 0.
  The `beq` at 0xc8c is taken when a2 == 0 and falls through when a2 != 0.
  The `beq` at 0xc94 is taken when s0(?) == 0 and falls through when s0(?) != 0.
  The `beq` at 0xca4 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `bne` at 0xce4 is taken when a2 != 0 and falls through when a2 == 0.
  The return at 0xcdc has v0 = ret(free_gfx_io_space) on the path from 0xcd4.

- `kona_selectfeed_timeout` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x10b4 (n64).
  It occupies 164 bytes.
  The `sw` at 0x1140 stores 4 bytes from a3 at a1 (arg1 at entry) +0x20.
  The `sd` at 0x114c stores 8 bytes from zero at a1 (arg1 at entry) +0x40.
  The `jal` at 0x10d4 calls `mutex_spinlock` with a0=a0+2576, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10f4 calls `mutex_spinunlock` with a0=a0+2576, a1=?, a2=?, a3=?.
  The `jal` at 0x1128 calls `cmn_err_tag` with a0=0x84b, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184], a5=[a1+40]:8, a6=[a1+8].
  The `jal` at 0x1134 calls `kona_die` with a0=a0 at entry (arg0), a1=0x5, a2=?, a3=?.
  The `jal` at 0x1148 calls `vsema` with a0=a1+48, a1=?, a2=?, a3=-0x1.
  The `bne` at 0x10e0 is taken when at(=[a1+64]:8) != 0 and falls through when at(=[a1+64]:8) == 0.
  The return at 0x1104 has v0 = ret(mutex_spinunlock).

- `abi32_to_kona_dmaread_args` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x17d0 (n64).
  It occupies 204 bytes.
  The `sd` at 0x17e8 stores 8 bytes from a2 at a1 (arg1 at entry) +0x0.
  The `sw` at 0x17f0 stores 4 bytes from a0 at a1 (arg1 at entry) +0x8.
  The `sw` at 0x17f8 stores 4 bytes from v1 at a1 (arg1 at entry) +0xc.
  The `sw` at 0x1800 stores 4 bytes from v0 at a1 (arg1 at entry) +0x10.
  The `sw` at 0x180c stores 4 bytes from at at a1 (arg1 at entry) +0x98.
  The `sw` at 0x1828 stores 4 bytes from a5 at ? (base unknown).
  The `sw` at 0x184c stores 4 bytes from a7 at ? (base unknown).
  The `sd` at 0x1874 stores 8 bytes from t2 at a3 (arg3 at entry) +0x10.
  The `sw` at 0x187c stores 4 bytes from t3 at a3 (arg3 at entry) +0x4.
  The `sd` at 0x1898 stores 8 bytes from v0 at a3 (arg3 at entry) +0x10.
  The `jal` at 0x1888 calls `kern_malloc` with a0=0x94, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` at 0x17d8 is taken when a0 == 0 and falls through when a0 != 0.
  The `beq` at 0x182c is taken when v0(?) >= 0x20 (signed) and falls through when v0(?) < 0x20 (signed).
  The `bne` at 0x1848 is taken when v0(?) < 0x20 (signed) and falls through when v0(?) >= 0x20 (signed).
  The `bne` at 0x1868 is taken when t1(=[a3]) < 0x94 (unsigned) and falls through when t1(=[a3]) >= 0x94 (unsigned).
  The return at 0x1858 has v0 = 0x0.

- `abi32_to_kona_dmawrite_args` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x189c (n64).
  It occupies 188 bytes.
  The `sd` at 0x18b4 stores 8 bytes from v1 at a1 (arg1 at entry) +0x0.
  The `sw` at 0x18bc stores 4 bytes from v0 at a1 (arg1 at entry) +0x8.
  The `sw` at 0x18c8 stores 4 bytes from at at a1 (arg1 at entry) +0x8c.
  The `sw` at 0x18e4 stores 4 bytes from a2 at ? (base unknown).
  The `sw` at 0x1908 stores 4 bytes from a5 at ? (base unknown).
  The `sd` at 0x1930 stores 8 bytes from t0 at a3 (arg3 at entry) +0x10.
  The `sw` at 0x1938 stores 4 bytes from t1 at a3 (arg3 at entry) +0x4.
  The `sd` at 0x1954 stores 8 bytes from v0 at a3 (arg3 at entry) +0x10.
  The `jal` at 0x1944 calls `kern_malloc` with a0=0x8c, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` at 0x18a4 is taken when a0 == 0 and falls through when a0 != 0.
  The `beq` at 0x18e8 is taken when v0(?) >= 0x20 (signed) and falls through when v0(?) < 0x20 (signed).
  The `bne` at 0x1904 is taken when v0(?) < 0x20 (signed) and falls through when v0(?) >= 0x20 (signed).
  The `bne` at 0x1924 is taken when a7(=[a3]) < 0x8c (unsigned) and falls through when a7(=[a3]) >= 0x8c (unsigned).
  The return at 0x1914 has v0 = 0x0.

- `abi32_to_kona_dmapool_args` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x1958 (n64).
  It occupies 128 bytes.
  The `sd` at 0x1980 stores 8 bytes from v0 at a3 (arg3 at entry) +0x10.
  The `sw` at 0x1988 stores 4 bytes from v1 at a3 (arg3 at entry) +0x4.
  The `sd` at 0x199c stores 8 bytes from a4 at a1 (arg1 at entry) +0x0.
  The `sw` at 0x19a4 stores 4 bytes from a3 at a1 (arg1 at entry) +0x8.
  The `sw` at 0x19ac stores 4 bytes from a2 at a1 (arg1 at entry) +0xc.
  The `sw` at 0x19b4 stores 4 bytes from a0 at a1 (arg1 at entry) +0x10.
  The `sd` at 0x19d4 stores 8 bytes from v0 at a3 (arg3 at entry) +0x10.
  The `jal` at 0x19c4 calls `kern_malloc` with a0=0x10, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` at 0x1964 is taken when a0 != 0 and falls through when a0 == 0.
  The `bne` at 0x1974 is taken when at(=[a3]) < 0x10 (unsigned) and falls through when at(=[a3]) >= 0x10 (unsigned).
  The return at 0x19bc has v0 = 0x0.

- `abi32_to_kona_dmavec` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x19d8 (n64).
  It occupies 128 bytes.
  The `sd` at 0x1a00 stores 8 bytes from v0 at a3 (arg3 at entry) +0x10.
  The `sw` at 0x1a08 stores 4 bytes from v1 at a3 (arg3 at entry) +0x4.
  The `sd` at 0x1a1c stores 8 bytes from a4 at a1 (arg1 at entry) +0x0.
  The `sw` at 0x1a24 stores 4 bytes from a3 at a1 (arg1 at entry) +0x8.
  The `sw` at 0x1a2c stores 4 bytes from a2 at a1 (arg1 at entry) +0xc.
  The `sw` at 0x1a34 stores 4 bytes from a0 at a1 (arg1 at entry) +0x10.
  The `sd` at 0x1a54 stores 8 bytes from v0 at a3 (arg3 at entry) +0x10.
  The `jal` at 0x1a44 calls `kern_malloc` with a0=0x10, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` at 0x19e4 is taken when a0 != 0 and falls through when a0 == 0.
  The `bne` at 0x19f4 is taken when at(=[a3]) < 0x10 (unsigned) and falls through when at(=[a3]) >= 0x10 (unsigned).
  The return at 0x1a3c has v0 = 0x0.

- `abi32_to_kona_start_selectfeed_args` in `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)` at 0x1a58 (n64).
  It occupies 136 bytes.
  The `sd` at 0x1a80 stores 8 bytes from v0 at a3 (arg3 at entry) +0x10.
  The `sw` at 0x1a88 stores 4 bytes from v1 at a3 (arg3 at entry) +0x4.
  The `sd` at 0x1a9c stores 8 bytes from a5 at a1 (arg1 at entry) +0x0.
  The `sw` at 0x1aa4 stores 4 bytes from a4 at a1 (arg1 at entry) +0x8.
  The `sw` at 0x1aac stores 4 bytes from a3 at a1 (arg1 at entry) +0xc.
  The `sw` at 0x1ab4 stores 4 bytes from a2 at a1 (arg1 at entry) +0x10.
  The `sw` at 0x1abc stores 4 bytes from a0 at a1 (arg1 at entry) +0x18.
  The `sd` at 0x1adc stores 8 bytes from v0 at a3 (arg3 at entry) +0x10.
  The `jal` at 0x1acc calls `kern_malloc` with a0=0x14, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` at 0x1a64 is taken when a0 != 0 and falls through when a0 == 0.
  The `bne` at 0x1a74 is taken when at(=[a3]) < 0x14 (unsigned) and falls through when at(=[a3]) >= 0x14 (unsigned).
  The return at 0x1ac4 has v0 = 0x0.

- `__glkon_SuspendSelectfeed` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd95cc00 (n32).
  It occupies 280 bytes.
  The `sw` at 0xd95cc68 stores 4 bytes from v0 at [0x1010] +0x7b88.
  The `sw` at 0xd95cca8 stores 4 bytes from v1 at [0x1010] +0x7b6c.
  The `sb` at 0xd95ccb8 stores 1 bytes from at at [0x1010] +0x1304.
  The `sw` at 0xd95ccf8 stores 4 bytes from v1 at [0x1010] +0x7b74.
  The `sb` at 0xd95cd08 stores 1 bytes from at at [0x1010] +0x1324.
  The `bgezall` at 0xd95cc58 calls `FinishSelectFeed [0xd95cba0]` with a0=sp-32, a1=[[0x1010]+3204], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd95cc90 calls `FinishSelectFeed [0xd95cba0]` with a0=sp-32, a1=[[0x1010]+3204], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd95cce0 calls `FinishSelectFeed [0xd95cba0]` with a0=sp-32, a1=[[0x1010]+3204], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` at 0xd95cc20 is taken when a1(=[[0x1010]+3204]) == v0(=0x1c01) and falls through when a1(=[[0x1010]+3204]) != v0(=0x1c01).
  The `beq` at 0xd95cc2c is taken when a1(=[[0x1010]+3204]) == v0(=0x1c02) and falls through when a1(=[[0x1010]+3204]) != v0(=0x1c02).
  The `bne` at 0xd95cc38 is taken when v1(=[[0x1010]+31608]) != 0 and falls through when v1(=[[0x1010]+31608]) == 0.
  The `bnel` at 0xd95cc7c is taken when at(=[[0x1010]+4868]:1) != 0 and falls through when at(=[[0x1010]+4868]:1) == 0.
  The `bnel` at 0xd95cccc is taken when a0(=[[0x1010]+4900]:1) != 0 and falls through when a0(=[[0x1010]+4900]:1) == 0.
  The return at 0xd95cc48 has v0 = one of 0x1c01, 0x1c02.
  The return at 0xd95cc70 has v0 = ret(FinishSelectFeed).
  The return at 0xd95ccc0 has v0 = [[0x1010]+4868]:1.
  The return at 0xd95cd10 has v0 = [[0x1010]+4900]:1.

- `__glkon_ResumeSelectfeed` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd95cd20 (n32).
  It occupies 248 bytes.
  The `bgezall` at 0xd95cd78 calls `StartSelectFeed [0xd95cb30]` with a0=([[0x1010]+31608] + ([[0x1010]+31624] << 0x2)), a1=?, a2=a2 at entry (arg2), a3=[0x1010], a4=[[0x1010]+31608].
  The `bgezall` at 0xd95cdbc calls `StartSelectFeed [0xd95cb30]` with a0=([[0x1010]+31592] + ([[0x1010]+31596] << 0x2)), a1=?, a2=([[0x1010]+31596] << 0x2), a3=[0x1010].
  The `bgezall` at 0xd95ce08 calls `StartSelectFeed [0xd95cb30]` with a0=([[0x1010]+31600] + ([[0x1010]+31604] << 0x2)), a1=?, a2=[[0x1010]+31604], a3=[0x1010].
  The `beq` at 0xd95cd3c is taken when a1(=[[0x1010]+3204]) == v0(=0x1c01) and falls through when a1(=[[0x1010]+3204]) != v0(=0x1c01).
  The `beq` at 0xd95cd48 is taken when a1(=[[0x1010]+3204]) == v0(=0x1c02) and falls through when a1(=[[0x1010]+3204]) != v0(=0x1c02).
  The `beq` at 0xd95cd54 is taken when a4(=[[0x1010]+31608]) == 0 and falls through when a4(=[[0x1010]+31608]) != 0.
  The `bne` at 0xd95cd94 is taken when at(=[[0x1010]+4868]:1) != 0 and falls through when at(=[[0x1010]+4868]:1) == 0.
  The `bne` at 0xd95cdd0 is taken when at(=[[0x1010]+4900]:1) != 0 and falls through when at(=[[0x1010]+4900]:1) == 0.
  The return at 0xd95cd88 has v0 = 0x1c02 on the path from 0xd95cd54.
  The return at 0xd95cd88 has v0 = ret(StartSelectFeed) on the path from 0xd95cd80.
  The return at 0xd95cd88 has v0 = 0x1c01 on the path from 0xd95cd94.
  The return at 0xd95cd88 has v0 = ret(StartSelectFeed) on the path from 0xd95cdc4.
  The return at 0xd95cd88 has v0 = 0x1c02 on the path from 0xd95cdd0.
  The return at 0xd95cd88 has v0 = ret(StartSelectFeed) on the path from 0xd95ce10.

- `gfx_flow_delayed_hiwater_intr_prehandler` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x0 (n64).
  It occupies 144 bytes.
  The `sd` at 0x58 stores 8 bytes from zero at table(0x9200000001000000) +0x0.
  The `jalr` at 0x7c calls (unknown callee) with a0=[[([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3be0]:2 << 0x3))]:8+40]:8, a1=?, a2=[[([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3be0]:2 << 0x3))]:8+32]:8, a3=[([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3be0]:2 << 0x3))]:8, a4=a1 at entry (arg1), a5=([-0x3be0]:2 << 0x3).
  The `bne` at 0x1c is taken when a3(=[([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3be0]:2 << 0x3))]:8) != 0 and falls through when a3(=[([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3be0]:2 << 0x3))]:8) == 0.
  The return at 0x60 has v0 unknown.

- `kona_intr_set` in `usr/cpu/sysgen/IP27boot/kona.a(kona_edtinit_hip2.o)` at 0xc8 (n64).
  It occupies 8 bytes.
  The return at 0xc8 has v0 = 0x0.

- `gfx_flow_delayed_hiwater_intr_prehandler` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x0 (n64).
  It occupies 148 bytes.
  The `sd` at 0x5c stores 8 bytes from zero at table(0x9200000001000000) +0x0.
  The `jalr` at 0x80 calls (unknown callee) with a0=[[([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3bd8]:2 << 0x3))]:8+40]:8, a1=?, a2=[[([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3bd8]:2 << 0x3))]:8+32]:8, a3=[([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3bd8]:2 << 0x3))]:8, a4=a1 at entry (arg1), a5=([-0x3bd8]:2 << 0x3).
  The `bne` at 0x1c is taken when a3(=[([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3bd8]:2 << 0x3))]:8) != 0 and falls through when a3(=[([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3bd8]:2 << 0x3))]:8) == 0.
  The return at 0x64 has v0 unknown.

- `kona_intr_set` in `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)` at 0xc8 (n64).
  It occupies 8 bytes.
  The return at 0xc8 has v0 = 0x0.

- `kona_lowater_intr` in `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)` at 0x4cc (n64).
  It occupies 216 bytes.
  The `sw` at 0x4f0 stores 4 bytes from at at a0 (arg0 at entry) +0x1490.
  The `sd` at 0x508 stores 8 bytes from zero at a0 (arg0 at entry) +0x920.
  The `sw` at 0x524 stores 4 bytes from a1 at a0 (arg0 at entry) +0x940.
  The `sw` at 0x540 stores 4 bytes from zero at a0 (arg0 at entry) +0x928.
  The `sw` at 0x558 stores 4 bytes from zero at a0 (arg0 at entry) +0x68.
  The `sw` at 0x55c stores 4 bytes from zero at a0 (arg0 at entry) +0x6c.
  The `sw` at 0x580 stores 4 bytes from a4 at a0 (arg0 at entry) +0x50.
  The `jal` at 0x4d8 calls `gfx_waitf_on` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x500 calls `kona_untimeout` with a0=a0 at entry (arg0), a1=[a0+2336]:8, a2=?, a3=?.
  The `jal` at 0x528 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0x800230, a1=?, a2=0x800230, a3=-0x3.
  The `jal` at 0x544 calls `gfx_pio_write_32` with a0=[a0+2376]:8+0x800238, a1=0x3, a2=0x800238, a3=?.
  The `jal` at 0x560 calls `gfx_waitf_off` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x594 calls `cmn_err` with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `beq` at 0x4ec is taken when v0(=[a0+104]) == 0 and falls through when v0(=[a0+104]) != 0.
  The `beq` at 0x4f8 is taken when a1(=[a0+2336]:8) == 0 and falls through when a1(=[a0+2336]:8) != 0.
  The `beq` at 0x550 is taken when a3(=[a0+108]) == 0 and falls through when a3(=[a0+108]) != 0.
  The return at 0x56c has v0 = ret(gfx_waitf_off).

- `TEST_intr` in `usr/diags/IR/bin/irsaudit` at 0x10079858 (n32).
  It occupies 572 bytes.
  The `sw` at 0x100798a0 stores 4 bytes from zero at sym(wg_flow_control) +0x0.
  The `sw` at 0x1007999c stores 4 bytes from s8 at sym(wg_flow_control) +0x0.
  The `jal` at 0x1007989c calls `ResetKona [0x100388e0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100798b4 calls `fcPioWrite32 [0x1013dae8]` with a0=0x308, a1=0x1, a2=?, a3=?.
  The `jal` at 0x100798c8 calls `initialize_icu [0x100385d4]` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100798dc calls `init_hip_interrupt_regs [0x100387f8]` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100798f4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10079920 calls `ResetKona [0x100388e0]` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10079940 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10079960 calls `ResetKona [0x100388e0]` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10079974 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10079990 calls `ResetKona [0x100388e0]` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100799b4 calls `kt_code_result [0x10048068]` with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x100799d0 calls `kt_code_chip [0x1004797c]` with a0=0x2, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x100799f0 calls `kt_output_rslt [0x10045978]` with a0=0x0, a1=0x1019a658, a2=?, a3=?.
  The `jal` at 0x10079a2c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10079a50 calls `kt_code_result [0x10048068]` with a0=0x1, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x10079a68 calls `kt_output_rslt [0x10045978]` with a0=0x1, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10079a84 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` at 0x10079914 is taken when ra(=[[sym(KONAINFO)]]) == 0 and falls through when ra(=[[sym(KONAINFO)]]) != 0.
  The `beq` at 0x10079930 is taken when t8(=[[sym(KONAINFO)]]) == 0 and falls through when t8(=[[sym(KONAINFO)]]) != 0.
  The `beq` at 0x10079954 is taken when ra(=[[sym(KONAINFO)]]) == 0 and falls through when ra(=[[sym(KONAINFO)]]) != 0.
  The `beq` at 0x10079984 is taken when ra(=[[sym(KONAINFO)]]) == 0 and falls through when ra(=[[sym(KONAINFO)]]) != 0.
  The `beq` at 0x10079998 is taken when s2(?) == 0 and falls through when s2(?) != 0.
  The return at 0x10079a18 has v0 = ret(kt_output_rslt).

- `nic_xg_vertex_info` in `usr/cpu/sysgen/IP27boot/kona.a(kona_edtinit_hip2.o)` at 0x5ec (n64).
  It occupies 32 bytes.
  The `jal` at 0x5f8 calls `nic_vertex_info_set` with a0=sym(nic_access_mcr32), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0x604 has v0 = ret(nic_vertex_info_set).

- `nic_xg_vertex_info` in `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)` at 0x5ec (n64).
  It occupies 32 bytes.
  The `jal` at 0x5f8 calls `nic_vertex_info_set` with a0=sym(nic_access_mcr32), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0x604 has v0 = ret(nic_vertex_info_set).

- `manual_set_jtag_reg_field` in `usr/diags/IR/bin/irsaudit` at 0x10032b18 (n32).
  It occupies 312 bytes.
  The `jal` at 0x10032b94 calls `kt_output_dbug [0x10046d74]` with a0=0x5, a1=0x10178f48, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=a4 at entry (arg4).
  The `jal` at 0x10032bac calls `jt_int_to_vector [0x10164fa0]` with a0=?, a1=sp-64, a2=?, a3=?.
  The `jal` at 0x10032bd8 calls `jt_copy_bits [0x10166370]` with a0=sp-64, a1=0x0, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0x10032c14 calls `__assert` with a0=0x10178f18, a1=0x10178f28, a2=0x100, a3=a3 at entry (arg3), a5=0x0.
  The `jalr` at 0x10032c40 calls `__assert` with a0=0x10178f38, a1=0x10178f28, a2=0x101, a3=?.
  The `beq` at 0x10032b58 is taken when a4 >= 0x21 (signed) and falls through when a4 < 0x21 (signed).
  The `blez` at 0x10032b60 is taken when s0(=a4) <= 0 (signed) and falls through when s0(=a4) > 0 (signed).
  The return at 0x10032bf0 has v0 = ret(jt_copy_bits).

- `auto_set_jtag_reg_field` in `usr/diags/IR/bin/irsaudit` at 0x10032c50 (n32).
  It occupies 196 bytes.
  The `jal` at 0x10032cb8 calls `kt_output_dbug [0x10046d74]` with a0=0x5, a1=0x10178f90, a2=[(sym(jt_regs) + (((a1 << 0x3) + a1) << 0x2))], a3=a2 at entry (arg2), a4=sym(jt_regs), a5=(((a1 << 0x3) + a1) << 0x2), a6=0x102c4340.
  The `jal` at 0x10032cf8 calls `manual_set_jtag_reg_field [0x10032b18]` with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The return at 0x10032d0c has v0 = ret(manual_set_jtag_reg_field).

- `auto_init_jtag_reg_field` in `usr/diags/IR/bin/irsaudit` at 0x10032d14 (n32).
  It occupies 192 bytes.
  The `jal` at 0x10032d78 calls `kt_output_dbug [0x10046d74]` with a0=0x5, a1=0x10178fc0, a2=[(sym(jt_regs) + (((a1 << 0x3) + a1) << 0x2))], a3=[(sym(jt_regs) + (((a1 << 0x3) + a1) << 0x2))+32], a4=(((a1 << 0x3) + a1) << 0x2), a5=0x0.
  The `jal` at 0x10032db8 calls `manual_set_jtag_reg_field [0x10032b18]` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x10032dcc has v0 = ret(manual_set_jtag_reg_field).

- `auto_get_jtag_reg_field` in `usr/diags/IR/bin/irsaudit` at 0x10032dd4 (n32).
  It occupies 144 bytes.
  The `jal` at 0x10032e30 calls `jt_copy_bits [0x10166370]` with a0=a0 at entry (arg0), a1=[(sym(jt_regs) + (((a1 << 0x3) + a1) << 0x2))+16], a2=sp-32, a3=0x0, a5=[(sym(jt_regs) + (((a1 << 0x3) + a1) << 0x2))+16], a6=(((a1 << 0x3) + a1) << 0x2).
  The `jal` at 0x10032e48 calls `jt_vector_to_int [0x10164f30]` with a0=sp-24, a1=sp-32, a2=?, a3=?.
  The return at 0x10032e5c has v0 unknown.

- `ge_host_reg_write` in `usr/diags/IR/bin/irsaudit` at 0x10039a14 (n32).
  It occupies 156 bytes.
  The `jal` at 0x10039a7c calls `PioWriteArm32 [0x10038444]` with a0=0x200600, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10039a90 calls `PioWriteArm32 [0x10038444]` with a0=0x200ac0, a1=a1 at entry (arg1), a2=?, a3=?.
  The return at 0x10039aa8 has v0 = ret(PioWriteArm32).

- `TEST_ge_hip` in `usr/diags/IR/bin/irsaudit` at 0x1006f0f4 (n32).
  It occupies 876 bytes.
  The `jal` at 0x1006f174 calls `kt_output_trce [0x10046b88]` with a0=0x10198660, a1=0x5050505, a2=0xffffffffa0a0a0a0, a3=0x0, a4=0xffffffffbabebabe, a5=0x25524c, a6=0xffffffffaaaaaaaa, a7=0x55555555.
  The `jal` at 0x1006f190 calls `fcPioRead32 [0x1013dd88]` with a0=0x238, a1=?, a2=?, a3=?.
  The `jal` at 0x1006f1c0 calls `fcPioWrite32 [0x1013dae8]` with a0=0x238, a1=?, a2=?, a3=?.
  The `jal` at 0x1006f1f0 calls `tbRegWrite [0x1013eb3c]` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1006f21c calls `tbRegWrite [0x1013eb3c]` with a0=0x400, a1=?, a2=?, a3=?.
  The `jal` at 0x1006f274 calls `fcPioWrite32 [0x1013dae8]` with a0=0x238, a1=one of 0x3ff, 0xfff, a2=?, a3=?.
  The `jal` at 0x1006f290 calls `kt_code_result [0x10048068]` with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x1006f2b4 calls `kt_output_rslt [0x10045978]` with a0=0x0, a1=0x10198680, a2=?, a3=?.
  The `jalr` at 0x1006f2e4 calls `sginap` with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x1006f2f0 calls `fcPioRead32 [0x1013dd88]` with a0=0x238, a1=?, a2=?, a3=?.
  The `jal` at 0x1006f314 calls `kt_output_dbug [0x10046d74]` with a0=0x9, a1=0x101986a8, a2=ret(fcPioRead32), a3=?.
  The `jal` at 0x1006f34c calls `fcPioWrite32 [0x1013dae8]` with a0=0x238, a1=one of 0x3ff, 0xfff, a2=?, a3=[[sym(KONAINFO)]].
  The `jal` at 0x1006f38c calls `fcPioRead32 [0x1013dd88]` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1006f3c0 calls `kt_output_dbug [0x10046d74]` with a0=0x4, a1=0x101986e8, a2=?, a3=?.
  The `jal` at 0x1006f3e8 calls `kt_code_result [0x10048068]` with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x1006f40c calls `kt_output_rslt [0x10045978]` with a0=0x0, a1=0x10198700, a2=?, a3=?.
  The `jal` at 0x1006f438 calls `kt_code_result [0x10048068]` with a0=0x1, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x1006f450 calls `kt_output_rslt [0x10045978]` with a0=0x1, a1=0x0, a2=?, a3=?.
  The `bne` at 0x1006f204 is taken when s3(?) < 0x3 (signed) and falls through when s3(?) >= 0x3 (signed).
  The `bne` at 0x1006f248 is taken when t8(?) != 0 and falls through when t8(?) == 0.
  The `beq` at 0x1006f264 is taken when t9(=[[sym(KONAINFO)]]) == 0 and falls through when t9(=[[sym(KONAINFO)]]) != 0.
  The `beq` at 0x1006f324 is taken when (s3(=ret(fcPioRead32)) & 0x20) == 0 and falls through when (s3(=ret(fcPioRead32)) & 0x20) != 0.
  The `beq` at 0x1006f340 is taken when a3(=[[sym(KONAINFO)]]) == 0 and falls through when a3(=[[sym(KONAINFO)]]) != 0.
  The `beq` at 0x1006f380 is taken when s3(?) >= 0x3 (signed) and falls through when s3(?) < 0x3 (signed).
  The `beq` at 0x1006f3a0 is taken when a3(?) == a4(?) and falls through when a3(?) != a4(?).
  The `beq` at 0x1006f3d0 is taken when s5(?) == 0 and falls through when s5(?) != 0.
  The return at 0x1006f2dc has v0 = ret(kt_output_rslt).

- `TEST_hh_reg` in `usr/diags/IR/bin/irsaudit` at 0x10078ff8 (n32).
  It occupies 588 bytes.
  The `jal` at 0x10079038 calls `hash_value [0x10059f54]` with a0=0x10199f50, a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1007906c calls `kt_output_dbug [0x10046d74]` with a0=0x3, a1=0x10199f60, a2=ret(hash_value), a3=?.
  The `jal` at 0x10079088 calls `fcPioWrite32 [0x1013dae8]` with a0=0x320, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10079098 calls `fcPioWrite32 [0x1013dae8]` with a0=0x308, a1=0x1, a2=?, a3=?.
  The `jal` at 0x100790b4 calls `kt_output_dbug [0x10046d74]` with a0=0x4, a1=0x10199f78, a2=?, a3=?.
  The `jal` at 0x10079114 calls `basicSanityReg [0x1008a820]` with a0=a0 at entry (arg0), a1=0x10200bf0, a2=0x10200c00, a3=0x0.
  The `jal` at 0x10079138 calls `kt_output_info [0x10046374]` with a0=0x10199fa0, a1=?, a2=?, a3=?.
  The `jal` at 0x10079158 calls `fcPioWrite32 [0x1013dae8]` with a0=0x308, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10079168 calls `fcPioWrite32 [0x1013dae8]` with a0=0x320, a1=0x1, a2=?, a3=?.
  The `jal` at 0x1007918c calls `kt_code_chip [0x1004797c]` with a0=0x2, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x100791a8 calls `kt_code_result [0x10048068]` with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x100791d0 calls `kt_output_rslt [0x10045978]` with a0=0x0, a1=0x10199fd0, a2=?, a3=?.
  The `jal` at 0x1007921c calls `kt_code_result [0x10048068]` with a0=0x1, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x10079234 calls `kt_output_rslt [0x10045978]` with a0=0x1, a1=0x0, a2=?, a3=?.
  The `blez` at 0x100790e4 is taken when s8(=ret(hash_value)) <= 0 (signed) and falls through when s8(=ret(hash_value)) > 0 (signed).
  The `beq` at 0x1007911c is taken when v0(=ret(basicSanityReg)) == 0 and falls through when v0(=ret(basicSanityReg)) != 0.
  The `bne` at 0x10079148 is taken when s2(?) < s8(=ret(hash_value)) (signed) and falls through when s2(?) >= s8(=ret(hash_value)) (signed).
  The `beq` at 0x10079170 is taken when s3(?) == 0 and falls through when s3(?) != 0.
  The return at 0x10079204 has v0 = ret(kt_output_rslt).

- `TEST_ha_reg` in `usr/diags/IR/bin/irsaudit` at 0x10079244 (n32).
  It occupies 800 bytes.
  The `jal` at 0x10079280 calls `hash_value [0x10059f54]` with a0=0x10199f50, a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100792b4 calls `kt_output_dbug [0x10046d74]` with a0=0x3, a1=0x10199f60, a2=ret(hash_value), a3=?.
  The `jal` at 0x100792d0 calls `fcPioWrite32 [0x1013dae8]` with a0=0x320, a1=0x0, a2=?, a3=?.
  The `jal` at 0x100792e0 calls `fcPioWrite32 [0x1013dae8]` with a0=0x308, a1=0x1, a2=?, a3=?.
  The `jal` at 0x100792fc calls `kt_output_dbug [0x10046d74]` with a0=0x4, a1=0x1019a000, a2=?, a3=?.
  The `jal` at 0x10079310 calls `HipRevRead [0x10038954]` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1007938c calls `basicSanityReg [0x1008a820]` with a0=a0 at entry (arg0), a1=0x10200bf0, a2=0x10200d60, a3=0x1.
  The `jal` at 0x100793b0 calls `kt_output_info [0x10046374]` with a0=0x1019a028, a1=?, a2=?, a3=?.
  The `jal` at 0x100793d4 calls `basicSanityReg [0x1008a820]` with a0=a0 at entry (arg0), a1=0x10200bf0, a2=one of 0x10200c60, 0x10200c78, a3=0x1.
  The `jal` at 0x100793f8 calls `kt_output_info [0x10046374]` with a0=0x1019a028, a1=?, a2=?, a3=?.
  The `jal` at 0x10079438 calls `basicSanityReg [0x1008a820]` with a0=a0 at entry (arg0), a1=0x10200bf0, a2=0x10200c90, a3=0x1.
  The `jal` at 0x10079464 calls `fcPioWrite32 [0x1013dae8]` with a0=0x308, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10079474 calls `fcPioWrite32 [0x1013dae8]` with a0=0x320, a1=0x1, a2=?, a3=?.
  The `jal` at 0x10079498 calls `kt_code_chip [0x1004797c]` with a0=0x2, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x100794b4 calls `kt_code_result [0x10048068]` with a0=0x1, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x100794dc calls `kt_output_rslt [0x10045978]` with a0=0x0, a1=0x1019a060, a2=?, a3=?.
  The `jal` at 0x10079534 calls `kt_code_result [0x10048068]` with a0=0x1, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x1007954c calls `kt_output_rslt [0x10045978]` with a0=0x1, a1=0x0, a2=?, a3=?.
  The `beq` at 0x10079328 is taken when v0(=ret(HipRevRead)) == ra(=0x30) and falls through when v0(=ret(HipRevRead)) != ra(=0x30).
  The `blez` at 0x1007935c is taken when at(?) <= 0 (signed) and falls through when at(?) > 0 (signed).
  The `beq` at 0x10079398 is taken when s3(=ret(basicSanityReg)) == 0 and falls through when s3(=ret(basicSanityReg)) != 0.
  The `beq` at 0x100793bc is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `beq` at 0x100793dc is taken when v0(=ret(basicSanityReg)) == 0 and falls through when v0(=ret(basicSanityReg)) != 0.
  The `beq` at 0x10079410 is taken when s5(?) >= t8(?) (signed) and falls through when s5(?) < t8(?) (signed).
  The `bne` at 0x10079420 is taken when t9(=[[sym(KONAINFO)]]) != 0 and falls through when t9(=[[sym(KONAINFO)]]) == 0.
  The `beq` at 0x1007947c is taken when s7(?) == 0 and falls through when s7(?) != 0.
  The return at 0x10079510 has v0 = ret(kt_output_rslt).

- `TEST_dg_reg` in `usr/diags/IR/bin/irsaudit` at 0x10079790 (n32).
  It occupies 200 bytes.
  The `jal` at 0x100797c0 calls `DgSanityTest [0x100642b4]` with a0=a0 at entry (arg0), a1=0x10200bf0, a2=0x10200e30, a3=a3 at entry (arg3).
  The `jal` at 0x100797e4 calls `kt_code_result [0x10048068]` with a0=0x3, a1=0x0, a2=0x4, a3=?.
  The `jal` at 0x10079808 calls `kt_output_rslt [0x10045978]` with a0=0x0, a1=0x1019a100, a2=?, a3=?.
  The `jal` at 0x10079830 calls `kt_code_result [0x10048068]` with a0=0x3, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x10079848 calls `kt_output_rslt [0x10045978]` with a0=0x1, a1=0x0, a2=?, a3=?.
  The `beq` at 0x100797c8 is taken when v0(=ret(DgSanityTest)) == 0 and falls through when v0(=ret(DgSanityTest)) != 0.
  The return at 0x10079818 has v0 = ret(kt_output_rslt).

- `xg_xt_report_stats` in `usr/diags/IR/bin/irsaudit` at 0x101081e4 (n32).
  It occupies 280 bytes.
  The `jal` at 0x10108218 calls `fcAdapPioRead32 [0x1013dd20]` with a0=0xa4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10108240 calls `kt_output_dbug [0x10046d74]` with a0=0x1, a1=0x101b50f0, a2=?, a3=?.
  The `jal` at 0x1010824c calls `fcAdapPioRead32 [0x1013dd20]` with a0=0xc, a1=?, a2=?, a3=?.
  The `jal` at 0x10108284 calls `kt_output_dbug [0x10046d74]` with a0=0x1, a1=0x101b5118, a2=one of 0x101b5108, 0x101b5110, a3=0x101b50f0, a4=(ret(fcAdapPioRead32) << 0x1a).
  The `jal` at 0x101082a4 calls `kt_output_dbug [0x10046d74]` with a0=0x1, a1=0x101b5130, a2=?, a3=?.
  The `jal` at 0x101082c8 calls `kt_output_dbug [0x10046d74]` with a0=0x1, a1=0x101b5158, a2=?, a3=?.
  The `bltz` at 0x10108264 is taken when a4(=(ret(fcAdapPioRead32) << 0x1a)) < 0 (signed) and falls through when a4(=(ret(fcAdapPioRead32) << 0x1a)) >= 0 (signed).
  The return at 0x101082e0 has v0 = ret(kt_output_dbug).

- `reg_test` in `usr/diags/IR/bin/irsaudit` at 0x101153a0 (n32).
  It occupies 1164 bytes.
  The `jal` at 0x101154a0 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b7110, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x101154d8 calls `vcWrite [0x1014071c]` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x101154fc calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b7028, a2=a0 at entry (arg0), a3=?.
  The `jal` at 0x1011550c calls `vcWrite [0x1014071c]` with a0=0xc008, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10115518 calls `vcRead [0x10140bac]` with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x10115548 calls `kt_output_info [0x10046374]` with a0=0x101b7050, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x10115578 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b7090, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x10115588 calls `vcWrite [0x1014071c]` with a0=0xc008, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10115594 calls `vcRead [0x10140bac]` with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x101155c4 calls `kt_output_info [0x10046374]` with a0=0x101b70c8, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x10115600 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b72d0, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x1011563c calls `vcWrite [0x1014071c]` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10115660 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b7148, a2=a0 at entry (arg0), a3=?.
  The `jal` at 0x10115670 calls `vcWrite [0x1014071c]` with a0=0xc008, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1011567c calls `vcRead [0x10140bac]` with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x101156ac calls `kt_output_info [0x10046374]` with a0=0x101b7170, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x101156dc calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b71b0, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x101156ec calls `vcWrite [0x1014071c]` with a0=0xc008, a1=0x0, a2=?, a3=?.
  The `jal` at 0x101156f8 calls `vcRead [0x10140bac]` with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1011572c calls `kt_output_info [0x10046374]` with a0=0x101b71e8, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x10115738 calls `vcRead [0x10140bac]` with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x10115764 calls `kt_output_info [0x10046374]` with a0=0x101b7230, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x10115780 calls `kt_output_dbug [0x10046d74]` with a0=0x4, a1=0x101b7278, a2=?, a3=?.
  The `jal` at 0x101157a8 calls `kt_output_info [0x10046374]` with a0=0x101b7288, a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` at 0x10115424 is taken when a3 >= a2 (signed) and falls through when a3 < a2 (signed).
  The `bne` at 0x10115458 is taken when v0(?) < a2 (signed) and falls through when v0(?) >= a2 (signed).
  The `beq` at 0x101154bc is taken when a2(?) >= a3(=a2) (signed) and falls through when a2(?) < a3(=a2) (signed).
  The `beq` at 0x10115524 is taken when a2(?) == s6(?) and falls through when a2(?) != s6(?).
  The `beq` at 0x101155a4 is taken when a2(?) == a4(?) and falls through when a2(?) != a4(?).
  The `beq` at 0x10115620 is taken when a2(?) >= 0x6 (signed) and falls through when a2(?) < 0x6 (signed).
  The `beq` at 0x10115688 is taken when a2(?) == s6(?) and falls through when a2(?) != s6(?).
  The `beq` at 0x10115708 is taken when a2(?) == a7(?) and falls through when a2(?) != a7(?).
  The `beq` at 0x10115748 is taken when a1(?) == a3(?) and falls through when a1(?) != a3(?).
  The return at 0x101157e8 has v0 unknown.

- `Compact_HIP_Geom_Control` in `usr/diags/IR/bin/irsaudit` at 0x1013f44c (n32).
  It occupies 116 bytes.
  The return at 0x1013f4b8 has v0 unknown.

- `Compact_HIP_Pass_Control` in `usr/diags/IR/bin/irsaudit` at 0x1013f4c0 (n32).
  It occupies 92 bytes.
  The return at 0x1013f514 has v0 unknown.

- `Compact_HIP_Reg_Pixel_Control` in `usr/diags/IR/bin/irsaudit` at 0x1013f51c (n32).
  It occupies 92 bytes.
  The return at 0x1013f570 has v0 unknown.

- `Compact_GED_Reg_Pixel_Control` in `usr/diags/IR/bin/irsaudit` at 0x1013f6fc (n32).
  It occupies 44 bytes.
  The return at 0x1013f720 has v0 unknown.

- `Transfer_GED_Reg` in `usr/diags/IR/bin/irsaudit` at 0x1013f940 (n32).
  It occupies 264 bytes.
  The `jal` at 0x1013f998 calls `Compact_GED_Reg_Pixel_Control [0x1013f6fc]` with a0=sp-48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1013f9b8 calls `fcGfxWrite32 [0x1013df2c]` with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1013f9c4 calls `fcGfxWrite32 [0x1013df2c]` with a0=0x7, a1=?, a2=?, a3=?.
  The `jal` at 0x1013f9d4 calls `fcGfxWrite32 [0x1013df2c]` with a0=0x200600, a1=?, a2=?, a3=?.
  The `jal` at 0x1013f9e8 calls `Compact_HIP_Reg_Pixel_Control [0x1013f51c]` with a0=sp-80, a1=?, a2=?, a3=?.
  The `jal` at 0x1013f9f4 calls `fcGfxWrite32 [0x1013df2c]` with a0=ret(Compact_HIP_Reg_Pixel_Control), a1=?, a2=?, a3=?.
  The `jal` at 0x1013fa00 calls `fcGfxWrite32 [0x1013df2c]` with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1013fa0c calls `fcGfxWrite32 [0x1013df2c]` with a0=0x7, a1=?, a2=?, a3=?.
  The `jal` at 0x1013fa1c calls `fcGfxWrite32 [0x1013df2c]` with a0=0x200a80, a1=?, a2=?, a3=?.
  The `jal` at 0x1013fa2c calls `fcGfxWrite32 [0x1013df2c]` with a0=0xffffffffdeadbeef, a1=?, a2=?, a3=?.
  The return at 0x1013fa40 has v0 = ret(fcGfxWrite32).

- `select_window__5FrameGP9_XDisplay` in `usr/gfx/ircombine` at 0x10048030 (n32).
  It occupies 524 bytes.
  The `jalr` at 0x10048094 calls `XCreateFontCursor` with a0=a1 at entry (arg1), a1=0x22, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100480cc calls `XGrabPointer` with a0=a1 at entry (arg1), a1=?, a2=0x0, a3=0xc, a4=0x0, a5=0x1, a7=ret(XCreateFontCursor).
  The `jalr` at 0x100480fc calls `fprintf` with a0=sym(__iob)+32, a1=0x10097c48, a2=?, a3=?.
  The `jalr` at 0x1004810c calls `exit` with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004813c calls `XAllowEvents` with a0=a1 at entry (arg1), a1=0x1, a2=0x0, a3=?.
  The `jalr` at 0x10048158 calls `XWindowEvent` with a0=a1 at entry (arg1), a1=?, a2=0xc, a3=sp-152.
  The `jalr` at 0x1004820c calls `XUngrabPointer` with a0=a1 at entry (arg1), a1=0x0, a2=?, a3=?.
  The `beq` at 0x100480e0 is taken when a0(=ret(XGrabPointer)) == 0 and falls through when a0(=ret(XGrabPointer)) != 0.
  The `beq` at 0x10048118 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `beq` at 0x10048124 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x1004816c is taken when a3(?) == a4(=0x4) and falls through when a3(?) != a4(=0x4).
  The `beq` at 0x1004817c is taken when a5(?) == a6(=0x5) and falls through when a5(?) != a6(=0x5).
  The `bne` at 0x10048190 is taken when a7(?) != 0 and falls through when a7(?) == 0.
  The `bne` at 0x100481a4 is taken when t0(?) != 0 and falls through when t0(?) == 0.
  The `blez` at 0x100481cc is taken when t8(?) <= 0 (signed) and falls through when t8(?) > 0 (signed).
  The `beq` at 0x100481ec is taken when ra(?) == 0 and falls through when ra(?) != 0.
  The `bne` at 0x100481f8 is taken when at(?) != 0 and falls through when at(?) == 0.
  The return at 0x10048234 has v0 unknown.

- `gl_d_window` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec49aa8 (o32).
  It occupies 208 bytes.
  The `sw` at 0xec49b0c stores 4 bytes from t7 at [0xecdc60c] +0x0.
  The `sw` at 0xec49b44 stores 4 bytes from v1 at abs 0xecdc60c (comm_curbufpos).
  The `jalr` at 0xec49af0 calls `gl_comm_flush [0xec3ff10]` with a0=0xecdc60c, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xec49b5c calls `gl_comm_flush [0xec3ff10]` with a0=0xecdc60c, a1=?, a2=?, a3=?.
  The `beq` at 0xec49ae4 is taken when t6(=[0xecdc608]) >= v1(=[0xecdc60c]+28) (unsigned) and falls through when t6(=[0xecdc608]) < v1(=[0xecdc60c]+28) (unsigned).
  The `beql` at 0xec49b50 is taken when t8(=[0xecdc608]) >= v1(=[0xecdc60c]+28) (unsigned) and falls through when t8(=[0xecdc608]) < v1(=[0xecdc60c]+28) (unsigned).
  The return at 0xec49b70 has v0 = [0xecdc60c] on the path from 0xec49b50.
  The return at 0xec49b70 has v0 = ret(gl_comm_flush) on the path from 0xec49b68.

- `gl_g_window` in `usr/gfx/arch/IGLOO/libgl.so` at 0xecc67cc (o32).
  It occupies 528 bytes.
  The `sw` at 0xecc697c stores 4 bytes from t7 at sp (at entry) -0x54.
  The `jalr` at 0xecc6870 calls `gl_ErrorHandler [0xec5dbec]` with a0=0x4, a1=0x2, a2=0xecd8d30, a3=a3 at entry (arg3).
  The `jalr` at 0xecc68b8 calls `gl_identifymatrix [0xecc69dc]` with a0=sp-76, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc695c calls `gl_nonprim_checkspace [0xecb42f4]` with a0=0x2a, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc698c calls `gl_compile [0xecb41a0]` with a0=0x4, a1=sp-88, a2=?, a3=?.
  The `jalr` at 0xecc699c calls `gl_savemmode [0xecc5f10]` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc69b0 calls `__GLloadmatrix` with a0=sp-76, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc69c0 calls `gl_restoremmode [0xecc5fec]` with a0=?, a1=?, a2=?, a3=?.
  The `bc1t` at 0xecc6804 is taken when f4(=f14) == f6(=f12) (c.eq.s at 0xecc67f4) and falls through when not (f4(=f14) == f6(=f12) (c.eq.s at 0xecc67f4)).
  The `bc1tl` at 0xecc6824 is taken when f0 == f12 (c.eq.s at 0xecc681c) and falls through when not (f0 == f12 (c.eq.s at 0xecc681c)).
  The `bc1fl` at 0xecc6838 is taken when not (f2 == f12 (c.eq.s at 0xecc6830)) and falls through when f2 == f12 (c.eq.s at 0xecc6830).
  The `beq` at 0xecc6964 is taken when v0(=ret(gl_nonprim_checkspace)) == 0 and falls through when v0(=ret(gl_nonprim_checkspace)) != 0.
  The return at 0xecc69d4 has v0 = ret(gl_nonprim_checkspace) on the path from 0xecc6964.
  The return at 0xecc69d4 has v0 = ret(gl_restoremmode) on the path from 0xecc69c8.

- `gl_adjust_window` in `usr/gfx/arch/IGLOO/libgl.so` at 0xecca1f4 (o32).
  It occupies 472 bytes.
  The `sw` at 0xecca2f8 stores 4 bytes from t7 at a0 (arg0 at entry) +0x38.
  The `sw` at 0xecca300 stores 4 bytes from t0 at a0 (arg0 at entry) +0x3c.
  The `sw` at 0xecca348 stores 4 bytes from t6 at a0 (arg0 at entry) +0x30.
  The `sw` at 0xecca378 stores 4 bytes from v0 at a0 (arg0 at entry) +0x34.
  The `jalr` at 0xecca278 calls `XGetGeometry` with a0=[a0+4], a1=[a0+64], a2=sp-20, a3=sp-24.
  The `jalr` at 0xecca2b4 calls `XResizeWindow` with a0=?, a1=[a0+8], a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xecca2d0 calls `_GLresizeOvWindows [0xec945d0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xecca2e4 calls `XFlush` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xecca334 calls `XTranslateCoordinates` with a0=?, a1=[a0+8], a2=[[[a0+12]+112]+64], a3=0x0.
  The `jalr` at 0xecca360 calls `_GLinvertY [0xecc8b80]` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xecca3a0 calls `gl_adjust_window [0xecca1f4]` with a0=?, a1=0x0, a2=0x0, a3=?.
  The `beql` at 0xecca228 is taken when t6(=[a0+64]) == a1(=[a0+8]) and falls through when t6(=[a0+64]) != a1(=[a0+8]).
  The `bne` at 0xecca23c is taken when t9(=a1) != 0 and falls through when t9(=a1) == 0.
  The `bne` at 0xecca294 is taken when t5(=a1) != t6(=[a0+56]) and falls through when t5(=a1) == t6(=[a0+56]).
  The `beql` at 0xecca2a0 is taken when t8(=a2) == t9(=[a0+60]) and falls through when t8(=a2) != t9(=[a0+60]).
  The `beq` at 0xecca374 is taken when v1(=[a0+44]:1) == at(=0x2) and falls through when v1(=[a0+44]:1) != at(=0x2).
  The `bnel` at 0xecca380 is taken when v1(=[a0+44]:1) != at(=0x4) and falls through when v1(=[a0+44]:1) == at(=0x4).
  The `beql` at 0xecca38c is taken when s0(=[a0+72]) == 0 and falls through when s0(=[a0+72]) != 0.
  The `bne` at 0xecca3b0 is taken when s0(?) != 0 and falls through when s0(?) == 0.
  The return at 0xecca3c4 has v0 = ret(_GLinvertY) on the path from 0xecca380.
  The return at 0xecca3c4 has v0 = ret(_GLinvertY) on the path from 0xecca38c.
  The return at 0xecca3c4 has v0 = ret(gl_adjust_window) on the path from 0xecca3b8.

- `gl_d_window` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec49a70 (n32).
  It occupies 236 bytes.
  The `sw` at 0xec49adc stores 4 bytes from a5 at [0xecd6c4c] +0x0.
  The `sw` at 0xec49af0 stores 4 bytes from a0 at abs 0xecd6c4c (comm_curbufpos).
  The `jalr` at 0xec49b1c calls `gl_comm_flush [0xec40750]` with a0=a0 at entry (arg0), a1=[0xecd6c4c], a2=0xecd6c4c, a3=0xecd6c48.
  The `jalr` at 0xec49b4c calls `gl_comm_flush [0xec40750]` with a0=[0xecd6c4c]+28, a1=[0xecd6c4c], a2=0xecd6c4c, a3=0xecd6c48, a5=0x97.
  The `bne` at 0xec49ab8 is taken when at(=[0xecd6c48]) < v0(=[0xecd6c4c]+28) (unsigned) and falls through when at(=[0xecd6c48]) >= v0(=[0xecd6c4c]+28) (unsigned).
  The `bne` at 0xec49aec is taken when a4(=[0xecd6c48]) < a0(=[0xecd6c4c]+28) (unsigned) and falls through when a4(=[0xecd6c48]) >= a0(=[0xecd6c4c]+28) (unsigned).
  The return at 0xec49b00 has v0 = ret(gl_comm_flush) on the path from 0xec49b54.

- `gl_g_window` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xecc52e0 (n32).
  It occupies 456 bytes.
  The `jalr` at 0xecc5394 calls `gl_ErrorHandler [0xec5d440]` with a0=0x4, a1=0x2, a2=0xecded28, a3=a3 at entry (arg3).
  The `bgezall` at 0xecc53a4 calls (unknown callee) with a0=sp-176, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc5438 calls `gl_nonprim_checkspace [0xecb5160]` with a0=0x2a, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc545c calls `gl_compile [0xecb5010]` with a0=0x4, a1=sp-112, a2=?, a3=?.
  The `bgezall` at 0xecc5468 calls `gl_savemmode [0xecc4b00]` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xecc5474 calls `__GLloadmatrix` with a0=sp-176, a1=?, a2=?, a3=?.
  The `bgezall` at 0xecc5480 calls `gl_restoremmode [0xecc4be0]` with a0=?, a1=?, a2=?, a3=?.
  The `bc1t` at 0xecc5328 is taken when f8 == f9 (c.eq.s at 0xecc5304) and falls through when not (f8 == f9 (c.eq.s at 0xecc5304)).
  The `bc1t` at 0xecc534c is taken when f24 == f9 (c.eq.s at 0xecc533c) and falls through when not (f24 == f9 (c.eq.s at 0xecc533c)).
  The `bc1f` at 0xecc535c is taken when not (f26 == f9 (c.eq.s at 0xecc5354)) and falls through when f26 == f9 (c.eq.s at 0xecc5354).
  The `beq` at 0xecc5440 is taken when v0(=ret(gl_nonprim_checkspace)) == 0 and falls through when v0(=ret(gl_nonprim_checkspace)) != 0.
  The return at 0xecc54a0 has v0 = ret(gl_nonprim_checkspace) on the path from 0xecc5440.
  The return at 0xecc54a0 has v0 = ret(gl_restoremmode) on the path from 0xecc5480.

- `gl_adjust_window` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xecc8a80 (n32).
  It occupies 420 bytes.
  The `sw` at 0xecc8b14 stores 4 bytes from a1 at a0 (arg0 at entry) +0x38.
  The `sw` at 0xecc8b1c stores 4 bytes from a0 at a0 (arg0 at entry) +0x3c.
  The `sw` at 0xecc8b58 stores 4 bytes from a3 at a0 (arg0 at entry) +0x30.
  The `sw` at 0xecc8b88 stores 4 bytes from v0 at a0 (arg0 at entry) +0x34.
  The `jalr` at 0xecc8ae4 calls `XResizeWindow` with a0=[a0+4], a1=[a0+8], a2=a1 at entry (arg1), a3=a2 at entry (arg2), a5=a1 at entry (arg1).
  The `jalr` at 0xecc8af8 calls `_GLresizeOvWindows [0xec97950]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xecc8b04 calls `XFlush` with a0=[a0+4], a1=?, a2=?, a3=?.
  The `jalr` at 0xecc8b48 calls `XTranslateCoordinates` with a0=[a0+4], a1=[a0+8], a2=[[[a0+12]+112]+64], a3=0x0, a4=0x0, a5=sp-76, a6=sp-72, a7=sp-68.
  The `bgezall` at 0xecc8b70 calls `_GLinvertY [0xecc75d0]` with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=?.
  The `bgezall` at 0xecc8bc8 calls `gl_adjust_window [0xecc8a80]` with a0=?, a1=0x0, a2=0x0, a3=?.
  The `jalr` at 0xecc8c0c calls `XGetGeometry` with a0=[a0+4], a1=[a0+64], a2=sp-96, a3=sp-92, a4=sp-88, a5=sp-20, a6=sp-12, a7=sp-84.
  The `beq` at 0xecc8ab4 is taken when t1(=[a0+8]) == t2(=[a0+64]) -> outside and falls through when t1(=[a0+8]) != t2(=[a0+64]).
  The `beq` at 0xecc8ac0 is taken when a1 == 0 and falls through when a1 != 0.
  The `bne` at 0xecc8acc is taken when v0(=[a0+56]) != a5(=a1) -> outside and falls through when v0(=[a0+56]) == a5(=a1).
  The `beq` at 0xecc8ad4 is taken when v1(=[a0+60]) == a3(=a2) and falls through when v1(=[a0+60]) != a3(=a2).
  The `beq` at 0xecc8b84 is taken when a0(=[a0+44]:1) == a4(=0x2) and falls through when a0(=[a0+44]:1) != a4(=0x2).
  The `beq` at 0xecc8b8c is taken when a0(=[a0+44]:1) == a5(=0x4) and falls through when a0(=[a0+44]:1) != a5(=0x4).
  The `beq` at 0xecc8ba8 is taken when s0(=[a0+72]) == 0 and falls through when s0(=[a0+72]) != 0.
  The `bne` at 0xecc8bd4 is taken when s0(?) != 0 and falls through when s0(?) == 0.
  The return at 0xecc8b9c has v0 = ret(_GLinvertY) on the path from 0xecc8b8c.
  The return at 0xecc8b9c has v0 = ret(_GLinvertY) on the path from 0xecc8ba8.
  The return at 0xecc8b9c has v0 = ret(gl_adjust_window) on the path from 0xecc8bdc.

- `gfx_flow_flush_my_wg` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x9d4 (n64).
  It occupies 24 bytes.
  The return at 0x9e4 has v0 unknown.

- `gfx_pio_write_64` in `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)` at 0xa00 (n64).
  It occupies 16 bytes.
  The `sd` at 0xa00 stores 8 bytes from a1 at a0 (arg0 at entry) +0x0.
  The return at 0xa08 has v0 unknown.

- `gfx_pio_read_64` in `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)` at 0xa18 (n64).
  It occupies 8 bytes.
  The return at 0xa18 has v0 = [a0]:8.

- `gfx_flow_flush_my_wg` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x7d4 (n64).
  It occupies 24 bytes.
  The return at 0x7e4 has v0 unknown.

- `gfx_pio_write_32` in `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)` at 0x9f0 (n64).
  It occupies 16 bytes.
  The `sw` at 0x9f0 stores 4 bytes from a1 at a0 (arg0 at entry) +0x0.
  The return at 0x9f8 has v0 unknown.

- `gfx_pio_write_64` in `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)` at 0xa00 (n64).
  It occupies 16 bytes.
  The `sd` at 0xa00 stores 8 bytes from a1 at a0 (arg0 at entry) +0x0.
  The return at 0xa08 has v0 unknown.

- `gfx_pio_read_32` in `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)` at 0xa10 (n64).
  It occupies 8 bytes.
  The return at 0xa10 has v0 = [a0].

- `gfx_pio_read_64` in `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)` at 0xa18 (n64).
  It occupies 8 bytes.
  The return at 0xa18 has v0 = [a0]:8.

- `output_command_line` in `usr/diags/IR/bin/irsaudit` at 0x1003e9bc (n32).
  It occupies 436 bytes.
  The `sb` at 0x1003eab8 stores 1 bytes from s7 at ? (base unknown).
  The `sb` at 0x1003eafc stores 1 bytes from zero at ? (base unknown).
  The `jalr` at 0x1003ea18 calls `strlen` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003ea4c calls `malloc` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003ea8c calls `strcpy` with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003ea98 calls `strlen` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1003eb00 calls `kt_output_uniq [0x100469ac]` with a0=0x101882b0, a1=0x101882b8, a2=ret(malloc), a3=?.
  The `jalr` at 0x1003eb18 calls `free` with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003eb60 calls `__assert` with a0=0x101882a8, a1=0x10188120, a2=0x2fa, a3=?.
  The `blez` at 0x1003e9f8 is taken when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  The `bne` at 0x1003ea30 is taken when s3(?) < s4(=a0) (signed) and falls through when s3(?) >= s4(=a0) (signed).
  The `blez` at 0x1003ea38 is taken when s2(?) <= 0 (signed) and falls through when s2(?) > 0 (signed).
  The `blez` at 0x1003ea70 is taken when s4(=a0) <= 0 (signed) and falls through when s4(=a0) > 0 (signed).
  The `bne` at 0x1003eab4 is taken when s6(?) < s4(=a0) (signed) and falls through when s6(?) >= s4(=a0) (signed).
  The return at 0x1003eb2c has v0 = ret(free).

- `TEST_gedcrc_token` in `usr/diags/IR/bin/irsaudit` at 0x10072f08 (n32).
  It occupies 652 bytes.
  The `jal` at 0x10072f40 calls `fcPioRead32 [0x1013dd88]` with a0=0x208, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10072f64 calls `kt_output_info [0x10046374]` with a0=0x10199448, a1=?, a2=?, a3=?.
  The `jalr` at 0x10072f88 calls `sginap` with a0=0x5, a1=?, a2=?, a3=?.
  The `jal` at 0x10072f94 calls `fcPioRead32 [0x1013dd88]` with a0=0x208, a1=?, a2=?, a3=?.
  The `jal` at 0x10072fc4 calls `rm_hold [0x100ff9b0]` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10072ff0 calls `ioctl` with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=?.
  The `jal` at 0x1007301c calls `run_crc_testlist [0x1001d0dc]` with a0=0x102006f0, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x10073040 calls `kt_output_rslt [0x10045978]` with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10073058 calls `rm_release [0x100ffa68]` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1007306c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1007307c calls `rm_release [0x100ffa68]` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10073098 calls `kt_output_rslt [0x10045978]` with a0=0x0, a1=0x101993e8, a2=?, a3=?.
  The `jal` at 0x100730d4 calls `kt_code_result [0x10048068]` with a0=0x1, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x100730f8 calls `kt_output_rslt [0x10045978]` with a0=0x0, a1=0x101993b0, a2=?, a3=?.
  The `jal` at 0x10073118 calls `kt_code_result [0x10048068]` with a0=0x1, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x10073134 calls `kt_output_rslt [0x10045978]` with a0=0x1, a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1007315c calls `ioctl` with a0=[sym(pipeFD)], a1=0x2775, a2=0x0, a3=?.
  The `jal` at 0x10073184 calls `kt_output_rslt [0x10045978]` with a0=0x0, a1=0x101993c8, a2=?, a3=?.
  The `beq` at 0x10072f6c is taken when s0(=ret(fcPioRead32)) == 0 -> outside and falls through when s0(=ret(fcPioRead32)) != 0.
  The `beq` at 0x10072f9c is taken when v0(=ret(fcPioRead32)) == 0 and falls through when v0(=ret(fcPioRead32)) != 0.
  The `bne` at 0x10072fa8 is taken when s0(?) < 0x5 (unsigned) and falls through when s0(?) >= 0x5 (unsigned).
  The `beq` at 0x10072fb4 is taken when s0(?) >= 0x5 (unsigned) and falls through when s0(?) < 0x5 (unsigned).
  The `bltz` at 0x10072ff8 is taken when v0(=ret(ioctl)) < 0 (signed) and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` at 0x10073024 is taken when v0(=ret(run_crc_testlist)) == 0 and falls through when v0(=ret(run_crc_testlist)) != 0.
  The `beq` at 0x10073074 is taken when v0(=ret(0x10075c9c)) == 0 and falls through when v0(=ret(0x10075c9c)) != 0.
  The return at 0x100730b8 has v0 = ret(kt_output_rslt) on the path from 0x100730a0.
  The return at 0x100730b8 has v0 = ret(kt_output_rslt) on the path from 0x10073100.
  The return at 0x100730b8 has v0 = ret(ioctl) on the path from 0x10073164.
  The return at 0x100730b8 has v0 = ret(kt_output_rslt) on the path from 0x1007318c.

- `Send_GED_CI_Token` in `usr/diags/IR/bin/irsaudit` at 0x1013f728 (n32).
  It occupies 264 bytes.
  The `jal` at 0x1013f780 calls `Compact_GED_Reg_Pixel_Control [0x1013f6fc]` with a0=sp-48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1013f7a0 calls `fcGfxWrite32 [0x1013df2c]` with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1013f7ac calls `fcGfxWrite32 [0x1013df2c]` with a0=0x7, a1=?, a2=?, a3=?.
  The `jal` at 0x1013f7bc calls `fcGfxWrite32 [0x1013df2c]` with a0=0x200600, a1=?, a2=?, a3=?.
  The `jal` at 0x1013f7d0 calls `Compact_HIP_Reg_Pixel_Control [0x1013f51c]` with a0=sp-80, a1=?, a2=?, a3=?.
  The `jal` at 0x1013f7dc calls `fcGfxWrite32 [0x1013df2c]` with a0=ret(Compact_HIP_Reg_Pixel_Control), a1=?, a2=?, a3=?.
  The `jal` at 0x1013f7e8 calls `fcGfxWrite32 [0x1013df2c]` with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1013f7f4 calls `fcGfxWrite32 [0x1013df2c]` with a0=0x7, a1=?, a2=?, a3=?.
  The `jal` at 0x1013f804 calls `fcGfxWrite32 [0x1013df2c]` with a0=0x200b80, a1=?, a2=?, a3=?.
  The `jal` at 0x1013f814 calls `fcGfxWrite32 [0x1013df2c]` with a0=0xffffffffdeedcafe, a1=?, a2=?, a3=?.
  The return at 0x1013f828 has v0 = ret(fcGfxWrite32).

- `rl_undo_command` in `usr/gfx/KONA/bin/kpm` at 0x1004c030 (n32).
  It occupies 188 bytes.
  The `jal` at 0x1004c080 calls `rl_do_undo [0x1004bb40]` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004c0b0 calls `ding [0x100485f0]` with a0=?, a1=?, a2=?, a3=?.
  The `bgez` at 0x1004c054 is taken when at(=a0) >= 0 (signed) and falls through when at(=a0) < 0 (signed).
  The `beq` at 0x1004c06c is taken when v1(=a0) == 0 and falls through when v1(=a0) != 0.
  The `beq` at 0x1004c088 is taken when v0(=ret(rl_do_undo)) == 0 and falls through when v0(=ret(rl_do_undo)) != 0.
  The `bne` at 0x1004c0c4 is taken when ra(?) != 0 and falls through when ra(?) == 0.
  The return at 0x1004c0e4 has v0 = 0x0.

- `rl_vi_textmod_command` in `usr/gfx/KONA/bin/kpm` at 0x10053ab0 (n32).
  It occupies 124 bytes.
  The `jalr` at 0x10053af8 calls `strchr` with a0=[0x1014938c], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` at 0x10053ad0 is taken when at(=a0) == 0 and falls through when at(=a0) != 0.
  The return at 0x10053b24 has v0 = 0x0 on the path from 0x10053b10.

- `_tr_flush_block` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100f59f0 (n32).
  It occupies 700 bytes.
  The `sh` at 0x100f5ae0 stores 2 bytes from a0 at a0 (arg0 at entry) +0x16b0.
  The `sw` at 0x100f5ae8 stores 4 bytes from t0 at a0 (arg0 at entry) +0x14.
  The `sb` at 0x100f5af0 stores 1 bytes from a0 at ([a0+20]+1 + [a0+8]) -0x1.
  The `sw` at 0x100f5b04 stores 4 bytes from a6 at a0 (arg0 at entry) +0x14.
  The `sb` at 0x100f5b10 stores 1 bytes from a4 at ([a0+20]+1 + [a0+8]) -0x1.
  The `sw` at 0x100f5b28 stores 4 bytes from a4 at a0 (arg0 at entry) +0x16b4.
  The `sh` at 0x100f5b34 stores 2 bytes from a1 at a0 (arg0 at entry) +0x16b0.
  The `sw` at 0x100f5b38 stores 4 bytes from t1 at a0 (arg0 at entry) +0x16b4.
  The `sh` at 0x100f5b3c stores 2 bytes from a0 at a0 (arg0 at entry) +0x16b0.
  The `sh` at 0x100f5bbc stores 2 bytes from a0 at a0 (arg0 at entry) +0x16b0.
  The `sw` at 0x100f5bc4 stores 4 bytes from t1 at a0 (arg0 at entry) +0x14.
  The `sb` at 0x100f5bcc stores 1 bytes from a0 at ([a0+20]+1 + [a0+8]) -0x1.
  The `sw` at 0x100f5be0 stores 4 bytes from a7 at a0 (arg0 at entry) +0x14.
  The `sb` at 0x100f5bec stores 1 bytes from a4 at ([a0+20]+1 + [a0+8]) -0x1.
  The `sw` at 0x100f5c04 stores 4 bytes from a4 at a0 (arg0 at entry) +0x16b4.
  The `sh` at 0x100f5c10 stores 2 bytes from a1 at a0 (arg0 at entry) +0x16b0.
  The `sw` at 0x100f5c14 stores 4 bytes from t2 at a0 (arg0 at entry) +0x16b4.
  The `sh` at 0x100f5c18 stores 2 bytes from a0 at a0 (arg0 at entry) +0x16b0.
  The `jal` at 0x100f5a44 calls (unknown callee) with a0=a0 at entry (arg0), a1=a0+2832, a2=?, a3=?.
  The `jal` at 0x100f5a58 calls (unknown callee) with a0=a0 at entry (arg0), a1=a0+2844, a2=?, a3=?.
  The `jal` at 0x100f5a68 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100f5b58 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x102c03d0, a2=0x102c0850, a3=?.
  The `jal` at 0x100f5b68 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100f5b7c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100f5c38 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2836]+1, a2=[a0+2848]+1, a3=?.
  The `jal` at 0x100f5c50 calls (unknown callee) with a0=a0 at entry (arg0), a1=a0+140, a2=a0+2432, a3=?.
  The `jal` at 0x100f5c84 calls `_tr_stored_block [0x1026e230]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f5c9c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `blez` at 0x100f5a1c is taken when v0(=[a0+124]) <= 0 (signed) and falls through when v0(=[a0+124]) > 0 (signed).
  The `beq` at 0x100f5a30 is taken when v0(=[a0+28]:1) == v1(=0x2) and falls through when v0(=[a0+28]:1) != v1(=0x2).
  The `bne` at 0x100f5a8c is taken when a0(?) < a2(?) (unsigned) and falls through when a0(?) >= a2(?) (unsigned).
  The `bne` at 0x100f5aa0 is taken when a0(?) < a1(=a2+4) (unsigned) and falls through when a0(?) >= a1(=a2+4) (unsigned).
  The `bne` at 0x100f5aa8 is taken when a3(=a1) != 0 and falls through when a3(=a1) == 0.
  The `bne` at 0x100f5abc is taken when a0(?) != a2(?) and falls through when a0(?) == a2(?).
  The `beq` at 0x100f5ad0 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x100f5b70 is taken when s1(=a3) == 0 and falls through when s1(=a3) != 0.
  The `beq` at 0x100f5bac is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The return at 0x100f5b98 has v0 = ret(0x1022bae0) on the path from 0x100f5b70.
  The return at 0x100f5b98 has v0 = ret(0x101b0d90) on the path from 0x100f5b7c.

- `scan_token` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1015de00 (n32).
  It occupies 312 bytes.
  The `sw` at 0x1015de08 stores 4 bytes from a2 at abs 0x102c8978 (inputFileP..94).
  The `sw` at 0x1015de2c stores 4 bytes from a0 at abs 0x102c891c (tokenStartP).
  The `sw` at 0x1015de48 stores 4 bytes from v0 at abs 0x102c8920 (tokenMaxP).
  The `sw` at 0x1015de50 stores 4 bytes from zero at abs 0x102c8928 (tokenTooLong).
  The `sw` at 0x1015de54 stores 4 bytes from a0 at abs 0x102c897c (tokenCharP..95).
  The `sw` at 0x1015de6c stores 4 bytes from a3 at [a0+4] +0xc.
  The `sw` at 0x1015de88 stores 4 bytes from a1 at [a0+4] +0x8.
  The `sw` at 0x1015dee8 stores 4 bytes from s1 at abs 0x102c8924 (tokenLength).
  The `sw` at 0x1015defc stores 4 bytes from zero at abs 0x102c8924 (tokenLength).
  The `sw` at 0x1015df04 stores 4 bytes from t8 at abs 0x102c8928 (tokenTooLong).
  The `sw` at 0x1015df0c stores 4 bytes from zero at abs 0x102c892c (tokenType).
  The `sw` at 0x1015df10 stores 4 bytes from zero at abs 0x102c8930 (tokenValue).
  The `sw` at 0x1015df28 stores 4 bytes from t9 at abs 0x102c892c (tokenType).
  The `jal` at 0x1015de8c calls `T1Getc [0x10232f70]` with a0=[a0+4], a1=a1 at entry (arg1), a2=[a0+4], a3=[[a0+4]+12]-1, a4=[[a0+4]+12].
  The `jalr` at 0x1015dec4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` at 0x1015de18 is taken when a2(=[a0+4]) == 0 and falls through when a2(=[a0+4]) != 0.
  The `beq` at 0x1015de30 is taken when a4(=[0x102c7bec]) >= a3(=0xffff) (signed) and falls through when a4(=[0x102c7bec]) < a3(=0xffff) (signed).
  The `bne` at 0x1015de44 is taken when a3(?) < 0x80 (signed) and falls through when a3(?) >= 0x80 (signed).
  The `blez` at 0x1015de5c is taken when a4(=[[a0+4]+12]) <= 0 (signed) and falls through when a4(=[[a0+4]+12]) > 0 (signed).
  The `bne` at 0x1015de64 is taken when a0(=[[a0+4]+16]:1) != 0 and falls through when a0(=[[a0+4]+16]:1) == 0.
  The `bne` at 0x1015decc is taken when v0(=ret(?)) != s2(=0x100) and falls through when v0(=ret(?)) == s2(=0x100).
  The return at 0x1015def4 has v0 unknown.
  The return at 0x1015df18 has v0 unknown.
  The return at 0x1015df30 has v0 unknown.

- `inflate_flush` in `usr/gfx/arch/GENERIC/Xsgi` at 0x101613e0 (n32).
  It occupies 476 bytes.
  The `sw` at 0x1016146c stores 4 bytes from a4 at a1 (arg1 at entry) +0x10.
  The `sw` at 0x10161474 stores 4 bytes from a3 at a1 (arg1 at entry) +0x14.
  The `sw` at 0x10161490 stores 4 bytes from v0 at a0 (arg0 at entry) +0x3c.
  The `sw` at 0x10161494 stores 4 bytes from v0 at a1 (arg1 at entry) +0x30.
  The `sw` at 0x101614d4 stores 4 bytes from s3 at a0 (arg0 at entry) +0x34.
  The `sw` at 0x10161500 stores 4 bytes from t0 at a1 (arg1 at entry) +0x10.
  The `sw` at 0x10161508 stores 4 bytes from a7 at a1 (arg1 at entry) +0x14.
  The `sw` at 0x10161524 stores 4 bytes from v0 at a0 (arg0 at entry) +0x3c.
  The `sw` at 0x10161528 stores 4 bytes from v0 at a1 (arg1 at entry) +0x30.
  The `sw` at 0x10161550 stores 4 bytes from t2 at a1 (arg1 at entry) +0xc.
  The `sw` at 0x10161554 stores 4 bytes from t1 at a0 (arg0 at entry) +0x30.
  The `sw` at 0x10161584 stores 4 bytes from s4 at a1 (arg1 at entry) +0xc.
  The `sw` at 0x10161588 stores 4 bytes from s3 at a0 (arg0 at entry) +0x30.
  The `jalr` at 0x10161488 calls (unknown callee) with a0=[a0+60], a1=[a0+48], a2=?, a3=?.
  The `jalr` at 0x101614a4 calls `memcpy` with a0=[a1+12], a1=[a0+48], a2=?, a3=?.
  The `jalr` at 0x1016151c calls (unknown callee) with a0=[a0+60], a1=[a0+40], a2=?, a3=?, a6=-0x5.
  The `jalr` at 0x10161538 calls `memcpy` with a0=?, a1=[a0+40], a2=?, a3=?.
  The `bne` at 0x10161424 is taken when v0(=[a0+52]) < s3(=[a0+48]) (unsigned) and falls through when v0(=[a0+52]) >= s3(=[a0+48]) (unsigned).
  The `beq` at 0x10161448 is taken when a0(=[a1+16]) >= s0(?) (unsigned) and falls through when a0(=[a1+16]) < s0(?) (unsigned).
  The `beq` at 0x10161458 is taken when s0(?) == 0 and falls through when s0(?) != 0.
  The `beq` at 0x10161464 is taken when s5(=a2) == a2(=-0x5) and falls through when s5(=a2) != a2(=-0x5).
  The `beq` at 0x1016147c is taken when t9(=[a0+56]) == 0 and falls through when t9(=[a0+56]) != 0.
  The `bne` at 0x101614c0 is taken when a0(=[a0+44]) != s3(?) and falls through when a0(=[a0+44]) == s3(?).
  The `bne` at 0x101614c8 is taken when v0(=[a0+52]) != a0(=[a0+44]) and falls through when v0(=[a0+52]) == a0(=[a0+44]).
  The `beq` at 0x101614e4 is taken when a0(=[a1+16]) >= s0(?) (unsigned) and falls through when a0(=[a1+16]) < s0(?) (unsigned).
  The `beq` at 0x101614f0 is taken when s0(?) == 0 and falls through when s0(?) != 0.
  The `beq` at 0x101614f8 is taken when s5(?) == a6(=-0x5) and falls through when s5(?) != a6(=-0x5).
  The `beq` at 0x10161510 is taken when t9(=[a0+56]) == 0 and falls through when t9(=[a0+56]) != 0.
  The return at 0x10161574 has v0 unknown.
  The return at 0x101615a4 has v0 unknown.

- `__glx_Flush` in `usr/gfx/arch/IP27KONA/libGL.so` at 0xd8315a4 (o32).
  It occupies 324 bytes.
  The `sw` at 0xd831628 stores 4 bytes from a0 at [[[0x1014]+276]+216] +0x64.
  The `sw` at 0xd831644 stores 4 bytes from a0 at [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd83164c stores 2 bytes from t0 at [[[[0x1014]+276]+216]+108] +0x2.
  The `sb` at 0xd831650 stores 1 bytes from zero at [[[[0x1014]+276]+216]+108] +0x0.
  The `sw` at 0xd831668 stores 4 bytes from t2 at [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd83166c stores 4 bytes from t4 at [[[0x1014]+276]+216] +0x60.
  The `sb` at 0xd831674 stores 1 bytes from t6 at [[[[0x1014]+276]+216]+108] +0x1.
  The `sb` at 0xd831678 stores 1 bytes from t5 at [[[[0x1014]+276]+216]+108] +0x0.
  The `sw` at 0xd831680 stores 4 bytes from t9 at [[[[0x1014]+276]+216]+108] +0x4.
  The `jalr` at 0xd8315e8 calls `__glXFlushRenderBuffer` with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd831608 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd831634 calls `_XFlush` with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd831698 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8316b4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8316c8 calls `XFlush` with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` at 0xd8315d0 is taken when v0(=[[[0x1014]+276]+216]) == 0 and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beq` at 0xd8315d8 is taken when v0(=[[[0x1014]+276]+216]) == 0 and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beql` at 0xd8315f8 is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beql` at 0xd831624 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+8) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+8) (unsigned).
  The `beql` at 0xd831688 is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` at 0xd8316ac is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  The return at 0xd8316e0 has v0 = [[[0x1014]+276]+216] on the path from 0xd8315d0.
  The return at 0xd8316e0 has v0 = ret(XFlush) on the path from 0xd8316d0.

- `Flush` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda3d1cc (o32).
  It occupies 16 bytes.
  The return at 0xda3d1cc has v0 unknown.

- `__glce_Flush` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda6d340 (o32).
  It occupies 8 bytes.

- `__glx_Flush` in `usr/gfx/arch/IP27KONA32/libGL.so` at 0xd82f67c (n32).
  It occupies 272 bytes.
  The `sw` at 0xd82f6ec stores 4 bytes from a0 at [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd82f6f4 stores 2 bytes from a2 at [[[[0x1014]+276]+216]+108] +0x2.
  The `sb` at 0xd82f6f8 stores 1 bytes from zero at [[[[0x1014]+276]+216]+108] +0x0.
  The `sw` at 0xd82f708 stores 4 bytes from v1 at [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd82f710 stores 4 bytes from a1 at [[[0x1014]+276]+216] +0x6c.
  The `sb` at 0xd82f71c stores 1 bytes from at at [[[[0x1014]+276]+216]+108] +0x1.
  The `sb` at 0xd82f720 stores 1 bytes from v0 at [[[[0x1014]+276]+216]+108] +0x0.
  The `sw` at 0xd82f728 stores 4 bytes from ra at [[[[0x1014]+276]+216]+108] +0x4.
  The `jalr` at 0xd82f6b4 calls `__glXFlushRenderBuffer` with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd82f6cc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[[[0x1014]+276]+216]+1232], a3=?.
  The `jalr` at 0xd82f73c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=[[[[0x1014]+276]+216]+108]+8, a2=[[[[0x1014]+276]+216]+1232], a3=?.
  The `jalr` at 0xd82f750 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82f75c calls `XFlush` with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82f77c calls `_XFlush` with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` at 0xd82f6a0 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beq` at 0xd82f6c0 is taken when a2(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when a2(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` at 0xd82f6e4 is taken when t8(=[[[[0x1014]+276]+216]+112]) < t9(=[[[[0x1014]+276]+216]+108]+8) (unsigned) and falls through when t8(=[[[[0x1014]+276]+216]+112]) >= t9(=[[[[0x1014]+276]+216]+108]+8) (unsigned).
  The `beq` at 0xd82f730 is taken when a2(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when a2(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` at 0xd82f748 is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The return at 0xd82f774 has v0 = ret(XFlush) on the path from 0xd82f764.

- `Flush` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda37800 (n32).
  It occupies 8 bytes.
  The return at 0xda37800 has v0 unknown.

- `__glce_Flush` in `usr/gfx/arch/IP27KONA32/libGLcore.so` at 0xda5b450 (n32).
  It occupies 76 bytes.
  The `sw` at 0xda5b480 stores 4 bytes from at at abs 0x118c.
  The `sw` at 0xda5b48c stores 4 bytes from s8 at abs 0x118c.
  The `jalr` at 0xda5b47c calls `glFlush` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda5b494 has v0 = ret(glFlush).

- `__glx_Flush` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x26641dc (n64).
  It occupies 272 bytes.
  The `sd` at 0x266424c stores 8 bytes from a0 at [[[0x1028]:8+280]:8+312]:8 +0xa0.
  The `sh` at 0x2664254 stores 2 bytes from a2 at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2.
  The `sb` at 0x2664258 stores 1 bytes from zero at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0.
  The `sd` at 0x2664268 stores 8 bytes from v1 at [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2664270 stores 8 bytes from a1 at [[[0x1028]:8+280]:8+312]:8 +0xb0.
  The `sb` at 0x266427c stores 1 bytes from at at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1.
  The `sb` at 0x2664280 stores 1 bytes from v0 at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0.
  The `sw` at 0x2664288 stores 4 bytes from ra at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4.
  The `jalr` at 0x2664214 calls `__glXFlushRenderBuffer` with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x266422c calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=[[[[0x1028]:8+280]:8+312]:8+2408]:8, a3=?.
  The `jalr` at 0x266429c calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=[[[[0x1028]:8+280]:8+312]:8+176]:8+8, a2=[[[[0x1028]:8+280]:8+312]:8+2408]:8, a3=?.
  The `jalr` at 0x26642b0 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x26642bc calls `XFlush` with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x26642dc calls `_XFlush` with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `beq` at 0x2664200 is taken when s0(=[[[0x1028]:8+280]:8+312]:8) == 0 and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` at 0x2664220 is taken when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0 and falls through when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `bne` at 0x2664244 is taken when t8(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < t9(=[[[[0x1028]:8+280]:8+312]:8+176]:8+8) (unsigned) and falls through when t8(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= t9(=[[[[0x1028]:8+280]:8+312]:8+176]:8+8) (unsigned).
  The `beq` at 0x2664290 is taken when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0 and falls through when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `beq` at 0x26642a8 is taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0 and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  The return at 0x26642d4 has v0 = ret(XFlush) on the path from 0x26642c4.

- `__glkonim_Flush` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dafd70 (n64).
  It occupies 24 bytes.
  The `sw` at 0x2dafd74 stores 4 bytes from v0 at abs 0x4000.
  The `sw` at 0x2dafd78 stores 4 bytes from zero at abs 0x4000.
  The return at 0x2dafd80 has v0 = 0xc7.

- `Flush` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e9c8a0 (n64).
  It occupies 8 bytes.
  The return at 0x2e9c8a0 has v0 unknown.

- `__glce_Flush` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2ec08b0 (n64).
  It occupies 76 bytes.
  The `sd` at 0x2ec08e0 stores 8 bytes from at at abs 0x1308.
  The `sd` at 0x2ec08ec stores 8 bytes from s8 at abs 0x1308.
  The `jalr` at 0x2ec08dc calls `glFlush` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2ec08f4 has v0 = ret(glFlush).

- `__glx_Flush` in `usr/gfx/arch/IP35KONA/libGL.so` at 0xd8315a4 (o32).
  It occupies 324 bytes.
  The `sw` at 0xd831628 stores 4 bytes from a0 at [[[0x1014]+276]+216] +0x64.
  The `sw` at 0xd831644 stores 4 bytes from a0 at [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd83164c stores 2 bytes from t0 at [[[[0x1014]+276]+216]+108] +0x2.
  The `sb` at 0xd831650 stores 1 bytes from zero at [[[[0x1014]+276]+216]+108] +0x0.
  The `sw` at 0xd831668 stores 4 bytes from t2 at [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd83166c stores 4 bytes from t4 at [[[0x1014]+276]+216] +0x60.
  The `sb` at 0xd831674 stores 1 bytes from t6 at [[[[0x1014]+276]+216]+108] +0x1.
  The `sb` at 0xd831678 stores 1 bytes from t5 at [[[[0x1014]+276]+216]+108] +0x0.
  The `sw` at 0xd831680 stores 4 bytes from t9 at [[[[0x1014]+276]+216]+108] +0x4.
  The `jalr` at 0xd8315e8 calls `__glXFlushRenderBuffer` with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd831608 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd831634 calls `_XFlush` with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd831698 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8316b4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8316c8 calls `XFlush` with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` at 0xd8315d0 is taken when v0(=[[[0x1014]+276]+216]) == 0 and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beq` at 0xd8315d8 is taken when v0(=[[[0x1014]+276]+216]) == 0 and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beql` at 0xd8315f8 is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beql` at 0xd831624 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+8) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+8) (unsigned).
  The `beql` at 0xd831688 is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` at 0xd8316ac is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  The return at 0xd8316e0 has v0 = [[[0x1014]+276]+216] on the path from 0xd8315d0.
  The return at 0xd8316e0 has v0 = ret(XFlush) on the path from 0xd8316d0.

- `__glim_Flush` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9dbb28 (o32).
  It occupies 104 bytes.
  The `jalr` at 0xd9dbb60 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9dbb74 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` at 0xd9dbb50 is taken when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The return at 0xd9dbb88 has v0 = ret(__glSetError) on the path from 0xd9dbb68.

- `Flush` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda3d1cc (o32).
  It occupies 16 bytes.
  The return at 0xda3d1cc has v0 unknown.

- `__glkonle_Push` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6c2f0 (o32).
  It occupies 100 bytes.
  The `bne` at 0xda6c2f4 is taken when (a0 & 0x4) != 0 and falls through when (a0 & 0x4) == 0.
  The `beq` at 0xda6c310 is taken when a1(?) == at(=0x1) and falls through when a1(?) != at(=0x1).
  The `beq` at 0xda6c32c is taken when a1(?) >= t2(=0x2) (signed) and falls through when a1(?) < t2(=0x2) (signed).
  The `beq` at 0xda6c334 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The return at 0xda6c344 has v0 unknown.
  The return at 0xda6c34c has v0 unknown.

- `__glce_Flush` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6d340 (o32).
  It occupies 8 bytes.

- `__glx_Flush` in `usr/gfx/arch/IP35KONA32/libGL.so` at 0xd82f67c (n32).
  It occupies 272 bytes.
  The `sw` at 0xd82f6ec stores 4 bytes from a0 at [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd82f6f4 stores 2 bytes from a2 at [[[[0x1014]+276]+216]+108] +0x2.
  The `sb` at 0xd82f6f8 stores 1 bytes from zero at [[[[0x1014]+276]+216]+108] +0x0.
  The `sw` at 0xd82f708 stores 4 bytes from v1 at [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd82f710 stores 4 bytes from a1 at [[[0x1014]+276]+216] +0x6c.
  The `sb` at 0xd82f71c stores 1 bytes from at at [[[[0x1014]+276]+216]+108] +0x1.
  The `sb` at 0xd82f720 stores 1 bytes from v0 at [[[[0x1014]+276]+216]+108] +0x0.
  The `sw` at 0xd82f728 stores 4 bytes from ra at [[[[0x1014]+276]+216]+108] +0x4.
  The `jalr` at 0xd82f6b4 calls `__glXFlushRenderBuffer` with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd82f6cc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[[[0x1014]+276]+216]+1232], a3=?.
  The `jalr` at 0xd82f73c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=[[[[0x1014]+276]+216]+108]+8, a2=[[[[0x1014]+276]+216]+1232], a3=?.
  The `jalr` at 0xd82f750 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82f75c calls `XFlush` with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82f77c calls `_XFlush` with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` at 0xd82f6a0 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beq` at 0xd82f6c0 is taken when a2(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when a2(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` at 0xd82f6e4 is taken when t8(=[[[[0x1014]+276]+216]+112]) < t9(=[[[[0x1014]+276]+216]+108]+8) (unsigned) and falls through when t8(=[[[[0x1014]+276]+216]+112]) >= t9(=[[[[0x1014]+276]+216]+108]+8) (unsigned).
  The `beq` at 0xd82f730 is taken when a2(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when a2(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` at 0xd82f748 is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The return at 0xd82f774 has v0 = ret(XFlush) on the path from 0xd82f764.

- `__glkonim_Flush` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd94dc70 (n32).
  It occupies 24 bytes.
  The `sw` at 0xd94dc74 stores 4 bytes from v0 at abs 0x4000.
  The `sw` at 0xd94dc78 stores 4 bytes from zero at abs 0x4000.
  The return at 0xd94dc80 has v0 = 0xc7.

- `update_cmpnd_cmd` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd95af20 (n32).
  It occupies 52 bytes.
  The `sw` at 0xd95af24 stores 4 bytes from v1 at abs 0x4000.
  The `sw` at 0xd95af44 stores 4 bytes from a0 at abs 0x4000.
  The `sw` at 0xd95af50 stores 4 bytes from at at a0 (arg0 at entry) +0x8ac8.
  The return at 0xd95af4c has v0 = a0+65536.

- `__glim_Flush` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d71c0 (n32).
  It occupies 88 bytes.
  The `jalr` at 0xd9d71ec calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d7208 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` at 0xd9d71e0 is taken when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The return at 0xd9d71fc has v0 = ret(__glSetError) on the path from 0xd9d7210.

- `Flush` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda37800 (n32).
  It occupies 8 bytes.
  The return at 0xda37800 has v0 unknown.

- `__glce_Flush` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda5b450 (n32).
  It occupies 76 bytes.
  The `sw` at 0xda5b480 stores 4 bytes from at at abs 0x118c.
  The `sw` at 0xda5b48c stores 4 bytes from s8 at abs 0x118c.
  The `jalr` at 0xda5b47c calls `glFlush` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda5b494 has v0 = ret(glFlush).

- `__glx_Flush` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x21641dc (n64).
  It occupies 272 bytes.
  The `sd` at 0x216424c stores 8 bytes from a0 at [[[0x1028]:8+280]:8+312]:8 +0xa0.
  The `sh` at 0x2164254 stores 2 bytes from a2 at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2.
  The `sb` at 0x2164258 stores 1 bytes from zero at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0.
  The `sd` at 0x2164268 stores 8 bytes from v1 at [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2164270 stores 8 bytes from a1 at [[[0x1028]:8+280]:8+312]:8 +0xb0.
  The `sb` at 0x216427c stores 1 bytes from at at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1.
  The `sb` at 0x2164280 stores 1 bytes from v0 at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0.
  The `sw` at 0x2164288 stores 4 bytes from ra at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4.
  The `jalr` at 0x2164214 calls `__glXFlushRenderBuffer` with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x216422c calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=[[[[0x1028]:8+280]:8+312]:8+2408]:8, a3=?.
  The `jalr` at 0x216429c calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=[[[[0x1028]:8+280]:8+312]:8+176]:8+8, a2=[[[[0x1028]:8+280]:8+312]:8+2408]:8, a3=?.
  The `jalr` at 0x21642b0 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x21642bc calls `XFlush` with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x21642dc calls `_XFlush` with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `beq` at 0x2164200 is taken when s0(=[[[0x1028]:8+280]:8+312]:8) == 0 and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` at 0x2164220 is taken when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0 and falls through when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `bne` at 0x2164244 is taken when t8(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < t9(=[[[[0x1028]:8+280]:8+312]:8+176]:8+8) (unsigned) and falls through when t8(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= t9(=[[[[0x1028]:8+280]:8+312]:8+176]:8+8) (unsigned).
  The `beq` at 0x2164290 is taken when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0 and falls through when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `beq` at 0x21642a8 is taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0 and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  The return at 0x21642d4 has v0 = ret(XFlush) on the path from 0x21642c4.

- `__glkonim_Flush` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x218fd70 (n64).
  It occupies 24 bytes.
  The `sw` at 0x218fd74 stores 4 bytes from v0 at abs 0x4000.
  The `sw` at 0x218fd78 stores 4 bytes from zero at abs 0x4000.
  The return at 0x218fd80 has v0 = 0xc7.

- `__glim_Flush` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x221aff0 (n64).
  It occupies 88 bytes.
  The `jalr` at 0x221b01c calls (unknown callee) with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x221b038 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` at 0x221b010 is taken when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The return at 0x221b02c has v0 = ret(__glSetError) on the path from 0x221b040.

- `Flush` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x227c8a0 (n64).
  It occupies 8 bytes.
  The return at 0x227c8a0 has v0 unknown.

- `__glce_Flush` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22a08b0 (n64).
  It occupies 76 bytes.
  The `sd` at 0x22a08e0 stores 8 bytes from at at abs 0x1308.
  The `sd` at 0x22a08ec stores 8 bytes from s8 at abs 0x1308.
  The `jalr` at 0x22a08dc calls `glFlush` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x22a08f4 has v0 = ret(glFlush).
