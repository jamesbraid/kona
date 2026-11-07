# Instruction readings from hostfacts

The entries record established instruction facts from the cited routine bodies. They describe software behavior, not hardware measurements. Hostfacts supplies each access, call, branch and return from that routine. The binary listing supplies its address and size.

Skipped routines: 928 already have an exact binary, member and routine entry; 4 targets have no bounded address and size in the inventory.

- `__record_needed_destruction` in `usr/gfx/ircombine` at 0x1001ffd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1001ffd0-0x1001fff8 (40 bytes).
  It occupies 40 bytes.
  The `lw` at 0x1001ffe4 loads 4 bytes from abs 0x100a9114.
  The `lw` at 0x1001ffe8 loads 4 bytes from abs 0x100ab0d4.
  The `sw` at 0x1001ffec stores 4 bytes to abs 0x100ab0d4.
  The `sw` at 0x1001fff4 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The return at 0x1001fff0 has v0 = [0x100ab0d4].
- `__std__needed_destruction_list` in `usr/gfx/ircombine` at 0x10020000 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10020000-0x1002003c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0x10020020 loads 4 bytes from abs 0x100a9120.
  The `jal` at 0x10020024 calls __process_needed_destructions__Gv [0x1001ff50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10020034 has v0 = ret(__process_needed_destructions__Gv).
- `ErrorF` in `usr/gfx/ircombine` at 0x100203f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100203f0-0x10020514 (292 bytes).
  It occupies 292 bytes.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10020470, `lbu` at 0x10020484, `lbu` at 0x1002049c.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x100204b4, `sb` at 0x100204c4.
  The `jalr` at 0x10020448 calls vsprintf with a0=sp-1128, a1=a0 at entry (arg0), a2=sp-56, a3=a3 at entry (arg3).
  The `jalr` at 0x100204e0 calls fprintf with a0=sym(__iob)+32, a1=0x10094038, a2=sp-1128, a3=?.
  The `beq` branch at 0x10020458 targets 0x1002047c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x10020474 targets 0x10020460, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x1002048c targets 0x100204c8, is taken when a3(?) == a4(=0xa), and falls through when a3(?) != a4(=0xa).
  The `beq` branch at 0x100204a4 targets 0x100204c8, is taken when a4(?) == a5(=0xd), and falls through when a4(?) != a5(=0xd).
  The `beq` branch at 0x100204f4 targets 0x100204fc and is always taken.
  The return at 0x1002050c has v0 = ret(fprintf).
- `iGUIReadFormatFile__GPCcP11konFormat_t` in `usr/gfx/ircombine` at 0x10020520 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10020520-0x10020728 (520 bytes).
  It occupies 520 bytes.
  6 such `lw` accesses load 4 bytes from ret(getTheErrorDialog__Gv) +0x8, including `lw` at 0x100205cc, `lw` at 0x100205f4, `lw` at 0x1002063c.
  3 such `lw` accesses load 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108, including `lw` at 0x100205d0, `lw` at 0x10020640, `lw` at 0x100206b0.
  3 such `lw` accesses load 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110, including `lw` at 0x100205f8, `lw` at 0x10020668, `lw` at 0x100206d8.
  The `jal` at 0x1002054c calls vfmtReadKonaVideoFormat [0x1008c9e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100205b4 calls sprintf with a0=sp-312, a1=0x10094048, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x100205c0 calls getTheErrorDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100205fc calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-312, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10020624 calls sprintf with a0=sp-312, a1=0x10094060, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10020630 calls getTheErrorDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002066c calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-312, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10020694 calls sprintf with a0=sp-312, a1=0x10094098, a2=a0 at entry (arg0), a3=0x2.
  The `jalr` at 0x100206a0 calls getTheErrorDialog__Gv with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100206dc calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-312, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `beq` branch at 0x10020564 targets 0x100205a0, is taken when v0(=ret(vfmtReadKonaVideoFormat)) == v1(=0x1), and falls through when v0(=ret(vfmtReadKonaVideoFormat)) != v1(=0x1).
  The `beq` branch at 0x10020574 targets 0x10020610, is taken when a0(=ret(vfmtReadKonaVideoFormat)) == a1(=0x3), and falls through when a0(=ret(vfmtReadKonaVideoFormat)) != a1(=0x3).
  The `beq` branch at 0x10020584 targets 0x10020680, is taken when a2(=ret(vfmtReadKonaVideoFormat)) == a3(=0x2), and falls through when a2(=ret(vfmtReadKonaVideoFormat)) != a3(=0x2).
  The `beq` branch at 0x10020590 targets 0x100206f0, is taken when a4(=ret(vfmtReadKonaVideoFormat)) == 0, and falls through when a4(=ret(vfmtReadKonaVideoFormat)) != 0.
  The `beq` branch at 0x10020598 targets 0x10020700 and is always taken.
  The `beq` branch at 0x10020608 targets 0x10020710 and is always taken.
  The `beq` branch at 0x10020678 targets 0x10020710 and is always taken.
  The `beq` branch at 0x100206e8 targets 0x10020710 and is always taken.
  The `beq` branch at 0x100206f8 targets 0x10020710 and is always taken.
  The `beq` branch at 0x10020708 targets 0x10020710 and is always taken.
  The return at 0x10020720 has v0 = one of 0x0, 0x1.
- `CreateDvpForm` in `usr/gfx/ircombine` at 0x10021380 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10021380-0x10021468 (232 bytes).
  It occupies 232 bytes.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10021410, `lw` at 0x10021414, `lw` at 0x10021424.
  The `jalr` at 0x100213ac calls __nw__GUi with a0=0x120, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100213dc calls __ct__7DvpFormGPCcP10_WidgetReci [0x10021570] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0.
  The `jalr` at 0x1002142c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100213b8 targets 0x100213f8, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100213f0 targets 0x100213fc and is always taken.
  The return at 0x1002144c has v0 = ?.
  The instructions from 0x10021454 to 0x10021464 are not reached by any path from the entry, and their branches are not listed.
- `RegisterDvpFormInterface` in `usr/gfx/ircombine` at 0x10021470 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10021470-0x100214ac (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0x10021484 loads 4 bytes from abs 0x100a90d8.
  The `beq` branch at 0x10021490 targets 0x10021498 and is always taken.
  The return at 0x100214a4 has v0 = 0x100a1400.
- `__ct__7DvpFormGPCcP10_WidgetReci` in `usr/gfx/ircombine` at 0x10021570 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10021570-0x10021618 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0x100215b8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x100215c4 stores 4 bytes to a0 (arg0 at entry) +0x11c.
  The `sw` at 0x100215e8 stores 4 bytes to a0 (arg0 at entry) +0x118.
  The `jal` at 0x100215a8 calls __ct__9DvpFormUIGPCcP10_WidgetRec [0x10023580] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100215fc has v0 = a0.
  The instructions from 0x10021604 to 0x10021614 are not reached by any path from the entry, and their branches are not listed.
- `__ct__7DvpFormGPCc` in `usr/gfx/ircombine` at 0x10021620 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10021620-0x1002168c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x1002165c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x1002164c calls __ct__9DvpFormUIGPCc [0x10023610] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10021670 has v0 = a0.
  The instructions from 0x10021678 to 0x10021688 are not reached by any path from the entry, and their branches are not listed.
- `__dt__7DvpFormGv` in `usr/gfx/ircombine` at 0x10021690 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10021690-0x10021724 (148 bytes).
  It occupies 148 bytes.
  The `sw` at 0x100216c4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x100216d4 calls __dt__9DvpFormUIGv [0x10023680] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100216f4 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100216b4 targets 0x100216fc, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x100216e4 targets 0x100216fc, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10021708 has v0 = one of 0x8f9e0, ret(__dt__9DvpFormUIGv), ret(__dl__GPv).
  The instructions from 0x10021710 to 0x10021720 are not reached by any path from the entry, and their branches are not listed.
- `className__7DvpFormGv` in `usr/gfx/ircombine` at 0x10021730 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10021730-0x1002176c (60 bytes).
  It occupies 60 bytes.
  The `beq` branch at 0x10021750 targets 0x10021758 and is always taken.
  The return at 0x10021764 has v0 = 0x100aa410.
- `update__7DvpFormGv` in `usr/gfx/ircombine` at 0x100217b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100217b0-0x10021d70 (1472 bytes).
  It occupies 1472 bytes.
  The `lw` at 0x100217e0 loads 4 bytes from a0 (arg0 at entry) +0x44.
  22 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x118, including `lw` at 0x100217fc, `lw` at 0x10021830, `lw` at 0x10021850.
  The `lw` at 0x10021800 loads 4 bytes from [a0+280] +0x140.
  The `lw` at 0x10021814 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lw` at 0x10021848 loads 4 bytes from a0 (arg0 at entry) +0xc8.
  The `lw` at 0x10021854 loads 4 bytes from [a0+280] +0x134.
  The `lw` at 0x10021868 loads 4 bytes from a0 (arg0 at entry) +0xd0.
  The `lw` at 0x10021874 loads 4 bytes from [a0+280] +0x148.
  The `lw` at 0x10021888 loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `lw` at 0x10021894 loads 4 bytes from [a0+280] +0x14c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc4, including `lw` at 0x100218a8, `lw` at 0x10021970.
  The `lw` at 0x100218b4 loads 4 bytes from [a0+280] +0x2ac.
  The `lw` at 0x100218cc loads 4 bytes from [a0+280] +0x28c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xcc, including `lw` at 0x100218fc, `lw` at 0x1002191c.
  The `lw` at 0x1002193c loads 4 bytes from a0 (arg0 at entry) +0x88.
  2 such `lw` accesses load 4 bytes from [a0+280] +0x4e0, including `lw` at 0x1002195c, `lw` at 0x10021990.
  2 such `lwc1` accesses load 4 bytes from [a0+280] +0x130, including `lwc1` at 0x100219b8, `lwc1` at 0x10021a24.
  The `lw` at 0x100219d4 loads 4 bytes from a0 (arg0 at entry) +0x94.
  The `lw` at 0x10021a0c loads 4 bytes from [a0+280] +0x484.
  The `lw` at 0x10021a44 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `lw` at 0x10021a80 loads 4 bytes from [a0+280] +0x128.
  The `lw` at 0x10021a8c loads 4 bytes from [a0+280] +0x12c.
  The `lw` at 0x10021aa0 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `lw` at 0x10021acc loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x10021aec loads 4 bytes from [a0+280] +0x144.
  The `lw` at 0x10021b00 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lw` at 0x10021b20 loads 4 bytes from [a0+280] +0x13c.
  The `lw` at 0x10021b34 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x10021b54 loads 4 bytes from [a0+280] +0x2a4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x10021b68, `lw` at 0x10021d28.
  The `lwc1` at 0x10021b88 loads 4 bytes from [a0+280] +0x270.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5c, including `lw` at 0x10021b9c, `lw` at 0x10021d10.
  The `lwc1` at 0x10021bbc loads 4 bytes from [a0+280] +0x26c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x68, including `lw` at 0x10021bd0, `lw` at 0x10021cf8.
  The `lwc1` at 0x10021bf0 loads 4 bytes from [a0+280] +0x268.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x78, including `lw` at 0x10021c04, `lw` at 0x10021d40.
  2 such `lw` accesses load 4 bytes from [a0+280] +0x2c0, including `lw` at 0x10021c24, `lw` at 0x10021ccc.
  3 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10021c38, `lw` at 0x10021c48, `lw` at 0x10021c78.
  The `lw` at 0x10021c68 loads 4 bytes from sym(combination) +0x238.
  The `lw` at 0x10021c8c loads 4 bytes from ret(getTarget__18VkwindowMainWindowGv) +0x10.
  The `jal` at 0x100217d4 calls update_fast__7DvpFormGv [0x10021d70] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100217e8 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+68], a1=?, a2=?, a3=?.
  The `jal` at 0x10021808 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+280]+320], a2=?, a3=?.
  The `jal` at 0x1002181c calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+84], a1=?, a2=?, a3=?.
  The `jal` at 0x1002183c calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+280]+340, a2=?, a3=?.
  The `jalr` at 0x1002185c calls set__12VkOptionMenuGi with a0=[a0+200], a1=[[a0+280]+308], a2=?, a3=?.
  The `jalr` at 0x1002187c calls set__12VkOptionMenuGi with a0=[a0+208], a1=[[a0+280]+328], a2=?, a3=?.
  The `jalr` at 0x1002189c calls set__12VkOptionMenuGi with a0=[a0+212], a1=[[a0+280]+332], a2=?, a3=?.
  The `jalr` at 0x100218bc calls set__12VkOptionMenuGi with a0=[a0+196], a1=[[a0+280]+684], a2=?, a3=?.
  The `jalr` at 0x10021908 calls set__12VkOptionMenuGi with a0=[a0+204], a1=0x0, a2=0x1, a3=?.
  The `jalr` at 0x10021928 calls set__12VkOptionMenuGi with a0=[a0+204], a1=0x1, a2=[[a0+280]+652], a3=0x3.
  The `jal` at 0x10021944 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+136], a1=?, a2=?, a3=?.
  The `jal` at 0x10021964 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+280]+1248], a2=?, a3=?.
  The `jalr` at 0x10021978 calls baseWidget__10VkMenuItemCGv with a0=[a0+196], a1=?, a2=?, a3=?.
  The `jalr` at 0x100219a0 calls XtSetSensitive with a0=ret(baseWidget__10VkMenuItemCGv), a1=?, a2=?, a3=?.
  The `jalr` at 0x100219c8 calls sprintf with a0=sp-144, a1=0x100aa418, a2=?, a3=?.
  The `jal` at 0x100219dc calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+148], a1=?, a2=?, a3=?.
  The `jal` at 0x100219f4 calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=?, a3=?.
  The `jalr` at 0x10021a38 calls sprintf with a0=sp-144, a1=0x100aa418, a2=?, a3=[[a0+280]+1156].
  The `jal` at 0x10021a4c calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+184], a1=?, a2=?, a3=?.
  The `jal` at 0x10021a64 calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=?, a3=?.
  The `jalr` at 0x10021a94 calls sprintf with a0=sp-144, a1=0x10094120, a2=[[a0+280]+296], a3=[[a0+280]+300].
  The `jal` at 0x10021aa8 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+164], a1=?, a2=?, a3=?.
  The `jal` at 0x10021ac0 calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=?, a3=?.
  The `jal` at 0x10021ad4 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+72], a1=?, a2=?, a3=?.
  The `jal` at 0x10021af4 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+280]+324], a2=?, a3=?.
  The `jal` at 0x10021b08 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+52], a1=?, a2=?, a3=?.
  The `jal` at 0x10021b28 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+280]+316], a2=?, a3=?.
  The `jal` at 0x10021b3c calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+64], a1=?, a2=?, a3=?.
  The `jal` at 0x10021b5c calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+280]+676], a2=?, a3=?.
  The `jal` at 0x10021b70 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+56], a1=?, a2=?, a3=?.
  The `jal` at 0x10021b90 calls __as__9EZWrapperGf [0x1008f850] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+280], a2=?, a3=?; fp f13=[[a0+280]+624].
  The `jal` at 0x10021ba4 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+92], a1=?, a2=?, a3=?.
  The `jal` at 0x10021bc4 calls __as__9EZWrapperGf [0x1008f850] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+280], a2=?, a3=?; fp f13=[[a0+280]+620].
  The `jal` at 0x10021bd8 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+104], a1=?, a2=?, a3=?.
  The `jal` at 0x10021bf8 calls __as__9EZWrapperGf [0x1008f850] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+280], a2=?, a3=?; fp f13=[[a0+280]+616].
  The `jal` at 0x10021c0c calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+120], a1=?, a2=?, a3=?.
  The `jal` at 0x10021c2c calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+280]+704], a2=?, a3=?.
  The `jal` at 0x10021c50 calls getTarget__18VkwindowMainWindowGv [0x1006f100] with a0=[sym(vkwindow)], a1=?, a2=[sym(vkwindow)], a3=?.
  The `jal` at 0x10021c80 calls getTarget__18VkwindowMainWindowGv [0x1006f100] with a0=[sym(vkwindow)], a1=[sym(combination)+568], a2=?, a3=?.
  The `jalr` at 0x10021d04 calls XtSetSensitive with a0=[a0+104], a1=one of 0x0, 0x1, a2=?, a3=?, a4=one of 0x0, 0x1, a5=one of 0x0, 0x1.
  The `jalr` at 0x10021d1c calls XtSetSensitive with a0=[a0+92], a1=?, a2=?, a3=?.
  The `jalr` at 0x10021d34 calls XtSetSensitive with a0=[a0+56], a1=?, a2=?, a3=?.
  The `jalr` at 0x10021d4c calls XtSetSensitive with a0=[a0+120], a1=?, a2=?, a3=?.
  The `beq` branch at 0x100218d8 targets 0x100218f8, is taken when a1(=[[a0+280]+652]) == a2(=0x1), and falls through when a1(=[[a0+280]+652]) != a2(=0x1).
  The `beq` branch at 0x100218e8 targets 0x10021918, is taken when a2(=[[a0+280]+652]) == a3(=0x3), and falls through when a2(=[[a0+280]+652]) != a3(=0x3).
  The `beq` branch at 0x100218f0 targets 0x10021938 and is always taken.
  The `beq` branch at 0x10021910 targets 0x10021938 and is always taken.
  The `beq` branch at 0x10021930 targets 0x10021938 and is always taken.
  The `beq` branch at 0x10021c3c targets 0x10021d54, is taken when a2(=[sym(vkwindow)]) == 0, and falls through when a2(=[sym(vkwindow)]) != 0.
  The `beq` branch at 0x10021c5c targets 0x10021d54, is taken when v0(=ret(getTarget__18VkwindowMainWindowGv)) == 0, and falls through when v0(=ret(getTarget__18VkwindowMainWindowGv)) != 0.
  The `bne` branch at 0x10021c6c targets 0x10021cac, is taken when a1(=[sym(combination)+568]) != 0, and falls through when a1(=[sym(combination)+568]) == 0.
  The `beq` branch at 0x10021c94 targets 0x10021cac, is taken when a1(=[ret(getTarget__18VkwindowMainWindowGv)+16]) == a2(=0x2), and falls through when a1(=[ret(getTarget__18VkwindowMainWindowGv)+16]) != a2(=0x2).
  The `beq` branch at 0x10021ca4 targets 0x10021cb0 and is always taken.
  The `beq` branch at 0x10021cbc targets 0x10021ce8, is taken when a4(=one of 0x0, 0x1) == 0, and falls through when a4(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x10021cd0 targets 0x10021ce8, is taken when a6(=[[a0+280]+704]) == 0, and falls through when a6(=[[a0+280]+704]) != 0.
  The `beq` branch at 0x10021ce0 targets 0x10021cec and is always taken.
  The `beq` branch at 0x10021d54 targets 0x10021d5c and is always taken.
  The return at 0x10021d68 has v0 = ?.
- `update_fast__7DvpFormGv` in `usr/gfx/ircombine` at 0x10021d70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10021d70-0x10021e78 (264 bytes).
  It occupies 264 bytes.
  The `lw` at 0x10021d90 loads 4 bytes from a0 (arg0 at entry) +0x80.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x118, including `lw` at 0x10021dac, `lw` at 0x10021de0, `lw` at 0x10021e14.
  The `lw` at 0x10021db0 loads 4 bytes from [a0+280] +0x108.
  The `lw` at 0x10021dc4 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lw` at 0x10021de4 loads 4 bytes from [a0+280] +0x10c.
  The `lw` at 0x10021df8 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lw` at 0x10021e18 loads 4 bytes from [a0+280] +0x110.
  The `lw` at 0x10021e2c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0x10021e4c loads 4 bytes from [a0+280] +0x114.
  The `jal` at 0x10021d98 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+128], a1=0x8f300, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10021db8 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+280]+264], a2=?, a3=?.
  The `jal` at 0x10021dcc calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+132], a1=?, a2=?, a3=?.
  The `jal` at 0x10021dec calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+280]+268], a2=?, a3=?.
  The `jal` at 0x10021e00 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+124], a1=?, a2=?, a3=?.
  The `jal` at 0x10021e20 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+280]+272], a2=?, a3=?.
  The `jal` at 0x10021e34 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+96], a1=?, a2=?, a3=?.
  The `jal` at 0x10021e54 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+280]+276], a2=?, a3=?.
  The `beq` branch at 0x10021e5c targets 0x10021e64 and is always taken.
  The return at 0x10021e70 has v0 = ret(__as__9EZWrapperGi).
- `alphaChannel__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10021e80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10021e80-0x10021ef0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x10021eb0 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10021eb8 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10021ebc stores 4 bytes to [a0+280] +0x13c.
  The `lw` at 0x10021ec4 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10021ecc calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+280], a3=0x8f1f0.
  The `beq` branch at 0x10021ed4 targets 0x10021edc and is always taken.
  The return at 0x10021ee8 has v0 = ret(update__18VkwindowMainWindowGv).
- `bGamma__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10021ef0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10021ef0-0x10021f98 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x10021f20 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x10021f5c loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `swc1` at 0x10021f64 stores 4 bytes to [a0+280] +0x270.
  The `lw` at 0x10021f6c loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10021f28 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+56], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x8f180.
  The `jal` at 0x10021f3c calls (unnamed) [0x10023520] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jalr` at 0x10021f4c calls atof with a0=ret(0x10023520), a1=?, a2=?, a3=?.
  The `jal` at 0x10021f74 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+280]+624, a2=?, a3=?.
  The `beq` branch at 0x10021f7c targets 0x10021f84 and is always taken.
  The return at 0x10021f90 has v0 = ret(update__18VkwindowMainWindowGv).
- `channelBrowse__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10021fa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10021fa0-0x10022170 (464 bytes).
  It occupies 464 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x11c, including `lw` at 0x10021fdc, `lw` at 0x10022130.
  7 such `lw` accesses load 4 bytes from sym(sffb) +0x0, including `lw` at 0x1002204c, `lw` at 0x10022068, `lw` at 0x10022080.
  2 such `lw` accesses load 4 bytes from [sym(sffb)] +0x8, including `lw` at 0x1002209c, `lw` at 0x100220d4.
  The `lw` at 0x100220a0 loads 4 bytes from [[sym(sffb)]+8] +0x108.
  The `lw` at 0x100220d8 loads 4 bytes from [[sym(sffb)]+8] +0x110.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10022128, `lw` at 0x10022144.
  The `jalr` at 0x10021fe4 calls sprintf with a0=sp-1176, a1=0x10094130, a2=[a0+284], a3=0x8f0d0.
  The `jalr` at 0x10021ff8 calls getenv with a0=0x10094158, a1=?, a2=?, a3=?.
  The `jalr` at 0x10022040 calls sprintf with a0=sp-1088, a1=0x10094168, a2=?, a3=?.
  The `jalr` at 0x1002205c calls setTitle__15VkDialogManagerGPCc with a0=[sym(sffb)], a1=0x10094188, a2=?, a3=?.
  The `jalr` at 0x10022074 calls setDirectory__21VkFileSelectionDialogGPCc with a0=[sym(sffb)], a1=sp-1088, a2=?, a3=?.
  The `jalr` at 0x1002208c calls setFilterPattern__21VkFileSelectionDialogGPCc with a0=[sym(sffb)], a1=0x100aa428, a2=?, a3=?.
  The `jalr` at 0x100220dc calls (unknown callee) with a0=([[[sym(sffb)]+8]+264] + [sym(sffb)]), a1=sp-1176, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x10022104 calls (unnamed) [0x10021530] with a0=[sym(sffb)], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x10022118 calls basename with a0=ret(0x10021530), a1=?, a2=?, a3=?.
  The `jal` at 0x10022138 calls loadFormat__18VkwindowMainWindowGiPCc [0x1006f0a0] with a0=[sym(vkwindow)], a1=[a0+284], a2=ret(basename), a3=?.
  The `jal` at 0x1002214c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002200c targets 0x10022024, is taken when a1(=ret(getenv)) == 0, and falls through when a1(=ret(getenv)) != 0.
  The `beq` branch at 0x1002201c targets 0x1002202c and is always taken.
  The `bne` branch at 0x100220ec targets 0x10022140, is taken when v0(=ret(?)) != a1(=0x1), and falls through when v0(=ret(?)) == a1(=0x1).
  The `beq` branch at 0x10022154 targets 0x1002215c and is always taken.
  The return at 0x10022168 has v0 = ret(update__18VkwindowMainWindowGv).
- `channelEnable__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022170 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10022170-0x1002227c (268 bytes).
  It occupies 268 bytes.
  The `lw` at 0x100221a0 loads 4 bytes from a0 (arg0 at entry) +0x11c.
  The `lw` at 0x100221b4 loads 4 bytes from sym(combination) +0x5a9c.
  The `lw` at 0x100221c4 loads 4 bytes from sym(combination) +0x5a78.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x118, including `lw` at 0x1002221c, `lw` at 0x10022244.
  The `lw` at 0x10022220 loads 4 bytes from [a0+280] +0x2a4.
  The `lw` at 0x1002223c loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `sw` at 0x10022248 stores 4 bytes to [a0+280] +0x2a4.
  The `lw` at 0x10022250 loads 4 bytes from sym(vkwindow) +0x0.
  The `jalr` at 0x100221d4 calls getTheErrorDialog__Gv with a0=[sym(combination)+23196], a1=[sym(combination)+23160], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100221f8 calls (unnamed) [0x100214d0] with a0=ret(getTheErrorDialog__Gv), a1=0x10094198, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x10022208 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x10022228 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+280]+676], a2=?, a3=?.
  The `jal` at 0x10022258 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `bne` branch at 0x100221a8 targets 0x10022238, is taken when at(=[a0+284]) != v0(=0x1), and falls through when at(=[a0+284]) == v0(=0x1).
  The `beq` branch at 0x100221b8 targets 0x10022238, is taken when a0(=[sym(combination)+23196]) == 0, and falls through when a0(=[sym(combination)+23196]) != 0.
  The `beq` branch at 0x100221c8 targets 0x10022238, is taken when a1(=[sym(combination)+23160]) == 0, and falls through when a1(=[sym(combination)+23160]) != 0.
  The `beq` branch at 0x10022230 targets 0x1002224c and is always taken.
  The `beq` branch at 0x10022260 targets 0x10022268 and is always taken.
  The return at 0x10022274 has v0 = ret(update__18VkwindowMainWindowGv).
- `closeChannel__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022280 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10022280-0x100222fc (124 bytes).
  It occupies 124 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x114, including `lw` at 0x100222b0, `lw` at 0x100222c0, `lw` at 0x100222cc.
  2 such `lw` accesses load 4 bytes from [a0+276] +0x8, including `lw` at 0x100222b4, `lw` at 0x100222d0.
  The `lw` at 0x100222b8 loads 4 bytes from [[a0+276]+8] +0x30.
  The `lw` at 0x100222d4 loads 4 bytes from [[a0+276]+8] +0x38.
  The `jalr` at 0x100222d8 calls (unknown callee) with a0=([[[a0+276]+8]+48] + [a0+276]), a1=[a0+276], a2=a2 at entry (arg2), a3=0x8edf0.
  The `beq` branch at 0x100222e0 targets 0x100222e8 and is always taken.
  The return at 0x100222f4 has v0 = ret(?).
- `compositeSync__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022300 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10022300-0x1002236c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x10022334 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022338 stores 4 bytes to [a0+280] +0x28c.
  The `lw` at 0x10022340 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10022348 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x3, a2=[a0+280], a3=a2 at entry (arg2), a4=0x8ed70.
  The `beq` branch at 0x10022350 targets 0x10022358 and is always taken.
  The return at 0x10022364 has v0 = ret(update__18VkwindowMainWindowGv).
- `cursorPriority__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022370 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10022370-0x10022400 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0x100223a0 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x100223c8 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x100223cc stores 4 bytes to [a0+280] +0x140.
  The `lw` at 0x100223d4 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x100223a8 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+68], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x8ed00.
  The `jal` at 0x100223bc calls (unnamed) [0x100234e0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x100223dc calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+280], a2=?, a3=?.
  The `beq` branch at 0x100223e4 targets 0x100223ec and is always taken.
  The return at 0x100223f8 has v0 = ret(update__18VkwindowMainWindowGv).
