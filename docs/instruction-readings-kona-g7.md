# Instruction readings from hostfacts

Each entry summarises selected memory accesses, calls, conditional branches and returns reported by hostfacts for the named routine and binary. Every instruction claim includes its address. These are observations of the installed software, not hardware measurements. Unknown values remain marked unknown.






- `kona_timeout_init` in `usr/cpu/sysgen/IP35boot/kona.a(kona_timeout.o)` at 0x0 (n64).
  It occupies 88 bytes.
  The `sd` at 0x30 stores 8 bytes to a0 (arg0 at entry) +0x1528 with value 0x4.
  The `sd` at 0x40 stores 8 bytes to a0 (arg0 at entry) +0x1518 with value sym(cmn_err).
  The `sd` at 0x48 stores 8 bytes to a0 (arg0 at entry) +0x1530 with value sym(.rodata).
  The `jal` at 0x14 calls `spinlock_init` with a0=a0+5368, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x24 calls `spinlock_init` with a0=a0+5372, a1=sym(.rodata), a2=?, a3=?.
  The return at 0x50 has v0=ret(spinlock_init).

- `kona_timeout_alloc` in `usr/cpu/sysgen/IP35boot/kona.a(kona_timeout.o)` at 0x58 (n64).
  It occupies 84 bytes.
  The `jal` at 0x70 calls `kmem_alloc` with a0=0x40, a1=0x1, a2=?, a3=?.
  The `jal` at 0x80 calls `us_delay` with a0=0xa, a1=?, a2=?, a3=?.
  The `bne` branch at 0x78 has these conditions:
    taken when v0(=ret(kmem_alloc)) != 0.
    falls through when v0(=ret(kmem_alloc)) == 0.
  The `bne` branch at 0x90 has these conditions:
    taken when s0(?) < 0xa (unsigned).
    falls through when s0(?) >= 0xa (unsigned).
  The return at 0xa4 has v0=ret(kmem_alloc).

- `kona_timeout_free` in `usr/cpu/sysgen/IP35boot/kona.a(kona_timeout.o)` at 0xac (n64).
  It occupies 28 bytes.
  The `jal` at 0xb4 calls `kmem_free` with a0=a0 at entry (arg0), a1=0x40, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xc0 has v0=ret(kmem_free).

