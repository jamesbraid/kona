# Readings: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`

One entry per routine, filed here from the reading batches by binary.

- `kona_mem_suspend` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0xa78 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0xa78-0xa88 (16 bytes).
  It occupies 16 bytes.
  The `ld` at 0xa78 loads 8 bytes from a1 (arg1 at entry) +0x68.
  The `sw` at 0xa84 stores 4 bytes to a0 (arg0 at entry) +0x13f8.
  The return at 0xa80 has v0 = ?.

- `kona_mem_resume` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0xa88 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0xa88-0xd48 (704 bytes).
  It occupies 704 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x13f8, including `lw` at 0xa88, `lw` at 0xacc.
  The `lw` at 0xaa0 loads 4 bytes from a0 (arg0 at entry) +0x87c.
  The `sw` at 0xaac stores 4 bytes to a0 (arg0 at entry) +0x13f8.
  12 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8e0, including `ld` at 0xac8, `ld` at 0xaf0, `ld` at 0xb34.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x938, including `sw` at 0xafc, `sw` at 0xb58, `sw` at 0xbe4.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x948, including `ld` at 0xb08, `ld` at 0xb64, `ld` at 0xbf0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x938, including `lw` at 0xb14, `lw` at 0xb70, `lw` at 0xbfc.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x900, including `ld` at 0xb28, `ld` at 0xb90.
  The `lw` at 0xb9c loads 4 bytes from ?.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x48, including `ld` at 0xc10, `ld` at 0xc5c, `ld` at 0xc78.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c8, including `lw` at 0xc20, `lw` at 0xc88, `lw` at 0xcf0.
  The `jal` at 0xac0 calls psema with a0=a0+5152, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xad4 calls gfx_flow_flush_my_wg with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0xadc calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xaec calls gfx_flow_am_i_attached with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xb00 calls splx with a0=ret(splhi), a1=0x30000, a2=?, a3=?.
  The `jal` at 0xb18 calls gfx_pio_write_32 with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=[a0+2376]:8, a3=?.
  The `jal` at 0xb24 calls gfx_pio_write_32 with a0=[a0+2304]:8, a1=0x1de, a2=?, a3=?.
  The `jal` at 0xb30 calls gfx_flow_flush_my_wg with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0xb38 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb48 calls gfx_flow_am_i_attached with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xb5c calls splx with a0=ret(splhi), a1=?, a2=0x10000, a3=?.
  The `jal` at 0xb74 calls gfx_pio_write_32 with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=[a0+2376]:8, a3=?.
  The `jal` at 0xb98 calls gfx_pio_write_32 with a0=[a0+2304]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xbbc calls gfx_flow_flush_my_wg with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0xbc4 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbd4 calls gfx_flow_am_i_attached with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xbe8 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xc00 calls gfx_pio_write_32 with a0=[a0+2376]:8+0xc00108, a1=[a0+2360], a2=[a0+2376]:8, a3=?.
  The `jal` at 0xc14 calls gfx_flow_attach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xc2c calls gfx_pio_write_32 with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0xc34 calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc40 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xc48 calls kona_flow_await_returned_credits with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xc50 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc60 calls gfx_flow_attach_me_finish with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xc68 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jal` at 0xc7c calls gfx_flow_attach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=0x10000, a3=?.
  The `jal` at 0xc94 calls gfx_pio_write_32 with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0xc9c calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xca8 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xcb0 calls kona_flow_await_returned_credits with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xcb8 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xcc8 calls gfx_flow_attach_me_finish with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xcd0 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jal` at 0xce4 calls gfx_flow_attach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xcfc calls gfx_pio_write_32 with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0xd04 calls rt_pin_thread with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd10 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xd18 calls kona_flow_await_returned_credits with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xd20 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd30 calls gfx_flow_attach_me_finish with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0xd38 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `bne` branch at 0xa98 targets 0xaac, is taken when at(=[a0+5112]) < 0x2 (signed), and falls through when at(=[a0+5112]) >= 0x2 (signed).
  The `beq` branch at 0xaa4 targets 0xabc, is taken when v0(=[a0+2172]) == 0, and falls through when v0(=[a0+2172]) != 0.
  The `beq` branch at 0xaf4 targets 0xc10, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0xb50 targets 0xc78, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `blez` branch at 0xb80 targets 0xbb4, is taken when a1(=[a0+5112]) <= 0 (signed), and falls through when a1(=[a0+5112]) > 0 (signed).
  The `beq` branch at 0xbac targets 0xb90, is taken when a2(=[a0+5112]) >= s1(?) (signed), and falls through when a2(=[a0+5112]) < s1(?) (signed).
  The `beq` branch at 0xbdc targets 0xce0, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0xc08 targets 0xaac and is always taken.
  The `beq` branch at 0xc70 targets 0xafc and is always taken.
  The `beq` branch at 0xcd8 targets 0xb58 and is always taken.
  The `beq` branch at 0xd40 targets 0xbe8 and is always taken.
  The return at 0xab4 has v0 = one of ?, [a0+2172], ret(gfx_pio_write_32).

