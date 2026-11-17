# Readings: `usr/gfx/dmconf`

One entry per routine, filed here from the reading batches by binary.

- `__ct__20DmconfMainFrameClassGPCcP10_WidgetRec` in `usr/gfx/dmconf` at 0x10008a80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10008a80-0x10008cdc (604 bytes).
  It occupies 604 bytes.
  The `sw` at 0x10008ac4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `swc1` at 0x10008b2c stores 4 bytes to a0 (arg0 at entry) +0x84.
  The `swc1` at 0x10008b5c stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `swc1` at 0x10008b88 stores 4 bytes to a0 (arg0 at entry) +0x8c.
  The `sb` at 0x10008bd4 stores 1 byte to a0 (arg0 at entry) +0x90.
  The `sb` at 0x10008be8 stores 1 byte to a0 (arg0 at entry) +0x91.
  The `sb` at 0x10008bf8 stores 1 byte to a0 (arg0 at entry) +0x92.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xa4, including `sw` at 0x10008c08, `sw` at 0x10008cac.
  The `sw` at 0x10008c14 stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x10008c20 stores 4 bytes to a0 (arg0 at entry) +0xbc.
  2 such `lw` accesses load 4 bytes from sym(work_order) +0x23c, including `lw` at 0x10008c28, `lw` at 0x10008c48.
  The `lw` at 0x10008c50 loads 4 bytes from sym(work_order) +0x1740.
  The `jal` at 0x10008ab4 calls __ct__22DmconfMainFrameClassUIGPCcP10_WidgetRec [0x1000a090] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10008adc calls VkGetResource__GPCcT1 with a0=0x100200a8, a1=0x100200c0, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10008af8 calls sscanf with a0=ret(VkGetResource__GPCcT1), a1=0x100244d8, a2=sp-112, a3=?.
  The `jalr` at 0x10008ba0 calls VkGetResource__GPCcT1 with a0=0x100200d8, a1=0x100200e8, a2=?, a3=a0+136, a5=a0+132.
  The `jalr` at 0x10008bbc calls sscanf with a0=ret(VkGetResource__GPCcT1), a1=0x100244d8, a2=sp-112, a3=?.
  The `jal` at 0x10008c30 calls vfcQueryXSGIvc [0x100105a0] with a0=[sym(work_order)+572], a1=0x1, a2=a0 at entry (arg0), a3=0x1, a4=a0 at entry (arg0), a5=a0+168, a6=a0 at entry (arg0), a7=a0+146.
  The `jalr` at 0x10008c5c calls XSGIvcQueryVideoScreenInfo with a0=[sym(work_order)+572], a1=[sym(work_order)+5952], a2=sp-104, a3=?.
  The `jalr` at 0x10008c74 calls strncmp with a0=sp-92, a1=0x100244e0, a2=0x7, a3=?.
  The `jal` at 0x10008c98 calls vfcQueryOdysseyTarget [0x10011650] with a0=sym(work_order), a1=a0+180, a2=?, a3=?.
  The `beq` branch at 0x10008c3c targets 0x10008cb0, is taken when v0(=ret(vfcQueryXSGIvc)) == 0, and falls through when v0(=ret(vfcQueryXSGIvc)) != 0.
  The `bne` branch at 0x10008c80 targets 0x10008cb0, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The return at 0x10008cc0 has v0 = a0.
  The instructions from 0x10008cc8 to 0x10008cd8 are not reached by any path from the entry, and their branches are not listed.

- `__ct__20DmconfMainFrameClassGPCc` in `usr/gfx/dmconf` at 0x10008ce0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10008ce0-0x10008d4c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x10008d1c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10008d0c calls __ct__22DmconfMainFrameClassUIGPCc [0x1000a120] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10008d30 has v0 = a0.
  The instructions from 0x10008d38 to 0x10008d48 are not reached by any path from the entry, and their branches are not listed.

- `__dt__20DmconfMainFrameClassGv` in `usr/gfx/dmconf` at 0x10008d50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10008d50-0x10008de4 (148 bytes).
  It occupies 148 bytes.
  The `sw` at 0x10008d84 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10008d94 calls __dt__22DmconfMainFrameClassUIGv [0x1000a190] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10008db4 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10008d74 targets 0x10008dbc, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x10008da4 targets 0x10008dbc, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10008dc8 has v0 = one of 0x231b8, ret(__dt__22DmconfMainFrameClassUIGv), ret(__dl__GPv).
  The instructions from 0x10008dd0 to 0x10008de0 are not reached by any path from the entry, and their branches are not listed.

- `className__20DmconfMainFrameClassGv` in `usr/gfx/dmconf` at 0x10008df0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10008df0-0x10008e30 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10008e08 loads 4 bytes from abs 0x10023f54.
  The `beq` branch at 0x10008e14 targets 0x10008e1c and is always taken.
  The return at 0x10008e28 has v0 = 0x100200f8.

- `doDmxPropertiesButton__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10008e30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10008e30-0x10008e88 (88 bytes).
  It occupies 88 bytes.
  The `jal` at 0x10008e64 calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=0x0, a1=0x10020110, a2=a2 at entry (arg2), a3=0x230d8.
  The `beq` branch at 0x10008e6c targets 0x10008e74 and is always taken.
  The return at 0x10008e80 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doOdyPropertiesButton__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10008e90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10008e90-0x10008ee8 (88 bytes).
  It occupies 88 bytes.
  The `jal` at 0x10008ec4 calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=0x0, a1=0x10020140, a2=a2 at entry (arg2), a3=0x23078.
  The `beq` branch at 0x10008ecc targets 0x10008ed4 and is always taken.
  The return at 0x10008ee0 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `newFile__20DmconfMainFrameClassGv` in `usr/gfx/dmconf` at 0x10008ef0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10008ef0-0x10008f40 (80 bytes).
  It occupies 80 bytes.
  The `jal` at 0x10008f1c calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=0x0, a1=0x10020170, a2=0x23018, a3=a3 at entry (arg3).
  The `beq` branch at 0x10008f24 targets 0x10008f2c and is always taken.
  The return at 0x10008f38 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `openFile__20DmconfMainFrameClassGPCc` in `usr/gfx/dmconf` at 0x10008f40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10008f40-0x10008f94 (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0x10008f70 calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=0x0, a1=0x10020190, a2=0x22fc8, a3=a3 at entry (arg3).
  The `beq` branch at 0x10008f78 targets 0x10008f80 and is always taken.
  The return at 0x10008f8c has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `save__20DmconfMainFrameClassGv` in `usr/gfx/dmconf` at 0x10008fa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10008fa0-0x10008ff0 (80 bytes).
  It occupies 80 bytes.
  The `jal` at 0x10008fcc calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=0x0, a1=0x100201b0, a2=0x22f68, a3=a3 at entry (arg3).
  The `beq` branch at 0x10008fd4 targets 0x10008fdc and is always taken.
  The return at 0x10008fe8 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `saveas__20DmconfMainFrameClassGPCc` in `usr/gfx/dmconf` at 0x10008ff0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10008ff0-0x10009044 (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0x10009020 calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=0x0, a1=0x100201d0, a2=0x22f18, a3=a3 at entry (arg3).
  The `beq` branch at 0x10009028 targets 0x10009030 and is always taken.
  The return at 0x1000903c has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `CreateDmconfMainFrameClass__20DmconfMainFrameClassSGPCcP10_WidgetRec` in `usr/gfx/dmconf` at 0x10009050 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009050-0x1000910c (188 bytes).
  It occupies 188 bytes.
  The `jalr` at 0x1000907c calls __nw__GUi with a0=0xc0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100090a8 calls __ct__20DmconfMainFrameClassGPCcP10_WidgetRec [0x10008a80] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x10009088 targets 0x100090c4, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100090bc targets 0x100090c8 and is always taken.
  The return at 0x100090f0 has v0 = one of ret(__nw__GUi), 0x0.
  The instructions from 0x100090f8 to 0x10009108 are not reached by any path from the entry, and their branches are not listed.

- `update__20DmconfMainFrameClassGv` in `usr/gfx/dmconf` at 0x10009110 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009110-0x1000922c (284 bytes).
  It occupies 284 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa4, including `lw` at 0x10009144, `lw` at 0x10009198.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x1000916c, `lw` at 0x100091d0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x100091b0, `lw` at 0x100091fc.
  The `jal` at 0x10009134 calls draw_frame__20DmconfMainFrameClassGv [0x10009ae0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10009154 calls vfmtIsCmpCombinationValidForTarget [0x10011680] with a0=sym(combination), a1=[a0+164], a2=sp-304, a3=0x100.
  The `jal` at 0x10009174 calls EZ__GP10_WidgetRec [0x10018810] with a0=[a0+48], a1=?, a2=?, a3=?.
  The `jal` at 0x1000918c calls __as__9EZWrapperGPCc [0x1001a0d0] with a0=ret(EZ__GP10_WidgetRec), a1=0x100244e8, a2=?, a3=?.
  The `jalr` at 0x100091bc calls XtSetSensitive with a0=[a0+40], a1=0x1, a2=a0+180, a3=?.
  The `jal` at 0x100091d8 calls EZ__GP10_WidgetRec [0x10018810] with a0=[a0+48], a1=?, a2=?, a3=?.
  The `jal` at 0x100091f0 calls __as__9EZWrapperGPCc [0x1001a0d0] with a0=ret(EZ__GP10_WidgetRec), a1=sp-304, a2=?, a3=?.
  The `jalr` at 0x10009208 calls XtSetSensitive with a0=[a0+40], a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x10009160 targets 0x100091cc, is taken when v0(=ret(vfmtIsCmpCombinationValidForTarget)) == 0, and falls through when v0(=ret(vfmtIsCmpCombinationValidForTarget)) != 0.
  The `bne` branch at 0x100091a4 targets 0x100091c4, is taken when a1(=[a0+164]) != a2(=a0+180), and falls through when a1(=[a0+164]) == a2(=a0+180).
  The `beq` branch at 0x100091c4 targets 0x10009210 and is always taken.
  The `beq` branch at 0x10009210 targets 0x10009218 and is always taken.
  The return at 0x10009224 has v0 = ?.

- `doDenaliFormat1080I50__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10009230 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009230-0x10009290 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x1000926c calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x100201f0, a2=a2 at entry (arg2), a3=0x22cd8.
  The `beq` branch at 0x10009274 targets 0x1000927c and is always taken.
  The return at 0x10009288 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDenaliFormat1080I5994__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10009290 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009290-0x100092f0 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x100092cc calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x10020220, a2=a2 at entry (arg2), a3=0x22c78.
  The `beq` branch at 0x100092d4 targets 0x100092dc and is always taken.
  The return at 0x100092e8 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDenaliFormat1080I60__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x100092f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x100092f0-0x10009350 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x1000932c calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x10020250, a2=a2 at entry (arg2), a3=0x22c18.
  The `beq` branch at 0x10009334 targets 0x1000933c and is always taken.
  The return at 0x10009348 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDenaliFormat1080P2398__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10009350 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009350-0x100093b0 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x1000938c calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x10020280, a2=a2 at entry (arg2), a3=0x22bb8.
  The `beq` branch at 0x10009394 targets 0x1000939c and is always taken.
  The return at 0x100093a8 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDenaliFormat1080P24__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x100093b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x100093b0-0x10009410 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x100093ec calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x100202b0, a2=a2 at entry (arg2), a3=0x22b58.
  The `beq` branch at 0x100093f4 targets 0x100093fc and is always taken.
  The return at 0x10009408 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDenaliFormat1080P25__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10009410 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009410-0x10009470 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x1000944c calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x100202e0, a2=a2 at entry (arg2), a3=0x22af8.
  The `beq` branch at 0x10009454 targets 0x1000945c and is always taken.
  The return at 0x10009468 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDenaliFormat1080psf2398__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10009470 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009470-0x100094d0 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x100094ac calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x10020310, a2=a2 at entry (arg2), a3=0x22a98.
  The `beq` branch at 0x100094b4 targets 0x100094bc and is always taken.
  The return at 0x100094c8 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDenaliFormat1080psf24__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x100094d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x100094d0-0x10009530 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x1000950c calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x10020340, a2=a2 at entry (arg2), a3=0x22a38.
  The `beq` branch at 0x10009514 targets 0x1000951c and is always taken.
  The return at 0x10009528 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDenaliFormat1080psf25__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10009530 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009530-0x10009590 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x1000956c calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x10020370, a2=a2 at entry (arg2), a3=0x229d8.
  The `beq` branch at 0x10009574 targets 0x1000957c and is always taken.
  The return at 0x10009588 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDenaliFormat525I5994__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10009590 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009590-0x100095f0 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x100095cc calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x100203a0, a2=a2 at entry (arg2), a3=0x22978.
  The `beq` branch at 0x100095d4 targets 0x100095dc and is always taken.
  The return at 0x100095e8 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDenaliFormat625I50__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x100095f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x100095f0-0x10009650 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x1000962c calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x100203d0, a2=a2 at entry (arg2), a3=0x22918.
  The `beq` branch at 0x10009634 targets 0x1000963c and is always taken.
  The return at 0x10009648 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDenaliFormat720P60__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10009650 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009650-0x100096b0 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x1000968c calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x10020400, a2=a2 at entry (arg2), a3=0x228b8.
  The `beq` branch at 0x10009694 targets 0x1000969c and is always taken.
  The return at 0x100096a8 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDownloadButton__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x100096b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x100096b0-0x10009710 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x100096ec calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x10020430, a2=a2 at entry (arg2), a3=0x22858.
  The `beq` branch at 0x100096f4 targets 0x100096fc and is always taken.
  The return at 0x10009708 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doOdyBrowseButton__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10009710 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009710-0x10009770 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x1000974c calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x10020458, a2=a2 at entry (arg2), a3=0x227f8.
  The `beq` branch at 0x10009754 targets 0x1000975c and is always taken.
  The return at 0x10009768 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `expose__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10009770 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009770-0x100097e0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x100097a4 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `jal` at 0x100097ac calls GLwDrawingAreaMakeCurrent [0x1001ca1c] with a0=a1 at entry (arg1), a1=[a0+128], a2=a2 at entry (arg2), a3=0x22798.
  The `jal` at 0x100097bc calls update__20DmconfMainFrameClassGv [0x10009110] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100097c4 targets 0x100097cc and is always taken.
  The return at 0x100097d8 has v0 = ret(update__20DmconfMainFrameClassGv).

- `ginit__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x100097e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x100097e0-0x1000989c (188 bytes).
  It occupies 188 bytes.
  The `sw` at 0x1000985c stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `lhu` at 0x10009864 loads 2 bytes from a2 (arg2 at entry) +0x8.
  The `sw` at 0x1000986c stores 4 bytes to a0 (arg0 at entry) +0x94.
  The `lhu` at 0x10009874 loads 2 bytes from a2 (arg2 at entry) +0xa.
  The `sw` at 0x1000987c stores 4 bytes to a0 (arg0 at entry) +0x98.
  The `jalr` at 0x10009824 calls XtVaGetValues with a0=a1 at entry (arg1), a1=0x10020480, a2=sp-60, a3=0x0.
  The `jalr` at 0x10009834 calls XtDisplay with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x10009850 calls glXCreateContext with a0=ret(XtDisplay), a1=?, a2=0x0, a3=0x1.
  The `beq` branch at 0x10009880 targets 0x10009888 and is always taken.
  The return at 0x10009894 has v0 = ret(glXCreateContext).

- `input__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x100098a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x100098a0-0x10009900 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x100098dc calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x10020490, a2=a2 at entry (arg2), a3=0x22668.
  The `beq` branch at 0x100098e4 targets 0x100098ec and is always taken.
  The return at 0x100098f8 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `resize__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10009900 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009900-0x10009a9c (412 bytes).
  It occupies 412 bytes.
  The `lw` at 0x10009934 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `lhu` at 0x10009948 loads 2 bytes from a2 (arg2 at entry) +0x8.
  The `sw` at 0x10009950 stores 4 bytes to a0 (arg0 at entry) +0x94.
  The `lhu` at 0x10009958 loads 2 bytes from a2 (arg2 at entry) +0xa.
  The `sw` at 0x10009960 stores 4 bytes to a0 (arg0 at entry) +0x98.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x358, including `lw` at 0x10009978, `lw` at 0x100099bc.
  The `lw` at 0x10009988 loads 4 bytes from sym(combination) +0x354.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x94, including `lw` at 0x1000999c, `lw` at 0x100099fc, `lw` at 0x10009a58.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9c, including `swc1` at 0x100099b4, `swc1` at 0x10009a1c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x98, including `lw` at 0x100099d0, `lw` at 0x10009a28, `lw` at 0x10009a60.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0xa0, including `swc1` at 0x100099e8, `swc1` at 0x10009a48.
  The `jal` at 0x1000993c calls GLwDrawingAreaMakeCurrent [0x1001ca1c] with a0=a1 at entry (arg1), a1=[a0+128], a2=a2 at entry (arg2), a3=0x22608.
  The `jalr` at 0x10009a68 calls glViewport with a0=0x0, a1=0x0, a2=[a0+148], a3=[a0+152], a4=sym(combination)+852, a5=[a2+10]:2, a6=a0 at entry (arg0).
  The `jalr` at 0x10009a78 calls glDisable with a0=0xbd0, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1000996c targets 0x100099f4, is taken when a4(=sym(combination)+852) == 0, and falls through when a4(=sym(combination)+852) != 0.
  The `beq` branch at 0x1000997c targets 0x100099f4, is taken when a7(=[sym(combination)+856]) == 0, and falls through when a7(=[sym(combination)+856]) != 0.
  The `beq` branch at 0x100099ec targets 0x10009a4c and is always taken.
  The `beq` branch at 0x10009a80 targets 0x10009a88 and is always taken.
  The return at 0x10009a94 has v0 = ret(glDisable).

