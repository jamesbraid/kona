# Instruction readings from hostfacts

These entries record established instruction facts from whole routine bodies in the identified binaries. They describe software behavior, not hardware behavior, and each instruction locator names an address in that binary build.

Skipped routines: 24,591 are located, understood, or marked as having no software dependency; 1,022 already have an exact entry for the same binary and routine; 28,446 other eligible routines fall after this 250-routine slice.

- `__ct__7GvoFormGPCcP10_WidgetRec` in `usr/gfx/ircombine` at 0x1004c370 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004c370-0x1004c3f4 (132 bytes).
  It occupies 132 bytes.
  The `sw` at 0x1004c3b4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x1004c3c4 stores 4 bytes to a0 (arg0 at entry) +0x154.
  The `jal` at 0x1004c3a4 calls __ct__9GvoFormUIGPCcP10_WidgetRec [0x1004edb0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1004c3d8 has v0 = a0.
  The instructions from 0x1004c3e0 to 0x1004c3f0 are not reached by any path from the entry, and their branches are not listed.
- `__ct__7GvoFormGPCc` in `usr/gfx/ircombine` at 0x1004c400 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004c400-0x1004c46c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x1004c43c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x1004c42c calls __ct__9GvoFormUIGPCc [0x1004ee40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1004c450 has v0 = a0.
  The instructions from 0x1004c458 to 0x1004c468 are not reached by any path from the entry, and their branches are not listed.
- `__dt__7GvoFormGv` in `usr/gfx/ircombine` at 0x1004c470 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004c470-0x1004c504 (148 bytes).
  It occupies 148 bytes.
  The `sw` at 0x1004c4a4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x1004c4b4 calls __dt__9GvoFormUIGv [0x1004eeb0] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004c4d4 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1004c494 targets 0x1004c4dc, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x1004c4c4 targets 0x1004c4dc, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x1004c4e8 has v0 = one of 0x64c00, ret(__dt__9GvoFormUIGv), ret(__dl__GPv).
  The instructions from 0x1004c4f0 to 0x1004c500 are not reached by any path from the entry, and their branches are not listed.
- `className__7GvoFormGv` in `usr/gfx/ircombine` at 0x1004c510 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004c510-0x1004c54c (60 bytes).
  It occupies 60 bytes.
  The `beq` branch at 0x1004c530 targets 0x1004c538 and is always taken.
  The return at 0x1004c544 has v0 = 0x100aa738.
- `update__7GvoFormGv` in `usr/gfx/ircombine` at 0x1004c590 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004c590-0x1004ce44 (2228 bytes).
  It occupies 2228 bytes.
  The `lw` at 0x1004c5c0 loads 4 bytes from a0 (arg0 at entry) +0x98.
  35 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x154, including `lw` at 0x1004c5dc, `lw` at 0x1004c5fc, `lw` at 0x1004c674.
  The `lw` at 0x1004c5e0 loads 4 bytes from [a0+340] +0x25c.
  The `lw` at 0x1004c600 loads 4 bytes from [a0+340] +0x258.
  The `lw` at 0x1004c62c loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x1004c658 loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `lw` at 0x1004c678 loads 4 bytes from [a0+340] +0x140.
  The `lw` at 0x1004c68c loads 4 bytes from a0 (arg0 at entry) +0xf0.
  The `lw` at 0x1004c698 loads 4 bytes from [a0+340] +0x134.
  The `lw` at 0x1004c6ac loads 4 bytes from a0 (arg0 at entry) +0xe8.
  The `lw` at 0x1004c6b8 loads 4 bytes from [a0+340] +0x138.
  The `lw` at 0x1004c6cc loads 4 bytes from a0 (arg0 at entry) +0xf8.
  The `lw` at 0x1004c6d8 loads 4 bytes from [a0+340] +0x148.
  The `lw` at 0x1004c6ec loads 4 bytes from a0 (arg0 at entry) +0xfc.
  The `lw` at 0x1004c6f8 loads 4 bytes from [a0+340] +0x14c.
  2 such `lw` accesses load 4 bytes from [a0+340] +0x104, including `lw` at 0x1004c710, `lw` at 0x1004c7f8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xf4, including `lw` at 0x1004c724, `lw` at 0x1004c7ec.
  The `lw` at 0x1004c72c loads 4 bytes from a0 (arg0 at entry) +0x118.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x50, including `lw` at 0x1004c740, `lw` at 0x1004c80c, `lw` at 0x1004cd3c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x1004c758, `lw` at 0x1004c824, `lw` at 0x1004cd08.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa0, including `lw` at 0x1004c770, `lw` at 0x1004c83c, `lw` at 0x1004cc04.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lw` at 0x1004c788, `lw` at 0x1004c854, `lw` at 0x1004cc38.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x88, including `lw` at 0x1004c7a0, `lw` at 0x1004c86c, `lw` at 0x1004ccd4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xec, including `lw` at 0x1004c7b8, `lw` at 0x1004c884, `lw` at 0x1004c8b0.
  The `lw` at 0x1004c8bc loads 4 bytes from [a0+340] +0x2ac.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe4, including `lw` at 0x1004c8fc, `lw` at 0x1004c94c.
  The `lw` at 0x1004c904 loads 4 bytes from a0 (arg0 at entry) +0x110.
  The `lw` at 0x1004c954 loads 4 bytes from a0 (arg0 at entry) +0x114.
  The `lw` at 0x1004c968 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x1004c988 loads 4 bytes from [a0+340] +0x4e0.
  2 such `lwc1` accesses load 4 bytes from [a0+340] +0x130, including `lwc1` at 0x1004c9a8, `lwc1` at 0x1004ca14.
  The `lw` at 0x1004c9c4 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x1004c9fc loads 4 bytes from [a0+340] +0x484.
  The `lw` at 0x1004ca34 loads 4 bytes from a0 (arg0 at entry) +0xd0.
  The `lw` at 0x1004ca70 loads 4 bytes from [a0+340] +0x128.
  The `lw` at 0x1004ca7c loads 4 bytes from [a0+340] +0x12c.
  The `lw` at 0x1004ca90 loads 4 bytes from a0 (arg0 at entry) +0xbc.
  The `lw` at 0x1004cabc loads 4 bytes from a0 (arg0 at entry) +0x68.
  The `lw` at 0x1004cadc loads 4 bytes from [a0+340] +0x144.
  The `lw` at 0x1004caf0 loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `lw` at 0x1004cb10 loads 4 bytes from [a0+340] +0x13c.
  The `lw` at 0x1004cb24 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0x1004cb44 loads 4 bytes from [a0+340] +0x2a4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5c, including `lw` at 0x1004cb58, `lw` at 0x1004ce14.
  The `lwc1` at 0x1004cb78 loads 4 bytes from [a0+340] +0x270.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x74, including `lw` at 0x1004cb8c, `lw` at 0x1004cdfc.
  The `lwc1` at 0x1004cbac loads 4 bytes from [a0+340] +0x26c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x80, including `lw` at 0x1004cbc0, `lw` at 0x1004cde4.
  The `lwc1` at 0x1004cbe0 loads 4 bytes from [a0+340] +0x268.
  The `sw` at 0x1004cbfc stores 4 bytes to [a0+340] +0x2c0.
  The `lwc1` at 0x1004cc24 loads 4 bytes from [a0+340] +0x274.
  The `lwc1` at 0x1004cc58 loads 4 bytes from [a0+340] +0x278.
  3 such `lwc1` accesses load 4 bytes from [a0+340] +0x284, including `lwc1` at 0x1004cc70, `lwc1` at 0x1004cca8, `lwc1` at 0x1004ccf4.
  2 such `swc1` accesses store 4 bytes to [a0+340] +0x284, including `swc1` at 0x1004cc94, `swc1` at 0x1004cccc.
  The `lw` at 0x1004cd28 loads 4 bytes from [a0+340] +0x280.
  The `lw` at 0x1004cd5c loads 4 bytes from [a0+340] +0x27c.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1004cd70, `lw` at 0x1004cd80.
  The `lw` at 0x1004cdb8 loads 4 bytes from [a0+340] +0x2c0.
  The `jal` at 0x1004c5b4 calls update_fast__7GvoFormGv [0x1004ce50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004c5c8 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+152], a1=?, a2=?, a3=?.
  The `jal` at 0x1004c5e8 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+340]+604], a2=?, a3=?.
  The `jalr` at 0x1004c620 calls sprintf with a0=sp-208, a1=0x100aa740, a2=?, a3=?.
  The `jal` at 0x1004c634 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+120], a1=?, a2=?, a3=?.
  The `jal` at 0x1004c64c calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=sp-208, a2=?, a3=?.
  The `jal` at 0x1004c660 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+100], a1=?, a2=?, a3=?.
  The `jal` at 0x1004c680 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+340]+320], a2=?, a3=?.
  The `jalr` at 0x1004c6a0 calls set__12VkOptionMenuGi with a0=[a0+240], a1=[[a0+340]+308], a2=?, a3=?.
  The `jalr` at 0x1004c6c0 calls set__12VkOptionMenuGi with a0=[a0+232], a1=[[a0+340]+312], a2=?, a3=?.
  The `jalr` at 0x1004c6e0 calls set__12VkOptionMenuGi with a0=[a0+248], a1=[[a0+340]+328], a2=?, a3=?.
  The `jalr` at 0x1004c700 calls set__12VkOptionMenuGi with a0=[a0+252], a1=[[a0+340]+332], a2=?, a3=?.
  The `jalr` at 0x1004c734 calls set__12VkOptionMenuGP10VkMenuItem with a0=[a0+244], a1=[a0+280], a2=0xb, a3=?.
  The `jalr` at 0x1004c74c calls XtSetSensitive with a0=[a0+80], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1004c764 calls XtSetSensitive with a0=[a0+84], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1004c77c calls XtSetSensitive with a0=[a0+160], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1004c794 calls XtSetSensitive with a0=[a0+168], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1004c7ac calls XtSetSensitive with a0=[a0+136], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1004c7c0 calls baseWidget__10VkMenuItemCGv with a0=[a0+236], a1=?, a2=?, a3=?.
  The `jalr` at 0x1004c7d8 calls XtSetSensitive with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1004c800 calls set__12VkOptionMenuGi with a0=[a0+244], a1=[[a0+340]+260], a2=0xb, a3=?.
  The `jalr` at 0x1004c818 calls XtSetSensitive with a0=[a0+80], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1004c830 calls XtSetSensitive with a0=[a0+84], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1004c848 calls XtSetSensitive with a0=[a0+160], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1004c860 calls XtSetSensitive with a0=[a0+168], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1004c878 calls XtSetSensitive with a0=[a0+136], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1004c88c calls baseWidget__10VkMenuItemCGv with a0=[a0+236], a1=?, a2=?, a3=?.
  The `jalr` at 0x1004c8a4 calls XtSetSensitive with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1004c8c4 calls set__12VkOptionMenuGi with a0=[a0+236], a1=[[a0+340]+684], a2=?, a3=?.
  The `jalr` at 0x1004c8e4 calls strcmp with a0=[a0+340]+340, a1=0x10098348, a2=?, a3=?.
  The `jalr` at 0x1004c90c calls set__12VkOptionMenuGP10VkMenuItem with a0=[a0+228], a1=[a0+272], a2=?, a3=?.
  The `jalr` at 0x1004c934 calls strcmp with a0=[a0+340]+340, a1=0x10098360, a2=?, a3=?.
  The `jalr` at 0x1004c95c calls set__12VkOptionMenuGP10VkMenuItem with a0=[a0+228], a1=[a0+276], a2=?, a3=?.
  The `jal` at 0x1004c970 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+48], a1=?, a2=?, a3=?.
  The `jal` at 0x1004c990 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+340]+1248], a2=?, a3=?.
  The `jalr` at 0x1004c9b8 calls sprintf with a0=sp-144, a1=0x100aa748, a2=?, a3=?.
  The `jal` at 0x1004c9cc calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+64], a1=?, a2=?, a3=?.
  The `jal` at 0x1004c9e4 calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=?, a3=?.
  The `jalr` at 0x1004ca28 calls sprintf with a0=sp-144, a1=0x100aa748, a2=?, a3=[[a0+340]+1156].
  The `jal` at 0x1004ca3c calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+208], a1=?, a2=?, a3=?.
  The `jal` at 0x1004ca54 calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=?, a3=?.
  The `jalr` at 0x1004ca84 calls sprintf with a0=sp-144, a1=0x10098378, a2=[[a0+340]+296], a3=[[a0+340]+300].
  The `jal` at 0x1004ca98 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+188], a1=?, a2=?, a3=?.
  The `jal` at 0x1004cab0 calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=?, a3=?.
  The `jal` at 0x1004cac4 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+104], a1=?, a2=?, a3=?.
  The `jal` at 0x1004cae4 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+340]+324], a2=?, a3=?.
  The `jal` at 0x1004caf8 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+88], a1=?, a2=?, a3=?.
  The `jal` at 0x1004cb18 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+340]+316], a2=?, a3=?.
  The `jal` at 0x1004cb2c calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+96], a1=?, a2=?, a3=?.
  The `jal` at 0x1004cb4c calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+340]+676], a2=?, a3=?.
  The `jal` at 0x1004cb60 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+92], a1=?, a2=?, a3=?.
  The `jal` at 0x1004cb80 calls __as__9EZWrapperGf [0x1008f850] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+340], a2=?, a3=?; fp f13=[[a0+340]+624].
  The `jal` at 0x1004cb94 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+116], a1=?, a2=?, a3=?.
  The `jal` at 0x1004cbb4 calls __as__9EZWrapperGf [0x1008f850] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+340], a2=?, a3=?; fp f13=[[a0+340]+620].
  The `jal` at 0x1004cbc8 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+128], a1=?, a2=?, a3=?.
  The `jal` at 0x1004cbe8 calls __as__9EZWrapperGf [0x1008f850] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+340], a2=?, a3=?; fp f13=[[a0+340]+616].
  The `jal` at 0x1004cc0c calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+160], a1=0x1, a2=[a0+340], a3=?.
  The `jal` at 0x1004cc2c calls __as__9EZWrapperGf [0x1008f850] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=[a0+340]; fp f13=[[a0+340]+628].
  The `jal` at 0x1004cc40 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+168], a1=?, a2=?, a3=?.
  The `jal` at 0x1004cc60 calls __as__9EZWrapperGf [0x1008f850] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+340], a2=?, a3=?; fp f13=[[a0+340]+632].
  The `jal` at 0x1004ccdc calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+136], a1=?, a2=[a0+340], a3=?.
  The `jal` at 0x1004ccfc calls __as__9EZWrapperGf [0x1008f850] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+340], a2=?, a3=?; fp f13=[[a0+340]+644].
  The `jal` at 0x1004cd10 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+84], a1=?, a2=?, a3=?.
  The `jal` at 0x1004cd30 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+340]+640], a2=?, a3=?.
  The `jal` at 0x1004cd44 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+80], a1=?, a2=?, a3=?.
  The `jal` at 0x1004cd64 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+340]+636], a2=?, a3=?.
  The `jal` at 0x1004cd88 calls getTarget__18VkwindowMainWindowGv [0x1006f100] with a0=[sym(vkwindow)], a1=?, a2=[sym(vkwindow)], a3=?.
  The `jalr` at 0x1004cdf0 calls XtSetSensitive with a0=[a0+128], a1=one of 0x0, 0x1, a2=0x1, a3=[[a0+340]+704].
  The `jalr` at 0x1004ce08 calls XtSetSensitive with a0=[a0+116], a1=?, a2=?, a3=?.
  The `jalr` at 0x1004ce20 calls XtSetSensitive with a0=[a0+92], a1=?, a2=?, a3=?.
  The `bne` branch at 0x1004c718 targets 0x1004c7e8, is taken when a1(=[[a0+340]+260]) != a2(=0xb), and falls through when a1(=[[a0+340]+260]) == a2(=0xb).
  The `beq` branch at 0x1004c7e0 targets 0x1004c8ac and is always taken.
  The `bne` branch at 0x1004c8f0 targets 0x1004c91c, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x1004c914 targets 0x1004c964 and is always taken.
  The `bne` branch at 0x1004c940 targets 0x1004c964, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `bc1f` branch at 0x1004cc80 targets 0x1004cca0, is taken when not (f3(=[[a0+340]+644]) < f4(=0x42480000) (c.lt.s at 0x1004cc78)), and falls through when f3(=[[a0+340]+644]) < f4(=0x42480000) (c.lt.s at 0x1004cc78).
  The `beq` branch at 0x1004cc98 targets 0x1004ccd0 and is always taken.
  The `bc1f` branch at 0x1004ccb8 targets 0x1004ccd0, is taken when not (f6(=0x42c80000) < f7(=[[a0+340]+644]) (c.lt.s at 0x1004ccb0)), and falls through when f6(=0x42c80000) < f7(=[[a0+340]+644]) (c.lt.s at 0x1004ccb0).
  The `beq` branch at 0x1004cd74 targets 0x1004ce28, is taken when a2(=[sym(vkwindow)]) == 0, and falls through when a2(=[sym(vkwindow)]) != 0.
  The `beq` branch at 0x1004cd94 targets 0x1004ce28, is taken when v0(=ret(getTarget__18VkwindowMainWindowGv)) == 0, and falls through when v0(=ret(getTarget__18VkwindowMainWindowGv)) != 0.
  The `beq` branch at 0x1004cda8 targets 0x1004cdd4 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x1004cdbc targets 0x1004cdd4, is taken when a3(=[[a0+340]+704]) == 0, and falls through when a3(=[[a0+340]+704]) != 0.
  The `beq` branch at 0x1004cdcc targets 0x1004cdd8 and is always taken.
  The `beq` branch at 0x1004ce28 targets 0x1004ce30 and is always taken.
  The return at 0x1004ce3c has v0 = ?.
- `update_fast__7GvoFormGv` in `usr/gfx/ircombine` at 0x1004ce50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004ce50-0x1004cf58 (264 bytes).
  It occupies 264 bytes.
  The `lw` at 0x1004ce70 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x154, including `lw` at 0x1004ce8c, `lw` at 0x1004cec0, `lw` at 0x1004cef4.
  The `lw` at 0x1004ce90 loads 4 bytes from [a0+340] +0x108.
  The `lw` at 0x1004cea4 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0x1004cec4 loads 4 bytes from [a0+340] +0x10c.
  The `lw` at 0x1004ced8 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0x1004cef8 loads 4 bytes from [a0+340] +0x110.
  The `lw` at 0x1004cf0c loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lw` at 0x1004cf2c loads 4 bytes from [a0+340] +0x114.
  The `jal` at 0x1004ce78 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+164], a1=0x64220, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004ce98 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+340]+264], a2=?, a3=?.
  The `jal` at 0x1004ceac calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+172], a1=?, a2=?, a3=?.
  The `jal` at 0x1004cecc calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+340]+268], a2=?, a3=?.
  The `jal` at 0x1004cee0 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+156], a1=?, a2=?, a3=?.
  The `jal` at 0x1004cf00 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+340]+272], a2=?, a3=?.
  The `jal` at 0x1004cf14 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+124], a1=?, a2=?, a3=?.
  The `jal` at 0x1004cf34 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+340]+276], a2=?, a3=?.
  The `beq` branch at 0x1004cf3c targets 0x1004cf44 and is always taken.
  The return at 0x1004cf50 has v0 = ret(__as__9EZWrapperGi).
- `alphaChannel__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004cf60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004cf60-0x1004cfd0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1004cf90 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1004cf98 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004cf9c stores 4 bytes to [a0+340] +0x13c.
  The `lw` at 0x1004cfa4 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004cfac calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+340], a3=0x64110.
  The `beq` branch at 0x1004cfb4 targets 0x1004cfbc and is always taken.
  The return at 0x1004cfc8 has v0 = ret(update__18VkwindowMainWindowGv).
- `bGamma__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004cfd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004cfd0-0x1004d074 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0x1004d038 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `swc1` at 0x1004d040 stores 4 bytes to [a0+340] +0x270.
  The `lw` at 0x1004d048 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004d004 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d018 calls (unnamed) [0x1004ece0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jalr` at 0x1004d028 calls atof with a0=ret(0x1004ece0), a1=?, a2=?, a3=?.
  The `jal` at 0x1004d050 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+340]+624, a2=?, a3=?.
  The `beq` branch at 0x1004d058 targets 0x1004d060 and is always taken.
  The return at 0x1004d06c has v0 = ret(update__18VkwindowMainWindowGv).
- `channelEnable__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004d080 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004d080-0x1004d0f0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1004d0b0 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1004d0b8 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004d0bc stores 4 bytes to [a0+340] +0x2a4.
  The `lw` at 0x1004d0c4 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004d0cc calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+340], a3=0x63ff0.
  The `beq` branch at 0x1004d0d4 targets 0x1004d0dc and is always taken.
  The return at 0x1004d0e8 has v0 = ret(update__18VkwindowMainWindowGv).
- `closeChannel__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004d0f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004d0f0-0x1004d16c (124 bytes).
  It occupies 124 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x150, including `lw` at 0x1004d120, `lw` at 0x1004d130, `lw` at 0x1004d13c.
  2 such `lw` accesses load 4 bytes from [a0+336] +0x8, including `lw` at 0x1004d124, `lw` at 0x1004d140.
  The `lw` at 0x1004d128 loads 4 bytes from [[a0+336]+8] +0x30.
  The `lw` at 0x1004d144 loads 4 bytes from [[a0+336]+8] +0x38.
  The `jalr` at 0x1004d148 calls (unknown callee) with a0=([[[a0+336]+8]+48] + [a0+336]), a1=[a0+336], a2=a2 at entry (arg2), a3=0x63f80.
  The `beq` branch at 0x1004d150 targets 0x1004d158 and is always taken.
  The return at 0x1004d164 has v0 = ret(?).
- `cursorPriority__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004d170 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004d170-0x1004d1fc (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0x1004d1c4 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004d1c8 stores 4 bytes to [a0+340] +0x140.
  The `lw` at 0x1004d1d0 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004d1a4 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d1b8 calls (unnamed) [0x1004eca0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1004d1d8 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+340], a2=?, a3=?.
  The `beq` branch at 0x1004d1e0 targets 0x1004d1e8 and is always taken.
  The return at 0x1004d1f4 has v0 = ret(update__18VkwindowMainWindowGv).
- `dither__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004d200 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004d200-0x1004d270 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1004d230 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1004d238 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004d23c stores 4 bytes to [a0+340] +0x144.
  The `lw` at 0x1004d244 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004d24c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+340], a3=0x63e70.
  The `beq` branch at 0x1004d254 targets 0x1004d25c and is always taken.
  The return at 0x1004d268 has v0 = ret(update__18VkwindowMainWindowGv).
- `doCrYCb_422__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004d270 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004d270-0x1004d2d8 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x1004d2a0 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004d2a4 stores 4 bytes to [a0+340] +0x138.
  The `lw` at 0x1004d2ac loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004d2b4 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+340], a2=a2 at entry (arg2), a3=0x63e00.
  The `beq` branch at 0x1004d2bc targets 0x1004d2c4 and is always taken.
  The return at 0x1004d2d0 has v0 = ret(update__18VkwindowMainWindowGv).
- `doCrYCb_4224__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004d2e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004d2e0-0x1004d34c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x1004d314 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004d318 stores 4 bytes to [a0+340] +0x138.
  The `lw` at 0x1004d320 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004d328 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x1, a2=[a0+340], a3=a2 at entry (arg2), a4=0x63d90.
  The `beq` branch at 0x1004d330 targets 0x1004d338 and is always taken.
  The return at 0x1004d344 has v0 = ret(update__18VkwindowMainWindowGv).
- `doCrYCb_4444__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004d350 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004d350-0x1004d3bc (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x1004d384 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004d388 stores 4 bytes to [a0+340] +0x138.
  The `lw` at 0x1004d390 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004d398 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x2, a2=[a0+340], a3=a2 at entry (arg2), a4=0x63d20.
  The `beq` branch at 0x1004d3a0 targets 0x1004d3a8 and is always taken.
  The return at 0x1004d3b4 has v0 = ret(update__18VkwindowMainWindowGv).
- `doRGB_4444__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004d3c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004d3c0-0x1004d42c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x1004d3f4 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004d3f8 stores 4 bytes to [a0+340] +0x138.
  The `lw` at 0x1004d400 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004d408 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x3, a2=[a0+340], a3=a2 at entry (arg2), a4=0x63cb0.
  The `beq` branch at 0x1004d410 targets 0x1004d418 and is always taken.
  The return at 0x1004d424 has v0 = ret(update__18VkwindowMainWindowGv).
- `fs__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004d430 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004d430-0x1004d49c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x1004d464 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004d468 stores 4 bytes to [a0+340] +0x134.
  The `lw` at 0x1004d470 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004d478 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x4, a2=[a0+340], a3=a2 at entry (arg2), a4=0x63c40.
  The `beq` branch at 0x1004d480 targets 0x1004d488 and is always taken.
  The return at 0x1004d494 has v0 = ret(update__18VkwindowMainWindowGv).
- `gGamma__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004d4a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004d4a0-0x1004d544 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0x1004d508 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `swc1` at 0x1004d510 stores 4 bytes to [a0+340] +0x26c.
  The `lw` at 0x1004d518 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004d4d4 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d4e8 calls (unnamed) [0x1004ece0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jalr` at 0x1004d4f8 calls atof with a0=ret(0x1004ece0), a1=?, a2=?, a3=?.
  The `jal` at 0x1004d520 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+340]+620, a2=?, a3=?.
  The `beq` branch at 0x1004d528 targets 0x1004d530 and is always taken.
  The return at 0x1004d53c has v0 = ret(update__18VkwindowMainWindowGv).
- `gvoOutputFormat__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004d550 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004d550-0x1004d654 (260 bytes).
  It occupies 260 bytes.
  The `lw` at 0x1004d584 loads 4 bytes from a0 (arg0 at entry) +0x110.
  The `lw` at 0x1004d5bc loads 4 bytes from a0 (arg0 at entry) +0x114.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x154, including `lw` at 0x1004d5ec, `lw` at 0x1004d61c.
  The `lw` at 0x1004d5f0 loads 4 bytes from [a0+340] +0x104.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1004d5fc, `lw` at 0x1004d628.
  The `sw` at 0x1004d620 stores 4 bytes to [a0+340] +0x104.
  The `jalr` at 0x1004d58c calls baseWidget__10VkMenuItemCGv with a0=[a0+272], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x63b20.
  The `jalr` at 0x1004d5c4 calls baseWidget__10VkMenuItemCGv with a0=[a0+276], a1=?, a2=?, a3=?, a4=a1 at entry (arg1).
  The `jal` at 0x1004d60c calls loadFormat__18VkwindowMainWindowGiPCc [0x1006f0a0] with a0=[sym(vkwindow)], a1=0xb, a2=?, a3=?.
  The `jal` at 0x1004d630 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=[a0+340], a3=?.
  The `bne` branch at 0x1004d59c targets 0x1004d5b8, is taken when a4(=a1) != v0(=ret(baseWidget__10VkMenuItemCGv)), and falls through when a4(=a1) == v0(=ret(baseWidget__10VkMenuItemCGv)).
  The `beq` branch at 0x1004d5b0 targets 0x1004d5e8 and is always taken.
  The `bne` branch at 0x1004d5d4 targets 0x1004d5e8, is taken when a1 != v0(=ret(baseWidget__10VkMenuItemCGv)), and falls through when a1 == v0(=ret(baseWidget__10VkMenuItemCGv)).
  The `beq` branch at 0x1004d638 targets 0x1004d640 and is always taken.
  The return at 0x1004d64c has v0 = ret(update__18VkwindowMainWindowGv).
- `hPhase__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004d660 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004d660-0x1004d70c (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0x1004d6d4 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004d6d8 stores 4 bytes to [a0+340] +0x258.
  The `lw` at 0x1004d6e0 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004d694 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d6a8 calls (unnamed) [0x1004ece0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jalr` at 0x1004d6b8 calls atof with a0=ret(0x1004ece0), a1=?, a2=?, a3=?.
  The `jal` at 0x1004d6e8 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=[a0+340], a3=?.
  The `beq` branch at 0x1004d6f0 targets 0x1004d6f8 and is always taken.
  The return at 0x1004d704 has v0 = ret(update__18VkwindowMainWindowGv).
- `height__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004d710 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004d710-0x1004d7c0 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0x1004d764 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004d76c stores 4 bytes to [a0+340] +0x114.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1004d774, `lw` at 0x1004d794.
  The `jal` at 0x1004d744 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d758 calls (unnamed) [0x1004eca0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1004d788 calls clamp__18VkwindowMainWindowGiN21 [0x1006efb0] with a0=[sym(vkwindow)], a1=0xb, a2=0x1, a3=0x0.
  The `jal` at 0x1004d79c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1004d7a4 targets 0x1004d7ac and is always taken.
  The return at 0x1004d7b8 has v0 = ret(update__18VkwindowMainWindowGv).
- `interleaved__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004d7c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004d7c0-0x1004d82c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x1004d7f4 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004d7f8 stores 4 bytes to [a0+340] +0x2ac.
  The `lw` at 0x1004d800 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004d808 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x1, a2=[a0+340], a3=a2 at entry (arg2), a4=0x638b0.
  The `beq` branch at 0x1004d810 targets 0x1004d818 and is always taken.
  The return at 0x1004d824 has v0 = ret(update__18VkwindowMainWindowGv).
- `progressive__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004d830 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004d830-0x1004d898 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x1004d860 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004d864 stores 4 bytes to [a0+340] +0x2ac.
  The `lw` at 0x1004d86c loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004d874 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+340], a2=a2 at entry (arg2), a3=0x63840.
  The `beq` branch at 0x1004d87c targets 0x1004d884 and is always taken.
  The return at 0x1004d890 has v0 = ret(update__18VkwindowMainWindowGv).
- `rGamma__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004d8a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004d8a0-0x1004d944 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0x1004d908 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `swc1` at 0x1004d910 stores 4 bytes to [a0+340] +0x268.
  The `lw` at 0x1004d918 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004d8d4 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d8e8 calls (unnamed) [0x1004ece0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jalr` at 0x1004d8f8 calls atof with a0=ret(0x1004ece0), a1=?, a2=?, a3=?.
  The `jal` at 0x1004d920 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+340]+616, a2=?, a3=?.
  The `beq` branch at 0x1004d928 targets 0x1004d930 and is always taken.
  The return at 0x1004d93c has v0 = ret(update__18VkwindowMainWindowGv).
- `restoreSize__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004d950 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004d950-0x1004da88 (312 bytes).
  It occupies 312 bytes.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x154, including `lw` at 0x1004d980, `lw` at 0x1004d990, `lw` at 0x1004d9a0.
  2 such `lw` accesses load 4 bytes from [a0+340] +0x128, including `lw` at 0x1004d988, `lw` at 0x1004da0c.
  The `sw` at 0x1004d998 stores 4 bytes to [a0+340] +0x110.
  2 such `lw` accesses load 4 bytes from [a0+340] +0x12c, including `lw` at 0x1004d9a8, `lw` at 0x1004da34.
  The `sw` at 0x1004d9b8 stores 4 bytes to [a0+340] +0x114.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1004d9c0, `lw` at 0x1004d9e0.
  The `lw` at 0x1004d9fc loads 4 bytes from [a0+340] +0x110.
  The `lw` at 0x1004da24 loads 4 bytes from [a0+340] +0x114.
  The `jal` at 0x1004d9d4 calls clamp__18VkwindowMainWindowGiN21 [0x1006efb0] with a0=[sym(vkwindow)], a1=0xb, a2=0x1, a3=0x0, a4=0x63720.
  The `jal` at 0x1004d9e8 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `jalr` at 0x1004da44 calls getTheErrorDialog__Gv with a0=?, a1=[[a0+340]+272], a2=?, a3=?.
  The `jal` at 0x1004da64 calls (unnamed) [0x1004ed20] with a0=ret(getTheErrorDialog__Gv), a1=0x10098388, a2=a1 at entry (arg1), a3=?.
  The `bne` branch at 0x1004da10 targets 0x1004da40, is taken when a1(=[[a0+340]+272]) != a2(=[[a0+340]+296]), and falls through when a1(=[[a0+340]+272]) == a2(=[[a0+340]+296]).
  The `beq` branch at 0x1004da38 targets 0x1004da6c, is taken when a2(=[[a0+340]+276]) == a3(=[[a0+340]+300]), and falls through when a2(=[[a0+340]+276]) != a3(=[[a0+340]+300]).
  The `beq` branch at 0x1004da6c targets 0x1004da74 and is always taken.
  The return at 0x1004da80 has v0 = ?.
- `rgb10__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004da90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004da90-0x1004daf8 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x1004dac0 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004dac4 stores 4 bytes to [a0+340] +0x134.
  The `lw` at 0x1004dacc loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004dad4 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+340], a2=a2 at entry (arg2), a3=0x635e0.
  The `beq` branch at 0x1004dadc targets 0x1004dae4 and is always taken.
  The return at 0x1004daf0 has v0 = ret(update__18VkwindowMainWindowGv).