- `kona_itimeout_func` in `usr/cpu/sysgen/IP35boot/kona.a(kona_timeout.o)` at 0x350 (n64).
  It occupies 160 bytes.
  The `ld` at 0x350 loads 8 bytes into at from a0 (arg0 at entry) +0x1560.
  The `ld` at 0x3a4 loads 8 bytes into v0 from a0 (arg0 at entry) +0x1500.
  The `jal` at 0x374 calls `mutex_spinlock_spl` with a0=a0+5368, a1=[sym(pltimeout)]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x380 calls `kona_callout` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x38c calls `mutex_spinunlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x398 calls `mutex_spinlock` with a0=a0+5372, a1=?, a2=?, a3=?.
  The `jal` at 0x3b4 calls `kona_sched_tick` with a0=a0 at entry (arg0), a1=0x7a120, a2=?, a3=?.
  The `jal` at 0x3c8 calls `mutex_spinunlock` with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3e0 calls `kona_die` with a0=a0 at entry (arg0), a1=0x9, a2=?, a3=?.
  The `bne` branch at 0x364 has these conditions:
    taken when a1 < at(=[a0+5472]:8) (unsigned).
    falls through when a1 >= at(=[a0+5472]:8) (unsigned).
  The `beq` branch at 0x3a8 has these conditions:
    taken when v0(=[a0+5376]:8) == 0.
    falls through when v0(=[a0+5376]:8) != 0.
  The `beq` branch at 0x3bc has these conditions:
    taken when v0(=ret(kona_sched_tick)) == 0.
    falls through when v0(=ret(kona_sched_tick)) != 0.
  The return at 0x3d8 has v0 unknown.

- `kona_setcolor` in `usr/cpu/sysgen/IP35boot/kona.a(kona_tport.o)` at 0x0 (n64).
  It occupies 340 bytes.
  The `lw` at 0xc loads 4 bytes into at from sym(ktport_mute) +0x0.
  The `sw` at 0x4 stores 4 bytes to sym(ktport_inuse) +0x0 with value 0x1.
  The `sw` at 0x24 stores 4 bytes to sym(ktport_inuse) +0x0 with value 0x0.
  The `sw` at 0xc8 stores 4 bytes to [sym(.sbss)]:8 +0xc10000 with value 0x1.
  The `sw` at 0xd0 stores 4 bytes to [sym(.sbss)]:8 +0xc10000 with value 0x2.
  The `sw` at 0xd4 stores 4 bytes to [sym(.sbss)]:8 +0xc10000 with value a1.
  The `jal` at 0x40 calls `mutex_spinlock` with a0=sym(ktport_lock), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x84 calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0xac calls `kona_fc_attach` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xfc calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x12c calls `kona_fc_detach` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x140 calls `mutex_spinunlock` with a0=sym(ktport_lock), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1c has these conditions:
    taken when at(=[sym(ktport_mute)]) == 0.
    falls through when at(=[sym(ktport_mute)]) != 0.
  The `bgtz` branch at 0x6c has these conditions:
    taken when t8(?) > 0 (signed).
    falls through when t8(?) <= 0 (signed).
  The `blez` branch at 0x7c has these conditions:
    taken when a0(?) <= 0 (signed).
    falls through when a0(?) > 0 (signed).
  The `bne` branch at 0xa4 has these conditions:
    taken when v0(?) < s2(=0x186a1) (signed).
    falls through when v0(?) >= s2(=0x186a1) (signed).
  The `blez` branch at 0xf4 has these conditions:
    taken when t8(?) <= 0 (signed).
    falls through when t8(?) > 0 (signed).
  The `beq` branch at 0x11c has these conditions:
    taken when v0(?) >= s2(=0x186a1) (signed).
    falls through when v0(?) < s2(=0x186a1) (signed).
  The `bgtz` branch at 0x124 has these conditions:
    taken when a0(?) > 0 (signed).
    falls through when a0(?) <= 0 (signed).
  The return at 0x2c has v0 unknown.

- `kona_unblank` in `usr/cpu/sysgen/IP35boot/kona.a(kona_tport.o)` at 0x5c8 (n64).
  It occupies 328 bytes.
  The `lw` at 0x5c8 loads 4 bytes into at from sym(ktport_mute) +0x0.
  The `sw` at 0x5d0 stores 4 bytes to sym(ktport_inuse) +0x0 with value 0x1.
  The `sw` at 0x5e8 stores 4 bytes to sym(ktport_inuse) +0x0 with value 0x0.
  The `sw` at 0x688 stores 4 bytes to [sym(.sbss)]:8 +0xc10000 with value 0x1.
  The `sw` at 0x68c stores 4 bytes to [sym(.sbss)]:8 +0xc10000 with value 0x1.
  The `sw` at 0x690 stores 4 bytes to [sym(.sbss)]:8 +0xc10000 with value 0x0.
  The `jal` at 0x604 calls `mutex_spinlock` with a0=sym(ktport_lock), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x648 calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x670 calls `kona_fc_attach` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x6b8 calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x6e8 calls `kona_fc_detach` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x6fc calls `mutex_spinunlock` with a0=sym(ktport_lock), a1=?, a2=?, a3=?.
  The `beq` branch at 0x5e0 has these conditions:
    taken when at(=[sym(ktport_mute)]) == 0.
    falls through when at(=[sym(ktport_mute)]) != 0.
  The `bgtz` branch at 0x630 has these conditions:
    taken when t8(?) > 0 (signed).
    falls through when t8(?) <= 0 (signed).
  The `blez` branch at 0x640 has these conditions:
    taken when a0(?) <= 0 (signed).
    falls through when a0(?) > 0 (signed).
  The `bne` branch at 0x668 has these conditions:
    taken when v0(?) < s2(=0x186a1) (signed).
    falls through when v0(?) >= s2(=0x186a1) (signed).
  The `blez` branch at 0x6b0 has these conditions:
    taken when t8(?) <= 0 (signed).
    falls through when t8(?) > 0 (signed).
  The `beq` branch at 0x6d8 has these conditions:
    taken when v0(?) >= s2(=0x186a1) (signed).
    falls through when v0(?) < s2(=0x186a1) (signed).
  The `bgtz` branch at 0x6e0 has these conditions:
    taken when a0(?) > 0 (signed).
    falls through when a0(?) <= 0 (signed).
  The return at 0x5f0 has v0 unknown.

- `kona_movechar` in `usr/cpu/sysgen/IP35boot/kona.a(kona_tport.o)` at 0x710 (n64).
  It occupies 352 bytes.
  The `lw` at 0x720 loads 4 bytes into at from sym(ktport_mute) +0x0.
  The `sw` at 0x714 stores 4 bytes to sym(ktport_inuse) +0x0 with value 0x1.
  The `sw` at 0x738 stores 4 bytes to sym(ktport_inuse) +0x0 with value 0x0.
  The `sw` at 0x7e0 stores 4 bytes to [sym(.sbss)]:8 +0xc10000 with value 0x1.
  The `sw` at 0x7e8 stores 4 bytes to [sym(.sbss)]:8 +0xc10000 with value 0x4.
  The `sw` at 0x7ec stores 4 bytes to [sym(.sbss)]:8 +0xc10000 with value a1.
  The `sw` at 0x7f0 stores 4 bytes to [sym(.sbss)]:8 +0xc10000 with value a2.
  The `jal` at 0x754 calls `mutex_spinlock` with a0=sym(ktport_lock), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x798 calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x7c0 calls `kona_fc_attach` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x818 calls `us_delay` with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x848 calls `kona_fc_detach` with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x85c calls `mutex_spinunlock` with a0=sym(ktport_lock), a1=?, a2=?, a3=?.
  The `beq` branch at 0x730 has these conditions:
    taken when at(=[sym(ktport_mute)]) == 0.
    falls through when at(=[sym(ktport_mute)]) != 0.
  The `bgtz` branch at 0x780 has these conditions:
    taken when t8(?) > 0 (signed).
    falls through when t8(?) <= 0 (signed).
  The `blez` branch at 0x790 has these conditions:
    taken when a0(?) <= 0 (signed).
    falls through when a0(?) > 0 (signed).
  The `bne` branch at 0x7b8 has these conditions:
    taken when v0(?) < s2(=0x186a1) (signed).
    falls through when v0(?) >= s2(=0x186a1) (signed).
  The `blez` branch at 0x810 has these conditions:
    taken when t8(?) <= 0 (signed).
    falls through when t8(?) > 0 (signed).
  The `beq` branch at 0x838 has these conditions:
    taken when v0(?) >= s2(=0x186a1) (signed).
    falls through when v0(?) < s2(=0x186a1) (signed).
  The `bgtz` branch at 0x840 has these conditions:
    taken when a0(?) > 0 (signed).
    falls through when a0(?) <= 0 (signed).
  The return at 0x740 has v0 unknown.

- `kona_getdesc` in `usr/cpu/sysgen/IP35boot/kona.a(kona_tport.o)` at 0xcd0 (n64).
  It occupies 24 bytes.
  The `beq` branch at 0xcd4 has these conditions:
    taken when a1 == at(=0x1).
    falls through when a1 != at(=0x1).
  The return at 0xce0 has v0=one of 0x0, 0x1.

- `kona_select_cursor` in `usr/cpu/sysgen/IP35boot/kona.a(kona_video.o)` at 0x0 (n64).
  It occupies 116 bytes.
  The `lw` at 0x2c loads 4 bytes into a7 from a2 (arg2 at entry) +0x0.
  The `sw` at 0x38 stores 4 bytes to ? (base unknown) +0xde8 with value [a2+4].
  The `sh` at 0x40 stores 2 bytes to ? (base unknown) +0xdf0 with value [a2+8].
  The `sb` at 0x4c stores 1 byte to ? (base unknown) +0xde1 with value 0x1.
  The `sb` at 0x50 stores 1 byte to ? (base unknown) +0xde0 with value 0x1.
  The `jal` at 0x1c calls `mutex_spinlock` with a0=[a0+40]:8+3520, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x58 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=[a2+12], a3=?, a4=0x1, a5=[a2+8], a6=[a2+4], a7=[a2].
  The return at 0x6c has v0=0x0.

- `kona_video_cleanup` in `usr/cpu/sysgen/IP35boot/kona.a(kona_video.o)` at 0x178 (n64).
  It occupies 84 bytes.
  The `jal` at 0x190 calls `mutex_spinlock` with a0=a0+3520, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1a0 calls `kona_video_rundown` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1b0 calls `mutex_spinunlock` with a0=?, a1=?, a2=?, a3=?.
  The return at 0x1c4 has v0=ret(kona_video_rundown).

- `kona_gsync_complete` in `usr/cpu/sysgen/IP35boot/kona.a(kona_video.o)` at 0x2b8 (n64).
  It occupies 80 bytes.
  The `lw` at 0x2e4 loads 4 bytes into a4 from a0 (arg0 at entry) +0x888.
  The `jal` at 0x2e8 calls `cmn_err_tag` with a0=0x838, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184], a5=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `jal` at 0x2f0 calls `rrmValidateRetrace` with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2c8 has these conditions:
    taken when a2 == 0.
    falls through when a2 != 0.
  The return at 0x300 has v0=ret(rrmValidateRetrace).

- `kona_retrace_timeout` in `usr/cpu/sysgen/IP35boot/kona.a(kona_video.o)` at 0x308 (n64).
  It occupies 192 bytes.
  The `ld` at 0x340 loads 8 bytes into a4 from a1 (arg1 at entry) +0x70.
  The `ld` at 0x354 loads 8 bytes into at from [a1+112]:8 +0x78.
  The `sd` at 0x364 stores 8 bytes to [a1+112]:8 +0x78 with value 0x0.
  The `ld` at 0x370 loads 8 bytes into v0 from [a1+112]:8 +0x80.
  The `sd` at 0x384 stores 8 bytes to [a1+112]:8 +0x80 with value 0x0.
  The `jal` at 0x32c calls `mutex_spinlock` with a0=a0+3520, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x368 calls `kona_video_rundown` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=[a1+112]:8.
  The `jalr` at 0x37c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=? .
  The `jal` at 0x38c calls `mutex_spinunlock` with a0=a0+3520, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x3b8 calls `mutex_spinunlock` with a0=a0+3520, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x338 has these conditions:
    taken when s0(=a1) == 0.
    falls through when s0(=a1) != 0.
  The `beq` branch at 0x344 has these conditions:
    taken when a4(=[a1+112]:8) == 0.
    falls through when a4(=[a1+112]:8) != 0.
  The `beq` branch at 0x34c has these conditions:
    taken when s1(=[a1+112]:8+112) == 0.
    falls through when s1(=[a1+112]:8+112) != 0.
  The `beq` branch at 0x358 has these conditions:
    taken when at(=[[a1+112]:8+120]:8) == 0.
    falls through when at(=[[a1+112]:8+120]:8) != 0.
  The return at 0x3ac has v0=ret(mutex_spinunlock).

- `kona_mswap_complete` in `usr/cpu/sysgen/IP35boot/kona.a(kona_video.o)` at 0x1004 (n64).
  It occupies 308 bytes.
  The `lw` at 0x103c loads 4 bytes into a0 from a0 (arg0 at entry) +0xdf8.
  The `lw` at 0x105c loads 4 bytes into at from a0 (arg0 at entry) +0xdf8.
  The `sw` at 0x1064 stores 4 bytes to a0 (arg0 at entry) +0xdf8 with value [a0+3576]-1.
  The `sw` at 0x1068 stores 4 bytes to ? (base unknown) +0xe08 with value -0x1.
  The `sw` at 0x106c stores 4 bytes to ? (base unknown) +0xf88 with value 0x0.
  The `jal` at 0x1030 calls `mutex_spinlock` with a0=a0+3520, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1054 calls `rrmValidateMGRSwapBuf` with a0=[a0]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x10d0 calls `mutex_spinunlock` with a0=a0+3520, a1=?, a2=?, a3=?.
  The `jal` at 0x10ec calls `cmn_err_tag` with a0=0x839, a1=0x4, a2=sym(.rodata), a3=sym(.rodata), a4=[a0+2184].
  The `jal` at 0x1128 calls `kona_untimeout` with a0=a0 at entry (arg0), a1=[a0+3584]:8, a2=?, a3=?.
  The `beq` branch at 0x1028 has these conditions:
    taken when a1 == 0.
    falls through when a1 != 0.
  The `beq` branch at 0x1044 has these conditions:
    taken when a0(=[a0+3576]) == 0.
    falls through when a0(=[a0+3576]) != 0.
  The return at 0x111c has v0 unknown.

- `kona_determine_cursor_channel` in `usr/cpu/sysgen/IP35boot/kona.a(kona_video.o)` at 0x14d8 (n64).
  It occupies 444 bytes.
  The `lbu` at 0x14dc loads 1 byte into t2 from a0 (arg0 at entry) +0x1c.
  The `lh` at 0x14e8 loads 2 bytes into a6 from a0 (arg0 at entry) +0x24.
  The `lh` at 0x14f4 loads 2 bytes into a7 from a0 (arg0 at entry) +0x26.
  The `lbu` at 0x1614 loads 1 byte into a6 from a0 (arg0 at entry) +0x1a.
  The `sb` at 0x1624 stores 1 byte to a0 (arg0 at entry) +0x1a with value 0x0.
  The `sb` at 0x1644 stores 1 byte to a0 (arg0 at entry) +0x1c with value t1.
  The `bltz` branch at 0x1504 has these conditions:
    taken when a3(?) < 0 (signed).
    falls through when a3(?) >= 0 (signed).
  The `beq` branch at 0x1518 has these conditions:
    taken when a5(?) == 0.
    falls through when a5(?) != 0.
  The `bltz` branch at 0x1588 has these conditions:
    taken when a3(?) < 0 (signed).
    falls through when a3(?) >= 0 (signed).
  The `bne` branch at 0x160c has these conditions:
    taken when t1(?) < 0x8 (signed).
    falls through when t1(?) >= 0x8 (signed).
  The `beq` branch at 0x1618 has these conditions:
    taken when a6(=[a0+26]:1) == 0.
    falls through when a6(=[a0+26]:1) != 0.
  The `bne` branch at 0x162c has these conditions:
    taken when a7(=[(a0 + ([a0+28]:1 << 0x4))+929]:1) != a4(?).
    falls through when a7(=[(a0 + ([a0+28]:1 << 0x4))+929]:1) == a4(?).
  The `bne` branch at 0x1634 has these conditions:
    taken when t0(=one of 0x0, 0x1) != 0.
    falls through when t0(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x165c has these conditions:
    taken when a6(=[(a0 + ([a0+28]:1 << 0x4))+929]:1) != a4(?).
    falls through when a6(=[(a0 + ([a0+28]:1 << 0x4))+929]:1) == a4(?).
  The `beq` branch at 0x1664 has these conditions:
    taken when t0(=one of 0x0, 0x1) == 0.
    falls through when t0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1670 has these conditions:
    taken when a5(?) == a6(=[a0+26]:1).
    falls through when a5(?) != a6(=[a0+26]:1).
  The return at 0x1640 has v0=0x1.
  The return at 0x1680 has v0=one of 0x0, 0x1.

- `kona_set_channel_rect` in `usr/cpu/sysgen/IP35boot/kona.a(kona_video.o)` at 0x1c4c (n64).
  It occupies 204 bytes.
  The `lbu` at 0x1c4c loads 1 byte into at from a1 (arg1 at entry) +0x0.
  The `lbu` at 0x1c8c loads 1 byte into a6 from a1 (arg1 at entry) +0x0.
  The `sb` at 0x1ca4 stores 1 byte to ? (base unknown) +0x1168 with value [a1+1]:1.
  The `sh` at 0x1cb4 stores 2 bytes to ? (base unknown) +0x116a with value [a1+4]:2.
  The `sh` at 0x1ccc stores 2 bytes to ? (base unknown) +0x1170 with value [a1+10]:2.
  The `sb` at 0x1cf4 stores 1 byte to ? (base unknown) +0xde4 with value 0x20.
  The `sb` at 0x1cfc stores 1 byte to ? (base unknown) +0xde1 with value 0x1.
  The `sb` at 0x1d08 stores 1 byte to ? (base unknown) +0xde0 with value 0x1.
  The `jal` at 0x1c80 calls `mutex_spinlock` with a0=[a0+40]:8+3520, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1d04 calls `mutex_spinunlock` with a0=?, a1=ret(mutex_spinlock), a2=0x1, a3=?, a4=0x20, a5=[a1+16]:2, a7=[a1+14]:2.
  The `bne` branch at 0x1c68 has these conditions:
    taken when at(=[a1]:1) < 0x20 (signed).
    falls through when at(=[a1]:1) >= 0x20 (signed).
  The return at 0x1c70 has v0=one of 0x0, 0x16.

- `konRecolorCursor` in `usr/lib/X11/dyDDX/kona.so` at 0x53be80 (n32).
  It occupies 524 bytes.
  The `lw` at 0x53bea8 loads 4 bytes into a0 from a0 (arg0 at entry) +0x1b4.
  The `lw` at 0x53beac loads 4 bytes into a1 from abs 0x58c9f8.
  The `lw` at 0x53beb0 loads 4 bytes into a1 from abs 0x599790.
  The `sw` at 0x53bf60 stores 4 bytes to [[([a0+436] + ([0x599790] << 0x2))]+8] +0x2620 with value 0x269c.
  The `sw` at 0x53bf6c stores 4 bytes to [[([a0+436] + ([0x599790] << 0x2))]+8] +0x0 with value [([a0+436] + ([0x599790] << 0x2))]+8.
  The `sw` at 0x53bf9c stores 4 bytes to [([a0+436] + ([0x599790] << 0x2))] +0x70 with value -0x1.
  The `jalr` at 0x53bfd8 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x57d58.
  The `bne` branch at 0x53bef0 has these conditions:
    taken when at(=[(a1 + ([a0] << 0x2))+20]) != v0(=0x1).
    falls through when at(=[(a1 + ([a0] << 0x2))+20]) == v0(=0x1).
  The `bne` branch at 0x53befc has these conditions:
    taken when a4(=a2) != 0.
    falls through when a4(=a2) == 0.
  The `beq` branch at 0x53bfe8 has these conditions:
    taken when v0(?) == 0.
    falls through when v0(?) != 0.
  The return at 0x53c084 has v0 unknown.
