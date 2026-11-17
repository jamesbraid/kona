# Readings: `usr/gfx/sgcombine`

One entry per routine, filed here from the reading batches by binary.

- `iGUIReadFormatFile__GPCcP11cmpFormat_t` in `usr/gfx/sgcombine` at 0x1000fd40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1000fd40-0x1000fedc (412 bytes).
  It occupies 412 bytes.
  3 such `lw` accesses load 4 bytes from ret(getTheErrorDialog__Gv) +0x8, including `lw` at 0x1000fde0, `lw` at 0x1000fe44, `lw` at 0x1000fea0.
  3 such `lw` accesses load 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110, including `lw` at 0x1000fdf0, `lw` at 0x1000fe54, `lw` at 0x1000feb0.
  3 such `lw` accesses load 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108, including `lw` at 0x1000fdfc, `lw` at 0x1000fe60, `lw` at 0x1000febc.
  The `jal` at 0x1000fd5c calls vfmtReadCmp1Format [0x10021650] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000fdcc calls sprintf with a0=sp-288, a1=0x1002c098, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1000fdd8 calls getTheErrorDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000fe08 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-288, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1000fe30 calls sprintf with a0=sp-288, a1=0x1002c060, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1000fe3c calls getTheErrorDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000fe6c calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-288, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1000fe8c calls sprintf with a0=sp-288, a1=0x1002c038, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1000fe98 calls getTheErrorDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000fec8 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-288, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `beq` branch at 0x1000fd70 targets 0x1000fdbc, is taken when v0(=ret(vfmtReadCmp1Format)) == v1(=0x1), and falls through when v0(=ret(vfmtReadCmp1Format)) != v1(=0x1).
  The `beq` branch at 0x1000fd78 targets 0x1000fe24, is taken when v0(=ret(vfmtReadCmp1Format)) == a0(=0x3), and falls through when v0(=ret(vfmtReadCmp1Format)) != a0(=0x3).
  The `beq` branch at 0x1000fd80 targets 0x1000fe80, is taken when v0(=ret(vfmtReadCmp1Format)) == a1(=0x2), and falls through when v0(=ret(vfmtReadCmp1Format)) != a1(=0x2).
  The `beq` branch at 0x1000fd88 targets 0x1000fda8, is taken when v0(=ret(vfmtReadCmp1Format)) == 0, and falls through when v0(=ret(vfmtReadCmp1Format)) != 0.
  The `beq` branch at 0x1000fe78 targets 0x1000fd9c and is always taken.
  The `beq` branch at 0x1000fed4 targets 0x1000fd9c and is always taken.
  The return at 0x1000fd94 has v0 = 0x0.
  The return at 0x1000fda0 has v0 = 0x0.
  The return at 0x1000fdb4 has v0 = 0x1.
  The return at 0x1000fe1c has v0 = 0x0.

- `iGUIReadOdsyFormatFile__GPCcP11cmpFormat_t` in `usr/gfx/sgcombine` at 0x1000fee0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1000fee0-0x10010124 (580 bytes).
  It occupies 580 bytes.
  2 such `lw` accesses load 4 bytes from sym(work_order) +0x70c, including `lw` at 0x1000fef8, `lw` at 0x100100d0.
  4 such `lw` accesses load 4 bytes from ret(getTheErrorDialog__Gv) +0x8, including `lw` at 0x1000ffcc, `lw` at 0x10010028, `lw` at 0x10010084.
  4 such `lw` accesses load 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110, including `lw` at 0x1000ffdc, `lw` at 0x10010038, `lw` at 0x10010094.
  4 such `lw` accesses load 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108, including `lw` at 0x1000ffe8, `lw` at 0x10010044, `lw` at 0x100100a0.
  The `jal` at 0x1000ff80 calls vfmtReadCmp1OdyFormat [0x10021870] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0x1, a6=sym(work_order).
  The `jal` at 0x1000ff94 calls vfmtReadCmp1SG2Format [0x100219b0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0x1, a6=sym(work_order).
  The `jalr` at 0x1000ffb8 calls sprintf with a0=sp-288, a1=0x1002c098, a2=a0 at entry (arg0), a3=0x4, a5=0x1.
  The `jalr` at 0x1000ffc4 calls getTheErrorDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000fff4 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-288, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10010014 calls sprintf with a0=sp-288, a1=0x1002c060, a2=a0 at entry (arg0), a3=0x4, a5=0x1.
  The `jalr` at 0x10010020 calls getTheErrorDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10010050 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-288, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10010070 calls sprintf with a0=sp-288, a1=0x1002c038, a2=a0 at entry (arg0), a3=0x4, a5=0x1.
  The `jalr` at 0x1001007c calls getTheErrorDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100100ac calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-288, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x100100d4 calls sprintf with a0=sp-288, a1=0x1002c0b0, a2=[sym(work_order)+1804], a3=0x4, a5=0x1.
  The `jalr` at 0x100100e0 calls getTheErrorDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10010110 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-288, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `beq` branch at 0x1000ff04 targets 0x1000ff7c, is taken when v0(=[sym(work_order)+1804]) == a5(=0x1), and falls through when v0(=[sym(work_order)+1804]) != a5(=0x1).
  The `beq` branch at 0x1000ff10 targets 0x1000ff94, is taken when v0(=[sym(work_order)+1804]) == v1(=0x2), and falls through when v0(=[sym(work_order)+1804]) != v1(=0x2).
  The `beq` branch at 0x1000ff1c targets 0x1000ffa8, is taken when a1(?) == a5(=0x1), and falls through when a1(?) != a5(=0x1).
  The `beq` branch at 0x1000ff28 targets 0x10010008, is taken when a1(?) == a0(=0x3), and falls through when a1(?) != a0(=0x3).
  The `beq` branch at 0x1000ff34 targets 0x10010064, is taken when a1(?) == a2(=0x2), and falls through when a1(?) != a2(=0x2).
  The `beq` branch at 0x1000ff3c targets 0x100100c0, is taken when a1(?) == a3(=0x4), and falls through when a1(?) != a3(=0x4).
  The `beq` branch at 0x1000ff44 targets 0x1000ff6c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1000ff8c targets 0x1000ff1c and is always taken.
  The `beq` branch at 0x1000ffa0 targets 0x1000ff1c and is always taken.
  The `beq` branch at 0x10010000 targets 0x1000ff60 and is always taken.
  The `beq` branch at 0x1001005c targets 0x1000ff60 and is always taken.
  The `beq` branch at 0x100100b8 targets 0x1000ff60 and is always taken.
  The `beq` branch at 0x1001011c targets 0x1000ff60 and is always taken.
  The return at 0x1000ff58 has v0 = 0x0.
  The return at 0x1000ff64 has v0 = 0x0.
  The return at 0x1000ff74 has v0 = 0x1.

- `odsy_fmt__22SmallFormatFileBrowserGi` in `usr/gfx/sgcombine` at 0x10010270 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10010270-0x10010278 (8 bytes).
  It occupies 8 bytes.
  The `sw` at 0x10010274 stores 4 bytes to a0 (arg0 at entry) +0x98.
  The return at 0x10010270 has v0 = ?.

- `__ct__23StcombineMainFrameClassGPCcP10_WidgetRec` in `usr/gfx/sgcombine` at 0x10010ed0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10010ed0-0x10011334 (1124 bytes).
  It occupies 1124 bytes.
  The `sw` at 0x10010f20 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sb` at 0x10010f24 stores 1 byte to sym(combination) +0x1fe.
  The `sb` at 0x10010f28 stores 1 byte to sym(combination) +0xff.
  The `sb` at 0x10010f30 stores 1 byte to sym(combination) +0x0.
  The `sb` at 0x10010f34 stores 1 byte to a0 (arg0 at entry) +0xdc.
  The `sw` at 0x10010f44 stores 4 bytes to a0 (arg0 at entry) +0x6d0.
  The `sw` at 0x10010f5c stores 4 bytes to a0 (arg0 at entry) +0x6cc.
  The `swc1` at 0x10010f98 stores 4 bytes to a0 (arg0 at entry) +0xbc.
  The `swc1` at 0x10010fc0 stores 4 bytes to a0 (arg0 at entry) +0xc0.
  The `swc1` at 0x10010ffc stores 4 bytes to a0 (arg0 at entry) +0xc4.
  The `sb` at 0x10011020 stores 1 byte to a0 (arg0 at entry) +0xc8.
  The `sb` at 0x10011034 stores 1 byte to a0 (arg0 at entry) +0xc9.
  The `sb` at 0x10011040 stores 1 byte to a0 (arg0 at entry) +0xca.
  The `sw` at 0x10011098 stores 4 bytes to a0 (arg0 at entry) +0xa38.
  The `sw` at 0x100110f0 stores 4 bytes to a0 (arg0 at entry) +0xa3c.
  The `sw` at 0x10011148 stores 4 bytes to a0 (arg0 at entry) +0xa40.
  The `lw` at 0x10011158 loads 4 bytes from a0 (arg0 at entry) +0xa40.
  The `sw` at 0x10011168 stores 4 bytes to a0 (arg0 at entry) +0xa0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x9c, including `sw` at 0x10011178, `sw` at 0x10011228.
  3 such `lw` accesses load 4 bytes from sym(work_order) +0x208, including `lw` at 0x10011180, `lw` at 0x1001119c, `lw` at 0x100111fc.
  The `lw` at 0x10011190 loads 4 bytes from sym(work_order) +0x30c.
  2 such `sw` accesses store 4 bytes to sym(work_order) +0x70c, including `sw` at 0x100111c8, `sw` at 0x100111ec.
  The `lw` at 0x1001121c loads 4 bytes from a0 (arg0 at entry) +0xac.
  8 such `ld` accesses load 8 bytes from ?, including `ld` at 0x10011288, `ld` at 0x10011298, `ld` at 0x100112a8.
  8 such `sd` accesses store 8 bytes to ?, including `sd` at 0x10011290, `sd` at 0x100112a0, `sd` at 0x100112b0.
  The `jal` at 0x10010f04 calls __ct__25StcombineMainFrameClassUIGPCcP10_WidgetRec [0x10014570] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10010f58 calls VkGetResource__GPCcT1 with a0=0x1002c328, a1=0x1002c340, a2=a0 at entry (arg0), a3=a0 at entry (arg0), a4=a0 at entry (arg0), a5=sym(__vtbl__23StcombineMainFrameClass), a6=a0 at entry (arg0).
  The `jalr` at 0x10010f6c calls sscanf with a0=ret(VkGetResource__GPCcT1), a1=0x10033418, a2=sp-176, a3=?.
  The `jalr` at 0x10010ff8 calls VkGetResource__GPCcT1 with a0=0x1002c358, a1=0x1002c368, a2=?, a3=a0 at entry (arg0), a5=a0 at entry (arg0), a7=a0 at entry (arg0).
  The `jalr` at 0x1001100c calls sscanf with a0=ret(VkGetResource__GPCcT1), a1=0x10033418, a2=sp-176, a3=?.
  The `jalr` at 0x10011048 calls __nw__GUi with a0=0x44, a1=?, a2=?, a3=?.
  The `jal` at 0x10011074 calls __ct__27TilingPropertiesWindowClassGPCcP3ArgUi [0x1001c1e0] with a0=ret(__nw__GUi), a1=0x1002c378, a2=0x0, a3=0x0.
  The `jalr` at 0x100110a0 calls __nw__GUi with a0=0x44, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jal` at 0x100110cc calls __ct__26VideoPropertiesWindowClassGPCcP3ArgUi [0x1001df40] with a0=ret(__nw__GUi), a1=0x1002c390, a2=0x0, a3=0x0.
  The `jalr` at 0x100110f8 calls __nw__GUi with a0=0x44, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jal` at 0x10011124 calls __ct__27TargetPropertiesWindowClassGPCcP3ArgUi [0x10017960] with a0=ret(__nw__GUi), a1=0x1002c3a8, a2=0x0, a3=0x0.
  The `jal` at 0x10011154 calls setMainFrame__27TargetPropertiesWindowClassGP23StcombineMainFrameClass [0x10017bb0] with a0=[a0+2624], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1001117c calls vfcQueryXSGIvc [0x1001f200] with a0=[sym(work_order)+520], a1=?, a2=a0+160, a3=a0 at entry (arg0), a4=0x4, a5=a0 at entry (arg0).
  The `jalr` at 0x10011198 calls XSGIvcQueryVideoScreenInfo with a0=[sym(work_order)+520], a1=[sym(work_order)+780], a2=sp-144, a3=?, a6=sym(combination)+56.
  The `jalr` at 0x100111b0 calls strncmp with a0=sp-132, a1=0x10033420, a2=0x7, a3=?.
  The `jalr` at 0x100111d4 calls strncmp with a0=sp-132, a1=0x10033428, a2=0x3, a3=?.
  The `jal` at 0x100111f8 calls vfcQueryGLXHyper [0x1001f280] with a0=[sym(work_order)+520], a1=?, a2=?, a3=?.
  The `jal` at 0x10011210 calls vfcQueryOdysseyTarget [0x1001f310] with a0=sym(work_order), a1=a0+172, a2=?, a3=?.
  The `beq` branch at 0x10011054 targets 0x1001108c, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10011084 targets 0x10011094 and is always taken.
  The `beq` branch at 0x100110ac targets 0x100110e4, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100110dc targets 0x100110ec and is always taken.
  The `beq` branch at 0x10011104 targets 0x1001113c, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10011134 targets 0x10011144 and is always taken.
  The `beq` branch at 0x10011184 targets 0x10011230, is taken when v0(=ret(vfcQueryXSGIvc)) == 0, and falls through when v0(=ret(vfcQueryXSGIvc)) != 0.
  The `bne` branch at 0x100111b8 targets 0x100111cc, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0x100111c4 targets 0x100111f0 and is always taken.
  The `bne` branch at 0x100111dc targets 0x100111f0, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0x100111f0 targets 0x1001122c, is taken when v0(=one of 0x0, 0x1) == 0, and falls through when v0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x10011200 targets 0x1001122c, is taken when v0(=ret(vfcQueryGLXHyper)) == 0, and falls through when v0(=ret(vfcQueryGLXHyper)) != 0.
  The `beq` branch at 0x10011220 targets 0x1001122c, is taken when a2(=[a0+172]) == 0, and falls through when a2(=[a0+172]) != 0.
  The `bgtz` branch at 0x10011304 targets 0x10011280, is taken when a0(?) > 0 (signed), and falls through when a0(?) <= 0 (signed).
  The return at 0x1001132c has v0 = a0.

- `__ct__23StcombineMainFrameClassGPCc` in `usr/gfx/sgcombine` at 0x10011340 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10011340-0x10011388 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x10011378 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10011360 calls __ct__25StcombineMainFrameClassUIGPCc [0x100145e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10011380 has v0 = a0.

- `__dt__23StcombineMainFrameClassGv` in `usr/gfx/sgcombine` at 0x10011390 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10011390-0x10011470 (224 bytes).
  It occupies 224 bytes.
  The `sw` at 0x100113b8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x100113c0 loads 4 bytes from a0 (arg0 at entry) +0xa38.
  The `lw` at 0x100113cc loads 4 bytes from [a0+2616] +0x8.
  The `lw` at 0x100113d0 loads 4 bytes from [[a0+2616]+8] +0x14.
  The `lw` at 0x100113d4 loads 4 bytes from [[a0+2616]+8] +0xc.
  The `lw` at 0x100113e8 loads 4 bytes from a0 (arg0 at entry) +0xa3c.
  The `lw` at 0x100113f4 loads 4 bytes from [a0+2620] +0x8.
  The `lw` at 0x100113f8 loads 4 bytes from [[a0+2620]+8] +0x14.
  The `lw` at 0x100113fc loads 4 bytes from [[a0+2620]+8] +0xc.
  The `lw` at 0x10011410 loads 4 bytes from a0 (arg0 at entry) +0xa40.
  The `lw` at 0x1001141c loads 4 bytes from [a0+2624] +0x8.
  The `lw` at 0x10011420 loads 4 bytes from [[a0+2624]+8] +0x14.
  The `lw` at 0x10011424 loads 4 bytes from [[a0+2624]+8] +0xc.
  The `jalr` at 0x100113dc calls (unknown callee) with a0=([[[a0+2616]+8]+12] + [a0+2616]), a1=0x3, a2=a2 at entry (arg2), a3=[a0+2616].
  The `jalr` at 0x10011404 calls (unknown callee) with a0=([[[a0+2620]+8]+12] + [a0+2620]), a1=0x3, a2=?, a3=[a0+2620].
  The `jalr` at 0x1001142c calls (unknown callee) with a0=([[[a0+2624]+8]+12] + [a0+2624]), a1=0x3, a2=?, a3=[a0+2624].
  The `jal` at 0x1001143c calls __dt__25StcombineMainFrameClassUIGv [0x10014630] with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10011458 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100113a8 targets 0x10011460, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x100113c4 targets 0x100113e8, is taken when a3(=[a0+2616]) == 0, and falls through when a3(=[a0+2616]) != 0.
  The `beq` branch at 0x100113ec targets 0x10011410, is taken when a3(=[a0+2620]) == 0, and falls through when a3(=[a0+2620]) != 0.
  The `beq` branch at 0x10011414 targets 0x1001143c, is taken when a3(=[a0+2624]) == 0, and falls through when a3(=[a0+2624]) != 0.
  The `beq` branch at 0x1001144c targets 0x10011464, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10011468 has v0 = one of ret(__dt__25StcombineMainFrameClassUIGv), ?.

- `className__23StcombineMainFrameClassGv` in `usr/gfx/sgcombine` at 0x10011470 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10011470-0x10011488 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1001147c loads 4 bytes from abs 0x10032930.
  The return at 0x10011480 has v0 = 0x1002c3c0.

- `doEditUserHardwareButton__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10011490 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10011490-0x100114d0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10011490 loads 4 bytes from a0 (arg0 at entry) +0xa40.
  The `lw` at 0x1001149c loads 4 bytes from [a0+2624] +0x8.
  The `lw` at 0x100114ac loads 4 bytes from [[a0+2624]+8] +0x2c.
  The `lw` at 0x100114b0 loads 4 bytes from [[a0+2624]+8] +0x24.
  The `jalr` at 0x100114b8 calls (unknown callee) with a0=([[[a0+2624]+8]+36] + [a0+2624]), a1=[a0+2624], a2=0x29450, a3=a3 at entry (arg3).
  The return at 0x100114c8 has v0 = ret(?).

- `doTilingPropertiesButton__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100114d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100114d0-0x10011510 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x100114d0 loads 4 bytes from a0 (arg0 at entry) +0xa38.
  The `lw` at 0x100114dc loads 4 bytes from [a0+2616] +0x8.
  The `lw` at 0x100114ec loads 4 bytes from [[a0+2616]+8] +0x2c.
  The `lw` at 0x100114f0 loads 4 bytes from [[a0+2616]+8] +0x24.
  The `jalr` at 0x100114f8 calls (unknown callee) with a0=([[[a0+2616]+8]+36] + [a0+2616]), a1=[a0+2616], a2=0x29410, a3=a3 at entry (arg3).
  The return at 0x10011508 has v0 = ret(?).

- `doVideoPropertiesButton__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10011510 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10011510-0x10011550 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10011510 loads 4 bytes from a0 (arg0 at entry) +0xa3c.
  The `lw` at 0x1001151c loads 4 bytes from [a0+2620] +0x8.
  The `lw` at 0x1001152c loads 4 bytes from [[a0+2620]+8] +0x2c.
  The `lw` at 0x10011530 loads 4 bytes from [[a0+2620]+8] +0x24.
  The `jalr` at 0x10011538 calls (unknown callee) with a0=([[[a0+2620]+8]+36] + [a0+2620]), a1=[a0+2620], a2=0x293d0, a3=a3 at entry (arg3).
  The return at 0x10011548 has v0 = ret(?).

- `newFile__23StcombineMainFrameClassGv` in `usr/gfx/sgcombine` at 0x10011550 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10011550-0x1001162c (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0x100115ac loads 4 bytes from ret(getTheWarningDialog__Gv) +0x8.
  The `lw` at 0x100115c0 loads 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x110.
  The `lw` at 0x100115cc loads 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x108.
  The `sb` at 0x10011628 stores 1 byte to sym(work_order) +0x108.
  The `jalr` at 0x10011574 calls bcmp with a0=a0+2648, a1=sym(combination), a2=0x1500, a3=a3 at entry (arg3).
  The `jalr` at 0x10011588 calls getTheWarningDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10011598 calls setTitle__15VkDialogManagerGPCc with a0=ret(getTheWarningDialog__Gv), a1=0x10033430, a2=?, a3=?.
  The `jalr` at 0x100115a4 calls getTheWarningDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100115d8 calls (unknown callee) with a0=([[ret(getTheWarningDialog__Gv)+8]+264] + ret(getTheWarningDialog__Gv)), a1=0x1002c3d8, a2=0x1, a3=0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10011600 calls bzero with a0=sym(combination), a1=0x1500, a2=?, a3=?.
  The `jal` at 0x1001160c calls vfcInitCmpCombination [0x1001f0c0] with a0=sym(combination), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1001157c targets 0x100115fc, is taken when v0(=ret(bcmp)) == 0, and falls through when v0(=ret(bcmp)) != 0.
  The `beq` branch at 0x100115e4 targets 0x100115f8, is taken when v0(=ret(?)) == a1(=0x1), and falls through when v0(=ret(?)) != a1(=0x1).
  The return at 0x100115f0 has v0 = ret(?).
  The return at 0x10011624 has v0 = ret(vfcInitCmpCombination).

- `openFile__23StcombineMainFrameClassGPCc` in `usr/gfx/sgcombine` at 0x10011630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10011630-0x100116d8 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x10011674 loads 4 bytes from ret(getTheErrorDialog__Gv) +0x8.
  The `lw` at 0x10011688 loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110.
  The `lw` at 0x10011694 loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108.
  The `lw` at 0x100116c4 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `jal` at 0x1001165c calls vfmtReadCmp1Combination [0x10021c20] with a0=a1 at entry (arg1), a1=sym(combination), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001166c calls getTheErrorDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100116a0 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=0x1002c428, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x100116b0 calls loadCmpFormat__23StcombineMainFrameClassGPCc [0x10011d40] with a0=a0 at entry (arg0), a1=sym(combination), a2=?, a3=?.
  The `jal` at 0x100116c0 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x10011664 targets 0x100116a8, is taken when v0(=ret(vfmtReadCmp1Combination)) == 0, and falls through when v0(=ret(vfmtReadCmp1Combination)) != 0.
  The return at 0x100116d0 has v0 = ret(update__20StcombineWindowClassGv).

- `save__23StcombineMainFrameClassGv` in `usr/gfx/sgcombine` at 0x100116e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100116e0-0x10011988 (680 bytes).
  It occupies 680 bytes.
  The `lbu` at 0x100116fc loads 1 byte from a0 (arg0 at entry) +0xdc.
  The `lw` at 0x10011744 loads 4 bytes from ret(getTheErrorDialog__Gv) +0x8.
  The `lw` at 0x10011758 loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110.
  The `lw` at 0x10011764 loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108.
  8 such `ld` accesses load 8 bytes from ?, including `ld` at 0x100117d8, `ld` at 0x100117e8, `ld` at 0x100117f8.
  8 such `sd` accesses store 8 bytes to ?, including `sd` at 0x100117e0, `sd` at 0x100117f0, `sd` at 0x10011800.
  The `lw` at 0x1001191c loads 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x8.
  The `lw` at 0x10011930 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x110.
  The `lw` at 0x1001193c loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x108.
  The `lw` at 0x10011968 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1001196c loads 4 bytes from [a0+8] +0x1dc.
  The `lw` at 0x10011970 loads 4 bytes from [a0+8] +0x1d4.
  The `lw` at 0x10011974 loads 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x54.
  The `jal` at 0x1001172c calls vfmtWriteCmp1Combination [0x10023450] with a0=a0+220, a1=sym(combination), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001173c calls getTheErrorDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10011770 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=0x1002c4a0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10011890 calls getenv with a0=0x1002c440, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100118b0 calls sprintf with a0=sp-1104, a1=0x1002c450, a2=?, a3=?.
  The `jalr` at 0x100118bc calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100118d0 calls setTitle__15VkDialogManagerGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=0x1002c470, a2=?, a3=?.
  The `jalr` at 0x100118dc calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100118ec calls setDirectory__21VkFileSelectionDialogGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=sp-1104, a2=?, a3=?.
  The `jalr` at 0x100118f8 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10011908 calls setFilterPattern__21VkFileSelectionDialogGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=0x10033440, a2=?, a3=?.
  The `jalr` at 0x10011914 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10011948 calls (unknown callee) with a0=([[ret(getTheFileSelectionDialog__Gv)+8]+264] + ret(getTheFileSelectionDialog__Gv)), a1=0x1002c488, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10011960 calls getTheFileSelectionDialog__Gv with a0=?, a1=0x1, a2=?, a3=?.
  The `jalr` at 0x10011978 calls (unknown callee) with a0=([[a0+8]+468] + a0), a1=[ret(getTheFileSelectionDialog__Gv)+84], a2=?, a3=?.
  The `beq` branch at 0x10011718 targets 0x10011888, is taken when at(=[a0+220]:1) == 0, and falls through when at(=[a0+220]:1) != 0.
  The `beq` branch at 0x10011734 targets 0x10011778, is taken when v0(=ret(vfmtWriteCmp1Combination)) == 0, and falls through when v0(=ret(vfmtWriteCmp1Combination)) != 0.
  The `bgtz` branch at 0x10011854 targets 0x100117d0, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `bne` branch at 0x10011898 targets 0x100118a4, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `bne` branch at 0x10011954 targets 0x10011860, is taken when v0(=ret(?)) != a1(=0x1), and falls through when v0(=ret(?)) == a1(=0x1).
  The `beq` branch at 0x10011980 targets 0x10011860 and is always taken.
  The return at 0x10011880 has v0 = one of ?, ret(?).

- `saveas__23StcombineMainFrameClassGPCc` in `usr/gfx/sgcombine` at 0x10011990 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10011990-0x10011a70 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0x100119f4 loads 4 bytes from ret(getTheWarningDialog__Gv) +0x8.
  The `lw` at 0x10011a08 loads 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x110.
  The `lw` at 0x10011a14 loads 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x108.
  The `lw` at 0x10011a48 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x10011a4c loads 4 bytes from [a0+8] +0x1d0.
  The `lw` at 0x10011a50 loads 4 bytes from [a0+8] +0x1c8.
  The `jal` at 0x100119c0 calls vfmtReadCmp1Combination [0x10021c20] with a0=a1 at entry (arg1), a1=sp-5408, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100119d0 calls getTheWarningDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100119e0 calls setTitle__15VkDialogManagerGPCc with a0=ret(getTheWarningDialog__Gv), a1=0x10033430, a2=?, a3=?.
  The `jalr` at 0x100119ec calls getTheWarningDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10011a20 calls (unknown callee) with a0=([[ret(getTheWarningDialog__Gv)+8]+264] + ret(getTheWarningDialog__Gv)), a1=0x1002c4b8, a2=0x1, a3=0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10011a40 calls strncpy with a0=a0+220, a1=a1 at entry (arg1), a2=0xff, a3=?.
  The `jalr` at 0x10011a54 calls (unknown callee) with a0=([[a0+8]+456] + a0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x100119c8 targets 0x10011a34, is taken when v0(=ret(vfmtReadCmp1Combination)) != 0, and falls through when v0(=ret(vfmtReadCmp1Combination)) == 0.
  The `bne` branch at 0x10011a2c targets 0x10011a60, is taken when v0(=ret(?)) != a1(=0x1), and falls through when v0(=ret(?)) == a1(=0x1).
  The return at 0x10011a68 has v0 = ret(?).

- `setUseCurrentHardwareTarget__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10011a70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10011a70-0x10011a7c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0x10011a78 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The return at 0x10011a74 has v0 = ?.

- `setUserDefinedHardwareTargetButton__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10011a80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10011a80-0x10011a8c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0x10011a88 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The return at 0x10011a84 has v0 = ?.

- `update__23StcombineMainFrameClassGv` in `usr/gfx/sgcombine` at 0x10011a90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10011a90-0x10011d3c (684 bytes).
  It occupies 684 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9c, including `lw` at 0x10011adc, `lw` at 0x10011b14, `lw` at 0x10011b30.
  The `lw` at 0x10011af4 loads 4 bytes from a0 (arg0 at entry) +0x34.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x10011b2c, `lw` at 0x10011b44, `lw` at 0x10011cc4.
  The `lw` at 0x10011b48 loads 4 bytes from a0 (arg0 at entry) +0xcc.
  The `lw` at 0x10011b4c loads 4 bytes from sym(combination) +0x354.
  The `lw` at 0x10011b64 loads 4 bytes from a0 (arg0 at entry) +0xd0.
  The `swc1` at 0x10011b68 stores 4 bytes to a0 (arg0 at entry) +0xd4.
  The `lw` at 0x10011b6c loads 4 bytes from sym(combination) +0x358.
  The `swc1` at 0x10011b84 stores 4 bytes to a0 (arg0 at entry) +0xd8.
  The `lbu` at 0x10011b88 loads 1 byte from sym(combination) +0x0.
  The `lw` at 0x10011b90 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x10011bb8 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lw` at 0x10011bd4 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  3 such `lw` accesses load 4 bytes from sym(combination) +0x308, including `lw` at 0x10011be8, `lw` at 0x10011c1c, `lw` at 0x10011c50.
  The `lw` at 0x10011bf4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lbu` at 0x10011c08 loads 1 byte from ?.
  The `lw` at 0x10011c40 loads 4 bytes from sym(combination) +0x30c.
  The `lw` at 0x10011c48 loads 4 bytes from a0 (arg0 at entry) +0x68.
  The `lw` at 0x10011c58 loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `lw` at 0x10011c64 loads 4 bytes from a0 (arg0 at entry) +0xa38.
  The `lw` at 0x10011c70 loads 4 bytes from a0 (arg0 at entry) +0xa3c.
  The `lw` at 0x10011c84 loads 4 bytes from a0 (arg0 at entry) +0xa40.
  The `jal` at 0x10011ab4 calls clamp_tiling__23StcombineMainFrameClassGv [0x10013a40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10011ac4 calls update_fast__23StcombineMainFrameClassGv [0x10013a00] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10011ae4 calls vfmtIsCmpCombinationValidForTarget [0x1001f590] with a0=sym(combination), a1=[a0+156], a2=sp-304, a3=0x100.
  The `jal` at 0x10011afc calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+52], a1=?, a2=?, a3=?.
  The `jal` at 0x10011b0c calls __as__9EZWrapperGPCc [0x10027fe0] with a0=ret(EZ__GP10_WidgetRec), a1=0x10033448, a2=?, a3=?.
  The `jalr` at 0x10011b28 calls XtSetSensitive with a0=[a0+44], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x10011b40 calls XtSetSensitive with a0=[a0+44], a1=0x0, a2=?, a3=?.
  The `jal` at 0x10011b98 calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+36], a1=[sym(combination)+856], a2=[a0+204], a3=[sym(combination)+852].
  The `jal` at 0x10011ba8 calls __as__9EZWrapperGPCc [0x10027fe0] with a0=ret(EZ__GP10_WidgetRec), a1=sym(combination), a2=?, a3=?.
  The `jal` at 0x10011bb4 calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+60], a1=?, a2=?, a3=?.
  The `jal` at 0x10011bc4 calls __as__9EZWrapperGPCc [0x10027fe0] with a0=ret(EZ__GP10_WidgetRec), a1=sym(combination)+510, a2=?, a3=?.
  The `jal` at 0x10011bd0 calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+76], a1=?, a2=?, a3=?.
  The `jal` at 0x10011be0 calls __as__9EZWrapperGPCc [0x10027fe0] with a0=ret(EZ__GP10_WidgetRec), a1=sym(combination)+255, a2=?, a3=?.
  The `jal` at 0x10011c14 calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+96], a1=[sym(combination)+776], a2=?, a3=?.
  The `jal` at 0x10011c34 calls __as__9EZWrapperGPCc [0x10027fe0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=[sym(combination)+776], a3=?.
  The `jalr` at 0x10011c44 calls set__12VkOptionMenuGi with a0=[a0+104], a1=[sym(combination)+780], a2=?, a3=?.
  The `jalr` at 0x10011c54 calls set__12VkOptionMenuGi with a0=[a0+100], a1=[sym(combination)+776], a2=?, a3=?.
  The `jal` at 0x10011c60 calls update__27TilingPropertiesWindowClassGv [0x1001c430] with a0=[a0+2616], a1=?, a2=?, a3=?.
  The `jal` at 0x10011c6c calls update__26VideoPropertiesWindowClassGv [0x1001e190] with a0=[a0+2620], a1=?, a2=?, a3=?.
  The `jal` at 0x10011c80 calls update__27TargetPropertiesWindowClassGv [0x10017bf0] with a0=[a0+2624], a1=?, a2=?, a3=?.
  The `jal` at 0x10011ca0 calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+52], a1=?, a2=?, a3=?.
  The `jal` at 0x10011cb0 calls __as__9EZWrapperGPCc [0x10027fe0] with a0=ret(EZ__GP10_WidgetRec), a1=sp-304, a2=?, a3=?.
  The `jalr` at 0x10011cc0 calls XtSetSensitive with a0=[a0+44], a1=0x0, a2=?, a3=?.
  The `jal` at 0x10011cd4 calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+36], a1=[sym(combination)+856], a2=[a0+204], a3=[sym(combination)+852].
  The `jal` at 0x10011ce4 calls __as__9EZWrapperGPCc [0x10027fe0] with a0=ret(EZ__GP10_WidgetRec), a1=0x10033450, a2=?, a3=?.
  The `jal` at 0x10011cf8 calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+96], a1=[sym(combination)+776], a2=?, a3=?.
  The `jal` at 0x10011d08 calls __as__9EZWrapperGPCc [0x10027fe0] with a0=ret(EZ__GP10_WidgetRec), a1=0x10033438, a2=?, a3=?.
  The `jal` at 0x10011d1c calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+96], a1=[sym(combination)+776], a2=?, a3=?.
  The `jal` at 0x10011d2c calls __as__9EZWrapperGPCc [0x10027fe0] with a0=ret(EZ__GP10_WidgetRec), a1=0x10033438, a2=?, a3=?.
  The `beq` branch at 0x10011af0 targets 0x10011c9c, is taken when v0(=ret(vfmtIsCmpCombinationValidForTarget)) == 0, and falls through when v0(=ret(vfmtIsCmpCombinationValidForTarget)) != 0.
  The `bne` branch at 0x10011b18 targets 0x10011b3c, is taken when v0(=[a0+156]) != s2(=a0+172), and falls through when v0(=[a0+156]) == s2(=a0+172).
  The `beq` branch at 0x10011b34 targets 0x10011b48, is taken when a0(=[a0+156]) == s2(=a0+172), and falls through when a0(=[a0+156]) != s2(=a0+172).
  The `beq` branch at 0x10011b8c targets 0x10011cd0, is taken when v1(=[sym(combination)]:1) == 0, and falls through when v1(=[sym(combination)]:1) != 0.
  The `bne` branch at 0x10011bf0 targets 0x10011d18, is taken when a1(=[sym(combination)+776]) < 0x2 (signed), and falls through when a1(=[sym(combination)+776]) >= 0x2 (signed).
  The `beq` branch at 0x10011c0c targets 0x10011cf4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x10011cc8 targets 0x10011b34 and is always taken.
  The `beq` branch at 0x10011cec targets 0x10011bb4 and is always taken.
  The `beq` branch at 0x10011d10 targets 0x10011c40 and is always taken.
  The `beq` branch at 0x10011d34 targets 0x10011c40 and is always taken.
  The return at 0x10011c94 has v0 = ret(update__27TargetPropertiesWindowClassGv).

- `loadCmpFormat__23StcombineMainFrameClassGPCc` in `usr/gfx/sgcombine` at 0x10011d40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10011d40-0x10011f88 (584 bytes).
  It occupies 584 bytes.
  The `lw` at 0x10011e1c loads 4 bytes from a0 (arg0 at entry) +0x6cc.
  The `lbu` at 0x10011e20 loads 1 byte from sym(combination) +0x1fe.
  The `sw` at 0x10011e24 stores 4 bytes to sym(combination) +0x358.
  The `lw` at 0x10011e28 loads 4 bytes from a0 (arg0 at entry) +0x6d0.
  The `sw` at 0x10011e30 stores 4 bytes to sym(combination) +0x354.
  The `lbu` at 0x10011e34 loads 1 byte from sym(combination) +0xff.
  The `lw` at 0x10011e4c loads 4 bytes from sym(work_order) +0x70c.
  The `sb` at 0x10011eb8 stores 1 byte to sym(combination) +0xff.
  The `jalr` at 0x10011d70 calls getenv with a0=0x1002c440, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10011d98 calls sprintf with a0=sp-560, a1=0x1002c4f8, a2=?, a3=a1 at entry (arg1).
  The `jal` at 0x10011da8 calls vfmtReadCmp1Format [0x10021650] with a0=sp-560, a1=a0+1248, a2=?, a3=?.
  The `jalr` at 0x10011dc8 calls sprintf with a0=sp-304, a1=0x1002c520, a2=sp-560, a3=?.
  The `jalr` at 0x10011dfc calls strcpy with a0=sym(combination), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x10011e10 calls vfmtReadCmp1Format [0x10021650] with a0=sp-560, a1=sym(combination)+2256, a2=?, a3=?.
  The `jalr` at 0x10011e80 calls sprintf with a0=sp-560, a1=0x1002c560, a2=?, a3=a1 at entry (arg1), a5=[sym(combination)+255]:1, a6=0x1.
  The `jal` at 0x10011e98 calls vfmtReadCmp1SG2Format [0x100219b0] with a0=sp-560, a1=sym(combination)+888, a2=?, a3=?.
  The `jalr` at 0x10011eb4 calls bzero with a0=sym(combination)+888, a1=0x558, a2=?, a3=?.
  The `jal` at 0x10011ec0 calls setInitialTiling__23StcombineMainFrameClassGv [0x10014100] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10011ed8 calls sprintf with a0=sp-304, a1=0x1002c580, a2=[sym(work_order)+1804], a3=0x2, a5=[sym(combination)+255]:1, a6=0x1.
  The `jalr` at 0x10011f1c calls sprintf with a0=sp-560, a1=0x1002c540, a2=?, a3=a1 at entry (arg1), a5=[sym(combination)+255]:1, a6=0x1.
  The `jal` at 0x10011f34 calls vfmtReadCmp1OdyFormat [0x10021870] with a0=sp-560, a1=sym(combination)+888, a2=?, a3=?.
  The `jalr` at 0x10011f50 calls strcpy with a0=sym(combination)+255, a1=sym(combination), a2=?, a3=?.
  The `jalr` at 0x10011f70 calls strcpy with a0=sym(combination)+510, a1=sym(combination), a2=[a0+1744], a3=[sym(combination)+510]:1, a4=[a0+1740].
  The `beq` branch at 0x10011d78 targets 0x10011dec, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x10011db0 targets 0x10011df4, is taken when v0(=ret(vfmtReadCmp1Format)) == 0, and falls through when v0(=ret(vfmtReadCmp1Format)) != 0.
  The `beq` branch at 0x10011dec targets 0x10011d88 and is always taken.
  The `beq` branch at 0x10011e2c targets 0x10011f68, is taken when a3(=[sym(combination)+510]:1) == 0, and falls through when a3(=[sym(combination)+510]:1) != 0.
  The `bne` branch at 0x10011e48 targets 0x10011ebc, is taken when a5(=[sym(combination)+255]:1) != 0, and falls through when a5(=[sym(combination)+255]:1) == 0.
  The `beq` branch at 0x10011e54 targets 0x10011efc, is taken when a2(=[sym(work_order)+1804]) == a6(=0x1), and falls through when a2(=[sym(work_order)+1804]) != a6(=0x1).
  The `bne` branch at 0x10011e5c targets 0x10011ed0, is taken when a2(=[sym(work_order)+1804]) != a3(=0x2), and falls through when a2(=[sym(work_order)+1804]) == a3(=0x2).
  The `beq` branch at 0x10011e64 targets 0x10011f60, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x10011ea0 targets 0x10011f44, is taken when v0(=ret(vfmtReadCmp1SG2Format)) == 0, and falls through when v0(=ret(vfmtReadCmp1SG2Format)) != 0.
  The `beq` branch at 0x10011ec8 targets 0x10011dd4 and is always taken.
  The `beq` branch at 0x10011f00 targets 0x10011f80, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x10011f3c targets 0x10011ea8, is taken when v0(=ret(vfmtReadCmp1OdyFormat)) != 0, and falls through when v0(=ret(vfmtReadCmp1OdyFormat)) == 0.
  The `beq` branch at 0x10011f58 targets 0x10011ec0 and is always taken.
  The `beq` branch at 0x10011f60 targets 0x10011e6c and is always taken.
  The `beq` branch at 0x10011f78 targets 0x10011e34 and is always taken.
  The `beq` branch at 0x10011f80 targets 0x10011f08 and is always taken.
  The return at 0x10011de4 has v0 = ?.
  The return at 0x10011ef4 has v0 = 0x3.

- `loadOdyFormat__23StcombineMainFrameClassGPCc` in `usr/gfx/sgcombine` at 0x10011f90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10011f90-0x1001211c (396 bytes).
  It occupies 396 bytes.
  The `lw` at 0x10011fc0 loads 4 bytes from sym(work_order) +0x70c.
  The `jalr` at 0x10011fb4 calls getenv with a0=0x1002c440, a1=a1 at entry (arg1), a2=0x28950, a3=a3 at entry (arg3).
  The `jalr` at 0x10012028 calls sprintf with a0=sp-1920, a1=0x1002c560, a2=?, a3=a1 at entry (arg1), a5=[sym(work_order)+1804], a6=0x2.
  The `jal` at 0x10012038 calls vfmtReadCmp1SG2Format [0x100219b0] with a0=sp-1920, a1=sp-1664, a2=?, a3=?.
  The `jalr` at 0x10012064 calls sprintf with a0=sp-296, a1=0x1002c520, a2=sp-1920, a3=?.
  The `jalr` at 0x10012094 calls sprintf with a0=sp-1920, a1=0x1002c540, a2=?, a3=a1 at entry (arg1), a5=[sym(work_order)+1804], a6=0x2.
  The `jal` at 0x100120a4 calls vfmtReadCmp1OdyFormat [0x10021870] with a0=sp-1920, a1=sp-1664, a2=?, a3=?.
  The `jal` at 0x100120c4 calls vfmtReadCmp1OdyFormat [0x10021870] with a0=sp-1920, a1=sym(combination)+888, a2=?, a3=?.
  The `jalr` at 0x100120d8 calls strcpy with a0=sym(combination)+255, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x100120f8 calls vfmtReadCmp1SG2Format [0x100219b0] with a0=sp-1920, a1=sym(combination)+888, a2=?, a3=?.
  The `jalr` at 0x1001210c calls strcpy with a0=sym(combination)+255, a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0x10011fcc targets 0x10012074, is taken when a5(=[sym(work_order)+1804]) == a3(=0x1), and falls through when a5(=[sym(work_order)+1804]) != a3(=0x1).
  The `bne` branch at 0x10011fd4 targets 0x10011fec, is taken when a5(=[sym(work_order)+1804]) != a6(=0x2), and falls through when a5(=[sym(work_order)+1804]) == a6(=0x2).
  The `bne` branch at 0x10011fdc targets 0x10012014, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `beq` branch at 0x10011fe4 targets 0x10012010 and is always taken.
  The `beq` branch at 0x10012040 targets 0x100120e8, is taken when v0(=ret(vfmtReadCmp1SG2Format)) == 0, and falls through when v0(=ret(vfmtReadCmp1SG2Format)) != 0.
  The `beq` branch at 0x10012048 targets 0x10012000, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1001206c targets 0x10011ffc and is always taken.
  The `bne` branch at 0x10012074 targets 0x10012080, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `bne` branch at 0x100120ac targets 0x10012048, is taken when v0(=ret(vfmtReadCmp1OdyFormat)) != 0, and falls through when v0(=ret(vfmtReadCmp1OdyFormat)) == 0.
  The `beq` branch at 0x100120e0 targets 0x10012048 and is always taken.
  The `beq` branch at 0x10012114 targets 0x10012048 and is always taken.
  The return at 0x10011ff4 has v0 = 0x0.
  The return at 0x10012008 has v0 = ?.

- `loadSyncFormat__23StcombineMainFrameClassGPCc` in `usr/gfx/sgcombine` at 0x10012120 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10012120-0x10012214 (244 bytes).
  It occupies 244 bytes.
  The `lbu` at 0x100121f4 loads 1 byte from sym(combination) +0xff.
  The `jalr` at 0x1001214c calls getenv with a0=0x1002c440, a1=a1 at entry (arg1), a2=0x287c0, a3=a3 at entry (arg3).
  The `jalr` at 0x10012174 calls sprintf with a0=sp-1920, a1=0x1002c4f8, a2=?, a3=a1 at entry (arg1).
  The `jal` at 0x10012184 calls vfmtReadCmp1Format [0x10021650] with a0=sp-1920, a1=sp-1664, a2=?, a3=?.
  The `jalr` at 0x100121a4 calls sprintf with a0=sp-296, a1=0x1002c520, a2=sp-1920, a3=?.
  The `jal` at 0x100121d4 calls vfmtReadCmp1OdyFormat [0x10021870] with a0=sp-1920, a1=sym(combination)+3624, a2=?, a3=?.
  The `jalr` at 0x100121e8 calls strcpy with a0=sym(combination)+510, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x10012204 calls strcpy with a0=sym(combination)+255, a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0x10012154 targets 0x10012160, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `beq` branch at 0x1001218c targets 0x100121c8, is taken when v0(=ret(vfmtReadCmp1Format)) == 0, and falls through when v0(=ret(vfmtReadCmp1Format)) != 0.
  The `bne` branch at 0x100121f8 targets 0x100121ac, is taken when a1(=[sym(combination)+255]:1) != 0, and falls through when a1(=[sym(combination)+255]:1) == 0.
  The `beq` branch at 0x1001220c targets 0x100121b0 and is always taken.
  The return at 0x100121c0 has v0 = ret(vfmtReadCmp1Format).

- `okToQuit__23StcombineMainFrameClassGv` in `usr/gfx/sgcombine` at 0x10012220 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10012220-0x10012228 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10012220 has v0 = 0x1.

- `doCmpFmtBrowseButton__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10012230 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10012230-0x10012354 (292 bytes).
  It occupies 292 bytes.
  5 such `lw` accesses load 4 bytes from sym(sffb) +0x0, including `lw` at 0x100122a8, `lw` at 0x100122b8, `lw` at 0x100122c8.
  The `lw` at 0x100122d0 loads 4 bytes from [sym(sffb)] +0x8.
  The `lw` at 0x100122e0 loads 4 bytes from [[sym(sffb)]+8] +0x110.
  The `lw` at 0x100122ec loads 4 bytes from [[sym(sffb)]+8] +0x108.
  The `lw` at 0x10012318 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `lw` at 0x10012338 loads 4 bytes from [sym(sffb)] +0x54.
  The `jalr` at 0x10012258 calls sprintf with a0=sp-1136, a1=0x1002c5a0, a2=0x286b0, a3=a3 at entry (arg3).
  The `jalr` at 0x10012268 calls getenv with a0=0x1002c440, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001228c calls sprintf with a0=sp-1056, a1=0x1002c5b8, a2=?, a3=?.
  The `jalr` at 0x100122a4 calls setTitle__15VkDialogManagerGPCc with a0=[sym(sffb)], a1=0x1002c5d8, a2=?, a3=?.
  The `jalr` at 0x100122b4 calls setDirectory__21VkFileSelectionDialogGPCc with a0=[sym(sffb)], a1=sp-1056, a2=?, a3=?.
  The `jalr` at 0x100122c4 calls setFilterPattern__21VkFileSelectionDialogGPCc with a0=[sym(sffb)], a1=0x10033458, a2=?, a3=?.
  The `jalr` at 0x100122f8 calls (unknown callee) with a0=([[[sym(sffb)]+8]+264] + [sym(sffb)]), a1=sp-1136, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x10012314 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=?, a3=?.
  The `jalr` at 0x10012334 calls basename with a0=[[sym(sffb)]+84], a1=0x1, a2=?, a3=?.
  The `jal` at 0x10012344 calls loadCmpFormat__23StcombineMainFrameClassGPCc [0x10011d40] with a0=a0 at entry (arg0), a1=ret(basename), a2=?, a3=?.
  The `bne` branch at 0x10012270 targets 0x1001227c, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `beq` branch at 0x10012304 targets 0x1001232c, is taken when v0(=ret(?)) == a1(=0x1), and falls through when v0(=ret(?)) != a1(=0x1).
  The `beq` branch at 0x1001234c targets 0x1001230c and is always taken.
  The return at 0x10012324 has v0 = ret(update__20StcombineWindowClassGv).

- `doDownloadButton__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10012360 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10012360-0x100125fc (668 bytes).
  It occupies 668 bytes.
  2 such `lw` accesses load 4 bytes from sym(work_order) +0x208, including `lw` at 0x10012420, `lw` at 0x10012528.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10012440, `lbu` at 0x1001254c.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x308, including `lw` at 0x10012444, `lw` at 0x10012550.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x304, including `sw` at 0x10012464, `sw` at 0x1001256c.
  2 such `lw` accesses load 4 bytes from ret(XOpenDisplay) +0x84, including `lw` at 0x10012480, `lw` at 0x10012588.
  The `lbu` at 0x100125f8 loads 1 byte from sym(work_order) +0x310.
  The `jalr` at 0x100123c0 calls basename with a0=ret(tempnam), a1=?, a2=?, a3=?.
  The `jalr` at 0x100123dc calls sprintf with a0=sp-1136, a1=0x1002c5e8, a2=?, a3=ret(basename).
  The `jalr` at 0x100123e8 calls free with a0=ret(tempnam), a1=?, a2=?, a3=?.
  The `jal` at 0x100123fc calls vfmtWriteCmp1Combination [0x10023450] with a0=sp-1136, a1=sym(combination), a2=?, a3=?.
  The `jalr` at 0x10012410 calls XSGIvcLoadVideoFormatCombination with a0=?, a1=[ret(XOpenDisplay)+132], a2=sp-1136, a3=?.
  The `jalr` at 0x1001241c calls XFlush with a0=[sym(work_order)+520], a1=?, a2=?, a3=?.
  The `jalr` at 0x10012428 calls unlink with a0=sp-1136, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001246c calls XOpenDisplay with a0=?, a1=?, a2=?, a3=?, a4=[sym(combination)+776]-2.
  The `jalr` at 0x10012484 calls getenv with a0=0x1002c440, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001249c calls tempnam with a0=sp-1136, a1=0x10033460, a2=?, a3=?.
  The `jalr` at 0x100124c8 calls basename with a0=ret(tempnam), a1=?, a2=?, a3=?.
  The `jalr` at 0x100124e4 calls sprintf with a0=sp-1136, a1=0x1002c5e8, a2=?, a3=ret(basename).
  The `jalr` at 0x100124f0 calls free with a0=ret(tempnam), a1=?, a2=?, a3=?.
  The `jal` at 0x10012504 calls vfmtWriteCmp1Combination [0x10023450] with a0=sp-1136, a1=sym(combination), a2=?, a3=?.
  The `jalr` at 0x10012518 calls XSGIvcLoadVideoFormatCombination with a0=?, a1=[ret(XOpenDisplay)+132], a2=sp-1136, a3=?.
  The `jalr` at 0x10012524 calls XFlush with a0=[sym(work_order)+520], a1=?, a2=?, a3=?.
  The `jalr` at 0x10012530 calls unlink with a0=sp-1136, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012574 calls XOpenDisplay with a0=?, a1=?, a2=?, a3=?, a4=[sym(combination)+776]-2, a5=0x1.
  The `jalr` at 0x1001258c calls getenv with a0=0x1002c440, a1=?, a2=?, a3=?.
  The `jalr` at 0x100125a4 calls tempnam with a0=sp-1136, a1=0x10033460, a2=?, a3=?.
  The `beq` branch at 0x100123b4 targets 0x10012440 and is always taken.
  The `beq` branch at 0x10012438 targets 0x100124b4, is taken when s0(?) == s6(=sym(work_order)+1020), and falls through when s0(?) != s6(=sym(work_order)+1020).
  The `beq` branch at 0x10012448 targets 0x10012430, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x10012454 targets 0x1001246c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x1001245c targets 0x10012430, is taken when s1(?) != a4(=[sym(combination)+776]-2), and falls through when s1(?) == a4(=[sym(combination)+776]-2).
  The `bne` branch at 0x100124a4 targets 0x100123bc, is taken when s5(=ret(getenv)) != 0, and falls through when s5(=ret(getenv)) == 0.
  The `beq` branch at 0x100124ac targets 0x100123bc and is always taken.
  The `beq` branch at 0x100124bc targets 0x100125f0 and is always taken.
  The `beq` branch at 0x10012544 targets 0x100125bc, is taken when s0(?) == s6(=sym(work_order)+1020), and falls through when s0(?) != s6(=sym(work_order)+1020).
  The `beq` branch at 0x10012554 targets 0x10012538, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x1001255c targets 0x10012570, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x10012564 targets 0x10012538, is taken when s1(?) == a4(=[sym(combination)+776]-2), and falls through when s1(?) != a4(=[sym(combination)+776]-2).
  The `bne` branch at 0x100125ac targets 0x100124c4, is taken when s5(=ret(getenv)) != 0, and falls through when s5(=ret(getenv)) == 0.
  The `beq` branch at 0x100125b4 targets 0x100124c4 and is always taken.
  The `beq` branch at 0x100125f4 targets 0x10012550 and is always taken.
  The return at 0x100125e8 has v0 = ?.

- `doExternalBrowseButton__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10012600 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10012600-0x10012724 (292 bytes).
  It occupies 292 bytes.
  5 such `lw` accesses load 4 bytes from sym(sffb) +0x0, including `lw` at 0x10012678, `lw` at 0x10012688, `lw` at 0x10012698.
  The `lw` at 0x100126a0 loads 4 bytes from [sym(sffb)] +0x8.
  The `lw` at 0x100126b0 loads 4 bytes from [[sym(sffb)]+8] +0x110.
  The `lw` at 0x100126bc loads 4 bytes from [[sym(sffb)]+8] +0x108.
  The `lw` at 0x100126ec loads 4 bytes from sym(stcombineWindow) +0x0.
  The `lw` at 0x10012708 loads 4 bytes from [sym(sffb)] +0x54.
  The `jalr` at 0x10012628 calls sprintf with a0=sp-1136, a1=0x1002c5a0, a2=0x282e0, a3=a3 at entry (arg3).
  The `jalr` at 0x10012638 calls getenv with a0=0x1002c440, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001265c calls sprintf with a0=sp-1056, a1=0x1002c5b8, a2=?, a3=?.
  The `jalr` at 0x10012674 calls setTitle__15VkDialogManagerGPCc with a0=[sym(sffb)], a1=0x1002c5d8, a2=?, a3=?.
  The `jalr` at 0x10012684 calls setDirectory__21VkFileSelectionDialogGPCc with a0=[sym(sffb)], a1=sp-1056, a2=?, a3=?.
  The `jalr` at 0x10012694 calls setFilterPattern__21VkFileSelectionDialogGPCc with a0=[sym(sffb)], a1=0x10033458, a2=?, a3=?.
  The `jalr` at 0x100126c8 calls (unknown callee) with a0=([[[sym(sffb)]+8]+264] + [sym(sffb)]), a1=sp-1136, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x100126e8 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=?, a3=?.
  The `jalr` at 0x10012704 calls basename with a0=[[sym(sffb)]+84], a1=0x1, a2=?, a3=?.
  The `jal` at 0x10012714 calls loadSyncFormat__23StcombineMainFrameClassGPCc [0x10012120] with a0=a0 at entry (arg0), a1=ret(basename), a2=?, a3=?.
  The `bne` branch at 0x10012640 targets 0x1001264c, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `beq` branch at 0x100126d4 targets 0x10012700, is taken when v0(=ret(?)) == a1(=0x1), and falls through when v0(=ret(?)) != a1(=0x1).
  The `beq` branch at 0x1001271c targets 0x100126e0 and is always taken.
  The return at 0x100126f8 has v0 = ret(update__20StcombineWindowClassGv).

- `doOdsyBrowseButton__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10012730 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10012730-0x100128b4 (388 bytes).
  It occupies 388 bytes.
  The `lw` at 0x10012774 loads 4 bytes from sym(work_order) +0x70c.
  7 such `lw` accesses load 4 bytes from sym(sffb) +0x0, including `lw` at 0x100127dc, `lw` at 0x100127ec, `lw` at 0x100127fc.
  The `lw` at 0x10012814 loads 4 bytes from [sym(sffb)] +0x8.
  The `lw` at 0x10012824 loads 4 bytes from [[sym(sffb)]+8] +0x110.
  The `lw` at 0x10012830 loads 4 bytes from [[sym(sffb)]+8] +0x108.
  The `lw` at 0x10012870 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `lw` at 0x10012898 loads 4 bytes from [sym(sffb)] +0x54.
  The `jalr` at 0x10012758 calls sprintf with a0=sp-1136, a1=0x1002c5a0, a2=0x281b0, a3=a3 at entry (arg3).
  The `jalr` at 0x10012768 calls getenv with a0=0x1002c440, a1=?, a2=?, a3=?.
  The `jalr` at 0x100127c0 calls sprintf with a0=sp-1056, a1=0x10033468, a2=?, a3=one of 0x1002c610, 0x1002c630, 0x1002c650, a4=0x2.
  The `jalr` at 0x100127d8 calls setTitle__15VkDialogManagerGPCc with a0=[sym(sffb)], a1=0x1002c5d8, a2=?, a3=?.
  The `jalr` at 0x100127e8 calls setDirectory__21VkFileSelectionDialogGPCc with a0=[sym(sffb)], a1=sp-1056, a2=?, a3=?.
  The `jalr` at 0x100127f8 calls setFilterPattern__21VkFileSelectionDialogGPCc with a0=[sym(sffb)], a1=0x10033458, a2=?, a3=?.
  The `jal` at 0x10012808 calls odsy_fmt__22SmallFormatFileBrowserGi [0x10010270] with a0=[sym(sffb)], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1001283c calls (unknown callee) with a0=([[[sym(sffb)]+8]+264] + [sym(sffb)]), a1=sp-1136, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x10012858 calls odsy_fmt__22SmallFormatFileBrowserGi [0x10010270] with a0=[sym(sffb)], a1=0x0, a2=?, a3=?.
  The `jal` at 0x1001286c calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=?, a3=?.
  The `jalr` at 0x10012894 calls basename with a0=[[sym(sffb)]+84], a1=0x1, a2=?, a3=?.
  The `jal` at 0x100128a4 calls loadOdyFormat__23StcombineMainFrameClassGPCc [0x10011f90] with a0=a0 at entry (arg0), a1=ret(basename), a2=?, a3=?.
  The `beq` branch at 0x10012780 targets 0x100127a4, is taken when a3(=[sym(work_order)+1804]) == a1(=0x1), and falls through when a3(=[sym(work_order)+1804]) != a1(=0x1).
  The `beq` branch at 0x10012788 targets 0x10012884, is taken when a3(=[sym(work_order)+1804]) == a4(=0x2), and falls through when a3(=[sym(work_order)+1804]) != a4(=0x2).
  The `beq` branch at 0x10012794 targets 0x100127b0, is taken when a2(=ret(getenv)) == 0, and falls through when a2(=ret(getenv)) != 0.
  The `beq` branch at 0x1001279c targets 0x100127b8 and is always taken.
  The `bne` branch at 0x100127a8 targets 0x1001279c, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `beq` branch at 0x10012848 targets 0x10012890, is taken when v0(=ret(?)) == a1(=0x1), and falls through when v0(=ret(?)) != a1(=0x1).
  The `beq` branch at 0x10012888 targets 0x10012794 and is always taken.
  The `beq` branch at 0x100128ac targets 0x10012854 and is always taken.
  The return at 0x1001287c has v0 = ret(update__20StcombineWindowClassGv).

- `doSyncSrcExternalButton__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100128c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100128c0-0x1001290c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x100128e0 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x100128ec stores 4 bytes to sym(combination) +0x304.
  The `sw` at 0x100128f0 stores 4 bytes to sym(combination) +0x308.
  The `sw` at 0x100128f8 stores 4 bytes to sym(combination) +0x300.
  The `jal` at 0x100128f4 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x28020, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10012904 has v0 = ret(update__20StcombineWindowClassGv).

- `doSyncSrcInternalButton__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10012910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10012910-0x1001295c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x10012930 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x1001293c stores 4 bytes to sym(combination) +0x304.
  The `sw` at 0x10012940 stores 4 bytes to sym(combination) +0x308.
  The `sw` at 0x10012948 stores 4 bytes to sym(combination) +0x300.
  The `jal` at 0x10012944 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x27fd0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10012954 has v0 = ret(update__20StcombineWindowClassGv).

- `doSyncSrcPipe0Button__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10012960 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10012960-0x100129b0 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x10012980 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x1001298c stores 4 bytes to sym(combination) +0x304.
  The `sw` at 0x10012994 stores 4 bytes to sym(combination) +0x300.
  The `sw` at 0x1001299c stores 4 bytes to sym(combination) +0x308.
  The `jal` at 0x10012998 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x27f80, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100129a8 has v0 = ret(update__20StcombineWindowClassGv).

- `doSyncSrcPipe1Button__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100129b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100129b0-0x10012a04 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x100129d0 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x100129dc stores 4 bytes to sym(combination) +0x304.
  The `sw` at 0x100129e4 stores 4 bytes to sym(combination) +0x300.
  The `sw` at 0x100129f0 stores 4 bytes to sym(combination) +0x308.
  The `jal` at 0x100129ec calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100129fc has v0 = ret(update__20StcombineWindowClassGv).

- `doSyncSrcPipe2Button__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10012a10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10012a10-0x10012a64 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x10012a30 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x10012a3c stores 4 bytes to sym(combination) +0x304.
  The `sw` at 0x10012a44 stores 4 bytes to sym(combination) +0x300.
  The `sw` at 0x10012a50 stores 4 bytes to sym(combination) +0x308.
  The `jal` at 0x10012a4c calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10012a5c has v0 = ret(update__20StcombineWindowClassGv).

- `doSyncSrcPipe3Button__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10012a70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10012a70-0x10012ac4 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x10012a90 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x10012a9c stores 4 bytes to sym(combination) +0x304.
  The `sw` at 0x10012aa4 stores 4 bytes to sym(combination) +0x300.
  The `sw` at 0x10012ab0 stores 4 bytes to sym(combination) +0x308.
  The `jal` at 0x10012aac calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10012abc has v0 = ret(update__20StcombineWindowClassGv).

- `doTilingModeHStripesButton__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10012ad0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10012ad0-0x10012b7c (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0x10012ad4 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0x10012ae4 loads 4 bytes from [a0+156] +0x0.
  The `sw` at 0x10012af8 stores 4 bytes to sym(combination) +0x30c.
  The `sw` at 0x10012b00 stores 4 bytes to sym(combination) +0x350.
  The `lw` at 0x10012b10 loads 4 bytes from sym(combination) +0x358.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10012b28, `sw` at 0x10012b30, `sw` at 0x10012b38.
  The `lw` at 0x10012b34 loads 4 bytes from sym(combination) +0x354.
  The `lw` at 0x10012b48 loads 4 bytes from sym(combination) +0x350.
  The `lw` at 0x10012b68 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `jal` at 0x10012b64 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=?, a3=?, a4=sym(combination).
  The `blez` branch at 0x10012afc targets 0x10012b5c, is taken when a2(=[[a0+156]]) <= 0 (signed), and falls through when a2(=[[a0+156]]) > 0 (signed).
  The `bne` branch at 0x10012b54 targets 0x10012b10, is taken when a3(?) < a2(=[sym(combination)+848]) (signed), and falls through when a3(?) >= a2(=[sym(combination)+848]) (signed).
  The return at 0x10012b74 has v0 = ret(update__20StcombineWindowClassGv).

- `doTilingModeOffButton__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10012b80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10012b80-0x10012c10 (144 bytes).
  It occupies 144 bytes.
  The `sw` at 0x10012b98 stores 4 bytes to sym(combination) +0x310.
  The `sw` at 0x10012b9c stores 4 bytes to sym(combination) +0x314.
  The `sw` at 0x10012ba0 stores 4 bytes to sym(combination) +0x30c.
  The `sw` at 0x10012ba8 stores 4 bytes to sym(combination) +0x350.
  The `lw` at 0x10012bac loads 4 bytes from sym(combination) +0x354.
  The `lw` at 0x10012bb0 loads 4 bytes from sym(combination) +0x358.
  The `sw` at 0x10012bb4 stores 4 bytes to sym(combination) +0x31c.
  The `sw` at 0x10012bb8 stores 4 bytes to sym(combination) +0x318.
  The `sw` at 0x10012bbc stores 4 bytes to sym(combination) +0x340.
  The `sw` at 0x10012bc0 stores 4 bytes to sym(combination) +0x344.
  The `sw` at 0x10012bc4 stores 4 bytes to sym(combination) +0x348.
  The `sw` at 0x10012bc8 stores 4 bytes to sym(combination) +0x34c.
  The `sw` at 0x10012bcc stores 4 bytes to sym(combination) +0x330.
  The `sw` at 0x10012bd0 stores 4 bytes to sym(combination) +0x334.
  The `sw` at 0x10012bd4 stores 4 bytes to sym(combination) +0x338.
  The `sw` at 0x10012bd8 stores 4 bytes to sym(combination) +0x33c.
  The `sw` at 0x10012bdc stores 4 bytes to sym(combination) +0x320.
  The `sw` at 0x10012be0 stores 4 bytes to sym(combination) +0x324.
  The `sw` at 0x10012be4 stores 4 bytes to sym(combination) +0x328.
  The `sw` at 0x10012be8 stores 4 bytes to sym(combination) +0x32c.
  The `lw` at 0x10012bfc loads 4 bytes from sym(stcombineWindow) +0x0.
  The `jal` at 0x10012bf8 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=a1 at entry (arg1), a2=sym(combination), a3=a3 at entry (arg3).
  The return at 0x10012c08 has v0 = ret(update__20StcombineWindowClassGv).

- `doTilingModePixelAverageButton__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10012c10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10012c10-0x10012ca0 (144 bytes).
  It occupies 144 bytes.
  The `sw` at 0x10012c2c stores 4 bytes to sym(combination) +0x30c.
  The `sw` at 0x10012c30 stores 4 bytes to sym(combination) +0x350.
  The `sw` at 0x10012c34 stores 4 bytes to sym(combination) +0x340.
  The `sw` at 0x10012c38 stores 4 bytes to sym(combination) +0x344.
  The `sw` at 0x10012c3c stores 4 bytes to sym(combination) +0x330.
  The `sw` at 0x10012c40 stores 4 bytes to sym(combination) +0x334.
  The `sw` at 0x10012c44 stores 4 bytes to sym(combination) +0x320.
  The `sw` at 0x10012c48 stores 4 bytes to sym(combination) +0x324.
  The `sw` at 0x10012c4c stores 4 bytes to sym(combination) +0x310.
  The `sw` at 0x10012c50 stores 4 bytes to sym(combination) +0x314.
  The `lw` at 0x10012c58 loads 4 bytes from sym(combination) +0x354.
  The `lw` at 0x10012c5c loads 4 bytes from sym(combination) +0x358.
  The `sw` at 0x10012c60 stores 4 bytes to sym(combination) +0x34c.
  The `sw` at 0x10012c64 stores 4 bytes to sym(combination) +0x348.
  The `sw` at 0x10012c68 stores 4 bytes to sym(combination) +0x33c.
  The `sw` at 0x10012c6c stores 4 bytes to sym(combination) +0x338.
  The `sw` at 0x10012c70 stores 4 bytes to sym(combination) +0x32c.
  The `sw` at 0x10012c74 stores 4 bytes to sym(combination) +0x328.
  The `sw` at 0x10012c78 stores 4 bytes to sym(combination) +0x31c.
  The `sw` at 0x10012c7c stores 4 bytes to sym(combination) +0x318.
  The `lw` at 0x10012c8c loads 4 bytes from sym(stcombineWindow) +0x0.
  The `jal` at 0x10012c88 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=sym(combination), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10012c98 has v0 = ret(update__20StcombineWindowClassGv).

- `doTilingModeSpatialButton__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10012ca0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10012ca0-0x10012d4c (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0x10012cc0 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x10012cc4 stores 4 bytes to sym(combination) +0x330.
  The `sw` at 0x10012cc8 stores 4 bytes to sym(combination) +0x324.
  The `sw` at 0x10012ccc stores 4 bytes to sym(combination) +0x310.
  The `sw` at 0x10012cd0 stores 4 bytes to sym(combination) +0x314.
  The `sw` at 0x10012cd8 stores 4 bytes to sym(combination) +0x30c.
  The `sw` at 0x10012ce0 stores 4 bytes to sym(combination) +0x350.
  The `lw` at 0x10012ce8 loads 4 bytes from sym(combination) +0x358.
  The `sw` at 0x10012cec stores 4 bytes to sym(combination) +0x34c.
  The `lw` at 0x10012cf0 loads 4 bytes from sym(combination) +0x354.
  The `sw` at 0x10012cf4 stores 4 bytes to sym(combination) +0x348.
  The `sw` at 0x10012cf8 stores 4 bytes to sym(combination) +0x33c.
  The `sw` at 0x10012d00 stores 4 bytes to sym(combination) +0x328.
  The `sw` at 0x10012d14 stores 4 bytes to sym(combination) +0x344.
  The `sw` at 0x10012d1c stores 4 bytes to sym(combination) +0x340.
  The `sw` at 0x10012d20 stores 4 bytes to sym(combination) +0x338.
  The `sw` at 0x10012d24 stores 4 bytes to sym(combination) +0x334.
  The `sw` at 0x10012d28 stores 4 bytes to sym(combination) +0x32c.
  The `sw` at 0x10012d2c stores 4 bytes to sym(combination) +0x320.
  The `sw` at 0x10012d30 stores 4 bytes to sym(combination) +0x31c.
  The `sw` at 0x10012d38 stores 4 bytes to sym(combination) +0x318.
  The `jal` at 0x10012d34 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=[sym(combination)+852], a2=[sym(combination)+856], a3=0x4, a4=0x1.
  The return at 0x10012d44 has v0 = ret(update__20StcombineWindowClassGv).

- `doTilingModeStereoButton__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10012d50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10012d50-0x10012d9c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x10012d74 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x10012d7c stores 4 bytes to sym(combination) +0x30c.
  The `sw` at 0x10012d88 stores 4 bytes to sym(combination) +0x350.
  The `jal` at 0x10012d84 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x27b90, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10012d94 has v0 = ret(update__20StcombineWindowClassGv).

- `doTilingModeVStripesbutton__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10012da0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10012da0-0x10012e4c (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0x10012da4 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0x10012db4 loads 4 bytes from [a0+156] +0x0.
  The `sw` at 0x10012dc8 stores 4 bytes to sym(combination) +0x30c.
  The `sw` at 0x10012dd0 stores 4 bytes to sym(combination) +0x350.
  The `lw` at 0x10012de0 loads 4 bytes from sym(combination) +0x354.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10012df8, `sw` at 0x10012e00, `sw` at 0x10012e08.
  The `lw` at 0x10012e0c loads 4 bytes from sym(combination) +0x358.
  The `lw` at 0x10012e18 loads 4 bytes from sym(combination) +0x350.
  The `lw` at 0x10012e38 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `jal` at 0x10012e34 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=?, a3=?, a4=sym(combination).
  The `blez` branch at 0x10012dcc targets 0x10012e2c, is taken when a2(=[[a0+156]]) <= 0 (signed), and falls through when a2(=[[a0+156]]) > 0 (signed).
  The `bne` branch at 0x10012e24 targets 0x10012de0, is taken when a3(?) < a2(=[sym(combination)+848]) (signed), and falls through when a3(?) >= a2(=[sym(combination)+848]) (signed).
  The return at 0x10012e44 has v0 = ret(update__20StcombineWindowClassGv).

- `expose__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10012e50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10012e50-0x10012ea4 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x10012e6c loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `jal` at 0x10012e7c calls GLwDrawingAreaMakeCurrent [0x1002a928] with a0=a1 at entry (arg1), a1=[a0+184], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10012e88 calls update__23StcombineMainFrameClassGv [0x10011a90] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x10012e9c has v0 = ret(update__23StcombineMainFrameClassGv).

- `ginit__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10012eb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10012eb0-0x10012f48 (152 bytes).
  It occupies 152 bytes.
  The `sw` at 0x10012f20 stores 4 bytes to a0 (arg0 at entry) +0xb8.
  The `lhu` at 0x10012f2c loads 2 bytes from a2 (arg2 at entry) +0x8.
  The `sw` at 0x10012f30 stores 4 bytes to a0 (arg0 at entry) +0xcc.
  The `lhu` at 0x10012f34 loads 2 bytes from a2 (arg2 at entry) +0xa.
  The `sw` at 0x10012f38 stores 4 bytes to a0 (arg0 at entry) +0xd0.
  The `jalr` at 0x10012eec calls XtVaGetValues with a0=a1 at entry (arg1), a1=0x1002c668, a2=sp-48, a3=0x0.
  The `jalr` at 0x10012ef8 calls XtDisplay with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x10012f14 calls glXCreateContext with a0=ret(XtDisplay), a1=?, a2=0x0, a3=0x1.
  The return at 0x10012f40 has v0 = ret(glXCreateContext).

- `input__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10012f50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10012f50-0x10013630 (1760 bytes).
  It occupies 1760 bytes.
  6 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x10012f50, `lw` at 0x100131e8, `lw` at 0x100132a0.
  The `lw` at 0x10012f5c loads 4 bytes from [a2+4] +0x0.
  5 such `lw` accesses load 4 bytes from [a2+4] +0x30, including `lw` at 0x10012fa8, `lw` at 0x100132a4, `lw` at 0x100134b8.
  2 such `lw` accesses load 4 bytes from [a2+4] +0x20, including `lw` at 0x10012fb8, `lw` at 0x100131ec.
  2 such `lw` accesses load 4 bytes from [a2+4] +0x24, including `lw` at 0x10012fbc, `lw` at 0x1001320c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xd4, including `lwc1` at 0x10012fdc, `lwc1` at 0x100131fc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xd8, including `lwc1` at 0x10012fe8, `lwc1` at 0x1001321c.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa44, including `lw` at 0x1001302c, `lw` at 0x10013084, `lw` at 0x100130dc.
  The `sw` at 0x10013040 stores 4 bytes to sym(combination) +0x310.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa48, including `lw` at 0x10013044, `lw` at 0x1001309c, `lw` at 0x100130f4.
  The `sw` at 0x10013054 stores 4 bytes to sym(combination) +0x318.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa4c, including `lw` at 0x10013058, `lw` at 0x100130b0, `lw` at 0x10013108.
  The `sw` at 0x10013068 stores 4 bytes to sym(combination) +0x314.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa50, including `lw` at 0x1001306c, `lw` at 0x100130c4, `lw` at 0x1001311c.
  The `sw` at 0x1001307c stores 4 bytes to sym(combination) +0x31c.
  The `sw` at 0x10013098 stores 4 bytes to sym(combination) +0x320.
  The `sw` at 0x100130ac stores 4 bytes to sym(combination) +0x328.
  The `sw` at 0x100130c0 stores 4 bytes to sym(combination) +0x324.
  The `sw` at 0x100130d4 stores 4 bytes to sym(combination) +0x32c.
  The `sw` at 0x100130f0 stores 4 bytes to sym(combination) +0x330.
  The `sw` at 0x10013104 stores 4 bytes to sym(combination) +0x338.
  The `sw` at 0x10013118 stores 4 bytes to sym(combination) +0x334.
  The `sw` at 0x1001312c stores 4 bytes to sym(combination) +0x33c.
  The `sw` at 0x10013148 stores 4 bytes to sym(combination) +0x340.
  The `sw` at 0x1001315c stores 4 bytes to sym(combination) +0x348.
  The `sw` at 0x10013170 stores 4 bytes to sym(combination) +0x344.
  The `sw` at 0x10013184 stores 4 bytes to sym(combination) +0x34c.
  The `lw` at 0x100131b4 loads 4 bytes from [a2+4] +0x34.
  5 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xa44, including `sw` at 0x100131c4, `sw` at 0x1001342c, `sw` at 0x1001355c.
  5 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xa48, including `sw` at 0x100131cc, `sw` at 0x10013328, `sw` at 0x10013584.
  5 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xa4c, including `sw` at 0x100131d4, `sw` at 0x1001337c, `sw` at 0x1001346c.
  5 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xa50, including `sw` at 0x100131e0, `sw` at 0x100133cc, `sw` at 0x10013484.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x30c, including `lw` at 0x10013230, `lw` at 0x10013440.
  The `lw` at 0x100132d8 loads 4 bytes from sym(stcombineWindow) +0x0.
  20 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100132e4, `lw` at 0x10013308, `lw` at 0x1001332c.
  The `jal` at 0x1001318c calls clamp_tiling__23StcombineMainFrameClassGv [0x10013a40] with a0=a0 at entry (arg0), a1=sym(combination), a2=0x3, a3=?, a7=0x1.
  The `jal` at 0x10013198 calls update_fast__23StcombineMainFrameClassGv [0x10013a00] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x100131dc calls XmProcessTraversal with a0=a1 at entry (arg1), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[a2+4]], a5=a1 at entry (arg1), a6=[a2+4], a7=0x4.
  The `jalr` at 0x10013264 calls XLookupString with a0=[a2+4], a1=0x0, a2=0x0, a3=sp-48, a4=0x0, a5=a1 at entry (arg1), a6=[a2+4], a7=0x4.
  The `jal` at 0x100132b4 calls clamp_tiling__23StcombineMainFrameClassGv [0x10013a40] with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=a2 at entry (arg2), a4=0x6c, a5=0x6b, a6=0x6a, a7=[[a2+4]+48].
  The `jal` at 0x100132c0 calls update_fast__23StcombineMainFrameClassGv [0x10013a00] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100132d4 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[a2+4]], a5=a1 at entry (arg1), a6=[a2+4], a7=0x4.
  The `jal` at 0x100134c8 calls clamp_tiling__23StcombineMainFrameClassGv [0x10013a40] with a0=a0 at entry (arg0), a1=?, a2=[[a2+4]+48], a3=0x68.
  The `jal` at 0x100134d4 calls update_fast__23StcombineMainFrameClassGv [0x10013a00] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100134f8 calls clamp_tiling__23StcombineMainFrameClassGv [0x10013a40] with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=[[a2+4]+48], a4=0x6c.
  The `jal` at 0x10013504 calls update_fast__23StcombineMainFrameClassGv [0x10013a00] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1001352c calls clamp_tiling__23StcombineMainFrameClassGv [0x10013a40] with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=a2 at entry (arg2), a4=[[a2+4]+48], a5=0x6b, a6=0x6a.
  The `jal` at 0x10013538 calls update_fast__23StcombineMainFrameClassGv [0x10013a00] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10012f7c targets 0x100131b4, is taken when a4(=[[a2+4]]) == a7(=0x4), and falls through when a4(=[[a2+4]]) != a7(=0x4).
  The `beq` branch at 0x10012f88 targets 0x100132d0, is taken when a4(=[[a2+4]]) == v0(=0x5), and falls through when a4(=[[a2+4]]) != v0(=0x5).
  The `beq` branch at 0x10012f94 targets 0x10013250, is taken when a4(=[[a2+4]]) == v1(=0x2), and falls through when a4(=[[a2+4]]) != v1(=0x2).
  The `bne` branch at 0x10012fa0 targets 0x100131a4, is taken when a4(=[[a2+4]]) != a0(=0x6), and falls through when a4(=[[a2+4]]) == a0(=0x6).
  The `beq` branch at 0x10012fb0 targets 0x100131a4, is taken when (a1(=[[a2+4]+48]) & 0x100) == 0, and falls through when (a1(=[[a2+4]+48]) & 0x100) != 0.
  The `beq` branch at 0x10013038 targets 0x10013044, is taken when (a0(?) & ra(=[a0+2628])) == 0, and falls through when (a0(?) & ra(=[a0+2628])) != 0.
  The `beq` branch at 0x1001304c targets 0x10013058, is taken when (a0(?) & at(=[a0+2632])) == 0, and falls through when (a0(?) & at(=[a0+2632])) != 0.
  The `beq` branch at 0x10013060 targets 0x1001306c, is taken when (a0(?) & v0(=[a0+2636])) == 0, and falls through when (a0(?) & v0(=[a0+2636])) != 0.
  The `beq` branch at 0x10013074 targets 0x10013080, is taken when (a0(?) & v1(=[a0+2640])) == 0, and falls through when (a0(?) & v1(=[a0+2640])) != 0.
  The `beq` branch at 0x10013090 targets 0x1001309c, is taken when (a0(?) & a3(=[a0+2628])) == 0, and falls through when (a0(?) & a3(=[a0+2628])) != 0.
  The `beq` branch at 0x100130a4 targets 0x100130b0, is taken when (a0(?) & a6(=[a0+2632])) == 0, and falls through when (a0(?) & a6(=[a0+2632])) != 0.
  The `beq` branch at 0x100130b8 targets 0x100130c4, is taken when (a0(?) & t0(=[a0+2636])) == 0, and falls through when (a0(?) & t0(=[a0+2636])) != 0.
  The `beq` branch at 0x100130cc targets 0x100130d8, is taken when (a0(?) & t1(=[a0+2640])) == 0, and falls through when (a0(?) & t1(=[a0+2640])) != 0.
  The `beq` branch at 0x100130e8 targets 0x100130f4, is taken when (a0(?) & t2(=[a0+2628])) == 0, and falls through when (a0(?) & t2(=[a0+2628])) != 0.
  The `beq` branch at 0x100130fc targets 0x10013108, is taken when (a0(?) & t3(=[a0+2632])) == 0, and falls through when (a0(?) & t3(=[a0+2632])) != 0.
  The `beq` branch at 0x10013110 targets 0x1001311c, is taken when (a0(?) & t8(=[a0+2636])) == 0, and falls through when (a0(?) & t8(=[a0+2636])) != 0.
  The `beq` branch at 0x10013124 targets 0x10013130, is taken when (a0(?) & t9(=[a0+2640])) == 0, and falls through when (a0(?) & t9(=[a0+2640])) != 0.
  The `beq` branch at 0x10013140 targets 0x1001314c, is taken when (a0(?) & ra(=[a0+2628])) == 0, and falls through when (a0(?) & ra(=[a0+2628])) != 0.
  The `beq` branch at 0x10013154 targets 0x10013160, is taken when (a0(?) & at(=[a0+2632])) == 0, and falls through when (a0(?) & at(=[a0+2632])) != 0.
  The `beq` branch at 0x10013168 targets 0x10013174, is taken when (a0(?) & v0(=[a0+2636])) == 0, and falls through when (a0(?) & v0(=[a0+2636])) != 0.
  The `beq` branch at 0x1001317c targets 0x1001318c, is taken when (a0(?) & v1(=[a0+2640])) == 0, and falls through when (a0(?) & v1(=[a0+2640])) != 0.
  The `bne` branch at 0x100131bc targets 0x100131a0, is taken when a0(=0x1) != a1(=[[a2+4]+52]), and falls through when a0(=0x1) == a1(=[[a2+4]+52]).
  The `beq` branch at 0x1001323c targets 0x10013444, is taken when a0(=[sym(combination)+780]) == 0, and falls through when a0(=[sym(combination)+780]) != 0.
  The `beq` branch at 0x10013248 targets 0x100133e4 and is always taken.
  The `beq` branch at 0x10013274 targets 0x100134b4, is taken when a0(?) == a3(=0x68), and falls through when a0(?) != a3(=0x68).
  The `beq` branch at 0x10013280 targets 0x100134e4, is taken when a0(?) == a4(=0x6c), and falls through when a0(?) != a4(=0x6c).
  The `beq` branch at 0x1001328c targets 0x10013514, is taken when a0(?) == a5(=0x6b), and falls through when a0(?) != a5(=0x6b).
  The `bne` branch at 0x10013294 targets 0x100131a4, is taken when a0(?) != a6(=0x6a), and falls through when a0(?) == a6(=0x6a).
  The `bne` branch at 0x100132a8 targets 0x100131a4, is taken when a7(=[[a2+4]+48]) != 0, and falls through when a7(=[[a2+4]+48]) == 0.
  The `beq` branch at 0x100132c8 targets 0x100131a4 and is always taken.
  The `beq` branch at 0x100132dc targets 0x100131a4 and is always taken.
  The `blez` branch at 0x100132ec targets 0x1001349c, is taken when a6(?) <= 0 (signed), and falls through when a6(?) > 0 (signed).
  The `beq` branch at 0x100132f8 targets 0x10013338, is taken when a7(?) >= 0xa (signed), and falls through when a7(?) < 0xa (signed).
  The `beq` branch at 0x10013300 targets 0x1001333c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x10013310 targets 0x1001333c, is taken when a5(?) >= a7(?) (signed), and falls through when a5(?) < a7(?) (signed).
  The `blez` branch at 0x10013340 targets 0x100134a4, is taken when a6(?) <= 0 (signed), and falls through when a6(?) > 0 (signed).
  The `beq` branch at 0x10013350 targets 0x1001338c, is taken when a0(?) >= 0xa (signed), and falls through when a0(?) < 0xa (signed).
  The `beq` branch at 0x10013358 targets 0x1001338c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x10013364 targets 0x1001338c, is taken when a4(?) >= t0(?) (signed), and falls through when a4(?) < t0(?) (signed).
  The `blez` branch at 0x10013390 targets 0x100134ac, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `beq` branch at 0x100133a0 targets 0x100133d8, is taken when a6(?) >= 0xa (signed), and falls through when a6(?) < 0xa (signed).
  The `beq` branch at 0x100133a8 targets 0x100133d8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x100133b4 targets 0x100133d8, is taken when a4(?) >= a7(?) (signed), and falls through when a4(?) < a7(?) (signed).
  The `beq` branch at 0x100133dc targets 0x10013440, is taken when a2(?) == t1(=0x4), and falls through when a2(?) != t1(=0x4).
  The `blez` branch at 0x100133ec targets 0x10013494, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `beq` branch at 0x100133f8 targets 0x100132e4, is taken when a6(?) >= 0xa (signed), and falls through when a6(?) < 0xa (signed).
  The `beq` branch at 0x10013404 targets 0x100132e8, is taken when a0(?) >= a5(?) (signed), and falls through when a0(?) < a5(?) (signed).
  The `beq` branch at 0x10013414 targets 0x100132e8, is taken when a5(?) >= a7(?) (signed), and falls through when a5(?) < a7(?) (signed).
  The `beq` branch at 0x10013438 targets 0x100132e4 and is always taken.
  The `beq` branch at 0x10013448 targets 0x10013548, is taken when a0(=[sym(combination)+780]) == t9(=0x1), and falls through when a0(=[sym(combination)+780]) != t9(=0x1).
  The `beq` branch at 0x10013450 targets 0x100135fc, is taken when a0(=[sym(combination)+780]) == ra(=0x2), and falls through when a0(=[sym(combination)+780]) != ra(=0x2).
  The `bne` branch at 0x10013458 targets 0x100131a4, is taken when a0(=[sym(combination)+780]) != at(=0x3), and falls through when a0(=[sym(combination)+780]) == at(=0x3).
  The `beq` branch at 0x10013464 targets 0x10013470, is taken when v0(=[a0+2636]) == 0, and falls through when v0(=[a0+2636]) != 0.
  The `beq` branch at 0x10013474 targets 0x100131a0, is taken when a0(=[a0+2640]) == 0, and falls through when a0(=[a0+2640]) != 0.
  The `beq` branch at 0x10013494 targets 0x100133f4 and is always taken.
  The `beq` branch at 0x1001349c targets 0x100132f4 and is always taken.
  The `beq` branch at 0x100134a4 targets 0x10013348 and is always taken.
  The `beq` branch at 0x100134ac targets 0x10013398 and is always taken.
  The `bne` branch at 0x100134bc targets 0x100131a4, is taken when a2(=[[a2+4]+48]) != 0, and falls through when a2(=[[a2+4]+48]) == 0.
  The `beq` branch at 0x100134dc targets 0x100131a4 and is always taken.
  The `bne` branch at 0x100134ec targets 0x100131a4, is taken when a3(=[[a2+4]+48]) != 0, and falls through when a3(=[[a2+4]+48]) == 0.
  The `beq` branch at 0x1001350c targets 0x100131a4 and is always taken.
  The `bne` branch at 0x10013520 targets 0x100131a4, is taken when a4(=[[a2+4]+48]) != 0, and falls through when a4(=[[a2+4]+48]) == 0.
  The `beq` branch at 0x10013540 targets 0x100131a4 and is always taken.
  The `beq` branch at 0x10013550 targets 0x10013560, is taken when (a1(=[a0+2628]) & 0x5) == 0, and falls through when (a1(=[a0+2628]) & 0x5) != 0.
  The `beq` branch at 0x10013564 targets 0x10013570, is taken when (a0(?) & 0xa) == 0, and falls through when (a0(?) & 0xa) != 0.
  The `beq` branch at 0x10013578 targets 0x1001358c, is taken when (a0(=[a0+2632]) & 0x5) == 0, and falls through when (a0(=[a0+2632]) & 0x5) != 0.
  The `beq` branch at 0x1001358c targets 0x10013598, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x100135a0 targets 0x100135b4, is taken when (a0(=[a0+2636]) & 0x3) == 0, and falls through when (a0(=[a0+2636]) & 0x3) != 0.
  The `beq` branch at 0x100135b4 targets 0x100135c0, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x100135c8 targets 0x100135dc, is taken when (a0(=[a0+2640]) & 0x3) == 0, and falls through when (a0(=[a0+2640]) & 0x3) != 0.
  The `beq` branch at 0x100135dc targets 0x100131a0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x10013600 targets 0x1001360c, is taken when v1(=[a0+2628]) == 0, and falls through when v1(=[a0+2628]) != 0.
  The `beq` branch at 0x10013610 targets 0x100131a0, is taken when a1(=[a0+2632]) == 0, and falls through when a1(=[a0+2632]) != 0.
  The return at 0x100131ac has v0 = one of 0x5, ?, ret(XLookupString), ret(update_fast__23StcombineMainFrameClassGv), ret(update__20StcombineWindowClassGv).
  The return at 0x1001348c has v0 = [a0+2636].
  The return at 0x100135f4 has v0 = ?.
  The return at 0x10013628 has v0 = ?.

- `resize__23StcombineMainFrameClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10013630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10013630-0x100136e4 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0x10013638 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `lw` at 0x1001366c loads 4 bytes from a0 (arg0 at entry) +0x6d0.
  The `lhu` at 0x10013670 loads 2 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10013688 loads 4 bytes from a0 (arg0 at entry) +0x6cc.
  The `sw` at 0x1001368c stores 4 bytes to a0 (arg0 at entry) +0xcc.
  The `lhu` at 0x10013690 loads 2 bytes from a2 (arg2 at entry) +0xa.
  The `sw` at 0x100136ac stores 4 bytes to a0 (arg0 at entry) +0xd0.
  The `swc1` at 0x100136b4 stores 4 bytes to a0 (arg0 at entry) +0xd4.
  The `swc1` at 0x100136c0 stores 4 bytes to a0 (arg0 at entry) +0xd8.
  The `jal` at 0x10013660 calls GLwDrawingAreaMakeCurrent [0x1002a928] with a0=a1 at entry (arg1), a1=[a0+184], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100136bc calls glViewport with a0=0x0, a1=0x0, a2=[a2+8]:2, a3=[a2+10]:2, a4=[a0+1744].
  The `jalr` at 0x100136cc calls glDisable with a0=0xbd0, a1=?, a2=?, a3=?.
  The return at 0x100136dc has v0 = ret(glDisable).

- `draw_frame__23StcombineMainFrameClassGv` in `usr/gfx/sgcombine` at 0x100136f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100136f0-0x100139fc (780 bytes).
  It occupies 780 bytes.
  The `lwc1` at 0x10013724 loads 4 bytes from a0 (arg0 at entry) +0xc4.
  The `lwc1` at 0x10013728 loads 4 bytes from a0 (arg0 at entry) +0xc0.
  The `lwc1` at 0x10013730 loads 4 bytes from a0 (arg0 at entry) +0xbc.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x358, including `lw` at 0x1001375c, `lw` at 0x100137c0.
  The `lw` at 0x10013760 loads 4 bytes from sym(combination) +0x354.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x350, including `lw` at 0x100137b4, `lw` at 0x100138f0.
  The `lbu` at 0x10013808 loads 1 byte from a0 (arg0 at entry) +0xca.
  The `lbu` at 0x1001380c loads 1 byte from a0 (arg0 at entry) +0xc9.
  The `lbu` at 0x10013814 loads 1 byte from a0 (arg0 at entry) +0xc8.
  10 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10013828, `lw` at 0x1001382c, `lw` at 0x1001383c.
  The `lwc1` at 0x10013890 loads 4 bytes from a0 (arg0 at entry) +0xd8.
  The `lwc1` at 0x10013894 loads 4 bytes from a0 (arg0 at entry) +0xd4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x10013924, `lw` at 0x10013934, `lw` at 0x10013968.
  The `lw` at 0x1001398c loads 4 bytes from ret(XLoadQueryFont) +0x18.
  The `lw` at 0x10013990 loads 4 bytes from ret(XLoadQueryFont) +0x14.
  The `lw` at 0x100139a8 loads 4 bytes from ret(XLoadQueryFont) +0x4.
  The `jalr` at 0x1001372c calls glClearColor with a0=?, a1=?, a2=?, a3=?; fp f12=[a0+188], f13=[a0+192], f14=[a0+196], f15=0x3f800000.
  The `jalr` at 0x10013738 calls glClear with a0=0x4000, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013744 calls glMatrixMode with a0=0x1701, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013750 calls glLoadIdentity with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013784 calls gluOrtho2D with a0=[sym(combination)+856]+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013790 calls glMatrixMode with a0=0x1700, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001379c calls glLoadIdentity with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100137ac calls glListBase with a0=0x1000, a1=?, a2=?, a3=?.
  The `jalr` at 0x100137fc calls sprintf with a0=sp-112, a1=0x10033470, a2=?, a3=?.
  The `jalr` at 0x10013810 calls glColor3ub with a0=[a0+200]:1, a1=[a0+201]:1, a2=[a0+202]:1, a3=?.
  The `jalr` at 0x1001381c calls glBegin with a0=0x2, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013830 calls glVertex2i with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013844 calls glVertex2i with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013858 calls glVertex2i with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001386c calls glVertex2i with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013878 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100138c8 calls glRasterPos2i with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100138d4 calls strlen with a0=sp-112, a1=?, a2=?, a3=?.
  The `jalr` at 0x100138e8 calls glCallLists with a0=ret(strlen), a1=0x1400, a2=sp-112, a3=?.
  The `jalr` at 0x10013920 calls XtDisplay with a0=[a0+68], a1=?, a2=?, a3=?.
  The `jalr` at 0x10013930 calls XtWindow with a0=[a0+68], a1=?, a2=?, a3=?.
  The `jalr` at 0x10013940 calls glXSwapBuffers with a0=ret(XtDisplay), a1=ret(XtWindow), a2=?, a3=?.
  The `jalr` at 0x10013964 calls XtDisplay with a0=[a0+68], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001397c calls XLoadQueryFont with a0=ret(XtDisplay), a1=0x1002c678, a2=?, a3=?.
  The `jalr` at 0x100139ac calls glXUseXFont with a0=[ret(XLoadQueryFont)+4], a1=([ret(XLoadQueryFont)+20] << 0x8), a2=?, a3=0x1000.
  The `jalr` at 0x100139bc calls XFreeFont with a0=?, a1=ret(XLoadQueryFont), a2=?, a3=?.
  The `jalr` at 0x100139e8 calls fprintf with a0=sym(__iob)+32, a1=0x1002c6a0, a2=0x1002c678, a3=?.
  The `jalr` at 0x100139f4 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10013714 targets 0x10013960, is taken when at(=[0x10033780]) == 0, and falls through when at(=[0x10033780]) != 0.
  The `blez` branch at 0x100137bc targets 0x10013914, is taken when a1(=[sym(combination)+848]) <= 0 (signed), and falls through when a1(=[sym(combination)+848]) > 0 (signed).
  The `bne` branch at 0x100138fc targets 0x100137f0, is taken when s2(?) < a4(=[sym(combination)+848]) (signed), and falls through when s2(?) >= a4(=[sym(combination)+848]) (signed).
  The `beq` branch at 0x10013984 targets 0x100139d0, is taken when v0(=ret(XLoadQueryFont)) == 0, and falls through when v0(=ret(XLoadQueryFont)) != 0.
  The `beq` branch at 0x100139c8 targets 0x1001371c and is always taken.
  The return at 0x10013958 has v0 = ret(glXSwapBuffers).

- `update_fast__23StcombineMainFrameClassGv` in `usr/gfx/sgcombine` at 0x10013a00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10013a00-0x10013a34 (52 bytes).
  It occupies 52 bytes.
  The `jal` at 0x10013a1c calls draw_frame__23StcombineMainFrameClassGv [0x100136f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10013a2c has v0 = ret(draw_frame__23StcombineMainFrameClassGv).

- `clamp_tiling__23StcombineMainFrameClassGv` in `usr/gfx/sgcombine` at 0x10013a40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10013a40-0x100140f8 (1720 bytes).
  It occupies 1720 bytes.
  The `lw` at 0x10013a4c loads 4 bytes from abs 0x100330a0.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa44, including `lw` at 0x10013a60, `lw` at 0x10013ab0, `lw` at 0x10013b00.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x318, including `lw` at 0x10013a64, `lw` at 0x10013e30.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x310, including `lw` at 0x10013a6c, `lw` at 0x10013e04.
  4 such `sw` accesses store 4 bytes to sym(combination) +0x310, including `sw` at 0x10013a84, `sw` at 0x10013be0, `sw` at 0x10013eb8.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa4c, including `lw` at 0x10013a88, `lw` at 0x10013ad8, `lw` at 0x10013b28.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x31c, including `lw` at 0x10013a8c, `lw` at 0x10013e88.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x314, including `lw` at 0x10013a90, `lw` at 0x10013e5c.
  4 such `sw` accesses store 4 bytes to sym(combination) +0x314, including `sw` at 0x10013aa8, `sw` at 0x10013be4, `sw` at 0x10013ed8.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x328, including `lw` at 0x10013ab4, `lw` at 0x10013e38.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x320, including `lw` at 0x10013abc, `lw` at 0x10013e0c.
  5 such `sw` accesses store 4 bytes to sym(combination) +0x320, including `sw` at 0x10013ad4, `sw` at 0x10013bd8, `sw` at 0x10013e24.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x32c, including `lw` at 0x10013adc, `lw` at 0x10013edc.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x324, including `lw` at 0x10013ae0, `lw` at 0x10013ecc.
  3 such `sw` accesses store 4 bytes to sym(combination) +0x324, including `sw` at 0x10013af8, `sw` at 0x10013bdc, `sw` at 0x100140a8.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x338, including `lw` at 0x10013b04, `lw` at 0x10013ebc.
  3 such `lw` accesses load 4 bytes from sym(combination) +0x330, including `lw` at 0x10013b0c, `lw` at 0x10013e9c, `lw` at 0x10013eac.
  3 such `sw` accesses store 4 bytes to sym(combination) +0x330, including `sw` at 0x10013b24, `sw` at 0x10013bd0, `sw` at 0x100140b8.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x33c, including `lw` at 0x10013b2c, `lw` at 0x10013e90.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x334, including `lw` at 0x10013b30, `lw` at 0x10013e64.
  4 such `sw` accesses store 4 bytes to sym(combination) +0x334, including `sw` at 0x10013b48, `sw` at 0x10013bd4, `sw` at 0x10013e7c.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x348, including `lw` at 0x10013b54, `lw` at 0x10013f1c.
  3 such `lw` accesses load 4 bytes from sym(combination) +0x340, including `lw` at 0x10013b5c, `lw` at 0x10013f04, `lw` at 0x10013f0c.
  4 such `sw` accesses store 4 bytes to sym(combination) +0x340, including `sw` at 0x10013b74, `sw` at 0x10013bc8, `sw` at 0x10013e1c.
  3 such `lw` accesses load 4 bytes from sym(combination) +0x34c, including `lw` at 0x10013b7c, `lw` at 0x10013ef4, `lw` at 0x10013efc.
  3 such `lw` accesses load 4 bytes from sym(combination) +0x344, including `lw` at 0x10013b80, `lw` at 0x10013ee4, `lw` at 0x10013eec.
  5 such `sw` accesses store 4 bytes to sym(combination) +0x344, including `sw` at 0x10013b98, `sw` at 0x10013bcc, `sw` at 0x10013e74.
  The `lw` at 0x10013b9c loads 4 bytes from sym(combination) +0x30c.
  7 such `lw` accesses load 4 bytes from sym(combination) +0x350, including `lw` at 0x10013bb4, `lw` at 0x10013f30, `lw` at 0x10013f50.
  3 such `lw` accesses load 4 bytes from sym(combination) +0x358, including `lw` at 0x10013be8, `lw` at 0x10013c8c, `lw` at 0x10013ca8.
  3 such `sw` accesses store 4 bytes to sym(combination) +0x34c, including `sw` at 0x10013bec, `sw` at 0x10013df8, `sw` at 0x10013f08.
  3 such `lw` accesses load 4 bytes from sym(combination) +0x354, including `lw` at 0x10013bf0, `lw` at 0x10013c38, `lw` at 0x10013c6c.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x348, including `sw` at 0x10013bf4, `sw` at 0x10013dd8.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x33c, including `sw` at 0x10013bf8, `sw` at 0x10013db8.
  3 such `sw` accesses store 4 bytes to sym(combination) +0x338, including `sw` at 0x10013bfc, `sw` at 0x10013d98, `sw` at 0x10013e48.
  3 such `sw` accesses store 4 bytes to sym(combination) +0x32c, including `sw` at 0x10013c00, `sw` at 0x10013d78, `sw` at 0x10013ea0.
  3 such `sw` accesses store 4 bytes to sym(combination) +0x328, including `sw` at 0x10013c04, `sw` at 0x10013d58, `sw` at 0x10013f2c.
  4 such `sw` accesses store 4 bytes to sym(combination) +0x31c, including `sw` at 0x10013c08, `sw` at 0x10013d38, `sw` at 0x10013ea8.
  4 such `sw` accesses store 4 bytes to sym(combination) +0x318, including `sw` at 0x10013c0c, `sw` at 0x10013d18, `sw` at 0x10013e50.
  12 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10013c18, `lw` at 0x10013c4c, `lw` at 0x10013c84.
  14 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10013c34, `sw` at 0x10013c48, `sw` at 0x10013c68.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa48, including `lw` at 0x10013cfc, `lw` at 0x10013d3c, `lw` at 0x10013d7c.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa50, including `lw` at 0x10013d1c, `lw` at 0x10013d5c, `lw` at 0x10013d9c.
  The `beq` branch at 0x10013a74 targets 0x10013cfc, is taken when (a6(?) & v1(=[a0+2628])) == 0, and falls through when (a6(?) & v1(=[a0+2628])) != 0.
  The `beq` branch at 0x10013a7c targets 0x10013a88, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x10013a98 targets 0x10013d1c, is taken when (a6(?) & a1(=[a0+2636])) == 0, and falls through when (a6(?) & a1(=[a0+2636])) != 0.
  The `beq` branch at 0x10013aa0 targets 0x10013aac, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x10013ac4 targets 0x10013d3c, is taken when (a6(?) & a2(=[a0+2628])) == 0, and falls through when (a6(?) & a2(=[a0+2628])) != 0.
  The `beq` branch at 0x10013acc targets 0x10013ad8, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x10013ae8 targets 0x10013d5c, is taken when (a6(?) & t2(=[a0+2636])) == 0, and falls through when (a6(?) & t2(=[a0+2636])) != 0.
  The `beq` branch at 0x10013af0 targets 0x10013afc, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x10013b14 targets 0x10013d7c, is taken when (a6(?) & t8(=[a0+2628])) == 0, and falls through when (a6(?) & t8(=[a0+2628])) != 0.
  The `beq` branch at 0x10013b1c targets 0x10013b28, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x10013b38 targets 0x10013d9c, is taken when (a6(?) & t9(=[a0+2636])) == 0, and falls through when (a6(?) & t9(=[a0+2636])) != 0.
  The `beq` branch at 0x10013b40 targets 0x10013b4c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x10013b64 targets 0x10013dbc, is taken when (a6(?) & v0(=[a0+2628])) == 0, and falls through when (a6(?) & v0(=[a0+2628])) != 0.
  The `beq` branch at 0x10013b6c targets 0x10013b78, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x10013b88 targets 0x10013ddc, is taken when (a6(?) & v1(=[a0+2636])) == 0, and falls through when (a6(?) & v1(=[a0+2636])) != 0.
  The `beq` branch at 0x10013b90 targets 0x10013b9c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x10013ba0 targets 0x10013dfc, is taken when a3(=[sym(combination)+780]) == t0(=0x1), and falls through when a3(=[sym(combination)+780]) != t0(=0x1).
  The `beq` branch at 0x10013ba8 targets 0x10013f30, is taken when a3(=[sym(combination)+780]) == a1(=0x2), and falls through when a3(=[sym(combination)+780]) != a1(=0x2).
  The `beq` branch at 0x10013bb0 targets 0x10013fd0, is taken when a3(=[sym(combination)+780]) == a2(=0x3), and falls through when a3(=[sym(combination)+780]) != a2(=0x3).
  The `beq` branch at 0x10013bb8 targets 0x10013bc8, is taken when a3(=[sym(combination)+780]) == t3(=0x4), and falls through when a3(=[sym(combination)+780]) != t3(=0x4).
  The `bne` branch at 0x10013bc0 targets 0x10013c14, is taken when a3(=[sym(combination)+780]) != a4(=0x5), and falls through when a3(=[sym(combination)+780]) == a4(=0x5).
  The `bltz` branch at 0x10013c30 targets 0x10013ccc, is taken when t1(?) < 0 (signed), and falls through when t1(?) >= 0 (signed).
  The `beq` branch at 0x10013c40 targets 0x10013c4c, is taken when a0(=[sym(combination)+852]) >= t1(?) (signed), and falls through when a0(=[sym(combination)+852]) < t1(?) (signed).
  The `bltz` branch at 0x10013c64 targets 0x10013cd8, is taken when a5(?) < 0 (signed), and falls through when a5(?) >= 0 (signed).
  The `beq` branch at 0x10013c78 targets 0x10013c84, is taken when a0(=[sym(combination)+852]) >= a5(?) (signed), and falls through when a0(=[sym(combination)+852]) < a5(?) (signed).
  The `bltz` branch at 0x10013c88 targets 0x10013ce4, is taken when t1(?) < 0 (signed), and falls through when t1(?) >= 0 (signed).
  The `beq` branch at 0x10013c94 targets 0x10013ca0, is taken when a0(=[sym(combination)+856]) >= t1(?) (signed), and falls through when a0(=[sym(combination)+856]) < t1(?) (signed).
  The `bltz` branch at 0x10013ca4 targets 0x10013cf0, is taken when a5(?) < 0 (signed), and falls through when a5(?) >= 0 (signed).
  The `beq` branch at 0x10013cb0 targets 0x10013cbc, is taken when a0(=[sym(combination)+856]) >= a5(?) (signed), and falls through when a0(=[sym(combination)+856]) < a5(?) (signed).
  The `bne` branch at 0x10013cbc targets 0x10013c18, is taken when a4(?) != t3(=0x4), and falls through when a4(?) == t3(=0x4).
  The `beq` branch at 0x10013cd0 targets 0x10013c38 and is always taken.
  The `beq` branch at 0x10013cdc targets 0x10013c6c and is always taken.
  The `beq` branch at 0x10013ce8 targets 0x10013c8c and is always taken.
  The `beq` branch at 0x10013cf4 targets 0x10013ca8 and is always taken.
  The `beq` branch at 0x10013d04 targets 0x1001406c, is taken when (a6(?) & v1(=[a0+2632])) == 0, and falls through when (a6(?) & v1(=[a0+2632])) != 0.
  The `beq` branch at 0x10013d0c targets 0x10013a88, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x10013d14 targets 0x10013a88 and is always taken.
  The `beq` branch at 0x10013d24 targets 0x1001407c, is taken when (a6(?) & a1(=[a0+2640])) == 0, and falls through when (a6(?) & a1(=[a0+2640])) != 0.
  The `beq` branch at 0x10013d2c targets 0x10013aac, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x10013d34 targets 0x10013aac and is always taken.
  The `beq` branch at 0x10013d44 targets 0x1001408c, is taken when (a6(?) & a2(=[a0+2632])) == 0, and falls through when (a6(?) & a2(=[a0+2632])) != 0.
  The `beq` branch at 0x10013d4c targets 0x10013ad8, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x10013d54 targets 0x10013ad8 and is always taken.
  The `beq` branch at 0x10013d64 targets 0x1001409c, is taken when (a6(?) & t8(=[a0+2640])) == 0, and falls through when (a6(?) & t8(=[a0+2640])) != 0.
  The `beq` branch at 0x10013d6c targets 0x10013afc, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x10013d74 targets 0x10013afc and is always taken.
  The `beq` branch at 0x10013d84 targets 0x100140ac, is taken when (a6(?) & t9(=[a0+2632])) == 0, and falls through when (a6(?) & t9(=[a0+2632])) != 0.
  The `beq` branch at 0x10013d8c targets 0x10013b28, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x10013d94 targets 0x10013b28 and is always taken.
  The `beq` branch at 0x10013da4 targets 0x100140bc, is taken when (a6(?) & v0(=[a0+2640])) == 0, and falls through when (a6(?) & v0(=[a0+2640])) != 0.
  The `beq` branch at 0x10013dac targets 0x10013b4c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x10013db4 targets 0x10013b4c and is always taken.
  The `beq` branch at 0x10013dc4 targets 0x100140cc, is taken when (a6(?) & v1(=[a0+2632])) == 0, and falls through when (a6(?) & v1(=[a0+2632])) != 0.
  The `beq` branch at 0x10013dcc targets 0x10013b78, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x10013dd4 targets 0x10013b78 and is always taken.
  The `beq` branch at 0x10013de4 targets 0x100140dc, is taken when (a6(?) & a1(=[a0+2640])) == 0, and falls through when (a6(?) & a1(=[a0+2640])) != 0.
  The `beq` branch at 0x10013dec targets 0x10013b9c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x10013df4 targets 0x10013b9c and is always taken.
  The `beq` branch at 0x10013e08 targets 0x10013e28, is taken when (a2(=[a0+2628]) & 0xa) == 0, and falls through when (a2(=[a0+2628]) & 0xa) != 0.
  The `beq` branch at 0x10013e14 targets 0x10013e28, is taken when t1(=[sym(combination)+800]) >= a5(=[sym(combination)+784]) (signed), and falls through when t1(=[sym(combination)+800]) < a5(=[sym(combination)+784]) (signed).
  The `beq` branch at 0x10013e34 targets 0x10013e54, is taken when (a4(=[a0+2632]) & 0x5) == 0, and falls through when (a4(=[a0+2632]) & 0x5) != 0.
  The `beq` branch at 0x10013e40 targets 0x10013e54, is taken when a6(=[sym(combination)+808]) >= t0(=[sym(combination)+792]) (signed), and falls through when a6(=[sym(combination)+808]) < t0(=[sym(combination)+792]) (signed).
  The `beq` branch at 0x10013e60 targets 0x10013e80, is taken when (t9(=[a0+2636]) & 0xc) == 0, and falls through when (t9(=[a0+2636]) & 0xc) != 0.
  The `beq` branch at 0x10013e6c targets 0x10013e80, is taken when a4(=[sym(combination)+820]) >= t8(=[sym(combination)+788]) (signed), and falls through when a4(=[sym(combination)+820]) < t8(=[sym(combination)+788]) (signed).
  The `beq` branch at 0x10013e8c targets 0x10013eac, is taken when (v1(=[a0+2640]) & 0x3) == 0, and falls through when (v1(=[a0+2640]) & 0x3) != 0.
  The `beq` branch at 0x10013e98 targets 0x10013eb0, is taken when a3(=[sym(combination)+828]) >= t2(=[sym(combination)+796]) (signed), and falls through when a3(=[sym(combination)+828]) < t2(=[sym(combination)+796]) (signed).
  The `beq` branch at 0x10013eb0 targets 0x10013ebc, is taken when a0(=[sym(combination)+816]) == a5(=[sym(combination)+784]), and falls through when a0(=[sym(combination)+816]) != a5(=[sym(combination)+784]).
  The `beq` branch at 0x10013ec0 targets 0x10013ecc, is taken when a0(=[sym(combination)+824]) == t0(?), and falls through when a0(=[sym(combination)+824]) != t0(?).
  The `beq` branch at 0x10013ed0 targets 0x10013edc, is taken when a0(=[sym(combination)+804]) == t8(=[sym(combination)+788]), and falls through when a0(=[sym(combination)+804]) != t8(=[sym(combination)+788]).
  The `beq` branch at 0x10013ee0 targets 0x10013ef0, is taken when a0(=[sym(combination)+812]) == t2(?), and falls through when a0(=[sym(combination)+812]) != t2(?).
  The `beq` branch at 0x10013ef0 targets 0x10013f00, is taken when a1(=[sym(combination)+836]) == a4(?), and falls through when a1(=[sym(combination)+836]) != a4(?).
  The `beq` branch at 0x10013f00 targets 0x10013f10, is taken when a2(=[sym(combination)+844]) == a3(=[sym(combination)+828]), and falls through when a2(=[sym(combination)+844]) != a3(=[sym(combination)+828]).
  The `beq` branch at 0x10013f10 targets 0x10013f1c, is taken when a0(=[sym(combination)+832]) == t1(?), and falls through when a0(=[sym(combination)+832]) != t1(?).
  The `beq` branch at 0x10013f20 targets 0x10013c14, is taken when a0(=[sym(combination)+840]) == a6(=[sym(combination)+808]), and falls through when a0(=[sym(combination)+840]) != a6(=[sym(combination)+808]).
  The `beq` branch at 0x10013f28 targets 0x10013c10 and is always taken.
  The `blez` branch at 0x10013f34 targets 0x10013c14, is taken when a5(=[sym(combination)+848]) <= 0 (signed), and falls through when a5(=[sym(combination)+848]) > 0 (signed).
  The `beq` branch at 0x10013f40 targets 0x10013f64 and is always taken.
  The `beq` branch at 0x10013f5c targets 0x10013fc8, is taken when a4(?) >= a5(=[sym(combination)+848]) (signed), and falls through when a4(?) < a5(=[sym(combination)+848]) (signed).
  The `beq` branch at 0x10013f70 targets 0x10013f98, is taken when (a6(?) & t1(=[a0+2636])) == 0, and falls through when (a6(?) & t1(=[a0+2636])) != 0.
  The `beq` branch at 0x10013f78 targets 0x10013f98, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x10013f88 targets 0x10013f94, is taken when t2(?) >= a5(?) (signed), and falls through when t2(?) < a5(?) (signed).
  The `beq` branch at 0x10013fa4 targets 0x10013f54, is taken when (a6(?) & t8(=[a0+2640])) == 0, and falls through when (a6(?) & t8(=[a0+2640])) != 0.
  The `beq` branch at 0x10013fb0 targets 0x10013f50, is taken when a4(?) == t9(=[sym(combination)+848]-1), and falls through when a4(?) != t9(=[sym(combination)+848]-1).
  The `beq` branch at 0x10013fb8 targets 0x10013f50, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10013fc0 targets 0x10013f50 and is always taken.
  The `beq` branch at 0x10013fc8 targets 0x10013c14 and is always taken.
  The `blez` branch at 0x10013fd0 targets 0x10013c14, is taken when a5(=[sym(combination)+848]) <= 0 (signed), and falls through when a5(=[sym(combination)+848]) > 0 (signed).
  The `beq` branch at 0x10013fdc targets 0x100140ec and is always taken.
  The `beq` branch at 0x10014000 targets 0x10014064, is taken when a4(?) >= a5(=[sym(combination)+848]) (signed), and falls through when a4(?) < a5(=[sym(combination)+848]) (signed).
  The `beq` branch at 0x10014010 targets 0x10014034, is taken when (a6(?) & a1(=[a0+2628])) == 0, and falls through when (a6(?) & a1(=[a0+2628])) != 0.
  The `beq` branch at 0x10014018 targets 0x10014030, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x10014024 targets 0x10014030, is taken when a2(?) >= a5(?) (signed), and falls through when a2(?) < a5(?) (signed).
  The `beq` branch at 0x10014040 targets 0x10013ff4, is taken when (a6(?) & t1(=[a0+2632])) == 0, and falls through when (a6(?) & t1(=[a0+2632])) != 0.
  The `beq` branch at 0x1001404c targets 0x10013ff0, is taken when a4(?) == t2(=[sym(combination)+848]-1), and falls through when a4(?) != t2(=[sym(combination)+848]-1).
  The `beq` branch at 0x10014054 targets 0x10013ff0, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x1001405c targets 0x10013ff0 and is always taken.
  The `beq` branch at 0x10014064 targets 0x10013c14 and is always taken.
  The `beq` branch at 0x1001406c targets 0x10013a88, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x10014074 targets 0x10013a88 and is always taken.
  The `beq` branch at 0x1001407c targets 0x10013aac, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x10014084 targets 0x10013aac and is always taken.
  The `beq` branch at 0x1001408c targets 0x10013ad8, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x10014094 targets 0x10013ad8 and is always taken.
  The `beq` branch at 0x1001409c targets 0x10013afc, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x100140a4 targets 0x10013afc and is always taken.
  The `beq` branch at 0x100140ac targets 0x10013b28, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x100140b4 targets 0x10013b28 and is always taken.
  The `beq` branch at 0x100140bc targets 0x10013b4c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x100140c4 targets 0x10013b4c and is always taken.
  The `beq` branch at 0x100140cc targets 0x10013b78, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x100140d4 targets 0x10013b78 and is always taken.
  The `beq` branch at 0x100140dc targets 0x10013b9c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x100140e4 targets 0x10013b9c and is always taken.
  The `beq` branch at 0x100140f0 targets 0x1001400c and is always taken.
  The return at 0x10013cc4 has v0 = [sym(combination)+856]-1.
  The instructions from 0x10013f48 to 0x10013f4c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10013fe4 to 0x10013fec are not reached by any path from the entry, and their branches are not listed.

- `setInitialTiling__23StcombineMainFrameClassGv` in `usr/gfx/sgcombine` at 0x10014100 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10014100-0x10014380 (640 bytes).
  It occupies 640 bytes.
  The `lw` at 0x1001410c loads 4 bytes from abs 0x100330a0.
  The `lw` at 0x10014110 loads 4 bytes from sym(combination) +0x30c.
  The `lw` at 0x10014114 loads 4 bytes from abs 0x10032930.
  The `lw` at 0x1001412c loads 4 bytes from table(0x1002c6b8) +0x0.
  6 such `sw` accesses store 4 bytes to sym(combination) +0x350, including `sw` at 0x1001413c, `sw` at 0x100141a0, `sw` at 0x100141e8.
  4 such `sw` accesses store 4 bytes to sym(combination) +0x340, including `sw` at 0x10014140, `sw` at 0x100141b4, `sw` at 0x100141ec.
  4 such `sw` accesses store 4 bytes to sym(combination) +0x344, including `sw` at 0x10014144, `sw` at 0x100141b8, `sw` at 0x100141f0.
  4 such `sw` accesses store 4 bytes to sym(combination) +0x330, including `sw` at 0x10014148, `sw` at 0x100141c4, `sw` at 0x100141f4.
  4 such `sw` accesses store 4 bytes to sym(combination) +0x334, including `sw` at 0x1001414c, `sw` at 0x100141c8, `sw` at 0x100141f8.
  4 such `sw` accesses store 4 bytes to sym(combination) +0x320, including `sw` at 0x10014150, `sw` at 0x100141d4, `sw` at 0x100141fc.
  4 such `sw` accesses store 4 bytes to sym(combination) +0x324, including `sw` at 0x10014154, `sw` at 0x100141d8, `sw` at 0x10014200.
  4 such `sw` accesses store 4 bytes to sym(combination) +0x310, including `sw` at 0x10014158, `sw` at 0x10014194, `sw` at 0x10014204.
  4 such `sw` accesses store 4 bytes to sym(combination) +0x314, including `sw` at 0x1001415c, `sw` at 0x10014198, `sw` at 0x10014208.
  6 such `lw` accesses load 4 bytes from sym(combination) +0x354, including `lw` at 0x10014160, `lw` at 0x100141a4, `lw` at 0x1001420c.
  6 such `lw` accesses load 4 bytes from sym(combination) +0x358, including `lw` at 0x10014164, `lw` at 0x100141a8, `lw` at 0x10014210.
  4 such `sw` accesses store 4 bytes to sym(combination) +0x34c, including `sw` at 0x10014168, `sw` at 0x100141c0, `sw` at 0x10014214.
  4 such `sw` accesses store 4 bytes to sym(combination) +0x348, including `sw` at 0x1001416c, `sw` at 0x100141bc, `sw` at 0x10014218.
  4 such `sw` accesses store 4 bytes to sym(combination) +0x33c, including `sw` at 0x10014170, `sw` at 0x100141d0, `sw` at 0x1001421c.
  4 such `sw` accesses store 4 bytes to sym(combination) +0x338, including `sw` at 0x10014174, `sw` at 0x100141cc, `sw` at 0x10014220.
  4 such `sw` accesses store 4 bytes to sym(combination) +0x32c, including `sw` at 0x10014178, `sw` at 0x100141e4, `sw` at 0x10014224.
  4 such `sw` accesses store 4 bytes to sym(combination) +0x328, including `sw` at 0x1001417c, `sw` at 0x100141dc, `sw` at 0x10014228.
  4 such `sw` accesses store 4 bytes to sym(combination) +0x31c, including `sw` at 0x10014180, `sw` at 0x100141ac, `sw` at 0x1001422c.
  4 such `sw` accesses store 4 bytes to sym(combination) +0x318, including `sw` at 0x10014188, `sw` at 0x100141b0, `sw` at 0x10014234.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9c, including `lw` at 0x10014238, `lw` at 0x100142a4.
  2 such `lw` accesses load 4 bytes from [a0+156] +0x0, including `lw` at 0x1001423c, `lw` at 0x100142a8.
  8 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10014268, `sw` at 0x10014270, `sw` at 0x10014278.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x350, including `lw` at 0x10014288, `lw` at 0x100142f8.
  The `beq` branch at 0x10014124 targets 0x1001418c, is taken when a4(=[sym(combination)+780]) >= 0x7 (unsigned), and falls through when a4(=[sym(combination)+780]) < 0x7 (unsigned).
  The `blez` branch at 0x10014248 targets 0x1001418c, is taken when a3(=[[a0+156]]) <= 0 (signed), and falls through when a3(=[[a0+156]]) > 0 (signed).
  The `bne` branch at 0x10014294 targets 0x10014250, is taken when a4(?) < a3(=[sym(combination)+848]) (signed), and falls through when a4(?) >= a3(=[sym(combination)+848]) (signed).
  The `beq` branch at 0x1001429c targets 0x1001418c and is always taken.
  The `blez` branch at 0x100142b4 targets 0x1001418c, is taken when a3(=[[a0+156]]) <= 0 (signed), and falls through when a3(=[[a0+156]]) > 0 (signed).
  The `bne` branch at 0x10014304 targets 0x100142c0, is taken when a4(?) < a3(=[sym(combination)+848]) (signed), and falls through when a4(?) >= a3(=[sym(combination)+848]) (signed).
  The `beq` branch at 0x1001430c targets 0x1001418c and is always taken.
  The return at 0x10014184 has v0 = ?.
  The return at 0x1001418c has v0 = ?.
  The return at 0x100141e0 has v0 = ?.
  The return at 0x10014230 has v0 = [sym(combination)+852].
  The return at 0x10014378 has v0 = [sym(combination)+856].
  The indirect jump at 0x10014130 uses the jump table at 0x1002c6b8 with targets 0x10014194, 0x10014314, 0x100142a4, 0x10014238, 0x100141e8, 0x10014138, 0x1001418c.

- `__ct__25StcombineMainFrameClassUIGPCcP10_WidgetRec` in `usr/gfx/sgcombine` at 0x10014570 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10014570-0x100145d4 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0x100145ac stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10014598 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100145b4 calls create__25StcombineMainFrameClassUIGP10_WidgetRec [0x100146a0] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The return at 0x100145cc has v0 = a0.

- `__ct__25StcombineMainFrameClassUIGPCc` in `usr/gfx/sgcombine` at 0x100145e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100145e0-0x10014628 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x10014618 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10014600 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10014620 has v0 = a0.

- `__dt__25StcombineMainFrameClassUIGv` in `usr/gfx/sgcombine` at 0x10014630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10014630-0x1001469c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x10014660 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10014668 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10014684 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10014650 targets 0x1001468c, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10014678 targets 0x10014690, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10014694 has v0 = one of ret(__dt__11VkComponentGv), ?.

- `create__25StcombineMainFrameClassUIGP10_WidgetRec` in `usr/gfx/sgcombine` at 0x100146a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100146a0-0x100157f4 (4436 bytes).
  It occupies 4436 bytes.
  The `lw` at 0x100146d8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from sym(xmFrameWidgetClass) +0x0, including `lw` at 0x10014700, `lw` at 0x1001538c.
  The `sw` at 0x10014708 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x1001470c stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `lw` at 0x10014730 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x10014758 loads 4 bytes from sym(xmFormWidgetClass) +0x0.
  The `sw` at 0x1001477c stores 4 bytes to a0 (arg0 at entry) +0x54.
  8 such `lw` accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0, including `lw` at 0x10014780, `lw` at 0x10014a88, `lw` at 0x10014bfc.
  15 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x10014858, `lw` at 0x1001497c, `lw` at 0x10014a7c.
  The `sw` at 0x1001485c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `lw` at 0x10014878 loads 4 bytes from sym(xmTextFieldWidgetClass) +0x0.
  The `sw` at 0x1001491c stores 4 bytes to a0 (arg0 at entry) +0x24.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0x10014938, `lw` at 0x10014b4c, `lw` at 0x10015544.
  The `sw` at 0x100149ac stores 4 bytes to a0 (arg0 at entry) +0x68.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x68, including `lw` at 0x100149cc, `lw` at 0x100149f0, `lw` at 0x10014a14.
  The `sw` at 0x100149d0 stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x100149f4 stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `sw` at 0x10014a18 stores 4 bytes to a0 (arg0 at entry) +0x84.
  The `sw` at 0x10014a3c stores 4 bytes to a0 (arg0 at entry) +0x98.
  The `sw` at 0x10014a60 stores 4 bytes to a0 (arg0 at entry) +0x8c.
  The `sw` at 0x10014a84 stores 4 bytes to a0 (arg0 at entry) +0x94.
  The `sw` at 0x10014b20 stores 4 bytes to a0 (arg0 at entry) +0x28.
  4 such `lw` accesses load 4 bytes from sym(xmPushButtonWidgetClass) +0x0, including `lw` at 0x10014b2c, `lw` at 0x10014d5c, `lw` at 0x10014e24.
  The `sw` at 0x10014bd0 stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `sw` at 0x10014c90 stores 4 bytes to a0 (arg0 at entry) +0x4c.
  The `sw` at 0x10014d40 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  The `sw` at 0x10014e04 stores 4 bytes to a0 (arg0 at entry) +0x48.
  The `sw` at 0x10014ecc stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `sw` at 0x10014f70 stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `sw` at 0x10014fd8 stores 4 bytes to a0 (arg0 at entry) +0x64.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x64, including `lw` at 0x10014ff8, `lw` at 0x1001501c, `lw` at 0x10015040.
  The `sw` at 0x10014ffc stores 4 bytes to a0 (arg0 at entry) +0x70.
  The `sw` at 0x10015020 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0x10015044 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sw` at 0x10015068 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `sw` at 0x1001508c stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x1001509c stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `sw` at 0x10015140 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `sw` at 0x10015218 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `sw` at 0x100152c8 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `sw` at 0x10015380 stores 4 bytes to a0 (arg0 at entry) +0x30.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x100153ac, `lw` at 0x10015534.
  The `sw` at 0x10015430 stores 4 bytes to a0 (arg0 at entry) +0x40.
  The `lw` at 0x10015444 loads 4 bytes from sym(glwMDrawingAreaWidgetClass) +0x0.
  The `sw` at 0x100154a4 stores 4 bytes to a0 (arg0 at entry) +0x44.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x100154c0, `lw` at 0x100154dc, `lw` at 0x100154f8.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x10015518, `lw` at 0x10015610, `lw` at 0x10015650.
  The `lw` at 0x1001552c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0x1001556c loads 4 bytes from a0 (arg0 at entry) +0x20.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x50, including `lw` at 0x100155e4, `lw` at 0x10015624, `lw` at 0x10015678.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3c, including `lw` at 0x100155f0, `lw` at 0x10015620.
  The `lw` at 0x10015600 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5c, including `lw` at 0x10015604, `lw` at 0x10015644, `lw` at 0x10015668.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x10015630, `lw` at 0x10015660, `lw` at 0x100156b4.
  The `lw` at 0x10015640 loads 4 bytes from a0 (arg0 at entry) +0x48.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x100156a4, `lw` at 0x10015758, `lw` at 0x1001578c.
  The `lw` at 0x10015780 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x10015798 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `jalr` at 0x100146d0 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultStcombineMainFrameClassUIResources__25StcombineMainFrameClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x100146fc calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFrameWidgetClass)], a2=a1 at entry (arg1), a3=sym(_XmStrings)+9636, a4=0x5, a5=0x0.
  The `jalr` at 0x10014714 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10014770 calls XtVaCreateManagedWidget with a0=0x1002c6f8, a1=[sym(xmFormWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+9052, a4=0x1, a5=sym(XtStrings)+872, a6=0x30c, a7=sym(XtStrings)+234.
  The `jalr` at 0x10014850 calls XtVaCreateManagedWidget with a0=0x1002c710, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100148f4 calls XtVaCreateManagedWidget with a0=0x1002c728, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+84], a3=sym(_XmStrings)+6579, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10014920 calls VkGetResource__GP10_WidgetRecPCcN32 with a0=ret(XtVaCreateManagedWidget), a1=0x1002c738, a2=0x1002c750, a3=sym(XtStrings)+1754, a4=0x10033498.
  The `jalr` at 0x1001493c calls XtVaSetValues with a0=[a0+36], a1=sym(XtStrings)+52, a2=ret(VkGetResource__GP10_WidgetRecPCcN32), a3=0x0.
  The `jalr` at 0x1001494c calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x10014980 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+84], a2=0x1002c768, a3=0x0, a4=0x0.
  The `jalr` at 0x100149b0 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=?, a1=0x1002c778, a2=sym(doTilingModeOffButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100149d4 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+104], a1=0x1002c790, a2=sym(doTilingModeSpatialButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100149f8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+104], a1=0x1002c7b0, a2=sym(doTilingModeHStripesButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10014a1c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+104], a1=0x1002c7d0, a2=sym(doTilingModeVStripesbuttonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10014a40 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+104], a1=0x1002c7f0, a2=sym(doTilingModePixelAverageButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10014a64 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+104], a1=0x1002c810, a2=sym(doTilingModeStereoButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10014af8 calls XtVaCreateManagedWidget with a0=0x1002c828, a1=[sym(xmLabelWidgetClass)], a2=[a0+84], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10014bb4 calls XtVaCreateManagedWidget with a0=0x1002c838, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+84], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10014bd8 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+4683, a2=sym(doCmpFmtBrowseButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10014c84 calls XtVaCreateManagedWidget with a0=0x1002c850, a1=[sym(xmLabelWidgetClass)], a2=[a0+84], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10014d34 calls XtVaCreateManagedWidget with a0=0x1002c860, a1=[sym(xmLabelWidgetClass)], a2=[a0+84], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10014de4 calls XtVaCreateManagedWidget with a0=0x1002c878, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+84], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10014e00 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+4683, a2=sym(doOdsyBrowseButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10014eac calls XtVaCreateManagedWidget with a0=0x1002c890, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+84], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10014ec8 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+4683, a2=sym(doExternalBrowseButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10014f64 calls XtVaCreateManagedWidget with a0=0x1002c8a8, a1=[sym(xmLabelWidgetClass)], a2=[a0+84], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10014f78 calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x10014fac calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+84], a2=0x1002c8b8, a3=0x0, a4=0x0.
  The `jalr` at 0x10014fdc calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=?, a1=0x1002c8c8, a2=sym(doSyncSrcInternalButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10015000 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+100], a1=0x1002c8e0, a2=sym(doSyncSrcExternalButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10015024 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+100], a1=0x1002c8f8, a2=sym(doSyncSrcPipe0ButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10015048 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+100], a1=0x1002c910, a2=sym(doSyncSrcPipe1ButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1001506c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+100], a1=0x1002c928, a2=sym(doSyncSrcPipe2ButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10015090 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+100], a1=0x1002c940, a2=sym(doSyncSrcPipe3ButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10015134 calls XtVaCreateManagedWidget with a0=0x1002c958, a1=[sym(xmLabelWidgetClass)], a2=[a0+84], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100151f8 calls XtVaCreateManagedWidget with a0=0x1002c968, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+84], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10015214 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+4683, a2=sym(doDownloadButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100152bc calls XtVaCreateManagedWidget with a0=0x1002c978, a1=[sym(xmLabelWidgetClass)], a2=[a0+84], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10015360 calls XtVaCreateManagedWidget with a0=0x1002c990, a1=[sym(xmLabelWidgetClass)], a2=[a0+84], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10015428 calls XtVaCreateManagedWidget with a0=0x100334a0, a1=[sym(xmFrameWidgetClass)], a2=[a0+84], a3=sym(_XmStrings)+9636, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10015488 calls XtVaCreateManagedWidget with a0=0x1002c9a0, a1=[sym(glwMDrawingAreaWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=0x100334a8, a4=0x1, a5=0x1002c9b0, a6=0x1, a7=0x1002c9c0.
  The `jalr` at 0x100154a8 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=0x1002c9d8, a2=sym(ginitCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100154c4 calls XtAddCallback with a0=[a0+68], a1=0x1002c9e8, a2=sym(inputCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100154e0 calls XtAddCallback with a0=[a0+68], a1=0x1002c9f8, a2=sym(resizeCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100154fc calls XtAddCallback with a0=[a0+68], a1=0x1002ca08, a2=sym(exposeCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10015508 calls baseWidget__10VkMenuItemCGv with a0=[a0+100], a1=?, a2=?, a3=?.
  The `jalr` at 0x10015528 calls XtVaSetValues with a0=[a0+96], a1=sym(_XmStrings)+10305, a2=[a0+64], a3=sym(_XmStrings)+7562, a4=ret(baseWidget__10VkMenuItemCGv), a5=0x0.
  The `jalr` at 0x10015540 calls XtVaSetValues with a0=[a0+36], a1=sym(_XmStrings)+7562, a2=[a0+40], a3=0x0.
  The `jalr` at 0x1001554c calls baseWidget__10VkMenuItemCGv with a0=[a0+104], a1=?, a2=?, a3=?.
  The `jalr` at 0x100155dc calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x1, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x100155fc calls XtVaSetValues with a0=[a0+76], a1=sym(_XmStrings)+10305, a2=[a0+60], a3=sym(_XmStrings)+7562, a4=[a0+80], a5=0x0.
  The `jalr` at 0x1001561c calls XtVaSetValues with a0=[a0+60], a1=sym(_XmStrings)+10305, a2=[a0+64], a3=sym(_XmStrings)+7562, a4=[a0+92], a5=0x0.
  The `jalr` at 0x1001563c calls XtVaSetValues with a0=[a0+72], a1=sym(_XmStrings)+10305, a2=[a0+56], a3=sym(_XmStrings)+7562, a4=[a0+80], a5=0x0.
  The `jalr` at 0x1001565c calls XtVaSetValues with a0=[a0+56], a1=sym(_XmStrings)+10305, a2=[a0+64], a3=sym(_XmStrings)+7562, a4=[a0+92], a5=0x0.
  The `jalr` at 0x10015674 calls XtVaSetValues with a0=[a0+80], a1=sym(_XmStrings)+10305, a2=[a0+92], a3=0x0.
  The `jalr` at 0x10015680 calls baseWidget__10VkMenuItemCGv with a0=[a0+100], a1=?, a2=?, a3=?.
  The `jalr` at 0x1001572c calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x3, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x10015760 calls XtVaSetValues with a0=[a0+92], a1=sym(_XmStrings)+10305, a2=[a0+48], a3=0x0.
  The `jalr` at 0x1001577c calls XtVaSetValues with a0=[a0+44], a1=sym(_XmStrings)+10305, a2=[a0+64], a3=0x0.
  The `jalr` at 0x1001579c calls XtVaSetValues with a0=[a0+52], a1=sym(_XmStrings)+10305, a2=[a0+48], a3=sym(_XmStrings)+7562, a4=[a0+48], a5=0x0.
  The `jalr` at 0x100157b8 calls XtVaSetValues with a0=[a0+48], a1=sym(_XmStrings)+10305, a2=[a0+64], a3=0x0.
  The `jalr` at 0x100157d4 calls XtVaSetValues with a0=[a0+68], a1=sym(_XmStrings)+10361, a2=0x1, a3=0x0.
  The `beq` branch at 0x10014958 targets 0x10014998, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10014990 targets 0x1001499c and is always taken.
  The `beq` branch at 0x10014f84 targets 0x10014fc4, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10014fbc targets 0x10014fc8 and is always taken.
  The return at 0x100157ec has v0 = ret(XtVaSetValues).

- `className__25StcombineMainFrameClassUIGv` in `usr/gfx/sgcombine` at 0x10015800 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015800-0x10015818 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1001580c loads 4 bytes from abs 0x10032930.
  The return at 0x10015810 has v0 = 0x1002ca18.

- `doCmpFmtBrowseButton__25StcombineMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10015820 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015820-0x10015828 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10015820 has v0 = ?.

- `doDownloadButton__25StcombineMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10015830 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015830-0x10015838 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10015830 has v0 = ?.

- `doExternalBrowseButton__25StcombineMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10015840 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015840-0x10015848 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10015840 has v0 = ?.

- `doOdsyBrowseButton__25StcombineMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10015850 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015850-0x10015858 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10015850 has v0 = ?.

- `doSyncSrcExternalButton__25StcombineMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10015860 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015860-0x10015868 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10015860 has v0 = ?.

- `doSyncSrcInternalButton__25StcombineMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10015870 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015870-0x10015878 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10015870 has v0 = ?.

- `doSyncSrcPipe0Button__25StcombineMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10015880 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015880-0x10015888 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10015880 has v0 = ?.

- `doSyncSrcPipe1Button__25StcombineMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10015890 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015890-0x10015898 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10015890 has v0 = ?.

- `doSyncSrcPipe2Button__25StcombineMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100158a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100158a0-0x100158a8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x100158a0 has v0 = ?.

- `doSyncSrcPipe3Button__25StcombineMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100158b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100158b0-0x100158b8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x100158b0 has v0 = ?.

- `doTilingModeHStripesButton__25StcombineMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100158c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100158c0-0x100158c8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x100158c0 has v0 = ?.

- `doTilingModeOffButton__25StcombineMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100158d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100158d0-0x100158d8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x100158d0 has v0 = ?.

- `doTilingModePixelAverageButton__25StcombineMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100158e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100158e0-0x100158e8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x100158e0 has v0 = ?.

- `doTilingModeSpatialButton__25StcombineMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100158f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100158f0-0x100158f8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x100158f0 has v0 = ?.

- `doTilingModeStereoButton__25StcombineMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10015900 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015900-0x10015908 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10015900 has v0 = ?.

- `doTilingModeVStripesbutton__25StcombineMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10015910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015910-0x10015918 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10015910 has v0 = ?.

- `expose__25StcombineMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10015920 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015920-0x10015928 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10015920 has v0 = ?.

- `ginit__25StcombineMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10015930 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015930-0x10015938 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10015930 has v0 = ?.

- `input__25StcombineMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10015940 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015940-0x10015948 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10015940 has v0 = ?.

- `resize__25StcombineMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10015950 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015950-0x10015958 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10015950 has v0 = ?.

- `doCmpFmtBrowseButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10015960 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015960-0x100159a4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10015964 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10015970 loads 4 bytes from [a1+8] +0x9c.
  The `lw` at 0x1001597c loads 4 bytes from [a1+8] +0xa4.
  The `jalr` at 0x1001598c calls (unknown callee) with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24f80.
  The return at 0x1001599c has v0 = ret(?).

- `doDownloadButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x100159b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100159b0-0x100159f4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x100159b4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100159c0 loads 4 bytes from [a1+8] +0xa8.
  The `lw` at 0x100159cc loads 4 bytes from [a1+8] +0xb0.
  The `jalr` at 0x100159dc calls (unknown callee) with a0=([[a1+8]+168] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24f30.
  The return at 0x100159ec has v0 = ret(?).

- `doExternalBrowseButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10015a00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015a00-0x10015a44 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10015a04 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10015a10 loads 4 bytes from [a1+8] +0xb4.
  The `lw` at 0x10015a1c loads 4 bytes from [a1+8] +0xbc.
  The `jalr` at 0x10015a2c calls (unknown callee) with a0=([[a1+8]+180] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24ee0.
  The return at 0x10015a3c has v0 = ret(?).

- `doOdsyBrowseButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10015a50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015a50-0x10015a94 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10015a54 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10015a60 loads 4 bytes from [a1+8] +0xc0.
  The `lw` at 0x10015a6c loads 4 bytes from [a1+8] +0xc8.
  The `jalr` at 0x10015a7c calls (unknown callee) with a0=([[a1+8]+192] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24e90.
  The return at 0x10015a8c has v0 = ret(?).

- `doSyncSrcExternalButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10015aa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015aa0-0x10015ae4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10015aa4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10015ab0 loads 4 bytes from [a1+8] +0xcc.
  The `lw` at 0x10015abc loads 4 bytes from [a1+8] +0xd4.
  The `jalr` at 0x10015acc calls (unknown callee) with a0=([[a1+8]+204] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24e40.
  The return at 0x10015adc has v0 = ret(?).

- `doSyncSrcInternalButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10015af0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015af0-0x10015b34 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10015af4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10015b00 loads 4 bytes from [a1+8] +0xd8.
  The `lw` at 0x10015b0c loads 4 bytes from [a1+8] +0xe0.
  The `jalr` at 0x10015b1c calls (unknown callee) with a0=([[a1+8]+216] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24df0.
  The return at 0x10015b2c has v0 = ret(?).

- `doSyncSrcPipe0ButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10015b40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015b40-0x10015b84 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10015b44 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10015b50 loads 4 bytes from [a1+8] +0xe4.
  The `lw` at 0x10015b5c loads 4 bytes from [a1+8] +0xec.
  The `jalr` at 0x10015b6c calls (unknown callee) with a0=([[a1+8]+228] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24da0.
  The return at 0x10015b7c has v0 = ret(?).

- `doSyncSrcPipe1ButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10015b90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015b90-0x10015bd4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10015b94 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10015ba0 loads 4 bytes from [a1+8] +0xf0.
  The `lw` at 0x10015bac loads 4 bytes from [a1+8] +0xf8.
  The `jalr` at 0x10015bbc calls (unknown callee) with a0=([[a1+8]+240] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24d50.
  The return at 0x10015bcc has v0 = ret(?).

- `doSyncSrcPipe2ButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10015be0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015be0-0x10015c24 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10015be4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10015bf0 loads 4 bytes from [a1+8] +0xfc.
  The `lw` at 0x10015bfc loads 4 bytes from [a1+8] +0x104.
  The `jalr` at 0x10015c0c calls (unknown callee) with a0=([[a1+8]+252] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24d00.
  The return at 0x10015c1c has v0 = ret(?).

- `doSyncSrcPipe3ButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10015c30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015c30-0x10015c74 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10015c34 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10015c40 loads 4 bytes from [a1+8] +0x108.
  The `lw` at 0x10015c4c loads 4 bytes from [a1+8] +0x110.
  The `jalr` at 0x10015c5c calls (unknown callee) with a0=([[a1+8]+264] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24cb0.
  The return at 0x10015c6c has v0 = ret(?).

- `doTilingModeHStripesButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10015c80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015c80-0x10015cc4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10015c84 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10015c90 loads 4 bytes from [a1+8] +0x114.
  The `lw` at 0x10015c9c loads 4 bytes from [a1+8] +0x11c.
  The `jalr` at 0x10015cac calls (unknown callee) with a0=([[a1+8]+276] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24c60.
  The return at 0x10015cbc has v0 = ret(?).

- `doTilingModeOffButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10015cd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015cd0-0x10015d14 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10015cd4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10015ce0 loads 4 bytes from [a1+8] +0x120.
  The `lw` at 0x10015cec loads 4 bytes from [a1+8] +0x128.
  The `jalr` at 0x10015cfc calls (unknown callee) with a0=([[a1+8]+288] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24c10.
  The return at 0x10015d0c has v0 = ret(?).

- `doTilingModePixelAverageButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10015d20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015d20-0x10015d64 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10015d24 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10015d30 loads 4 bytes from [a1+8] +0x12c.
  The `lw` at 0x10015d3c loads 4 bytes from [a1+8] +0x134.
  The `jalr` at 0x10015d4c calls (unknown callee) with a0=([[a1+8]+300] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24bc0.
  The return at 0x10015d5c has v0 = ret(?).

- `doTilingModeSpatialButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10015d70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015d70-0x10015db4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10015d74 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10015d80 loads 4 bytes from [a1+8] +0x138.
  The `lw` at 0x10015d8c loads 4 bytes from [a1+8] +0x140.
  The `jalr` at 0x10015d9c calls (unknown callee) with a0=([[a1+8]+312] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24b70.
  The return at 0x10015dac has v0 = ret(?).

- `doTilingModeStereoButtonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10015dc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015dc0-0x10015e04 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10015dc4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10015dd0 loads 4 bytes from [a1+8] +0x144.
  The `lw` at 0x10015ddc loads 4 bytes from [a1+8] +0x14c.
  The `jalr` at 0x10015dec calls (unknown callee) with a0=([[a1+8]+324] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24b20.
  The return at 0x10015dfc has v0 = ret(?).

- `doTilingModeVStripesbuttonCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10015e10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015e10-0x10015e54 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10015e14 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10015e20 loads 4 bytes from [a1+8] +0x150.
  The `lw` at 0x10015e2c loads 4 bytes from [a1+8] +0x158.
  The `jalr` at 0x10015e3c calls (unknown callee) with a0=([[a1+8]+336] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24ad0.
  The return at 0x10015e4c has v0 = ret(?).

- `exposeCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10015e60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015e60-0x10015ea4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10015e64 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10015e70 loads 4 bytes from [a1+8] +0x15c.
  The `lw` at 0x10015e7c loads 4 bytes from [a1+8] +0x164.
  The `jalr` at 0x10015e8c calls (unknown callee) with a0=([[a1+8]+348] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24a80.
  The return at 0x10015e9c has v0 = ret(?).

- `ginitCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10015eb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015eb0-0x10015ef4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10015eb4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10015ec0 loads 4 bytes from [a1+8] +0x168.
  The `lw` at 0x10015ecc loads 4 bytes from [a1+8] +0x170.
  The `jalr` at 0x10015edc calls (unknown callee) with a0=([[a1+8]+360] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24a30.
  The return at 0x10015eec has v0 = ret(?).

- `inputCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10015f00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015f00-0x10015f44 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10015f04 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10015f10 loads 4 bytes from [a1+8] +0x174.
  The `lw` at 0x10015f1c loads 4 bytes from [a1+8] +0x17c.
  The `jalr` at 0x10015f2c calls (unknown callee) with a0=([[a1+8]+372] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x249e0.
  The return at 0x10015f3c has v0 = ret(?).

- `resizeCallback__25StcombineMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10015f50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015f50-0x10015f94 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10015f54 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10015f60 loads 4 bytes from [a1+8] +0x180.
  The `lw` at 0x10015f6c loads 4 bytes from [a1+8] +0x188.
  The `jalr` at 0x10015f7c calls (unknown callee) with a0=([[a1+8]+384] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x24990.
  The return at 0x10015f8c has v0 = ret(?).

- `__ct__20StcombineWindowClassGPCcP3ArgUi` in `usr/gfx/sgcombine` at 0x10015fc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10015fc0-0x100163d0 (1040 bytes).
  It occupies 1040 bytes.
  The `sw` at 0x10015ff4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x1001603c, `lw` at 0x10016398.
  The `lw` at 0x10016040 loads 4 bytes from [a0+8] +0xec.
  The `lw` at 0x10016044 loads 4 bytes from [a0+8] +0xe4.
  The `sw` at 0x10016080 stores 4 bytes to a0 (arg0 at entry) +0x44.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1001608c, `lw` at 0x100160c0, `lw` at 0x10016314.
  The `sw` at 0x100160e4 stores 4 bytes to a0 (arg0 at entry) +0x48.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x10016100, `lw` at 0x1001612c, `lw` at 0x10016158.
  The `sw` at 0x10016110 stores 4 bytes to a0 (arg0 at entry) +0x4c.
  The `sw` at 0x1001613c stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `sw` at 0x10016168 stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `sw` at 0x10016190 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x100161b0 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `sw` at 0x100161dc stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0x100161f8 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x64, including `lw` at 0x10016214, `lw` at 0x10016240.
  The `sw` at 0x10016224 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `sw` at 0x10016250 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0x1001626c stores 4 bytes to a0 (arg0 at entry) +0x70.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0x1001628c, `lw` at 0x100162bc, `lw` at 0x100162d8.
  The `sw` at 0x1001629c stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sw` at 0x100162c8 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `sw` at 0x100162e8 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x1001630c stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `lw` at 0x10016318 loads 4 bytes from [a0+68] +0x9c.
  The `lw` at 0x10016330 loads 4 bytes from a0 (arg0 at entry) +0x80.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x78, including `lw` at 0x10016344, `lw` at 0x1001637c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x74, including `lw` at 0x10016358, `lw` at 0x10016368, `lw` at 0x10016390.
  The `lw` at 0x1001639c loads 4 bytes from [a0+8] +0x170.
  The `lw` at 0x100163a0 loads 4 bytes from [a0+8] +0x168.
  The `jalr` at 0x10015fe0 calls __ct__8VkWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10015ff8 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1001600c calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultStcombineWindowClassResources__20StcombineWindowClass), a3=?.
  The `jalr` at 0x1001601c calls __nw__GUi with a0=0x1f58, a1=?, a2=?, a3=?.
  The `jalr` at 0x10016048 calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=0x0, a3=?.
  The `jal` at 0x10016060 calls __ct__23StcombineMainFrameClassGPCcP10_WidgetRec [0x10010ed0] with a0=ret(__nw__GUi), a1=0x1002d078, a2=ret(?), a3=?.
  The `jalr` at 0x10016088 calls baseWidget__11VkComponentCGv with a0=[a0+68], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x100160ac calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x312, a3=sym(XtStrings)+234, a4=0x2a0, a5=0x0.
  The `jalr` at 0x100160bc calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+68], a2=?, a3=?.
  The `jalr` at 0x100160d0 calls addMenuPane__8VkWindowGPCc with a0=a0 at entry (arg0), a1=0x1002d090, a2=?, a3=?.
  The `jalr` at 0x100160fc calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x1002d0a0, a2=sym(newFileCallback__20StcombineWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10016128 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x1002d0b0, a2=sym(openFileCallback__20StcombineWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10016154 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x1002d0c0, a2=sym(saveCallback__20StcombineWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10016180 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x1002d0d0, a2=sym(saveasCallback__20StcombineWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1001619c calls addSeparator__6VkMenuGi with a0=[a0+72], a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x100161c8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x1002d0e0, a2=sym(quitCallback__20StcombineWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100161e4 calls addMenuPane__8VkWindowGPCc with a0=a0 at entry (arg0), a1=0x1002d0f0, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10016210 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+100], a1=0x1002d100, a2=sym(doTilingPropertiesButtonCallback__20StcombineWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1001623c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+100], a1=0x1002d118, a2=sym(doVideoPropertiesButtonCallback__20StcombineWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10016258 calls addRadioMenuPane__8VkWindowGPCc with a0=a0 at entry (arg0), a1=0x1002d130, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10016288 calls addToggle__6VkMenuGPCcPGP10_WidgetRecPvT2_vPviT4 with a0=[a0+112], a1=0x1002d140, a2=sym(setUseCurrentHardwareTargetCallback__20StcombineWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1, a5=-0x1.
  The `jalr` at 0x100162b8 calls addToggle__6VkMenuGPCcPGP10_WidgetRecPvT2_vPviT4 with a0=[a0+112], a1=0x1002d160, a2=sym(setUserDefinedHardwareTargetButtonCallback__20StcombineWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1, a5=-0x1.
  The `jalr` at 0x100162d4 calls addSeparator__6VkMenuGi with a0=[a0+112], a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x10016300 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+112], a1=0x1002d180, a2=sym(doEditUserHardwareButtonCallback__20StcombineWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1001632c calls deactivate__10VkMenuItemGv with a0=[a0+128], a1=?, a2=a0 at entry (arg0), a3=[[a0+68]+156], a4=[a0+68]+172, a5=a0 at entry (arg0).
  The `jalr` at 0x10016340 calls setVisualState__12VkMenuToggleGc with a0=[a0+120], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10016354 calls setVisualState__12VkMenuToggleGc with a0=[a0+116], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x10016364 calls deactivate__10VkMenuItemGv with a0=[a0+116], a1=?, a2=a0 at entry (arg0), a3=[[a0+68]+156], a4=[a0+68]+172, a5=a0 at entry (arg0).
  The `jalr` at 0x10016378 calls setVisualState__12VkMenuToggleGc with a0=[a0+120], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1001638c calls setVisualState__12VkMenuToggleGc with a0=[a0+116], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x100163a4 calls (unknown callee) with a0=([[a0+8]+360] + a0), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x100163b4 calls showHelpPane__9VkMenuBarGc with a0=ret(?), a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x10016028 targets 0x10016078, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10016070 targets 0x1001607c and is always taken.
  The `bne` branch at 0x10016320 targets 0x10016364, is taken when a3(=[[a0+68]+156]) != a4(=[a0+68]+172), and falls through when a3(=[[a0+68]+156]) == a4(=[a0+68]+172).
  The `beq` branch at 0x1001635c targets 0x10016394 and is always taken.
  The return at 0x100163c8 has v0 = a0.

- `__dt__20StcombineWindowClassGv` in `usr/gfx/sgcombine` at 0x100163d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100163d0-0x10016460 (144 bytes).
  It occupies 144 bytes.
  The `sw` at 0x100163f8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x10016400 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x1001640c loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x10016410 loads 4 bytes from [[a0+68]+8] +0x14.
  The `lw` at 0x10016414 loads 4 bytes from [[a0+68]+8] +0xc.
  The `jalr` at 0x1001641c calls (unknown callee) with a0=([[[a0+68]+8]+12] + [a0+68]), a1=0x3, a2=a2 at entry (arg2), a3=[a0+68].
  The `jalr` at 0x1001642c calls __dt__8VkWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10016448 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100163e8 targets 0x10016450, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10016404 targets 0x1001642c, is taken when a3(=[a0+68]) == 0, and falls through when a3(=[a0+68]) != 0.
  The `beq` branch at 0x1001643c targets 0x10016454, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10016458 has v0 = one of ret(__dt__8VkWindowGv), ?.

- `className__20StcombineWindowClassGv` in `usr/gfx/sgcombine` at 0x10016460 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016460-0x10016478 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1001646c loads 4 bytes from abs 0x10032930.
  The return at 0x10016470 has v0 = 0x1002d198.

- `okToQuit__20StcombineWindowClassGv` in `usr/gfx/sgcombine` at 0x10016480 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016480-0x100164c0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10016480 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x1001648c loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x1001649c loads 4 bytes from [[a0+68]+8] +0x50.
  The `lw` at 0x100164a0 loads 4 bytes from [[a0+68]+8] +0x48.
  The `jalr` at 0x100164a8 calls (unknown callee) with a0=([[[a0+68]+8]+72] + [a0+68]), a1=[a0+68], a2=0x24460, a3=a3 at entry (arg3).
  The return at 0x100164b8 has v0 = ret(?).

- `update__20StcombineWindowClassGv` in `usr/gfx/sgcombine` at 0x100164c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100164c0-0x100164f4 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x100164e0 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `jal` at 0x100164dc calls update__23StcombineMainFrameClassGv [0x10011a90] with a0=[a0+68], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100164ec has v0 = ret(update__23StcombineMainFrameClassGv).

- `loadCmpFormat__20StcombineWindowClassGPc` in `usr/gfx/sgcombine` at 0x10016500 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016500-0x10016534 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x10016520 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `jal` at 0x1001651c calls loadCmpFormat__23StcombineMainFrameClassGPCc [0x10011d40] with a0=[a0+68], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1001652c has v0 = ret(loadCmpFormat__23StcombineMainFrameClassGPCc).

- `doEditUserHardwareButton__20StcombineWindowClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10016540 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016540-0x10016580 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10016540 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x1001654c loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x1001655c loads 4 bytes from [[a0+68]+8] +0x194.
  The `lw` at 0x10016560 loads 4 bytes from [[a0+68]+8] +0x18c.
  The `jalr` at 0x10016568 calls (unknown callee) with a0=([[[a0+68]+8]+396] + [a0+68]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+68], a4=0x243a0.
  The return at 0x10016578 has v0 = ret(?).

- `doTilingPropertiesButton__20StcombineWindowClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10016580 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016580-0x100165c0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10016580 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x1001658c loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x1001659c loads 4 bytes from [[a0+68]+8] +0x1a0.
  The `lw` at 0x100165a0 loads 4 bytes from [[a0+68]+8] +0x198.
  The `jalr` at 0x100165a8 calls (unknown callee) with a0=([[[a0+68]+8]+408] + [a0+68]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+68], a4=0x24360.
  The return at 0x100165b8 has v0 = ret(?).

- `doVideoPropertiesButton__20StcombineWindowClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100165c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100165c0-0x10016600 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x100165c0 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x100165cc loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x100165dc loads 4 bytes from [[a0+68]+8] +0x1ac.
  The `lw` at 0x100165e0 loads 4 bytes from [[a0+68]+8] +0x1a4.
  The `jalr` at 0x100165e8 calls (unknown callee) with a0=([[[a0+68]+8]+420] + [a0+68]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+68], a4=0x24320.
  The return at 0x100165f8 has v0 = ret(?).

- `newFile__20StcombineWindowClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10016600 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016600-0x10016640 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10016600 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x1001660c loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x1001661c loads 4 bytes from [[a0+68]+8] +0x1b8.
  The `lw` at 0x10016620 loads 4 bytes from [[a0+68]+8] +0x1b0.
  The `jalr` at 0x10016628 calls (unknown callee) with a0=([[[a0+68]+8]+432] + [a0+68]), a1=[a0+68], a2=0x242e0, a3=a3 at entry (arg3).
  The return at 0x10016638 has v0 = ret(?).

- `openFile__20StcombineWindowClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10016640 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016640-0x100167e0 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0x10016710 loads 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x8.
  The `lw` at 0x10016724 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x110.
  The `lw` at 0x10016730 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x108.
  The `lw` at 0x100167bc loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x100167c0 loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x100167c4 loads 4 bytes from [[a0+68]+8] +0x1c4.
  The `lw` at 0x100167c8 loads 4 bytes from [[a0+68]+8] +0x1bc.
  The `lw` at 0x100167cc loads 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x54.
  The `jalr` at 0x10016664 calls getenv with a0=0x1002d1b0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10016684 calls sprintf with a0=sp-1056, a1=0x1002d1c0, a2=?, a3=?.
  The `jalr` at 0x10016690 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100166a4 calls setTitle__15VkDialogManagerGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=0x1002d1e0, a2=?, a3=?.
  The `jalr` at 0x100166b0 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100166c0 calls setDirectory__21VkFileSelectionDialogGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=sp-1056, a2=?, a3=?.
  The `jalr` at 0x100166cc calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100166dc calls setFilterPattern__21VkFileSelectionDialogGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=0x100334b8, a2=?, a3=?.
  The `jalr` at 0x100166e8 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100166f4 calls baseWidget__11VkComponentCGv with a0=ret(getTheFileSelectionDialog__Gv), a1=?, a2=?, a3=?.
  The `jalr` at 0x10016708 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001673c calls (unknown callee) with a0=([[ret(getTheFileSelectionDialog__Gv)+8]+264] + ret(getTheFileSelectionDialog__Gv)), a1=0x1002d1f8, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10016760 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001676c calls baseWidget__11VkComponentCGv with a0=ret(getTheFileSelectionDialog__Gv), a1=?, a2=?, a3=?.
  The `jalr` at 0x1001677c calls XmFileSelectionBoxGetChild with a0=ret(baseWidget__11VkComponentCGv), a1=0x8, a2=?, a3=?.
  The `jalr` at 0x100167a0 calls XtVaSetValues with a0=ret(XmFileSelectionBoxGetChild), a1=sym(_XmStrings)+9512, a2=0x0, a3=sym(_XmStrings)+9494, a4=0x0, a5=0x0.
  The `jalr` at 0x100167b0 calls getTheFileSelectionDialog__Gv with a0=?, a1=0x1, a2=?, a3=?.
  The `jalr` at 0x100167d0 calls (unknown callee) with a0=([[[a0+68]+8]+444] + [a0+68]), a1=[ret(getTheFileSelectionDialog__Gv)+84], a2=[a0+68], a3=?.
  The `bne` branch at 0x1001666c targets 0x10016678, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `bne` branch at 0x100166fc targets 0x10016760, is taken when v0(=ret(baseWidget__11VkComponentCGv)) != 0, and falls through when v0(=ret(baseWidget__11VkComponentCGv)) == 0.
  The `beq` branch at 0x10016748 targets 0x100167b0, is taken when v0(=ret(?)) == a1(=0x1), and falls through when v0(=ret(?)) != a1(=0x1).
  The `beq` branch at 0x100167a8 targets 0x10016708 and is always taken.
  The `beq` branch at 0x100167d8 targets 0x10016754 and is always taken.
  The return at 0x10016758 has v0 = ret(?).

- `quit__20StcombineWindowClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100167e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100167e0-0x10016824 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x100167f8 loads 4 bytes from sym(theApplication) +0x0.
  The `lw` at 0x100167fc loads 4 bytes from [sym(theApplication)] +0x8.
  The `lw` at 0x10016800 loads 4 bytes from [[sym(theApplication)]+8] +0xc8.
  The `lw` at 0x10016804 loads 4 bytes from [[sym(theApplication)]+8] +0xc0.
  The `jalr` at 0x1001680c calls (unknown callee) with a0=([[[sym(theApplication)]+8]+192] + [sym(theApplication)]), a1=[sym(theApplication)], a2=0x24100, a3=a3 at entry (arg3).
  The return at 0x1001681c has v0 = ret(?).

- `save__20StcombineWindowClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10016830 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016830-0x10016870 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10016830 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x1001683c loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x1001684c loads 4 bytes from [[a0+68]+8] +0x1d0.
  The `lw` at 0x10016850 loads 4 bytes from [[a0+68]+8] +0x1c8.
  The `jalr` at 0x10016858 calls (unknown callee) with a0=([[[a0+68]+8]+456] + [a0+68]), a1=[a0+68], a2=0x240b0, a3=a3 at entry (arg3).
  The return at 0x10016868 has v0 = ret(?).

- `saveas__20StcombineWindowClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10016870 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016870-0x1001699c (300 bytes).
  It occupies 300 bytes.
  The `lw` at 0x10016920 loads 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x8.
  The `lw` at 0x10016930 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x110.
  The `lw` at 0x1001693c loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x108.
  The `lw` at 0x10016978 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x1001697c loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x10016980 loads 4 bytes from [[a0+68]+8] +0x1dc.
  The `lw` at 0x10016984 loads 4 bytes from [[a0+68]+8] +0x1d4.
  The `lw` at 0x10016988 loads 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x54.
  The `jalr` at 0x10016894 calls getenv with a0=0x1002d1b0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100168b4 calls sprintf with a0=sp-1056, a1=0x1002d1c0, a2=?, a3=?.
  The `jalr` at 0x100168c0 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100168d4 calls setTitle__15VkDialogManagerGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=0x1002d210, a2=?, a3=?.
  The `jalr` at 0x100168e0 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100168f0 calls setDirectory__21VkFileSelectionDialogGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=sp-1056, a2=?, a3=?.
  The `jalr` at 0x100168fc calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001690c calls setFilterPattern__21VkFileSelectionDialogGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=0x100334b8, a2=?, a3=?.
  The `jalr` at 0x10016918 calls getTheFileSelectionDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10016948 calls (unknown callee) with a0=([[ret(getTheFileSelectionDialog__Gv)+8]+264] + ret(getTheFileSelectionDialog__Gv)), a1=0x0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1001696c calls getTheFileSelectionDialog__Gv with a0=?, a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1001698c calls (unknown callee) with a0=([[[a0+68]+8]+468] + [a0+68]), a1=[ret(getTheFileSelectionDialog__Gv)+84], a2=[a0+68], a3=?.
  The `bne` branch at 0x1001689c targets 0x100168a8, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `beq` branch at 0x10016954 targets 0x1001696c, is taken when v0(=ret(?)) == a1(=0x1), and falls through when v0(=ret(?)) != a1(=0x1).
  The `beq` branch at 0x10016994 targets 0x10016960 and is always taken.
  The return at 0x10016964 has v0 = ret(?).

- `setUseCurrentHardwareTarget__20StcombineWindowClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100169a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100169a0-0x100169e0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x100169a0 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x100169ac loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x100169bc loads 4 bytes from [[a0+68]+8] +0x1e8.
  The `lw` at 0x100169c0 loads 4 bytes from [[a0+68]+8] +0x1e0.
  The `jalr` at 0x100169c8 calls (unknown callee) with a0=([[[a0+68]+8]+480] + [a0+68]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+68], a4=0x23f40.
  The return at 0x100169d8 has v0 = ret(?).

- `setUserDefinedHardwareTargetButton__20StcombineWindowClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100169e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100169e0-0x10016a20 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x100169e0 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x100169ec loads 4 bytes from [a0+68] +0x8.
  The `lw` at 0x100169fc loads 4 bytes from [[a0+68]+8] +0x1f4.
  The `lw` at 0x10016a00 loads 4 bytes from [[a0+68]+8] +0x1ec.
  The `jalr` at 0x10016a08 calls (unknown callee) with a0=([[[a0+68]+8]+492] + [a0+68]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+68], a4=0x23f00.
  The return at 0x10016a18 has v0 = ret(?).

- `doEditUserHardwareButtonCallback__20StcombineWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10016a20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016a20-0x10016a64 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10016a24 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10016a30 loads 4 bytes from [a1+8] +0x174.
  The `lw` at 0x10016a3c loads 4 bytes from [a1+8] +0x17c.
  The `jalr` at 0x10016a4c calls (unknown callee) with a0=([[a1+8]+372] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23ec0.
  The return at 0x10016a5c has v0 = ret(?).

- `doTilingPropertiesButtonCallback__20StcombineWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10016a70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016a70-0x10016ab4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10016a74 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10016a80 loads 4 bytes from [a1+8] +0x180.
  The `lw` at 0x10016a8c loads 4 bytes from [a1+8] +0x188.
  The `jalr` at 0x10016a9c calls (unknown callee) with a0=([[a1+8]+384] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23e70.
  The return at 0x10016aac has v0 = ret(?).

- `doVideoPropertiesButtonCallback__20StcombineWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10016ac0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016ac0-0x10016b04 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10016ac4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10016ad0 loads 4 bytes from [a1+8] +0x18c.
  The `lw` at 0x10016adc loads 4 bytes from [a1+8] +0x194.
  The `jalr` at 0x10016aec calls (unknown callee) with a0=([[a1+8]+396] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23e20.
  The return at 0x10016afc has v0 = ret(?).

- `newFileCallback__20StcombineWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10016b10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016b10-0x10016b54 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10016b14 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10016b20 loads 4 bytes from [a1+8] +0x198.
  The `lw` at 0x10016b2c loads 4 bytes from [a1+8] +0x1a0.
  The `jalr` at 0x10016b3c calls (unknown callee) with a0=([[a1+8]+408] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23dd0.
  The return at 0x10016b4c has v0 = ret(?).

- `openFileCallback__20StcombineWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10016b60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016b60-0x10016ba4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10016b64 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10016b70 loads 4 bytes from [a1+8] +0x1a4.
  The `lw` at 0x10016b7c loads 4 bytes from [a1+8] +0x1ac.
  The `jalr` at 0x10016b8c calls (unknown callee) with a0=([[a1+8]+420] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23d80.
  The return at 0x10016b9c has v0 = ret(?).

- `quitCallback__20StcombineWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10016bb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016bb0-0x10016bf4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10016bb4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10016bc0 loads 4 bytes from [a1+8] +0x1b0.
  The `lw` at 0x10016bcc loads 4 bytes from [a1+8] +0x1b8.
  The `jalr` at 0x10016bdc calls (unknown callee) with a0=([[a1+8]+432] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23d30.
  The return at 0x10016bec has v0 = ret(?).

- `saveCallback__20StcombineWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10016c00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016c00-0x10016c44 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10016c04 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10016c10 loads 4 bytes from [a1+8] +0x1bc.
  The `lw` at 0x10016c1c loads 4 bytes from [a1+8] +0x1c4.
  The `jalr` at 0x10016c2c calls (unknown callee) with a0=([[a1+8]+444] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23ce0.
  The return at 0x10016c3c has v0 = ret(?).

- `saveasCallback__20StcombineWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10016c50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016c50-0x10016c94 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10016c54 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10016c60 loads 4 bytes from [a1+8] +0x1c8.
  The `lw` at 0x10016c6c loads 4 bytes from [a1+8] +0x1d0.
  The `jalr` at 0x10016c7c calls (unknown callee) with a0=([[a1+8]+456] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23c90.
  The return at 0x10016c8c has v0 = ret(?).

- `setUseCurrentHardwareTargetCallback__20StcombineWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10016ca0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016ca0-0x10016ce4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10016ca4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10016cb0 loads 4 bytes from [a1+8] +0x1d4.
  The `lw` at 0x10016cbc loads 4 bytes from [a1+8] +0x1dc.
  The `jalr` at 0x10016ccc calls (unknown callee) with a0=([[a1+8]+468] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23c40.
  The return at 0x10016cdc has v0 = ret(?).

- `setUserDefinedHardwareTargetButtonCallback__20StcombineWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10016cf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016cf0-0x10016d34 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10016cf4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10016d00 loads 4 bytes from [a1+8] +0x1e0.
  The `lw` at 0x10016d0c loads 4 bytes from [a1+8] +0x1e8.
  The `jalr` at 0x10016d1c calls (unknown callee) with a0=([[a1+8]+480] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23bf0.
  The return at 0x10016d2c has v0 = ret(?).

- `__ct__25TargetPropertiesFormClassGPCcP10_WidgetRec` in `usr/gfx/sgcombine` at 0x10016d50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016d50-0x10016d98 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x10016d88 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10016d70 calls __ct__27TargetPropertiesFormClassUIGPCcP10_WidgetRec [0x100172f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10016d90 has v0 = a0.

- `__ct__25TargetPropertiesFormClassGPCc` in `usr/gfx/sgcombine` at 0x10016da0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016da0-0x10016de8 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x10016dd8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10016dc0 calls __ct__27TargetPropertiesFormClassUIGPCc [0x10017360] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10016de0 has v0 = a0.

- `__dt__25TargetPropertiesFormClassGv` in `usr/gfx/sgcombine` at 0x10016df0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016df0-0x10016e58 (104 bytes).
  It occupies 104 bytes.
  The `sw` at 0x10016e20 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10016e28 calls __dt__27TargetPropertiesFormClassUIGv [0x100173b0] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10016e40 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10016e10 targets 0x10016e48, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10016e38 targets 0x10016e48, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10016e50 has v0 = one of ?, ret(__dt__27TargetPropertiesFormClassUIGv), ret(__dl__GPv).

- `className__25TargetPropertiesFormClassGv` in `usr/gfx/sgcombine` at 0x10016e60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016e60-0x10016e78 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10016e6c loads 4 bytes from abs 0x10032930.
  The return at 0x10016e70 has v0 = 0x1002d900.

- `CreateTargetPropertiesFormClass__25TargetPropertiesFormClassSGPCcP10_WidgetRec` in `usr/gfx/sgcombine` at 0x10016e80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016e80-0x10016f00 (128 bytes).
  It occupies 128 bytes.
  The `jalr` at 0x10016ea8 calls __nw__GUi with a0=0x44, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10016ed0 calls __ct__25TargetPropertiesFormClassGPCcP10_WidgetRec [0x10016d50] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x10016eb4 targets 0x10016eec, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x10016ee4 has v0 = ret(__nw__GUi).
  The return at 0x10016ef8 has v0 = 0x0.

- `setParent__25TargetPropertiesFormClassGP14VkSimpleWindow` in `usr/gfx/sgcombine` at 0x10016f00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016f00-0x10016f08 (8 bytes).
  It occupies 8 bytes.
  The `sw` at 0x10016f04 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  The return at 0x10016f00 has v0 = ?.

- `update__25TargetPropertiesFormClassGv` in `usr/gfx/sgcombine` at 0x10016f10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016f10-0x10016f50 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10016f14 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x10016f2c loads 4 bytes from [a0+64] +0xa0.
  The `lw` at 0x10016f30 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jalr` at 0x10016f38 calls set__12VkOptionMenuGi with a0=[a0+40], a1=[[a0+64]+160]-1, a2=0x239d0, a3=a3 at entry (arg3).
  The return at 0x10016f48 has v0 = ret(set__12VkOptionMenuGi).

- `setMainFrame__25TargetPropertiesFormClassGP23StcombineMainFrameClass` in `usr/gfx/sgcombine` at 0x10016f50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016f50-0x10016f58 (8 bytes).
  It occupies 8 bytes.
  The `sw` at 0x10016f54 stores 4 bytes to a0 (arg0 at entry) +0x40.
  The return at 0x10016f50 has v0 = ?.

- `doTargetFourPipeButton__25TargetPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10016f60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016f60-0x10016fa4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10016f6c loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `sw` at 0x10016f88 stores 4 bytes to [a0+64] +0xa0.
  The `lw` at 0x10016f90 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `jal` at 0x10016f8c calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x4, a2=[a0+64], a3=0x23980.
  The return at 0x10016f9c has v0 = ret(update__20StcombineWindowClassGv).

- `doTargetOnePipeButton__25TargetPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10016fb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10016fb0-0x10016ff4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10016fbc loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `sw` at 0x10016fd8 stores 4 bytes to [a0+64] +0xa0.
  The `lw` at 0x10016fe0 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `jal` at 0x10016fdc calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x1, a2=[a0+64], a3=0x23930.
  The return at 0x10016fec has v0 = ret(update__20StcombineWindowClassGv).

- `doTargetPropCloseButton__25TargetPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10017000 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017000-0x10017040 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10017000 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lw` at 0x1001700c loads 4 bytes from [a0+60] +0x8.
  The `lw` at 0x1001701c loads 4 bytes from [[a0+60]+8] +0x38.
  The `lw` at 0x10017020 loads 4 bytes from [[a0+60]+8] +0x30.
  The `jalr` at 0x10017028 calls (unknown callee) with a0=([[[a0+60]+8]+48] + [a0+60]), a1=[a0+60], a2=0x238e0, a3=a3 at entry (arg3).
  The return at 0x10017038 has v0 = ret(?).

- `doTargetThreePipeButton__25TargetPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10017040 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017040-0x10017084 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001704c loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `sw` at 0x10017068 stores 4 bytes to [a0+64] +0xa0.
  The `lw` at 0x10017070 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `jal` at 0x1001706c calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x3, a2=[a0+64], a3=0x238a0.
  The return at 0x1001707c has v0 = ret(update__20StcombineWindowClassGv).

- `doTargetTwoPipeButton__25TargetPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10017090 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017090-0x100170d4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001709c loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `sw` at 0x100170b8 stores 4 bytes to [a0+64] +0xa0.
  The `lw` at 0x100170c0 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `jal` at 0x100170bc calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x2, a2=[a0+64], a3=0x23850.
  The return at 0x100170cc has v0 = ret(update__20StcombineWindowClassGv).

- `RegisterTargetPropertiesFormClassInterface__25TargetPropertiesFormClassSGv` in `usr/gfx/sgcombine` at 0x100170e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100170e0-0x100170f8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x100170ec loads 4 bytes from abs 0x10032930.
  The return at 0x100170f0 has v0 = 0x10030bd0.

- `__ct__27TargetPropertiesFormClassUIGPCcP10_WidgetRec` in `usr/gfx/sgcombine` at 0x100172f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100172f0-0x10017354 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0x1001732c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10017318 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10017334 calls create__27TargetPropertiesFormClassUIGP10_WidgetRec [0x10017420] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The return at 0x1001734c has v0 = a0.

- `__ct__27TargetPropertiesFormClassUIGPCc` in `usr/gfx/sgcombine` at 0x10017360 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017360-0x100173a8 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x10017398 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10017380 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100173a0 has v0 = a0.

- `__dt__27TargetPropertiesFormClassUIGv` in `usr/gfx/sgcombine` at 0x100173b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100173b0-0x1001741c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x100173e0 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x100173e8 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10017404 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100173d0 targets 0x1001740c, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x100173f8 targets 0x10017410, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10017414 has v0 = one of ret(__dt__11VkComponentGv), ?.

- `create__27TargetPropertiesFormClassUIGP10_WidgetRec` in `usr/gfx/sgcombine` at 0x10017420 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017420-0x10017744 (804 bytes).
  It occupies 804 bytes.
  The `lw` at 0x1001746c loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0x10017478 loads 4 bytes from sym(xmFormWidgetClass) +0x0.
  The `sw` at 0x1001747c stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x10017480 stores 4 bytes to a0 (arg0 at entry) +0x24.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x100174a4, `lw` at 0x100175e4.
  The `lw` at 0x100174a8 loads 4 bytes from sym(xmPushButtonWidgetClass) +0x0.
  The `sw` at 0x100175a0 stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `sw` at 0x10017614 stores 4 bytes to a0 (arg0 at entry) +0x28.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x10017634, `lw` at 0x10017658, `lw` at 0x1001767c.
  The `sw` at 0x10017638 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `sw` at 0x1001765c stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `sw` at 0x10017680 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `sw` at 0x10017698 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `jalr` at 0x1001744c calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultTargetPropertiesFormClassUIResources__27TargetPropertiesFormClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x10017474 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=sym(_XmStrings)+9052, a4=0x1, a5=0x0.
  The `jalr` at 0x10017494 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x10017584 calls XtVaCreateManagedWidget with a0=0x1002d940, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x0, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100175a4 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+4683, a2=sym(doTargetPropCloseButtonCallback__27TargetPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100175b4 calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x100175e8 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x1002d958, a3=0x0, a4=0x0.
  The `jalr` at 0x10017618 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=?, a1=0x1002d970, a2=sym(doTargetOnePipeButtonCallback__27TargetPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1001763c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+40], a1=0x1002d988, a2=sym(doTargetTwoPipeButtonCallback__27TargetPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10017660 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+40], a1=0x1002d9a0, a2=sym(doTargetThreePipeButtonCallback__27TargetPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10017684 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+40], a1=0x1002d9b8, a2=sym(doTargetFourPipeButtonCallback__27TargetPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10017694 calls baseWidget__10VkMenuItemCGv with a0=[a0+40], a1=?, a2=?, a3=?.
  The `jalr` at 0x1001771c calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x1, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x1, a7=sym(_XmStrings)+9077.
  The `beq` branch at 0x100175c0 targets 0x10017600, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100175f8 targets 0x10017604 and is always taken.
  The return at 0x1001773c has v0 = ret(XtVaSetValues).

- `className__27TargetPropertiesFormClassUIGv` in `usr/gfx/sgcombine` at 0x10017750 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017750-0x10017768 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1001775c loads 4 bytes from abs 0x10032930.
  The return at 0x10017760 has v0 = 0x1002d9d0.

- `doTargetFourPipeButton__27TargetPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10017770 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017770-0x10017778 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10017770 has v0 = ?.

- `doTargetOnePipeButton__27TargetPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10017780 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017780-0x10017788 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10017780 has v0 = ?.

- `doTargetPropCloseButton__27TargetPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10017790 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017790-0x10017798 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10017790 has v0 = ?.

- `doTargetThreePipeButton__27TargetPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100177a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100177a0-0x100177a8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x100177a0 has v0 = ?.

- `doTargetTwoPipeButton__27TargetPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100177b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100177b0-0x100177b8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x100177b0 has v0 = ?.

- `doTargetFourPipeButtonCallback__27TargetPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x100177c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100177c0-0x10017804 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x100177c4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100177d0 loads 4 bytes from [a1+8] +0x9c.
  The `lw` at 0x100177dc loads 4 bytes from [a1+8] +0xa4.
  The `jalr` at 0x100177ec calls (unknown callee) with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23120.
  The return at 0x100177fc has v0 = ret(?).

- `doTargetOnePipeButtonCallback__27TargetPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10017810 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017810-0x10017854 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10017814 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10017820 loads 4 bytes from [a1+8] +0xa8.
  The `lw` at 0x1001782c loads 4 bytes from [a1+8] +0xb0.
  The `jalr` at 0x1001783c calls (unknown callee) with a0=([[a1+8]+168] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x230d0.
  The return at 0x1001784c has v0 = ret(?).

- `doTargetPropCloseButtonCallback__27TargetPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10017860 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017860-0x100178a4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10017864 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10017870 loads 4 bytes from [a1+8] +0xb4.
  The `lw` at 0x1001787c loads 4 bytes from [a1+8] +0xbc.
  The `jalr` at 0x1001788c calls (unknown callee) with a0=([[a1+8]+180] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23080.
  The return at 0x1001789c has v0 = ret(?).

- `doTargetThreePipeButtonCallback__27TargetPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x100178b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100178b0-0x100178f4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x100178b4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100178c0 loads 4 bytes from [a1+8] +0xc0.
  The `lw` at 0x100178cc loads 4 bytes from [a1+8] +0xc8.
  The `jalr` at 0x100178dc calls (unknown callee) with a0=([[a1+8]+192] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x23030.
  The return at 0x100178ec has v0 = ret(?).

- `doTargetTwoPipeButtonCallback__27TargetPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x10017900 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017900-0x10017944 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10017904 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10017910 loads 4 bytes from [a1+8] +0xcc.
  The `lw` at 0x1001791c loads 4 bytes from [a1+8] +0xd4.
  The `jalr` at 0x1001792c calls (unknown callee) with a0=([[a1+8]+204] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x22fe0.
  The return at 0x1001793c has v0 = ret(?).

- `__ct__27TargetPropertiesWindowClassGPCcP3ArgUi` in `usr/gfx/sgcombine` at 0x10017960 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017960-0x10017ab4 (340 bytes).
  It occupies 340 bytes.
  The `sw` at 0x10017994 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x100179dc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x100179e0 loads 4 bytes from [a0+8] +0xec.
  The `lw` at 0x100179e4 loads 4 bytes from [a0+8] +0xe4.
  The `sw` at 0x10017a20 stores 4 bytes to a0 (arg0 at entry) +0x40.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x10017a2c, `lw` at 0x10017a60, `lw` at 0x10017a9c.
  The `jalr` at 0x10017980 calls __ct__14VkSimpleWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10017998 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x100179ac calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultTargetPropertiesWindowClassResources__27TargetPropertiesWindowClass), a3=?.
  The `jalr` at 0x100179bc calls __nw__GUi with a0=0x44, a1=?, a2=?, a3=?.
  The `jalr` at 0x100179e8 calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=0x0, a3=?.
  The `jal` at 0x10017a00 calls __ct__25TargetPropertiesFormClassGPCcP10_WidgetRec [0x10016d50] with a0=ret(__nw__GUi), a1=0x1002daf8, a2=ret(?), a3=?.
  The `jalr` at 0x10017a28 calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x10017a4c calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x10d, a3=sym(XtStrings)+234, a4=0xb2, a5=0x0.
  The `jalr` at 0x10017a5c calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+64], a2=?, a3=?.
  The `jalr` at 0x10017a84 calls VkConfigureWM__GP14VkSimpleWindowcN62 with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x1, a4=0x1, a5=0x1, a6=0x1, a7=0x1.
  The `jal` at 0x10017a98 calls setParent__25TargetPropertiesFormClassGP14VkSimpleWindow [0x10016f00] with a0=[a0+64], a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0x100179c8 targets 0x10017a18, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10017a10 targets 0x10017a1c and is always taken.
  The return at 0x10017aac has v0 = a0.

- `__dt__27TargetPropertiesWindowClassGv` in `usr/gfx/sgcombine` at 0x10017ac0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017ac0-0x10017b50 (144 bytes).
  It occupies 144 bytes.
  The `sw` at 0x10017ae8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x10017af0 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x10017afc loads 4 bytes from [a0+64] +0x8.
  The `lw` at 0x10017b00 loads 4 bytes from [[a0+64]+8] +0x14.
  The `lw` at 0x10017b04 loads 4 bytes from [[a0+64]+8] +0xc.
  The `jalr` at 0x10017b0c calls (unknown callee) with a0=([[[a0+64]+8]+12] + [a0+64]), a1=0x3, a2=a2 at entry (arg2), a3=[a0+64].
  The `jalr` at 0x10017b1c calls __dt__14VkSimpleWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10017b38 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10017ad8 targets 0x10017b40, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10017af4 targets 0x10017b1c, is taken when a3(=[a0+64]) == 0, and falls through when a3(=[a0+64]) != 0.
  The `beq` branch at 0x10017b2c targets 0x10017b44, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10017b48 has v0 = one of ret(__dt__14VkSimpleWindowGv), ?.

- `className__27TargetPropertiesWindowClassGv` in `usr/gfx/sgcombine` at 0x10017b50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017b50-0x10017b68 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10017b5c loads 4 bytes from abs 0x10032930.
  The return at 0x10017b60 has v0 = 0x1002db18.

- `okToQuit__27TargetPropertiesWindowClassGv` in `usr/gfx/sgcombine` at 0x10017b70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017b70-0x10017bb0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10017b74 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x10017b88 loads 4 bytes from [a0+8] +0x38.
  The `lw` at 0x10017b8c loads 4 bytes from [a0+8] +0x30.
  The `jalr` at 0x10017b94 calls (unknown callee) with a0=([[a0+8]+48] + a0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10017ba8 has v0 = 0x0.

- `setMainFrame__27TargetPropertiesWindowClassGP23StcombineMainFrameClass` in `usr/gfx/sgcombine` at 0x10017bb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017bb0-0x10017be4 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x10017bd0 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x10017bcc calls setMainFrame__25TargetPropertiesFormClassGP23StcombineMainFrameClass [0x10016f50] with a0=[a0+64], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10017bdc has v0 = ret(setMainFrame__25TargetPropertiesFormClassGP23StcombineMainFrameClass).

- `update__27TargetPropertiesWindowClassGv` in `usr/gfx/sgcombine` at 0x10017bf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017bf0-0x10017c24 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x10017c10 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x10017c0c calls update__25TargetPropertiesFormClassGv [0x10016f10] with a0=[a0+64], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10017c1c has v0 = ret(update__25TargetPropertiesFormClassGv).

- `__ct__25TilingPropertiesFormClassGPCcP10_WidgetRec` in `usr/gfx/sgcombine` at 0x10017c40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017c40-0x10017c88 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x10017c78 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10017c60 calls __ct__27TilingPropertiesFormClassUIGPCcP10_WidgetRec [0x10019340] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10017c80 has v0 = a0.

- `__ct__25TilingPropertiesFormClassGPCc` in `usr/gfx/sgcombine` at 0x10017c90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017c90-0x10017cd8 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x10017cc8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10017cb0 calls __ct__27TilingPropertiesFormClassUIGPCc [0x100193b0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10017cd0 has v0 = a0.

- `__dt__25TilingPropertiesFormClassGv` in `usr/gfx/sgcombine` at 0x10017ce0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017ce0-0x10017d48 (104 bytes).
  It occupies 104 bytes.
  The `sw` at 0x10017d10 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10017d18 calls __dt__27TilingPropertiesFormClassUIGv [0x10019400] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10017d30 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10017d00 targets 0x10017d38, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10017d28 targets 0x10017d38, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10017d40 has v0 = one of ?, ret(__dt__27TilingPropertiesFormClassUIGv), ret(__dl__GPv).

- `className__25TilingPropertiesFormClassGv` in `usr/gfx/sgcombine` at 0x10017d50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017d50-0x10017d68 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x10017d5c loads 4 bytes from abs 0x10032930.
  The return at 0x10017d60 has v0 = 0x1002db58.

- `CreateTilingPropertiesFormClass__25TilingPropertiesFormClassSGPCcP10_WidgetRec` in `usr/gfx/sgcombine` at 0x10017d70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017d70-0x10017df0 (128 bytes).
  It occupies 128 bytes.
  The `jalr` at 0x10017d98 calls __nw__GUi with a0=0xe4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10017dc0 calls __ct__25TilingPropertiesFormClassGPCcP10_WidgetRec [0x10017c40] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x10017da4 targets 0x10017ddc, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x10017dd4 has v0 = ret(__nw__GUi).
  The return at 0x10017de8 has v0 = 0x0.

- `update__25TilingPropertiesFormClassGv` in `usr/gfx/sgcombine` at 0x10017df0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10017df0-0x10018204 (1044 bytes).
  It occupies 1044 bytes.
  The `lw` at 0x10017e10 loads 4 bytes from a0 (arg0 at entry) +0x38.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x310, including `lw` at 0x10017e30, `lw` at 0x10017e5c.
  The `lw` at 0x10017e3c loads 4 bytes from a0 (arg0 at entry) +0x40.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x314, including `lw` at 0x10017e4c, `lw` at 0x10017e80.
  The `lw` at 0x10017e58 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lw` at 0x10017e64 loads 4 bytes from sym(combination) +0x318.
  The `lw` at 0x10017e7c loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x10017e88 loads 4 bytes from sym(combination) +0x31c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x58, including `lw` at 0x10017ea0, `lw` at 0x10018060, `lw` at 0x100180a4.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x320, including `lw` at 0x10017eb0, `lw` at 0x10017edc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5c, including `lw` at 0x10017ebc, `lw` at 0x10018070, `lw` at 0x100180b4.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x324, including `lw` at 0x10017ecc, `lw` at 0x10017f00.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x10017ed8, `lw` at 0x10018034.
  The `lw` at 0x10017ee4 loads 4 bytes from sym(combination) +0x328.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c, including `lw` at 0x10017efc, `lw` at 0x10018050, `lw` at 0x10018094.
  The `lw` at 0x10017f08 loads 4 bytes from sym(combination) +0x32c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x78, including `lw` at 0x10017f20, `lw` at 0x100180f0, `lw` at 0x10018134.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x330, including `lw` at 0x10017f30, `lw` at 0x10017f5c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x80, including `lw` at 0x10017f3c, `lw` at 0x10018100, `lw` at 0x10018144.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x334, including `lw` at 0x10017f4c, `lw` at 0x10017f80.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x74, including `lw` at 0x10017f58, `lw` at 0x100180c4.
  The `lw` at 0x10017f64 loads 4 bytes from sym(combination) +0x338.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0x10017f7c, `lw` at 0x100180e0, `lw` at 0x10018124.
  The `lw` at 0x10017f88 loads 4 bytes from sym(combination) +0x33c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x98, including `lw` at 0x10017fa0, `lw` at 0x10018180, `lw` at 0x100181e8.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x340, including `lw` at 0x10017fb0, `lw` at 0x10017fdc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9c, including `lw` at 0x10017fbc, `lw` at 0x10018190, `lw` at 0x100181f8.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x344, including `lw` at 0x10017fcc, `lw` at 0x10018000.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x94, including `lw` at 0x10017fd8, `lw` at 0x10018154.
  The `lw` at 0x10017fe4 loads 4 bytes from sym(combination) +0x348.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c, including `lw` at 0x10017ffc, `lw` at 0x10018170, `lw` at 0x100181d8.
  The `lw` at 0x10018008 loads 4 bytes from sym(combination) +0x34c.
  The `lw` at 0x1001801c loads 4 bytes from sym(combination) +0x30c.
  The `lw` at 0x10018024 loads 4 bytes from a0 (arg0 at entry) +0xb4.
  4 such `lw` accesses load 4 bytes from sym(combination) +0x350, including `lw` at 0x10018028, `lw` at 0x100180b8, `lw` at 0x10018148.
  The `lw` at 0x1001819c loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `jal` at 0x10017e18 calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+56], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10017e2c calls __as__9EZWrapperGi [0x10027950] with a0=ret(EZ__GP10_WidgetRec), a1=[sym(combination)+784], a2=?, a3=?.
  The `jal` at 0x10017e38 calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+64], a1=?, a2=?, a3=?.
  The `jal` at 0x10017e48 calls __as__9EZWrapperGi [0x10027950] with a0=ret(EZ__GP10_WidgetRec), a1=[sym(combination)+788], a2=?, a3=?.
  The `jal` at 0x10017e54 calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+52], a1=?, a2=?, a3=?.
  The `jal` at 0x10017e6c calls __as__9EZWrapperGi [0x10027950] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=[sym(combination)+784], a3=?.
  The `jal` at 0x10017e78 calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+44], a1=?, a2=?, a3=?.
  The `jal` at 0x10017e90 calls __as__9EZWrapperGi [0x10027950] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=[sym(combination)+788], a3=?.
  The `jal` at 0x10017e9c calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+88], a1=?, a2=?, a3=?.
  The `jal` at 0x10017eac calls __as__9EZWrapperGi [0x10027950] with a0=ret(EZ__GP10_WidgetRec), a1=[sym(combination)+800], a2=?, a3=?.
  The `jal` at 0x10017eb8 calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+92], a1=?, a2=?, a3=?.
  The `jal` at 0x10017ec8 calls __as__9EZWrapperGi [0x10027950] with a0=ret(EZ__GP10_WidgetRec), a1=[sym(combination)+804], a2=?, a3=?.
  The `jal` at 0x10017ed4 calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+84], a1=?, a2=?, a3=?.
  The `jal` at 0x10017eec calls __as__9EZWrapperGi [0x10027950] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=[sym(combination)+800], a3=?.
  The `jal` at 0x10017ef8 calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+76], a1=?, a2=?, a3=?.
  The `jal` at 0x10017f10 calls __as__9EZWrapperGi [0x10027950] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=[sym(combination)+804], a3=?.
  The `jal` at 0x10017f1c calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+120], a1=?, a2=?, a3=?.
  The `jal` at 0x10017f2c calls __as__9EZWrapperGi [0x10027950] with a0=ret(EZ__GP10_WidgetRec), a1=[sym(combination)+816], a2=?, a3=?.
  The `jal` at 0x10017f38 calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+128], a1=?, a2=?, a3=?.
  The `jal` at 0x10017f48 calls __as__9EZWrapperGi [0x10027950] with a0=ret(EZ__GP10_WidgetRec), a1=[sym(combination)+820], a2=?, a3=?.
  The `jal` at 0x10017f54 calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+116], a1=?, a2=?, a3=?.
  The `jal` at 0x10017f6c calls __as__9EZWrapperGi [0x10027950] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=[sym(combination)+816], a3=?.
  The `jal` at 0x10017f78 calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+108], a1=?, a2=?, a3=?.
  The `jal` at 0x10017f90 calls __as__9EZWrapperGi [0x10027950] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=[sym(combination)+820], a3=?.
  The `jal` at 0x10017f9c calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+152], a1=?, a2=?, a3=?.
  The `jal` at 0x10017fac calls __as__9EZWrapperGi [0x10027950] with a0=ret(EZ__GP10_WidgetRec), a1=[sym(combination)+832], a2=?, a3=?.
  The `jal` at 0x10017fb8 calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+156], a1=?, a2=?, a3=?.
  The `jal` at 0x10017fc8 calls __as__9EZWrapperGi [0x10027950] with a0=ret(EZ__GP10_WidgetRec), a1=[sym(combination)+836], a2=?, a3=?.
  The `jal` at 0x10017fd4 calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+148], a1=?, a2=?, a3=?.
  The `jal` at 0x10017fec calls __as__9EZWrapperGi [0x10027950] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=[sym(combination)+832], a3=?.
  The `jal` at 0x10017ff8 calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+140], a1=?, a2=?, a3=?.
  The `jal` at 0x10018010 calls __as__9EZWrapperGi [0x10027950] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=[sym(combination)+836], a3=?.
  The `jalr` at 0x10018020 calls set__12VkOptionMenuGi with a0=[a0+180], a1=[sym(combination)+780], a2=?, a3=?.
  The `jalr` at 0x1001803c calls XtSetSensitive with a0=[a0+84], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1001804c calls XtSetSensitive with a0=[a0+76], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1001805c calls XtSetSensitive with a0=[a0+88], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1001806c calls XtSetSensitive with a0=[a0+92], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x10018080 calls XtSetSensitive with a0=[a0+84], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10018090 calls XtSetSensitive with a0=[a0+76], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x100180a0 calls XtSetSensitive with a0=[a0+88], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x100180b0 calls XtSetSensitive with a0=[a0+92], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x100180cc calls XtSetSensitive with a0=[a0+116], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x100180dc calls XtSetSensitive with a0=[a0+108], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x100180ec calls XtSetSensitive with a0=[a0+120], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x100180fc calls XtSetSensitive with a0=[a0+128], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x10018110 calls XtSetSensitive with a0=[a0+116], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10018120 calls XtSetSensitive with a0=[a0+108], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10018130 calls XtSetSensitive with a0=[a0+120], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10018140 calls XtSetSensitive with a0=[a0+128], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1001815c calls XtSetSensitive with a0=[a0+148], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1001816c calls XtSetSensitive with a0=[a0+140], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1001817c calls XtSetSensitive with a0=[a0+152], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1001818c calls XtSetSensitive with a0=[a0+156], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x100181a0 calls set__12VkOptionMenuGi with a0=[a0+176], a1=[sym(combination)+848]-1, a2=?, a3=?.
  The `jalr` at 0x100181c4 calls XtSetSensitive with a0=[a0+148], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x100181d4 calls XtSetSensitive with a0=[a0+140], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x100181e4 calls XtSetSensitive with a0=[a0+152], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x100181f4 calls XtSetSensitive with a0=[a0+156], a1=0x0, a2=?, a3=?.
  The `bne` branch at 0x10018030 targets 0x1001807c, is taken when a3(=[sym(combination)+848]) < 0x2 (signed), and falls through when a3(=[sym(combination)+848]) >= 0x2 (signed).
  The `beq` branch at 0x10018074 targets 0x100180b8 and is always taken.
  The `bne` branch at 0x100180c0 targets 0x1001810c, is taken when a4(=[sym(combination)+848]) < 0x3 (signed), and falls through when a4(=[sym(combination)+848]) >= 0x3 (signed).
  The `beq` branch at 0x10018104 targets 0x10018148 and is always taken.
  The `bne` branch at 0x10018150 targets 0x100181c0, is taken when a5(=[sym(combination)+848]) < 0x4 (signed), and falls through when a5(=[sym(combination)+848]) >= 0x4 (signed).
  The `beq` branch at 0x100181fc targets 0x10018198 and is always taken.
  The return at 0x100181b8 has v0 = ret(set__12VkOptionMenuGi).

- `setParent__25TilingPropertiesFormClassGP14VkSimpleWindow` in `usr/gfx/sgcombine` at 0x10018210 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018210-0x10018218 (8 bytes).
  It occupies 8 bytes.
  The `sw` at 0x10018214 stores 4 bytes to a0 (arg0 at entry) +0xe0.
  The return at 0x10018210 has v0 = ?.

- `doCmpPropFourPipeButton__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018220 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018220-0x10018264 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10018244 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x10018250 stores 4 bytes to sym(combination) +0x350.
  The `jal` at 0x1001824c calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x226c0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1001825c has v0 = ret(update__20StcombineWindowClassGv).

- `doCmpPropOnePipeButton__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018270 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018270-0x100182b4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10018294 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x100182a0 stores 4 bytes to sym(combination) +0x350.
  The `jal` at 0x1001829c calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x22670, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100182ac has v0 = ret(update__20StcombineWindowClassGv).

- `doCmpPropThreePipeButton__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100182c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100182c0-0x10018304 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x100182e4 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x100182f0 stores 4 bytes to sym(combination) +0x350.
  The `jal` at 0x100182ec calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x22620, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100182fc has v0 = ret(update__20StcombineWindowClassGv).

- `doCmpPropTwoPipeButton__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018310 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018310-0x10018354 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x10018334 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x10018340 stores 4 bytes to sym(combination) +0x350.
  The `jal` at 0x1001833c calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x225d0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1001834c has v0 = ret(update__20StcombineWindowClassGv).

- `doTilingModeHStripesButton__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018360 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018360-0x1001840c (172 bytes).
  It occupies 172 bytes.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x350, including `lw` at 0x10018378, `lw` at 0x100183d8.
  The `sw` at 0x1001838c stores 4 bytes to sym(combination) +0x30c.
  The `lw` at 0x100183a0 loads 4 bytes from sym(combination) +0x358.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100183b8, `sw` at 0x100183c0, `sw` at 0x100183c8.
  The `lw` at 0x100183c4 loads 4 bytes from sym(combination) +0x354.
  The `lw` at 0x100183f8 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `jal` at 0x100183f4 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=[sym(combination)+848], a2=?, a3=?, a4=sym(combination).
  The `blez` branch at 0x10018388 targets 0x100183ec, is taken when a1(=[sym(combination)+848]) <= 0 (signed), and falls through when a1(=[sym(combination)+848]) > 0 (signed).
  The `bne` branch at 0x100183e4 targets 0x100183a0, is taken when a3(?) < a1(=[sym(combination)+848]) (signed), and falls through when a3(?) >= a1(=[sym(combination)+848]) (signed).
  The return at 0x10018404 has v0 = ret(update__20StcombineWindowClassGv).

- `doTilingModeOffButton__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018410 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018410-0x10018498 (136 bytes).
  It occupies 136 bytes.
  The `sw` at 0x10018428 stores 4 bytes to sym(combination) +0x310.
  The `sw` at 0x1001842c stores 4 bytes to sym(combination) +0x314.
  The `sw` at 0x10018430 stores 4 bytes to sym(combination) +0x30c.
  The `lw` at 0x10018434 loads 4 bytes from sym(combination) +0x354.
  The `lw` at 0x10018438 loads 4 bytes from sym(combination) +0x358.
  The `sw` at 0x1001843c stores 4 bytes to sym(combination) +0x31c.
  The `sw` at 0x10018440 stores 4 bytes to sym(combination) +0x318.
  The `sw` at 0x10018444 stores 4 bytes to sym(combination) +0x340.
  The `sw` at 0x10018448 stores 4 bytes to sym(combination) +0x344.
  The `sw` at 0x1001844c stores 4 bytes to sym(combination) +0x348.
  The `sw` at 0x10018450 stores 4 bytes to sym(combination) +0x34c.
  The `sw` at 0x10018454 stores 4 bytes to sym(combination) +0x330.
  The `sw` at 0x10018458 stores 4 bytes to sym(combination) +0x334.
  The `sw` at 0x1001845c stores 4 bytes to sym(combination) +0x338.
  The `sw` at 0x10018460 stores 4 bytes to sym(combination) +0x33c.
  The `sw` at 0x10018464 stores 4 bytes to sym(combination) +0x320.
  The `sw` at 0x10018468 stores 4 bytes to sym(combination) +0x324.
  The `sw` at 0x1001846c stores 4 bytes to sym(combination) +0x328.
  The `sw` at 0x10018470 stores 4 bytes to sym(combination) +0x32c.
  The `lw` at 0x10018484 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `jal` at 0x10018480 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=a1 at entry (arg1), a2=sym(combination), a3=a3 at entry (arg3).
  The return at 0x10018490 has v0 = ret(update__20StcombineWindowClassGv).

- `doTilingModePixelAverageButton__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100184a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100184a0-0x10018530 (144 bytes).
  It occupies 144 bytes.
  The `sw` at 0x100184bc stores 4 bytes to sym(combination) +0x30c.
  The `sw` at 0x100184c0 stores 4 bytes to sym(combination) +0x350.
  The `sw` at 0x100184c4 stores 4 bytes to sym(combination) +0x340.
  The `sw` at 0x100184c8 stores 4 bytes to sym(combination) +0x344.
  The `sw` at 0x100184cc stores 4 bytes to sym(combination) +0x330.
  The `sw` at 0x100184d0 stores 4 bytes to sym(combination) +0x334.
  The `sw` at 0x100184d4 stores 4 bytes to sym(combination) +0x320.
  The `sw` at 0x100184d8 stores 4 bytes to sym(combination) +0x324.
  The `sw` at 0x100184dc stores 4 bytes to sym(combination) +0x310.
  The `sw` at 0x100184e0 stores 4 bytes to sym(combination) +0x314.
  The `lw` at 0x100184e8 loads 4 bytes from sym(combination) +0x354.
  The `lw` at 0x100184ec loads 4 bytes from sym(combination) +0x358.
  The `sw` at 0x100184f0 stores 4 bytes to sym(combination) +0x34c.
  The `sw` at 0x100184f4 stores 4 bytes to sym(combination) +0x348.
  The `sw` at 0x100184f8 stores 4 bytes to sym(combination) +0x33c.
  The `sw` at 0x100184fc stores 4 bytes to sym(combination) +0x338.
  The `sw` at 0x10018500 stores 4 bytes to sym(combination) +0x32c.
  The `sw` at 0x10018504 stores 4 bytes to sym(combination) +0x328.
  The `sw` at 0x10018508 stores 4 bytes to sym(combination) +0x31c.
  The `sw` at 0x1001850c stores 4 bytes to sym(combination) +0x318.
  The `lw` at 0x1001851c loads 4 bytes from sym(stcombineWindow) +0x0.
  The `jal` at 0x10018518 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=sym(combination), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10018528 has v0 = ret(update__20StcombineWindowClassGv).

- `doTilingModeSpatialButton__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018530 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018530-0x100185d4 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0x10018550 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x10018554 stores 4 bytes to sym(combination) +0x330.
  The `sw` at 0x10018558 stores 4 bytes to sym(combination) +0x324.
  The `sw` at 0x1001855c stores 4 bytes to sym(combination) +0x310.
  The `sw` at 0x10018560 stores 4 bytes to sym(combination) +0x314.
  The `sw` at 0x10018568 stores 4 bytes to sym(combination) +0x30c.
  The `lw` at 0x10018570 loads 4 bytes from sym(combination) +0x358.
  The `sw` at 0x10018574 stores 4 bytes to sym(combination) +0x34c.
  The `lw` at 0x10018578 loads 4 bytes from sym(combination) +0x354.
  The `sw` at 0x1001857c stores 4 bytes to sym(combination) +0x348.
  The `sw` at 0x10018580 stores 4 bytes to sym(combination) +0x33c.
  The `sw` at 0x10018588 stores 4 bytes to sym(combination) +0x328.
  The `sw` at 0x1001859c stores 4 bytes to sym(combination) +0x344.
  The `sw` at 0x100185a4 stores 4 bytes to sym(combination) +0x340.
  The `sw` at 0x100185a8 stores 4 bytes to sym(combination) +0x338.
  The `sw` at 0x100185ac stores 4 bytes to sym(combination) +0x334.
  The `sw` at 0x100185b0 stores 4 bytes to sym(combination) +0x32c.
  The `sw` at 0x100185b4 stores 4 bytes to sym(combination) +0x320.
  The `sw` at 0x100185b8 stores 4 bytes to sym(combination) +0x31c.
  The `sw` at 0x100185c0 stores 4 bytes to sym(combination) +0x318.
  The `jal` at 0x100185bc calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=[sym(combination)+852], a2=[sym(combination)+856], a3=0x1.
  The return at 0x100185cc has v0 = ret(update__20StcombineWindowClassGv).

- `doTilingModeStereoButton__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100185e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100185e0-0x1001862c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x10018604 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x1001860c stores 4 bytes to sym(combination) +0x30c.
  The `sw` at 0x10018618 stores 4 bytes to sym(combination) +0x350.
  The `jal` at 0x10018614 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x22300, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10018624 has v0 = ret(update__20StcombineWindowClassGv).

- `doTilingModeVStripesbutton__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018630-0x100186dc (172 bytes).
  It occupies 172 bytes.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x350, including `lw` at 0x10018648, `lw` at 0x100186a8.
  The `sw` at 0x1001865c stores 4 bytes to sym(combination) +0x30c.
  The `lw` at 0x10018670 loads 4 bytes from sym(combination) +0x354.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10018688, `sw` at 0x10018690, `sw` at 0x10018698.
  The `lw` at 0x1001869c loads 4 bytes from sym(combination) +0x358.
  The `lw` at 0x100186c8 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `jal` at 0x100186c4 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=[sym(combination)+848], a2=?, a3=?, a4=sym(combination).
  The `blez` branch at 0x10018658 targets 0x100186bc, is taken when a1(=[sym(combination)+848]) <= 0 (signed), and falls through when a1(=[sym(combination)+848]) > 0 (signed).
  The `bne` branch at 0x100186b4 targets 0x10018670, is taken when a3(?) < a1(=[sym(combination)+848]) (signed), and falls through when a3(?) >= a1(=[sym(combination)+848]) (signed).
  The return at 0x100186d4 has v0 = ret(update__20StcombineWindowClassGv).

- `doTilingPropertiesCloseButton__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100186e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100186e0-0x10018720 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x100186e0 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `lw` at 0x100186ec loads 4 bytes from [a0+224] +0x8.
  The `lw` at 0x100186fc loads 4 bytes from [[a0+224]+8] +0x38.
  The `lw` at 0x10018700 loads 4 bytes from [[a0+224]+8] +0x30.
  The `jalr` at 0x10018708 calls (unknown callee) with a0=([[[a0+224]+8]+48] + [a0+224]), a1=[a0+224], a2=0x22200, a3=a3 at entry (arg3).
  The return at 0x10018718 has v0 = ret(?).

- `pipe0Height__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018720 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018720-0x100187c8 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x10018740 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x10018754 loads 4 bytes from sym(combination) +0x30c.
  The `lw` at 0x1001875c loads 4 bytes from sym(combination) +0x314.
  The `sw` at 0x10018770 stores 4 bytes to sym(combination) +0x31c.
  The `lw` at 0x1001878c loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x100187a0 stores 4 bytes to sym(combination) +0x34c.
  The `sw` at 0x100187a4 stores 4 bytes to sym(combination) +0x33c.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x32c, including `sw` at 0x100187ac, `sw` at 0x100187b4.
  The `sw` at 0x100187b0 stores 4 bytes to sym(combination) +0x344.
  The `sw` at 0x100187bc stores 4 bytes to sym(combination) +0x334.
  The `sw` at 0x100187c4 stores 4 bytes to sym(combination) +0x324.
  The `jal` at 0x1001873c calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+44], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018748 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018788 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=[sym(combination)+780], a3=([sym(combination)+788] + ret(getint__9EZWrapperGv)), a4=sym(combination), a5=0x2, a6=0x3.
  The `beq` branch at 0x1001876c targets 0x100187b0, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x10018774 targets 0x100187c0, is taken when a2(=[sym(combination)+780]) == a5(=0x2), and falls through when a2(=[sym(combination)+780]) != a5(=0x2).
  The `beq` branch at 0x1001877c targets 0x100187a0, is taken when a2(=[sym(combination)+780]) == a6(=0x3), and falls through when a2(=[sym(combination)+780]) != a6(=0x3).
  The `beq` branch at 0x100187a8 targets 0x10018780 and is always taken.
  The `beq` branch at 0x100187b8 targets 0x10018780 and is always taken.
  The `beq` branch at 0x100187c0 targets 0x10018780 and is always taken.
  The return at 0x10018798 has v0 = ret(update__20StcombineWindowClassGv).

- `pipe0Width__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100187d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100187d0-0x10018878 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x100187f0 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lw` at 0x10018804 loads 4 bytes from sym(combination) +0x30c.
  The `lw` at 0x1001880c loads 4 bytes from sym(combination) +0x310.
  The `sw` at 0x10018820 stores 4 bytes to sym(combination) +0x318.
  The `lw` at 0x1001883c loads 4 bytes from sym(stcombineWindow) +0x0.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x320, including `sw` at 0x10018854, `sw` at 0x10018864.
  The `sw` at 0x10018858 stores 4 bytes to sym(combination) +0x340.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x338, including `sw` at 0x1001885c, `sw` at 0x1001886c.
  The `sw` at 0x10018868 stores 4 bytes to sym(combination) +0x348.
  The `sw` at 0x10018874 stores 4 bytes to sym(combination) +0x328.
  The `jal` at 0x100187ec calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+52], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100187f8 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018838 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=[sym(combination)+780], a3=([sym(combination)+784] + ret(getint__9EZWrapperGv)), a4=sym(combination), a5=0x2, a6=0x3.
  The `beq` branch at 0x1001881c targets 0x10018858, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x10018824 targets 0x10018868, is taken when a2(=[sym(combination)+780]) == a5(=0x2), and falls through when a2(=[sym(combination)+780]) != a5(=0x2).
  The `beq` branch at 0x1001882c targets 0x10018850, is taken when a2(=[sym(combination)+780]) == a6(=0x3), and falls through when a2(=[sym(combination)+780]) != a6(=0x3).
  The `beq` branch at 0x10018850 targets 0x10018830 and is always taken.
  The `beq` branch at 0x10018860 targets 0x10018830 and is always taken.
  The `beq` branch at 0x10018870 targets 0x10018830 and is always taken.
  The return at 0x10018848 has v0 = ret(update__20StcombineWindowClassGv).

- `pipe0X1__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018880 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018880-0x10018904 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0x100188a0 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x100188b4 loads 4 bytes from sym(combination) +0x30c.
  The `sw` at 0x100188c4 stores 4 bytes to sym(combination) +0x310.
  The `lw` at 0x100188d8 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x100188ec stores 4 bytes to sym(combination) +0x340.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x330, including `sw` at 0x100188f0, `sw` at 0x10018900.
  The `sw` at 0x100188f8 stores 4 bytes to sym(combination) +0x320.
  The `jal` at 0x1001889c calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+56], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100188a8 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x100188d4 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=[sym(combination)+780], a3=sym(combination).
  The `beq` branch at 0x100188c0 targets 0x100188fc, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x100188c8 targets 0x100188ec, is taken when a2(=[sym(combination)+780]) == a0(=0x2), and falls through when a2(=[sym(combination)+780]) != a0(=0x2).
  The `beq` branch at 0x100188f4 targets 0x100188cc and is always taken.
  The `beq` branch at 0x100188fc targets 0x100188cc and is always taken.
  The return at 0x100188e4 has v0 = ret(update__20StcombineWindowClassGv).

- `pipe0Y1__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018910-0x100189a0 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0x10018930 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x10018944 loads 4 bytes from sym(combination) +0x30c.
  The `sw` at 0x10018958 stores 4 bytes to sym(combination) +0x314.
  The `lw` at 0x10018974 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x10018988 stores 4 bytes to sym(combination) +0x344.
  The `sw` at 0x1001898c stores 4 bytes to sym(combination) +0x334.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x324, including `sw` at 0x10018994, `sw` at 0x1001899c.
  The `jal` at 0x1001892c calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+64], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018938 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018970 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x3, a2=[sym(combination)+780], a3=sym(combination).
  The `beq` branch at 0x10018954 targets 0x10018998, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x1001895c targets 0x1001896c, is taken when a2(=[sym(combination)+780]) == a0(=0x2), and falls through when a2(=[sym(combination)+780]) != a0(=0x2).
  The `beq` branch at 0x10018964 targets 0x10018988, is taken when a2(=[sym(combination)+780]) == a1(=0x3), and falls through when a2(=[sym(combination)+780]) != a1(=0x3).
  The `beq` branch at 0x10018990 targets 0x10018968 and is always taken.
  The `beq` branch at 0x10018998 targets 0x10018968 and is always taken.
  The return at 0x10018980 has v0 = ret(update__20StcombineWindowClassGv).

- `pipe1Height__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x100189a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100189a0-0x10018a48 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x100189c0 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lw` at 0x100189d4 loads 4 bytes from sym(combination) +0x30c.
  The `lw` at 0x100189dc loads 4 bytes from sym(combination) +0x324.
  The `sw` at 0x100189f0 stores 4 bytes to sym(combination) +0x32c.
  The `lw` at 0x10018a0c loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x10018a20 stores 4 bytes to sym(combination) +0x34c.
  The `sw` at 0x10018a24 stores 4 bytes to sym(combination) +0x33c.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x31c, including `sw` at 0x10018a2c, `sw` at 0x10018a34.
  The `sw` at 0x10018a30 stores 4 bytes to sym(combination) +0x344.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x334, including `sw` at 0x10018a3c, `sw` at 0x10018a44.
  The `jal` at 0x100189bc calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+76], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100189c8 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018a08 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=[sym(combination)+780], a3=([sym(combination)+804] + ret(getint__9EZWrapperGv)), a4=sym(combination), a5=0x2, a6=0x3.
  The `beq` branch at 0x100189ec targets 0x10018a30, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x100189f4 targets 0x10018a40, is taken when a2(=[sym(combination)+780]) == a5(=0x2), and falls through when a2(=[sym(combination)+780]) != a5(=0x2).
  The `beq` branch at 0x100189fc targets 0x10018a20, is taken when a2(=[sym(combination)+780]) == a6(=0x3), and falls through when a2(=[sym(combination)+780]) != a6(=0x3).
  The `beq` branch at 0x10018a28 targets 0x10018a00 and is always taken.
  The `beq` branch at 0x10018a38 targets 0x10018a00 and is always taken.
  The `beq` branch at 0x10018a40 targets 0x10018a00 and is always taken.
  The return at 0x10018a18 has v0 = ret(update__20StcombineWindowClassGv).

- `pipe1Width__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018a50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018a50-0x10018af0 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x10018a70 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lw` at 0x10018a84 loads 4 bytes from sym(combination) +0x30c.
  The `lw` at 0x10018a8c loads 4 bytes from sym(combination) +0x320.
  The `sw` at 0x10018aa0 stores 4 bytes to sym(combination) +0x328.
  The `lw` at 0x10018abc loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x10018ad4 stores 4 bytes to sym(combination) +0x330.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x348, including `sw` at 0x10018adc, `sw` at 0x10018ae0.
  The `sw` at 0x10018ae4 stores 4 bytes to sym(combination) +0x338.
  The `sw` at 0x10018aec stores 4 bytes to sym(combination) +0x318.
  The `jal` at 0x10018a6c calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+84], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018a78 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018ab8 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=[sym(combination)+780], a3=([sym(combination)+800] + ret(getint__9EZWrapperGv)), a4=sym(combination), a5=0x2, a6=0x3.
  The `beq` branch at 0x10018a9c targets 0x10018ad8, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x10018aa4 targets 0x10018ae0, is taken when a2(=[sym(combination)+780]) == a5(=0x2), and falls through when a2(=[sym(combination)+780]) != a5(=0x2).
  The `beq` branch at 0x10018aac targets 0x10018ad0, is taken when a2(=[sym(combination)+780]) == a6(=0x3), and falls through when a2(=[sym(combination)+780]) != a6(=0x3).
  The `beq` branch at 0x10018ad0 targets 0x10018ab0 and is always taken.
  The `beq` branch at 0x10018ad8 targets 0x10018ab0 and is always taken.
  The `beq` branch at 0x10018ae8 targets 0x10018ab0 and is always taken.
  The return at 0x10018ac8 has v0 = ret(update__20StcombineWindowClassGv).

- `pipe1X1__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018af0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018af0-0x10018b90 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x10018b10 loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `lw` at 0x10018b24 loads 4 bytes from sym(combination) +0x30c.
  The `sw` at 0x10018b38 stores 4 bytes to sym(combination) +0x320.
  The `lw` at 0x10018b54 loads 4 bytes from sym(stcombineWindow) +0x0.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x318, including `sw` at 0x10018b6c, `sw` at 0x10018b7c.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x340, including `sw` at 0x10018b70, `sw` at 0x10018b80.
  The `sw` at 0x10018b74 stores 4 bytes to sym(combination) +0x338.
  The `sw` at 0x10018b84 stores 4 bytes to sym(combination) +0x330.
  The `sw` at 0x10018b8c stores 4 bytes to sym(combination) +0x310.
  The `jal` at 0x10018b0c calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+88], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018b18 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018b50 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x3, a2=[sym(combination)+780], a3=sym(combination).
  The `beq` branch at 0x10018b34 targets 0x10018b70, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x10018b3c targets 0x10018b80, is taken when a2(=[sym(combination)+780]) == a0(=0x2), and falls through when a2(=[sym(combination)+780]) != a0(=0x2).
  The `beq` branch at 0x10018b44 targets 0x10018b68, is taken when a2(=[sym(combination)+780]) == a1(=0x3), and falls through when a2(=[sym(combination)+780]) != a1(=0x3).
  The `beq` branch at 0x10018b68 targets 0x10018b48 and is always taken.
  The `beq` branch at 0x10018b78 targets 0x10018b48 and is always taken.
  The `beq` branch at 0x10018b88 targets 0x10018b48 and is always taken.
  The return at 0x10018b60 has v0 = ret(update__20StcombineWindowClassGv).

- `pipe1Y1__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018b90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018b90-0x10018c28 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x10018bb0 loads 4 bytes from a0 (arg0 at entry) +0x5c.
  The `lw` at 0x10018bc4 loads 4 bytes from sym(combination) +0x30c.
  The `sw` at 0x10018bd8 stores 4 bytes to sym(combination) +0x324.
  The `lw` at 0x10018bf4 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x10018c08 stores 4 bytes to sym(combination) +0x344.
  The `sw` at 0x10018c0c stores 4 bytes to sym(combination) +0x334.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x314, including `sw` at 0x10018c14, `sw` at 0x10018c1c.
  The `sw` at 0x10018c24 stores 4 bytes to sym(combination) +0x31c.
  The `jal` at 0x10018bac calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+92], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018bb8 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018bf0 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x3, a2=[sym(combination)+780], a3=sym(combination).
  The `beq` branch at 0x10018bd4 targets 0x10018c18, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x10018bdc targets 0x10018c20, is taken when a2(=[sym(combination)+780]) == a0(=0x2), and falls through when a2(=[sym(combination)+780]) != a0(=0x2).
  The `beq` branch at 0x10018be4 targets 0x10018c08, is taken when a2(=[sym(combination)+780]) == a1(=0x3), and falls through when a2(=[sym(combination)+780]) != a1(=0x3).
  The `beq` branch at 0x10018c10 targets 0x10018be8 and is always taken.
  The `beq` branch at 0x10018c18 targets 0x10018be8 and is always taken.
  The `beq` branch at 0x10018c20 targets 0x10018be8 and is always taken.
  The return at 0x10018c00 has v0 = ret(update__20StcombineWindowClassGv).

- `pipe2Height__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018c30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018c30-0x10018cd0 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x10018c50 loads 4 bytes from a0 (arg0 at entry) +0x6c.
  The `lw` at 0x10018c64 loads 4 bytes from sym(combination) +0x30c.
  The `lw` at 0x10018c6c loads 4 bytes from sym(combination) +0x334.
  The `sw` at 0x10018c80 stores 4 bytes to sym(combination) +0x33c.
  The `lw` at 0x10018c9c loads 4 bytes from sym(stcombineWindow) +0x0.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x34c, including `sw` at 0x10018cb0, `sw` at 0x10018cc4.
  The `sw` at 0x10018cb4 stores 4 bytes to sym(combination) +0x31c.
  The `sw` at 0x10018cbc stores 4 bytes to sym(combination) +0x32c.
  The `sw` at 0x10018ccc stores 4 bytes to sym(combination) +0x344.
  The `jal` at 0x10018c4c calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+108], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018c58 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018c98 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=[sym(combination)+780], a3=([sym(combination)+820] + ret(getint__9EZWrapperGv)), a4=sym(combination), a5=0x2, a6=0x3.
  The `beq` branch at 0x10018c7c targets 0x10018cc0, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x10018c84 targets 0x10018cc8, is taken when a2(=[sym(combination)+780]) == a5(=0x2), and falls through when a2(=[sym(combination)+780]) != a5(=0x2).
  The `beq` branch at 0x10018c8c targets 0x10018cb0, is taken when a2(=[sym(combination)+780]) == a6(=0x3), and falls through when a2(=[sym(combination)+780]) != a6(=0x3).
  The `beq` branch at 0x10018cb8 targets 0x10018c90 and is always taken.
  The `beq` branch at 0x10018cc0 targets 0x10018c90 and is always taken.
  The `beq` branch at 0x10018cc8 targets 0x10018c90 and is always taken.
  The return at 0x10018ca8 has v0 = ret(update__20StcombineWindowClassGv).

- `pipe2Width__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018cd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018cd0-0x10018d78 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x10018cf0 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0x10018d04 loads 4 bytes from sym(combination) +0x30c.
  The `lw` at 0x10018d0c loads 4 bytes from sym(combination) +0x330.
  The `sw` at 0x10018d20 stores 4 bytes to sym(combination) +0x338.
  The `lw` at 0x10018d3c loads 4 bytes from sym(stcombineWindow) +0x0.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x340, including `sw` at 0x10018d54, `sw` at 0x10018d58.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x318, including `sw` at 0x10018d5c, `sw` at 0x10018d6c.
  The `sw` at 0x10018d64 stores 4 bytes to sym(combination) +0x320.
  The `sw` at 0x10018d68 stores 4 bytes to sym(combination) +0x348.
  The `sw` at 0x10018d74 stores 4 bytes to sym(combination) +0x328.
  The `jal` at 0x10018cec calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+116], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018cf8 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018d38 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=[sym(combination)+780], a3=([sym(combination)+816] + ret(getint__9EZWrapperGv)), a4=sym(combination), a5=0x2, a6=0x3.
  The `beq` branch at 0x10018d1c targets 0x10018d58, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x10018d24 targets 0x10018d68, is taken when a2(=[sym(combination)+780]) == a5(=0x2), and falls through when a2(=[sym(combination)+780]) != a5(=0x2).
  The `beq` branch at 0x10018d2c targets 0x10018d50, is taken when a2(=[sym(combination)+780]) == a6(=0x3), and falls through when a2(=[sym(combination)+780]) != a6(=0x3).
  The `beq` branch at 0x10018d50 targets 0x10018d30 and is always taken.
  The `beq` branch at 0x10018d60 targets 0x10018d30 and is always taken.
  The `beq` branch at 0x10018d70 targets 0x10018d30 and is always taken.
  The return at 0x10018d48 has v0 = ret(update__20StcombineWindowClassGv).

- `pipe2X1__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018d80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018d80-0x10018e18 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x10018da0 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x10018db4 loads 4 bytes from sym(combination) +0x30c.
  The `sw` at 0x10018dc8 stores 4 bytes to sym(combination) +0x330.
  The `lw` at 0x10018de4 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x10018dfc stores 4 bytes to sym(combination) +0x328.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x310, including `sw` at 0x10018e04, `sw` at 0x10018e0c.
  The `sw` at 0x10018e08 stores 4 bytes to sym(combination) +0x340.
  The `sw` at 0x10018e14 stores 4 bytes to sym(combination) +0x320.
  The `jal` at 0x10018d9c calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+120], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018da8 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018de0 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x3, a2=[sym(combination)+780], a3=sym(combination).
  The `beq` branch at 0x10018dc4 targets 0x10018e00, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x10018dcc targets 0x10018e08, is taken when a2(=[sym(combination)+780]) == a0(=0x2), and falls through when a2(=[sym(combination)+780]) != a0(=0x2).
  The `beq` branch at 0x10018dd4 targets 0x10018df8, is taken when a2(=[sym(combination)+780]) == a1(=0x3), and falls through when a2(=[sym(combination)+780]) != a1(=0x3).
  The `beq` branch at 0x10018df8 targets 0x10018dd8 and is always taken.
  The `beq` branch at 0x10018e00 targets 0x10018dd8 and is always taken.
  The `beq` branch at 0x10018e10 targets 0x10018dd8 and is always taken.
  The return at 0x10018df0 has v0 = ret(update__20StcombineWindowClassGv).

- `pipe2Y1__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018e20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018e20-0x10018ec0 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x10018e40 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `lw` at 0x10018e54 loads 4 bytes from sym(combination) +0x30c.
  The `sw` at 0x10018e68 stores 4 bytes to sym(combination) +0x334.
  The `lw` at 0x10018e84 loads 4 bytes from sym(stcombineWindow) +0x0.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x344, including `sw` at 0x10018e98, `sw` at 0x10018ea8.
  The `sw` at 0x10018e9c stores 4 bytes to sym(combination) +0x324.
  The `sw` at 0x10018ea4 stores 4 bytes to sym(combination) +0x314.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x32c, including `sw` at 0x10018eac, `sw` at 0x10018ebc.
  The `sw` at 0x10018eb4 stores 4 bytes to sym(combination) +0x31c.
  The `jal` at 0x10018e3c calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+128], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018e48 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018e80 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x3, a2=[sym(combination)+780], a3=sym(combination).
  The `beq` branch at 0x10018e64 targets 0x10018ea8, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x10018e6c targets 0x10018eb8, is taken when a2(=[sym(combination)+780]) == a0(=0x2), and falls through when a2(=[sym(combination)+780]) != a0(=0x2).
  The `beq` branch at 0x10018e74 targets 0x10018e98, is taken when a2(=[sym(combination)+780]) == a1(=0x3), and falls through when a2(=[sym(combination)+780]) != a1(=0x3).
  The `beq` branch at 0x10018ea0 targets 0x10018e78 and is always taken.
  The `beq` branch at 0x10018eb0 targets 0x10018e78 and is always taken.
  The `beq` branch at 0x10018eb8 targets 0x10018e78 and is always taken.
  The return at 0x10018e90 has v0 = ret(update__20StcombineWindowClassGv).

- `pipe3Height__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018ec0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018ec0-0x10018f58 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x10018ee0 loads 4 bytes from a0 (arg0 at entry) +0x8c.
  The `lw` at 0x10018ef4 loads 4 bytes from sym(combination) +0x30c.
  The `lw` at 0x10018efc loads 4 bytes from sym(combination) +0x344.
  The `sw` at 0x10018f10 stores 4 bytes to sym(combination) +0x34c.
  The `lw` at 0x10018f2c loads 4 bytes from sym(stcombineWindow) +0x0.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x33c, including `sw` at 0x10018f40, `sw` at 0x10018f54.
  The `sw` at 0x10018f44 stores 4 bytes to sym(combination) +0x31c.
  The `sw` at 0x10018f4c stores 4 bytes to sym(combination) +0x32c.
  The `jal` at 0x10018edc calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+140], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018ee8 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018f28 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=[sym(combination)+780], a3=([sym(combination)+836] + ret(getint__9EZWrapperGv)), a4=sym(combination), a5=0x2, a6=0x3.
  The `beq` branch at 0x10018f0c targets 0x10018f50, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x10018f14 targets 0x10018f24, is taken when a2(=[sym(combination)+780]) == a5(=0x2), and falls through when a2(=[sym(combination)+780]) != a5(=0x2).
  The `beq` branch at 0x10018f1c targets 0x10018f40, is taken when a2(=[sym(combination)+780]) == a6(=0x3), and falls through when a2(=[sym(combination)+780]) != a6(=0x3).
  The `beq` branch at 0x10018f48 targets 0x10018f20 and is always taken.
  The `beq` branch at 0x10018f50 targets 0x10018f20 and is always taken.
  The return at 0x10018f38 has v0 = ret(update__20StcombineWindowClassGv).

- `pipe3Width__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018f60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018f60-0x10018fec (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0x10018f80 loads 4 bytes from a0 (arg0 at entry) +0x94.
  The `lw` at 0x10018f94 loads 4 bytes from sym(combination) +0x30c.
  The `lw` at 0x10018f9c loads 4 bytes from sym(combination) +0x340.
  The `sw` at 0x10018fac stores 4 bytes to sym(combination) +0x348.
  The `lw` at 0x10018fc0 loads 4 bytes from sym(stcombineWindow) +0x0.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x328, including `sw` at 0x10018fd4, `sw` at 0x10018fe8.
  The `sw` at 0x10018fd8 stores 4 bytes to sym(combination) +0x338.
  The `sw` at 0x10018fe0 stores 4 bytes to sym(combination) +0x318.
  The `jal` at 0x10018f7c calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+148], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018f88 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10018fbc calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=[sym(combination)+780], a3=([sym(combination)+832] + ret(getint__9EZWrapperGv)), a4=sym(combination), a5=0x2.
  The `beq` branch at 0x10018fa8 targets 0x10018fe4, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x10018fb0 targets 0x10018fd4, is taken when a2(=[sym(combination)+780]) == a5(=0x2), and falls through when a2(=[sym(combination)+780]) != a5(=0x2).
  The `beq` branch at 0x10018fdc targets 0x10018fb4 and is always taken.
  The `beq` branch at 0x10018fe4 targets 0x10018fb4 and is always taken.
  The return at 0x10018fcc has v0 = ret(update__20StcombineWindowClassGv).

- `pipe3X1__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10018ff0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10018ff0-0x10019090 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x10019010 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `lw` at 0x10019024 loads 4 bytes from sym(combination) +0x30c.
  The `sw` at 0x10019038 stores 4 bytes to sym(combination) +0x340.
  The `lw` at 0x10019054 loads 4 bytes from sym(stcombineWindow) +0x0.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x338, including `sw` at 0x1001906c, `sw` at 0x10019074.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x320, including `sw` at 0x10019070, `sw` at 0x10019080.
  The `sw` at 0x1001907c stores 4 bytes to sym(combination) +0x318.
  The `sw` at 0x10019084 stores 4 bytes to sym(combination) +0x330.
  The `sw` at 0x1001908c stores 4 bytes to sym(combination) +0x310.
  The `jal` at 0x1001900c calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+152], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10019018 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10019050 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x3, a2=[sym(combination)+780], a3=sym(combination).
  The `beq` branch at 0x10019034 targets 0x10019070, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x1001903c targets 0x10019080, is taken when a2(=[sym(combination)+780]) == a0(=0x2), and falls through when a2(=[sym(combination)+780]) != a0(=0x2).
  The `beq` branch at 0x10019044 targets 0x10019068, is taken when a2(=[sym(combination)+780]) == a1(=0x3), and falls through when a2(=[sym(combination)+780]) != a1(=0x3).
  The `beq` branch at 0x10019068 targets 0x10019048 and is always taken.
  The `beq` branch at 0x10019078 targets 0x10019048 and is always taken.
  The `beq` branch at 0x10019088 targets 0x10019048 and is always taken.
  The return at 0x10019060 has v0 = ret(update__20StcombineWindowClassGv).

- `pipe3Y1__25TilingPropertiesFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x10019090 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10019090-0x10019130 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x100190b0 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0x100190c4 loads 4 bytes from sym(combination) +0x30c.
  The `sw` at 0x100190d8 stores 4 bytes to sym(combination) +0x344.
  The `lw` at 0x100190f4 loads 4 bytes from sym(stcombineWindow) +0x0.
  2 such `sw` accesses store 4 bytes to sym(combination) +0x334, including `sw` at 0x10019108, `sw` at 0x10019118.
  The `sw` at 0x1001910c stores 4 bytes to sym(combination) +0x324.
  The `sw` at 0x10019114 stores 4 bytes to sym(combination) +0x314.
  The `sw` at 0x1001911c stores 4 bytes to sym(combination) +0x32c.
  The `sw` at 0x10019124 stores 4 bytes to sym(combination) +0x31c.
  The `sw` at 0x1001912c stores 4 bytes to sym(combination) +0x33c.
  The `jal` at 0x100190ac calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+156], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100190b8 calls getint__9EZWrapperGv [0x100296d0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x100190f0 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x3, a2=[sym(combination)+780], a3=sym(combination).
  The `beq` branch at 0x100190d4 targets 0x10019118, is taken when a2(=[sym(combination)+780]) == v1(=0x1), and falls through when a2(=[sym(combination)+780]) != v1(=0x1).
  The `beq` branch at 0x100190dc targets 0x10019128, is taken when a2(=[sym(combination)+780]) == a0(=0x2), and falls through when a2(=[sym(combination)+780]) != a0(=0x2).
  The `beq` branch at 0x100190e4 targets 0x10019108, is taken when a2(=[sym(combination)+780]) == a1(=0x3), and falls through when a2(=[sym(combination)+780]) != a1(=0x3).
  The `beq` branch at 0x10019110 targets 0x100190e8 and is always taken.
  The `beq` branch at 0x10019120 targets 0x100190e8 and is always taken.
  The `beq` branch at 0x10019128 targets 0x100190e8 and is always taken.
  The return at 0x10019100 has v0 = ret(update__20StcombineWindowClassGv).

- `RegisterTilingPropertiesFormClassInterface__25TilingPropertiesFormClassSGv` in `usr/gfx/sgcombine` at 0x10019130 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10019130-0x10019148 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1001913c loads 4 bytes from abs 0x10032930.
  The return at 0x10019140 has v0 = 0x100311a0.

- `__ct__27TilingPropertiesFormClassUIGPCcP10_WidgetRec` in `usr/gfx/sgcombine` at 0x10019340 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10019340-0x100193a4 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0x1001937c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10019368 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10019384 calls create__27TilingPropertiesFormClassUIGP10_WidgetRec [0x10019470] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The return at 0x1001939c has v0 = a0.

- `__ct__27TilingPropertiesFormClassUIGPCc` in `usr/gfx/sgcombine` at 0x100193b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100193b0-0x100193f8 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x100193e8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x100193d0 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100193f0 has v0 = a0.

- `__dt__27TilingPropertiesFormClassUIGv` in `usr/gfx/sgcombine` at 0x10019400 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10019400-0x1001946c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x10019430 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10019438 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10019454 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10019420 targets 0x1001945c, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10019448 targets 0x10019460, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10019464 has v0 = one of ret(__dt__11VkComponentGv), ?.

- `create__27TilingPropertiesFormClassUIGP10_WidgetRec` in `usr/gfx/sgcombine` at 0x10019470 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10019470-0x1001b78c (8988 bytes).
  It occupies 8988 bytes.
  The `lw` at 0x100194bc loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0x100194c8 loads 4 bytes from sym(xmFormWidgetClass) +0x0.
  The `sw` at 0x100194d0 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x100194dc stores 4 bytes to a0 (arg0 at entry) +0xac.
  37 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x10019518, `lw` at 0x10019628, `lw` at 0x10019710.
  The `sw` at 0x10019548 stores 4 bytes to a0 (arg0 at entry) +0xb4.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb4, including `lw` at 0x10019568, `lw` at 0x1001958c, `lw` at 0x100195b0.
  The `sw` at 0x1001956c stores 4 bytes to a0 (arg0 at entry) +0xcc.
  The `sw` at 0x10019590 stores 4 bytes to a0 (arg0 at entry) +0xd4.
  The `sw` at 0x100195b4 stores 4 bytes to a0 (arg0 at entry) +0xc8.
  The `sw` at 0x100195d8 stores 4 bytes to a0 (arg0 at entry) +0xdc.
  The `sw` at 0x100195ec stores 4 bytes to a0 (arg0 at entry) +0xd0.
  The `sw` at 0x10019630 stores 4 bytes to a0 (arg0 at entry) +0xd8.
  18 such `lw` accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0, including `lw` at 0x10019634, `lw` at 0x10019730, `lw` at 0x100197e0.
  The `sw` at 0x10019714 stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x100197c4 stores 4 bytes to a0 (arg0 at entry) +0x84.
  The `sw` at 0x10019880 stores 4 bytes to a0 (arg0 at entry) +0xa0.
  16 such `lw` accesses load 4 bytes from sym(xmTextFieldWidgetClass) +0x0, including `lw` at 0x10019898, `lw` at 0x1001996c, `lw` at 0x10019a34.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x88, including `lw` at 0x100198b8, `lw` at 0x1001b0ec.
  The `sw` at 0x10019940 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x84, including `lw` at 0x1001998c, `lw` at 0x1001b118.
  The `sw` at 0x10019a14 stores 4 bytes to a0 (arg0 at entry) +0x98.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa0, including `lw` at 0x10019a54, `lw` at 0x1001b138.
  The `sw` at 0x10019adc stores 4 bytes to a0 (arg0 at entry) +0x8c.
  The `sw` at 0x10019b94 stores 4 bytes to a0 (arg0 at entry) +0x94.
  The `sw` at 0x10019c3c stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `sw` at 0x10019cec stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x10019d9c stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `sw` at 0x10019e5c stores 4 bytes to a0 (arg0 at entry) +0x64.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x68, including `lw` at 0x10019e88, `lw` at 0x1001b0dc, `lw` at 0x1001b1f8.
  The `sw` at 0x10019f10 stores 4 bytes to a0 (arg0 at entry) +0x80.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x64, including `lw` at 0x10019f50, `lw` at 0x1001b108, `lw` at 0x1001b218.
  The `sw` at 0x10019fd8 stores 4 bytes to a0 (arg0 at entry) +0x78.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0x1001a018, `lw` at 0x1001b128, `lw` at 0x1001b1d8.
  The `sw` at 0x1001a0a0 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0x1001a158 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sw` at 0x1001a200 stores 4 bytes to a0 (arg0 at entry) +0x70.
  The `sw` at 0x1001a2b0 stores 4 bytes to a0 (arg0 at entry) +0x24.
  The `sw` at 0x1001a354 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `sw` at 0x1001a408 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `sw` at 0x1001a4bc stores 4 bytes to a0 (arg0 at entry) +0x48.
  The `sw` at 0x1001a570 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x1001a624 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0x1001a6d4 stores 4 bytes to a0 (arg0 at entry) +0x44.
  The `sw` at 0x1001a794 stores 4 bytes to a0 (arg0 at entry) +0x4c.
  The `sw` at 0x1001a84c stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `sw` at 0x1001a8f4 stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `sw` at 0x1001a9a4 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  The `sw` at 0x1001aa70 stores 4 bytes to a0 (arg0 at entry) +0x28.
  The `sw` at 0x1001ab10 stores 4 bytes to a0 (arg0 at entry) +0x40.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3c, including `lw` at 0x1001ab50, `lw` at 0x1001b358, `lw` at 0x1001b404.
  The `sw` at 0x1001abd4 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `sw` at 0x1001ac88 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `sw` at 0x1001ad50 stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `sw` at 0x1001adec stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `sw` at 0x1001ae94 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `sw` at 0x1001aefc stores 4 bytes to a0 (arg0 at entry) +0xb0.
  14 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb0, including `lw` at 0x1001af1c, `lw` at 0x1001af40, `lw` at 0x1001af64.
  The `sw` at 0x1001af20 stores 4 bytes to a0 (arg0 at entry) +0xbc.
  The `sw` at 0x1001af44 stores 4 bytes to a0 (arg0 at entry) +0xc4.
  The `sw` at 0x1001af68 stores 4 bytes to a0 (arg0 at entry) +0xc0.
  The `sw` at 0x1001af80 stores 4 bytes to a0 (arg0 at entry) +0xb8.
  The `lw` at 0x1001af98 loads 4 bytes from sym(xmPushButtonWidgetClass) +0x0.
  The `sw` at 0x1001b044 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x98, including `lw` at 0x1001b0d4, `lw` at 0x1001b168, `lw` at 0x1001b728.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c, including `lw` at 0x1001b0fc, `lw` at 0x1001b180, `lw` at 0x1001b770.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x94, including `lw` at 0x1001b11c, `lw` at 0x1001b1a0, `lw` at 0x1001b758.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x80, including `lw` at 0x1001b140, `lw` at 0x1001b230, `lw` at 0x1001b6e0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9c, including `lw` at 0x1001b150, `lw` at 0x1001b740.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x78, including `lw` at 0x1001b158, `lw` at 0x1001b1dc, `lw` at 0x1001b248.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0x1001b170, `lw` at 0x1001b1fc, `lw` at 0x1001b260.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x90, including `lw` at 0x1001b184, `lw` at 0x1001b1b8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x74, including `lw` at 0x1001b190, `lw` at 0x1001b1bc, `lw` at 0x1001b280.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0x1001b1a8, `lw` at 0x1001b264, `lw` at 0x1001b298.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1001b1c8, `lw` at 0x1001b388.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1001b1e8, `lw` at 0x1001b2ec, `lw` at 0x1001b328.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0x1001b208, `lw` at 0x1001b32c, `lw` at 0x1001b368.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5c, including `lw` at 0x1001b220, `lw` at 0x1001b308, `lw` at 0x1001b680.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x58, including `lw` at 0x1001b238, `lw` at 0x1001b30c, `lw` at 0x1001b348.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c, including `lw` at 0x1001b250, `lw` at 0x1001b34c, `lw` at 0x1001b3a0.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x1001b270, `lw` at 0x1001b36c, `lw` at 0x1001b3c0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x50, including `lw` at 0x1001b288, `lw` at 0x1001b3a4, `lw` at 0x1001b3d8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa4, including `lw` at 0x1001b2a8, `lw` at 0x1001b2e8.
  The `lw` at 0x1001b2c4 loads 4 bytes from a0 (arg0 at entry) +0x24.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x1001b2f8, `lw` at 0x1001b454, `lw` at 0x1001b620.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x1001b318, `lw` at 0x1001b430.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x1001b338, `lw` at 0x1001b414, `lw` at 0x1001b478.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x1001b378, `lw` at 0x1001b488, `lw` at 0x1001b4d0.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x1001b390, `lw` at 0x1001b3e8, `lw` at 0x1001b4a4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x34, including `lw` at 0x1001b3b0, `lw` at 0x1001b4b4, `lw` at 0x1001b4fc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x1001b3c8, `lw` at 0x1001b4e0, `lw` at 0x1001b520.
  The `jalr` at 0x1001949c calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultTilingPropertiesFormClassUIResources__27TilingPropertiesFormClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x100194c4 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=sym(_XmStrings)+9052, a4=0x1, a5=0x0.
  The `jalr` at 0x100194d8 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x100194e8 calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001951c calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x1002db98, a3=0x0, a4=0x0.
  The `jalr` at 0x1001954c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=?, a1=0x1002dbb0, a2=sym(doTilingModeOffButtonCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10019570 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+180], a1=0x1002dbc8, a2=sym(doTilingModeSpatialButtonCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10019594 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+180], a1=0x1002dbe8, a2=sym(doTilingModeHStripesButtonCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100195b8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+180], a1=0x1002dc08, a2=sym(doTilingModeVStripesbuttonCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100195dc calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+180], a1=0x1002dc28, a2=sym(doTilingModePixelAverageButtonCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1001961c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+180], a1=0x1002dc48, a2=sym(doTilingModeStereoButtonCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10019708 calls XtVaCreateManagedWidget with a0=0x1002dc60, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100197b8 calls XtVaCreateManagedWidget with a0=0x1002dc78, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10019868 calls XtVaCreateManagedWidget with a0=0x1002dc90, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10019924 calls XtVaCreateManagedWidget with a0=0x1002dca8, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10019948 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+4683, a2=sym(pipe3Y1Callback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100199f4 calls XtVaCreateManagedWidget with a0=0x1002dcc0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10019a10 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+4683, a2=sym(pipe3X1Callback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10019abc calls XtVaCreateManagedWidget with a0=0x1002dcd8, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10019ad8 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+4683, a2=sym(pipe3HeightCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10019b74 calls XtVaCreateManagedWidget with a0=0x1002dcf0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10019b90 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+4683, a2=sym(pipe3WidthCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10019c30 calls XtVaCreateManagedWidget with a0=0x1002dd08, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10019ce0 calls XtVaCreateManagedWidget with a0=0x1002dd20, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10019d90 calls XtVaCreateManagedWidget with a0=0x1002dd38, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10019e40 calls XtVaCreateManagedWidget with a0=0x1002dd50, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10019ef0 calls XtVaCreateManagedWidget with a0=0x1002dd68, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10019f0c calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+4683, a2=sym(pipe2Y1Callback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10019fb8 calls XtVaCreateManagedWidget with a0=0x1002dd80, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10019fd4 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+4683, a2=sym(pipe2X1Callback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001a080 calls XtVaCreateManagedWidget with a0=0x1002dd98, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001a09c calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+4683, a2=sym(pipe2HeightCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001a138 calls XtVaCreateManagedWidget with a0=0x1002ddb0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001a154 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+4683, a2=sym(pipe2WidthCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001a1f4 calls XtVaCreateManagedWidget with a0=0x1002ddc8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001a2a4 calls XtVaCreateManagedWidget with a0=0x1002dde0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001a348 calls XtVaCreateManagedWidget with a0=0x1002ddf8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001a3e8 calls XtVaCreateManagedWidget with a0=0x1002de10, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001a404 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+4683, a2=sym(pipe1Y1Callback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001a4b0 calls XtVaCreateManagedWidget with a0=0x1002de28, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001a550 calls XtVaCreateManagedWidget with a0=0x1002de40, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001a56c calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+4683, a2=sym(pipe1X1Callback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001a618 calls XtVaCreateManagedWidget with a0=0x1002de58, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001a6c8 calls XtVaCreateManagedWidget with a0=0x1002de70, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001a774 calls XtVaCreateManagedWidget with a0=0x1002de88, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001a790 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+4683, a2=sym(pipe1HeightCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001a82c calls XtVaCreateManagedWidget with a0=0x1002dea0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001a848 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+4683, a2=sym(pipe1WidthCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001a8e8 calls XtVaCreateManagedWidget with a0=0x1002deb8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001a998 calls XtVaCreateManagedWidget with a0=0x1002ded0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001aa48 calls XtVaCreateManagedWidget with a0=0x1002dee8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001aaf0 calls XtVaCreateManagedWidget with a0=0x1002df00, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001ab0c calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+4683, a2=sym(pipe0Y1Callback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001abb4 calls XtVaCreateManagedWidget with a0=0x1002df18, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001abd0 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+4683, a2=sym(pipe0X1Callback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001ac68 calls XtVaCreateManagedWidget with a0=0x1002df30, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001ac84 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+4683, a2=sym(pipe0HeightCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001ad30 calls XtVaCreateManagedWidget with a0=0x1002df48, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001adcc calls XtVaCreateManagedWidget with a0=0x1002df60, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001ade8 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+4683, a2=sym(pipe0WidthCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001ae88 calls XtVaCreateManagedWidget with a0=0x1002df78, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001ae9c calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001aecc calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x1002df90, a3=0x0, a4=0x0.
  The `jalr` at 0x1001af00 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=?, a1=0x1002dfa8, a2=sym(doCmpPropOnePipeButtonCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1001af24 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+176], a1=0x1002dfc0, a2=sym(doCmpPropTwoPipeButtonCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1001af48 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+176], a1=0x1002dfd8, a2=sym(doCmpPropThreePipeButtonCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1001af6c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+176], a1=0x1002dff0, a2=sym(doCmpPropFourPipeButtonCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1001b024 calls XtVaCreateManagedWidget with a0=0x1002e008, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x0, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001b040 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+4683, a2=sym(doTilingPropertiesCloseButtonCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001b04c calls baseWidget__10VkMenuItemCGv with a0=[a0+180], a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b0cc calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x1, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x1, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x1001b0f4 calls XtVaSetValues with a0=[a0+136], a1=sym(_XmStrings)+10305, a2=[a0+104], a3=sym(_XmStrings)+7562, a4=[a0+152], a5=0x0.
  The `jalr` at 0x1001b114 calls XtVaSetValues with a0=[a0+132], a1=sym(_XmStrings)+10305, a2=[a0+100], a3=sym(_XmStrings)+7562, a4=[a0+140], a5=0x0.
  The `jalr` at 0x1001b134 calls XtVaSetValues with a0=[a0+160], a1=sym(_XmStrings)+10305, a2=[a0+124], a3=sym(_XmStrings)+7562, a4=[a0+148], a5=0x0.
  The `jalr` at 0x1001b14c calls XtVaSetValues with a0=[a0+156], a1=sym(_XmStrings)+10305, a2=[a0+128], a3=0x0.
  The `jalr` at 0x1001b164 calls XtVaSetValues with a0=[a0+152], a1=sym(_XmStrings)+10305, a2=[a0+120], a3=0x0.
  The `jalr` at 0x1001b17c calls XtVaSetValues with a0=[a0+140], a1=sym(_XmStrings)+10305, a2=[a0+108], a3=0x0.
  The `jalr` at 0x1001b19c calls XtVaSetValues with a0=[a0+148], a1=sym(_XmStrings)+10305, a2=[a0+116], a3=sym(_XmStrings)+7562, a4=[a0+144], a5=0x0.
  The `jalr` at 0x1001b1b4 calls XtVaSetValues with a0=[a0+144], a1=sym(_XmStrings)+10305, a2=[a0+112], a3=0x0.
  The `jalr` at 0x1001b1d4 calls XtVaSetValues with a0=[a0+124], a1=sym(_XmStrings)+10305, a2=[a0+68], a3=sym(_XmStrings)+7562, a4=[a0+116], a5=0x0.
  The `jalr` at 0x1001b1f4 calls XtVaSetValues with a0=[a0+104], a1=sym(_XmStrings)+10305, a2=[a0+72], a3=sym(_XmStrings)+7562, a4=[a0+120], a5=0x0.
  The `jalr` at 0x1001b214 calls XtVaSetValues with a0=[a0+100], a1=sym(_XmStrings)+10305, a2=[a0+96], a3=sym(_XmStrings)+7562, a4=[a0+108], a5=0x0.
  The `jalr` at 0x1001b22c calls XtVaSetValues with a0=[a0+128], a1=sym(_XmStrings)+10305, a2=[a0+92], a3=0x0.
  The `jalr` at 0x1001b244 calls XtVaSetValues with a0=[a0+120], a1=sym(_XmStrings)+10305, a2=[a0+88], a3=0x0.
  The `jalr` at 0x1001b25c calls XtVaSetValues with a0=[a0+108], a1=sym(_XmStrings)+10305, a2=[a0+76], a3=0x0.
  The `jalr` at 0x1001b27c calls XtVaSetValues with a0=[a0+116], a1=sym(_XmStrings)+10305, a2=[a0+84], a3=sym(_XmStrings)+7562, a4=[a0+112], a5=0x0.
  The `jalr` at 0x1001b294 calls XtVaSetValues with a0=[a0+112], a1=sym(_XmStrings)+10305, a2=[a0+80], a3=0x0.
  The `jalr` at 0x1001b2a0 calls baseWidget__10VkMenuItemCGv with a0=[a0+176], a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b2c0 calls XtVaSetValues with a0=[a0+36], a1=sym(_XmStrings)+10305, a2=ret(baseWidget__10VkMenuItemCGv), a3=sym(_XmStrings)+7562, a4=[a0+164], a5=0x0.
  The `jalr` at 0x1001b2cc calls baseWidget__10VkMenuItemCGv with a0=[a0+176], a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b2e4 calls XtVaSetValues with a0=[a0+164], a1=sym(_XmStrings)+10305, a2=ret(baseWidget__10VkMenuItemCGv), a3=0x0.
  The `jalr` at 0x1001b304 calls XtVaSetValues with a0=[a0+92], a1=sym(_XmStrings)+10305, a2=[a0+64], a3=sym(_XmStrings)+7562, a4=[a0+72], a5=0x0.
  The `jalr` at 0x1001b324 calls XtVaSetValues with a0=[a0+72], a1=sym(_XmStrings)+10305, a2=[a0+40], a3=sym(_XmStrings)+7562, a4=[a0+88], a5=0x0.
  The `jalr` at 0x1001b344 calls XtVaSetValues with a0=[a0+88], a1=sym(_XmStrings)+10305, a2=[a0+56], a3=sym(_XmStrings)+7562, a4=[a0+96], a5=0x0.
  The `jalr` at 0x1001b364 calls XtVaSetValues with a0=[a0+96], a1=sym(_XmStrings)+10305, a2=[a0+60], a3=sym(_XmStrings)+7562, a4=[a0+76], a5=0x0.
  The `jalr` at 0x1001b384 calls XtVaSetValues with a0=[a0+68], a1=sym(_XmStrings)+10305, a2=[a0+32], a3=sym(_XmStrings)+7562, a4=[a0+84], a5=0x0.
  The `jalr` at 0x1001b39c calls XtVaSetValues with a0=[a0+76], a1=sym(_XmStrings)+10305, a2=[a0+44], a3=0x0.
  The `jalr` at 0x1001b3bc calls XtVaSetValues with a0=[a0+84], a1=sym(_XmStrings)+10305, a2=[a0+52], a3=sym(_XmStrings)+7562, a4=[a0+80], a5=0x0.
  The `jalr` at 0x1001b3d4 calls XtVaSetValues with a0=[a0+80], a1=sym(_XmStrings)+10305, a2=[a0+48], a3=0x0.
  The `jalr` at 0x1001b3e0 calls baseWidget__10VkMenuItemCGv with a0=[a0+176], a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b400 calls XtVaSetValues with a0=[a0+60], a1=sym(_XmStrings)+10305, a2=ret(baseWidget__10VkMenuItemCGv), a3=sym(_XmStrings)+7562, a4=[a0+44], a5=0x0.
  The `jalr` at 0x1001b40c calls baseWidget__10VkMenuItemCGv with a0=[a0+176], a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b42c calls XtVaSetValues with a0=[a0+40], a1=sym(_XmStrings)+10305, a2=ret(baseWidget__10VkMenuItemCGv), a3=sym(_XmStrings)+7562, a4=[a0+56], a5=0x0.
  The `jalr` at 0x1001b438 calls baseWidget__10VkMenuItemCGv with a0=[a0+176], a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b450 calls XtVaSetValues with a0=[a0+64], a1=sym(_XmStrings)+10305, a2=ret(baseWidget__10VkMenuItemCGv), a3=0x0.
  The `jalr` at 0x1001b45c calls baseWidget__10VkMenuItemCGv with a0=[a0+176], a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b474 calls XtVaSetValues with a0=[a0+56], a1=sym(_XmStrings)+10305, a2=ret(baseWidget__10VkMenuItemCGv), a3=0x0.
  The `jalr` at 0x1001b480 calls baseWidget__10VkMenuItemCGv with a0=[a0+176], a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b4a0 calls XtVaSetValues with a0=[a0+44], a1=sym(_XmStrings)+10305, a2=ret(baseWidget__10VkMenuItemCGv), a3=sym(_XmStrings)+7562, a4=[a0+32], a5=0x0.
  The `jalr` at 0x1001b4ac calls baseWidget__10VkMenuItemCGv with a0=[a0+176], a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b4cc calls XtVaSetValues with a0=[a0+32], a1=sym(_XmStrings)+10305, a2=ret(baseWidget__10VkMenuItemCGv), a3=sym(_XmStrings)+7562, a4=[a0+52], a5=0x0.
  The `jalr` at 0x1001b4d8 calls baseWidget__10VkMenuItemCGv with a0=[a0+176], a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b4f8 calls XtVaSetValues with a0=[a0+52], a1=sym(_XmStrings)+10305, a2=ret(baseWidget__10VkMenuItemCGv), a3=sym(_XmStrings)+7562, a4=[a0+48], a5=0x0.
  The `jalr` at 0x1001b504 calls baseWidget__10VkMenuItemCGv with a0=[a0+176], a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b51c calls XtVaSetValues with a0=[a0+48], a1=sym(_XmStrings)+10305, a2=ret(baseWidget__10VkMenuItemCGv), a3=0x0.
  The `jalr` at 0x1001b528 calls baseWidget__10VkMenuItemCGv with a0=[a0+176], a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b538 calls baseWidget__10VkMenuItemCGv with a0=[a0+180], a1=?, a2=?, a3=?.
  The `jalr` at 0x1001b5c8 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x3, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x1, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x1001b604 calls XtAddCallback with a0=[a0+56], a1=sym(_XmStrings)+7765, a2=sym(pipe0X1Callback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001b61c calls XtAddCallback with a0=[a0+64], a1=sym(_XmStrings)+7765, a2=sym(pipe0Y1Callback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001b634 calls XtAddCallback with a0=[a0+52], a1=sym(_XmStrings)+7765, a2=sym(pipe0WidthCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001b64c calls XtAddCallback with a0=[a0+44], a1=sym(_XmStrings)+7765, a2=sym(pipe0HeightCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001b664 calls XtAddCallback with a0=[a0+88], a1=sym(_XmStrings)+7765, a2=sym(pipe1X1Callback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001b67c calls XtAddCallback with a0=[a0+92], a1=sym(_XmStrings)+7765, a2=sym(pipe1Y1Callback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001b694 calls XtAddCallback with a0=[a0+84], a1=sym(_XmStrings)+7765, a2=sym(pipe1WidthCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001b6ac calls XtAddCallback with a0=[a0+76], a1=sym(_XmStrings)+7765, a2=sym(pipe1HeightCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001b6c4 calls XtAddCallback with a0=[a0+120], a1=sym(_XmStrings)+7765, a2=sym(pipe2X1Callback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001b6dc calls XtAddCallback with a0=[a0+128], a1=sym(_XmStrings)+7765, a2=sym(pipe2Y1Callback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001b6f4 calls XtAddCallback with a0=[a0+116], a1=sym(_XmStrings)+7765, a2=sym(pipe2WidthCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001b70c calls XtAddCallback with a0=[a0+108], a1=sym(_XmStrings)+7765, a2=sym(pipe2HeightCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001b724 calls XtAddCallback with a0=[a0+152], a1=sym(_XmStrings)+7765, a2=sym(pipe3X1Callback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001b73c calls XtAddCallback with a0=[a0+156], a1=sym(_XmStrings)+7765, a2=sym(pipe3Y1Callback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001b754 calls XtAddCallback with a0=[a0+148], a1=sym(_XmStrings)+7765, a2=sym(pipe3WidthCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001b76c calls XtAddCallback with a0=[a0+140], a1=sym(_XmStrings)+7765, a2=sym(pipe3HeightCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `beq` branch at 0x100194f4 targets 0x10019534, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1001952c targets 0x10019538 and is always taken.
  The `beq` branch at 0x1001aea4 targets 0x1001aee4, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1001aedc targets 0x1001aeec and is always taken.
  The return at 0x1001b784 has v0 = ret(XtAddCallback).

- `className__27TilingPropertiesFormClassUIGv` in `usr/gfx/sgcombine` at 0x1001b790 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b790-0x1001b7a8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1001b79c loads 4 bytes from abs 0x10032930.
  The return at 0x1001b7a0 has v0 = 0x1002e028.

- `doCmpPropFourPipeButton__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b7b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b7b0-0x1001b7b8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b7b0 has v0 = ?.

- `doCmpPropOnePipeButton__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b7c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b7c0-0x1001b7c8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b7c0 has v0 = ?.

- `doCmpPropThreePipeButton__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b7d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b7d0-0x1001b7d8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b7d0 has v0 = ?.

- `doCmpPropTwoPipeButton__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b7e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b7e0-0x1001b7e8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b7e0 has v0 = ?.

- `doTilingModeHStripesButton__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b7f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b7f0-0x1001b7f8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b7f0 has v0 = ?.

- `doTilingModeOffButton__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b800 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b800-0x1001b808 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b800 has v0 = ?.

- `doTilingModePixelAverageButton__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b810 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b810-0x1001b818 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b810 has v0 = ?.

- `doTilingModeSpatialButton__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b820 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b820-0x1001b828 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b820 has v0 = ?.

- `doTilingModeStereoButton__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b830 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b830-0x1001b838 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b830 has v0 = ?.

- `doTilingModeVStripesbutton__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b840 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b840-0x1001b848 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b840 has v0 = ?.

- `doTilingPropertiesCloseButton__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b850 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b850-0x1001b858 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b850 has v0 = ?.

- `pipe0Height__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b860 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b860-0x1001b868 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b860 has v0 = ?.

- `pipe0Width__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b870 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b870-0x1001b878 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b870 has v0 = ?.

- `pipe0X1__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b880 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b880-0x1001b888 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b880 has v0 = ?.

- `pipe0Y1__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b890 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b890-0x1001b898 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b890 has v0 = ?.

- `pipe1Height__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b8a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b8a0-0x1001b8a8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b8a0 has v0 = ?.

- `pipe1Width__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b8b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b8b0-0x1001b8b8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b8b0 has v0 = ?.

- `pipe1X1__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b8c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b8c0-0x1001b8c8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b8c0 has v0 = ?.

- `pipe1Y1__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b8d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b8d0-0x1001b8d8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b8d0 has v0 = ?.

- `pipe2Height__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b8e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b8e0-0x1001b8e8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b8e0 has v0 = ?.

- `pipe2Width__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b8f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b8f0-0x1001b8f8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b8f0 has v0 = ?.

- `pipe2X1__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b900 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b900-0x1001b908 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b900 has v0 = ?.

- `pipe2Y1__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b910-0x1001b918 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b910 has v0 = ?.

- `pipe3Height__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b920 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b920-0x1001b928 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b920 has v0 = ?.

- `pipe3Width__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b930 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b930-0x1001b938 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b930 has v0 = ?.

- `pipe3X1__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b940 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b940-0x1001b948 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b940 has v0 = ?.

- `pipe3Y1__27TilingPropertiesFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001b950 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b950-0x1001b958 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001b950 has v0 = ?.

- `doCmpPropFourPipeButtonCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001b960 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b960-0x1001b9a4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001b964 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001b970 loads 4 bytes from [a1+8] +0x9c.
  The `lw` at 0x1001b97c loads 4 bytes from [a1+8] +0xa4.
  The `jalr` at 0x1001b98c calls (unknown callee) with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1ef80.
  The return at 0x1001b99c has v0 = ret(?).

- `doCmpPropOnePipeButtonCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001b9b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001b9b0-0x1001b9f4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001b9b4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001b9c0 loads 4 bytes from [a1+8] +0xa8.
  The `lw` at 0x1001b9cc loads 4 bytes from [a1+8] +0xb0.
  The `jalr` at 0x1001b9dc calls (unknown callee) with a0=([[a1+8]+168] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1ef30.
  The return at 0x1001b9ec has v0 = ret(?).

- `doCmpPropThreePipeButtonCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001ba00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001ba00-0x1001ba44 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001ba04 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001ba10 loads 4 bytes from [a1+8] +0xb4.
  The `lw` at 0x1001ba1c loads 4 bytes from [a1+8] +0xbc.
  The `jalr` at 0x1001ba2c calls (unknown callee) with a0=([[a1+8]+180] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1eee0.
  The return at 0x1001ba3c has v0 = ret(?).

- `doCmpPropTwoPipeButtonCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001ba50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001ba50-0x1001ba94 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001ba54 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001ba60 loads 4 bytes from [a1+8] +0xc0.
  The `lw` at 0x1001ba6c loads 4 bytes from [a1+8] +0xc8.
  The `jalr` at 0x1001ba7c calls (unknown callee) with a0=([[a1+8]+192] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1ee90.
  The return at 0x1001ba8c has v0 = ret(?).

- `doTilingModeHStripesButtonCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001baa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001baa0-0x1001bae4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001baa4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001bab0 loads 4 bytes from [a1+8] +0xcc.
  The `lw` at 0x1001babc loads 4 bytes from [a1+8] +0xd4.
  The `jalr` at 0x1001bacc calls (unknown callee) with a0=([[a1+8]+204] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1ee40.
  The return at 0x1001badc has v0 = ret(?).

- `doTilingModeOffButtonCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001baf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001baf0-0x1001bb34 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001baf4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001bb00 loads 4 bytes from [a1+8] +0xd8.
  The `lw` at 0x1001bb0c loads 4 bytes from [a1+8] +0xe0.
  The `jalr` at 0x1001bb1c calls (unknown callee) with a0=([[a1+8]+216] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1edf0.
  The return at 0x1001bb2c has v0 = ret(?).

- `doTilingModePixelAverageButtonCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001bb40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001bb40-0x1001bb84 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001bb44 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001bb50 loads 4 bytes from [a1+8] +0xe4.
  The `lw` at 0x1001bb5c loads 4 bytes from [a1+8] +0xec.
  The `jalr` at 0x1001bb6c calls (unknown callee) with a0=([[a1+8]+228] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1eda0.
  The return at 0x1001bb7c has v0 = ret(?).

- `doTilingModeSpatialButtonCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001bb90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001bb90-0x1001bbd4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001bb94 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001bba0 loads 4 bytes from [a1+8] +0xf0.
  The `lw` at 0x1001bbac loads 4 bytes from [a1+8] +0xf8.
  The `jalr` at 0x1001bbbc calls (unknown callee) with a0=([[a1+8]+240] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1ed50.
  The return at 0x1001bbcc has v0 = ret(?).

- `doTilingModeStereoButtonCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001bbe0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001bbe0-0x1001bc24 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001bbe4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001bbf0 loads 4 bytes from [a1+8] +0xfc.
  The `lw` at 0x1001bbfc loads 4 bytes from [a1+8] +0x104.
  The `jalr` at 0x1001bc0c calls (unknown callee) with a0=([[a1+8]+252] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1ed00.
  The return at 0x1001bc1c has v0 = ret(?).

- `doTilingModeVStripesbuttonCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001bc30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001bc30-0x1001bc74 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001bc34 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001bc40 loads 4 bytes from [a1+8] +0x108.
  The `lw` at 0x1001bc4c loads 4 bytes from [a1+8] +0x110.
  The `jalr` at 0x1001bc5c calls (unknown callee) with a0=([[a1+8]+264] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1ecb0.
  The return at 0x1001bc6c has v0 = ret(?).

- `doTilingPropertiesCloseButtonCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001bc80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001bc80-0x1001bcc4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001bc84 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001bc90 loads 4 bytes from [a1+8] +0x114.
  The `lw` at 0x1001bc9c loads 4 bytes from [a1+8] +0x11c.
  The `jalr` at 0x1001bcac calls (unknown callee) with a0=([[a1+8]+276] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1ec60.
  The return at 0x1001bcbc has v0 = ret(?).

- `pipe0HeightCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001bcd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001bcd0-0x1001bd14 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001bcd4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001bce0 loads 4 bytes from [a1+8] +0x120.
  The `lw` at 0x1001bcec loads 4 bytes from [a1+8] +0x128.
  The `jalr` at 0x1001bcfc calls (unknown callee) with a0=([[a1+8]+288] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1ec10.
  The return at 0x1001bd0c has v0 = ret(?).

- `pipe0WidthCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001bd20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001bd20-0x1001bd64 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001bd24 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001bd30 loads 4 bytes from [a1+8] +0x12c.
  The `lw` at 0x1001bd3c loads 4 bytes from [a1+8] +0x134.
  The `jalr` at 0x1001bd4c calls (unknown callee) with a0=([[a1+8]+300] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1ebc0.
  The return at 0x1001bd5c has v0 = ret(?).

- `pipe0X1Callback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001bd70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001bd70-0x1001bdb4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001bd74 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001bd80 loads 4 bytes from [a1+8] +0x138.
  The `lw` at 0x1001bd8c loads 4 bytes from [a1+8] +0x140.
  The `jalr` at 0x1001bd9c calls (unknown callee) with a0=([[a1+8]+312] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1eb70.
  The return at 0x1001bdac has v0 = ret(?).

- `pipe0Y1Callback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001bdc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001bdc0-0x1001be04 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001bdc4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001bdd0 loads 4 bytes from [a1+8] +0x144.
  The `lw` at 0x1001bddc loads 4 bytes from [a1+8] +0x14c.
  The `jalr` at 0x1001bdec calls (unknown callee) with a0=([[a1+8]+324] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1eb20.
  The return at 0x1001bdfc has v0 = ret(?).

- `pipe1HeightCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001be10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001be10-0x1001be54 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001be14 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001be20 loads 4 bytes from [a1+8] +0x150.
  The `lw` at 0x1001be2c loads 4 bytes from [a1+8] +0x158.
  The `jalr` at 0x1001be3c calls (unknown callee) with a0=([[a1+8]+336] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1ead0.
  The return at 0x1001be4c has v0 = ret(?).

- `pipe1WidthCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001be60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001be60-0x1001bea4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001be64 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001be70 loads 4 bytes from [a1+8] +0x15c.
  The `lw` at 0x1001be7c loads 4 bytes from [a1+8] +0x164.
  The `jalr` at 0x1001be8c calls (unknown callee) with a0=([[a1+8]+348] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1ea80.
  The return at 0x1001be9c has v0 = ret(?).

- `pipe1X1Callback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001beb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001beb0-0x1001bef4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001beb4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001bec0 loads 4 bytes from [a1+8] +0x168.
  The `lw` at 0x1001becc loads 4 bytes from [a1+8] +0x170.
  The `jalr` at 0x1001bedc calls (unknown callee) with a0=([[a1+8]+360] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1ea30.
  The return at 0x1001beec has v0 = ret(?).

- `pipe1Y1Callback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001bf00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001bf00-0x1001bf44 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001bf04 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001bf10 loads 4 bytes from [a1+8] +0x174.
  The `lw` at 0x1001bf1c loads 4 bytes from [a1+8] +0x17c.
  The `jalr` at 0x1001bf2c calls (unknown callee) with a0=([[a1+8]+372] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1e9e0.
  The return at 0x1001bf3c has v0 = ret(?).

- `pipe2HeightCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001bf50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001bf50-0x1001bf94 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001bf54 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001bf60 loads 4 bytes from [a1+8] +0x180.
  The `lw` at 0x1001bf6c loads 4 bytes from [a1+8] +0x188.
  The `jalr` at 0x1001bf7c calls (unknown callee) with a0=([[a1+8]+384] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1e990.
  The return at 0x1001bf8c has v0 = ret(?).

- `pipe2WidthCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001bfa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001bfa0-0x1001bfe4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001bfa4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001bfb0 loads 4 bytes from [a1+8] +0x18c.
  The `lw` at 0x1001bfbc loads 4 bytes from [a1+8] +0x194.
  The `jalr` at 0x1001bfcc calls (unknown callee) with a0=([[a1+8]+396] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1e940.
  The return at 0x1001bfdc has v0 = ret(?).

- `pipe2X1Callback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001bff0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001bff0-0x1001c034 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001bff4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001c000 loads 4 bytes from [a1+8] +0x198.
  The `lw` at 0x1001c00c loads 4 bytes from [a1+8] +0x1a0.
  The `jalr` at 0x1001c01c calls (unknown callee) with a0=([[a1+8]+408] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1e8f0.
  The return at 0x1001c02c has v0 = ret(?).

- `pipe2Y1Callback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001c040 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001c040-0x1001c084 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001c044 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001c050 loads 4 bytes from [a1+8] +0x1a4.
  The `lw` at 0x1001c05c loads 4 bytes from [a1+8] +0x1ac.
  The `jalr` at 0x1001c06c calls (unknown callee) with a0=([[a1+8]+420] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1e8a0.
  The return at 0x1001c07c has v0 = ret(?).

- `pipe3HeightCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001c090 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001c090-0x1001c0d4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001c094 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001c0a0 loads 4 bytes from [a1+8] +0x1b0.
  The `lw` at 0x1001c0ac loads 4 bytes from [a1+8] +0x1b8.
  The `jalr` at 0x1001c0bc calls (unknown callee) with a0=([[a1+8]+432] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1e850.
  The return at 0x1001c0cc has v0 = ret(?).

- `pipe3WidthCallback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001c0e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001c0e0-0x1001c124 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001c0e4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001c0f0 loads 4 bytes from [a1+8] +0x1bc.
  The `lw` at 0x1001c0fc loads 4 bytes from [a1+8] +0x1c4.
  The `jalr` at 0x1001c10c calls (unknown callee) with a0=([[a1+8]+444] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1e800.
  The return at 0x1001c11c has v0 = ret(?).

- `pipe3X1Callback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001c130 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001c130-0x1001c174 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001c134 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001c140 loads 4 bytes from [a1+8] +0x1c8.
  The `lw` at 0x1001c14c loads 4 bytes from [a1+8] +0x1d0.
  The `jalr` at 0x1001c15c calls (unknown callee) with a0=([[a1+8]+456] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1e7b0.
  The return at 0x1001c16c has v0 = ret(?).

- `pipe3Y1Callback__27TilingPropertiesFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001c180 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001c180-0x1001c1c4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001c184 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001c190 loads 4 bytes from [a1+8] +0x1d4.
  The `lw` at 0x1001c19c loads 4 bytes from [a1+8] +0x1dc.
  The `jalr` at 0x1001c1ac calls (unknown callee) with a0=([[a1+8]+468] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1e760.
  The return at 0x1001c1bc has v0 = ret(?).

- `__ct__27TilingPropertiesWindowClassGPCcP3ArgUi` in `usr/gfx/sgcombine` at 0x1001c1e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001c1e0-0x1001c334 (340 bytes).
  It occupies 340 bytes.
  The `sw` at 0x1001c214 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x1001c25c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1001c260 loads 4 bytes from [a0+8] +0xec.
  The `lw` at 0x1001c264 loads 4 bytes from [a0+8] +0xe4.
  The `sw` at 0x1001c2a0 stores 4 bytes to a0 (arg0 at entry) +0x40.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x1001c2ac, `lw` at 0x1001c2e0, `lw` at 0x1001c31c.
  The `jalr` at 0x1001c200 calls __ct__14VkSimpleWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001c218 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1001c22c calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultTilingPropertiesWindowClassResources__27TilingPropertiesWindowClass), a3=?.
  The `jalr` at 0x1001c23c calls __nw__GUi with a0=0xe4, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001c268 calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=0x0, a3=?.
  The `jal` at 0x1001c280 calls __ct__25TilingPropertiesFormClassGPCcP10_WidgetRec [0x10017c40] with a0=ret(__nw__GUi), a1=0x1002e5f0, a2=ret(?), a3=?.
  The `jalr` at 0x1001c2a8 calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x1001c2cc calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x187, a3=sym(XtStrings)+234, a4=0x17c, a5=0x0.
  The `jalr` at 0x1001c2dc calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+64], a2=?, a3=?.
  The `jalr` at 0x1001c304 calls VkConfigureWM__GP14VkSimpleWindowcN62 with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x1, a4=0x1, a5=0x0, a6=0x1, a7=0x1.
  The `jal` at 0x1001c318 calls setParent__25TilingPropertiesFormClassGP14VkSimpleWindow [0x10018210] with a0=[a0+64], a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0x1001c248 targets 0x1001c298, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1001c290 targets 0x1001c29c and is always taken.
  The return at 0x1001c32c has v0 = a0.

- `__dt__27TilingPropertiesWindowClassGv` in `usr/gfx/sgcombine` at 0x1001c340 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001c340-0x1001c3d0 (144 bytes).
  It occupies 144 bytes.
  The `sw` at 0x1001c368 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x1001c370 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x1001c37c loads 4 bytes from [a0+64] +0x8.
  The `lw` at 0x1001c380 loads 4 bytes from [[a0+64]+8] +0x14.
  The `lw` at 0x1001c384 loads 4 bytes from [[a0+64]+8] +0xc.
  The `jalr` at 0x1001c38c calls (unknown callee) with a0=([[[a0+64]+8]+12] + [a0+64]), a1=0x3, a2=a2 at entry (arg2), a3=[a0+64].
  The `jalr` at 0x1001c39c calls __dt__14VkSimpleWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1001c3b8 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1001c358 targets 0x1001c3c0, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1001c374 targets 0x1001c39c, is taken when a3(=[a0+64]) == 0, and falls through when a3(=[a0+64]) != 0.
  The `beq` branch at 0x1001c3ac targets 0x1001c3c4, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x1001c3c8 has v0 = one of ret(__dt__14VkSimpleWindowGv), ?.

- `className__27TilingPropertiesWindowClassGv` in `usr/gfx/sgcombine` at 0x1001c3d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001c3d0-0x1001c3e8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1001c3dc loads 4 bytes from abs 0x10032930.
  The return at 0x1001c3e0 has v0 = 0x1002e610.

- `okToQuit__27TilingPropertiesWindowClassGv` in `usr/gfx/sgcombine` at 0x1001c3f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001c3f0-0x1001c430 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x1001c3f4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1001c408 loads 4 bytes from [a0+8] +0x38.
  The `lw` at 0x1001c40c loads 4 bytes from [a0+8] +0x30.
  The `jalr` at 0x1001c414 calls (unknown callee) with a0=([[a0+8]+48] + a0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1001c428 has v0 = 0x0.

- `update__27TilingPropertiesWindowClassGv` in `usr/gfx/sgcombine` at 0x1001c430 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001c430-0x1001c464 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x1001c450 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x1001c44c calls update__25TilingPropertiesFormClassGv [0x10017df0] with a0=[a0+64], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1001c45c has v0 = ret(update__25TilingPropertiesFormClassGv).

- `__ct__18VideoPropFormClassGPCcP10_WidgetRec` in `usr/gfx/sgcombine` at 0x1001c480 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001c480-0x1001c4c8 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x1001c4b8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x1001c4a0 calls __ct__20VideoPropFormClassUIGPCcP10_WidgetRec [0x1001cd80] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1001c4c0 has v0 = a0.

- `__ct__18VideoPropFormClassGPCc` in `usr/gfx/sgcombine` at 0x1001c4d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001c4d0-0x1001c518 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x1001c508 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x1001c4f0 calls __ct__20VideoPropFormClassUIGPCc [0x1001cdf0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1001c510 has v0 = a0.

- `__dt__18VideoPropFormClassGv` in `usr/gfx/sgcombine` at 0x1001c520 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001c520-0x1001c588 (104 bytes).
  It occupies 104 bytes.
  The `sw` at 0x1001c550 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x1001c558 calls __dt__20VideoPropFormClassUIGv [0x1001ce40] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001c570 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1001c540 targets 0x1001c578, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1001c568 targets 0x1001c578, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x1001c580 has v0 = one of ?, ret(__dt__20VideoPropFormClassUIGv), ret(__dl__GPv).

- `className__18VideoPropFormClassGv` in `usr/gfx/sgcombine` at 0x1001c590 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001c590-0x1001c5a8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1001c59c loads 4 bytes from abs 0x10032930.
  The return at 0x1001c5a0 has v0 = 0x1002e650.

- `CreateVideoPropFormClass__18VideoPropFormClassSGPCcP10_WidgetRec` in `usr/gfx/sgcombine` at 0x1001c5b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001c5b0-0x1001c630 (128 bytes).
  It occupies 128 bytes.
  The `jalr` at 0x1001c5d8 calls __nw__GUi with a0=0x6c, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1001c600 calls __ct__18VideoPropFormClassGPCcP10_WidgetRec [0x1001c480] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x1001c5e4 targets 0x1001c61c, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x1001c614 has v0 = ret(__nw__GUi).
  The return at 0x1001c628 has v0 = 0x0.

- `update__18VideoPropFormClassGv` in `usr/gfx/sgcombine` at 0x1001c630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001c630-0x1001c710 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0x1001c650 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lw` at 0x1001c67c loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lw` at 0x1001c68c loads 4 bytes from sym(combination) +0x35c.
  The `lw` at 0x1001c698 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x1001c6a8 loads 4 bytes from sym(combination) +0x360.
  The `lw` at 0x1001c6b4 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x1001c6c4 loads 4 bytes from sym(combination) +0x364.
  The `lw` at 0x1001c6cc loads 4 bytes from sym(combination) +0x368.
  The `lw` at 0x1001c6d4 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x1001c6dc loads 4 bytes from sym(combination) +0x36c.
  The `lw` at 0x1001c6e4 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x1001c6ec loads 4 bytes from sym(combination) +0x370.
  The `lw` at 0x1001c6f4 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `jal` at 0x1001c658 calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+52], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1001c66c calls __as__9EZWrapperGPCc [0x10027fe0] with a0=ret(EZ__GP10_WidgetRec), a1=sym(combination), a2=?, a3=?.
  The `jal` at 0x1001c678 calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+60], a1=?, a2=?, a3=?.
  The `jal` at 0x1001c688 calls __as__9EZWrapperGi [0x10027950] with a0=ret(EZ__GP10_WidgetRec), a1=[sym(combination)+860], a2=?, a3=?.
  The `jal` at 0x1001c694 calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+56], a1=?, a2=?, a3=?.
  The `jal` at 0x1001c6a4 calls __as__9EZWrapperGi [0x10027950] with a0=ret(EZ__GP10_WidgetRec), a1=[sym(combination)+864], a2=?, a3=?.
  The `jal` at 0x1001c6b0 calls EZ__GP10_WidgetRec [0x10026720] with a0=[a0+36], a1=?, a2=?, a3=?.
  The `jal` at 0x1001c6c0 calls __as__9EZWrapperGi [0x10027950] with a0=ret(EZ__GP10_WidgetRec), a1=[sym(combination)+868], a2=?, a3=?.
  The `jalr` at 0x1001c6d0 calls set__12VkOptionMenuGi with a0=[a0+72], a1=[sym(combination)+872], a2=?, a3=?.
  The `jalr` at 0x1001c6e0 calls set__12VkOptionMenuGi with a0=[a0+68], a1=[sym(combination)+876], a2=?, a3=?.
  The `jalr` at 0x1001c6f0 calls set__12VkOptionMenuGi with a0=[a0+76], a1=[sym(combination)+880], a2=?, a3=?.
  The return at 0x1001c708 has v0 = ret(set__12VkOptionMenuGi).

- `setParent__18VideoPropFormClassGP14VkSimpleWindow` in `usr/gfx/sgcombine` at 0x1001c710 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001c710-0x1001c718 (8 bytes).
  It occupies 8 bytes.
  The `sw` at 0x1001c714 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The return at 0x1001c710 has v0 = ?.

- `doVideoPropBrowseButton__18VideoPropFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001c720 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001c720-0x1001c844 (292 bytes).
  It occupies 292 bytes.
  5 such `lw` accesses load 4 bytes from sym(sffb) +0x0, including `lw` at 0x1001c794, `lw` at 0x1001c7a4, `lw` at 0x1001c7b4.
  The `lw` at 0x1001c7bc loads 4 bytes from [sym(sffb)] +0x8.
  The `lw` at 0x1001c7cc loads 4 bytes from [[sym(sffb)]+8] +0x110.
  The `lw` at 0x1001c7d8 loads 4 bytes from [[sym(sffb)]+8] +0x108.
  2 such `lw` accesses load 4 bytes from sym(stcombineWindow) +0x0, including `lw` at 0x1001c808, `lw` at 0x1001c838.
  The `lw` at 0x1001c824 loads 4 bytes from [sym(sffb)] +0x54.
  The `jalr` at 0x1001c744 calls sprintf with a0=sp-1136, a1=0x1002e668, a2=0x1e1c0, a3=a3 at entry (arg3).
  The `jalr` at 0x1001c754 calls getenv with a0=0x1002e680, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001c778 calls sprintf with a0=sp-1056, a1=0x1002e690, a2=?, a3=?.
  The `jalr` at 0x1001c790 calls setTitle__15VkDialogManagerGPCc with a0=[sym(sffb)], a1=0x1002e6b0, a2=?, a3=?.
  The `jalr` at 0x1001c7a0 calls setDirectory__21VkFileSelectionDialogGPCc with a0=[sym(sffb)], a1=sp-1056, a2=?, a3=?.
  The `jalr` at 0x1001c7b0 calls setFilterPattern__21VkFileSelectionDialogGPCc with a0=[sym(sffb)], a1=0x10033508, a2=?, a3=?.
  The `jalr` at 0x1001c7e4 calls (unknown callee) with a0=([[[sym(sffb)]+8]+264] + [sym(sffb)]), a1=sp-1136, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x1001c804 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=?, a2=?, a3=?.
  The `jalr` at 0x1001c820 calls basename with a0=[[sym(sffb)]+84], a1=0x1, a2=?, a3=?.
  The `jal` at 0x1001c834 calls loadCmpFormat__20StcombineWindowClassGPc [0x10016500] with a0=[sym(stcombineWindow)], a1=ret(basename), a2=?, a3=?.
  The `bne` branch at 0x1001c75c targets 0x1001c768, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `beq` branch at 0x1001c7f0 targets 0x1001c81c, is taken when v0(=ret(?)) == a1(=0x1), and falls through when v0(=ret(?)) != a1(=0x1).
  The `beq` branch at 0x1001c83c targets 0x1001c7fc and is always taken.
  The return at 0x1001c814 has v0 = ret(update__20StcombineWindowClassGv).

- `doVideoPropCSyncButton__18VideoPropFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001c850 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001c850-0x1001c894 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001c874 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x1001c880 stores 4 bytes to sym(combination) +0x368.
  The `jal` at 0x1001c87c calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x1e090, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1001c88c has v0 = ret(update__20StcombineWindowClassGv).

- `doVideoPropCloseButton__18VideoPropFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001c8a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001c8a0-0x1001c8e0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x1001c8a0 loads 4 bytes from a0 (arg0 at entry) +0x68.
  The `lw` at 0x1001c8ac loads 4 bytes from [a0+104] +0x8.
  The `lw` at 0x1001c8bc loads 4 bytes from [[a0+104]+8] +0x38.
  The `lw` at 0x1001c8c0 loads 4 bytes from [[a0+104]+8] +0x30.
  The `jalr` at 0x1001c8c8 calls (unknown callee) with a0=([[[a0+104]+8]+48] + [a0+104]), a1=[a0+104], a2=0x1e040, a3=a3 at entry (arg3).
  The return at 0x1001c8d8 has v0 = ret(?).

- `doVideoPropHCPositiveButton__18VideoPropFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001c8e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001c8e0-0x1001c920 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x1001c904 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x1001c90c stores 4 bytes to sym(combination) +0x36c.
  The `jal` at 0x1001c908 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x1e000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1001c918 has v0 = ret(update__20StcombineWindowClassGv).

- `doVideoPropHCSyncNegativeButton__18VideoPropFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001c920 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001c920-0x1001c964 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001c944 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x1001c950 stores 4 bytes to sym(combination) +0x36c.
  The `jal` at 0x1001c94c calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x1dfc0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1001c95c has v0 = ret(update__20StcombineWindowClassGv).

- `doVideoPropHsyncButton__18VideoPropFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001c970 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001c970-0x1001c9b0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x1001c994 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x1001c99c stores 4 bytes to sym(combination) +0x368.
  The `jal` at 0x1001c998 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x1df70, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1001c9a8 has v0 = ret(update__20StcombineWindowClassGv).

- `doVideoPropVSyncNegativeButton__18VideoPropFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001c9b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001c9b0-0x1001c9f4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001c9d4 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x1001c9e0 stores 4 bytes to sym(combination) +0x370.
  The `jal` at 0x1001c9dc calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x1df30, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1001c9ec has v0 = ret(update__20StcombineWindowClassGv).

- `doVideoPropVsyncPositiveButton__18VideoPropFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001ca00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001ca00-0x1001ca40 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x1001ca24 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x1001ca2c stores 4 bytes to sym(combination) +0x370.
  The `jal` at 0x1001ca28 calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x1dee0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1001ca38 has v0 = ret(update__20StcombineWindowClassGv).

- `setVideoPropBlueSyncToggle__18VideoPropFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001ca40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001ca40-0x1001ca84 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001ca40 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1001ca68 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x1001ca70 stores 4 bytes to sym(combination) +0x364.
  The `jal` at 0x1001ca6c calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x1dea0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1001ca7c has v0 = ret(update__20StcombineWindowClassGv).

- `setVideoPropGreenSyncToggle__18VideoPropFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001ca90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001ca90-0x1001cad4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001ca90 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1001cab8 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x1001cac0 stores 4 bytes to sym(combination) +0x360.
  The `jal` at 0x1001cabc calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x1de50, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1001cacc has v0 = ret(update__20StcombineWindowClassGv).

- `setVideoPropRedSyncToggle__18VideoPropFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001cae0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001cae0-0x1001cb24 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001cae0 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1001cb08 loads 4 bytes from sym(stcombineWindow) +0x0.
  The `sw` at 0x1001cb10 stores 4 bytes to sym(combination) +0x35c.
  The `jal` at 0x1001cb0c calls update__20StcombineWindowClassGv [0x100164c0] with a0=[sym(stcombineWindow)], a1=0x1de00, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1001cb1c has v0 = ret(update__20StcombineWindowClassGv).

- `videoPropFormatChanged__18VideoPropFormClassGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001cb30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001cb30-0x1001cb6c (60 bytes).
  It occupies 60 bytes.
  The `jal` at 0x1001cb54 calls VkUnimplemented__GP10_WidgetRecPCc [0x1001e1d0] with a0=a1 at entry (arg1), a1=0x1002e6c0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1001cb64 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `RegisterVideoPropFormClassInterface__18VideoPropFormClassSGv` in `usr/gfx/sgcombine` at 0x1001cb70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001cb70-0x1001cb88 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1001cb7c loads 4 bytes from abs 0x10032930.
  The return at 0x1001cb80 has v0 = 0x10031828.

- `__ct__20VideoPropFormClassUIGPCcP10_WidgetRec` in `usr/gfx/sgcombine` at 0x1001cd80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001cd80-0x1001cde4 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0x1001cdbc stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1001cda8 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1001cdc4 calls create__20VideoPropFormClassUIGP10_WidgetRec [0x1001ceb0] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The return at 0x1001cddc has v0 = a0.

- `__ct__20VideoPropFormClassUIGPCc` in `usr/gfx/sgcombine` at 0x1001cdf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001cdf0-0x1001ce38 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x1001ce28 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1001ce10 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1001ce30 has v0 = a0.

- `__dt__20VideoPropFormClassUIGv` in `usr/gfx/sgcombine` at 0x1001ce40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001ce40-0x1001ceac (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x1001ce70 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1001ce78 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001ce94 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1001ce60 targets 0x1001ce9c, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1001ce88 targets 0x1001cea0, is taken when (v1(=a1) & 0x1) == 0, and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x1001cea4 has v0 = one of ret(__dt__11VkComponentGv), ?.

- `create__20VideoPropFormClassUIGP10_WidgetRec` in `usr/gfx/sgcombine` at 0x1001ceb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001ceb0-0x1001da84 (3028 bytes).
  It occupies 3028 bytes.
  The `lw` at 0x1001cf00 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0x1001cf0c loads 4 bytes from sym(xmFormWidgetClass) +0x0.
  The `sw` at 0x1001cf10 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x1001cf14 stores 4 bytes to a0 (arg0 at entry) +0x30.
  11 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x1001cf48, `lw` at 0x1001d080, `lw` at 0x1001d11c.
  2 such `lw` accesses load 4 bytes from sym(xmPushButtonWidgetClass) +0x0, including `lw` at 0x1001cf4c, `lw` at 0x1001d560.
  The `sw` at 0x1001d038 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `sw` at 0x1001d0b0 stores 4 bytes to a0 (arg0 at entry) +0x4c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c, including `lw` at 0x1001d0d0, `lw` at 0x1001d7b4.
  The `sw` at 0x1001d0d4 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sw` at 0x1001d0e4 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0x1001d14c stores 4 bytes to a0 (arg0 at entry) +0x44.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1001d16c, `lw` at 0x1001d7c4, `lw` at 0x1001d864.
  The `sw` at 0x1001d170 stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `sw` at 0x1001d180 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x1001d1e8 stores 4 bytes to a0 (arg0 at entry) +0x48.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1001d208, `lw` at 0x1001d874, `lw` at 0x1001d90c.
  The `sw` at 0x1001d20c stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `sw` at 0x1001d228 stores 4 bytes to a0 (arg0 at entry) +0x50.
  3 such `lw` accesses load 4 bytes from sym(xmToggleButtonWidgetClass) +0x0, including `lw` at 0x1001d238, `lw` at 0x1001d328, `lw` at 0x1001d3f8.
  The `sw` at 0x1001d2f4 stores 4 bytes to a0 (arg0 at entry) +0x24.
  The `sw` at 0x1001d3d0 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `sw` at 0x1001d4a0 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  2 such `lw` accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0, including `lw` at 0x1001d4bc, `lw` at 0x1001d614.
  The `sw` at 0x1001d548 stores 4 bytes to a0 (arg0 at entry) +0x40.
  The `sw` at 0x1001d600 stores 4 bytes to a0 (arg0 at entry) +0x28.
  The `sw` at 0x1001d698 stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `lw` at 0x1001d6b4 loads 4 bytes from sym(xmTextFieldWidgetClass) +0x0.
  The `sw` at 0x1001d76c stores 4 bytes to a0 (arg0 at entry) +0x34.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x34, including `lw` at 0x1001d788, `lw` at 0x1001d7a8, `lw` at 0x1001d9c8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x1001d92c, `lw` at 0x1001da00, `lw` at 0x1001da30.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x1001d9b4, `lw` at 0x1001d9f8.
  The `lw` at 0x1001d9d0 loads 4 bytes from a0 (arg0 at entry) +0x24.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3c, including `lw` at 0x1001d9e0, `lw` at 0x1001da18.
  The `lw` at 0x1001da4c loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `jalr` at 0x1001cee0 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultVideoPropFormClassUIResources__20VideoPropFormClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x1001cf08 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=sym(_XmStrings)+9052, a4=0x1, a5=0x0.
  The `jalr` at 0x1001cf34 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d01c calls XtVaCreateManagedWidget with a0=0x1002e710, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x0, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001d040 calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+4683, a2=sym(doVideoPropCloseButtonCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001d050 calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d084 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x1002e728, a3=0x0, a4=0x0.
  The `jalr` at 0x1001d0b4 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=?, a1=0x1002e748, a2=sym(doVideoPropVsyncPositiveButtonCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1001d0d8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+76], a1=0x1002e768, a2=sym(doVideoPropVSyncNegativeButtonCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1001d0ec calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d120 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x1002e788, a3=0x0, a4=0x0.
  The `jalr` at 0x1001d150 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=?, a1=0x1002e7a0, a2=sym(doVideoPropHCPositiveButtonCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1001d174 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+68], a1=0x1002e7c0, a2=sym(doVideoPropHCSyncNegativeButtonCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1001d188 calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d1bc calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x1002e7e0, a3=0x0, a4=0x0.
  The `jalr` at 0x1001d1ec calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=?, a1=0x1002e7f8, a2=sym(doVideoPropHsyncButtonCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1001d210 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x1002e810, a2=sym(doVideoPropCSyncButtonCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1001d2d8 calls XtVaCreateManagedWidget with a0=0x1002e828, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1001d2fc calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+10557, a2=sym(setVideoPropBlueSyncToggleCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001d3b0 calls XtVaCreateManagedWidget with a0=0x1002e840, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1001d3cc calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+10557, a2=sym(setVideoPropGreenSyncToggleCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001d480 calls XtVaCreateManagedWidget with a0=0x1002e860, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1001d49c calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+10557, a2=sym(setVideoPropRedSyncToggleCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001d53c calls XtVaCreateManagedWidget with a0=0x1002e878, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001d5e0 calls XtVaCreateManagedWidget with a0=0x1002e898, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001d5fc calls XtAddCallback with a0=ret(XtVaCreateManagedWidget), a1=sym(_XmStrings)+4683, a2=sym(doVideoPropBrowseButtonCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001d68c calls XtVaCreateManagedWidget with a0=0x10033530, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001d744 calls XtVaCreateManagedWidget with a0=0x1002e8b0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+6579, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1001d770 calls VkGetResource__GP10_WidgetRecPCcN32 with a0=ret(XtVaCreateManagedWidget), a1=0x1002e8c8, a2=0x1002e8e0, a3=sym(XtStrings)+1754, a4=0x10033538.
  The `jalr` at 0x1001d78c calls XtVaSetValues with a0=[a0+52], a1=sym(XtStrings)+52, a2=ret(VkGetResource__GP10_WidgetRecPCcN32), a3=0x0.
  The `jalr` at 0x1001d7a4 calls XtAddCallback with a0=[a0+52], a1=sym(_XmStrings)+4683, a2=sym(videoPropFormatChangedCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1001d7b0 calls baseWidget__10VkMenuItemCGv with a0=[a0+76], a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d7c0 calls baseWidget__10VkMenuItemCGv with a0=[a0+68], a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d854 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x3, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x1, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x1001d860 calls baseWidget__10VkMenuItemCGv with a0=[a0+68], a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d870 calls baseWidget__10VkMenuItemCGv with a0=[a0+72], a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d8fc calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x3, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x1, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x1001d908 calls baseWidget__10VkMenuItemCGv with a0=[a0+72], a1=?, a2=?, a3=?.
  The `jalr` at 0x1001d994 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x3, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x1, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x1001d9d4 calls XtVaSetValues with a0=[a0+36], a1=sym(_XmStrings)+10305, a2=[a0+52], a3=sym(_XmStrings)+7562, a4=[a0+56], a5=0x0.
  The `jalr` at 0x1001d9f4 calls XtVaSetValues with a0=[a0+56], a1=sym(_XmStrings)+10305, a2=[a0+52], a3=sym(_XmStrings)+7562, a4=[a0+60], a5=0x0.
  The `jalr` at 0x1001da14 calls XtVaSetValues with a0=[a0+60], a1=sym(_XmStrings)+10305, a2=[a0+52], a3=sym(_XmStrings)+7562, a4=[a0+64], a5=0x0.
  The `jalr` at 0x1001da2c calls XtVaSetValues with a0=[a0+64], a1=sym(_XmStrings)+10305, a2=[a0+52], a3=0x0.
  The `jalr` at 0x1001da48 calls XtVaSetValues with a0=[a0+40], a1=sym(_XmStrings)+7562, a2=[a0+52], a3=0x0.
  The `jalr` at 0x1001da64 calls XtAddCallback with a0=[a0+52], a1=sym(_XmStrings)+7765, a2=sym(videoPropFormatChangedCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `beq` branch at 0x1001d05c targets 0x1001d09c, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1001d094 targets 0x1001d0a0 and is always taken.
  The `beq` branch at 0x1001d0f8 targets 0x1001d138, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1001d130 targets 0x1001d13c and is always taken.
  The `beq` branch at 0x1001d194 targets 0x1001d1d4, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1001d1cc targets 0x1001d1d8 and is always taken.
  The return at 0x1001da7c has v0 = ret(XtAddCallback).

- `className__20VideoPropFormClassUIGv` in `usr/gfx/sgcombine` at 0x1001da90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001da90-0x1001daa8 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1001da9c loads 4 bytes from abs 0x10032930.
  The return at 0x1001daa0 has v0 = 0x1002e8f8.

- `doVideoPropBrowseButton__20VideoPropFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001dab0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001dab0-0x1001dab8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001dab0 has v0 = ?.

- `doVideoPropCSyncButton__20VideoPropFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001dac0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001dac0-0x1001dac8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001dac0 has v0 = ?.

- `doVideoPropCloseButton__20VideoPropFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001dad0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001dad0-0x1001dad8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001dad0 has v0 = ?.

- `doVideoPropHCPositiveButton__20VideoPropFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001dae0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001dae0-0x1001dae8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001dae0 has v0 = ?.

- `doVideoPropHCSyncNegativeButton__20VideoPropFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001daf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001daf0-0x1001daf8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001daf0 has v0 = ?.

- `doVideoPropHsyncButton__20VideoPropFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001db00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001db00-0x1001db08 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001db00 has v0 = ?.

- `doVideoPropVSyncNegativeButton__20VideoPropFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001db10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001db10-0x1001db18 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001db10 has v0 = ?.

- `doVideoPropVsyncPositiveButton__20VideoPropFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001db20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001db20-0x1001db28 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001db20 has v0 = ?.

- `setVideoPropBlueSyncToggle__20VideoPropFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001db30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001db30-0x1001db38 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001db30 has v0 = ?.

- `setVideoPropGreenSyncToggle__20VideoPropFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001db40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001db40-0x1001db48 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001db40 has v0 = ?.

- `setVideoPropRedSyncToggle__20VideoPropFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001db50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001db50-0x1001db58 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001db50 has v0 = ?.

- `videoPropFormatChanged__20VideoPropFormClassUIGP10_WidgetRecPv` in `usr/gfx/sgcombine` at 0x1001db60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001db60-0x1001db68 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1001db60 has v0 = ?.

- `doVideoPropBrowseButtonCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001db70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001db70-0x1001dbb4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001db74 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001db80 loads 4 bytes from [a1+8] +0x9c.
  The `lw` at 0x1001db8c loads 4 bytes from [a1+8] +0xa4.
  The `jalr` at 0x1001db9c calls (unknown callee) with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1cd70.
  The return at 0x1001dbac has v0 = ret(?).

- `doVideoPropCSyncButtonCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001dbc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001dbc0-0x1001dc04 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001dbc4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001dbd0 loads 4 bytes from [a1+8] +0xa8.
  The `lw` at 0x1001dbdc loads 4 bytes from [a1+8] +0xb0.
  The `jalr` at 0x1001dbec calls (unknown callee) with a0=([[a1+8]+168] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1cd20.
  The return at 0x1001dbfc has v0 = ret(?).

- `doVideoPropCloseButtonCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001dc10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001dc10-0x1001dc54 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001dc14 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001dc20 loads 4 bytes from [a1+8] +0xb4.
  The `lw` at 0x1001dc2c loads 4 bytes from [a1+8] +0xbc.
  The `jalr` at 0x1001dc3c calls (unknown callee) with a0=([[a1+8]+180] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1ccd0.
  The return at 0x1001dc4c has v0 = ret(?).

- `doVideoPropHCPositiveButtonCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001dc60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001dc60-0x1001dca4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001dc64 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001dc70 loads 4 bytes from [a1+8] +0xc0.
  The `lw` at 0x1001dc7c loads 4 bytes from [a1+8] +0xc8.
  The `jalr` at 0x1001dc8c calls (unknown callee) with a0=([[a1+8]+192] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1cc80.
  The return at 0x1001dc9c has v0 = ret(?).

- `doVideoPropHCSyncNegativeButtonCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001dcb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001dcb0-0x1001dcf4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001dcb4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001dcc0 loads 4 bytes from [a1+8] +0xcc.
  The `lw` at 0x1001dccc loads 4 bytes from [a1+8] +0xd4.
  The `jalr` at 0x1001dcdc calls (unknown callee) with a0=([[a1+8]+204] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1cc30.
  The return at 0x1001dcec has v0 = ret(?).

- `doVideoPropHsyncButtonCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001dd00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001dd00-0x1001dd44 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001dd04 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001dd10 loads 4 bytes from [a1+8] +0xd8.
  The `lw` at 0x1001dd1c loads 4 bytes from [a1+8] +0xe0.
  The `jalr` at 0x1001dd2c calls (unknown callee) with a0=([[a1+8]+216] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1cbe0.
  The return at 0x1001dd3c has v0 = ret(?).

- `doVideoPropVSyncNegativeButtonCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001dd50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001dd50-0x1001dd94 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001dd54 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001dd60 loads 4 bytes from [a1+8] +0xe4.
  The `lw` at 0x1001dd6c loads 4 bytes from [a1+8] +0xec.
  The `jalr` at 0x1001dd7c calls (unknown callee) with a0=([[a1+8]+228] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1cb90.
  The return at 0x1001dd8c has v0 = ret(?).

- `doVideoPropVsyncPositiveButtonCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001dda0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001dda0-0x1001dde4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001dda4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001ddb0 loads 4 bytes from [a1+8] +0xf0.
  The `lw` at 0x1001ddbc loads 4 bytes from [a1+8] +0xf8.
  The `jalr` at 0x1001ddcc calls (unknown callee) with a0=([[a1+8]+240] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1cb40.
  The return at 0x1001dddc has v0 = ret(?).

- `setVideoPropBlueSyncToggleCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001ddf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001ddf0-0x1001de34 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001ddf4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001de00 loads 4 bytes from [a1+8] +0xfc.
  The `lw` at 0x1001de0c loads 4 bytes from [a1+8] +0x104.
  The `jalr` at 0x1001de1c calls (unknown callee) with a0=([[a1+8]+252] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1caf0.
  The return at 0x1001de2c has v0 = ret(?).

- `setVideoPropGreenSyncToggleCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001de40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001de40-0x1001de84 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001de44 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001de50 loads 4 bytes from [a1+8] +0x108.
  The `lw` at 0x1001de5c loads 4 bytes from [a1+8] +0x110.
  The `jalr` at 0x1001de6c calls (unknown callee) with a0=([[a1+8]+264] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1caa0.
  The return at 0x1001de7c has v0 = ret(?).

- `setVideoPropRedSyncToggleCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001de90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001de90-0x1001ded4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001de94 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001dea0 loads 4 bytes from [a1+8] +0x114.
  The `lw` at 0x1001deac loads 4 bytes from [a1+8] +0x11c.
  The `jalr` at 0x1001debc calls (unknown callee) with a0=([[a1+8]+276] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1ca50.
  The return at 0x1001decc has v0 = ret(?).

- `videoPropFormatChangedCallback__20VideoPropFormClassUISGP10_WidgetRecPvT2` in `usr/gfx/sgcombine` at 0x1001dee0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001dee0-0x1001df24 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x1001dee4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1001def0 loads 4 bytes from [a1+8] +0x120.
  The `lw` at 0x1001defc loads 4 bytes from [a1+8] +0x128.
  The `jalr` at 0x1001df0c calls (unknown callee) with a0=([[a1+8]+288] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1ca00.
  The return at 0x1001df1c has v0 = ret(?).

- `__ct__26VideoPropertiesWindowClassGPCcP3ArgUi` in `usr/gfx/sgcombine` at 0x1001df40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001df40-0x1001e094 (340 bytes).
  It occupies 340 bytes.
  The `sw` at 0x1001df74 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x1001dfbc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1001dfc0 loads 4 bytes from [a0+8] +0xec.
  The `lw` at 0x1001dfc4 loads 4 bytes from [a0+8] +0xe4.
  The `sw` at 0x1001e000 stores 4 bytes to a0 (arg0 at entry) +0x40.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x1001e00c, `lw` at 0x1001e040, `lw` at 0x1001e07c.
  The `jalr` at 0x1001df60 calls __ct__14VkSimpleWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001df78 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1001df8c calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultVideoPropertiesWindowClassResources__26VideoPropertiesWindowClass), a3=?.
  The `jalr` at 0x1001df9c calls __nw__GUi with a0=0x6c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001dfc8 calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=0x0, a3=?.
  The `jal` at 0x1001dfe0 calls __ct__18VideoPropFormClassGPCcP10_WidgetRec [0x1001c480] with a0=ret(__nw__GUi), a1=0x1002ec50, a2=ret(?), a3=?.
  The `jalr` at 0x1001e008 calls baseWidget__11VkComponentCGv with a0=[a0+64], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x1001e02c calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x176, a3=sym(XtStrings)+234, a4=0x1be, a5=0x0.
  The `jalr` at 0x1001e03c calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+64], a2=?, a3=?.
  The `jalr` at 0x1001e064 calls VkConfigureWM__GP14VkSimpleWindowcN62 with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x1, a4=0x1, a5=0x1, a6=0x1, a7=0x1.
  The `jal` at 0x1001e078 calls setParent__18VideoPropFormClassGP14VkSimpleWindow [0x1001c710] with a0=[a0+64], a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0x1001dfa8 targets 0x1001dff8, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1001dff0 targets 0x1001dffc and is always taken.
  The return at 0x1001e08c has v0 = a0.

- `__dt__26VideoPropertiesWindowClassGv` in `usr/gfx/sgcombine` at 0x1001e0a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001e0a0-0x1001e130 (144 bytes).
  It occupies 144 bytes.
  The `sw` at 0x1001e0c8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x1001e0d0 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x1001e0dc loads 4 bytes from [a0+64] +0x8.
  The `lw` at 0x1001e0e0 loads 4 bytes from [[a0+64]+8] +0x14.
  The `lw` at 0x1001e0e4 loads 4 bytes from [[a0+64]+8] +0xc.
  The `jalr` at 0x1001e0ec calls (unknown callee) with a0=([[[a0+64]+8]+12] + [a0+64]), a1=0x3, a2=a2 at entry (arg2), a3=[a0+64].
  The `jalr` at 0x1001e0fc calls __dt__14VkSimpleWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1001e118 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1001e0b8 targets 0x1001e120, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1001e0d4 targets 0x1001e0fc, is taken when a3(=[a0+64]) == 0, and falls through when a3(=[a0+64]) != 0.
  The `beq` branch at 0x1001e10c targets 0x1001e124, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x1001e128 has v0 = one of ret(__dt__14VkSimpleWindowGv), ?.

- `className__26VideoPropertiesWindowClassGv` in `usr/gfx/sgcombine` at 0x1001e130 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001e130-0x1001e148 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1001e13c loads 4 bytes from abs 0x10032930.
  The return at 0x1001e140 has v0 = 0x1002ec68.

- `okToQuit__26VideoPropertiesWindowClassGv` in `usr/gfx/sgcombine` at 0x1001e150 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001e150-0x1001e190 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x1001e154 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1001e168 loads 4 bytes from [a0+8] +0x38.
  The `lw` at 0x1001e16c loads 4 bytes from [a0+8] +0x30.
  The `jalr` at 0x1001e174 calls (unknown callee) with a0=([[a0+8]+48] + a0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1001e188 has v0 = 0x0.

- `update__26VideoPropertiesWindowClassGv` in `usr/gfx/sgcombine` at 0x1001e190 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001e190-0x1001e1c4 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x1001e1b0 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x1001e1ac calls update__18VideoPropFormClassGv [0x1001c630] with a0=[a0+64], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1001e1bc has v0 = ret(update__18VideoPropFormClassGv).

- `vfcInitCmpCombination` in `usr/gfx/sgcombine` at 0x1001f0c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001f0c0-0x1001f104 (68 bytes).
  It occupies 68 bytes.
  The `sw` at 0x1001f0c4 stores 4 bytes to a0 (arg0 at entry) +0x308.
  The `sw` at 0x1001f0cc stores 4 bytes to a0 (arg0 at entry) +0x300.
  The `sw` at 0x1001f0d0 stores 4 bytes to a0 (arg0 at entry) +0x370.
  The `sw` at 0x1001f0d4 stores 4 bytes to a0 (arg0 at entry) +0x36c.
  The `sw` at 0x1001f0d8 stores 4 bytes to a0 (arg0 at entry) +0x368.
  The `sw` at 0x1001f0dc stores 4 bytes to a0 (arg0 at entry) +0x364.
  The `sw` at 0x1001f0e0 stores 4 bytes to a0 (arg0 at entry) +0x360.
  The `sw` at 0x1001f0e4 stores 4 bytes to a0 (arg0 at entry) +0x35c.
  The `sw` at 0x1001f0ec stores 4 bytes to a0 (arg0 at entry) +0x358.
  The `sw` at 0x1001f0f4 stores 4 bytes to a0 (arg0 at entry) +0x354.
  The `sw` at 0x1001f100 stores 4 bytes to a0 (arg0 at entry) +0x350.
  The return at 0x1001f0fc has v0 = 0x500.

- `vfcQueryGLXHyper` in `usr/gfx/sgcombine` at 0x1001f280 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001f280-0x1001f308 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0x1001f2b0 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `jalr` at 0x1001f2bc calls glXQueryExtensionsString with a0=a0 at entry (arg0), a1=[a0+132], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001f2d0 calls strstr with a0=ret(glXQueryExtensionsString), a1=0x1002efd8, a2=?, a3=?.
  The `beq` branch at 0x1001f298 targets 0x1001f2ac, is taken when at(=[0x100337a8]) == 0, and falls through when at(=[0x100337a8]) != 0.
  The `bne` branch at 0x1001f2d8 targets 0x1001f2f4, is taken when v0(=ret(strstr)) != 0, and falls through when v0(=ret(strstr)) == 0.
  The return at 0x1001f2a4 has v0 = [0x100337a4].
  The return at 0x1001f2ec has v0 = 0x0.
  The return at 0x1001f300 has v0 = 0x1.

- `vfcQueryOdysseyTarget` in `usr/gfx/sgcombine` at 0x1001f310 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001f310-0x1001f58c (636 bytes).
  It occupies 636 bytes.
  The `lw` at 0x1001f320 loads 4 bytes from a0 (arg0 at entry) +0x208.
  The `lbu` at 0x1001f3e0 loads 1 byte from a0 (arg0 at entry) +0x20c.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1001f3f8, `lbu` at 0x1001f400, `lbu` at 0x1001f414.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0x1001f3fc, `sb` at 0x1001f410, `sb` at 0x1001f424.
  4 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x1001f43c, `sw` at 0x1001f4cc, `sw` at 0x1001f510.
  The `lw` at 0x1001f468 loads 4 bytes from a1 (arg1 at entry) +0x4.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1001f470, `lw` at 0x1001f558.
  The `lw` at 0x1001f508 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `sw` at 0x1001f55c stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `jalr` at 0x1001f344 calls glXQueryHyperpipeNetworkSGIX with a0=[a0+520], a1=sp-336, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001f374 calls strchr with a0=a0+524, a1=0x3a, a2=?, a3=?.
  The `jalr` at 0x1001f388 calls strchr with a0=ret(strchr), a1=0x2e, a2=?, a3=?.
  The `jalr` at 0x1001f3b8 calls strcmp with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001f500 calls sprintf with a0=?, a1=0x10033610, a2=sp-328, a3=?.
  The `jalr` at 0x1001f574 calls sprintf with a0=sp-328, a1=0x10033608, a2=ret(strchr), a3=?.
  The `beq` branch at 0x1001f354 targets 0x1001f530, is taken when v0(=ret(glXQueryHyperpipeNetworkSGIX)) == 0, and falls through when v0(=ret(glXQueryHyperpipeNetworkSGIX)) != 0.
  The `beq` branch at 0x1001f360 targets 0x1001f530, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1001f390 targets 0x1001f568, is taken when v0(=ret(strchr)) == 0, and falls through when v0(=ret(strchr)) != 0.
  The `blez` branch at 0x1001f398 targets 0x1001f4b4, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `beq` branch at 0x1001f3c0 targets 0x1001f558, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x1001f3d0 targets 0x1001f3b0, is taken when s1(?) < a1(?) (signed), and falls through when s1(?) >= a1(?) (signed).
  The `beq` branch at 0x1001f3d8 targets 0x1001f4c0, is taken when s1(?) == a1(?), and falls through when s1(?) != a1(?).
  The `beq` branch at 0x1001f3ec targets 0x1001f584, is taken when a2(=0x3a) == a1(=[a0+524]:1), and falls through when a2(=0x3a) != a1(=[a0+524]:1).
  The `beq` branch at 0x1001f408 targets 0x1001f438, is taken when a2(=0x3a) == a1(?), and falls through when a2(=0x3a) != a1(?).
  The `beq` branch at 0x1001f41c targets 0x1001f438, is taken when a2(=0x3a) == a1(?), and falls through when a2(=0x3a) != a1(?).
  The `bne` branch at 0x1001f430 targets 0x1001f3fc, is taken when a2(=0x3a) != a1(?), and falls through when a2(=0x3a) == a1(?).
  The `blez` branch at 0x1001f444 targets 0x1001f48c, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `beq` branch at 0x1001f474 targets 0x1001f4e8, is taken when a3(?) == a0(=[a1+4]), and falls through when a3(?) != a0(=[a1+4]).
  The `bne` branch at 0x1001f484 targets 0x1001f470, is taken when s0(?) < a2(?) (unsigned), and falls through when s0(?) >= a2(?) (unsigned).
  The `bne` branch at 0x1001f4b4 targets 0x1001f3e0, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x1001f520 targets 0x1001f454, is taken when s1(?) < a1(?) (signed), and falls through when s1(?) >= a1(?) (signed).
  The `beq` branch at 0x1001f528 targets 0x1001f490 and is always taken.
  The `beq` branch at 0x1001f560 targets 0x1001f3d8 and is always taken.
  The `beq` branch at 0x1001f57c targets 0x1001f394 and is always taken.
  The `beq` branch at 0x1001f584 targets 0x1001f438 and is always taken.
  The return at 0x1001f4ac has v0 = one of ?, [a1]+1.
  The return at 0x1001f4e0 has v0 = one of ret(strcmp), ?.
  The return at 0x1001f550 has v0 = one of ret(glXQueryHyperpipeNetworkSGIX), ?.

- `vfmtIsCmpCombinationValidForTarget` in `usr/gfx/sgcombine` at 0x1001f590 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001f590-0x1001f8b8 (808 bytes).
  It occupies 808 bytes.
  The `lbu` at 0x1001f5c0 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lbu` at 0x1001f5fc loads 1 byte from a0 (arg0 at entry) +0xff.
  The `lbu` at 0x1001f638 loads 1 byte from a0 (arg0 at entry) +0x1fe.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x55c, including `lw` at 0x1001f670, `lw` at 0x1001f690.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xab4, including `lw` at 0x1001f678, `lw` at 0x1001f688.
  4 such `ldc1` accesses load 8 bytes from a0 (arg0 at entry) +0x550, including `ldc1` at 0x1001f6cc, `ldc1` at 0x1001f714, `ldc1` at 0x1001f740.
  5 such `ldc1` accesses load 8 bytes from a0 (arg0 at entry) +0xaa8, including `ldc1` at 0x1001f71c, `ldc1` at 0x1001f72c, `ldc1` at 0x1001f748.
  The `lw` at 0x1001f80c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x1001f814 loads 4 bytes from a0 (arg0 at entry) +0x350.
  The `sb` at 0x1001f85c stores 1 byte to a2 (arg2 at entry) +0x0.
  The `sb` at 0x1001f89c stores 1 byte to ?.
  The `jalr` at 0x1001f5e0 calls sprintf with a0=0x10035428, a1=0x1002eff0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001f61c calls sprintf with a0=0x10035428, a1=0x1002f018, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001f658 calls sprintf with a0=0x10035428, a1=0x1002f040, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001f6b4 calls sprintf with a0=0x10035428, a1=0x1002f070, a2=[a0+2740], a3=([a0+1372] + [a0+1372]).
  The `jalr` at 0x1001f6fc calls sprintf with a0=0x10035428, a1=0x1002f0b0, a2=[a0+2740], a3=?.
  The `jalr` at 0x1001f7dc calls snprintf with a0=sp-256, a1=0xc8, a2=0x1002f0d8, a3=?, a5=a0 at entry (arg0), a6=a0 at entry (arg0), a7=a0 at entry (arg0).
  The `jalr` at 0x1001f7f4 calls sprintf with a0=0x10035428, a1=sp-256, a2=?, a3=?.
  The `jalr` at 0x1001f838 calls sprintf with a0=0x10035428, a1=0x1002f110, a2=[a0+848], a3=a0 at entry (arg0), a4=a0 at entry (arg0), a5=a0 at entry (arg0), a6=a0 at entry (arg0).
  The `jalr` at 0x1001f884 calls strncpy with a0=a2 at entry (arg2), a1=0x10035428, a2=?, a3=?.
  The `bne` branch at 0x1001f5c4 targets 0x1001f5f4, is taken when at(=[a0]:1) != 0, and falls through when at(=[a0]:1) == 0.
  The `beq` branch at 0x1001f5ec targets 0x1001f860 and is always taken.
  The `bne` branch at 0x1001f600 targets 0x1001f630, is taken when a1(=[a0+255]:1) != 0, and falls through when a1(=[a0+255]:1) == 0.
  The `beq` branch at 0x1001f628 targets 0x1001f860 and is always taken.
  The `bne` branch at 0x1001f63c targets 0x1001f66c, is taken when a1(=[a0+510]:1) != 0, and falls through when a1(=[a0+510]:1) == 0.
  The `beq` branch at 0x1001f664 targets 0x1001f860 and is always taken.
  The `beq` branch at 0x1001f67c targets 0x1001f6c8, is taken when a1(=[a0+1372]) == a2(=[a0+2740]), and falls through when a1(=[a0+1372]) != a2(=[a0+2740]).
  The `beq` branch at 0x1001f698 targets 0x1001f6c8, is taken when a2(=[a0+2740]) == a3(=([a0+1372] + [a0+1372])), and falls through when a2(=[a0+2740]) != a3(=([a0+1372] + [a0+1372])).
  The `beq` branch at 0x1001f6c0 targets 0x1001f860 and is always taken.
  The `bc1f` branch at 0x1001f6e0 targets 0x1001f710, is taken when not (f0(=[a0+1360]:8) == f1 (c.eq.d at 0x1001f6d8)), and falls through when f0(=[a0+1360]:8) == f1 (c.eq.d at 0x1001f6d8).
  The `beq` branch at 0x1001f708 targets 0x1001f860 and is always taken.
  The `bc1f` branch at 0x1001f784 targets 0x1001f808, is taken when not (f2(=0x3f847ae147ae147b) < f3 (c.lt.d at 0x1001f77c)), and falls through when f2(=0x3f847ae147ae147b) < f3 (c.lt.d at 0x1001f77c).
  The `bc1f` branch at 0x1001f7a0 targets 0x1001f808, is taken when not (f9(=0x3f947ae147ae147b) < f10 (c.lt.d at 0x1001f798)), and falls through when f9(=0x3f947ae147ae147b) < f10 (c.lt.d at 0x1001f798).
  The `beq` branch at 0x1001f800 targets 0x1001f860 and is always taken.
  The `beq` branch at 0x1001f81c targets 0x1001f84c, is taken when a1(=[a1]) >= a2(=[a0+848]) (signed), and falls through when a1(=[a1]) < a2(=[a0+848]) (signed).
  The `beq` branch at 0x1001f844 targets 0x1001f860 and is always taken.
  The `blez` branch at 0x1001f864 targets 0x1001f8a0, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The return at 0x1001f8b0 has v0 = one of 0x0, 0x1.

- `vfmtIsCombinationValidForDmxTarget` in `usr/gfx/sgcombine` at 0x1001f8c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x1001f8c0-0x1001fab4 (500 bytes).
  It occupies 500 bytes.
  The `lbu` at 0x1001f8f0 loads 1 byte from a0 (arg0 at entry) +0xff.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x354, including `lw` at 0x1001f92c, `lw` at 0x1001f960.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x148c, including `lw` at 0x1001f938, `lw` at 0x1001f994.
  The `lw` at 0x1001f944 loads 4 bytes from a0 (arg0 at entry) +0x1494.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1490, including `lw` at 0x1001f96c, `lw` at 0x1001f9a8.
  The `lw` at 0x1001f978 loads 4 bytes from a0 (arg0 at entry) +0x1498.
  The `lw` at 0x1001f9e0 loads 4 bytes from a0 (arg0 at entry) +0x55c.
  The `lw` at 0x1001f9e8 loads 4 bytes from a0 (arg0 at entry) +0x560.
  The `ldc1` at 0x1001fa04 loads 8 bytes from a0 (arg0 at entry) +0x550.
  The `sb` at 0x1001fa58 stores 1 byte to a1 (arg1 at entry) +0x0.
  The `sb` at 0x1001fa98 stores 1 byte to ?.
  The `jalr` at 0x1001f910 calls sprintf with a0=0x10035428, a1=0x1002f138, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001f9c8 calls sprintf with a0=0x10035428, a1=0x1002f160, a2=?, a3=?.
  The `jalr` at 0x1001fa34 calls sprintf with a0=0x10035428, a1=0x1002f198, a2=?, a3=[a0+1372], a4=[a0+1376].
  The `jalr` at 0x1001fa80 calls strncpy with a0=a1 at entry (arg1), a1=0x10035428, a2=?, a3=?.
  The `bne` branch at 0x1001f8f4 targets 0x1001f924, is taken when at(=[a0+255]:1) != 0, and falls through when at(=[a0+255]:1) == 0.
  The `beq` branch at 0x1001f91c targets 0x1001fa5c and is always taken.
  The `bne` branch at 0x1001f950 targets 0x1001f9b4, is taken when a1(=[a0+852]) < a2(=([a0+5260] + [a0+5268])) (signed), and falls through when a1(=[a0+852]) >= a2(=([a0+5260] + [a0+5268])) (signed).
  The `bne` branch at 0x1001f984 targets 0x1001f9b4, is taken when a2(=[a0+852]) < a3(=([a0+5264] + [a0+5272])) (signed), and falls through when a2(=[a0+852]) >= a3(=([a0+5264] + [a0+5272])) (signed).
  The `bltz` branch at 0x1001f998 targets 0x1001f9b4, is taken when a3(=[a0+5260]) < 0 (signed), and falls through when a3(=[a0+5260]) >= 0 (signed).
  The `bgez` branch at 0x1001f9ac targets 0x1001f9dc, is taken when a4(=[a0+5264]) >= 0 (signed), and falls through when a4(=[a0+5264]) < 0 (signed).
  The `beq` branch at 0x1001f9d4 targets 0x1001fa5c and is always taken.
  The `bc1f` branch at 0x1001fa18 targets 0x1001fa48, is taken when not (f0(=0x41a3ab6680000000) < f1 (c.lt.d at 0x1001fa10)), and falls through when f0(=0x41a3ab6680000000) < f1 (c.lt.d at 0x1001fa10).
  The `beq` branch at 0x1001fa40 targets 0x1001fa5c and is always taken.
  The `blez` branch at 0x1001fa60 targets 0x1001fa9c, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The return at 0x1001faac has v0 = one of 0x0, 0x1.

- `vfmtReadCmp1Format` in `usr/gfx/sgcombine` at 0x10021650 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10021650-0x10021868 (536 bytes).
  It occupies 536 bytes.
  The `sw` at 0x10021770 stores 4 bytes to a1 (arg1 at entry) +0x100.
  The `jal` at 0x10021688 calls vfmtFindCmpFormatFile [0x10024bd0] with a0=sp-1224, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100216c0 calls (unnamed) [0x1001fac0] with a0=0x1002f360, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x100216d8 calls SDBreadOpenDatabase [0x10025be8] with a0=sp-1224, a1=?, a2=?, a3=?.
  The `jal` at 0x10021710 calls (unnamed) [0x1001fac0] with a0=0x1002f378, a1=sp-1224, a2=ret(SDBreadOpenDatabase), a3=?.
  The `jal` at 0x10021728 calls vfmtGetLastKonaFileStat [0x100250c0] with a0=sp-200, a1=?, a2=ret(SDBreadOpenDatabase), a3=?.
  The `jal` at 0x10021758 calls (unnamed) [0x1001fac0] with a0=0x1002f360, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x10021788 calls (unnamed) [0x1001fbf0] with a0=a1 at entry (arg1), a1=ret(SDBreadOpenDatabase), a2=0x0, a3=?.
  The `jal` at 0x100217ac calls (unnamed) [0x10020780] with a0=a1 at entry (arg1), a1=ret(SDBreadOpenDatabase), a2=?, a3=?.
  The `jal` at 0x100217d0 calls (unnamed) [0x10020a00] with a0=a1 at entry (arg1), a1=ret(SDBreadOpenDatabase), a2=?, a3=?.
  The `jal` at 0x100217f4 calls (unnamed) [0x10020c90] with a0=a1 at entry (arg1), a1=ret(SDBreadOpenDatabase), a2=?, a3=?.
  The `jal` at 0x10021818 calls (unnamed) [0x100210c0] with a0=a1 at entry (arg1), a1=ret(SDBreadOpenDatabase), a2=?, a3=?.
  The `jal` at 0x10021844 calls SDBcloseReadDatabase [0x10025b30] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002169c targets 0x100216d0, is taken when v1(=ret(vfmtFindCmpFormatFile)) == 0, and falls through when v1(=ret(vfmtFindCmpFormatFile)) != 0.
  The `beq` branch at 0x100216c8 targets 0x10021830 and is always taken.
  The `bne` branch at 0x100216ec targets 0x10021720, is taken when a2(=ret(SDBreadOpenDatabase)) != 0, and falls through when a2(=ret(SDBreadOpenDatabase)) == 0.
  The `beq` branch at 0x10021718 targets 0x10021830 and is always taken.
  The `bne` branch at 0x10021734 targets 0x10021768, is taken when v0(=ret(vfmtGetLastKonaFileStat)) != 0, and falls through when v0(=ret(vfmtGetLastKonaFileStat)) == 0.
  The `beq` branch at 0x10021760 targets 0x10021830 and is always taken.
  The `beq` branch at 0x10021794 targets 0x10021830, is taken when v0(=ret(0x1001fbf0)) == 0, and falls through when v0(=ret(0x1001fbf0)) != 0.
  The `beq` branch at 0x100217b8 targets 0x10021830, is taken when v0(=ret(0x10020780)) == 0, and falls through when v0(=ret(0x10020780)) != 0.
  The `beq` branch at 0x100217dc targets 0x10021830, is taken when v0(=ret(0x10020a00)) == 0, and falls through when v0(=ret(0x10020a00)) != 0.
  The `beq` branch at 0x10021800 targets 0x10021830, is taken when v0(=ret(0x10020c90)) == 0, and falls through when v0(=ret(0x10020c90)) != 0.
  The `beq` branch at 0x10021824 targets 0x10021830, is taken when v0(=ret(0x100210c0)) == 0, and falls through when v0(=ret(0x100210c0)) != 0.
  The `beq` branch at 0x10021834 targets 0x1002184c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The return at 0x10021860 has v0 = ?.

- `vfmtReadCmp1OdyFormat` in `usr/gfx/sgcombine` at 0x10021870 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10021870-0x100219a4 (308 bytes).
  It occupies 308 bytes.
  The `jal` at 0x100218a8 calls vfmtFindOdyFormatFile [0x10024c70] with a0=sp-1064, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100218e0 calls (unnamed) [0x1001fac0] with a0=0x1002f360, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x100218f8 calls SDBreadOpenDatabase [0x10025be8] with a0=sp-1064, a1=?, a2=?, a3=?.
  The `jal` at 0x10021930 calls (unnamed) [0x1001fac0] with a0=0x1002f378, a1=sp-1064, a2=ret(SDBreadOpenDatabase), a3=?.
  The `jal` at 0x10021954 calls (unnamed) [0x1001fbf0] with a0=a1 at entry (arg1), a1=ret(SDBreadOpenDatabase), a2=0x1, a3=?.
  The `jal` at 0x10021980 calls SDBcloseReadDatabase [0x10025b30] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100218bc targets 0x100218f0, is taken when v1(=ret(vfmtFindOdyFormatFile)) == 0, and falls through when v1(=ret(vfmtFindOdyFormatFile)) != 0.
  The `beq` branch at 0x100218e8 targets 0x1002196c and is always taken.
  The `bne` branch at 0x1002190c targets 0x10021940, is taken when a2(=ret(SDBreadOpenDatabase)) != 0, and falls through when a2(=ret(SDBreadOpenDatabase)) == 0.
  The `beq` branch at 0x10021938 targets 0x1002196c and is always taken.
  The `beq` branch at 0x10021960 targets 0x1002196c, is taken when v0(=ret(0x1001fbf0)) == 0, and falls through when v0(=ret(0x1001fbf0)) != 0.
  The `beq` branch at 0x10021970 targets 0x10021988, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The return at 0x1002199c has v0 = ?.

- `vfmtReadCmp1SG2Format` in `usr/gfx/sgcombine` at 0x100219b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x100219b0-0x10021aec (316 bytes).
  It occupies 316 bytes.
  The `jal` at 0x100219e8 calls vfmtFindSG2FormatFile [0x10024cc0] with a0=sp-1080, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10021a24 calls (unnamed) [0x1001fac0] with a0=0x1002f360, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x10021a40 calls fopen with a0=sp-1080, a1=0x10033618, a2=?, a3=?.
  The `jal` at 0x10021a7c calls (unnamed) [0x1001fac0] with a0=0x1002f378, a1=sp-1080, a2=ret(fopen), a3=?.
  The `jal` at 0x10021aa0 calls (unnamed) [0x10020490] with a0=a1 at entry (arg1), a1=ret(fopen), a2=0x1, a3=?.
  The `jalr` at 0x10021acc calls fclose with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10021a00 targets 0x10021a34, is taken when v1(=ret(vfmtFindSG2FormatFile)) == 0, and falls through when v1(=ret(vfmtFindSG2FormatFile)) != 0.
  The `beq` branch at 0x10021a2c targets 0x10021ab8 and is always taken.
  The `bne` branch at 0x10021a58 targets 0x10021a8c, is taken when a2(=ret(fopen)) != 0, and falls through when a2(=ret(fopen)) == 0.
  The `beq` branch at 0x10021a84 targets 0x10021ab8 and is always taken.
  The `beq` branch at 0x10021aac targets 0x10021ab8, is taken when v0(=ret(0x10020490)) == 0, and falls through when v0(=ret(0x10020490)) != 0.
  The `beq` branch at 0x10021abc targets 0x10021ad4, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The return at 0x10021ae4 has v0 = ?.

- `vfmtReadCmp1Combination` in `usr/gfx/sgcombine` at 0x10021c20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10021c20-0x10023444 (6180 bytes).
  It occupies 6180 bytes.
  The `lbu` at 0x10021e24 loads 1 byte from a1 (arg1 at entry) +0xff.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x0, including `lbu` at 0x10021f14, `lbu` at 0x10021fd8.
  The `lh` at 0x100224b0 loads 2 bytes from a1 (arg1 at entry) +0x1380.
  The `jalr` at 0x10021c60 calls sprintf with a0=sp-1136, a1=0x10033638, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10021c8c calls (unnamed) [0x10021af0] with a0=0x1002f638, a1=0xb3, a2=?, a3=?.
  The `jal` at 0x10021ca8 calls vfmtFindCmpCombinationFile [0x10024e50] with a0=sp-1120, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x10021ce4 calls (unnamed) [0x10021af0] with a0=0x1002f650, a1=a0 at entry (arg0), a2=ret(vfmtFindCmpCombinationFile), a3=?.
  The `jal` at 0x10021cfc calls SDBreadOpenDatabase [0x10025be8] with a0=sp-1120, a1=?, a2=ret(vfmtFindCmpCombinationFile), a3=?.
  The `jal` at 0x10021d34 calls (unnamed) [0x10021af0] with a0=0x1002f668, a1=sp-1120, a2=ret(SDBreadOpenDatabase), a3=?.
  The `jalr` at 0x10021d58 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x100332d8].
  The `jal` at 0x10021d74 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+4992, a3=?.
  The `jal` at 0x10021da4 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10021dcc calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x100332dc].
  The `jal` at 0x10021df0 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=sp-64, a3=?.
  The `jal` at 0x10021e44 calls vfmtReadCmp1OdyFormat [0x10021870] with a0=a1+255, a1=a1+888, a2=?, a3=ret(SDBgetSymbolValueScalar), a5=[a1+255]:1.
  The `jal` at 0x10021e6c calls vfmtReadCmp1SG2Format [0x100219b0] with a0=a1+255, a1=a1+888, a2=?, a3=?.
  The `jal` at 0x10021ea0 calls (unnamed) [0x10021af0] with a0=0x1002f668, a1=a1+255, a2=?, a3=?.
  The `jalr` at 0x10021ec4 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x100332e0].
  The `jal` at 0x10021ee4 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=sp-64, a3=?.
  The `jal` at 0x10021f30 calls vfmtReadCmp1Format [0x10021650] with a0=a1 at entry (arg1), a1=a1+2256, a2=?, a3=ret(SDBgetSymbolValueScalar), a5=[a1]:1.
  The `jal` at 0x10021f60 calls (unnamed) [0x10021af0] with a0=0x1002f668, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x10021f84 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x100332e4].
  The `jal` at 0x10021fa8 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=sp-64, a3=?.
  The `jal` at 0x10021ff8 calls vfmtReadCmp1Format [0x10021650] with a0=a1+510, a1=a1+3624, a2=?, a3=ret(SDBgetSymbolValueScalar), a5=[a1]:1.
  The `jal` at 0x1002202c calls (unnamed) [0x10021af0] with a0=0x1002f668, a1=a1+510, a2=?, a3=?.
  The `jalr` at 0x10022050 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x100332f8].
  The `jal` at 0x10022070 calls SDBgetSymbolValueArray [0x10025ac0] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+852, a3=0x2.
  The `jalr` at 0x100220b8 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x100332e8].
  The `jal` at 0x100220d4 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+768, a3=?.
  The `jal` at 0x10022104 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x1002212c calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x100332f0].
  The `jal` at 0x10022148 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+772, a3=?.
  The `jal` at 0x10022178 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x100221a0 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x100332ec].
  The `jal` at 0x100221bc calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+776, a3=?.
  The `jal` at 0x100221ec calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10022214 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x100332f4].
  The `jal` at 0x10022230 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+780, a3=?.
  The `jal` at 0x10022260 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10022288 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x1003330c].
  The `jal` at 0x100222a4 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+848, a3=?.
  The `jal` at 0x100222d4 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x100222fc calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x1003331c].
  The `jal` at 0x1002231c calls SDBgetSymbolValueArray [0x10025ac0] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+860, a3=0x3.
  The `jalr` at 0x10022364 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033318].
  The `jal` at 0x10022380 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+872, a3=?.
  The `jal` at 0x100223b0 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x100223d8 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033310].
  The `jal` at 0x100223f4 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+876, a3=?.
  The `jal` at 0x10022424 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x1002244c calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033314].
  The `jal` at 0x10022468 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+880, a3=?.
  The `jal` at 0x10022498 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x100224d0 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033324].
  The `jal` at 0x100224f0 calls SDBgetSymbolValueArray [0x10025ac0] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5260, a3=0x2.
  The `jalr` at 0x10022538 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033328].
  The `jal` at 0x10022558 calls SDBgetSymbolValueArray [0x10025ac0] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5268, a3=0x2.
  The `jalr` at 0x100225a0 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x1003332c].
  The `jal` at 0x100225bc calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5252, a3=?.
  The `jal` at 0x100225ec calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10022614 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033330].
  The `jal` at 0x10022630 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5256, a3=?.
  The `jal` at 0x10022660 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10022688 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033334].
  The `jal` at 0x100226a4 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5276, a3=?.
  The `jal` at 0x100226d4 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x100226fc calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033338].
  The `jal` at 0x10022718 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5280, a3=?.
  The `jal` at 0x10022748 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10022770 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x1003333c].
  The `jal` at 0x1002278c calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5284, a3=?.
  The `jal` at 0x100227bc calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x100227e4 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033340].
  The `jal` at 0x10022800 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5288, a3=?.
  The `jal` at 0x10022830 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10022858 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033344].
  The `jal` at 0x10022874 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5292, a3=?.
  The `jal` at 0x100228a4 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x100228cc calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033348].
  The `jal` at 0x100228e8 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5296, a3=?.
  The `jal` at 0x10022918 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10022940 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x1003334c].
  The `jal` at 0x1002295c calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5300, a3=?.
  The `jal` at 0x1002298c calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x100229b4 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033348].
  The `jal` at 0x100229d0 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5304, a3=?.
  The `jal` at 0x10022a00 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10022a28 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033354].
  The `jal` at 0x10022a44 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5308, a3=?.
  The `jal` at 0x10022a74 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10022a9c calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033358].
  The `jal` at 0x10022ab8 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5312, a3=?.
  The `jal` at 0x10022ae8 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10022b10 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x1003336c].
  The `jal` at 0x10022b2c calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5332, a3=?.
  The `jal` at 0x10022b5c calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10022b84 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033370].
  The `jal` at 0x10022ba0 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5336, a3=?.
  The `jal` at 0x10022bd0 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10022bf8 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033374].
  The `jal` at 0x10022c14 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5340, a3=?.
  The `jal` at 0x10022c44 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10022c6c calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033378].
  The `jal` at 0x10022c88 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5344, a3=?.
  The `jal` at 0x10022cb8 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10022ce0 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x1003337c].
  The `jal` at 0x10022cfc calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5348, a3=?.
  The `jal` at 0x10022d2c calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10022d54 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033380].
  The `jal` at 0x10022d70 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5352, a3=?.
  The `jal` at 0x10022da0 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10022dc8 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033384].
  The `jal` at 0x10022de4 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5356, a3=?.
  The `jal` at 0x10022e14 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10022e3c calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033388].
  The `jal` at 0x10022e58 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5356, a3=?.
  The `jal` at 0x10022e88 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10022eb0 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x1003338c].
  The `jal` at 0x10022ecc calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5364, a3=?.
  The `jal` at 0x10022efc calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10022f24 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033390].
  The `jal` at 0x10022f40 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5364, a3=?.
  The `jal` at 0x10022f70 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10022f98 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x1003335c].
  The `jal` at 0x10022fb4 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5316, a3=?.
  The `jal` at 0x10022fe4 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x1002300c calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033364].
  The `jal` at 0x10023028 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5328, a3=?.
  The `jal` at 0x10023058 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10023080 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033360].
  The `jal` at 0x1002309c calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5320, a3=?.
  The `jal` at 0x100230cc calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x100230f4 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033368].
  The `jal` at 0x10023110 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5324, a3=?.
  The `jal` at 0x10023140 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10023168 calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033320].
  The `jal` at 0x1002318c calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=sp-64, a3=?.
  The `jalr` at 0x100231e0 calls sprintf with a0=sp-1136, a1=0x1002f698, a2=?, a3=?.
  The `jalr` at 0x100231fc calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x100332fc].
  The `jal` at 0x10023224 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=?, a3=?.
  The `jal` at 0x10023254 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x1002327c calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033300].
  The `jal` at 0x100232a4 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=?, a3=?.
  The `jal` at 0x100232d4 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x100232fc calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033304].
  The `jal` at 0x10023324 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=?, a3=?.
  The `jal` at 0x10023354 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x1002337c calls sprintf with a0=sp-96, a1=0x10033640, a2=sp-1136, a3=[0x10033308].
  The `jal` at 0x100233a4 calls SDBgetSymbolValueScalar [0x10025af8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=?, a3=?.
  The `jal` at 0x100233d4 calls (unnamed) [0x10021af0] with a0=0x1002f680, a1=sp-96, a2=?, a3=?.
  The `jal` at 0x1002340c calls SDBcloseReadDatabase [0x10025b30] with a0=ret(SDBreadOpenDatabase), a1=?, a2=?, a3=?.
  The `bne` branch at 0x10021c6c targets 0x10021c9c, is taken when a0(=a1) != 0, and falls through when a0(=a1) == 0.
  The `beq` branch at 0x10021c94 targets 0x10023420 and is always taken.
  The `beq` branch at 0x10021cc0 targets 0x10021cf4, is taken when a2(=ret(vfmtFindCmpCombinationFile)) == 0, and falls through when a2(=ret(vfmtFindCmpCombinationFile)) != 0.
  The `beq` branch at 0x10021cec targets 0x10023420 and is always taken.
  The `bne` branch at 0x10021d10 targets 0x10021d44, is taken when a2(=ret(SDBreadOpenDatabase)) != 0, and falls through when a2(=ret(SDBreadOpenDatabase)) == 0.
  The `beq` branch at 0x10021d3c targets 0x10023420 and is always taken.
  The `bne` branch at 0x10021d80 targets 0x10021db4, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10021dac targets 0x10023420 and is always taken.
  The `bne` branch at 0x10021e04 targets 0x10021e1c, is taken when a3(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when a3(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10021e14 targets 0x1002342c and is always taken.
  The `beq` branch at 0x10021e28 targets 0x10021eb0, is taken when a5(=[a1+255]:1) == 0, and falls through when a5(=[a1+255]:1) != 0.
  The `beq` branch at 0x10021e50 targets 0x10021eb0, is taken when v0(=ret(vfmtReadCmp1OdyFormat)) == 0, and falls through when v0(=ret(vfmtReadCmp1OdyFormat)) != 0.
  The `beq` branch at 0x10021e78 targets 0x10021eb0, is taken when v0(=ret(vfmtReadCmp1SG2Format)) == 0, and falls through when v0(=ret(vfmtReadCmp1SG2Format)) != 0.
  The `beq` branch at 0x10021ea8 targets 0x10023420 and is always taken.
  The `bne` branch at 0x10021ef8 targets 0x10021f10, is taken when a3(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when a3(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10021f08 targets 0x1002342c and is always taken.
  The `beq` branch at 0x10021f18 targets 0x10021f70, is taken when a5(=[a1]:1) == 0, and falls through when a5(=[a1]:1) != 0.
  The `beq` branch at 0x10021f3c targets 0x10021f70, is taken when v0(=ret(vfmtReadCmp1Format)) == 0, and falls through when v0(=ret(vfmtReadCmp1Format)) != 0.
  The `beq` branch at 0x10021f68 targets 0x10023420 and is always taken.
  The `bne` branch at 0x10021fbc targets 0x10021fd4, is taken when a3(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when a3(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10021fcc targets 0x1002342c and is always taken.
  The `beq` branch at 0x10021fdc targets 0x1002203c, is taken when a5(=[a1]:1) == 0, and falls through when a5(=[a1]:1) != 0.
  The `beq` branch at 0x10022004 targets 0x1002203c, is taken when v0(=ret(vfmtReadCmp1Format)) == 0, and falls through when v0(=ret(vfmtReadCmp1Format)) != 0.
  The `beq` branch at 0x10022034 targets 0x10023420 and is always taken.
  The `bne` branch at 0x10022084 targets 0x100220a4, is taken when a3(=ret(SDBgetSymbolValueArray)) != 0, and falls through when a3(=ret(SDBgetSymbolValueArray)) == 0.
  The `beq` branch at 0x1002209c targets 0x1002342c and is always taken.
  The `bne` branch at 0x100220e0 targets 0x10022114, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x1002210c targets 0x10023420 and is always taken.
  The `bne` branch at 0x10022154 targets 0x10022188, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10022180 targets 0x10023420 and is always taken.
  The `bne` branch at 0x100221c8 targets 0x100221fc, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100221f4 targets 0x10023420 and is always taken.
  The `bne` branch at 0x1002223c targets 0x10022270, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10022268 targets 0x10023420 and is always taken.
  The `bne` branch at 0x100222b0 targets 0x100222e4, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100222dc targets 0x10023420 and is always taken.
  The `bne` branch at 0x10022330 targets 0x10022350, is taken when a3(=ret(SDBgetSymbolValueArray)) != 0, and falls through when a3(=ret(SDBgetSymbolValueArray)) == 0.
  The `beq` branch at 0x10022348 targets 0x1002342c and is always taken.
  The `bne` branch at 0x1002238c targets 0x100223c0, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100223b8 targets 0x10023420 and is always taken.
  The `bne` branch at 0x10022400 targets 0x10022434, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x1002242c targets 0x10023420 and is always taken.
  The `bne` branch at 0x10022474 targets 0x100224a8, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100224a0 targets 0x10023420 and is always taken.
  The `blez` branch at 0x100224b4 targets 0x100231b8, is taken when a2(=[a1+4992]:2) <= 0 (signed), and falls through when a2(=[a1+4992]:2) > 0 (signed).
  The `bne` branch at 0x10022504 targets 0x10022524, is taken when a3(=ret(SDBgetSymbolValueArray)) != 0, and falls through when a3(=ret(SDBgetSymbolValueArray)) == 0.
  The `beq` branch at 0x1002251c targets 0x1002342c and is always taken.
  The `bne` branch at 0x1002256c targets 0x1002258c, is taken when a3(=ret(SDBgetSymbolValueArray)) != 0, and falls through when a3(=ret(SDBgetSymbolValueArray)) == 0.
  The `beq` branch at 0x10022584 targets 0x1002342c and is always taken.
  The `bne` branch at 0x100225c8 targets 0x100225fc, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100225f4 targets 0x10023420 and is always taken.
  The `bne` branch at 0x1002263c targets 0x10022670, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10022668 targets 0x10023420 and is always taken.
  The `bne` branch at 0x100226b0 targets 0x100226e4, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100226dc targets 0x10023420 and is always taken.
  The `bne` branch at 0x10022724 targets 0x10022758, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10022750 targets 0x10023420 and is always taken.
  The `bne` branch at 0x10022798 targets 0x100227cc, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100227c4 targets 0x10023420 and is always taken.
  The `bne` branch at 0x1002280c targets 0x10022840, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10022838 targets 0x10023420 and is always taken.
  The `bne` branch at 0x10022880 targets 0x100228b4, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100228ac targets 0x10023420 and is always taken.
  The `bne` branch at 0x100228f4 targets 0x10022928, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10022920 targets 0x10023420 and is always taken.
  The `bne` branch at 0x10022968 targets 0x1002299c, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10022994 targets 0x10023420 and is always taken.
  The `bne` branch at 0x100229dc targets 0x10022a10, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10022a08 targets 0x10023420 and is always taken.
  The `bne` branch at 0x10022a50 targets 0x10022a84, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10022a7c targets 0x10023420 and is always taken.
  The `bne` branch at 0x10022ac4 targets 0x10022af8, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10022af0 targets 0x10023420 and is always taken.
  The `bne` branch at 0x10022b38 targets 0x10022b6c, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10022b64 targets 0x10023420 and is always taken.
  The `bne` branch at 0x10022bac targets 0x10022be0, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10022bd8 targets 0x10023420 and is always taken.
  The `bne` branch at 0x10022c20 targets 0x10022c54, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10022c4c targets 0x10023420 and is always taken.
  The `bne` branch at 0x10022c94 targets 0x10022cc8, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10022cc0 targets 0x10023420 and is always taken.
  The `bne` branch at 0x10022d08 targets 0x10022d3c, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10022d34 targets 0x10023420 and is always taken.
  The `bne` branch at 0x10022d7c targets 0x10022db0, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10022da8 targets 0x10023420 and is always taken.
  The `bne` branch at 0x10022df0 targets 0x10022e24, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10022e1c targets 0x10023420 and is always taken.
  The `bne` branch at 0x10022e64 targets 0x10022e98, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10022e90 targets 0x10023420 and is always taken.
  The `bne` branch at 0x10022ed8 targets 0x10022f0c, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10022f04 targets 0x10023420 and is always taken.
  The `bne` branch at 0x10022f4c targets 0x10022f80, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10022f78 targets 0x10023420 and is always taken.
  The `bne` branch at 0x10022fc0 targets 0x10022ff4, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10022fec targets 0x10023420 and is always taken.
  The `bne` branch at 0x10023034 targets 0x10023068, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10023060 targets 0x10023420 and is always taken.
  The `bne` branch at 0x100230a8 targets 0x100230dc, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100230d4 targets 0x10023420 and is always taken.
  The `bne` branch at 0x1002311c targets 0x10023150, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10023148 targets 0x10023420 and is always taken.
  The `bne` branch at 0x100231a0 targets 0x100231b8, is taken when a3(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when a3(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100231b0 targets 0x1002342c and is always taken.
  The `beq` branch at 0x100231c4 targets 0x10023404 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x10023230 targets 0x10023264, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x1002325c targets 0x10023420 and is always taken.
  The `bne` branch at 0x100232b0 targets 0x100232e4, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100232dc targets 0x10023420 and is always taken.
  The `bne` branch at 0x10023330 targets 0x10023364, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x1002335c targets 0x10023420 and is always taken.
  The `bne` branch at 0x100233b0 targets 0x100233e4, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100233dc targets 0x10023420 and is always taken.
  The `bne` branch at 0x100233fc targets 0x100231cc, is taken when a2(?) < 0x4 (signed), and falls through when a2(?) >= 0x4 (signed).
  The `beq` branch at 0x10023418 targets 0x1002342c and is always taken.
  The return at 0x1002343c has v0 = one of 0x0, 0x2.

- `vfmtWriteCmp1Combination` in `usr/gfx/sgcombine` at 0x10023450 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/sgcombine`.
  Range: 0x10023450-0x1002486c (5148 bytes).
  It occupies 5148 bytes.
  The `jalr` at 0x1002347c calls sprintf with a0=sp-1248, a1=0x10033638, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100234a8 calls (unnamed) [0x10021af0] with a0=0x1002f6a8, a1=0x124, a2=?, a3=?.
  The `jalr` at 0x100234d8 calls sprintf with a0=sp-1224, a1=0x1002f6d0, a2=0x1, a3=0x1.
  The `jal` at 0x100234ec calls vfmtFindCmpCombinationFile [0x10024e50] with a0=sp-1120, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x10023504 calls SDBopenNewDatabase [0x10025610] with a0=sp-1120, a1=sp-1232, a2=sp-1224, a3=?.
  The `jal` at 0x10023548 calls SDBaddNewScalarSymbol [0x1002543c] with a0=ret(SDBopenNewDatabase), a1=[0x100332d8], a2=0x7, a3=sp-1232, a4=sym(xdr_u_short).
  The `jal` at 0x10023574 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=0x1002f6f0, a2=0x7, a3=sp-1230, a4=sym(xdr_u_short).
  The `jalr` at 0x100235a0 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x100332dc].
  The `jal` at 0x100235cc calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0xf, a3=sp-56, a4=sym(xdr_string).
  The `jalr` at 0x1002360c calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x100332e0], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10023634 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0xf, a3=sp-56, a4=sym(xdr_string), a6=a1 at entry (arg1).
  The `jalr` at 0x10023674 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x100332e4], a7=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x100236a0 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0xf, a3=sp-56, a4=sym(xdr_string).
  The `jalr` at 0x100236e0 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x100332f8].
  The `jal` at 0x10023708 calls SDBaddNewArraySymbol [0x10025404] with a0=?, a1=sp-88, a2=0x2, a3=0x2, a4=a1+852, a5=sym(xdr_int).
  The `jalr` at 0x10023748 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x1003331c], a5=ret(SDBaddNewArraySymbol).
  The `jal` at 0x10023770 calls SDBaddNewArraySymbol [0x10025404] with a0=?, a1=sp-88, a2=0xa, a3=0x3, a4=a1+860, a5=sym(xdr_bool).
  The `jalr` at 0x100237b0 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x100332e8], a5=ret(SDBaddNewArraySymbol).
  The `jal` at 0x100237d4 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+768, a4=sym(xdr_int).
  The `jalr` at 0x10023814 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x100332f0], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10023838 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+772, a4=sym(xdr_int).
  The `jalr` at 0x10023878 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x100332ec], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x1002389c calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+776, a4=sym(xdr_int).
  The `jalr` at 0x100238dc calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033310], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10023900 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+880, a4=sym(xdr_int).
  The `jalr` at 0x10023940 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033314], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10023964 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+876, a4=sym(xdr_int).
  The `jalr` at 0x100239a4 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033318], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x100239c8 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+872, a4=sym(xdr_int).
  The `jalr` at 0x10023a08 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x100332f4], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10023a2c calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+780, a4=sym(xdr_int).
  The `jalr` at 0x10023a6c calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x1003330c], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10023a90 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+848, a4=sym(xdr_int).
  The `jalr` at 0x10023ad0 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033324], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10023af8 calls SDBaddNewArraySymbol [0x10025404] with a0=?, a1=sp-88, a2=0x2, a3=0x2, a4=a1+5260, a5=sym(xdr_int).
  The `jalr` at 0x10023b38 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033328], a5=ret(SDBaddNewArraySymbol).
  The `jal` at 0x10023b60 calls SDBaddNewArraySymbol [0x10025404] with a0=?, a1=sp-88, a2=0x2, a3=0x2, a4=a1+5268, a5=sym(xdr_int).
  The `jalr` at 0x10023ba0 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x1003332c], a5=ret(SDBaddNewArraySymbol).
  The `jal` at 0x10023bc4 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5252, a4=sym(xdr_int).
  The `jalr` at 0x10023c04 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033330], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10023c28 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5256, a4=sym(xdr_int).
  The `jalr` at 0x10023c68 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033334], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10023c8c calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5276, a4=sym(xdr_int).
  The `jalr` at 0x10023ccc calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033338], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10023cf0 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5280, a4=sym(xdr_int).
  The `jalr` at 0x10023d30 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x1003333c], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10023d54 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5284, a4=sym(xdr_int).
  The `jalr` at 0x10023d94 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033340], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10023db8 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5288, a4=sym(xdr_int).
  The `jalr` at 0x10023df8 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033344], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10023e1c calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5292, a4=sym(xdr_int).
  The `jalr` at 0x10023e5c calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033348], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10023e80 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5296, a4=sym(xdr_int).
  The `jalr` at 0x10023ec0 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x1003334c], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10023ee4 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5300, a4=sym(xdr_int).
  The `jalr` at 0x10023f24 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033350], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10023f48 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5304, a4=sym(xdr_int).
  The `jalr` at 0x10023f88 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033354], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10023fac calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5308, a4=sym(xdr_int).
  The `jalr` at 0x10023fec calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033358], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10024010 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5312, a4=sym(xdr_int).
  The `jalr` at 0x10024050 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x1003335c], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10024074 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5316, a4=sym(xdr_int).
  The `jalr` at 0x100240b4 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033364], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x100240d8 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x10, a3=a1+5328, a4=sym(xdr_float).
  The `jalr` at 0x10024118 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033360], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x1002413c calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5320, a4=sym(xdr_int).
  The `jalr` at 0x1002417c calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033368], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x100241a0 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5324, a4=sym(xdr_int).
  The `jalr` at 0x100241e0 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033320], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x1002420c calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0xf, a3=sp-56, a4=sym(xdr_string), a6=a1+4996.
  The `jalr` at 0x1002424c calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x1003336c], a7=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10024270 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5332, a4=sym(xdr_int).
  The `jalr` at 0x100242b0 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033370], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x100242d4 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5336, a4=sym(xdr_int).
  The `jalr` at 0x10024314 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033374], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10024338 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5340, a4=sym(xdr_int).
  The `jalr` at 0x10024378 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033378], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x1002439c calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5344, a4=sym(xdr_int).
  The `jalr` at 0x100243dc calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x1003337c], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10024400 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5348, a4=sym(xdr_int).
  The `jalr` at 0x10024440 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033380], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10024464 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5352, a4=sym(xdr_int).
  The `jalr` at 0x100244a4 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033384], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x100244c8 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5356, a4=sym(xdr_int).
  The `jalr` at 0x10024508 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033388], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x1002452c calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5356, a4=sym(xdr_int).
  The `jalr` at 0x1002456c calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x1003338c], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10024590 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5364, a4=sym(xdr_int).
  The `jalr` at 0x100245d0 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033390], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x100245f4 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5364, a4=sym(xdr_int).
  The `jalr` at 0x10024648 calls sprintf with a0=sp-1248, a1=0x1002f698, a2=?, a3=?.
  The `jalr` at 0x10024664 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x100332fc].
  The `jal` at 0x10024694 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=?, a4=sym(xdr_int).
  The `jalr` at 0x100246d4 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033300], a5=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10024704 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=?, a4=sym(xdr_int).
  The `jalr` at 0x10024744 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033304], a5=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10024774 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=?, a4=sym(xdr_int).
  The `jalr` at 0x100247b4 calls sprintf with a0=sp-88, a1=0x10033640, a2=sp-1248, a3=[0x10033308], a5=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x100247e4 calls SDBaddNewScalarSymbol [0x1002543c] with a0=?, a1=sp-88, a2=0x2, a3=?, a4=sym(xdr_int).
  The `jal` at 0x10024834 calls SDBcloseNewDatabase [0x1002547c] with a0=?, a1=?, a2=?, a3=?, a5=ret(SDBaddNewScalarSymbol).
  The `bne` branch at 0x10023488 targets 0x100234b8, is taken when v0(=a1) != 0, and falls through when v0(=a1) == 0.
  The `beq` branch at 0x100234b0 targets 0x10024848 and is always taken.
  The `bne` branch at 0x10023518 targets 0x10023530, is taken when a4(=ret(SDBopenNewDatabase)) != 0, and falls through when a4(=ret(SDBopenNewDatabase)) == 0.
  The `beq` branch at 0x10023528 targets 0x10024854 and is always taken.
  The `bne` branch at 0x100235e0 targets 0x100235f8, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100235f0 targets 0x10024854 and is always taken.
  The `bne` branch at 0x10023648 targets 0x10023660, is taken when a7(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a7(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10023658 targets 0x10024854 and is always taken.
  The `bne` branch at 0x100236b4 targets 0x100236cc, is taken when t2(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when t2(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100236c4 targets 0x10024854 and is always taken.
  The `bne` branch at 0x1002371c targets 0x10023734, is taken when a5(=ret(SDBaddNewArraySymbol)) != 0, and falls through when a5(=ret(SDBaddNewArraySymbol)) == 0.
  The `beq` branch at 0x1002372c targets 0x10024854 and is always taken.
  The `bne` branch at 0x10023784 targets 0x1002379c, is taken when a5(=ret(SDBaddNewArraySymbol)) != 0, and falls through when a5(=ret(SDBaddNewArraySymbol)) == 0.
  The `beq` branch at 0x10023794 targets 0x10024854 and is always taken.
  The `bne` branch at 0x100237e8 targets 0x10023800, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100237f8 targets 0x10024854 and is always taken.
  The `bne` branch at 0x1002384c targets 0x10023864, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x1002385c targets 0x10024854 and is always taken.
  The `bne` branch at 0x100238b0 targets 0x100238c8, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100238c0 targets 0x10024854 and is always taken.
  The `bne` branch at 0x10023914 targets 0x1002392c, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10023924 targets 0x10024854 and is always taken.
  The `bne` branch at 0x10023978 targets 0x10023990, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10023988 targets 0x10024854 and is always taken.
  The `bne` branch at 0x100239dc targets 0x100239f4, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100239ec targets 0x10024854 and is always taken.
  The `bne` branch at 0x10023a40 targets 0x10023a58, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10023a50 targets 0x10024854 and is always taken.
  The `bne` branch at 0x10023aa4 targets 0x10023abc, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10023ab4 targets 0x10024854 and is always taken.
  The `bne` branch at 0x10023b0c targets 0x10023b24, is taken when a5(=ret(SDBaddNewArraySymbol)) != 0, and falls through when a5(=ret(SDBaddNewArraySymbol)) == 0.
  The `beq` branch at 0x10023b1c targets 0x10024854 and is always taken.
  The `bne` branch at 0x10023b74 targets 0x10023b8c, is taken when a5(=ret(SDBaddNewArraySymbol)) != 0, and falls through when a5(=ret(SDBaddNewArraySymbol)) == 0.
  The `beq` branch at 0x10023b84 targets 0x10024854 and is always taken.
  The `bne` branch at 0x10023bd8 targets 0x10023bf0, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10023be8 targets 0x10024854 and is always taken.
  The `bne` branch at 0x10023c3c targets 0x10023c54, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10023c4c targets 0x10024854 and is always taken.
  The `bne` branch at 0x10023ca0 targets 0x10023cb8, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10023cb0 targets 0x10024854 and is always taken.
  The `bne` branch at 0x10023d04 targets 0x10023d1c, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10023d14 targets 0x10024854 and is always taken.
  The `bne` branch at 0x10023d68 targets 0x10023d80, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10023d78 targets 0x10024854 and is always taken.
  The `bne` branch at 0x10023dcc targets 0x10023de4, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10023ddc targets 0x10024854 and is always taken.
  The `bne` branch at 0x10023e30 targets 0x10023e48, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10023e40 targets 0x10024854 and is always taken.
  The `bne` branch at 0x10023e94 targets 0x10023eac, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10023ea4 targets 0x10024854 and is always taken.
  The `bne` branch at 0x10023ef8 targets 0x10023f10, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10023f08 targets 0x10024854 and is always taken.
  The `bne` branch at 0x10023f5c targets 0x10023f74, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10023f6c targets 0x10024854 and is always taken.
  The `bne` branch at 0x10023fc0 targets 0x10023fd8, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10023fd0 targets 0x10024854 and is always taken.
  The `bne` branch at 0x10024024 targets 0x1002403c, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10024034 targets 0x10024854 and is always taken.
  The `bne` branch at 0x10024088 targets 0x100240a0, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10024098 targets 0x10024854 and is always taken.
  The `bne` branch at 0x100240ec targets 0x10024104, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100240fc targets 0x10024854 and is always taken.
  The `bne` branch at 0x10024150 targets 0x10024168, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10024160 targets 0x10024854 and is always taken.
  The `bne` branch at 0x100241b4 targets 0x100241cc, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100241c4 targets 0x10024854 and is always taken.
  The `bne` branch at 0x10024220 targets 0x10024238, is taken when a7(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a7(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10024230 targets 0x10024854 and is always taken.
  The `bne` branch at 0x10024284 targets 0x1002429c, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10024294 targets 0x10024854 and is always taken.
  The `bne` branch at 0x100242e8 targets 0x10024300, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100242f8 targets 0x10024854 and is always taken.
  The `bne` branch at 0x1002434c targets 0x10024364, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x1002435c targets 0x10024854 and is always taken.
  The `bne` branch at 0x100243b0 targets 0x100243c8, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100243c0 targets 0x10024854 and is always taken.
  The `bne` branch at 0x10024414 targets 0x1002442c, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10024424 targets 0x10024854 and is always taken.
  The `bne` branch at 0x10024478 targets 0x10024490, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10024488 targets 0x10024854 and is always taken.
  The `bne` branch at 0x100244dc targets 0x100244f4, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100244ec targets 0x10024854 and is always taken.
  The `bne` branch at 0x10024540 targets 0x10024558, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10024550 targets 0x10024854 and is always taken.
  The `bne` branch at 0x100245a4 targets 0x100245bc, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100245b4 targets 0x10024854 and is always taken.
  The `bne` branch at 0x10024608 targets 0x10024620, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10024618 targets 0x10024854 and is always taken.
  The `beq` branch at 0x1002462c targets 0x1002482c and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x100246a8 targets 0x100246c0, is taken when a5(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a5(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100246b8 targets 0x10024854 and is always taken.
  The `bne` branch at 0x10024718 targets 0x10024730, is taken when a5(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a5(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10024728 targets 0x10024854 and is always taken.
  The `bne` branch at 0x10024788 targets 0x100247a0, is taken when a5(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a5(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10024798 targets 0x10024854 and is always taken.
  The `bne` branch at 0x100247f8 targets 0x10024810, is taken when a5(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a5(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10024808 targets 0x10024854 and is always taken.
  The `bne` branch at 0x10024824 targets 0x10024634, is taken when a7(?) < 0x4 (signed), and falls through when a7(?) >= 0x4 (signed).
  The `beq` branch at 0x10024840 targets 0x10024854 and is always taken.
  The return at 0x10024864 has v0 = one of 0x0, 0x1, 0x2.