- `kona_mem_cleanup` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0xfe8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0xfe8-0x1134 (332 bytes).
  It occupies 332 bytes.
  The `ld` at 0x101c loads 8 bytes from a0 (arg0 at entry) +0x13f0.
  The `sd` at 0x1020 stores 8 bytes to a0 (arg0 at entry) +0x13f0.
  7 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1040, `ld` at 0x1058, `ld` at 0x109c.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1044, `lw` at 0x10e4, `lw` at 0x10e8.
  5 such `sd` accesses store 8 bytes to ?, including `sd` at 0x105c, `sd` at 0x10a8, `sd` at 0x10b0.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x1064, `sb` at 0x10b8.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1068, `lbu` at 0x1088.
  The `lhu` at 0x106c loads 2 bytes from ?.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x888, including `lw` at 0x10a4, `lw` at 0x1128.
  The `sw` at 0x111c stores 4 bytes to ?.
  The `jal` at 0x1010 calls mutex_spinlock with a0=a0+2576, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1024 calls mutex_spinunlock with a0=a0+2576, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x10a0 calls free_gfx_io_space with a0=[a0+2184], a1=?, a2=?, a3=?.
  The `jal` at 0x1110 calls kvpfree with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1124 calls free_gfx_io_space with a0=[a0+2184], a1=?, a2=?, a3=?.
  The `beq` branch at 0x102c targets 0x10bc, is taken when s1(=[a0+5104]:8) == 0, and falls through when s1(=[a0+5104]:8) != 0.
  The `beq` branch at 0x1038 targets 0x1068 and is always taken.
  The `beq` branch at 0x1048 targets 0x10e0, is taken when a0(?) == s4(=0x2), and falls through when a0(?) != s4(=0x2).
  The `beq` branch at 0x1050 targets 0x109c, is taken when a0(?) == s5(=0x1), and falls through when a0(?) != s5(=0x1).
  The `beq` branch at 0x1060 targets 0x10bc, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0x108c targets 0x1040, is taken when (a4(?) & 0x1) != 0, and falls through when (a4(?) & 0x1) == 0.
  The `beq` branch at 0x1094 targets 0x1048 and is always taken.
  The `bne` branch at 0x10b4 targets 0x1068, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0x112c targets 0x10ac and is always taken.
  The return at 0x10d8 has v0 = one of ret(mutex_spinunlock), ?, ret(free_gfx_io_space).

