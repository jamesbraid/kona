# Readings: `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)`

One entry per routine, filed here from the reading batches by binary.

- `kona_flow_cleanup` in `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)` at 0x50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)`.
  Range: 0x50-0x84 (52 bytes).
  It occupies 52 bytes.
  The `ld` at 0x50 loads 8 bytes from a0 (arg0 at entry) +0x920.
  The `sd` at 0x74 stores 8 bytes to a0 (arg0 at entry) +0x920.
  The `jal` at 0x68 calls kona_untimeout with a0=a0 at entry (arg0), a1=[a0+2336]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x60 targets 0x78, is taken when a1(=[a0+2336]:8) == 0, and falls through when a1(=[a0+2336]:8) != 0.
  The return at 0x7c has v0 = one of ?, ret(kona_untimeout).

- `kona_delay_monitor_gfifo` in `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)` at 0x144 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)`.
  Range: 0x144-0x1e8 (164 bytes).
  It occupies 164 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x948, including `ld` at 0x17c, `ld` at 0x1c4.
  The `lw` at 0x188 loads 4 bytes from a0 (arg0 at entry) +0x92c.
  The `sw` at 0x1d4 stores 4 bytes to a0 (arg0 at entry) +0x928.
  The `jal` at 0x180 calls gfx_pio_read_32 with a0=[a0+2376]:8+0x800208, a1=?, a2=?, a3=?.
  The `jal` at 0x198 calls us_delay with a0=0x4, a1=?, a2=?, a3=?.
  The `jal` at 0x1d8 calls gfx_pio_write_32 with a0=[a0+2376]:8+0x800238, a1=0x3, a2=0x800238, a3=?.
  The `beq` branch at 0x174 targets 0x1a8, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x190 targets 0x1c4, is taken when a1(=[a0+2348]) >= v0(=ret(gfx_pio_read_32)) (unsigned), and falls through when a1(=[a0+2348]) < v0(=ret(gfx_pio_read_32)) (unsigned).
  The `bne` branch at 0x1a4 targets 0x17c, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0x1e0 targets 0x1ac and is always taken.
  The return at 0x1bc has v0 = ?.

