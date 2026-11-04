# Instruction readings from hostfacts

The entries record established instruction facts from the cited routine bodies. They describe software behavior, not hardware measurements. Hostfacts supplies each access, call, branch and return from that routine. The binary listing supplies its address and size.

Skipped routines: 928 already have an exact binary, member and routine entry; 4 targets have no bounded address and size in the inventory.

- `__record_needed_destruction` in `usr/gfx/ircombine` at 0x1001ffd0 (n32).
  It occupies 40 bytes.
  The `lw` at 0x1001ffe4 loads 4 bytes from abs 0x100a9114.
  The `lw` at 0x1001ffe8 loads 4 bytes from abs 0x100ab0d4.
  The `sw` at 0x1001ffec stores 4 bytes to abs 0x100ab0d4 (value a0).
  The `sw` at 0x1001fff4 stores 4 bytes to a0 (arg0 at entry) +0x0 (value [0x100ab0d4]).
  The return at 0x1001fff0 has v0 = [0x100ab0d4].
- `__std__needed_destruction_list` in `usr/gfx/ircombine` at 0x10020000 (n32).
  It occupies 60 bytes.
  The `lw` at 0x10020020 loads 4 bytes from abs 0x100a9120.
  The `jal` at 0x10020024 calls `__process_needed_destructions__Gv` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10020034 has v0 = ret(__process_needed_destructions__Gv).
- `ErrorF` in `usr/gfx/ircombine` at 0x100203f0 (n32).
  It occupies 292 bytes.
  The `lw` at 0x10020444 loads 4 bytes from abs 0x100a930c.
  The `lbu` at 0x10020454 loads 1 bytes from unknown (base unknown).
  The `lbu` at 0x10020470 loads 1 bytes from unknown (base unknown).
  The `lbu` at 0x10020484 loads 1 bytes from unknown (base unknown).
  The `lbu` at 0x1002049c loads 1 bytes from unknown (base unknown).
  The `sb` at 0x100204b4 stores 1 bytes to unknown (base unknown) (value 0xa).
  The `sb` at 0x100204c4 stores 1 bytes to unknown (base unknown) (value 0x0).
  The `lw` at 0x100204c8 loads 4 bytes from abs 0x100a915c.
  The `lw` at 0x100204d0 loads 4 bytes from abs 0x100a90d4.
  The `lw` at 0x100204dc loads 4 bytes from abs 0x100a9310.
  The `beq` branch at 0x10020458 targets 0x1002047c, is taken when a0(unknown) == 0, and falls through when a0(unknown) != 0.
  The `bne` branch at 0x10020474 targets 0x10020460, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `beq` branch at 0x1002048c targets 0x100204c8, is taken when a3(unknown) == a4(=0xa), and falls through when a3(unknown) != a4(=0xa).
  The `beq` branch at 0x100204a4 targets 0x100204c8, is taken when a4(unknown) == a5(=0xd), and falls through when a4(unknown) != a5(=0xd).
  The `jalr` at 0x10020448 calls `vsprintf` with a0=sp-1128, a1=a0 at entry (arg0), a2=sp-56, a3=a3 at entry (arg3).
  The `jalr` at 0x100204e0 calls `fprintf` with a0=sym(__iob)+32, a1=0x10094038, a2=sp-1128, a3=unknown.
  The return at 0x1002050c has v0 = ret(fprintf).
- `iGUIReadFormatFile__GPCcP11konFormat_t` in `usr/gfx/ircombine` at 0x10020520 (n32).
  It occupies 520 bytes.
  The `lw` at 0x10020548 loads 4 bytes from abs 0x100a9d74.
  3 such accesses, including `lw` at 0x100205a4, 0x10020614, 0x10020684, loads 4 bytes from abs 0x100a90d4.
  3 such accesses, including `lw` at 0x100205b0, 0x10020620, 0x10020690, loads 4 bytes from abs 0x100a9314.
  3 such accesses, including `lw` at 0x100205bc, 0x1002062c, 0x1002069c, loads 4 bytes from abs 0x100a9318.
  6 such accesses, including `lw` at 0x100205cc, 0x100205f4, 0x1002063c, loads 4 bytes from ret(getTheErrorDialog__Gv) +0x8.
  3 such accesses, including `lw` at 0x100205d0, 0x10020640, 0x100206b0, loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108.
  3 such accesses, including `lw` at 0x100205f8, 0x10020668, 0x100206d8, loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110.
  The `beq` branch at 0x10020564 targets 0x100205a0, is taken when v0(=ret(vfmtReadKonaVideoFormat)) == v1(=0x1), and falls through when v0(=ret(vfmtReadKonaVideoFormat)) != v1(=0x1).
  The `beq` branch at 0x10020574 targets 0x10020610, is taken when a0(=ret(vfmtReadKonaVideoFormat)) == a1(=0x3), and falls through when a0(=ret(vfmtReadKonaVideoFormat)) != a1(=0x3).
  The `beq` branch at 0x10020584 targets 0x10020680, is taken when a2(=ret(vfmtReadKonaVideoFormat)) == a3(=0x2), and falls through when a2(=ret(vfmtReadKonaVideoFormat)) != a3(=0x2).
  The `beq` branch at 0x10020590 targets 0x100206f0, is taken when a4(=ret(vfmtReadKonaVideoFormat)) == 0, and falls through when a4(=ret(vfmtReadKonaVideoFormat)) != 0.
  The `jal` at 0x1002054c calls `vfmtReadKonaVideoFormat` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100205b4 calls `sprintf` with a0=sp-312, a1=0x10094048, a2=a0 at entry (arg0), a3=unknown.
  The `jalr` at 0x100205c0 calls `getTheErrorDialog__Gv` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100205fc calls `(unknown callee)` with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-312, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10020624 calls `sprintf` with a0=sp-312, a1=0x10094060, a2=a0 at entry (arg0), a3=unknown.
  The `jalr` at 0x10020630 calls `getTheErrorDialog__Gv` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1002066c calls `(unknown callee)` with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-312, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10020694 calls `sprintf` with a0=sp-312, a1=0x10094098, a2=a0 at entry (arg0), a3=0x2.
  The `jalr` at 0x100206a0 calls `getTheErrorDialog__Gv` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100206dc calls `(unknown callee)` with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-312, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The return at 0x10020720 has v0 = one of 0x0, 0x1.
- `CreateDvpForm` in `usr/gfx/ircombine` at 0x10021380 (n32).
  It occupies 232 bytes.
  The `lw` at 0x100213a8 loads 4 bytes from abs 0x100a92fc.
  The `lw` at 0x100213d8 loads 4 bytes from abs 0x100a9638.
  The `lw` at 0x10021410 loads 4 bytes from unknown (base unknown).
  The `lw` at 0x10021414 loads 4 bytes from unknown (base unknown).
  The `lw` at 0x10021424 loads 4 bytes from unknown (base unknown).
  The `lw` at 0x10021428 loads 4 bytes from unknown (base unknown).
  The `beq` branch at 0x100213b8 targets 0x100213f8, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `jalr` at 0x100213ac calls `__nw__GUi` with a0=0x120, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100213dc calls `__ct__7DvpFormGPCcP10_WidgetReci` with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0.
  The `jalr` at 0x1002142c calls `(unknown callee)` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The return at 0x1002144c has v0 = unknown.
- `RegisterDvpFormInterface` in `usr/gfx/ircombine` at 0x10021470 (n32).
  It occupies 60 bytes.
  The `lw` at 0x10021484 loads 4 bytes from abs 0x100a90d8.
  The return at 0x100214a4 has v0 = 0x100a1400.
- `__ct__7DvpFormGPCcP10_WidgetReci` in `usr/gfx/ircombine` at 0x10021570 (n32).
  It occupies 168 bytes.
  The `lw` at 0x100215a4 loads 4 bytes from abs 0x100a9644.
  The `lw` at 0x100215b0 loads 4 bytes from abs 0x100a9e1c.
  The `sw` at 0x100215b8 stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__7DvpForm)).
  The `sw` at 0x100215c4 stores 4 bytes to a0 (arg0 at entry) +0x11c (value a3).
  The `lw` at 0x100215c8 loads 4 bytes from abs 0x100a9ee8.
  The `sw` at 0x100215e8 stores 4 bytes to a0 (arg0 at entry) +0x118.
  The `jal` at 0x100215a8 calls `__ct__9DvpFormUIGPCcP10_WidgetRec` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100215fc has v0 = a0.
- `__ct__7DvpFormGPCc` in `usr/gfx/ircombine` at 0x10021620 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10021648 loads 4 bytes from abs 0x100a9648.
  The `lw` at 0x10021654 loads 4 bytes from abs 0x100a9e1c.
  The `sw` at 0x1002165c stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__7DvpForm)).
  The `jal` at 0x1002164c calls `__ct__9DvpFormUIGPCc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10021670 has v0 = a0.
- `__dt__7DvpFormGv` in `usr/gfx/ircombine` at 0x10021690 (n32).
  It occupies 148 bytes.
  The `lw` at 0x100216bc loads 4 bytes from abs 0x100a9e1c.
  The `sw` at 0x100216c4 stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__7DvpForm)).
  The `lw` at 0x100216d0 loads 4 bytes from abs 0x100a964c.
  The `lw` at 0x100216f0 loads 4 bytes from abs 0x100a9250.
  The `beq` branch at 0x100216b4 targets 0x100216fc, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x100216e4 targets 0x100216fc, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The `jal` at 0x100216d4 calls `__dt__9DvpFormUIGv` with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100216f4 calls `__dl__GPv` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The return at 0x10021708 has v0 = unknown.
- `className__7DvpFormGv` in `usr/gfx/ircombine` at 0x10021730 (n32).
  It occupies 60 bytes.
  The return at 0x10021764 has v0 = 0x100aa410.
- `update__7DvpFormGv` in `usr/gfx/ircombine` at 0x100217b0 (n32).
  It occupies 1472 bytes.
  The `lw` at 0x100217d0 loads 4 bytes from abs 0x100a9640.
  The `lw` at 0x100217e0 loads 4 bytes from a0 (arg0 at entry) +0x44.
  13 such accesses, including `lw` at 0x100217e4, 0x10021818, 0x10021940, loads 4 bytes from abs 0x100a9dd0.
  16 such accesses, including `lw` at 0x100217fc, 0x10021830, 0x10021850, loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `lw` at 0x10021800 loads 4 bytes from [a0+280] +0x140.
  6 such accesses, including `lw` at 0x10021804, 0x10021960, 0x10021af0, loads 4 bytes from abs 0x100a9de8.
  The `lw` at 0x10021814 loads 4 bytes from a0 (arg0 at entry) +0x54.
  4 such accesses, including `lw` at 0x10021838, 0x100219f0, 0x10021a60, loads 4 bytes from abs 0x100a9df0.
  The `lw` at 0x10021848 loads 4 bytes from a0 (arg0 at entry) +0xc8.
  The `lw` at 0x10021854 loads 4 bytes from [a0+280] +0x134.
  6 such accesses, including `lw` at 0x10021858, 0x10021878, 0x10021898, loads 4 bytes from abs 0x100a9338.
  The `lw` at 0x10021868 loads 4 bytes from a0 (arg0 at entry) +0xd0.
  The `lw` at 0x10021874 loads 4 bytes from [a0+280] +0x148.
  The `lw` at 0x10021888 loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `lw` at 0x10021894 loads 4 bytes from [a0+280] +0x14c.
  2 such accesses, including `lw` at 0x100218a8, 0x10021970, loads 4 bytes from a0 (arg0 at entry) +0xc4.
  The `lw` at 0x100218b4 loads 4 bytes from [a0+280] +0x2ac.
  The `lw` at 0x100218cc loads 4 bytes from [a0+280] +0x28c.
  2 such accesses, including `lw` at 0x100218fc, 0x1002191c, loads 4 bytes from a0 (arg0 at entry) +0xcc.
  The `lw` at 0x1002193c loads 4 bytes from a0 (arg0 at entry) +0x88.
  2 such accesses, including `lw` at 0x1002195c, 0x10021990, loads 4 bytes from [a0+280] +0x4e0.
  The `lw` at 0x10021974 loads 4 bytes from abs 0x100a933c.
  5 such accesses, including `lw` at 0x1002199c, 0x10021d00, 0x10021d18, loads 4 bytes from abs 0x100a9340.
  3 such accesses, including `lw` at 0x100219b4, 0x10021a20, 0x10021a7c, loads 4 bytes from a0 (arg0 at entry) +0x118.
  3 such accesses, including `lw` at 0x100219c4, 0x10021a34, 0x10021a90, loads 4 bytes from abs 0x100a9314.
  The `lw` at 0x100219d4 loads 4 bytes from a0 (arg0 at entry) +0x94.
  2 such accesses, including `lw` at 0x10021a08, 0x10021a88, loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `lw` at 0x10021a0c loads 4 bytes from [a0+280] +0x484.
  The `lw` at 0x10021a44 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `lw` at 0x10021a70 loads 4 bytes from abs 0x100a90d4.
  The `lw` at 0x10021a80 loads 4 bytes from [a0+280] +0x128.
  The `lw` at 0x10021a8c loads 4 bytes from [a0+280] +0x12c.
  The `lw` at 0x10021aa0 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `lw` at 0x10021acc loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x10021aec loads 4 bytes from [a0+280] +0x144.
  The `lw` at 0x10021b00 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lw` at 0x10021b20 loads 4 bytes from [a0+280] +0x13c.
  The `lw` at 0x10021b34 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x10021b54 loads 4 bytes from [a0+280] +0x2a4.
  2 such accesses, including `lw` at 0x10021b68, 0x10021d28, loads 4 bytes from a0 (arg0 at entry) +0x38.
  3 such accesses, including `lw` at 0x10021b8c, 0x10021bc0, 0x10021bf4, loads 4 bytes from abs 0x100a9dec.
  2 such accesses, including `lw` at 0x10021b9c, 0x10021d10, loads 4 bytes from a0 (arg0 at entry) +0x5c.
  2 such accesses, including `lw` at 0x10021bd0, 0x10021cf8, loads 4 bytes from a0 (arg0 at entry) +0x68.
  2 such accesses, including `lw` at 0x10021c04, 0x10021d40, loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x10021c24 loads 4 bytes from [a0+280] +0x2c0.
  3 such accesses, including `lw` at 0x10021c34, 0x10021c44, 0x10021c74, loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10021c38 loads 4 bytes from sym(vkwindow) +0x0.
  2 such accesses, including `lw` at 0x10021c48, 0x10021c78, loads 4 bytes from sym(vkwindow) +0x0.
  2 such accesses, including `lw` at 0x10021c4c, 0x10021c7c, loads 4 bytes from abs 0x100a9c40.
  The `lw` at 0x10021c64 loads 4 bytes from abs 0x100a9ee8.
  The `lw` at 0x10021c68 loads 4 bytes from sym(combination) +0x238.
  The `lw` at 0x10021c8c loads 4 bytes from ret(getTarget__18VkwindowMainWindowGv) +0x10.
  The `lw` at 0x10021cc8 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `lw` at 0x10021ccc loads 4 bytes from [a0+280] +0x2c0.
  The `beq` branch at 0x100218d8 targets 0x100218f8, is taken when a1(=[[a0+280]+652]) == a2(=0x1), and falls through when a1(=[[a0+280]+652]) != a2(=0x1).
  The `beq` branch at 0x100218e8 targets 0x10021918, is taken when a2(=[[a0+280]+652]) == a3(=0x3), and falls through when a2(=[[a0+280]+652]) != a3(=0x3).
  The `beq` branch at 0x10021c3c targets 0x10021d54, is taken when a2(=[sym(vkwindow)]) == 0, and falls through when a2(=[sym(vkwindow)]) != 0.
  The `beq` branch at 0x10021c5c targets 0x10021d54, is taken when v0(=ret(getTarget__18VkwindowMainWindowGv)) == 0, and falls through when v0(=ret(getTarget__18VkwindowMainWindowGv)) != 0.
  The `bne` branch at 0x10021c6c targets 0x10021cac, is taken when a1(=[sym(combination)+568]) != 0, and falls through when a1(=[sym(combination)+568]) == 0.
  The `beq` branch at 0x10021c94 targets 0x10021cac, is taken when a1(=[ret(getTarget__18VkwindowMainWindowGv)+16]) == a2(=0x2), and falls through when a1(=[ret(getTarget__18VkwindowMainWindowGv)+16]) != a2(=0x2).
  The `beq` branch at 0x10021cbc targets 0x10021ce8, is taken when a4(=one of 0x0, 0x1) == 0, and falls through when a4(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x10021cd0 targets 0x10021ce8, is taken when a6(=[[a0+280]+704]) == 0, and falls through when a6(=[[a0+280]+704]) != 0.
  The `jal` at 0x100217d4 calls `update_fast__7DvpFormGv` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100217e8 calls `EZ__GP10_WidgetRec` with a0=[a0+68], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10021808 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+280]+320], a2=unknown, a3=unknown.
  The `jal` at 0x1002181c calls `EZ__GP10_WidgetRec` with a0=[a0+84], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1002183c calls `__as__9EZWrapperGPCc` with a0=ret(EZ__GP10_WidgetRec), a1=[a0+280]+340, a2=unknown, a3=unknown.
  The `jalr` at 0x1002185c calls `set__12VkOptionMenuGi` with a0=[a0+200], a1=[[a0+280]+308], a2=unknown, a3=unknown.
  The `jalr` at 0x1002187c calls `set__12VkOptionMenuGi` with a0=[a0+208], a1=[[a0+280]+328], a2=unknown, a3=unknown.
  The `jalr` at 0x1002189c calls `set__12VkOptionMenuGi` with a0=[a0+212], a1=[[a0+280]+332], a2=unknown, a3=unknown.
  The `jalr` at 0x100218bc calls `set__12VkOptionMenuGi` with a0=[a0+196], a1=[[a0+280]+684], a2=unknown, a3=unknown.
  The `jalr` at 0x10021908 calls `set__12VkOptionMenuGi` with a0=[a0+204], a1=0x0, a2=0x1, a3=unknown.
  The `jalr` at 0x10021928 calls `set__12VkOptionMenuGi` with a0=[a0+204], a1=0x1, a2=[[a0+280]+652], a3=0x3.
  The `jal` at 0x10021944 calls `EZ__GP10_WidgetRec` with a0=[a0+136], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10021964 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+280]+1248], a2=unknown, a3=unknown.
  The `jalr` at 0x10021978 calls `baseWidget__10VkMenuItemCGv` with a0=[a0+196], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100219a0 calls `XtSetSensitive` with a0=ret(baseWidget__10VkMenuItemCGv), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100219c8 calls `sprintf` with a0=sp-144, a1=0x100aa418, a2=unknown, a3=unknown.
  The `jal` at 0x100219dc calls `EZ__GP10_WidgetRec` with a0=[a0+148], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x100219f4 calls `__as__9EZWrapperGPCc` with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=unknown, a3=unknown.
  The `jalr` at 0x10021a38 calls `sprintf` with a0=sp-144, a1=0x100aa418, a2=unknown, a3=[[a0+280]+1156].
  The `jal` at 0x10021a4c calls `EZ__GP10_WidgetRec` with a0=[a0+184], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10021a64 calls `__as__9EZWrapperGPCc` with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=unknown, a3=unknown.
  The `jalr` at 0x10021a94 calls `sprintf` with a0=sp-144, a1=0x10094120, a2=[[a0+280]+296], a3=[[a0+280]+300].
  The `jal` at 0x10021aa8 calls `EZ__GP10_WidgetRec` with a0=[a0+164], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10021ac0 calls `__as__9EZWrapperGPCc` with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=unknown, a3=unknown.
  The `jal` at 0x10021ad4 calls `EZ__GP10_WidgetRec` with a0=[a0+72], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10021af4 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+280]+324], a2=unknown, a3=unknown.
  The `jal` at 0x10021b08 calls `EZ__GP10_WidgetRec` with a0=[a0+52], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10021b28 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+280]+316], a2=unknown, a3=unknown.
  The `jal` at 0x10021b3c calls `EZ__GP10_WidgetRec` with a0=[a0+64], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10021b5c calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+280]+676], a2=unknown, a3=unknown.
  The `jal` at 0x10021b70 calls `EZ__GP10_WidgetRec` with a0=[a0+56], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10021b90 calls `__as__9EZWrapperGf` with a0=ret(EZ__GP10_WidgetRec), a1=[a0+280], a2=unknown, a3=unknown; fp f13=[[a0+280]+624].
  The `jal` at 0x10021ba4 calls `EZ__GP10_WidgetRec` with a0=[a0+92], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10021bc4 calls `__as__9EZWrapperGf` with a0=ret(EZ__GP10_WidgetRec), a1=[a0+280], a2=unknown, a3=unknown; fp f13=[[a0+280]+620].
  The `jal` at 0x10021bd8 calls `EZ__GP10_WidgetRec` with a0=[a0+104], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10021bf8 calls `__as__9EZWrapperGf` with a0=ret(EZ__GP10_WidgetRec), a1=[a0+280], a2=unknown, a3=unknown; fp f13=[[a0+280]+616].
  The `jal` at 0x10021c0c calls `EZ__GP10_WidgetRec` with a0=[a0+120], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10021c2c calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+280]+704], a2=unknown, a3=unknown.
  The `jal` at 0x10021c50 calls `getTarget__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=unknown, a2=[sym(vkwindow)], a3=unknown.
  The `jal` at 0x10021c80 calls `getTarget__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[sym(combination)+568], a2=unknown, a3=unknown.
  The `jalr` at 0x10021d04 calls `XtSetSensitive` with a0=[a0+104], a1=one of 0x0, 0x1, a2=unknown, a3=unknown, a4=one of 0x0, 0x1, a5=one of 0x0, 0x1.
  The `jalr` at 0x10021d1c calls `XtSetSensitive` with a0=[a0+92], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10021d34 calls `XtSetSensitive` with a0=[a0+56], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10021d4c calls `XtSetSensitive` with a0=[a0+120], a1=unknown, a2=unknown, a3=unknown.
  The return at 0x10021d68 has v0 = unknown.
- `update_fast__7DvpFormGv` in `usr/gfx/ircombine` at 0x10021d70 (n32).
  It occupies 264 bytes.
  The `lw` at 0x10021d90 loads 4 bytes from a0 (arg0 at entry) +0x80.
  4 such accesses, including `lw` at 0x10021d94, 0x10021dc8, 0x10021dfc, loads 4 bytes from abs 0x100a9dd0.
  4 such accesses, including `lw` at 0x10021dac, 0x10021de0, 0x10021e14, loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `lw` at 0x10021db0 loads 4 bytes from [a0+280] +0x108.
  4 such accesses, including `lw` at 0x10021db4, 0x10021de8, 0x10021e1c, loads 4 bytes from abs 0x100a9de8.
  The `lw` at 0x10021dc4 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lw` at 0x10021de4 loads 4 bytes from [a0+280] +0x10c.
  The `lw` at 0x10021df8 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lw` at 0x10021e18 loads 4 bytes from [a0+280] +0x110.
  The `lw` at 0x10021e2c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0x10021e4c loads 4 bytes from [a0+280] +0x114.
  The `jal` at 0x10021d98 calls `EZ__GP10_WidgetRec` with a0=[a0+128], a1=0x8f300, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10021db8 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+280]+264], a2=unknown, a3=unknown.
  The `jal` at 0x10021dcc calls `EZ__GP10_WidgetRec` with a0=[a0+132], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10021dec calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+280]+268], a2=unknown, a3=unknown.
  The `jal` at 0x10021e00 calls `EZ__GP10_WidgetRec` with a0=[a0+124], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10021e20 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+280]+272], a2=unknown, a3=unknown.
  The `jal` at 0x10021e34 calls `EZ__GP10_WidgetRec` with a0=[a0+96], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10021e54 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+280]+276], a2=unknown, a3=unknown.
  The return at 0x10021e70 has v0 = ret(__as__9EZWrapperGi).
- `alphaChannel__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10021e80 (n32).
  It occupies 112 bytes.
  The `lw` at 0x10021eb0 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10021eb8 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10021ebc stores 4 bytes to [a0+280] +0x13c (value [a2+8]).
  The `lw` at 0x10021ec0 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10021ec4 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10021ec8 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10021ecc calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+280], a3=0x8f1f0.
  The return at 0x10021ee8 has v0 = ret(update__18VkwindowMainWindowGv).
- `bGamma__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10021ef0 (n32).
  It occupies 168 bytes.
  The `lw` at 0x10021f20 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x10021f24 loads 4 bytes from abs 0x100a9dd0.
  The `lw` at 0x10021f34 loads 4 bytes from abs 0x100a9088.
  The `lw` at 0x10021f48 loads 4 bytes from abs 0x100a9344.
  The `lw` at 0x10021f5c loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `lw` at 0x10021f68 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10021f6c loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10021f70 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10021f28 calls `EZ__GP10_WidgetRec` with a0=[a0+56], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x8f180.
  The `jal` at 0x10021f3c calls `(unnamed)` with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10021f4c calls `atof` with a0=ret(0x10023520), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10021f74 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a0+280]+624, a2=unknown, a3=unknown.
  The return at 0x10021f90 has v0 = ret(update__18VkwindowMainWindowGv).
- `channelBrowse__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10021fa0 (n32).
  It occupies 464 bytes.
  4 such accesses, including `lw` at 0x10021fd0, 0x10021fec, 0x10022030, loads 4 bytes from abs 0x100a90d4.
  The `lw` at 0x10021fdc loads 4 bytes from a0 (arg0 at entry) +0x11c.
  2 such accesses, including `lw` at 0x10021fe0, 0x1002203c, loads 4 bytes from abs 0x100a9314.
  The `lw` at 0x10021ff4 loads 4 bytes from abs 0x100a9348.
  7 such accesses, including `lw` at 0x10022048, 0x10022064, 0x1002207c, loads 4 bytes from abs 0x100a9ef4.
  5 such accesses, including `lw` at 0x1002204c, 0x10022068, 0x10022080, loads 4 bytes from sym(sffb) +0x0.
  The `lw` at 0x10022058 loads 4 bytes from abs 0x100a934c.
  The `lw` at 0x10022070 loads 4 bytes from abs 0x100a9350.
  The `lw` at 0x10022088 loads 4 bytes from abs 0x100a9354.
  The `lw` at 0x1002209c loads 4 bytes from [sym(sffb)] +0x8.
  The `lw` at 0x100220a0 loads 4 bytes from [[sym(sffb)]+8] +0x108.
  The `lw` at 0x100220a8 loads 4 bytes from sym(sffb) +0x0.
  The `lw` at 0x100220d0 loads 4 bytes from sym(sffb) +0x0.
  The `lw` at 0x100220d4 loads 4 bytes from [sym(sffb)] +0x8.
  The `lw` at 0x100220d8 loads 4 bytes from [[sym(sffb)]+8] +0x110.
  The `lw` at 0x100220fc loads 4 bytes from abs 0x100a9088.
  The `lw` at 0x10022114 loads 4 bytes from abs 0x100a9358.
  2 such accesses, including `lw` at 0x10022124, 0x10022140, loads 4 bytes from abs 0x100a9ef0.
  2 such accesses, including `lw` at 0x10022128, 0x10022144, loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10022130 loads 4 bytes from a0 (arg0 at entry) +0x11c.
  The `lw` at 0x10022134 loads 4 bytes from abs 0x100a9c3c.
  The `lw` at 0x10022148 loads 4 bytes from abs 0x100a9c30.
  The `beq` branch at 0x1002200c targets 0x10022024, is taken when a1(=ret(getenv)) == 0, and falls through when a1(=ret(getenv)) != 0.
  The `bne` branch at 0x100220ec targets 0x10022140, is taken when v0(=ret(unknown)) != a1(=0x1), and falls through when v0(=ret(unknown)) == a1(=0x1).
  The `jalr` at 0x10021fe4 calls `sprintf` with a0=sp-1176, a1=0x10094130, a2=[a0+284], a3=0x8f0d0.
  The `jalr` at 0x10021ff8 calls `getenv` with a0=0x10094158, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10022040 calls `sprintf` with a0=sp-1088, a1=0x10094168, a2=unknown, a3=unknown.
  The `jalr` at 0x1002205c calls `setTitle__15VkDialogManagerGPCc` with a0=[sym(sffb)], a1=0x10094188, a2=unknown, a3=unknown.
  The `jalr` at 0x10022074 calls `setDirectory__21VkFileSelectionDialogGPCc` with a0=[sym(sffb)], a1=sp-1088, a2=unknown, a3=unknown.
  The `jalr` at 0x1002208c calls `setFilterPattern__21VkFileSelectionDialogGPCc` with a0=[sym(sffb)], a1=0x100aa428, a2=unknown, a3=unknown.
  The `jalr` at 0x100220dc calls `(unknown callee)` with a0=([[[sym(sffb)]+8]+264] + [sym(sffb)]), a1=sp-1176, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x10022104 calls `(unnamed)` with a0=[sym(sffb)], a1=0x1, a2=unknown, a3=unknown.
  The `jalr` at 0x10022118 calls `basename` with a0=ret(0x10021530), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10022138 calls `loadFormat__18VkwindowMainWindowGiPCc` with a0=[sym(vkwindow)], a1=[a0+284], a2=ret(basename), a3=unknown.
  The `jal` at 0x1002214c calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The return at 0x10022168 has v0 = ret(update__18VkwindowMainWindowGv).
- `channelEnable__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022170 (n32).
  It occupies 268 bytes.
  The `lw` at 0x100221a0 loads 4 bytes from a0 (arg0 at entry) +0x11c.
  2 such accesses, including `lw` at 0x100221b0, 0x100221c0, loads 4 bytes from abs 0x100a9ee8.
  The `lw` at 0x100221b4 loads 4 bytes from sym(combination) +0x5a9c.
  The `lw` at 0x100221c4 loads 4 bytes from sym(combination) +0x5a78.
  The `lw` at 0x100221d0 loads 4 bytes from abs 0x100a9318.
  The `lw` at 0x100221e4 loads 4 bytes from abs 0x100a90d4.
  The `lw` at 0x100221f0 loads 4 bytes from abs 0x100a9088.
  The `lw` at 0x10022204 loads 4 bytes from abs 0x100a9dd0.
  The `lw` at 0x1002221c loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `lw` at 0x10022220 loads 4 bytes from [a0+280] +0x2a4.
  The `lw` at 0x10022224 loads 4 bytes from abs 0x100a9de8.
  The `lw` at 0x1002223c loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10022244 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022248 stores 4 bytes to [a0+280] +0x2a4 (value [a2+8]).
  The `lw` at 0x1002224c loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10022250 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10022254 loads 4 bytes from abs 0x100a9c30.
  The `bne` branch at 0x100221a8 targets 0x10022238, is taken when at(=[a0+284]) != v0(=0x1), and falls through when at(=[a0+284]) == v0(=0x1).
  The `beq` branch at 0x100221b8 targets 0x10022238, is taken when a0(=[sym(combination)+23196]) == 0, and falls through when a0(=[sym(combination)+23196]) != 0.
  The `beq` branch at 0x100221c8 targets 0x10022238, is taken when a1(=[sym(combination)+23160]) == 0, and falls through when a1(=[sym(combination)+23160]) != 0.
  The `jalr` at 0x100221d4 calls `getTheErrorDialog__Gv` with a0=[sym(combination)+23196], a1=[sym(combination)+23160], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100221f8 calls `(unnamed)` with a0=ret(getTheErrorDialog__Gv), a1=0x10094198, a2=a1 at entry (arg1), a3=unknown.
  The `jal` at 0x10022208 calls `EZ__GP10_WidgetRec` with a0=a1 at entry (arg1), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10022228 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+280]+676], a2=unknown, a3=unknown.
  The `jal` at 0x10022258 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The return at 0x10022274 has v0 = ret(update__18VkwindowMainWindowGv).