- `RegisterDmconfMainFrameClassInterface__20DmconfMainFrameClassSGv` in `usr/gfx/dmconf` at 0x10009aa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009aa0-0x10009adc (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0x10009ab4 loads 4 bytes from abs 0x10023f54.
  The `beq` branch at 0x10009ac0 targets 0x10009ac8 and is always taken.
  The return at 0x10009ad4 has v0 = 0x10023028.

- `draw_frame__20DmconfMainFrameClassGv` in `usr/gfx/dmconf` at 0x10009ae0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009ae0-0x10009d1c (572 bytes).
  It occupies 572 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x10009b0c, `lw` at 0x10009cc0, `lw` at 0x10009cd8.
  The `lw` at 0x10009b8c loads 4 bytes from ret(XLoadQueryFont) +0x14.
  The `lw` at 0x10009b98 loads 4 bytes from ret(XLoadQueryFont) +0x18.
  The `lw` at 0x10009bb8 loads 4 bytes from ret(XLoadQueryFont) +0x4.
  The `lwc1` at 0x10009bfc loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lwc1` at 0x10009c04 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lwc1` at 0x10009c0c loads 4 bytes from a0 (arg0 at entry) +0x8c.
  The `lw` at 0x10009c54 loads 4 bytes from sym(combination) +0x354.
  The `lw` at 0x10009c70 loads 4 bytes from sym(combination) +0x358.
  The `jalr` at 0x10009b14 calls XtDisplay with a0=[a0+56], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10009b34 calls XLoadQueryFont with a0=ret(XtDisplay), a1=0x100204b0, a2=?, a3=?.
  The `jalr` at 0x10009b70 calls fprintf with a0=sym(__iob)+32, a1=0x100204d8, a2=0x100204b0, a3=?.
  The `jalr` at 0x10009b80 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009bd4 calls glXUseXFont with a0=[ret(XLoadQueryFont)+4], a1=([ret(XLoadQueryFont)+20] << 0x8), a2=?, a3=0x1000, a4=[ret(XLoadQueryFont)+20].
  The `jalr` at 0x10009be8 calls XFreeFont with a0=ret(XtDisplay), a1=ret(XLoadQueryFont), a2=?, a3=?.
  The `jalr` at 0x10009c18 calls glClearColor with a0=?, a1=?, a2=?, a3=?, a6=a0 at entry (arg0), a7=a0 at entry (arg0); fp f12=[a0+132], f13=[a0+136], f14=[a0+140], f15=0x3f800000.
  The `jalr` at 0x10009c28 calls glClear with a0=0x4000, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009c38 calls glMatrixMode with a0=0x1701, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009c44 calls glLoadIdentity with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009c88 calls gluOrtho2D with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009c98 calls glMatrixMode with a0=0x1700, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009ca4 calls glLoadIdentity with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009cb4 calls glListBase with a0=0x1000, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009cc8 calls XtDisplay with a0=[a0+56], a1=?, a2=?, a3=?.
  The `jalr` at 0x10009ce0 calls XtWindow with a0=[a0+56], a1=?, a2=?, a3=?.
  The `jalr` at 0x10009cf8 calls glXSwapBuffers with a0=ret(XtDisplay), a1=ret(XtWindow), a2=?, a3=?.
  The `bne` branch at 0x10009b00 targets 0x10009bf8, is taken when at(=[0x100249a0]) != 0, and falls through when at(=[0x100249a0]) == 0.
  The `bne` branch at 0x10009b4c targets 0x10009b88, is taken when a2(=ret(XLoadQueryFont)) != 0, and falls through when a2(=ret(XLoadQueryFont)) == 0.
  The `beq` branch at 0x10009d00 targets 0x10009d08 and is always taken.
  The return at 0x10009d14 has v0 = ret(glXSwapBuffers).

- `__ct__22DmconfMainFrameClassUIGPCcP10_WidgetRec` in `usr/gfx/dmconf` at 0x1000a090 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000a090-0x1000a114 (132 bytes).
  It occupies 132 bytes.
  The `sw` at 0x1000a0d0 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1000a0c0 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1000a0e0 calls create__22DmconfMainFrameClassUIGP10_WidgetRec [0x1000a230] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The return at 0x1000a0f8 has v0 = a0.
  The instructions from 0x1000a100 to 0x1000a110 are not reached by any path from the entry, and their branches are not listed.

- `__ct__22DmconfMainFrameClassUIGPCc` in `usr/gfx/dmconf` at 0x1000a120 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000a120-0x1000a18c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x1000a15c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1000a14c calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1000a170 has v0 = a0.
  The instructions from 0x1000a178 to 0x1000a188 are not reached by any path from the entry, and their branches are not listed.

- `__dt__22DmconfMainFrameClassUIGv` in `usr/gfx/dmconf` at 0x1000a190 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000a190-0x1000a224 (148 bytes).
  It occupies 148 bytes.
  The `sw` at 0x1000a1c4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1000a1d4 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000a1f4 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1000a1b4 targets 0x1000a1fc, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x1000a1e4 targets 0x1000a1fc, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x1000a208 has v0 = one of 0x21d78, ret(__dt__11VkComponentGv), ret(__dl__GPv).
  The instructions from 0x1000a210 to 0x1000a220 are not reached by any path from the entry, and their branches are not listed.

- `create__22DmconfMainFrameClassUIGP10_WidgetRec` in `usr/gfx/dmconf` at 0x1000a230 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000a230-0x1000b084 (3668 bytes).
  It occupies 3668 bytes.
  The `lw` at 0x1000a270 loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from sym(xmFrameWidgetClass) +0x0, including `lw` at 0x1000a278, `lw` at 0x1000ac88.
  The `sw` at 0x1000a2ac stores 4 bytes to a0 (arg0 at entry) +0x24.
  The `sw` at 0x1000a2b4 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `lw` at 0x1000a2d4 loads 4 bytes from sym(xmFormWidgetClass) +0x0.
  The `lw` at 0x1000a2dc loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `sw` at 0x1000a320 stores 4 bytes to a0 (arg0 at entry) +0x20.
  2 such `lw` accesses load 4 bytes from sym(xmPushButtonWidgetClass) +0x0, including `lw` at 0x1000a330, `lw` at 0x1000a658.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x1000a338, `lw` at 0x1000a458, `lw` at 0x1000a564.
  The `sw` at 0x1000a41c stores 4 bytes to a0 (arg0 at entry) +0x28.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x1000a424, `lw` at 0x1000aebc.
  3 such `lw` accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0, including `lw` at 0x1000a450, `lw` at 0x1000a55c, `lw` at 0x1000a778.
  The `sw` at 0x1000a54c stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `sw` at 0x1000a648 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `sw` at 0x1000a744 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3c, including `lw` at 0x1000a74c, `lw` at 0x1000acf0, `lw` at 0x1000af44.
  The `sw` at 0x1000a854 stores 4 bytes to a0 (arg0 at entry) +0x44.
  The `lw` at 0x1000a864 loads 4 bytes from sym(xmTextFieldWidgetClass) +0x0.
  The `lw` at 0x1000a8b8 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `sw` at 0x1000a958 stores 4 bytes to a0 (arg0 at entry) +0x40.
  The `sw` at 0x1000a9d8 stores 4 bytes to a0 (arg0 at entry) +0x48.
  14 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1000a9e0, `lw` at 0x1000aa14, `lw` at 0x1000aa48.
  The `sw` at 0x1000aa0c stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `sw` at 0x1000aa40 stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `sw` at 0x1000aa74 stores 4 bytes to a0 (arg0 at entry) +0x4c.
  The `sw` at 0x1000aaa8 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `sw` at 0x1000aadc stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x1000ab10 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x1000ab44 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `sw` at 0x1000ab78 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0x1000abac stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0x1000abe0 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sw` at 0x1000ac14 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `sw` at 0x1000ac48 stores 4 bytes to a0 (arg0 at entry) +0x70.
  The `sw` at 0x1000ac7c stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sw` at 0x1000ada4 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `lw` at 0x1000adb4 loads 4 bytes from sym(glwMDrawingAreaWidgetClass) +0x0.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x34, including `lw` at 0x1000adbc, `lw` at 0x1000aecc, `lw` at 0x1000aef4.
  The `sw` at 0x1000ae24 stores 4 bytes to a0 (arg0 at entry) +0x38.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x1000ae2c, `lw` at 0x1000ae50, `lw` at 0x1000ae74.
  The `lw` at 0x1000aee4 loads 4 bytes from a0 (arg0 at entry) +0x30.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x1000af04, `lw` at 0x1000af1c.
  The `lw` at 0x1000af54 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jalr` at 0x1000a264 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultDmconfMainFrameClassUIResources__22DmconfMainFrameClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x1000a294 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFrameWidgetClass)], a2=a1 at entry (arg1), a3=sym(_XmStrings)+9636, a4=0x5, a5=0x0.
  The `jalr` at 0x1000a2c0 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=ret(XtVaCreateWidget), a2=a0 at entry (arg0), a3=a0 at entry (arg0).
  The `jalr` at 0x1000a310 calls XtVaCreateManagedWidget with a0=0x10020510, a1=[sym(xmFormWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+9052, a4=0x1, a5=sym(XtStrings)+872, a6=0x301, a7=sym(XtStrings)+234.
  The `jalr` at 0x1000a40c calls XtVaCreateManagedWidget with a0=0x10020520, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+32], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1000a43c calls XtAddCallback with a0=[a0+40], a1=sym(_XmStrings)+4683, a2=sym(doDownloadButtonCallback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1000a53c calls XtVaCreateManagedWidget with a0=0x10020530, a1=[sym(xmLabelWidgetClass)], a2=[a0+32], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1000a638 calls XtVaCreateManagedWidget with a0=0x10020548, a1=[sym(xmLabelWidgetClass)], a2=[a0+32], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1000a734 calls XtVaCreateManagedWidget with a0=0x10020558, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+32], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1000a764 calls XtAddCallback with a0=[a0+60], a1=sym(_XmStrings)+4683, a2=sym(doOdyBrowseButtonCallback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1000a844 calls XtVaCreateManagedWidget with a0=0x10020568, a1=[sym(xmLabelWidgetClass)], a2=[a0+32], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1000a948 calls XtVaCreateManagedWidget with a0=0x10020578, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+32], a3=sym(_XmStrings)+10165, a4=0x1, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x1000a968 calls __nw__GUi with a0=0x4c, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1000a9b0 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+32], a2=0x10020588, a3=0x0, a4=0x0.
  The `jalr` at 0x1000a9fc calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x100205a0, a2=sym(doDenaliFormat1080I5994Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000aa30 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x100205c0, a2=sym(doDenaliFormat1080I60Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000aa64 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x100205e0, a2=sym(doDenaliFormat1080I50Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000aa98 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020600, a2=sym(doDenaliFormat720P60Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000aacc calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020620, a2=sym(doDenaliFormat720P60Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000ab00 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020640, a2=sym(doDenaliFormat1080P2398Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000ab34 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020660, a2=sym(doDenaliFormat1080P24Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000ab68 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020680, a2=sym(doDenaliFormat1080P25Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000ab9c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x100206a0, a2=sym(doDenaliFormat1080psf24Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000abd0 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x100206c0, a2=sym(doDenaliFormat1080psf2398Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000ac04 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x100206e0, a2=sym(doDenaliFormat1080psf25Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000ac38 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020700, a2=sym(doDenaliFormat525I5994Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000ac6c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020720, a2=sym(doDenaliFormat625I50Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000ad94 calls XtVaCreateManagedWidget with a0=0x10024510, a1=[sym(xmFrameWidgetClass)], a2=[a0+32], a3=sym(_XmStrings)+9636, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1000ae14 calls XtVaCreateManagedWidget with a0=0x10020740, a1=[sym(glwMDrawingAreaWidgetClass)], a2=[a0+52], a3=0x10024518, a4=0x1, a5=0x10020750, a6=0x1, a7=0x10020760.
  The `jalr` at 0x1000ae44 calls XtAddCallback with a0=[a0+56], a1=0x10020778, a2=sym(ginitCallback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1000ae68 calls XtAddCallback with a0=[a0+56], a1=0x10020788, a2=sym(inputCallback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1000ae8c calls XtAddCallback with a0=[a0+56], a1=0x10020798, a2=sym(resizeCallback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1000aeb0 calls XtAddCallback with a0=[a0+56], a1=0x100207a8, a2=sym(exposeCallback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1000aed8 calls XtVaSetValues with a0=[a0+40], a1=sym(_XmStrings)+10305, a2=[a0+52], a3=0x0.
  The `jalr` at 0x1000af10 calls XtVaSetValues with a0=[a0+48], a1=sym(_XmStrings)+10305, a2=[a0+52], a3=sym(_XmStrings)+7562, a4=[a0+44], a5=0x0.
  The `jalr` at 0x1000af38 calls XtVaSetValues with a0=[a0+44], a1=sym(_XmStrings)+10305, a2=[a0+52], a3=0x0.
  The `jalr` at 0x1000af60 calls XtVaSetValues with a0=[a0+60], a1=sym(_XmStrings)+7562, a2=[a0+64], a3=0x0.
  The `jalr` at 0x1000af74 calls baseWidget__10VkMenuItemCGv with a0=[a0+72], a1=?, a2=?, a3=?.
  The `jalr` at 0x1000b054 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x1, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `beq` branch at 0x1000a980 targets 0x1000a9cc, is taken when a3(=ret(__nw__GUi)) == 0, and falls through when a3(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1000a9c4 targets 0x1000a9d0 and is always taken.
  The return at 0x1000b068 has v0 = ret(XtVaSetValues).
  The instructions from 0x1000b070 to 0x1000b080 are not reached by any path from the entry, and their branches are not listed.

- `className__22DmconfMainFrameClassUIGv` in `usr/gfx/dmconf` at 0x1000b090 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b090-0x1000b0d0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x1000b0a8 loads 4 bytes from abs 0x10023f54.
  The `beq` branch at 0x1000b0b4 targets 0x1000b0bc and is always taken.
  The return at 0x1000b0c8 has v0 = 0x100207b8.

- `doDenaliFormat1080I50__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b0d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b0d0-0x1000b0fc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b0e4 targets 0x1000b0ec and is always taken.
  The return at 0x1000b0f4 has v0 = ?.

- `doDenaliFormat1080I5994__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b100 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b100-0x1000b12c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b114 targets 0x1000b11c and is always taken.
  The return at 0x1000b124 has v0 = ?.

- `doDenaliFormat1080I60__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b130 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b130-0x1000b15c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b144 targets 0x1000b14c and is always taken.
  The return at 0x1000b154 has v0 = ?.

- `doDenaliFormat1080P2398__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b160 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b160-0x1000b18c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b174 targets 0x1000b17c and is always taken.
  The return at 0x1000b184 has v0 = ?.

- `doDenaliFormat1080P24__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b190 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b190-0x1000b1bc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b1a4 targets 0x1000b1ac and is always taken.
  The return at 0x1000b1b4 has v0 = ?.

- `doDenaliFormat1080P25__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b1c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b1c0-0x1000b1ec (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b1d4 targets 0x1000b1dc and is always taken.
  The return at 0x1000b1e4 has v0 = ?.

- `doDenaliFormat1080psf2398__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b1f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b1f0-0x1000b21c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b204 targets 0x1000b20c and is always taken.
  The return at 0x1000b214 has v0 = ?.

- `doDenaliFormat1080psf24__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b220 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b220-0x1000b24c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b234 targets 0x1000b23c and is always taken.
  The return at 0x1000b244 has v0 = ?.

- `doDenaliFormat1080psf25__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b250 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b250-0x1000b27c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b264 targets 0x1000b26c and is always taken.
  The return at 0x1000b274 has v0 = ?.

- `doDenaliFormat525I5994__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b280 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b280-0x1000b2ac (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b294 targets 0x1000b29c and is always taken.
  The return at 0x1000b2a4 has v0 = ?.

- `doDenaliFormat625I50__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b2b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b2b0-0x1000b2dc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b2c4 targets 0x1000b2cc and is always taken.
  The return at 0x1000b2d4 has v0 = ?.

- `doDenaliFormat720P60__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b2e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b2e0-0x1000b30c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b2f4 targets 0x1000b2fc and is always taken.
  The return at 0x1000b304 has v0 = ?.

- `doDownloadButton__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b310 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b310-0x1000b33c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b324 targets 0x1000b32c and is always taken.
  The return at 0x1000b334 has v0 = ?.

- `doOdyBrowseButton__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b340 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b340-0x1000b36c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b354 targets 0x1000b35c and is always taken.
  The return at 0x1000b364 has v0 = ?.

- `expose__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b370 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b370-0x1000b39c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b384 targets 0x1000b38c and is always taken.
  The return at 0x1000b394 has v0 = ?.

- `ginit__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b3a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b3a0-0x1000b3cc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b3b4 targets 0x1000b3bc and is always taken.
  The return at 0x1000b3c4 has v0 = ?.

- `input__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b3d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b3d0-0x1000b3fc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b3e4 targets 0x1000b3ec and is always taken.
  The return at 0x1000b3f4 has v0 = ?.

- `resize__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b400 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b400-0x1000b42c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b414 targets 0x1000b41c and is always taken.
  The return at 0x1000b424 has v0 = ?.

- `doDenaliFormat1080I50Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000b430 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b430-0x1000b4a8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000b460, `lw` at 0x1000b47c.
  The `lw` at 0x1000b464 loads 4 bytes from [a1+8] +0x9c.
  The `lw` at 0x1000b480 loads 4 bytes from [a1+8] +0xa4.
  The `jalr` at 0x1000b484 calls (unknown callee) with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x20ad8.
  The `beq` branch at 0x1000b48c targets 0x1000b494 and is always taken.
  The return at 0x1000b4a0 has v0 = ret(?).

- `doDenaliFormat1080I5994Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000b4b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b4b0-0x1000b528 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000b4e0, `lw` at 0x1000b4fc.
  The `lw` at 0x1000b4e4 loads 4 bytes from [a1+8] +0xa8.
  The `lw` at 0x1000b500 loads 4 bytes from [a1+8] +0xb0.
  The `jalr` at 0x1000b504 calls (unknown callee) with a0=([[a1+8]+168] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x20a58.
  The `beq` branch at 0x1000b50c targets 0x1000b514 and is always taken.
  The return at 0x1000b520 has v0 = ret(?).

- `doDenaliFormat1080I60Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000b530 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b530-0x1000b5a8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000b560, `lw` at 0x1000b57c.
  The `lw` at 0x1000b564 loads 4 bytes from [a1+8] +0xb4.
  The `lw` at 0x1000b580 loads 4 bytes from [a1+8] +0xbc.
  The `jalr` at 0x1000b584 calls (unknown callee) with a0=([[a1+8]+180] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x209d8.
  The `beq` branch at 0x1000b58c targets 0x1000b594 and is always taken.
  The return at 0x1000b5a0 has v0 = ret(?).

- `doDenaliFormat1080P2398Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000b5b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b5b0-0x1000b628 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000b5e0, `lw` at 0x1000b5fc.
  The `lw` at 0x1000b5e4 loads 4 bytes from [a1+8] +0xc0.
  The `lw` at 0x1000b600 loads 4 bytes from [a1+8] +0xc8.
  The `jalr` at 0x1000b604 calls (unknown callee) with a0=([[a1+8]+192] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x20958.
  The `beq` branch at 0x1000b60c targets 0x1000b614 and is always taken.
  The return at 0x1000b620 has v0 = ret(?).

- `doDenaliFormat1080P24Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000b630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b630-0x1000b6a8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000b660, `lw` at 0x1000b67c.
  The `lw` at 0x1000b664 loads 4 bytes from [a1+8] +0xcc.
  The `lw` at 0x1000b680 loads 4 bytes from [a1+8] +0xd4.
  The `jalr` at 0x1000b684 calls (unknown callee) with a0=([[a1+8]+204] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x208d8.
  The `beq` branch at 0x1000b68c targets 0x1000b694 and is always taken.
  The return at 0x1000b6a0 has v0 = ret(?).

- `doDenaliFormat1080P25Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000b6b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b6b0-0x1000b728 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000b6e0, `lw` at 0x1000b6fc.
  The `lw` at 0x1000b6e4 loads 4 bytes from [a1+8] +0xd8.
  The `lw` at 0x1000b700 loads 4 bytes from [a1+8] +0xe0.
  The `jalr` at 0x1000b704 calls (unknown callee) with a0=([[a1+8]+216] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x20858.
  The `beq` branch at 0x1000b70c targets 0x1000b714 and is always taken.
  The return at 0x1000b720 has v0 = ret(?).

- `doDenaliFormat1080psf2398Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000b730 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b730-0x1000b7a8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000b760, `lw` at 0x1000b77c.
  The `lw` at 0x1000b764 loads 4 bytes from [a1+8] +0xe4.
  The `lw` at 0x1000b780 loads 4 bytes from [a1+8] +0xec.
  The `jalr` at 0x1000b784 calls (unknown callee) with a0=([[a1+8]+228] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x207d8.
  The `beq` branch at 0x1000b78c targets 0x1000b794 and is always taken.
  The return at 0x1000b7a0 has v0 = ret(?).

- `doDenaliFormat1080psf24Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000b7b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b7b0-0x1000b828 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000b7e0, `lw` at 0x1000b7fc.
  The `lw` at 0x1000b7e4 loads 4 bytes from [a1+8] +0xf0.
  The `lw` at 0x1000b800 loads 4 bytes from [a1+8] +0xf8.
  The `jalr` at 0x1000b804 calls (unknown callee) with a0=([[a1+8]+240] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x20758.
  The `beq` branch at 0x1000b80c targets 0x1000b814 and is always taken.
  The return at 0x1000b820 has v0 = ret(?).

- `doDenaliFormat1080psf25Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000b830 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b830-0x1000b8a8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000b860, `lw` at 0x1000b87c.
  The `lw` at 0x1000b864 loads 4 bytes from [a1+8] +0xfc.
  The `lw` at 0x1000b880 loads 4 bytes from [a1+8] +0x104.
  The `jalr` at 0x1000b884 calls (unknown callee) with a0=([[a1+8]+252] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x206d8.
  The `beq` branch at 0x1000b88c targets 0x1000b894 and is always taken.
  The return at 0x1000b8a0 has v0 = ret(?).

- `doDenaliFormat525I5994Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000b8b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b8b0-0x1000b928 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000b8e0, `lw` at 0x1000b8fc.
  The `lw` at 0x1000b8e4 loads 4 bytes from [a1+8] +0x108.
  The `lw` at 0x1000b900 loads 4 bytes from [a1+8] +0x110.
  The `jalr` at 0x1000b904 calls (unknown callee) with a0=([[a1+8]+264] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x20658.
  The `beq` branch at 0x1000b90c targets 0x1000b914 and is always taken.
  The return at 0x1000b920 has v0 = ret(?).

- `doDenaliFormat625I50Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000b930 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b930-0x1000b9a8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000b960, `lw` at 0x1000b97c.
  The `lw` at 0x1000b964 loads 4 bytes from [a1+8] +0x114.
  The `lw` at 0x1000b980 loads 4 bytes from [a1+8] +0x11c.
  The `jalr` at 0x1000b984 calls (unknown callee) with a0=([[a1+8]+276] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x205d8.
  The `beq` branch at 0x1000b98c targets 0x1000b994 and is always taken.
  The return at 0x1000b9a0 has v0 = ret(?).

- `doDenaliFormat720P60Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000b9b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b9b0-0x1000ba28 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000b9e0, `lw` at 0x1000b9fc.
  The `lw` at 0x1000b9e4 loads 4 bytes from [a1+8] +0x120.
  The `lw` at 0x1000ba00 loads 4 bytes from [a1+8] +0x128.
  The `jalr` at 0x1000ba04 calls (unknown callee) with a0=([[a1+8]+288] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x20558.
  The `beq` branch at 0x1000ba0c targets 0x1000ba14 and is always taken.
  The return at 0x1000ba20 has v0 = ret(?).

- `doDownloadButtonCallback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000ba30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000ba30-0x1000baa8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000ba60, `lw` at 0x1000ba7c.
  The `lw` at 0x1000ba64 loads 4 bytes from [a1+8] +0x12c.
  The `lw` at 0x1000ba80 loads 4 bytes from [a1+8] +0x134.
  The `jalr` at 0x1000ba84 calls (unknown callee) with a0=([[a1+8]+300] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x204d8.
  The `beq` branch at 0x1000ba8c targets 0x1000ba94 and is always taken.
  The return at 0x1000baa0 has v0 = ret(?).

- `doOdyBrowseButtonCallback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000bab0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000bab0-0x1000bb28 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000bae0, `lw` at 0x1000bafc.
  The `lw` at 0x1000bae4 loads 4 bytes from [a1+8] +0x138.
  The `lw` at 0x1000bb00 loads 4 bytes from [a1+8] +0x140.
  The `jalr` at 0x1000bb04 calls (unknown callee) with a0=([[a1+8]+312] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x20458.
  The `beq` branch at 0x1000bb0c targets 0x1000bb14 and is always taken.
  The return at 0x1000bb20 has v0 = ret(?).

- `exposeCallback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000bb30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000bb30-0x1000bba8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000bb60, `lw` at 0x1000bb7c.
  The `lw` at 0x1000bb64 loads 4 bytes from [a1+8] +0x144.
  The `lw` at 0x1000bb80 loads 4 bytes from [a1+8] +0x14c.
  The `jalr` at 0x1000bb84 calls (unknown callee) with a0=([[a1+8]+324] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x203d8.
  The `beq` branch at 0x1000bb8c targets 0x1000bb94 and is always taken.
  The return at 0x1000bba0 has v0 = ret(?).

- `ginitCallback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000bbb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000bbb0-0x1000bc28 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000bbe0, `lw` at 0x1000bbfc.
  The `lw` at 0x1000bbe4 loads 4 bytes from [a1+8] +0x150.
  The `lw` at 0x1000bc00 loads 4 bytes from [a1+8] +0x158.
  The `jalr` at 0x1000bc04 calls (unknown callee) with a0=([[a1+8]+336] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x20358.
  The `beq` branch at 0x1000bc0c targets 0x1000bc14 and is always taken.
  The return at 0x1000bc20 has v0 = ret(?).

- `inputCallback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000bc30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000bc30-0x1000bca8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000bc60, `lw` at 0x1000bc7c.
  The `lw` at 0x1000bc64 loads 4 bytes from [a1+8] +0x15c.
  The `lw` at 0x1000bc80 loads 4 bytes from [a1+8] +0x164.
  The `jalr` at 0x1000bc84 calls (unknown callee) with a0=([[a1+8]+348] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x202d8.
  The `beq` branch at 0x1000bc8c targets 0x1000bc94 and is always taken.
  The return at 0x1000bca0 has v0 = ret(?).

- `resizeCallback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000bcb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000bcb0-0x1000bd28 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000bce0, `lw` at 0x1000bcfc.
  The `lw` at 0x1000bce4 loads 4 bytes from [a1+8] +0x168.
  The `lw` at 0x1000bd00 loads 4 bytes from [a1+8] +0x170.
  The `jalr` at 0x1000bd04 calls (unknown callee) with a0=([[a1+8]+360] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x20258.
  The `beq` branch at 0x1000bd0c targets 0x1000bd14 and is always taken.
  The return at 0x1000bd20 has v0 = ret(?).

- `__ct__17DmconfWindowClassGPCcP3ArgUi` in `usr/gfx/dmconf` at 0x1000bd50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000bd50-0x1000c0f8 (936 bytes).
  It occupies 936 bytes.
  The `sw` at 0x1000bd9c stores 4 bytes to a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x1000be00, `lw` at 0x1000be14.
  The `lw` at 0x1000be04 loads 4 bytes from [a0+8] +0xe4.
  The `lw` at 0x1000be18 loads 4 bytes from [a0+8] +0xec.
  The `sw` at 0x1000be60 stores 4 bytes to a0 (arg0 at entry) +0x44.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000be68, `lw` at 0x1000beb0.
  The `sw` at 0x1000bee0 stores 4 bytes to a0 (arg0 at entry) +0x48.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1000bee8, `lw` at 0x1000bf1c, `lw` at 0x1000bf50.
  The `sw` at 0x1000bf14 stores 4 bytes to a0 (arg0 at entry) +0x4c.
  The `sw` at 0x1000bf48 stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `sw` at 0x1000bf7c stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `sw` at 0x1000bfb0 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x1000bfd4 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `sw` at 0x1000c008 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0x1000c03c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sw` at 0x1000c060 stores 4 bytes to a0 (arg0 at entry) +0x68.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x68, including `lw` at 0x1000c068, `lw` at 0x1000c09c.
  The `sw` at 0x1000c094 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0x1000c0c8 stores 4 bytes to a0 (arg0 at entry) +0x70.
  The `jalr` at 0x1000bd8c calls __ct__8VkWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000bda8 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000bdc4 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultDmconfWindowClassResources__17DmconfWindowClass), a3=?.
  The `jalr` at 0x1000bdd8 calls __nw__GUi with a0=0xc0, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000be1c calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1000be38 calls __ct__20DmconfMainFrameClassGPCcP10_WidgetRec [0x10008a80] with a0=ret(__nw__GUi), a1=0x10020c30, a2=ret(?), a3=?.
  The `jalr` at 0x1000be70 calls baseWidget__11VkComponentCGv with a0=[a0+68], a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1000bea0 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x307, a3=sym(XtStrings)+234, a4=0x21e, a5=0x0.
  The `jalr` at 0x1000beb8 calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+68], a2=?, a3=?.
  The `jalr` at 0x1000bed0 calls addMenuPane__8VkWindowGPCc with a0=a0 at entry (arg0), a1=0x10020c48, a2=?, a3=?.
  The `jalr` at 0x1000bf04 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020c58, a2=sym(newFileCallback__17DmconfWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000bf38 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020c68, a2=sym(openFileCallback__17DmconfWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000bf6c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020c78, a2=sym(saveCallback__17DmconfWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000bfa0 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020c88, a2=sym(saveasCallback__17DmconfWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000bfc4 calls addSeparator__6VkMenuGi with a0=[a0+72], a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x1000bff8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020c98, a2=sym(closeCallback__17DmconfWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000c02c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020ca8, a2=sym(quitCallback__17DmconfWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000c050 calls addMenuPane__8VkWindowGPCc with a0=a0 at entry (arg0), a1=0x10020cb8, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1000c084 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+104], a1=0x10020cc8, a2=sym(doDmxPropertiesButtonCallback__17DmconfWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000c0b8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+104], a1=0x10020ce0, a2=sym(doOdyPropertiesButtonCallback__17DmconfWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `beq` branch at 0x1000bdec targets 0x1000be54, is taken when a0(=ret(__nw__GUi)) == 0, and falls through when a0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1000be4c targets 0x1000be58 and is always taken.
  The return at 0x1000c0dc has v0 = a0.
  The instructions from 0x1000c0e4 to 0x1000c0f4 are not reached by any path from the entry, and their branches are not listed.

- `__dt__17DmconfWindowClassGv` in `usr/gfx/dmconf` at 0x1000c100 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c100-0x1000c1dc (220 bytes).
  It occupies 220 bytes.
  The `sw` at 0x1000c134 stores 4 bytes to a0 (arg0 at entry) +0x8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000c13c, `lw` at 0x1000c14c, `lw` at 0x1000c15c.
  2 such `lw` accesses load 4 bytes from [a0+68] +0x8, including `lw` at 0x1000c150, `lw` at 0x1000c170.
  The `lw` at 0x1000c154 loads 4 bytes from [[a0+68]+8] +0xc.
  The `lw` at 0x1000c174 loads 4 bytes from [[a0+68]+8] +0x14.
  The `jalr` at 0x1000c178 calls (unknown callee) with a0=([[[a0+68]+8]+12] + [a0+68]), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000c18c calls __dt__8VkWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1000c1ac calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1000c124 targets 0x1000c1b4, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x1000c140 targets 0x1000c180, is taken when a1(=[a0+68]) == 0, and falls through when a1(=[a0+68]) != 0.
  The `beq` branch at 0x1000c19c targets 0x1000c1b4, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x1000c1c0 has v0 = one of 0x1fe08, ret(__dt__8VkWindowGv), ret(__dl__GPv).
  The instructions from 0x1000c1c8 to 0x1000c1d8 are not reached by any path from the entry, and their branches are not listed.

- `className__17DmconfWindowClassGv` in `usr/gfx/dmconf` at 0x1000c1e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c1e0-0x1000c220 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x1000c1f8 loads 4 bytes from abs 0x10023f54.
  The `beq` branch at 0x1000c204 targets 0x1000c20c and is always taken.
  The return at 0x1000c218 has v0 = 0x10020cf8.

- `okToQuit__17DmconfWindowClassGv` in `usr/gfx/dmconf` at 0x1000c220 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c220-0x1000c298 (120 bytes).
  It occupies 120 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000c240, `lw` at 0x1000c250, `lw` at 0x1000c25c.
  2 such `lw` accesses load 4 bytes from [a0+68] +0x8, including `lw` at 0x1000c244, `lw` at 0x1000c260.
  The `lw` at 0x1000c248 loads 4 bytes from [[a0+68]+8] +0x48.
  The `lw` at 0x1000c264 loads 4 bytes from [[a0+68]+8] +0x50.
  The `jalr` at 0x1000c268 calls (unknown callee) with a0=([[[a0+68]+8]+72] + [a0+68]), a1=[a0+68], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1000c278 targets 0x1000c280 and is always taken.
  The return at 0x1000c290 has v0 = ret(?).

- `close__17DmconfWindowClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000c2a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c2a0-0x1000c348 (168 bytes).
  It occupies 168 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x1000c2c8, `lw` at 0x1000c2dc, `lw` at 0x1000c304.
  The `lw` at 0x1000c2cc loads 4 bytes from [a0+8] +0x48.
  The `lw` at 0x1000c2e0 loads 4 bytes from [a0+8] +0x50.
  The `lw` at 0x1000c308 loads 4 bytes from [a0+8] +0xc.
  The `lw` at 0x1000c320 loads 4 bytes from [a0+8] +0x14.
  The `jalr` at 0x1000c2e4 calls (unknown callee) with a0=([[a0+8]+72] + a0), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1fc68.
  The `jalr` at 0x1000c324 calls (unknown callee) with a0=([[a0+8]+12] + a0), a1=0x3, a2=?, a3=?, a4=a0 at entry (arg0).
  The `beq` branch at 0x1000c2ec targets 0x1000c32c, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x1000c2f8 targets 0x1000c32c, is taken when a4(=a0) == 0, and falls through when a4(=a0) != 0.
  The `beq` branch at 0x1000c32c targets 0x1000c334 and is always taken.
  The return at 0x1000c340 has v0 = ret(?).

- `doDmxPropertiesButton__17DmconfWindowClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000c350 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c350-0x1000c3d4 (132 bytes).
  It occupies 132 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000c380, `lw` at 0x1000c390, `lw` at 0x1000c3a4.
  2 such `lw` accesses load 4 bytes from [a0+68] +0x8, including `lw` at 0x1000c384, `lw` at 0x1000c3a8.
  The `lw` at 0x1000c388 loads 4 bytes from [[a0+68]+8] +0x174.
  The `lw` at 0x1000c3ac loads 4 bytes from [[a0+68]+8] +0x17c.
  The `jalr` at 0x1000c3b0 calls (unknown callee) with a0=([[[a0+68]+8]+372] + [a0+68]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1fbb8.
  The `beq` branch at 0x1000c3b8 targets 0x1000c3c0 and is always taken.
  The return at 0x1000c3cc has v0 = ret(?).

- `doOdyPropertiesButton__17DmconfWindowClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000c3e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c3e0-0x1000c464 (132 bytes).
  It occupies 132 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000c410, `lw` at 0x1000c420, `lw` at 0x1000c434.
  2 such `lw` accesses load 4 bytes from [a0+68] +0x8, including `lw` at 0x1000c414, `lw` at 0x1000c438.
  The `lw` at 0x1000c418 loads 4 bytes from [[a0+68]+8] +0x180.
  The `lw` at 0x1000c43c loads 4 bytes from [[a0+68]+8] +0x188.
  The `jalr` at 0x1000c440 calls (unknown callee) with a0=([[[a0+68]+8]+384] + [a0+68]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1fb28.
  The `beq` branch at 0x1000c448 targets 0x1000c450 and is always taken.
  The return at 0x1000c45c has v0 = ret(?).

- `newFile__17DmconfWindowClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000c470 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c470-0x1000c4ec (124 bytes).
  It occupies 124 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000c4a0, `lw` at 0x1000c4b0, `lw` at 0x1000c4bc.
  2 such `lw` accesses load 4 bytes from [a0+68] +0x8, including `lw` at 0x1000c4a4, `lw` at 0x1000c4c0.
  The `lw` at 0x1000c4a8 loads 4 bytes from [[a0+68]+8] +0x18c.
  The `lw` at 0x1000c4c4 loads 4 bytes from [[a0+68]+8] +0x194.
  The `jalr` at 0x1000c4c8 calls (unknown callee) with a0=([[[a0+68]+8]+396] + [a0+68]), a1=[a0+68], a2=a2 at entry (arg2), a3=0x1fa98.
  The `beq` branch at 0x1000c4d0 targets 0x1000c4d8 and is always taken.
  The return at 0x1000c4e4 has v0 = ret(?).

- `openFile__17DmconfWindowClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000c4f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c4f0-0x1000c5e8 (248 bytes).
  It occupies 248 bytes.
  2 such `lw` accesses load 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x8, including `lw` at 0x1000c524, `lw` at 0x1000c54c.
  The `lw` at 0x1000c528 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x108.
  The `lw` at 0x1000c550 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x110.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000c59c, `lw` at 0x1000c5ac, `lw` at 0x1000c5b8.
  2 such `lw` accesses load 4 bytes from [a0+68] +0x8, including `lw` at 0x1000c5a0, `lw` at 0x1000c5bc.
  The `lw` at 0x1000c5a4 loads 4 bytes from [[a0+68]+8] +0x198.
  The `lw` at 0x1000c5c0 loads 4 bytes from [[a0+68]+8] +0x1a0.
  The `jalr` at 0x1000c518 calls getTheFileSelectionDialog__Gv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000c554 calls (unknown callee) with a0=([[ret(getTheFileSelectionDialog__Gv)+8]+264] + ret(getTheFileSelectionDialog__Gv)), a1=0x0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1000c570 calls getTheFileSelectionDialog__Gv with a0=?, a1=0x1, a2=?, a3=?.
  The `jal` at 0x1000c588 calls (unnamed) [0x1000cbf0] with a0=ret(getTheFileSelectionDialog__Gv), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000c5c4 calls (unknown callee) with a0=([[[a0+68]+8]+408] + [a0+68]), a1=ret(0x1000cbf0), a2=[a0+68], a3=?.
  The `bne` branch at 0x1000c564 targets 0x1000c5cc, is taken when v0(=ret(?)) != a1(=0x1), and falls through when v0(=ret(?)) == a1(=0x1).
  The `beq` branch at 0x1000c5cc targets 0x1000c5d4 and is always taken.
  The return at 0x1000c5e0 has v0 = ret(?).

- `quit__17DmconfWindowClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000c5f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c5f0-0x1000c664 (116 bytes).
  It occupies 116 bytes.
  3 such `lw` accesses load 4 bytes from sym(theApplication) +0x0, including `lw` at 0x1000c618, `lw` at 0x1000c628, `lw` at 0x1000c634.
  2 such `lw` accesses load 4 bytes from [sym(theApplication)] +0x8, including `lw` at 0x1000c61c, `lw` at 0x1000c638.
  The `lw` at 0x1000c620 loads 4 bytes from [[sym(theApplication)]+8] +0xc0.
  The `lw` at 0x1000c63c loads 4 bytes from [[sym(theApplication)]+8] +0xc8.
  The `jalr` at 0x1000c640 calls (unknown callee) with a0=([[[sym(theApplication)]+8]+192] + [sym(theApplication)]), a1=[sym(theApplication)], a2=a2 at entry (arg2), a3=0x1f918.
  The `beq` branch at 0x1000c648 targets 0x1000c650 and is always taken.
  The return at 0x1000c65c has v0 = ret(?).

- `save__17DmconfWindowClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000c670 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c670-0x1000c6ec (124 bytes).
  It occupies 124 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000c6a0, `lw` at 0x1000c6b0, `lw` at 0x1000c6bc.
  2 such `lw` accesses load 4 bytes from [a0+68] +0x8, including `lw` at 0x1000c6a4, `lw` at 0x1000c6c0.
  The `lw` at 0x1000c6a8 loads 4 bytes from [[a0+68]+8] +0x1a4.
  The `lw` at 0x1000c6c4 loads 4 bytes from [[a0+68]+8] +0x1ac.
  The `jalr` at 0x1000c6c8 calls (unknown callee) with a0=([[[a0+68]+8]+420] + [a0+68]), a1=[a0+68], a2=a2 at entry (arg2), a3=0x1f898.
  The `beq` branch at 0x1000c6d0 targets 0x1000c6d8 and is always taken.
  The return at 0x1000c6e4 has v0 = ret(?).

- `saveas__17DmconfWindowClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000c6f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c6f0-0x1000c7e8 (248 bytes).
  It occupies 248 bytes.
  2 such `lw` accesses load 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x8, including `lw` at 0x1000c724, `lw` at 0x1000c74c.
  The `lw` at 0x1000c728 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x108.
  The `lw` at 0x1000c750 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x110.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000c79c, `lw` at 0x1000c7ac, `lw` at 0x1000c7b8.
  2 such `lw` accesses load 4 bytes from [a0+68] +0x8, including `lw` at 0x1000c7a0, `lw` at 0x1000c7bc.
  The `lw` at 0x1000c7a4 loads 4 bytes from [[a0+68]+8] +0x1b0.
  The `lw` at 0x1000c7c0 loads 4 bytes from [[a0+68]+8] +0x1b8.
  The `jalr` at 0x1000c718 calls getTheFileSelectionDialog__Gv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000c754 calls (unknown callee) with a0=([[ret(getTheFileSelectionDialog__Gv)+8]+264] + ret(getTheFileSelectionDialog__Gv)), a1=0x0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1000c770 calls getTheFileSelectionDialog__Gv with a0=?, a1=0x1, a2=?, a3=?.
  The `jal` at 0x1000c788 calls (unnamed) [0x1000cbf0] with a0=ret(getTheFileSelectionDialog__Gv), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000c7c4 calls (unknown callee) with a0=([[[a0+68]+8]+432] + [a0+68]), a1=ret(0x1000cbf0), a2=[a0+68], a3=?.
  The `bne` branch at 0x1000c764 targets 0x1000c7cc, is taken when v0(=ret(?)) != a1(=0x1), and falls through when v0(=ret(?)) == a1(=0x1).
  The `beq` branch at 0x1000c7cc targets 0x1000c7d4 and is always taken.
  The return at 0x1000c7e0 has v0 = ret(?).

- `closeCallback__17DmconfWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000c7f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c7f0-0x1000c868 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000c820, `lw` at 0x1000c83c.
  The `lw` at 0x1000c824 loads 4 bytes from [a1+8] +0x174.
  The `lw` at 0x1000c840 loads 4 bytes from [a1+8] +0x17c.
  The `jalr` at 0x1000c844 calls (unknown callee) with a0=([[a1+8]+372] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1f718.
  The `beq` branch at 0x1000c84c targets 0x1000c854 and is always taken.
  The return at 0x1000c860 has v0 = ret(?).

- `doDmxPropertiesButtonCallback__17DmconfWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000c870 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c870-0x1000c8e8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000c8a0, `lw` at 0x1000c8bc.
  The `lw` at 0x1000c8a4 loads 4 bytes from [a1+8] +0x180.
  The `lw` at 0x1000c8c0 loads 4 bytes from [a1+8] +0x188.
  The `jalr` at 0x1000c8c4 calls (unknown callee) with a0=([[a1+8]+384] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1f698.
  The `beq` branch at 0x1000c8cc targets 0x1000c8d4 and is always taken.
  The return at 0x1000c8e0 has v0 = ret(?).

- `doOdyPropertiesButtonCallback__17DmconfWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000c8f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c8f0-0x1000c968 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000c920, `lw` at 0x1000c93c.
  The `lw` at 0x1000c924 loads 4 bytes from [a1+8] +0x18c.
  The `lw` at 0x1000c940 loads 4 bytes from [a1+8] +0x194.
  The `jalr` at 0x1000c944 calls (unknown callee) with a0=([[a1+8]+396] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1f618.
  The `beq` branch at 0x1000c94c targets 0x1000c954 and is always taken.
  The return at 0x1000c960 has v0 = ret(?).

- `newFileCallback__17DmconfWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000c970 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c970-0x1000c9e8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000c9a0, `lw` at 0x1000c9bc.
  The `lw` at 0x1000c9a4 loads 4 bytes from [a1+8] +0x198.
  The `lw` at 0x1000c9c0 loads 4 bytes from [a1+8] +0x1a0.
  The `jalr` at 0x1000c9c4 calls (unknown callee) with a0=([[a1+8]+408] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1f598.
  The `beq` branch at 0x1000c9cc targets 0x1000c9d4 and is always taken.
  The return at 0x1000c9e0 has v0 = ret(?).

- `openFileCallback__17DmconfWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000c9f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c9f0-0x1000ca68 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000ca20, `lw` at 0x1000ca3c.
  The `lw` at 0x1000ca24 loads 4 bytes from [a1+8] +0x1a4.
  The `lw` at 0x1000ca40 loads 4 bytes from [a1+8] +0x1ac.
  The `jalr` at 0x1000ca44 calls (unknown callee) with a0=([[a1+8]+420] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1f518.
  The `beq` branch at 0x1000ca4c targets 0x1000ca54 and is always taken.
  The return at 0x1000ca60 has v0 = ret(?).

- `quitCallback__17DmconfWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000ca70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000ca70-0x1000cae8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000caa0, `lw` at 0x1000cabc.
  The `lw` at 0x1000caa4 loads 4 bytes from [a1+8] +0x1b0.
  The `lw` at 0x1000cac0 loads 4 bytes from [a1+8] +0x1b8.
  The `jalr` at 0x1000cac4 calls (unknown callee) with a0=([[a1+8]+432] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1f498.
  The `beq` branch at 0x1000cacc targets 0x1000cad4 and is always taken.
  The return at 0x1000cae0 has v0 = ret(?).

- `saveCallback__17DmconfWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000caf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000caf0-0x1000cb68 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000cb20, `lw` at 0x1000cb3c.
  The `lw` at 0x1000cb24 loads 4 bytes from [a1+8] +0x1bc.
  The `lw` at 0x1000cb40 loads 4 bytes from [a1+8] +0x1c4.
  The `jalr` at 0x1000cb44 calls (unknown callee) with a0=([[a1+8]+444] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1f418.
  The `beq` branch at 0x1000cb4c targets 0x1000cb54 and is always taken.
  The return at 0x1000cb60 has v0 = ret(?).

- `saveasCallback__17DmconfWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000cb70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000cb70-0x1000cbe8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000cba0, `lw` at 0x1000cbbc.
  The `lw` at 0x1000cba4 loads 4 bytes from [a1+8] +0x1c8.
  The `lw` at 0x1000cbc0 loads 4 bytes from [a1+8] +0x1d0.
  The `jalr` at 0x1000cbc4 calls (unknown callee) with a0=([[a1+8]+456] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1f398.
  The `beq` branch at 0x1000cbcc targets 0x1000cbd4 and is always taken.
  The return at 0x1000cbe0 has v0 = ret(?).

- `vfcGetDmxCombination` in `usr/gfx/dmconf` at 0x1000f740 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000f740-0x1000f918 (472 bytes).
  It occupies 472 bytes.
  The `lw` at 0x1000f77c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x1000f78c loads 4 bytes from a0 (arg0 at entry) +0x238.
  The `lbu` at 0x1000f7ac loads 1 byte from a0 (arg0 at entry) +0x34.
  The `lbu` at 0x1000f874 loads 1 byte from a1 (arg1 at entry) +0xff.
  The `jal` at 0x1000f770 calls vfcInitDmxCombination [0x10010120] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000f7c8 calls getcwd with a0=sp-1064, a1=0x400, a2=?, a3=?.
  The `jalr` at 0x1000f7dc calls strcat with a0=sp-1064, a1=0x10024652, a2=?, a3=?.
  The `jalr` at 0x1000f7f4 calls strcat with a0=sp-1064, a1=a0+52, a2=?, a3=?.
  The `jalr` at 0x1000f814 calls strcpy with a0=sp-1064, a1=a0+52, a2=?, a3=?.
  The `jal` at 0x1000f828 calls vfmtReadCmp1Combination [0x10013d10] with a0=sp-1064, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1000f894 calls vfmtReadCmp1OdyFormat [0x10013960] with a0=a1+255, a1=a1+888, a2=ret(vfmtReadCmp1Combination), a3=?, a7=[a1+255]:1.
  The `jalr` at 0x1000f8c0 calls sprintf with a0=sym(szErrorStr), a1=0x10021a30, a2=sp-1064, a3=ret(vfmtReadCmp1Combination), a4=0x1.
  The `jalr` at 0x1000f8e8 calls sprintf with a0=sym(szErrorStr), a1=0x10021a58, a2=a0+52, a3=ret(vfmtReadCmp1Combination), a4=0x1, a5=ret(vfmtReadCmp1Combination), a6=0x2.
  The `bne` branch at 0x1000f780 targets 0x1000f900, is taken when v0(=[a0]) != 0, and falls through when v0(=[a0]) == 0.
  The `beq` branch at 0x1000f798 targets 0x1000f7a8, is taken when v1(=[a0+568]) == a0(=0x3), and falls through when v1(=[a0+568]) != a0(=0x3).
  The `beq` branch at 0x1000f7a0 targets 0x1000f900 and is always taken.
  The `beq` branch at 0x1000f7b4 targets 0x1000f804, is taken when a0(=[a0+52]:1) == a1(=0x2f), and falls through when a0(=[a0+52]:1) != a1(=0x2f).
  The `beq` branch at 0x1000f7fc targets 0x1000f81c and is always taken.
  The `beq` branch at 0x1000f83c targets 0x1000f86c, is taken when a2(=ret(vfmtReadCmp1Combination)) == 0, and falls through when a2(=ret(vfmtReadCmp1Combination)) != 0.
  The `beq` branch at 0x1000f84c targets 0x1000f8ac, is taken when a3(=ret(vfmtReadCmp1Combination)) == a4(=0x1), and falls through when a3(=ret(vfmtReadCmp1Combination)) != a4(=0x1).
  The `beq` branch at 0x1000f85c targets 0x1000f8d0, is taken when a5(=ret(vfmtReadCmp1Combination)) == a6(=0x2), and falls through when a5(=ret(vfmtReadCmp1Combination)) != a6(=0x2).
  The `beq` branch at 0x1000f864 targets 0x1000f8f8 and is always taken.
  The `beq` branch at 0x1000f878 targets 0x1000f8a4, is taken when a7(=[a1+255]:1) == 0, and falls through when a7(=[a1+255]:1) != 0.
  The `beq` branch at 0x1000f8a4 targets 0x1000f8f8 and is always taken.
  The `beq` branch at 0x1000f8c8 targets 0x1000f8f8 and is always taken.
  The `beq` branch at 0x1000f8f0 targets 0x1000f8f8 and is always taken.
  The `beq` branch at 0x1000f8f8 targets 0x1000f900 and is always taken.
  The return at 0x1000f910 has v0 = ?.

- `vfcPutDmxCombination` in `usr/gfx/dmconf` at 0x1000f920 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000f920-0x1000ff5c (1596 bytes).
  It occupies 1596 bytes.
  The `lw` at 0x1000f94c loads 4 bytes from a0 (arg0 at entry) +0x234.
  10 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x23c, including `lw` at 0x1000f9a4, `lw` at 0x1000f9ec, `lw` at 0x1000fa58.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1740, including `lw` at 0x1000f9f4, `lw` at 0x1000fa64, `lw` at 0x1000fa90.
  2 such `lw` accesses load 4 bytes from [a0+572] +0x8c, including `lw` at 0x1000fa5c, `lw` at 0x1000fa88.
  The `lw` at 0x1000fa78 loads 4 bytes from ([[a0+572]+140] + ((([a0+5952] << 0x2) + [a0+5952]) << 0x4)) +0xc.
  The `lw` at 0x1000faa4 loads 4 bytes from ([[a0+572]+140] + ((([a0+5952] << 0x2) + [a0+5952]) << 0x4)) +0x10.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x354, including `lw` at 0x1000fab4, `lw` at 0x1000faf4.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x358, including `lw` at 0x1000fad0, `lw` at 0x1000fafc.
  The `lbu` at 0x1000fdd8 loads 1 byte from a0 (arg0 at entry) +0x133.
  The `sb` at 0x1000ff28 stores 1 byte to sym(szErrorStr) +0x0.
  The `jal` at 0x1000f9ac calls vfcQueryXSGIvc [0x100105a0] with a0=[a0+572], a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000f9d0 calls sprintf with a0=sym(szErrorStr), a1=0x10021a80, a2=?, a3=?.
  The `jalr` at 0x1000fa00 calls XSGIvcQueryVideoScreenInfo with a0=[a0+572], a1=[a0+5952], a2=sp-1144, a3=?.
  The `jalr` at 0x1000fa18 calls strncmp with a0=sp-1132, a1=0x10024658, a2=0x7, a3=?.
  The `jalr` at 0x1000fa3c calls sprintf with a0=sym(szErrorStr), a1=0x10021ab0, a2=?, a3=?.
  The `jalr` at 0x1000fb0c calls sprintf with a0=sym(szErrorStr), a1=0x10021ae8, a2=[a1+852], a3=[a1+856], a4=[([[a0+572]+140] + ((([a0+5952] << 0x2) + [a0+5952]) << 0x4))+12], a5=[([[a0+572]+140] + ((([a0+5952] << 0x2) + [a0+5952]) << 0x4))+16], a6=((([a0+5952] << 0x2) + [a0+5952]) << 0x4).
  The `jal` at 0x1000fb30 calls (unnamed) [0x1000f680] with a0=sp-1088, a1=?, a2=?, a3=?, a4=[a1+852], a5=[([[a0+572]+140] + ((([a0+5952] << 0x2) + [a0+5952]) << 0x4))+16], a6=((([a0+5952] << 0x2) + [a0+5952]) << 0x4).
  The `jal` at 0x1000fb44 calls vfmtWriteCmp1Combination [0x10015540] with a0=sp-1088, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x1000fb74 calls sprintf with a0=sym(szErrorStr), a1=0x10021bb0, a2=sp-1088, a3=?.
  The `jalr` at 0x1000fba4 calls XSGIvcLoadVideoFormatCombination with a0=[a0+572], a1=[a0+5952], a2=sp-1088, a3=?.
  The `jalr` at 0x1000fbc4 calls XSync with a0=[a0+572], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1000fbd4 calls unlink with a0=sp-1088, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000fc08 calls sprintf with a0=sym(szErrorStr), a1=0x10021be8, a2=sp-1088, a3=?.
  The `jal` at 0x1000fc2c calls vfcQueryXSGIvc [0x100105a0] with a0=[a0+572], a1=0x1, a2=[a0+564], a3=0x2.
  The `jalr` at 0x1000fc50 calls sprintf with a0=sym(szErrorStr), a1=0x10021a80, a2=?, a3=?.
  The `jalr` at 0x1000fc80 calls XSGIvcQueryVideoScreenInfo with a0=[a0+572], a1=[a0+5952], a2=sp-1144, a3=?.
  The `jalr` at 0x1000fc98 calls strncmp with a0=sp-1132, a1=0x10024658, a2=0x4, a3=?.
  The `jalr` at 0x1000fcbc calls sprintf with a0=sym(szErrorStr), a1=0x10021c10, a2=?, a3=?.
  The `jal` at 0x1000fce0 calls (unnamed) [0x1000f680] with a0=sp-1088, a1=?, a2=?, a3=?.
  The `jal` at 0x1000fcf4 calls vfmtWriteCmp1Combination [0x10015540] with a0=sp-1088, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x1000fd24 calls sprintf with a0=sym(szErrorStr), a1=0x10021bb0, a2=sp-1088, a3=?.
  The `jalr` at 0x1000fd54 calls XSGIvcNVLoadVideoFormatCombination with a0=[a0+572], a1=[a0+5952], a2=sp-1088, a3=?.
  The `jalr` at 0x1000fd74 calls XSync with a0=[a0+572], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1000fd84 calls unlink with a0=sp-1088, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000fdb8 calls sprintf with a0=sym(szErrorStr), a1=0x10021be8, a2=sp-1088, a3=?.
  The `jalr` at 0x1000fdf4 calls getcwd with a0=sp-1088, a1=0x400, a2=[a0+564], a3=[a0+307]:1, a4=0x2f, a5=0x3.
  The `jalr` at 0x1000fe08 calls strcat with a0=sp-1088, a1=0x10024652, a2=?, a3=?.
  The `jalr` at 0x1000fe20 calls strcat with a0=sp-1088, a1=a0+307, a2=?, a3=?.
  The `jalr` at 0x1000fe40 calls strcpy with a0=sp-1088, a1=a0+307, a2=[a0+564], a3=[a0+307]:1, a4=0x2f, a5=0x3.
  The `jal` at 0x1000fe54 calls vfmtWriteCmp1Combination [0x10015540] with a0=sp-1088, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x1000fe88 calls sprintf with a0=sym(szErrorStr), a1=0x10021c50, a2=sp-1088, a3=0x1.
  The `jalr` at 0x1000fea0 calls strlen with a0=sp-1088, a1=?, a2=ret(vfmtWriteCmp1Combination), a3=0x1.
  The `jalr` at 0x1000fec0 calls strlen with a0=sp-1088, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000fedc calls strcmp with a0=(sp-1088 + ret(strlen)-4), a1=0x10024660, a2=?, a3=?.
  The `jalr` at 0x1000fef4 calls basename with a0=sp-1088, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000ff14 calls sprintf with a0=sym(szErrorStr), a1=0x10021c80, a2=ret(basename), a3=?.
  The `beq` branch at 0x1000f954 targets 0x1000f994, is taken when at(=[a0+564]) == 0, and falls through when at(=[a0+564]) != 0.
  The `beq` branch at 0x1000f964 targets 0x1000f9a0, is taken when a0(=[a0+564]) == a1(=0x1), and falls through when a0(=[a0+564]) != a1(=0x1).
  The `beq` branch at 0x1000f974 targets 0x1000fc20, is taken when a2(=[a0+564]) == a3(=0x2), and falls through when a2(=[a0+564]) != a3(=0x2).
  The `beq` branch at 0x1000f984 targets 0x1000fdd0, is taken when a4(=[a0+564]) == a5(=0x3), and falls through when a4(=[a0+564]) != a5(=0x3).
  The `beq` branch at 0x1000f98c targets 0x1000ff3c and is always taken.
  The `beq` branch at 0x1000f998 targets 0x1000ff44 and is always taken.
  The `bne` branch at 0x1000f9b8 targets 0x1000f9e8, is taken when v0(=ret(vfcQueryXSGIvc)) != 0, and falls through when v0(=ret(vfcQueryXSGIvc)) == 0.
  The `beq` branch at 0x1000f9e0 targets 0x1000ff44 and is always taken.
  The `beq` branch at 0x1000fa24 targets 0x1000fa54, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0x1000fa4c targets 0x1000ff44 and is always taken.
  The `bne` branch at 0x1000fac0 targets 0x1000fae4, is taken when a3(=[([[a0+572]+140] + ((([a0+5952] << 0x2) + [a0+5952]) << 0x4))+12]) < a4(=[a1+852]) (signed), and falls through when a3(=[([[a0+572]+140] + ((([a0+5952] << 0x2) + [a0+5952]) << 0x4))+12]) >= a4(=[a1+852]) (signed).
  The `beq` branch at 0x1000fadc targets 0x1000fb24, is taken when a7(=[([[a0+572]+140] + ((([a0+5952] << 0x2) + [a0+5952]) << 0x4))+16]) >= t0(=[a1+856]) (signed), and falls through when a7(=[([[a0+572]+140] + ((([a0+5952] << 0x2) + [a0+5952]) << 0x4))+16]) < t0(=[a1+856]) (signed).
  The `beq` branch at 0x1000fb1c targets 0x1000ff44 and is always taken.
  The `beq` branch at 0x1000fb58 targets 0x1000fb8c, is taken when ra(=ret(vfmtWriteCmp1Combination)) == 0, and falls through when ra(=ret(vfmtWriteCmp1Combination)) != 0.
  The `beq` branch at 0x1000fb84 targets 0x1000ff44 and is always taken.
  The `beq` branch at 0x1000fbe0 targets 0x1000fbf4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1000fbec targets 0x1000ff44 and is always taken.
  The `beq` branch at 0x1000fc18 targets 0x1000ff44 and is always taken.
  The `bne` branch at 0x1000fc38 targets 0x1000fc68, is taken when v0(=ret(vfcQueryXSGIvc)) != 0, and falls through when v0(=ret(vfcQueryXSGIvc)) == 0.
  The `beq` branch at 0x1000fc60 targets 0x1000ff44 and is always taken.
  The `beq` branch at 0x1000fca4 targets 0x1000fcd4, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0x1000fccc targets 0x1000ff44 and is always taken.
  The `beq` branch at 0x1000fd08 targets 0x1000fd3c, is taken when ra(=ret(vfmtWriteCmp1Combination)) == 0, and falls through when ra(=ret(vfmtWriteCmp1Combination)) != 0.
  The `beq` branch at 0x1000fd34 targets 0x1000ff44 and is always taken.
  The `beq` branch at 0x1000fd90 targets 0x1000fda4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1000fd9c targets 0x1000ff44 and is always taken.
  The `beq` branch at 0x1000fdc8 targets 0x1000ff44 and is always taken.
  The `beq` branch at 0x1000fde0 targets 0x1000fe30, is taken when a3(=[a0+307]:1) == a4(=0x2f), and falls through when a3(=[a0+307]:1) != a4(=0x2f).
  The `beq` branch at 0x1000fe28 targets 0x1000fe48 and is always taken.
  The `bne` branch at 0x1000fe6c targets 0x1000fe98, is taken when a2(=ret(vfmtWriteCmp1Combination)) != a3(=0x1), and falls through when a2(=ret(vfmtWriteCmp1Combination)) == a3(=0x1).
  The `beq` branch at 0x1000fe90 targets 0x1000ff2c and is always taken.
  The `bne` branch at 0x1000feb0 targets 0x1000feec, is taken when v0(=ret(strlen)) < 0x4 (unsigned), and falls through when v0(=ret(strlen)) >= 0x4 (unsigned).
  The `beq` branch at 0x1000fee4 targets 0x1000ff24, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x1000ff1c targets 0x1000ff2c and is always taken.
  The `beq` branch at 0x1000ff34 targets 0x1000ff44 and is always taken.
  The return at 0x1000ff54 has v0 = one of 0x0, 0x2, ?.

- `vfcInitDmxCombination` in `usr/gfx/dmconf` at 0x10010120 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10010120-0x10010208 (232 bytes).
  It occupies 232 bytes.
  The `sw` at 0x10010148 stores 4 bytes to a1 (arg1 at entry) +0x350.
  The `sw` at 0x10010158 stores 4 bytes to a1 (arg1 at entry) +0x354.
  The `sw` at 0x10010168 stores 4 bytes to a1 (arg1 at entry) +0x358.
  The `sw` at 0x10010174 stores 4 bytes to a1 (arg1 at entry) +0x35c.
  The `sw` at 0x10010184 stores 4 bytes to a1 (arg1 at entry) +0x360.
  The `sw` at 0x10010190 stores 4 bytes to a1 (arg1 at entry) +0x364.
  The `sw` at 0x1001019c stores 4 bytes to a1 (arg1 at entry) +0x368.
  The `sw` at 0x100101a8 stores 4 bytes to a1 (arg1 at entry) +0x36c.
  The `sw` at 0x100101b4 stores 4 bytes to a1 (arg1 at entry) +0x370.
  The `sw` at 0x100101c0 stores 4 bytes to a1 (arg1 at entry) +0x300.
  The `sw` at 0x100101cc stores 4 bytes to a1 (arg1 at entry) +0x308.
  The `sw` at 0x100101d8 stores 4 bytes to a1 (arg1 at entry) +0x304.
  The `jal` at 0x100101ec calls (unnamed) [0x100100a0] with a0=a1+4996, a1=0x1, a2=a1 at entry (arg1), a3=0x2, a4=a1 at entry (arg1), a5=0x1, a6=a1 at entry (arg1), a7=0x1.
  The return at 0x10010200 has v0 = ret(0x100100a0).

- `vfcSetDmxCombinationDefaults` in `usr/gfx/dmconf` at 0x10010210 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10010210-0x1001025c (76 bytes).
  It occupies 76 bytes.
  The `jal` at 0x1001023c calls vfcInitDmxCombination [0x10010120] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10010254 has v0 = 0x0.

- `vfcModifyDmxCombination` in `usr/gfx/dmconf` at 0x10010260 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10010260-0x10010460 (512 bytes).
  It occupies 512 bytes.
  The `lw` at 0x10010284 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x10010298 loads 4 bytes from a0 (arg0 at entry) +0x16c4.
  The `sw` at 0x100102a0 stores 4 bytes to a1 (arg1 at entry) +0x1484.
  The `lw` at 0x100102b8 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0x100102cc loads 4 bytes from a0 (arg0 at entry) +0x16c8.
  The `sw` at 0x100102d4 stores 4 bytes to a1 (arg1 at entry) +0x1488.
  The `lw` at 0x100102dc loads 4 bytes from a0 (arg0 at entry) +0x18.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10010310, `lw` at 0x10010380.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10010328, `sw` at 0x10010398.
  The `lw` at 0x1001034c loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0x100103bc loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0x100103d0 loads 4 bytes from a0 (arg0 at entry) +0x16dc.
  The `sw` at 0x100103d8 stores 4 bytes to a1 (arg1 at entry) +0x149c.
  The `lw` at 0x100103e0 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x100103f4 loads 4 bytes from a0 (arg0 at entry) +0x16e0.
  The `sw` at 0x100103fc stores 4 bytes to a1 (arg1 at entry) +0x14a0.
  The `lw` at 0x10010404 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x10010418 loads 4 bytes from a0 (arg0 at entry) +0x1708.
  The `sw` at 0x10010420 stores 4 bytes to a1 (arg1 at entry) +0x14c8.
  The `lw` at 0x10010428 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x1001043c loads 4 bytes from a0 (arg0 at entry) +0x170c.
  The `sw` at 0x10010444 stores 4 bytes to a1 (arg1 at entry) +0x14cc.
  The `jal` at 0x100102ac calls vfcFillDmxFormatInformation [0x10010630] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1001028c targets 0x100102a4, is taken when (at(=[a0+16]) & 0x1) == 0, and falls through when (at(=[a0+16]) & 0x1) != 0.
  The `beq` branch at 0x100102c0 targets 0x100102d8, is taken when (a0(=[a0+20]) & 0x1) == 0, and falls through when (a0(=[a0+20]) & 0x1) != 0.
  The `beq` branch at 0x100102e4 targets 0x10010348, is taken when (a2(=[a0+24]) & 0x1) == 0, and falls through when (a2(=[a0+24]) & 0x1) != 0.
  The `beq` branch at 0x100102f8 targets 0x10010348 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x10010340 targets 0x10010300, is taken when a4(?) < 0x2 (signed), and falls through when a4(?) >= 0x2 (signed).
  The `beq` branch at 0x10010354 targets 0x100103b8, is taken when (t0(=[a0+28]) & 0x1) == 0, and falls through when (t0(=[a0+28]) & 0x1) != 0.
  The `beq` branch at 0x10010368 targets 0x100103b8 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x100103b0 targets 0x10010370, is taken when t2(?) < 0x2 (signed), and falls through when t2(?) >= 0x2 (signed).
  The `beq` branch at 0x100103c4 targets 0x100103dc, is taken when (ra(=[a0+32]) & 0x1) == 0, and falls through when (ra(=[a0+32]) & 0x1) != 0.
  The `beq` branch at 0x100103e8 targets 0x10010400, is taken when (v0(=[a0+36]) & 0x1) == 0, and falls through when (v0(=[a0+36]) & 0x1) != 0.
  The `beq` branch at 0x1001040c targets 0x10010424, is taken when (a0(=[a0+40]) & 0x1) == 0, and falls through when (a0(=[a0+40]) & 0x1) != 0.
  The `beq` branch at 0x10010430 targets 0x10010448, is taken when (a2(=[a0+44]) & 0x1) == 0, and falls through when (a2(=[a0+44]) & 0x1) != 0.
  The return at 0x10010458 has v0 = 0x0.

- `vfcModifyCombinationGlobals` in `usr/gfx/dmconf` at 0x10010460 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10010460-0x100104a8 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0x10010474 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x10010488 loads 4 bytes from a0 (arg0 at entry) +0x540.
  The `sw` at 0x10010490 stores 4 bytes to a1 (arg1 at entry) +0x300.
  The `beq` branch at 0x1001047c targets 0x10010494, is taken when (at(=[a0+48]) & 0x1) == 0, and falls through when (at(=[a0+48]) & 0x1) != 0.
  The return at 0x100104a0 has v0 = 0x0.

- `vfcModifyOdyCombination` in `usr/gfx/dmconf` at 0x100104b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x100104b0-0x1001059c (236 bytes).
  It occupies 236 bytes.
  The `lw` at 0x100104d4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x10010558 loads 4 bytes from a1 (arg1 at entry) +0x568.
  The `sw` at 0x10010564 stores 4 bytes to a1 (arg1 at entry) +0x354.
  The `lw` at 0x1001056c loads 4 bytes from a1 (arg1 at entry) +0x564.
  The `sw` at 0x10010578 stores 4 bytes to a1 (arg1 at entry) +0x358.
  The `jalr` at 0x100104f8 calls strcpy with a0=a1+255, a1=a0+831, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10010514 calls vfmtReadCmp1OdyFormat [0x10013960] with a0=a1+255, a1=a1+888, a2=?, a3=?.
  The `jalr` at 0x1001053c calls sprintf with a0=sym(szErrorStr), a1=0x10021ce8, a2=a1+255, a3=?.
  The `beq` branch at 0x100104dc targets 0x1001057c, is taken when (at(=[a0+8]) & 0x1) == 0, and falls through when (at(=[a0+8]) & 0x1) != 0.
  The `beq` branch at 0x1001051c targets 0x10010554, is taken when v0(=ret(vfmtReadCmp1OdyFormat)) == 0, and falls through when v0(=ret(vfmtReadCmp1OdyFormat)) != 0.
  The `beq` branch at 0x1001054c targets 0x10010584 and is always taken.
  The return at 0x10010594 has v0 = one of 0x0, 0x2.

- `vfcFillDmxFormatInformation` in `usr/gfx/dmconf` at 0x10010630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10010630-0x10011650 (4128 bytes).
  It occupies 4128 bytes.
  The `lw` at 0x10010650 loads 4 bytes from a0 (arg0 at entry) +0x1484.
  The `lw` at 0x10010678 loads 4 bytes from table(0x10021d08) +0x0.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1494, including `sw` at 0x100106ac, `sw` at 0x100107d0, `sw` at 0x100108f4.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1498, including `sw` at 0x100106bc, `sw` at 0x100107e0, `sw` at 0x10010904.
  14 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x14d0, including `swc1` at 0x100106c8, `swc1` at 0x100107ec, `swc1` at 0x10010910.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14a4, including `sw` at 0x100106d4, `sw` at 0x100107f8, `sw` at 0x1001091c.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14a8, including `sw` at 0x100106e0, `sw` at 0x10010804, `sw` at 0x10010928.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14c4, including `sw` at 0x100106ec, `sw` at 0x10010810, `sw` at 0x10010940.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14ac, including `sw` at 0x100106f8, `sw` at 0x1001081c, `sw` at 0x10010934.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14b0, including `sw` at 0x10010704, `sw` at 0x10010828, `sw` at 0x1001094c.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14b4, including `sw` at 0x10010710, `sw` at 0x10010834, `sw` at 0x10010958.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14b8, including `sw` at 0x1001071c, `sw` at 0x10010840, `sw` at 0x10010960.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14bc, including `sw` at 0x10010728, `sw` at 0x1001084c, `sw` at 0x1001096c.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14c0, including `sw` at 0x10010734, `sw` at 0x10010858, `sw` at 0x10010974.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14d4, including `sw` at 0x10010744, `sw` at 0x10010868, `sw` at 0x10010984.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14d8, including `sw` at 0x10010750, `sw` at 0x10010874, `sw` at 0x10010990.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14dc, including `sw` at 0x1001075c, `sw` at 0x10010880, `sw` at 0x1001099c.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14e0, including `sw` at 0x10010764, `sw` at 0x10010888, `sw` at 0x100109ac.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14e4, including `sw` at 0x10010770, `sw` at 0x10010894, `sw` at 0x100109b4.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14e8, including `sw` at 0x10010778, `sw` at 0x1001089c, `sw` at 0x100109bc.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14ec, including `sw` at 0x10010780, `sw` at 0x100108a4, `sw` at 0x100109c4.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14f0, including `sw` at 0x10010788, `sw` at 0x100108ac, `sw` at 0x100109cc.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14f4, including `sw` at 0x10010790, `sw` at 0x100108b4, `sw` at 0x100109d4.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14f8, including `sw` at 0x10010798, `sw` at 0x100108bc, `sw` at 0x100109dc.
  The `jalr` at 0x10010698 calls sprintf with a0=a0+4996, a1=0x10021d48, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100107bc calls sprintf with a0=a0+4996, a1=0x10021d58, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100108e0 calls sprintf with a0=a0+4996, a1=0x10021d68, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100109fc calls sprintf with a0=a0+4996, a1=0x10024668, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10010b1c calls sprintf with a0=a0+4996, a1=0x10021d78, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10010c64 calls sprintf with a0=a0+4996, a1=0x10024670, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10010d98 calls sprintf with a0=a0+4996, a1=0x10021d88, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10010ebc calls sprintf with a0=a0+4996, a1=0x10021d98, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10010fe0 calls sprintf with a0=a0+4996, a1=0x10021da8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10011614 calls sprintf with a0=sym(szErrorStr), a1=0x10021db8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1001066c targets 0x10011604, is taken when at(=[a0+5252]) >= 0x10 (unsigned), and falls through when at(=[a0+5252]) < 0x10 (unsigned).
  The `beq` branch at 0x100107a0 targets 0x10011638 and is always taken.
  The `beq` branch at 0x100108c4 targets 0x10011638 and is always taken.
  The `beq` branch at 0x100109e4 targets 0x10011638 and is always taken.
  The `beq` branch at 0x10010b00 targets 0x10011638 and is always taken.
  The `beq` branch at 0x10010c4c targets 0x10011638 and is always taken.
  The `beq` branch at 0x10010d7c targets 0x10011638 and is always taken.
  The `beq` branch at 0x10010ea0 targets 0x10011638 and is always taken.
  The `beq` branch at 0x10010fc4 targets 0x10011638 and is always taken.
  The `beq` branch at 0x100110e8 targets 0x10011638 and is always taken.
  The `beq` branch at 0x100111ec targets 0x10011638 and is always taken.
  The `beq` branch at 0x100112f0 targets 0x10011638 and is always taken.
  The `beq` branch at 0x100113f4 targets 0x10011638 and is always taken.
  The `beq` branch at 0x100114f8 targets 0x10011638 and is always taken.
  The `beq` branch at 0x100115fc targets 0x10011638 and is always taken.
  The `beq` branch at 0x10011624 targets 0x10011638 and is always taken.
  The return at 0x10011648 has v0 = one of 0x0, 0x2.
  The instructions from 0x1001162c to 0x10011634 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x1001067c uses the jump table at 0x10021d08 with targets 0x10011604, 0x10010684, 0x100107a8, 0x10010d84, 0x100108cc, 0x100109ec, 0x100110f0, 0x100111f4, 0x100112f8, 0x10010ea8, 0x10010fcc, 0x10011604, 0x10010b08, 0x10010c54, 0x100113fc, 0x10011500.

- `vfcQueryOdysseyTarget` in `usr/gfx/dmconf` at 0x10011650 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10011650-0x10011674 (36 bytes).
  It occupies 36 bytes.
  The `sw` at 0x10011664 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The return at 0x1001166c has v0 = a1.

- `vfmtIsCmpCombinationValidForTarget` in `usr/gfx/dmconf` at 0x10011680 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10011680-0x100119a8 (808 bytes).
  It occupies 808 bytes.
  The `lbu` at 0x100116b0 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lbu` at 0x100116ec loads 1 byte from a0 (arg0 at entry) +0xff.
  The `lbu` at 0x10011728 loads 1 byte from a0 (arg0 at entry) +0x1fe.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x55c, including `lw` at 0x10011760, `lw` at 0x10011780.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xab4, including `lw` at 0x10011768, `lw` at 0x10011778.
  4 such `ldc1` accesses load 8 bytes from a0 (arg0 at entry) +0x550, including `ldc1` at 0x100117bc, `ldc1` at 0x10011804, `ldc1` at 0x10011830.
  5 such `ldc1` accesses load 8 bytes from a0 (arg0 at entry) +0xaa8, including `ldc1` at 0x1001180c, `ldc1` at 0x1001181c, `ldc1` at 0x10011838.
  The `lw` at 0x100118fc loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x10011904 loads 4 bytes from a0 (arg0 at entry) +0x350.
  The `sb` at 0x1001194c stores 1 byte to a2 (arg2 at entry) +0x0.
  The `sb` at 0x1001198c stores 1 byte to ?.
  The `jalr` at 0x100116d0 calls sprintf with a0=0x10027790, a1=0x10021dd8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001170c calls sprintf with a0=0x10027790, a1=0x10021e00, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10011748 calls sprintf with a0=0x10027790, a1=0x10021e28, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100117a4 calls sprintf with a0=0x10027790, a1=0x10021e58, a2=[a0+2740], a3=([a0+1372] + [a0+1372]).
  The `jalr` at 0x100117ec calls sprintf with a0=0x10027790, a1=0x10021e98, a2=[a0+2740], a3=?.
  The `jalr` at 0x100118cc calls snprintf with a0=sp-256, a1=0xc8, a2=0x10021ec0, a3=?, a5=a0 at entry (arg0), a6=a0 at entry (arg0), a7=a0 at entry (arg0).
  The `jalr` at 0x100118e4 calls sprintf with a0=0x10027790, a1=sp-256, a2=?, a3=?.
  The `jalr` at 0x10011928 calls sprintf with a0=0x10027790, a1=0x10021ef8, a2=[a0+848], a3=a0 at entry (arg0), a4=a0 at entry (arg0), a5=a0 at entry (arg0), a6=a0 at entry (arg0).
  The `jalr` at 0x10011974 calls strncpy with a0=a2 at entry (arg2), a1=0x10027790, a2=?, a3=?.
  The `bne` branch at 0x100116b4 targets 0x100116e4, is taken when at(=[a0]:1) != 0, and falls through when at(=[a0]:1) == 0.
  The `beq` branch at 0x100116dc targets 0x10011950 and is always taken.
  The `bne` branch at 0x100116f0 targets 0x10011720, is taken when a1(=[a0+255]:1) != 0, and falls through when a1(=[a0+255]:1) == 0.
  The `beq` branch at 0x10011718 targets 0x10011950 and is always taken.
  The `bne` branch at 0x1001172c targets 0x1001175c, is taken when a1(=[a0+510]:1) != 0, and falls through when a1(=[a0+510]:1) == 0.
  The `beq` branch at 0x10011754 targets 0x10011950 and is always taken.
  The `beq` branch at 0x1001176c targets 0x100117b8, is taken when a1(=[a0+1372]) == a2(=[a0+2740]), and falls through when a1(=[a0+1372]) != a2(=[a0+2740]).
  The `beq` branch at 0x10011788 targets 0x100117b8, is taken when a2(=[a0+2740]) == a3(=([a0+1372] + [a0+1372])), and falls through when a2(=[a0+2740]) != a3(=([a0+1372] + [a0+1372])).
  The `beq` branch at 0x100117b0 targets 0x10011950 and is always taken.
  The `bc1f` branch at 0x100117d0 targets 0x10011800, is taken when not (f0(=[a0+1360]:8) == f1 (c.eq.d at 0x100117c8)), and falls through when f0(=[a0+1360]:8) == f1 (c.eq.d at 0x100117c8).
  The `beq` branch at 0x100117f8 targets 0x10011950 and is always taken.
  The `bc1f` branch at 0x10011874 targets 0x100118f8, is taken when not (f2(=0x3f847ae147ae147b) < f3 (c.lt.d at 0x1001186c)), and falls through when f2(=0x3f847ae147ae147b) < f3 (c.lt.d at 0x1001186c).
  The `bc1f` branch at 0x10011890 targets 0x100118f8, is taken when not (f9(=0x3f947ae147ae147b) < f10 (c.lt.d at 0x10011888)), and falls through when f9(=0x3f947ae147ae147b) < f10 (c.lt.d at 0x10011888).
  The `beq` branch at 0x100118f0 targets 0x10011950 and is always taken.
  The `beq` branch at 0x1001190c targets 0x1001193c, is taken when a1(=[a1]) >= a2(=[a0+848]) (signed), and falls through when a1(=[a1]) < a2(=[a0+848]) (signed).
  The `beq` branch at 0x10011934 targets 0x10011950 and is always taken.
  The `blez` branch at 0x10011954 targets 0x10011990, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The return at 0x100119a0 has v0 = one of 0x0, 0x1.

- `vfmtIsCombinationValidForDmxTarget` in `usr/gfx/dmconf` at 0x100119b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x100119b0-0x10011ba4 (500 bytes).
  It occupies 500 bytes.
  The `lbu` at 0x100119e0 loads 1 byte from a0 (arg0 at entry) +0xff.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x354, including `lw` at 0x10011a1c, `lw` at 0x10011a50.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x148c, including `lw` at 0x10011a28, `lw` at 0x10011a84.
  The `lw` at 0x10011a34 loads 4 bytes from a0 (arg0 at entry) +0x1494.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1490, including `lw` at 0x10011a5c, `lw` at 0x10011a98.
  The `lw` at 0x10011a68 loads 4 bytes from a0 (arg0 at entry) +0x1498.
  The `lw` at 0x10011ad0 loads 4 bytes from a0 (arg0 at entry) +0x55c.
  The `lw` at 0x10011ad8 loads 4 bytes from a0 (arg0 at entry) +0x560.
  The `ldc1` at 0x10011af4 loads 8 bytes from a0 (arg0 at entry) +0x550.
  The `sb` at 0x10011b48 stores 1 byte to a1 (arg1 at entry) +0x0.
  The `sb` at 0x10011b88 stores 1 byte to ?.
  The `jalr` at 0x10011a00 calls sprintf with a0=0x10027790, a1=0x10021f20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10011ab8 calls sprintf with a0=0x10027790, a1=0x10021f48, a2=?, a3=?.
  The `jalr` at 0x10011b24 calls sprintf with a0=0x10027790, a1=0x10021f80, a2=?, a3=[a0+1372], a4=[a0+1376].
  The `jalr` at 0x10011b70 calls strncpy with a0=a1 at entry (arg1), a1=0x10027790, a2=?, a3=?.
  The `bne` branch at 0x100119e4 targets 0x10011a14, is taken when at(=[a0+255]:1) != 0, and falls through when at(=[a0+255]:1) == 0.
  The `beq` branch at 0x10011a0c targets 0x10011b4c and is always taken.
  The `bne` branch at 0x10011a40 targets 0x10011aa4, is taken when a1(=[a0+852]) < a2(=([a0+5260] + [a0+5268])) (signed), and falls through when a1(=[a0+852]) >= a2(=([a0+5260] + [a0+5268])) (signed).
  The `bne` branch at 0x10011a74 targets 0x10011aa4, is taken when a2(=[a0+852]) < a3(=([a0+5264] + [a0+5272])) (signed), and falls through when a2(=[a0+852]) >= a3(=([a0+5264] + [a0+5272])) (signed).
  The `bltz` branch at 0x10011a88 targets 0x10011aa4, is taken when a3(=[a0+5260]) < 0 (signed), and falls through when a3(=[a0+5260]) >= 0 (signed).
  The `bgez` branch at 0x10011a9c targets 0x10011acc, is taken when a4(=[a0+5264]) >= 0 (signed), and falls through when a4(=[a0+5264]) < 0 (signed).
  The `beq` branch at 0x10011ac4 targets 0x10011b4c and is always taken.
  The `bc1f` branch at 0x10011b08 targets 0x10011b38, is taken when not (f0(=0x41a3ab6680000000) < f1 (c.lt.d at 0x10011b00)), and falls through when f0(=0x41a3ab6680000000) < f1 (c.lt.d at 0x10011b00).
  The `beq` branch at 0x10011b30 targets 0x10011b4c and is always taken.
  The `blez` branch at 0x10011b50 targets 0x10011b8c, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The return at 0x10011b9c has v0 = one of 0x0, 0x1.

- `vfmtReadCmp1Format` in `usr/gfx/dmconf` at 0x10013740 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10013740-0x10013958 (536 bytes).
  It occupies 536 bytes.
  The `sw` at 0x10013860 stores 4 bytes to a1 (arg1 at entry) +0x100.
  The `jal` at 0x10013778 calls vfmtFindCmpFormatFile [0x10016cb0] with a0=sp-1224, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100137b0 calls (unnamed) [0x10011bb0] with a0=0x10022148, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x100137c8 calls SDBreadOpenDatabase [0x10017cc8] with a0=sp-1224, a1=?, a2=?, a3=?.
  The `jal` at 0x10013800 calls (unnamed) [0x10011bb0] with a0=0x10022160, a1=sp-1224, a2=ret(SDBreadOpenDatabase), a3=?.
  The `jal` at 0x10013818 calls vfmtGetLastKonaFileStat [0x100171a0] with a0=sp-200, a1=?, a2=ret(SDBreadOpenDatabase), a3=?.
  The `jal` at 0x10013848 calls (unnamed) [0x10011bb0] with a0=0x10022148, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x10013878 calls (unnamed) [0x10011ce0] with a0=a1 at entry (arg1), a1=ret(SDBreadOpenDatabase), a2=0x0, a3=?.
  The `jal` at 0x1001389c calls (unnamed) [0x10012870] with a0=a1 at entry (arg1), a1=ret(SDBreadOpenDatabase), a2=?, a3=?.
  The `jal` at 0x100138c0 calls (unnamed) [0x10012af0] with a0=a1 at entry (arg1), a1=ret(SDBreadOpenDatabase), a2=?, a3=?.
  The `jal` at 0x100138e4 calls (unnamed) [0x10012d80] with a0=a1 at entry (arg1), a1=ret(SDBreadOpenDatabase), a2=?, a3=?.
  The `jal` at 0x10013908 calls (unnamed) [0x100131b0] with a0=a1 at entry (arg1), a1=ret(SDBreadOpenDatabase), a2=?, a3=?.
  The `jal` at 0x10013934 calls SDBcloseReadDatabase [0x10017c10] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1001378c targets 0x100137c0, is taken when v1(=ret(vfmtFindCmpFormatFile)) == 0, and falls through when v1(=ret(vfmtFindCmpFormatFile)) != 0.
  The `beq` branch at 0x100137b8 targets 0x10013920 and is always taken.
  The `bne` branch at 0x100137dc targets 0x10013810, is taken when a2(=ret(SDBreadOpenDatabase)) != 0, and falls through when a2(=ret(SDBreadOpenDatabase)) == 0.
  The `beq` branch at 0x10013808 targets 0x10013920 and is always taken.
  The `bne` branch at 0x10013824 targets 0x10013858, is taken when v0(=ret(vfmtGetLastKonaFileStat)) != 0, and falls through when v0(=ret(vfmtGetLastKonaFileStat)) == 0.
  The `beq` branch at 0x10013850 targets 0x10013920 and is always taken.
  The `beq` branch at 0x10013884 targets 0x10013920, is taken when v0(=ret(0x10011ce0)) == 0, and falls through when v0(=ret(0x10011ce0)) != 0.
  The `beq` branch at 0x100138a8 targets 0x10013920, is taken when v0(=ret(0x10012870)) == 0, and falls through when v0(=ret(0x10012870)) != 0.
  The `beq` branch at 0x100138cc targets 0x10013920, is taken when v0(=ret(0x10012af0)) == 0, and falls through when v0(=ret(0x10012af0)) != 0.
  The `beq` branch at 0x100138f0 targets 0x10013920, is taken when v0(=ret(0x10012d80)) == 0, and falls through when v0(=ret(0x10012d80)) != 0.
  The `beq` branch at 0x10013914 targets 0x10013920, is taken when v0(=ret(0x100131b0)) == 0, and falls through when v0(=ret(0x100131b0)) != 0.
  The `beq` branch at 0x10013924 targets 0x1001393c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The return at 0x10013950 has v0 = ?.

- `vfmtReadCmp1OdyFormat` in `usr/gfx/dmconf` at 0x10013960 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10013960-0x10013a94 (308 bytes).
  It occupies 308 bytes.
  The `jal` at 0x10013998 calls vfmtFindOdyFormatFile [0x10016d50] with a0=sp-1064, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100139d0 calls (unnamed) [0x10011bb0] with a0=0x10022148, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x100139e8 calls SDBreadOpenDatabase [0x10017cc8] with a0=sp-1064, a1=?, a2=?, a3=?.
  The `jal` at 0x10013a20 calls (unnamed) [0x10011bb0] with a0=0x10022160, a1=sp-1064, a2=ret(SDBreadOpenDatabase), a3=?.
  The `jal` at 0x10013a44 calls (unnamed) [0x10011ce0] with a0=a1 at entry (arg1), a1=ret(SDBreadOpenDatabase), a2=0x1, a3=?.
  The `jal` at 0x10013a70 calls SDBcloseReadDatabase [0x10017c10] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100139ac targets 0x100139e0, is taken when v1(=ret(vfmtFindOdyFormatFile)) == 0, and falls through when v1(=ret(vfmtFindOdyFormatFile)) != 0.
  The `beq` branch at 0x100139d8 targets 0x10013a5c and is always taken.
  The `bne` branch at 0x100139fc targets 0x10013a30, is taken when a2(=ret(SDBreadOpenDatabase)) != 0, and falls through when a2(=ret(SDBreadOpenDatabase)) == 0.
  The `beq` branch at 0x10013a28 targets 0x10013a5c and is always taken.
  The `beq` branch at 0x10013a50 targets 0x10013a5c, is taken when v0(=ret(0x10011ce0)) == 0, and falls through when v0(=ret(0x10011ce0)) != 0.
  The `beq` branch at 0x10013a60 targets 0x10013a78, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The return at 0x10013a8c has v0 = ?.

- `vfmtReadCmp1SG2Format` in `usr/gfx/dmconf` at 0x10013aa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10013aa0-0x10013bdc (316 bytes).
  It occupies 316 bytes.
  The `jal` at 0x10013ad8 calls vfmtFindSG2FormatFile [0x10016da0] with a0=sp-1080, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10013b14 calls (unnamed) [0x10011bb0] with a0=0x10022148, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x10013b30 calls fopen with a0=sp-1080, a1=0x10024678, a2=?, a3=?.
  The `jal` at 0x10013b6c calls (unnamed) [0x10011bb0] with a0=0x10022160, a1=sp-1080, a2=ret(fopen), a3=?.
  The `jal` at 0x10013b90 calls (unnamed) [0x10012580] with a0=a1 at entry (arg1), a1=ret(fopen), a2=0x1, a3=?.
  The `jalr` at 0x10013bbc calls fclose with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10013af0 targets 0x10013b24, is taken when v1(=ret(vfmtFindSG2FormatFile)) == 0, and falls through when v1(=ret(vfmtFindSG2FormatFile)) != 0.
  The `beq` branch at 0x10013b1c targets 0x10013ba8 and is always taken.
  The `bne` branch at 0x10013b48 targets 0x10013b7c, is taken when a2(=ret(fopen)) != 0, and falls through when a2(=ret(fopen)) == 0.
  The `beq` branch at 0x10013b74 targets 0x10013ba8 and is always taken.
  The `beq` branch at 0x10013b9c targets 0x10013ba8, is taken when v0(=ret(0x10012580)) == 0, and falls through when v0(=ret(0x10012580)) != 0.
  The `beq` branch at 0x10013bac targets 0x10013bc4, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The return at 0x10013bd4 has v0 = ?.

- `vfmtReadCmp1Combination` in `usr/gfx/dmconf` at 0x10013d10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10013d10-0x10015534 (6180 bytes).
  It occupies 6180 bytes.
  The `lbu` at 0x10013f14 loads 1 byte from a1 (arg1 at entry) +0xff.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x0, including `lbu` at 0x10014004, `lbu` at 0x100140c8.
  The `lh` at 0x100145a0 loads 2 bytes from a1 (arg1 at entry) +0x1380.
  The `jalr` at 0x10013d50 calls sprintf with a0=sp-1136, a1=0x10024698, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10013d7c calls (unnamed) [0x10013be0] with a0=0x10022420, a1=0xb3, a2=?, a3=?.
  The `jal` at 0x10013d98 calls vfmtFindCmpCombinationFile [0x10016f30] with a0=sp-1120, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x10013dd4 calls (unnamed) [0x10013be0] with a0=0x10022438, a1=a0 at entry (arg0), a2=ret(vfmtFindCmpCombinationFile), a3=?.
  The `jal` at 0x10013dec calls SDBreadOpenDatabase [0x10017cc8] with a0=sp-1120, a1=?, a2=ret(vfmtFindCmpCombinationFile), a3=?.
  The `jal` at 0x10013e24 calls (unnamed) [0x10013be0] with a0=0x10022450, a1=sp-1120, a2=ret(SDBreadOpenDatabase), a3=?.
  The `jalr` at 0x10013e48 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x100248a0].
  The `jal` at 0x10013e64 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+4992, a3=?.
  The `jal` at 0x10013e94 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10013ebc calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x100248a4].
  The `jal` at 0x10013ee0 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=sp-64, a3=?.
  The `jal` at 0x10013f34 calls vfmtReadCmp1OdyFormat [0x10013960] with a0=a1+255, a1=a1+888, a2=?, a3=ret(SDBgetSymbolValueScalar), a5=[a1+255]:1.
  The `jal` at 0x10013f5c calls vfmtReadCmp1SG2Format [0x10013aa0] with a0=a1+255, a1=a1+888, a2=?, a3=?.
  The `jal` at 0x10013f90 calls (unnamed) [0x10013be0] with a0=0x10022450, a1=a1+255, a2=?, a3=?.
  The `jalr` at 0x10013fb4 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x100248a8].
  The `jal` at 0x10013fd4 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=sp-64, a3=?.
  The `jal` at 0x10014020 calls vfmtReadCmp1Format [0x10013740] with a0=a1 at entry (arg1), a1=a1+2256, a2=?, a3=ret(SDBgetSymbolValueScalar), a5=[a1]:1.
  The `jal` at 0x10014050 calls (unnamed) [0x10013be0] with a0=0x10022450, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x10014074 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x100248ac].
  The `jal` at 0x10014098 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=sp-64, a3=?.
  The `jal` at 0x100140e8 calls vfmtReadCmp1Format [0x10013740] with a0=a1+510, a1=a1+3624, a2=?, a3=ret(SDBgetSymbolValueScalar), a5=[a1]:1.
  The `jal` at 0x1001411c calls (unnamed) [0x10013be0] with a0=0x10022450, a1=a1+510, a2=?, a3=?.
  The `jalr` at 0x10014140 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x100248c0].
  The `jal` at 0x10014160 calls SDBgetSymbolValueArray [0x10017ba0] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+852, a3=0x2.
  The `jalr` at 0x100141a8 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x100248b0].
  The `jal` at 0x100141c4 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+768, a3=?.
  The `jal` at 0x100141f4 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x1001421c calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x100248b8].
  The `jal` at 0x10014238 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+772, a3=?.
  The `jal` at 0x10014268 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10014290 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x100248b4].
  The `jal` at 0x100142ac calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+776, a3=?.
  The `jal` at 0x100142dc calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10014304 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x100248bc].
  The `jal` at 0x10014320 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+780, a3=?.
  The `jal` at 0x10014350 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10014378 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x100248d4].
  The `jal` at 0x10014394 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+848, a3=?.
  The `jal` at 0x100143c4 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x100143ec calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x100248e4].
  The `jal` at 0x1001440c calls SDBgetSymbolValueArray [0x10017ba0] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+860, a3=0x3.
  The `jalr` at 0x10014454 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x100248e0].
  The `jal` at 0x10014470 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+872, a3=?.
  The `jal` at 0x100144a0 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x100144c8 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x100248d8].
  The `jal` at 0x100144e4 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+876, a3=?.
  The `jal` at 0x10014514 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x1001453c calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x100248dc].
  The `jal` at 0x10014558 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+880, a3=?.
  The `jal` at 0x10014588 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x100145c0 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x100248ec].
  The `jal` at 0x100145e0 calls SDBgetSymbolValueArray [0x10017ba0] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5260, a3=0x2.
  The `jalr` at 0x10014628 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x100248f0].
  The `jal` at 0x10014648 calls SDBgetSymbolValueArray [0x10017ba0] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5268, a3=0x2.
  The `jalr` at 0x10014690 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x100248f4].
  The `jal` at 0x100146ac calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5252, a3=?.
  The `jal` at 0x100146dc calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10014704 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x100248f8].
  The `jal` at 0x10014720 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5256, a3=?.
  The `jal` at 0x10014750 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10014778 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x100248fc].
  The `jal` at 0x10014794 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5276, a3=?.
  The `jal` at 0x100147c4 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x100147ec calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x10024900].
  The `jal` at 0x10014808 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5280, a3=?.
  The `jal` at 0x10014838 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10014860 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x10024904].
  The `jal` at 0x1001487c calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5284, a3=?.
  The `jal` at 0x100148ac calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x100148d4 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x10024908].
  The `jal` at 0x100148f0 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5288, a3=?.
  The `jal` at 0x10014920 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10014948 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x1002490c].
  The `jal` at 0x10014964 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5292, a3=?.
  The `jal` at 0x10014994 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x100149bc calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x10024910].
  The `jal` at 0x100149d8 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5296, a3=?.
  The `jal` at 0x10014a08 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10014a30 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x10024914].
  The `jal` at 0x10014a4c calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5300, a3=?.
  The `jal` at 0x10014a7c calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10014aa4 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x10024910].
  The `jal` at 0x10014ac0 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5304, a3=?.
  The `jal` at 0x10014af0 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10014b18 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x1002491c].
  The `jal` at 0x10014b34 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5308, a3=?.
  The `jal` at 0x10014b64 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10014b8c calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x10024920].
  The `jal` at 0x10014ba8 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5312, a3=?.
  The `jal` at 0x10014bd8 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10014c00 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x10024934].
  The `jal` at 0x10014c1c calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5332, a3=?.
  The `jal` at 0x10014c4c calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10014c74 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x10024938].
  The `jal` at 0x10014c90 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5336, a3=?.
  The `jal` at 0x10014cc0 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10014ce8 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x1002493c].
  The `jal` at 0x10014d04 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5340, a3=?.
  The `jal` at 0x10014d34 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10014d5c calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x10024940].
  The `jal` at 0x10014d78 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5344, a3=?.
  The `jal` at 0x10014da8 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10014dd0 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x10024944].
  The `jal` at 0x10014dec calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5348, a3=?.
  The `jal` at 0x10014e1c calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10014e44 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x10024948].
  The `jal` at 0x10014e60 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5352, a3=?.
  The `jal` at 0x10014e90 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10014eb8 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x1002494c].
  The `jal` at 0x10014ed4 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5356, a3=?.
  The `jal` at 0x10014f04 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10014f2c calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x10024950].
  The `jal` at 0x10014f48 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5356, a3=?.
  The `jal` at 0x10014f78 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10014fa0 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x10024954].
  The `jal` at 0x10014fbc calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5364, a3=?.
  The `jal` at 0x10014fec calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10015014 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x10024958].
  The `jal` at 0x10015030 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5364, a3=?.
  The `jal` at 0x10015060 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10015088 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x10024924].
  The `jal` at 0x100150a4 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5316, a3=?.
  The `jal` at 0x100150d4 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x100150fc calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x1002492c].
  The `jal` at 0x10015118 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5328, a3=?.
  The `jal` at 0x10015148 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10015170 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x10024928].
  The `jal` at 0x1001518c calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5320, a3=?.
  The `jal` at 0x100151bc calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x100151e4 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x10024930].
  The `jal` at 0x10015200 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=a1+5324, a3=?.
  The `jal` at 0x10015230 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x10015258 calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x100248e8].
  The `jal` at 0x1001527c calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=sp-64, a3=?.
  The `jalr` at 0x100152d0 calls sprintf with a0=sp-1136, a1=0x10022480, a2=?, a3=?.
  The `jalr` at 0x100152ec calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x100248c4].
  The `jal` at 0x10015314 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=?, a3=?.
  The `jal` at 0x10015344 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x1001536c calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x100248c8].
  The `jal` at 0x10015394 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=?, a3=?.
  The `jal` at 0x100153c4 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x100153ec calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x100248cc].
  The `jal` at 0x10015414 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=?, a3=?.
  The `jal` at 0x10015444 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jalr` at 0x1001546c calls sprintf with a0=sp-96, a1=0x100246a0, a2=sp-1136, a3=[0x100248d0].
  The `jal` at 0x10015494 calls SDBgetSymbolValueScalar [0x10017bd8] with a0=ret(SDBreadOpenDatabase), a1=sp-96, a2=?, a3=?.
  The `jal` at 0x100154c4 calls (unnamed) [0x10013be0] with a0=0x10022468, a1=sp-96, a2=?, a3=?.
  The `jal` at 0x100154fc calls SDBcloseReadDatabase [0x10017c10] with a0=ret(SDBreadOpenDatabase), a1=?, a2=?, a3=?.
  The `bne` branch at 0x10013d5c targets 0x10013d8c, is taken when a0(=a1) != 0, and falls through when a0(=a1) == 0.
  The `beq` branch at 0x10013d84 targets 0x10015510 and is always taken.
  The `beq` branch at 0x10013db0 targets 0x10013de4, is taken when a2(=ret(vfmtFindCmpCombinationFile)) == 0, and falls through when a2(=ret(vfmtFindCmpCombinationFile)) != 0.
  The `beq` branch at 0x10013ddc targets 0x10015510 and is always taken.
  The `bne` branch at 0x10013e00 targets 0x10013e34, is taken when a2(=ret(SDBreadOpenDatabase)) != 0, and falls through when a2(=ret(SDBreadOpenDatabase)) == 0.
  The `beq` branch at 0x10013e2c targets 0x10015510 and is always taken.
  The `bne` branch at 0x10013e70 targets 0x10013ea4, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10013e9c targets 0x10015510 and is always taken.
  The `bne` branch at 0x10013ef4 targets 0x10013f0c, is taken when a3(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when a3(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10013f04 targets 0x1001551c and is always taken.
  The `beq` branch at 0x10013f18 targets 0x10013fa0, is taken when a5(=[a1+255]:1) == 0, and falls through when a5(=[a1+255]:1) != 0.
  The `beq` branch at 0x10013f40 targets 0x10013fa0, is taken when v0(=ret(vfmtReadCmp1OdyFormat)) == 0, and falls through when v0(=ret(vfmtReadCmp1OdyFormat)) != 0.
  The `beq` branch at 0x10013f68 targets 0x10013fa0, is taken when v0(=ret(vfmtReadCmp1SG2Format)) == 0, and falls through when v0(=ret(vfmtReadCmp1SG2Format)) != 0.
  The `beq` branch at 0x10013f98 targets 0x10015510 and is always taken.
  The `bne` branch at 0x10013fe8 targets 0x10014000, is taken when a3(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when a3(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10013ff8 targets 0x1001551c and is always taken.
  The `beq` branch at 0x10014008 targets 0x10014060, is taken when a5(=[a1]:1) == 0, and falls through when a5(=[a1]:1) != 0.
  The `beq` branch at 0x1001402c targets 0x10014060, is taken when v0(=ret(vfmtReadCmp1Format)) == 0, and falls through when v0(=ret(vfmtReadCmp1Format)) != 0.
  The `beq` branch at 0x10014058 targets 0x10015510 and is always taken.
  The `bne` branch at 0x100140ac targets 0x100140c4, is taken when a3(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when a3(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100140bc targets 0x1001551c and is always taken.
  The `beq` branch at 0x100140cc targets 0x1001412c, is taken when a5(=[a1]:1) == 0, and falls through when a5(=[a1]:1) != 0.
  The `beq` branch at 0x100140f4 targets 0x1001412c, is taken when v0(=ret(vfmtReadCmp1Format)) == 0, and falls through when v0(=ret(vfmtReadCmp1Format)) != 0.
  The `beq` branch at 0x10014124 targets 0x10015510 and is always taken.
  The `bne` branch at 0x10014174 targets 0x10014194, is taken when a3(=ret(SDBgetSymbolValueArray)) != 0, and falls through when a3(=ret(SDBgetSymbolValueArray)) == 0.
  The `beq` branch at 0x1001418c targets 0x1001551c and is always taken.
  The `bne` branch at 0x100141d0 targets 0x10014204, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100141fc targets 0x10015510 and is always taken.
  The `bne` branch at 0x10014244 targets 0x10014278, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10014270 targets 0x10015510 and is always taken.
  The `bne` branch at 0x100142b8 targets 0x100142ec, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100142e4 targets 0x10015510 and is always taken.
  The `bne` branch at 0x1001432c targets 0x10014360, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10014358 targets 0x10015510 and is always taken.
  The `bne` branch at 0x100143a0 targets 0x100143d4, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100143cc targets 0x10015510 and is always taken.
  The `bne` branch at 0x10014420 targets 0x10014440, is taken when a3(=ret(SDBgetSymbolValueArray)) != 0, and falls through when a3(=ret(SDBgetSymbolValueArray)) == 0.
  The `beq` branch at 0x10014438 targets 0x1001551c and is always taken.
  The `bne` branch at 0x1001447c targets 0x100144b0, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100144a8 targets 0x10015510 and is always taken.
  The `bne` branch at 0x100144f0 targets 0x10014524, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x1001451c targets 0x10015510 and is always taken.
  The `bne` branch at 0x10014564 targets 0x10014598, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10014590 targets 0x10015510 and is always taken.
  The `blez` branch at 0x100145a4 targets 0x100152a8, is taken when a2(=[a1+4992]:2) <= 0 (signed), and falls through when a2(=[a1+4992]:2) > 0 (signed).
  The `bne` branch at 0x100145f4 targets 0x10014614, is taken when a3(=ret(SDBgetSymbolValueArray)) != 0, and falls through when a3(=ret(SDBgetSymbolValueArray)) == 0.
  The `beq` branch at 0x1001460c targets 0x1001551c and is always taken.
  The `bne` branch at 0x1001465c targets 0x1001467c, is taken when a3(=ret(SDBgetSymbolValueArray)) != 0, and falls through when a3(=ret(SDBgetSymbolValueArray)) == 0.
  The `beq` branch at 0x10014674 targets 0x1001551c and is always taken.
  The `bne` branch at 0x100146b8 targets 0x100146ec, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100146e4 targets 0x10015510 and is always taken.
  The `bne` branch at 0x1001472c targets 0x10014760, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10014758 targets 0x10015510 and is always taken.
  The `bne` branch at 0x100147a0 targets 0x100147d4, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100147cc targets 0x10015510 and is always taken.
  The `bne` branch at 0x10014814 targets 0x10014848, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10014840 targets 0x10015510 and is always taken.
  The `bne` branch at 0x10014888 targets 0x100148bc, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100148b4 targets 0x10015510 and is always taken.
  The `bne` branch at 0x100148fc targets 0x10014930, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10014928 targets 0x10015510 and is always taken.
  The `bne` branch at 0x10014970 targets 0x100149a4, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x1001499c targets 0x10015510 and is always taken.
  The `bne` branch at 0x100149e4 targets 0x10014a18, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10014a10 targets 0x10015510 and is always taken.
  The `bne` branch at 0x10014a58 targets 0x10014a8c, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10014a84 targets 0x10015510 and is always taken.
  The `bne` branch at 0x10014acc targets 0x10014b00, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10014af8 targets 0x10015510 and is always taken.
  The `bne` branch at 0x10014b40 targets 0x10014b74, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10014b6c targets 0x10015510 and is always taken.
  The `bne` branch at 0x10014bb4 targets 0x10014be8, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10014be0 targets 0x10015510 and is always taken.
  The `bne` branch at 0x10014c28 targets 0x10014c5c, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10014c54 targets 0x10015510 and is always taken.
  The `bne` branch at 0x10014c9c targets 0x10014cd0, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10014cc8 targets 0x10015510 and is always taken.
  The `bne` branch at 0x10014d10 targets 0x10014d44, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10014d3c targets 0x10015510 and is always taken.
  The `bne` branch at 0x10014d84 targets 0x10014db8, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10014db0 targets 0x10015510 and is always taken.
  The `bne` branch at 0x10014df8 targets 0x10014e2c, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10014e24 targets 0x10015510 and is always taken.
  The `bne` branch at 0x10014e6c targets 0x10014ea0, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10014e98 targets 0x10015510 and is always taken.
  The `bne` branch at 0x10014ee0 targets 0x10014f14, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10014f0c targets 0x10015510 and is always taken.
  The `bne` branch at 0x10014f54 targets 0x10014f88, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10014f80 targets 0x10015510 and is always taken.
  The `bne` branch at 0x10014fc8 targets 0x10014ffc, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10014ff4 targets 0x10015510 and is always taken.
  The `bne` branch at 0x1001503c targets 0x10015070, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10015068 targets 0x10015510 and is always taken.
  The `bne` branch at 0x100150b0 targets 0x100150e4, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100150dc targets 0x10015510 and is always taken.
  The `bne` branch at 0x10015124 targets 0x10015158, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10015150 targets 0x10015510 and is always taken.
  The `bne` branch at 0x10015198 targets 0x100151cc, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100151c4 targets 0x10015510 and is always taken.
  The `bne` branch at 0x1001520c targets 0x10015240, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x10015238 targets 0x10015510 and is always taken.
  The `bne` branch at 0x10015290 targets 0x100152a8, is taken when a3(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when a3(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100152a0 targets 0x1001551c and is always taken.
  The `beq` branch at 0x100152b4 targets 0x100154f4 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x10015320 targets 0x10015354, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x1001534c targets 0x10015510 and is always taken.
  The `bne` branch at 0x100153a0 targets 0x100153d4, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100153cc targets 0x10015510 and is always taken.
  The `bne` branch at 0x10015420 targets 0x10015454, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x1001544c targets 0x10015510 and is always taken.
  The `bne` branch at 0x100154a0 targets 0x100154d4, is taken when v0(=ret(SDBgetSymbolValueScalar)) != 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) == 0.
  The `beq` branch at 0x100154cc targets 0x10015510 and is always taken.
  The `bne` branch at 0x100154ec targets 0x100152bc, is taken when a2(?) < 0x4 (signed), and falls through when a2(?) >= 0x4 (signed).
  The `beq` branch at 0x10015508 targets 0x1001551c and is always taken.
  The return at 0x1001552c has v0 = one of 0x0, 0x2.

- `vfmtWriteCmp1Combination` in `usr/gfx/dmconf` at 0x10015540 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10015540-0x1001695c (5148 bytes).
  It occupies 5148 bytes.
  The `jalr` at 0x1001556c calls sprintf with a0=sp-1248, a1=0x10024698, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10015598 calls (unnamed) [0x10013be0] with a0=0x10022490, a1=0x124, a2=?, a3=?.
  The `jalr` at 0x100155c8 calls sprintf with a0=sp-1224, a1=0x100224b8, a2=0x1, a3=0x1.
  The `jal` at 0x100155dc calls vfmtFindCmpCombinationFile [0x10016f30] with a0=sp-1120, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x100155f4 calls SDBopenNewDatabase [0x100176f0] with a0=sp-1120, a1=sp-1232, a2=sp-1224, a3=?.
  The `jal` at 0x10015638 calls SDBaddNewScalarSymbol [0x1001751c] with a0=ret(SDBopenNewDatabase), a1=[0x100248a0], a2=0x7, a3=sp-1232, a4=sym(xdr_u_short).
  The `jal` at 0x10015664 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=0x100224d8, a2=0x7, a3=sp-1230, a4=sym(xdr_u_short).
  The `jalr` at 0x10015690 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x100248a4].
  The `jal` at 0x100156bc calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0xf, a3=sp-56, a4=sym(xdr_string).
  The `jalr` at 0x100156fc calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x100248a8], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10015724 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0xf, a3=sp-56, a4=sym(xdr_string), a6=a1 at entry (arg1).
  The `jalr` at 0x10015764 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x100248ac], a7=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10015790 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0xf, a3=sp-56, a4=sym(xdr_string).
  The `jalr` at 0x100157d0 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x100248c0].
  The `jal` at 0x100157f8 calls SDBaddNewArraySymbol [0x100174e4] with a0=?, a1=sp-88, a2=0x2, a3=0x2, a4=a1+852, a5=sym(xdr_int).
  The `jalr` at 0x10015838 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x100248e4], a5=ret(SDBaddNewArraySymbol).
  The `jal` at 0x10015860 calls SDBaddNewArraySymbol [0x100174e4] with a0=?, a1=sp-88, a2=0xa, a3=0x3, a4=a1+860, a5=sym(xdr_bool).
  The `jalr` at 0x100158a0 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x100248b0], a5=ret(SDBaddNewArraySymbol).
  The `jal` at 0x100158c4 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+768, a4=sym(xdr_int).
  The `jalr` at 0x10015904 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x100248b8], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10015928 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+772, a4=sym(xdr_int).
  The `jalr` at 0x10015968 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x100248b4], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x1001598c calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+776, a4=sym(xdr_int).
  The `jalr` at 0x100159cc calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x100248d8], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x100159f0 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+880, a4=sym(xdr_int).
  The `jalr` at 0x10015a30 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x100248dc], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10015a54 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+876, a4=sym(xdr_int).
  The `jalr` at 0x10015a94 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x100248e0], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10015ab8 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+872, a4=sym(xdr_int).
  The `jalr` at 0x10015af8 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x100248bc], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10015b1c calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+780, a4=sym(xdr_int).
  The `jalr` at 0x10015b5c calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x100248d4], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10015b80 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+848, a4=sym(xdr_int).
  The `jalr` at 0x10015bc0 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x100248ec], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10015be8 calls SDBaddNewArraySymbol [0x100174e4] with a0=?, a1=sp-88, a2=0x2, a3=0x2, a4=a1+5260, a5=sym(xdr_int).
  The `jalr` at 0x10015c28 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x100248f0], a5=ret(SDBaddNewArraySymbol).
  The `jal` at 0x10015c50 calls SDBaddNewArraySymbol [0x100174e4] with a0=?, a1=sp-88, a2=0x2, a3=0x2, a4=a1+5268, a5=sym(xdr_int).
  The `jalr` at 0x10015c90 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x100248f4], a5=ret(SDBaddNewArraySymbol).
  The `jal` at 0x10015cb4 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5252, a4=sym(xdr_int).
  The `jalr` at 0x10015cf4 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x100248f8], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10015d18 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5256, a4=sym(xdr_int).
  The `jalr` at 0x10015d58 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x100248fc], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10015d7c calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5276, a4=sym(xdr_int).
  The `jalr` at 0x10015dbc calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x10024900], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10015de0 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5280, a4=sym(xdr_int).
  The `jalr` at 0x10015e20 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x10024904], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10015e44 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5284, a4=sym(xdr_int).
  The `jalr` at 0x10015e84 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x10024908], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10015ea8 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5288, a4=sym(xdr_int).
  The `jalr` at 0x10015ee8 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x1002490c], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10015f0c calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5292, a4=sym(xdr_int).
  The `jalr` at 0x10015f4c calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x10024910], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10015f70 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5296, a4=sym(xdr_int).
  The `jalr` at 0x10015fb0 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x10024914], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10015fd4 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5300, a4=sym(xdr_int).
  The `jalr` at 0x10016014 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x10024918], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10016038 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5304, a4=sym(xdr_int).
  The `jalr` at 0x10016078 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x1002491c], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x1001609c calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5308, a4=sym(xdr_int).
  The `jalr` at 0x100160dc calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x10024920], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10016100 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5312, a4=sym(xdr_int).
  The `jalr` at 0x10016140 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x10024924], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10016164 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5316, a4=sym(xdr_int).
  The `jalr` at 0x100161a4 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x1002492c], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x100161c8 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x10, a3=a1+5328, a4=sym(xdr_float).
  The `jalr` at 0x10016208 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x10024928], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x1001622c calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5320, a4=sym(xdr_int).
  The `jalr` at 0x1001626c calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x10024930], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10016290 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5324, a4=sym(xdr_int).
  The `jalr` at 0x100162d0 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x100248e8], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x100162fc calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0xf, a3=sp-56, a4=sym(xdr_string), a6=a1+4996.
  The `jalr` at 0x1001633c calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x10024934], a7=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10016360 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5332, a4=sym(xdr_int).
  The `jalr` at 0x100163a0 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x10024938], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x100163c4 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5336, a4=sym(xdr_int).
  The `jalr` at 0x10016404 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x1002493c], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10016428 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5340, a4=sym(xdr_int).
  The `jalr` at 0x10016468 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x10024940], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x1001648c calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5344, a4=sym(xdr_int).
  The `jalr` at 0x100164cc calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x10024944], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x100164f0 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5348, a4=sym(xdr_int).
  The `jalr` at 0x10016530 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x10024948], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10016554 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5352, a4=sym(xdr_int).
  The `jalr` at 0x10016594 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x1002494c], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x100165b8 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5356, a4=sym(xdr_int).
  The `jalr` at 0x100165f8 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x10024950], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x1001661c calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5356, a4=sym(xdr_int).
  The `jalr` at 0x1001665c calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x10024954], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10016680 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5364, a4=sym(xdr_int).
  The `jalr` at 0x100166c0 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x10024958], a4=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x100166e4 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=a1+5364, a4=sym(xdr_int).
  The `jalr` at 0x10016738 calls sprintf with a0=sp-1248, a1=0x10022480, a2=?, a3=?.
  The `jalr` at 0x10016754 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x100248c4].
  The `jal` at 0x10016784 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=?, a4=sym(xdr_int).
  The `jalr` at 0x100167c4 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x100248c8], a5=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x100167f4 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=?, a4=sym(xdr_int).
  The `jalr` at 0x10016834 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x100248cc], a5=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x10016864 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=?, a4=sym(xdr_int).
  The `jalr` at 0x100168a4 calls sprintf with a0=sp-88, a1=0x100246a0, a2=sp-1248, a3=[0x100248d0], a5=ret(SDBaddNewScalarSymbol).
  The `jal` at 0x100168d4 calls SDBaddNewScalarSymbol [0x1001751c] with a0=?, a1=sp-88, a2=0x2, a3=?, a4=sym(xdr_int).
  The `jal` at 0x10016924 calls SDBcloseNewDatabase [0x1001755c] with a0=?, a1=?, a2=?, a3=?, a5=ret(SDBaddNewScalarSymbol).
  The `bne` branch at 0x10015578 targets 0x100155a8, is taken when v0(=a1) != 0, and falls through when v0(=a1) == 0.
  The `beq` branch at 0x100155a0 targets 0x10016938 and is always taken.
  The `bne` branch at 0x10015608 targets 0x10015620, is taken when a4(=ret(SDBopenNewDatabase)) != 0, and falls through when a4(=ret(SDBopenNewDatabase)) == 0.
  The `beq` branch at 0x10015618 targets 0x10016944 and is always taken.
  The `bne` branch at 0x100156d0 targets 0x100156e8, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100156e0 targets 0x10016944 and is always taken.
  The `bne` branch at 0x10015738 targets 0x10015750, is taken when a7(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a7(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10015748 targets 0x10016944 and is always taken.
  The `bne` branch at 0x100157a4 targets 0x100157bc, is taken when t2(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when t2(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100157b4 targets 0x10016944 and is always taken.
  The `bne` branch at 0x1001580c targets 0x10015824, is taken when a5(=ret(SDBaddNewArraySymbol)) != 0, and falls through when a5(=ret(SDBaddNewArraySymbol)) == 0.
  The `beq` branch at 0x1001581c targets 0x10016944 and is always taken.
  The `bne` branch at 0x10015874 targets 0x1001588c, is taken when a5(=ret(SDBaddNewArraySymbol)) != 0, and falls through when a5(=ret(SDBaddNewArraySymbol)) == 0.
  The `beq` branch at 0x10015884 targets 0x10016944 and is always taken.
  The `bne` branch at 0x100158d8 targets 0x100158f0, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100158e8 targets 0x10016944 and is always taken.
  The `bne` branch at 0x1001593c targets 0x10015954, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x1001594c targets 0x10016944 and is always taken.
  The `bne` branch at 0x100159a0 targets 0x100159b8, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100159b0 targets 0x10016944 and is always taken.
  The `bne` branch at 0x10015a04 targets 0x10015a1c, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10015a14 targets 0x10016944 and is always taken.
  The `bne` branch at 0x10015a68 targets 0x10015a80, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10015a78 targets 0x10016944 and is always taken.
  The `bne` branch at 0x10015acc targets 0x10015ae4, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10015adc targets 0x10016944 and is always taken.
  The `bne` branch at 0x10015b30 targets 0x10015b48, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10015b40 targets 0x10016944 and is always taken.
  The `bne` branch at 0x10015b94 targets 0x10015bac, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10015ba4 targets 0x10016944 and is always taken.
  The `bne` branch at 0x10015bfc targets 0x10015c14, is taken when a5(=ret(SDBaddNewArraySymbol)) != 0, and falls through when a5(=ret(SDBaddNewArraySymbol)) == 0.
  The `beq` branch at 0x10015c0c targets 0x10016944 and is always taken.
  The `bne` branch at 0x10015c64 targets 0x10015c7c, is taken when a5(=ret(SDBaddNewArraySymbol)) != 0, and falls through when a5(=ret(SDBaddNewArraySymbol)) == 0.
  The `beq` branch at 0x10015c74 targets 0x10016944 and is always taken.
  The `bne` branch at 0x10015cc8 targets 0x10015ce0, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10015cd8 targets 0x10016944 and is always taken.
  The `bne` branch at 0x10015d2c targets 0x10015d44, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10015d3c targets 0x10016944 and is always taken.
  The `bne` branch at 0x10015d90 targets 0x10015da8, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10015da0 targets 0x10016944 and is always taken.
  The `bne` branch at 0x10015df4 targets 0x10015e0c, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10015e04 targets 0x10016944 and is always taken.
  The `bne` branch at 0x10015e58 targets 0x10015e70, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10015e68 targets 0x10016944 and is always taken.
  The `bne` branch at 0x10015ebc targets 0x10015ed4, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10015ecc targets 0x10016944 and is always taken.
  The `bne` branch at 0x10015f20 targets 0x10015f38, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10015f30 targets 0x10016944 and is always taken.
  The `bne` branch at 0x10015f84 targets 0x10015f9c, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10015f94 targets 0x10016944 and is always taken.
  The `bne` branch at 0x10015fe8 targets 0x10016000, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10015ff8 targets 0x10016944 and is always taken.
  The `bne` branch at 0x1001604c targets 0x10016064, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x1001605c targets 0x10016944 and is always taken.
  The `bne` branch at 0x100160b0 targets 0x100160c8, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100160c0 targets 0x10016944 and is always taken.
  The `bne` branch at 0x10016114 targets 0x1001612c, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10016124 targets 0x10016944 and is always taken.
  The `bne` branch at 0x10016178 targets 0x10016190, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10016188 targets 0x10016944 and is always taken.
  The `bne` branch at 0x100161dc targets 0x100161f4, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100161ec targets 0x10016944 and is always taken.
  The `bne` branch at 0x10016240 targets 0x10016258, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10016250 targets 0x10016944 and is always taken.
  The `bne` branch at 0x100162a4 targets 0x100162bc, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100162b4 targets 0x10016944 and is always taken.
  The `bne` branch at 0x10016310 targets 0x10016328, is taken when a7(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a7(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10016320 targets 0x10016944 and is always taken.
  The `bne` branch at 0x10016374 targets 0x1001638c, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10016384 targets 0x10016944 and is always taken.
  The `bne` branch at 0x100163d8 targets 0x100163f0, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100163e8 targets 0x10016944 and is always taken.
  The `bne` branch at 0x1001643c targets 0x10016454, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x1001644c targets 0x10016944 and is always taken.
  The `bne` branch at 0x100164a0 targets 0x100164b8, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100164b0 targets 0x10016944 and is always taken.
  The `bne` branch at 0x10016504 targets 0x1001651c, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10016514 targets 0x10016944 and is always taken.
  The `bne` branch at 0x10016568 targets 0x10016580, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10016578 targets 0x10016944 and is always taken.
  The `bne` branch at 0x100165cc targets 0x100165e4, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100165dc targets 0x10016944 and is always taken.
  The `bne` branch at 0x10016630 targets 0x10016648, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10016640 targets 0x10016944 and is always taken.
  The `bne` branch at 0x10016694 targets 0x100166ac, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100166a4 targets 0x10016944 and is always taken.
  The `bne` branch at 0x100166f8 targets 0x10016710, is taken when a4(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a4(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10016708 targets 0x10016944 and is always taken.
  The `beq` branch at 0x1001671c targets 0x1001691c and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x10016798 targets 0x100167b0, is taken when a5(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a5(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100167a8 targets 0x10016944 and is always taken.
  The `bne` branch at 0x10016808 targets 0x10016820, is taken when a5(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a5(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10016818 targets 0x10016944 and is always taken.
  The `bne` branch at 0x10016878 targets 0x10016890, is taken when a5(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a5(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x10016888 targets 0x10016944 and is always taken.
  The `bne` branch at 0x100168e8 targets 0x10016900, is taken when a5(=ret(SDBaddNewScalarSymbol)) != 0, and falls through when a5(=ret(SDBaddNewScalarSymbol)) == 0.
  The `beq` branch at 0x100168f8 targets 0x10016944 and is always taken.
  The `bne` branch at 0x10016914 targets 0x10016724, is taken when a7(?) < 0x4 (signed), and falls through when a7(?) >= 0x4 (signed).
  The `beq` branch at 0x10016930 targets 0x10016944 and is always taken.
  The return at 0x10016954 has v0 = one of 0x0, 0x1, 0x2.