- `dither__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022400 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10022400-0x10022470 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x10022430 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10022438 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x1002243c stores 4 bytes to [a0+280] +0x144.
  The `lw` at 0x10022444 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1002244c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+280], a3=0x8ec70.
  The `beq` branch at 0x10022454 targets 0x1002245c and is always taken.
  The return at 0x10022468 has v0 = ret(update__18VkwindowMainWindowGv).
- `format__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022470 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10022470-0x1002255c (236 bytes).
  It occupies 236 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x100224a0, `lw` at 0x100224f4.
  The `lw` at 0x100224d4 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `lw` at 0x10022528 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10022530 loads 4 bytes from a0 (arg0 at entry) +0x11c.
  The `jal` at 0x100224a8 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+84], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x8ec00.
  The `jal` at 0x100224c0 calls (unnamed) [0x10023520] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jalr` at 0x100224e0 calls strcmp with a0=[a0+280]+340, a1=ret(0x10023520), a2=?, a3=?.
  The `jal` at 0x100224fc calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+84], a1=?, a2=?, a3=?.
  The `jal` at 0x10022514 calls (unnamed) [0x10023520] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10022538 calls loadFormat__18VkwindowMainWindowGiPCc [0x1006f0a0] with a0=[sym(vkwindow)], a1=[a0+284], a2=ret(0x10023520), a3=?.
  The `beq` branch at 0x100224e8 targets 0x10022540, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x10022540 targets 0x10022548 and is always taken.
  The return at 0x10022554 has v0 = ?.
- `fs__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022560 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10022560-0x100225cc (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x10022594 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022598 stores 4 bytes to [a0+280] +0x134.
  The `lw` at 0x100225a0 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x100225a8 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x4, a2=[a0+280], a3=a2 at entry (arg2), a4=0x8eb10.
  The `beq` branch at 0x100225b0 targets 0x100225b8 and is always taken.
  The return at 0x100225c4 has v0 = ret(update__18VkwindowMainWindowGv).
- `gGamma__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100225d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100225d0-0x10022678 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x10022600 loads 4 bytes from a0 (arg0 at entry) +0x5c.
  The `lw` at 0x1002263c loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `swc1` at 0x10022644 stores 4 bytes to [a0+280] +0x26c.
  The `lw` at 0x1002264c loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10022608 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+92], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x8eaa0.
  The `jal` at 0x1002261c calls (unnamed) [0x10023520] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002262c calls atof with a0=ret(0x10023520), a1=?, a2=?, a3=?.
  The `jal` at 0x10022654 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+280]+620, a2=?, a3=?.
  The `beq` branch at 0x1002265c targets 0x10022664 and is always taken.
  The return at 0x10022670 has v0 = ret(update__18VkwindowMainWindowGv).
- `height__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022680 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10022680-0x10022738 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0x100226b0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0x100226d8 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x100226e0 stores 4 bytes to [a0+280] +0x114.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x100226e8, `lw` at 0x1002270c.
  The `lw` at 0x100226f0 loads 4 bytes from a0 (arg0 at entry) +0x11c.
  The `jal` at 0x100226b8 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+96], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x8e9f0.
  The `jal` at 0x100226cc calls (unnamed) [0x100234e0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10022700 calls clamp__18VkwindowMainWindowGiN21 [0x1006efb0] with a0=[sym(vkwindow)], a1=[a0+284], a2=0x1, a3=0x0.
  The `jal` at 0x10022714 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002271c targets 0x10022724 and is always taken.
  The return at 0x10022730 has v0 = ret(update__18VkwindowMainWindowGv).
- `horizontalSync__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022740 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10022740-0x100227ac (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x10022774 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022778 stores 4 bytes to [a0+280] +0x28c.
  The `lw` at 0x10022780 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10022788 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x1, a2=[a0+280], a3=a2 at entry (arg2), a4=0x8e930.
  The `beq` branch at 0x10022790 targets 0x10022798 and is always taken.
  The return at 0x100227a4 has v0 = ret(update__18VkwindowMainWindowGv).
- `interleaved__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100227b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100227b0-0x1002281c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x100227e4 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x100227e8 stores 4 bytes to [a0+280] +0x2ac.
  The `lw` at 0x100227f0 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x100227f8 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x1, a2=[a0+280], a3=a2 at entry (arg2), a4=0x8e8c0.
  The `beq` branch at 0x10022800 targets 0x10022808 and is always taken.
  The return at 0x10022814 has v0 = ret(update__18VkwindowMainWindowGv).
- `progressive__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022820 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10022820-0x10022888 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x10022850 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022854 stores 4 bytes to [a0+280] +0x2ac.
  The `lw` at 0x1002285c loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10022864 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+280], a2=a2 at entry (arg2), a3=0x8e850.
  The `beq` branch at 0x1002286c targets 0x10022874 and is always taken.
  The return at 0x10022880 has v0 = ret(update__18VkwindowMainWindowGv).
- `rGamma__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022890 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10022890-0x10022938 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x100228c0 loads 4 bytes from a0 (arg0 at entry) +0x68.
  The `lw` at 0x100228fc loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `swc1` at 0x10022904 stores 4 bytes to [a0+280] +0x268.
  The `lw` at 0x1002290c loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x100228c8 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+104], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x8e7e0.
  The `jal` at 0x100228dc calls (unnamed) [0x10023520] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jalr` at 0x100228ec calls atof with a0=ret(0x10023520), a1=?, a2=?, a3=?.
  The `jal` at 0x10022914 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+280]+616, a2=?, a3=?.
  The `beq` branch at 0x1002291c targets 0x10022924 and is always taken.
  The return at 0x10022930 has v0 = ret(update__18VkwindowMainWindowGv).
- `restoreSize__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022940 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10022940-0x10022a7c (316 bytes).
  It occupies 316 bytes.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x118, including `lw` at 0x10022970, `lw` at 0x10022980, `lw` at 0x10022990.
  2 such `lw` accesses load 4 bytes from [a0+280] +0x128, including `lw` at 0x10022978, `lw` at 0x10022a00.
  The `sw` at 0x10022988 stores 4 bytes to [a0+280] +0x110.
  2 such `lw` accesses load 4 bytes from [a0+280] +0x12c, including `lw` at 0x10022998, `lw` at 0x10022a28.
  The `sw` at 0x100229a8 stores 4 bytes to [a0+280] +0x114.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x100229b0, `lw` at 0x100229d4.
  The `lw` at 0x100229b8 loads 4 bytes from a0 (arg0 at entry) +0x11c.
  The `lw` at 0x100229f0 loads 4 bytes from [a0+280] +0x110.
  The `lw` at 0x10022a18 loads 4 bytes from [a0+280] +0x114.
  The `jal` at 0x100229c8 calls clamp__18VkwindowMainWindowGiN21 [0x1006efb0] with a0=[sym(vkwindow)], a1=[a0+284], a2=0x1, a3=0x0, a4=0x8e730.
  The `jal` at 0x100229dc calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `jalr` at 0x10022a38 calls getTheErrorDialog__Gv with a0=?, a1=[[a0+280]+272], a2=?, a3=?.
  The `jal` at 0x10022a58 calls (unnamed) [0x100214d0] with a0=ret(getTheErrorDialog__Gv), a1=0x100941d0, a2=a1 at entry (arg1), a3=?.
  The `bne` branch at 0x10022a04 targets 0x10022a34, is taken when a1(=[[a0+280]+272]) != a2(=[[a0+280]+296]), and falls through when a1(=[[a0+280]+272]) == a2(=[[a0+280]+296]).
  The `beq` branch at 0x10022a2c targets 0x10022a60, is taken when a2(=[[a0+280]+276]) == a3(=[[a0+280]+300]), and falls through when a2(=[[a0+280]+276]) != a3(=[[a0+280]+300]).
  The `beq` branch at 0x10022a60 targets 0x10022a68 and is always taken.
  The return at 0x10022a74 has v0 = ?.
- `rgb10__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022a80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10022a80-0x10022ae8 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x10022ab0 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022ab4 stores 4 bytes to [a0+280] +0x134.
  The `lw` at 0x10022abc loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10022ac4 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+280], a2=a2 at entry (arg2), a3=0x8e5f0.
  The `beq` branch at 0x10022acc targets 0x10022ad4 and is always taken.
  The return at 0x10022ae0 has v0 = ret(update__18VkwindowMainWindowGv).
- `rgb12__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022af0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10022af0-0x10022b5c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x10022b24 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022b28 stores 4 bytes to [a0+280] +0x134.
  The `lw` at 0x10022b30 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10022b38 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x2, a2=[a0+280], a3=a2 at entry (arg2), a4=0x8e580.
  The `beq` branch at 0x10022b40 targets 0x10022b48 and is always taken.
  The return at 0x10022b54 has v0 = ret(update__18VkwindowMainWindowGv).
- `rgba10__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022b60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10022b60-0x10022bcc (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x10022b94 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022b98 stores 4 bytes to [a0+280] +0x134.
  The `lw` at 0x10022ba0 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10022ba8 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x1, a2=[a0+280], a3=a2 at entry (arg2), a4=0x8e510.
  The `beq` branch at 0x10022bb0 targets 0x10022bb8 and is always taken.
  The return at 0x10022bc4 has v0 = ret(update__18VkwindowMainWindowGv).
- `stacked__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022bd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10022bd0-0x10022c3c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x10022c04 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022c08 stores 4 bytes to [a0+280] +0x2ac.
  The `lw` at 0x10022c10 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10022c18 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x2, a2=[a0+280], a3=a2 at entry (arg2), a4=0x8e4a0.
  The `beq` branch at 0x10022c20 targets 0x10022c28 and is always taken.
  The return at 0x10022c34 has v0 = ret(update__18VkwindowMainWindowGv).
- `useGamma__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022c40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10022c40-0x10022cb0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x10022c70 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10022c78 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022c7c stores 4 bytes to [a0+280] +0x2c0.
  The `lw` at 0x10022c84 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10022c8c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+280], a3=0x8e430.
  The `beq` branch at 0x10022c94 targets 0x10022c9c and is always taken.
  The return at 0x10022ca8 has v0 = ret(update__18VkwindowMainWindowGv).
- `width__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022cb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10022cb0-0x10022d68 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0x10022ce0 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lw` at 0x10022d08 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022d10 stores 4 bytes to [a0+280] +0x110.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10022d18, `lw` at 0x10022d3c.
  The `lw` at 0x10022d20 loads 4 bytes from a0 (arg0 at entry) +0x11c.
  The `jal` at 0x10022ce8 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+124], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x8e3c0.
  The `jal` at 0x10022cfc calls (unnamed) [0x100234e0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10022d30 calls clamp__18VkwindowMainWindowGiN21 [0x1006efb0] with a0=[sym(vkwindow)], a1=[a0+284], a2=0x1, a3=0x0.
  The `jal` at 0x10022d44 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x10022d4c targets 0x10022d54 and is always taken.
  The return at 0x10022d60 has v0 = ret(update__18VkwindowMainWindowGv).
- `xLocked__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022d70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10022d70-0x10022ddc (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x10022da0 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022da8 stores 4 bytes to [a0+280] +0x148.
  The `lw` at 0x10022db0 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10022db8 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+280]+328, a2=a2 at entry (arg2), a3=0x8e300.
  The `beq` branch at 0x10022dc0 targets 0x10022dc8 and is always taken.
  The return at 0x10022dd4 has v0 = ret(update__18VkwindowMainWindowGv).
- `xOrigin__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022de0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10022de0-0x10022e98 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0x10022e10 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `lw` at 0x10022e38 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022e40 stores 4 bytes to [a0+280] +0x108.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10022e48, `lw` at 0x10022e6c.
  The `lw` at 0x10022e50 loads 4 bytes from a0 (arg0 at entry) +0x11c.
  The `jal` at 0x10022e18 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+128], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x8e290.
  The `jal` at 0x10022e2c calls (unnamed) [0x100234e0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10022e60 calls clamp__18VkwindowMainWindowGiN21 [0x1006efb0] with a0=[sym(vkwindow)], a1=[a0+284], a2=0x0, a3=0x1.
  The `jal` at 0x10022e74 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x10022e7c targets 0x10022e84 and is always taken.
  The return at 0x10022e90 has v0 = ret(update__18VkwindowMainWindowGv).
- `xPixel__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022ea0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10022ea0-0x10022f10 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x10022ed4 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022edc stores 4 bytes to [a0+280] +0x148.
  The `lw` at 0x10022ee4 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10022eec calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x1, a2=[a0+280]+328, a3=a2 at entry (arg2), a4=0x8e1d0.
  The `beq` branch at 0x10022ef4 targets 0x10022efc and is always taken.
  The return at 0x10022f08 has v0 = ret(update__18VkwindowMainWindowGv).
- `xTile__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022f10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10022f10-0x10022f80 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x10022f44 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022f4c stores 4 bytes to [a0+280] +0x148.
  The `lw` at 0x10022f54 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10022f5c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x2, a2=[a0+280]+328, a3=a2 at entry (arg2), a4=0x8e160.
  The `beq` branch at 0x10022f64 targets 0x10022f6c and is always taken.
  The return at 0x10022f78 has v0 = ret(update__18VkwindowMainWindowGv).
- `yLocked__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022f80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10022f80-0x10022fec (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x10022fb0 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022fb8 stores 4 bytes to [a0+280] +0x14c.
  The `lw` at 0x10022fc0 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10022fc8 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+280]+332, a2=a2 at entry (arg2), a3=0x8e0f0.
  The `beq` branch at 0x10022fd0 targets 0x10022fd8 and is always taken.
  The return at 0x10022fe4 has v0 = ret(update__18VkwindowMainWindowGv).
- `yOrigin__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022ff0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10022ff0-0x100230a8 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0x10023020 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lw` at 0x10023048 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10023050 stores 4 bytes to [a0+280] +0x10c.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10023058, `lw` at 0x1002307c.
  The `lw` at 0x10023060 loads 4 bytes from a0 (arg0 at entry) +0x11c.
  The `jal` at 0x10023028 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+132], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x8e080.
  The `jal` at 0x1002303c calls (unnamed) [0x100234e0] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10023070 calls clamp__18VkwindowMainWindowGiN21 [0x1006efb0] with a0=[sym(vkwindow)], a1=[a0+284], a2=0x0, a3=0x2.
  The `jal` at 0x10023084 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002308c targets 0x10023094 and is always taken.
  The return at 0x100230a0 has v0 = ret(update__18VkwindowMainWindowGv).
- `yPixel__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100230b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100230b0-0x10023120 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x100230e4 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x100230ec stores 4 bytes to [a0+280] +0x14c.
  The `lw` at 0x100230f4 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x100230fc calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x1, a2=[a0+280]+332, a3=a2 at entry (arg2), a4=0x8dfc0.
  The `beq` branch at 0x10023104 targets 0x1002310c and is always taken.
  The return at 0x10023118 has v0 = ret(update__18VkwindowMainWindowGv).
- `z__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10023120 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10023120-0x1002318c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x10023154 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10023158 stores 4 bytes to [a0+280] +0x134.
  The `lw` at 0x10023160 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10023168 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x3, a2=[a0+280], a3=a2 at entry (arg2), a4=0x8df50.
  The `beq` branch at 0x10023170 targets 0x10023178 and is always taken.
  The return at 0x10023184 has v0 = ret(update__18VkwindowMainWindowGv).
- `__ct__9DvpFormUIGPCcP10_WidgetRec` in `usr/gfx/ircombine` at 0x10023580 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10023580-0x10023604 (132 bytes).
  It occupies 132 bytes.
  The `sw` at 0x100235c0 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x100235b0 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100235d0 calls create__9DvpFormUIGP10_WidgetRec [0x10023720] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The return at 0x100235e8 has v0 = a0.
  The instructions from 0x100235f0 to 0x10023600 are not reached by any path from the entry, and their branches are not listed.
- `__ct__9DvpFormUIGPCc` in `usr/gfx/ircombine` at 0x10023610 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10023610-0x1002367c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x1002364c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1002363c calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10023660 has v0 = a0.
  The instructions from 0x10023668 to 0x10023678 are not reached by any path from the entry, and their branches are not listed.
- `__dt__9DvpFormUIGv` in `usr/gfx/ircombine` at 0x10023680 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10023680-0x10023714 (148 bytes).
  It occupies 148 bytes.
  The `sw` at 0x100236b4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x100236c4 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100236e4 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100236a4 targets 0x100236ec, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x100236d4 targets 0x100236ec, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x100236f8 has v0 = one of 0x8d9f0, ret(__dt__11VkComponentGv), ret(__dl__GPv).
  The instructions from 0x10023700 to 0x10023710 are not reached by any path from the entry, and their branches are not listed.