- `kona_hiwater_intr` in `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)` at 0x1e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)`.
  Range: 0x1e8-0x4cc (740 bytes).
  It occupies 740 bytes.
  The `lw` at 0x1fc loads 4 bytes from a0 (arg0 at entry) +0x87c.
  The `lw` at 0x200 loads 4 bytes from a0 (arg0 at entry) +0x1488.
  The `sw` at 0x210 stores 4 bytes to a0 (arg0 at entry) +0x1488.
  The `lw` at 0x214 loads 4 bytes from a0 (arg0 at entry) +0x928.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x918, including `lw` at 0x24c, `lw` at 0x294.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x928, including `sw` at 0x258, `sw` at 0x37c, `sw` at 0x418.
  7 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x948, including `ld` at 0x270, `ld` at 0x2d4, `ld` at 0x2f8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x91c, including `lw` at 0x27c, `lw` at 0x320.
  The `lw` at 0x2b8 loads 4 bytes from ret(gthread_find) +0x8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0x2cc, `sw` at 0x378.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x78, including `sw` at 0x2e0, `sw` at 0x374.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x68, including `sw` at 0x2e8, `sw` at 0x380.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x940, including `lw` at 0x2f4, `lw` at 0x330.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x940, including `sw` at 0x308, `sw` at 0x348.
  The `lw` at 0x36c loads 4 bytes from a0 (arg0 at entry) +0x6c.
  3 such `lh` accesses load 2 bytes from abs 0xffffffffffffc420, including `lh` at 0x390, `lh` at 0x3e8, `lh` at 0x41c.
  2 such `lw` accesses load 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5)) +0x1c, including `lw` at 0x3a0, `lw` at 0x42c.
  2 such `sw` accesses store 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5)) +0x1c, including `sw` at 0x3ac, `sw` at 0x438.
  The `sd` at 0x3d8 stores 8 bytes to a0 (arg0 at entry) +0x920.
  The `lw` at 0x3f8 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5)) +0x18.
  The `sw` at 0x404 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5)) +0x18.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x50, including `lw` at 0x470, `lw` at 0x480.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x50, including `sw` at 0x47c, `sw` at 0x48c.
  The `lw` at 0x49c loads 4 bytes from a0 (arg0 at entry) +0x888.
  The `jal` at 0x1f4 calls gfx_waitf_on with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x220 calls gfx_waitf_off with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x23c calls curthreadhandle with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x244 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x274 calls gfx_pio_read_32 with a0=[a0+2376]:8+0x800208, a1=?, a2=?, a3=?.
  The `jal` at 0x28c calls us_delay with a0=0x4, a1=?, a2=?, a3=?.
  The `jal` at 0x2ac calls mutex_spinlock with a0=a0+2352, a1=?, a2=?, a3=?.
  The `jal` at 0x2ec calls gfx_pio_write_32 with a0=[a0+2376]:8+0x800238, a1=0x3, a2=[a0+2376]:8, a3=0x1, a4=0x1.
  The `jal` at 0x30c calls gfx_pio_write_32 with a0=[a0+2376]:8+0x800230, a1=([a0+2368] | 0x2), a2=[a0+2376]:8, a3=?.
  The `jal` at 0x318 calls gfx_pio_read_32 with a0=[a0+2376]:8+0x800208, a1=?, a2=?, a3=?.
  The `jal` at 0x34c calls gfx_pio_write_32 with a0=[a0+2376]:8+0x800230, a1=?, a2=[a0+2376]:8, a3=-0x3.
  The `jal` at 0x364 calls gfx_pio_write_32 with a0=[a0+2376]:8+0x800238, a1=0x3, a2=[a0+2376]:8, a3=?.
  The `jal` at 0x388 calls mutex_spinunlock with a0=a0+2352, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x3a8 calls gfx_waitf_off with a0=?, a1=?, a2=[([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5))+28]+1, a3=([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5)), a4=([-0x3be0]:2 << 0x5).
  The `jal` at 0x3b0 calls kona_flow_await_returned_credits with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x3cc calls kona_timeout with a0=sym(kona_hiwater_timeout), a1=a0 at entry (arg0), a2=[sym(kona_fifo_timeout_value)], a3=sym(splhi).
  The `jal` at 0x3e0 calls mutex_spinunlock with a0=a0+2352, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x400 calls force_resched with a0=?, a1=?, a2=?, a3=?, a5=[([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5))+24]+1, a6=([sym(gfxinfo)]:8 + ([-0x3be0]:2 << 0x5)), a7=([-0x3be0]:2 << 0x5).
  The `jal` at 0x408 calls gfx_waitf_off with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x434 calls gfx_waitf_off with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x450 calls gfx_pio_write_32 with a0=[a0+2376]:8+0x800238, a1=0x3, a2=0x800238, a3=?.
  The `jal` at 0x458 calls kona_flow_await_returned_credits with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x4a0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+2184].
  The `jal` at 0x4b0 calls cmn_err with a0=0x6, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x4bc calls kona_die with a0=a0 at entry (arg0), a1=0x9, a2=?, a3=?.
  The `bne` branch at 0x20c targets 0x220, is taken when at(=[a0+2172]) != 0, and falls through when at(=[a0+2172]) == 0.
  The `beq` branch at 0x218 targets 0x23c, is taken when v1(=[a0+2344]) == 0, and falls through when v1(=[a0+2344]) != 0.
  The `beq` branch at 0x260 targets 0x468, is taken when a2(=[a0+2328]) == 0, and falls through when a2(=[a0+2328]) != 0.
  The `beq` branch at 0x284 targets 0x418, is taken when a1(=[a0+2332]) >= v0(=ret(gfx_pio_read_32)) (unsigned), and falls through when a1(=[a0+2332]) < v0(=ret(gfx_pio_read_32)) (unsigned).
  The `bne` branch at 0x2a0 targets 0x270, is taken when s1(?) < a2(=[a0+2328]) (unsigned), and falls through when s1(?) >= a2(=[a0+2328]) (unsigned).
  The `beq` branch at 0x2c4 targets 0x470, is taken when (a3(=[ret(gthread_find)+8]) & 0x8) == 0, and falls through when (a3(=[ret(gthread_find)+8]) & 0x8) != 0.
  The `bne` branch at 0x328 targets 0x3c0, is taken when a1(=[a0+2332]) < v0(=ret(gfx_pio_read_32)) (unsigned), and falls through when a1(=[a0+2332]) >= v0(=ret(gfx_pio_read_32)) (unsigned).
  The `beq` branch at 0x370 targets 0x480, is taken when a1(=[a0+108]) == 0, and falls through when a1(=[a0+108]) != 0.
  The `beq` branch at 0x3b8 targets 0x22c and is always taken.
  The `beq` branch at 0x3d4 targets 0x490, is taken when v0(=ret(kona_timeout)) == 0, and falls through when v0(=ret(kona_timeout)) != 0.
  The `beq` branch at 0x410 targets 0x22c and is always taken.
  The `beq` branch at 0x460 targets 0x22c and is always taken.
  The `beq` branch at 0x468 targets 0x2a8 and is always taken.
  The `beq` branch at 0x478 targets 0x2d0 and is always taken.
  The `beq` branch at 0x488 targets 0x378 and is always taken.
  The `beq` branch at 0x4c4 targets 0x3e0 and is always taken.
  The return at 0x234 has v0 = one of ret(gfx_waitf_off), ret(kona_flow_await_returned_credits).

- `kona_lowater_intr` in `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)` at 0x4cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)`.
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