- `closeChannel__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022280 (n32).
  It occupies 124 bytes.
  The `lw` at 0x100222b0 loads 4 bytes from a0 (arg0 at entry) +0x114.
  The `lw` at 0x100222b4 loads 4 bytes from [a0+276] +0x8.
  The `lw` at 0x100222b8 loads 4 bytes from [[a0+276]+8] +0x30.
  The `lw` at 0x100222c0 loads 4 bytes from a0 (arg0 at entry) +0x114.
  The `lw` at 0x100222cc loads 4 bytes from a0 (arg0 at entry) +0x114.
  The `lw` at 0x100222d0 loads 4 bytes from [a0+276] +0x8.
  The `lw` at 0x100222d4 loads 4 bytes from [[a0+276]+8] +0x38.
  The `jalr` at 0x100222d8 calls `(unknown callee)` with a0=([[[a0+276]+8]+48] + [a0+276]), a1=[a0+276], a2=a2 at entry (arg2), a3=0x8edf0.
  The return at 0x100222f4 has v0 = ret(unknown).
- `compositeSync__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022300 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10022334 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022338 stores 4 bytes to [a0+280] +0x28c (value 0x3).
  The `lw` at 0x1002233c loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10022340 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10022344 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10022348 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=0x3, a2=[a0+280], a3=a2 at entry (arg2), a4=0x8ed70.
  The return at 0x10022364 has v0 = ret(update__18VkwindowMainWindowGv).
- `cursorPriority__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022370 (n32).
  It occupies 144 bytes.
  The `lw` at 0x100223a0 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x100223a4 loads 4 bytes from abs 0x100a9dd0.
  The `lw` at 0x100223b4 loads 4 bytes from abs 0x100a9088.
  The `lw` at 0x100223c8 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x100223cc stores 4 bytes to [a0+280] +0x140 (value ret(0x100234e0)).
  The `lw` at 0x100223d0 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x100223d4 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x100223d8 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x100223a8 calls `EZ__GP10_WidgetRec` with a0=[a0+68], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x8ed00.
  The `jal` at 0x100223bc calls `(unnamed)` with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x100223dc calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a0+280], a2=unknown, a3=unknown.
  The return at 0x100223f8 has v0 = ret(update__18VkwindowMainWindowGv).
- `dither__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022400 (n32).
  It occupies 112 bytes.
  The `lw` at 0x10022430 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10022438 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x1002243c stores 4 bytes to [a0+280] +0x144 (value [a2+8]).
  The `lw` at 0x10022440 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10022444 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10022448 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002244c calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+280], a3=0x8ec70.
  The return at 0x10022468 has v0 = ret(update__18VkwindowMainWindowGv).
- `format__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022470 (n32).
  It occupies 236 bytes.
  2 such accesses, including `lw` at 0x100224a0, 0x100224f4, loads 4 bytes from a0 (arg0 at entry) +0x54.
  2 such accesses, including `lw` at 0x100224a4, 0x100224f8, loads 4 bytes from abs 0x100a9dd0.
  2 such accesses, including `lw` at 0x100224b8, 0x1002250c, loads 4 bytes from abs 0x100a9088.
  The `lw` at 0x100224d4 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `lw` at 0x100224dc loads 4 bytes from abs 0x100a935c.
  The `lw` at 0x10022524 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10022528 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10022530 loads 4 bytes from a0 (arg0 at entry) +0x11c.
  The `lw` at 0x10022534 loads 4 bytes from abs 0x100a9c3c.
  The `beq` branch at 0x100224e8 targets 0x10022540, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `jal` at 0x100224a8 calls `EZ__GP10_WidgetRec` with a0=[a0+84], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x8ec00.
  The `jal` at 0x100224c0 calls `(unnamed)` with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100224e0 calls `strcmp` with a0=[a0+280]+340, a1=ret(0x10023520), a2=unknown, a3=unknown.
  The `jal` at 0x100224fc calls `EZ__GP10_WidgetRec` with a0=[a0+84], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10022514 calls `(unnamed)` with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10022538 calls `loadFormat__18VkwindowMainWindowGiPCc` with a0=[sym(vkwindow)], a1=[a0+284], a2=ret(0x10023520), a3=unknown.
  The return at 0x10022554 has v0 = unknown.
- `fs__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022560 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10022594 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022598 stores 4 bytes to [a0+280] +0x134 (value 0x4).
  The `lw` at 0x1002259c loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x100225a0 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x100225a4 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x100225a8 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=0x4, a2=[a0+280], a3=a2 at entry (arg2), a4=0x8eb10.
  The return at 0x100225c4 has v0 = ret(update__18VkwindowMainWindowGv).
- `gGamma__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100225d0 (n32).
  It occupies 168 bytes.
  The `lw` at 0x10022600 loads 4 bytes from a0 (arg0 at entry) +0x5c.
  The `lw` at 0x10022604 loads 4 bytes from abs 0x100a9dd0.
  The `lw` at 0x10022614 loads 4 bytes from abs 0x100a9088.
  The `lw` at 0x10022628 loads 4 bytes from abs 0x100a9344.
  The `lw` at 0x1002263c loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `lw` at 0x10022648 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x1002264c loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10022650 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10022608 calls `EZ__GP10_WidgetRec` with a0=[a0+92], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x8eaa0.
  The `jal` at 0x1002261c calls `(unnamed)` with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1002262c calls `atof` with a0=ret(0x10023520), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10022654 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a0+280]+620, a2=unknown, a3=unknown.
  The return at 0x10022670 has v0 = ret(update__18VkwindowMainWindowGv).
- `height__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022680 (n32).
  It occupies 184 bytes.
  The `lw` at 0x100226b0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0x100226b4 loads 4 bytes from abs 0x100a9dd0.
  The `lw` at 0x100226c4 loads 4 bytes from abs 0x100a9088.
  The `lw` at 0x100226d8 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x100226e0 stores 4 bytes to [a0+280] +0x114 (value ret(0x100234e0)).
  2 such accesses, including `lw` at 0x100226e4, 0x10022708, loads 4 bytes from abs 0x100a9ef0.
  2 such accesses, including `lw` at 0x100226e8, 0x1002270c, loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x100226f0 loads 4 bytes from a0 (arg0 at entry) +0x11c.
  The `lw` at 0x100226fc loads 4 bytes from abs 0x100a9c38.
  The `lw` at 0x10022710 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x100226b8 calls `EZ__GP10_WidgetRec` with a0=[a0+96], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x8e9f0.
  The `jal` at 0x100226cc calls `(unnamed)` with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10022700 calls `clamp__18VkwindowMainWindowGiN21` with a0=[sym(vkwindow)], a1=[a0+284], a2=0x1, a3=0x0.
  The `jal` at 0x10022714 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The return at 0x10022730 has v0 = ret(update__18VkwindowMainWindowGv).
- `horizontalSync__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022740 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10022774 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022778 stores 4 bytes to [a0+280] +0x28c (value 0x1).
  The `lw` at 0x1002277c loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10022780 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10022784 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10022788 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=0x1, a2=[a0+280], a3=a2 at entry (arg2), a4=0x8e930.
  The return at 0x100227a4 has v0 = ret(update__18VkwindowMainWindowGv).
- `interleaved__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100227b0 (n32).
  It occupies 108 bytes.
  The `lw` at 0x100227e4 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x100227e8 stores 4 bytes to [a0+280] +0x2ac (value 0x1).
  The `lw` at 0x100227ec loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x100227f0 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x100227f4 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x100227f8 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=0x1, a2=[a0+280], a3=a2 at entry (arg2), a4=0x8e8c0.
  The return at 0x10022814 has v0 = ret(update__18VkwindowMainWindowGv).
- `progressive__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022820 (n32).
  It occupies 104 bytes.
  The `lw` at 0x10022850 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022854 stores 4 bytes to [a0+280] +0x2ac (value 0x0).
  The `lw` at 0x10022858 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x1002285c loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10022860 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10022864 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a0+280], a2=a2 at entry (arg2), a3=0x8e850.
  The return at 0x10022880 has v0 = ret(update__18VkwindowMainWindowGv).
- `rGamma__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022890 (n32).
  It occupies 168 bytes.
  The `lw` at 0x100228c0 loads 4 bytes from a0 (arg0 at entry) +0x68.
  The `lw` at 0x100228c4 loads 4 bytes from abs 0x100a9dd0.
  The `lw` at 0x100228d4 loads 4 bytes from abs 0x100a9088.
  The `lw` at 0x100228e8 loads 4 bytes from abs 0x100a9344.
  The `lw` at 0x100228fc loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `lw` at 0x10022908 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x1002290c loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10022910 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x100228c8 calls `EZ__GP10_WidgetRec` with a0=[a0+104], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x8e7e0.
  The `jal` at 0x100228dc calls `(unnamed)` with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100228ec calls `atof` with a0=ret(0x10023520), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10022914 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a0+280]+616, a2=unknown, a3=unknown.
  The return at 0x10022930 has v0 = ret(update__18VkwindowMainWindowGv).
- `restoreSize__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022940 (n32).
  It occupies 316 bytes.
  4 such accesses, including `lw` at 0x10022970, 0x100229a0, 0x100229f8, loads 4 bytes from a0 (arg0 at entry) +0x118.
  2 such accesses, including `lw` at 0x10022978, 0x10022a00, loads 4 bytes from [a0+280] +0x128.
  2 such accesses, including `lw` at 0x10022980, 0x10022a20, loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022988 stores 4 bytes to [a0+280] +0x110 (value [[a0+280]+296]).
  2 such accesses, including `lw` at 0x10022990, 0x100229e8, loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `lw` at 0x10022998 loads 4 bytes from [a0+280] +0x12c.
  The `sw` at 0x100229a8 stores 4 bytes to [a0+280] +0x114 (value [[a0+280]+300]).
  2 such accesses, including `lw` at 0x100229ac, 0x100229d0, loads 4 bytes from abs 0x100a9ef0.
  2 such accesses, including `lw` at 0x100229b0, 0x100229d4, loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x100229b8 loads 4 bytes from a0 (arg0 at entry) +0x11c.
  The `lw` at 0x100229c4 loads 4 bytes from abs 0x100a9c38.
  The `lw` at 0x100229d8 loads 4 bytes from abs 0x100a9c30.
  The `lw` at 0x100229f0 loads 4 bytes from [a0+280] +0x110.
  The `lw` at 0x10022a18 loads 4 bytes from [a0+280] +0x114.
  The `lw` at 0x10022a28 loads 4 bytes from [a0+280] +0x12c.
  The `lw` at 0x10022a34 loads 4 bytes from abs 0x100a9318.
  The `lw` at 0x10022a44 loads 4 bytes from abs 0x100a90d4.
  The `lw` at 0x10022a50 loads 4 bytes from abs 0x100a9088.
  The `bne` branch at 0x10022a04 targets 0x10022a34, is taken when a1(=[[a0+280]+272]) != a2(=[[a0+280]+296]), and falls through when a1(=[[a0+280]+272]) == a2(=[[a0+280]+296]).
  The `beq` branch at 0x10022a2c targets 0x10022a60, is taken when a2(=[[a0+280]+276]) == a3(=[[a0+280]+300]), and falls through when a2(=[[a0+280]+276]) != a3(=[[a0+280]+300]).
  The `jal` at 0x100229c8 calls `clamp__18VkwindowMainWindowGiN21` with a0=[sym(vkwindow)], a1=[a0+284], a2=0x1, a3=0x0, a4=0x8e730.
  The `jal` at 0x100229dc calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10022a38 calls `getTheErrorDialog__Gv` with a0=unknown, a1=[[a0+280]+272], a2=unknown, a3=unknown.
  The `jal` at 0x10022a58 calls `(unnamed)` with a0=ret(getTheErrorDialog__Gv), a1=0x100941d0, a2=a1 at entry (arg1), a3=unknown.
  The return at 0x10022a74 has v0 = unknown.
- `rgb10__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022a80 (n32).
  It occupies 104 bytes.
  The `lw` at 0x10022ab0 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022ab4 stores 4 bytes to [a0+280] +0x134 (value 0x0).
  The `lw` at 0x10022ab8 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10022abc loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10022ac0 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10022ac4 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a0+280], a2=a2 at entry (arg2), a3=0x8e5f0.
  The return at 0x10022ae0 has v0 = ret(update__18VkwindowMainWindowGv).
- `rgb12__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022af0 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10022b24 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022b28 stores 4 bytes to [a0+280] +0x134 (value 0x2).
  The `lw` at 0x10022b2c loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10022b30 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10022b34 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10022b38 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=0x2, a2=[a0+280], a3=a2 at entry (arg2), a4=0x8e580.
  The return at 0x10022b54 has v0 = ret(update__18VkwindowMainWindowGv).
- `rgba10__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022b60 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10022b94 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022b98 stores 4 bytes to [a0+280] +0x134 (value 0x1).
  The `lw` at 0x10022b9c loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10022ba0 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10022ba4 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10022ba8 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=0x1, a2=[a0+280], a3=a2 at entry (arg2), a4=0x8e510.
  The return at 0x10022bc4 has v0 = ret(update__18VkwindowMainWindowGv).
- `stacked__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022bd0 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10022c04 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022c08 stores 4 bytes to [a0+280] +0x2ac (value 0x2).
  The `lw` at 0x10022c0c loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10022c10 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10022c14 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10022c18 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=0x2, a2=[a0+280], a3=a2 at entry (arg2), a4=0x8e4a0.
  The return at 0x10022c34 has v0 = ret(update__18VkwindowMainWindowGv).
- `useGamma__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022c40 (n32).
  It occupies 112 bytes.
  The `lw` at 0x10022c70 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10022c78 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022c7c stores 4 bytes to [a0+280] +0x2c0 (value [a2+8]).
  The `lw` at 0x10022c80 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10022c84 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10022c88 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10022c8c calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+280], a3=0x8e430.
  The return at 0x10022ca8 has v0 = ret(update__18VkwindowMainWindowGv).
- `width__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022cb0 (n32).
  It occupies 184 bytes.
  The `lw` at 0x10022ce0 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lw` at 0x10022ce4 loads 4 bytes from abs 0x100a9dd0.
  The `lw` at 0x10022cf4 loads 4 bytes from abs 0x100a9088.
  The `lw` at 0x10022d08 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022d10 stores 4 bytes to [a0+280] +0x110 (value ret(0x100234e0)).
  2 such accesses, including `lw` at 0x10022d14, 0x10022d38, loads 4 bytes from abs 0x100a9ef0.
  2 such accesses, including `lw` at 0x10022d18, 0x10022d3c, loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10022d20 loads 4 bytes from a0 (arg0 at entry) +0x11c.
  The `lw` at 0x10022d2c loads 4 bytes from abs 0x100a9c38.
  The `lw` at 0x10022d40 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10022ce8 calls `EZ__GP10_WidgetRec` with a0=[a0+124], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x8e3c0.
  The `jal` at 0x10022cfc calls `(unnamed)` with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10022d30 calls `clamp__18VkwindowMainWindowGiN21` with a0=[sym(vkwindow)], a1=[a0+284], a2=0x1, a3=0x0.
  The `jal` at 0x10022d44 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The return at 0x10022d60 has v0 = ret(update__18VkwindowMainWindowGv).
- `xLocked__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022d70 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10022da0 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022da8 stores 4 bytes to [a0+280] +0x148 (value 0x0).
  The `lw` at 0x10022dac loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10022db0 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10022db4 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10022db8 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a0+280]+328, a2=a2 at entry (arg2), a3=0x8e300.
  The return at 0x10022dd4 has v0 = ret(update__18VkwindowMainWindowGv).
- `xOrigin__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022de0 (n32).
  It occupies 184 bytes.
  The `lw` at 0x10022e10 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `lw` at 0x10022e14 loads 4 bytes from abs 0x100a9dd0.
  The `lw` at 0x10022e24 loads 4 bytes from abs 0x100a9088.
  The `lw` at 0x10022e38 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022e40 stores 4 bytes to [a0+280] +0x108 (value ret(0x100234e0)).
  2 such accesses, including `lw` at 0x10022e44, 0x10022e68, loads 4 bytes from abs 0x100a9ef0.
  2 such accesses, including `lw` at 0x10022e48, 0x10022e6c, loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10022e50 loads 4 bytes from a0 (arg0 at entry) +0x11c.
  The `lw` at 0x10022e5c loads 4 bytes from abs 0x100a9c38.
  The `lw` at 0x10022e70 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10022e18 calls `EZ__GP10_WidgetRec` with a0=[a0+128], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x8e290.
  The `jal` at 0x10022e2c calls `(unnamed)` with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10022e60 calls `clamp__18VkwindowMainWindowGiN21` with a0=[sym(vkwindow)], a1=[a0+284], a2=0x0, a3=0x1.
  The `jal` at 0x10022e74 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The return at 0x10022e90 has v0 = ret(update__18VkwindowMainWindowGv).
- `xPixel__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022ea0 (n32).
  It occupies 112 bytes.
  The `lw` at 0x10022ed4 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022edc stores 4 bytes to [a0+280] +0x148 (value 0x1).
  The `lw` at 0x10022ee0 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10022ee4 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10022ee8 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10022eec calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=0x1, a2=[a0+280]+328, a3=a2 at entry (arg2), a4=0x8e1d0.
  The return at 0x10022f08 has v0 = ret(update__18VkwindowMainWindowGv).
- `xTile__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022f10 (n32).
  It occupies 112 bytes.
  The `lw` at 0x10022f44 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022f4c stores 4 bytes to [a0+280] +0x148 (value 0x2).
  The `lw` at 0x10022f50 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10022f54 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10022f58 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10022f5c calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=0x2, a2=[a0+280]+328, a3=a2 at entry (arg2), a4=0x8e160.
  The return at 0x10022f78 has v0 = ret(update__18VkwindowMainWindowGv).
- `yLocked__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022f80 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10022fb0 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10022fb8 stores 4 bytes to [a0+280] +0x14c (value 0x0).
  The `lw` at 0x10022fbc loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10022fc0 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10022fc4 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10022fc8 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a0+280]+332, a2=a2 at entry (arg2), a3=0x8e0f0.
  The return at 0x10022fe4 has v0 = ret(update__18VkwindowMainWindowGv).
- `yOrigin__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10022ff0 (n32).
  It occupies 184 bytes.
  The `lw` at 0x10023020 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lw` at 0x10023024 loads 4 bytes from abs 0x100a9dd0.
  The `lw` at 0x10023034 loads 4 bytes from abs 0x100a9088.
  The `lw` at 0x10023048 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10023050 stores 4 bytes to [a0+280] +0x10c (value ret(0x100234e0)).
  2 such accesses, including `lw` at 0x10023054, 0x10023078, loads 4 bytes from abs 0x100a9ef0.
  2 such accesses, including `lw` at 0x10023058, 0x1002307c, loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10023060 loads 4 bytes from a0 (arg0 at entry) +0x11c.
  The `lw` at 0x1002306c loads 4 bytes from abs 0x100a9c38.
  The `lw` at 0x10023080 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10023028 calls `EZ__GP10_WidgetRec` with a0=[a0+132], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x8e080.
  The `jal` at 0x1002303c calls `(unnamed)` with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10023070 calls `clamp__18VkwindowMainWindowGiN21` with a0=[sym(vkwindow)], a1=[a0+284], a2=0x0, a3=0x2.
  The `jal` at 0x10023084 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The return at 0x100230a0 has v0 = ret(update__18VkwindowMainWindowGv).
- `yPixel__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100230b0 (n32).
  It occupies 112 bytes.
  The `lw` at 0x100230e4 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x100230ec stores 4 bytes to [a0+280] +0x14c (value 0x1).
  The `lw` at 0x100230f0 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x100230f4 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x100230f8 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x100230fc calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=0x1, a2=[a0+280]+332, a3=a2 at entry (arg2), a4=0x8dfc0.
  The return at 0x10023118 has v0 = ret(update__18VkwindowMainWindowGv).
- `z__7DvpFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10023120 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10023154 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `sw` at 0x10023158 stores 4 bytes to [a0+280] +0x134 (value 0x3).
  The `lw` at 0x1002315c loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10023160 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10023164 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10023168 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=0x3, a2=[a0+280], a3=a2 at entry (arg2), a4=0x8df50.
  The return at 0x10023184 has v0 = ret(update__18VkwindowMainWindowGv).
- `__ct__9DvpFormUIGPCcP10_WidgetRec` in `usr/gfx/ircombine` at 0x10023580 (n32).
  It occupies 132 bytes.
  The `lw` at 0x100235ac loads 4 bytes from abs 0x100a9360.
  The `lw` at 0x100235b8 loads 4 bytes from abs 0x100a9e20.
  The `sw` at 0x100235c0 stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__9DvpFormUI)).
  The `lw` at 0x100235cc loads 4 bytes from abs 0x100a9650.
  The `jalr` at 0x100235b0 calls `__ct__11VkComponentGPCc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100235d0 calls `create__9DvpFormUIGP10_WidgetRec` with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=unknown, a3=unknown.
  The return at 0x100235e8 has v0 = a0.