- `kona_mem_swapout` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x1134 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0x1134-0x12e0 (428 bytes).
  It occupies 428 bytes.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x0, including `ld` at 0x1134, `ld` at 0x1264.
  The `lhu` at 0x1150 loads 2 bytes from a2 (arg2 at entry) +0x6.
  The `lw` at 0x117c loads 4 bytes from [a1]:8 +0x8.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x1180, `lw` at 0x11fc.
  2 such `lw` accesses load 4 bytes from [a1]:8 +0x14, including `lw` at 0x1184, `lw` at 0x1274.
  The `lw` at 0x119c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `sw` at 0x11b0 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `sd` at 0x11e4 stores 8 bytes to a2 (arg2 at entry) +0x10.
  The `lw` at 0x11e8 loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `sd` at 0x11f4 stores 8 bytes to a2 (arg2 at entry) +0x18.
  The `sw` at 0x1200 stores 4 bytes to a2 (arg2 at entry) +0x20.
  The `ld` at 0x120c loads 8 bytes from a0 (arg0 at entry) +0x13d0.
  The `sd` at 0x1218 stores 8 bytes to [a0+5072]:8 +0x38.
  The `sd` at 0x121c stores 8 bytes to a0 (arg0 at entry) +0x13d0.
  The `lw` at 0x1254 loads 4 bytes from a2 (arg2 at entry) +0x20.
  The `lw` at 0x1258 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `sd` at 0x125c stores 8 bytes to a2 (arg2 at entry) +0x58.
  The `ld` at 0x1268 loads 8 bytes from a2 (arg2 at entry) +0x18.
  The `ld` at 0x1280 loads 8 bytes from a2 (arg2 at entry) +0x28.
  The `lbu` at 0x1284 loads 1 byte from [a2+40]:8 +0x0.
  The `sb` at 0x128c stores 1 byte to [a2+40]:8 +0x0.
  The `sb` at 0x1298 stores 1 byte to a2 (arg2 at entry) +0x2.
  The `sd` at 0x12dc stores 8 bytes to a0 (arg0 at entry) +0x13d8.
  The `jal` at 0x11b4 calls psema with a0=a2+72, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x11bc calls kona_mem_cleanup with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x11d4 calls kvpalloc with a0=?, a1=0x80000, a2=0x0, a3=?.
  The `jal` at 0x11ec calls alloc_gfx_io_space with a0=[a0+2184], a1=ret(kvpalloc), a2=?, a3=0xe.
  The `jal` at 0x1204 calls mutex_spinlock with a0=a0+2576, a1=[a2+8], a2=?, a3=?.
  The `jal` at 0x1220 calls mutex_spinunlock with a0=a0+2576, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x123c calls kona_timeout with a0=sym(kona_mem_swapout_complete), a1=a0 at entry (arg0), a2=[sym(kona_mem_timeout_value)], a3=sym(splhi), a4=0x1, a5=a2 at entry (arg2).
  The `jal` at 0x1278 calls kona_mem_swapout_func with a0=a0 at entry (arg0), a1=?, a2=[a2+12], a3=[a2+32], a4=[[a1]:8+20], a6=[a2+24]:8.
  The `jal` at 0x12a0 calls psema with a0=a2+72, a1=0x19, a2=?, a3=?, a6=0x1, a7=[[a2+40]:8]:1+1.
  The `jal` at 0x12a8 calls vsema with a0=a2+72, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1174 targets 0x1180, is taken when (at(=[a2+6]:2) & 0x1) == 0, and falls through when (at(=[a2+6]:2) & 0x1) != 0.
  The `beq` branch at 0x1210 targets 0x12d8, is taken when a0(=[a0+5072]:8) == 0, and falls through when a0(=[a0+5072]:8) != 0.
  The `beq` branch at 0x1294 targets 0x12b0, is taken when s7(=[sym(kona_mem_serialize)]) == 0, and falls through when s7(=[sym(kona_mem_serialize)]) != 0.
  The `beq` branch at 0x12d8 targets 0x121c and is always taken.
  The return at 0x12d0 has v0 = one of ret(kona_mem_swapout_func), ret(vsema).

- `kona_mem_compress` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x12e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0x12e0-0x13a8 (200 bytes).
  It occupies 200 bytes.
  The `ld` at 0x12f0 loads 8 bytes from a1 (arg1 at entry) +0x10.
  The `lbu` at 0x1318 loads 1 byte from [a1+16]:8 +0x4.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1330, `lw` at 0x133c, `lw` at 0x1360.
  The `sw` at 0x1340 stores 4 bytes to ?.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1348, `ld` at 0x1380.
  The `lbu` at 0x1354 loads 1 byte from ?.
  The `jal` at 0x1334 calls kona_mem_copydown_func with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1308 targets 0x138c, is taken when s1(=[a1+16]:8) == 0, and falls through when s1(=[a1+16]:8) != 0.
  The `beq` branch at 0x1314 targets 0x1358 and is always taken.
  The `beq` branch at 0x134c targets 0x138c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x1364 targets 0x1374, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x1374 targets 0x131c, is taken when a2(?) != s0(?), and falls through when a2(?) == s0(?).
  The `bne` branch at 0x1384 targets 0x1354, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The return at 0x13a0 has v0 = ?.