- `kona_diag_credits` in `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)` at 0x6f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)`.
  Range: 0x6f4-0x754 (96 bytes).
  It occupies 96 bytes.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8e0, including `ld` at 0x710, `ld` at 0x71c, `ld` at 0x728.
  The `sw` at 0x714 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0x720 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sw` at 0x734 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `sw` at 0x744 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jal` at 0x70c calls gfx_flow_credit_total_get with a0=[a0+2272]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x718 calls gfx_flow_credit_bias_get with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x724 calls gfx_flow_credit_count_get with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The return at 0x74c has v0 = 0x0.

- `kona_flow_await_returned_credits` in `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)` at 0x754 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)`.
  Range: 0x754-0x938 (484 bytes).
  It occupies 484 bytes.
  11 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8e0, including `ld` at 0x760, `ld` at 0x778, `ld` at 0x7c8.
  The `lw` at 0x78c loads 4 bytes from a0 (arg0 at entry) +0x928.
  The `lw` at 0x798 loads 4 bytes from a0 (arg0 at entry) +0x87c.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x48, including `ld` at 0x7a4, `ld` at 0x860, `ld` at 0x894.
  The `lw` at 0x7a8 loads 4 bytes from [a0+72]:8 +0x4.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x948, including `ld` at 0x814, `ld` at 0x82c, `ld` at 0x838.
  The `lw` at 0x8a4 loads 4 bytes from a0 (arg0 at entry) +0x8c8.
  The `lw` at 0x8f8 loads 4 bytes from a0 (arg0 at entry) +0x91c.
  The `ld` at 0x910 loads 8 bytes from a0 (arg0 at entry) +0x910.
  The `sd` at 0x924 stores 8 bytes to a0 (arg0 at entry) +0x910.
  The `jal` at 0x768 calls gfx_flow_credit_bias_get with a0=[a0+2272]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x774 calls gfx_flow_credit_count_get with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x7c0 calls us_delay with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x7cc calls gfx_flow_credit_count_get with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x7e0 calls gfx_flow_credit_count_get with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x7ec calls gfx_flow_credit_total_get with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x804 calls kona_die with a0=a0 at entry (arg0), a1=0x19, a2=?, a3=?.
  The `jal` at 0x80c calls kona_reset_adaptor with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x824 calls gfx_pio_write_32 with a0=[a0+2376]:8+0x800300, a1=0x1, a2=?, a3=?.
  The `jal` at 0x830 calls gfx_pio_read_32 with a0=[a0+2376]:8+0x800300, a1=?, a2=?, a3=?.
  The `jal` at 0x840 calls gfx_pio_write_32 with a0=[a0+2376]:8+0x800300, a1=0x0, a2=?, a3=?.
  The `jal` at 0x84c calls gfx_pio_read_32 with a0=[a0+2376]:8+0x800300, a1=?, a2=?, a3=?.
  The `jal` at 0x854 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x868 calls gfx_flow_flush_my_wg with a0=[a0+2272]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x870 calls gfx_flow_am_i_attached with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x884 calls gfx_flow_detach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x88c calls gfx_flow_reset with a0=[a0+2272]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x898 calls gfx_flow_attach_me with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x8b0 calls gfx_pio_write_32 with a0=[a0+2376]:8+124, a1=?, a2=?, a3=?.
  The `jal` at 0x8bc calls gfx_flow_attach_me_finish with a0=[a0+2272]:8, a1=[a0+72]:8, a2=?, a3=?.
  The `jal` at 0x8c4 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x8f0 calls gfx_pio_read_32 with a0=[a0+2376]:8+0x800208, a1=0x800208, a2=?, a3=?.
  The `jal` at 0x908 calls curproc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x91c calls curproc with a0=?, a1=?, a2=?, a3=[a0+2320]:8.
  The `jal` at 0x928 calls force_resched with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x780 targets 0x7e0, is taken when v0(=ret(gfx_flow_credit_count_get)) >= s2(=ret(gfx_flow_credit_bias_get)) (unsigned), and falls through when v0(=ret(gfx_flow_credit_count_get)) < s2(=ret(gfx_flow_credit_bias_get)) (unsigned).
  The `bne` branch at 0x790 targets 0x8d0, is taken when v0(=[a0+2344]) != 0, and falls through when v0(=[a0+2344]) == 0.
  The `beq` branch at 0x79c targets 0x7b8, is taken when v1(=[a0+2172]) == 0, and falls through when v1(=[a0+2172]) != 0.
  The `bne` branch at 0x7b0 targets 0x80c, is taken when (a0(=[[a0+72]:8+4]) & 0x4) != 0, and falls through when (a0(=[[a0+72]:8+4]) & 0x4) == 0.
  The `blez` branch at 0x7b8 targets 0x8e4, is taken when s1(?) <= 0 (signed), and falls through when s1(?) > 0 (signed).
  The `bne` branch at 0x7d8 targets 0x78c, is taken when v0(=ret(gfx_flow_credit_count_get)) < s2(=ret(gfx_flow_credit_bias_get)) (unsigned), and falls through when v0(=ret(gfx_flow_credit_count_get)) >= s2(=ret(gfx_flow_credit_bias_get)) (unsigned).
  The `beq` branch at 0x7f8 targets 0x8d0, is taken when v0(=ret(gfx_flow_credit_total_get)) >= s1(=ret(gfx_flow_credit_count_get)) (unsigned), and falls through when v0(=ret(gfx_flow_credit_total_get)) < s1(=ret(gfx_flow_credit_count_get)) (unsigned).
  The `beq` branch at 0x878 targets 0x88c, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x900 targets 0x8d0, is taken when a2(=[a0+2332]) >= v0(=ret(gfx_pio_read_32)) (unsigned), and falls through when a2(=[a0+2332]) < v0(=ret(gfx_pio_read_32)) (unsigned).
  The `beq` branch at 0x914 targets 0x928, is taken when a3(=[a0+2320]:8) == v0(=ret(curproc)), and falls through when a3(=[a0+2320]:8) != v0(=ret(curproc)).
  The `beq` branch at 0x930 targets 0x8d0 and is always taken.
  The return at 0x8dc has v0 = one of [a0+2344], ret(gfx_flow_credit_total_get), ret(splx), ret(gfx_pio_read_32), ret(force_resched).

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
