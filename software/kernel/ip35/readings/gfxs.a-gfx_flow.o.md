# Readings: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`

One entry per routine, filed here from the reading batches by binary.

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

- `gfx_flow_init` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x94 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x94-0x204 (368 bytes).
  It occupies 368 bytes.
  4 such `lh` accesses load 2 bytes from ?, including `lh` at 0xdc, `lh` at 0xf0, `lh` at 0x114.
  4 such `sd` accesses store 8 bytes to ?, including `sd` at 0xe8, `sd` at 0x108, `sd` at 0x128.
  The `jal` at 0x178 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?, a6=[sym(maxnodes)].
  The `jal` at 0x190 calls install_gfxintr with a0=?, a1=0x0, a2=sym(gfx_flow_delayed_hiwater_intr_prehandler), a3=0x0.
  The `jal` at 0x1cc calls kmem_zalloc with a0=?, a1=0x0, a2=?, a3=?, a6=[sym(maxnodes)].
  The `jal` at 0x1ec calls kmem_zalloc with a0=?, a1=0x0, a2=?, a3=?.
  The `blez` branch at 0xa0 targets 0x164, is taken when a6(=[sym(maxnodes)]) <= 0 (signed), and falls through when a6(=[sym(maxnodes)]) > 0 (signed).
  The `bne` branch at 0x14c targets 0x110, is taken when a0(?) < 0x2 (unsigned), and falls through when a0(?) >= 0x2 (unsigned).
  The `bnel` branch at 0x15c targets 0xd8, is taken when a5(?) < a6(=[sym(maxnodes)]) (signed), and falls through when a5(?) >= a6(=[sym(maxnodes)]) (signed); its branch-likely delay slot `daddu a6,a5,a5` at 0x160 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0x16c targets 0x1b4, is taken when v1(=[sym(maxcpus)]) <= 0 (signed), and falls through when v1(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x180 targets 0x198, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x1ac targets 0x178, is taken when s0(?) < a0(=[sym(maxcpus)]) (signed), and falls through when s0(?) >= a0(=[sym(maxcpus)]) (signed).
  The return at 0x1fc has v0 = ret(kmem_zalloc).

- `gfx_flow_alloc` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x204 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x204-0x454 (592 bytes).
  It occupies 592 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x25c, `ld` at 0x410.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x28c, `sd` at 0x3e8.
  The `lh` at 0x290 loads 2 bytes from ret(kmem_alloc) +0x50.
  The `sw` at 0x298 stores 4 bytes to ret(kmem_alloc) +0x54.
  The `lh` at 0x2a0 loads 2 bytes from (sym(compact_to_nasid_node) + ([ret(kmem_alloc)+80]:2 + [ret(kmem_alloc)+80]:2)) +0x0.
  The `sh` at 0x2a4 stores 2 bytes to ret(kmem_alloc) +0x60.
  The `sd` at 0x2b0 stores 8 bytes to ret(kmem_alloc) +0x68.
  The `sd` at 0x2bc stores 8 bytes to ret(kmem_alloc) +0x58.
  The `sw` at 0x2ec stores 4 bytes to ret(kmem_alloc) +0x0.
  The `sw` at 0x304 stores 4 bytes to ret(kmem_alloc) +0x4.
  The `sd` at 0x31c stores 8 bytes to ret(kmem_alloc) +0x8.
  2 such `sw` accesses store 4 bytes to ret(kmem_alloc) +0x40, including `sw` at 0x328, `sw` at 0x3a0.
  2 such `sw` accesses store 4 bytes to ret(kmem_alloc) +0x10, including `sw` at 0x334, `sw` at 0x340.
  The `sw` at 0x350 stores 4 bytes to ret(kmem_alloc) +0x14.
  The `sw` at 0x354 stores 4 bytes to ret(kmem_alloc) +0x3c.
  The `sw` at 0x35c stores 4 bytes to ret(kmem_alloc) +0x18.
  2 such `sw` accesses store 4 bytes to ret(kmem_alloc) +0x1c, including `sw` at 0x364, `sw` at 0x450.
  The `sw` at 0x36c stores 4 bytes to ret(kmem_alloc) +0x30.
  The `sw` at 0x370 stores 4 bytes to ret(kmem_alloc) +0x34.
  The `sw` at 0x374 stores 4 bytes to ret(kmem_alloc) +0x38.
  The `sd` at 0x380 stores 8 bytes to ret(kmem_alloc) +0x28.
  The `sd` at 0x390 stores 8 bytes to ret(kmem_alloc) +0x20.
  The `sd` at 0x3b0 stores 8 bytes to ret(kmem_alloc) +0x48.
  The `lwu` at 0x3c4 loads 4 bytes from ret(kmem_alloc) +0x3c.
  The `sh` at 0x3f8 stores 2 bytes to ret(kmem_alloc) +0x50.
  The `jal` at 0x244 calls kmem_alloc with a0=0x70, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2d8 calls xwidget_info_get with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2e8 calls xwidget_info_id_get with a0=ret(xwidget_info_get), a1=?, a2=?, a3=?.
  The `jal` at 0x39c calls kvalloc with a0=0x1, a1=0x0, a2=0x0, a3=0x44, a4=0x38, a5=0x100.
  The `jal` at 0x3e4 calls xwidget_info_master_get with a0=ret(xwidget_info_get), a1=?, a2=?, a3=?, a4=0x4000000400000007.
  The `jal` at 0x3ec calls master_node_get with a0=ret(xwidget_info_master_get), a1=?, a2=?, a3=?.
  The `jal` at 0x42c calls gfx_flow_init with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x234 targets 0x42c, is taken when at(=[sym(gfx_flow_igfx_owners)]:8) == 0, and falls through when at(=[sym(gfx_flow_igfx_owners)]:8) != 0.
  The `bne` branch at 0x24c targets 0x2d8, is taken when v0(=ret(kmem_alloc)) != 0, and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` branch at 0x254 targets 0x2c0 and is always taken.
  The `beq` branch at 0x260 targets 0x28c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x278 targets 0x25c, is taken when a0(?) < 0x2 (unsigned), and falls through when a0(?) >= 0x2 (unsigned).
  The `bne` branch at 0x338 targets 0x348, is taken when t2(?) < 0x101 (unsigned), and falls through when t2(?) >= 0x101 (unsigned).
  The `beq` branch at 0x360 targets 0x44c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x41c targets 0x43c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x424 targets 0x26c and is always taken.
  The `beq` branch at 0x434 targets 0x240 and is always taken.
  The `beq` branch at 0x444 targets 0x28c and is always taken.
  The `beq` branch at 0x44c targets 0x368 and is always taken.
  The return at 0x2d0 has v0 = one of 0x0, ret(kmem_alloc).

- `gfx_flow_reset` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x454 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x454-0x460 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0x454 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `sw` at 0x45c stores 4 bytes to a0 (arg0 at entry) +0x14.
  The return at 0x458 has v0 = ?.

- `gfx_flow_dealloc` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x460 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x460-0x4a8 (72 bytes).
  It occupies 72 bytes.
  The `lh` at 0x460 loads 2 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x464 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `sd` at 0x498 stores 8 bytes to ?.
  The `jal` at 0x494 calls kmem_free with a0=a0 at entry (arg0), a1=0x70, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x4a0 has v0 = ret(kmem_free).

- `gfx_flow_wg_info_get` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x4a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x4a8-0x4cc (36 bytes).
  It occupies 36 bytes.
  The `ld` at 0x4a8 loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `sd` at 0x4ac stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `ld` at 0x4b0 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `sd` at 0x4b4 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `ld` at 0x4b8 loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `sd` at 0x4bc stores 8 bytes to a1 (arg1 at entry) +0x10.
  The `ld` at 0x4c0 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `sd` at 0x4c8 stores 8 bytes to a1 (arg1 at entry) +0x18.
  The return at 0x4c4 has v0 = [a0+64]:8.

- `gfx_flow_credit_tnum_get` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x4cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x4cc-0x4d4 (8 bytes).
  It occupies 8 bytes.
  The return at 0x4cc has v0 = 0x11.

- `gfx_flow_credit_total_get` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x4d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x4d4-0x4e0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0x4d4 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The return at 0x4d8 has v0 = ([a0+16] << 0x3).

- `gfx_flow_credit_bias_get` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x4e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x4e0-0x4ec (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0x4e0 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The return at 0x4e4 has v0 = ([a0+24] << 0x3).

- `gfx_flow_credit_count_get` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x4ec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x4ec-0x538 (76 bytes).
  It occupies 76 bytes.
  The `lh` at 0x4ec loads 2 bytes from abs 0xffffffffffffc428.
  The `ld` at 0x4fc loads 8 bytes from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8.
  The `lbu` at 0x500 loads 1 byte from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528.
  The `ld` at 0x528 loads 8 bytes from table(0x9200000001000000) +0x0.
  The return at 0x530 has v0 = ((entry(0x9200000001000000) << 0x3) << 0x0).

- `gfx_flow_detach_requires_credit_flow_disable` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x538 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x538-0x540 (8 bytes).
  It occupies 8 bytes.
  The return at 0x538 has v0 = 0x1.

- `gfx_flow_attach_me_finish` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x664 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x664-0x6b4 (80 bytes).
  It occupies 80 bytes.
  The `lh` at 0x664 loads 2 bytes from abs 0xffffffffffffc428.
  The `ld` at 0x674 loads 8 bytes from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8.
  The `lbu` at 0x678 loads 1 byte from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528.
  The `lwu` at 0x69c loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `sd` at 0x6a4 stores 8 bytes to ?.
  The return at 0x6ac has v0 = ?.

- `gfx_flow_am_i_attached` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x790 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x790-0x7d4 (68 bytes).
  It occupies 68 bytes.
  The `lh` at 0x798 loads 2 bytes from a0 (arg0 at entry) +0x60.
  2 such `lh` accesses load 2 bytes from abs 0xffffffffffffc428, including `lh` at 0x79c, `lh` at 0x7b8.
  The `ld` at 0x7c4 loads 8 bytes from ([sym(gfx_flow_cpu_attachments)]:8 + ([-0x3bd8]:2 << 0x3)) +0x0.
  The `beq` branch at 0x790 targets 0x7ac, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x7b0 targets 0x7cc, is taken when a0(=[sym(gfx_flow_cpu_attachments)]:8) == 0, and falls through when a0(=[sym(gfx_flow_cpu_attachments)]:8) != 0.
  The return at 0x7a4 has v0 = ?.
  The return at 0x7cc has v0 = one of 0x1, ?.

- `gfx_flow_flush_my_wg` in `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)` at 0x7d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`.
  Range: 0x7d4-0x7ec (24 bytes).
  It occupies 24 bytes.
  The `ld` at 0x7dc loads 8 bytes from abs 0x9200000001030100.
  The return at 0x7e4 has v0 = ?.