- `kona_mem_grow` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x13a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0x13a8-0x14c0 (280 bytes).
  It occupies 280 bytes.
  2 such `ld` accesses load 8 bytes from a2 (arg2 at entry) +0x30, including `ld` at 0x13a8, `ld` at 0x1438.
  The `lw` at 0x13ac loads 4 bytes from a2 (arg2 at entry) +0xc.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x0, including `ld` at 0x13b0, `ld` at 0x1408.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x13bc, `lw` at 0x1464.
  2 such `lw` accesses load 4 bytes from [a1]:8 +0x18, including `lw` at 0x13c0, `lw` at 0x140c.
  The `ld` at 0x1420 loads 8 bytes from [a2+48]:8 +0x30.
  2 such `sd` accesses store 8 bytes to a2 (arg2 at entry) +0x30, including `sd` at 0x1428, `sd` at 0x14ac.
  The `sd` at 0x1434 stores 8 bytes to [a2+48]:8 +0x30.
  The `lw` at 0x1448 loads 4 bytes from [a2+48]:8 +0xc.
  The `lw` at 0x144c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `sw` at 0x1454 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `sw` at 0x1470 stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `ld` at 0x1484 loads 8 bytes from a1 (arg1 at entry) +0x10.
  The `ld` at 0x1494 loads 8 bytes from ?.
  The `sd` at 0x14a8 stores 8 bytes to ?.
  The `jal` at 0x1430 calls kona_mem_swapout with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a2+48]:8, a3=?, a4=[[a2+48]:8+48]:8.
  The `jal` at 0x14b0 calls kona_mem_swapout with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[a2+48]:8.
  The `bne` branch at 0x13f4 targets 0x1484, is taken when at(?) < a3 (unsigned), and falls through when at(?) >= a3 (unsigned).
  The `bne` branch at 0x1400 targets 0x1444, is taken when a6(=[a2+48]:8) != 0, and falls through when a6(=[a2+48]:8) == 0.
  The `beq` branch at 0x1418 targets 0x144c, is taken when a3(?) >= s2(=a3) (unsigned), and falls through when a3(?) < s2(=a3) (unsigned).
  The `beq` branch at 0x143c targets 0x1408, is taken when a2(=[a2+48]:8) == 0, and falls through when a2(=[a2+48]:8) != 0.
  The `beq` branch at 0x1444 targets 0x1410 and is always taken.
  The `beq` branch at 0x1488 targets 0x14a4, is taken when s0(=a2) == a2(=[a1+16]:8), and falls through when s0(=a2) != a2(=[a1+16]:8).
  The `bne` branch at 0x1498 targets 0x1490, is taken when s0(=a2) != a2(?), and falls through when s0(=a2) == a2(?).
  The `beq` branch at 0x14b8 targets 0x145c and is always taken.
  The return at 0x147c has v0 = one of ?, ret(kona_mem_swapout).

