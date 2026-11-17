# Readings: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`

One entry per routine, filed here from the reading batches by binary.

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

- `gfx_flow_init` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`.
  Range: 0x90-0x23c (428 bytes).
  It occupies 428 bytes.
  3 such `lh` accesses load 2 bytes from ?, including `lh` at 0xbc, `lh` at 0xec, `lh` at 0x1e8.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xc8, `ld` at 0x1f4.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0xe8, `sd` at 0xfc, `sd` at 0x218.
  The `jal` at 0x144 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?, a4=[sym(maxnodes)].
  The `jal` at 0x15c calls install_gfxintr with a0=?, a1=0x0, a2=sym(gfx_flow_delayed_hiwater_intr_prehandler), a3=0x0.
  The `jal` at 0x198 calls kmem_zalloc with a0=?, a1=0x0, a2=?, a3=?, a4=[sym(maxnodes)].
  The `jal` at 0x1b8 calls kmem_zalloc with a0=?, a1=0x0, a2=?, a3=?.
  The `blez` branch at 0xa4 targets 0x118, is taken when a4(=[sym(maxnodes)]) <= 0 (signed), and falls through when a4(=[sym(maxnodes)]) > 0 (signed).
  The `bne` branch at 0x110 targets 0xb8, is taken when a0(?) < a4(=[sym(maxnodes)]) (signed), and falls through when a0(?) >= a4(=[sym(maxnodes)]) (signed).
  The `beq` branch at 0x128 targets 0x1d0, is taken when a2(=[sym(hub_use_transaction_credits)]) == 0, and falls through when a2(=[sym(hub_use_transaction_credits)]) != 0.
  The `blez` branch at 0x138 targets 0x180, is taken when a3(=[sym(maxcpus)]) <= 0 (signed), and falls through when a3(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x14c targets 0x164, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x178 targets 0x144, is taken when s0(?) < a4(=[sym(maxcpus)]) (signed), and falls through when s0(?) >= a4(=[sym(maxcpus)]) (signed).
  The `blez` branch at 0x1d0 targets 0x130, is taken when a4(=[sym(maxnodes)]) <= 0 (signed), and falls through when a4(=[sym(maxnodes)]) > 0 (signed).
  The `bne` branch at 0x210 targets 0x224, is taken when t1(?) < 0x4 (unsigned), and falls through when t1(?) >= 0x4 (unsigned).
  The `bne` branch at 0x22c targets 0x1e8, is taken when a0(?) < a4(=[sym(maxnodes)]) (signed), and falls through when a0(?) >= a4(=[sym(maxnodes)]) (signed).
  The `beq` branch at 0x234 targets 0x134 and is always taken.
  The return at 0x1c8 has v0 = ret(kmem_zalloc).

- `gfx_flow_reset` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x5d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`.
  Range: 0x5d0-0x5dc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0x5d0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `sw` at 0x5d8 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The return at 0x5d4 has v0 = ?.

- `gfx_flow_dealloc` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x5dc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`.
  Range: 0x5dc-0x624 (72 bytes).
  It occupies 72 bytes.
  The `lh` at 0x5dc loads 2 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x5e0 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `sd` at 0x614 stores 8 bytes to ?.
  The `jal` at 0x610 calls kmem_free with a0=a0 at entry (arg0), a1=0x70, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x61c has v0 = ret(kmem_free).

- `gfx_flow_wg_info_get` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x624 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`.
  Range: 0x624-0x648 (36 bytes).
  It occupies 36 bytes.
  The `ld` at 0x624 loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `sd` at 0x628 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `ld` at 0x62c loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `sd` at 0x630 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `ld` at 0x634 loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `sd` at 0x638 stores 8 bytes to a1 (arg1 at entry) +0x10.
  The `ld` at 0x63c loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `sd` at 0x644 stores 8 bytes to a1 (arg1 at entry) +0x18.
  The return at 0x640 has v0 = [a0+64]:8.

- `gfx_flow_credit_tnum_get` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x648 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`.
  Range: 0x648-0x650 (8 bytes).
  It occupies 8 bytes.
  The return at 0x648 has v0 = 0x11.

- `gfx_flow_detach_requires_credit_flow_disable` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x6b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`.
  Range: 0x6b0-0x6b8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x6b0 has v0 = 0x1.

- `gfx_flow_am_i_attached` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x990 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`.
  Range: 0x990-0x9d4 (68 bytes).
  It occupies 68 bytes.
  The `lh` at 0x998 loads 2 bytes from a0 (arg0 at entry) +0x60.
  2 such `lh` accesses load 2 bytes from abs 0xffffffffffffc420, including `lh` at 0x99c, `lh` at 0x9b8.
  The `ld` at 0x9c4 loads 8 bytes from ([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3be0]:2 << 0x3)) +0x0.
  The `beq` branch at 0x990 targets 0x9ac, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x9b0 targets 0x9cc, is taken when a0(=[sym(gfx_flow_cpu_attachments)]:8) == 0, and falls through when a0(=[sym(gfx_flow_cpu_attachments)]:8) != 0.
  The return at 0x9a4 has v0 = ?.
  The return at 0x9cc has v0 = one of 0x1, ?.

- `gfx_flow_flush_my_wg` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x9d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`.
  Range: 0x9d4-0x9ec (24 bytes).
  It occupies 24 bytes.
  The `ld` at 0x9dc loads 8 bytes from abs 0x9200000001030100.
  The return at 0x9e4 has v0 = ?.

- `gfx_flow_set_cpu_attachment` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0x9ec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`.
  Range: 0x9ec-0xa04 (24 bytes).
  It occupies 24 bytes.
  The `lh` at 0x9ec loads 2 bytes from abs 0xffffffffffffc420.
  The `sd` at 0xa00 stores 8 bytes to ([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3be0]:2 << 0x3)) +0x0.
  The return at 0x9fc has v0 = ([-0x3be0]:2 << 0x3).

- `gfx_flow_clear_cpu_attachment` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0xa04 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`.
  Range: 0xa04-0xa1c (24 bytes).
  It occupies 24 bytes.
  The `lh` at 0xa04 loads 2 bytes from abs 0xffffffffffffc420.
  The `sd` at 0xa18 stores 8 bytes to ([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3be0]:2 << 0x3)) +0x0.
  The return at 0xa14 has v0 = ([-0x3be0]:2 << 0x3).

- `gfx_flow_interface_alloc` in `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)` at 0xa1c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`.
  Range: 0xa1c-0xa64 (72 bytes).
  It occupies 72 bytes.
  The `sh` at 0xa40 stores 2 bytes to ret(kmem_zalloc) +0x60.
  The `sd` at 0xa44 stores 8 bytes to ret(kmem_zalloc) +0x68.
  The `sd` at 0xa48 stores 8 bytes to ret(kmem_zalloc) +0x20.
  The `sd` at 0xa60 stores 8 bytes to ret(kmem_zalloc) +0x28.
  The `jal` at 0xa34 calls kmem_zalloc with a0=0x70, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xa5c has v0 = ret(kmem_zalloc).