- `rgb12__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004db00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004db00-0x1004db6c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x1004db34 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004db38 stores 4 bytes to [a0+340] +0x134.
  The `lw` at 0x1004db40 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004db48 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x2, a2=[a0+340], a3=a2 at entry (arg2), a4=0x63570.
  The `beq` branch at 0x1004db50 targets 0x1004db58 and is always taken.
  The return at 0x1004db64 has v0 = ret(update__18VkwindowMainWindowGv).
- `rgba10__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004db70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004db70-0x1004dbdc (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x1004dba4 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004dba8 stores 4 bytes to [a0+340] +0x134.
  The `lw` at 0x1004dbb0 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004dbb8 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x1, a2=[a0+340], a3=a2 at entry (arg2), a4=0x63500.
  The `beq` branch at 0x1004dbc0 targets 0x1004dbc8 and is always taken.
  The return at 0x1004dbd4 has v0 = ret(update__18VkwindowMainWindowGv).
- `safeAreaPercent__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004dbe0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004dbe0-0x1004dc80 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x1004dc48 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `swc1` at 0x1004dc4c stores 4 bytes to [a0+340] +0x284.
  The `lw` at 0x1004dc54 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004dc14 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004dc28 calls (unnamed) [0x1004ece0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jalr` at 0x1004dc38 calls atof with a0=ret(0x1004ece0), a1=?, a2=?, a3=?.
  The `jal` at 0x1004dc5c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+340], a2=?, a3=?.
  The `beq` branch at 0x1004dc64 targets 0x1004dc6c and is always taken.
  The return at 0x1004dc78 has v0 = ret(update__18VkwindowMainWindowGv).
- `setFlickerFilter__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004dc80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004dc80-0x1004dcf0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1004dcb0 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1004dcb8 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004dcbc stores 4 bytes to [a0+340] +0x27c.
  The `lw` at 0x1004dcc4 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004dccc calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+340], a3=0x633f0.
  The `beq` branch at 0x1004dcd4 targets 0x1004dcdc and is always taken.
  The return at 0x1004dce8 has v0 = ret(update__18VkwindowMainWindowGv).
- `setLetterBox__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004dcf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004dcf0-0x1004dd60 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1004dd20 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1004dd28 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004dd2c stores 4 bytes to [a0+340] +0x280.
  The `lw` at 0x1004dd34 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004dd3c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+340], a3=0x63380.
  The `beq` branch at 0x1004dd44 targets 0x1004dd4c and is always taken.
  The return at 0x1004dd58 has v0 = ret(update__18VkwindowMainWindowGv).
- `sourceChannel__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004dd60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004dd60-0x1004e294 (1332 bytes).
  It occupies 1332 bytes.
  24 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x154, including `lw` at 0x1004dd90, `lw` at 0x1004ddbc, `lw` at 0x1004ddc8.
  13 such `lw` accesses load 4 bytes from [a0+340] +0x104, including `lw` at 0x1004dd94, `lw` at 0x1004ddcc, `lw` at 0x1004ddfc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xf4, including `lw` at 0x1004dda0, `lw` at 0x1004dec4, `lw` at 0x1004df0c.
  3 such `sw` accesses store 4 bytes to [a0+340] +0x104, including `sw` at 0x1004ddc0, `sw` at 0x1004dde8, `sw` at 0x1004deac.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1004de10, `lw` at 0x1004de40, `lw` at 0x1004dff4.
  The `lw` at 0x1004df14 loads 4 bytes from a0 (arg0 at entry) +0x118.
  2 such `lw` accesses load 4 bytes from [a0+340] +0x108, including `lw` at 0x1004df98, `lw` at 0x1004dfe8.
  2 such `lw` accesses load 4 bytes from [a0+340] +0x10c, including `lw` at 0x1004dfac, `lw` at 0x1004e00c.
  2 such `sw` accesses store 4 bytes to [a0+340] +0x108, including `sw` at 0x1004e04c, `sw` at 0x1004e0b4.
  2 such `sw` accesses store 4 bytes to [a0+340] +0x10c, including `sw` at 0x1004e060, `sw` at 0x1004e0d8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x50, including `lw` at 0x1004e0f8, `lw` at 0x1004e1a4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x1004e110, `lw` at 0x1004e1bc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa0, including `lw` at 0x1004e128, `lw` at 0x1004e1d4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lw` at 0x1004e140, `lw` at 0x1004e1ec.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x88, including `lw` at 0x1004e158, `lw` at 0x1004e204.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xec, including `lw` at 0x1004e170, `lw` at 0x1004e21c.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1004e248, `lw` at 0x1004e268.
  The `jalr` at 0x1004ddac calls getItemPosition__6VkMenuGP10_WidgetRec with a0=[a0+244], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x63310.
  The `jalr` at 0x1004de98 calls sprintf with a0=sp-1096, a1=0x100983b0, a2=[[a0+340]+260], a3=?, a5=[a0+340].
  The `jalr` at 0x1004deb4 calls getTheErrorDialog__Gv with a0=?, a1=?, a2=?, a3=[a0+340].
  The `jalr` at 0x1004decc calls baseWidget__10VkMenuItemCGv with a0=[a0+244], a1=?, a2=?, a3=?.
  The `jal` at 0x1004dee8 calls (unnamed) [0x1004ed20] with a0=?, a1=sp-1096, a2=ret(baseWidget__10VkMenuItemCGv), a3=?.
  The `jalr` at 0x1004df1c calls set__12VkOptionMenuGP10VkMenuItem with a0=[a0+244], a1=[a0+280], a2=?, a3=?.
  The `jalr` at 0x1004df44 calls set__12VkOptionMenuGi with a0=[a0+244], a1=[[a0+340]+260], a2=?, a3=?.
  The `jalr` at 0x1004e104 calls XtSetSensitive with a0=[a0+80], a1=0x0, a2=?, a3=[[a0+340]+260], a4=0xb.
  The `jalr` at 0x1004e11c calls XtSetSensitive with a0=[a0+84], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1004e134 calls XtSetSensitive with a0=[a0+160], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1004e14c calls XtSetSensitive with a0=[a0+168], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1004e164 calls XtSetSensitive with a0=[a0+136], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1004e178 calls baseWidget__10VkMenuItemCGv with a0=[a0+236], a1=?, a2=?, a3=?.
  The `jalr` at 0x1004e190 calls XtSetSensitive with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1004e1b0 calls XtSetSensitive with a0=[a0+80], a1=0x1, a2=?, a3=[[a0+340]+260], a4=0xb.
  The `jalr` at 0x1004e1c8 calls XtSetSensitive with a0=[a0+84], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1004e1e0 calls XtSetSensitive with a0=[a0+160], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1004e1f8 calls XtSetSensitive with a0=[a0+168], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1004e210 calls XtSetSensitive with a0=[a0+136], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1004e224 calls baseWidget__10VkMenuItemCGv with a0=[a0+236], a1=?, a2=?, a3=?.
  The `jalr` at 0x1004e23c calls XtSetSensitive with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x0, a2=?, a3=?.
  The `jal` at 0x1004e25c calls clamp__18VkwindowMainWindowGiN21 [0x1006efb0] with a0=[sym(vkwindow)], a1=0xb, a2=0x0, a3=0x0.
  The `jal` at 0x1004e270 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `bne` branch at 0x1004ddd4 targets 0x1004ddec, is taken when a4(=[[a0+340]+260]) < 0x8 (signed), and falls through when a4(=[[a0+340]+260]) >= 0x8 (signed).
  The `beq` branch at 0x1004de14 targets 0x1004de4c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x1004de44 targets 0x1004df54, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x1004de5c targets 0x1004df54, is taken when t2(=[[a0+340]+260]) == t3(=0xb), and falls through when t2(=[[a0+340]+260]) != t3(=0xb).
  The `beq` branch at 0x1004de74 targets 0x1004df54, is taken when t3(=[[a0+340]+260]) == t8(?), and falls through when t3(=[[a0+340]+260]) != t8(?).
  The `bne` branch at 0x1004df00 targets 0x1004df2c, is taken when ra(=[[a0+340]+260]) != at(=0xb), and falls through when ra(=[[a0+340]+260]) == at(=0xb).
  The `beq` branch at 0x1004df24 targets 0x1004df4c and is always taken.
  The `beq` branch at 0x1004df4c targets 0x1004e280 and is always taken.
  The `beq` branch at 0x1004df5c targets 0x1004df7c, is taken when a1(?) == a2(=0xb), and falls through when a1(?) != a2(=0xb).
  The `bne` branch at 0x1004df74 targets 0x1004e0dc, is taken when a3(=[[a0+340]+260]) != a4(=0xb), and falls through when a3(=[[a0+340]+260]) == a4(=0xb).
  The `bne` branch at 0x1004df84 targets 0x1004dfbc, is taken when a4(?) != a5(=0xb), and falls through when a4(?) == a5(=0xb).
  The `beq` branch at 0x1004dfb4 targets 0x1004e024 and is always taken.
  The `bne` branch at 0x1004e034 targets 0x1004e06c, is taken when t3(=[[a0+340]+260]) != t8(=0xb), and falls through when t3(=[[a0+340]+260]) == t8(=0xb).
  The `beq` branch at 0x1004e064 targets 0x1004e0dc and is always taken.
  The `bne` branch at 0x1004e0ec targets 0x1004e1a0, is taken when a3(=[[a0+340]+260]) != a4(=0xb), and falls through when a3(=[[a0+340]+260]) == a4(=0xb).
  The `beq` branch at 0x1004e198 targets 0x1004e244 and is always taken.
  The `beq` branch at 0x1004e278 targets 0x1004e280 and is always taken.
  The return at 0x1004e28c has v0 = one of ?, ret(update__18VkwindowMainWindowGv).
- `stacked__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004e2a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004e2a0-0x1004e30c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x1004e2d4 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004e2d8 stores 4 bytes to [a0+340] +0x2ac.
  The `lw` at 0x1004e2e0 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004e2e8 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x2, a2=[a0+340], a3=a2 at entry (arg2), a4=0x62dd0.
  The `beq` branch at 0x1004e2f0 targets 0x1004e2f8 and is always taken.
  The return at 0x1004e304 has v0 = ret(update__18VkwindowMainWindowGv).
- `vPhase__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004e310 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004e310-0x1004e39c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0x1004e364 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004e368 stores 4 bytes to [a0+340] +0x25c.
  The `lw` at 0x1004e370 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004e344 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004e358 calls (unnamed) [0x1004eca0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1004e378 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+340], a2=?, a3=?.
  The `beq` branch at 0x1004e380 targets 0x1004e388 and is always taken.
  The return at 0x1004e394 has v0 = ret(update__18VkwindowMainWindowGv).
- `width__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004e3a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004e3a0-0x1004e450 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0x1004e3f4 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004e3fc stores 4 bytes to [a0+340] +0x110.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1004e404, `lw` at 0x1004e424.
  The `jal` at 0x1004e3d4 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004e3e8 calls (unnamed) [0x1004eca0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1004e418 calls clamp__18VkwindowMainWindowGiN21 [0x1006efb0] with a0=[sym(vkwindow)], a1=0xb, a2=0x1, a3=0x0.
  The `jal` at 0x1004e42c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1004e434 targets 0x1004e43c and is always taken.
  The return at 0x1004e448 has v0 = ret(update__18VkwindowMainWindowGv).
- `xFilterSize__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004e450 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004e450-0x1004e4d0 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x1004e480 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1004e494 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `swc1` at 0x1004e49c stores 4 bytes to [a0+340] +0x274.
  The `lw` at 0x1004e4a4 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004e4ac calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+340]+628, a2=[a2+8], a3=a2 at entry (arg2), a4=0x62c20.
  The `beq` branch at 0x1004e4b4 targets 0x1004e4bc and is always taken.
  The return at 0x1004e4c8 has v0 = ret(update__18VkwindowMainWindowGv).