- `kona_mem_reserve` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x14c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0x14c0-0x1720 (608 bytes).
  It occupies 608 bytes.
  5 such `lw` accesses load 4 bytes from a4 (arg4 at entry) +0x8, including `lw` at 0x14c0, `lw` at 0x1590, `lw` at 0x15ac.
  5 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x10, including `ld` at 0x14e4, `ld` at 0x15a8, `ld` at 0x15b0.
  5 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x0, including `ld` at 0x150c, `ld` at 0x1584, `ld` at 0x16dc.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1510, `lw` at 0x1588, `lw` at 0x165c.
  4 such `lw` accesses load 4 bytes from [a1]:8 +0x18, including `lw` at 0x1514, `lw` at 0x158c, `lw` at 0x16e4.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1534, `ld` at 0x1548, `ld` at 0x155c.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1568, `sd` at 0x156c, `sd` at 0x164c.
  The `lw` at 0x15bc loads 4 bytes from [a1+16]:8 +0xc.
  2 such `lbu` accesses load 1 byte from a4 (arg4 at entry) +0x4, including `lbu` at 0x15d8, `lbu` at 0x1710.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x15e0, `lw` at 0x15f4, `lw` at 0x15f8.
  2 such `sd` accesses store 8 bytes to a4 (arg4 at entry) +0x30, including `sd` at 0x1644, `sd` at 0x1650.
  2 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x10, including `sd` at 0x1654, `sd` at 0x16b8.
  The `sw` at 0x1664 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `sw` at 0x166c stores 4 bytes to a4 (arg4 at entry) +0xc.
  The `ld` at 0x16ac loads 8 bytes from [a1+16]:8 +0x30.
  The `sd` at 0x16c4 stores 8 bytes to [a1+16]:8 +0x30.
  The `lw` at 0x16f8 loads 4 bytes from [a1]:8 +0x10.
  The `jal` at 0x1570 calls kona_mem_swapout with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x16c0 calls kona_mem_swapout with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=?, a6=[[a1+16]:8+48]:8, a7=[a1+16]:8.
  The `jal` at 0x1704 calls kona_mem_compress with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0x1504 targets 0x15b4, is taken when at(=[a1+16]:8) == 0, and falls through when at(=[a1+16]:8) != 0.
  The `bne` branch at 0x1520 targets 0x1548, is taken when a1(?) < t0(=[a4+8]) (unsigned), and falls through when a1(?) >= t0(=[a4+8]) (unsigned).
  The `beq` branch at 0x1528 targets 0x15b4 and is always taken.
  The `beq` branch at 0x1538 targets 0x15b0, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1540 targets 0x15b0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x154c targets 0x1530, is taken when v0(?) == s3(=a2), and falls through when v0(?) != s3(=a2).
  The `beq` branch at 0x1554 targets 0x1530, is taken when v0(?) == s5(=a3), and falls through when v0(?) != s5(=a3).
  The `beq` branch at 0x157c targets 0x15ac, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x159c targets 0x1548, is taken when a1(?) < t0(=[a4+8]) (unsigned), and falls through when a1(?) >= t0(=[a4+8]) (unsigned).
  The `beq` branch at 0x15a4 targets 0x15b4 and is always taken.
  The `beq` branch at 0x15b4 targets 0x16dc, is taken when v0(=[a1+16]:8) == 0, and falls through when v0(=[a1+16]:8) != 0.
  The `beq` branch at 0x15c8 targets 0x1650, is taken when a0(?) >= t0(=[a4+8]) (unsigned), and falls through when a0(?) < t0(=[a4+8]) (unsigned).
  The `beq` branch at 0x15d0 targets 0x1694, is taken when v0(=[a1+16]:8) == 0, and falls through when v0(=[a1+16]:8) != 0.
  The `beq` branch at 0x15dc targets 0x15f8 and is always taken.
  The `beq` branch at 0x15e4 targets 0x1644, is taken when t0(=[a4+8]) == 0, and falls through when t0(=[a4+8]) != 0.
  The `beq` branch at 0x15ec targets 0x1698, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1624 targets 0x16e8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bltz` branch at 0x1634 targets 0x15e4, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `bne` branch at 0x163c targets 0x15ec, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1648 targets 0x1658 and is always taken.
  The `beq` branch at 0x1698 targets 0x16f4, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x16a4 targets 0x16d4, is taken when a7(=[a1+16]:8) == 0, and falls through when a7(=[a1+16]:8) != 0.
  The `bne` branch at 0x16cc targets 0x16ac, is taken when a7(=[a1+16]:8) != 0, and falls through when a7(=[a1+16]:8) == 0.
  The `beq` branch at 0x16d4 targets 0x1670 and is always taken.
  The `beq` branch at 0x16e0 targets 0x15c0 and is always taken.
  The `beq` branch at 0x16ec targets 0x1630 and is always taken.
  The `beq` branch at 0x16fc targets 0x16a0, is taken when a1(=[[a1]:8+16]) == 0, and falls through when a1(=[[a1]:8+16]) != 0.
  The `beq` branch at 0x1718 targets 0x15dc and is always taken.
  The return at 0x168c has v0 = one of 0x0, 0x1.

- `kona_mem_swapin` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x1a28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0x1a28-0x1ba0 (376 bytes).
  It occupies 376 bytes.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x20, including `lw` at 0x1a28, `lw` at 0x1b20.
  The `lhu` at 0x1a38 loads 2 bytes from a2 (arg2 at entry) +0x6.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x0, including `ld` at 0x1a40, `ld` at 0x1b30.
  2 such `lw` accesses load 4 bytes from [a1]:8 +0x14, including `lw` at 0x1a5c, `lw` at 0x1b40.
  The `lw` at 0x1a60 loads 4 bytes from [a1]:8 +0x8.
  2 such `ld` accesses load 8 bytes from a2 (arg2 at entry) +0x10, including `ld` at 0x1aac, `ld` at 0x1b1c.
  The `lw` at 0x1abc loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `sd` at 0x1ac0 stores 8 bytes to a2 (arg2 at entry) +0x18.
  The `ld` at 0x1ad0 loads 8 bytes from a0 (arg0 at entry) +0x13e0.
  The `sd` at 0x1ae0 stores 8 bytes to [a0+5088]:8 +0x38.
  The `sd` at 0x1ae8 stores 8 bytes to a0 (arg0 at entry) +0x13e0.
  The `lw` at 0x1b24 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `sd` at 0x1b28 stores 8 bytes to a2 (arg2 at entry) +0x58.
  The `ld` at 0x1b34 loads 8 bytes from a2 (arg2 at entry) +0x18.
  The `ld` at 0x1b70 loads 8 bytes from a2 (arg2 at entry) +0x28.
  The `lbu` at 0x1b78 loads 1 byte from [a2+40]:8 +0x0.
  The `sb` at 0x1b84 stores 1 byte to [a2+40]:8 +0x0.
  The `sb` at 0x1b88 stores 1 byte to a2 (arg2 at entry) +0x2.
  The `sd` at 0x1b9c stores 8 bytes to a0 (arg0 at entry) +0x13e8.
  The `jal` at 0x1a9c calls psema with a0=a2+72, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[a2+32], a6=[a1]:8, a7=[sym(kona_mem_serialize)].
  The `jal` at 0x1aa4 calls kona_mem_cleanup with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1ab8 calls alloc_gfx_io_space with a0=[a0+2184], a1=[a2+16]:8, a2=?, a3=0xe.
  The `jal` at 0x1ac8 calls mutex_spinlock with a0=a0+2576, a1=?, a2=?, a3=?.
  The `jal` at 0x1ae4 calls mutex_spinunlock with a0=a0+2576, a1=ret(mutex_spinlock), a2=[a0+5088]:8, a3=?.
  The `jal` at 0x1b00 calls kona_timeout with a0=sym(kona_mem_swapin_complete), a1=a0 at entry (arg0), a2=[sym(kona_mem_timeout_value)], a3=sym(splhi), a4=0x1, a5=a2 at entry (arg2).
  The `jal` at 0x1b44 calls kona_mem_swapin_func with a0=a0 at entry (arg0), a1=?, a2=[a2+12], a3=[a2+32], a4=[[a1]:8+20], a6=[a2+24]:8, a7=[a2+16]:8.
  The `jal` at 0x1b58 calls psema with a0=a2+72, a1=0x19, a2=?, a3=?, a6=[sym(kona_mem_serialize)].
  The `jal` at 0x1b60 calls vsema with a0=a2+72, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1a58 targets 0x1a64, is taken when (at(=[a2+6]:2) & 0x1) == 0, and falls through when (at(=[a2+6]:2) & 0x1) != 0.
  The `beq` branch at 0x1a8c targets 0x1b68, is taken when a5(=[a2+32]) == 0, and falls through when a5(=[a2+32]) != 0.
  The `beq` branch at 0x1ad8 targets 0x1b98, is taken when a2(=[a0+5088]:8) == 0, and falls through when a2(=[a0+5088]:8) != 0.
  The `beq` branch at 0x1b50 targets 0x1b68, is taken when a6(=[sym(kona_mem_serialize)]) == 0, and falls through when a6(=[sym(kona_mem_serialize)]) != 0.
  The `beq` branch at 0x1b98 targets 0x1ae4 and is always taken.
  The return at 0x1b90 has v0 = one of [[a1]:8+20], ret(kona_mem_swapin_func), ret(vsema).

- `kona_mem_update_driver` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x1ba0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0x1ba0-0x1c80 (224 bytes).
  It occupies 224 bytes.
  The `ld` at 0x1bb4 loads 8 bytes from a2 (arg2 at entry) +0x8.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1bec, `lbu` at 0x1c40.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1bf4, `lw` at 0x1c00, `lw` at 0x1c48.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1c04, `ld` at 0x1c58.
  The `ld` at 0x1c18 loads 8 bytes from a3 (arg3 at entry) +0x8.
  The `jal` at 0x1bfc calls kona_mem_reserve_func with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1c50 calls kona_mem_reserve_func with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1bd4 targets 0x1c10, is taken when s0(=[a2+8]:8) == 0, and falls through when s0(=[a2+8]:8) != 0.
  The `bne` branch at 0x1c08 targets 0x1bec, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1c10 targets 0x1c1c, is taken when s3(=a3) == 0, and falls through when s3(=a3) != 0.
  The `beq` branch at 0x1c20 targets 0x1c64, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x1c5c targets 0x1c40, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The return at 0x1c78 has v0 = one of ?, ret(kona_mem_reserve_func).

- `kona_mem_update` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x1c80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0x1c80-0x1d18 (152 bytes).
  It occupies 152 bytes.
  The `ld` at 0x1c94 loads 8 bytes from a1 (arg1 at entry) +0x70.
  2 such `ld` accesses load 8 bytes from [a1+112]:8 +0xf0, including `ld` at 0x1ce0, `ld` at 0x1d14.
  The `jal` at 0x1cc8 calls kona_mem_update_driver with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1c9c targets 0x1d0c and is always taken.
  The `beq` branch at 0x1cd8 targets 0x1cf4, is taken when s0(?) >= 0x4 (signed), and falls through when s0(?) < 0x4 (signed).
  The `bne` branch at 0x1ce4 targets 0x1ca4, is taken when a2(=[[a1+112]:8+240]:8) != 0, and falls through when a2(=[[a1+112]:8+240]:8) == 0.
  The `beq` branch at 0x1cec targets 0x1cac and is always taken.
  The `beq` branch at 0x1d10 targets 0x1ce4 and is always taken.
  The return at 0x1d04 has v0 = ret(kona_mem_update_driver).

- `kona_mem_validate_driver` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x1d18 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0x1d18-0x1e40 (296 bytes).
  It occupies 296 bytes.
  The `ld` at 0x1d48 loads 8 bytes from a2 (arg2 at entry) +0x8.
  6 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1d78, `ld` at 0x1d90, `ld` at 0x1dd4.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1d84, `lbu` at 0x1dac, `lbu` at 0x1de0.
  The `ld` at 0x1da4 loads 8 bytes from a3 (arg3 at entry) +0x8.
  The `jal` at 0x1d40 calls kona_mem_cleanup with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1d68 calls kona_mem_reserve with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1dc4 calls kona_mem_reserve with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e1c calls kona_mem_swapin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1e30 calls kona_mem_swapin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0x1d4c targets 0x1d84, is taken when s0(=[a2+8]:8) != 0, and falls through when s0(=[a2+8]:8) == 0.
  The `beq` branch at 0x1d54 targets 0x1d9c and is always taken.
  The `beq` branch at 0x1d70 targets 0x1e2c, is taken when v0(=ret(kona_mem_reserve)) == 0, and falls through when v0(=ret(kona_mem_reserve)) != 0.
  The `beq` branch at 0x1d7c targets 0x1d9c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x1d88 targets 0x1d5c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x1d94 targets 0x1d84, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1d9c targets 0x1da8, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `bnel` branch at 0x1da8 targets 0x1de4, is taken when s0(?) != 0, and falls through when s0(?) == 0; its branch-likely delay slot `lbu v0,2(s0)` at 0x1dac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1db0 targets 0x1df8 and is always taken.
  The `beq` branch at 0x1dcc targets 0x1e18, is taken when v0(=ret(kona_mem_reserve)) == 0, and falls through when v0(=ret(kona_mem_reserve)) != 0.
  The `beq` branch at 0x1dd8 targets 0x1df8, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x1de4 targets 0x1db8, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x1df0 targets 0x1de0, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1e24 targets 0x1dd8 and is always taken.
  The `beq` branch at 0x1e38 targets 0x1d7c and is always taken.
  The return at 0x1e10 has v0 = ?.

- `kona_mem_validate` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x1e40 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0x1e40-0x1f54 (276 bytes).
  It occupies 276 bytes.
  The `ld` at 0x1e48 loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `ld` at 0x1e88 loads 8 bytes from [a1+112]:8 +0xf0.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1e98, `lbu` at 0x1ec4, `lbu` at 0x1ed8.
  The `jal` at 0x1e58 calls kona_mem_cleanup with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1ebc calls kona_mem_validate_driver with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1e9c targets 0x1f28, is taken when at(=[[a1+112]:8+240]:8) == 0, and falls through when at(=[[a1+112]:8+240]:8) != 0.
  The `beq` branch at 0x1ea4 targets 0x1f38, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x1ec8 targets 0x1eb4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x1ed0 targets 0x1ee4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x1edc targets 0x1eb4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x1ef8 targets 0x1e84, is taken when s5(?) < 0x4 (signed), and falls through when s5(?) >= 0x4 (signed).
  The `bne` branch at 0x1f28 targets 0x1eb0, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x1f30 targets 0x1ee8 and is always taken.
  The `beq` branch at 0x1f38 targets 0x1ee4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x1f44 targets 0x1eb0, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x1f4c targets 0x1ee8 and is always taken.
  The return at 0x1f20 has v0 = ?.

- `kona_mem_destroy` in `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)` at 0x1f54 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`.
  Range: 0x1f54-0x213c (488 bytes).
  It occupies 488 bytes.
  The `ld` at 0x1f80 loads 8 bytes from a1 (arg1 at entry) +0x70.
  The `ld` at 0x1fa8 loads 8 bytes from [a1+112]:8 +0xf0.
  11 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1fb4, `ld` at 0x1fcc, `ld` at 0x1fe0.
  6 such `sd` accesses store 8 bytes to ?, including `sd` at 0x2004, `sd` at 0x200c, `sd` at 0x203c.
  7 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2008, `lw` at 0x2010, `lw` at 0x2040.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x201c, `sw` at 0x2054.
  The `lhu` at 0x20e4 loads 2 bytes from ?.
  The `jal` at 0x2098 calls kvpfree with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x20a0 calls freesema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x20a8 calls kern_free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x20c8 calls psema with a0=?, a1=0x19, a2=?, a3=?.
  The `jal` at 0x20d0 calls kona_mem_cleanup with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1f88 targets 0x2130 and is always taken.
  The `beq` branch at 0x1f98 targets 0x20fc, is taken when s4(?) >= 0x4 (signed), and falls through when s4(?) < 0x4 (signed).
  The `beq` branch at 0x1fa0 targets 0x2128, is taken when s7(=a2) == 0, and falls through when s7(=a2) != 0.
  The `beq` branch at 0x1fc4 targets 0x1f90, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x1fd4 targets 0x205c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1fdc targets 0x1ff4 and is always taken.
  The `beq` branch at 0x1fe8 targets 0x2058, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x1ffc targets 0x2020, is taken when t8(?) != a6(?), and falls through when t8(?) == a6(?).
  The `beq` branch at 0x2018 targets 0x2024 and is always taken.
  The `beq` branch at 0x2024 targets 0x2058, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x2034 targets 0x1fe4, is taken when at(?) != a6(?), and falls through when at(?) == a6(?).
  The `beq` branch at 0x2050 targets 0x1fe8 and is always taken.
  The `beq` branch at 0x205c targets 0x1f90, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x2064 targets 0x20b8 and is always taken.
  The `beq` branch at 0x20b0 targets 0x1f90, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x20dc targets 0x20a0, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x20ec targets 0x206c, is taken when (a5(?) & 0x1) != 0, and falls through when (a5(?) & 0x1) == 0.
  The `beq` branch at 0x20f4 targets 0x2070 and is always taken.
  The `beq` branch at 0x2128 targets 0x1fb4 and is always taken.
  The `beq` branch at 0x2134 targets 0x1fa0 and is always taken.
  The return at 0x2120 has v0 = ?.