- `__ct__9DvpFormUIGPCc` in `usr/gfx/ircombine` at 0x10023610 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10023638 loads 4 bytes from abs 0x100a9360.
  The `lw` at 0x10023644 loads 4 bytes from abs 0x100a9e20.
  The `sw` at 0x1002364c stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__9DvpFormUI)).
  The `jalr` at 0x1002363c calls `__ct__11VkComponentGPCc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10023660 has v0 = a0.
- `__dt__9DvpFormUIGv` in `usr/gfx/ircombine` at 0x10023680 (n32).
  It occupies 148 bytes.
  The `lw` at 0x100236ac loads 4 bytes from abs 0x100a9e20.
  The `sw` at 0x100236b4 stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__9DvpFormUI)).
  The `lw` at 0x100236c0 loads 4 bytes from abs 0x100a9208.
  The `lw` at 0x100236e0 loads 4 bytes from abs 0x100a9250.
  The `beq` branch at 0x100236a4 targets 0x100236ec, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x100236d4 targets 0x100236ec, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The `jalr` at 0x100236c4 calls `__dt__11VkComponentGv` with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100236e4 calls `__dl__GPv` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The return at 0x100236f8 has v0 = unknown.
- `create__9DvpFormUIGP10_WidgetRec` in `usr/gfx/ircombine` at 0x10023720 (n32).
  It occupies 15904 bytes.
  The `lw` at 0x1002374c loads 4 bytes from abs 0x100a9e24.
  The `lw` at 0x10023750 loads 4 bytes from abs 0x100a9324.
  The `lw` at 0x10023760 loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such accesses, including `lw` at 0x10023764, 0x10024c28, loads 4 bytes from abs 0x100a9148.
  2 such accesses, including `lw` at 0x10023768, 0x10024c2c, loads 4 bytes from sym(xmFormWidgetClass) +0x0.
  556 such accesses, including `lw` at 0x10023770, 0x100237d0, 0x100237dc, loads 4 bytes from abs 0x100a914c.
  The `lw` at 0x10023780 loads 4 bytes from abs 0x100a9364.
  The `sw` at 0x1002379c stores 4 bytes to a0 (arg0 at entry) +0x30 (value ret(XtVaCreateWidget)).
  The `sw` at 0x100237a4 stores 4 bytes to a0 (arg0 at entry) +0x10 (value ret(XtVaCreateWidget)).
  The `lw` at 0x100237ac loads 4 bytes from abs 0x100a9368.
  59 such accesses, including `lw` at 0x100237b8, 0x100238f8, 0x10023948, loads 4 bytes from abs 0x100a90d4.
  22 such accesses, including `lw` at 0x100237c0, 0x10023bc0, 0x100241b0, loads 4 bytes from abs 0x100a921c.
  22 such accesses, including `lw` at 0x100237c4, 0x10023bc4, 0x100241b4, loads 4 bytes from sym(xmLabelWidgetClass) +0x0.
  29 such accesses, including `lw` at 0x100237cc, 0x100239bc, 0x10023acc, loads 4 bytes from a0 (arg0 at entry) +0x10.
  94 such accesses, including `lw` at 0x10023874, 0x10023888, 0x10023a50, loads 4 bytes from abs 0x100a91ac.
  40 such accesses, including `lw` at 0x100238a0, 0x10023a7c, 0x10023b7c, loads 4 bytes from abs 0x100a936c.
  The `sw` at 0x100238b4 stores 4 bytes to a0 (arg0 at entry) +0xbc (value ret(XtVaCreateManagedWidget)).
  5 such accesses, including `lw` at 0x100238c0, 0x10023f68, 0x100257e4, loads 4 bytes from abs 0x100a92fc.
  5 such accesses, including `lw` at 0x100238f4, 0x10023f9c, 0x10025818, loads 4 bytes from a0 (arg0 at entry) +0x10.
  5 such accesses, including `lw` at 0x10023908, 0x10023fb0, 0x1002582c, loads 4 bytes from abs 0x100a9370.
  The `sw` at 0x1002393c stores 4 bytes to a0 (arg0 at entry) +0xcc.
  3 such accesses, including `lw` at 0x10023944, 0x10023978, 0x10026b9c, loads 4 bytes from a0 (arg0 at entry) +0xcc.
  The `lw` at 0x10023950 loads 4 bytes from abs 0x100a9684.
  15 such accesses, including `lw` at 0x1002395c, 0x10023990, 0x10024004, loads 4 bytes from abs 0x100a9374.
  The `sw` at 0x10023970 stores 4 bytes to a0 (arg0 at entry) +0xdc (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `lw` at 0x10023984 loads 4 bytes from abs 0x100a9668.
  The `sw` at 0x100239a4 stores 4 bytes to a0 (arg0 at entry) +0xd8 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  3 such accesses, including `lw` at 0x100239b0, 0x10024ed0, 0x100267b8, loads 4 bytes from abs 0x100a9138.
  3 such accesses, including `lw` at 0x100239b4, 0x10024ed4, 0x100267bc, loads 4 bytes from sym(xmPushButtonWidgetClass) +0x0.
  The `sw` at 0x10023a90 stores 4 bytes to a0 (arg0 at entry) +0x3c (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x10023a98 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lw` at 0x10023aa4 loads 4 bytes from abs 0x100a965c.
  24 such accesses, including `lw` at 0x10023aac, 0x10023bac, 0x10023de0, loads 4 bytes from abs 0x100a9378.
  9 such accesses, including `lw` at 0x10023ac0, 0x100244f0, 0x10024624, loads 4 bytes from abs 0x100a912c.
  9 such accesses, including `lw` at 0x10023ac4, 0x100244f4, 0x10024628, loads 4 bytes from sym(xmTextFieldWidgetClass) +0x0.
  The `sw` at 0x10023b90 stores 4 bytes to a0 (arg0 at entry) +0x54 (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x10023b98 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lw` at 0x10023ba4 loads 4 bytes from abs 0x100a9674.
  The `sw` at 0x10023cb4 stores 4 bytes to a0 (arg0 at entry) +0x50 (value ret(XtVaCreateManagedWidget)).
  4 such accesses, including `lw` at 0x10023cc0, 0x10023df4, 0x1002408c, loads 4 bytes from abs 0x100a9130.
  4 such accesses, including `lw` at 0x10023cc4, 0x10023df8, 0x10024090, loads 4 bytes from sym(xmToggleButtonWidgetClass) +0x0.
  The `sw` at 0x10023dc4 stores 4 bytes to a0 (arg0 at entry) +0x78 (value ret(XtVaCreateManagedWidget)).
  2 such accesses, including `lw` at 0x10023dcc, 0x10026c68, loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x10023dd8 loads 4 bytes from abs 0x100a96a8.
  The `lw` at 0x10023e74 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0x10023f38 stores 4 bytes to a0 (arg0 at entry) +0x34 (value ret(XtVaCreateManagedWidget)).
  2 such accesses, including `lw` at 0x10023f40, 0x10026c90, loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lw` at 0x10023f4c loads 4 bytes from abs 0x100a9654.
  The `sw` at 0x10023fe4 stores 4 bytes to a0 (arg0 at entry) +0xc4.
  4 such accesses, including `lw` at 0x10023fec, 0x10024020, 0x10024054, loads 4 bytes from a0 (arg0 at entry) +0xc4.
  The `lw` at 0x10023ff8 loads 4 bytes from abs 0x100a968c.
  The `sw` at 0x10024018 stores 4 bytes to a0 (arg0 at entry) +0xe8 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `lw` at 0x1002402c loads 4 bytes from abs 0x100a9688.
  The `sw` at 0x1002404c stores 4 bytes to a0 (arg0 at entry) +0xe4 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `lw` at 0x10024060 loads 4 bytes from abs 0x100a96a4.
  The `sw` at 0x10024080 stores 4 bytes to a0 (arg0 at entry) +0xf8 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x10024180 stores 4 bytes to a0 (arg0 at entry) +0x40 (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x10024188 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x10024194 loads 4 bytes from abs 0x100a9660.
  The `sw` at 0x100242c0 stores 4 bytes to a0 (arg0 at entry) +0x20 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x100243dc stores 4 bytes to a0 (arg0 at entry) +0x98 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x100244e4 stores 4 bytes to a0 (arg0 at entry) +0xb0 (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x10024558 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `sw` at 0x100245f4 stores 4 bytes to a0 (arg0 at entry) +0x38 (value ret(XtVaCreateManagedWidget)).
  3 such accesses, including `lw` at 0x100245fc, 0x10026e54, 0x100273fc, loads 4 bytes from a0 (arg0 at entry) +0x38.
  2 such accesses, including `lw` at 0x10024608, 0x10027408, loads 4 bytes from abs 0x100a9658.
  The `lw` at 0x1002468c loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `sw` at 0x10024728 stores 4 bytes to a0 (arg0 at entry) +0x5c (value ret(XtVaCreateManagedWidget)).
  3 such accesses, including `lw` at 0x10024730, 0x10026e7c, 0x10027420, loads 4 bytes from a0 (arg0 at entry) +0x5c.
  2 such accesses, including `lw` at 0x1002473c, 0x1002742c, loads 4 bytes from abs 0x100a967c.
  The `lw` at 0x100247c0 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `sw` at 0x1002485c stores 4 bytes to a0 (arg0 at entry) +0x68 (value ret(XtVaCreateManagedWidget)).
  3 such accesses, including `lw` at 0x10024864, 0x10026ea4, 0x10027444, loads 4 bytes from a0 (arg0 at entry) +0x68.
  2 such accesses, including `lw` at 0x10024870, 0x10027450, loads 4 bytes from abs 0x100a9690.
  The `sw` at 0x10024990 stores 4 bytes to a0 (arg0 at entry) +0x9c (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x10024ae4 stores 4 bytes to a0 (arg0 at entry) +0x48 (value ret(XtVaCreateManagedWidget)).
  2 such accesses, including `lw` at 0x10024aec, 0x10026ecc, loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x10024af8 loads 4 bytes from abs 0x100a9670.
  The `lw` at 0x10024b14 loads 4 bytes from abs 0x100a92d8.
  The `lw` at 0x10024b18 loads 4 bytes from sym(xmFrameWidgetClass) +0x0.
  The `sw` at 0x10024c1c stores 4 bytes to a0 (arg0 at entry) +0x90 (value ret(XtVaCreateManagedWidget)).
  2 such accesses, including `lw` at 0x10024c34, 0x1002575c, loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `sw` at 0x10024ca0 stores 4 bytes to a0 (arg0 at entry) +0x8c (value ret(XtVaCreateManagedWidget)).
  9 such accesses, including `lw` at 0x10024cb8, 0x10024dc0, 0x10024edc, loads 4 bytes from a0 (arg0 at entry) +0x8c.
  The `sw` at 0x10024da8 stores 4 bytes to a0 (arg0 at entry) +0xb8 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x10024ec4 stores 4 bytes to a0 (arg0 at entry) +0x74 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x10024fcc stores 4 bytes to a0 (arg0 at entry) +0x6c (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x10024fd4 loads 4 bytes from a0 (arg0 at entry) +0x6c.
  The `lw` at 0x10024fe0 loads 4 bytes from abs 0x100a9694.
  The `sw` at 0x100250f8 stores 4 bytes to a0 (arg0 at entry) +0x88 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x100251f4 stores 4 bytes to a0 (arg0 at entry) +0x4c (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x100252fc stores 4 bytes to a0 (arg0 at entry) +0x94 (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x10025370 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `sw` at 0x10025410 stores 4 bytes to a0 (arg0 at entry) +0x58 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x10025518 stores 4 bytes to a0 (arg0 at entry) +0xa4 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x10025604 stores 4 bytes to a0 (arg0 at entry) +0x70 (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x1002560c loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `lw` at 0x1002561c loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0x1002562c loads 4 bytes from a0 (arg0 at entry) +0x74.
  28 such accesses, including `lw` at 0x10025634, 0x1002566c, 0x100256a4, loads 4 bytes from abs 0x100a9328.
  The `lw` at 0x10025644 loads 4 bytes from a0 (arg0 at entry) +0x74.
  2 such accesses, including `lw` at 0x10025654, 0x100256ec, loads 4 bytes from a0 (arg0 at entry) +0x58.
  2 such accesses, including `lw` at 0x10025664, 0x100256fc, loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `lw` at 0x1002567c loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0x1002568c loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lw` at 0x1002569c loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lw` at 0x100256b4 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  2 such accesses, including `lw` at 0x100256c4, 0x10025724, loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0x100256dc loads 4 bytes from a0 (arg0 at entry) +0x94.
  The `lw` at 0x10025714 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `lw` at 0x10025734 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0x100257d8 stores 4 bytes to a0 (arg0 at entry) +0xa0 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x10025860 stores 4 bytes to a0 (arg0 at entry) +0xd4.
  3 such accesses, including `lw` at 0x10025868, 0x1002589c, 0x10026ef4, loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `lw` at 0x10025874 loads 4 bytes from abs 0x100a96c0.
  The `sw` at 0x10025894 stores 4 bytes to a0 (arg0 at entry) +0x108 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `lw` at 0x100258a8 loads 4 bytes from abs 0x100a96c8.
  The `sw` at 0x100258c8 stores 4 bytes to a0 (arg0 at entry) +0x10c (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x10025950 stores 4 bytes to a0 (arg0 at entry) +0xd0.
  5 such accesses, including `lw` at 0x10025958, 0x1002598c, 0x100259c0, loads 4 bytes from a0 (arg0 at entry) +0xd0.
  The `lw` at 0x10025964 loads 4 bytes from abs 0x100a96b0.
  The `sw` at 0x10025984 stores 4 bytes to a0 (arg0 at entry) +0xfc (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `lw` at 0x10025998 loads 4 bytes from abs 0x100a96b8.
  The `sw` at 0x100259b8 stores 4 bytes to a0 (arg0 at entry) +0x100 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `lw` at 0x100259cc loads 4 bytes from abs 0x100a96bc.
  The `sw` at 0x100259ec stores 4 bytes to a0 (arg0 at entry) +0x104 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `lw` at 0x10025a74 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `sw` at 0x10025b34 stores 4 bytes to a0 (arg0 at entry) +0xac (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x10025c30 stores 4 bytes to a0 (arg0 at entry) +0x44 (value ret(XtVaCreateManagedWidget)).
  3 such accesses, including `lw` at 0x10025c38, 0x1002713c, 0x10027468, loads 4 bytes from a0 (arg0 at entry) +0x44.
  2 such accesses, including `lw` at 0x10025c44, 0x10027474, loads 4 bytes from abs 0x100a966c.
  The `sw` at 0x10025d84 stores 4 bytes to a0 (arg0 at entry) +0x2c (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x10025e0c stores 4 bytes to a0 (arg0 at entry) +0xc8.
  7 such accesses, including `lw` at 0x10025e14, 0x10025e48, 0x10025e7c, loads 4 bytes from a0 (arg0 at entry) +0xc8.
  The `lw` at 0x10025e20 loads 4 bytes from abs 0x100a9698.
  The `sw` at 0x10025e40 stores 4 bytes to a0 (arg0 at entry) +0xec (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `lw` at 0x10025e54 loads 4 bytes from abs 0x100a96a0.
  The `sw` at 0x10025e74 stores 4 bytes to a0 (arg0 at entry) +0xf4 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `lw` at 0x10025e88 loads 4 bytes from abs 0x100a969c.
  The `sw` at 0x10025ea8 stores 4 bytes to a0 (arg0 at entry) +0xf0 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `lw` at 0x10025ebc loads 4 bytes from abs 0x100a96cc.
  The `sw` at 0x10025edc stores 4 bytes to a0 (arg0 at entry) +0x110 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `lw` at 0x10025ef0 loads 4 bytes from abs 0x100a9678.
  The `sw` at 0x10025f10 stores 4 bytes to a0 (arg0 at entry) +0xe0 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x10026040 stores 4 bytes to a0 (arg0 at entry) +0xa8 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1002616c stores 4 bytes to a0 (arg0 at entry) +0xb4 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1002628c stores 4 bytes to a0 (arg0 at entry) +0x24 (value ret(XtVaCreateManagedWidget)).
  2 such accesses, including `lw` at 0x10026300, 0x10026460, loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `lw` at 0x10026318 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `sw` at 0x100263c8 stores 4 bytes to a0 (arg0 at entry) +0x60 (value ret(XtVaCreateManagedWidget)).
  2 such accesses, including `lw` at 0x100263d0, 0x1002748c, loads 4 bytes from a0 (arg0 at entry) +0x60.
  2 such accesses, including `lw` at 0x100263dc, 0x10027498, loads 4 bytes from abs 0x100a9680.
  The `lw` at 0x10026478 loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `sw` at 0x10026528 stores 4 bytes to a0 (arg0 at entry) +0x7c (value ret(XtVaCreateManagedWidget)).
  2 such accesses, including `lw` at 0x10026530, 0x100274b0, loads 4 bytes from a0 (arg0 at entry) +0x7c.
  2 such accesses, including `lw` at 0x1002653c, 0x100274bc, loads 4 bytes from abs 0x100a96ac.
  The `sw` at 0x10026658 stores 4 bytes to a0 (arg0 at entry) +0x84 (value ret(XtVaCreateManagedWidget)).
  3 such accesses, including `lw` at 0x10026660, 0x10027364, 0x100274d4, loads 4 bytes from a0 (arg0 at entry) +0x84.
  2 such accesses, including `lw` at 0x1002666c, 0x100274e0, loads 4 bytes from abs 0x100a96c4.
  The `sw` at 0x10026788 stores 4 bytes to a0 (arg0 at entry) +0x80 (value ret(XtVaCreateManagedWidget)).
  3 such accesses, including `lw` at 0x10026790, 0x1002739c, 0x100274f8, loads 4 bytes from a0 (arg0 at entry) +0x80.
  2 such accesses, including `lw` at 0x1002679c, 0x10027504, loads 4 bytes from abs 0x100a96b4.
  The `lw` at 0x10026824 loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `sw` at 0x100268f8 stores 4 bytes to a0 (arg0 at entry) +0x28 (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x10026900 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x1002690c loads 4 bytes from abs 0x100a9664.
  The `lw` at 0x100269a0 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `sw` at 0x10026a50 stores 4 bytes to a0 (arg0 at entry) +0xc0 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x10026b94 stores 4 bytes to a0 (arg0 at entry) +0x64 (value ret(XtVaCreateManagedWidget)).
  7 such accesses, including `lw` at 0x10026ba0, 0x10026cbc, 0x10026ef8, loads 4 bytes from abs 0x100a933c.
  6 such accesses, including `lw` at 0x10026c78, 0x10026ca0, 0x10026e2c, loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0x10026d10 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x10026dac loads 4 bytes from a0 (arg0 at entry) +0x20.
  2 such accesses, including `lw` at 0x10026dbc, 0x10026df4, loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lw` at 0x10026dcc loads 4 bytes from a0 (arg0 at entry) +0x5c.
  The `lw` at 0x10026de4 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `lw` at 0x10026e04 loads 4 bytes from a0 (arg0 at entry) +0x68.
  The `lw` at 0x10026e1c loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lw` at 0x10026e3c loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0x10026edc loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0x10026f64 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0x10027078 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0x10027090 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0x1002714c loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x1002715c loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x10027190 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x10027208 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0x10027220 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0x100272cc loads 4 bytes from a0 (arg0 at entry) +0xa8.
  5 such accesses, including `lw` at 0x100272dc, 0x10027304, 0x10027374, loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `lw` at 0x100272f4 loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `lw` at 0x10027314 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lw` at 0x1002732c loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x1002733c loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lw` at 0x1002734c loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lw` at 0x10027384 loads 4 bytes from a0 (arg0 at entry) +0xc0.
  The `lw` at 0x100273bc loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `lw` at 0x100273d4 loads 4 bytes from a0 (arg0 at entry) +0xc0.
  The `beq` branch at 0x100238dc targets 0x10023930, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10023f84 targets 0x10023fd8, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10025800 targets 0x10025854, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100258f0 targets 0x10025944, is taken when a3(=ret(__nw__GUi)) == 0, and falls through when a3(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10025dac targets 0x10025e00, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `jalr` at 0x10023754 calls `setDefaultResources__11VkComponentGP10_WidgetRecPCPc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultDvpFormUIResources__9DvpFormUI), a3=a3 at entry (arg3).
  The `jalr` at 0x10023784 calls `XtVaCreateWidget` with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=sym(_XmStrings)+9052, a4=0x1, a5=0x0.
  The `jalr` at 0x100237b0 calls `installDestroyHandler__11VkComponentGv` with a0=a0 at entry (arg0), a1=ret(XtVaCreateWidget), a2=a0 at entry (arg0), a3=a0 at entry (arg0).
  The `jalr` at 0x100238a4 calls `XtVaCreateManagedWidget` with a0=0x10094218, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x100238c4 calls `__nw__GUi` with a0=0x4c, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0x1002390c calls `__ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv` with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10094230, a3=0x0, a4=0x0.
  The `jalr` at 0x10023960 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+204], a1=0x10094248, a2=sym(horizontalSyncCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10023994 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+204], a1=0x10094268, a2=sym(compositeSyncCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10023a80 calls `XtVaCreateManagedWidget` with a0=0x10094280, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10023ab0 calls `XtAddCallback` with a0=[a0+60], a1=sym(_XmStrings)+4683, a2=sym(channelBrowseCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10023b80 calls `XtVaCreateManagedWidget` with a0=0x10094298, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x1, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x10023bb0 calls `XtAddCallback` with a0=[a0+84], a1=sym(_XmStrings)+4683, a2=sym(formatCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10023ca4 calls `XtVaCreateManagedWidget` with a0=0x100942a8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10023db4 calls `XtVaCreateManagedWidget` with a0=0x100942b8, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10023de4 calls `XtAddCallback` with a0=[a0+120], a1=sym(_XmStrings)+10557, a2=sym(useGammaCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10023f28 calls `XtVaCreateManagedWidget` with a0=0x100942d0, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10023f58 calls `XtAddCallback` with a0=[a0+52], a1=sym(_XmStrings)+10557, a2=sym(alphaChannelCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10023f6c calls `__nw__GUi` with a0=0x4c, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10023fb4 calls `__ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv` with a0=ret(__nw__GUi), a1=[a0+16], a2=0x100942e8, a3=0x0, a4=0x0.
  The `jalr` at 0x10024008 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+196], a1=0x10094300, a2=sym(progressiveCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002403c calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+196], a1=0x10094318, a2=sym(interleavedCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10024070 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+196], a1=0x10094330, a2=sym(stackedCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10024170 calls `XtVaCreateManagedWidget` with a0=0x10094340, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x100241a0 calls `XtAddCallback` with a0=[a0+64], a1=sym(_XmStrings)+10557, a2=sym(channelEnableCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100242b0 calls `XtVaCreateManagedWidget` with a0=0x10094358, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x100243cc calls `XtVaCreateManagedWidget` with a0=0x10094368, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x100244d4 calls `XtVaCreateManagedWidget` with a0=0x10094378, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100245e4 calls `XtVaCreateManagedWidget` with a0=0x10094388, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10024614 calls `XtAddCallback` with a0=[a0+56], a1=sym(_XmStrings)+4683, a2=sym(bGammaCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10024718 calls `XtVaCreateManagedWidget` with a0=0x10094398, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10024748 calls `XtAddCallback` with a0=[a0+92], a1=sym(_XmStrings)+4683, a2=sym(gGammaCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002484c calls `XtVaCreateManagedWidget` with a0=0x100943a8, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002487c calls `XtAddCallback` with a0=[a0+104], a1=sym(_XmStrings)+4683, a2=sym(rGammaCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10024980 calls `XtVaCreateManagedWidget` with a0=0x100943b8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10024ad4 calls `XtVaCreateManagedWidget` with a0=0x100943c8, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+9609.
  The `jalr` at 0x10024b04 calls `XtAddCallback` with a0=[a0+72], a1=sym(_XmStrings)+10557, a2=sym(ditherCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10024c0c calls `XtVaCreateManagedWidget` with a0=0x100943e0, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x1, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x10024c90 calls `XtVaCreateManagedWidget` with a0=0x100943f8, a1=[sym(xmFormWidgetClass)], a2=[a0+144], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+9052, a6=0x1, a7=sym(_XmStrings)+5427.
  The `jalr` at 0x10024d98 calls `XtVaCreateManagedWidget` with a0=0x10094408, a1=[sym(xmLabelWidgetClass)], a2=[a0+140], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10024eb4 calls `XtVaCreateManagedWidget` with a0=0x10094418, a1=[sym(xmLabelWidgetClass)], a2=[a0+140], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10024fbc calls `XtVaCreateManagedWidget` with a0=0x10094428, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+140], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10024fec calls `XtAddCallback` with a0=[a0+108], a1=sym(_XmStrings)+4683, a2=sym(restoreSizeCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100250e8 calls `XtVaCreateManagedWidget` with a0=0x10094440, a1=[sym(xmLabelWidgetClass)], a2=[a0+140], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100251e4 calls `XtVaCreateManagedWidget` with a0=0x10094450, a1=[sym(xmLabelWidgetClass)], a2=[a0+140], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100252ec calls `XtVaCreateManagedWidget` with a0=0x10094460, a1=[sym(xmLabelWidgetClass)], a2=[a0+140], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10025400 calls `XtVaCreateManagedWidget` with a0=0x10094470, a1=[sym(xmLabelWidgetClass)], a2=[a0+140], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10025508 calls `XtVaCreateManagedWidget` with a0=0x10094480, a1=[sym(xmLabelWidgetClass)], a2=[a0+140], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100255f4 calls `XtVaCreateManagedWidget` with a0=0x10094498, a1=[sym(xmLabelWidgetClass)], a2=[a0+140], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10025638 calls `XtVaSetValues` with a0=[a0+184], a1=sym(_XmStrings)+10305, a2=[a0+116], a3=sym(_XmStrings)+7562, a4=[a0+116], a5=0x0.
  The `jalr` at 0x10025670 calls `XtVaSetValues` with a0=[a0+116], a1=sym(_XmStrings)+10305, a2=[a0+88], a3=sym(_XmStrings)+7562, a4=[a0+88], a5=0x0.
  The `jalr` at 0x100256a8 calls `XtVaSetValues` with a0=[a0+136], a1=sym(_XmStrings)+10305, a2=[a0+76], a3=sym(_XmStrings)+7562, a4=[a0+76], a5=0x0.
  The `jalr` at 0x100256d0 calls `XtVaSetValues` with a0=[a0+76], a1=sym(_XmStrings)+10305, a2=[a0+112], a3=0x0.
  The `jalr` at 0x10025708 calls `XtVaSetValues` with a0=[a0+148], a1=sym(_XmStrings)+10305, a2=[a0+88], a3=sym(_XmStrings)+7562, a4=[a0+88], a5=0x0.
  The `jalr` at 0x10025740 calls `XtVaSetValues` with a0=[a0+164], a1=sym(_XmStrings)+10305, a2=[a0+112], a3=sym(_XmStrings)+7562, a4=[a0+112], a5=0x0.
  The `jalr` at 0x100257c8 calls `XtVaCreateManagedWidget` with a0=0x100944a8, a1=[sym(xmLabelWidgetClass)], a2=[a0+144], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+5427.
  The `jalr` at 0x100257e8 calls `__nw__GUi` with a0=0x4c, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0x10025830 calls `__ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv` with a0=ret(__nw__GUi), a1=[a0+16], a2=0x100944c0, a3=0x0, a4=0x0.
  The `jalr` at 0x10025884 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+212], a1=0x100944d8, a2=sym(yLockedCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100258b8 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+212], a1=0x100944e8, a2=sym(yPixelCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100258d8 calls `__nw__GUi` with a0=0x4c, a1=unknown, a2=a0 at entry (arg0), a3=unknown.
  The `jalr` at 0x10025920 calls `__ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv` with a0=ret(__nw__GUi), a1=[a0+16], a2=0x100944f8, a3=0x0, a4=0x0.
  The `jalr` at 0x10025974 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+208], a1=0x10094510, a2=sym(xLockedCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100259a8 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+208], a1=0x10094520, a2=sym(xPixelCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100259dc calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+208], a1=0x10094530, a2=sym(xTileCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10025b24 calls `XtVaCreateManagedWidget` with a0=0x10094540, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10025c20 calls `XtVaCreateManagedWidget` with a0=0x10094550, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x4, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x10025c50 calls `XtAddCallback` with a0=[a0+68], a1=sym(_XmStrings)+4683, a2=sym(cursorPriorityCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10025d74 calls `XtVaCreateManagedWidget` with a0=0x10094568, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10025d94 calls `__nw__GUi` with a0=0x4c, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0x10025ddc calls `__ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv` with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10094580, a3=0x0, a4=0x0.
  The `jalr` at 0x10025e30 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+200], a1=0x10094598, a2=sym(rgb10Callback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10025e64 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+200], a1=0x100945a8, a2=sym(rgba10Callback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10025e98 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+200], a1=0x100945b8, a2=sym(rgb12Callback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10025ecc calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+200], a1=0x100945c8, a2=sym(zCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10025f00 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+200], a1=0x100945d8, a2=sym(fsCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10026030 calls `XtVaCreateManagedWidget` with a0=0x100945e8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002615c calls `XtVaCreateManagedWidget` with a0=0x10094600, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x2, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002627c calls `XtVaCreateManagedWidget` with a0=0x10094610, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x2, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x100263b8 calls `XtVaCreateManagedWidget` with a0=0x10094620, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100263e8 calls `XtAddCallback` with a0=[a0+96], a1=sym(_XmStrings)+4683, a2=sym(heightCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10026518 calls `XtVaCreateManagedWidget` with a0=0x10094630, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10026548 calls `XtAddCallback` with a0=[a0+124], a1=sym(_XmStrings)+4683, a2=sym(widthCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10026648 calls `XtVaCreateManagedWidget` with a0=0x10094640, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10026678 calls `XtAddCallback` with a0=[a0+132], a1=sym(_XmStrings)+4683, a2=sym(yOriginCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10026778 calls `XtVaCreateManagedWidget` with a0=0x10094650, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100267a8 calls `XtAddCallback` with a0=[a0+128], a1=sym(_XmStrings)+4683, a2=sym(xOriginCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100268e8 calls `XtVaCreateManagedWidget` with a0=0x10094660, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10026918 calls `XtAddCallback` with a0=[a0+40], a1=sym(_XmStrings)+4683, a2=sym(closeChannelCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10026a40 calls `XtVaCreateManagedWidget` with a0=0x100aa450, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x2, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10026b84 calls `XtVaCreateManagedWidget` with a0=0x10094678, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+4724, a6=0x0, a7=sym(_XmStrings)+7513.
  The `jalr` at 0x10026ba4 calls `baseWidget__10VkMenuItemCGv` with a0=[a0+204], a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0x10026c5c calls `XtVaSetValues` with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x1, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x1, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x10026c84 calls `XtVaSetValues` with a0=[a0+120], a1=sym(_XmStrings)+10305, a2=[a0+156], a3=0x0.
  The `jalr` at 0x10026cac calls `XtVaSetValues` with a0=[a0+52], a1=sym(_XmStrings)+10305, a2=[a0+156], a3=0x0.
  The `jalr` at 0x10026cc0 calls `baseWidget__10VkMenuItemCGv` with a0=[a0+196], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10026da0 calls `XtVaSetValues` with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x1, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x10026dd8 calls `XtVaSetValues` with a0=[a0+32], a1=sym(_XmStrings)+10305, a2=[a0+176], a3=sym(_XmStrings)+7562, a4=[a0+92], a5=0x0.
  The `jalr` at 0x10026e10 calls `XtVaSetValues` with a0=[a0+152], a1=sym(_XmStrings)+10305, a2=[a0+176], a3=sym(_XmStrings)+7562, a4=[a0+104], a5=0x0.
  The `jalr` at 0x10026e48 calls `XtVaSetValues` with a0=[a0+176], a1=sym(_XmStrings)+10305, a2=[a0+156], a3=sym(_XmStrings)+7562, a4=[a0+156], a5=0x0.
  The `jalr` at 0x10026e70 calls `XtVaSetValues` with a0=[a0+56], a1=sym(_XmStrings)+10305, a2=[a0+156], a3=0x0.
  The `jalr` at 0x10026e98 calls `XtVaSetValues` with a0=[a0+92], a1=sym(_XmStrings)+10305, a2=[a0+156], a3=0x0.
  The `jalr` at 0x10026ec0 calls `XtVaSetValues` with a0=[a0+104], a1=sym(_XmStrings)+10305, a2=[a0+156], a3=0x0.
  The `jalr` at 0x10026ee8 calls `XtVaSetValues` with a0=[a0+72], a1=sym(_XmStrings)+10305, a2=[a0+168], a3=0x0.
  The `jalr` at 0x10026efc calls `baseWidget__10VkMenuItemCGv` with a0=[a0+212], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10026f14 calls `baseWidget__10VkMenuItemCGv` with a0=[a0+208], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10027014 calls `XtVaSetValues` with a0=unknown, a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x10027028 calls `baseWidget__10VkMenuItemCGv` with a0=[a0+208], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10027130 calls `XtVaSetValues` with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x10027168 calls `XtVaSetValues` with a0=[a0+68], a1=sym(_XmStrings)+10305, a2=[a0+44], a3=sym(_XmStrings)+7562, a4=[a0+44], a5=0x0.
  The `jalr` at 0x1002717c calls `baseWidget__10VkMenuItemCGv` with a0=[a0+200], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100271a4 calls `XtVaSetValues` with a0=[a0+44], a1=sym(_XmStrings)+7562, a2=ret(baseWidget__10VkMenuItemCGv), a3=0x0.
  The `jalr` at 0x100271b8 calls `baseWidget__10VkMenuItemCGv` with a0=[a0+200], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100272c0 calls `XtVaSetValues` with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x100272e8 calls `XtVaSetValues` with a0=[a0+168], a1=sym(_XmStrings)+10305, a2=[a0+100], a3=0x0.
  The `jalr` at 0x10027320 calls `XtVaSetValues` with a0=[a0+180], a1=sym(_XmStrings)+10305, a2=[a0+100], a3=sym(_XmStrings)+7562, a4=[a0+132], a5=0x0.
  The `jalr` at 0x10027358 calls `XtVaSetValues` with a0=[a0+36], a1=sym(_XmStrings)+10305, a2=[a0+124], a3=sym(_XmStrings)+7562, a4=[a0+124], a5=0x0.
  The `jalr` at 0x10027390 calls `XtVaSetValues` with a0=[a0+132], a1=sym(_XmStrings)+10305, a2=[a0+100], a3=sym(_XmStrings)+7562, a4=[a0+192], a5=0x0.
  The `jalr` at 0x100273c8 calls `XtVaSetValues` with a0=[a0+128], a1=sym(_XmStrings)+10305, a2=[a0+100], a3=sym(_XmStrings)+7562, a4=[a0+100], a5=0x0.
  The `jalr` at 0x100273f0 calls `XtVaSetValues` with a0=[a0+192], a1=sym(_XmStrings)+10305, a2=[a0+100], a3=0x0.
  The `jalr` at 0x10027414 calls `XtAddCallback` with a0=[a0+56], a1=sym(_XmStrings)+7765, a2=sym(bGammaCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10027438 calls `XtAddCallback` with a0=[a0+92], a1=sym(_XmStrings)+7765, a2=sym(gGammaCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002745c calls `XtAddCallback` with a0=[a0+104], a1=sym(_XmStrings)+7765, a2=sym(rGammaCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10027480 calls `XtAddCallback` with a0=[a0+68], a1=sym(_XmStrings)+7765, a2=sym(cursorPriorityCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100274a4 calls `XtAddCallback` with a0=[a0+96], a1=sym(_XmStrings)+7765, a2=sym(heightCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100274c8 calls `XtAddCallback` with a0=[a0+124], a1=sym(_XmStrings)+7765, a2=sym(widthCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100274ec calls `XtAddCallback` with a0=[a0+132], a1=sym(_XmStrings)+7765, a2=sym(yOriginCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10027510 calls `XtAddCallback` with a0=[a0+128], a1=sym(_XmStrings)+7765, a2=sym(xOriginCallback__9DvpFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The return at 0x10027524 has v0 = ret(XtAddCallback).
- `className__9DvpFormUIGv` in `usr/gfx/ircombine` at 0x10027540 (n32).
  It occupies 64 bytes.
  The `lw` at 0x10027558 loads 4 bytes from abs 0x100a90d4.
  The return at 0x10027578 has v0 = 0x10094688.
- `alphaChannel__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027580 (n32).
  It occupies 44 bytes.
  The return at 0x100275a4 has v0 = unknown.
- `bGamma__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100275b0 (n32).
  It occupies 44 bytes.
  The return at 0x100275d4 has v0 = unknown.
- `channelBrowse__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100275e0 (n32).
  It occupies 44 bytes.
  The return at 0x10027604 has v0 = unknown.
- `channelEnable__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027610 (n32).
  It occupies 44 bytes.
  The return at 0x10027634 has v0 = unknown.
- `closeChannel__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027640 (n32).
  It occupies 44 bytes.
  The return at 0x10027664 has v0 = unknown.
- `compositeSync__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027670 (n32).
  It occupies 44 bytes.
  The return at 0x10027694 has v0 = unknown.
- `cursorPriority__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100276a0 (n32).
  It occupies 44 bytes.
  The return at 0x100276c4 has v0 = unknown.
- `dither__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100276d0 (n32).
  It occupies 44 bytes.
  The return at 0x100276f4 has v0 = unknown.
- `format__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027700 (n32).
  It occupies 44 bytes.
  The return at 0x10027724 has v0 = unknown.
- `fs__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027730 (n32).
  It occupies 44 bytes.
  The return at 0x10027754 has v0 = unknown.
- `gGamma__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027760 (n32).
  It occupies 44 bytes.
  The return at 0x10027784 has v0 = unknown.
- `height__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027790 (n32).
  It occupies 44 bytes.
  The return at 0x100277b4 has v0 = unknown.
- `horizontalSync__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100277c0 (n32).
  It occupies 44 bytes.
  The return at 0x100277e4 has v0 = unknown.
- `interleaved__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100277f0 (n32).
  It occupies 44 bytes.
  The return at 0x10027814 has v0 = unknown.
- `progressive__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027820 (n32).
  It occupies 44 bytes.
  The return at 0x10027844 has v0 = unknown.
- `rGamma__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027850 (n32).
  It occupies 44 bytes.
  The return at 0x10027874 has v0 = unknown.
- `restoreSize__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027880 (n32).
  It occupies 44 bytes.
  The return at 0x100278a4 has v0 = unknown.
- `rgb10__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100278b0 (n32).
  It occupies 44 bytes.
  The return at 0x100278d4 has v0 = unknown.
- `rgb12__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100278e0 (n32).
  It occupies 44 bytes.
  The return at 0x10027904 has v0 = unknown.
- `rgba10__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027910 (n32).
  It occupies 44 bytes.
  The return at 0x10027934 has v0 = unknown.
- `stacked__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027940 (n32).
  It occupies 44 bytes.
  The return at 0x10027964 has v0 = unknown.
- `useGamma__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027970 (n32).
  It occupies 44 bytes.
  The return at 0x10027994 has v0 = unknown.
- `width__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100279a0 (n32).
  It occupies 44 bytes.
  The return at 0x100279c4 has v0 = unknown.
- `xLocked__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100279d0 (n32).
  It occupies 44 bytes.
  The return at 0x100279f4 has v0 = unknown.
- `xOrigin__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027a00 (n32).
  It occupies 44 bytes.
  The return at 0x10027a24 has v0 = unknown.
- `xPixel__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027a30 (n32).
  It occupies 44 bytes.
  The return at 0x10027a54 has v0 = unknown.
- `xTile__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027a60 (n32).
  It occupies 44 bytes.
  The return at 0x10027a84 has v0 = unknown.
- `yLocked__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027a90 (n32).
  It occupies 44 bytes.
  The return at 0x10027ab4 has v0 = unknown.
- `yOrigin__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027ac0 (n32).
  It occupies 44 bytes.
  The return at 0x10027ae4 has v0 = unknown.
- `yPixel__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027af0 (n32).
  It occupies 44 bytes.
  The return at 0x10027b14 has v0 = unknown.
- `z__9DvpFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10027b20 (n32).
  It occupies 44 bytes.
  The return at 0x10027b44 has v0 = unknown.
- `alphaChannelCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10027b50 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10027b80 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10027b84 loads 4 bytes from [a1+8] +0x9c.
  The `lw` at 0x10027b9c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10027ba0 loads 4 bytes from [a1+8] +0xa4.
  The `jalr` at 0x10027ba4 calls `(unknown callee)` with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x89520.
  The return at 0x10027bc0 has v0 = ret(unknown).
- `bGammaCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10027bd0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10027c00 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10027c04 loads 4 bytes from [a1+8] +0xa8.
  The `lw` at 0x10027c1c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10027c20 loads 4 bytes from [a1+8] +0xb0.
  The `jalr` at 0x10027c24 calls `(unknown callee)` with a0=([[a1+8]+168] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x894a0.
  The return at 0x10027c40 has v0 = ret(unknown).
- `channelBrowseCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10027c50 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10027c80 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10027c84 loads 4 bytes from [a1+8] +0xb4.
  The `lw` at 0x10027c9c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10027ca0 loads 4 bytes from [a1+8] +0xbc.
  The `jalr` at 0x10027ca4 calls `(unknown callee)` with a0=([[a1+8]+180] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x89420.
  The return at 0x10027cc0 has v0 = ret(unknown).
- `channelEnableCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10027cd0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10027d00 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10027d04 loads 4 bytes from [a1+8] +0xc0.
  The `lw` at 0x10027d1c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10027d20 loads 4 bytes from [a1+8] +0xc8.
  The `jalr` at 0x10027d24 calls `(unknown callee)` with a0=([[a1+8]+192] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x893a0.
  The return at 0x10027d40 has v0 = ret(unknown).
- `closeChannelCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10027d50 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10027d80 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10027d84 loads 4 bytes from [a1+8] +0xcc.
  The `lw` at 0x10027d9c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10027da0 loads 4 bytes from [a1+8] +0xd4.
  The `jalr` at 0x10027da4 calls `(unknown callee)` with a0=([[a1+8]+204] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x89320.
  The return at 0x10027dc0 has v0 = ret(unknown).
- `compositeSyncCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10027dd0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10027e00 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10027e04 loads 4 bytes from [a1+8] +0xd8.
  The `lw` at 0x10027e1c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10027e20 loads 4 bytes from [a1+8] +0xe0.
  The `jalr` at 0x10027e24 calls `(unknown callee)` with a0=([[a1+8]+216] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x892a0.
  The return at 0x10027e40 has v0 = ret(unknown).
- `cursorPriorityCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10027e50 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10027e80 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10027e84 loads 4 bytes from [a1+8] +0xe4.
  The `lw` at 0x10027e9c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10027ea0 loads 4 bytes from [a1+8] +0xec.
  The `jalr` at 0x10027ea4 calls `(unknown callee)` with a0=([[a1+8]+228] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x89220.
  The return at 0x10027ec0 has v0 = ret(unknown).
- `ditherCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10027ed0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10027f00 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10027f04 loads 4 bytes from [a1+8] +0xf0.
  The `lw` at 0x10027f1c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10027f20 loads 4 bytes from [a1+8] +0xf8.
  The `jalr` at 0x10027f24 calls `(unknown callee)` with a0=([[a1+8]+240] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x891a0.
  The return at 0x10027f40 has v0 = ret(unknown).
- `formatCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10027f50 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10027f80 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10027f84 loads 4 bytes from [a1+8] +0xfc.
  The `lw` at 0x10027f9c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10027fa0 loads 4 bytes from [a1+8] +0x104.
  The `jalr` at 0x10027fa4 calls `(unknown callee)` with a0=([[a1+8]+252] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x89120.
  The return at 0x10027fc0 has v0 = ret(unknown).
- `fsCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10027fd0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10028000 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028004 loads 4 bytes from [a1+8] +0x108.
  The `lw` at 0x1002801c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028020 loads 4 bytes from [a1+8] +0x110.
  The `jalr` at 0x10028024 calls `(unknown callee)` with a0=([[a1+8]+264] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x890a0.
  The return at 0x10028040 has v0 = ret(unknown).
- `gGammaCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10028050 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10028080 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028084 loads 4 bytes from [a1+8] +0x114.
  The `lw` at 0x1002809c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100280a0 loads 4 bytes from [a1+8] +0x11c.
  The `jalr` at 0x100280a4 calls `(unknown callee)` with a0=([[a1+8]+276] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x89020.
  The return at 0x100280c0 has v0 = ret(unknown).
- `heightCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100280d0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10028100 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028104 loads 4 bytes from [a1+8] +0x120.
  The `lw` at 0x1002811c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028120 loads 4 bytes from [a1+8] +0x128.
  The `jalr` at 0x10028124 calls `(unknown callee)` with a0=([[a1+8]+288] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88fa0.
  The return at 0x10028140 has v0 = ret(unknown).
- `horizontalSyncCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10028150 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10028180 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028184 loads 4 bytes from [a1+8] +0x12c.
  The `lw` at 0x1002819c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100281a0 loads 4 bytes from [a1+8] +0x134.
  The `jalr` at 0x100281a4 calls `(unknown callee)` with a0=([[a1+8]+300] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88f20.
  The return at 0x100281c0 has v0 = ret(unknown).
- `interleavedCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100281d0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10028200 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028204 loads 4 bytes from [a1+8] +0x138.
  The `lw` at 0x1002821c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028220 loads 4 bytes from [a1+8] +0x140.
  The `jalr` at 0x10028224 calls `(unknown callee)` with a0=([[a1+8]+312] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88ea0.
  The return at 0x10028240 has v0 = ret(unknown).
- `progressiveCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10028250 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10028280 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028284 loads 4 bytes from [a1+8] +0x144.
  The `lw` at 0x1002829c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100282a0 loads 4 bytes from [a1+8] +0x14c.
  The `jalr` at 0x100282a4 calls `(unknown callee)` with a0=([[a1+8]+324] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88e20.
  The return at 0x100282c0 has v0 = ret(unknown).
- `rGammaCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100282d0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10028300 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028304 loads 4 bytes from [a1+8] +0x150.
  The `lw` at 0x1002831c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028320 loads 4 bytes from [a1+8] +0x158.
  The `jalr` at 0x10028324 calls `(unknown callee)` with a0=([[a1+8]+336] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88da0.
  The return at 0x10028340 has v0 = ret(unknown).
- `restoreSizeCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10028350 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10028380 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028384 loads 4 bytes from [a1+8] +0x15c.
  The `lw` at 0x1002839c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100283a0 loads 4 bytes from [a1+8] +0x164.
  The `jalr` at 0x100283a4 calls `(unknown callee)` with a0=([[a1+8]+348] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88d20.
  The return at 0x100283c0 has v0 = ret(unknown).
- `rgb10Callback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100283d0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10028400 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028404 loads 4 bytes from [a1+8] +0x168.
  The `lw` at 0x1002841c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028420 loads 4 bytes from [a1+8] +0x170.
  The `jalr` at 0x10028424 calls `(unknown callee)` with a0=([[a1+8]+360] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88ca0.
  The return at 0x10028440 has v0 = ret(unknown).
- `rgb12Callback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10028450 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10028480 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028484 loads 4 bytes from [a1+8] +0x174.
  The `lw` at 0x1002849c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100284a0 loads 4 bytes from [a1+8] +0x17c.
  The `jalr` at 0x100284a4 calls `(unknown callee)` with a0=([[a1+8]+372] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88c20.
  The return at 0x100284c0 has v0 = ret(unknown).
- `rgba10Callback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100284d0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10028500 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028504 loads 4 bytes from [a1+8] +0x180.
  The `lw` at 0x1002851c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028520 loads 4 bytes from [a1+8] +0x188.
  The `jalr` at 0x10028524 calls `(unknown callee)` with a0=([[a1+8]+384] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88ba0.
  The return at 0x10028540 has v0 = ret(unknown).
- `stackedCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10028550 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10028580 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028584 loads 4 bytes from [a1+8] +0x18c.
  The `lw` at 0x1002859c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100285a0 loads 4 bytes from [a1+8] +0x194.
  The `jalr` at 0x100285a4 calls `(unknown callee)` with a0=([[a1+8]+396] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88b20.
  The return at 0x100285c0 has v0 = ret(unknown).
- `useGammaCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100285d0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10028600 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028604 loads 4 bytes from [a1+8] +0x198.
  The `lw` at 0x1002861c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028620 loads 4 bytes from [a1+8] +0x1a0.
  The `jalr` at 0x10028624 calls `(unknown callee)` with a0=([[a1+8]+408] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88aa0.
  The return at 0x10028640 has v0 = ret(unknown).
- `widthCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10028650 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10028680 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028684 loads 4 bytes from [a1+8] +0x1a4.
  The `lw` at 0x1002869c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100286a0 loads 4 bytes from [a1+8] +0x1ac.
  The `jalr` at 0x100286a4 calls `(unknown callee)` with a0=([[a1+8]+420] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88a20.
  The return at 0x100286c0 has v0 = ret(unknown).
- `xLockedCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100286d0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10028700 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028704 loads 4 bytes from [a1+8] +0x1b0.
  The `lw` at 0x1002871c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028720 loads 4 bytes from [a1+8] +0x1b8.
  The `jalr` at 0x10028724 calls `(unknown callee)` with a0=([[a1+8]+432] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x889a0.
  The return at 0x10028740 has v0 = ret(unknown).
- `xOriginCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10028750 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10028780 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028784 loads 4 bytes from [a1+8] +0x1bc.
  The `lw` at 0x1002879c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100287a0 loads 4 bytes from [a1+8] +0x1c4.
  The `jalr` at 0x100287a4 calls `(unknown callee)` with a0=([[a1+8]+444] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88920.
  The return at 0x100287c0 has v0 = ret(unknown).
- `xPixelCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100287d0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10028800 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028804 loads 4 bytes from [a1+8] +0x1c8.
  The `lw` at 0x1002881c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028820 loads 4 bytes from [a1+8] +0x1d0.
  The `jalr` at 0x10028824 calls `(unknown callee)` with a0=([[a1+8]+456] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x888a0.
  The return at 0x10028840 has v0 = ret(unknown).
- `xTileCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10028850 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10028880 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028884 loads 4 bytes from [a1+8] +0x1d4.
  The `lw` at 0x1002889c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100288a0 loads 4 bytes from [a1+8] +0x1dc.
  The `jalr` at 0x100288a4 calls `(unknown callee)` with a0=([[a1+8]+468] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88820.
  The return at 0x100288c0 has v0 = ret(unknown).
- `yLockedCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100288d0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10028900 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028904 loads 4 bytes from [a1+8] +0x1e0.
  The `lw` at 0x1002891c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028920 loads 4 bytes from [a1+8] +0x1e8.
  The `jalr` at 0x10028924 calls `(unknown callee)` with a0=([[a1+8]+480] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x887a0.
  The return at 0x10028940 has v0 = ret(unknown).
- `yOriginCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10028950 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10028980 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028984 loads 4 bytes from [a1+8] +0x1ec.
  The `lw` at 0x1002899c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100289a0 loads 4 bytes from [a1+8] +0x1f4.
  The `jalr` at 0x100289a4 calls `(unknown callee)` with a0=([[a1+8]+492] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88720.
  The return at 0x100289c0 has v0 = ret(unknown).
- `yPixelCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100289d0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10028a00 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028a04 loads 4 bytes from [a1+8] +0x1f8.
  The `lw` at 0x10028a1c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028a20 loads 4 bytes from [a1+8] +0x200.
  The `jalr` at 0x10028a24 calls `(unknown callee)` with a0=([[a1+8]+504] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x886a0.
  The return at 0x10028a40 has v0 = ret(unknown).
- `zCallback__9DvpFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10028a50 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10028a80 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028a84 loads 4 bytes from [a1+8] +0x204.
  The `lw` at 0x10028a9c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10028aa0 loads 4 bytes from [a1+8] +0x20c.
  The `jalr` at 0x10028aa4 calls `(unknown callee)` with a0=([[a1+8]+516] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x88620.
  The return at 0x10028ac0 has v0 = ret(unknown).
- `__ct__11EncoderFormGPCcP10_WidgetRec` in `usr/gfx/ircombine` at 0x10028b00 (n32).
  It occupies 132 bytes.
  The `lw` at 0x10028b30 loads 4 bytes from abs 0x100a96e0.
  The `lw` at 0x10028b3c loads 4 bytes from abs 0x100a9e2c.
  The `sw` at 0x10028b44 stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__11EncoderForm)).
  The `lw` at 0x10028b48 loads 4 bytes from abs 0x100a9ee8.
  The `sw` at 0x10028b54 stores 4 bytes to a0 (arg0 at entry) +0x1d0 (value sym(combination)+22484).
  The `jal` at 0x10028b34 calls `__ct__13EncoderFormUIGPCcP10_WidgetRec` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10028b68 has v0 = a0.
- `__ct__11EncoderFormGPCc` in `usr/gfx/ircombine` at 0x10028b90 (n32).
  It occupies 124 bytes.
  The `lw` at 0x10028bb8 loads 4 bytes from abs 0x100a96e4.
  The `lw` at 0x10028bc4 loads 4 bytes from abs 0x100a9e2c.
  The `sw` at 0x10028bcc stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__11EncoderForm)).
  The `lw` at 0x10028bd0 loads 4 bytes from abs 0x100a9ee8.
  The `sw` at 0x10028bdc stores 4 bytes to a0 (arg0 at entry) +0x1d0 (value sym(combination)+22484).
  The `jal` at 0x10028bbc calls `__ct__13EncoderFormUIGPCc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10028bf0 has v0 = a0.
- `__dt__11EncoderFormGv` in `usr/gfx/ircombine` at 0x10028c10 (n32).
  It occupies 148 bytes.
  The `lw` at 0x10028c3c loads 4 bytes from abs 0x100a9e2c.
  The `sw` at 0x10028c44 stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__11EncoderForm)).
  The `lw` at 0x10028c50 loads 4 bytes from abs 0x100a96e8.
  The `lw` at 0x10028c70 loads 4 bytes from abs 0x100a9250.
  The `beq` branch at 0x10028c34 targets 0x10028c7c, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x10028c64 targets 0x10028c7c, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The `jal` at 0x10028c54 calls `__dt__13EncoderFormUIGv` with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10028c74 calls `__dl__GPv` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The return at 0x10028c88 has v0 = unknown.
- `className__11EncoderFormGv` in `usr/gfx/ircombine` at 0x10028cb0 (n32).
  It occupies 64 bytes.
  The `lw` at 0x10028cc8 loads 4 bytes from abs 0x100a90d4.
  The return at 0x10028ce8 has v0 = 0x10094fc8.
- `CreateEncoderForm__11EncoderFormSGPCcP10_WidgetRec` in `usr/gfx/ircombine` at 0x10028cf0 (n32).
  It occupies 188 bytes.
  The `lw` at 0x10028d18 loads 4 bytes from abs 0x100a92fc.
  The `lw` at 0x10028d44 loads 4 bytes from abs 0x100a96d0.
  The `beq` branch at 0x10028d28 targets 0x10028d64, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `jalr` at 0x10028d1c calls `__nw__GUi` with a0=0x1d4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10028d48 calls `__ct__11EncoderFormGPCcP10_WidgetRec` with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=unknown.
  The return at 0x10028d90 has v0 = unknown.
- `update__11EncoderFormGv` in `usr/gfx/ircombine` at 0x10028df0 (n32).
  It occupies 2300 bytes.
  The `lw` at 0x10028e10 loads 4 bytes from abs 0x100a96dc.
  The `lw` at 0x10028e20 loads 4 bytes from a0 (arg0 at entry) +0xd0.
  21 such accesses, including `lw` at 0x10028e24, 0x10028e90, 0x10028ebc, loads 4 bytes from abs 0x100a9dd0.
  22 such accesses, including `lw` at 0x10028e3c, 0x10028ed4, 0x10028ef4, loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `lw` at 0x10028e40 loads 4 bytes from [a0+464] +0x25c.
  10 such accesses, including `lw` at 0x10028e44, 0x10028edc, 0x10029144, loads 4 bytes from abs 0x100a9de8.
  6 such accesses, including `lw` at 0x10028e5c, 0x10029058, 0x1002915c, loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `lw` at 0x10028e60 loads 4 bytes from [a0+464] +0x258.
  4 such accesses, including `lw` at 0x10028e7c, 0x1002916c, 0x100291dc, loads 4 bytes from abs 0x100a9314.
  The `lw` at 0x10028e8c loads 4 bytes from a0 (arg0 at entry) +0x8c.
  4 such accesses, including `lw` at 0x10028ea8, 0x10029198, 0x10029208, loads 4 bytes from abs 0x100a9df0.
  The `lw` at 0x10028eb8 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lw` at 0x10028ed8 loads 4 bytes from [a0+464] +0x140.
  The `lw` at 0x10028eec loads 4 bytes from a0 (arg0 at entry) +0xfc.
  The `lw` at 0x10028ef8 loads 4 bytes from [a0+464] +0x134.
  5 such accesses, including `lw` at 0x10028efc, 0x10028f1c, 0x10028f3c, loads 4 bytes from abs 0x100a9338.
  The `lw` at 0x10028f0c loads 4 bytes from a0 (arg0 at entry) +0x104.
  The `lw` at 0x10028f18 loads 4 bytes from [a0+464] +0x148.
  The `lw` at 0x10028f2c loads 4 bytes from a0 (arg0 at entry) +0x108.
  The `lw` at 0x10028f38 loads 4 bytes from [a0+464] +0x14c.
  3 such accesses, including `lw` at 0x10028f4c, 0x10029018, 0x100290f4, loads 4 bytes from a0 (arg0 at entry) +0xf8.
  The `lw` at 0x10028f58 loads 4 bytes from [a0+464] +0x2ac.
  The `lw` at 0x10028f70 loads 4 bytes from [a0+464] +0x104.
  2 such accesses, including `lw` at 0x10028f84, 0x1002904c, loads 4 bytes from a0 (arg0 at entry) +0x100.
  The `lw` at 0x10028f8c loads 4 bytes from a0 (arg0 at entry) +0x11c.
  The `lw` at 0x10028f90 loads 4 bytes from abs 0x100a937c.
  3 such accesses, including `lw` at 0x10028fa0, 0x1002907c, 0x10029580, loads 4 bytes from a0 (arg0 at entry) +0x44.
  16 such accesses, including `lw` at 0x10028fa8, 0x10028fc0, 0x10028fd8, loads 4 bytes from abs 0x100a9340.
  3 such accesses, including `lw` at 0x10028fb8, 0x10029094, 0x1002954c, loads 4 bytes from a0 (arg0 at entry) +0x48.
  3 such accesses, including `lw` at 0x10028fd0, 0x100290ac, 0x10029448, loads 4 bytes from a0 (arg0 at entry) +0xd8.
  3 such accesses, including `lw` at 0x10028fe8, 0x100290c4, 0x1002947c, loads 4 bytes from a0 (arg0 at entry) +0xe4.
  3 such accesses, including `lw` at 0x10029000, 0x100290dc, 0x10029518, loads 4 bytes from a0 (arg0 at entry) +0x4c.
  2 such accesses, including `lw` at 0x1002901c, 0x100290f8, loads 4 bytes from abs 0x100a933c.
  The `lw` at 0x1002905c loads 4 bytes from [a0+464] +0x104.
  The `lw` at 0x10029068 loads 4 bytes from (a0 + ([[a0+464]+260] << 0x2)) +0x18c.
  The `lw` at 0x10029120 loads 4 bytes from a0 (arg0 at entry) +0x5c.
  The `lw` at 0x10029140 loads 4 bytes from [a0+464] +0x4e0.
  The `lw` at 0x1002917c loads 4 bytes from a0 (arg0 at entry) +0x70.
  3 such accesses, including `lw` at 0x100291b0, 0x10029230, 0x100294d4, loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `lw` at 0x100291b4 loads 4 bytes from [a0+464] +0x484.
  The `lw` at 0x100291ec loads 4 bytes from a0 (arg0 at entry) +0xc4.
  The `lw` at 0x10029218 loads 4 bytes from abs 0x100a90d4.
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
  2 such accesses, including `lw` at 0x10029344, 0x100296a4, loads 4 bytes from a0 (arg0 at entry) +0x28.
  7 such accesses, including `lw` at 0x10029368, 0x1002939c, 0x100293d0, loads 4 bytes from abs 0x100a9dec.
  2 such accesses, including `lw` at 0x10029378, 0x1002968c, loads 4 bytes from a0 (arg0 at entry) +0x78.
  2 such accesses, including `lw` at 0x100293ac, 0x10029674, loads 4 bytes from a0 (arg0 at entry) +0xac.
  2 such accesses, including `lw` at 0x100293e0, 0x100296bc, loads 4 bytes from a0 (arg0 at entry) +0xc8.
  The `lw` at 0x10029400 loads 4 bytes from [a0+464] +0x2c0.
  The `lw` at 0x10029414 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `lw` at 0x100294e8 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `lw` at 0x1002950c loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `lw` at 0x1002956c loads 4 bytes from [a0+464] +0x280.
  The `lw` at 0x100295a0 loads 4 bytes from [a0+464] +0x27c.
  3 such accesses, including `lw` at 0x100295b0, 0x100295c0, 0x100295f0, loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x100295b4 loads 4 bytes from sym(vkwindow) +0x0.
  2 such accesses, including `lw` at 0x100295c4, 0x100295f4, loads 4 bytes from sym(vkwindow) +0x0.
  2 such accesses, including `lw` at 0x100295c8, 0x100295f8, loads 4 bytes from abs 0x100a9c40.
  The `lw` at 0x100295e0 loads 4 bytes from abs 0x100a9ee8.
  The `lw` at 0x100295e4 loads 4 bytes from sym(combination) +0x238.
  The `lw` at 0x10029608 loads 4 bytes from ret(getTarget__18VkwindowMainWindowGv) +0x10.
  The `lw` at 0x10029644 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `lw` at 0x10029648 loads 4 bytes from [a0+464] +0x2c0.
  The `bne` branch at 0x10028f78 targets 0x10029048, is taken when a1(=[[a0+464]+260]) != a2(=0x8), and falls through when a1(=[[a0+464]+260]) == a2(=0x8).
  The `bc1f` branch at 0x100294c4 targets 0x100294e4, is taken when not (f3(=[[a0+464]+644]) < f4(=0x42480000) (c.lt.s at 0x100294bc)), and falls through when f3(=[[a0+464]+644]) < f4(=0x42480000) (c.lt.s at 0x100294bc).
  The `bc1f` branch at 0x100294fc targets 0x10029514, is taken when not (f6(=0x42c80000) < f7(=[[a0+464]+644]) (c.lt.s at 0x100294f4)), and falls through when f6(=0x42c80000) < f7(=[[a0+464]+644]) (c.lt.s at 0x100294f4).
  The `beq` branch at 0x100295b8 targets 0x100296d0, is taken when a2(=[sym(vkwindow)]) == 0, and falls through when a2(=[sym(vkwindow)]) != 0.
  The `beq` branch at 0x100295d8 targets 0x100296d0, is taken when v0(=ret(getTarget__18VkwindowMainWindowGv)) == 0, and falls through when v0(=ret(getTarget__18VkwindowMainWindowGv)) != 0.
  The `bne` branch at 0x100295e8 targets 0x10029628, is taken when a1(=[sym(combination)+568]) != 0, and falls through when a1(=[sym(combination)+568]) == 0.
  The `beq` branch at 0x10029610 targets 0x10029628, is taken when a1(=[ret(getTarget__18VkwindowMainWindowGv)+16]) == a2(=0x2), and falls through when a1(=[ret(getTarget__18VkwindowMainWindowGv)+16]) != a2(=0x2).
  The `beq` branch at 0x10029638 targets 0x10029664, is taken when a4(=one of 0x0, 0x1) == 0, and falls through when a4(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1002964c targets 0x10029664, is taken when a6(=[[a0+464]+704]) == 0, and falls through when a6(=[[a0+464]+704]) != 0.
  The `jal` at 0x10028e14 calls `update_fast__11EncoderFormGv` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10028e28 calls `EZ__GP10_WidgetRec` with a0=[a0+208], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10028e48 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+604], a2=unknown, a3=unknown.
  The `jalr` at 0x10028e80 calls `sprintf` with a0=sp-208, a1=0x100aa458, a2=unknown, a3=unknown.
  The `jal` at 0x10028e94 calls `EZ__GP10_WidgetRec` with a0=[a0+140], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10028eac calls `__as__9EZWrapperGPCc` with a0=ret(EZ__GP10_WidgetRec), a1=sp-208, a2=unknown, a3=unknown.
  The `jal` at 0x10028ec0 calls `EZ__GP10_WidgetRec` with a0=[a0+60], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10028ee0 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+320], a2=unknown, a3=unknown.
  The `jalr` at 0x10028f00 calls `set__12VkOptionMenuGi` with a0=[a0+252], a1=[[a0+464]+308], a2=unknown, a3=unknown.
  The `jalr` at 0x10028f20 calls `set__12VkOptionMenuGi` with a0=[a0+260], a1=[[a0+464]+328], a2=unknown, a3=unknown.
  The `jalr` at 0x10028f40 calls `set__12VkOptionMenuGi` with a0=[a0+264], a1=[[a0+464]+332], a2=unknown, a3=unknown.
  The `jalr` at 0x10028f60 calls `set__12VkOptionMenuGi` with a0=[a0+248], a1=[[a0+464]+684], a2=unknown, a3=unknown.
  The `jalr` at 0x10028f94 calls `set__12VkOptionMenuGP10VkMenuItem` with a0=[a0+256], a1=[a0+284], a2=0x8, a3=unknown.
  The `jalr` at 0x10028fac calls `XtSetSensitive` with a0=[a0+68], a1=0x0, a2=unknown, a3=unknown.
  The `jalr` at 0x10028fc4 calls `XtSetSensitive` with a0=[a0+72], a1=0x0, a2=unknown, a3=unknown.
  The `jalr` at 0x10028fdc calls `XtSetSensitive` with a0=[a0+216], a1=0x0, a2=unknown, a3=unknown.
  The `jalr` at 0x10028ff4 calls `XtSetSensitive` with a0=[a0+228], a1=0x0, a2=unknown, a3=unknown.
  The `jalr` at 0x1002900c calls `XtSetSensitive` with a0=[a0+76], a1=0x0, a2=unknown, a3=unknown.
  The `jalr` at 0x10029020 calls `baseWidget__10VkMenuItemCGv` with a0=[a0+248], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10029038 calls `XtSetSensitive` with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x1, a2=unknown, a3=unknown.
  The `jalr` at 0x10029070 calls `set__12VkOptionMenuGi` with a0=[a0+256], a1=[(a0 + ([[a0+464]+260] << 0x2))+396], a2=([[a0+464]+260] << 0x2), a3=unknown.
  The `jalr` at 0x10029088 calls `XtSetSensitive` with a0=[a0+68], a1=0x1, a2=unknown, a3=unknown.
  The `jalr` at 0x100290a0 calls `XtSetSensitive` with a0=[a0+72], a1=0x1, a2=unknown, a3=unknown.
  The `jalr` at 0x100290b8 calls `XtSetSensitive` with a0=[a0+216], a1=0x1, a2=unknown, a3=unknown.
  The `jalr` at 0x100290d0 calls `XtSetSensitive` with a0=[a0+228], a1=0x1, a2=unknown, a3=unknown.
  The `jalr` at 0x100290e8 calls `XtSetSensitive` with a0=[a0+76], a1=0x1, a2=unknown, a3=unknown.
  The `jalr` at 0x100290fc calls `baseWidget__10VkMenuItemCGv` with a0=[a0+248], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10029114 calls `XtSetSensitive` with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x0, a2=unknown, a3=unknown.
  The `jal` at 0x10029128 calls `EZ__GP10_WidgetRec` with a0=[a0+92], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10029148 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+1248], a2=unknown, a3=unknown.
  The `jalr` at 0x10029170 calls `sprintf` with a0=sp-144, a1=0x100aa460, a2=unknown, a3=unknown.
  The `jal` at 0x10029184 calls `EZ__GP10_WidgetRec` with a0=[a0+112], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1002919c calls `__as__9EZWrapperGPCc` with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=unknown, a3=unknown.
  The `jalr` at 0x100291e0 calls `sprintf` with a0=sp-144, a1=0x100aa460, a2=unknown, a3=[[a0+464]+1156].
  The `jal` at 0x100291f4 calls `EZ__GP10_WidgetRec` with a0=[a0+196], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1002920c calls `__as__9EZWrapperGPCc` with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=unknown, a3=unknown.
  The `jalr` at 0x1002923c calls `sprintf` with a0=sp-144, a1=0x10094fd8, a2=[[a0+464]+296], a3=[[a0+464]+300].
  The `jal` at 0x10029250 calls `EZ__GP10_WidgetRec` with a0=[a0+156], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10029268 calls `__as__9EZWrapperGPCc` with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=unknown, a3=unknown.
  The `jal` at 0x1002927c calls `EZ__GP10_WidgetRec` with a0=[a0+180], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1002929c calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+648], a2=unknown, a3=unknown.
  The `jal` at 0x100292b0 calls `EZ__GP10_WidgetRec` with a0=[a0+64], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x100292d0 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+324], a2=unknown, a3=unknown.
  The `jal` at 0x100292e4 calls `EZ__GP10_WidgetRec` with a0=[a0+32], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10029304 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+316], a2=unknown, a3=unknown.
  The `jal` at 0x10029318 calls `EZ__GP10_WidgetRec` with a0=[a0+48], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10029338 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+676], a2=unknown, a3=unknown.
  The `jal` at 0x1002934c calls `EZ__GP10_WidgetRec` with a0=[a0+40], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1002936c calls `__as__9EZWrapperGf` with a0=ret(EZ__GP10_WidgetRec), a1=[a0+464], a2=unknown, a3=unknown; fp f13=[[a0+464]+624].
  The `jal` at 0x10029380 calls `EZ__GP10_WidgetRec` with a0=[a0+120], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x100293a0 calls `__as__9EZWrapperGf` with a0=ret(EZ__GP10_WidgetRec), a1=[a0+464], a2=unknown, a3=unknown; fp f13=[[a0+464]+620].
  The `jal` at 0x100293b4 calls `EZ__GP10_WidgetRec` with a0=[a0+172], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x100293d4 calls `__as__9EZWrapperGf` with a0=ret(EZ__GP10_WidgetRec), a1=[a0+464], a2=unknown, a3=unknown; fp f13=[[a0+464]+616].
  The `jal` at 0x100293e8 calls `EZ__GP10_WidgetRec` with a0=[a0+200], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10029408 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+704], a2=unknown, a3=unknown.
  The `jal` at 0x1002941c calls `EZ__GP10_WidgetRec` with a0=[a0+128], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1002943c calls `__as__9EZWrapperGf` with a0=ret(EZ__GP10_WidgetRec), a1=[a0+464], a2=unknown, a3=unknown; fp f13=[[a0+464]+612].
  The `jal` at 0x10029450 calls `EZ__GP10_WidgetRec` with a0=[a0+216], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10029470 calls `__as__9EZWrapperGf` with a0=ret(EZ__GP10_WidgetRec), a1=[a0+464], a2=unknown, a3=unknown; fp f13=[[a0+464]+628].
  The `jal` at 0x10029484 calls `EZ__GP10_WidgetRec` with a0=[a0+228], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x100294a4 calls `__as__9EZWrapperGf` with a0=ret(EZ__GP10_WidgetRec), a1=[a0+464], a2=unknown, a3=unknown; fp f13=[[a0+464]+632].
  The `jal` at 0x10029520 calls `EZ__GP10_WidgetRec` with a0=[a0+76], a1=unknown, a2=[a0+464], a3=unknown.
  The `jal` at 0x10029540 calls `__as__9EZWrapperGf` with a0=ret(EZ__GP10_WidgetRec), a1=[a0+464], a2=unknown, a3=unknown; fp f13=[[a0+464]+644].
  The `jal` at 0x10029554 calls `EZ__GP10_WidgetRec` with a0=[a0+72], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10029574 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+640], a2=unknown, a3=unknown.
  The `jal` at 0x10029588 calls `EZ__GP10_WidgetRec` with a0=[a0+68], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x100295a8 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+636], a2=unknown, a3=unknown.
  The `jal` at 0x100295cc calls `getTarget__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=unknown, a2=[sym(vkwindow)], a3=unknown.
  The `jal` at 0x100295fc calls `getTarget__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[sym(combination)+568], a2=unknown, a3=unknown.
  The `jalr` at 0x10029680 calls `XtSetSensitive` with a0=[a0+172], a1=one of 0x0, 0x1, a2=unknown, a3=unknown, a4=one of 0x0, 0x1, a5=one of 0x0, 0x1.
  The `jalr` at 0x10029698 calls `XtSetSensitive` with a0=[a0+120], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100296b0 calls `XtSetSensitive` with a0=[a0+40], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100296c8 calls `XtSetSensitive` with a0=[a0+200], a1=unknown, a2=unknown, a3=unknown.
  The return at 0x100296e4 has v0 = unknown.
- `update_fast__11EncoderFormGv` in `usr/gfx/ircombine` at 0x100296f0 (n32).
  It occupies 264 bytes.
  The `lw` at 0x10029710 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  4 such accesses, including `lw` at 0x10029714, 0x10029748, 0x1002977c, loads 4 bytes from abs 0x100a9dd0.
  4 such accesses, including `lw` at 0x1002972c, 0x10029760, 0x10029794, loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `lw` at 0x10029730 loads 4 bytes from [a0+464] +0x108.
  4 such accesses, including `lw` at 0x10029734, 0x10029768, 0x1002979c, loads 4 bytes from abs 0x100a9de8.
  The `lw` at 0x10029744 loads 4 bytes from a0 (arg0 at entry) +0xf0.
  The `lw` at 0x10029764 loads 4 bytes from [a0+464] +0x10c.
  The `lw` at 0x10029778 loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `lw` at 0x10029798 loads 4 bytes from [a0+464] +0x110.
  The `lw` at 0x100297ac loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `lw` at 0x100297cc loads 4 bytes from [a0+464] +0x114.
  The `jal` at 0x10029718 calls `EZ__GP10_WidgetRec` with a0=[a0+224], a1=0x87980, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10029738 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+264], a2=unknown, a3=unknown.
  The `jal` at 0x1002974c calls `EZ__GP10_WidgetRec` with a0=[a0+240], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1002976c calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+268], a2=unknown, a3=unknown.
  The `jal` at 0x10029780 calls `EZ__GP10_WidgetRec` with a0=[a0+212], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x100297a0 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+272], a2=unknown, a3=unknown.
  The `jal` at 0x100297b4 calls `EZ__GP10_WidgetRec` with a0=[a0+144], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x100297d4 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+276], a2=unknown, a3=unknown.
  The return at 0x100297f0 has v0 = ret(__as__9EZWrapperGi).
- `alphaChannel__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029800 (n32).
  It occupies 112 bytes.
  The `lw` at 0x10029830 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10029838 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002983c stores 4 bytes to [a0+464] +0x13c (value [a2+8]).
  The `lw` at 0x10029840 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10029844 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10029848 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002984c calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+464], a3=0x87870.
  The return at 0x10029868 has v0 = ret(update__18VkwindowMainWindowGv).
- `bGamma__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029870 (n32).
  It occupies 164 bytes.
  The `lw` at 0x100298a0 loads 4 bytes from abs 0x100a9dd0.
  The `lw` at 0x100298b0 loads 4 bytes from abs 0x100a908c.
  The `lw` at 0x100298c4 loads 4 bytes from abs 0x100a9344.
  The `lw` at 0x100298d8 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `lw` at 0x100298e4 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x100298e8 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x100298ec loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x100298a4 calls `EZ__GP10_WidgetRec` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100298b8 calls `(unnamed)` with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100298c8 calls `atof` with a0=ret(0x1002b650), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x100298f0 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a0+464]+624, a2=unknown, a3=unknown.
  The return at 0x1002990c has v0 = ret(update__18VkwindowMainWindowGv).
- `channelEnable__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029920 (n32).
  It occupies 264 bytes.
  3 such accesses, including `lw` at 0x1002994c, 0x1002995c, 0x100299f0, loads 4 bytes from abs 0x100a9ee8.
  The `lw` at 0x10029950 loads 4 bytes from sym(combination) +0xfcc.
  The `lw` at 0x10029960 loads 4 bytes from sym(combination) +0xfa8.
  The `lw` at 0x1002996c loads 4 bytes from abs 0x100a9318.
  The `lw` at 0x10029980 loads 4 bytes from abs 0x100a90d4.
  The `lw` at 0x1002998c loads 4 bytes from abs 0x100a908c.
  The `lw` at 0x100299a0 loads 4 bytes from abs 0x100a9dd0.
  The `lw` at 0x100299b8 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `lw` at 0x100299bc loads 4 bytes from [a0+464] +0x2a4.
  The `lw` at 0x100299c0 loads 4 bytes from abs 0x100a9de8.
  The `lw` at 0x100299d8 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x100299e0 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x100299e4 stores 4 bytes to [a0+464] +0x2a4 (value [a2+8]).
  The `lw` at 0x100299ec loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `sw` at 0x100299f4 stores 4 bytes to sym(combination) +0x228 (value [a2+8]).
  The `lw` at 0x100299f8 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x100299fc loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10029a00 loads 4 bytes from abs 0x100a9c30.
  The `beq` branch at 0x10029954 targets 0x100299d4, is taken when at(=[sym(combination)+4044]) == 0, and falls through when at(=[sym(combination)+4044]) != 0.
  The `beq` branch at 0x10029964 targets 0x100299d4, is taken when a0(=[sym(combination)+4008]) == 0, and falls through when a0(=[sym(combination)+4008]) != 0.
  The `jalr` at 0x10029970 calls `getTheErrorDialog__Gv` with a0=[sym(combination)+4008], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10029994 calls `(unnamed)` with a0=ret(getTheErrorDialog__Gv), a1=0x10094fe8, a2=a1 at entry (arg1), a3=unknown.
  The `jal` at 0x100299a4 calls `EZ__GP10_WidgetRec` with a0=a1 at entry (arg1), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x100299c4 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+464]+676], a2=unknown, a3=unknown.
  The `jal` at 0x10029a04 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The return at 0x10029a20 has v0 = ret(update__18VkwindowMainWindowGv).
- `closeChannel__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029a30 (n32).
  It occupies 124 bytes.
  The `lw` at 0x10029a60 loads 4 bytes from a0 (arg0 at entry) +0x1cc.
  The `lw` at 0x10029a64 loads 4 bytes from [a0+460] +0x8.
  The `lw` at 0x10029a68 loads 4 bytes from [[a0+460]+8] +0x30.
  The `lw` at 0x10029a70 loads 4 bytes from a0 (arg0 at entry) +0x1cc.
  The `lw` at 0x10029a7c loads 4 bytes from a0 (arg0 at entry) +0x1cc.
  The `lw` at 0x10029a80 loads 4 bytes from [a0+460] +0x8.
  The `lw` at 0x10029a84 loads 4 bytes from [[a0+460]+8] +0x38.
  The `jalr` at 0x10029a88 calls `(unknown callee)` with a0=([[[a0+460]+8]+48] + [a0+460]), a1=[a0+460], a2=a2 at entry (arg2), a3=0x87640.
  The return at 0x10029aa4 has v0 = ret(unknown).
- `cursorPriority__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029ab0 (n32).
  It occupies 140 bytes.
  The `lw` at 0x10029ae0 loads 4 bytes from abs 0x100a9dd0.
  The `lw` at 0x10029af0 loads 4 bytes from abs 0x100a908c.
  The `lw` at 0x10029b04 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x10029b08 stores 4 bytes to [a0+464] +0x140 (value ret(0x1002b610)).
  The `lw` at 0x10029b0c loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10029b10 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10029b14 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10029ae4 calls `EZ__GP10_WidgetRec` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10029af8 calls `(unnamed)` with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10029b18 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a0+464], a2=unknown, a3=unknown.
  The return at 0x10029b34 has v0 = ret(update__18VkwindowMainWindowGv).
- `dither__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029b40 (n32).
  It occupies 112 bytes.
  The `lw` at 0x10029b70 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10029b78 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x10029b7c stores 4 bytes to [a0+464] +0x144 (value [a2+8]).
  The `lw` at 0x10029b80 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10029b84 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10029b88 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10029b8c calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+464], a3=0x87530.
  The return at 0x10029ba8 has v0 = ret(update__18VkwindowMainWindowGv).
- `encoderNTSC__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029bb0 (n32).
  It occupies 180 bytes.
  The `lw` at 0x10029be0 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `lw` at 0x10029be4 loads 4 bytes from [a0+464] +0x104.
  2 such accesses, including `lw` at 0x10029bec, 0x10029c34, loads 4 bytes from abs 0x100a9ef0.
  2 such accesses, including `lw` at 0x10029bf0, 0x10029c38, loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10029bf8 loads 4 bytes from abs 0x100a90d4.
  The `lw` at 0x10029c00 loads 4 bytes from abs 0x100a9c3c.
  The `lw` at 0x10029c14 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x10029c18 stores 4 bytes to [a0+464] +0x104.
  The `lw` at 0x10029c20 loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `lw` at 0x10029c28 loads 4 bytes from abs 0x100a9340.
  The `lw` at 0x10029c3c loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10029c04 calls `loadFormat__18VkwindowMainWindowGiPCc` with a0=[sym(vkwindow)], a1=0x8, a2=0x10095020, a3=0x874c0.
  The `jalr` at 0x10029c2c calls `XtSetSensitive` with a0=[a0+180], a1=0x1, a2=[a0+464], a3=unknown.
  The `jal` at 0x10029c40 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The return at 0x10029c5c has v0 = ret(update__18VkwindowMainWindowGv).
- `enocderPAL__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029c70 (n32).
  It occupies 180 bytes.
  The `lw` at 0x10029ca0 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `lw` at 0x10029ca4 loads 4 bytes from [a0+464] +0x104.
  2 such accesses, including `lw` at 0x10029cac, 0x10029cf4, loads 4 bytes from abs 0x100a9ef0.
  2 such accesses, including `lw` at 0x10029cb0, 0x10029cf8, loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10029cb8 loads 4 bytes from abs 0x100a90d4.
  The `lw` at 0x10029cc0 loads 4 bytes from abs 0x100a9c3c.
  The `lw` at 0x10029cd4 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x10029cd8 stores 4 bytes to [a0+464] +0x104.
  The `lw` at 0x10029ce0 loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `lw` at 0x10029ce8 loads 4 bytes from abs 0x100a9340.
  The `lw` at 0x10029cfc loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10029cc4 calls `loadFormat__18VkwindowMainWindowGiPCc` with a0=[sym(vkwindow)], a1=0x8, a2=0x10095030, a3=0x87400.
  The `jalr` at 0x10029cec calls `XtSetSensitive` with a0=[a0+180], a1=0x0, a2=[a0+464], a3=unknown.
  The `jal` at 0x10029d00 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The return at 0x10029d1c has v0 = ret(update__18VkwindowMainWindowGv).
- `fs__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029d30 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10029d64 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x10029d68 stores 4 bytes to [a0+464] +0x134 (value 0x4).
  The `lw` at 0x10029d6c loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10029d70 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10029d74 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10029d78 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=0x4, a2=[a0+464], a3=a2 at entry (arg2), a4=0x87340.
  The return at 0x10029d94 has v0 = ret(update__18VkwindowMainWindowGv).
- `gGamma__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029da0 (n32).
  It occupies 164 bytes.
  The `lw` at 0x10029dd0 loads 4 bytes from abs 0x100a9dd0.
  The `lw` at 0x10029de0 loads 4 bytes from abs 0x100a908c.
  The `lw` at 0x10029df4 loads 4 bytes from abs 0x100a9344.
  The `lw` at 0x10029e08 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `lw` at 0x10029e14 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10029e18 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10029e1c loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10029dd4 calls `EZ__GP10_WidgetRec` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10029de8 calls `(unnamed)` with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10029df8 calls `atof` with a0=ret(0x1002b650), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10029e20 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a0+464]+620, a2=unknown, a3=unknown.
  The return at 0x10029e3c has v0 = ret(update__18VkwindowMainWindowGv).
- `gain__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029e50 (n32).
  It occupies 160 bytes.
  The `lw` at 0x10029e80 loads 4 bytes from abs 0x100a9dd0.
  The `lw` at 0x10029e90 loads 4 bytes from abs 0x100a908c.
  The `lw` at 0x10029ea4 loads 4 bytes from abs 0x100a9344.
  The `lw` at 0x10029eb8 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `lw` at 0x10029ec0 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10029ec4 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10029ec8 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10029e84 calls `EZ__GP10_WidgetRec` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10029e98 calls `(unnamed)` with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10029ea8 calls `atof` with a0=ret(0x1002b650), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10029ecc calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a0+464], a2=unknown, a3=unknown.
  The return at 0x10029ee8 has v0 = ret(update__18VkwindowMainWindowGv).
- `hPhase__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029ef0 (n32).
  It occupies 172 bytes.
  The `lw` at 0x10029f20 loads 4 bytes from abs 0x100a9dd0.
  The `lw` at 0x10029f30 loads 4 bytes from abs 0x100a908c.
  The `lw` at 0x10029f44 loads 4 bytes from abs 0x100a9344.
  The `lw` at 0x10029f64 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x10029f68 stores 4 bytes to [a0+464] +0x258.
  The `lw` at 0x10029f6c loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10029f70 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10029f74 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10029f24 calls `EZ__GP10_WidgetRec` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10029f38 calls `(unnamed)` with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10029f48 calls `atof` with a0=ret(0x1002b650), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10029f78 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=unknown, a2=[a0+464], a3=unknown.
  The return at 0x10029f94 has v0 = ret(update__18VkwindowMainWindowGv).
- `height__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10029fa0 (n32).
  It occupies 176 bytes.
  The `lw` at 0x10029fd0 loads 4 bytes from abs 0x100a9dd0.
  The `lw` at 0x10029fe0 loads 4 bytes from abs 0x100a908c.
  The `lw` at 0x10029ff4 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x10029ffc stores 4 bytes to [a0+464] +0x114 (value ret(0x1002b610)).
  2 such accesses, including `lw` at 0x1002a000, 0x1002a020, loads 4 bytes from abs 0x100a9ef0.
  2 such accesses, including `lw` at 0x1002a004, 0x1002a024, loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002a014 loads 4 bytes from abs 0x100a9c38.
  The `lw` at 0x1002a028 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x10029fd4 calls `EZ__GP10_WidgetRec` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10029fe8 calls `(unnamed)` with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1002a018 calls `clamp__18VkwindowMainWindowGiN21` with a0=[sym(vkwindow)], a1=0x8, a2=0x1, a3=0x0.
  The `jal` at 0x1002a02c calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The return at 0x1002a048 has v0 = ret(update__18VkwindowMainWindowGv).
- `interleaved__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002a050 (n32).
  It occupies 108 bytes.
  The `lw` at 0x1002a084 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002a088 stores 4 bytes to [a0+464] +0x2ac (value 0x1).
  The `lw` at 0x1002a08c loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x1002a090 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002a094 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002a098 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=0x1, a2=[a0+464], a3=a2 at entry (arg2), a4=0x87020.
  The return at 0x1002a0b4 has v0 = ret(update__18VkwindowMainWindowGv).
- `progressive__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002a0c0 (n32).
  It occupies 104 bytes.
  The `lw` at 0x1002a0f0 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002a0f4 stores 4 bytes to [a0+464] +0x2ac (value 0x0).
  The `lw` at 0x1002a0f8 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x1002a0fc loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002a100 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002a104 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a0+464], a2=a2 at entry (arg2), a3=0x86fb0.
  The return at 0x1002a120 has v0 = ret(update__18VkwindowMainWindowGv).
- `rGamma__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002a130 (n32).
  It occupies 164 bytes.
  The `lw` at 0x1002a160 loads 4 bytes from abs 0x100a9dd0.
  The `lw` at 0x1002a170 loads 4 bytes from abs 0x100a908c.
  The `lw` at 0x1002a184 loads 4 bytes from abs 0x100a9344.
  The `lw` at 0x1002a198 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `lw` at 0x1002a1a4 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x1002a1a8 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002a1ac loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002a164 calls `EZ__GP10_WidgetRec` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002a178 calls `(unnamed)` with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1002a188 calls `atof` with a0=ret(0x1002b650), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1002a1b0 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a0+464]+616, a2=unknown, a3=unknown.
  The return at 0x1002a1cc has v0 = ret(update__18VkwindowMainWindowGv).
- `restoreSize__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002a1e0 (n32).
  It occupies 312 bytes.
  4 such accesses, including `lw` at 0x1002a210, 0x1002a240, 0x1002a294, loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  2 such accesses, including `lw` at 0x1002a218, 0x1002a29c, loads 4 bytes from [a0+464] +0x128.
  2 such accesses, including `lw` at 0x1002a220, 0x1002a2bc, loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002a228 stores 4 bytes to [a0+464] +0x110 (value [[a0+464]+296]).
  2 such accesses, including `lw` at 0x1002a230, 0x1002a284, loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `lw` at 0x1002a238 loads 4 bytes from [a0+464] +0x12c.
  The `sw` at 0x1002a248 stores 4 bytes to [a0+464] +0x114 (value [[a0+464]+300]).
  2 such accesses, including `lw` at 0x1002a24c, 0x1002a26c, loads 4 bytes from abs 0x100a9ef0.
  2 such accesses, including `lw` at 0x1002a250, 0x1002a270, loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002a260 loads 4 bytes from abs 0x100a9c38.
  The `lw` at 0x1002a274 loads 4 bytes from abs 0x100a9c30.
  The `lw` at 0x1002a28c loads 4 bytes from [a0+464] +0x110.
  The `lw` at 0x1002a2b4 loads 4 bytes from [a0+464] +0x114.
  The `lw` at 0x1002a2c4 loads 4 bytes from [a0+464] +0x12c.
  The `lw` at 0x1002a2d0 loads 4 bytes from abs 0x100a9318.
  The `lw` at 0x1002a2e0 loads 4 bytes from abs 0x100a90d4.
  The `lw` at 0x1002a2ec loads 4 bytes from abs 0x100a908c.
  The `bne` branch at 0x1002a2a0 targets 0x1002a2d0, is taken when a1(=[[a0+464]+272]) != a2(=[[a0+464]+296]), and falls through when a1(=[[a0+464]+272]) == a2(=[[a0+464]+296]).
  The `beq` branch at 0x1002a2c8 targets 0x1002a2fc, is taken when a2(=[[a0+464]+276]) == a3(=[[a0+464]+300]), and falls through when a2(=[[a0+464]+276]) != a3(=[[a0+464]+300]).
  The `jal` at 0x1002a264 calls `clamp__18VkwindowMainWindowGiN21` with a0=[sym(vkwindow)], a1=0x8, a2=0x1, a3=0x0, a4=0x86e90.
  The `jal` at 0x1002a278 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1002a2d4 calls `getTheErrorDialog__Gv` with a0=unknown, a1=[[a0+464]+272], a2=unknown, a3=unknown.
  The `jal` at 0x1002a2f4 calls `(unnamed)` with a0=ret(getTheErrorDialog__Gv), a1=0x10095040, a2=a1 at entry (arg1), a3=unknown.
  The return at 0x1002a310 has v0 = unknown.
- `rgb10__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002a320 (n32).
  It occupies 104 bytes.
  The `lw` at 0x1002a350 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002a354 stores 4 bytes to [a0+464] +0x134 (value 0x0).
  The `lw` at 0x1002a358 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x1002a35c loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002a360 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002a364 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a0+464], a2=a2 at entry (arg2), a3=0x86d50.
  The return at 0x1002a380 has v0 = ret(update__18VkwindowMainWindowGv).
- `rgb12__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002a390 (n32).
  It occupies 108 bytes.
  The `lw` at 0x1002a3c4 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002a3c8 stores 4 bytes to [a0+464] +0x134 (value 0x2).
  The `lw` at 0x1002a3cc loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x1002a3d0 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002a3d4 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002a3d8 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=0x2, a2=[a0+464], a3=a2 at entry (arg2), a4=0x86ce0.
  The return at 0x1002a3f4 has v0 = ret(update__18VkwindowMainWindowGv).
- `rgba10__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002a400 (n32).
  It occupies 108 bytes.
  The `lw` at 0x1002a434 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002a438 stores 4 bytes to [a0+464] +0x134 (value 0x1).
  The `lw` at 0x1002a43c loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x1002a440 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002a444 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002a448 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=0x1, a2=[a0+464], a3=a2 at entry (arg2), a4=0x86c70.
  The return at 0x1002a464 has v0 = ret(update__18VkwindowMainWindowGv).
- `safeAreaPercent__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002a470 (n32).
  It occupies 160 bytes.
  The `lw` at 0x1002a4a0 loads 4 bytes from abs 0x100a9dd0.
  The `lw` at 0x1002a4b0 loads 4 bytes from abs 0x100a908c.
  The `lw` at 0x1002a4c4 loads 4 bytes from abs 0x100a9344.
  The `lw` at 0x1002a4d8 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `lw` at 0x1002a4e0 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x1002a4e4 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002a4e8 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002a4a4 calls `EZ__GP10_WidgetRec` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002a4b8 calls `(unnamed)` with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1002a4c8 calls `atof` with a0=ret(0x1002b650), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1002a4ec calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a0+464], a2=unknown, a3=unknown.
  The return at 0x1002a508 has v0 = ret(update__18VkwindowMainWindowGv).
- `setFlickerFilter__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002a510 (n32).
  It occupies 112 bytes.
  The `lw` at 0x1002a540 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1002a548 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002a54c stores 4 bytes to [a0+464] +0x27c (value [a2+8]).
  The `lw` at 0x1002a550 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x1002a554 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002a558 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002a55c calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+464], a3=0x86b60.
  The return at 0x1002a578 has v0 = ret(update__18VkwindowMainWindowGv).
- `setLetterBox__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002a580 (n32).
  It occupies 112 bytes.
  The `lw` at 0x1002a5b0 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1002a5b8 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002a5bc stores 4 bytes to [a0+464] +0x280 (value [a2+8]).
  The `lw` at 0x1002a5c0 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x1002a5c4 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002a5c8 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002a5cc calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+464], a3=0x86af0.
  The return at 0x1002a5e8 has v0 = ret(update__18VkwindowMainWindowGv).
- `setup__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002a5f0 (n32).
  It occupies 112 bytes.
  The `lw` at 0x1002a620 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1002a628 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002a62c stores 4 bytes to [a0+464] +0x288 (value [a2+8]).
  The `lw` at 0x1002a630 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x1002a634 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002a638 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002a63c calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+464], a3=0x86a80.
  The return at 0x1002a658 has v0 = ret(update__18VkwindowMainWindowGv).
- `sourceChannel__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002a660 (n32).
  It occupies 1280 bytes.
  2 such accesses, including `lw` at 0x1002a690, 0x1002a978, loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `lw` at 0x1002a694 loads 4 bytes from [a0+464] +0x104.
  3 such accesses, including `lw` at 0x1002a6a0, 0x1002a7bc, 0x1002a7ec, loads 4 bytes from a0 (arg0 at entry) +0x100.
  The `lw` at 0x1002a6a8 loads 4 bytes from abs 0x100a9380.
  The `lw` at 0x1002a6c4 loads 4 bytes from (a0 + (ret(getItemPosition__6VkMenuGP10_WidgetRec) << 0x2)) +0x14c.
  3 such accesses, including `lw` at 0x1002a6cc, 0x1002a6e0, 0x1002a870, loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002a6d0 stores 4 bytes to [a0+464] +0x104 (value [(a0 + (ret(getItemPosition__6VkMenuGP10_WidgetRec) << 0x2))+332]).
  4 such accesses, including `lw` at 0x1002a6d4, 0x1002a704, 0x1002a888, loads 4 bytes from abs 0x100a9ee8.
  The `lw` at 0x1002a6e4 loads 4 bytes from [a0+464] +0x104.
  The `lw` at 0x1002a6f8 loads 4 bytes from unknown (base unknown).
  3 such accesses, including `lw` at 0x1002a710, 0x1002a750, 0x1002a8ac, loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  2 such accesses, including `lw` at 0x1002a714, 0x1002a754, loads 4 bytes from [a0+464] +0x104.
  The `lw` at 0x1002a728 loads 4 bytes from unknown (base unknown).
  2 such accesses, including `lw` at 0x1002a738, 0x1002a8d0, loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `lw` at 0x1002a73c loads 4 bytes from [a0+464] +0x104.
  The `lw` at 0x1002a768 loads 4 bytes from abs 0x100a90d4.
  The `lw` at 0x1002a770 loads 4 bytes from abs 0x100a9e28.
  4 such accesses, including `lw` at 0x1002a778, 0x1002a7a0, 0x1002a834, loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  3 such accesses, including `lw` at 0x1002a77c, 0x1002a838, 0x1002a9b0, loads 4 bytes from [a0+464] +0x104.
  The `lw` at 0x1002a788 loads 4 bytes from (sym(konCHANNEL_NAME_strings) + ([[a0+464]+260] << 0x2)) +0x0.
  The `lw` at 0x1002a78c loads 4 bytes from abs 0x100a9314.
  The `sw` at 0x1002a7a4 stores 4 bytes to [a0+464] +0x104.
  The `lw` at 0x1002a7a8 loads 4 bytes from abs 0x100a9318.
  3 such accesses, including `lw` at 0x1002a7c0, 0x1002aa40, 0x1002aaec, loads 4 bytes from abs 0x100a933c.
  The `lw` at 0x1002a7d8 loads 4 bytes from abs 0x100a908c.
  The `lw` at 0x1002a7f8 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `lw` at 0x1002a7fc loads 4 bytes from [a0+464] +0x104.
  The `lw` at 0x1002a808 loads 4 bytes from (a0 + ([[a0+464]+260] << 0x2)) +0x18c.
  The `lw` at 0x1002a80c loads 4 bytes from abs 0x100a9338.
  The `lw` at 0x1002a85c loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `lw` at 0x1002a864 loads 4 bytes from [a0+464] +0x108.
  The `lw` at 0x1002a878 loads 4 bytes from [a0+464] +0x10c.
  The `lw` at 0x1002a8b4 loads 4 bytes from [a0+464] +0x108.
  The `lw` at 0x1002a8c0 loads 4 bytes from unknown (base unknown).
  The `lw` at 0x1002a8d8 loads 4 bytes from [a0+464] +0x10c.
  The `lw` at 0x1002a8e4 loads 4 bytes from unknown (base unknown).
  The `lw` at 0x1002a8f4 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `lw` at 0x1002a8f8 loads 4 bytes from [a0+464] +0x104.
  The `lw` at 0x1002a910 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002a918 stores 4 bytes to [a0+464] +0x108.
  The `lw` at 0x1002a924 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002a92c stores 4 bytes to [a0+464] +0x10c.
  The `lw` at 0x1002a944 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `lw` at 0x1002a948 loads 4 bytes from [a0+464] +0x104.
  The `lw` at 0x1002a96c loads 4 bytes from unknown (base unknown).
  The `sw` at 0x1002a980 stores 4 bytes to [a0+464] +0x108.
  The `lw` at 0x1002a990 loads 4 bytes from unknown (base unknown).
  The `lw` at 0x1002a99c loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002a9a4 stores 4 bytes to [a0+464] +0x10c.
  2 such accesses, including `lw` at 0x1002a9c4, 0x1002aa70, loads 4 bytes from a0 (arg0 at entry) +0x44.
  12 such accesses, including `lw` at 0x1002a9cc, 0x1002a9e4, 0x1002a9fc, loads 4 bytes from abs 0x100a9340.
  2 such accesses, including `lw` at 0x1002a9dc, 0x1002aa88, loads 4 bytes from a0 (arg0 at entry) +0x48.
  2 such accesses, including `lw` at 0x1002a9f4, 0x1002aaa0, loads 4 bytes from a0 (arg0 at entry) +0xd8.
  2 such accesses, including `lw` at 0x1002aa0c, 0x1002aab8, loads 4 bytes from a0 (arg0 at entry) +0xe4.
  2 such accesses, including `lw` at 0x1002aa24, 0x1002aad0, loads 4 bytes from a0 (arg0 at entry) +0x4c.
  2 such accesses, including `lw` at 0x1002aa3c, 0x1002aae8, loads 4 bytes from a0 (arg0 at entry) +0xf8.
  2 such accesses, including `lw` at 0x1002ab10, 0x1002ab30, loads 4 bytes from abs 0x100a9ef0.
  2 such accesses, including `lw` at 0x1002ab14, 0x1002ab34, loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002ab24 loads 4 bytes from abs 0x100a9c38.
  The `lw` at 0x1002ab38 loads 4 bytes from abs 0x100a9c30.
  The `beq` branch at 0x1002a6fc targets 0x1002a734, is taken when a4(unknown) == 0, and falls through when a4(unknown) != 0.
  The `bne` branch at 0x1002a72c targets 0x1002a820, is taken when a7(unknown) != 0, and falls through when a7(unknown) == 0.
  The `beq` branch at 0x1002a744 targets 0x1002a820, is taken when t0(=[[a0+464]+260]) == t1(=0x8), and falls through when t0(=[[a0+464]+260]) != t1(=0x8).
  The `beq` branch at 0x1002a75c targets 0x1002a820, is taken when t1(=[[a0+464]+260]) == t2(unknown), and falls through when t1(=[[a0+464]+260]) != t2(unknown).
  The `beq` branch at 0x1002a828 targets 0x1002a848, is taken when a1(unknown) == a2(=0x8), and falls through when a1(unknown) != a2(=0x8).
  The `bne` branch at 0x1002a840 targets 0x1002a9a8, is taken when a3(=[[a0+464]+260]) != a4(=0x8), and falls through when a3(=[[a0+464]+260]) == a4(=0x8).
  The `bne` branch at 0x1002a850 targets 0x1002a888, is taken when a4(unknown) != a5(=0x8), and falls through when a4(unknown) == a5(=0x8).
  The `bne` branch at 0x1002a900 targets 0x1002a938, is taken when t3(=[[a0+464]+260]) != t8(=0x8), and falls through when t3(=[[a0+464]+260]) == t8(=0x8).
  The `bne` branch at 0x1002a9b8 targets 0x1002aa6c, is taken when a3(=[[a0+464]+260]) != a4(=0x8), and falls through when a3(=[[a0+464]+260]) == a4(=0x8).
  The `jalr` at 0x1002a6ac calls `getItemPosition__6VkMenuGP10_WidgetRec` with a0=[a0+256], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x86a10.
  The `jalr` at 0x1002a790 calls `sprintf` with a0=sp-1096, a1=0x10095068, a2=[(sym(konCHANNEL_NAME_strings) + ([[a0+464]+260] << 0x2))], a3=([[a0+464]+260] << 0x2), a6=[[a0+464]+260].
  The `jalr` at 0x1002a7ac calls `getTheErrorDialog__Gv` with a0=unknown, a1=unknown, a2=unknown, a3=[a0+464].
  The `jalr` at 0x1002a7c4 calls `baseWidget__10VkMenuItemCGv` with a0=[a0+256], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1002a7e0 calls `(unnamed)` with a0=unknown, a1=sp-1096, a2=ret(baseWidget__10VkMenuItemCGv), a3=unknown.
  The `jalr` at 0x1002a810 calls `set__12VkOptionMenuGi` with a0=[a0+256], a1=[(a0 + ([[a0+464]+260] << 0x2))+396], a2=([[a0+464]+260] << 0x2), a3=unknown.
  The `jalr` at 0x1002a9d0 calls `XtSetSensitive` with a0=[a0+68], a1=0x0, a2=unknown, a3=[[a0+464]+260], a4=0x8.
  The `jalr` at 0x1002a9e8 calls `XtSetSensitive` with a0=[a0+72], a1=0x0, a2=unknown, a3=unknown.
  The `jalr` at 0x1002aa00 calls `XtSetSensitive` with a0=[a0+216], a1=0x0, a2=unknown, a3=unknown.
  The `jalr` at 0x1002aa18 calls `XtSetSensitive` with a0=[a0+228], a1=0x0, a2=unknown, a3=unknown.
  The `jalr` at 0x1002aa30 calls `XtSetSensitive` with a0=[a0+76], a1=0x0, a2=unknown, a3=unknown.
  The `jalr` at 0x1002aa44 calls `baseWidget__10VkMenuItemCGv` with a0=[a0+248], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1002aa5c calls `XtSetSensitive` with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x1, a2=unknown, a3=unknown.
  The `jalr` at 0x1002aa7c calls `XtSetSensitive` with a0=[a0+68], a1=0x1, a2=unknown, a3=[[a0+464]+260], a4=0x8.
  The `jalr` at 0x1002aa94 calls `XtSetSensitive` with a0=[a0+72], a1=0x1, a2=unknown, a3=unknown.
  The `jalr` at 0x1002aaac calls `XtSetSensitive` with a0=[a0+216], a1=0x1, a2=unknown, a3=unknown.
  The `jalr` at 0x1002aac4 calls `XtSetSensitive` with a0=[a0+228], a1=0x1, a2=unknown, a3=unknown.
  The `jalr` at 0x1002aadc calls `XtSetSensitive` with a0=[a0+76], a1=0x1, a2=unknown, a3=unknown.
  The `jalr` at 0x1002aaf0 calls `baseWidget__10VkMenuItemCGv` with a0=[a0+248], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1002ab08 calls `XtSetSensitive` with a0=ret(baseWidget__10VkMenuItemCGv), a1=0x0, a2=unknown, a3=unknown.
  The `jal` at 0x1002ab28 calls `clamp__18VkwindowMainWindowGiN21` with a0=[sym(vkwindow)], a1=0x8, a2=0x0, a3=0x0.
  The `jal` at 0x1002ab3c calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The return at 0x1002ab58 has v0 = unknown.
- `stacked__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002ab60 (n32).
  It occupies 108 bytes.
  The `lw` at 0x1002ab94 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002ab98 stores 4 bytes to [a0+464] +0x2ac (value 0x2).
  The `lw` at 0x1002ab9c loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x1002aba0 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002aba4 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002aba8 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=0x2, a2=[a0+464], a3=a2 at entry (arg2), a4=0x86510.
  The return at 0x1002abc4 has v0 = ret(update__18VkwindowMainWindowGv).
- `useGamma__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002abd0 (n32).
  It occupies 112 bytes.
  The `lw` at 0x1002ac00 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1002ac08 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002ac0c stores 4 bytes to [a0+464] +0x2c0 (value [a2+8]).
  The `lw` at 0x1002ac10 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x1002ac14 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002ac18 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002ac1c calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+464], a3=0x864a0.
  The return at 0x1002ac38 has v0 = ret(update__18VkwindowMainWindowGv).
- `vPhase__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002ac40 (n32).
  It occupies 140 bytes.
  The `lw` at 0x1002ac70 loads 4 bytes from abs 0x100a9dd0.
  The `lw` at 0x1002ac80 loads 4 bytes from abs 0x100a908c.
  The `lw` at 0x1002ac94 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002ac98 stores 4 bytes to [a0+464] +0x25c (value ret(0x1002b610)).
  The `lw` at 0x1002ac9c loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x1002aca0 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002aca4 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002ac74 calls `EZ__GP10_WidgetRec` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002ac88 calls `(unnamed)` with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1002aca8 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a0+464], a2=unknown, a3=unknown.
  The return at 0x1002acc4 has v0 = ret(update__18VkwindowMainWindowGv).
- `width__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002acd0 (n32).
  It occupies 176 bytes.
  The `lw` at 0x1002ad00 loads 4 bytes from abs 0x100a9dd0.
  The `lw` at 0x1002ad10 loads 4 bytes from abs 0x100a908c.
  The `lw` at 0x1002ad24 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002ad2c stores 4 bytes to [a0+464] +0x110 (value ret(0x1002b610)).
  2 such accesses, including `lw` at 0x1002ad30, 0x1002ad50, loads 4 bytes from abs 0x100a9ef0.
  2 such accesses, including `lw` at 0x1002ad34, 0x1002ad54, loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002ad44 loads 4 bytes from abs 0x100a9c38.
  The `lw` at 0x1002ad58 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002ad04 calls `EZ__GP10_WidgetRec` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002ad18 calls `(unnamed)` with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1002ad48 calls `clamp__18VkwindowMainWindowGiN21` with a0=[sym(vkwindow)], a1=0x8, a2=0x1, a3=0x0.
  The `jal` at 0x1002ad5c calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The return at 0x1002ad78 has v0 = ret(update__18VkwindowMainWindowGv).
- `xFilterSize__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002ad80 (n32).
  It occupies 128 bytes.
  The `lw` at 0x1002adb0 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1002adc4 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `lw` at 0x1002add0 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x1002add4 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002add8 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002addc calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a0+464]+628, a2=[a2+8], a3=a2 at entry (arg2), a4=0x862f0.
  The return at 0x1002adf8 has v0 = ret(update__18VkwindowMainWindowGv).
- `xLocked__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002ae00 (n32).
  It occupies 108 bytes.
  The `lw` at 0x1002ae30 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002ae38 stores 4 bytes to [a0+464] +0x148 (value 0x0).
  The `lw` at 0x1002ae3c loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x1002ae40 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002ae44 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002ae48 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a0+464]+328, a2=a2 at entry (arg2), a3=0x86270.
  The return at 0x1002ae64 has v0 = ret(update__18VkwindowMainWindowGv).
- `xOrigin__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002ae70 (n32).
  It occupies 176 bytes.
  The `lw` at 0x1002aea0 loads 4 bytes from abs 0x100a9dd0.
  The `lw` at 0x1002aeb0 loads 4 bytes from abs 0x100a908c.
  The `lw` at 0x1002aec4 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002aecc stores 4 bytes to [a0+464] +0x108 (value ret(0x1002b610)).
  2 such accesses, including `lw` at 0x1002aed0, 0x1002aef0, loads 4 bytes from abs 0x100a9ef0.
  2 such accesses, including `lw` at 0x1002aed4, 0x1002aef4, loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002aee4 loads 4 bytes from abs 0x100a9c38.
  The `lw` at 0x1002aef8 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002aea4 calls `EZ__GP10_WidgetRec` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002aeb8 calls `(unnamed)` with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1002aee8 calls `clamp__18VkwindowMainWindowGiN21` with a0=[sym(vkwindow)], a1=0x8, a2=0x0, a3=0x1.
  The `jal` at 0x1002aefc calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The return at 0x1002af18 has v0 = ret(update__18VkwindowMainWindowGv).
- `xPixel__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002af20 (n32).
  It occupies 112 bytes.
  The `lw` at 0x1002af54 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002af5c stores 4 bytes to [a0+464] +0x148 (value 0x1).
  The `lw` at 0x1002af60 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x1002af64 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002af68 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002af6c calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=0x1, a2=[a0+464]+328, a3=a2 at entry (arg2), a4=0x86150.
  The return at 0x1002af88 has v0 = ret(update__18VkwindowMainWindowGv).
- `xTile__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002af90 (n32).
  It occupies 112 bytes.
  The `lw` at 0x1002afc4 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002afcc stores 4 bytes to [a0+464] +0x148 (value 0x2).
  The `lw` at 0x1002afd0 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x1002afd4 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002afd8 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002afdc calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=0x2, a2=[a0+464]+328, a3=a2 at entry (arg2), a4=0x860e0.
  The return at 0x1002aff8 has v0 = ret(update__18VkwindowMainWindowGv).
- `yFilterSize__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002b000 (n32).
  It occupies 128 bytes.
  The `lw` at 0x1002b030 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x1002b044 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `lw` at 0x1002b050 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x1002b054 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002b058 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002b05c calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a0+464]+632, a2=[a2+8], a3=a2 at entry (arg2), a4=0x86070.
  The return at 0x1002b078 has v0 = ret(update__18VkwindowMainWindowGv).
- `yLocked__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002b080 (n32).
  It occupies 108 bytes.
  The `lw` at 0x1002b0b0 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002b0b8 stores 4 bytes to [a0+464] +0x14c (value 0x0).
  The `lw` at 0x1002b0bc loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x1002b0c0 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002b0c4 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002b0c8 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[a0+464]+332, a2=a2 at entry (arg2), a3=0x85ff0.
  The return at 0x1002b0e4 has v0 = ret(update__18VkwindowMainWindowGv).
- `yOrigin__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002b0f0 (n32).
  It occupies 176 bytes.
  The `lw` at 0x1002b120 loads 4 bytes from abs 0x100a9dd0.
  The `lw` at 0x1002b130 loads 4 bytes from abs 0x100a908c.
  The `lw` at 0x1002b144 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002b14c stores 4 bytes to [a0+464] +0x10c (value ret(0x1002b610)).
  2 such accesses, including `lw` at 0x1002b150, 0x1002b170, loads 4 bytes from abs 0x100a9ef0.
  2 such accesses, including `lw` at 0x1002b154, 0x1002b174, loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002b164 loads 4 bytes from abs 0x100a9c38.
  The `lw` at 0x1002b178 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002b124 calls `EZ__GP10_WidgetRec` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002b138 calls `(unnamed)` with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1002b168 calls `clamp__18VkwindowMainWindowGiN21` with a0=[sym(vkwindow)], a1=0x8, a2=0x0, a3=0x2.
  The `jal` at 0x1002b17c calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The return at 0x1002b198 has v0 = ret(update__18VkwindowMainWindowGv).
- `yPixel__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002b1a0 (n32).
  It occupies 112 bytes.
  The `lw` at 0x1002b1d4 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002b1dc stores 4 bytes to [a0+464] +0x14c (value 0x1).
  The `lw` at 0x1002b1e0 loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x1002b1e4 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002b1e8 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002b1ec calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=0x1, a2=[a0+464]+332, a3=a2 at entry (arg2), a4=0x85ed0.
  The return at 0x1002b208 has v0 = ret(update__18VkwindowMainWindowGv).
- `z__11EncoderFormGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1002b210 (n32).
  It occupies 108 bytes.
  The `lw` at 0x1002b244 loads 4 bytes from a0 (arg0 at entry) +0x1d0.
  The `sw` at 0x1002b248 stores 4 bytes to [a0+464] +0x134 (value 0x3).
  The `lw` at 0x1002b24c loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x1002b250 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x1002b254 loads 4 bytes from abs 0x100a9c30.
  The `jal` at 0x1002b258 calls `update__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=0x3, a2=[a0+464], a3=a2 at entry (arg2), a4=0x85e60.
  The return at 0x1002b274 has v0 = ret(update__18VkwindowMainWindowGv).
- `RegisterEncoderFormInterface__11EncoderFormSGv` in `usr/gfx/ircombine` at 0x1002b280 (n32).
  It occupies 60 bytes.
  The `lw` at 0x1002b294 loads 4 bytes from abs 0x100a90d8.
  The return at 0x1002b2b4 has v0 = 0x100a1b08.
- `__ct__13EncoderFormUIGPCcP10_WidgetRec` in `usr/gfx/ircombine` at 0x1002b710 (n32).
  It occupies 132 bytes.
  The `lw` at 0x1002b73c loads 4 bytes from abs 0x100a9360.
  The `lw` at 0x1002b748 loads 4 bytes from abs 0x100a9e30.
  The `sw` at 0x1002b750 stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__13EncoderFormUI)).
  The `lw` at 0x1002b75c loads 4 bytes from abs 0x100a96ec.
  The `jalr` at 0x1002b740 calls `__ct__11VkComponentGPCc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002b760 calls `create__13EncoderFormUIGP10_WidgetRec` with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=unknown, a3=unknown.
  The return at 0x1002b778 has v0 = a0.
- `__ct__13EncoderFormUIGPCc` in `usr/gfx/ircombine` at 0x1002b7a0 (n32).
  It occupies 108 bytes.
  The `lw` at 0x1002b7c8 loads 4 bytes from abs 0x100a9360.
  The `lw` at 0x1002b7d4 loads 4 bytes from abs 0x100a9e30.
  The `sw` at 0x1002b7dc stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__13EncoderFormUI)).
  The `jalr` at 0x1002b7cc calls `__ct__11VkComponentGPCc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1002b7f0 has v0 = a0.
- `__dt__13EncoderFormUIGv` in `usr/gfx/ircombine` at 0x1002b810 (n32).
  It occupies 148 bytes.
  The `lw` at 0x1002b83c loads 4 bytes from abs 0x100a9e30.
  The `sw` at 0x1002b844 stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__13EncoderFormUI)).
  The `lw` at 0x1002b850 loads 4 bytes from abs 0x100a9208.
  The `lw` at 0x1002b870 loads 4 bytes from abs 0x100a9250.
  The `beq` branch at 0x1002b834 targets 0x1002b87c, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x1002b864 targets 0x1002b87c, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The `jalr` at 0x1002b854 calls `__dt__11VkComponentGv` with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002b874 calls `__dl__GPv` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The return at 0x1002b888 has v0 = unknown.
- `create__13EncoderFormUIGP10_WidgetRec` in `usr/gfx/ircombine` at 0x1002b8b0 (n32).
  It occupies 21496 bytes.
  The `lw` at 0x1002b8dc loads 4 bytes from abs 0x100a9e34.
  The `lw` at 0x1002b8e0 loads 4 bytes from abs 0x100a9324.
  The `lw` at 0x1002b8f0 loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such accesses, including `lw` at 0x1002b8f4, 0x1002d990, loads 4 bytes from abs 0x100a9148.
  2 such accesses, including `lw` at 0x1002b8f8, 0x1002d994, loads 4 bytes from sym(xmFormWidgetClass) +0x0.
  754 such accesses, including `lw` at 0x1002b900, 0x1002b960, 0x1002b96c, loads 4 bytes from abs 0x100a914c.
  The `lw` at 0x1002b910 loads 4 bytes from abs 0x100a9364.
  The `sw` at 0x1002b92c stores 4 bytes to a0 (arg0 at entry) +0x54 (value ret(XtVaCreateWidget)).
  The `sw` at 0x1002b934 stores 4 bytes to a0 (arg0 at entry) +0x10 (value ret(XtVaCreateWidget)).
  The `lw` at 0x1002b93c loads 4 bytes from abs 0x100a9368.
  79 such accesses, including `lw` at 0x1002b948, 0x1002ba6c, 0x1002bba4, loads 4 bytes from abs 0x100a90d4.
  7 such accesses, including `lw` at 0x1002b950, 0x1002bca8, 0x1002bdcc, loads 4 bytes from abs 0x100a9130.
  7 such accesses, including `lw` at 0x1002b954, 0x1002bcac, 0x1002bdd0, loads 4 bytes from sym(xmToggleButtonWidgetClass) +0x0.
  41 such accesses, including `lw` at 0x1002b95c, 0x1002ba80, 0x1002bbb8, loads 4 bytes from a0 (arg0 at entry) +0x10.
  119 such accesses, including `lw` at 0x1002ba04, 0x1002ba18, 0x1002bb3c, loads 4 bytes from abs 0x100a91ac.
  52 such accesses, including `lw` at 0x1002ba30, 0x1002bb68, 0x1002bc88, loads 4 bytes from abs 0x100a936c.
  The `sw` at 0x1002ba44 stores 4 bytes to a0 (arg0 at entry) +0x44 (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x1002ba4c loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x1002ba58 loads 4 bytes from abs 0x100a9744.
  35 such accesses, including `lw` at 0x1002ba60, 0x1002bb98, 0x1002bdb8, loads 4 bytes from abs 0x100a9378.
  12 such accesses, including `lw` at 0x1002ba74, 0x1002ce90, 0x1002cfc4, loads 4 bytes from abs 0x100a912c.
  12 such accesses, including `lw` at 0x1002ba78, 0x1002ce94, 0x1002cfc8, loads 4 bytes from sym(xmTextFieldWidgetClass) +0x0.
  The `lw` at 0x1002bacc loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `sw` at 0x1002bb7c stores 4 bytes to a0 (arg0 at entry) +0x4c (value ret(XtVaCreateManagedWidget)).
  3 such accesses, including `lw` at 0x1002bb84, 0x1002fd74, 0x10030ad4, loads 4 bytes from a0 (arg0 at entry) +0x4c.
  2 such accesses, including `lw` at 0x1002bb90, 0x10030ae0, loads 4 bytes from abs 0x100a9740.
  27 such accesses, including `lw` at 0x1002bbac, 0x1002c350, 0x1002c458, loads 4 bytes from abs 0x100a921c.
  27 such accesses, including `lw` at 0x1002bbb0, 0x1002c354, 0x1002c45c, loads 4 bytes from sym(xmLabelWidgetClass) +0x0.
  The `sw` at 0x1002bc9c stores 4 bytes to a0 (arg0 at entry) +0x50 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1002bd9c stores 4 bytes to a0 (arg0 at entry) +0x48 (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x1002bda4 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x1002bdb0 loads 4 bytes from abs 0x100a9748.
  The `sw` at 0x1002bed0 stores 4 bytes to a0 (arg0 at entry) +0xc8 (value ret(XtVaCreateManagedWidget)).
  2 such accesses, including `lw` at 0x1002bed8, 0x1002fdc4, loads 4 bytes from a0 (arg0 at entry) +0xc8.
  The `lw` at 0x1002bee4 loads 4 bytes from abs 0x100a9758.
  The `lw` at 0x1002bf7c loads 4 bytes from a0 (arg0 at entry) +0xc8.
  The `sw` at 0x1002c02c stores 4 bytes to a0 (arg0 at entry) +0x20 (value ret(XtVaCreateManagedWidget)).
  2 such accesses, including `lw` at 0x1002c034, 0x1002fdec, loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0x1002c040 loads 4 bytes from abs 0x100a96f0.
  6 such accesses, including `lw` at 0x1002c05c, 0x1002c880, 0x1002c93c, loads 4 bytes from abs 0x100a92fc.
  6 such accesses, including `lw` at 0x1002c090, 0x1002c8b4, 0x1002c970, loads 4 bytes from a0 (arg0 at entry) +0x10.
  6 such accesses, including `lw` at 0x1002c0a4, 0x1002c8c8, 0x1002c984, loads 4 bytes from abs 0x100a9370.
  The `sw` at 0x1002c0d8 stores 4 bytes to a0 (arg0 at entry) +0xf8.
  4 such accesses, including `lw` at 0x1002c0e0, 0x1002c114, 0x1002c148, loads 4 bytes from a0 (arg0 at entry) +0xf8.
  The `lw` at 0x1002c0ec loads 4 bytes from abs 0x100a9728.
  17 such accesses, including `lw` at 0x1002c0f8, 0x1002c12c, 0x1002c160, loads 4 bytes from abs 0x100a9374.
  The `sw` at 0x1002c10c stores 4 bytes to a0 (arg0 at entry) +0x120 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `lw` at 0x1002c120 loads 4 bytes from abs 0x100a9724.
  The `sw` at 0x1002c140 stores 4 bytes to a0 (arg0 at entry) +0x118 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `lw` at 0x1002c154 loads 4 bytes from abs 0x100a9754.
  The `sw` at 0x1002c174 stores 4 bytes to a0 (arg0 at entry) +0x130 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  2 such accesses, including `lw` at 0x1002c180, 0x1002c574, loads 4 bytes from abs 0x100a9174.
  2 such accesses, including `lw` at 0x1002c184, 0x1002c578, loads 4 bytes from sym(sgDialWidgetClass) +0x0.
  The `sw` at 0x1002c320 stores 4 bytes to a0 (arg0 at entry) +0xe4 (value ret(XtVaCreateManagedWidget)).
  2 such accesses, including `lw` at 0x1002c328, 0x1002ff08, loads 4 bytes from a0 (arg0 at entry) +0xe4.
  The `lw` at 0x1002c334 loads 4 bytes from abs 0x100a9778.
  The `sw` at 0x1002c44c stores 4 bytes to a0 (arg0 at entry) +0xe8 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1002c568 stores 4 bytes to a0 (arg0 at entry) +0xdc (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x1002c67c loads 4 bytes from a0 (arg0 at entry) +0xdc.
  The `sw` at 0x1002c72c stores 4 bytes to a0 (arg0 at entry) +0xd8 (value ret(XtVaCreateManagedWidget)).
  2 such accesses, including `lw` at 0x1002c734, 0x1002ffb0, loads 4 bytes from a0 (arg0 at entry) +0xd8.
  The `lw` at 0x1002c740 loads 4 bytes from abs 0x100a9764.
  2 such accesses, including `lw` at 0x1002c7c4, 0x1002d4ec, loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `sw` at 0x1002c874 stores 4 bytes to a0 (arg0 at entry) +0x60 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1002c8fc stores 4 bytes to a0 (arg0 at entry) +0x100.
  3 such accesses, including `lw` at 0x1002c904, 0x1002ffd8, 0x10030a4c, loads 4 bytes from a0 (arg0 at entry) +0x100.
  2 such accesses, including `lw` at 0x1002c910, 0x10030a64, loads 4 bytes from abs 0x100a9750.
  The `sw` at 0x1002c930 stores 4 bytes to a0 (arg0 at entry) +0x11c (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x1002c9b8 stores 4 bytes to a0 (arg0 at entry) +0xf4.
  5 such accesses, including `lw` at 0x1002c9c0, 0x1002c9f4, 0x1002fff0, loads 4 bytes from a0 (arg0 at entry) +0xf4.
  The `lw` at 0x1002c9cc loads 4 bytes from abs 0x100a9708.
  The `sw` at 0x1002c9ec stores 4 bytes to a0 (arg0 at entry) +0x10c (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `lw` at 0x1002ca00 loads 4 bytes from abs 0x100a970c.
  The `sw` at 0x1002ca20 stores 4 bytes to a0 (arg0 at entry) +0x110 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x1002cb20 stores 4 bytes to a0 (arg0 at entry) +0x30 (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x1002cb28 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x1002cb34 loads 4 bytes from abs 0x100a96f8.
  The `sw` at 0x1002cc60 stores 4 bytes to a0 (arg0 at entry) +0x24 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1002cd7c stores 4 bytes to a0 (arg0 at entry) +0x74 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1002ce84 stores 4 bytes to a0 (arg0 at entry) +0xa8 (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x1002cef8 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `sw` at 0x1002cf94 stores 4 bytes to a0 (arg0 at entry) +0x28 (value ret(XtVaCreateManagedWidget)).
  3 such accesses, including `lw` at 0x1002cf9c, 0x100302c0, 0x10030af8, loads 4 bytes from a0 (arg0 at entry) +0x28.
  2 such accesses, including `lw` at 0x1002cfa8, 0x10030b04, loads 4 bytes from abs 0x100a96f4.
  The `lw` at 0x1002d02c loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `sw` at 0x1002d0c8 stores 4 bytes to a0 (arg0 at entry) +0x78 (value ret(XtVaCreateManagedWidget)).
  3 such accesses, including `lw` at 0x1002d0d0, 0x100302e8, 0x10030b1c, loads 4 bytes from a0 (arg0 at entry) +0x78.
  2 such accesses, including `lw` at 0x1002d0dc, 0x10030b28, loads 4 bytes from abs 0x100a9714.
  The `lw` at 0x1002d160 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `sw` at 0x1002d1fc stores 4 bytes to a0 (arg0 at entry) +0xac (value ret(XtVaCreateManagedWidget)).
  3 such accesses, including `lw` at 0x1002d204, 0x10030310, 0x10030b40, loads 4 bytes from a0 (arg0 at entry) +0xac.
  2 such accesses, including `lw` at 0x1002d210, 0x10030b4c, loads 4 bytes from abs 0x100a972c.
  The `sw` at 0x1002d330 stores 4 bytes to a0 (arg0 at entry) +0x84 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1002d428 stores 4 bytes to a0 (arg0 at entry) +0x80 (value ret(XtVaCreateManagedWidget)).
  3 such accesses, including `lw` at 0x1002d430, 0x10030360, 0x10030b64, loads 4 bytes from a0 (arg0 at entry) +0x80.
  2 such accesses, including `lw` at 0x1002d43c, 0x10030b70, loads 4 bytes from abs 0x100a9718.
  The `lw` at 0x1002d4d4 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `sw` at 0x1002d59c stores 4 bytes to a0 (arg0 at entry) +0x7c (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1002d6bc stores 4 bytes to a0 (arg0 at entry) +0xb4 (value ret(XtVaCreateManagedWidget)).
  2 such accesses, including `lw` at 0x1002d6c4, 0x10030398, loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `lw` at 0x1002d6d0 loads 4 bytes from abs 0x100a974c.
  The `sw` at 0x1002d834 stores 4 bytes to a0 (arg0 at entry) +0x40 (value ret(XtVaCreateManagedWidget)).
  2 such accesses, including `lw` at 0x1002d83c, 0x100303d0, loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x1002d848 loads 4 bytes from abs 0x100a9704.
  The `lw` at 0x1002d864 loads 4 bytes from abs 0x100a92d8.
  The `lw` at 0x1002d868 loads 4 bytes from sym(xmFrameWidgetClass) +0x0.
  The `lw` at 0x1002d8c0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0x1002d984 stores 4 bytes to a0 (arg0 at entry) +0x68 (value ret(XtVaCreateManagedWidget)).
  2 such accesses, including `lw` at 0x1002d99c, 0x1002e4a8, loads 4 bytes from a0 (arg0 at entry) +0x68.
  The `sw` at 0x1002d9f4 stores 4 bytes to a0 (arg0 at entry) +0x64 (value ret(XtVaCreateManagedWidget)).
  9 such accesses, including `lw` at 0x1002da0c, 0x1002db14, 0x1002dc30, loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `sw` at 0x1002dafc stores 4 bytes to a0 (arg0 at entry) +0xc4 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1002dc18 stores 4 bytes to a0 (arg0 at entry) +0xc0 (value ret(XtVaCreateManagedWidget)).
  2 such accesses, including `lw` at 0x1002dc24, 0x1002f990, loads 4 bytes from abs 0x100a9138.
  2 such accesses, including `lw` at 0x1002dc28, 0x1002f994, loads 4 bytes from sym(xmPushButtonWidgetClass) +0x0.
  The `sw` at 0x1002dd20 stores 4 bytes to a0 (arg0 at entry) +0xb0 (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x1002dd28 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lw` at 0x1002dd34 loads 4 bytes from abs 0x100a9730.
  The `sw` at 0x1002de4c stores 4 bytes to a0 (arg0 at entry) +0x5c (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1002df44 stores 4 bytes to a0 (arg0 at entry) +0x58 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1002e04c stores 4 bytes to a0 (arg0 at entry) +0x70 (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x1002e0c0 loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `sw` at 0x1002e160 stores 4 bytes to a0 (arg0 at entry) +0x6c (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1002e268 stores 4 bytes to a0 (arg0 at entry) +0x9c (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1002e350 stores 4 bytes to a0 (arg0 at entry) +0xb8 (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x1002e358 loads 4 bytes from a0 (arg0 at entry) +0xc4.
  The `lw` at 0x1002e368 loads 4 bytes from a0 (arg0 at entry) +0xc0.
  The `lw` at 0x1002e378 loads 4 bytes from a0 (arg0 at entry) +0xc0.
  42 such accesses, including `lw` at 0x1002e380, 0x1002e3b8, 0x1002e3f0, loads 4 bytes from abs 0x100a9328.
  The `lw` at 0x1002e390 loads 4 bytes from a0 (arg0 at entry) +0xc0.
  2 such accesses, including `lw` at 0x1002e3a0, 0x1002e438, loads 4 bytes from a0 (arg0 at entry) +0x6c.
  2 such accesses, including `lw` at 0x1002e3b0, 0x1002e448, loads 4 bytes from a0 (arg0 at entry) +0x6c.
  The `lw` at 0x1002e3c8 loads 4 bytes from a0 (arg0 at entry) +0x5c.
  The `lw` at 0x1002e3d8 loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `lw` at 0x1002e3e8 loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `lw` at 0x1002e400 loads 4 bytes from a0 (arg0 at entry) +0x58.
  2 such accesses, including `lw` at 0x1002e410, 0x1002e470, loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `lw` at 0x1002e428 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0x1002e460 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0x1002e480 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `sw` at 0x1002e510 stores 4 bytes to a0 (arg0 at entry) +0x98 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1002e60c stores 4 bytes to a0 (arg0 at entry) +0xd0 (value ret(XtVaCreateManagedWidget)).
  3 such accesses, including `lw` at 0x1002e614, 0x100303f8, 0x10030b88, loads 4 bytes from a0 (arg0 at entry) +0xd0.
  2 such accesses, including `lw` at 0x1002e620, 0x10030b94, loads 4 bytes from abs 0x100a975c.
  The `sw` at 0x1002e72c stores 4 bytes to a0 (arg0 at entry) +0x8c (value ret(XtVaCreateManagedWidget)).
  3 such accesses, including `lw` at 0x1002e734, 0x10030430, 0x10030bac, loads 4 bytes from a0 (arg0 at entry) +0x8c.
  2 such accesses, including `lw` at 0x1002e740, 0x10030bb8, loads 4 bytes from abs 0x100a971c.
  The `lw` at 0x1002e7d8 loads 4 bytes from a0 (arg0 at entry) +0x8c.
  The `sw` at 0x1002e884 stores 4 bytes to a0 (arg0 at entry) +0xcc (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1002e9b4 stores 4 bytes to a0 (arg0 at entry) +0x88 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1002ea3c stores 4 bytes to a0 (arg0 at entry) +0x108.
  3 such accesses, including `lw` at 0x1002ea44, 0x1002ea78, 0x100304b8, loads 4 bytes from a0 (arg0 at entry) +0x108.
  The `lw` at 0x1002ea50 loads 4 bytes from abs 0x100a977c.
  The `sw` at 0x1002ea70 stores 4 bytes to a0 (arg0 at entry) +0x140 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `lw` at 0x1002ea84 loads 4 bytes from abs 0x100a9784.
  The `sw` at 0x1002eaa4 stores 4 bytes to a0 (arg0 at entry) +0x144 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x1002eb2c stores 4 bytes to a0 (arg0 at entry) +0x104.
  5 such accesses, including `lw` at 0x1002eb34, 0x1002eb68, 0x1002eb9c, loads 4 bytes from a0 (arg0 at entry) +0x104.
  The `lw` at 0x1002eb40 loads 4 bytes from abs 0x100a9768.
  The `sw` at 0x1002eb60 stores 4 bytes to a0 (arg0 at entry) +0x134 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `lw` at 0x1002eb74 loads 4 bytes from abs 0x100a9770.
  The `sw` at 0x1002eb94 stores 4 bytes to a0 (arg0 at entry) +0x138 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `lw` at 0x1002eba8 loads 4 bytes from abs 0x100a9774.
  The `sw` at 0x1002ebc8 stores 4 bytes to a0 (arg0 at entry) +0x13c (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `lw` at 0x1002ec50 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `sw` at 0x1002ed10 stores 4 bytes to a0 (arg0 at entry) +0xa4 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1002ee0c stores 4 bytes to a0 (arg0 at entry) +0x3c (value ret(XtVaCreateManagedWidget)).
  3 such accesses, including `lw` at 0x1002ee14, 0x10030700, 0x10030bd0, loads 4 bytes from a0 (arg0 at entry) +0x3c.
  2 such accesses, including `lw` at 0x1002ee20, 0x10030bdc, loads 4 bytes from abs 0x100a9700.
  The `sw` at 0x1002ef5c stores 4 bytes to a0 (arg0 at entry) +0x38 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1002efe4 stores 4 bytes to a0 (arg0 at entry) +0xfc.
  7 such accesses, including `lw` at 0x1002efec, 0x1002f020, 0x1002f054, loads 4 bytes from a0 (arg0 at entry) +0xfc.
  The `lw` at 0x1002eff8 loads 4 bytes from abs 0x100a9734.
  The `sw` at 0x1002f018 stores 4 bytes to a0 (arg0 at entry) +0x124 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `lw` at 0x1002f02c loads 4 bytes from abs 0x100a973c.
  The `sw` at 0x1002f04c stores 4 bytes to a0 (arg0 at entry) +0x12c (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `lw` at 0x1002f060 loads 4 bytes from abs 0x100a9738.
  The `sw` at 0x1002f080 stores 4 bytes to a0 (arg0 at entry) +0x128 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `lw` at 0x1002f094 loads 4 bytes from abs 0x100a9788.
  The `sw` at 0x1002f0b4 stores 4 bytes to a0 (arg0 at entry) +0x148 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `lw` at 0x1002f0c8 loads 4 bytes from abs 0x100a9710.
  The `sw` at 0x1002f0e8 stores 4 bytes to a0 (arg0 at entry) +0x114 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x1002f218 stores 4 bytes to a0 (arg0 at entry) +0xa0 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1002f344 stores 4 bytes to a0 (arg0 at entry) +0xbc (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1002f464 stores 4 bytes to a0 (arg0 at entry) +0x2c (value ret(XtVaCreateManagedWidget)).
  2 such accesses, including `lw` at 0x1002f4d8, 0x1002f638, loads 4 bytes from a0 (arg0 at entry) +0xbc.
  The `lw` at 0x1002f4f0 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0x1002f5a0 stores 4 bytes to a0 (arg0 at entry) +0x90 (value ret(XtVaCreateManagedWidget)).
  2 such accesses, including `lw` at 0x1002f5a8, 0x10030bf4, loads 4 bytes from a0 (arg0 at entry) +0x90.
  2 such accesses, including `lw` at 0x1002f5b4, 0x10030c00, loads 4 bytes from abs 0x100a9720.
  The `lw` at 0x1002f650 loads 4 bytes from a0 (arg0 at entry) +0xbc.
  The `sw` at 0x1002f700 stores 4 bytes to a0 (arg0 at entry) +0xd4 (value ret(XtVaCreateManagedWidget)).
  2 such accesses, including `lw` at 0x1002f708, 0x10030c18, loads 4 bytes from a0 (arg0 at entry) +0xd4.
  2 such accesses, including `lw` at 0x1002f714, 0x10030c24, loads 4 bytes from abs 0x100a9760.
  The `sw` at 0x1002f830 stores 4 bytes to a0 (arg0 at entry) +0xf0 (value ret(XtVaCreateManagedWidget)).
  3 such accesses, including `lw` at 0x1002f838, 0x10030934, 0x10030c3c, loads 4 bytes from a0 (arg0 at entry) +0xf0.
  2 such accesses, including `lw` at 0x1002f844, 0x10030c48, loads 4 bytes from abs 0x100a9780.
  The `sw` at 0x1002f960 stores 4 bytes to a0 (arg0 at entry) +0xe0 (value ret(XtVaCreateManagedWidget)).
  3 such accesses, including `lw` at 0x1002f968, 0x1003096c, 0x10030c60, loads 4 bytes from a0 (arg0 at entry) +0xe0.
  2 such accesses, including `lw` at 0x1002f974, 0x10030c6c, loads 4 bytes from abs 0x100a976c.
  The `lw` at 0x1002f9fc loads 4 bytes from a0 (arg0 at entry) +0x68.
  The `sw` at 0x1002fad0 stores 4 bytes to a0 (arg0 at entry) +0x34 (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x1002fad8 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lw` at 0x1002fae4 loads 4 bytes from abs 0x100a96fc.
  The `lw` at 0x1002fb78 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `sw` at 0x1002fc28 stores 4 bytes to a0 (arg0 at entry) +0xec (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1002fd6c stores 4 bytes to a0 (arg0 at entry) +0x94 (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x1002fd84 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x1002fd9c loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lw` at 0x1002fdac loads 4 bytes from a0 (arg0 at entry) +0x48.
  6 such accesses, including `lw` at 0x1002fdd4, 0x1002fdfc, 0x10030298, loads 4 bytes from a0 (arg0 at entry) +0x84.
  10 such accesses, including `lw` at 0x1002fe18, 0x1002ffdc, 0x1002fff4, loads 4 bytes from abs 0x100a933c.
  The `lw` at 0x1002fe6c loads 4 bytes from a0 (arg0 at entry) +0x30.
  4 such accesses, including `lw` at 0x1002ff18, 0x1002ff50, 0x1002ff88, loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0x1002ff28 loads 4 bytes from a0 (arg0 at entry) +0xe8.
  The `lw` at 0x1002ff40 loads 4 bytes from a0 (arg0 at entry) +0xe8.
  The `lw` at 0x1002ff60 loads 4 bytes from a0 (arg0 at entry) +0xd8.
  The `lw` at 0x1002ff78 loads 4 bytes from a0 (arg0 at entry) +0xdc.
  The `lw` at 0x1002ff98 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0x1003016c loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x10030218 loads 4 bytes from a0 (arg0 at entry) +0x24.
  2 such accesses, including `lw` at 0x10030228, 0x10030260, loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0x10030238 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x10030250 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0x10030270 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0x10030288 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0x100302a8 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lw` at 0x10030338 loads 4 bytes from a0 (arg0 at entry) +0x84.
  3 such accesses, including `lw` at 0x10030348, 0x10030440, 0x10030478, loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0x10030370 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lw` at 0x10030380 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lw` at 0x100303a8 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x100303b8 loads 4 bytes from a0 (arg0 at entry) +0x40.
  2 such accesses, including `lw` at 0x100303e0, 0x10030764, loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The `lw` at 0x10030408 loads 4 bytes from a0 (arg0 at entry) +0xcc.
  The `lw` at 0x10030418 loads 4 bytes from a0 (arg0 at entry) +0xcc.
  The `lw` at 0x10030450 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0x10030468 loads 4 bytes from a0 (arg0 at entry) +0xcc.
  The `lw` at 0x10030490 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0x100304a0 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `lw` at 0x10030528 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `lw` at 0x1003063c loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `lw` at 0x10030654 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `lw` at 0x10030710 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x10030720 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x10030754 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x100307dc loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The `lw` at 0x100307f4 loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The `lw` at 0x1003089c loads 4 bytes from a0 (arg0 at entry) +0xa0.
  5 such accesses, including `lw` at 0x100308ac, 0x100308d4, 0x10030944, loads 4 bytes from a0 (arg0 at entry) +0x94.
  The `lw` at 0x100308c4 loads 4 bytes from a0 (arg0 at entry) +0xbc.
  The `lw` at 0x100308e4 loads 4 bytes from a0 (arg0 at entry) +0xf0.
  The `lw` at 0x100308fc loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x1003090c loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `lw` at 0x1003091c loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `lw` at 0x10030954 loads 4 bytes from a0 (arg0 at entry) +0xec.
  The `lw` at 0x1003098c loads 4 bytes from a0 (arg0 at entry) +0x94.
  The `lw` at 0x100309a4 loads 4 bytes from a0 (arg0 at entry) +0xec.
  The `sw` at 0x10030a28 stores 4 bytes to unknown (base unknown).
  The `sw` at 0x10030a44 stores 4 bytes to unknown (base unknown).
  The `lw` at 0x10030a50 loads 4 bytes from abs 0x100a9e28.
  The `lw` at 0x10030a60 loads 4 bytes from unknown (base unknown).
  The `sw` at 0x10030abc stores 4 bytes to unknown (base unknown) (value 0x8).
  The `sw` at 0x10030acc stores 4 bytes to a0 (arg0 at entry) +0x1ac.
  The `beq` branch at 0x1002c078 targets 0x1002c0cc, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1002c89c targets 0x1002c8f0, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1002c958 targets 0x1002c9ac, is taken when a4(=ret(__nw__GUi)) == 0, and falls through when a4(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1002e9dc targets 0x1002ea30, is taken when a3(=ret(__nw__GUi)) == 0, and falls through when a3(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1002eacc targets 0x1002eb20, is taken when a3(=ret(__nw__GUi)) == 0, and falls through when a3(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1002ef84 targets 0x1002efd8, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100309d8 targets 0x10030aa4 and is never taken: its operands are equal constants, so execution always falls through.
  The `beq` branch at 0x100309e8 targets 0x10030a88, is taken when a2(unknown) == a3(=0x1), and falls through when a2(unknown) != a3(=0x1).
  The `beq` branch at 0x100309f8 targets 0x10030a88, is taken when a4(unknown) == a5(=0x8), and falls through when a4(unknown) != a5(=0x8).
  The `beq` branch at 0x10030a08 targets 0x10030a88, is taken when a6(unknown) == a7(=0xb), and falls through when a6(unknown) != a7(=0xb).
  The `bne` branch at 0x10030a9c targets 0x100309e0, is taken when t0(unknown) < 0xf (signed), and falls through when t0(unknown) >= 0xf (signed).
  The `jalr` at 0x1002b8e4 calls `setDefaultResources__11VkComponentGP10_WidgetRecPCPc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultEncoderFormUIResources__13EncoderFormUI), a3=a3 at entry (arg3).
  The `jalr` at 0x1002b914 calls `XtVaCreateWidget` with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=sym(_XmStrings)+9052, a4=0x1, a5=0x0.
  The `jalr` at 0x1002b940 calls `installDestroyHandler__11VkComponentGv` with a0=a0 at entry (arg0), a1=ret(XtVaCreateWidget), a2=a0 at entry (arg0), a3=a0 at entry (arg0).
  The `jalr` at 0x1002ba34 calls `XtVaCreateManagedWidget` with a0=0x100950a0, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002ba64 calls `XtAddCallback` with a0=[a0+68], a1=sym(_XmStrings)+10557, a2=sym(setFlickerFilterCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002bb6c calls `XtVaCreateManagedWidget` with a0=0x100950b8, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x4, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x1002bb9c calls `XtAddCallback` with a0=[a0+76], a1=sym(_XmStrings)+4683, a2=sym(safeAreaPercentCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002bc8c calls `XtVaCreateManagedWidget` with a0=0x100950c8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002bd8c calls `XtVaCreateManagedWidget` with a0=0x100950e0, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002bdbc calls `XtAddCallback` with a0=[a0+72], a1=sym(_XmStrings)+10557, a2=sym(setLetterBoxCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002bec0 calls `XtVaCreateManagedWidget` with a0=0x100950f0, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002bef0 calls `XtAddCallback` with a0=[a0+200], a1=sym(_XmStrings)+10557, a2=sym(useGammaCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002c01c calls `XtVaCreateManagedWidget` with a0=0x10095100, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002c04c calls `XtAddCallback` with a0=[a0+32], a1=sym(_XmStrings)+10557, a2=sym(alphaChannelCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002c060 calls `__nw__GUi` with a0=0x4c, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1002c0a8 calls `__ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv` with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10095118, a3=0x0, a4=0x0.
  The `jalr` at 0x1002c0fc calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+248], a1=0x10095130, a2=sym(progressiveCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002c130 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+248], a1=0x10095148, a2=sym(interleavedCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002c164 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+248], a1=0x10095160, a2=sym(stackedCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002c310 calls `XtVaCreateManagedWidget` with a0=0x10095170, a1=[sym(sgDialWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7044, a4=0x0, a5=sym(_XmStrings)+9620, a6=0x0, a7=0x10095180.
  The `jalr` at 0x1002c340 calls `XtAddCallback` with a0=[a0+228], a1=sym(_XmStrings)+10557, a2=sym(yFilterSizeCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002c43c calls `XtVaCreateManagedWidget` with a0=0x100951c0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002c558 calls `XtVaCreateManagedWidget` with a0=0x100951d8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002c71c calls `XtVaCreateManagedWidget` with a0=0x100951f0, a1=[sym(sgDialWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7044, a4=0x0, a5=sym(_XmStrings)+9620, a6=0x0, a7=0x10095180.
  The `jalr` at 0x1002c74c calls `XtAddCallback` with a0=[a0+216], a1=sym(_XmStrings)+10557, a2=sym(xFilterSizeCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002c864 calls `XtVaCreateManagedWidget` with a0=0x10095200, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002c884 calls `__nw__GUi` with a0=0x4c, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0x1002c8cc calls `__ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv` with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10095210, a3=0x0, a4=0x0.
  The `jalr` at 0x1002c920 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+256], a1=0x10095228, a2=sym(sourceChannelCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002c940 calls `__nw__GUi` with a0=0x4c, a1=unknown, a2=unknown, a3=a0 at entry (arg0).
  The `jalr` at 0x1002c988 calls `__ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv` with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10095240, a3=0x0, a4=0x0, a5=0x1.
  The `jalr` at 0x1002c9dc calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+244], a1=0x10095258, a2=sym(encoderNTSCCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002ca10 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+244], a1=0x10095270, a2=sym(enocderPALCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002cb10 calls `XtVaCreateManagedWidget` with a0=0x10095288, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002cb40 calls `XtAddCallback` with a0=[a0+48], a1=sym(_XmStrings)+10557, a2=sym(channelEnableCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002cc50 calls `XtVaCreateManagedWidget` with a0=0x100952a0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002cd6c calls `XtVaCreateManagedWidget` with a0=0x100952b0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002ce74 calls `XtVaCreateManagedWidget` with a0=0x100952c0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002cf84 calls `XtVaCreateManagedWidget` with a0=0x100952d0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002cfb4 calls `XtAddCallback` with a0=[a0+40], a1=sym(_XmStrings)+4683, a2=sym(bGammaCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002d0b8 calls `XtVaCreateManagedWidget` with a0=0x100952e0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002d0e8 calls `XtAddCallback` with a0=[a0+120], a1=sym(_XmStrings)+4683, a2=sym(gGammaCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002d1ec calls `XtVaCreateManagedWidget` with a0=0x100952f0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002d21c calls `XtAddCallback` with a0=[a0+172], a1=sym(_XmStrings)+4683, a2=sym(rGammaCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002d320 calls `XtVaCreateManagedWidget` with a0=0x10095300, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002d418 calls `XtVaCreateManagedWidget` with a0=0x10095310, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002d448 calls `XtAddCallback` with a0=[a0+128], a1=sym(_XmStrings)+4683, a2=sym(gainCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002d58c calls `XtVaCreateManagedWidget` with a0=0x10095320, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002d6ac calls `XtVaCreateManagedWidget` with a0=0x10095330, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002d6dc calls `XtAddCallback` with a0=[a0+180], a1=sym(_XmStrings)+10557, a2=sym(setupCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002d824 calls `XtVaCreateManagedWidget` with a0=0x10095340, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+9609.
  The `jalr` at 0x1002d854 calls `XtAddCallback` with a0=[a0+64], a1=sym(_XmStrings)+10557, a2=sym(ditherCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002d974 calls `XtVaCreateManagedWidget` with a0=0x10095350, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x3, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x1002d9e4 calls `XtVaCreateManagedWidget` with a0=0x10095368, a1=[sym(xmFormWidgetClass)], a2=[a0+104], a3=sym(_XmStrings)+9052, a4=0x1, a5=sym(_XmStrings)+5427, a6=0x1, a7=sym(XtStrings)+872.
  The `jalr` at 0x1002daec calls `XtVaCreateManagedWidget` with a0=0x10095378, a1=[sym(xmLabelWidgetClass)], a2=[a0+100], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002dc08 calls `XtVaCreateManagedWidget` with a0=0x10095388, a1=[sym(xmLabelWidgetClass)], a2=[a0+100], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002dd10 calls `XtVaCreateManagedWidget` with a0=0x10095398, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+100], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002dd40 calls `XtAddCallback` with a0=[a0+176], a1=sym(_XmStrings)+4683, a2=sym(restoreSizeCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002de3c calls `XtVaCreateManagedWidget` with a0=0x100953b0, a1=[sym(xmLabelWidgetClass)], a2=[a0+100], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002df34 calls `XtVaCreateManagedWidget` with a0=0x100aa4d8, a1=[sym(xmLabelWidgetClass)], a2=[a0+100], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002e03c calls `XtVaCreateManagedWidget` with a0=0x100953c0, a1=[sym(xmLabelWidgetClass)], a2=[a0+100], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002e150 calls `XtVaCreateManagedWidget` with a0=0x100953d0, a1=[sym(xmLabelWidgetClass)], a2=[a0+100], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002e258 calls `XtVaCreateManagedWidget` with a0=0x100953e0, a1=[sym(xmLabelWidgetClass)], a2=[a0+100], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002e340 calls `XtVaCreateManagedWidget` with a0=0x100aa4e0, a1=[sym(xmLabelWidgetClass)], a2=[a0+100], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002e384 calls `XtVaSetValues` with a0=[a0+196], a1=sym(_XmStrings)+10305, a2=[a0+192], a3=sym(_XmStrings)+7562, a4=[a0+192], a5=0x0.
  The `jalr` at 0x1002e3bc calls `XtVaSetValues` with a0=[a0+192], a1=sym(_XmStrings)+10305, a2=[a0+108], a3=sym(_XmStrings)+7562, a4=[a0+108], a5=0x0.
  The `jalr` at 0x1002e3f4 calls `XtVaSetValues` with a0=[a0+92], a1=sym(_XmStrings)+10305, a2=[a0+88], a3=sym(_XmStrings)+7562, a4=[a0+88], a5=0x0.
  The `jalr` at 0x1002e41c calls `XtVaSetValues` with a0=[a0+88], a1=sym(_XmStrings)+10305, a2=[a0+184], a3=0x0.
  The `jalr` at 0x1002e454 calls `XtVaSetValues` with a0=[a0+112], a1=sym(_XmStrings)+10305, a2=[a0+108], a3=sym(_XmStrings)+7562, a4=[a0+108], a5=0x0.
  The `jalr` at 0x1002e48c calls `XtVaSetValues` with a0=[a0+156], a1=sym(_XmStrings)+10305, a2=[a0+184], a3=sym(_XmStrings)+7562, a4=[a0+184], a5=0x0.
  The `jalr` at 0x1002e500 calls `XtVaCreateManagedWidget` with a0=0x100953f8, a1=[sym(xmLabelWidgetClass)], a2=[a0+104], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+5427, a6=0x2, a7=sym(_XmStrings)+5350.
  The `jalr` at 0x1002e5fc calls `XtVaCreateManagedWidget` with a0=0x10095410, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x4, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x1002e62c calls `XtAddCallback` with a0=[a0+208], a1=sym(_XmStrings)+4683, a2=sym(vPhaseCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002e71c calls `XtVaCreateManagedWidget` with a0=0x10095420, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x4, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x1002e74c calls `XtAddCallback` with a0=[a0+140], a1=sym(_XmStrings)+4683, a2=sym(hPhaseCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002e874 calls `XtVaCreateManagedWidget` with a0=0x10095430, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002e9a4 calls `XtVaCreateManagedWidget` with a0=0x10095440, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002e9c4 calls `__nw__GUi` with a0=0x4c, a1=unknown, a2=a0 at entry (arg0), a3=unknown.
  The `jalr` at 0x1002ea0c calls `__ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv` with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10095450, a3=0x0, a4=0x0.
  The `jalr` at 0x1002ea60 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+264], a1=0x10095460, a2=sym(yLockedCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002ea94 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+264], a1=0x10095470, a2=sym(yPixelCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002eab4 calls `__nw__GUi` with a0=0x4c, a1=unknown, a2=a0 at entry (arg0), a3=unknown.
  The `jalr` at 0x1002eafc calls `__ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv` with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10095480, a3=0x0, a4=0x0.
  The `jalr` at 0x1002eb50 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+260], a1=0x10095490, a2=sym(xLockedCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002eb84 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+260], a1=0x100954a0, a2=sym(xPixelCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002ebb8 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+260], a1=0x100954b0, a2=sym(xTileCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002ed00 calls `XtVaCreateManagedWidget` with a0=0x100954c0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002edfc calls `XtVaCreateManagedWidget` with a0=0x100954d0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x4, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x1002ee2c calls `XtAddCallback` with a0=[a0+60], a1=sym(_XmStrings)+4683, a2=sym(cursorPriorityCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002ef4c calls `XtVaCreateManagedWidget` with a0=0x100954e8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002ef6c calls `__nw__GUi` with a0=0x4c, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0x1002efb4 calls `__ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv` with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10095500, a3=0x0, a4=0x0.
  The `jalr` at 0x1002f008 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+252], a1=0x10095518, a2=sym(rgb10Callback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002f03c calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+252], a1=0x10095528, a2=sym(rgba10Callback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002f070 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+252], a1=0x10095538, a2=sym(rgb12Callback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002f0a4 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+252], a1=0x10095548, a2=sym(zCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002f0d8 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+252], a1=0x10095558, a2=sym(fsCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1002f208 calls `XtVaCreateManagedWidget` with a0=0x10095568, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002f334 calls `XtVaCreateManagedWidget` with a0=0x10095580, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x2, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002f454 calls `XtVaCreateManagedWidget` with a0=0x10095590, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x2, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002f590 calls `XtVaCreateManagedWidget` with a0=0x100955a0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002f5c0 calls `XtAddCallback` with a0=[a0+144], a1=sym(_XmStrings)+4683, a2=sym(heightCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002f6f0 calls `XtVaCreateManagedWidget` with a0=0x100955b0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002f720 calls `XtAddCallback` with a0=[a0+212], a1=sym(_XmStrings)+4683, a2=sym(widthCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002f820 calls `XtVaCreateManagedWidget` with a0=0x100955c0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002f850 calls `XtAddCallback` with a0=[a0+240], a1=sym(_XmStrings)+4683, a2=sym(yOriginCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002f950 calls `XtVaCreateManagedWidget` with a0=0x100955d0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002f980 calls `XtAddCallback` with a0=[a0+224], a1=sym(_XmStrings)+4683, a2=sym(xOriginCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002fac0 calls `XtVaCreateManagedWidget` with a0=0x100955e0, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1002faf0 calls `XtAddCallback` with a0=[a0+52], a1=sym(_XmStrings)+4683, a2=sym(closeChannelCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1002fc18 calls `XtVaCreateManagedWidget` with a0=0x100aa4e8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x2, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1002fd5c calls `XtVaCreateManagedWidget` with a0=0x100955f8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+4724, a6=0x0, a7=sym(_XmStrings)+7513.
  The `jalr` at 0x1002fd90 calls `XtVaSetValues` with a0=[a0+76], a1=sym(_XmStrings)+7562, a2=[a0+80], a3=0x0.
  The `jalr` at 0x1002fdb8 calls `XtVaSetValues` with a0=[a0+80], a1=sym(_XmStrings)+7562, a2=[a0+72], a3=0x0.
  The `jalr` at 0x1002fde0 calls `XtVaSetValues` with a0=[a0+200], a1=sym(_XmStrings)+10305, a2=[a0+132], a3=0x0.
  The `jalr` at 0x1002fe08 calls `XtVaSetValues` with a0=[a0+32], a1=sym(_XmStrings)+10305, a2=[a0+132], a3=0x0.
  The `jalr` at 0x1002fe1c calls `baseWidget__10VkMenuItemCGv` with a0=[a0+248], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1002fefc calls `XtVaSetValues` with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x1, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x1002ff34 calls `XtVaSetValues` with a0=[a0+228], a1=sym(_XmStrings)+10305, a2=[a0+96], a3=sym(_XmStrings)+7562, a4=[a0+232], a5=0x0.
  The `jalr` at 0x1002ff6c calls `XtVaSetValues` with a0=[a0+232], a1=sym(_XmStrings)+10305, a2=[a0+96], a3=sym(_XmStrings)+7562, a4=[a0+216], a5=0x0.
  The `jalr` at 0x1002ffa4 calls `XtVaSetValues` with a0=[a0+220], a1=sym(_XmStrings)+10305, a2=[a0+96], a3=sym(_XmStrings)+7562, a4=[a0+96], a5=0x0.
  The `jalr` at 0x1002ffcc calls `XtVaSetValues` with a0=[a0+216], a1=sym(_XmStrings)+10305, a2=[a0+96], a3=0x0.
  The `jalr` at 0x1002ffe0 calls `baseWidget__10VkMenuItemCGv` with a0=[a0+256], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1002fff8 calls `baseWidget__10VkMenuItemCGv` with a0=[a0+244], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10030010 calls `baseWidget__10VkMenuItemCGv` with a0=[a0+244], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10030108 calls `XtVaSetValues` with a0=unknown, a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x1003011c calls `baseWidget__10VkMenuItemCGv` with a0=[a0+244], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003020c calls `XtVaSetValues` with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x3, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x1, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x10030244 calls `XtVaSetValues` with a0=[a0+36], a1=sym(_XmStrings)+10305, a2=[a0+168], a3=sym(_XmStrings)+7562, a4=[a0+120], a5=0x0.
  The `jalr` at 0x1003027c calls `XtVaSetValues` with a0=[a0+116], a1=sym(_XmStrings)+10305, a2=[a0+168], a3=sym(_XmStrings)+7562, a4=[a0+172], a5=0x0.
  The `jalr` at 0x100302b4 calls `XtVaSetValues` with a0=[a0+168], a1=sym(_XmStrings)+10305, a2=[a0+132], a3=sym(_XmStrings)+7562, a4=[a0+132], a5=0x0.
  The `jalr` at 0x100302dc calls `XtVaSetValues` with a0=[a0+40], a1=sym(_XmStrings)+10305, a2=[a0+132], a3=0x0.
  The `jalr` at 0x10030304 calls `XtVaSetValues` with a0=[a0+120], a1=sym(_XmStrings)+10305, a2=[a0+132], a3=0x0.
  The `jalr` at 0x1003032c calls `XtVaSetValues` with a0=[a0+172], a1=sym(_XmStrings)+10305, a2=[a0+132], a3=0x0.
  The `jalr` at 0x10030354 calls `XtVaSetValues` with a0=[a0+132], a1=sym(_XmStrings)+10305, a2=[a0+136], a3=0x0.
  The `jalr` at 0x1003038c calls `XtVaSetValues` with a0=[a0+128], a1=sym(_XmStrings)+10305, a2=[a0+124], a3=sym(_XmStrings)+7562, a4=[a0+124], a5=0x0.
  The `jalr` at 0x100303c4 calls `XtVaSetValues` with a0=[a0+180], a1=sym(_XmStrings)+10305, a2=[a0+64], a3=sym(_XmStrings)+7562, a4=[a0+64], a5=0x0.
  The `jalr` at 0x100303ec calls `XtVaSetValues` with a0=[a0+64], a1=sym(_XmStrings)+10305, a2=[a0+160], a3=0x0.
  The `jalr` at 0x10030424 calls `XtVaSetValues` with a0=[a0+208], a1=sym(_XmStrings)+10305, a2=[a0+204], a3=sym(_XmStrings)+7562, a4=[a0+204], a5=0x0.
  The `jalr` at 0x1003045c calls `XtVaSetValues` with a0=[a0+140], a1=sym(_XmStrings)+10305, a2=[a0+136], a3=sym(_XmStrings)+7562, a4=[a0+136], a5=0x0.
  The `jalr` at 0x10030484 calls `XtVaSetValues` with a0=[a0+204], a1=sym(_XmStrings)+10305, a2=[a0+136], a3=0x0.
  The `jalr` at 0x100304ac calls `XtVaSetValues` with a0=[a0+136], a1=sym(_XmStrings)+10305, a2=[a0+164], a3=0x0.
  The `jalr` at 0x100304c0 calls `baseWidget__10VkMenuItemCGv` with a0=[a0+264], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100304d8 calls `baseWidget__10VkMenuItemCGv` with a0=[a0+260], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100305d8 calls `XtVaSetValues` with a0=unknown, a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x100305ec calls `baseWidget__10VkMenuItemCGv` with a0=[a0+260], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100306f4 calls `XtVaSetValues` with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x1003072c calls `XtVaSetValues` with a0=[a0+60], a1=sym(_XmStrings)+10305, a2=[a0+56], a3=sym(_XmStrings)+7562, a4=[a0+56], a5=0x0.
  The `jalr` at 0x10030740 calls `baseWidget__10VkMenuItemCGv` with a0=[a0+252], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10030778 calls `XtVaSetValues` with a0=[a0+56], a1=sym(_XmStrings)+10305, a2=[a0+160], a3=sym(_XmStrings)+7562, a4=ret(baseWidget__10VkMenuItemCGv), a5=0x0.
  The `jalr` at 0x1003078c calls `baseWidget__10VkMenuItemCGv` with a0=[a0+252], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10030890 calls `XtVaSetValues` with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x100308b8 calls `XtVaSetValues` with a0=[a0+160], a1=sym(_XmStrings)+10305, a2=[a0+148], a3=0x0.
  The `jalr` at 0x100308f0 calls `XtVaSetValues` with a0=[a0+188], a1=sym(_XmStrings)+10305, a2=[a0+148], a3=sym(_XmStrings)+7562, a4=[a0+240], a5=0x0.
  The `jalr` at 0x10030928 calls `XtVaSetValues` with a0=[a0+44], a1=sym(_XmStrings)+10305, a2=[a0+212], a3=sym(_XmStrings)+7562, a4=[a0+212], a5=0x0.
  The `jalr` at 0x10030960 calls `XtVaSetValues` with a0=[a0+240], a1=sym(_XmStrings)+10305, a2=[a0+148], a3=sym(_XmStrings)+7562, a4=[a0+236], a5=0x0.
  The `jalr` at 0x10030998 calls `XtVaSetValues` with a0=[a0+224], a1=sym(_XmStrings)+10305, a2=[a0+148], a3=sym(_XmStrings)+7562, a4=[a0+148], a5=0x0.
  The `jalr` at 0x100309c0 calls `XtVaSetValues` with a0=[a0+236], a1=sym(_XmStrings)+10305, a2=[a0+148], a3=0x0.
  The `jalr` at 0x10030a74 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+256], a1=unknown, a2=sym(sourceChannelCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a7=0xb.
  The `jalr` at 0x10030aec calls `XtAddCallback` with a0=[a0+76], a1=sym(_XmStrings)+7765, a2=sym(safeAreaPercentCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030b10 calls `XtAddCallback` with a0=[a0+40], a1=sym(_XmStrings)+7765, a2=sym(bGammaCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030b34 calls `XtAddCallback` with a0=[a0+120], a1=sym(_XmStrings)+7765, a2=sym(gGammaCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030b58 calls `XtAddCallback` with a0=[a0+172], a1=sym(_XmStrings)+7765, a2=sym(rGammaCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030b7c calls `XtAddCallback` with a0=[a0+128], a1=sym(_XmStrings)+7765, a2=sym(gainCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030ba0 calls `XtAddCallback` with a0=[a0+208], a1=sym(_XmStrings)+7765, a2=sym(vPhaseCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030bc4 calls `XtAddCallback` with a0=[a0+140], a1=sym(_XmStrings)+7765, a2=sym(hPhaseCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030be8 calls `XtAddCallback` with a0=[a0+60], a1=sym(_XmStrings)+7765, a2=sym(cursorPriorityCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030c0c calls `XtAddCallback` with a0=[a0+144], a1=sym(_XmStrings)+7765, a2=sym(heightCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030c30 calls `XtAddCallback` with a0=[a0+212], a1=sym(_XmStrings)+7765, a2=sym(widthCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030c54 calls `XtAddCallback` with a0=[a0+240], a1=sym(_XmStrings)+7765, a2=sym(yOriginCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10030c78 calls `XtAddCallback` with a0=[a0+224], a1=sym(_XmStrings)+7765, a2=sym(xOriginCallback__13EncoderFormUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The return at 0x10030c8c has v0 = ret(XtAddCallback).
- `className__13EncoderFormUIGv` in `usr/gfx/ircombine` at 0x10030cb0 (n32).
  It occupies 64 bytes.
  The `lw` at 0x10030cc8 loads 4 bytes from abs 0x100a90d4.
  The return at 0x10030ce8 has v0 = 0x10095608.
- `alphaChannel__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030cf0 (n32).
  It occupies 44 bytes.
  The return at 0x10030d14 has v0 = unknown.
- `bGamma__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030d20 (n32).
  It occupies 44 bytes.
  The return at 0x10030d44 has v0 = unknown.
- `channelEnable__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030d50 (n32).
  It occupies 44 bytes.
  The return at 0x10030d74 has v0 = unknown.
- `closeChannel__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030d80 (n32).
  It occupies 44 bytes.
  The return at 0x10030da4 has v0 = unknown.
- `cursorPriority__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030db0 (n32).
  It occupies 44 bytes.
  The return at 0x10030dd4 has v0 = unknown.
- `dither__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030de0 (n32).
  It occupies 44 bytes.
  The return at 0x10030e04 has v0 = unknown.
- `encoderNTSC__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030e10 (n32).
  It occupies 44 bytes.
  The return at 0x10030e34 has v0 = unknown.
- `enocderPAL__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030e40 (n32).
  It occupies 44 bytes.
  The return at 0x10030e64 has v0 = unknown.
- `fs__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030e70 (n32).
  It occupies 44 bytes.
  The return at 0x10030e94 has v0 = unknown.
- `gGamma__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030ea0 (n32).
  It occupies 44 bytes.
  The return at 0x10030ec4 has v0 = unknown.
- `gain__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030ed0 (n32).
  It occupies 44 bytes.
  The return at 0x10030ef4 has v0 = unknown.
- `hPhase__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030f00 (n32).
  It occupies 44 bytes.
  The return at 0x10030f24 has v0 = unknown.
- `height__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030f30 (n32).
  It occupies 44 bytes.
  The return at 0x10030f54 has v0 = unknown.
- `interleaved__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030f60 (n32).
  It occupies 44 bytes.
  The return at 0x10030f84 has v0 = unknown.
- `progressive__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030f90 (n32).
  It occupies 44 bytes.
  The return at 0x10030fb4 has v0 = unknown.
- `rGamma__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030fc0 (n32).
  It occupies 44 bytes.
  The return at 0x10030fe4 has v0 = unknown.
- `restoreSize__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10030ff0 (n32).
  It occupies 44 bytes.
  The return at 0x10031014 has v0 = unknown.
- `rgb10__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031020 (n32).
  It occupies 44 bytes.
  The return at 0x10031044 has v0 = unknown.
- `rgb12__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031050 (n32).
  It occupies 44 bytes.
  The return at 0x10031074 has v0 = unknown.
- `rgba10__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031080 (n32).
  It occupies 44 bytes.
  The return at 0x100310a4 has v0 = unknown.
- `safeAreaPercent__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100310b0 (n32).
  It occupies 44 bytes.
  The return at 0x100310d4 has v0 = unknown.
- `setFlickerFilter__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100310e0 (n32).
  It occupies 44 bytes.
  The return at 0x10031104 has v0 = unknown.
- `setLetterBox__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031110 (n32).
  It occupies 44 bytes.
  The return at 0x10031134 has v0 = unknown.
- `setup__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031140 (n32).
  It occupies 44 bytes.
  The return at 0x10031164 has v0 = unknown.
- `sourceChannel__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031170 (n32).
  It occupies 44 bytes.
  The return at 0x10031194 has v0 = unknown.
- `stacked__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100311a0 (n32).
  It occupies 44 bytes.
  The return at 0x100311c4 has v0 = unknown.
- `useGamma__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100311d0 (n32).
  It occupies 44 bytes.
  The return at 0x100311f4 has v0 = unknown.
- `vPhase__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031200 (n32).
  It occupies 44 bytes.
  The return at 0x10031224 has v0 = unknown.
- `width__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031230 (n32).
  It occupies 44 bytes.
  The return at 0x10031254 has v0 = unknown.
- `xFilterSize__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031260 (n32).
  It occupies 44 bytes.
  The return at 0x10031284 has v0 = unknown.
- `xLocked__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031290 (n32).
  It occupies 44 bytes.
  The return at 0x100312b4 has v0 = unknown.
- `xOrigin__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100312c0 (n32).
  It occupies 44 bytes.
  The return at 0x100312e4 has v0 = unknown.
- `xPixel__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100312f0 (n32).
  It occupies 44 bytes.
  The return at 0x10031314 has v0 = unknown.
- `xTile__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031320 (n32).
  It occupies 44 bytes.
  The return at 0x10031344 has v0 = unknown.
- `yFilterSize__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031350 (n32).
  It occupies 44 bytes.
  The return at 0x10031374 has v0 = unknown.
- `yLocked__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031380 (n32).
  It occupies 44 bytes.
  The return at 0x100313a4 has v0 = unknown.
- `yOrigin__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100313b0 (n32).
  It occupies 44 bytes.
  The return at 0x100313d4 has v0 = unknown.
- `yPixel__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100313e0 (n32).
  It occupies 44 bytes.
  The return at 0x10031404 has v0 = unknown.
- `z__13EncoderFormUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10031410 (n32).
  It occupies 44 bytes.
  The return at 0x10031434 has v0 = unknown.
- `alphaChannelCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031440 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10031470 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031474 loads 4 bytes from [a1+8] +0x9c.
  The `lw` at 0x1003148c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031490 loads 4 bytes from [a1+8] +0xa4.
  The `jalr` at 0x10031494 calls `(unknown callee)` with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7fc30.
  The return at 0x100314b0 has v0 = ret(unknown).
- `bGammaCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100314c0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x100314f0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100314f4 loads 4 bytes from [a1+8] +0xa8.
  The `lw` at 0x1003150c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031510 loads 4 bytes from [a1+8] +0xb0.
  The `jalr` at 0x10031514 calls `(unknown callee)` with a0=([[a1+8]+168] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7fbb0.
  The return at 0x10031530 has v0 = ret(unknown).
- `channelEnableCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031540 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10031570 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031574 loads 4 bytes from [a1+8] +0xb4.
  The `lw` at 0x1003158c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031590 loads 4 bytes from [a1+8] +0xbc.
  The `jalr` at 0x10031594 calls `(unknown callee)` with a0=([[a1+8]+180] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7fb30.
  The return at 0x100315b0 has v0 = ret(unknown).
- `closeChannelCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100315c0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x100315f0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100315f4 loads 4 bytes from [a1+8] +0xc0.
  The `lw` at 0x1003160c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031610 loads 4 bytes from [a1+8] +0xc8.
  The `jalr` at 0x10031614 calls `(unknown callee)` with a0=([[a1+8]+192] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7fab0.
  The return at 0x10031630 has v0 = ret(unknown).
- `cursorPriorityCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031640 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10031670 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031674 loads 4 bytes from [a1+8] +0xcc.
  The `lw` at 0x1003168c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031690 loads 4 bytes from [a1+8] +0xd4.
  The `jalr` at 0x10031694 calls `(unknown callee)` with a0=([[a1+8]+204] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7fa30.
  The return at 0x100316b0 has v0 = ret(unknown).
- `ditherCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100316c0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x100316f0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100316f4 loads 4 bytes from [a1+8] +0xd8.
  The `lw` at 0x1003170c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031710 loads 4 bytes from [a1+8] +0xe0.
  The `jalr` at 0x10031714 calls `(unknown callee)` with a0=([[a1+8]+216] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f9b0.
  The return at 0x10031730 has v0 = ret(unknown).
- `encoderNTSCCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031740 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10031770 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031774 loads 4 bytes from [a1+8] +0xe4.
  The `lw` at 0x1003178c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031790 loads 4 bytes from [a1+8] +0xec.
  The `jalr` at 0x10031794 calls `(unknown callee)` with a0=([[a1+8]+228] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f930.
  The return at 0x100317b0 has v0 = ret(unknown).
- `enocderPALCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100317c0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x100317f0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100317f4 loads 4 bytes from [a1+8] +0xf0.
  The `lw` at 0x1003180c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031810 loads 4 bytes from [a1+8] +0xf8.
  The `jalr` at 0x10031814 calls `(unknown callee)` with a0=([[a1+8]+240] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f8b0.
  The return at 0x10031830 has v0 = ret(unknown).
- `fsCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031840 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10031870 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031874 loads 4 bytes from [a1+8] +0xfc.
  The `lw` at 0x1003188c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031890 loads 4 bytes from [a1+8] +0x104.
  The `jalr` at 0x10031894 calls `(unknown callee)` with a0=([[a1+8]+252] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f830.
  The return at 0x100318b0 has v0 = ret(unknown).
- `gGammaCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100318c0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x100318f0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100318f4 loads 4 bytes from [a1+8] +0x108.
  The `lw` at 0x1003190c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031910 loads 4 bytes from [a1+8] +0x110.
  The `jalr` at 0x10031914 calls `(unknown callee)` with a0=([[a1+8]+264] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f7b0.
  The return at 0x10031930 has v0 = ret(unknown).
- `gainCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031940 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10031970 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031974 loads 4 bytes from [a1+8] +0x114.
  The `lw` at 0x1003198c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031990 loads 4 bytes from [a1+8] +0x11c.
  The `jalr` at 0x10031994 calls `(unknown callee)` with a0=([[a1+8]+276] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f730.
  The return at 0x100319b0 has v0 = ret(unknown).
- `hPhaseCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100319c0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x100319f0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100319f4 loads 4 bytes from [a1+8] +0x120.
  The `lw` at 0x10031a0c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031a10 loads 4 bytes from [a1+8] +0x128.
  The `jalr` at 0x10031a14 calls `(unknown callee)` with a0=([[a1+8]+288] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f6b0.
  The return at 0x10031a30 has v0 = ret(unknown).
- `heightCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031a40 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10031a70 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031a74 loads 4 bytes from [a1+8] +0x12c.
  The `lw` at 0x10031a8c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031a90 loads 4 bytes from [a1+8] +0x134.
  The `jalr` at 0x10031a94 calls `(unknown callee)` with a0=([[a1+8]+300] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f630.
  The return at 0x10031ab0 has v0 = ret(unknown).
- `interleavedCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031ac0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10031af0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031af4 loads 4 bytes from [a1+8] +0x138.
  The `lw` at 0x10031b0c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031b10 loads 4 bytes from [a1+8] +0x140.
  The `jalr` at 0x10031b14 calls `(unknown callee)` with a0=([[a1+8]+312] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f5b0.
  The return at 0x10031b30 has v0 = ret(unknown).
- `progressiveCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031b40 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10031b70 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031b74 loads 4 bytes from [a1+8] +0x144.
  The `lw` at 0x10031b8c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031b90 loads 4 bytes from [a1+8] +0x14c.
  The `jalr` at 0x10031b94 calls `(unknown callee)` with a0=([[a1+8]+324] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f530.
  The return at 0x10031bb0 has v0 = ret(unknown).
- `rGammaCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031bc0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10031bf0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031bf4 loads 4 bytes from [a1+8] +0x150.
  The `lw` at 0x10031c0c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031c10 loads 4 bytes from [a1+8] +0x158.
  The `jalr` at 0x10031c14 calls `(unknown callee)` with a0=([[a1+8]+336] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f4b0.
  The return at 0x10031c30 has v0 = ret(unknown).
- `restoreSizeCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031c40 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10031c70 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031c74 loads 4 bytes from [a1+8] +0x15c.
  The `lw` at 0x10031c8c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031c90 loads 4 bytes from [a1+8] +0x164.
  The `jalr` at 0x10031c94 calls `(unknown callee)` with a0=([[a1+8]+348] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f430.
  The return at 0x10031cb0 has v0 = ret(unknown).
- `rgb10Callback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031cc0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10031cf0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031cf4 loads 4 bytes from [a1+8] +0x168.
  The `lw` at 0x10031d0c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031d10 loads 4 bytes from [a1+8] +0x170.
  The `jalr` at 0x10031d14 calls `(unknown callee)` with a0=([[a1+8]+360] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f3b0.
  The return at 0x10031d30 has v0 = ret(unknown).
- `rgb12Callback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031d40 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10031d70 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031d74 loads 4 bytes from [a1+8] +0x174.
  The `lw` at 0x10031d8c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031d90 loads 4 bytes from [a1+8] +0x17c.
  The `jalr` at 0x10031d94 calls `(unknown callee)` with a0=([[a1+8]+372] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f330.
  The return at 0x10031db0 has v0 = ret(unknown).
- `rgba10Callback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031dc0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10031df0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031df4 loads 4 bytes from [a1+8] +0x180.
  The `lw` at 0x10031e0c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031e10 loads 4 bytes from [a1+8] +0x188.
  The `jalr` at 0x10031e14 calls `(unknown callee)` with a0=([[a1+8]+384] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f2b0.
  The return at 0x10031e30 has v0 = ret(unknown).
- `safeAreaPercentCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031e40 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10031e70 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031e74 loads 4 bytes from [a1+8] +0x18c.
  The `lw` at 0x10031e8c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031e90 loads 4 bytes from [a1+8] +0x194.
  The `jalr` at 0x10031e94 calls `(unknown callee)` with a0=([[a1+8]+396] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f230.
  The return at 0x10031eb0 has v0 = ret(unknown).
- `setFlickerFilterCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031ec0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10031ef0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031ef4 loads 4 bytes from [a1+8] +0x198.
  The `lw` at 0x10031f0c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031f10 loads 4 bytes from [a1+8] +0x1a0.
  The `jalr` at 0x10031f14 calls `(unknown callee)` with a0=([[a1+8]+408] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f1b0.
  The return at 0x10031f30 has v0 = ret(unknown).
- `setLetterBoxCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031f40 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10031f70 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031f74 loads 4 bytes from [a1+8] +0x1a4.
  The `lw` at 0x10031f8c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031f90 loads 4 bytes from [a1+8] +0x1ac.
  The `jalr` at 0x10031f94 calls `(unknown callee)` with a0=([[a1+8]+420] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f130.
  The return at 0x10031fb0 has v0 = ret(unknown).
- `setupCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10031fc0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10031ff0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10031ff4 loads 4 bytes from [a1+8] +0x1b0.
  The `lw` at 0x1003200c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032010 loads 4 bytes from [a1+8] +0x1b8.
  The `jalr` at 0x10032014 calls `(unknown callee)` with a0=([[a1+8]+432] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f0b0.
  The return at 0x10032030 has v0 = ret(unknown).
- `sourceChannelCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10032040 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10032070 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032074 loads 4 bytes from [a1+8] +0x1bc.
  The `lw` at 0x1003208c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032090 loads 4 bytes from [a1+8] +0x1c4.
  The `jalr` at 0x10032094 calls `(unknown callee)` with a0=([[a1+8]+444] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7f030.
  The return at 0x100320b0 has v0 = ret(unknown).
- `stackedCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100320c0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x100320f0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100320f4 loads 4 bytes from [a1+8] +0x1c8.
  The `lw` at 0x1003210c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032110 loads 4 bytes from [a1+8] +0x1d0.
  The `jalr` at 0x10032114 calls `(unknown callee)` with a0=([[a1+8]+456] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7efb0.
  The return at 0x10032130 has v0 = ret(unknown).
- `useGammaCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10032140 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10032170 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032174 loads 4 bytes from [a1+8] +0x1d4.
  The `lw` at 0x1003218c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032190 loads 4 bytes from [a1+8] +0x1dc.
  The `jalr` at 0x10032194 calls `(unknown callee)` with a0=([[a1+8]+468] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7ef30.
  The return at 0x100321b0 has v0 = ret(unknown).
- `vPhaseCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100321c0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x100321f0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100321f4 loads 4 bytes from [a1+8] +0x1e0.
  The `lw` at 0x1003220c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032210 loads 4 bytes from [a1+8] +0x1e8.
  The `jalr` at 0x10032214 calls `(unknown callee)` with a0=([[a1+8]+480] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7eeb0.
  The return at 0x10032230 has v0 = ret(unknown).
- `widthCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10032240 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10032270 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032274 loads 4 bytes from [a1+8] +0x1ec.
  The `lw` at 0x1003228c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032290 loads 4 bytes from [a1+8] +0x1f4.
  The `jalr` at 0x10032294 calls `(unknown callee)` with a0=([[a1+8]+492] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7ee30.
  The return at 0x100322b0 has v0 = ret(unknown).
- `xFilterSizeCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100322c0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x100322f0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100322f4 loads 4 bytes from [a1+8] +0x1f8.
  The `lw` at 0x1003230c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032310 loads 4 bytes from [a1+8] +0x200.
  The `jalr` at 0x10032314 calls `(unknown callee)` with a0=([[a1+8]+504] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7edb0.
  The return at 0x10032330 has v0 = ret(unknown).
- `xLockedCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10032340 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10032370 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032374 loads 4 bytes from [a1+8] +0x204.
  The `lw` at 0x1003238c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032390 loads 4 bytes from [a1+8] +0x20c.
  The `jalr` at 0x10032394 calls `(unknown callee)` with a0=([[a1+8]+516] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7ed30.
  The return at 0x100323b0 has v0 = ret(unknown).
- `xOriginCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100323c0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x100323f0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100323f4 loads 4 bytes from [a1+8] +0x210.
  The `lw` at 0x1003240c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032410 loads 4 bytes from [a1+8] +0x218.
  The `jalr` at 0x10032414 calls `(unknown callee)` with a0=([[a1+8]+528] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7ecb0.
  The return at 0x10032430 has v0 = ret(unknown).
- `xPixelCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10032440 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10032470 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032474 loads 4 bytes from [a1+8] +0x21c.
  The `lw` at 0x1003248c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032490 loads 4 bytes from [a1+8] +0x224.
  The `jalr` at 0x10032494 calls `(unknown callee)` with a0=([[a1+8]+540] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7ec30.
  The return at 0x100324b0 has v0 = ret(unknown).
- `xTileCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100324c0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x100324f0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100324f4 loads 4 bytes from [a1+8] +0x228.
  The `lw` at 0x1003250c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032510 loads 4 bytes from [a1+8] +0x230.
  The `jalr` at 0x10032514 calls `(unknown callee)` with a0=([[a1+8]+552] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7ebb0.
  The return at 0x10032530 has v0 = ret(unknown).
- `yFilterSizeCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10032540 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10032570 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032574 loads 4 bytes from [a1+8] +0x234.
  The `lw` at 0x1003258c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032590 loads 4 bytes from [a1+8] +0x23c.
  The `jalr` at 0x10032594 calls `(unknown callee)` with a0=([[a1+8]+564] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7eb30.
  The return at 0x100325b0 has v0 = ret(unknown).
- `yLockedCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100325c0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x100325f0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100325f4 loads 4 bytes from [a1+8] +0x240.
  The `lw` at 0x1003260c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032610 loads 4 bytes from [a1+8] +0x248.
  The `jalr` at 0x10032614 calls `(unknown callee)` with a0=([[a1+8]+576] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7eab0.
  The return at 0x10032630 has v0 = ret(unknown).
- `yOriginCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10032640 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10032670 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032674 loads 4 bytes from [a1+8] +0x24c.
  The `lw` at 0x1003268c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032690 loads 4 bytes from [a1+8] +0x254.
  The `jalr` at 0x10032694 calls `(unknown callee)` with a0=([[a1+8]+588] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7ea30.
  The return at 0x100326b0 has v0 = ret(unknown).
- `yPixelCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100326c0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x100326f0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x100326f4 loads 4 bytes from [a1+8] +0x258.
  The `lw` at 0x1003270c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032710 loads 4 bytes from [a1+8] +0x260.
  The `jalr` at 0x10032714 calls `(unknown callee)` with a0=([[a1+8]+600] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7e9b0.
  The return at 0x10032730 has v0 = ret(unknown).
- `zCallback__13EncoderFormUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10032740 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10032770 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032774 loads 4 bytes from [a1+8] +0x264.
  The `lw` at 0x1003278c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x10032790 loads 4 bytes from [a1+8] +0x26c.
  The `jalr` at 0x10032794 calls `(unknown callee)` with a0=([[a1+8]+612] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x7e930.
  The return at 0x100327b0 has v0 = ret(unknown).
- `__ct__5Form1GPCcP10_WidgetReci` in `usr/gfx/ircombine` at 0x10032c10 (n32).
  It occupies 168 bytes.
  The `lw` at 0x10032c44 loads 4 bytes from abs 0x100a97a8.
  The `lw` at 0x10032c50 loads 4 bytes from abs 0x100a9e40.
  The `sw` at 0x10032c58 stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__5Form1)).
  The `sw` at 0x10032c64 stores 4 bytes to a0 (arg0 at entry) +0x14c (value a3).
  The `lw` at 0x10032c68 loads 4 bytes from abs 0x100a9ee8.
  The `sw` at 0x10032c88 stores 4 bytes to a0 (arg0 at entry) +0x148.
  The `jal` at 0x10032c48 calls `__ct__7Form1UIGPCcP10_WidgetRec` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10032c9c has v0 = a0.
- `__ct__5Form1GPCc` in `usr/gfx/ircombine` at 0x10032cc0 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10032ce8 loads 4 bytes from abs 0x100a97ac.
  The `lw` at 0x10032cf4 loads 4 bytes from abs 0x100a9e40.
  The `sw` at 0x10032cfc stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__5Form1)).
  The `jal` at 0x10032cec calls `__ct__7Form1UIGPCc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10032d10 has v0 = a0.
- `__dt__5Form1Gv` in `usr/gfx/ircombine` at 0x10032d30 (n32).
  It occupies 148 bytes.
  The `lw` at 0x10032d5c loads 4 bytes from abs 0x100a9e40.
  The `sw` at 0x10032d64 stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__5Form1)).
  The `lw` at 0x10032d70 loads 4 bytes from abs 0x100a97b0.
  The `lw` at 0x10032d90 loads 4 bytes from abs 0x100a9250.
  The `beq` branch at 0x10032d54 targets 0x10032d9c, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x10032d84 targets 0x10032d9c, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The `jal` at 0x10032d74 calls `__dt__7Form1UIGv` with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10032d94 calls `__dl__GPv` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The return at 0x10032da8 has v0 = unknown.
- `className__5Form1Gv` in `usr/gfx/ircombine` at 0x10032dd0 (n32).
  It occupies 60 bytes.
  The return at 0x10032e04 has v0 = 0x100aa4f0.
- `CreateForm1__5Form1SGPCcP10_WidgetRec` in `usr/gfx/ircombine` at 0x10032e10 (n32).
  It occupies 192 bytes.
  The `lw` at 0x10032e38 loads 4 bytes from abs 0x100a92fc.
  The `lw` at 0x10032e68 loads 4 bytes from abs 0x100a9798.
  The `beq` branch at 0x10032e48 targets 0x10032e88, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `jalr` at 0x10032e3c calls `__nw__GUi` with a0=0x150, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10032e6c calls `__ct__5Form1GPCcP10_WidgetReci` with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0.
  The return at 0x10032eb4 has v0 = unknown.
- `update__5Form1Gv` in `usr/gfx/ircombine` at 0x10032f10 (n32).
  It occupies 1936 bytes.
  The `lw` at 0x10032f30 loads 4 bytes from abs 0x100a97a4.
  The `lw` at 0x10032f40 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  21 such accesses, including `lw` at 0x10032f44, 0x10032fb0, 0x10032fdc, loads 4 bytes from abs 0x100a9dd0.
  23 such accesses, including `lw` at 0x10032f5c, 0x10032ff4, 0x10033028, loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `lw` at 0x10032f60 loads 4 bytes from [a0+328] +0x25c.
  12 such accesses, including `lw` at 0x10032f64, 0x10032ffc, 0x10033158, loads 4 bytes from abs 0x100a9de8.
  4 such accesses, including `lw` at 0x10032f7c, 0x100331ac, 0x10033218, loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `lw` at 0x10032f80 loads 4 bytes from [a0+328] +0x258.
  4 such accesses, including `lw` at 0x10032f9c, 0x100331bc, 0x1003322c, loads 4 bytes from abs 0x100a9314.
  The `lw` at 0x10032fac loads 4 bytes from a0 (arg0 at entry) +0x8c.
  5 such accesses, including `lw` at 0x10032fc8, 0x10033030, 0x100331e8, loads 4 bytes from abs 0x100a9df0.
  The `lw` at 0x10032fd8 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x10032ff8 loads 4 bytes from [a0+328] +0x140.
  The `lw` at 0x1003300c loads 4 bytes from a0 (arg0 at entry) +0x64.
  The `lw` at 0x10033040 loads 4 bytes from a0 (arg0 at entry) +0xf8.
  The `lw` at 0x1003304c loads 4 bytes from [a0+328] +0x134.
  6 such accesses, including `lw` at 0x10033050, 0x10033070, 0x10033090, loads 4 bytes from abs 0x100a9338.
  The `lw` at 0x10033060 loads 4 bytes from a0 (arg0 at entry) +0x100.
  The `lw` at 0x1003306c loads 4 bytes from [a0+328] +0x148.
  The `lw` at 0x10033080 loads 4 bytes from a0 (arg0 at entry) +0x104.
  The `lw` at 0x1003308c loads 4 bytes from [a0+328] +0x14c.
  The `lw` at 0x100330a4 loads 4 bytes from [a0+328] +0x28c.
  2 such accesses, including `lw` at 0x100330d4, 0x100330f4, loads 4 bytes from a0 (arg0 at entry) +0xfc.
  2 such accesses, including `lw` at 0x10033114, 0x10033168, loads 4 bytes from a0 (arg0 at entry) +0xf4.
  The `lw` at 0x10033120 loads 4 bytes from [a0+328] +0x2ac.
  The `lw` at 0x10033134 loads 4 bytes from a0 (arg0 at entry) +0x50.
  2 such accesses, including `lw` at 0x10033154, 0x10033188, loads 4 bytes from [a0+328] +0x4e0.
  The `lw` at 0x1003316c loads 4 bytes from abs 0x100a933c.
  5 such accesses, including `lw` at 0x10033194, 0x10033630, 0x10033648, loads 4 bytes from abs 0x100a9340.
  The `lw` at 0x100331cc loads 4 bytes from a0 (arg0 at entry) +0x6c.
  2 such accesses, including `lw` at 0x10033200, 0x10033280, loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `lw` at 0x10033204 loads 4 bytes from [a0+328] +0x484.
  The `lw` at 0x1003323c loads 4 bytes from a0 (arg0 at entry) +0xc8.
  The `lw` at 0x10033268 loads 4 bytes from abs 0x100a90d4.
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
  2 such accesses, including `lw` at 0x10033464, 0x10033658, loads 4 bytes from a0 (arg0 at entry) +0x28.
  4 such accesses, including `lw` at 0x10033488, 0x100334bc, 0x100334f0, loads 4 bytes from abs 0x100a9dec.
  2 such accesses, including `lw` at 0x10033498, 0x10033640, loads 4 bytes from a0 (arg0 at entry) +0x74.
  2 such accesses, including `lw` at 0x100334cc, 0x10033628, loads 4 bytes from a0 (arg0 at entry) +0xac.
  2 such accesses, including `lw` at 0x10033500, 0x10033670, loads 4 bytes from a0 (arg0 at entry) +0xd8.
  The `lw` at 0x10033520 loads 4 bytes from [a0+328] +0x2c0.
  The `lw` at 0x10033534 loads 4 bytes from a0 (arg0 at entry) +0x80.
  3 such accesses, including `lw` at 0x10033564, 0x10033574, 0x100335a4, loads 4 bytes from abs 0x100a9ef0.
  The `lw` at 0x10033568 loads 4 bytes from sym(vkwindow) +0x0.
  2 such accesses, including `lw` at 0x10033578, 0x100335a8, loads 4 bytes from sym(vkwindow) +0x0.
  2 such accesses, including `lw` at 0x1003357c, 0x100335ac, loads 4 bytes from abs 0x100a9c40.
  The `lw` at 0x10033594 loads 4 bytes from abs 0x100a9ee8.
  The `lw` at 0x10033598 loads 4 bytes from sym(combination) +0x238.
  The `lw` at 0x100335bc loads 4 bytes from ret(getTarget__18VkwindowMainWindowGv) +0x10.
  The `lw` at 0x100335f8 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `lw` at 0x100335fc loads 4 bytes from [a0+328] +0x2c0.
  The `beq` branch at 0x100330b0 targets 0x100330d0, is taken when a1(=[[a0+328]+652]) == a2(=0x1), and falls through when a1(=[[a0+328]+652]) != a2(=0x1).
  The `beq` branch at 0x100330c0 targets 0x100330f0, is taken when a2(=[[a0+328]+652]) == a3(=0x3), and falls through when a2(=[[a0+328]+652]) != a3(=0x3).
  The `beq` branch at 0x1003356c targets 0x10033684, is taken when a2(=[sym(vkwindow)]) == 0, and falls through when a2(=[sym(vkwindow)]) != 0.
  The `beq` branch at 0x1003358c targets 0x10033684, is taken when v0(=ret(getTarget__18VkwindowMainWindowGv)) == 0, and falls through when v0(=ret(getTarget__18VkwindowMainWindowGv)) != 0.
  The `bne` branch at 0x1003359c targets 0x100335dc, is taken when a1(=[sym(combination)+568]) != 0, and falls through when a1(=[sym(combination)+568]) == 0.
  The `beq` branch at 0x100335c4 targets 0x100335dc, is taken when a1(=[ret(getTarget__18VkwindowMainWindowGv)+16]) == a2(=0x2), and falls through when a1(=[ret(getTarget__18VkwindowMainWindowGv)+16]) != a2(=0x2).
  The `beq` branch at 0x100335ec targets 0x10033618, is taken when a4(=one of 0x0, 0x1) == 0, and falls through when a4(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x10033600 targets 0x10033618, is taken when a6(=[[a0+328]+704]) == 0, and falls through when a6(=[[a0+328]+704]) != 0.
  The `jal` at 0x10032f34 calls `update_fast__5Form1Gv` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10032f48 calls `EZ__GP10_WidgetRec` with a0=[a0+224], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10032f68 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+604], a2=unknown, a3=unknown.
  The `jalr` at 0x10032fa0 calls `sprintf` with a0=sp-208, a1=0x100aa4f8, a2=unknown, a3=unknown.
  The `jal` at 0x10032fb4 calls `EZ__GP10_WidgetRec` with a0=[a0+140], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10032fcc calls `__as__9EZWrapperGPCc` with a0=ret(EZ__GP10_WidgetRec), a1=sp-208, a2=unknown, a3=unknown.
  The `jal` at 0x10032fe0 calls `EZ__GP10_WidgetRec` with a0=[a0+68], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10033000 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+320], a2=unknown, a3=unknown.
  The `jal` at 0x10033014 calls `EZ__GP10_WidgetRec` with a0=[a0+100], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10033034 calls `__as__9EZWrapperGPCc` with a0=ret(EZ__GP10_WidgetRec), a1=[a0+328]+340, a2=unknown, a3=unknown.
  The `jalr` at 0x10033054 calls `set__12VkOptionMenuGi` with a0=[a0+248], a1=[[a0+328]+308], a2=unknown, a3=unknown.
  The `jalr` at 0x10033074 calls `set__12VkOptionMenuGi` with a0=[a0+256], a1=[[a0+328]+328], a2=unknown, a3=unknown.
  The `jalr` at 0x10033094 calls `set__12VkOptionMenuGi` with a0=[a0+260], a1=[[a0+328]+332], a2=unknown, a3=unknown.
  The `jalr` at 0x100330e0 calls `set__12VkOptionMenuGi` with a0=[a0+252], a1=0x0, a2=0x1, a3=unknown.
  The `jalr` at 0x10033100 calls `set__12VkOptionMenuGi` with a0=[a0+252], a1=0x1, a2=[[a0+328]+652], a3=0x3.
  The `jalr` at 0x10033128 calls `set__12VkOptionMenuGi` with a0=[a0+244], a1=[[a0+328]+684], a2=unknown, a3=unknown.
  The `jal` at 0x1003313c calls `EZ__GP10_WidgetRec` with a0=[a0+80], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1003315c calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+1248], a2=unknown, a3=unknown.
  The `jalr` at 0x10033170 calls `baseWidget__10VkMenuItemCGv` with a0=[a0+244], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10033198 calls `XtSetSensitive` with a0=ret(baseWidget__10VkMenuItemCGv), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100331c0 calls `sprintf` with a0=sp-144, a1=0x100aa500, a2=unknown, a3=unknown.
  The `jal` at 0x100331d4 calls `EZ__GP10_WidgetRec` with a0=[a0+108], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x100331ec calls `__as__9EZWrapperGPCc` with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=unknown, a3=unknown.
  The `jalr` at 0x10033230 calls `sprintf` with a0=sp-144, a1=0x100aa500, a2=unknown, a3=[[a0+328]+1156].
  The `jal` at 0x10033244 calls `EZ__GP10_WidgetRec` with a0=[a0+200], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1003325c calls `__as__9EZWrapperGPCc` with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=unknown, a3=unknown.
  The `jalr` at 0x1003328c calls `sprintf` with a0=sp-144, a1=0x100960a0, a2=[[a0+328]+296], a3=[[a0+328]+300].
  The `jal` at 0x100332a0 calls `EZ__GP10_WidgetRec` with a0=[a0+156], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x100332b8 calls `__as__9EZWrapperGPCc` with a0=ret(EZ__GP10_WidgetRec), a1=sp-144, a2=unknown, a3=unknown.
  The `jal` at 0x100332cc calls `EZ__GP10_WidgetRec` with a0=[a0+176], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x100332ec calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+664], a2=unknown, a3=unknown.
  The `jal` at 0x10033300 calls `EZ__GP10_WidgetRec` with a0=[a0+120], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10033320 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+668], a2=unknown, a3=unknown.
  The `jal` at 0x10033334 calls `EZ__GP10_WidgetRec` with a0=[a0+44], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10033354 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+672], a2=unknown, a3=unknown.
  The `jal` at 0x10033368 calls `EZ__GP10_WidgetRec` with a0=[a0+212], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10033388 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+656], a2=unknown, a3=unknown.
  The `jal` at 0x1003339c calls `EZ__GP10_WidgetRec` with a0=[a0+184], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x100333bc calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+648], a2=unknown, a3=unknown.
  The `jal` at 0x100333d0 calls `EZ__GP10_WidgetRec` with a0=[a0+72], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x100333f0 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+324], a2=unknown, a3=unknown.
  The `jal` at 0x10033404 calls `EZ__GP10_WidgetRec` with a0=[a0+32], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10033424 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+316], a2=unknown, a3=unknown.
  The `jal` at 0x10033438 calls `EZ__GP10_WidgetRec` with a0=[a0+56], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10033458 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+676], a2=unknown, a3=unknown.
  The `jal` at 0x1003346c calls `EZ__GP10_WidgetRec` with a0=[a0+40], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1003348c calls `__as__9EZWrapperGf` with a0=ret(EZ__GP10_WidgetRec), a1=[a0+328], a2=unknown, a3=unknown; fp f13=[[a0+328]+624].
  The `jal` at 0x100334a0 calls `EZ__GP10_WidgetRec` with a0=[a0+116], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x100334c0 calls `__as__9EZWrapperGf` with a0=ret(EZ__GP10_WidgetRec), a1=[a0+328], a2=unknown, a3=unknown; fp f13=[[a0+328]+620].
  The `jal` at 0x100334d4 calls `EZ__GP10_WidgetRec` with a0=[a0+172], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x100334f4 calls `__as__9EZWrapperGf` with a0=ret(EZ__GP10_WidgetRec), a1=[a0+328], a2=unknown, a3=unknown; fp f13=[[a0+328]+616].
  The `jal` at 0x10033508 calls `EZ__GP10_WidgetRec` with a0=[a0+216], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10033528 calls `__as__9EZWrapperGi` with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+704], a2=unknown, a3=unknown.
  The `jal` at 0x1003353c calls `EZ__GP10_WidgetRec` with a0=[a0+128], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1003355c calls `__as__9EZWrapperGf` with a0=ret(EZ__GP10_WidgetRec), a1=[a0+328], a2=unknown, a3=unknown; fp f13=[[a0+328]+612].
  The `jal` at 0x10033580 calls `getTarget__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=unknown, a2=[sym(vkwindow)], a3=unknown.
  The `jal` at 0x100335b0 calls `getTarget__18VkwindowMainWindowGv` with a0=[sym(vkwindow)], a1=[sym(combination)+568], a2=unknown, a3=unknown.
  The `jalr` at 0x10033634 calls `XtSetSensitive` with a0=[a0+172], a1=one of 0x0, 0x1, a2=unknown, a3=unknown, a4=one of 0x0, 0x1, a5=one of 0x0, 0x1.
  The `jalr` at 0x1003364c calls `XtSetSensitive` with a0=[a0+116], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10033664 calls `XtSetSensitive` with a0=[a0+40], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003367c calls `XtSetSensitive` with a0=[a0+216], a1=unknown, a2=unknown, a3=unknown.
  The return at 0x10033698 has v0 = unknown.