- `create__9DvpFormUIGP10_WidgetRec` in `usr/gfx/ircombine` at 0x10023720 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10023720-0x10027540 (15904 bytes).
  It occupies 15904 bytes.
  The `lw` at 0x10023760 loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from sym(xmFormWidgetClass) +0x0, including `lw` at 0x10023768, `lw` at 0x10024c2c.
  The `sw` at 0x1002379c stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `sw` at 0x100237a4 stores 4 bytes to a0 (arg0 at entry) +0x10.
  22 such `lw` accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0, including `lw` at 0x100237c4, `lw` at 0x10023bc4, `lw` at 0x100241b4.
  34 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x100237cc, `lw` at 0x100238f4, `lw` at 0x100239bc.
  The `sw` at 0x100238b4 stores 4 bytes to a0 (arg0 at entry) +0xbc.
  The `sw` at 0x1002393c stores 4 bytes to a0 (arg0 at entry) +0xcc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xcc, including `lw` at 0x10023944, `lw` at 0x10023978, `lw` at 0x10026b9c.
  The `sw` at 0x10023970 stores 4 bytes to a0 (arg0 at entry) +0xdc.
  The `sw` at 0x100239a4 stores 4 bytes to a0 (arg0 at entry) +0xd8.
  3 such `lw` accesses load 4 bytes from sym(xmPushButtonWidgetClass) +0x0, including `lw` at 0x100239b4, `lw` at 0x10024ed4, `lw` at 0x100267bc.
  The `sw` at 0x10023a90 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  The `lw` at 0x10023a98 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  9 such `lw` accesses load 4 bytes from sym(xmTextFieldWidgetClass) +0x0, including `lw` at 0x10023ac4, `lw` at 0x100244f4, `lw` at 0x10024628.
  The `sw` at 0x10023b90 stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `lw` at 0x10023b98 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `sw` at 0x10023cb4 stores 4 bytes to a0 (arg0 at entry) +0x50.
  4 such `lw` accesses load 4 bytes from sym(xmToggleButtonWidgetClass) +0x0, including `lw` at 0x10023cc4, `lw` at 0x10023df8, `lw` at 0x10024090.
  The `sw` at 0x10023dc4 stores 4 bytes to a0 (arg0 at entry) +0x78.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x78, including `lw` at 0x10023dcc, `lw` at 0x10023e74, `lw` at 0x10026c68.
  The `sw` at 0x10023f38 stores 4 bytes to a0 (arg0 at entry) +0x34.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x34, including `lw` at 0x10023f40, `lw` at 0x10026c90.
  The `sw` at 0x10023fe4 stores 4 bytes to a0 (arg0 at entry) +0xc4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc4, including `lw` at 0x10023fec, `lw` at 0x10024020, `lw` at 0x10024054.
  The `sw` at 0x10024018 stores 4 bytes to a0 (arg0 at entry) +0xe8.
  The `sw` at 0x1002404c stores 4 bytes to a0 (arg0 at entry) +0xe4.
  The `sw` at 0x10024080 stores 4 bytes to a0 (arg0 at entry) +0xf8.
  The `sw` at 0x10024180 stores 4 bytes to a0 (arg0 at entry) +0x40.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x10024188, `lw` at 0x10026d10.
  The `sw` at 0x100242c0 stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `sw` at 0x100243dc stores 4 bytes to a0 (arg0 at entry) +0x98.
  The `sw` at 0x100244e4 stores 4 bytes to a0 (arg0 at entry) +0xb0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x10024558, `lw` at 0x10026dac.
  The `sw` at 0x100245f4 stores 4 bytes to a0 (arg0 at entry) +0x38.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x100245fc, `lw` at 0x10026e54, `lw` at 0x100273fc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x98, including `lw` at 0x1002468c, `lw` at 0x10026de4.
  The `sw` at 0x10024728 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5c, including `lw` at 0x10024730, `lw` at 0x10026dcc, `lw` at 0x10026e7c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb0, including `lw` at 0x100247c0, `lw` at 0x10026dbc, `lw` at 0x10026df4.
  The `sw` at 0x1002485c stores 4 bytes to a0 (arg0 at entry) +0x68.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x68, including `lw` at 0x10024864, `lw` at 0x10026e04, `lw` at 0x10026ea4.
  The `sw` at 0x10024990 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The `sw` at 0x10024ae4 stores 4 bytes to a0 (arg0 at entry) +0x48.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x10024aec, `lw` at 0x10025a74, `lw` at 0x10026ecc.
  The `lw` at 0x10024b18 loads 4 bytes from sym(xmFrameWidgetClass) +0x0.
  The `sw` at 0x10024c1c stores 4 bytes to a0 (arg0 at entry) +0x90.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x90, including `lw` at 0x10024c34, `lw` at 0x1002575c, `lw` at 0x10026824.
  The `sw` at 0x10024ca0 stores 4 bytes to a0 (arg0 at entry) +0x8c.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c, including `lw` at 0x10024cb8, `lw` at 0x10024dc0, `lw` at 0x10024edc.
  The `sw` at 0x10024da8 stores 4 bytes to a0 (arg0 at entry) +0xb8.
  The `sw` at 0x10024ec4 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sw` at 0x10024fcc stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `lw` at 0x10024fd4 loads 4 bytes from a0 (arg0 at entry) +0x6c.
  The `sw` at 0x100250f8 stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x100251f4 stores 4 bytes to a0 (arg0 at entry) +0x4c.
  The `sw` at 0x100252fc stores 4 bytes to a0 (arg0 at entry) +0x94.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c, including `lw` at 0x10025370, `lw` at 0x1002568c, `lw` at 0x1002569c.
  The `sw` at 0x10025410 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x10025518 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `sw` at 0x10025604 stores 4 bytes to a0 (arg0 at entry) +0x70.
  The `lw` at 0x1002560c loads 4 bytes from a0 (arg0 at entry) +0xb8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x74, including `lw` at 0x1002561c, `lw` at 0x1002562c, `lw` at 0x10025644.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x58, including `lw` at 0x10025654, `lw` at 0x10025664, `lw` at 0x100256ec.
  The `lw` at 0x1002567c loads 4 bytes from a0 (arg0 at entry) +0x88.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0x100256c4, `lw` at 0x10025724, `lw` at 0x10025734.
  The `lw` at 0x100256dc loads 4 bytes from a0 (arg0 at entry) +0x94.
  The `lw` at 0x10025714 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `sw` at 0x100257d8 stores 4 bytes to a0 (arg0 at entry) +0xa0.
  The `sw` at 0x10025860 stores 4 bytes to a0 (arg0 at entry) +0xd4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd4, including `lw` at 0x10025868, `lw` at 0x1002589c, `lw` at 0x10026ef4.
  The `sw` at 0x10025894 stores 4 bytes to a0 (arg0 at entry) +0x108.
  The `sw` at 0x100258c8 stores 4 bytes to a0 (arg0 at entry) +0x10c.
  The `sw` at 0x10025950 stores 4 bytes to a0 (arg0 at entry) +0xd0.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd0, including `lw` at 0x10025958, `lw` at 0x1002598c, `lw` at 0x100259c0.
  The `sw` at 0x10025984 stores 4 bytes to a0 (arg0 at entry) +0xfc.
  The `sw` at 0x100259b8 stores 4 bytes to a0 (arg0 at entry) +0x100.
  The `sw` at 0x100259ec stores 4 bytes to a0 (arg0 at entry) +0x104.
  The `sw` at 0x10025b34 stores 4 bytes to a0 (arg0 at entry) +0xac.
  The `sw` at 0x10025c30 stores 4 bytes to a0 (arg0 at entry) +0x44.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x10025c38, `lw` at 0x1002713c, `lw` at 0x10027468.
  The `sw` at 0x10025d84 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `sw` at 0x10025e0c stores 4 bytes to a0 (arg0 at entry) +0xc8.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc8, including `lw` at 0x10025e14, `lw` at 0x10025e48, `lw` at 0x10025e7c.
  The `sw` at 0x10025e40 stores 4 bytes to a0 (arg0 at entry) +0xec.
  The `sw` at 0x10025e74 stores 4 bytes to a0 (arg0 at entry) +0xf4.
  The `sw` at 0x10025ea8 stores 4 bytes to a0 (arg0 at entry) +0xf0.
  The `sw` at 0x10025edc stores 4 bytes to a0 (arg0 at entry) +0x110.
  The `sw` at 0x10025f10 stores 4 bytes to a0 (arg0 at entry) +0xe0.
  The `sw` at 0x10026040 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  The `sw` at 0x1002616c stores 4 bytes to a0 (arg0 at entry) +0xb4.
  The `sw` at 0x1002628c stores 4 bytes to a0 (arg0 at entry) +0x24.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb4, including `lw` at 0x10026300, `lw` at 0x10026460, `lw` at 0x10026478.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0x10026318, `lw` at 0x1002732c.
  The `sw` at 0x100263c8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0x100263d0, `lw` at 0x1002748c.
  The `sw` at 0x10026528 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0x10026530, `lw` at 0x1002733c, `lw` at 0x1002734c.
  The `sw` at 0x10026658 stores 4 bytes to a0 (arg0 at entry) +0x84.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x84, including `lw` at 0x10026660, `lw` at 0x10027314, `lw` at 0x10027364.
  The `sw` at 0x10026788 stores 4 bytes to a0 (arg0 at entry) +0x80.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x80, including `lw` at 0x10026790, `lw` at 0x100269a0, `lw` at 0x1002739c.
  The `sw` at 0x100268f8 stores 4 bytes to a0 (arg0 at entry) +0x28.
  The `lw` at 0x10026900 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `sw` at 0x10026a50 stores 4 bytes to a0 (arg0 at entry) +0xc0.
  The `sw` at 0x10026b94 stores 4 bytes to a0 (arg0 at entry) +0x64.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9c, including `lw` at 0x10026c78, `lw` at 0x10026ca0, `lw` at 0x10026e2c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lw` at 0x10026edc, `lw` at 0x10027208, `lw` at 0x10027220.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xac, including `lw` at 0x10026f64, `lw` at 0x10027078, `lw` at 0x10027090.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x1002714c, `lw` at 0x1002715c, `lw` at 0x10027190.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x64, including `lw` at 0x100272dc, `lw` at 0x10027304, `lw` at 0x10027374.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc0, including `lw` at 0x10027384, `lw` at 0x100273d4.
  The `jalr` at 0x10023754 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultDvpFormUIResources__9DvpFormUI), a3=a3 at entry (arg3).
  The `jalr` at 0x10023784 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=sym(_XmStrings)+9052, a4=0x1, a5=0x0.
  The `jalr` at 0x100237b0 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=ret(XtVaCreateWidget), a2=a0 at entry (arg0), a3=a0 at entry (arg0).
  The `jalr` at 0x100238a4 calls XtVaCreateManagedWidget with a0=0x10094218, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x100238c4 calls __nw__GUi with a0=0x4c, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x1002390c calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10094230, a3=0x0, a4=0x0.
  The `jalr` at 0x10023960 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+204], a1=0x10094248, a2=sym(horizontalSyncCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10023994 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+204], a1=0x10094268, a2=sym(compositeSyncCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10023a80 calls XtVaCreateManagedWidget with a0=0x10094280, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10023ab0 calls XtAddCallback with a0=[a0+60], a1=sym(_XmStrings)+4683, a2=sym(channelBrowseCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10023b80 calls XtVaCreateManagedWidget with a0=0x10094298, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x1, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x10023bb0 calls XtAddCallback with a0=[a0+84], a1=sym(_XmStrings)+4683, a2=sym(formatCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10023ca4 calls XtVaCreateManagedWidget with a0=0x100942a8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10023db4 calls XtVaCreateManagedWidget with a0=0x100942b8, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10023de4 calls XtAddCallback with a0=[a0+120], a1=sym(_XmStrings)+10557, a2=sym(useGammaCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10023f28 calls XtVaCreateManagedWidget with a0=0x100942d0, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10023f58 calls XtAddCallback with a0=[a0+52], a1=sym(_XmStrings)+10557, a2=sym(alphaChannelCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10023f6c calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x10023fb4 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x100942e8, a3=0x0, a4=0x0.
  The `jalr` at 0x10024008 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+196], a1=0x10094300, a2=sym(progressiveCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002403c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+196], a1=0x10094318, a2=sym(interleavedCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10024070 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+196], a1=0x10094330, a2=sym(stackedCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10024170 calls XtVaCreateManagedWidget with a0=0x10094340, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x100241a0 calls XtAddCallback with a0=[a0+64], a1=sym(_XmStrings)+10557, a2=sym(channelEnableCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100242b0 calls XtVaCreateManagedWidget with a0=0x10094358, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x100243cc calls XtVaCreateManagedWidget with a0=0x10094368, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x100244d4 calls XtVaCreateManagedWidget with a0=0x10094378, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100245e4 calls XtVaCreateManagedWidget with a0=0x10094388, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10024614 calls XtAddCallback with a0=[a0+56], a1=sym(_XmStrings)+4683, a2=sym(bGammaCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10024718 calls XtVaCreateManagedWidget with a0=0x10094398, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10024748 calls XtAddCallback with a0=[a0+92], a1=sym(_XmStrings)+4683, a2=sym(gGammaCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002484c calls XtVaCreateManagedWidget with a0=0x100943a8, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002487c calls XtAddCallback with a0=[a0+104], a1=sym(_XmStrings)+4683, a2=sym(rGammaCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10024980 calls XtVaCreateManagedWidget with a0=0x100943b8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10024ad4 calls XtVaCreateManagedWidget with a0=0x100943c8, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+9609.
  The `jalr` at 0x10024b04 calls XtAddCallback with a0=[a0+72], a1=sym(_XmStrings)+10557, a2=sym(ditherCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10024c0c calls XtVaCreateManagedWidget with a0=0x100943e0, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x1, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x10024c90 calls XtVaCreateManagedWidget with a0=0x100943f8, a1=[sym(xmFormWidgetClass)], a2=[a0+144], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+9052, a6=0x1, a7=sym(_XmStrings)+5427.
  The `jalr` at 0x10024d98 calls XtVaCreateManagedWidget with a0=0x10094408, a1=[sym(xmLabelWidgetClass)], a2=[a0+140], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10024eb4 calls XtVaCreateManagedWidget with a0=0x10094418, a1=[sym(xmLabelWidgetClass)], a2=[a0+140], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10024fbc calls XtVaCreateManagedWidget with a0=0x10094428, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+140], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10024fec calls XtAddCallback with a0=[a0+108], a1=sym(_XmStrings)+4683, a2=sym(restoreSizeCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100250e8 calls XtVaCreateManagedWidget with a0=0x10094440, a1=[sym(xmLabelWidgetClass)], a2=[a0+140], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100251e4 calls XtVaCreateManagedWidget with a0=0x10094450, a1=[sym(xmLabelWidgetClass)], a2=[a0+140], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100252ec calls XtVaCreateManagedWidget with a0=0x10094460, a1=[sym(xmLabelWidgetClass)], a2=[a0+140], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10025400 calls XtVaCreateManagedWidget with a0=0x10094470, a1=[sym(xmLabelWidgetClass)], a2=[a0+140], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10025508 calls XtVaCreateManagedWidget with a0=0x10094480, a1=[sym(xmLabelWidgetClass)], a2=[a0+140], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100255f4 calls XtVaCreateManagedWidget with a0=0x10094498, a1=[sym(xmLabelWidgetClass)], a2=[a0+140], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10025638 calls XtVaSetValues with a0=[a0+184], a1=sym(_XmStrings)+10305, a2=[a0+116], a3=sym(_XmStrings)+7562, a4=[a0+116], a5=0x0.
  The `jalr` at 0x10025670 calls XtVaSetValues with a0=[a0+116], a1=sym(_XmStrings)+10305, a2=[a0+88], a3=sym(_XmStrings)+7562, a4=[a0+88], a5=0x0.
  The `jalr` at 0x100256a8 calls XtVaSetValues with a0=[a0+136], a1=sym(_XmStrings)+10305, a2=[a0+76], a3=sym(_XmStrings)+7562, a4=[a0+76], a5=0x0.
  The `jalr` at 0x100256d0 calls XtVaSetValues with a0=[a0+76], a1=sym(_XmStrings)+10305, a2=[a0+112], a3=0x0.
  The `jalr` at 0x10025708 calls XtVaSetValues with a0=[a0+148], a1=sym(_XmStrings)+10305, a2=[a0+88], a3=sym(_XmStrings)+7562, a4=[a0+88], a5=0x0.
  The `jalr` at 0x10025740 calls XtVaSetValues with a0=[a0+164], a1=sym(_XmStrings)+10305, a2=[a0+112], a3=sym(_XmStrings)+7562, a4=[a0+112], a5=0x0.
  The `jalr` at 0x100257c8 calls XtVaCreateManagedWidget with a0=0x100944a8, a1=[sym(xmLabelWidgetClass)], a2=[a0+144], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+5427.
  The `jalr` at 0x100257e8 calls __nw__GUi with a0=0x4c, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x10025830 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x100944c0, a3=0x0, a4=0x0.
  The `jalr` at 0x10025884 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+212], a1=0x100944d8, a2=sym(yLockedCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100258b8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+212], a1=0x100944e8, a2=sym(yPixelCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100258d8 calls __nw__GUi with a0=0x4c, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10025920 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x100944f8, a3=0x0, a4=0x0.
  The `jalr` at 0x10025974 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+208], a1=0x10094510, a2=sym(xLockedCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100259a8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+208], a1=0x10094520, a2=sym(xPixelCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100259dc calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+208], a1=0x10094530, a2=sym(xTileCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10025b24 calls XtVaCreateManagedWidget with a0=0x10094540, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10025c20 calls XtVaCreateManagedWidget with a0=0x10094550, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x4, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x10025c50 calls XtAddCallback with a0=[a0+68], a1=sym(_XmStrings)+4683, a2=sym(cursorPriorityCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10025d74 calls XtVaCreateManagedWidget with a0=0x10094568, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10025d94 calls __nw__GUi with a0=0x4c, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x10025ddc calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10094580, a3=0x0, a4=0x0.
  The `jalr` at 0x10025e30 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+200], a1=0x10094598, a2=sym(rgb10Callback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10025e64 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+200], a1=0x100945a8, a2=sym(rgba10Callback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10025e98 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+200], a1=0x100945b8, a2=sym(rgb12Callback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10025ecc calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+200], a1=0x100945c8, a2=sym(zCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10025f00 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+200], a1=0x100945d8, a2=sym(fsCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10026030 calls XtVaCreateManagedWidget with a0=0x100945e8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002615c calls XtVaCreateManagedWidget with a0=0x10094600, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x2, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002627c calls XtVaCreateManagedWidget with a0=0x10094610, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x2, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x100263b8 calls XtVaCreateManagedWidget with a0=0x10094620, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100263e8 calls XtAddCallback with a0=[a0+96], a1=sym(_XmStrings)+4683, a2=sym(heightCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10026518 calls XtVaCreateManagedWidget with a0=0x10094630, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10026548 calls XtAddCallback with a0=[a0+124], a1=sym(_XmStrings)+4683, a2=sym(widthCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10026648 calls XtVaCreateManagedWidget with a0=0x10094640, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10026678 calls XtAddCallback with a0=[a0+132], a1=sym(_XmStrings)+4683, a2=sym(yOriginCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10026778 calls XtVaCreateManagedWidget with a0=0x10094650, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100267a8 calls XtAddCallback with a0=[a0+128], a1=sym(_XmStrings)+4683, a2=sym(xOriginCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100268e8 calls XtVaCreateManagedWidget with a0=0x10094660, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10026918 calls XtAddCallback with a0=[a0+40], a1=sym(_XmStrings)+4683, a2=sym(closeChannelCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10026a40 calls XtVaCreateManagedWidget with a0=0x100aa450, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x2, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10026b84 calls XtVaCreateManagedWidget with a0=0x10094678, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+4724, a6=0x0, a7=sym(_XmStrings)+7513.
  The `jalr` at 0x10026ba4 calls baseWidget__10VkMenuItemCGv with a0=[a0+204], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x10026c5c calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x1, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x1, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x10026c84 calls XtVaSetValues with a0=[a0+120], a1=sym(_XmStrings)+10305, a2=[a0+156], a3=0x0.
  The `jalr` at 0x10026cac calls XtVaSetValues with a0=[a0+52], a1=sym(_XmStrings)+10305, a2=[a0+156], a3=0x0.
  The `jalr` at 0x10026cc0 calls baseWidget__10VkMenuItemCGv with a0=[a0+196], a1=?, a2=?, a3=?.
  The `jalr` at 0x10026da0 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x1, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x10026dd8 calls XtVaSetValues with a0=[a0+32], a1=sym(_XmStrings)+10305, a2=[a0+176], a3=sym(_XmStrings)+7562, a4=[a0+92], a5=0x0.
  The `jalr` at 0x10026e10 calls XtVaSetValues with a0=[a0+152], a1=sym(_XmStrings)+10305, a2=[a0+176], a3=sym(_XmStrings)+7562, a4=[a0+104], a5=0x0.
  The `jalr` at 0x10026e48 calls XtVaSetValues with a0=[a0+176], a1=sym(_XmStrings)+10305, a2=[a0+156], a3=sym(_XmStrings)+7562, a4=[a0+156], a5=0x0.
  The `jalr` at 0x10026e70 calls XtVaSetValues with a0=[a0+56], a1=sym(_XmStrings)+10305, a2=[a0+156], a3=0x0.
  The `jalr` at 0x10026e98 calls XtVaSetValues with a0=[a0+92], a1=sym(_XmStrings)+10305, a2=[a0+156], a3=0x0.
  The `jalr` at 0x10026ec0 calls XtVaSetValues with a0=[a0+104], a1=sym(_XmStrings)+10305, a2=[a0+156], a3=0x0.
  The `jalr` at 0x10026ee8 calls XtVaSetValues with a0=[a0+72], a1=sym(_XmStrings)+10305, a2=[a0+168], a3=0x0.
  The `jalr` at 0x10026efc calls baseWidget__10VkMenuItemCGv with a0=[a0+212], a1=?, a2=?, a3=?.
  The `jalr` at 0x10026f14 calls baseWidget__10VkMenuItemCGv with a0=[a0+208], a1=?, a2=?, a3=?.
  The `jalr` at 0x10027014 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x10027028 calls baseWidget__10VkMenuItemCGv with a0=[a0+208], a1=?, a2=?, a3=?.
  The `jalr` at 0x10027130 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x10027168 calls XtVaSetValues with a0=[a0+68], a1=sym(_XmStrings)+10305, a2=[a0+44], a3=sym(_XmStrings)+7562, a4=[a0+44], a5=0x0.
  The `jalr` at 0x1002717c calls baseWidget__10VkMenuItemCGv with a0=[a0+200], a1=?, a2=?, a3=?.
  The `jalr` at 0x100271a4 calls XtVaSetValues with a0=[a0+44], a1=sym(_XmStrings)+7562, a2=ret(baseWidget__10VkMenuItemCGv), a3=0x0.
  The `jalr` at 0x100271b8 calls baseWidget__10VkMenuItemCGv with a0=[a0+200], a1=?, a2=?, a3=?.
  The `jalr` at 0x100272c0 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x100272e8 calls XtVaSetValues with a0=[a0+168], a1=sym(_XmStrings)+10305, a2=[a0+100], a3=0x0.
  The `jalr` at 0x10027320 calls XtVaSetValues with a0=[a0+180], a1=sym(_XmStrings)+10305, a2=[a0+100], a3=sym(_XmStrings)+7562, a4=[a0+132], a5=0x0.
  The `jalr` at 0x10027358 calls XtVaSetValues with a0=[a0+36], a1=sym(_XmStrings)+10305, a2=[a0+124], a3=sym(_XmStrings)+7562, a4=[a0+124], a5=0x0.
  The `jalr` at 0x10027390 calls XtVaSetValues with a0=[a0+132], a1=sym(_XmStrings)+10305, a2=[a0+100], a3=sym(_XmStrings)+7562, a4=[a0+192], a5=0x0.
  The `jalr` at 0x100273c8 calls XtVaSetValues with a0=[a0+128], a1=sym(_XmStrings)+10305, a2=[a0+100], a3=sym(_XmStrings)+7562, a4=[a0+100], a5=0x0.
  The `jalr` at 0x100273f0 calls XtVaSetValues with a0=[a0+192], a1=sym(_XmStrings)+10305, a2=[a0+100], a3=0x0.
  The `jalr` at 0x10027414 calls XtAddCallback with a0=[a0+56], a1=sym(_XmStrings)+7765, a2=sym(bGammaCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10027438 calls XtAddCallback with a0=[a0+92], a1=sym(_XmStrings)+7765, a2=sym(gGammaCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002745c calls XtAddCallback with a0=[a0+104], a1=sym(_XmStrings)+7765, a2=sym(rGammaCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10027480 calls XtAddCallback with a0=[a0+68], a1=sym(_XmStrings)+7765, a2=sym(cursorPriorityCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100274a4 calls XtAddCallback with a0=[a0+96], a1=sym(_XmStrings)+7765, a2=sym(heightCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100274c8 calls XtAddCallback with a0=[a0+124], a1=sym(_XmStrings)+7765, a2=sym(widthCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100274ec calls XtAddCallback with a0=[a0+132], a1=sym(_XmStrings)+7765, a2=sym(yOriginCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10027510 calls XtAddCallback with a0=[a0+128], a1=sym(_XmStrings)+7765, a2=sym(xOriginCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `beq` branch at 0x100238dc targets 0x10023930, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10023928 targets 0x10023934 and is always taken.
  The `beq` branch at 0x10023f84 targets 0x10023fd8, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10023fd0 targets 0x10023fdc and is always taken.
  The `beq` branch at 0x10025800 targets 0x10025854, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1002584c targets 0x10025858 and is always taken.
  The `beq` branch at 0x100258f0 targets 0x10025944, is taken when a3(=ret(__nw__GUi)) == 0, and falls through when a3(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1002593c targets 0x10025948 and is always taken.
  The `beq` branch at 0x10025dac targets 0x10025e00, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10025df8 targets 0x10025e04 and is always taken.
  The return at 0x10027524 has v0 = ret(XtAddCallback).
  The instructions from 0x1002752c to 0x1002753c are not reached by any path from the entry, and their branches are not listed.
- `className__9DvpFormUIGv` in `usr/gfx/ircombine` at 0x10027540 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027540-0x10027580 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10027558 loads 4 bytes from abs 0x100a90d4.
  The `beq` branch at 0x10027564 targets 0x1002756c and is always taken.
  The return at 0x10027578 has v0 = 0x10094688.
- `alphaChannel__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027580 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027580-0x100275ac (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10027594 targets 0x1002759c and is always taken.
  The return at 0x100275a4 has v0 = ?.
- `bGamma__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100275b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100275b0-0x100275dc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100275c4 targets 0x100275cc and is always taken.
  The return at 0x100275d4 has v0 = ?.
- `channelBrowse__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100275e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100275e0-0x1002760c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100275f4 targets 0x100275fc and is always taken.
  The return at 0x10027604 has v0 = ?.
- `channelEnable__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027610 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027610-0x1002763c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10027624 targets 0x1002762c and is always taken.
  The return at 0x10027634 has v0 = ?.
- `closeChannel__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027640 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027640-0x1002766c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10027654 targets 0x1002765c and is always taken.
  The return at 0x10027664 has v0 = ?.
- `compositeSync__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027670 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027670-0x1002769c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10027684 targets 0x1002768c and is always taken.
  The return at 0x10027694 has v0 = ?.
- `cursorPriority__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100276a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100276a0-0x100276cc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100276b4 targets 0x100276bc and is always taken.
  The return at 0x100276c4 has v0 = ?.
- `dither__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100276d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100276d0-0x100276fc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100276e4 targets 0x100276ec and is always taken.
  The return at 0x100276f4 has v0 = ?.
- `format__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027700 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027700-0x1002772c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10027714 targets 0x1002771c and is always taken.
  The return at 0x10027724 has v0 = ?.
- `fs__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027730 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027730-0x1002775c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10027744 targets 0x1002774c and is always taken.
  The return at 0x10027754 has v0 = ?.
- `gGamma__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027760 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027760-0x1002778c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10027774 targets 0x1002777c and is always taken.
  The return at 0x10027784 has v0 = ?.
- `height__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027790 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027790-0x100277bc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100277a4 targets 0x100277ac and is always taken.
  The return at 0x100277b4 has v0 = ?.
- `horizontalSync__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100277c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100277c0-0x100277ec (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100277d4 targets 0x100277dc and is always taken.
  The return at 0x100277e4 has v0 = ?.
- `interleaved__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100277f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100277f0-0x1002781c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10027804 targets 0x1002780c and is always taken.
  The return at 0x10027814 has v0 = ?.
- `progressive__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027820 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027820-0x1002784c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10027834 targets 0x1002783c and is always taken.
  The return at 0x10027844 has v0 = ?.
- `rGamma__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027850 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027850-0x1002787c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10027864 targets 0x1002786c and is always taken.
  The return at 0x10027874 has v0 = ?.
- `restoreSize__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027880 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027880-0x100278ac (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10027894 targets 0x1002789c and is always taken.
  The return at 0x100278a4 has v0 = ?.
- `rgb10__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100278b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100278b0-0x100278dc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100278c4 targets 0x100278cc and is always taken.
  The return at 0x100278d4 has v0 = ?.
- `rgb12__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100278e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100278e0-0x1002790c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100278f4 targets 0x100278fc and is always taken.
  The return at 0x10027904 has v0 = ?.
- `rgba10__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027910-0x1002793c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10027924 targets 0x1002792c and is always taken.
  The return at 0x10027934 has v0 = ?.
- `stacked__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027940 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027940-0x1002796c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10027954 targets 0x1002795c and is always taken.
  The return at 0x10027964 has v0 = ?.
- `useGamma__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027970 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027970-0x1002799c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10027984 targets 0x1002798c and is always taken.
  The return at 0x10027994 has v0 = ?.
- `width__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100279a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100279a0-0x100279cc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100279b4 targets 0x100279bc and is always taken.
  The return at 0x100279c4 has v0 = ?.
- `xLocked__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100279d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100279d0-0x100279fc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100279e4 targets 0x100279ec and is always taken.
  The return at 0x100279f4 has v0 = ?.
- `xOrigin__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027a00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027a00-0x10027a2c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10027a14 targets 0x10027a1c and is always taken.
  The return at 0x10027a24 has v0 = ?.
- `xPixel__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027a30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027a30-0x10027a5c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10027a44 targets 0x10027a4c and is always taken.
  The return at 0x10027a54 has v0 = ?.
- `xTile__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027a60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027a60-0x10027a8c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10027a74 targets 0x10027a7c and is always taken.
  The return at 0x10027a84 has v0 = ?.
- `yLocked__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027a90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027a90-0x10027abc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10027aa4 targets 0x10027aac and is always taken.
  The return at 0x10027ab4 has v0 = ?.
- `yOrigin__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027ac0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027ac0-0x10027aec (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10027ad4 targets 0x10027adc and is always taken.
  The return at 0x10027ae4 has v0 = ?.
- `yPixel__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027af0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027af0-0x10027b1c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10027b04 targets 0x10027b0c and is always taken.
  The return at 0x10027b14 has v0 = ?.
- `z__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027b20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027b20-0x10027b4c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10027b34 targets 0x10027b3c and is always taken.
  The return at 0x10027b44 has v0 = ?.
- `alphaChannelCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10027b50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027b50-0x10027bc8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10027b80, `lw` at 0x10027b9c.
  The `lw` at 0x10027b84 loads 4 bytes from [a1+8] +0x9c.
  The `lw` at 0x10027ba0 loads 4 bytes from [a1+8] +0xa4.
  The `jalr` at 0x10027ba4 calls (unknown callee) with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x89520.
  The `beq` branch at 0x10027bac targets 0x10027bb4 and is always taken.
  The return at 0x10027bc0 has v0 = ret(?).
- `bGammaCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10027bd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027bd0-0x10027c48 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10027c00, `lw` at 0x10027c1c.
  The `lw` at 0x10027c04 loads 4 bytes from [a1+8] +0xa8.
  The `lw` at 0x10027c20 loads 4 bytes from [a1+8] +0xb0.
  The `jalr` at 0x10027c24 calls (unknown callee) with a0=([[a1+8]+168] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x894a0.
  The `beq` branch at 0x10027c2c targets 0x10027c34 and is always taken.
  The return at 0x10027c40 has v0 = ret(?).
- `channelBrowseCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10027c50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027c50-0x10027cc8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10027c80, `lw` at 0x10027c9c.
  The `lw` at 0x10027c84 loads 4 bytes from [a1+8] +0xb4.
  The `lw` at 0x10027ca0 loads 4 bytes from [a1+8] +0xbc.
  The `jalr` at 0x10027ca4 calls (unknown callee) with a0=([[a1+8]+180] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x89420.
  The `beq` branch at 0x10027cac targets 0x10027cb4 and is always taken.
  The return at 0x10027cc0 has v0 = ret(?).
- `channelEnableCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10027cd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027cd0-0x10027d48 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10027d00, `lw` at 0x10027d1c.
  The `lw` at 0x10027d04 loads 4 bytes from [a1+8] +0xc0.
  The `lw` at 0x10027d20 loads 4 bytes from [a1+8] +0xc8.
  The `jalr` at 0x10027d24 calls (unknown callee) with a0=([[a1+8]+192] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x893a0.
  The `beq` branch at 0x10027d2c targets 0x10027d34 and is always taken.
  The return at 0x10027d40 has v0 = ret(?).
- `closeChannelCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10027d50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027d50-0x10027dc8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10027d80, `lw` at 0x10027d9c.
  The `lw` at 0x10027d84 loads 4 bytes from [a1+8] +0xcc.
  The `lw` at 0x10027da0 loads 4 bytes from [a1+8] +0xd4.
  The `jalr` at 0x10027da4 calls (unknown callee) with a0=([[a1+8]+204] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x89320.
  The `beq` branch at 0x10027dac targets 0x10027db4 and is always taken.
  The return at 0x10027dc0 has v0 = ret(?).
- `compositeSyncCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10027dd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027dd0-0x10027e48 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10027e00, `lw` at 0x10027e1c.
  The `lw` at 0x10027e04 loads 4 bytes from [a1+8] +0xd8.
  The `lw` at 0x10027e20 loads 4 bytes from [a1+8] +0xe0.
  The `jalr` at 0x10027e24 calls (unknown callee) with a0=([[a1+8]+216] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x892a0.
  The `beq` branch at 0x10027e2c targets 0x10027e34 and is always taken.
  The return at 0x10027e40 has v0 = ret(?).
- `cursorPriorityCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10027e50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027e50-0x10027ec8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10027e80, `lw` at 0x10027e9c.
  The `lw` at 0x10027e84 loads 4 bytes from [a1+8] +0xe4.
  The `lw` at 0x10027ea0 loads 4 bytes from [a1+8] +0xec.
  The `jalr` at 0x10027ea4 calls (unknown callee) with a0=([[a1+8]+228] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x89220.
  The `beq` branch at 0x10027eac targets 0x10027eb4 and is always taken.
  The return at 0x10027ec0 has v0 = ret(?).
- `ditherCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10027ed0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027ed0-0x10027f48 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10027f00, `lw` at 0x10027f1c.
  The `lw` at 0x10027f04 loads 4 bytes from [a1+8] +0xf0.
  The `lw` at 0x10027f20 loads 4 bytes from [a1+8] +0xf8.
  The `jalr` at 0x10027f24 calls (unknown callee) with a0=([[a1+8]+240] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x891a0.
  The `beq` branch at 0x10027f2c targets 0x10027f34 and is always taken.
  The return at 0x10027f40 has v0 = ret(?).
- `formatCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10027f50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027f50-0x10027fc8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10027f80, `lw` at 0x10027f9c.
  The `lw` at 0x10027f84 loads 4 bytes from [a1+8] +0xfc.
  The `lw` at 0x10027fa0 loads 4 bytes from [a1+8] +0x104.
  The `jalr` at 0x10027fa4 calls (unknown callee) with a0=([[a1+8]+252] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x89120.
  The `beq` branch at 0x10027fac targets 0x10027fb4 and is always taken.
  The return at 0x10027fc0 has v0 = ret(?).
- `fsCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10027fd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10027fd0-0x10028048 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10028000, `lw` at 0x1002801c.
  The `lw` at 0x10028004 loads 4 bytes from [a1+8] +0x108.
  The `lw` at 0x10028020 loads 4 bytes from [a1+8] +0x110.
  The `jalr` at 0x10028024 calls (unknown callee) with a0=([[a1+8]+264] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x890a0.
  The `beq` branch at 0x1002802c targets 0x10028034 and is always taken.
  The return at 0x10028040 has v0 = ret(?).
- `gGammaCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10028050 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10028050-0x100280c8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10028080, `lw` at 0x1002809c.
  The `lw` at 0x10028084 loads 4 bytes from [a1+8] +0x114.
  The `lw` at 0x100280a0 loads 4 bytes from [a1+8] +0x11c.
  The `jalr` at 0x100280a4 calls (unknown callee) with a0=([[a1+8]+276] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x89020.
  The `beq` branch at 0x100280ac targets 0x100280b4 and is always taken.
  The return at 0x100280c0 has v0 = ret(?).
- `heightCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100280d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100280d0-0x10028148 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10028100, `lw` at 0x1002811c.
  The `lw` at 0x10028104 loads 4 bytes from [a1+8] +0x120.
  The `lw` at 0x10028120 loads 4 bytes from [a1+8] +0x128.
  The `jalr` at 0x10028124 calls (unknown callee) with a0=([[a1+8]+288] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88fa0.
  The `beq` branch at 0x1002812c targets 0x10028134 and is always taken.
  The return at 0x10028140 has v0 = ret(?).
- `horizontalSyncCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10028150 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10028150-0x100281c8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10028180, `lw` at 0x1002819c.
  The `lw` at 0x10028184 loads 4 bytes from [a1+8] +0x12c.
  The `lw` at 0x100281a0 loads 4 bytes from [a1+8] +0x134.
  The `jalr` at 0x100281a4 calls (unknown callee) with a0=([[a1+8]+300] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88f20.
  The `beq` branch at 0x100281ac targets 0x100281b4 and is always taken.
  The return at 0x100281c0 has v0 = ret(?).
- `interleavedCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100281d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100281d0-0x10028248 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10028200, `lw` at 0x1002821c.
  The `lw` at 0x10028204 loads 4 bytes from [a1+8] +0x138.
  The `lw` at 0x10028220 loads 4 bytes from [a1+8] +0x140.
  The `jalr` at 0x10028224 calls (unknown callee) with a0=([[a1+8]+312] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88ea0.
  The `beq` branch at 0x1002822c targets 0x10028234 and is always taken.
  The return at 0x10028240 has v0 = ret(?).
- `progressiveCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10028250 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10028250-0x100282c8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10028280, `lw` at 0x1002829c.
  The `lw` at 0x10028284 loads 4 bytes from [a1+8] +0x144.
  The `lw` at 0x100282a0 loads 4 bytes from [a1+8] +0x14c.
  The `jalr` at 0x100282a4 calls (unknown callee) with a0=([[a1+8]+324] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88e20.
  The `beq` branch at 0x100282ac targets 0x100282b4 and is always taken.
  The return at 0x100282c0 has v0 = ret(?).
- `rGammaCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100282d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100282d0-0x10028348 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10028300, `lw` at 0x1002831c.
  The `lw` at 0x10028304 loads 4 bytes from [a1+8] +0x150.
  The `lw` at 0x10028320 loads 4 bytes from [a1+8] +0x158.
  The `jalr` at 0x10028324 calls (unknown callee) with a0=([[a1+8]+336] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88da0.
  The `beq` branch at 0x1002832c targets 0x10028334 and is always taken.
  The return at 0x10028340 has v0 = ret(?).
- `restoreSizeCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10028350 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10028350-0x100283c8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10028380, `lw` at 0x1002839c.
  The `lw` at 0x10028384 loads 4 bytes from [a1+8] +0x15c.
  The `lw` at 0x100283a0 loads 4 bytes from [a1+8] +0x164.
  The `jalr` at 0x100283a4 calls (unknown callee) with a0=([[a1+8]+348] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88d20.
  The `beq` branch at 0x100283ac targets 0x100283b4 and is always taken.
  The return at 0x100283c0 has v0 = ret(?).
- `rgb10Callback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100283d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100283d0-0x10028448 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10028400, `lw` at 0x1002841c.
  The `lw` at 0x10028404 loads 4 bytes from [a1+8] +0x168.
  The `lw` at 0x10028420 loads 4 bytes from [a1+8] +0x170.
  The `jalr` at 0x10028424 calls (unknown callee) with a0=([[a1+8]+360] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88ca0.
  The `beq` branch at 0x1002842c targets 0x10028434 and is always taken.
  The return at 0x10028440 has v0 = ret(?).
- `rgb12Callback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10028450 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10028450-0x100284c8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10028480, `lw` at 0x1002849c.
  The `lw` at 0x10028484 loads 4 bytes from [a1+8] +0x174.
  The `lw` at 0x100284a0 loads 4 bytes from [a1+8] +0x17c.
  The `jalr` at 0x100284a4 calls (unknown callee) with a0=([[a1+8]+372] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88c20.
  The `beq` branch at 0x100284ac targets 0x100284b4 and is always taken.
  The return at 0x100284c0 has v0 = ret(?).
- `rgba10Callback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100284d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100284d0-0x10028548 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10028500, `lw` at 0x1002851c.
  The `lw` at 0x10028504 loads 4 bytes from [a1+8] +0x180.
  The `lw` at 0x10028520 loads 4 bytes from [a1+8] +0x188.
  The `jalr` at 0x10028524 calls (unknown callee) with a0=([[a1+8]+384] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88ba0.
  The `beq` branch at 0x1002852c targets 0x10028534 and is always taken.
  The return at 0x10028540 has v0 = ret(?).
- `stackedCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10028550 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10028550-0x100285c8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10028580, `lw` at 0x1002859c.
  The `lw` at 0x10028584 loads 4 bytes from [a1+8] +0x18c.
  The `lw` at 0x100285a0 loads 4 bytes from [a1+8] +0x194.
  The `jalr` at 0x100285a4 calls (unknown callee) with a0=([[a1+8]+396] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88b20.
  The `beq` branch at 0x100285ac targets 0x100285b4 and is always taken.
  The return at 0x100285c0 has v0 = ret(?).
- `useGammaCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100285d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100285d0-0x10028648 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10028600, `lw` at 0x1002861c.
  The `lw` at 0x10028604 loads 4 bytes from [a1+8] +0x198.
  The `lw` at 0x10028620 loads 4 bytes from [a1+8] +0x1a0.
  The `jalr` at 0x10028624 calls (unknown callee) with a0=([[a1+8]+408] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88aa0.
  The `beq` branch at 0x1002862c targets 0x10028634 and is always taken.
  The return at 0x10028640 has v0 = ret(?).
- `widthCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10028650 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10028650-0x100286c8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10028680, `lw` at 0x1002869c.
  The `lw` at 0x10028684 loads 4 bytes from [a1+8] +0x1a4.
  The `lw` at 0x100286a0 loads 4 bytes from [a1+8] +0x1ac.
  The `jalr` at 0x100286a4 calls (unknown callee) with a0=([[a1+8]+420] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88a20.
  The `beq` branch at 0x100286ac targets 0x100286b4 and is always taken.
  The return at 0x100286c0 has v0 = ret(?).
- `xLockedCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100286d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100286d0-0x10028748 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10028700, `lw` at 0x1002871c.
  The `lw` at 0x10028704 loads 4 bytes from [a1+8] +0x1b0.
  The `lw` at 0x10028720 loads 4 bytes from [a1+8] +0x1b8.
  The `jalr` at 0x10028724 calls (unknown callee) with a0=([[a1+8]+432] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x889a0.
  The `beq` branch at 0x1002872c targets 0x10028734 and is always taken.
  The return at 0x10028740 has v0 = ret(?).
- `xOriginCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10028750 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10028750-0x100287c8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10028780, `lw` at 0x1002879c.
  The `lw` at 0x10028784 loads 4 bytes from [a1+8] +0x1bc.
  The `lw` at 0x100287a0 loads 4 bytes from [a1+8] +0x1c4.
  The `jalr` at 0x100287a4 calls (unknown callee) with a0=([[a1+8]+444] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88920.
  The `beq` branch at 0x100287ac targets 0x100287b4 and is always taken.
  The return at 0x100287c0 has v0 = ret(?).
- `xPixelCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100287d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100287d0-0x10028848 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10028800, `lw` at 0x1002881c.
  The `lw` at 0x10028804 loads 4 bytes from [a1+8] +0x1c8.
  The `lw` at 0x10028820 loads 4 bytes from [a1+8] +0x1d0.
  The `jalr` at 0x10028824 calls (unknown callee) with a0=([[a1+8]+456] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x888a0.
  The `beq` branch at 0x1002882c targets 0x10028834 and is always taken.
  The return at 0x10028840 has v0 = ret(?).
- `xTileCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10028850 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10028850-0x100288c8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10028880, `lw` at 0x1002889c.
  The `lw` at 0x10028884 loads 4 bytes from [a1+8] +0x1d4.
  The `lw` at 0x100288a0 loads 4 bytes from [a1+8] +0x1dc.
  The `jalr` at 0x100288a4 calls (unknown callee) with a0=([[a1+8]+468] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88820.
  The `beq` branch at 0x100288ac targets 0x100288b4 and is always taken.
  The return at 0x100288c0 has v0 = ret(?).
- `yLockedCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100288d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100288d0-0x10028948 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10028900, `lw` at 0x1002891c.
  The `lw` at 0x10028904 loads 4 bytes from [a1+8] +0x1e0.
  The `lw` at 0x10028920 loads 4 bytes from [a1+8] +0x1e8.
  The `jalr` at 0x10028924 calls (unknown callee) with a0=([[a1+8]+480] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x887a0.
  The `beq` branch at 0x1002892c targets 0x10028934 and is always taken.
  The return at 0x10028940 has v0 = ret(?).
- `yOriginCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10028950 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10028950-0x100289c8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10028980, `lw` at 0x1002899c.
  The `lw` at 0x10028984 loads 4 bytes from [a1+8] +0x1ec.
  The `lw` at 0x100289a0 loads 4 bytes from [a1+8] +0x1f4.
  The `jalr` at 0x100289a4 calls (unknown callee) with a0=([[a1+8]+492] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88720.
  The `beq` branch at 0x100289ac targets 0x100289b4 and is always taken.
  The return at 0x100289c0 has v0 = ret(?).
- `yPixelCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100289d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100289d0-0x10028a48 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10028a00, `lw` at 0x10028a1c.
  The `lw` at 0x10028a04 loads 4 bytes from [a1+8] +0x1f8.
  The `lw` at 0x10028a20 loads 4 bytes from [a1+8] +0x200.
  The `jalr` at 0x10028a24 calls (unknown callee) with a0=([[a1+8]+504] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x886a0.
  The `beq` branch at 0x10028a2c targets 0x10028a34 and is always taken.
  The return at 0x10028a40 has v0 = ret(?).
- `zCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10028a50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10028a50-0x10028ac8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10028a80, `lw` at 0x10028a9c.
  The `lw` at 0x10028a84 loads 4 bytes from [a1+8] +0x204.
  The `lw` at 0x10028aa0 loads 4 bytes from [a1+8] +0x20c.
  The `jalr` at 0x10028aa4 calls (unknown callee) with a0=([[a1+8]+516] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88620.
  The `beq` branch at 0x10028aac targets 0x10028ab4 and is always taken.
  The return at 0x10028ac0 has v0 = ret(?).
- `__ct__11EncoderFormGPCcP10_WidgetRec` in `usr/gfx/ircombine` at 0x10028b00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10028b00-0x10028b84 (132 bytes).
  It occupies 132 bytes.
  The `sw` at 0x10028b44 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x10028b54 stores 4 bytes to a0 (arg0 at entry) +0x1d0.
  The `jal` at 0x10028b34 calls __ct__13EncoderFormUIGPCcP10_WidgetRec [0x1002b710] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10028b68 has v0 = a0.
  The instructions from 0x10028b70 to 0x10028b80 are not reached by any path from the entry, and their branches are not listed.
- `__ct__11EncoderFormGPCc` in `usr/gfx/ircombine` at 0x10028b90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10028b90-0x10028c0c (124 bytes).
  It occupies 124 bytes.
  The `sw` at 0x10028bcc stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x10028bdc stores 4 bytes to a0 (arg0 at entry) +0x1d0.
  The `jal` at 0x10028bbc calls __ct__13EncoderFormUIGPCc [0x1002b7a0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10028bf0 has v0 = a0.
  The instructions from 0x10028bf8 to 0x10028c08 are not reached by any path from the entry, and their branches are not listed.
- `__dt__11EncoderFormGv` in `usr/gfx/ircombine` at 0x10028c10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10028c10-0x10028ca4 (148 bytes).
  It occupies 148 bytes.
  The `sw` at 0x10028c44 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10028c54 calls __dt__13EncoderFormUIGv [0x1002b810] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10028c74 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10028c34 targets 0x10028c7c, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x10028c64 targets 0x10028c7c, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10028c88 has v0 = one of 0x88460, ret(__dt__13EncoderFormUIGv), ret(__dl__GPv).
  The instructions from 0x10028c90 to 0x10028ca0 are not reached by any path from the entry, and their branches are not listed.
- `className__11EncoderFormGv` in `usr/gfx/ircombine` at 0x10028cb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10028cb0-0x10028cf0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10028cc8 loads 4 bytes from abs 0x100a90d4.
  The `beq` branch at 0x10028cd4 targets 0x10028cdc and is always taken.
  The return at 0x10028ce8 has v0 = 0x10094fc8.
- `CreateEncoderForm__11EncoderFormSGPCcP10_WidgetRec` in `usr/gfx/ircombine` at 0x10028cf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10028cf0-0x10028dac (188 bytes).
  It occupies 188 bytes.
  The `jalr` at 0x10028d1c calls __nw__GUi with a0=0x1d4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10028d48 calls __ct__11EncoderFormGPCcP10_WidgetRec [0x10028b00] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x10028d28 targets 0x10028d64, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10028d5c targets 0x10028d68 and is always taken.
  The return at 0x10028d90 has v0 = one of ret(__nw__GUi), 0x0.
  The instructions from 0x10028d98 to 0x10028da8 are not reached by any path from the entry, and their branches are not listed.
- `update__11EncoderFormGv` in `usr/gfx/ircombine` at 0x10028df0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10028df0-0x100296ec (2300 bytes).
  It occupies 2300 bytes.
  The `lw` at 0x10028e20 loads 4 bytes from a0 (arg0 at entry) +0xd0.
  34 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1d0, including `lw` at 0x10028e3c, `lw` at 0x10028e5c, `lw` at 0x10028ed4.
  The `lw` at 0x10028e40 loads 4 bytes from [a0+464] +0x25c.
  The `lw` at 0x10028e60 loads 4 bytes from [a0+464] +0x258.
  The `lw` at 0x10028e8c loads 4 bytes from a0 (arg0 at entry) +0x8c.
  The `lw` at 0x10028eb8 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lw` at 0x10028ed8 loads 4 bytes from [a0+464] +0x140.
  The `lw` at 0x10028eec loads 4 bytes from a0 (arg0 at entry) +0xfc.
  The `lw` at 0x10028ef8 loads 4 bytes from [a0+464] +0x134.
  The `lw` at 0x10028f0c loads 4 bytes from a0 (arg0 at entry) +0x104.
  The `lw` at 0x10028f18 loads 4 bytes from [a0+464] +0x148.
  The `lw` at 0x10028f2c loads 4 bytes from a0 (arg0 at entry) +0x108.
  The `lw` at 0x10028f38 loads 4 bytes from [a0+464] +0x14c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xf8, including `lw` at 0x10028f4c, `lw` at 0x10029018, `lw` at 0x100290f4.
  The `lw` at 0x10028f58 loads 4 bytes from [a0+464] +0x2ac.
  2 such `lw` accesses load 4 bytes from [a0+464] +0x104, including `lw` at 0x10028f70, `lw` at 0x1002905c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x100, including `lw` at 0x10028f84, `lw` at 0x1002904c.
  The `lw` at 0x10028f8c loads 4 bytes from a0 (arg0 at entry) +0x11c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x10028fa0, `lw` at 0x1002907c, `lw` at 0x10029580.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x10028fb8, `lw` at 0x10029094, `lw` at 0x1002954c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd8, including `lw` at 0x10028fd0, `lw` at 0x100290ac, `lw` at 0x10029448.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe4, including `lw` at 0x10028fe8, `lw` at 0x100290c4, `lw` at 0x1002947c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c, including `lw` at 0x10029000, `lw` at 0x100290dc, `lw` at 0x10029518.
  The `lw` at 0x10029068 loads 4 bytes from (a0 + ([[a0+464]+260] << 0x2)) +0x18c.
  The `lw` at 0x10029120 loads 4 bytes from a0 (arg0 at entry) +0x5c.
  The `lw` at 0x10029140 loads 4 bytes from [a0+464] +0x4e0.
  2 such `lwc1` accesses load 4 bytes from [a0+464] +0x130, including `lwc1` at 0x10029160, `lwc1` at 0x100291cc.
  The `lw` at 0x1002917c loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0x100291b4 loads 4 bytes from [a0+464] +0x484.
  The `lw` at 0x100291ec loads 4 bytes from a0 (arg0 at entry) +0xc4.
  The `lw` at 0x10029228 loads 4 bytes from [a0+464] +0x128.
  The `lw` at 0x10029234 loads 4 bytes from [a0+464] +0x12c.
  The `lw` at 0x10029248 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0x10029274 loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `lw` at 0x10029294 loads 4 bytes from [a0+464] +0x288.
  The `lw` at 0x100292a8 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x100292c8 loads 4 bytes from [a0+464] +0x144.
  The `lw` at 0x100292dc loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0x100292fc loads 4 bytes from [a0+464] +0x13c.
  The `lw` at 0x10029310 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x10029330 loads 4 bytes from [a0+464] +0x2a4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x10029344, `lw` at 0x100296a4.
  The `lwc1` at 0x10029364 loads 4 bytes from [a0+464] +0x270.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x78, including `lw` at 0x10029378, `lw` at 0x1002968c.
  The `lwc1` at 0x10029398 loads 4 bytes from [a0+464] +0x26c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xac, including `lw` at 0x100293ac, `lw` at 0x10029674.
  The `lwc1` at 0x100293cc loads 4 bytes from [a0+464] +0x268.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc8, including `lw` at 0x100293e0, `lw` at 0x100296bc.
  2 such `lw` accesses load 4 bytes from [a0+464] +0x2c0, including `lw` at 0x10029400, `lw` at 0x10029648.
  The `lw` at 0x10029414 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `lwc1` at 0x10029434 loads 4 bytes from [a0+464] +0x264.
  The `lwc1` at 0x10029468 loads 4 bytes from [a0+464] +0x274.
  The `lwc1` at 0x1002949c loads 4 bytes from [a0+464] +0x278.
  3 such `lwc1` accesses load 4 bytes from [a0+464] +0x284, including `lwc1` at 0x100294b4, `lwc1` at 0x100294ec, `lwc1` at 0x10029538.
  2 such `swc1` accesses store 4 bytes to [a0+464] +0x284, including `swc1` at 0x100294d8, `swc1` at 0x10029510.
  The `lw` at 0x1002956c loads 4 bytes from [a0+464] +0x280.
  The `lw` at 0x100295a0 loads 4 bytes from [a0+464] +0x27c.
  3 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x100295b4, `lw` at 0x100295c4, `lw` at 0x100295f4.
  The `lw` at 0x100295e4 loads 4 bytes from sym(combination) +0x238.
  The `lw` at 0x10029608 loads 4 bytes from ret(getTarget__18VkwindowMainWindowGv) +0x10.
  The `jal` at 0x10028e14 calls update_fast__11EncoderFormGv [0x100296f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10028e28 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+208], a1=?, a2=?, a3=?.
  The `jal` at 0x10028e48 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+604], a2=?, a3=?.
  The `jalr` at 0x10028e80 calls sprintf with a0=sp-208, a1=0x100aa458, a2=?, a3=?.
  The `jal` at 0x10028e94 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+140], a1=?, a2=?, a3=?.
  The `jal` at 0x10028eac calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=sp-208, a2=?, a3=?.
  The `jal` at 0x10028ec0 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+60], a1=?, a2=?, a3=?.
  The `jal` at 0x10028ee0 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+320], a2=?, a3=?.
  The `jalr` at 0x10028f00 calls set__12VkOptionMenuGi with a0=[a0+252], a1=[[a0+464]+308], a2=?, a3=?.
  The `jalr` at 0x10028f20 calls set__12VkOptionMenuGi with a0=[a0+260], a1=[[a0+464]+328], a2=?, a3=?.
  The `jalr` at 0x10028f40 calls set__12VkOptionMenuGi with a0=[a0+264], a1=[[a0+464]+332], a2=?, a3=?.
  The `jalr` at 0x10028f60 calls set__12VkOptionMenuGi with a0=[a0+248], a1=[[a0+464]+684], a2=?, a3=?.
  The `jalr` at 0x10028f94 calls set__12VkOptionMenuGP10VkMenuItem with a0=[a0+256], a1=[a0+284], a2=0x8, a3=?.
  The `jalr` at 0x10028fac calls XtSetSensitive with a0=[a0+68], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10028fc4 calls XtSetSensitive with a0=[a0+72], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10028fdc calls XtSetSensitive with a0=[a0+216], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10028ff4 calls XtSetSensitive with a0=[a0+228], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1002900c calls XtSetSensitive with a0=[a0+76], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x10029020 calls baseWidget__10VkMenuItemCGv with a0=[a0+248], a1=?, a2=?, a3=?.
  The `jalr` at 0x10029038 calls XtSetSensitive with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x1, a2=?, a3=?.
  The `jalr` at 0x10029070 calls set__12VkOptionMenuGi with a0=[a0+256], a1=[(a0 + ([[a0+464]+260] << 0x2))+396], a2=([[a0+464]+260] << 0x2), a3=?.
  The `jalr` at 0x10029088 calls XtSetSensitive with a0=[a0+68], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x100290a0 calls XtSetSensitive with a0=[a0+72], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x100290b8 calls XtSetSensitive with a0=[a0+216], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x100290d0 calls XtSetSensitive with a0=[a0+228], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x100290e8 calls XtSetSensitive with a0=[a0+76], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x100290fc calls baseWidget__10VkMenuItemCGv with a0=[a0+248], a1=?, a2=?, a3=?.
  The `jalr` at 0x10029114 calls XtSetSensitive with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x0, a2=?, a3=?.
  The `jal` at 0x10029128 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+92], a1=?, a2=?, a3=?.
  The `jal` at 0x10029148 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+1248], a2=?, a3=?.
  The `jalr` at 0x10029170 calls sprintf with a0=sp-144, a1=0x100aa460, a2=?, a3=?.
  The `jal` at 0x10029184 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+112], a1=?, a2=?, a3=?.
  The `jal` at 0x1002919c calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=?, a3=?.
  The `jalr` at 0x100291e0 calls sprintf with a0=sp-144, a1=0x100aa460, a2=?, a3=[[a0+464]+1156].
  The `jal` at 0x100291f4 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+196], a1=?, a2=?, a3=?.
  The `jal` at 0x1002920c calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=?, a3=?.
  The `jalr` at 0x1002923c calls sprintf with a0=sp-144, a1=0x10094fd8, a2=[[a0+464]+296], a3=[[a0+464]+300].
  The `jal` at 0x10029250 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+156], a1=?, a2=?, a3=?.
  The `jal` at 0x10029268 calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=?, a3=?.
  The `jal` at 0x1002927c calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+180], a1=?, a2=?, a3=?.
  The `jal` at 0x1002929c calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+648], a2=?, a3=?.
  The `jal` at 0x100292b0 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+64], a1=?, a2=?, a3=?.
  The `jal` at 0x100292d0 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+324], a2=?, a3=?.
  The `jal` at 0x100292e4 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+32], a1=?, a2=?, a3=?.
  The `jal` at 0x10029304 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+316], a2=?, a3=?.
  The `jal` at 0x10029318 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+48], a1=?, a2=?, a3=?.
  The `jal` at 0x10029338 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+676], a2=?, a3=?.
  The `jal` at 0x1002934c calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+40], a1=?, a2=?, a3=?.
  The `jal` at 0x1002936c calls __as__9EZWrapperGf [0x1008f850] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+464], a2=?, a3=?; fp f13=[[a0+464]+624].
  The `jal` at 0x10029380 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+120], a1=?, a2=?, a3=?.
  The `jal` at 0x100293a0 calls __as__9EZWrapperGf [0x1008f850] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+464], a2=?, a3=?; fp f13=[[a0+464]+620].
  The `jal` at 0x100293b4 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+172], a1=?, a2=?, a3=?.
  The `jal` at 0x100293d4 calls __as__9EZWrapperGf [0x1008f850] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+464], a2=?, a3=?; fp f13=[[a0+464]+616].
  The `jal` at 0x100293e8 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+200], a1=?, a2=?, a3=?.
  The `jal` at 0x10029408 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+704], a2=?, a3=?.
  The `jal` at 0x1002941c calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+128], a1=?, a2=?, a3=?.
  The `jal` at 0x1002943c calls __as__9EZWrapperGf [0x1008f850] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+464], a2=?, a3=?; fp f13=[[a0+464]+612].
  The `jal` at 0x10029450 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+216], a1=?, a2=?, a3=?.
  The `jal` at 0x10029470 calls __as__9EZWrapperGf [0x1008f850] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+464], a2=?, a3=?; fp f13=[[a0+464]+628].
  The `jal` at 0x10029484 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+228], a1=?, a2=?, a3=?.
  The `jal` at 0x100294a4 calls __as__9EZWrapperGf [0x1008f850] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+464], a2=?, a3=?; fp f13=[[a0+464]+632].
  The `jal` at 0x10029520 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+76], a1=?, a2=[a0+464], a3=?.
  The `jal` at 0x10029540 calls __as__9EZWrapperGf [0x1008f850] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+464], a2=?, a3=?; fp f13=[[a0+464]+644].
  The `jal` at 0x10029554 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+72], a1=?, a2=?, a3=?.
  The `jal` at 0x10029574 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+640], a2=?, a3=?.
  The `jal` at 0x10029588 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+68], a1=?, a2=?, a3=?.
  The `jal` at 0x100295a8 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+636], a2=?, a3=?.
  The `jal` at 0x100295cc calls getTarget__18VkwindowMainWindowGv [0x1006f100] with a0=[sym(vkwindow)], a1=?, a2=[sym(vkwindow)], a3=?.
  The `jal` at 0x100295fc calls getTarget__18VkwindowMainWindowGv [0x1006f100] with a0=[sym(vkwindow)], a1=[sym(combination)+568], a2=?, a3=?.
  The `jalr` at 0x10029680 calls XtSetSensitive with a0=[a0+172], a1=one of 0x0, 0x1, a2=?, a3=?, a4=one of 0x0, 0x1, a5=one of 0x0, 0x1.
  The `jalr` at 0x10029698 calls XtSetSensitive with a0=[a0+120], a1=?, a2=?, a3=?.
  The `jalr` at 0x100296b0 calls XtSetSensitive with a0=[a0+40], a1=?, a2=?, a3=?.
  The `jalr` at 0x100296c8 calls XtSetSensitive with a0=[a0+200], a1=?, a2=?, a3=?.
  The `bne` branch at 0x10028f78 targets 0x10029048, is taken when a1(=[[a0+464]+260]) != a2(=0x8), and falls through when a1(=[[a0+464]+260]) == a2(=0x8).
  The `beq` branch at 0x10029040 targets 0x1002911c and is always taken.
  The `bc1f` branch at 0x100294c4 targets 0x100294e4, is taken when not (f3(=[[a0+464]+644]) < f4(=0x42480000) (c.lt.s at 0x100294bc)), and falls through when f3(=[[a0+464]+644]) < f4(=0x42480000) (c.lt.s at 0x100294bc).
  The `beq` branch at 0x100294dc targets 0x10029514 and is always taken.
  The `bc1f` branch at 0x100294fc targets 0x10029514, is taken when not (f6(=0x42c80000) < f7(=[[a0+464]+644]) (c.lt.s at 0x100294f4)), and falls through when f6(=0x42c80000) < f7(=[[a0+464]+644]) (c.lt.s at 0x100294f4).
  The `beq` branch at 0x100295b8 targets 0x100296d0, is taken when a2(=[sym(vkwindow)]) == 0, and falls through when a2(=[sym(vkwindow)]) != 0.
  The `beq` branch at 0x100295d8 targets 0x100296d0, is taken when v0(=ret(getTarget__18VkwindowMainWindowGv)) == 0, and falls through when v0(=ret(getTarget__18VkwindowMainWindowGv)) != 0.
  The `bne` branch at 0x100295e8 targets 0x10029628, is taken when a1(=[sym(combination)+568]) != 0, and falls through when a1(=[sym(combination)+568]) == 0.
  The `beq` branch at 0x10029610 targets 0x10029628, is taken when a1(=[ret(getTarget__18VkwindowMainWindowGv)+16]) == a2(=0x2), and falls through when a1(=[ret(getTarget__18VkwindowMainWindowGv)+16]) != a2(=0x2).
  The `beq` branch at 0x10029620 targets 0x1002962c and is always taken.
  The `beq` branch at 0x10029638 targets 0x10029664, is taken when a4(=one of 0x0, 0x1) == 0, and falls through when a4(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1002964c targets 0x10029664, is taken when a6(=[[a0+464]+704]) == 0, and falls through when a6(=[[a0+464]+704]) != 0.
  The `beq` branch at 0x1002965c targets 0x10029668 and is always taken.
  The `beq` branch at 0x100296d0 targets 0x100296d8 and is always taken.
  The return at 0x100296e4 has v0 = ?.
- `update_fast__11EncoderFormGv` in `usr/gfx/ircombine` at 0x100296f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100296f0-0x100297f8 (264 bytes).
  It occupies 264 bytes.
  The `lw` at 0x10029710 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1d0, including `lw` at 0x1002972c, `lw` at 0x10029760, `lw` at 0x10029794.
  The `lw` at 0x10029730 loads 4 bytes from [a0+464] +0x108.
  The `lw` at 0x10029744 loads 4 bytes from a0 (arg0 at entry) +0xf0.
  The `lw` at 0x10029764 loads 4 bytes from [a0+464] +0x10c.
  The `lw` at 0x10029778 loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `lw` at 0x10029798 loads 4 bytes from [a0+464] +0x110.
  The `lw` at 0x100297ac loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `lw` at 0x100297cc loads 4 bytes from [a0+464] +0x114.
  The `jal` at 0x10029718 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+224], a1=0x87980, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10029738 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+264], a2=?, a3=?.
  The `jal` at 0x1002974c calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+240], a1=?, a2=?, a3=?.
  The `jal` at 0x1002976c calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+268], a2=?, a3=?.
  The `jal` at 0x10029780 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+212], a1=?, a2=?, a3=?.
  The `jal` at 0x100297a0 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+272], a2=?, a3=?.
  The `jal` at 0x100297b4 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+144], a1=?, a2=?, a3=?.
  The `jal` at 0x100297d4 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+276], a2=?, a3=?.
  The `beq` branch at 0x100297dc targets 0x100297e4 and is always taken.
  The return at 0x100297f0 has v0 = ret(__as__9EZWrapperGi).
- `alphaChannel__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029800 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10029800-0x10029870 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x10029830 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10029838 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002983c stores 4 bytes to [a0+464] +0x13c.
  The `lw` at 0x10029844 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1002984c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+464], a3=0x87870.
  The `beq` branch at 0x10029854 targets 0x1002985c and is always taken.
  The return at 0x10029868 has v0 = ret(update__18VkwindowMainWindowGv).
- `bGamma__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029870 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10029870-0x10029914 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0x100298d8 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `swc1` at 0x100298e0 stores 4 bytes to [a0+464] +0x270.
  The `lw` at 0x100298e8 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x100298a4 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100298b8 calls (unnamed) [0x1002b650] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jalr` at 0x100298c8 calls atof with a0=ret(0x1002b650), a1=?, a2=?, a3=?.
  The `jal` at 0x100298f0 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+464]+624, a2=?, a3=?.
  The `beq` branch at 0x100298f8 targets 0x10029900 and is always taken.
  The return at 0x1002990c has v0 = ret(update__18VkwindowMainWindowGv).
- `channelEnable__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029920 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10029920-0x10029a28 (264 bytes).
  It occupies 264 bytes.
  The `lw` at 0x10029950 loads 4 bytes from sym(combination) +0xfcc.
  The `lw` at 0x10029960 loads 4 bytes from sym(combination) +0xfa8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1d0, including `lw` at 0x100299b8, `lw` at 0x100299e0.
  The `lw` at 0x100299bc loads 4 bytes from [a0+464] +0x2a4.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x100299d8, `lw` at 0x100299ec.
  The `sw` at 0x100299e4 stores 4 bytes to [a0+464] +0x2a4.
  The `sw` at 0x100299f4 stores 4 bytes to sym(combination) +0x228.
  The `lw` at 0x100299fc loads 4 bytes from sym(vkwindow) +0x0.
  The `jalr` at 0x10029970 calls getTheErrorDialog__Gv with a0=[sym(combination)+4008], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10029994 calls (unnamed) [0x1002b690] with a0=ret(getTheErrorDialog__Gv), a1=0x10094fe8, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x100299a4 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x100299c4 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+676], a2=?, a3=?.
  The `jal` at 0x10029a04 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x10029954 targets 0x100299d4, is taken when at(=[sym(combination)+4044]) == 0, and falls through when at(=[sym(combination)+4044]) != 0.
  The `beq` branch at 0x10029964 targets 0x100299d4, is taken when a0(=[sym(combination)+4008]) == 0, and falls through when a0(=[sym(combination)+4008]) != 0.
  The `beq` branch at 0x100299cc targets 0x100299f8 and is always taken.
  The `beq` branch at 0x10029a0c targets 0x10029a14 and is always taken.
  The return at 0x10029a20 has v0 = ret(update__18VkwindowMainWindowGv).
- `closeChannel__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029a30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10029a30-0x10029aac (124 bytes).
  It occupies 124 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1cc, including `lw` at 0x10029a60, `lw` at 0x10029a70, `lw` at 0x10029a7c.
  2 such `lw` accesses load 4 bytes from [a0+460] +0x8, including `lw` at 0x10029a64, `lw` at 0x10029a80.
  The `lw` at 0x10029a68 loads 4 bytes from [[a0+460]+8] +0x30.
  The `lw` at 0x10029a84 loads 4 bytes from [[a0+460]+8] +0x38.
  The `jalr` at 0x10029a88 calls (unknown callee) with a0=([[[a0+460]+8]+48] + [a0+460]), a1=[a0+460], a2=a2 at entry (arg2), a3=0x87640.
  The `beq` branch at 0x10029a90 targets 0x10029a98 and is always taken.
  The return at 0x10029aa4 has v0 = ret(?).
- `cursorPriority__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029ab0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10029ab0-0x10029b3c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0x10029b04 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x10029b08 stores 4 bytes to [a0+464] +0x140.
  The `lw` at 0x10029b10 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10029ae4 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10029af8 calls (unnamed) [0x1002b610] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x10029b18 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+464], a2=?, a3=?.
  The `beq` branch at 0x10029b20 targets 0x10029b28 and is always taken.
  The return at 0x10029b34 has v0 = ret(update__18VkwindowMainWindowGv).
- `dither__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029b40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10029b40-0x10029bb0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x10029b70 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10029b78 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x10029b7c stores 4 bytes to [a0+464] +0x144.
  The `lw` at 0x10029b84 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10029b8c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+464], a3=0x87530.
  The `beq` branch at 0x10029b94 targets 0x10029b9c and is always taken.
  The return at 0x10029ba8 has v0 = ret(update__18VkwindowMainWindowGv).
- `encoderNTSC__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029bb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10029bb0-0x10029c64 (180 bytes).
  It occupies 180 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1d0, including `lw` at 0x10029be0, `lw` at 0x10029c14.
  The `lw` at 0x10029be4 loads 4 bytes from [a0+464] +0x104.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10029bf0, `lw` at 0x10029c38.
  The `sw` at 0x10029c18 stores 4 bytes to [a0+464] +0x104.
  The `lw` at 0x10029c20 loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `jal` at 0x10029c04 calls loadFormat__18VkwindowMainWindowGiPCc [0x1006f0a0] with a0=[sym(vkwindow)], a1=0x8, a2=0x10095020, a3=0x874c0.
  The `jalr` at 0x10029c2c calls XtSetSensitive with a0=[a0+180], a1=0x1, a2=[a0+464], a3=?.
  The `jal` at 0x10029c40 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x10029c48 targets 0x10029c50 and is always taken.
  The return at 0x10029c5c has v0 = ret(update__18VkwindowMainWindowGv).
- `enocderPAL__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029c70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10029c70-0x10029d24 (180 bytes).
  It occupies 180 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1d0, including `lw` at 0x10029ca0, `lw` at 0x10029cd4.
  The `lw` at 0x10029ca4 loads 4 bytes from [a0+464] +0x104.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10029cb0, `lw` at 0x10029cf8.
  The `sw` at 0x10029cd8 stores 4 bytes to [a0+464] +0x104.
  The `lw` at 0x10029ce0 loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `jal` at 0x10029cc4 calls loadFormat__18VkwindowMainWindowGiPCc [0x1006f0a0] with a0=[sym(vkwindow)], a1=0x8, a2=0x10095030, a3=0x87400.
  The `jalr` at 0x10029cec calls XtSetSensitive with a0=[a0+180], a1=0x0, a2=[a0+464], a3=?.
  The `jal` at 0x10029d00 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x10029d08 targets 0x10029d10 and is always taken.
  The return at 0x10029d1c has v0 = ret(update__18VkwindowMainWindowGv).
- `fs__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029d30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10029d30-0x10029d9c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x10029d64 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x10029d68 stores 4 bytes to [a0+464] +0x134.
  The `lw` at 0x10029d70 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10029d78 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x4, a2=[a0+464], a3=a2 at entry (arg2), a4=0x87340.
  The `beq` branch at 0x10029d80 targets 0x10029d88 and is always taken.
  The return at 0x10029d94 has v0 = ret(update__18VkwindowMainWindowGv).
- `gGamma__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029da0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10029da0-0x10029e44 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0x10029e08 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `swc1` at 0x10029e10 stores 4 bytes to [a0+464] +0x26c.
  The `lw` at 0x10029e18 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10029dd4 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10029de8 calls (unnamed) [0x1002b650] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jalr` at 0x10029df8 calls atof with a0=ret(0x1002b650), a1=?, a2=?, a3=?.
  The `jal` at 0x10029e20 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+464]+620, a2=?, a3=?.
  The `beq` branch at 0x10029e28 targets 0x10029e30 and is always taken.
  The return at 0x10029e3c has v0 = ret(update__18VkwindowMainWindowGv).
- `gain__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029e50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10029e50-0x10029ef0 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x10029eb8 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `swc1` at 0x10029ebc stores 4 bytes to [a0+464] +0x264.
  The `lw` at 0x10029ec4 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10029e84 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10029e98 calls (unnamed) [0x1002b650] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jalr` at 0x10029ea8 calls atof with a0=ret(0x1002b650), a1=?, a2=?, a3=?.
  The `jal` at 0x10029ecc calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+464], a2=?, a3=?.
  The `beq` branch at 0x10029ed4 targets 0x10029edc and is always taken.
  The return at 0x10029ee8 has v0 = ret(update__18VkwindowMainWindowGv).
- `hPhase__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029ef0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10029ef0-0x10029f9c (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0x10029f64 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x10029f68 stores 4 bytes to [a0+464] +0x258.
  The `lw` at 0x10029f70 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10029f24 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10029f38 calls (unnamed) [0x1002b650] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jalr` at 0x10029f48 calls atof with a0=ret(0x1002b650), a1=?, a2=?, a3=?.
  The `jal` at 0x10029f78 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=[a0+464], a3=?.
  The `beq` branch at 0x10029f80 targets 0x10029f88 and is always taken.
  The return at 0x10029f94 has v0 = ret(update__18VkwindowMainWindowGv).
- `height__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029fa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10029fa0-0x1002a050 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0x10029ff4 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x10029ffc stores 4 bytes to [a0+464] +0x114.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1002a004, `lw` at 0x1002a024.
  The `jal` at 0x10029fd4 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10029fe8 calls (unnamed) [0x1002b610] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1002a018 calls clamp__18VkwindowMainWindowGiN21 [0x1006efb0] with a0=[sym(vkwindow)], a1=0x8, a2=0x1, a3=0x0.
  The `jal` at 0x1002a02c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002a034 targets 0x1002a03c and is always taken.
  The return at 0x1002a048 has v0 = ret(update__18VkwindowMainWindowGv).
- `interleaved__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002a050 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002a050-0x1002a0bc (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x1002a084 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002a088 stores 4 bytes to [a0+464] +0x2ac.
  The `lw` at 0x1002a090 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1002a098 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x1, a2=[a0+464], a3=a2 at entry (arg2), a4=0x87020.
  The `beq` branch at 0x1002a0a0 targets 0x1002a0a8 and is always taken.
  The return at 0x1002a0b4 has v0 = ret(update__18VkwindowMainWindowGv).
- `progressive__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002a0c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002a0c0-0x1002a128 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x1002a0f0 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002a0f4 stores 4 bytes to [a0+464] +0x2ac.
  The `lw` at 0x1002a0fc loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1002a104 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+464], a2=a2 at entry (arg2), a3=0x86fb0.
  The `beq` branch at 0x1002a10c targets 0x1002a114 and is always taken.
  The return at 0x1002a120 has v0 = ret(update__18VkwindowMainWindowGv).
- `rGamma__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002a130 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002a130-0x1002a1d4 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0x1002a198 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `swc1` at 0x1002a1a0 stores 4 bytes to [a0+464] +0x268.
  The `lw` at 0x1002a1a8 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1002a164 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002a178 calls (unnamed) [0x1002b650] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002a188 calls atof with a0=ret(0x1002b650), a1=?, a2=?, a3=?.
  The `jal` at 0x1002a1b0 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+464]+616, a2=?, a3=?.
  The `beq` branch at 0x1002a1b8 targets 0x1002a1c0 and is always taken.
  The return at 0x1002a1cc has v0 = ret(update__18VkwindowMainWindowGv).
- `restoreSize__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002a1e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002a1e0-0x1002a318 (312 bytes).
  It occupies 312 bytes.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1d0, including `lw` at 0x1002a210, `lw` at 0x1002a220, `lw` at 0x1002a230.
  2 such `lw` accesses load 4 bytes from [a0+464] +0x128, including `lw` at 0x1002a218, `lw` at 0x1002a29c.
  The `sw` at 0x1002a228 stores 4 bytes to [a0+464] +0x110.
  2 such `lw` accesses load 4 bytes from [a0+464] +0x12c, including `lw` at 0x1002a238, `lw` at 0x1002a2c4.
  The `sw` at 0x1002a248 stores 4 bytes to [a0+464] +0x114.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1002a250, `lw` at 0x1002a270.
  The `lw` at 0x1002a28c loads 4 bytes from [a0+464] +0x110.
  The `lw` at 0x1002a2b4 loads 4 bytes from [a0+464] +0x114.
  The `jal` at 0x1002a264 calls clamp__18VkwindowMainWindowGiN21 [0x1006efb0] with a0=[sym(vkwindow)], a1=0x8, a2=0x1, a3=0x0, a4=0x86e90.
  The `jal` at 0x1002a278 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002a2d4 calls getTheErrorDialog__Gv with a0=?, a1=[[a0+464]+272], a2=?, a3=?.
  The `jal` at 0x1002a2f4 calls (unnamed) [0x1002b690] with a0=ret(getTheErrorDialog__Gv), a1=0x10095040, a2=a1 at entry (arg1), a3=?.
  The `bne` branch at 0x1002a2a0 targets 0x1002a2d0, is taken when a1(=[[a0+464]+272]) != a2(=[[a0+464]+296]), and falls through when a1(=[[a0+464]+272]) == a2(=[[a0+464]+296]).
  The `beq` branch at 0x1002a2c8 targets 0x1002a2fc, is taken when a2(=[[a0+464]+276]) == a3(=[[a0+464]+300]), and falls through when a2(=[[a0+464]+276]) != a3(=[[a0+464]+300]).
  The `beq` branch at 0x1002a2fc targets 0x1002a304 and is always taken.
  The return at 0x1002a310 has v0 = ?.
- `rgb10__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002a320 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002a320-0x1002a388 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x1002a350 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002a354 stores 4 bytes to [a0+464] +0x134.
  The `lw` at 0x1002a35c loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1002a364 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+464], a2=a2 at entry (arg2), a3=0x86d50.
  The `beq` branch at 0x1002a36c targets 0x1002a374 and is always taken.
  The return at 0x1002a380 has v0 = ret(update__18VkwindowMainWindowGv).
- `rgb12__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002a390 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002a390-0x1002a3fc (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x1002a3c4 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002a3c8 stores 4 bytes to [a0+464] +0x134.
  The `lw` at 0x1002a3d0 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1002a3d8 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x2, a2=[a0+464], a3=a2 at entry (arg2), a4=0x86ce0.
  The `beq` branch at 0x1002a3e0 targets 0x1002a3e8 and is always taken.
  The return at 0x1002a3f4 has v0 = ret(update__18VkwindowMainWindowGv).
- `rgba10__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002a400 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002a400-0x1002a46c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x1002a434 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002a438 stores 4 bytes to [a0+464] +0x134.
  The `lw` at 0x1002a440 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1002a448 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x1, a2=[a0+464], a3=a2 at entry (arg2), a4=0x86c70.
  The `beq` branch at 0x1002a450 targets 0x1002a458 and is always taken.
  The return at 0x1002a464 has v0 = ret(update__18VkwindowMainWindowGv).
- `safeAreaPercent__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002a470 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002a470-0x1002a510 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x1002a4d8 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `swc1` at 0x1002a4dc stores 4 bytes to [a0+464] +0x284.
  The `lw` at 0x1002a4e4 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1002a4a4 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002a4b8 calls (unnamed) [0x1002b650] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jalr` at 0x1002a4c8 calls atof with a0=ret(0x1002b650), a1=?, a2=?, a3=?.
  The `jal` at 0x1002a4ec calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+464], a2=?, a3=?.
  The `beq` branch at 0x1002a4f4 targets 0x1002a4fc and is always taken.
  The return at 0x1002a508 has v0 = ret(update__18VkwindowMainWindowGv).
- `setFlickerFilter__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002a510 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002a510-0x1002a580 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1002a540 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1002a548 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002a54c stores 4 bytes to [a0+464] +0x27c.
  The `lw` at 0x1002a554 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1002a55c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+464], a3=0x86b60.
  The `beq` branch at 0x1002a564 targets 0x1002a56c and is always taken.
  The return at 0x1002a578 has v0 = ret(update__18VkwindowMainWindowGv).
- `setLetterBox__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002a580 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002a580-0x1002a5f0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1002a5b0 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1002a5b8 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002a5bc stores 4 bytes to [a0+464] +0x280.
  The `lw` at 0x1002a5c4 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1002a5cc calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+464], a3=0x86af0.
  The `beq` branch at 0x1002a5d4 targets 0x1002a5dc and is always taken.
  The return at 0x1002a5e8 has v0 = ret(update__18VkwindowMainWindowGv).
- `setup__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002a5f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002a5f0-0x1002a660 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1002a620 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1002a628 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002a62c stores 4 bytes to [a0+464] +0x288.
  The `lw` at 0x1002a634 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1002a63c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+464], a3=0x86a80.
  The `beq` branch at 0x1002a644 targets 0x1002a64c and is always taken.
  The return at 0x1002a658 has v0 = ret(update__18VkwindowMainWindowGv).
- `sourceChannel__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002a660 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002a660-0x1002ab60 (1280 bytes).
  It occupies 1280 bytes.
  21 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1d0, including `lw` at 0x1002a690, `lw` at 0x1002a6cc, `lw` at 0x1002a6e0.
  11 such `lw` accesses load 4 bytes from [a0+464] +0x104, including `lw` at 0x1002a694, `lw` at 0x1002a6e4, `lw` at 0x1002a714.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x100, including `lw` at 0x1002a6a0, `lw` at 0x1002a7bc, `lw` at 0x1002a7ec.
  The `lw` at 0x1002a6c4 loads 4 bytes from (a0 + (ret(getItemPosition__6VkMenuGP10_WidgetRec) << 0x2)) +0x14c.
  2 such `sw` accesses store 4 bytes to [a0+464] +0x104, including `sw` at 0x1002a6d0, `sw` at 0x1002a7a4.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1002a6f8, `lw` at 0x1002a728, `lw` at 0x1002a8c0.
  The `lw` at 0x1002a788 loads 4 bytes from (sym(konCHANNEL_NAME_strings) + ([[a0+464]+260] << 0x2)) +0x0.
  The `lw` at 0x1002a808 loads 4 bytes from (a0 + ([[a0+464]+260] << 0x2)) +0x18c.
  2 such `lw` accesses load 4 bytes from [a0+464] +0x108, including `lw` at 0x1002a864, `lw` at 0x1002a8b4.
  2 such `lw` accesses load 4 bytes from [a0+464] +0x10c, including `lw` at 0x1002a878, `lw` at 0x1002a8d8.
  2 such `sw` accesses store 4 bytes to [a0+464] +0x108, including `sw` at 0x1002a918, `sw` at 0x1002a980.
  2 such `sw` accesses store 4 bytes to [a0+464] +0x10c, including `sw` at 0x1002a92c, `sw` at 0x1002a9a4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1002a9c4, `lw` at 0x1002aa70.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1002a9dc, `lw` at 0x1002aa88.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd8, including `lw` at 0x1002a9f4, `lw` at 0x1002aaa0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe4, including `lw` at 0x1002aa0c, `lw` at 0x1002aab8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c, including `lw` at 0x1002aa24, `lw` at 0x1002aad0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xf8, including `lw` at 0x1002aa3c, `lw` at 0x1002aae8.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1002ab14, `lw` at 0x1002ab34.
  The `jalr` at 0x1002a6ac calls getItemPosition__6VkMenuGP10_WidgetRec with a0=[a0+256], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x86a10.
  The `jalr` at 0x1002a790 calls sprintf with a0=sp-1096, a1=0x10095068, a2=[(sym(konCHANNEL_NAME_strings) + ([[a0+464]+260] << 0x2))], a3=([[a0+464]+260] << 0x2), a6=[[a0+464]+260].
  The `jalr` at 0x1002a7ac calls getTheErrorDialog__Gv with a0=?, a1=?, a2=[[a0+464]+260], a3=[a0+464].
  The `jalr` at 0x1002a7c4 calls baseWidget__10VkMenuItemCGv with a0=[a0+256], a1=?, a2=?, a3=?.
  The `jal` at 0x1002a7e0 calls (unnamed) [0x1002b690] with a0=?, a1=sp-1096, a2=ret(baseWidget__10VkMenuItemCGv), a3=?.
  The `jalr` at 0x1002a810 calls set__12VkOptionMenuGi with a0=[a0+256], a1=[(a0 + ([[a0+464]+260] << 0x2))+396], a2=([[a0+464]+260] << 0x2), a3=?.
  The `jalr` at 0x1002a9d0 calls XtSetSensitive with a0=[a0+68], a1=0x0, a2=?, a3=[[a0+464]+260], a4=0x8.
  The `jalr` at 0x1002a9e8 calls XtSetSensitive with a0=[a0+72], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1002aa00 calls XtSetSensitive with a0=[a0+216], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1002aa18 calls XtSetSensitive with a0=[a0+228], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1002aa30 calls XtSetSensitive with a0=[a0+76], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1002aa44 calls baseWidget__10VkMenuItemCGv with a0=[a0+248], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002aa5c calls XtSetSensitive with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1002aa7c calls XtSetSensitive with a0=[a0+68], a1=0x1, a2=?, a3=[[a0+464]+260], a4=0x8.
  The `jalr` at 0x1002aa94 calls XtSetSensitive with a0=[a0+72], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1002aaac calls XtSetSensitive with a0=[a0+216], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1002aac4 calls XtSetSensitive with a0=[a0+228], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1002aadc calls XtSetSensitive with a0=[a0+76], a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1002aaf0 calls baseWidget__10VkMenuItemCGv with a0=[a0+248], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002ab08 calls XtSetSensitive with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x0, a2=?, a3=?.
  The `jal` at 0x1002ab28 calls clamp__18VkwindowMainWindowGiN21 [0x1006efb0] with a0=[sym(vkwindow)], a1=0x8, a2=0x0, a3=0x0.
  The `jal` at 0x1002ab3c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002a6fc targets 0x1002a734, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x1002a72c targets 0x1002a820, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x1002a744 targets 0x1002a820, is taken when t0(=[[a0+464]+260]) == t1(=0x8), and falls through when t0(=[[a0+464]+260]) != t1(=0x8).
  The `beq` branch at 0x1002a75c targets 0x1002a820, is taken when t1(=[[a0+464]+260]) == t2(=[[a0+464]+260]), and falls through when t1(=[[a0+464]+260]) != t2(=[[a0+464]+260]).
  The `beq` branch at 0x1002a818 targets 0x1002ab4c and is always taken.
  The `beq` branch at 0x1002a828 targets 0x1002a848, is taken when a1(=[[a0+464]+260]) == a2(=0x8), and falls through when a1(=[[a0+464]+260]) != a2(=0x8).
  The `bne` branch at 0x1002a840 targets 0x1002a9a8, is taken when a3(=[[a0+464]+260]) != a4(=0x8), and falls through when a3(=[[a0+464]+260]) == a4(=0x8).
  The `bne` branch at 0x1002a850 targets 0x1002a888, is taken when a4(=[[a0+464]+260]) != a5(=0x8), and falls through when a4(=[[a0+464]+260]) == a5(=0x8).
  The `beq` branch at 0x1002a880 targets 0x1002a8f0 and is always taken.
  The `bne` branch at 0x1002a900 targets 0x1002a938, is taken when t3(=[[a0+464]+260]) != t8(=0x8), and falls through when t3(=[[a0+464]+260]) == t8(=0x8).
  The `beq` branch at 0x1002a930 targets 0x1002a9a8 and is always taken.
  The `bne` branch at 0x1002a9b8 targets 0x1002aa6c, is taken when a3(=[[a0+464]+260]) != a4(=0x8), and falls through when a3(=[[a0+464]+260]) == a4(=0x8).
  The `beq` branch at 0x1002aa64 targets 0x1002ab10 and is always taken.
  The `beq` branch at 0x1002ab44 targets 0x1002ab4c and is always taken.
  The return at 0x1002ab58 has v0 = one of ret(set__12VkOptionMenuGi), ret(update__18VkwindowMainWindowGv).
- `stacked__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002ab60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002ab60-0x1002abcc (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x1002ab94 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002ab98 stores 4 bytes to [a0+464] +0x2ac.
  The `lw` at 0x1002aba0 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1002aba8 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x2, a2=[a0+464], a3=a2 at entry (arg2), a4=0x86510.
  The `beq` branch at 0x1002abb0 targets 0x1002abb8 and is always taken.
  The return at 0x1002abc4 has v0 = ret(update__18VkwindowMainWindowGv).
- `useGamma__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002abd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002abd0-0x1002ac40 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1002ac00 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1002ac08 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002ac0c stores 4 bytes to [a0+464] +0x2c0.
  The `lw` at 0x1002ac14 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1002ac1c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+464], a3=0x864a0.
  The `beq` branch at 0x1002ac24 targets 0x1002ac2c and is always taken.
  The return at 0x1002ac38 has v0 = ret(update__18VkwindowMainWindowGv).
- `vPhase__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002ac40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002ac40-0x1002accc (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0x1002ac94 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002ac98 stores 4 bytes to [a0+464] +0x25c.
  The `lw` at 0x1002aca0 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1002ac74 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002ac88 calls (unnamed) [0x1002b610] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1002aca8 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+464], a2=?, a3=?.
  The `beq` branch at 0x1002acb0 targets 0x1002acb8 and is always taken.
  The return at 0x1002acc4 has v0 = ret(update__18VkwindowMainWindowGv).
- `width__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002acd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002acd0-0x1002ad80 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0x1002ad24 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002ad2c stores 4 bytes to [a0+464] +0x110.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1002ad34, `lw` at 0x1002ad54.
  The `jal` at 0x1002ad04 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002ad18 calls (unnamed) [0x1002b610] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1002ad48 calls clamp__18VkwindowMainWindowGiN21 [0x1006efb0] with a0=[sym(vkwindow)], a1=0x8, a2=0x1, a3=0x0.
  The `jal` at 0x1002ad5c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002ad64 targets 0x1002ad6c and is always taken.
  The return at 0x1002ad78 has v0 = ret(update__18VkwindowMainWindowGv).
- `xFilterSize__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002ad80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002ad80-0x1002ae00 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x1002adb0 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1002adc4 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `swc1` at 0x1002adcc stores 4 bytes to [a0+464] +0x274.
  The `lw` at 0x1002add4 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1002addc calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+464]+628, a2=[a2+8], a3=a2 at entry (arg2), a4=0x862f0.
  The `beq` branch at 0x1002ade4 targets 0x1002adec and is always taken.
  The return at 0x1002adf8 has v0 = ret(update__18VkwindowMainWindowGv).
- `xLocked__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002ae00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002ae00-0x1002ae6c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x1002ae30 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002ae38 stores 4 bytes to [a0+464] +0x148.
  The `lw` at 0x1002ae40 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1002ae48 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+464]+328, a2=a2 at entry (arg2), a3=0x86270.
  The `beq` branch at 0x1002ae50 targets 0x1002ae58 and is always taken.
  The return at 0x1002ae64 has v0 = ret(update__18VkwindowMainWindowGv).
- `xOrigin__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002ae70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002ae70-0x1002af20 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0x1002aec4 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002aecc stores 4 bytes to [a0+464] +0x108.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1002aed4, `lw` at 0x1002aef4.
  The `jal` at 0x1002aea4 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002aeb8 calls (unnamed) [0x1002b610] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1002aee8 calls clamp__18VkwindowMainWindowGiN21 [0x1006efb0] with a0=[sym(vkwindow)], a1=0x8, a2=0x0, a3=0x1.
  The `jal` at 0x1002aefc calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002af04 targets 0x1002af0c and is always taken.
  The return at 0x1002af18 has v0 = ret(update__18VkwindowMainWindowGv).
- `xPixel__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002af20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002af20-0x1002af90 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1002af54 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002af5c stores 4 bytes to [a0+464] +0x148.
  The `lw` at 0x1002af64 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1002af6c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x1, a2=[a0+464]+328, a3=a2 at entry (arg2), a4=0x86150.
  The `beq` branch at 0x1002af74 targets 0x1002af7c and is always taken.
  The return at 0x1002af88 has v0 = ret(update__18VkwindowMainWindowGv).
- `xTile__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002af90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002af90-0x1002b000 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1002afc4 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002afcc stores 4 bytes to [a0+464] +0x148.
  The `lw` at 0x1002afd4 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1002afdc calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x2, a2=[a0+464]+328, a3=a2 at entry (arg2), a4=0x860e0.
  The `beq` branch at 0x1002afe4 targets 0x1002afec and is always taken.
  The return at 0x1002aff8 has v0 = ret(update__18VkwindowMainWindowGv).
- `yFilterSize__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002b000 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002b000-0x1002b080 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x1002b030 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1002b044 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `swc1` at 0x1002b04c stores 4 bytes to [a0+464] +0x278.
  The `lw` at 0x1002b054 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1002b05c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+464]+632, a2=[a2+8], a3=a2 at entry (arg2), a4=0x86070.
  The `beq` branch at 0x1002b064 targets 0x1002b06c and is always taken.
  The return at 0x1002b078 has v0 = ret(update__18VkwindowMainWindowGv).
- `yLocked__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002b080 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002b080-0x1002b0ec (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x1002b0b0 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002b0b8 stores 4 bytes to [a0+464] +0x14c.
  The `lw` at 0x1002b0c0 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1002b0c8 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=[a0+464]+332, a2=a2 at entry (arg2), a3=0x85ff0.
  The `beq` branch at 0x1002b0d0 targets 0x1002b0d8 and is always taken.
  The return at 0x1002b0e4 has v0 = ret(update__18VkwindowMainWindowGv).
- `yOrigin__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002b0f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002b0f0-0x1002b1a0 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0x1002b144 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002b14c stores 4 bytes to [a0+464] +0x10c.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1002b154, `lw` at 0x1002b174.
  The `jal` at 0x1002b124 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002b138 calls (unnamed) [0x1002b610] with a0=ret(EZ__GP10_WidgetRec), a1=?, a2=?, a3=?.
  The `jal` at 0x1002b168 calls clamp__18VkwindowMainWindowGiN21 [0x1006efb0] with a0=[sym(vkwindow)], a1=0x8, a2=0x0, a3=0x2.
  The `jal` at 0x1002b17c calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002b184 targets 0x1002b18c and is always taken.
  The return at 0x1002b198 has v0 = ret(update__18VkwindowMainWindowGv).
- `yPixel__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002b1a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002b1a0-0x1002b210 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1002b1d4 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002b1dc stores 4 bytes to [a0+464] +0x14c.
  The `lw` at 0x1002b1e4 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1002b1ec calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x1, a2=[a0+464]+332, a3=a2 at entry (arg2), a4=0x85ed0.
  The `beq` branch at 0x1002b1f4 targets 0x1002b1fc and is always taken.
  The return at 0x1002b208 has v0 = ret(update__18VkwindowMainWindowGv).
- `z__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002b210 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002b210-0x1002b27c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x1002b244 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002b248 stores 4 bytes to [a0+464] +0x134.
  The `lw` at 0x1002b250 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1002b258 calls update__18VkwindowMainWindowGv [0x1006ef10] with a0=[sym(vkwindow)], a1=0x3, a2=[a0+464], a3=a2 at entry (arg2), a4=0x85e60.
  The `beq` branch at 0x1002b260 targets 0x1002b268 and is always taken.
  The return at 0x1002b274 has v0 = ret(update__18VkwindowMainWindowGv).
- `RegisterEncoderFormInterface__11EncoderFormSGv` in `usr/gfx/ircombine` at 0x1002b280 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002b280-0x1002b2bc (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0x1002b294 loads 4 bytes from abs 0x100a90d8.
  The `beq` branch at 0x1002b2a0 targets 0x1002b2a8 and is always taken.
  The return at 0x1002b2b4 has v0 = 0x100a1b08.
- `__ct__13EncoderFormUIGPCcP10_WidgetRec` in `usr/gfx/ircombine` at 0x1002b710 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002b710-0x1002b794 (132 bytes).
  It occupies 132 bytes.
  The `sw` at 0x1002b750 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1002b740 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002b760 calls create__13EncoderFormUIGP10_WidgetRec [0x1002b8b0] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The return at 0x1002b778 has v0 = a0.
  The instructions from 0x1002b780 to 0x1002b790 are not reached by any path from the entry, and their branches are not listed.
- `__ct__13EncoderFormUIGPCc` in `usr/gfx/ircombine` at 0x1002b7a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002b7a0-0x1002b80c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x1002b7dc stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1002b7cc calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1002b7f0 has v0 = a0.
  The instructions from 0x1002b7f8 to 0x1002b808 are not reached by any path from the entry, and their branches are not listed.
- `__dt__13EncoderFormUIGv` in `usr/gfx/ircombine` at 0x1002b810 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002b810-0x1002b8a4 (148 bytes).
  It occupies 148 bytes.
  The `sw` at 0x1002b844 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1002b854 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002b874 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1002b834 targets 0x1002b87c, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x1002b864 targets 0x1002b87c, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x1002b888 has v0 = one of 0x85860, ret(__dt__11VkComponentGv), ret(__dl__GPv).
  The instructions from 0x1002b890 to 0x1002b8a0 are not reached by any path from the entry, and their branches are not listed.
- `create__13EncoderFormUIGP10_WidgetRec` in `usr/gfx/ircombine` at 0x1002b8b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x1002b8b0-0x10030ca8 (21496 bytes).
  It occupies 21496 bytes.
  The `lw` at 0x1002b8f0 loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from sym(xmFormWidgetClass) +0x0, including `lw` at 0x1002b8f8, `lw` at 0x1002d994.
  The `sw` at 0x1002b92c stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `sw` at 0x1002b934 stores 4 bytes to a0 (arg0 at entry) +0x10.
  7 such `lw` accesses load 4 bytes from sym(xmToggleButtonWidgetClass) +0x0, including `lw` at 0x1002b954, `lw` at 0x1002bcac, `lw` at 0x1002bdd0.
  47 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x1002b95c, `lw` at 0x1002ba80, `lw` at 0x1002bbb8.
  The `sw` at 0x1002ba44 stores 4 bytes to a0 (arg0 at entry) +0x44.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1002ba4c, `lw` at 0x1002bacc.
  12 such `lw` accesses load 4 bytes from sym(xmTextFieldWidgetClass) +0x0, including `lw` at 0x1002ba78, `lw` at 0x1002ce94, `lw` at 0x1002cfc8.
  The `sw` at 0x1002bb7c stores 4 bytes to a0 (arg0 at entry) +0x4c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c, including `lw` at 0x1002bb84, `lw` at 0x1002fd74, `lw` at 0x10030ad4.
  27 such `lw` accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0, including `lw` at 0x1002bbb0, `lw` at 0x1002c354, `lw` at 0x1002c45c.
  The `sw` at 0x1002bc9c stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `sw` at 0x1002bd9c stores 4 bytes to a0 (arg0 at entry) +0x48.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1002bda4, `lw` at 0x1002fdac.
  The `sw` at 0x1002bed0 stores 4 bytes to a0 (arg0 at entry) +0xc8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc8, including `lw` at 0x1002bed8, `lw` at 0x1002bf7c, `lw` at 0x1002fdc4.
  The `sw` at 0x1002c02c stores 4 bytes to a0 (arg0 at entry) +0x20.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x1002c034, `lw` at 0x1002c7c4, `lw` at 0x1002d4d4.
  The `sw` at 0x1002c0d8 stores 4 bytes to a0 (arg0 at entry) +0xf8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xf8, including `lw` at 0x1002c0e0, `lw` at 0x1002c114, `lw` at 0x1002c148.
  The `sw` at 0x1002c10c stores 4 bytes to a0 (arg0 at entry) +0x120.
  The `sw` at 0x1002c140 stores 4 bytes to a0 (arg0 at entry) +0x118.
  The `sw` at 0x1002c174 stores 4 bytes to a0 (arg0 at entry) +0x130.
  2 such `lw` accesses load 4 bytes from sym(sgDialWidgetClass) +0x0, including `lw` at 0x1002c184, `lw` at 0x1002c578.
  The `sw` at 0x1002c320 stores 4 bytes to a0 (arg0 at entry) +0xe4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe4, including `lw` at 0x1002c328, `lw` at 0x1002ff08.
  The `sw` at 0x1002c44c stores 4 bytes to a0 (arg0 at entry) +0xe8.
  The `sw` at 0x1002c568 stores 4 bytes to a0 (arg0 at entry) +0xdc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdc, including `lw` at 0x1002c67c, `lw` at 0x1002ff78.
  The `sw` at 0x1002c72c stores 4 bytes to a0 (arg0 at entry) +0xd8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd8, including `lw` at 0x1002c734, `lw` at 0x1002ff60, `lw` at 0x1002ffb0.
  The `sw` at 0x1002c874 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0x1002c8fc stores 4 bytes to a0 (arg0 at entry) +0x100.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x100, including `lw` at 0x1002c904, `lw` at 0x1002ffd8, `lw` at 0x10030a4c.
  The `sw` at 0x1002c930 stores 4 bytes to a0 (arg0 at entry) +0x11c.
  The `sw` at 0x1002c9b8 stores 4 bytes to a0 (arg0 at entry) +0xf4.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xf4, including `lw` at 0x1002c9c0, `lw` at 0x1002c9f4, `lw` at 0x1002fff0.
  The `sw` at 0x1002c9ec stores 4 bytes to a0 (arg0 at entry) +0x10c.
  The `sw` at 0x1002ca20 stores 4 bytes to a0 (arg0 at entry) +0x110.
  The `sw` at 0x1002cb20 stores 4 bytes to a0 (arg0 at entry) +0x30.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x1002cb28, `lw` at 0x1002fe6c, `lw` at 0x1003016c.
  The `sw` at 0x1002cc60 stores 4 bytes to a0 (arg0 at entry) +0x24.
  The `sw` at 0x1002cd7c stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sw` at 0x1002ce84 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0x1002cef8, `lw` at 0x10030218.
  The `sw` at 0x1002cf94 stores 4 bytes to a0 (arg0 at entry) +0x28.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x1002cf9c, `lw` at 0x100302c0, `lw` at 0x10030af8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x74, including `lw` at 0x1002d02c, `lw` at 0x10030250.
  The `sw` at 0x1002d0c8 stores 4 bytes to a0 (arg0 at entry) +0x78.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x78, including `lw` at 0x1002d0d0, `lw` at 0x10030238, `lw` at 0x100302e8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lw` at 0x1002d160, `lw` at 0x10030228, `lw` at 0x10030260.
  The `sw` at 0x1002d1fc stores 4 bytes to a0 (arg0 at entry) +0xac.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xac, including `lw` at 0x1002d204, `lw` at 0x10030270, `lw` at 0x10030310.
  The `sw` at 0x1002d330 stores 4 bytes to a0 (arg0 at entry) +0x84.
  The `sw` at 0x1002d428 stores 4 bytes to a0 (arg0 at entry) +0x80.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x80, including `lw` at 0x1002d430, `lw` at 0x10030360, `lw` at 0x10030b64.
  The `sw` at 0x1002d59c stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x1002d6bc stores 4 bytes to a0 (arg0 at entry) +0xb4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb4, including `lw` at 0x1002d6c4, `lw` at 0x10030398.
  The `sw` at 0x1002d834 stores 4 bytes to a0 (arg0 at entry) +0x40.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x1002d83c, `lw` at 0x1002ec50, `lw` at 0x100303a8.
  The `lw` at 0x1002d868 loads 4 bytes from sym(xmFrameWidgetClass) +0x0.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0x1002d8c0, `lw` at 0x1002ff18, `lw` at 0x1002ff50.
  The `sw` at 0x1002d984 stores 4 bytes to a0 (arg0 at entry) +0x68.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x68, including `lw` at 0x1002d99c, `lw` at 0x1002e4a8, `lw` at 0x1002f9fc.
  The `sw` at 0x1002d9f4 stores 4 bytes to a0 (arg0 at entry) +0x64.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x64, including `lw` at 0x1002da0c, `lw` at 0x1002db14, `lw` at 0x1002dc30.
  The `sw` at 0x1002dafc stores 4 bytes to a0 (arg0 at entry) +0xc4.
  The `sw` at 0x1002dc18 stores 4 bytes to a0 (arg0 at entry) +0xc0.
  2 such `lw` accesses load 4 bytes from sym(xmPushButtonWidgetClass) +0x0, including `lw` at 0x1002dc28, `lw` at 0x1002f994.
  The `sw` at 0x1002dd20 stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0x1002dd28 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `sw` at 0x1002de4c stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `sw` at 0x1002df44 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x1002e04c stores 4 bytes to a0 (arg0 at entry) +0x70.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x58, including `lw` at 0x1002e0c0, `lw` at 0x1002e3d8, `lw` at 0x1002e3e8.
  The `sw` at 0x1002e160 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0x1002e268 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The `sw` at 0x1002e350 stores 4 bytes to a0 (arg0 at entry) +0xb8.
  The `lw` at 0x1002e358 loads 4 bytes from a0 (arg0 at entry) +0xc4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc0, including `lw` at 0x1002e368, `lw` at 0x1002e378, `lw` at 0x1002e390.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0x1002e3a0, `lw` at 0x1002e3b0, `lw` at 0x1002e438.
  The `lw` at 0x1002e3c8 loads 4 bytes from a0 (arg0 at entry) +0x5c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb8, including `lw` at 0x1002e410, `lw` at 0x1002e470, `lw` at 0x1002e480.
  The `lw` at 0x1002e428 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0x1002e460 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `sw` at 0x1002e510 stores 4 bytes to a0 (arg0 at entry) +0x98.
  The `sw` at 0x1002e60c stores 4 bytes to a0 (arg0 at entry) +0xd0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd0, including `lw` at 0x1002e614, `lw` at 0x100303f8, `lw` at 0x10030b88.
  The `sw` at 0x1002e72c stores 4 bytes to a0 (arg0 at entry) +0x8c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c, including `lw` at 0x1002e734, `lw` at 0x1002e7d8, `lw` at 0x10030430.
  The `sw` at 0x1002e884 stores 4 bytes to a0 (arg0 at entry) +0xcc.
  The `sw` at 0x1002e9b4 stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x1002ea3c stores 4 bytes to a0 (arg0 at entry) +0x108.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x108, including `lw` at 0x1002ea44, `lw` at 0x1002ea78, `lw` at 0x100304b8.
  The `sw` at 0x1002ea70 stores 4 bytes to a0 (arg0 at entry) +0x140.
  The `sw` at 0x1002eaa4 stores 4 bytes to a0 (arg0 at entry) +0x144.
  The `sw` at 0x1002eb2c stores 4 bytes to a0 (arg0 at entry) +0x104.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x104, including `lw` at 0x1002eb34, `lw` at 0x1002eb68, `lw` at 0x1002eb9c.
  The `sw` at 0x1002eb60 stores 4 bytes to a0 (arg0 at entry) +0x134.
  The `sw` at 0x1002eb94 stores 4 bytes to a0 (arg0 at entry) +0x138.
  The `sw` at 0x1002ebc8 stores 4 bytes to a0 (arg0 at entry) +0x13c.
  The `sw` at 0x1002ed10 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `sw` at 0x1002ee0c stores 4 bytes to a0 (arg0 at entry) +0x3c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3c, including `lw` at 0x1002ee14, `lw` at 0x10030700, `lw` at 0x10030bd0.
  The `sw` at 0x1002ef5c stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `sw` at 0x1002efe4 stores 4 bytes to a0 (arg0 at entry) +0xfc.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xfc, including `lw` at 0x1002efec, `lw` at 0x1002f020, `lw` at 0x1002f054.
  The `sw` at 0x1002f018 stores 4 bytes to a0 (arg0 at entry) +0x124.
  The `sw` at 0x1002f04c stores 4 bytes to a0 (arg0 at entry) +0x12c.
  The `sw` at 0x1002f080 stores 4 bytes to a0 (arg0 at entry) +0x128.
  The `sw` at 0x1002f0b4 stores 4 bytes to a0 (arg0 at entry) +0x148.
  The `sw` at 0x1002f0e8 stores 4 bytes to a0 (arg0 at entry) +0x114.
  The `sw` at 0x1002f218 stores 4 bytes to a0 (arg0 at entry) +0xa0.
  The `sw` at 0x1002f344 stores 4 bytes to a0 (arg0 at entry) +0xbc.
  The `sw` at 0x1002f464 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xbc, including `lw` at 0x1002f4d8, `lw` at 0x1002f638, `lw` at 0x1002f650.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x1002f4f0, `lw` at 0x100308fc.
  The `sw` at 0x1002f5a0 stores 4 bytes to a0 (arg0 at entry) +0x90.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x90, including `lw` at 0x1002f5a8, `lw` at 0x10030bf4.
  The `sw` at 0x1002f700 stores 4 bytes to a0 (arg0 at entry) +0xd4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd4, including `lw` at 0x1002f708, `lw` at 0x1003090c, `lw` at 0x1003091c.
  The `sw` at 0x1002f830 stores 4 bytes to a0 (arg0 at entry) +0xf0.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xf0, including `lw` at 0x1002f838, `lw` at 0x100308e4, `lw` at 0x10030934.
  The `sw` at 0x1002f960 stores 4 bytes to a0 (arg0 at entry) +0xe0.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe0, including `lw` at 0x1002f968, `lw` at 0x1002fb78, `lw` at 0x1003096c.
  The `sw` at 0x1002fad0 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `lw` at 0x1002fad8 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `sw` at 0x1002fc28 stores 4 bytes to a0 (arg0 at entry) +0xec.
  The `sw` at 0x1002fd6c stores 4 bytes to a0 (arg0 at entry) +0x94.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x50, including `lw` at 0x1002fd84, `lw` at 0x1002fd9c.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x84, including `lw` at 0x1002fdd4, `lw` at 0x1002fdfc, `lw` at 0x10030298.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe8, including `lw` at 0x1002ff28, `lw` at 0x1002ff40.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x88, including `lw` at 0x10030348, `lw` at 0x10030440, `lw` at 0x10030450.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0x10030370, `lw` at 0x10030380.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa0, including `lw` at 0x100303e0, `lw` at 0x10030764, `lw` at 0x100307dc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xcc, including `lw` at 0x10030408, `lw` at 0x10030418, `lw` at 0x10030468.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa4, including `lw` at 0x100304a0, `lw` at 0x10030528, `lw` at 0x1003063c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x10030710, `lw` at 0x10030720, `lw` at 0x10030754.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x94, including `lw` at 0x100308ac, `lw` at 0x100308d4, `lw` at 0x10030944.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xec, including `lw` at 0x10030954, `lw` at 0x100309a4.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10030a28, `sw` at 0x10030a44, `sw` at 0x10030abc.
  The `lw` at 0x10030a60 loads 4 bytes from ?.
  The `sw` at 0x10030acc stores 4 bytes to a0 (arg0 at entry) +0x1ac.
  The `jalr` at 0x1002b8e4 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultEncoderFormUIResources__13EncoderFormUI), a3=a3 at entry (arg3).
  The `jalr` at 0x1002b914 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=sym(_XmStrings)+9052, a4=0x1, a5=0x0.
  The `jalr` at 0x1002b940 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=ret(XtVaCreateWidget), a2=a0 at entry (arg0), a3=a0 at entry (arg0).
  The `jalr` at 0x1002ba34 calls XtVaCreateManagedWidget with a0=0x100950a0, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002ba64 calls XtAddCallback with a0=[a0+68], a1=sym(_XmStrings)+10557, a2=sym(setFlickerFilterCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002bb6c calls XtVaCreateManagedWidget with a0=0x100950b8, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x4, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x1002bb9c calls XtAddCallback with a0=[a0+76], a1=sym(_XmStrings)+4683, a2=sym(safeAreaPercentCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002bc8c calls XtVaCreateManagedWidget with a0=0x100950c8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002bd8c calls XtVaCreateManagedWidget with a0=0x100950e0, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002bdbc calls XtAddCallback with a0=[a0+72], a1=sym(_XmStrings)+10557, a2=sym(setLetterBoxCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002bec0 calls XtVaCreateManagedWidget with a0=0x100950f0, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002bef0 calls XtAddCallback with a0=[a0+200], a1=sym(_XmStrings)+10557, a2=sym(useGammaCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002c01c calls XtVaCreateManagedWidget with a0=0x10095100, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002c04c calls XtAddCallback with a0=[a0+32], a1=sym(_XmStrings)+10557, a2=sym(alphaChannelCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002c060 calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=?.
  The `jalr` at 0x1002c0a8 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10095118, a3=0x0, a4=0x0.
  The `jalr` at 0x1002c0fc calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+248], a1=0x10095130, a2=sym(progressiveCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002c130 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+248], a1=0x10095148, a2=sym(interleavedCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002c164 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+248], a1=0x10095160, a2=sym(stackedCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002c310 calls XtVaCreateManagedWidget with a0=0x10095170, a1=[sym(sgDialWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7044, a4=0x0, a5=sym(_XmStrings)+9620, a6=0x0, a7=0x10095180.
  The `jalr` at 0x1002c340 calls XtAddCallback with a0=[a0+228], a1=sym(_XmStrings)+10557, a2=sym(yFilterSizeCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002c43c calls XtVaCreateManagedWidget with a0=0x100951c0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002c558 calls XtVaCreateManagedWidget with a0=0x100951d8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002c71c calls XtVaCreateManagedWidget with a0=0x100951f0, a1=[sym(sgDialWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7044, a4=0x0, a5=sym(_XmStrings)+9620, a6=0x0, a7=0x10095180.
  The `jalr` at 0x1002c74c calls XtAddCallback with a0=[a0+216], a1=sym(_XmStrings)+10557, a2=sym(xFilterSizeCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002c864 calls XtVaCreateManagedWidget with a0=0x10095200, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002c884 calls __nw__GUi with a0=0x4c, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x1002c8cc calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10095210, a3=0x0, a4=0x0.
  The `jalr` at 0x1002c920 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+256], a1=0x10095228, a2=sym(sourceChannelCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002c940 calls __nw__GUi with a0=0x4c, a1=?, a2=?, a3=a0 at entry (arg0).
  The `jalr` at 0x1002c988 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10095240, a3=0x0, a4=0x0, a5=0x1.
  The `jalr` at 0x1002c9dc calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+244], a1=0x10095258, a2=sym(encoderNTSCCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002ca10 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+244], a1=0x10095270, a2=sym(enocderPALCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002cb10 calls XtVaCreateManagedWidget with a0=0x10095288, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002cb40 calls XtAddCallback with a0=[a0+48], a1=sym(_XmStrings)+10557, a2=sym(channelEnableCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002cc50 calls XtVaCreateManagedWidget with a0=0x100952a0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002cd6c calls XtVaCreateManagedWidget with a0=0x100952b0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002ce74 calls XtVaCreateManagedWidget with a0=0x100952c0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002cf84 calls XtVaCreateManagedWidget with a0=0x100952d0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002cfb4 calls XtAddCallback with a0=[a0+40], a1=sym(_XmStrings)+4683, a2=sym(bGammaCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002d0b8 calls XtVaCreateManagedWidget with a0=0x100952e0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002d0e8 calls XtAddCallback with a0=[a0+120], a1=sym(_XmStrings)+4683, a2=sym(gGammaCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002d1ec calls XtVaCreateManagedWidget with a0=0x100952f0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002d21c calls XtAddCallback with a0=[a0+172], a1=sym(_XmStrings)+4683, a2=sym(rGammaCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002d320 calls XtVaCreateManagedWidget with a0=0x10095300, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002d418 calls XtVaCreateManagedWidget with a0=0x10095310, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002d448 calls XtAddCallback with a0=[a0+128], a1=sym(_XmStrings)+4683, a2=sym(gainCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002d58c calls XtVaCreateManagedWidget with a0=0x10095320, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002d6ac calls XtVaCreateManagedWidget with a0=0x10095330, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002d6dc calls XtAddCallback with a0=[a0+180], a1=sym(_XmStrings)+10557, a2=sym(setupCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002d824 calls XtVaCreateManagedWidget with a0=0x10095340, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+9609.
  The `jalr` at 0x1002d854 calls XtAddCallback with a0=[a0+64], a1=sym(_XmStrings)+10557, a2=sym(ditherCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002d974 calls XtVaCreateManagedWidget with a0=0x10095350, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x3, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x1002d9e4 calls XtVaCreateManagedWidget with a0=0x10095368, a1=[sym(xmFormWidgetClass)], a2=[a0+104], a3=sym(_XmStrings)+9052, a4=0x1, a5=sym(_XmStrings)+5427, a6=0x1, a7=sym(XtStrings)+872.
  The `jalr` at 0x1002daec calls XtVaCreateManagedWidget with a0=0x10095378, a1=[sym(xmLabelWidgetClass)], a2=[a0+100], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002dc08 calls XtVaCreateManagedWidget with a0=0x10095388, a1=[sym(xmLabelWidgetClass)], a2=[a0+100], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002dd10 calls XtVaCreateManagedWidget with a0=0x10095398, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+100], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002dd40 calls XtAddCallback with a0=[a0+176], a1=sym(_XmStrings)+4683, a2=sym(restoreSizeCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002de3c calls XtVaCreateManagedWidget with a0=0x100953b0, a1=[sym(xmLabelWidgetClass)], a2=[a0+100], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002df34 calls XtVaCreateManagedWidget with a0=0x100aa4d8, a1=[sym(xmLabelWidgetClass)], a2=[a0+100], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002e03c calls XtVaCreateManagedWidget with a0=0x100953c0, a1=[sym(xmLabelWidgetClass)], a2=[a0+100], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002e150 calls XtVaCreateManagedWidget with a0=0x100953d0, a1=[sym(xmLabelWidgetClass)], a2=[a0+100], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002e258 calls XtVaCreateManagedWidget with a0=0x100953e0, a1=[sym(xmLabelWidgetClass)], a2=[a0+100], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002e340 calls XtVaCreateManagedWidget with a0=0x100aa4e0, a1=[sym(xmLabelWidgetClass)], a2=[a0+100], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002e384 calls XtVaSetValues with a0=[a0+196], a1=sym(_XmStrings)+10305, a2=[a0+192], a3=sym(_XmStrings)+7562, a4=[a0+192], a5=0x0.
  The `jalr` at 0x1002e3bc calls XtVaSetValues with a0=[a0+192], a1=sym(_XmStrings)+10305, a2=[a0+108], a3=sym(_XmStrings)+7562, a4=[a0+108], a5=0x0.
  The `jalr` at 0x1002e3f4 calls XtVaSetValues with a0=[a0+92], a1=sym(_XmStrings)+10305, a2=[a0+88], a3=sym(_XmStrings)+7562, a4=[a0+88], a5=0x0.
  The `jalr` at 0x1002e41c calls XtVaSetValues with a0=[a0+88], a1=sym(_XmStrings)+10305, a2=[a0+184], a3=0x0.
  The `jalr` at 0x1002e454 calls XtVaSetValues with a0=[a0+112], a1=sym(_XmStrings)+10305, a2=[a0+108], a3=sym(_XmStrings)+7562, a4=[a0+108], a5=0x0.
  The `jalr` at 0x1002e48c calls XtVaSetValues with a0=[a0+156], a1=sym(_XmStrings)+10305, a2=[a0+184], a3=sym(_XmStrings)+7562, a4=[a0+184], a5=0x0.
  The `jalr` at 0x1002e500 calls XtVaCreateManagedWidget with a0=0x100953f8, a1=[sym(xmLabelWidgetClass)], a2=[a0+104], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+5427, a6=0x2, a7=sym(_XmStrings)+5350.
  The `jalr` at 0x1002e5fc calls XtVaCreateManagedWidget with a0=0x10095410, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x4, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x1002e62c calls XtAddCallback with a0=[a0+208], a1=sym(_XmStrings)+4683, a2=sym(vPhaseCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002e71c calls XtVaCreateManagedWidget with a0=0x10095420, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x4, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x1002e74c calls XtAddCallback with a0=[a0+140], a1=sym(_XmStrings)+4683, a2=sym(hPhaseCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002e874 calls XtVaCreateManagedWidget with a0=0x10095430, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002e9a4 calls XtVaCreateManagedWidget with a0=0x10095440, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002e9c4 calls __nw__GUi with a0=0x4c, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1002ea0c calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10095450, a3=0x0, a4=0x0.
  The `jalr` at 0x1002ea60 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+264], a1=0x10095460, a2=sym(yLockedCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002ea94 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+264], a1=0x10095470, a2=sym(yPixelCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002eab4 calls __nw__GUi with a0=0x4c, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1002eafc calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10095480, a3=0x0, a4=0x0.
  The `jalr` at 0x1002eb50 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+260], a1=0x10095490, a2=sym(xLockedCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002eb84 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+260], a1=0x100954a0, a2=sym(xPixelCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002ebb8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+260], a1=0x100954b0, a2=sym(xTileCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002ed00 calls XtVaCreateManagedWidget with a0=0x100954c0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002edfc calls XtVaCreateManagedWidget with a0=0x100954d0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x4, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x1002ee2c calls XtAddCallback with a0=[a0+60], a1=sym(_XmStrings)+4683, a2=sym(cursorPriorityCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002ef4c calls XtVaCreateManagedWidget with a0=0x100954e8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002ef6c calls __nw__GUi with a0=0x4c, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x1002efb4 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10095500, a3=0x0, a4=0x0.
  The `jalr` at 0x1002f008 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+252], a1=0x10095518, a2=sym(rgb10Callback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002f03c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+252], a1=0x10095528, a2=sym(rgba10Callback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002f070 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+252], a1=0x10095538, a2=sym(rgb12Callback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002f0a4 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+252], a1=0x10095548, a2=sym(zCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002f0d8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+252], a1=0x10095558, a2=sym(fsCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002f208 calls XtVaCreateManagedWidget with a0=0x10095568, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002f334 calls XtVaCreateManagedWidget with a0=0x10095580, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x2, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002f454 calls XtVaCreateManagedWidget with a0=0x10095590, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x2, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002f590 calls XtVaCreateManagedWidget with a0=0x100955a0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002f5c0 calls XtAddCallback with a0=[a0+144], a1=sym(_XmStrings)+4683, a2=sym(heightCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002f6f0 calls XtVaCreateManagedWidget with a0=0x100955b0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002f720 calls XtAddCallback with a0=[a0+212], a1=sym(_XmStrings)+4683, a2=sym(widthCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002f820 calls XtVaCreateManagedWidget with a0=0x100955c0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002f850 calls XtAddCallback with a0=[a0+240], a1=sym(_XmStrings)+4683, a2=sym(yOriginCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002f950 calls XtVaCreateManagedWidget with a0=0x100955d0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002f980 calls XtAddCallback with a0=[a0+224], a1=sym(_XmStrings)+4683, a2=sym(xOriginCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002fac0 calls XtVaCreateManagedWidget with a0=0x100955e0, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002faf0 calls XtAddCallback with a0=[a0+52], a1=sym(_XmStrings)+4683, a2=sym(closeChannelCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002fc18 calls XtVaCreateManagedWidget with a0=0x100aa4e8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x2, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002fd5c calls XtVaCreateManagedWidget with a0=0x100955f8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+4724, a6=0x0, a7=sym(_XmStrings)+7513.
  The `jalr` at 0x1002fd90 calls XtVaSetValues with a0=[a0+76], a1=sym(_XmStrings)+7562, a2=[a0+80], a3=0x0.
  The `jalr` at 0x1002fdb8 calls XtVaSetValues with a0=[a0+80], a1=sym(_XmStrings)+7562, a2=[a0+72], a3=0x0.
  The `jalr` at 0x1002fde0 calls XtVaSetValues with a0=[a0+200], a1=sym(_XmStrings)+10305, a2=[a0+132], a3=0x0.
  The `jalr` at 0x1002fe08 calls XtVaSetValues with a0=[a0+32], a1=sym(_XmStrings)+10305, a2=[a0+132], a3=0x0.
  The `jalr` at 0x1002fe1c calls baseWidget__10VkMenuItemCGv with a0=[a0+248], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002fefc calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x1, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x1002ff34 calls XtVaSetValues with a0=[a0+228], a1=sym(_XmStrings)+10305, a2=[a0+96], a3=sym(_XmStrings)+7562, a4=[a0+232], a5=0x0.
  The `jalr` at 0x1002ff6c calls XtVaSetValues with a0=[a0+232], a1=sym(_XmStrings)+10305, a2=[a0+96], a3=sym(_XmStrings)+7562, a4=[a0+216], a5=0x0.
  The `jalr` at 0x1002ffa4 calls XtVaSetValues with a0=[a0+220], a1=sym(_XmStrings)+10305, a2=[a0+96], a3=sym(_XmStrings)+7562, a4=[a0+96], a5=0x0.
  The `jalr` at 0x1002ffcc calls XtVaSetValues with a0=[a0+216], a1=sym(_XmStrings)+10305, a2=[a0+96], a3=0x0.
  The `jalr` at 0x1002ffe0 calls baseWidget__10VkMenuItemCGv with a0=[a0+256], a1=?, a2=?, a3=?.
  The `jalr` at 0x1002fff8 calls baseWidget__10VkMenuItemCGv with a0=[a0+244], a1=?, a2=?, a3=?.
  The `jalr` at 0x10030010 calls baseWidget__10VkMenuItemCGv with a0=[a0+244], a1=?, a2=?, a3=?.
  The `jalr` at 0x10030108 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x1003011c calls baseWidget__10VkMenuItemCGv with a0=[a0+244], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003020c calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x3, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x1, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x10030244 calls XtVaSetValues with a0=[a0+36], a1=sym(_XmStrings)+10305, a2=[a0+168], a3=sym(_XmStrings)+7562, a4=[a0+120], a5=0x0.
  The `jalr` at 0x1003027c calls XtVaSetValues with a0=[a0+116], a1=sym(_XmStrings)+10305, a2=[a0+168], a3=sym(_XmStrings)+7562, a4=[a0+172], a5=0x0.
  The `jalr` at 0x100302b4 calls XtVaSetValues with a0=[a0+168], a1=sym(_XmStrings)+10305, a2=[a0+132], a3=sym(_XmStrings)+7562, a4=[a0+132], a5=0x0.
  The `jalr` at 0x100302dc calls XtVaSetValues with a0=[a0+40], a1=sym(_XmStrings)+10305, a2=[a0+132], a3=0x0.
  The `jalr` at 0x10030304 calls XtVaSetValues with a0=[a0+120], a1=sym(_XmStrings)+10305, a2=[a0+132], a3=0x0.
  The `jalr` at 0x1003032c calls XtVaSetValues with a0=[a0+172], a1=sym(_XmStrings)+10305, a2=[a0+132], a3=0x0.
  The `jalr` at 0x10030354 calls XtVaSetValues with a0=[a0+132], a1=sym(_XmStrings)+10305, a2=[a0+136], a3=0x0.
  The `jalr` at 0x1003038c calls XtVaSetValues with a0=[a0+128], a1=sym(_XmStrings)+10305, a2=[a0+124], a3=sym(_XmStrings)+7562, a4=[a0+124], a5=0x0.
  The `jalr` at 0x100303c4 calls XtVaSetValues with a0=[a0+180], a1=sym(_XmStrings)+10305, a2=[a0+64], a3=sym(_XmStrings)+7562, a4=[a0+64], a5=0x0.
  The `jalr` at 0x100303ec calls XtVaSetValues with a0=[a0+64], a1=sym(_XmStrings)+10305, a2=[a0+160], a3=0x0.
  The `jalr` at 0x10030424 calls XtVaSetValues with a0=[a0+208], a1=sym(_XmStrings)+10305, a2=[a0+204], a3=sym(_XmStrings)+7562, a4=[a0+204], a5=0x0.
  The `jalr` at 0x1003045c calls XtVaSetValues with a0=[a0+140], a1=sym(_XmStrings)+10305, a2=[a0+136], a3=sym(_XmStrings)+7562, a4=[a0+136], a5=0x0.
  The `jalr` at 0x10030484 calls XtVaSetValues with a0=[a0+204], a1=sym(_XmStrings)+10305, a2=[a0+136], a3=0x0.
  The `jalr` at 0x100304ac calls XtVaSetValues with a0=[a0+136], a1=sym(_XmStrings)+10305, a2=[a0+164], a3=0x0.
  The `jalr` at 0x100304c0 calls baseWidget__10VkMenuItemCGv with a0=[a0+264], a1=?, a2=?, a3=?.
  The `jalr` at 0x100304d8 calls baseWidget__10VkMenuItemCGv with a0=[a0+260], a1=?, a2=?, a3=?.
  The `jalr` at 0x100305d8 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x100305ec calls baseWidget__10VkMenuItemCGv with a0=[a0+260], a1=?, a2=?, a3=?.
  The `jalr` at 0x100306f4 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x1003072c calls XtVaSetValues with a0=[a0+60], a1=sym(_XmStrings)+10305, a2=[a0+56], a3=sym(_XmStrings)+7562, a4=[a0+56], a5=0x0.
  The `jalr` at 0x10030740 calls baseWidget__10VkMenuItemCGv with a0=[a0+252], a1=?, a2=?, a3=?.
  The `jalr` at 0x10030778 calls XtVaSetValues with a0=[a0+56], a1=sym(_XmStrings)+10305, a2=[a0+160], a3=sym(_XmStrings)+7562, a4=ret(baseWidget__10VkMenuItemCGv), a5=0x0.
  The `jalr` at 0x1003078c calls baseWidget__10VkMenuItemCGv with a0=[a0+252], a1=?, a2=?, a3=?.
  The `jalr` at 0x10030890 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x100308b8 calls XtVaSetValues with a0=[a0+160], a1=sym(_XmStrings)+10305, a2=[a0+148], a3=0x0.
  The `jalr` at 0x100308f0 calls XtVaSetValues with a0=[a0+188], a1=sym(_XmStrings)+10305, a2=[a0+148], a3=sym(_XmStrings)+7562, a4=[a0+240], a5=0x0.
  The `jalr` at 0x10030928 calls XtVaSetValues with a0=[a0+44], a1=sym(_XmStrings)+10305, a2=[a0+212], a3=sym(_XmStrings)+7562, a4=[a0+212], a5=0x0.
  The `jalr` at 0x10030960 calls XtVaSetValues with a0=[a0+240], a1=sym(_XmStrings)+10305, a2=[a0+148], a3=sym(_XmStrings)+7562, a4=[a0+236], a5=0x0.
  The `jalr` at 0x10030998 calls XtVaSetValues with a0=[a0+224], a1=sym(_XmStrings)+10305, a2=[a0+148], a3=sym(_XmStrings)+7562, a4=[a0+148], a5=0x0.
  The `jalr` at 0x100309c0 calls XtVaSetValues with a0=[a0+236], a1=sym(_XmStrings)+10305, a2=[a0+148], a3=0x0.
  The `jalr` at 0x10030a74 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+256], a1=?, a2=sym(sourceChannelCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a7=0xb.
  The `jalr` at 0x10030aec calls XtAddCallback with a0=[a0+76], a1=sym(_XmStrings)+7765, a2=sym(safeAreaPercentCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030b10 calls XtAddCallback with a0=[a0+40], a1=sym(_XmStrings)+7765, a2=sym(bGammaCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030b34 calls XtAddCallback with a0=[a0+120], a1=sym(_XmStrings)+7765, a2=sym(gGammaCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030b58 calls XtAddCallback with a0=[a0+172], a1=sym(_XmStrings)+7765, a2=sym(rGammaCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030b7c calls XtAddCallback with a0=[a0+128], a1=sym(_XmStrings)+7765, a2=sym(gainCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030ba0 calls XtAddCallback with a0=[a0+208], a1=sym(_XmStrings)+7765, a2=sym(vPhaseCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030bc4 calls XtAddCallback with a0=[a0+140], a1=sym(_XmStrings)+7765, a2=sym(hPhaseCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030be8 calls XtAddCallback with a0=[a0+60], a1=sym(_XmStrings)+7765, a2=sym(cursorPriorityCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030c0c calls XtAddCallback with a0=[a0+144], a1=sym(_XmStrings)+7765, a2=sym(heightCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030c30 calls XtAddCallback with a0=[a0+212], a1=sym(_XmStrings)+7765, a2=sym(widthCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030c54 calls XtAddCallback with a0=[a0+240], a1=sym(_XmStrings)+7765, a2=sym(yOriginCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030c78 calls XtAddCallback with a0=[a0+224], a1=sym(_XmStrings)+7765, a2=sym(xOriginCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `beq` branch at 0x1002c078 targets 0x1002c0cc, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1002c0c4 targets 0x1002c0d0 and is always taken.
  The `beq` branch at 0x1002c89c targets 0x1002c8f0, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1002c8e8 targets 0x1002c8f4 and is always taken.
  The `beq` branch at 0x1002c958 targets 0x1002c9ac, is taken when a4(=ret(__nw__GUi)) == 0, and falls through when a4(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1002c9a4 targets 0x1002c9b0 and is always taken.
  The `beq` branch at 0x1002e9dc targets 0x1002ea30, is taken when a3(=ret(__nw__GUi)) == 0, and falls through when a3(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1002ea28 targets 0x1002ea34 and is always taken.
  The `beq` branch at 0x1002eacc targets 0x1002eb20, is taken when a3(=ret(__nw__GUi)) == 0, and falls through when a3(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1002eb18 targets 0x1002eb24 and is always taken.
  The `beq` branch at 0x1002ef84 targets 0x1002efd8, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1002efd0 targets 0x1002efdc and is always taken.
  The `beq` branch at 0x100309d8 targets 0x10030aa4 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x100309e8 targets 0x10030a88, is taken when a2(?) == a3(=0x1), and falls through when a2(?) != a3(=0x1).
  The `beq` branch at 0x100309f8 targets 0x10030a88, is taken when a4(?) == a5(=0x8), and falls through when a4(?) != a5(=0x8).
  The `beq` branch at 0x10030a08 targets 0x10030a88, is taken when a6(?) == a7(=0xb), and falls through when a6(?) != a7(=0xb).
  The `bne` branch at 0x10030a9c targets 0x100309e0, is taken when t0(?) < 0xf (signed), and falls through when t0(?) >= 0xf (signed).
  The return at 0x10030c8c has v0 = ret(XtAddCallback).
  The instructions from 0x10030c94 to 0x10030ca4 are not reached by any path from the entry, and their branches are not listed.
- `className__13EncoderFormUIGv` in `usr/gfx/ircombine` at 0x10030cb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10030cb0-0x10030cf0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10030cc8 loads 4 bytes from abs 0x100a90d4.
  The `beq` branch at 0x10030cd4 targets 0x10030cdc and is always taken.
  The return at 0x10030ce8 has v0 = 0x10095608.
- `alphaChannel__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030cf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10030cf0-0x10030d1c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10030d04 targets 0x10030d0c and is always taken.
  The return at 0x10030d14 has v0 = ?.
- `bGamma__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030d20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10030d20-0x10030d4c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10030d34 targets 0x10030d3c and is always taken.
  The return at 0x10030d44 has v0 = ?.
- `channelEnable__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030d50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10030d50-0x10030d7c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10030d64 targets 0x10030d6c and is always taken.
  The return at 0x10030d74 has v0 = ?.
- `closeChannel__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030d80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10030d80-0x10030dac (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10030d94 targets 0x10030d9c and is always taken.
  The return at 0x10030da4 has v0 = ?.
- `cursorPriority__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030db0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10030db0-0x10030ddc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10030dc4 targets 0x10030dcc and is always taken.
  The return at 0x10030dd4 has v0 = ?.
- `dither__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030de0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10030de0-0x10030e0c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10030df4 targets 0x10030dfc and is always taken.
  The return at 0x10030e04 has v0 = ?.
- `encoderNTSC__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030e10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10030e10-0x10030e3c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10030e24 targets 0x10030e2c and is always taken.
  The return at 0x10030e34 has v0 = ?.
- `enocderPAL__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030e40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10030e40-0x10030e6c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10030e54 targets 0x10030e5c and is always taken.
  The return at 0x10030e64 has v0 = ?.
- `fs__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030e70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10030e70-0x10030e9c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10030e84 targets 0x10030e8c and is always taken.
  The return at 0x10030e94 has v0 = ?.
- `gGamma__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030ea0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10030ea0-0x10030ecc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10030eb4 targets 0x10030ebc and is always taken.
  The return at 0x10030ec4 has v0 = ?.
- `gain__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030ed0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10030ed0-0x10030efc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10030ee4 targets 0x10030eec and is always taken.
  The return at 0x10030ef4 has v0 = ?.
- `hPhase__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030f00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10030f00-0x10030f2c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10030f14 targets 0x10030f1c and is always taken.
  The return at 0x10030f24 has v0 = ?.
- `height__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030f30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10030f30-0x10030f5c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10030f44 targets 0x10030f4c and is always taken.
  The return at 0x10030f54 has v0 = ?.
- `interleaved__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030f60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10030f60-0x10030f8c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10030f74 targets 0x10030f7c and is always taken.
  The return at 0x10030f84 has v0 = ?.
- `progressive__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030f90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10030f90-0x10030fbc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10030fa4 targets 0x10030fac and is always taken.
  The return at 0x10030fb4 has v0 = ?.
- `rGamma__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030fc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10030fc0-0x10030fec (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10030fd4 targets 0x10030fdc and is always taken.
  The return at 0x10030fe4 has v0 = ?.
- `restoreSize__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030ff0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10030ff0-0x1003101c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10031004 targets 0x1003100c and is always taken.
  The return at 0x10031014 has v0 = ?.
- `rgb10__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031020 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031020-0x1003104c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10031034 targets 0x1003103c and is always taken.
  The return at 0x10031044 has v0 = ?.
- `rgb12__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031050 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031050-0x1003107c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10031064 targets 0x1003106c and is always taken.
  The return at 0x10031074 has v0 = ?.
- `rgba10__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031080 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031080-0x100310ac (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10031094 targets 0x1003109c and is always taken.
  The return at 0x100310a4 has v0 = ?.
- `safeAreaPercent__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100310b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100310b0-0x100310dc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100310c4 targets 0x100310cc and is always taken.
  The return at 0x100310d4 has v0 = ?.
- `setFlickerFilter__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100310e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100310e0-0x1003110c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100310f4 targets 0x100310fc and is always taken.
  The return at 0x10031104 has v0 = ?.
- `setLetterBox__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031110 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031110-0x1003113c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10031124 targets 0x1003112c and is always taken.
  The return at 0x10031134 has v0 = ?.
- `setup__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031140 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031140-0x1003116c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10031154 targets 0x1003115c and is always taken.
  The return at 0x10031164 has v0 = ?.
- `sourceChannel__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031170 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031170-0x1003119c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10031184 targets 0x1003118c and is always taken.
  The return at 0x10031194 has v0 = ?.
- `stacked__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100311a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100311a0-0x100311cc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100311b4 targets 0x100311bc and is always taken.
  The return at 0x100311c4 has v0 = ?.
- `useGamma__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100311d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100311d0-0x100311fc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100311e4 targets 0x100311ec and is always taken.
  The return at 0x100311f4 has v0 = ?.
- `vPhase__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031200 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031200-0x1003122c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10031214 targets 0x1003121c and is always taken.
  The return at 0x10031224 has v0 = ?.
- `width__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031230 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031230-0x1003125c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10031244 targets 0x1003124c and is always taken.
  The return at 0x10031254 has v0 = ?.
- `xFilterSize__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031260 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031260-0x1003128c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10031274 targets 0x1003127c and is always taken.
  The return at 0x10031284 has v0 = ?.
- `xLocked__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031290 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031290-0x100312bc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100312a4 targets 0x100312ac and is always taken.
  The return at 0x100312b4 has v0 = ?.
- `xOrigin__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100312c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100312c0-0x100312ec (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100312d4 targets 0x100312dc and is always taken.
  The return at 0x100312e4 has v0 = ?.
- `xPixel__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100312f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100312f0-0x1003131c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10031304 targets 0x1003130c and is always taken.
  The return at 0x10031314 has v0 = ?.
- `xTile__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031320 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031320-0x1003134c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10031334 targets 0x1003133c and is always taken.
  The return at 0x10031344 has v0 = ?.
- `yFilterSize__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031350 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031350-0x1003137c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10031364 targets 0x1003136c and is always taken.
  The return at 0x10031374 has v0 = ?.
- `yLocked__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031380 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031380-0x100313ac (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10031394 targets 0x1003139c and is always taken.
  The return at 0x100313a4 has v0 = ?.
- `yOrigin__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100313b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100313b0-0x100313dc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100313c4 targets 0x100313cc and is always taken.
  The return at 0x100313d4 has v0 = ?.
- `yPixel__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100313e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100313e0-0x1003140c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x100313f4 targets 0x100313fc and is always taken.
  The return at 0x10031404 has v0 = ?.
- `z__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031410 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031410-0x1003143c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x10031424 targets 0x1003142c and is always taken.
  The return at 0x10031434 has v0 = ?.
- `alphaChannelCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031440 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031440-0x100314b8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10031470, `lw` at 0x1003148c.
  The `lw` at 0x10031474 loads 4 bytes from [a1+8] +0x9c.
  The `lw` at 0x10031490 loads 4 bytes from [a1+8] +0xa4.
  The `jalr` at 0x10031494 calls (unknown callee) with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7fc30.
  The `beq` branch at 0x1003149c targets 0x100314a4 and is always taken.
  The return at 0x100314b0 has v0 = ret(?).
- `bGammaCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100314c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100314c0-0x10031538 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100314f0, `lw` at 0x1003150c.
  The `lw` at 0x100314f4 loads 4 bytes from [a1+8] +0xa8.
  The `lw` at 0x10031510 loads 4 bytes from [a1+8] +0xb0.
  The `jalr` at 0x10031514 calls (unknown callee) with a0=([[a1+8]+168] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7fbb0.
  The `beq` branch at 0x1003151c targets 0x10031524 and is always taken.
  The return at 0x10031530 has v0 = ret(?).
- `channelEnableCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031540 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031540-0x100315b8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10031570, `lw` at 0x1003158c.
  The `lw` at 0x10031574 loads 4 bytes from [a1+8] +0xb4.
  The `lw` at 0x10031590 loads 4 bytes from [a1+8] +0xbc.
  The `jalr` at 0x10031594 calls (unknown callee) with a0=([[a1+8]+180] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7fb30.
  The `beq` branch at 0x1003159c targets 0x100315a4 and is always taken.
  The return at 0x100315b0 has v0 = ret(?).
- `closeChannelCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100315c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100315c0-0x10031638 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100315f0, `lw` at 0x1003160c.
  The `lw` at 0x100315f4 loads 4 bytes from [a1+8] +0xc0.
  The `lw` at 0x10031610 loads 4 bytes from [a1+8] +0xc8.
  The `jalr` at 0x10031614 calls (unknown callee) with a0=([[a1+8]+192] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7fab0.
  The `beq` branch at 0x1003161c targets 0x10031624 and is always taken.
  The return at 0x10031630 has v0 = ret(?).
- `cursorPriorityCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031640 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031640-0x100316b8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10031670, `lw` at 0x1003168c.
  The `lw` at 0x10031674 loads 4 bytes from [a1+8] +0xcc.
  The `lw` at 0x10031690 loads 4 bytes from [a1+8] +0xd4.
  The `jalr` at 0x10031694 calls (unknown callee) with a0=([[a1+8]+204] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7fa30.
  The `beq` branch at 0x1003169c targets 0x100316a4 and is always taken.
  The return at 0x100316b0 has v0 = ret(?).
- `ditherCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100316c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100316c0-0x10031738 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100316f0, `lw` at 0x1003170c.
  The `lw` at 0x100316f4 loads 4 bytes from [a1+8] +0xd8.
  The `lw` at 0x10031710 loads 4 bytes from [a1+8] +0xe0.
  The `jalr` at 0x10031714 calls (unknown callee) with a0=([[a1+8]+216] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f9b0.
  The `beq` branch at 0x1003171c targets 0x10031724 and is always taken.
  The return at 0x10031730 has v0 = ret(?).
- `encoderNTSCCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031740 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031740-0x100317b8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10031770, `lw` at 0x1003178c.
  The `lw` at 0x10031774 loads 4 bytes from [a1+8] +0xe4.
  The `lw` at 0x10031790 loads 4 bytes from [a1+8] +0xec.
  The `jalr` at 0x10031794 calls (unknown callee) with a0=([[a1+8]+228] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f930.
  The `beq` branch at 0x1003179c targets 0x100317a4 and is always taken.
  The return at 0x100317b0 has v0 = ret(?).
- `enocderPALCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100317c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100317c0-0x10031838 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100317f0, `lw` at 0x1003180c.
  The `lw` at 0x100317f4 loads 4 bytes from [a1+8] +0xf0.
  The `lw` at 0x10031810 loads 4 bytes from [a1+8] +0xf8.
  The `jalr` at 0x10031814 calls (unknown callee) with a0=([[a1+8]+240] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f8b0.
  The `beq` branch at 0x1003181c targets 0x10031824 and is always taken.
  The return at 0x10031830 has v0 = ret(?).
- `fsCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031840 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031840-0x100318b8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10031870, `lw` at 0x1003188c.
  The `lw` at 0x10031874 loads 4 bytes from [a1+8] +0xfc.
  The `lw` at 0x10031890 loads 4 bytes from [a1+8] +0x104.
  The `jalr` at 0x10031894 calls (unknown callee) with a0=([[a1+8]+252] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f830.
  The `beq` branch at 0x1003189c targets 0x100318a4 and is always taken.
  The return at 0x100318b0 has v0 = ret(?).
- `gGammaCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100318c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100318c0-0x10031938 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100318f0, `lw` at 0x1003190c.
  The `lw` at 0x100318f4 loads 4 bytes from [a1+8] +0x108.
  The `lw` at 0x10031910 loads 4 bytes from [a1+8] +0x110.
  The `jalr` at 0x10031914 calls (unknown callee) with a0=([[a1+8]+264] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f7b0.
  The `beq` branch at 0x1003191c targets 0x10031924 and is always taken.
  The return at 0x10031930 has v0 = ret(?).
- `gainCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031940 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031940-0x100319b8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10031970, `lw` at 0x1003198c.
  The `lw` at 0x10031974 loads 4 bytes from [a1+8] +0x114.
  The `lw` at 0x10031990 loads 4 bytes from [a1+8] +0x11c.
  The `jalr` at 0x10031994 calls (unknown callee) with a0=([[a1+8]+276] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f730.
  The `beq` branch at 0x1003199c targets 0x100319a4 and is always taken.
  The return at 0x100319b0 has v0 = ret(?).
- `hPhaseCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100319c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100319c0-0x10031a38 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100319f0, `lw` at 0x10031a0c.
  The `lw` at 0x100319f4 loads 4 bytes from [a1+8] +0x120.
  The `lw` at 0x10031a10 loads 4 bytes from [a1+8] +0x128.
  The `jalr` at 0x10031a14 calls (unknown callee) with a0=([[a1+8]+288] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f6b0.
  The `beq` branch at 0x10031a1c targets 0x10031a24 and is always taken.
  The return at 0x10031a30 has v0 = ret(?).
- `heightCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031a40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031a40-0x10031ab8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10031a70, `lw` at 0x10031a8c.
  The `lw` at 0x10031a74 loads 4 bytes from [a1+8] +0x12c.
  The `lw` at 0x10031a90 loads 4 bytes from [a1+8] +0x134.
  The `jalr` at 0x10031a94 calls (unknown callee) with a0=([[a1+8]+300] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f630.
  The `beq` branch at 0x10031a9c targets 0x10031aa4 and is always taken.
  The return at 0x10031ab0 has v0 = ret(?).
- `interleavedCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031ac0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031ac0-0x10031b38 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10031af0, `lw` at 0x10031b0c.
  The `lw` at 0x10031af4 loads 4 bytes from [a1+8] +0x138.
  The `lw` at 0x10031b10 loads 4 bytes from [a1+8] +0x140.
  The `jalr` at 0x10031b14 calls (unknown callee) with a0=([[a1+8]+312] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f5b0.
  The `beq` branch at 0x10031b1c targets 0x10031b24 and is always taken.
  The return at 0x10031b30 has v0 = ret(?).
- `progressiveCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031b40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031b40-0x10031bb8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10031b70, `lw` at 0x10031b8c.
  The `lw` at 0x10031b74 loads 4 bytes from [a1+8] +0x144.
  The `lw` at 0x10031b90 loads 4 bytes from [a1+8] +0x14c.
  The `jalr` at 0x10031b94 calls (unknown callee) with a0=([[a1+8]+324] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f530.
  The `beq` branch at 0x10031b9c targets 0x10031ba4 and is always taken.
  The return at 0x10031bb0 has v0 = ret(?).
- `rGammaCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031bc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031bc0-0x10031c38 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10031bf0, `lw` at 0x10031c0c.
  The `lw` at 0x10031bf4 loads 4 bytes from [a1+8] +0x150.
  The `lw` at 0x10031c10 loads 4 bytes from [a1+8] +0x158.
  The `jalr` at 0x10031c14 calls (unknown callee) with a0=([[a1+8]+336] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f4b0.
  The `beq` branch at 0x10031c1c targets 0x10031c24 and is always taken.
  The return at 0x10031c30 has v0 = ret(?).
- `restoreSizeCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031c40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031c40-0x10031cb8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10031c70, `lw` at 0x10031c8c.
  The `lw` at 0x10031c74 loads 4 bytes from [a1+8] +0x15c.
  The `lw` at 0x10031c90 loads 4 bytes from [a1+8] +0x164.
  The `jalr` at 0x10031c94 calls (unknown callee) with a0=([[a1+8]+348] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f430.
  The `beq` branch at 0x10031c9c targets 0x10031ca4 and is always taken.
  The return at 0x10031cb0 has v0 = ret(?).
- `rgb10Callback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031cc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031cc0-0x10031d38 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10031cf0, `lw` at 0x10031d0c.
  The `lw` at 0x10031cf4 loads 4 bytes from [a1+8] +0x168.
  The `lw` at 0x10031d10 loads 4 bytes from [a1+8] +0x170.
  The `jalr` at 0x10031d14 calls (unknown callee) with a0=([[a1+8]+360] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f3b0.
  The `beq` branch at 0x10031d1c targets 0x10031d24 and is always taken.
  The return at 0x10031d30 has v0 = ret(?).
- `rgb12Callback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031d40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031d40-0x10031db8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10031d70, `lw` at 0x10031d8c.
  The `lw` at 0x10031d74 loads 4 bytes from [a1+8] +0x174.
  The `lw` at 0x10031d90 loads 4 bytes from [a1+8] +0x17c.
  The `jalr` at 0x10031d94 calls (unknown callee) with a0=([[a1+8]+372] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f330.
  The `beq` branch at 0x10031d9c targets 0x10031da4 and is always taken.
  The return at 0x10031db0 has v0 = ret(?).
- `rgba10Callback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031dc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031dc0-0x10031e38 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10031df0, `lw` at 0x10031e0c.
  The `lw` at 0x10031df4 loads 4 bytes from [a1+8] +0x180.
  The `lw` at 0x10031e10 loads 4 bytes from [a1+8] +0x188.
  The `jalr` at 0x10031e14 calls (unknown callee) with a0=([[a1+8]+384] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f2b0.
  The `beq` branch at 0x10031e1c targets 0x10031e24 and is always taken.
  The return at 0x10031e30 has v0 = ret(?).
- `safeAreaPercentCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031e40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031e40-0x10031eb8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10031e70, `lw` at 0x10031e8c.
  The `lw` at 0x10031e74 loads 4 bytes from [a1+8] +0x18c.
  The `lw` at 0x10031e90 loads 4 bytes from [a1+8] +0x194.
  The `jalr` at 0x10031e94 calls (unknown callee) with a0=([[a1+8]+396] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f230.
  The `beq` branch at 0x10031e9c targets 0x10031ea4 and is always taken.
  The return at 0x10031eb0 has v0 = ret(?).
- `setFlickerFilterCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031ec0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031ec0-0x10031f38 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10031ef0, `lw` at 0x10031f0c.
  The `lw` at 0x10031ef4 loads 4 bytes from [a1+8] +0x198.
  The `lw` at 0x10031f10 loads 4 bytes from [a1+8] +0x1a0.
  The `jalr` at 0x10031f14 calls (unknown callee) with a0=([[a1+8]+408] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f1b0.
  The `beq` branch at 0x10031f1c targets 0x10031f24 and is always taken.
  The return at 0x10031f30 has v0 = ret(?).
- `setLetterBoxCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031f40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031f40-0x10031fb8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10031f70, `lw` at 0x10031f8c.
  The `lw` at 0x10031f74 loads 4 bytes from [a1+8] +0x1a4.
  The `lw` at 0x10031f90 loads 4 bytes from [a1+8] +0x1ac.
  The `jalr` at 0x10031f94 calls (unknown callee) with a0=([[a1+8]+420] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f130.
  The `beq` branch at 0x10031f9c targets 0x10031fa4 and is always taken.
  The return at 0x10031fb0 has v0 = ret(?).
- `setupCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031fc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10031fc0-0x10032038 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10031ff0, `lw` at 0x1003200c.
  The `lw` at 0x10031ff4 loads 4 bytes from [a1+8] +0x1b0.
  The `lw` at 0x10032010 loads 4 bytes from [a1+8] +0x1b8.
  The `jalr` at 0x10032014 calls (unknown callee) with a0=([[a1+8]+432] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f0b0.
  The `beq` branch at 0x1003201c targets 0x10032024 and is always taken.
  The return at 0x10032030 has v0 = ret(?).
- `sourceChannelCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10032040 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10032040-0x100320b8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10032070, `lw` at 0x1003208c.
  The `lw` at 0x10032074 loads 4 bytes from [a1+8] +0x1bc.
  The `lw` at 0x10032090 loads 4 bytes from [a1+8] +0x1c4.
  The `jalr` at 0x10032094 calls (unknown callee) with a0=([[a1+8]+444] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f030.
  The `beq` branch at 0x1003209c targets 0x100320a4 and is always taken.
  The return at 0x100320b0 has v0 = ret(?).
- `stackedCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100320c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100320c0-0x10032138 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100320f0, `lw` at 0x1003210c.
  The `lw` at 0x100320f4 loads 4 bytes from [a1+8] +0x1c8.
  The `lw` at 0x10032110 loads 4 bytes from [a1+8] +0x1d0.
  The `jalr` at 0x10032114 calls (unknown callee) with a0=([[a1+8]+456] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7efb0.
  The `beq` branch at 0x1003211c targets 0x10032124 and is always taken.
  The return at 0x10032130 has v0 = ret(?).
- `useGammaCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10032140 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10032140-0x100321b8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10032170, `lw` at 0x1003218c.
  The `lw` at 0x10032174 loads 4 bytes from [a1+8] +0x1d4.
  The `lw` at 0x10032190 loads 4 bytes from [a1+8] +0x1dc.
  The `jalr` at 0x10032194 calls (unknown callee) with a0=([[a1+8]+468] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7ef30.
  The `beq` branch at 0x1003219c targets 0x100321a4 and is always taken.
  The return at 0x100321b0 has v0 = ret(?).
- `vPhaseCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100321c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100321c0-0x10032238 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100321f0, `lw` at 0x1003220c.
  The `lw` at 0x100321f4 loads 4 bytes from [a1+8] +0x1e0.
  The `lw` at 0x10032210 loads 4 bytes from [a1+8] +0x1e8.
  The `jalr` at 0x10032214 calls (unknown callee) with a0=([[a1+8]+480] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7eeb0.
  The `beq` branch at 0x1003221c targets 0x10032224 and is always taken.
  The return at 0x10032230 has v0 = ret(?).
- `widthCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10032240 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10032240-0x100322b8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10032270, `lw` at 0x1003228c.
  The `lw` at 0x10032274 loads 4 bytes from [a1+8] +0x1ec.
  The `lw` at 0x10032290 loads 4 bytes from [a1+8] +0x1f4.
  The `jalr` at 0x10032294 calls (unknown callee) with a0=([[a1+8]+492] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7ee30.
  The `beq` branch at 0x1003229c targets 0x100322a4 and is always taken.
  The return at 0x100322b0 has v0 = ret(?).
- `xFilterSizeCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100322c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100322c0-0x10032338 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100322f0, `lw` at 0x1003230c.
  The `lw` at 0x100322f4 loads 4 bytes from [a1+8] +0x1f8.
  The `lw` at 0x10032310 loads 4 bytes from [a1+8] +0x200.
  The `jalr` at 0x10032314 calls (unknown callee) with a0=([[a1+8]+504] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7edb0.
  The `beq` branch at 0x1003231c targets 0x10032324 and is always taken.
  The return at 0x10032330 has v0 = ret(?).
- `xLockedCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10032340 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10032340-0x100323b8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10032370, `lw` at 0x1003238c.
  The `lw` at 0x10032374 loads 4 bytes from [a1+8] +0x204.
  The `lw` at 0x10032390 loads 4 bytes from [a1+8] +0x20c.
  The `jalr` at 0x10032394 calls (unknown callee) with a0=([[a1+8]+516] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7ed30.
  The `beq` branch at 0x1003239c targets 0x100323a4 and is always taken.
  The return at 0x100323b0 has v0 = ret(?).
- `xOriginCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100323c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100323c0-0x10032438 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100323f0, `lw` at 0x1003240c.
  The `lw` at 0x100323f4 loads 4 bytes from [a1+8] +0x210.
  The `lw` at 0x10032410 loads 4 bytes from [a1+8] +0x218.
  The `jalr` at 0x10032414 calls (unknown callee) with a0=([[a1+8]+528] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7ecb0.
  The `beq` branch at 0x1003241c targets 0x10032424 and is always taken.
  The return at 0x10032430 has v0 = ret(?).
- `xPixelCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10032440 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10032440-0x100324b8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10032470, `lw` at 0x1003248c.
  The `lw` at 0x10032474 loads 4 bytes from [a1+8] +0x21c.
  The `lw` at 0x10032490 loads 4 bytes from [a1+8] +0x224.
  The `jalr` at 0x10032494 calls (unknown callee) with a0=([[a1+8]+540] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7ec30.
  The `beq` branch at 0x1003249c targets 0x100324a4 and is always taken.
  The return at 0x100324b0 has v0 = ret(?).
- `xTileCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100324c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100324c0-0x10032538 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100324f0, `lw` at 0x1003250c.
  The `lw` at 0x100324f4 loads 4 bytes from [a1+8] +0x228.
  The `lw` at 0x10032510 loads 4 bytes from [a1+8] +0x230.
  The `jalr` at 0x10032514 calls (unknown callee) with a0=([[a1+8]+552] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7ebb0.
  The `beq` branch at 0x1003251c targets 0x10032524 and is always taken.
  The return at 0x10032530 has v0 = ret(?).
- `yFilterSizeCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10032540 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10032540-0x100325b8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10032570, `lw` at 0x1003258c.
  The `lw` at 0x10032574 loads 4 bytes from [a1+8] +0x234.
  The `lw` at 0x10032590 loads 4 bytes from [a1+8] +0x23c.
  The `jalr` at 0x10032594 calls (unknown callee) with a0=([[a1+8]+564] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7eb30.
  The `beq` branch at 0x1003259c targets 0x100325a4 and is always taken.
  The return at 0x100325b0 has v0 = ret(?).
- `yLockedCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100325c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100325c0-0x10032638 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100325f0, `lw` at 0x1003260c.
  The `lw` at 0x100325f4 loads 4 bytes from [a1+8] +0x240.
  The `lw` at 0x10032610 loads 4 bytes from [a1+8] +0x248.
  The `jalr` at 0x10032614 calls (unknown callee) with a0=([[a1+8]+576] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7eab0.
  The `beq` branch at 0x1003261c targets 0x10032624 and is always taken.
  The return at 0x10032630 has v0 = ret(?).
- `yOriginCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10032640 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10032640-0x100326b8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10032670, `lw` at 0x1003268c.
  The `lw` at 0x10032674 loads 4 bytes from [a1+8] +0x24c.
  The `lw` at 0x10032690 loads 4 bytes from [a1+8] +0x254.
  The `jalr` at 0x10032694 calls (unknown callee) with a0=([[a1+8]+588] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7ea30.
  The `beq` branch at 0x1003269c targets 0x100326a4 and is always taken.
  The return at 0x100326b0 has v0 = ret(?).
- `yPixelCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100326c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x100326c0-0x10032738 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100326f0, `lw` at 0x1003270c.
  The `lw` at 0x100326f4 loads 4 bytes from [a1+8] +0x258.
  The `lw` at 0x10032710 loads 4 bytes from [a1+8] +0x260.
  The `jalr` at 0x10032714 calls (unknown callee) with a0=([[a1+8]+600] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7e9b0.
  The `beq` branch at 0x1003271c targets 0x10032724 and is always taken.
  The return at 0x10032730 has v0 = ret(?).
- `zCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10032740 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10032740-0x100327b8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10032770, `lw` at 0x1003278c.
  The `lw` at 0x10032774 loads 4 bytes from [a1+8] +0x264.
  The `lw` at 0x10032790 loads 4 bytes from [a1+8] +0x26c.
  The `jalr` at 0x10032794 calls (unknown callee) with a0=([[a1+8]+612] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7e930.
  The `beq` branch at 0x1003279c targets 0x100327a4 and is always taken.
  The return at 0x100327b0 has v0 = ret(?).
- `__ct__5Form1GPCcP10_WidgetReci` in `usr/gfx/ircombine` at 0x10032c10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10032c10-0x10032cb8 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0x10032c58 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x10032c64 stores 4 bytes to a0 (arg0 at entry) +0x14c.
  The `sw` at 0x10032c88 stores 4 bytes to a0 (arg0 at entry) +0x148.
  The `jal` at 0x10032c48 calls __ct__7Form1UIGPCcP10_WidgetRec [0x100353e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10032c9c has v0 = a0.
  The instructions from 0x10032ca4 to 0x10032cb4 are not reached by any path from the entry, and their branches are not listed.
- `__ct__5Form1GPCc` in `usr/gfx/ircombine` at 0x10032cc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10032cc0-0x10032d2c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x10032cfc stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10032cec calls __ct__7Form1UIGPCc [0x10035470] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10032d10 has v0 = a0.
  The instructions from 0x10032d18 to 0x10032d28 are not reached by any path from the entry, and their branches are not listed.
- `__dt__5Form1Gv` in `usr/gfx/ircombine` at 0x10032d30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10032d30-0x10032dc4 (148 bytes).
  It occupies 148 bytes.
  The `sw` at 0x10032d64 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10032d74 calls __dt__7Form1UIGv [0x100354e0] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10032d94 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10032d54 targets 0x10032d9c, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x10032d84 targets 0x10032d9c, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10032da8 has v0 = one of 0x7e340, ret(__dt__7Form1UIGv), ret(__dl__GPv).
  The instructions from 0x10032db0 to 0x10032dc0 are not reached by any path from the entry, and their branches are not listed.
- `className__5Form1Gv` in `usr/gfx/ircombine` at 0x10032dd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10032dd0-0x10032e0c (60 bytes).
  It occupies 60 bytes.
  The `beq` branch at 0x10032df0 targets 0x10032df8 and is always taken.
  The return at 0x10032e04 has v0 = 0x100aa4f0.
- `CreateForm1__5Form1SGPCcP10_WidgetRec` in `usr/gfx/ircombine` at 0x10032e10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10032e10-0x10032ed0 (192 bytes).
  It occupies 192 bytes.
  The `jalr` at 0x10032e3c calls __nw__GUi with a0=0x150, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10032e6c calls __ct__5Form1GPCcP10_WidgetReci [0x10032c10] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0.
  The `beq` branch at 0x10032e48 targets 0x10032e88, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10032e80 targets 0x10032e8c and is always taken.
  The return at 0x10032eb4 has v0 = one of ret(__nw__GUi), 0x0.
  The instructions from 0x10032ebc to 0x10032ecc are not reached by any path from the entry, and their branches are not listed.
- `update__5Form1Gv` in `usr/gfx/ircombine` at 0x10032f10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/ircombine`.
  Range: 0x10032f10-0x100336a0 (1936 bytes).
  It occupies 1936 bytes.
  The `lw` at 0x10032f40 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  30 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x148, including `lw` at 0x10032f5c, `lw` at 0x10032f7c, `lw` at 0x10032ff4.
  The `lw` at 0x10032f60 loads 4 bytes from [a0+328] +0x25c.
  The `lw` at 0x10032f80 loads 4 bytes from [a0+328] +0x258.
  The `lw` at 0x10032fac loads 4 bytes from a0 (arg0 at entry) +0x8c.
  The `lw` at 0x10032fd8 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x10032ff8 loads 4 bytes from [a0+328] +0x140.
  The `lw` at 0x1003300c loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `lw` at 0x10033040 loads 4 bytes from a0 (arg0 at entry) +0xf8.
  The `lw` at 0x1003304c loads 4 bytes from [a0+328] +0x134.
  The `lw` at 0x10033060 loads 4 bytes from a0 (arg0 at entry) +0x100.
  The `lw` at 0x1003306c loads 4 bytes from [a0+328] +0x148.
  The `lw` at 0x10033080 loads 4 bytes from a0 (arg0 at entry) +0x104.
  The `lw` at 0x1003308c loads 4 bytes from [a0+328] +0x14c.
  The `lw` at 0x100330a4 loads 4 bytes from [a0+328] +0x28c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xfc, including `lw` at 0x100330d4, `lw` at 0x100330f4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xf4, including `lw` at 0x10033114, `lw` at 0x10033168.
  The `lw` at 0x10033120 loads 4 bytes from [a0+328] +0x2ac.
  The `lw` at 0x10033134 loads 4 bytes from a0 (arg0 at entry) +0x50.
  2 such `lw` accesses load 4 bytes from [a0+328] +0x4e0, including `lw` at 0x10033154, `lw` at 0x10033188.
  2 such `lwc1` accesses load 4 bytes from [a0+328] +0x130, including `lwc1` at 0x100331b0, `lwc1` at 0x1003321c.
  The `lw` at 0x100331cc loads 4 bytes from a0 (arg0 at entry) +0x6c.
  The `lw` at 0x10033204 loads 4 bytes from [a0+328] +0x484.
  The `lw` at 0x1003323c loads 4 bytes from a0 (arg0 at entry) +0xc8.
  The `lw` at 0x10033278 loads 4 bytes from [a0+328] +0x128.
  The `lw` at 0x10033284 loads 4 bytes from [a0+328] +0x12c.
  The `lw` at 0x10033298 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0x100332c4 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lw` at 0x100332e4 loads 4 bytes from [a0+328] +0x298.
  The `lw` at 0x100332f8 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x10033318 loads 4 bytes from [a0+328] +0x29c.
  The `lw` at 0x1003332c loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x1003334c loads 4 bytes from [a0+328] +0x2a0.
  The `lw` at 0x10033360 loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `lw` at 0x10033380 loads 4 bytes from [a0+328] +0x290.
  The `lw` at 0x10033394 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `lw` at 0x100333b4 loads 4 bytes from [a0+328] +0x288.
  The `lw` at 0x100333c8 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x100333e8 loads 4 bytes from [a0+328] +0x144.
  The `lw` at 0x100333fc loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0x1003341c loads 4 bytes from [a0+328] +0x13c.
  The `lw` at 0x10033430 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x10033450 loads 4 bytes from [a0+328] +0x2a4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x10033464, `lw` at 0x10033658.
  The `lwc1` at 0x10033484 loads 4 bytes from [a0+328] +0x270.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x74, including `lw` at 0x10033498, `lw` at 0x10033640.
  The `lwc1` at 0x100334b8 loads 4 bytes from [a0+328] +0x26c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xac, including `lw` at 0x100334cc, `lw` at 0x10033628.
  The `lwc1` at 0x100334ec loads 4 bytes from [a0+328] +0x268.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd8, including `lw` at 0x10033500, `lw` at 0x10033670.
  2 such `lw` accesses load 4 bytes from [a0+328] +0x2c0, including `lw` at 0x10033520, `lw` at 0x100335fc.
  The `lw` at 0x10033534 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `lwc1` at 0x10033554 loads 4 bytes from [a0+328] +0x264.
  3 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10033568, `lw` at 0x10033578, `lw` at 0x100335a8.
  The `lw` at 0x10033598 loads 4 bytes from sym(combination) +0x238.
  The `lw` at 0x100335bc loads 4 bytes from ret(getTarget__18VkwindowMainWindowGv) +0x10.
  The `jal` at 0x10032f34 calls update_fast__5Form1Gv [0x100336a0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10032f48 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+224], a1=?, a2=?, a3=?.
  The `jal` at 0x10032f68 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+604], a2=?, a3=?.
  The `jalr` at 0x10032fa0 calls sprintf with a0=sp-208, a1=0x100aa4f8, a2=?, a3=?.
  The `jal` at 0x10032fb4 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+140], a1=?, a2=?, a3=?.
  The `jal` at 0x10032fcc calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=sp-208, a2=?, a3=?.
  The `jal` at 0x10032fe0 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+68], a1=?, a2=?, a3=?.
  The `jal` at 0x10033000 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+320], a2=?, a3=?.
  The `jal` at 0x10033014 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+100], a1=?, a2=?, a3=?.
  The `jal` at 0x10033034 calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+328]+340, a2=?, a3=?.
  The `jalr` at 0x10033054 calls set__12VkOptionMenuGi with a0=[a0+248], a1=[[a0+328]+308], a2=?, a3=?.
  The `jalr` at 0x10033074 calls set__12VkOptionMenuGi with a0=[a0+256], a1=[[a0+328]+328], a2=?, a3=?.
  The `jalr` at 0x10033094 calls set__12VkOptionMenuGi with a0=[a0+260], a1=[[a0+328]+332], a2=?, a3=?.
  The `jalr` at 0x100330e0 calls set__12VkOptionMenuGi with a0=[a0+252], a1=0x0, a2=0x1, a3=?.
  The `jalr` at 0x10033100 calls set__12VkOptionMenuGi with a0=[a0+252], a1=0x1, a2=[[a0+328]+652], a3=0x3.
  The `jalr` at 0x10033128 calls set__12VkOptionMenuGi with a0=[a0+244], a1=[[a0+328]+684], a2=?, a3=?.
  The `jal` at 0x1003313c calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+80], a1=?, a2=?, a3=?.
  The `jal` at 0x1003315c calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+1248], a2=?, a3=?.
  The `jalr` at 0x10033170 calls baseWidget__10VkMenuItemCGv with a0=[a0+244], a1=?, a2=?, a3=?.
  The `jalr` at 0x10033198 calls XtSetSensitive with a0=ret(baseWidget__10VkMenuItemCGv), a1=?, a2=?, a3=?.
  The `jalr` at 0x100331c0 calls sprintf with a0=sp-144, a1=0x100aa500, a2=?, a3=?.
  The `jal` at 0x100331d4 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+108], a1=?, a2=?, a3=?.
  The `jal` at 0x100331ec calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=?, a3=?.
  The `jalr` at 0x10033230 calls sprintf with a0=sp-144, a1=0x100aa500, a2=?, a3=[[a0+328]+1156].
  The `jal` at 0x10033244 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+200], a1=?, a2=?, a3=?.
  The `jal` at 0x1003325c calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=?, a3=?.
  The `jalr` at 0x1003328c calls sprintf with a0=sp-144, a1=0x100960a0, a2=[[a0+328]+296], a3=[[a0+328]+300].
  The `jal` at 0x100332a0 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+156], a1=?, a2=?, a3=?.
  The `jal` at 0x100332b8 calls __as__9EZWrapperGPCc [0x1008fb80] with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=?, a3=?.
  The `jal` at 0x100332cc calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+176], a1=?, a2=?, a3=?.
  The `jal` at 0x100332ec calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+664], a2=?, a3=?.
  The `jal` at 0x10033300 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+120], a1=?, a2=?, a3=?.
  The `jal` at 0x10033320 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+668], a2=?, a3=?.
  The `jal` at 0x10033334 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+44], a1=?, a2=?, a3=?.
  The `jal` at 0x10033354 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+672], a2=?, a3=?.
  The `jal` at 0x10033368 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+212], a1=?, a2=?, a3=?.
  The `jal` at 0x10033388 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+656], a2=?, a3=?.
  The `jal` at 0x1003339c calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+184], a1=?, a2=?, a3=?.
  The `jal` at 0x100333bc calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+648], a2=?, a3=?.
  The `jal` at 0x100333d0 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+72], a1=?, a2=?, a3=?.
  The `jal` at 0x100333f0 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+324], a2=?, a3=?.
  The `jal` at 0x10033404 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+32], a1=?, a2=?, a3=?.
  The `jal` at 0x10033424 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+316], a2=?, a3=?.
  The `jal` at 0x10033438 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+56], a1=?, a2=?, a3=?.
  The `jal` at 0x10033458 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+676], a2=?, a3=?.
  The `jal` at 0x1003346c calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+40], a1=?, a2=?, a3=?.
  The `jal` at 0x1003348c calls __as__9EZWrapperGf [0x1008f850] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+328], a2=?, a3=?; fp f13=[[a0+328]+624].
  The `jal` at 0x100334a0 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+116], a1=?, a2=?, a3=?.
  The `jal` at 0x100334c0 calls __as__9EZWrapperGf [0x1008f850] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+328], a2=?, a3=?; fp f13=[[a0+328]+620].
  The `jal` at 0x100334d4 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+172], a1=?, a2=?, a3=?.
  The `jal` at 0x100334f4 calls __as__9EZWrapperGf [0x1008f850] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+328], a2=?, a3=?; fp f13=[[a0+328]+616].
  The `jal` at 0x10033508 calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+216], a1=?, a2=?, a3=?.
  The `jal` at 0x10033528 calls __as__9EZWrapperGi [0x1008f4f0] with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+704], a2=?, a3=?.
  The `jal` at 0x1003353c calls EZ__GP10_WidgetRec [0x1008e2c0] with a0=[a0+128], a1=?, a2=?, a3=?.
  The `jal` at 0x1003355c calls __as__9EZWrapperGf [0x1008f850] with a0=ret(EZ__GP10_WidgetRec), a1=[a0+328], a2=?, a3=?; fp f13=[[a0+328]+612].
  The `jal` at 0x10033580 calls getTarget__18VkwindowMainWindowGv [0x1006f100] with a0=[sym(vkwindow)], a1=?, a2=[sym(vkwindow)], a3=?.
  The `jal` at 0x100335b0 calls getTarget__18VkwindowMainWindowGv [0x1006f100] with a0=[sym(vkwindow)], a1=[sym(combination)+568], a2=?, a3=?.
  The `jalr` at 0x10033634 calls XtSetSensitive with a0=[a0+172], a1=one of 0x0, 0x1, a2=?, a3=?, a4=one of 0x0, 0x1, a5=one of 0x0, 0x1.
  The `jalr` at 0x1003364c calls XtSetSensitive with a0=[a0+116], a1=?, a2=?, a3=?.
  The `jalr` at 0x10033664 calls XtSetSensitive with a0=[a0+40], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003367c calls XtSetSensitive with a0=[a0+216], a1=?, a2=?, a3=?.
  The `beq` branch at 0x100330b0 targets 0x100330d0, is taken when a1(=[[a0+328]+652]) == a2(=0x1), and falls through when a1(=[[a0+328]+652]) != a2(=0x1).
  The `beq` branch at 0x100330c0 targets 0x100330f0, is taken when a2(=[[a0+328]+652]) == a3(=0x3), and falls through when a2(=[[a0+328]+652]) != a3(=0x3).
  The `beq` branch at 0x100330c8 targets 0x10033110 and is always taken.
  The `beq` branch at 0x100330e8 targets 0x10033110 and is always taken.
  The `beq` branch at 0x10033108 targets 0x10033110 and is always taken.
  The `beq` branch at 0x1003356c targets 0x10033684, is taken when a2(=[sym(vkwindow)]) == 0, and falls through when a2(=[sym(vkwindow)]) != 0.
  The `beq` branch at 0x1003358c targets 0x10033684, is taken when v0(=ret(getTarget__18VkwindowMainWindowGv)) == 0, and falls through when v0(=ret(getTarget__18VkwindowMainWindowGv)) != 0.
  The `bne` branch at 0x1003359c targets 0x100335dc, is taken when a1(=[sym(combination)+568]) != 0, and falls through when a1(=[sym(combination)+568]) == 0.
  The `beq` branch at 0x100335c4 targets 0x100335dc, is taken when a1(=[ret(getTarget__18VkwindowMainWindowGv)+16]) == a2(=0x2), and falls through when a1(=[ret(getTarget__18VkwindowMainWindowGv)+16]) != a2(=0x2).
  The `beq` branch at 0x100335d4 targets 0x100335e0 and is always taken.
  The `beq` branch at 0x100335ec targets 0x10033618, is taken when a4(=one of 0x0, 0x1) == 0, and falls through when a4(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x10033600 targets 0x10033618, is taken when a6(=[[a0+328]+704]) == 0, and falls through when a6(=[[a0+328]+704]) != 0.
  The `beq` branch at 0x10033610 targets 0x1003361c and is always taken.
  The `beq` branch at 0x10033684 targets 0x1003368c and is always taken.
  The return at 0x10033698 has v0 = ?.