- `xLocked__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004e4d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004e4d0-0x1004e53c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x1004e500 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004e508 stores 4 bytes to [a0+340] +0x148.
  The `lw` at 0x1004e510 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004e518 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+340]+328, a2=a2 at entry (arg2), a3=0x62ba0.
  The `beq` branch at 0x1004e520 targets 0x1004e528 and is always taken.
  The return at 0x1004e534 has v0 = ret(update__18VkwindowMainWindowGv).
- `xOrigin__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004e540 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004e540-0x1004e5f0 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0x1004e594 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004e59c stores 4 bytes to [a0+340] +0x108.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1004e5a4, `lw` at 0x1004e5c4.
  The `jal` at 0x1004e574 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004e588 calls (unnamed) [0x1004eca0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1004e5b8 calls clamp__18VkwindowMainWindowGiN21 [0x1006efb0] with a0=[sym(vkwindow)], a1=0xb, a2=0x0, a3=0x1.
  The `jal` at 0x1004e5cc calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1004e5d4 targets 0x1004e5dc and is always taken.
  The return at 0x1004e5e8 has v0 = ret(update__18VkwindowMainWindowGv).
- `xPixel__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004e5f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004e5f0-0x1004e660 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1004e624 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004e62c stores 4 bytes to [a0+340] +0x148.
  The `lw` at 0x1004e634 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004e63c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x1, a2=[a0+340]+328, a3=a2 at entry (arg2), a4=0x62a80.
  The `beq` branch at 0x1004e644 targets 0x1004e64c and is always taken.
  The return at 0x1004e658 has v0 = ret(update__18VkwindowMainWindowGv).
- `xTile__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004e660 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004e660-0x1004e6d0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1004e694 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004e69c stores 4 bytes to [a0+340] +0x148.
  The `lw` at 0x1004e6a4 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004e6ac calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x2, a2=[a0+340]+328, a3=a2 at entry (arg2), a4=0x62a10.
  The `beq` branch at 0x1004e6b4 targets 0x1004e6bc and is always taken.
  The return at 0x1004e6c8 has v0 = ret(update__18VkwindowMainWindowGv).
- `yFilterSize__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004e6d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004e6d0-0x1004e750 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x1004e700 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1004e714 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `swc1` at 0x1004e71c stores 4 bytes to [a0+340] +0x278.
  The `lw` at 0x1004e724 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004e72c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+340]+632, a2=[a2+8], a3=a2 at entry (arg2), a4=0x629a0.
  The `beq` branch at 0x1004e734 targets 0x1004e73c and is always taken.
  The return at 0x1004e748 has v0 = ret(update__18VkwindowMainWindowGv).
- `yLocked__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004e750 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004e750-0x1004e7bc (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x1004e780 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004e788 stores 4 bytes to [a0+340] +0x14c.
  The `lw` at 0x1004e790 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004e798 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+340]+332, a2=a2 at entry (arg2), a3=0x62920.
  The `beq` branch at 0x1004e7a0 targets 0x1004e7a8 and is always taken.
  The return at 0x1004e7b4 has v0 = ret(update__18VkwindowMainWindowGv).
- `yOrigin__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004e7c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004e7c0-0x1004e870 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0x1004e814 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004e81c stores 4 bytes to [a0+340] +0x10c.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1004e824, `lw` at 0x1004e844.
  The `jal` at 0x1004e7f4 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004e808 calls (unnamed) [0x1004eca0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1004e838 calls clamp__18VkwindowMainWindowGiN21 [0x1006efb0] with a0=[sym(vkwindow)], a1=0xb, a2=0x0, a3=0x2.
  The `jal` at 0x1004e84c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1004e854 targets 0x1004e85c and is always taken.
  The return at 0x1004e868 has v0 = ret(update__18VkwindowMainWindowGv).
- `yPixel__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004e870 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004e870-0x1004e8e0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1004e8a4 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004e8ac stores 4 bytes to [a0+340] +0x14c.
  The `lw` at 0x1004e8b4 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004e8bc calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x1, a2=[a0+340]+332, a3=a2 at entry (arg2), a4=0x62800.
  The `beq` branch at 0x1004e8c4 targets 0x1004e8cc and is always taken.
  The return at 0x1004e8d8 has v0 = ret(update__18VkwindowMainWindowGv).
- `z__7GvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004e8e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004e8e0-0x1004e94c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x1004e914 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `sw` at 0x1004e918 stores 4 bytes to [a0+340] +0x134.
  The `lw` at 0x1004e920 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1004e928 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x3, a2=[a0+340], a3=a2 at entry (arg2), a4=0x62790.
  The `beq` branch at 0x1004e930 targets 0x1004e938 and is always taken.
  The return at 0x1004e944 has v0 = ret(update__18VkwindowMainWindowGv).
- `__ct__9GvoFormUIGPCcP10_WidgetRec` in `usr/gfx/ircombine` at 0x1004edb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004edb0-0x1004ee34 (132 bytes).
  It occupies 132 bytes.
  The `sw` at 0x1004edf0 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1004ede0 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004ee00 calls create__9GvoFormUIGP10_WidgetRec [0x1004ef50] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The return at 0x1004ee18 has v0 = a0.
  The instructions from 0x1004ee20 to 0x1004ee30 are not reached by any path from the entry, and their branches are not listed.
- `__ct__9GvoFormUIGPCc` in `usr/gfx/ircombine` at 0x1004ee40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004ee40-0x1004eeac (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x1004ee7c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1004ee6c calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1004ee90 has v0 = a0.
  The instructions from 0x1004ee98 to 0x1004eea8 are not reached by any path from the entry, and their branches are not listed.
- `__dt__9GvoFormUIGv` in `usr/gfx/ircombine` at 0x1004eeb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004eeb0-0x1004ef44 (148 bytes).
  It occupies 148 bytes.
  The `sw` at 0x1004eee4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1004eef4 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004ef14 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1004eed4 targets 0x1004ef1c, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x1004ef04 targets 0x1004ef1c, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x1004ef28 has v0 = one of 0x621c0, ret(__dt__11VkComponentGv), ret(__dl__GPv).
  The instructions from 0x1004ef30 to 0x1004ef40 are not reached by any path from the entry, and their branches are not listed.
- `create__9GvoFormUIGP10_WidgetRec` in `usr/gfx/ircombine` at 0x1004ef50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1004ef50-0x10053f04 (20404 bytes).
  It occupies 20404 bytes.
  The `lw` at 0x1004ef90 loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from sym(xmFormWidgetClass) +0x0, including `lw` at 0x1004ef98, `lw` at 0x10050cb0.
  The `sw` at 0x1004efcc stores 4 bytes to a0 (arg0 at entry) +0x4c.
  The `sw` at 0x1004efd4 stores 4 bytes to a0 (arg0 at entry) +0x10.
  44 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x1004f024, `lw` at 0x1004f154, `lw` at 0x1004f274.
  The `sw` at 0x1004f06c stores 4 bytes to a0 (arg0 at entry) +0xe8.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe8, including `lw` at 0x1004f074, `lw` at 0x1004f0a8, `lw` at 0x1004f0dc.
  The `sw` at 0x1004f0a0 stores 4 bytes to a0 (arg0 at entry) +0x100.
  The `sw` at 0x1004f0d4 stores 4 bytes to a0 (arg0 at entry) +0x104.
  The `sw` at 0x1004f108 stores 4 bytes to a0 (arg0 at entry) +0x108.
  The `sw` at 0x1004f13c stores 4 bytes to a0 (arg0 at entry) +0x124.
  11 such `lw` accesses load 4 bytes from sym(xmTextFieldWidgetClass) +0x0, including `lw` at 0x1004f14c, `lw` at 0x10050560, `lw` at 0x10050694.
  The `sw` at 0x1004f238 stores 4 bytes to a0 (arg0 at entry) +0x88.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x88, including `lw` at 0x1004f240, `lw` at 0x10053168, `lw` at 0x10053d54.
  26 such `lw` accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0, including `lw` at 0x1004f26c, `lw` at 0x1004fadc, `lw` at 0x1004fbe4.
  The `sw` at 0x1004f370 stores 4 bytes to a0 (arg0 at entry) +0x8c.
  5 such `lw` accesses load 4 bytes from sym(xmToggleButtonWidgetClass) +0x0, including `lw` at 0x1004f380, `lw` at 0x1004f4a4, `lw` at 0x1004f6a4.
  The `sw` at 0x1004f470 stores 4 bytes to a0 (arg0 at entry) +0x54.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x1004f478, `lw` at 0x100531b0.
  The `sw` at 0x1004f5b4 stores 4 bytes to a0 (arg0 at entry) +0x50.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x50, including `lw` at 0x1004f5bc, `lw` at 0x10053178, `lw` at 0x100531c8.
  The `sw` at 0x1004f660 stores 4 bytes to a0 (arg0 at entry) +0xf4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xf4, including `lw` at 0x1004f668, `lw` at 0x100531f0, `lw` at 0x10053d04.
  The `sw` at 0x1004f694 stores 4 bytes to a0 (arg0 at entry) +0x118.
  The `sw` at 0x1004f7b4 stores 4 bytes to a0 (arg0 at entry) +0x58.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x58, including `lw` at 0x1004f7bc, `lw` at 0x1004ff4c, `lw` at 0x100532bc.
  The `sw` at 0x1004f860 stores 4 bytes to a0 (arg0 at entry) +0xec.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xec, including `lw` at 0x1004f868, `lw` at 0x1004f89c, `lw` at 0x1004f8d0.
  The `sw` at 0x1004f894 stores 4 bytes to a0 (arg0 at entry) +0x120.
  The `sw` at 0x1004f8c8 stores 4 bytes to a0 (arg0 at entry) +0x11c.
  The `sw` at 0x1004f8fc stores 4 bytes to a0 (arg0 at entry) +0x134.
  2 such `lw` accesses load 4 bytes from sym(sgDialWidgetClass) +0x0, including `lw` at 0x1004f90c, `lw` at 0x1004fd00.
  The `sw` at 0x1004faa8 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lw` at 0x1004fab0, `lw` at 0x100531d8, `lw` at 0x100533d8.
  The `sw` at 0x1004fbd4 stores 4 bytes to a0 (arg0 at entry) +0xdc.
  The `sw` at 0x1004fcf0 stores 4 bytes to a0 (arg0 at entry) +0xd8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd8, including `lw` at 0x1004fe04, `lw` at 0x10053448.
  The `sw` at 0x1004feb4 stores 4 bytes to a0 (arg0 at entry) +0xa0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa0, including `lw` at 0x1004febc, `lw` at 0x10053430, `lw` at 0x10053480.
  The `sw` at 0x1004fffc stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `sw` at 0x10050084 stores 4 bytes to a0 (arg0 at entry) +0xe4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe4, including `lw` at 0x1005008c, `lw` at 0x100500c0, `lw` at 0x100534a8.
  The `sw` at 0x100500b8 stores 4 bytes to a0 (arg0 at entry) +0x110.
  The `sw` at 0x100500ec stores 4 bytes to a0 (arg0 at entry) +0x114.
  The `sw` at 0x100501ec stores 4 bytes to a0 (arg0 at entry) +0x60.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0x100501f4, `lw` at 0x1005333c, `lw` at 0x10053500.
  The `sw` at 0x1005032c stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `sw` at 0x10050448 stores 4 bytes to a0 (arg0 at entry) +0x44.
  The `sw` at 0x10050550 stores 4 bytes to a0 (arg0 at entry) +0xc8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x100505c4, `lw` at 0x100535ac.
  The `sw` at 0x10050660 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5c, including `lw` at 0x10050668, `lw` at 0x10053654, `lw` at 0x10053d78.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x100506f8, `lw` at 0x100535e4.
  The `sw` at 0x10050794 stores 4 bytes to a0 (arg0 at entry) +0x74.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x74, including `lw` at 0x1005079c, `lw` at 0x100535cc, `lw` at 0x1005367c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc8, including `lw` at 0x1005082c, `lw` at 0x100535bc, `lw` at 0x100535f4.
  The `sw` at 0x100508c8 stores 4 bytes to a0 (arg0 at entry) +0x80.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x80, including `lw` at 0x100508d0, `lw` at 0x10053604, `lw` at 0x100536a4.
  The `sw` at 0x100509fc stores 4 bytes to a0 (arg0 at entry) +0x48.
  The `sw` at 0x10050b50 stores 4 bytes to a0 (arg0 at entry) +0x68.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x68, including `lw` at 0x10050b58, `lw` at 0x10051f74, `lw` at 0x100536f4.
  The `lw` at 0x10050b84 loads 4 bytes from sym(xmFrameWidgetClass) +0x0.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x34, including `lw` at 0x10050bdc, `lw` at 0x100533e8, `lw` at 0x10053420.
  The `sw` at 0x10050ca0 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3c, including `lw` at 0x10050cb8, `lw` at 0x100517cc, `lw` at 0x10052d24.
  The `sw` at 0x10050d10 stores 4 bytes to a0 (arg0 at entry) +0x38.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x10050d28, `lw` at 0x10050e30, `lw` at 0x10050f4c.
  The `sw` at 0x10050e18 stores 4 bytes to a0 (arg0 at entry) +0xd0.
  The `sw` at 0x10050f34 stores 4 bytes to a0 (arg0 at entry) +0x94.
  2 such `lw` accesses load 4 bytes from sym(xmPushButtonWidgetClass) +0x0, including `lw` at 0x10050f44, `lw` at 0x10052cbc.
  The `sw` at 0x1005103c stores 4 bytes to a0 (arg0 at entry) +0x84.
  The `lw` at 0x10051044 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0x10051168 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `sw` at 0x10051264 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0x1005136c stores 4 bytes to a0 (arg0 at entry) +0x40.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0x100513e0, `lw` at 0x100516fc, `lw` at 0x1005170c.
  The `sw` at 0x10051480 stores 4 bytes to a0 (arg0 at entry) +0x70.
  The `sw` at 0x10051588 stores 4 bytes to a0 (arg0 at entry) +0xbc.
  The `sw` at 0x10051674 stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `lw` at 0x1005167c loads 4 bytes from a0 (arg0 at entry) +0xd0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x94, including `lw` at 0x1005168c, `lw` at 0x1005169c, `lw` at 0x100516b4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0x100516c4, `lw` at 0x100516d4, `lw` at 0x1005175c.
  The `lw` at 0x100516ec loads 4 bytes from a0 (arg0 at entry) +0x30.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x90, including `lw` at 0x10051734, `lw` at 0x10051794, `lw` at 0x100517a4.
  The `lw` at 0x1005174c loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x10051784 loads 4 bytes from a0 (arg0 at entry) +0xbc.
  The `sw` at 0x10051834 stores 4 bytes to a0 (arg0 at entry) +0xb8.
  The `sw` at 0x10051930 stores 4 bytes to a0 (arg0 at entry) +0x98.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x98, including `lw` at 0x10051938, `lw` at 0x1005371c, `lw` at 0x10053de4.
  The `sw` at 0x10051a50 stores 4 bytes to a0 (arg0 at entry) +0x78.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x78, including `lw` at 0x10051a58, `lw` at 0x10051afc, `lw` at 0x10053754.
  The `sw` at 0x10051ba8 stores 4 bytes to a0 (arg0 at entry) +0xd4.
  The `sw` at 0x10051cd8 stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x10051d60 stores 4 bytes to a0 (arg0 at entry) +0xfc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xfc, including `lw` at 0x10051d68, `lw` at 0x10051d9c, `lw` at 0x100537dc.
  The `sw` at 0x10051d94 stores 4 bytes to a0 (arg0 at entry) +0x144.
  The `sw` at 0x10051dc8 stores 4 bytes to a0 (arg0 at entry) +0x148.
  The `sw` at 0x10051e50 stores 4 bytes to a0 (arg0 at entry) +0xf8.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xf8, including `lw` at 0x10051e58, `lw` at 0x10051e8c, `lw` at 0x10051ec0.
  The `sw` at 0x10051e84 stores 4 bytes to a0 (arg0 at entry) +0x138.
  The `sw` at 0x10051eb8 stores 4 bytes to a0 (arg0 at entry) +0x13c.
  The `sw` at 0x10051eec stores 4 bytes to a0 (arg0 at entry) +0x140.
  The `sw` at 0x10052034 stores 4 bytes to a0 (arg0 at entry) +0xc4.
  The `sw` at 0x10052130 stores 4 bytes to a0 (arg0 at entry) +0x64.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x64, including `lw` at 0x10052138, `lw` at 0x10053a24, `lw` at 0x10053e2c.
  The `sw` at 0x10052284 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `sw` at 0x1005230c stores 4 bytes to a0 (arg0 at entry) +0xf0.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xf0, including `lw` at 0x10052314, `lw` at 0x10052348, `lw` at 0x1005237c.
  The `sw` at 0x10052340 stores 4 bytes to a0 (arg0 at entry) +0x128.
  The `sw` at 0x10052374 stores 4 bytes to a0 (arg0 at entry) +0x130.
  The `sw` at 0x100523a8 stores 4 bytes to a0 (arg0 at entry) +0x12c.
  The `sw` at 0x100523dc stores 4 bytes to a0 (arg0 at entry) +0x14c.
  The `sw` at 0x10052410 stores 4 bytes to a0 (arg0 at entry) +0x10c.
  The `sw` at 0x10052540 stores 4 bytes to a0 (arg0 at entry) +0xc0.
  The `sw` at 0x1005266c stores 4 bytes to a0 (arg0 at entry) +0xcc.
  The `sw` at 0x1005278c stores 4 bytes to a0 (arg0 at entry) +0x24.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xcc, including `lw` at 0x10052800, `lw` at 0x10052960, `lw` at 0x10052978.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0x10052818, `lw` at 0x10053c20.
  The `sw` at 0x100528c8 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0x100528d0, `lw` at 0x10053e50.
  The `sw` at 0x10052a28 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9c, including `lw` at 0x10052a30, `lw` at 0x10053c30, `lw` at 0x10053c40.
  The `sw` at 0x10052b58 stores 4 bytes to a0 (arg0 at entry) +0xac.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xac, including `lw` at 0x10052b60, `lw` at 0x10053c08, `lw` at 0x10053c58.
  The `sw` at 0x10052c88 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa4, including `lw` at 0x10052c90, `lw` at 0x10052ea0, `lw` at 0x10053c90.
  The `sw` at 0x10052df8 stores 4 bytes to a0 (arg0 at entry) +0x28.
  The `lw` at 0x10052e00 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `sw` at 0x10052f50 stores 4 bytes to a0 (arg0 at entry) +0xe0.
  The `sw` at 0x10053094 stores 4 bytes to a0 (arg0 at entry) +0xb4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c, including `lw` at 0x10053188, `lw` at 0x100531a0.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x100532cc, `lw` at 0x1005362c, `lw` at 0x1005363c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdc, including `lw` at 0x100533f8, `lw` at 0x10053410.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb0, including `lw` at 0x100536dc, `lw` at 0x10053764, `lw` at 0x10053774.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc0, including `lw` at 0x10053704, `lw` at 0x10053a88, `lw` at 0x10053b00.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd4, including `lw` at 0x1005372c, `lw` at 0x1005373c, `lw` at 0x1005378c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc4, including `lw` at 0x100537c4, `lw` at 0x1005384c, `lw` at 0x10053960.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x10053a34, `lw` at 0x10053a44, `lw` at 0x10053a78.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb4, including `lw` at 0x10053bd0, `lw` at 0x10053bf8, `lw` at 0x10053c68.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe0, including `lw` at 0x10053c78, `lw` at 0x10053cc8.
  The `lw` at 0x10053d18 loads 4 bytes from ?.
  The `jalr` at 0x1004ef84 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultGvoFormUIResources__9GvoFormUI), a3=a3 at entry (arg3).
  The `jalr` at 0x1004efb4 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=sym(_XmStrings)+9052, a4=0x1, a5=0x0.
  The `jalr` at 0x1004efe0 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=ret(XtVaCreateWidget), a2=a0 at entry (arg0), a3=a0 at entry (arg0).
  The `jalr` at 0x1004eff4 calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004f03c calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x100983e8, a3=0x0, a4=0x0, a5=0x1.
  The `jalr` at 0x1004f090 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+232], a1=0x10098400, a2=sym(doCrYCb_422Callback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1004f0c4 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+232], a1=0x10098410, a2=sym(doCrYCb_4224Callback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1004f0f8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+232], a1=0x10098420, a2=sym(doCrYCb_4444Callback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1004f12c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+232], a1=0x10098430, a2=sym(doRGB_4444Callback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1004f228 calls XtVaCreateManagedWidget with a0=0x10098440, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x4, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x1004f258 calls XtAddCallback with a0=[a0+136], a1=sym(_XmStrings)+4683, a2=sym(safeAreaPercentCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1004f360 calls XtVaCreateManagedWidget with a0=0x10098450, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1004f460 calls XtVaCreateManagedWidget with a0=0x10098468, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1004f490 calls XtAddCallback with a0=[a0+84], a1=sym(_XmStrings)+10557, a2=sym(setLetterBoxCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1004f5a4 calls XtVaCreateManagedWidget with a0=0x10098478, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1004f5d4 calls XtAddCallback with a0=[a0+80], a1=sym(_XmStrings)+10557, a2=sym(setFlickerFilterCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1004f5e8 calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004f630 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10098490, a3=0x0, a4=0x0.
  The `jalr` at 0x1004f684 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+244], a1=0x100984a8, a2=sym(sourceChannelCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1004f7a4 calls XtVaCreateManagedWidget with a0=0x100984c0, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1004f7d4 calls XtAddCallback with a0=[a0+88], a1=sym(_XmStrings)+10557, a2=sym(alphaChannelCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1004f7e8 calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004f830 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x100984d8, a3=0x0, a4=0x0.
  The `jalr` at 0x1004f884 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+236], a1=0x100984f0, a2=sym(progressiveCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1004f8b8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+236], a1=0x10098508, a2=sym(interleavedCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1004f8ec calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+236], a1=0x10098520, a2=sym(stackedCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1004fa98 calls XtVaCreateManagedWidget with a0=0x10098530, a1=[sym(sgDialWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7044, a4=0x0, a5=sym(_XmStrings)+9620, a6=0x0, a7=0x10098548.
  The `jalr` at 0x1004fac8 calls XtAddCallback with a0=[a0+168], a1=sym(_XmStrings)+10557, a2=sym(yFilterSizeCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1004fbc4 calls XtVaCreateManagedWidget with a0=0x10098588, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1004fce0 calls XtVaCreateManagedWidget with a0=0x100985a0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1004fea4 calls XtVaCreateManagedWidget with a0=0x100985b8, a1=[sym(sgDialWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7044, a4=0x0, a5=sym(_XmStrings)+9620, a6=0x0, a7=0x10098548.
  The `jalr` at 0x1004fed4 calls XtAddCallback with a0=[a0+160], a1=sym(_XmStrings)+10557, a2=sym(xFilterSizeCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1004ffec calls XtVaCreateManagedWidget with a0=0x100985d0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1005000c calls __nw__GUi with a0=0x4c, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x10050054 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x100985e8, a3=0x0, a4=0x0.
  The `jalr` at 0x100500a8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+228], a1=0x100985f8, a2=sym(gvoOutputFormatCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100500dc calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+228], a1=0x10098608, a2=sym(gvoOutputFormatCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100501dc calls XtVaCreateManagedWidget with a0=0x10098618, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1005020c calls XtAddCallback with a0=[a0+96], a1=sym(_XmStrings)+10557, a2=sym(channelEnableCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1005031c calls XtVaCreateManagedWidget with a0=0x10098630, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10050438 calls XtVaCreateManagedWidget with a0=0x10098640, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10050540 calls XtVaCreateManagedWidget with a0=0x10098650, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10050650 calls XtVaCreateManagedWidget with a0=0x10098660, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10050680 calls XtAddCallback with a0=[a0+92], a1=sym(_XmStrings)+4683, a2=sym(bGammaCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10050784 calls XtVaCreateManagedWidget with a0=0x10098670, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100507b4 calls XtAddCallback with a0=[a0+116], a1=sym(_XmStrings)+4683, a2=sym(gGammaCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100508b8 calls XtVaCreateManagedWidget with a0=0x10098680, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100508e8 calls XtAddCallback with a0=[a0+128], a1=sym(_XmStrings)+4683, a2=sym(rGammaCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100509ec calls XtVaCreateManagedWidget with a0=0x10098690, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10050b40 calls XtVaCreateManagedWidget with a0=0x100986a0, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+9609.
  The `jalr` at 0x10050b70 calls XtAddCallback with a0=[a0+104], a1=sym(_XmStrings)+10557, a2=sym(ditherCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10050c90 calls XtVaCreateManagedWidget with a0=0x100986b8, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x3, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x10050d00 calls XtVaCreateManagedWidget with a0=0x100986d0, a1=[sym(xmFormWidgetClass)], a2=[a0+60], a3=sym(_XmStrings)+9052, a4=0x1, a5=sym(_XmStrings)+5427, a6=0x1, a7=sym(XtStrings)+872.
  The `jalr` at 0x10050e08 calls XtVaCreateManagedWidget with a0=0x100986e0, a1=[sym(xmLabelWidgetClass)], a2=[a0+56], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10050f24 calls XtVaCreateManagedWidget with a0=0x100986f0, a1=[sym(xmLabelWidgetClass)], a2=[a0+56], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1005102c calls XtVaCreateManagedWidget with a0=0x10098700, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+56], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1005105c calls XtAddCallback with a0=[a0+132], a1=sym(_XmStrings)+4683, a2=sym(restoreSizeCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10051158 calls XtVaCreateManagedWidget with a0=0x10098718, a1=[sym(xmLabelWidgetClass)], a2=[a0+56], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10051254 calls XtVaCreateManagedWidget with a0=0x10098728, a1=[sym(xmLabelWidgetClass)], a2=[a0+56], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1005135c calls XtVaCreateManagedWidget with a0=0x10098738, a1=[sym(xmLabelWidgetClass)], a2=[a0+56], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10051470 calls XtVaCreateManagedWidget with a0=0x10098748, a1=[sym(xmLabelWidgetClass)], a2=[a0+56], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10051578 calls XtVaCreateManagedWidget with a0=0x10098758, a1=[sym(xmLabelWidgetClass)], a2=[a0+56], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10051664 calls XtVaCreateManagedWidget with a0=0x10098770, a1=[sym(xmLabelWidgetClass)], a2=[a0+56], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100516a8 calls XtVaSetValues with a0=[a0+208], a1=sym(_XmStrings)+10305, a2=[a0+148], a3=sym(_XmStrings)+7562, a4=[a0+148], a5=0x0.
  The `jalr` at 0x100516e0 calls XtVaSetValues with a0=[a0+148], a1=sym(_XmStrings)+10305, a2=[a0+112], a3=sym(_XmStrings)+7562, a4=[a0+112], a5=0x0.
  The `jalr` at 0x10051718 calls XtVaSetValues with a0=[a0+48], a1=sym(_XmStrings)+10305, a2=[a0+108], a3=sym(_XmStrings)+7562, a4=[a0+108], a5=0x0.
  The `jalr` at 0x10051740 calls XtVaSetValues with a0=[a0+108], a1=sym(_XmStrings)+10305, a2=[a0+144], a3=0x0.
  The `jalr` at 0x10051778 calls XtVaSetValues with a0=[a0+64], a1=sym(_XmStrings)+10305, a2=[a0+112], a3=sym(_XmStrings)+7562, a4=[a0+112], a5=0x0.
  The `jalr` at 0x100517b0 calls XtVaSetValues with a0=[a0+188], a1=sym(_XmStrings)+10305, a2=[a0+144], a3=sym(_XmStrings)+7562, a4=[a0+144], a5=0x0.
  The `jalr` at 0x10051824 calls XtVaCreateManagedWidget with a0=0x10098780, a1=[sym(xmLabelWidgetClass)], a2=[a0+60], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+5427, a6=0x2, a7=sym(_XmStrings)+5350.
  The `jalr` at 0x10051920 calls XtVaCreateManagedWidget with a0=0x10098798, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x4, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x10051950 calls XtAddCallback with a0=[a0+152], a1=sym(_XmStrings)+4683, a2=sym(vPhaseCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10051a40 calls XtVaCreateManagedWidget with a0=0x100987a8, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x4, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x10051a70 calls XtAddCallback with a0=[a0+120], a1=sym(_XmStrings)+4683, a2=sym(hPhaseCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10051b98 calls XtVaCreateManagedWidget with a0=0x100987b8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10051cc8 calls XtVaCreateManagedWidget with a0=0x100987c8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10051ce8 calls __nw__GUi with a0=0x4c, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10051d30 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x100987d8, a3=0x0, a4=0x0.
  The `jalr` at 0x10051d84 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+252], a1=0x100987f0, a2=sym(yLockedCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10051db8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+252], a1=0x10098800, a2=sym(yPixelCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10051dd8 calls __nw__GUi with a0=0x4c, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10051e20 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10098810, a3=0x0, a4=0x0.
  The `jalr` at 0x10051e74 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+248], a1=0x10098828, a2=sym(xLockedCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10051ea8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+248], a1=0x10098838, a2=sym(xPixelCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10051edc calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+248], a1=0x10098848, a2=sym(xTileCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10052024 calls XtVaCreateManagedWidget with a0=0x10098858, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10052120 calls XtVaCreateManagedWidget with a0=0x10098868, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x4, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x10052150 calls XtAddCallback with a0=[a0+100], a1=sym(_XmStrings)+4683, a2=sym(cursorPriorityCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10052274 calls XtVaCreateManagedWidget with a0=0x10098880, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10052294 calls __nw__GUi with a0=0x4c, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x100522dc calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10098898, a3=0x0, a4=0x0.
  The `jalr` at 0x10052330 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+240], a1=0x100988b0, a2=sym(rgb10Callback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10052364 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+240], a1=0x100988c0, a2=sym(rgba10Callback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10052398 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+240], a1=0x100988d0, a2=sym(rgb12Callback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100523cc calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+240], a1=0x100988e0, a2=sym(zCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10052400 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+240], a1=0x100988f0, a2=sym(fsCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10052530 calls XtVaCreateManagedWidget with a0=0x10098900, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1005265c calls XtVaCreateManagedWidget with a0=0x10098918, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x2, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1005277c calls XtVaCreateManagedWidget with a0=0x10098928, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x2, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x100528b8 calls XtVaCreateManagedWidget with a0=0x10098938, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100528e8 calls XtAddCallback with a0=[a0+124], a1=sym(_XmStrings)+4683, a2=sym(heightCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10052a18 calls XtVaCreateManagedWidget with a0=0x10098948, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10052a48 calls XtAddCallback with a0=[a0+156], a1=sym(_XmStrings)+4683, a2=sym(widthCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10052b48 calls XtVaCreateManagedWidget with a0=0x10098958, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10052b78 calls XtAddCallback with a0=[a0+172], a1=sym(_XmStrings)+4683, a2=sym(yOriginCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10052c78 calls XtVaCreateManagedWidget with a0=0x10098968, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10052ca8 calls XtAddCallback with a0=[a0+164], a1=sym(_XmStrings)+4683, a2=sym(xOriginCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10052de8 calls XtVaCreateManagedWidget with a0=0x10098978, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10052e18 calls XtAddCallback with a0=[a0+40], a1=sym(_XmStrings)+4683, a2=sym(closeChannelCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10052f40 calls XtVaCreateManagedWidget with a0=0x100aa770, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x2, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10053084 calls XtVaCreateManagedWidget with a0=0x10098990, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+4724, a6=0x0, a7=sym(_XmStrings)+7513.
  The `jalr` at 0x100530a4 calls baseWidget__10VkMenuItemCGv with a0=[a0+232], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x1005315c calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x1, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x1, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x10053194 calls XtVaSetValues with a0=[a0+136], a1=sym(_XmStrings)+10305, a2=[a0+80], a3=sym(_XmStrings)+7562, a4=[a0+140], a5=0x0.
  The `jalr` at 0x100531bc calls XtVaSetValues with a0=[a0+140], a1=sym(_XmStrings)+7562, a2=[a0+84], a3=0x0.
  The `jalr` at 0x100531e4 calls XtVaSetValues with a0=[a0+80], a1=sym(_XmStrings)+7562, a2=[a0+168], a3=0x0.
  The `jalr` at 0x100531f8 calls baseWidget__10VkMenuItemCGv with a0=[a0+244], a1=?, a2=?, a3=?.
  The `jalr` at 0x100532b0 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x1, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x1, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x100532d8 calls XtVaSetValues with a0=[a0+88], a1=sym(_XmStrings)+10305, a2=[a0+72], a3=0x0.
  The `jalr` at 0x100532ec calls baseWidget__10VkMenuItemCGv with a0=[a0+236], a1=?, a2=?, a3=?.
  The `jalr` at 0x100533cc calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x1, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x10053404 calls XtVaSetValues with a0=[a0+168], a1=sym(_XmStrings)+10305, a2=[a0+52], a3=sym(_XmStrings)+7562, a4=[a0+220], a5=0x0.
  The `jalr` at 0x1005343c calls XtVaSetValues with a0=[a0+220], a1=sym(_XmStrings)+10305, a2=[a0+52], a3=sym(_XmStrings)+7562, a4=[a0+160], a5=0x0.
  The `jalr` at 0x10053474 calls XtVaSetValues with a0=[a0+216], a1=sym(_XmStrings)+10305, a2=[a0+52], a3=sym(_XmStrings)+7562, a4=[a0+52], a5=0x0.
  The `jalr` at 0x1005349c calls XtVaSetValues with a0=[a0+160], a1=sym(_XmStrings)+10305, a2=[a0+52], a3=0x0.
  The `jalr` at 0x100534b0 calls baseWidget__10VkMenuItemCGv with a0=[a0+228], a1=?, a2=?, a3=?.
  The `jalr` at 0x100535a0 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x3, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x1, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x100535d8 calls XtVaSetValues with a0=[a0+32], a1=sym(_XmStrings)+10305, a2=[a0+200], a3=sym(_XmStrings)+7562, a4=[a0+116], a5=0x0.
  The `jalr` at 0x10053610 calls XtVaSetValues with a0=[a0+68], a1=sym(_XmStrings)+10305, a2=[a0+200], a3=sym(_XmStrings)+7562, a4=[a0+128], a5=0x0.
  The `jalr` at 0x10053648 calls XtVaSetValues with a0=[a0+200], a1=sym(_XmStrings)+10305, a2=[a0+72], a3=sym(_XmStrings)+7562, a4=[a0+72], a5=0x0.
  The `jalr` at 0x10053670 calls XtVaSetValues with a0=[a0+92], a1=sym(_XmStrings)+10305, a2=[a0+72], a3=0x0.
  The `jalr` at 0x10053698 calls XtVaSetValues with a0=[a0+116], a1=sym(_XmStrings)+10305, a2=[a0+72], a3=0x0.
  The `jalr` at 0x100536c0 calls XtVaSetValues with a0=[a0+128], a1=sym(_XmStrings)+10305, a2=[a0+72], a3=0x0.
  The `jalr` at 0x100536e8 calls XtVaSetValues with a0=[a0+72], a1=sym(_XmStrings)+10305, a2=[a0+176], a3=0x0.
  The `jalr` at 0x10053710 calls XtVaSetValues with a0=[a0+104], a1=sym(_XmStrings)+10305, a2=[a0+192], a3=0x0.
  The `jalr` at 0x10053748 calls XtVaSetValues with a0=[a0+152], a1=sym(_XmStrings)+10305, a2=[a0+212], a3=sym(_XmStrings)+7562, a4=[a0+212], a5=0x0.
  The `jalr` at 0x10053780 calls XtVaSetValues with a0=[a0+120], a1=sym(_XmStrings)+10305, a2=[a0+176], a3=sym(_XmStrings)+7562, a4=[a0+176], a5=0x0.
  The `jalr` at 0x100537a8 calls XtVaSetValues with a0=[a0+212], a1=sym(_XmStrings)+10305, a2=[a0+176], a3=0x0.
  The `jalr` at 0x100537d0 calls XtVaSetValues with a0=[a0+176], a1=sym(_XmStrings)+10305, a2=[a0+196], a3=0x0.
  The `jalr` at 0x100537e4 calls baseWidget__10VkMenuItemCGv with a0=[a0+252], a1=?, a2=?, a3=?.
  The `jalr` at 0x100537fc calls baseWidget__10VkMenuItemCGv with a0=[a0+248], a1=?, a2=?, a3=?.
  The `jalr` at 0x100538fc calls XtVaSetValues with a0=?, a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x10053910 calls baseWidget__10VkMenuItemCGv with a0=[a0+248], a1=?, a2=?, a3=?.
  The `jalr` at 0x10053a18 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x10053a50 calls XtVaSetValues with a0=[a0+100], a1=sym(_XmStrings)+10305, a2=[a0+44], a3=sym(_XmStrings)+7562, a4=[a0+44], a5=0x0.
  The `jalr` at 0x10053a64 calls baseWidget__10VkMenuItemCGv with a0=[a0+240], a1=?, a2=?, a3=?.
  The `jalr` at 0x10053a9c calls XtVaSetValues with a0=[a0+44], a1=sym(_XmStrings)+10305, a2=[a0+192], a3=sym(_XmStrings)+7562, a4=ret(baseWidget__10VkMenuItemCGv), a5=0x0.
  The `jalr` at 0x10053ab0 calls baseWidget__10VkMenuItemCGv with a0=[a0+240], a1=?, a2=?, a3=?.
  The `jalr` at 0x10053bb4 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x10053bdc calls XtVaSetValues with a0=[a0+192], a1=sym(_XmStrings)+10305, a2=[a0+180], a3=0x0.
  The `jalr` at 0x10053c14 calls XtVaSetValues with a0=[a0+204], a1=sym(_XmStrings)+10305, a2=[a0+180], a3=sym(_XmStrings)+7562, a4=[a0+172], a5=0x0.
  The `jalr` at 0x10053c4c calls XtVaSetValues with a0=[a0+36], a1=sym(_XmStrings)+10305, a2=[a0+156], a3=sym(_XmStrings)+7562, a4=[a0+156], a5=0x0.
  The `jalr` at 0x10053c84 calls XtVaSetValues with a0=[a0+172], a1=sym(_XmStrings)+10305, a2=[a0+180], a3=sym(_XmStrings)+7562, a4=[a0+224], a5=0x0.
  The `jalr` at 0x10053cbc calls XtVaSetValues with a0=[a0+164], a1=sym(_XmStrings)+10305, a2=[a0+180], a3=sym(_XmStrings)+7562, a4=[a0+180], a5=0x0.
  The `jalr` at 0x10053ce4 calls XtVaSetValues with a0=[a0+224], a1=sym(_XmStrings)+10305, a2=[a0+180], a3=0x0.
  The `jalr` at 0x10053d2c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+244], a1=?, a2=sym(sourceChannelCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10053d6c calls XtAddCallback with a0=[a0+136], a1=sym(_XmStrings)+7765, a2=sym(safeAreaPercentCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10053d90 calls XtAddCallback with a0=[a0+92], a1=sym(_XmStrings)+7765, a2=sym(bGammaCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10053db4 calls XtAddCallback with a0=[a0+116], a1=sym(_XmStrings)+7765, a2=sym(gGammaCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10053dd8 calls XtAddCallback with a0=[a0+128], a1=sym(_XmStrings)+7765, a2=sym(rGammaCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10053dfc calls XtAddCallback with a0=[a0+152], a1=sym(_XmStrings)+7765, a2=sym(vPhaseCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10053e20 calls XtAddCallback with a0=[a0+120], a1=sym(_XmStrings)+7765, a2=sym(hPhaseCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10053e44 calls XtAddCallback with a0=[a0+100], a1=sym(_XmStrings)+7765, a2=sym(cursorPriorityCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10053e68 calls XtAddCallback with a0=[a0+124], a1=sym(_XmStrings)+7765, a2=sym(heightCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10053e8c calls XtAddCallback with a0=[a0+156], a1=sym(_XmStrings)+7765, a2=sym(widthCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10053eb0 calls XtAddCallback with a0=[a0+172], a1=sym(_XmStrings)+7765, a2=sym(yOriginCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10053ed4 calls XtAddCallback with a0=[a0+164], a1=sym(_XmStrings)+7765, a2=sym(xOriginCallback__9GvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `beq` branch at 0x1004f00c targets 0x1004f060, is taken when a4(=ret(__nw__GUi)) == 0, and falls through when a4(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1004f058 targets 0x1004f064 and is always taken.
  The `beq` branch at 0x1004f600 targets 0x1004f654, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1004f64c targets 0x1004f658 and is always taken.
  The `beq` branch at 0x1004f800 targets 0x1004f854, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1004f84c targets 0x1004f858 and is always taken.
  The `beq` branch at 0x10050024 targets 0x10050078, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10050070 targets 0x1005007c and is always taken.
  The `beq` branch at 0x10051d00 targets 0x10051d54, is taken when a3(=ret(__nw__GUi)) == 0, and falls through when a3(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10051d4c targets 0x10051d58 and is always taken.
  The `beq` branch at 0x10051df0 targets 0x10051e44, is taken when a3(=ret(__nw__GUi)) == 0, and falls through when a3(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10051e3c targets 0x10051e48 and is always taken.
  The `beq` branch at 0x100522ac targets 0x10052300, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100522f8 targets 0x10052304 and is always taken.
  The `beq` branch at 0x10053cf8 targets 0x10053d50 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x10053d48 targets 0x10053d00, is taken when a1(?) < 0x8 (signed), and falls through when a1(?) >= 0x8 (signed).
  The return at 0x10053ee8 has v0 = ret(XtAddCallback).
  The instructions from 0x10053ef0 to 0x10053f00 are not reached by any path from the entry, and their branches are not listed.
- `className__9GvoFormUIGv` in `usr/gfx/ircombine` at 0x10053f10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10053f10-0x10053f50 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10053f28 loads 4 bytes from abs 0x100a90d8.
  The `beq` branch at 0x10053f34 targets 0x10053f3c and is always taken.
  The return at 0x10053f48 has v0 = 0x100989a0.
- `alphaChannel__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10053f50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10053f50-0x10053f7c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10053f64 targets 0x10053f6c and is always taken.
  The return at 0x10053f74 has v0 = ?.
- `bGamma__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10053f80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10053f80-0x10053fac (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10053f94 targets 0x10053f9c and is always taken.
  The return at 0x10053fa4 has v0 = ?.
- `channelEnable__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10053fb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10053fb0-0x10053fdc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10053fc4 targets 0x10053fcc and is always taken.
  The return at 0x10053fd4 has v0 = ?.
- `closeChannel__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10053fe0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10053fe0-0x1005400c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10053ff4 targets 0x10053ffc and is always taken.
  The return at 0x10054004 has v0 = ?.
- `cursorPriority__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10054010 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054010-0x1005403c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10054024 targets 0x1005402c and is always taken.
  The return at 0x10054034 has v0 = ?.
- `dither__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10054040 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054040-0x1005406c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10054054 targets 0x1005405c and is always taken.
  The return at 0x10054064 has v0 = ?.
- `doCrYCb_422__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10054070 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054070-0x1005409c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10054084 targets 0x1005408c and is always taken.
  The return at 0x10054094 has v0 = ?.
- `doCrYCb_4224__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100540a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100540a0-0x100540cc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100540b4 targets 0x100540bc and is always taken.
  The return at 0x100540c4 has v0 = ?.
- `doCrYCb_4444__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100540d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100540d0-0x100540fc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100540e4 targets 0x100540ec and is always taken.
  The return at 0x100540f4 has v0 = ?.
- `doRGB_4444__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10054100 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054100-0x1005412c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10054114 targets 0x1005411c and is always taken.
  The return at 0x10054124 has v0 = ?.
- `fs__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10054130 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054130-0x1005415c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10054144 targets 0x1005414c and is always taken.
  The return at 0x10054154 has v0 = ?.
- `gGamma__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10054160 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054160-0x1005418c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10054174 targets 0x1005417c and is always taken.
  The return at 0x10054184 has v0 = ?.
- `gvoOutputFormat__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10054190 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054190-0x100541bc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100541a4 targets 0x100541ac and is always taken.
  The return at 0x100541b4 has v0 = ?.
- `hPhase__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100541c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100541c0-0x100541ec (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100541d4 targets 0x100541dc and is always taken.
  The return at 0x100541e4 has v0 = ?.
- `height__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100541f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100541f0-0x1005421c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10054204 targets 0x1005420c and is always taken.
  The return at 0x10054214 has v0 = ?.
- `interleaved__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10054220 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054220-0x1005424c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10054234 targets 0x1005423c and is always taken.
  The return at 0x10054244 has v0 = ?.
- `progressive__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10054250 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054250-0x1005427c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10054264 targets 0x1005426c and is always taken.
  The return at 0x10054274 has v0 = ?.
- `rGamma__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10054280 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054280-0x100542ac (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10054294 targets 0x1005429c and is always taken.
  The return at 0x100542a4 has v0 = ?.
- `restoreSize__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100542b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100542b0-0x100542dc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100542c4 targets 0x100542cc and is always taken.
  The return at 0x100542d4 has v0 = ?.
- `rgb10__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100542e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100542e0-0x1005430c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100542f4 targets 0x100542fc and is always taken.
  The return at 0x10054304 has v0 = ?.
- `rgb12__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10054310 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054310-0x1005433c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10054324 targets 0x1005432c and is always taken.
  The return at 0x10054334 has v0 = ?.
- `rgba10__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10054340 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054340-0x1005436c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10054354 targets 0x1005435c and is always taken.
  The return at 0x10054364 has v0 = ?.
- `safeAreaPercent__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10054370 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054370-0x1005439c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10054384 targets 0x1005438c and is always taken.
  The return at 0x10054394 has v0 = ?.
- `setFlickerFilter__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100543a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100543a0-0x100543cc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100543b4 targets 0x100543bc and is always taken.
  The return at 0x100543c4 has v0 = ?.
- `setLetterBox__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100543d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100543d0-0x100543fc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100543e4 targets 0x100543ec and is always taken.
  The return at 0x100543f4 has v0 = ?.
- `sourceChannel__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10054400 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054400-0x1005442c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10054414 targets 0x1005441c and is always taken.
  The return at 0x10054424 has v0 = ?.
- `stacked__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10054430 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054430-0x1005445c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10054444 targets 0x1005444c and is always taken.
  The return at 0x10054454 has v0 = ?.
- `vPhase__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10054460 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054460-0x1005448c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10054474 targets 0x1005447c and is always taken.
  The return at 0x10054484 has v0 = ?.
- `width__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10054490 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054490-0x100544bc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100544a4 targets 0x100544ac and is always taken.
  The return at 0x100544b4 has v0 = ?.
- `xFilterSize__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100544c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100544c0-0x100544ec (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100544d4 targets 0x100544dc and is always taken.
  The return at 0x100544e4 has v0 = ?.
- `xLocked__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100544f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100544f0-0x1005451c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10054504 targets 0x1005450c and is always taken.
  The return at 0x10054514 has v0 = ?.
- `xOrigin__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10054520 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054520-0x1005454c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10054534 targets 0x1005453c and is always taken.
  The return at 0x10054544 has v0 = ?.
- `xPixel__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10054550 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054550-0x1005457c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10054564 targets 0x1005456c and is always taken.
  The return at 0x10054574 has v0 = ?.
- `xTile__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10054580 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054580-0x100545ac (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10054594 targets 0x1005459c and is always taken.
  The return at 0x100545a4 has v0 = ?.
- `yFilterSize__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100545b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100545b0-0x100545dc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100545c4 targets 0x100545cc and is always taken.
  The return at 0x100545d4 has v0 = ?.
- `yLocked__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100545e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100545e0-0x1005460c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100545f4 targets 0x100545fc and is always taken.
  The return at 0x10054604 has v0 = ?.
- `yOrigin__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10054610 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054610-0x1005463c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10054624 targets 0x1005462c and is always taken.
  The return at 0x10054634 has v0 = ?.
- `yPixel__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10054640 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054640-0x1005466c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10054654 targets 0x1005465c and is always taken.
  The return at 0x10054664 has v0 = ?.
- `z__9GvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10054670 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054670-0x1005469c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10054684 targets 0x1005468c and is always taken.
  The return at 0x10054694 has v0 = ?.
- `alphaChannelCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100546a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100546a0-0x10054718 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100546d0, `lw` at 0x100546ec.
  The `lw` at 0x100546d4 loads 4 bytes from [a1+8] +0x9c.
  The `lw` at 0x100546f0 loads 4 bytes from [a1+8] +0xa4.
  The `jalr` at 0x100546f4 calls (unknown callee) with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5c9d0.
  The `beq` branch at 0x100546fc targets 0x10054704 and is always taken.
  The return at 0x10054710 has v0 = ret(?).
- `bGammaCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10054720 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054720-0x10054798 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10054750, `lw` at 0x1005476c.
  The `lw` at 0x10054754 loads 4 bytes from [a1+8] +0xa8.
  The `lw` at 0x10054770 loads 4 bytes from [a1+8] +0xb0.
  The `jalr` at 0x10054774 calls (unknown callee) with a0=([[a1+8]+168] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5c950.
  The `beq` branch at 0x1005477c targets 0x10054784 and is always taken.
  The return at 0x10054790 has v0 = ret(?).
- `channelEnableCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100547a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100547a0-0x10054818 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100547d0, `lw` at 0x100547ec.
  The `lw` at 0x100547d4 loads 4 bytes from [a1+8] +0xb4.
  The `lw` at 0x100547f0 loads 4 bytes from [a1+8] +0xbc.
  The `jalr` at 0x100547f4 calls (unknown callee) with a0=([[a1+8]+180] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5c8d0.
  The `beq` branch at 0x100547fc targets 0x10054804 and is always taken.
  The return at 0x10054810 has v0 = ret(?).
- `closeChannelCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10054820 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054820-0x10054898 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10054850, `lw` at 0x1005486c.
  The `lw` at 0x10054854 loads 4 bytes from [a1+8] +0xc0.
  The `lw` at 0x10054870 loads 4 bytes from [a1+8] +0xc8.
  The `jalr` at 0x10054874 calls (unknown callee) with a0=([[a1+8]+192] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5c850.
  The `beq` branch at 0x1005487c targets 0x10054884 and is always taken.
  The return at 0x10054890 has v0 = ret(?).
- `cursorPriorityCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100548a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100548a0-0x10054918 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100548d0, `lw` at 0x100548ec.
  The `lw` at 0x100548d4 loads 4 bytes from [a1+8] +0xcc.
  The `lw` at 0x100548f0 loads 4 bytes from [a1+8] +0xd4.
  The `jalr` at 0x100548f4 calls (unknown callee) with a0=([[a1+8]+204] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5c7d0.
  The `beq` branch at 0x100548fc targets 0x10054904 and is always taken.
  The return at 0x10054910 has v0 = ret(?).
- `ditherCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10054920 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054920-0x10054998 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10054950, `lw` at 0x1005496c.
  The `lw` at 0x10054954 loads 4 bytes from [a1+8] +0xd8.
  The `lw` at 0x10054970 loads 4 bytes from [a1+8] +0xe0.
  The `jalr` at 0x10054974 calls (unknown callee) with a0=([[a1+8]+216] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5c750.
  The `beq` branch at 0x1005497c targets 0x10054984 and is always taken.
  The return at 0x10054990 has v0 = ret(?).
- `doCrYCb_422Callback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100549a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100549a0-0x10054a18 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100549d0, `lw` at 0x100549ec.
  The `lw` at 0x100549d4 loads 4 bytes from [a1+8] +0xe4.
  The `lw` at 0x100549f0 loads 4 bytes from [a1+8] +0xec.
  The `jalr` at 0x100549f4 calls (unknown callee) with a0=([[a1+8]+228] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5c6d0.
  The `beq` branch at 0x100549fc targets 0x10054a04 and is always taken.
  The return at 0x10054a10 has v0 = ret(?).
- `doCrYCb_4224Callback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10054a20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054a20-0x10054a98 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10054a50, `lw` at 0x10054a6c.
  The `lw` at 0x10054a54 loads 4 bytes from [a1+8] +0xf0.
  The `lw` at 0x10054a70 loads 4 bytes from [a1+8] +0xf8.
  The `jalr` at 0x10054a74 calls (unknown callee) with a0=([[a1+8]+240] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5c650.
  The `beq` branch at 0x10054a7c targets 0x10054a84 and is always taken.
  The return at 0x10054a90 has v0 = ret(?).
- `doCrYCb_4444Callback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10054aa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054aa0-0x10054b18 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10054ad0, `lw` at 0x10054aec.
  The `lw` at 0x10054ad4 loads 4 bytes from [a1+8] +0xfc.
  The `lw` at 0x10054af0 loads 4 bytes from [a1+8] +0x104.
  The `jalr` at 0x10054af4 calls (unknown callee) with a0=([[a1+8]+252] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5c5d0.
  The `beq` branch at 0x10054afc targets 0x10054b04 and is always taken.
  The return at 0x10054b10 has v0 = ret(?).
- `doRGB_4444Callback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10054b20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054b20-0x10054b98 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10054b50, `lw` at 0x10054b6c.
  The `lw` at 0x10054b54 loads 4 bytes from [a1+8] +0x108.
  The `lw` at 0x10054b70 loads 4 bytes from [a1+8] +0x110.
  The `jalr` at 0x10054b74 calls (unknown callee) with a0=([[a1+8]+264] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5c550.
  The `beq` branch at 0x10054b7c targets 0x10054b84 and is always taken.
  The return at 0x10054b90 has v0 = ret(?).
- `fsCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10054ba0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054ba0-0x10054c18 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10054bd0, `lw` at 0x10054bec.
  The `lw` at 0x10054bd4 loads 4 bytes from [a1+8] +0x114.
  The `lw` at 0x10054bf0 loads 4 bytes from [a1+8] +0x11c.
  The `jalr` at 0x10054bf4 calls (unknown callee) with a0=([[a1+8]+276] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5c4d0.
  The `beq` branch at 0x10054bfc targets 0x10054c04 and is always taken.
  The return at 0x10054c10 has v0 = ret(?).
- `gGammaCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10054c20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054c20-0x10054c98 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10054c50, `lw` at 0x10054c6c.
  The `lw` at 0x10054c54 loads 4 bytes from [a1+8] +0x120.
  The `lw` at 0x10054c70 loads 4 bytes from [a1+8] +0x128.
  The `jalr` at 0x10054c74 calls (unknown callee) with a0=([[a1+8]+288] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5c450.
  The `beq` branch at 0x10054c7c targets 0x10054c84 and is always taken.
  The return at 0x10054c90 has v0 = ret(?).
- `gvoOutputFormatCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10054ca0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054ca0-0x10054d18 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10054cd0, `lw` at 0x10054cec.
  The `lw` at 0x10054cd4 loads 4 bytes from [a1+8] +0x12c.
  The `lw` at 0x10054cf0 loads 4 bytes from [a1+8] +0x134.
  The `jalr` at 0x10054cf4 calls (unknown callee) with a0=([[a1+8]+300] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5c3d0.
  The `beq` branch at 0x10054cfc targets 0x10054d04 and is always taken.
  The return at 0x10054d10 has v0 = ret(?).
- `hPhaseCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10054d20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054d20-0x10054d98 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10054d50, `lw` at 0x10054d6c.
  The `lw` at 0x10054d54 loads 4 bytes from [a1+8] +0x138.
  The `lw` at 0x10054d70 loads 4 bytes from [a1+8] +0x140.
  The `jalr` at 0x10054d74 calls (unknown callee) with a0=([[a1+8]+312] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5c350.
  The `beq` branch at 0x10054d7c targets 0x10054d84 and is always taken.
  The return at 0x10054d90 has v0 = ret(?).
- `heightCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10054da0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054da0-0x10054e18 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10054dd0, `lw` at 0x10054dec.
  The `lw` at 0x10054dd4 loads 4 bytes from [a1+8] +0x144.
  The `lw` at 0x10054df0 loads 4 bytes from [a1+8] +0x14c.
  The `jalr` at 0x10054df4 calls (unknown callee) with a0=([[a1+8]+324] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5c2d0.
  The `beq` branch at 0x10054dfc targets 0x10054e04 and is always taken.
  The return at 0x10054e10 has v0 = ret(?).
- `interleavedCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10054e20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054e20-0x10054e98 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10054e50, `lw` at 0x10054e6c.
  The `lw` at 0x10054e54 loads 4 bytes from [a1+8] +0x150.
  The `lw` at 0x10054e70 loads 4 bytes from [a1+8] +0x158.
  The `jalr` at 0x10054e74 calls (unknown callee) with a0=([[a1+8]+336] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5c250.
  The `beq` branch at 0x10054e7c targets 0x10054e84 and is always taken.
  The return at 0x10054e90 has v0 = ret(?).
- `progressiveCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10054ea0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054ea0-0x10054f18 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10054ed0, `lw` at 0x10054eec.
  The `lw` at 0x10054ed4 loads 4 bytes from [a1+8] +0x15c.
  The `lw` at 0x10054ef0 loads 4 bytes from [a1+8] +0x164.
  The `jalr` at 0x10054ef4 calls (unknown callee) with a0=([[a1+8]+348] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5c1d0.
  The `beq` branch at 0x10054efc targets 0x10054f04 and is always taken.
  The return at 0x10054f10 has v0 = ret(?).
- `rGammaCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10054f20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054f20-0x10054f98 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10054f50, `lw` at 0x10054f6c.
  The `lw` at 0x10054f54 loads 4 bytes from [a1+8] +0x168.
  The `lw` at 0x10054f70 loads 4 bytes from [a1+8] +0x170.
  The `jalr` at 0x10054f74 calls (unknown callee) with a0=([[a1+8]+360] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5c150.
  The `beq` branch at 0x10054f7c targets 0x10054f84 and is always taken.
  The return at 0x10054f90 has v0 = ret(?).
- `restoreSizeCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10054fa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10054fa0-0x10055018 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10054fd0, `lw` at 0x10054fec.
  The `lw` at 0x10054fd4 loads 4 bytes from [a1+8] +0x174.
  The `lw` at 0x10054ff0 loads 4 bytes from [a1+8] +0x17c.
  The `jalr` at 0x10054ff4 calls (unknown callee) with a0=([[a1+8]+372] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5c0d0.
  The `beq` branch at 0x10054ffc targets 0x10055004 and is always taken.
  The return at 0x10055010 has v0 = ret(?).
- `rgb10Callback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10055020 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10055020-0x10055098 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10055050, `lw` at 0x1005506c.
  The `lw` at 0x10055054 loads 4 bytes from [a1+8] +0x180.
  The `lw` at 0x10055070 loads 4 bytes from [a1+8] +0x188.
  The `jalr` at 0x10055074 calls (unknown callee) with a0=([[a1+8]+384] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5c050.
  The `beq` branch at 0x1005507c targets 0x10055084 and is always taken.
  The return at 0x10055090 has v0 = ret(?).
- `rgb12Callback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100550a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100550a0-0x10055118 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100550d0, `lw` at 0x100550ec.
  The `lw` at 0x100550d4 loads 4 bytes from [a1+8] +0x18c.
  The `lw` at 0x100550f0 loads 4 bytes from [a1+8] +0x194.
  The `jalr` at 0x100550f4 calls (unknown callee) with a0=([[a1+8]+396] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5bfd0.
  The `beq` branch at 0x100550fc targets 0x10055104 and is always taken.
  The return at 0x10055110 has v0 = ret(?).
- `rgba10Callback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10055120 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10055120-0x10055198 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10055150, `lw` at 0x1005516c.
  The `lw` at 0x10055154 loads 4 bytes from [a1+8] +0x198.
  The `lw` at 0x10055170 loads 4 bytes from [a1+8] +0x1a0.
  The `jalr` at 0x10055174 calls (unknown callee) with a0=([[a1+8]+408] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5bf50.
  The `beq` branch at 0x1005517c targets 0x10055184 and is always taken.
  The return at 0x10055190 has v0 = ret(?).
- `safeAreaPercentCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100551a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100551a0-0x10055218 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100551d0, `lw` at 0x100551ec.
  The `lw` at 0x100551d4 loads 4 bytes from [a1+8] +0x1a4.
  The `lw` at 0x100551f0 loads 4 bytes from [a1+8] +0x1ac.
  The `jalr` at 0x100551f4 calls (unknown callee) with a0=([[a1+8]+420] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5bed0.
  The `beq` branch at 0x100551fc targets 0x10055204 and is always taken.
  The return at 0x10055210 has v0 = ret(?).
- `setFlickerFilterCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10055220 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10055220-0x10055298 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10055250, `lw` at 0x1005526c.
  The `lw` at 0x10055254 loads 4 bytes from [a1+8] +0x1b0.
  The `lw` at 0x10055270 loads 4 bytes from [a1+8] +0x1b8.
  The `jalr` at 0x10055274 calls (unknown callee) with a0=([[a1+8]+432] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5be50.
  The `beq` branch at 0x1005527c targets 0x10055284 and is always taken.
  The return at 0x10055290 has v0 = ret(?).
- `setLetterBoxCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100552a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100552a0-0x10055318 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100552d0, `lw` at 0x100552ec.
  The `lw` at 0x100552d4 loads 4 bytes from [a1+8] +0x1bc.
  The `lw` at 0x100552f0 loads 4 bytes from [a1+8] +0x1c4.
  The `jalr` at 0x100552f4 calls (unknown callee) with a0=([[a1+8]+444] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5bdd0.
  The `beq` branch at 0x100552fc targets 0x10055304 and is always taken.
  The return at 0x10055310 has v0 = ret(?).
- `sourceChannelCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10055320 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10055320-0x10055398 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10055350, `lw` at 0x1005536c.
  The `lw` at 0x10055354 loads 4 bytes from [a1+8] +0x1c8.
  The `lw` at 0x10055370 loads 4 bytes from [a1+8] +0x1d0.
  The `jalr` at 0x10055374 calls (unknown callee) with a0=([[a1+8]+456] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5bd50.
  The `beq` branch at 0x1005537c targets 0x10055384 and is always taken.
  The return at 0x10055390 has v0 = ret(?).
- `stackedCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100553a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100553a0-0x10055418 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100553d0, `lw` at 0x100553ec.
  The `lw` at 0x100553d4 loads 4 bytes from [a1+8] +0x1d4.
  The `lw` at 0x100553f0 loads 4 bytes from [a1+8] +0x1dc.
  The `jalr` at 0x100553f4 calls (unknown callee) with a0=([[a1+8]+468] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5bcd0.
  The `beq` branch at 0x100553fc targets 0x10055404 and is always taken.
  The return at 0x10055410 has v0 = ret(?).
- `vPhaseCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10055420 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10055420-0x10055498 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10055450, `lw` at 0x1005546c.
  The `lw` at 0x10055454 loads 4 bytes from [a1+8] +0x1e0.
  The `lw` at 0x10055470 loads 4 bytes from [a1+8] +0x1e8.
  The `jalr` at 0x10055474 calls (unknown callee) with a0=([[a1+8]+480] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5bc50.
  The `beq` branch at 0x1005547c targets 0x10055484 and is always taken.
  The return at 0x10055490 has v0 = ret(?).
- `widthCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100554a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100554a0-0x10055518 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100554d0, `lw` at 0x100554ec.
  The `lw` at 0x100554d4 loads 4 bytes from [a1+8] +0x1ec.
  The `lw` at 0x100554f0 loads 4 bytes from [a1+8] +0x1f4.
  The `jalr` at 0x100554f4 calls (unknown callee) with a0=([[a1+8]+492] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5bbd0.
  The `beq` branch at 0x100554fc targets 0x10055504 and is always taken.
  The return at 0x10055510 has v0 = ret(?).
- `xFilterSizeCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10055520 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10055520-0x10055598 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10055550, `lw` at 0x1005556c.
  The `lw` at 0x10055554 loads 4 bytes from [a1+8] +0x1f8.
  The `lw` at 0x10055570 loads 4 bytes from [a1+8] +0x200.
  The `jalr` at 0x10055574 calls (unknown callee) with a0=([[a1+8]+504] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5bb50.
  The `beq` branch at 0x1005557c targets 0x10055584 and is always taken.
  The return at 0x10055590 has v0 = ret(?).
- `xLockedCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100555a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100555a0-0x10055618 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100555d0, `lw` at 0x100555ec.
  The `lw` at 0x100555d4 loads 4 bytes from [a1+8] +0x204.
  The `lw` at 0x100555f0 loads 4 bytes from [a1+8] +0x20c.
  The `jalr` at 0x100555f4 calls (unknown callee) with a0=([[a1+8]+516] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5bad0.
  The `beq` branch at 0x100555fc targets 0x10055604 and is always taken.
  The return at 0x10055610 has v0 = ret(?).
- `xOriginCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10055620 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10055620-0x10055698 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10055650, `lw` at 0x1005566c.
  The `lw` at 0x10055654 loads 4 bytes from [a1+8] +0x210.
  The `lw` at 0x10055670 loads 4 bytes from [a1+8] +0x218.
  The `jalr` at 0x10055674 calls (unknown callee) with a0=([[a1+8]+528] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5ba50.
  The `beq` branch at 0x1005567c targets 0x10055684 and is always taken.
  The return at 0x10055690 has v0 = ret(?).
- `xPixelCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100556a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100556a0-0x10055718 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100556d0, `lw` at 0x100556ec.
  The `lw` at 0x100556d4 loads 4 bytes from [a1+8] +0x21c.
  The `lw` at 0x100556f0 loads 4 bytes from [a1+8] +0x224.
  The `jalr` at 0x100556f4 calls (unknown callee) with a0=([[a1+8]+540] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5b9d0.
  The `beq` branch at 0x100556fc targets 0x10055704 and is always taken.
  The return at 0x10055710 has v0 = ret(?).
- `xTileCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10055720 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10055720-0x10055798 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10055750, `lw` at 0x1005576c.
  The `lw` at 0x10055754 loads 4 bytes from [a1+8] +0x228.
  The `lw` at 0x10055770 loads 4 bytes from [a1+8] +0x230.
  The `jalr` at 0x10055774 calls (unknown callee) with a0=([[a1+8]+552] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5b950.
  The `beq` branch at 0x1005577c targets 0x10055784 and is always taken.
  The return at 0x10055790 has v0 = ret(?).
- `yFilterSizeCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100557a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100557a0-0x10055818 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100557d0, `lw` at 0x100557ec.
  The `lw` at 0x100557d4 loads 4 bytes from [a1+8] +0x234.
  The `lw` at 0x100557f0 loads 4 bytes from [a1+8] +0x23c.
  The `jalr` at 0x100557f4 calls (unknown callee) with a0=([[a1+8]+564] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5b8d0.
  The `beq` branch at 0x100557fc targets 0x10055804 and is always taken.
  The return at 0x10055810 has v0 = ret(?).
- `yLockedCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10055820 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10055820-0x10055898 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10055850, `lw` at 0x1005586c.
  The `lw` at 0x10055854 loads 4 bytes from [a1+8] +0x240.
  The `lw` at 0x10055870 loads 4 bytes from [a1+8] +0x248.
  The `jalr` at 0x10055874 calls (unknown callee) with a0=([[a1+8]+576] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5b850.
  The `beq` branch at 0x1005587c targets 0x10055884 and is always taken.
  The return at 0x10055890 has v0 = ret(?).
- `yOriginCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100558a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100558a0-0x10055918 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100558d0, `lw` at 0x100558ec.
  The `lw` at 0x100558d4 loads 4 bytes from [a1+8] +0x24c.
  The `lw` at 0x100558f0 loads 4 bytes from [a1+8] +0x254.
  The `jalr` at 0x100558f4 calls (unknown callee) with a0=([[a1+8]+588] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5b7d0.
  The `beq` branch at 0x100558fc targets 0x10055904 and is always taken.
  The return at 0x10055910 has v0 = ret(?).
- `yPixelCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10055920 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10055920-0x10055998 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10055950, `lw` at 0x1005596c.
  The `lw` at 0x10055954 loads 4 bytes from [a1+8] +0x258.
  The `lw` at 0x10055970 loads 4 bytes from [a1+8] +0x260.
  The `jalr` at 0x10055974 calls (unknown callee) with a0=([[a1+8]+600] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5b750.
  The `beq` branch at 0x1005597c targets 0x10055984 and is always taken.
  The return at 0x10055990 has v0 = ret(?).
- `zCallback__9GvoFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100559a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100559a0-0x10055a18 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100559d0, `lw` at 0x100559ec.
  The `lw` at 0x100559d4 loads 4 bytes from [a1+8] +0x264.
  The `lw` at 0x100559f0 loads 4 bytes from [a1+8] +0x26c.
  The `jalr` at 0x100559f4 calls (unknown callee) with a0=([[a1+8]+612] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x5b6d0.
  The `beq` branch at 0x100559fc targets 0x10055a04 and is always taken.
  The return at 0x10055a10 has v0 = ret(?).
- `CreateHardwareForm` in `usr/gfx/ircombine` at 0x10055a20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10055a20-0x10055b04 (228 bytes).
  It occupies 228 bytes.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10055aac, `lw` at 0x10055ab0, `lw` at 0x10055ac0.
  The `jalr` at 0x10055a4c calls __nw__GUi with a0=0x7c, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10055a78 calls __ct__12HardwareFormGPCcP10_WidgetRec [0x10055b70] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x10055ac8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10055a58 targets 0x10055a94, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10055a8c targets 0x10055a98 and is always taken.
  The return at 0x10055ae8 has v0 = ?.
  The instructions from 0x10055af0 to 0x10055b00 are not reached by any path from the entry, and their branches are not listed.
- `RegisterHardwareFormInterface` in `usr/gfx/ircombine` at 0x10055b10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10055b10-0x10055b4c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0x10055b24 loads 4 bytes from abs 0x100a90d8.
  The `beq` branch at 0x10055b30 targets 0x10055b38 and is always taken.
  The return at 0x10055b44 has v0 = 0x100a3fb8.
- `__ct__12HardwareFormGPCcP10_WidgetRec` in `usr/gfx/ircombine` at 0x10055b70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10055b70-0x10055be4 (116 bytes).
  It occupies 116 bytes.
  The `sw` at 0x10055bb4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10055ba4 calls __ct__14HardwareFormUIGPCcP10_WidgetRec [0x10056aa0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10055bc8 has v0 = a0.
  The instructions from 0x10055bd0 to 0x10055be0 are not reached by any path from the entry, and their branches are not listed.
- `__ct__12HardwareFormGPCc` in `usr/gfx/ircombine` at 0x10055bf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10055bf0-0x10055c5c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x10055c2c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10055c1c calls __ct__14HardwareFormUIGPCc [0x10056b30] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10055c40 has v0 = a0.
  The instructions from 0x10055c48 to 0x10055c58 are not reached by any path from the entry, and their branches are not listed.
- `__dt__12HardwareFormGv` in `usr/gfx/ircombine` at 0x10055c60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10055c60-0x10055cf4 (148 bytes).
  It occupies 148 bytes.
  The `sw` at 0x10055c94 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10055ca4 calls __dt__14HardwareFormUIGv [0x10056ba0] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10055cc4 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10055c84 targets 0x10055ccc, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x10055cb4 targets 0x10055ccc, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10055cd8 has v0 = one of 0x5b410, ret(__dt__14HardwareFormUIGv), ret(__dl__GPv).
  The instructions from 0x10055ce0 to 0x10055cf0 are not reached by any path from the entry, and their branches are not listed.
- `className__12HardwareFormGv` in `usr/gfx/ircombine` at 0x10055d00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10055d00-0x10055d40 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10055d18 loads 4 bytes from abs 0x100a90d8.
  The `beq` branch at 0x10055d24 targets 0x10055d2c and is always taken.
  The return at 0x10055d38 has v0 = 0x100994b0.
- `setTarget__12HardwareFormGP11konTarget_t` in `usr/gfx/ircombine` at 0x10055d80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10055d80-0x10055f54 (468 bytes).
  It occupies 468 bytes.
  The `sw` at 0x10055da8 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `lw` at 0x10055db0 loads 4 bytes from a0 (arg0 at entry) +0x34.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x78, including `lw` at 0x10055db8, `lw` at 0x10055de0, `lw` at 0x10055dfc.
  The `lw` at 0x10055dbc loads 4 bytes from [a0+120] +0x10.
  The `lw` at 0x10055dd8 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x10055de4 loads 4 bytes from [a0+120] +0x4.
  The `lw` at 0x10055e00 loads 4 bytes from [a0+120] +0x18.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x10055e5c, `lw` at 0x10055e7c, `lw` at 0x10055e9c.
  The `lw` at 0x10055f1c loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x10055f28 loads 4 bytes from [a0+120] +0x0.
  The `jalr` at 0x10055dcc calls set__12VkOptionMenuGi with a0=[a0+52], a1=?, a2=a0 at entry (arg0), a3=0x5b2f0.
  The `jalr` at 0x10055df0 calls set__12VkOptionMenuGi with a0=[a0+48], a1=?, a2=?, a3=?.
  The `jalr` at 0x10055e68 calls set__12VkOptionMenuGi with a0=[a0+44], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10055e88 calls set__12VkOptionMenuGi with a0=[a0+44], a1=0x1, a2=[[a0+120]+24], a3=0x1.
  The `jalr` at 0x10055ea8 calls set__12VkOptionMenuGi with a0=[a0+44], a1=0x2, a2=[[a0+120]+24], a3=0x1, a4=[[a0+120]+24], a5=0x4.
  The `jalr` at 0x10055ec8 calls set__12VkOptionMenuGi with a0=[a0+44], a1=0x3, a2=[[a0+120]+24], a3=0x1, a4=[[a0+120]+24], a5=0x4, a6=[[a0+120]+24], a7=0x3.
  The `jalr` at 0x10055ee8 calls set__12VkOptionMenuGi with a0=[a0+44], a1=0x4, a2=[[a0+120]+24], a3=0x1, a4=[[a0+120]+24], a5=0x4, a6=[[a0+120]+24], a7=0x3.
  The `jalr` at 0x10055f08 calls set__12VkOptionMenuGi with a0=[a0+44], a1=0x0, a2=[[a0+120]+24], a3=0x1, a4=[[a0+120]+24], a5=0x4, a6=[[a0+120]+24], a7=0x3.
  The `jalr` at 0x10055f30 calls set__12VkOptionMenuGi with a0=[a0+40], a1=[[a0+120]], a2=?, a3=?.
  The `beq` branch at 0x10055e08 targets 0x10055e58, is taken when a1(=[[a0+120]+24]) == 0, and falls through when a1(=[[a0+120]+24]) != 0.
  The `beq` branch at 0x10055e18 targets 0x10055e78, is taken when a2(=[[a0+120]+24]) == a3(=0x1), and falls through when a2(=[[a0+120]+24]) != a3(=0x1).
  The `beq` branch at 0x10055e28 targets 0x10055e98, is taken when a4(=[[a0+120]+24]) == a5(=0x4), and falls through when a4(=[[a0+120]+24]) != a5(=0x4).
  The `beq` branch at 0x10055e38 targets 0x10055eb8, is taken when a6(=[[a0+120]+24]) == a7(=0x3), and falls through when a6(=[[a0+120]+24]) != a7(=0x3).
  The `beq` branch at 0x10055e48 targets 0x10055ed8, is taken when t0(=[[a0+120]+24]) == t1(=0x5), and falls through when t0(=[[a0+120]+24]) != t1(=0x5).
  The `beq` branch at 0x10055e50 targets 0x10055ef8 and is always taken.
  The `beq` branch at 0x10055e70 targets 0x10055f18 and is always taken.
  The `beq` branch at 0x10055e90 targets 0x10055f18 and is always taken.
  The `beq` branch at 0x10055eb0 targets 0x10055f18 and is always taken.
  The `beq` branch at 0x10055ed0 targets 0x10055f18 and is always taken.
  The `beq` branch at 0x10055ef0 targets 0x10055f18 and is always taken.
  The `beq` branch at 0x10055f10 targets 0x10055f18 and is always taken.
  The `beq` branch at 0x10055f38 targets 0x10055f40 and is always taken.
  The return at 0x10055f4c has v0 = ret(set__12VkOptionMenuGi).
- `closeHardware__12HardwareFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10055f60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10055f60-0x10055fd4 (116 bytes).
  It occupies 116 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x74, including `lw` at 0x10055f88, `lw` at 0x10055f98, `lw` at 0x10055fa4.
  2 such `lw` accesses load 4 bytes from [a0+116] +0x8, including `lw` at 0x10055f8c, `lw` at 0x10055fa8.
  The `lw` at 0x10055f90 loads 4 bytes from [[a0+116]+8] +0x30.
  The `lw` at 0x10055fac loads 4 bytes from [[a0+116]+8] +0x38.
  The `jalr` at 0x10055fb0 calls (unknown callee) with a0=([[[a0+116]+8]+48] + [a0+116]), a1=[a0+116], a2=a2 at entry (arg2), a3=0x5b110.
  The `beq` branch at 0x10055fb8 targets 0x10055fc0 and is always taken.
  The return at 0x10055fcc has v0 = ret(?).
- `doGfxOnyx2IR__12HardwareFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10055fe0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10055fe0-0x10056058 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x1005600c loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0x10056010 stores 4 bytes to [a0+120] +0x0.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10056018, `lw` at 0x1005602c.
  The `jal` at 0x10056020 calls setSensitive__18VkwindowMainWindowGv [0x1006ef60] with a0=[sym(vkwindow)], a1=0x1, a2=[a0+120], a3=0x5b090.
  The `jal` at 0x10056034 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005603c targets 0x10056044 and is always taken.
  The return at 0x10056050 has v0 = ret(update__18VkwindowMainWindowGv).
- `doGfxOnyx2IR4__12HardwareFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10056060 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10056060-0x100560d8 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x1005608c loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0x10056090 stores 4 bytes to [a0+120] +0x0.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10056098, `lw` at 0x100560ac.
  The `jal` at 0x100560a0 calls setSensitive__18VkwindowMainWindowGv [0x1006ef60] with a0=[sym(vkwindow)], a1=0x3, a2=[a0+120], a3=0x5b010.
  The `jal` at 0x100560b4 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x100560bc targets 0x100560c4 and is always taken.
  The return at 0x100560d0 has v0 = ret(update__18VkwindowMainWindowGv).
- `doGfxOnyx2R__12HardwareFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100560e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100560e0-0x10056158 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x1005610c loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0x10056110 stores 4 bytes to [a0+120] +0x0.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10056118, `lw` at 0x1005612c.
  The `jal` at 0x10056120 calls setSensitive__18VkwindowMainWindowGv [0x1006ef60] with a0=[sym(vkwindow)], a1=0x2, a2=[a0+120], a3=0x5af90.
  The `jal` at 0x10056134 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005613c targets 0x10056144 and is always taken.
  The return at 0x10056150 has v0 = ret(update__18VkwindowMainWindowGv).
- `doGfxOnyxIR__12HardwareFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10056160 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10056160-0x100561d4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0x10056188 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0x1005618c stores 4 bytes to [a0+120] +0x0.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10056194, `lw` at 0x100561a8.
  The `jal` at 0x1005619c calls setSensitive__18VkwindowMainWindowGv [0x1006ef60] with a0=[sym(vkwindow)], a1=[a0+120], a2=a2 at entry (arg2), a3=0x5af10.
  The `jal` at 0x100561b0 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x100561b8 targets 0x100561c0 and is always taken.
  The return at 0x100561cc has v0 = ret(update__18VkwindowMainWindowGv).
- `doTmdsOptionButton__12HardwareFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100561e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100561e0-0x10056258 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x1005620c loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0x10056210 stores 4 bytes to [a0+120] +0x18.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10056218, `lw` at 0x1005622c.
  The `jal` at 0x10056220 calls setSensitive__18VkwindowMainWindowGv [0x1006ef60] with a0=[sym(vkwindow)], a1=0x2, a2=[a0+120], a3=0x5ae90.
  The `jal` at 0x10056234 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005623c targets 0x10056244 and is always taken.
  The return at 0x10056250 has v0 = ret(update__18VkwindowMainWindowGv).
- `dplexOption__12HardwareFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10056260 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10056260-0x100562d8 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x1005628c loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0x10056290 stores 4 bytes to [a0+120] +0x18.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10056298, `lw` at 0x100562ac.
  The `jal` at 0x100562a0 calls setSensitive__18VkwindowMainWindowGv [0x1006ef60] with a0=[sym(vkwindow)], a1=0x5, a2=[a0+120], a3=0x5ae10.
  The `jal` at 0x100562b4 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x100562bc targets 0x100562c4 and is always taken.
  The return at 0x100562d0 has v0 = ret(update__18VkwindowMainWindowGv).
- `dvpOption__12HardwareFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100562e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100562e0-0x10056358 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x1005630c loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0x10056310 stores 4 bytes to [a0+120] +0x18.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10056318, `lw` at 0x1005632c.
  The `jal` at 0x10056320 calls setSensitive__18VkwindowMainWindowGv [0x1006ef60] with a0=[sym(vkwindow)], a1=0x4, a2=[a0+120], a3=0x5ad90.
  The `jal` at 0x10056334 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005633c targets 0x10056344 and is always taken.
  The return at 0x10056350 has v0 = ret(update__18VkwindowMainWindowGv).
- `eightVOC__12HardwareFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10056360 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10056360-0x100563d8 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x1005638c loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0x10056390 stores 4 bytes to [a0+120] +0x10.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10056398, `lw` at 0x100563ac.
  The `jal` at 0x100563a0 calls setSensitive__18VkwindowMainWindowGv [0x1006ef60] with a0=[sym(vkwindow)], a1=0x8, a2=[a0+120], a3=0x5ad10.
  The `jal` at 0x100563b4 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x100563bc targets 0x100563c4 and is always taken.
  The return at 0x100563d0 has v0 = ret(update__18VkwindowMainWindowGv).
- `fourRM__12HardwareFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100563e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100563e0-0x10056444 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x1005640c loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0x10056410 stores 4 bytes to [a0+120] +0x4.
  The `lw` at 0x10056418 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10056420 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x4, a2=[a0+120], a3=0x5ac90.
  The `beq` branch at 0x10056428 targets 0x10056430 and is always taken.
  The return at 0x1005643c has v0 = ret(update__18VkwindowMainWindowGv).
- `gvoOption__12HardwareFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10056450 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10056450-0x100564c8 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x1005647c loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0x10056480 stores 4 bytes to [a0+120] +0x18.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10056488, `lw` at 0x1005649c.
  The `jal` at 0x10056490 calls setSensitive__18VkwindowMainWindowGv [0x1006ef60] with a0=[sym(vkwindow)], a1=0x3, a2=[a0+120], a3=0x5ac20.
  The `jal` at 0x100564a4 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x100564ac targets 0x100564b4 and is always taken.
  The return at 0x100564c0 has v0 = ret(update__18VkwindowMainWindowGv).
- `noneOption__12HardwareFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100564d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100564d0-0x10056544 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0x100564f8 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0x100564fc stores 4 bytes to [a0+120] +0x18.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10056504, `lw` at 0x10056518.
  The `jal` at 0x1005650c calls setSensitive__18VkwindowMainWindowGv [0x1006ef60] with a0=[sym(vkwindow)], a1=[a0+120], a2=a2 at entry (arg2), a3=0x5aba0.
  The `jal` at 0x10056520 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x10056528 targets 0x10056530 and is always taken.
  The return at 0x1005653c has v0 = ret(update__18VkwindowMainWindowGv).
- `oneRM__12HardwareFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10056550 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10056550-0x100565b4 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x1005657c loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0x10056580 stores 4 bytes to [a0+120] +0x4.
  The `lw` at 0x10056588 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10056590 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x1, a2=[a0+120], a3=0x5ab20.
  The `beq` branch at 0x10056598 targets 0x100565a0 and is always taken.
  The return at 0x100565ac has v0 = ret(update__18VkwindowMainWindowGv).
- `siriusOption__12HardwareFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100565c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100565c0-0x10056638 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x100565ec loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0x100565f0 stores 4 bytes to [a0+120] +0x18.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x100565f8, `lw` at 0x1005660c.
  The `jal` at 0x10056600 calls setSensitive__18VkwindowMainWindowGv [0x1006ef60] with a0=[sym(vkwindow)], a1=0x1, a2=[a0+120], a3=0x5aab0.
  The `jal` at 0x10056614 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005661c targets 0x10056624 and is always taken.
  The return at 0x10056630 has v0 = ret(update__18VkwindowMainWindowGv).
- `twoRM__12HardwareFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10056640 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10056640-0x100566a4 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x1005666c loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0x10056670 stores 4 bytes to [a0+120] +0x4.
  The `lw` at 0x10056678 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10056680 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x2, a2=[a0+120], a3=0x5aa30.
  The `beq` branch at 0x10056688 targets 0x10056690 and is always taken.
  The return at 0x1005669c has v0 = ret(update__18VkwindowMainWindowGv).
- `twoVOC__12HardwareFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100566b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100566b0-0x10056728 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x100566dc loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0x100566e0 stores 4 bytes to [a0+120] +0x10.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x100566e8, `lw` at 0x100566fc.
  The `jal` at 0x100566f0 calls setSensitive__18VkwindowMainWindowGv [0x1006ef60] with a0=[sym(vkwindow)], a1=0x2, a2=[a0+120], a3=0x5a9c0.
  The `jal` at 0x10056704 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005670c targets 0x10056714 and is always taken.
  The return at 0x10056720 has v0 = ret(update__18VkwindowMainWindowGv).
- `__ct__14HardwareFormUIGPCcP10_WidgetRec` in `usr/gfx/ircombine` at 0x10056aa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10056aa0-0x10056b24 (132 bytes).
  It occupies 132 bytes.
  The `sw` at 0x10056ae0 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10056ad0 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10056af0 calls create__14HardwareFormUIGP10_WidgetRec [0x10056c40] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The return at 0x10056b08 has v0 = a0.
  The instructions from 0x10056b10 to 0x10056b20 are not reached by any path from the entry, and their branches are not listed.
- `__ct__14HardwareFormUIGPCc` in `usr/gfx/ircombine` at 0x10056b30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10056b30-0x10056b9c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x10056b6c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10056b5c calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10056b80 has v0 = a0.
  The instructions from 0x10056b88 to 0x10056b98 are not reached by any path from the entry, and their branches are not listed.
- `__dt__14HardwareFormUIGv` in `usr/gfx/ircombine` at 0x10056ba0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10056ba0-0x10056c34 (148 bytes).
  It occupies 148 bytes.
  The `sw` at 0x10056bd4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x10056be4 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10056c04 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10056bc4 targets 0x10056c0c, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x10056bf4 targets 0x10056c0c, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10056c18 has v0 = one of 0x5a4d0, ret(__dt__11VkComponentGv), ret(__dl__GPv).
  The instructions from 0x10056c20 to 0x10056c30 are not reached by any path from the entry, and their branches are not listed.
- `create__14HardwareFormUIGP10_WidgetRec` in `usr/gfx/ircombine` at 0x10056c40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10056c40-0x10057730 (2800 bytes).
  It occupies 2800 bytes.
  The `lw` at 0x10056c80 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0x10056c88 loads 4 bytes from sym(xmFormWidgetClass) +0x0.
  The `sw` at 0x10056cbc stores 4 bytes to a0 (arg0 at entry) +0x24.
  The `sw` at 0x10056cc4 stores 4 bytes to a0 (arg0 at entry) +0x10.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x10056d14, `lw` at 0x10056e68, `lw` at 0x10057028.
  The `sw` at 0x10056d58 stores 4 bytes to a0 (arg0 at entry) +0x28.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x10056d60, `lw` at 0x10056d94, `lw` at 0x10056dc8.
  The `sw` at 0x10056d8c stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `sw` at 0x10056dc0 stores 4 bytes to a0 (arg0 at entry) +0x48.
  The `sw` at 0x10056df4 stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `sw` at 0x10056e28 stores 4 bytes to a0 (arg0 at entry) +0x4c.
  The `sw` at 0x10056eb0 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x10056eb8, `lw` at 0x10056eec, `lw` at 0x10056f20.
  The `sw` at 0x10056ee4 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `sw` at 0x10056f18 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sw` at 0x10056f4c stores 4 bytes to a0 (arg0 at entry) +0x3c.
  The `sw` at 0x10056f80 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x10056fb4 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `sw` at 0x10056fe8 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `sw` at 0x1005706c stores 4 bytes to a0 (arg0 at entry) +0x34.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x34, including `lw` at 0x10057074, `lw` at 0x100570a8, `lw` at 0x1005753c.
  The `sw` at 0x100570a0 stores 4 bytes to a0 (arg0 at entry) +0x70.
  The `sw` at 0x100570d4 stores 4 bytes to a0 (arg0 at entry) +0x40.
  The `sw` at 0x10057158 stores 4 bytes to a0 (arg0 at entry) +0x30.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x10057160, `lw` at 0x10057194, `lw` at 0x100571c8.
  The `sw` at 0x1005718c stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0x100571c0 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0x100571f4 stores 4 bytes to a0 (arg0 at entry) +0x44.
  The `lw` at 0x10057204 loads 4 bytes from sym(xmPushButtonWidgetClass) +0x0.
  The `sw` at 0x1005732c stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `lw` at 0x10057334 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `jalr` at 0x10056c74 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultHardwareFormUIResources__14HardwareFormUI), a3=a3 at entry (arg3).
  The `jalr` at 0x10056ca4 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=sym(_XmStrings)+9052, a4=0x1, a5=0x0.
  The `jalr` at 0x10056cd0 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=ret(XtVaCreateWidget), a2=a0 at entry (arg0), a3=a0 at entry (arg0).
  The `jalr` at 0x10056ce4 calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x10056d28 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x100aa798, a3=0x0, a4=0x0, a5=0x1.
  The `jalr` at 0x10056d7c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+40], a1=0x100994e0, a2=sym(doGfxOnyxIRCallback__14HardwareFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10056db0 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+40], a1=0x100994f0, a2=sym(doGfxOnyx2IRCallback__14HardwareFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10056de4 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+40], a1=0x10099500, a2=sym(doGfxOnyx2RCallback__14HardwareFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10056e18 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+40], a1=0x10099510, a2=sym(doGfxOnyx2IR4Callback__14HardwareFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10056e38 calls __nw__GUi with a0=0x4c, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10056e80 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10099520, a3=0x0, a4=0x0.
  The `jalr` at 0x10056ed4 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+44], a1=0x10099530, a2=sym(noneOptionCallback__14HardwareFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10056f08 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+44], a1=0x10099548, a2=sym(siriusOptionCallback__14HardwareFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10056f3c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+44], a1=0x10099560, a2=sym(dvpOptionCallback__14HardwareFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10056f70 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+44], a1=0x10099578, a2=sym(gvoOptionCallback__14HardwareFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10056fa4 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+44], a1=0x10099590, a2=sym(dplexOptionCallback__14HardwareFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10056fd8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+44], a1=0x100995a8, a2=sym(doTmdsOptionButtonCallback__14HardwareFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10056ff8 calls __nw__GUi with a0=0x4c, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1005703c calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x100aa7a0, a3=0x0, a4=0x0.
  The `jalr` at 0x10057090 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+52], a1=0x100995c0, a2=sym(twoVOCCallback__14HardwareFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100570c4 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+52], a1=0x100995d0, a2=sym(eightVOCCallback__14HardwareFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100570e4 calls __nw__GUi with a0=0x4c, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10057128 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x100aa7a8, a3=0x0, a4=0x0.
  The `jalr` at 0x1005717c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+48], a1=0x100995e0, a2=sym(oneRMCallback__14HardwareFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100571b0 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+48], a1=0x100995f0, a2=sym(twoRMCallback__14HardwareFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100571e4 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+48], a1=0x10099600, a2=sym(fourRMCallback__14HardwareFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005731c calls XtVaCreateManagedWidget with a0=0x10099610, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x0, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1005734c calls XtAddCallback with a0=[a0+32], a1=sym(_XmStrings)+4683, a2=sym(closeHardwareCallback__14HardwareFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10057360 calls baseWidget__10VkMenuItemCGv with a0=[a0+40], a1=?, a2=?, a3=?.
  The `jalr` at 0x10057378 calls baseWidget__10VkMenuItemCGv with a0=[a0+48], a1=?, a2=?, a3=?.
  The `jalr` at 0x10057454 calls XtVaSetValues with a0=?, a1=sym(_XmStrings)+10165, a2=0x1, a3=sym(_XmStrings)+5017, a4=0x4, a5=sym(_XmStrings)+7523, a6=0x1, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x10057468 calls baseWidget__10VkMenuItemCGv with a0=[a0+44], a1=?, a2=?, a3=?.
  The `jalr` at 0x10057530 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x1, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x1, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x10057544 calls baseWidget__10VkMenuItemCGv with a0=[a0+52], a1=?, a2=?, a3=?.
  The `jalr` at 0x1005755c calls baseWidget__10VkMenuItemCGv with a0=[a0+48], a1=?, a2=?, a3=?.
  The `jalr` at 0x10057634 calls XtVaSetValues with a0=?, a1=sym(_XmStrings)+10165, a2=0x3, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x1, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x10057648 calls baseWidget__10VkMenuItemCGv with a0=[a0+48], a1=?, a2=?, a3=?.
  The `jalr` at 0x10057700 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x1, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x1, a7=sym(_XmStrings)+9077.
  The `beq` branch at 0x10056cfc targets 0x10056d4c, is taken when a4(=ret(__nw__GUi)) == 0, and falls through when a4(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10056d44 targets 0x10056d50 and is always taken.
  The `beq` branch at 0x10056e50 targets 0x10056ea4, is taken when a3(=ret(__nw__GUi)) == 0, and falls through when a3(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10056e9c targets 0x10056ea8 and is always taken.
  The `beq` branch at 0x10057010 targets 0x10057060, is taken when a3(=ret(__nw__GUi)) == 0, and falls through when a3(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10057058 targets 0x10057064 and is always taken.
  The `beq` branch at 0x100570fc targets 0x1005714c, is taken when a3(=ret(__nw__GUi)) == 0, and falls through when a3(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10057144 targets 0x10057150 and is always taken.
  The return at 0x10057714 has v0 = ret(XtVaSetValues).
  The instructions from 0x1005771c to 0x1005772c are not reached by any path from the entry, and their branches are not listed.
- `className__14HardwareFormUIGv` in `usr/gfx/ircombine` at 0x10057730 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10057730-0x10057770 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10057748 loads 4 bytes from abs 0x100a90d8.
  The `beq` branch at 0x10057754 targets 0x1005775c and is always taken.
  The return at 0x10057768 has v0 = 0x10099628.
- `closeHardware__14HardwareFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10057770 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10057770-0x1005779c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10057784 targets 0x1005778c and is always taken.
  The return at 0x10057794 has v0 = ?.
- `doGfxOnyx2IR__14HardwareFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100577a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100577a0-0x100577cc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100577b4 targets 0x100577bc and is always taken.
  The return at 0x100577c4 has v0 = ?.
- `doGfxOnyx2IR4__14HardwareFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100577d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100577d0-0x100577fc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100577e4 targets 0x100577ec and is always taken.
  The return at 0x100577f4 has v0 = ?.
- `doGfxOnyx2R__14HardwareFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10057800 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10057800-0x1005782c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10057814 targets 0x1005781c and is always taken.
  The return at 0x10057824 has v0 = ?.
- `doGfxOnyxIR__14HardwareFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10057830 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10057830-0x1005785c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10057844 targets 0x1005784c and is always taken.
  The return at 0x10057854 has v0 = ?.
- `doTmdsOptionButton__14HardwareFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10057860 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10057860-0x1005788c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10057874 targets 0x1005787c and is always taken.
  The return at 0x10057884 has v0 = ?.
- `dplexOption__14HardwareFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10057890 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10057890-0x100578bc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100578a4 targets 0x100578ac and is always taken.
  The return at 0x100578b4 has v0 = ?.
- `dvpOption__14HardwareFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100578c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100578c0-0x100578ec (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100578d4 targets 0x100578dc and is always taken.
  The return at 0x100578e4 has v0 = ?.
- `eightVOC__14HardwareFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100578f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100578f0-0x1005791c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10057904 targets 0x1005790c and is always taken.
  The return at 0x10057914 has v0 = ?.
- `fourRM__14HardwareFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10057920 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10057920-0x1005794c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10057934 targets 0x1005793c and is always taken.
  The return at 0x10057944 has v0 = ?.
- `gvoOption__14HardwareFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10057950 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10057950-0x1005797c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10057964 targets 0x1005796c and is always taken.
  The return at 0x10057974 has v0 = ?.
- `noneOption__14HardwareFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10057980 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10057980-0x100579ac (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10057994 targets 0x1005799c and is always taken.
  The return at 0x100579a4 has v0 = ?.
- `oneRM__14HardwareFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100579b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100579b0-0x100579dc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100579c4 targets 0x100579cc and is always taken.
  The return at 0x100579d4 has v0 = ?.
- `siriusOption__14HardwareFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100579e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100579e0-0x10057a0c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100579f4 targets 0x100579fc and is always taken.
  The return at 0x10057a04 has v0 = ?.
- `twoRM__14HardwareFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10057a10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10057a10-0x10057a3c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10057a24 targets 0x10057a2c and is always taken.
  The return at 0x10057a34 has v0 = ?.
- `twoVOC__14HardwareFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10057a40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10057a40-0x10057a6c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10057a54 targets 0x10057a5c and is always taken.
  The return at 0x10057a64 has v0 = ?.
- `closeHardwareCallback__14HardwareFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10057a70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10057a70-0x10057ae8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10057aa0, `lw` at 0x10057abc.
  The `lw` at 0x10057aa4 loads 4 bytes from [a1+8] +0x9c.
  The `lw` at 0x10057ac0 loads 4 bytes from [a1+8] +0xa4.
  The `jalr` at 0x10057ac4 calls (unknown callee) with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x59600.
  The `beq` branch at 0x10057acc targets 0x10057ad4 and is always taken.
  The return at 0x10057ae0 has v0 = ret(?).
- `doGfxOnyx2IRCallback__14HardwareFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10057af0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10057af0-0x10057b68 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10057b20, `lw` at 0x10057b3c.
  The `lw` at 0x10057b24 loads 4 bytes from [a1+8] +0xa8.
  The `lw` at 0x10057b40 loads 4 bytes from [a1+8] +0xb0.
  The `jalr` at 0x10057b44 calls (unknown callee) with a0=([[a1+8]+168] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x59580.
  The `beq` branch at 0x10057b4c targets 0x10057b54 and is always taken.
  The return at 0x10057b60 has v0 = ret(?).
- `doGfxOnyx2IR4Callback__14HardwareFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10057b70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10057b70-0x10057be8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10057ba0, `lw` at 0x10057bbc.
  The `lw` at 0x10057ba4 loads 4 bytes from [a1+8] +0xb4.
  The `lw` at 0x10057bc0 loads 4 bytes from [a1+8] +0xbc.
  The `jalr` at 0x10057bc4 calls (unknown callee) with a0=([[a1+8]+180] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x59500.
  The `beq` branch at 0x10057bcc targets 0x10057bd4 and is always taken.
  The return at 0x10057be0 has v0 = ret(?).
- `doGfxOnyx2RCallback__14HardwareFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10057bf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10057bf0-0x10057c68 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10057c20, `lw` at 0x10057c3c.
  The `lw` at 0x10057c24 loads 4 bytes from [a1+8] +0xc0.
  The `lw` at 0x10057c40 loads 4 bytes from [a1+8] +0xc8.
  The `jalr` at 0x10057c44 calls (unknown callee) with a0=([[a1+8]+192] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x59480.
  The `beq` branch at 0x10057c4c targets 0x10057c54 and is always taken.
  The return at 0x10057c60 has v0 = ret(?).
- `doGfxOnyxIRCallback__14HardwareFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10057c70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10057c70-0x10057ce8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10057ca0, `lw` at 0x10057cbc.
  The `lw` at 0x10057ca4 loads 4 bytes from [a1+8] +0xcc.
  The `lw` at 0x10057cc0 loads 4 bytes from [a1+8] +0xd4.
  The `jalr` at 0x10057cc4 calls (unknown callee) with a0=([[a1+8]+204] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x59400.
  The `beq` branch at 0x10057ccc targets 0x10057cd4 and is always taken.
  The return at 0x10057ce0 has v0 = ret(?).
- `doTmdsOptionButtonCallback__14HardwareFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10057cf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10057cf0-0x10057d68 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10057d20, `lw` at 0x10057d3c.
  The `lw` at 0x10057d24 loads 4 bytes from [a1+8] +0xd8.
  The `lw` at 0x10057d40 loads 4 bytes from [a1+8] +0xe0.
  The `jalr` at 0x10057d44 calls (unknown callee) with a0=([[a1+8]+216] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x59380.
  The `beq` branch at 0x10057d4c targets 0x10057d54 and is always taken.
  The return at 0x10057d60 has v0 = ret(?).
- `dplexOptionCallback__14HardwareFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10057d70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10057d70-0x10057de8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10057da0, `lw` at 0x10057dbc.
  The `lw` at 0x10057da4 loads 4 bytes from [a1+8] +0xe4.
  The `lw` at 0x10057dc0 loads 4 bytes from [a1+8] +0xec.
  The `jalr` at 0x10057dc4 calls (unknown callee) with a0=([[a1+8]+228] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x59300.
  The `beq` branch at 0x10057dcc targets 0x10057dd4 and is always taken.
  The return at 0x10057de0 has v0 = ret(?).
- `dvpOptionCallback__14HardwareFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10057df0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10057df0-0x10057e68 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10057e20, `lw` at 0x10057e3c.
  The `lw` at 0x10057e24 loads 4 bytes from [a1+8] +0xf0.
  The `lw` at 0x10057e40 loads 4 bytes from [a1+8] +0xf8.
  The `jalr` at 0x10057e44 calls (unknown callee) with a0=([[a1+8]+240] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x59280.
  The `beq` branch at 0x10057e4c targets 0x10057e54 and is always taken.
  The return at 0x10057e60 has v0 = ret(?).
- `eightVOCCallback__14HardwareFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10057e70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10057e70-0x10057ee8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10057ea0, `lw` at 0x10057ebc.
  The `lw` at 0x10057ea4 loads 4 bytes from [a1+8] +0xfc.
  The `lw` at 0x10057ec0 loads 4 bytes from [a1+8] +0x104.
  The `jalr` at 0x10057ec4 calls (unknown callee) with a0=([[a1+8]+252] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x59200.
  The `beq` branch at 0x10057ecc targets 0x10057ed4 and is always taken.
  The return at 0x10057ee0 has v0 = ret(?).
- `fourRMCallback__14HardwareFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10057ef0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10057ef0-0x10057f68 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10057f20, `lw` at 0x10057f3c.
  The `lw` at 0x10057f24 loads 4 bytes from [a1+8] +0x108.
  The `lw` at 0x10057f40 loads 4 bytes from [a1+8] +0x110.
  The `jalr` at 0x10057f44 calls (unknown callee) with a0=([[a1+8]+264] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x59180.
  The `beq` branch at 0x10057f4c targets 0x10057f54 and is always taken.
  The return at 0x10057f60 has v0 = ret(?).
- `gvoOptionCallback__14HardwareFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10057f70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10057f70-0x10057fe8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10057fa0, `lw` at 0x10057fbc.
  The `lw` at 0x10057fa4 loads 4 bytes from [a1+8] +0x114.
  The `lw` at 0x10057fc0 loads 4 bytes from [a1+8] +0x11c.
  The `jalr` at 0x10057fc4 calls (unknown callee) with a0=([[a1+8]+276] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x59100.
  The `beq` branch at 0x10057fcc targets 0x10057fd4 and is always taken.
  The return at 0x10057fe0 has v0 = ret(?).
- `noneOptionCallback__14HardwareFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10057ff0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10057ff0-0x10058068 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10058020, `lw` at 0x1005803c.
  The `lw` at 0x10058024 loads 4 bytes from [a1+8] +0x120.
  The `lw` at 0x10058040 loads 4 bytes from [a1+8] +0x128.
  The `jalr` at 0x10058044 calls (unknown callee) with a0=([[a1+8]+288] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x59080.
  The `beq` branch at 0x1005804c targets 0x10058054 and is always taken.
  The return at 0x10058060 has v0 = ret(?).
- `oneRMCallback__14HardwareFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10058070 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10058070-0x100580e8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100580a0, `lw` at 0x100580bc.
  The `lw` at 0x100580a4 loads 4 bytes from [a1+8] +0x12c.
  The `lw` at 0x100580c0 loads 4 bytes from [a1+8] +0x134.
  The `jalr` at 0x100580c4 calls (unknown callee) with a0=([[a1+8]+300] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x59000.
  The `beq` branch at 0x100580cc targets 0x100580d4 and is always taken.
  The return at 0x100580e0 has v0 = ret(?).
- `siriusOptionCallback__14HardwareFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100580f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100580f0-0x10058168 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10058120, `lw` at 0x1005813c.
  The `lw` at 0x10058124 loads 4 bytes from [a1+8] +0x138.
  The `lw` at 0x10058140 loads 4 bytes from [a1+8] +0x140.
  The `jalr` at 0x10058144 calls (unknown callee) with a0=([[a1+8]+312] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x58f80.
  The `beq` branch at 0x1005814c targets 0x10058154 and is always taken.
  The return at 0x10058160 has v0 = ret(?).
- `twoRMCallback__14HardwareFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10058170 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10058170-0x100581e8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100581a0, `lw` at 0x100581bc.
  The `lw` at 0x100581a4 loads 4 bytes from [a1+8] +0x144.
  The `lw` at 0x100581c0 loads 4 bytes from [a1+8] +0x14c.
  The `jalr` at 0x100581c4 calls (unknown callee) with a0=([[a1+8]+324] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x58f00.
  The `beq` branch at 0x100581cc targets 0x100581d4 and is always taken.
  The return at 0x100581e0 has v0 = ret(?).
- `twoVOCCallback__14HardwareFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100581f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100581f0-0x10058268 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10058220, `lw` at 0x1005823c.
  The `lw` at 0x10058224 loads 4 bytes from [a1+8] +0x150.
  The `lw` at 0x10058240 loads 4 bytes from [a1+8] +0x158.
  The `jalr` at 0x10058244 calls (unknown callee) with a0=([[a1+8]+336] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x58e80.
  The `beq` branch at 0x1005824c targets 0x10058254 and is always taken.
  The return at 0x10058260 has v0 = ret(?).
- `CreateHdgvoForm` in `usr/gfx/ircombine` at 0x10058ae0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10058ae0-0x10058bc4 (228 bytes).
  It occupies 228 bytes.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10058b6c, `lw` at 0x10058b70, `lw` at 0x10058b80.
  The `jalr` at 0x10058b0c calls __nw__GUi with a0=0x168, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10058b38 calls __ct__9HdgvoFormGPCcP10_WidgetRec [0x10058c30] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x10058b88 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10058b18 targets 0x10058b54, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10058b4c targets 0x10058b58 and is always taken.
  The return at 0x10058ba8 has v0 = ?.
  The instructions from 0x10058bb0 to 0x10058bc0 are not reached by any path from the entry, and their branches are not listed.
- `RegisterHdgvoFormInterface` in `usr/gfx/ircombine` at 0x10058bd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10058bd0-0x10058c0c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0x10058be4 loads 4 bytes from abs 0x100a90d8.
  The `beq` branch at 0x10058bf0 targets 0x10058bf8 and is always taken.
  The return at 0x10058c04 has v0 = 0x100a48d0.
- `__ct__9HdgvoFormGPCcP10_WidgetRec` in `usr/gfx/ircombine` at 0x10058c30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10058c30-0x10058cb8 (136 bytes).
  It occupies 136 bytes.
  The `sw` at 0x10058c74 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x10058c88 stores 4 bytes to a0 (arg0 at entry) +0x164.
  The `jal` at 0x10058c64 calls __ct__11HdgvoFormUIGPCcP10_WidgetRec [0x1005b5a0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10058c9c has v0 = a0.
  The instructions from 0x10058ca4 to 0x10058cb4 are not reached by any path from the entry, and their branches are not listed.
- `__ct__9HdgvoFormGPCc` in `usr/gfx/ircombine` at 0x10058cc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10058cc0-0x10058d2c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x10058cfc stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10058cec calls __ct__11HdgvoFormUIGPCc [0x1005b630] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10058d10 has v0 = a0.
  The instructions from 0x10058d18 to 0x10058d28 are not reached by any path from the entry, and their branches are not listed.
- `__dt__9HdgvoFormGv` in `usr/gfx/ircombine` at 0x10058d30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10058d30-0x10058dc4 (148 bytes).
  It occupies 148 bytes.
  The `sw` at 0x10058d64 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10058d74 calls __dt__11HdgvoFormUIGv [0x1005b6a0] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10058d94 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10058d54 targets 0x10058d9c, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x10058d84 targets 0x10058d9c, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10058da8 has v0 = one of 0x58340, ret(__dt__11HdgvoFormUIGv), ret(__dl__GPv).
  The instructions from 0x10058db0 to 0x10058dc0 are not reached by any path from the entry, and their branches are not listed.
- `className__9HdgvoFormGv` in `usr/gfx/ircombine` at 0x10058dd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10058dd0-0x10058e10 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10058de8 loads 4 bytes from abs 0x100a90d8.
  The `beq` branch at 0x10058df4 targets 0x10058dfc and is always taken.
  The return at 0x10058e08 has v0 = 0x10099a28.
- `update__9HdgvoFormGv` in `usr/gfx/ircombine` at 0x10058e50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10058e50-0x10059760 (2320 bytes).
  It occupies 2320 bytes.
  The `lw` at 0x10058e80 loads 4 bytes from a0 (arg0 at entry) +0x88.
  34 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x164, including `lw` at 0x10058e9c, `lw` at 0x10058ed0, `lw` at 0x10058ef0.
  The `lw` at 0x10058ea0 loads 4 bytes from [a0+356] +0x25c.
  The `lw` at 0x10058eb4 loads 4 bytes from a0 (arg0 at entry) +0x5c.
  The `lw` at 0x10058ed4 loads 4 bytes from [a0+356] +0x140.
  The `lw` at 0x10058ef4 loads 4 bytes from [a0+356] +0x258.
  The `lw` at 0x10058f20 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0x10058f4c loads 4 bytes from a0 (arg0 at entry) +0xd0.
  The `lw` at 0x10058f58 loads 4 bytes from [a0+356] +0x134.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xcc, including `lw` at 0x10058f6c, `lw` at 0x10058fc0.
  The `lw` at 0x10058f78 loads 4 bytes from [a0+356] +0x2ac.
  The `lw` at 0x10058f8c loads 4 bytes from a0 (arg0 at entry) +0x30.
  2 such `lw` accesses load 4 bytes from [a0+356] +0x4e0, including `lw` at 0x10058fac, `lw` at 0x10058fe0.
  2 such `lwc1` accesses load 4 bytes from [a0+356] +0x130, including `lwc1` at 0x10059008, `lwc1` at 0x10059074.
  The `lw` at 0x10059024 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lw` at 0x1005905c loads 4 bytes from [a0+356] +0x484.
  The `lw` at 0x10059094 loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `lw` at 0x100590d0 loads 4 bytes from [a0+356] +0x128.
  The `lw` at 0x100590dc loads 4 bytes from [a0+356] +0x12c.
  The `lw` at 0x100590f0 loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The `lw` at 0x1005911c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0x1005913c loads 4 bytes from [a0+356] +0x144.
  The `lw` at 0x10059150 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x10059170 loads 4 bytes from [a0+356] +0x13c.
  The `lw` at 0x10059184 loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `lw` at 0x10059190 loads 4 bytes from [a0+356] +0x148.
  The `lw` at 0x100591a4 loads 4 bytes from a0 (arg0 at entry) +0xd8.
  The `lw` at 0x100591b0 loads 4 bytes from [a0+356] +0x14c.
  The `lw` at 0x100591c4 loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `lw` at 0x100591e4 loads 4 bytes from [a0+356] +0x2a4.
  3 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x100591f8, `lw` at 0x10059208, `lw` at 0x10059238.
  The `lw` at 0x10059228 loads 4 bytes from sym(combination) +0x238.
  The `lw` at 0x1005924c loads 4 bytes from ret(getTarget__18VkwindowMainWindowGv) +0x10.
  The `lw` at 0x1005928c loads 4 bytes from [a0+356] +0x2c0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x78, including `lw` at 0x100592b8, `lw` at 0x10059368.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0x100592d0, `lw` at 0x10059334.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x100592e8, `lw` at 0x10059300.
  The `lwc1` at 0x10059320 loads 4 bytes from [a0+356] +0x270.
  The `lwc1` at 0x10059354 loads 4 bytes from [a0+356] +0x26c.
  The `lwc1` at 0x10059388 loads 4 bytes from [a0+356] +0x268.
  11 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc4, including `lw` at 0x100593c8, `lw` at 0x10059418, `lw` at 0x10059468.
  The `lw` at 0x100593d0 loads 4 bytes from a0 (arg0 at entry) +0xf0.
  The `lw` at 0x10059420 loads 4 bytes from a0 (arg0 at entry) +0x108.
  The `lw` at 0x10059470 loads 4 bytes from a0 (arg0 at entry) +0xf4.
  The `lw` at 0x100594c0 loads 4 bytes from a0 (arg0 at entry) +0xfc.
  The `lw` at 0x10059510 loads 4 bytes from a0 (arg0 at entry) +0xf8.
  The `lw` at 0x10059560 loads 4 bytes from a0 (arg0 at entry) +0x100.
  The `lw` at 0x100595b0 loads 4 bytes from a0 (arg0 at entry) +0x104.
  The `lw` at 0x10059600 loads 4 bytes from a0 (arg0 at entry) +0xec.
  The `lw` at 0x10059650 loads 4 bytes from a0 (arg0 at entry) +0xe8.
  The `lw` at 0x100596a0 loads 4 bytes from a0 (arg0 at entry) +0x110.
  The `lw` at 0x100596f0 loads 4 bytes from a0 (arg0 at entry) +0x114.
  The `lw` at 0x10059704 loads 4 bytes from a0 (arg0 at entry) +0xc8.
  The `lw` at 0x10059710 loads 4 bytes from [a0+356] +0x138.
  The `lw` at 0x10059728 loads 4 bytes from a0 (arg0 at entry) +0xc0.
  The `lw` at 0x10059734 loads 4 bytes from [a0+356] +0x2b0.
  The `jal` at 0x10058e74 calls update_fast__9HdgvoFormGv [0x10059760] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10058e88 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+136], a1=?, a2=?, a3=?.
  The `jal` at 0x10058ea8 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+356]+604], a2=?, a3=?.
  The `jal` at 0x10058ebc calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+92], a1=?, a2=?, a3=?.
  The `jal` at 0x10058edc calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+356]+320], a2=?, a3=?.
  The `jalr` at 0x10058f14 calls sprintf with a0=sp-144, a1=0x100aa7b0, a2=?, a3=?.
  The `jal` at 0x10058f28 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+112], a1=?, a2=?, a3=?.
  The `jal` at 0x10058f40 calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=?, a3=?.
  The `jalr` at 0x10058f60 calls set__12VkOptionMenuGi with a0=[a0+208], a1=[[a0+356]+308], a2=?, a3=?.
  The `jalr` at 0x10058f80 calls set__12VkOptionMenuGi with a0=[a0+204], a1=[[a0+356]+684], a2=?, a3=?.
  The `jal` at 0x10058f94 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+48], a1=?, a2=?, a3=?.
  The `jal` at 0x10058fb4 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+356]+1248], a2=?, a3=?.
  The `jalr` at 0x10058fc8 calls baseWidget__10VkMenuItemCGv with a0=[a0+204], a1=?, a2=?, a3=?.
  The `jalr` at 0x10058ff0 calls XtSetSensitive with a0=ret(baseWidget__10VkMenuItemCGv), a1=?, a2=?, a3=?.
  The `jalr` at 0x10059018 calls sprintf with a0=sp-144, a1=0x100aa7b8, a2=?, a3=?.
  The `jal` at 0x1005902c calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+60], a1=?, a2=?, a3=?.
  The `jal` at 0x10059044 calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=?, a3=?.
  The `jalr` at 0x10059088 calls sprintf with a0=sp-144, a1=0x100aa7b8, a2=?, a3=[[a0+356]+1156].
  The `jal` at 0x1005909c calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+180], a1=?, a2=?, a3=?.
  The `jal` at 0x100590b4 calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=?, a3=?.
  The `jalr` at 0x100590e4 calls sprintf with a0=sp-144, a1=0x10099a38, a2=[[a0+356]+296], a3=[[a0+356]+300].
  The `jal` at 0x100590f8 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+160], a1=?, a2=?, a3=?.
  The `jal` at 0x10059110 calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=?, a3=?.
  The `jal` at 0x10059124 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+96], a1=?, a2=?, a3=?.
  The `jal` at 0x10059144 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+356]+324], a2=?, a3=?.
  The `jal` at 0x10059158 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+80], a1=?, a2=?, a3=?.
  The `jal` at 0x10059178 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+356]+316], a2=?, a3=?.
  The `jalr` at 0x10059198 calls set__12VkOptionMenuGi with a0=[a0+212], a1=[[a0+356]+328], a2=?, a3=?.
  The `jalr` at 0x100591b8 calls set__12VkOptionMenuGi with a0=[a0+216], a1=[[a0+356]+332], a2=?, a3=?.
  The `jal` at 0x100591cc calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+88], a1=?, a2=?, a3=?.
  The `jal` at 0x100591ec calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+356]+676], a2=?, a3=?.
  The `jal` at 0x10059210 calls getTarget__18VkwindowMainWindowGv [0x1006f100] with a0=[sym(vkwindow)], a1=?, a2=[sym(vkwindow)], a3=?.
  The `jal` at 0x10059240 calls getTarget__18VkwindowMainWindowGv [0x1006f100] with a0=[sym(vkwindow)], a1=[sym(combination)+568], a2=?, a3=?.
  The `jalr` at 0x100592c4 calls XtSetSensitive with a0=[a0+120], a1=one of 0x0, 0x1, a2=?, a3=?, a4=one of 0x0, 0x1, a5=one of 0x0, 0x1.
  The `jalr` at 0x100592dc calls XtSetSensitive with a0=[a0+108], a1=?, a2=?, a3=?.
  The `jalr` at 0x100592f4 calls XtSetSensitive with a0=[a0+84], a1=?, a2=?, a3=?.
  The `jal` at 0x10059308 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+84], a1=?, a2=?, a3=?.
  The `jal` at 0x10059328 calls __as__9EZWrapperGf [0x1008f850] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+356], a2=?, a3=?; fp f13=[[a0+356]+624].
  The `jal` at 0x1005933c calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+108], a1=?, a2=?, a3=?.
  The `jal` at 0x1005935c calls __as__9EZWrapperGf [0x1008f850] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+356], a2=?, a3=?; fp f13=[[a0+356]+620].
  The `jal` at 0x10059370 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+120], a1=?, a2=?, a3=?.
  The `jal` at 0x10059390 calls __as__9EZWrapperGf [0x1008f850] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+356], a2=?, a3=?; fp f13=[[a0+356]+616].
  The `jalr` at 0x100593b0 calls strcmp with a0=[a0+356]+340, a1=0x10099a48, a2=?, a3=?.
  The `jalr` at 0x100593d8 calls set__12VkOptionMenuGP10VkMenuItem with a0=[a0+196], a1=[a0+240], a2=?, a3=?.
  The `jalr` at 0x10059400 calls strcmp with a0=[a0+356]+340, a1=0x10099a68, a2=?, a3=?.
  The `jalr` at 0x10059428 calls set__12VkOptionMenuGP10VkMenuItem with a0=[a0+196], a1=[a0+264], a2=?, a3=?.
  The `jalr` at 0x10059450 calls strcmp with a0=[a0+356]+340, a1=0x10099a88, a2=?, a3=?.
  The `jalr` at 0x10059478 calls set__12VkOptionMenuGP10VkMenuItem with a0=[a0+196], a1=[a0+244], a2=?, a3=?.
  The `jalr` at 0x100594a0 calls strcmp with a0=[a0+356]+340, a1=0x10099aa8, a2=?, a3=?.
  The `jalr` at 0x100594c8 calls set__12VkOptionMenuGP10VkMenuItem with a0=[a0+196], a1=[a0+252], a2=?, a3=?.
  The `jalr` at 0x100594f0 calls strcmp with a0=[a0+356]+340, a1=0x10099ac8, a2=?, a3=?.
  The `jalr` at 0x10059518 calls set__12VkOptionMenuGP10VkMenuItem with a0=[a0+196], a1=[a0+248], a2=?, a3=?.
  The `jalr` at 0x10059540 calls strcmp with a0=[a0+356]+340, a1=0x10099ae0, a2=?, a3=?.
  The `jalr` at 0x10059568 calls set__12VkOptionMenuGP10VkMenuItem with a0=[a0+196], a1=[a0+256], a2=?, a3=?.
  The `jalr` at 0x10059590 calls strcmp with a0=[a0+356]+340, a1=0x10099b00, a2=?, a3=?.
  The `jalr` at 0x100595b8 calls set__12VkOptionMenuGP10VkMenuItem with a0=[a0+196], a1=[a0+260], a2=?, a3=?.
  The `jalr` at 0x100595e0 calls strcmp with a0=[a0+356]+340, a1=0x10099b18, a2=?, a3=?.
  The `jalr` at 0x10059608 calls set__12VkOptionMenuGP10VkMenuItem with a0=[a0+196], a1=[a0+236], a2=?, a3=?.
  The `jalr` at 0x10059630 calls strcmp with a0=[a0+356]+340, a1=0x10099b30, a2=?, a3=?.
  The `jalr` at 0x10059658 calls set__12VkOptionMenuGP10VkMenuItem with a0=[a0+196], a1=[a0+232], a2=?, a3=?.
  The `jalr` at 0x10059680 calls strcmp with a0=[a0+356]+340, a1=0x10099b48, a2=?, a3=?.
  The `jalr` at 0x100596a8 calls set__12VkOptionMenuGP10VkMenuItem with a0=[a0+196], a1=[a0+272], a2=?, a3=?.
  The `jalr` at 0x100596d0 calls strcmp with a0=[a0+356]+340, a1=0x10099b60, a2=?, a3=?.
  The `jalr` at 0x100596f8 calls set__12VkOptionMenuGP10VkMenuItem with a0=[a0+196], a1=[a0+276], a2=?, a3=?.
  The `jalr` at 0x1005971c calls set__12VkOptionMenuGi with a0=[a0+200], a1=[[a0+356]+312]-3, a2=?, a3=?.
  The `jalr` at 0x1005973c calls set__12VkOptionMenuGi with a0=[a0+192], a1=[[a0+356]+688], a2=?, a3=?.
  The `beq` branch at 0x100591fc targets 0x100592fc, is taken when a2(=[sym(vkwindow)]) == 0, and falls through when a2(=[sym(vkwindow)]) != 0.
  The `beq` branch at 0x1005921c targets 0x100592fc, is taken when v0(=ret(getTarget__18VkwindowMainWindowGv)) == 0, and falls through when v0(=ret(getTarget__18VkwindowMainWindowGv)) != 0.
  The `bne` branch at 0x1005922c targets 0x1005926c, is taken when a1(=[sym(combination)+568]) != 0, and falls through when a1(=[sym(combination)+568]) == 0.
  The `beq` branch at 0x10059254 targets 0x1005926c, is taken when a1(=[ret(getTarget__18VkwindowMainWindowGv)+16]) == a2(=0x2), and falls through when a1(=[ret(getTarget__18VkwindowMainWindowGv)+16]) != a2(=0x2).
  The `beq` branch at 0x10059264 targets 0x10059270 and is always taken.
  The `beq` branch at 0x1005927c targets 0x100592a8, is taken when a4(=one of 0x0, 0x1) == 0, and falls through when a4(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x10059290 targets 0x100592a8, is taken when a6(=[[a0+356]+704]) == 0, and falls through when a6(=[[a0+356]+704]) != 0.
  The `beq` branch at 0x100592a0 targets 0x100592ac and is always taken.
  The `bne` branch at 0x100593bc targets 0x100593e8, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x100593e0 targets 0x10059700 and is always taken.
  The `bne` branch at 0x1005940c targets 0x10059438, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x10059430 targets 0x10059700 and is always taken.
  The `bne` branch at 0x1005945c targets 0x10059488, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x10059480 targets 0x10059700 and is always taken.
  The `bne` branch at 0x100594ac targets 0x100594d8, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x100594d0 targets 0x10059700 and is always taken.
  The `bne` branch at 0x100594fc targets 0x10059528, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x10059520 targets 0x10059700 and is always taken.
  The `bne` branch at 0x1005954c targets 0x10059578, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x10059570 targets 0x10059700 and is always taken.
  The `bne` branch at 0x1005959c targets 0x100595c8, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x100595c0 targets 0x10059700 and is always taken.
  The `bne` branch at 0x100595ec targets 0x10059618, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x10059610 targets 0x10059700 and is always taken.
  The `bne` branch at 0x1005963c targets 0x10059668, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x10059660 targets 0x10059700 and is always taken.
  The `bne` branch at 0x1005968c targets 0x100596b8, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x100596b0 targets 0x10059700 and is always taken.
  The `bne` branch at 0x100596dc targets 0x10059700, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x10059744 targets 0x1005974c and is always taken.
  The return at 0x10059758 has v0 = ret(set__12VkOptionMenuGi).
- `update_fast__9HdgvoFormGv` in `usr/gfx/ircombine` at 0x10059760 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10059760-0x10059868 (264 bytes).
  It occupies 264 bytes.
  The `lw` at 0x10059780 loads 4 bytes from a0 (arg0 at entry) +0x90.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x164, including `lw` at 0x1005979c, `lw` at 0x100597d0, `lw` at 0x10059804.
  The `lw` at 0x100597a0 loads 4 bytes from [a0+356] +0x108.
  The `lw` at 0x100597b4 loads 4 bytes from a0 (arg0 at entry) +0x94.
  The `lw` at 0x100597d4 loads 4 bytes from [a0+356] +0x10c.
  The `lw` at 0x100597e8 loads 4 bytes from a0 (arg0 at entry) +0x8c.
  The `lw` at 0x10059808 loads 4 bytes from [a0+356] +0x110.
  The `lw` at 0x1005981c loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0x1005983c loads 4 bytes from [a0+356] +0x114.
  The `jal` at 0x10059788 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+144], a1=0x57910, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100597a8 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+356]+264], a2=?, a3=?.
  The `jal` at 0x100597bc calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+148], a1=?, a2=?, a3=?.
  The `jal` at 0x100597dc calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+356]+268], a2=?, a3=?.
  The `jal` at 0x100597f0 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+140], a1=?, a2=?, a3=?.
  The `jal` at 0x10059810 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+356]+272], a2=?, a3=?.
  The `jal` at 0x10059824 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+116], a1=?, a2=?, a3=?.
  The `jal` at 0x10059844 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+356]+276], a2=?, a3=?.
  The `beq` branch at 0x1005984c targets 0x10059854 and is always taken.
  The return at 0x10059860 has v0 = ret(__as__9EZWrapperGi).
- `alphaChannel__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10059870 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10059870-0x100598e0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x100598a0 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x100598a8 loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x100598ac stores 4 bytes to [a0+356] +0x13c.
  The `lw` at 0x100598b4 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x100598bc calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+356], a3=0x57800.
  The `beq` branch at 0x100598c4 targets 0x100598cc and is always taken.
  The return at 0x100598d8 has v0 = ret(update__18VkwindowMainWindowGv).
- `bGamma__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100598e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100598e0-0x10059980 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x10059908 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lw` at 0x10059944 loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `swc1` at 0x1005994c stores 4 bytes to [a0+356] +0x270.
  The `lw` at 0x10059954 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10059910 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+84], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x57790.
  The `jal` at 0x10059924 calls (unnamed) [0x1005b4e0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jalr` at 0x10059934 calls atof with a0=ret(0x1005b4e0), a1=?, a2=?, a3=?.
  The `jal` at 0x1005995c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+356]+624, a2=?, a3=?.
  The `beq` branch at 0x10059964 targets 0x1005996c and is always taken.
  The return at 0x10059978 has v0 = ret(update__18VkwindowMainWindowGv).
- `channelEnable__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10059980 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10059980-0x10059aa4 (292 bytes).
  It occupies 292 bytes.
  The `lw` at 0x100599b8 loads 4 bytes from sym(combination) +0x900c.
  The `lw` at 0x100599d0 loads 4 bytes from sym(combination) +0x8fe8.
  2 such `lw` accesses load 4 bytes from ret(getTheErrorDialog__Gv) +0x8, including `lw` at 0x100599ec, `lw` at 0x10059a18.
  The `lw` at 0x100599f0 loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108.
  The `lw` at 0x10059a1c loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x164, including `lw` at 0x10059a44, `lw` at 0x10059a6c.
  The `lw` at 0x10059a48 loads 4 bytes from [a0+356] +0x2a4.
  The `lw` at 0x10059a64 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `sw` at 0x10059a70 stores 4 bytes to [a0+356] +0x2a4.
  The `lw` at 0x10059a78 loads 4 bytes from sym(vkwindow) +0x0.
  The `jalr` at 0x100599e0 calls getTheErrorDialog__Gv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x576f0, a4=[sym(combination)+36840], a5=0x8fe8.
  The `jalr` at 0x10059a20 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=0x10099b78, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x10059a30 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x10059a50 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+356]+676], a2=?, a3=?.
  The `jal` at 0x10059a80 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x100599bc targets 0x10059a60, is taken when at(=[sym(combination)+36876]) == 0, and falls through when at(=[sym(combination)+36876]) != 0.
  The `beq` branch at 0x100599d4 targets 0x10059a60, is taken when a4(=[sym(combination)+36840]) == 0, and falls through when a4(=[sym(combination)+36840]) != 0.
  The `beq` branch at 0x10059a58 targets 0x10059a74 and is always taken.
  The `beq` branch at 0x10059a88 targets 0x10059a90 and is always taken.
  The return at 0x10059a9c has v0 = ret(update__18VkwindowMainWindowGv).
- `closeChannel__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10059ab0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10059ab0-0x10059b24 (116 bytes).
  It occupies 116 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x160, including `lw` at 0x10059ad8, `lw` at 0x10059ae8, `lw` at 0x10059af4.
  2 such `lw` accesses load 4 bytes from [a0+352] +0x8, including `lw` at 0x10059adc, `lw` at 0x10059af8.
  The `lw` at 0x10059ae0 loads 4 bytes from [[a0+352]+8] +0x30.
  The `lw` at 0x10059afc loads 4 bytes from [[a0+352]+8] +0x38.
  The `jalr` at 0x10059b00 calls (unknown callee) with a0=([[[a0+352]+8]+48] + [a0+352]), a1=[a0+352], a2=a2 at entry (arg2), a3=0x575c0.
  The `beq` branch at 0x10059b08 targets 0x10059b10 and is always taken.
  The return at 0x10059b1c has v0 = ret(?).
- `cursorPriority__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10059b30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10059b30-0x10059bb8 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0x10059b58 loads 4 bytes from a0 (arg0 at entry) +0x5c.
  The `lw` at 0x10059b80 loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x10059b84 stores 4 bytes to [a0+356] +0x140.
  The `lw` at 0x10059b8c loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10059b60 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+92], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x57540.
  The `jal` at 0x10059b74 calls (unnamed) [0x1005b4a0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10059b94 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+356], a2=?, a3=?.
  The `beq` branch at 0x10059b9c targets 0x10059ba4 and is always taken.
  The return at 0x10059bb0 has v0 = ret(update__18VkwindowMainWindowGv).
- `dither__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10059bc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10059bc0-0x10059c30 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x10059bf0 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10059bf8 loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x10059bfc stores 4 bytes to [a0+356] +0x144.
  The `lw` at 0x10059c04 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10059c0c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+356], a3=0x574b0.
  The `beq` branch at 0x10059c14 targets 0x10059c1c and is always taken.
  The return at 0x10059c28 has v0 = ret(update__18VkwindowMainWindowGv).
- `doCcir601Button_10__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10059c30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10059c30-0x10059c94 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x10059c5c loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x10059c60 stores 4 bytes to [a0+356] +0x138.
  The `lw` at 0x10059c68 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10059c70 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x6, a2=[a0+356], a3=0x57440.
  The `beq` branch at 0x10059c78 targets 0x10059c80 and is always taken.
  The return at 0x10059c8c has v0 = ret(update__18VkwindowMainWindowGv).
- `doCcir601Button_8__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10059ca0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10059ca0-0x10059d04 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x10059ccc loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x10059cd0 stores 4 bytes to [a0+356] +0x138.
  The `lw` at 0x10059cd8 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10059ce0 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x7, a2=[a0+356], a3=0x573d0.
  The `beq` branch at 0x10059ce8 targets 0x10059cf0 and is always taken.
  The return at 0x10059cfc has v0 = ret(update__18VkwindowMainWindowGv).
- `doHdgvo720pButton__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10059d10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10059d10-0x10059d84 (116 bytes).
  It occupies 116 bytes.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10059d38, `lw` at 0x10059d58.
  The `jal` at 0x10059d4c calls loadFormat__18VkwindowMainWindowGiPCc [0x1006f0a0] with a0=[sym(vkwindow)], a1=0xe, a2=0x10099a68, a3=0x57360.
  The `jal` at 0x10059d60 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x10059d68 targets 0x10059d70 and is always taken.
  The return at 0x10059d7c has v0 = ret(update__18VkwindowMainWindowGv).
- `doHdgvoSyncSource525HD__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10059d90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10059d90-0x10059df4 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x10059dbc loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x10059dc0 stores 4 bytes to [a0+356] +0x2b0.
  The `lw` at 0x10059dc8 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10059dd0 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x1, a2=[a0+356], a3=0x572e0.
  The `beq` branch at 0x10059dd8 targets 0x10059de0 and is always taken.
  The return at 0x10059dec has v0 = ret(update__18VkwindowMainWindowGv).
- `doHdgvo_525Button__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10059e00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10059e00-0x10059e60 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x10059e28 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10059e3c calls loadFormat__18VkwindowMainWindowGiPCc [0x1006f0a0] with a0=[sym(vkwindow)], a1=0xe, a2=0x10099b48, a3=0x57270.
  The `beq` branch at 0x10059e44 targets 0x10059e4c and is always taken.
  The return at 0x10059e58 has v0 = ret(loadFormat__18VkwindowMainWindowGiPCc).
- `doHdgvo_625Button__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10059e60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10059e60-0x10059ec0 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x10059e88 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10059e9c calls loadFormat__18VkwindowMainWindowGiPCc [0x1006f0a0] with a0=[sym(vkwindow)], a1=0xe, a2=0x10099b60, a3=0x57210.
  The `beq` branch at 0x10059ea4 targets 0x10059eac and is always taken.
  The return at 0x10059eb8 has v0 = ret(loadFormat__18VkwindowMainWindowGiPCc).
- `doHdgvo_syncsourceInternal__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10059ec0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10059ec0-0x10059f20 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x10059ee8 loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x10059eec stores 4 bytes to [a0+356] +0x2b0.
  The `lw` at 0x10059ef4 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10059efc calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+356], a2=a2 at entry (arg2), a3=0x571b0.
  The `beq` branch at 0x10059f04 targets 0x10059f0c and is always taken.
  The return at 0x10059f18 has v0 = ret(update__18VkwindowMainWindowGv).
- `doRec240Button_10__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10059f20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10059f20-0x10059f84 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x10059f4c loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x10059f50 stores 4 bytes to [a0+356] +0x138.
  The `lw` at 0x10059f58 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10059f60 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x8, a2=[a0+356], a3=0x57150.
  The `beq` branch at 0x10059f68 targets 0x10059f70 and is always taken.
  The return at 0x10059f7c has v0 = ret(update__18VkwindowMainWindowGv).
- `doRec240Button_8__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10059f90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10059f90-0x10059ff4 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x10059fbc loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x10059fc0 stores 4 bytes to [a0+356] +0x138.
  The `lw` at 0x10059fc8 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10059fd0 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x9, a2=[a0+356], a3=0x570e0.
  The `beq` branch at 0x10059fd8 targets 0x10059fe0 and is always taken.
  The return at 0x10059fec has v0 = ret(update__18VkwindowMainWindowGv).
- `doRec709_10__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005a000 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005a000-0x1005a064 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x1005a02c loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x1005a030 stores 4 bytes to [a0+356] +0x138.
  The `lw` at 0x1005a038 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1005a040 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x4, a2=[a0+356], a3=0x57070.
  The `beq` branch at 0x1005a048 targets 0x1005a050 and is always taken.
  The return at 0x1005a05c has v0 = ret(update__18VkwindowMainWindowGv).
- `doRec709_8__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005a070 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005a070-0x1005a0d4 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x1005a09c loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x1005a0a0 stores 4 bytes to [a0+356] +0x138.
  The `lw` at 0x1005a0a8 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1005a0b0 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x5, a2=[a0+356], a3=0x57000.
  The `beq` branch at 0x1005a0b8 targets 0x1005a0c0 and is always taken.
  The return at 0x1005a0cc has v0 = ret(update__18VkwindowMainWindowGv).
- `doRgba4444Button__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005a0e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005a0e0-0x1005a144 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x1005a10c loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x1005a110 stores 4 bytes to [a0+356] +0x138.
  The `lw` at 0x1005a118 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1005a120 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x3, a2=[a0+356], a3=0x56f90.
  The `beq` branch at 0x1005a128 targets 0x1005a130 and is always taken.
  The return at 0x1005a13c has v0 = ret(update__18VkwindowMainWindowGv).
- `dohdgvo1080i50Button__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005a150 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005a150-0x1005a1c4 (116 bytes).
  It occupies 116 bytes.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1005a178, `lw` at 0x1005a198.
  The `jal` at 0x1005a18c calls loadFormat__18VkwindowMainWindowGiPCc [0x1006f0a0] with a0=[sym(vkwindow)], a1=0xe, a2=0x10099b30, a3=0x56f20.
  The `jal` at 0x1005a1a0 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005a1a8 targets 0x1005a1b0 and is always taken.
  The return at 0x1005a1bc has v0 = ret(update__18VkwindowMainWindowGv).
- `dohdgvo1080i60Button__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005a1d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005a1d0-0x1005a244 (116 bytes).
  It occupies 116 bytes.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1005a1f8, `lw` at 0x1005a218.
  The `jal` at 0x1005a20c calls loadFormat__18VkwindowMainWindowGiPCc [0x1006f0a0] with a0=[sym(vkwindow)], a1=0xe, a2=0x10099b18, a3=0x56ea0.
  The `jal` at 0x1005a220 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005a228 targets 0x1005a230 and is always taken.
  The return at 0x1005a23c has v0 = ret(update__18VkwindowMainWindowGv).
- `dohdgvo1080iButton__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005a250 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005a250-0x1005a2c4 (116 bytes).
  It occupies 116 bytes.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1005a278, `lw` at 0x1005a298.
  The `jal` at 0x1005a28c calls loadFormat__18VkwindowMainWindowGiPCc [0x1006f0a0] with a0=[sym(vkwindow)], a1=0xe, a2=0x10099a48, a3=0x56e20.
  The `jal` at 0x1005a2a0 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005a2a8 targets 0x1005a2b0 and is always taken.
  The return at 0x1005a2bc has v0 = ret(update__18VkwindowMainWindowGv).
- `dohdgvo1080p23976Button__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005a2d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005a2d0-0x1005a344 (116 bytes).
  It occupies 116 bytes.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1005a2f8, `lw` at 0x1005a318.
  The `jal` at 0x1005a30c calls loadFormat__18VkwindowMainWindowGiPCc [0x1006f0a0] with a0=[sym(vkwindow)], a1=0xe, a2=0x10099a88, a3=0x56da0.
  The `jal` at 0x1005a320 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005a328 targets 0x1005a330 and is always taken.
  The return at 0x1005a33c has v0 = ret(update__18VkwindowMainWindowGv).
- `dohdgvo1080p24Button__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005a350 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005a350-0x1005a3c4 (116 bytes).
  It occupies 116 bytes.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1005a378, `lw` at 0x1005a398.
  The `jal` at 0x1005a38c calls loadFormat__18VkwindowMainWindowGiPCc [0x1006f0a0] with a0=[sym(vkwindow)], a1=0xe, a2=0x10099ac8, a3=0x56d20.
  The `jal` at 0x1005a3a0 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005a3a8 targets 0x1005a3b0 and is always taken.
  The return at 0x1005a3bc has v0 = ret(update__18VkwindowMainWindowGv).
- `dohdgvo1080psf23976Button__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005a3d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005a3d0-0x1005a444 (116 bytes).
  It occupies 116 bytes.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1005a3f8, `lw` at 0x1005a418.
  The `jal` at 0x1005a40c calls loadFormat__18VkwindowMainWindowGiPCc [0x1006f0a0] with a0=[sym(vkwindow)], a1=0xe, a2=0x10099aa8, a3=0x56ca0.
  The `jal` at 0x1005a420 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005a428 targets 0x1005a430 and is always taken.
  The return at 0x1005a43c has v0 = ret(update__18VkwindowMainWindowGv).
- `dohdgvo1080psf24Button__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005a450 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005a450-0x1005a4c4 (116 bytes).
  It occupies 116 bytes.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1005a478, `lw` at 0x1005a498.
  The `jal` at 0x1005a48c calls loadFormat__18VkwindowMainWindowGiPCc [0x1006f0a0] with a0=[sym(vkwindow)], a1=0xe, a2=0x10099ae0, a3=0x56c20.
  The `jal` at 0x1005a4a0 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005a4a8 targets 0x1005a4b0 and is always taken.
  The return at 0x1005a4bc has v0 = ret(update__18VkwindowMainWindowGv).
- `dohdgvo720p60Button__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005a4d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005a4d0-0x1005a544 (116 bytes).
  It occupies 116 bytes.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1005a4f8, `lw` at 0x1005a518.
  The `jal` at 0x1005a50c calls loadFormat__18VkwindowMainWindowGiPCc [0x1006f0a0] with a0=[sym(vkwindow)], a1=0xe, a2=0x10099b00, a3=0x56ba0.
  The `jal` at 0x1005a520 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005a528 targets 0x1005a530 and is always taken.
  The return at 0x1005a53c has v0 = ret(update__18VkwindowMainWindowGv).
- `fs__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005a550 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005a550-0x1005a5b4 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x1005a57c loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x1005a580 stores 4 bytes to [a0+356] +0x134.
  The `lw` at 0x1005a588 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1005a590 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x4, a2=[a0+356], a3=0x56b20.
  The `beq` branch at 0x1005a598 targets 0x1005a5a0 and is always taken.
  The return at 0x1005a5ac has v0 = ret(update__18VkwindowMainWindowGv).
- `gGamma__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005a5c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005a5c0-0x1005a660 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x1005a5e8 loads 4 bytes from a0 (arg0 at entry) +0x6c.
  The `lw` at 0x1005a624 loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `swc1` at 0x1005a62c stores 4 bytes to [a0+356] +0x26c.
  The `lw` at 0x1005a634 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1005a5f0 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+108], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x56ab0.
  The `jal` at 0x1005a604 calls (unnamed) [0x1005b4e0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jalr` at 0x1005a614 calls atof with a0=ret(0x1005b4e0), a1=?, a2=?, a3=?.
  The `jal` at 0x1005a63c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+356]+620, a2=?, a3=?.
  The `beq` branch at 0x1005a644 targets 0x1005a64c and is always taken.
  The return at 0x1005a658 has v0 = ret(update__18VkwindowMainWindowGv).
- `hPhase__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005a660 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005a660-0x1005a704 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0x1005a6cc loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x1005a6d0 stores 4 bytes to [a0+356] +0x258.
  The `lw` at 0x1005a6d8 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1005a68c calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1005a6a0 calls (unnamed) [0x1005b4e0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jalr` at 0x1005a6b0 calls atof with a0=ret(0x1005b4e0), a1=?, a2=?, a3=?.
  The `jal` at 0x1005a6e0 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=[a0+356], a3=?.
  The `beq` branch at 0x1005a6e8 targets 0x1005a6f0 and is always taken.
  The return at 0x1005a6fc has v0 = ret(update__18VkwindowMainWindowGv).
- `height__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005a710 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005a710-0x1005a7b8 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x1005a75c loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x1005a764 stores 4 bytes to [a0+356] +0x114.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1005a76c, `lw` at 0x1005a78c.
  The `jal` at 0x1005a73c calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1005a750 calls (unnamed) [0x1005b4a0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1005a780 calls clamp__18VkwindowMainWindowGiN21 [0x1006efb0] with a0=[sym(vkwindow)], a1=0xe, a2=0x1, a3=0x0.
  The `jal` at 0x1005a794 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005a79c targets 0x1005a7a4 and is always taken.
  The return at 0x1005a7b0 has v0 = ret(update__18VkwindowMainWindowGv).
- `interleaved__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005a7c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005a7c0-0x1005a824 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x1005a7ec loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x1005a7f0 stores 4 bytes to [a0+356] +0x2ac.
  The `lw` at 0x1005a7f8 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1005a800 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x1, a2=[a0+356], a3=0x568b0.
  The `beq` branch at 0x1005a808 targets 0x1005a810 and is always taken.
  The return at 0x1005a81c has v0 = ret(update__18VkwindowMainWindowGv).
- `progressive__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005a830 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005a830-0x1005a890 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x1005a858 loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x1005a85c stores 4 bytes to [a0+356] +0x2ac.
  The `lw` at 0x1005a864 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1005a86c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+356], a2=a2 at entry (arg2), a3=0x56840.
  The `beq` branch at 0x1005a874 targets 0x1005a87c and is always taken.
  The return at 0x1005a888 has v0 = ret(update__18VkwindowMainWindowGv).
- `rGamma__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005a890 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005a890-0x1005a92c (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0x1005a8f0 loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `swc1` at 0x1005a8f8 stores 4 bytes to [a0+356] +0x268.
  The `lw` at 0x1005a900 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1005a8bc calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1005a8d0 calls (unnamed) [0x1005b4e0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jalr` at 0x1005a8e0 calls atof with a0=ret(0x1005b4e0), a1=?, a2=?, a3=?.
  The `jal` at 0x1005a908 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+356]+616, a2=?, a3=?.
  The `beq` branch at 0x1005a910 targets 0x1005a918 and is always taken.
  The return at 0x1005a924 has v0 = ret(update__18VkwindowMainWindowGv).
- `restoreSize__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005a930 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005a930-0x1005aa60 (304 bytes).
  It occupies 304 bytes.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x164, including `lw` at 0x1005a958, `lw` at 0x1005a968, `lw` at 0x1005a978.
  2 such `lw` accesses load 4 bytes from [a0+356] +0x128, including `lw` at 0x1005a960, `lw` at 0x1005a9e4.
  The `sw` at 0x1005a970 stores 4 bytes to [a0+356] +0x110.
  2 such `lw` accesses load 4 bytes from [a0+356] +0x12c, including `lw` at 0x1005a980, `lw` at 0x1005aa0c.
  The `sw` at 0x1005a990 stores 4 bytes to [a0+356] +0x114.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1005a998, `lw` at 0x1005a9b8.
  The `lw` at 0x1005a9d4 loads 4 bytes from [a0+356] +0x110.
  The `lw` at 0x1005a9fc loads 4 bytes from [a0+356] +0x114.
  The `jal` at 0x1005a9ac calls clamp__18VkwindowMainWindowGiN21 [0x1006efb0] with a0=[sym(vkwindow)], a1=0xb, a2=0x1, a3=0x0.
  The `jal` at 0x1005a9c0 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `jalr` at 0x1005aa1c calls getTheErrorDialog__Gv with a0=?, a1=[[a0+356]+272], a2=?, a3=?.
  The `jal` at 0x1005aa3c calls (unnamed) [0x1005b520] with a0=ret(getTheErrorDialog__Gv), a1=0x10099ba0, a2=a1 at entry (arg1), a3=?.
  The `bne` branch at 0x1005a9e8 targets 0x1005aa18, is taken when a1(=[[a0+356]+272]) != a2(=[[a0+356]+296]), and falls through when a1(=[[a0+356]+272]) == a2(=[[a0+356]+296]).
  The `beq` branch at 0x1005aa10 targets 0x1005aa44, is taken when a2(=[[a0+356]+276]) == a3(=[[a0+356]+300]), and falls through when a2(=[[a0+356]+276]) != a3(=[[a0+356]+300]).
  The `beq` branch at 0x1005aa44 targets 0x1005aa4c and is always taken.
  The return at 0x1005aa58 has v0 = ?.
- `rgb10__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005aa60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005aa60-0x1005aac0 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x1005aa88 loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x1005aa8c stores 4 bytes to [a0+356] +0x134.
  The `lw` at 0x1005aa94 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1005aa9c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+356], a2=a2 at entry (arg2), a3=0x56610.
  The `beq` branch at 0x1005aaa4 targets 0x1005aaac and is always taken.
  The return at 0x1005aab8 has v0 = ret(update__18VkwindowMainWindowGv).
- `rgb12__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005aac0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005aac0-0x1005ab24 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x1005aaec loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x1005aaf0 stores 4 bytes to [a0+356] +0x134.
  The `lw` at 0x1005aaf8 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1005ab00 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x2, a2=[a0+356], a3=0x565b0.
  The `beq` branch at 0x1005ab08 targets 0x1005ab10 and is always taken.
  The return at 0x1005ab1c has v0 = ret(update__18VkwindowMainWindowGv).
- `rgba10__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005ab30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005ab30-0x1005ab94 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x1005ab5c loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x1005ab60 stores 4 bytes to [a0+356] +0x134.
  The `lw` at 0x1005ab68 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1005ab70 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x1, a2=[a0+356], a3=0x56540.
  The `beq` branch at 0x1005ab78 targets 0x1005ab80 and is always taken.
  The return at 0x1005ab8c has v0 = ret(update__18VkwindowMainWindowGv).
- `stacked__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005aba0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005aba0-0x1005ac04 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x1005abcc loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x1005abd0 stores 4 bytes to [a0+356] +0x2ac.
  The `lw` at 0x1005abd8 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1005abe0 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x2, a2=[a0+356], a3=0x564d0.
  The `beq` branch at 0x1005abe8 targets 0x1005abf0 and is always taken.
  The return at 0x1005abfc has v0 = ret(update__18VkwindowMainWindowGv).
- `vPhase__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005ac10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005ac10-0x1005ac94 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0x1005ac5c loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x1005ac60 stores 4 bytes to [a0+356] +0x25c.
  The `lw` at 0x1005ac68 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1005ac3c calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1005ac50 calls (unnamed) [0x1005b4a0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1005ac70 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+356], a2=?, a3=?.
  The `beq` branch at 0x1005ac78 targets 0x1005ac80 and is always taken.
  The return at 0x1005ac8c has v0 = ret(update__18VkwindowMainWindowGv).
- `width__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005aca0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005aca0-0x1005ad48 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x1005acec loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x1005acf4 stores 4 bytes to [a0+356] +0x110.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1005acfc, `lw` at 0x1005ad1c.
  The `jal` at 0x1005accc calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1005ace0 calls (unnamed) [0x1005b4a0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1005ad10 calls clamp__18VkwindowMainWindowGiN21 [0x1006efb0] with a0=[sym(vkwindow)], a1=0xe, a2=0x1, a3=0x0.
  The `jal` at 0x1005ad24 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005ad2c targets 0x1005ad34 and is always taken.
  The return at 0x1005ad40 has v0 = ret(update__18VkwindowMainWindowGv).
- `xLocked__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005ad50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005ad50-0x1005adb4 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x1005ad78 loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x1005ad80 stores 4 bytes to [a0+356] +0x148.
  The `lw` at 0x1005ad88 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1005ad90 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+356]+328, a2=a2 at entry (arg2), a3=0x56320.
  The `beq` branch at 0x1005ad98 targets 0x1005ada0 and is always taken.
  The return at 0x1005adac has v0 = ret(update__18VkwindowMainWindowGv).
- `xOrigin__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005adc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005adc0-0x1005ae68 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x1005ae0c loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x1005ae14 stores 4 bytes to [a0+356] +0x108.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1005ae1c, `lw` at 0x1005ae3c.
  The `jal` at 0x1005adec calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1005ae00 calls (unnamed) [0x1005b4a0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1005ae30 calls clamp__18VkwindowMainWindowGiN21 [0x1006efb0] with a0=[sym(vkwindow)], a1=0xe, a2=0x0, a3=0x1.
  The `jal` at 0x1005ae44 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005ae4c targets 0x1005ae54 and is always taken.
  The return at 0x1005ae60 has v0 = ret(update__18VkwindowMainWindowGv).
- `xPixel__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005ae70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005ae70-0x1005aed8 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x1005ae9c loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x1005aea4 stores 4 bytes to [a0+356] +0x148.
  The `lw` at 0x1005aeac loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1005aeb4 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x1, a2=[a0+356]+328, a3=0x56200.
  The `beq` branch at 0x1005aebc targets 0x1005aec4 and is always taken.
  The return at 0x1005aed0 has v0 = ret(update__18VkwindowMainWindowGv).
- `xTile__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005aee0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005aee0-0x1005af48 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x1005af0c loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x1005af14 stores 4 bytes to [a0+356] +0x148.
  The `lw` at 0x1005af1c loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1005af24 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x2, a2=[a0+356]+328, a3=0x56190.
  The `beq` branch at 0x1005af2c targets 0x1005af34 and is always taken.
  The return at 0x1005af40 has v0 = ret(update__18VkwindowMainWindowGv).
- `yLocked__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005af50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005af50-0x1005afb4 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x1005af78 loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x1005af80 stores 4 bytes to [a0+356] +0x14c.
  The `lw` at 0x1005af88 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1005af90 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+356]+332, a2=a2 at entry (arg2), a3=0x56120.
  The `beq` branch at 0x1005af98 targets 0x1005afa0 and is always taken.
  The return at 0x1005afac has v0 = ret(update__18VkwindowMainWindowGv).
- `yOrigin__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005afc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005afc0-0x1005b068 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x1005b00c loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x1005b014 stores 4 bytes to [a0+356] +0x10c.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1005b01c, `lw` at 0x1005b03c.
  The `jal` at 0x1005afec calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1005b000 calls (unnamed) [0x1005b4a0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1005b030 calls clamp__18VkwindowMainWindowGiN21 [0x1006efb0] with a0=[sym(vkwindow)], a1=0xb, a2=0x0, a3=0x2.
  The `jal` at 0x1005b044 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005b04c targets 0x1005b054 and is always taken.
  The return at 0x1005b060 has v0 = ret(update__18VkwindowMainWindowGv).
- `yPixel__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005b070 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005b070-0x1005b0d8 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x1005b09c loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x1005b0a4 stores 4 bytes to [a0+356] +0x14c.
  The `lw` at 0x1005b0ac loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1005b0b4 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x1, a2=[a0+356]+332, a3=0x56000.
  The `beq` branch at 0x1005b0bc targets 0x1005b0c4 and is always taken.
  The return at 0x1005b0d0 has v0 = ret(update__18VkwindowMainWindowGv).
- `z__9HdgvoFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005b0e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005b0e0-0x1005b144 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x1005b10c loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `sw` at 0x1005b110 stores 4 bytes to [a0+356] +0x134.
  The `lw` at 0x1005b118 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1005b120 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x3, a2=[a0+356], a3=0x55f90.
  The `beq` branch at 0x1005b128 targets 0x1005b130 and is always taken.
  The return at 0x1005b13c has v0 = ret(update__18VkwindowMainWindowGv).
- `__ct__11HdgvoFormUIGPCcP10_WidgetRec` in `usr/gfx/ircombine` at 0x1005b5a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005b5a0-0x1005b624 (132 bytes).
  It occupies 132 bytes.
  The `sw` at 0x1005b5e0 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1005b5d0 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1005b5f0 calls create__11HdgvoFormUIGP10_WidgetRec [0x1005b740] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The return at 0x1005b608 has v0 = a0.
  The instructions from 0x1005b610 to 0x1005b620 are not reached by any path from the entry, and their branches are not listed.
- `__ct__11HdgvoFormUIGPCc` in `usr/gfx/ircombine` at 0x1005b630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005b630-0x1005b69c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x1005b66c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1005b65c calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1005b680 has v0 = a0.
  The instructions from 0x1005b688 to 0x1005b698 are not reached by any path from the entry, and their branches are not listed.
- `__dt__11HdgvoFormUIGv` in `usr/gfx/ircombine` at 0x1005b6a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005b6a0-0x1005b734 (148 bytes).
  It occupies 148 bytes.
  The `sw` at 0x1005b6d4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1005b6e4 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1005b704 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005b6c4 targets 0x1005b70c, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x1005b6f4 targets 0x1005b70c, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x1005b718 has v0 = one of 0x559d0, ret(__dt__11VkComponentGv), ret(__dl__GPv).
  The instructions from 0x1005b720 to 0x1005b730 are not reached by any path from the entry, and their branches are not listed.
- `create__11HdgvoFormUIGP10_WidgetRec` in `usr/gfx/ircombine` at 0x1005b740 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005b740-0x1005fa9c (17244 bytes).
  It occupies 17244 bytes.
  The `lw` at 0x1005b780 loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from sym(xmFormWidgetClass) +0x0, including `lw` at 0x1005b788, `lw` at 0x1005cb90.
  The `sw` at 0x1005b7bc stores 4 bytes to a0 (arg0 at entry) +0x4c.
  The `sw` at 0x1005b7c4 stores 4 bytes to a0 (arg0 at entry) +0x10.
  35 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x1005b814, `lw` at 0x1005b904, `lw` at 0x1005bad0.
  The `sw` at 0x1005b85c stores 4 bytes to a0 (arg0 at entry) +0xc0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc0, including `lw` at 0x1005b864, `lw` at 0x1005b898, `lw` at 0x1005ef7c.
  The `sw` at 0x1005b890 stores 4 bytes to a0 (arg0 at entry) +0x118.
  The `sw` at 0x1005b8c4 stores 4 bytes to a0 (arg0 at entry) +0x10c.
  The `sw` at 0x1005b94c stores 4 bytes to a0 (arg0 at entry) +0xc8.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc8, including `lw` at 0x1005b954, `lw` at 0x1005b988, `lw` at 0x1005b9bc.
  The `sw` at 0x1005b980 stores 4 bytes to a0 (arg0 at entry) +0x134.
  The `sw` at 0x1005b9b4 stores 4 bytes to a0 (arg0 at entry) +0x12c.
  The `sw` at 0x1005b9e8 stores 4 bytes to a0 (arg0 at entry) +0x130.
  The `sw` at 0x1005ba1c stores 4 bytes to a0 (arg0 at entry) +0xdc.
  The `sw` at 0x1005ba50 stores 4 bytes to a0 (arg0 at entry) +0xe0.
  The `sw` at 0x1005ba84 stores 4 bytes to a0 (arg0 at entry) +0x124.
  The `sw` at 0x1005bab8 stores 4 bytes to a0 (arg0 at entry) +0x128.
  3 such `lw` accesses load 4 bytes from sym(xmToggleButtonWidgetClass) +0x0, including `lw` at 0x1005bac8, `lw` at 0x1005bff4, `lw` at 0x1005c904.
  The `sw` at 0x1005bbd8 stores 4 bytes to a0 (arg0 at entry) +0x50.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x50, including `lw` at 0x1005bbe0, `lw` at 0x1005f114.
  The `sw` at 0x1005bc84 stores 4 bytes to a0 (arg0 at entry) +0xcc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xcc, including `lw` at 0x1005bc8c, `lw` at 0x1005bcc0, `lw` at 0x1005bcf4.
  The `sw` at 0x1005bcb8 stores 4 bytes to a0 (arg0 at entry) +0x120.
  The `sw` at 0x1005bcec stores 4 bytes to a0 (arg0 at entry) +0x11c.
  The `sw` at 0x1005bd20 stores 4 bytes to a0 (arg0 at entry) +0x144.
  The `sw` at 0x1005bda8 stores 4 bytes to a0 (arg0 at entry) +0xc4.
  12 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc4, including `lw` at 0x1005bdb0, `lw` at 0x1005bde4, `lw` at 0x1005be18.
  The `sw` at 0x1005bddc stores 4 bytes to a0 (arg0 at entry) +0xf0.
  The `sw` at 0x1005be10 stores 4 bytes to a0 (arg0 at entry) +0x108.
  The `sw` at 0x1005be44 stores 4 bytes to a0 (arg0 at entry) +0x110.
  The `sw` at 0x1005be78 stores 4 bytes to a0 (arg0 at entry) +0x114.
  The `sw` at 0x1005beac stores 4 bytes to a0 (arg0 at entry) +0xec.
  The `sw` at 0x1005bee0 stores 4 bytes to a0 (arg0 at entry) +0xe8.
  The `sw` at 0x1005bf14 stores 4 bytes to a0 (arg0 at entry) +0x104.
  The `sw` at 0x1005bf48 stores 4 bytes to a0 (arg0 at entry) +0xf8.
  The `sw` at 0x1005bf7c stores 4 bytes to a0 (arg0 at entry) +0x100.
  The `sw` at 0x1005bfb0 stores 4 bytes to a0 (arg0 at entry) +0xf4.
  The `sw` at 0x1005bfe4 stores 4 bytes to a0 (arg0 at entry) +0xfc.
  The `sw` at 0x1005c0e4 stores 4 bytes to a0 (arg0 at entry) +0x58.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x58, including `lw` at 0x1005c0ec, `lw` at 0x1005f194, `lw` at 0x1005f288.
  22 such `lw` accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0, including `lw` at 0x1005c118, `lw` at 0x1005c234, `lw` at 0x1005c350.
  The `sw` at 0x1005c224 stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `sw` at 0x1005c340 stores 4 bytes to a0 (arg0 at entry) +0x40.
  The `sw` at 0x1005c448 stores 4 bytes to a0 (arg0 at entry) +0xac.
  10 such `lw` accesses load 4 bytes from sym(xmTextFieldWidgetClass) +0x0, including `lw` at 0x1005c458, `lw` at 0x1005c58c, `lw` at 0x1005c6c0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x1005c4bc, `lw` at 0x1005f334.
  The `sw` at 0x1005c558 stores 4 bytes to a0 (arg0 at entry) +0x54.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x1005c560, `lw` at 0x1005f3dc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x1005c5f0, `lw` at 0x1005f36c.
  The `sw` at 0x1005c68c stores 4 bytes to a0 (arg0 at entry) +0x6c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0x1005c694, `lw` at 0x1005f354, `lw` at 0x1005f404.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xac, including `lw` at 0x1005c724, `lw` at 0x1005f344, `lw` at 0x1005f37c.
  The `sw` at 0x1005c7c0 stores 4 bytes to a0 (arg0 at entry) +0x78.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x78, including `lw` at 0x1005c7c8, `lw` at 0x1005f38c, `lw` at 0x1005f42c.
  The `sw` at 0x1005c8f4 stores 4 bytes to a0 (arg0 at entry) +0x44.
  The `sw` at 0x1005ca48 stores 4 bytes to a0 (arg0 at entry) +0x60.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0x1005ca50, `lw` at 0x1005de54, `lw` at 0x1005f47c.
  The `lw` at 0x1005ca7c loads 4 bytes from sym(xmFrameWidgetClass) +0x0.
  The `sw` at 0x1005cb80 stores 4 bytes to a0 (arg0 at entry) +0x38.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x1005cb98, `lw` at 0x1005d6ac, `lw` at 0x1005ec04.
  The `sw` at 0x1005cbf0 stores 4 bytes to a0 (arg0 at entry) +0x34.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x34, including `lw` at 0x1005cc08, `lw` at 0x1005cd10, `lw` at 0x1005ce2c.
  The `sw` at 0x1005ccf8 stores 4 bytes to a0 (arg0 at entry) +0xb4.
  The `sw` at 0x1005ce14 stores 4 bytes to a0 (arg0 at entry) +0x84.
  2 such `lw` accesses load 4 bytes from sym(xmPushButtonWidgetClass) +0x0, including `lw` at 0x1005ce24, `lw` at 0x1005eb9c.
  The `sw` at 0x1005cf1c stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `lw` at 0x1005cf24 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `sw` at 0x1005d048 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `sw` at 0x1005d144 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sw` at 0x1005d24c stores 4 bytes to a0 (arg0 at entry) +0x3c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x64, including `lw` at 0x1005d2c0, `lw` at 0x1005d5dc, `lw` at 0x1005d5ec.
  The `sw` at 0x1005d360 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `sw` at 0x1005d468 stores 4 bytes to a0 (arg0 at entry) +0xa0.
  The `sw` at 0x1005d554 stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `lw` at 0x1005d55c loads 4 bytes from a0 (arg0 at entry) +0xb4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x84, including `lw` at 0x1005d56c, `lw` at 0x1005d57c, `lw` at 0x1005d594.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x68, including `lw` at 0x1005d5a4, `lw` at 0x1005d5b4, `lw` at 0x1005d63c.
  The `lw` at 0x1005d5cc loads 4 bytes from a0 (arg0 at entry) +0x30.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x80, including `lw` at 0x1005d614, `lw` at 0x1005d674, `lw` at 0x1005d684.
  The `lw` at 0x1005d62c loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lw` at 0x1005d664 loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The `sw` at 0x1005d714 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The `sw` at 0x1005d810 stores 4 bytes to a0 (arg0 at entry) +0x88.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x88, including `lw` at 0x1005d818, `lw` at 0x1005f4a4.
  The `sw` at 0x1005d930 stores 4 bytes to a0 (arg0 at entry) +0x70.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0x1005d938, `lw` at 0x1005d9dc, `lw` at 0x1005f4dc.
  The `sw` at 0x1005da88 stores 4 bytes to a0 (arg0 at entry) +0xb8.
  The `sw` at 0x1005dbb8 stores 4 bytes to a0 (arg0 at entry) +0x48.
  The `sw` at 0x1005dc40 stores 4 bytes to a0 (arg0 at entry) +0xd8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd8, including `lw` at 0x1005dc48, `lw` at 0x1005dc7c, `lw` at 0x1005f564.
  The `sw` at 0x1005dc74 stores 4 bytes to a0 (arg0 at entry) +0x154.
  The `sw` at 0x1005dca8 stores 4 bytes to a0 (arg0 at entry) +0x158.
  The `sw` at 0x1005dd30 stores 4 bytes to a0 (arg0 at entry) +0xd4.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd4, including `lw` at 0x1005dd38, `lw` at 0x1005dd6c, `lw` at 0x1005dda0.
  The `sw` at 0x1005dd64 stores 4 bytes to a0 (arg0 at entry) +0x148.
  The `sw` at 0x1005dd98 stores 4 bytes to a0 (arg0 at entry) +0x14c.
  The `sw` at 0x1005ddcc stores 4 bytes to a0 (arg0 at entry) +0x150.
  The `sw` at 0x1005df14 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  The `sw` at 0x1005e010 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5c, including `lw` at 0x1005e018, `lw` at 0x1005f7ac.
  The `sw` at 0x1005e164 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `sw` at 0x1005e1ec stores 4 bytes to a0 (arg0 at entry) +0xd0.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd0, including `lw` at 0x1005e1f4, `lw` at 0x1005e228, `lw` at 0x1005e25c.
  The `sw` at 0x1005e220 stores 4 bytes to a0 (arg0 at entry) +0x138.
  The `sw` at 0x1005e254 stores 4 bytes to a0 (arg0 at entry) +0x140.
  The `sw` at 0x1005e288 stores 4 bytes to a0 (arg0 at entry) +0x13c.
  The `sw` at 0x1005e2bc stores 4 bytes to a0 (arg0 at entry) +0x15c.
  The `sw` at 0x1005e2f0 stores 4 bytes to a0 (arg0 at entry) +0xe4.
  The `sw` at 0x1005e420 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `sw` at 0x1005e54c stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x1005e66c stores 4 bytes to a0 (arg0 at entry) +0x24.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb0, including `lw` at 0x1005e6e0, `lw` at 0x1005e840, `lw` at 0x1005e858.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0x1005e6f8, `lw` at 0x1005f9a8.
  The `sw` at 0x1005e7a8 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `lw` at 0x1005e7b0 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `sw` at 0x1005e908 stores 4 bytes to a0 (arg0 at entry) +0x8c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c, including `lw` at 0x1005e910, `lw` at 0x1005f9b8, `lw` at 0x1005f9c8.
  The `sw` at 0x1005ea38 stores 4 bytes to a0 (arg0 at entry) +0x94.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x94, including `lw` at 0x1005ea40, `lw` at 0x1005f990, `lw` at 0x1005f9e0.
  The `sw` at 0x1005eb68 stores 4 bytes to a0 (arg0 at entry) +0x90.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x90, including `lw` at 0x1005eb70, `lw` at 0x1005ed80, `lw` at 0x1005fa18.
  The `sw` at 0x1005ecd8 stores 4 bytes to a0 (arg0 at entry) +0x28.
  The `lw` at 0x1005ece0 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `sw` at 0x1005ee30 stores 4 bytes to a0 (arg0 at entry) +0xbc.
  The `sw` at 0x1005ef74 stores 4 bytes to a0 (arg0 at entry) +0x98.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1005f124, `lw` at 0x1005f3b4, `lw` at 0x1005f3c4.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1005f464, `lw` at 0x1005f4ec, `lw` at 0x1005f4fc.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa4, including `lw` at 0x1005f48c, `lw` at 0x1005f810, `lw` at 0x1005f888.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb8, including `lw` at 0x1005f4b4, `lw` at 0x1005f4c4, `lw` at 0x1005f514.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lw` at 0x1005f54c, `lw` at 0x1005f5d4, `lw` at 0x1005f6e8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x1005f7bc, `lw` at 0x1005f7cc, `lw` at 0x1005f800.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x98, including `lw` at 0x1005f958, `lw` at 0x1005f980, `lw` at 0x1005f9f0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xbc, including `lw` at 0x1005fa00, `lw` at 0x1005fa50.
  The `jalr` at 0x1005b774 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultHdgvoFormUIResources__11HdgvoFormUI), a3=a3 at entry (arg3).
  The `jalr` at 0x1005b7a4 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=sym(_XmStrings)+9052, a4=0x1, a5=0x0.
  The `jalr` at 0x1005b7d0 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=ret(XtVaCreateWidget), a2=a0 at entry (arg0), a3=a0 at entry (arg0).
  The `jalr` at 0x1005b7e4 calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005b82c calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10099be8, a3=0x0, a4=0x0, a5=0x1.
  The `jalr` at 0x1005b880 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+192], a1=0x10099c00, a2=sym(doHdgvo_syncsourceInternalCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005b8b4 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+192], a1=0x10099c20, a2=sym(doHdgvoSyncSource525HDCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005b8d4 calls __nw__GUi with a0=0x4c, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1005b91c calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10099c38, a3=0x0, a4=0x0.
  The `jalr` at 0x1005b970 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+200], a1=0x10099c50, a2=sym(doRgba4444Button_Callback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005b9a4 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+200], a1=0x10099c60, a2=sym(doRec709_10Callback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005b9d8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+200], a1=0x10099c78, a2=sym(doRec709_8Callback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005ba0c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+200], a1=0x10099c90, a2=sym(doCcir601Button_10Callback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005ba40 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+200], a1=0x10099ca8, a2=sym(doCcir601Button_8Callback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005ba74 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+200], a1=0x10099cc0, a2=sym(doRec240Button_10Callback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005baa8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+200], a1=0x10099cd8, a2=sym(doRec240Button_8Callback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005bbc8 calls XtVaCreateManagedWidget with a0=0x10099cf0, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1005bbf8 calls XtAddCallback with a0=[a0+80], a1=sym(_XmStrings)+10557, a2=sym(alphaChannelCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1005bc0c calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005bc54 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10099d10, a3=0x0, a4=0x0.
  The `jalr` at 0x1005bca8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+204], a1=0x10099d28, a2=sym(progressiveCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005bcdc calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+204], a1=0x10099d40, a2=sym(interleavedCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005bd10 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+204], a1=0x10099d58, a2=sym(stackedCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005bd30 calls __nw__GUi with a0=0x4c, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1005bd78 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10099d68, a3=0x0, a4=0x0.
  The `jalr` at 0x1005bdcc calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+196], a1=0x10099d80, a2=sym(dohdgvo1080iButtonCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005be00 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+196], a1=0x10099d98, a2=sym(doHdgvo720pButtonCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005be34 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+196], a1=0x10099da8, a2=sym(doHdgvo_525ButtonCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005be68 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+196], a1=0x10099db8, a2=sym(doHdgvo_625ButtonCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005be9c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+196], a1=0x10099dc8, a2=sym(dohdgvo1080i60ButtonCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005bed0 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+196], a1=0x10099de0, a2=sym(dohdgvo1080i50ButtonCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005bf04 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+196], a1=0x10099df8, a2=sym(dohdgvo720p60ButtonCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005bf38 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+196], a1=0x10099e10, a2=sym(dohdgvo1080p24ButtonCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005bf6c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+196], a1=0x10099e28, a2=sym(dohdgvo1080psf24ButtonCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005bfa0 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+196], a1=0x10099e40, a2=sym(dohdgvo1080p23976ButtonCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005bfd4 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+196], a1=0x10099e58, a2=sym(dohdgvo1080psf23976ButtonCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005c0d4 calls XtVaCreateManagedWidget with a0=0x10099e70, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1005c104 calls XtAddCallback with a0=[a0+88], a1=sym(_XmStrings)+10557, a2=sym(channelEnableCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1005c214 calls XtVaCreateManagedWidget with a0=0x10099e90, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1005c330 calls XtVaCreateManagedWidget with a0=0x10099ea0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1005c438 calls XtVaCreateManagedWidget with a0=0x10099eb0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1005c548 calls XtVaCreateManagedWidget with a0=0x10099ec0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1005c578 calls XtAddCallback with a0=[a0+84], a1=sym(_XmStrings)+4683, a2=sym(bGammaCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1005c67c calls XtVaCreateManagedWidget with a0=0x10099ed8, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1005c6ac calls XtAddCallback with a0=[a0+108], a1=sym(_XmStrings)+4683, a2=sym(gGammaCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1005c7b0 calls XtVaCreateManagedWidget with a0=0x10099ef0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1005c7e0 calls XtAddCallback with a0=[a0+120], a1=sym(_XmStrings)+4683, a2=sym(rGammaCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1005c8e4 calls XtVaCreateManagedWidget with a0=0x10099f08, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1005ca38 calls XtVaCreateManagedWidget with a0=0x10099f18, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+9609.
  The `jalr` at 0x1005ca68 calls XtAddCallback with a0=[a0+96], a1=sym(_XmStrings)+10557, a2=sym(ditherCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1005cb70 calls XtVaCreateManagedWidget with a0=0x10099f30, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x1, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x1005cbe0 calls XtVaCreateManagedWidget with a0=0x10099f48, a1=[sym(xmFormWidgetClass)], a2=[a0+56], a3=sym(_XmStrings)+9052, a4=0x1, a5=sym(_XmStrings)+5427, a6=0x1, a7=sym(XtStrings)+872.
  The `jalr` at 0x1005cce8 calls XtVaCreateManagedWidget with a0=0x10099f58, a1=[sym(xmLabelWidgetClass)], a2=[a0+52], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1005ce04 calls XtVaCreateManagedWidget with a0=0x10099f68, a1=[sym(xmLabelWidgetClass)], a2=[a0+52], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1005cf0c calls XtVaCreateManagedWidget with a0=0x10099f78, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+52], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1005cf3c calls XtAddCallback with a0=[a0+124], a1=sym(_XmStrings)+4683, a2=sym(restoreSizeCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1005d038 calls XtVaCreateManagedWidget with a0=0x10099f90, a1=[sym(xmLabelWidgetClass)], a2=[a0+52], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1005d134 calls XtVaCreateManagedWidget with a0=0x10099fa0, a1=[sym(xmLabelWidgetClass)], a2=[a0+52], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1005d23c calls XtVaCreateManagedWidget with a0=0x10099fb0, a1=[sym(xmLabelWidgetClass)], a2=[a0+52], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1005d350 calls XtVaCreateManagedWidget with a0=0x10099fc0, a1=[sym(xmLabelWidgetClass)], a2=[a0+52], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1005d458 calls XtVaCreateManagedWidget with a0=0x10099fd0, a1=[sym(xmLabelWidgetClass)], a2=[a0+52], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1005d544 calls XtVaCreateManagedWidget with a0=0x10099fe8, a1=[sym(xmLabelWidgetClass)], a2=[a0+52], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1005d588 calls XtVaSetValues with a0=[a0+180], a1=sym(_XmStrings)+10305, a2=[a0+132], a3=sym(_XmStrings)+7562, a4=[a0+132], a5=0x0.
  The `jalr` at 0x1005d5c0 calls XtVaSetValues with a0=[a0+132], a1=sym(_XmStrings)+10305, a2=[a0+104], a3=sym(_XmStrings)+7562, a4=[a0+104], a5=0x0.
  The `jalr` at 0x1005d5f8 calls XtVaSetValues with a0=[a0+48], a1=sym(_XmStrings)+10305, a2=[a0+100], a3=sym(_XmStrings)+7562, a4=[a0+100], a5=0x0.
  The `jalr` at 0x1005d620 calls XtVaSetValues with a0=[a0+100], a1=sym(_XmStrings)+10305, a2=[a0+128], a3=0x0.
  The `jalr` at 0x1005d658 calls XtVaSetValues with a0=[a0+60], a1=sym(_XmStrings)+10305, a2=[a0+104], a3=sym(_XmStrings)+7562, a4=[a0+104], a5=0x0.
  The `jalr` at 0x1005d690 calls XtVaSetValues with a0=[a0+160], a1=sym(_XmStrings)+10305, a2=[a0+128], a3=sym(_XmStrings)+7562, a4=[a0+128], a5=0x0.
  The `jalr` at 0x1005d704 calls XtVaCreateManagedWidget with a0=0x10099ff8, a1=[sym(xmLabelWidgetClass)], a2=[a0+56], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+5427, a6=0x2, a7=sym(_XmStrings)+5350.
  The `jalr` at 0x1005d800 calls XtVaCreateManagedWidget with a0=0x1009a010, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x4, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x1005d830 calls XtAddCallback with a0=[a0+136], a1=sym(_XmStrings)+4683, a2=sym(vPhaseCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1005d920 calls XtVaCreateManagedWidget with a0=0x1009a028, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x4, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x1005d950 calls XtAddCallback with a0=[a0+112], a1=sym(_XmStrings)+4683, a2=sym(hPhaseCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1005da78 calls XtVaCreateManagedWidget with a0=0x1009a040, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1005dba8 calls XtVaCreateManagedWidget with a0=0x1009a050, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1005dbc8 calls __nw__GUi with a0=0x4c, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1005dc10 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x1009a060, a3=0x0, a4=0x0.
  The `jalr` at 0x1005dc64 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+216], a1=0x1009a078, a2=sym(yLockedCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005dc98 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+216], a1=0x1009a088, a2=sym(yPixelCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005dcb8 calls __nw__GUi with a0=0x4c, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1005dd00 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x1009a098, a3=0x0, a4=0x0.
  The `jalr` at 0x1005dd54 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+212], a1=0x1009a0b0, a2=sym(xLockedCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005dd88 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+212], a1=0x1009a0c0, a2=sym(xPixelCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005ddbc calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+212], a1=0x1009a0d0, a2=sym(xTileCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005df04 calls XtVaCreateManagedWidget with a0=0x1009a0e0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1005e000 calls XtVaCreateManagedWidget with a0=0x1009a0f0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x4, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x1005e030 calls XtAddCallback with a0=[a0+92], a1=sym(_XmStrings)+4683, a2=sym(cursorPriorityCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1005e154 calls XtVaCreateManagedWidget with a0=0x1009a110, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1005e174 calls __nw__GUi with a0=0x4c, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x1005e1bc calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x1009a128, a3=0x0, a4=0x0.
  The `jalr` at 0x1005e210 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+208], a1=0x1009a140, a2=sym(rgb10Callback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005e244 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+208], a1=0x1009a150, a2=sym(rgba10Callback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005e278 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+208], a1=0x1009a160, a2=sym(rgb12Callback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005e2ac calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+208], a1=0x1009a170, a2=sym(zCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005e2e0 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+208], a1=0x1009a180, a2=sym(fsCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1005e410 calls XtVaCreateManagedWidget with a0=0x1009a190, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1005e53c calls XtVaCreateManagedWidget with a0=0x1009a1a8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x2, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1005e65c calls XtVaCreateManagedWidget with a0=0x1009a1b8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x2, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1005e798 calls XtVaCreateManagedWidget with a0=0x1009a1c8, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1005e7c8 calls XtAddCallback with a0=[a0+116], a1=sym(_XmStrings)+4683, a2=sym(heightCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1005e8f8 calls XtVaCreateManagedWidget with a0=0x1009a1e0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1005e928 calls XtAddCallback with a0=[a0+140], a1=sym(_XmStrings)+4683, a2=sym(widthCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1005ea28 calls XtVaCreateManagedWidget with a0=0x1009a1f0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1005ea58 calls XtAddCallback with a0=[a0+148], a1=sym(_XmStrings)+4683, a2=sym(yOriginCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1005eb58 calls XtVaCreateManagedWidget with a0=0x1009a208, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1005eb88 calls XtAddCallback with a0=[a0+144], a1=sym(_XmStrings)+4683, a2=sym(xOriginCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1005ecc8 calls XtVaCreateManagedWidget with a0=0x1009a220, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1005ecf8 calls XtAddCallback with a0=[a0+40], a1=sym(_XmStrings)+4683, a2=sym(closeChannelCallback__11HdgvoFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1005ee20 calls XtVaCreateManagedWidget with a0=0x100aa7e0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x2, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1005ef64 calls XtVaCreateManagedWidget with a0=0x1009a238, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+4724, a6=0x0, a7=sym(_XmStrings)+7513.
  The `jalr` at 0x1005ef84 calls baseWidget__10VkMenuItemCGv with a0=[a0+192], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x1005f03c calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x1, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x1, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x1005f050 calls baseWidget__10VkMenuItemCGv with a0=[a0+200], a1=?, a2=?, a3=?.
  The `jalr` at 0x1005f108 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x1, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x1, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x1005f130 calls XtVaSetValues with a0=[a0+80], a1=sym(_XmStrings)+10305, a2=[a0+68], a3=0x0.
  The `jalr` at 0x1005f144 calls baseWidget__10VkMenuItemCGv with a0=[a0+204], a1=?, a2=?, a3=?.
  The `jalr` at 0x1005f224 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x1, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x1005f238 calls baseWidget__10VkMenuItemCGv with a0=[a0+196], a1=?, a2=?, a3=?.
  The `jalr` at 0x1005f328 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x3, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x1, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x1005f360 calls XtVaSetValues with a0=[a0+32], a1=sym(_XmStrings)+10305, a2=[a0+172], a3=sym(_XmStrings)+7562, a4=[a0+108], a5=0x0.
  The `jalr` at 0x1005f398 calls XtVaSetValues with a0=[a0+64], a1=sym(_XmStrings)+10305, a2=[a0+172], a3=sym(_XmStrings)+7562, a4=[a0+120], a5=0x0.
  The `jalr` at 0x1005f3d0 calls XtVaSetValues with a0=[a0+172], a1=sym(_XmStrings)+10305, a2=[a0+68], a3=sym(_XmStrings)+7562, a4=[a0+68], a5=0x0.
  The `jalr` at 0x1005f3f8 calls XtVaSetValues with a0=[a0+84], a1=sym(_XmStrings)+10305, a2=[a0+68], a3=0x0.
  The `jalr` at 0x1005f420 calls XtVaSetValues with a0=[a0+108], a1=sym(_XmStrings)+10305, a2=[a0+68], a3=0x0.
  The `jalr` at 0x1005f448 calls XtVaSetValues with a0=[a0+120], a1=sym(_XmStrings)+10305, a2=[a0+68], a3=0x0.
  The `jalr` at 0x1005f470 calls XtVaSetValues with a0=[a0+68], a1=sym(_XmStrings)+10305, a2=[a0+72], a3=0x0.
  The `jalr` at 0x1005f498 calls XtVaSetValues with a0=[a0+96], a1=sym(_XmStrings)+10305, a2=[a0+164], a3=0x0.
  The `jalr` at 0x1005f4d0 calls XtVaSetValues with a0=[a0+136], a1=sym(_XmStrings)+10305, a2=[a0+184], a3=sym(_XmStrings)+7562, a4=[a0+184], a5=0x0.
  The `jalr` at 0x1005f508 calls XtVaSetValues with a0=[a0+112], a1=sym(_XmStrings)+10305, a2=[a0+72], a3=sym(_XmStrings)+7562, a4=[a0+72], a5=0x0.
  The `jalr` at 0x1005f530 calls XtVaSetValues with a0=[a0+184], a1=sym(_XmStrings)+10305, a2=[a0+72], a3=0x0.
  The `jalr` at 0x1005f558 calls XtVaSetValues with a0=[a0+72], a1=sym(_XmStrings)+10305, a2=[a0+168], a3=0x0.
  The `jalr` at 0x1005f56c calls baseWidget__10VkMenuItemCGv with a0=[a0+216], a1=?, a2=?, a3=?.
  The `jalr` at 0x1005f584 calls baseWidget__10VkMenuItemCGv with a0=[a0+212], a1=?, a2=?, a3=?.
  The `jalr` at 0x1005f684 calls XtVaSetValues with a0=?, a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x1005f698 calls baseWidget__10VkMenuItemCGv with a0=[a0+212], a1=?, a2=?, a3=?.
  The `jalr` at 0x1005f7a0 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x1005f7d8 calls XtVaSetValues with a0=[a0+92], a1=sym(_XmStrings)+10305, a2=[a0+44], a3=sym(_XmStrings)+7562, a4=[a0+44], a5=0x0.
  The `jalr` at 0x1005f7ec calls baseWidget__10VkMenuItemCGv with a0=[a0+208], a1=?, a2=?, a3=?.
  The `jalr` at 0x1005f824 calls XtVaSetValues with a0=[a0+44], a1=sym(_XmStrings)+10305, a2=[a0+164], a3=sym(_XmStrings)+7562, a4=ret(baseWidget__10VkMenuItemCGv), a5=0x0.
  The `jalr` at 0x1005f838 calls baseWidget__10VkMenuItemCGv with a0=[a0+208], a1=?, a2=?, a3=?.
  The `jalr` at 0x1005f93c calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x1005f964 calls XtVaSetValues with a0=[a0+164], a1=sym(_XmStrings)+10305, a2=[a0+152], a3=0x0.
  The `jalr` at 0x1005f99c calls XtVaSetValues with a0=[a0+176], a1=sym(_XmStrings)+10305, a2=[a0+152], a3=sym(_XmStrings)+7562, a4=[a0+148], a5=0x0.
  The `jalr` at 0x1005f9d4 calls XtVaSetValues with a0=[a0+36], a1=sym(_XmStrings)+10305, a2=[a0+140], a3=sym(_XmStrings)+7562, a4=[a0+140], a5=0x0.
  The `jalr` at 0x1005fa0c calls XtVaSetValues with a0=[a0+148], a1=sym(_XmStrings)+10305, a2=[a0+152], a3=sym(_XmStrings)+7562, a4=[a0+188], a5=0x0.
  The `jalr` at 0x1005fa44 calls XtVaSetValues with a0=[a0+144], a1=sym(_XmStrings)+10305, a2=[a0+152], a3=sym(_XmStrings)+7562, a4=[a0+152], a5=0x0.
  The `jalr` at 0x1005fa6c calls XtVaSetValues with a0=[a0+188], a1=sym(_XmStrings)+10305, a2=[a0+152], a3=0x0.
  The `beq` branch at 0x1005b7fc targets 0x1005b850, is taken when a4(=ret(__nw__GUi)) == 0, and falls through when a4(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1005b848 targets 0x1005b854 and is always taken.
  The `beq` branch at 0x1005b8ec targets 0x1005b940, is taken when a3(=ret(__nw__GUi)) == 0, and falls through when a3(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1005b938 targets 0x1005b944 and is always taken.
  The `beq` branch at 0x1005bc24 targets 0x1005bc78, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1005bc70 targets 0x1005bc7c and is always taken.
  The `beq` branch at 0x1005bd48 targets 0x1005bd9c, is taken when a3(=ret(__nw__GUi)) == 0, and falls through when a3(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1005bd94 targets 0x1005bda0 and is always taken.
  The `beq` branch at 0x1005dbe0 targets 0x1005dc34, is taken when a3(=ret(__nw__GUi)) == 0, and falls through when a3(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1005dc2c targets 0x1005dc38 and is always taken.
  The `beq` branch at 0x1005dcd0 targets 0x1005dd24, is taken when a3(=ret(__nw__GUi)) == 0, and falls through when a3(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1005dd1c targets 0x1005dd28 and is always taken.
  The `beq` branch at 0x1005e18c targets 0x1005e1e0, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1005e1d8 targets 0x1005e1e4 and is always taken.
  The return at 0x1005fa80 has v0 = ret(XtVaSetValues).
  The instructions from 0x1005fa88 to 0x1005fa98 are not reached by any path from the entry, and their branches are not listed.
- `className__11HdgvoFormUIGv` in `usr/gfx/ircombine` at 0x1005faa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005faa0-0x1005fae0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x1005fab8 loads 4 bytes from abs 0x100a90d8.
  The `beq` branch at 0x1005fac4 targets 0x1005facc and is always taken.
  The return at 0x1005fad8 has v0 = 0x1009a248.
- `alphaChannel__11HdgvoFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1005fae0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1005fae0-0x1005fb0c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1005faf4 targets 0x1005fafc and is always taken.
  The return at 0x1005fb04 has v0 = ?.
