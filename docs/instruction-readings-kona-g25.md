# Instruction readings from hostfacts

These entries record established instruction facts read from whole routine bodies in the identified binaries. They describe software behavior, not hardware behavior, and each instruction locator names an address in that binary build.

Skipped routines: 24,383 have status located, understood, or no-software-dependency, 980 named-only routines already have exact binary and routine entries, and 28,696 other eligible routines fall after this 250-routine slice.

- `update_fast__5Form1Gv` in `usr/gfx/ircombine` at 0x100336a0 (n32).
  It occupies 264 bytes.
  The `lw` at 0x100336c0 loads 4 bytes from a0 (arg0 at entry) +0xe8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x148, including `lw` at 0x100336dc, `lw` at 0x10033710, `lw` at 0x10033744.
  The `lw` at 0x100336e0 loads 4 bytes from [a0+328] +0x108.
  The `lw` at 0x100336f4 loads 4 bytes from a0 (arg0 at entry) +0xf0.
  The `lw` at 0x10033714 loads 4 bytes from [a0+328] +0x10c.
  The `lw` at 0x10033728 loads 4 bytes from a0 (arg0 at entry) +0xe4.
  The `lw` at 0x10033748 loads 4 bytes from [a0+328] +0x110.
  The `lw` at 0x1003375c loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `lw` at 0x1003377c loads 4 bytes from [a0+328] +0x114.
  The `jal` at 0x100336c8 calls EZ__GP10_WidgetRec with a0=[a0+232], a1=0x7d9d0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100336e8 calls __as__9EZWrapperGi with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+264], a2=unknown, a3=unknown.
  The `jal` at 0x100336fc calls EZ__GP10_WidgetRec with a0=[a0+240], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1003371c calls __as__9EZWrapperGi with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+268], a2=unknown, a3=unknown.
  The `jal` at 0x10033730 calls EZ__GP10_WidgetRec with a0=[a0+228], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10033750 calls __as__9EZWrapperGi with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+272], a2=unknown, a3=unknown.
  The `jal` at 0x10033764 calls EZ__GP10_WidgetRec with a0=[a0+144], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10033784 calls __as__9EZWrapperGi with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+276], a2=unknown, a3=unknown.
  The `beq` branch at 0x1003378c targets 0x10033794 and is always taken.
  The return at 0x100337a0 has v0 = ret(__as__9EZWrapperGi).
- `alphaChannel__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100337b0 (n32).
  It occupies 112 bytes.
  The `lw` at 0x100337e0 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x100337e8 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x100337ec stores 4 bytes to [a0+328] +0x13c (value [a2+8]).
  The `lw` at 0x100337f4 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x100337fc calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+328], a3=0x7d8c0.
  The `beq` branch at 0x10033804 targets 0x1003380c and is always taken.
  The return at 0x10033818 has v0 = ret(update__18VkwindowMainWindowGv).
- `bGamma__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10033820 (n32).
  It occupies 168 bytes.
  The `lw` at 0x10033850 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x1003388c loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `swc1` at 0x10033894 stores 4 bytes to [a0+328] +0x270.
  The `lw` at 0x1003389c loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10033858 calls EZ__GP10_WidgetRec with a0=[a0+40], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x7d850.
  The `jal` at 0x1003386c calls (unknown callee) with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003387c calls atof with a0=ret(0x100352e0), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x100338a4 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=[a0+328]+624, a2=unknown, a3=unknown.
  The `beq` branch at 0x100338ac targets 0x100338b4 and is always taken.
  The return at 0x100338c0 has v0 = ret(update__18VkwindowMainWindowGv).
- `bSync__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100338d0 (n32).
  It occupies 116 bytes.
  The `lw` at 0x10033900 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10033908 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x10033910 stores 4 bytes to [a0+328] +0x2a0 (value [a2+8]).
  The `lw` at 0x10033918 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10033920 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+328]+672, a3=0x7d7a0.
  The `beq` branch at 0x10033928 targets 0x10033930 and is always taken.
  The return at 0x1003393c has v0 = ret(update__18VkwindowMainWindowGv).
- `channelBrowse__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10033950 (n32).
  It occupies 464 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14c, including `lw` at 0x1003398c, `lw` at 0x10033ae0.
  7 such `lw` accesses load 4 bytes from sym(sffb) +0x0, including `lw` at 0x100339fc, `lw` at 0x10033a18, `lw` at 0x10033a30.
  2 such `lw` accesses load 4 bytes from [sym(sffb)] +0x8, including `lw` at 0x10033a4c, `lw` at 0x10033a84.
  The `lw` at 0x10033a50 loads 4 bytes from [[sym(sffb)]+8] +0x108.
  The `lw` at 0x10033a88 loads 4 bytes from [[sym(sffb)]+8] +0x110.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10033ad8, `lw` at 0x10033af4.
  The `jalr` at 0x10033994 calls sprintf with a0=sp-1176, a1=0x100960b0, a2=[a0+332], a3=0x7d720.
  The `jalr` at 0x100339a8 calls getenv with a0=0x100960d8, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100339f0 calls sprintf with a0=sp-1088, a1=0x100960e8, a2=unknown, a3=unknown.
  The `jalr` at 0x10033a0c calls setTitle__15VkDialogManagerGPCc with a0=[sym(sffb)], a1=0x10096108, a2=unknown, a3=unknown.
  The `jalr` at 0x10033a24 calls setDirectory__21VkFileSelectionDialogGPCc with a0=[sym(sffb)], a1=sp-1088, a2=unknown, a3=unknown.
  The `jalr` at 0x10033a3c calls setFilterPattern__21VkFileSelectionDialogGPCc with a0=[sym(sffb)], a1=0x100aa510, a2=unknown, a3=unknown.
  The `jalr` at 0x10033a8c calls (unknown callee) with a0=([[[sym(sffb)]+8]+264] + [sym(sffb)]), a1=sp-1176, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x10033ab4 calls (unknown callee) with a0=[sym(sffb)], a1=0x1, a2=unknown, a3=unknown.
  The `jalr` at 0x10033ac8 calls basename with a0=ret(0x10035380), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10033ae8 calls loadFormat__18VkwindowMainWindowGiPCc with a0=[sym(vkwindow)], a1=[a0+332], a2=ret(basename), a3=unknown.
  The `jal` at 0x10033afc calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x100339bc targets 0x100339d4, is taken when a1(=ret(getenv)) == 0, and falls through when a1(=ret(getenv)) != 0.
  The `beq` branch at 0x100339cc targets 0x100339dc and is always taken.
  The `bne` branch at 0x10033a9c targets 0x10033af0, is taken when v0(=ret(unknown)) != a1(=0x1), and falls through when v0(=ret(unknown)) == a1(=0x1).
  The `beq` branch at 0x10033b04 targets 0x10033b0c and is always taken.
  The return at 0x10033b18 has v0 = ret(update__18VkwindowMainWindowGv).
- `channelEnable__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10033b20 (n32).
  It occupies 268 bytes.
  The `lw` at 0x10033b50 loads 4 bytes from a0 (arg0 at entry) +0x14c.
  The `lw` at 0x10033b64 loads 4 bytes from sym(combination) +0x5a9c.
  The `lw` at 0x10033b74 loads 4 bytes from sym(combination) +0x5a78.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x148, including `lw` at 0x10033bcc, `lw` at 0x10033bf4.
  The `lw` at 0x10033bd0 loads 4 bytes from [a0+328] +0x2a4.
  The `lw` at 0x10033bec loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `sw` at 0x10033bf8 stores 4 bytes to [a0+328] +0x2a4 (value [a2+8]).
  The `lw` at 0x10033c00 loads 4 bytes from sym(vkwindow) +0x0.
  The `jalr` at 0x10033b84 calls getTheErrorDialog__Gv with a0=[sym(combination)+23196], a1=[sym(combination)+23160], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10033ba8 calls (unknown callee) with a0=ret(getTheErrorDialog__Gv), a1=0x10096118, a2=a1 at entry (arg1), a3=unknown.
  The `jal` at 0x10033bb8 calls EZ__GP10_WidgetRec with a0=a1 at entry (arg1), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10033bd8 calls __as__9EZWrapperGi with a0=ret(EZ__GP10_WidgetRec), a1=[[a0+328]+676], a2=unknown, a3=unknown.
  The `jal` at 0x10033c08 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The `bne` branch at 0x10033b58 targets 0x10033be8, is taken when at(=[a0+332]) != v0(=0x1), and falls through when at(=[a0+332]) == v0(=0x1).
  The `beq` branch at 0x10033b68 targets 0x10033be8, is taken when a0(=[sym(combination)+23196]) == 0, and falls through when a0(=[sym(combination)+23196]) != 0.
  The `beq` branch at 0x10033b78 targets 0x10033be8, is taken when a1(=[sym(combination)+23160]) == 0, and falls through when a1(=[sym(combination)+23160]) != 0.
  The `beq` branch at 0x10033be0 targets 0x10033bfc and is always taken.
  The `beq` branch at 0x10033c10 targets 0x10033c18 and is always taken.
  The return at 0x10033c24 has v0 = ret(update__18VkwindowMainWindowGv).
- `closeChannel__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10033c30 (n32).
  It occupies 124 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x144, including `lw` at 0x10033c60, `lw` at 0x10033c70, `lw` at 0x10033c7c.
  2 such `lw` accesses load 4 bytes from [a0+324] +0x8, including `lw` at 0x10033c64, `lw` at 0x10033c80.
  The `lw` at 0x10033c68 loads 4 bytes from [[a0+324]+8] +0x30.
  The `lw` at 0x10033c84 loads 4 bytes from [[a0+324]+8] +0x38.
  The `jalr` at 0x10033c88 calls (unknown callee) with a0=([[[a0+324]+8]+48] + [a0+324]), a1=[a0+324], a2=a2 at entry (arg2), a3=0x7d440.
  The `beq` branch at 0x10033c90 targets 0x10033c98 and is always taken.
  The return at 0x10033ca4 has v0 = ret(unknown).
- `compositeSync__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10033cb0 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10033ce4 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x10033ce8 stores 4 bytes to [a0+328] +0x28c (value 0x3).
  The `lw` at 0x10033cf0 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10033cf8 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=0x3, a2=[a0+328], a3=a2 at entry (arg2), a4=0x7d3c0.
  The `beq` branch at 0x10033d00 targets 0x10033d08 and is always taken.
  The return at 0x10033d14 has v0 = ret(update__18VkwindowMainWindowGv).
- `cursorPriority__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10033d20 (n32).
  It occupies 144 bytes.
  The `lw` at 0x10033d50 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0x10033d78 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x10033d7c stores 4 bytes to [a0+328] +0x140 (value ret(0x100352a0)).
  The `lw` at 0x10033d84 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10033d58 calls EZ__GP10_WidgetRec with a0=[a0+68], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x7d350.
  The `jal` at 0x10033d6c calls (unknown callee) with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10033d8c calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=[a0+328], a2=unknown, a3=unknown.
  The `beq` branch at 0x10033d94 targets 0x10033d9c and is always taken.
  The return at 0x10033da8 has v0 = ret(update__18VkwindowMainWindowGv).
- `dither__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10033db0 (n32).
  It occupies 112 bytes.
  The `lw` at 0x10033de0 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10033de8 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x10033dec stores 4 bytes to [a0+328] +0x144 (value [a2+8]).
  The `lw` at 0x10033df4 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10033dfc calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+328], a3=0x7d2c0.
  The `beq` branch at 0x10033e04 targets 0x10033e0c and is always taken.
  The return at 0x10033e18 has v0 = ret(update__18VkwindowMainWindowGv).
- `format__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10033e20 (n32).
  It occupies 236 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x64, including `lw` at 0x10033e50, `lw` at 0x10033ea4.
  The `lw` at 0x10033e84 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `lw` at 0x10033ed8 loads 4 bytes from sym(vkwindow) +0x0.
  The `lw` at 0x10033ee0 loads 4 bytes from a0 (arg0 at entry) +0x14c.
  The `jal` at 0x10033e58 calls EZ__GP10_WidgetRec with a0=[a0+100], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x7d250.
  The `jal` at 0x10033e70 calls (unknown callee) with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10033e90 calls strcmp with a0=[a0+328]+340, a1=ret(0x100352e0), a2=unknown, a3=unknown.
  The `jal` at 0x10033eac calls EZ__GP10_WidgetRec with a0=[a0+100], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10033ec4 calls (unknown callee) with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10033ee8 calls loadFormat__18VkwindowMainWindowGiPCc with a0=[sym(vkwindow)], a1=[a0+332], a2=ret(0x100352e0), a3=unknown.
  The `beq` branch at 0x10033e98 targets 0x10033ef0, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x10033ef0 targets 0x10033ef8 and is always taken.
  The return at 0x10033f04 has v0 = unknown.
- `fs__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10033f10 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10033f44 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x10033f48 stores 4 bytes to [a0+328] +0x134 (value 0x4).
  The `lw` at 0x10033f50 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10033f58 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=0x4, a2=[a0+328], a3=a2 at entry (arg2), a4=0x7d160.
  The `beq` branch at 0x10033f60 targets 0x10033f68 and is always taken.
  The return at 0x10033f74 has v0 = ret(update__18VkwindowMainWindowGv).
- `gGamma__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10033f80 (n32).
  It occupies 168 bytes.
  The `lw` at 0x10033fb0 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0x10033fec loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `swc1` at 0x10033ff4 stores 4 bytes to [a0+328] +0x26c.
  The `lw` at 0x10033ffc loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10033fb8 calls EZ__GP10_WidgetRec with a0=[a0+116], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x7d0f0.
  The `jal` at 0x10033fcc calls (unknown callee) with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10033fdc calls atof with a0=ret(0x100352e0), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10034004 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=[a0+328]+620, a2=unknown, a3=unknown.
  The `beq` branch at 0x1003400c targets 0x10034014 and is always taken.
  The return at 0x10034020 has v0 = ret(update__18VkwindowMainWindowGv).
- `gSync__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10034030 (n32).
  It occupies 116 bytes.
  The `lw` at 0x10034060 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10034068 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x10034070 stores 4 bytes to [a0+328] +0x29c (value [a2+8]).
  The `lw` at 0x10034078 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10034080 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+328]+668, a3=0x7d040.
  The `beq` branch at 0x10034088 targets 0x10034090 and is always taken.
  The return at 0x1003409c has v0 = ret(update__18VkwindowMainWindowGv).
- `gain__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100340b0 (n32).
  It occupies 164 bytes.
  The `lw` at 0x100340e0 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `lw` at 0x1003411c loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `swc1` at 0x10034120 stores 4 bytes to [a0+328] +0x264.
  The `lw` at 0x10034128 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x100340e8 calls EZ__GP10_WidgetRec with a0=[a0+128], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x7cfc0.
  The `jal` at 0x100340fc calls (unknown callee) with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003410c calls atof with a0=ret(0x100352e0), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10034130 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=[a0+328], a2=unknown, a3=unknown.
  The `beq` branch at 0x10034138 targets 0x10034140 and is always taken.
  The return at 0x1003414c has v0 = ret(update__18VkwindowMainWindowGv).
- `hPhase__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10034160 (n32).
  It occupies 172 bytes.
  The `lw` at 0x100341d4 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x100341d8 stores 4 bytes to [a0+328] +0x258.
  The `lw` at 0x100341e0 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10034194 calls EZ__GP10_WidgetRec with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100341a8 calls (unknown callee) with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100341b8 calls atof with a0=ret(0x100352e0), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x100341e8 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=unknown, a2=[a0+328], a3=unknown.
  The `beq` branch at 0x100341f0 targets 0x100341f8 and is always taken.
  The return at 0x10034204 has v0 = ret(update__18VkwindowMainWindowGv).
- `height__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10034210 (n32).
  It occupies 184 bytes.
  The `lw` at 0x10034240 loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `lw` at 0x10034268 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x10034270 stores 4 bytes to [a0+328] +0x114 (value ret(0x100352a0)).
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10034278, `lw` at 0x1003429c.
  The `lw` at 0x10034280 loads 4 bytes from a0 (arg0 at entry) +0x14c.
  The `jal` at 0x10034248 calls EZ__GP10_WidgetRec with a0=[a0+144], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x7ce60.
  The `jal` at 0x1003425c calls (unknown callee) with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10034290 calls clamp__18VkwindowMainWindowGiN21 with a0=[sym(vkwindow)], a1=[a0+332], a2=0x1, a3=0x0.
  The `jal` at 0x100342a4 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x100342ac targets 0x100342b4 and is always taken.
  The return at 0x100342c0 has v0 = ret(update__18VkwindowMainWindowGv).
- `horizontalSync__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100342d0 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10034304 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x10034308 stores 4 bytes to [a0+328] +0x28c (value 0x1).
  The `lw` at 0x10034310 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10034318 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=0x1, a2=[a0+328], a3=a2 at entry (arg2), a4=0x7cda0.
  The `beq` branch at 0x10034320 targets 0x10034328 and is always taken.
  The return at 0x10034334 has v0 = ret(update__18VkwindowMainWindowGv).
- `interleaved__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10034340 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10034374 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x10034378 stores 4 bytes to [a0+328] +0x2ac (value 0x1).
  The `lw` at 0x10034380 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10034388 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=0x1, a2=[a0+328], a3=a2 at entry (arg2), a4=0x7cd30.
  The `beq` branch at 0x10034390 targets 0x10034398 and is always taken.
  The return at 0x100343a4 has v0 = ret(update__18VkwindowMainWindowGv).
- `progressive__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100343b0 (n32).
  It occupies 104 bytes.
  The `lw` at 0x100343e0 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x100343e4 stores 4 bytes to [a0+328] +0x2ac (value 0x0).
  The `lw` at 0x100343ec loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x100343f4 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=[a0+328], a2=a2 at entry (arg2), a3=0x7ccc0.
  The `beq` branch at 0x100343fc targets 0x10034404 and is always taken.
  The return at 0x10034410 has v0 = ret(update__18VkwindowMainWindowGv).
- `rGamma__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10034420 (n32).
  It occupies 168 bytes.
  The `lw` at 0x10034450 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0x1003448c loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `swc1` at 0x10034494 stores 4 bytes to [a0+328] +0x268.
  The `lw` at 0x1003449c loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10034458 calls EZ__GP10_WidgetRec with a0=[a0+172], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x7cc50.
  The `jal` at 0x1003446c calls (unknown callee) with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003447c calls atof with a0=ret(0x100352e0), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x100344a4 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=[a0+328]+616, a2=unknown, a3=unknown.
  The `beq` branch at 0x100344ac targets 0x100344b4 and is always taken.
  The return at 0x100344c0 has v0 = ret(update__18VkwindowMainWindowGv).
- `rSync__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100344d0 (n32).
  It occupies 116 bytes.
  The `lw` at 0x10034500 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10034508 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x10034510 stores 4 bytes to [a0+328] +0x298 (value [a2+8]).
  The `lw` at 0x10034518 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10034520 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+328]+664, a3=0x7cba0.
  The `beq` branch at 0x10034528 targets 0x10034530 and is always taken.
  The return at 0x1003453c has v0 = ret(update__18VkwindowMainWindowGv).
- `restoreSize__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10034550 (n32).
  It occupies 316 bytes.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x148, including `lw` at 0x10034580, `lw` at 0x10034590, `lw` at 0x100345a0.
  2 such `lw` accesses load 4 bytes from [a0+328] +0x128, including `lw` at 0x10034588, `lw` at 0x10034610.
  The `sw` at 0x10034598 stores 4 bytes to [a0+328] +0x110 (value [[a0+328]+296]).
  2 such `lw` accesses load 4 bytes from [a0+328] +0x12c, including `lw` at 0x100345a8, `lw` at 0x10034638.
  The `sw` at 0x100345b8 stores 4 bytes to [a0+328] +0x114 (value [[a0+328]+300]).
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x100345c0, `lw` at 0x100345e4.
  The `lw` at 0x100345c8 loads 4 bytes from a0 (arg0 at entry) +0x14c.
  The `lw` at 0x10034600 loads 4 bytes from [a0+328] +0x110.
  The `lw` at 0x10034628 loads 4 bytes from [a0+328] +0x114.
  The `jal` at 0x100345d8 calls clamp__18VkwindowMainWindowGiN21 with a0=[sym(vkwindow)], a1=[a0+332], a2=0x1, a3=0x0, a4=0x7cb20.
  The `jal` at 0x100345ec calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10034648 calls getTheErrorDialog__Gv with a0=unknown, a1=[[a0+328]+272], a2=unknown, a3=unknown.
  The `jal` at 0x10034668 calls (unknown callee) with a0=ret(getTheErrorDialog__Gv), a1=0x10096150, a2=a1 at entry (arg1), a3=unknown.
  The `bne` branch at 0x10034614 targets 0x10034644, is taken when a1(=[[a0+328]+272]) != a2(=[[a0+328]+296]), and falls through when a1(=[[a0+328]+272]) == a2(=[[a0+328]+296]).
  The `beq` branch at 0x1003463c targets 0x10034670, is taken when a2(=[[a0+328]+276]) == a3(=[[a0+328]+300]), and falls through when a2(=[[a0+328]+276]) != a3(=[[a0+328]+300]).
  The `beq` branch at 0x10034670 targets 0x10034678 and is always taken.
  The return at 0x10034684 has v0 = unknown.
- `rgb10__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10034690 (n32).
  It occupies 104 bytes.
  The `lw` at 0x100346c0 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x100346c4 stores 4 bytes to [a0+328] +0x134 (value 0x0).
  The `lw` at 0x100346cc loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x100346d4 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=[a0+328], a2=a2 at entry (arg2), a3=0x7c9e0.
  The `beq` branch at 0x100346dc targets 0x100346e4 and is always taken.
  The return at 0x100346f0 has v0 = ret(update__18VkwindowMainWindowGv).
- `rgb12__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10034700 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10034734 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x10034738 stores 4 bytes to [a0+328] +0x134 (value 0x2).
  The `lw` at 0x10034740 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10034748 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=0x2, a2=[a0+328], a3=a2 at entry (arg2), a4=0x7c970.
  The `beq` branch at 0x10034750 targets 0x10034758 and is always taken.
  The return at 0x10034764 has v0 = ret(update__18VkwindowMainWindowGv).
- `rgba10__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10034770 (n32).
  It occupies 108 bytes.
  The `lw` at 0x100347a4 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x100347a8 stores 4 bytes to [a0+328] +0x134 (value 0x1).
  The `lw` at 0x100347b0 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x100347b8 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=0x1, a2=[a0+328], a3=a2 at entry (arg2), a4=0x7c900.
  The `beq` branch at 0x100347c0 targets 0x100347c8 and is always taken.
  The return at 0x100347d4 has v0 = ret(update__18VkwindowMainWindowGv).
- `setup__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100347e0 (n32).
  It occupies 112 bytes.
  The `lw` at 0x10034810 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10034818 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x1003481c stores 4 bytes to [a0+328] +0x288 (value [a2+8]).
  The `lw` at 0x10034824 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1003482c calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+328], a3=0x7c890.
  The `beq` branch at 0x10034834 targets 0x1003483c and is always taken.
  The return at 0x10034848 has v0 = ret(update__18VkwindowMainWindowGv).
- `stacked__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10034850 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10034884 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x10034888 stores 4 bytes to [a0+328] +0x2ac (value 0x2).
  The `lw` at 0x10034890 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10034898 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=0x2, a2=[a0+328], a3=a2 at entry (arg2), a4=0x7c820.
  The `beq` branch at 0x100348a0 targets 0x100348a8 and is always taken.
  The return at 0x100348b4 has v0 = ret(update__18VkwindowMainWindowGv).
- `triLevelSync__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100348c0 (n32).
  It occupies 112 bytes.
  The `lw` at 0x100348f0 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x100348f8 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x100348fc stores 4 bytes to [a0+328] +0x290 (value [a2+8]).
  The `lw` at 0x10034904 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1003490c calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+328], a3=0x7c7b0.
  The `beq` branch at 0x10034914 targets 0x1003491c and is always taken.
  The return at 0x10034928 has v0 = ret(update__18VkwindowMainWindowGv).
- `useGamma__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10034930 (n32).
  It occupies 112 bytes.
  The `lw` at 0x10034960 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10034968 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x1003496c stores 4 bytes to [a0+328] +0x2c0 (value [a2+8]).
  The `lw` at 0x10034974 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1003497c calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=[a2+8], a2=[a0+328], a3=0x7c740.
  The `beq` branch at 0x10034984 targets 0x1003498c and is always taken.
  The return at 0x10034998 has v0 = ret(update__18VkwindowMainWindowGv).
- `vPhase__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100349a0 (n32).
  It occupies 144 bytes.
  The `lw` at 0x100349d0 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `lw` at 0x100349f8 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x100349fc stores 4 bytes to [a0+328] +0x25c (value ret(0x100352a0)).
  The `lw` at 0x10034a04 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x100349d8 calls EZ__GP10_WidgetRec with a0=[a0+224], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x7c6d0.
  The `jal` at 0x100349ec calls (unknown callee) with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10034a0c calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=[a0+328], a2=unknown, a3=unknown.
  The `beq` branch at 0x10034a14 targets 0x10034a1c and is always taken.
  The return at 0x10034a28 has v0 = ret(update__18VkwindowMainWindowGv).
- `width__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10034a30 (n32).
  It occupies 184 bytes.
  The `lw` at 0x10034a60 loads 4 bytes from a0 (arg0 at entry) +0xe4.
  The `lw` at 0x10034a88 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x10034a90 stores 4 bytes to [a0+328] +0x110 (value ret(0x100352a0)).
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10034a98, `lw` at 0x10034abc.
  The `lw` at 0x10034aa0 loads 4 bytes from a0 (arg0 at entry) +0x14c.
  The `jal` at 0x10034a68 calls EZ__GP10_WidgetRec with a0=[a0+228], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x7c640.
  The `jal` at 0x10034a7c calls (unknown callee) with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10034ab0 calls clamp__18VkwindowMainWindowGiN21 with a0=[sym(vkwindow)], a1=[a0+332], a2=0x1, a3=0x0.
  The `jal` at 0x10034ac4 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x10034acc targets 0x10034ad4 and is always taken.
  The return at 0x10034ae0 has v0 = ret(update__18VkwindowMainWindowGv).
- `xLocked__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10034af0 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10034b20 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x10034b28 stores 4 bytes to [a0+328] +0x148 (value 0x0).
  The `lw` at 0x10034b30 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10034b38 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=[a0+328]+328, a2=a2 at entry (arg2), a3=0x7c580.
  The `beq` branch at 0x10034b40 targets 0x10034b48 and is always taken.
  The return at 0x10034b54 has v0 = ret(update__18VkwindowMainWindowGv).
- `xOrigin__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10034b60 (n32).
  It occupies 184 bytes.
  The `lw` at 0x10034b90 loads 4 bytes from a0 (arg0 at entry) +0xe8.
  The `lw` at 0x10034bb8 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x10034bc0 stores 4 bytes to [a0+328] +0x108 (value ret(0x100352a0)).
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10034bc8, `lw` at 0x10034bec.
  The `lw` at 0x10034bd0 loads 4 bytes from a0 (arg0 at entry) +0x14c.
  The `jal` at 0x10034b98 calls EZ__GP10_WidgetRec with a0=[a0+232], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x7c510.
  The `jal` at 0x10034bac calls (unknown callee) with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10034be0 calls clamp__18VkwindowMainWindowGiN21 with a0=[sym(vkwindow)], a1=[a0+332], a2=0x0, a3=0x1.
  The `jal` at 0x10034bf4 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x10034bfc targets 0x10034c04 and is always taken.
  The return at 0x10034c10 has v0 = ret(update__18VkwindowMainWindowGv).
- `xPixel__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10034c20 (n32).
  It occupies 112 bytes.
  The `lw` at 0x10034c54 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x10034c5c stores 4 bytes to [a0+328] +0x148 (value 0x1).
  The `lw` at 0x10034c64 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10034c6c calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=0x1, a2=[a0+328]+328, a3=a2 at entry (arg2), a4=0x7c450.
  The `beq` branch at 0x10034c74 targets 0x10034c7c and is always taken.
  The return at 0x10034c88 has v0 = ret(update__18VkwindowMainWindowGv).
- `xTile__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10034c90 (n32).
  It occupies 112 bytes.
  The `lw` at 0x10034cc4 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x10034ccc stores 4 bytes to [a0+328] +0x148 (value 0x2).
  The `lw` at 0x10034cd4 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10034cdc calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=0x2, a2=[a0+328]+328, a3=a2 at entry (arg2), a4=0x7c3e0.
  The `beq` branch at 0x10034ce4 targets 0x10034cec and is always taken.
  The return at 0x10034cf8 has v0 = ret(update__18VkwindowMainWindowGv).
- `yLocked__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10034d00 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10034d30 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x10034d38 stores 4 bytes to [a0+328] +0x14c (value 0x0).
  The `lw` at 0x10034d40 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10034d48 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=[a0+328]+332, a2=a2 at entry (arg2), a3=0x7c370.
  The `beq` branch at 0x10034d50 targets 0x10034d58 and is always taken.
  The return at 0x10034d64 has v0 = ret(update__18VkwindowMainWindowGv).
- `yOrigin__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10034d70 (n32).
  It occupies 184 bytes.
  The `lw` at 0x10034da0 loads 4 bytes from a0 (arg0 at entry) +0xf0.
  The `lw` at 0x10034dc8 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x10034dd0 stores 4 bytes to [a0+328] +0x10c (value ret(0x100352a0)).
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10034dd8, `lw` at 0x10034dfc.
  The `lw` at 0x10034de0 loads 4 bytes from a0 (arg0 at entry) +0x14c.
  The `jal` at 0x10034da8 calls EZ__GP10_WidgetRec with a0=[a0+240], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x7c300.
  The `jal` at 0x10034dbc calls (unknown callee) with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10034df0 calls clamp__18VkwindowMainWindowGiN21 with a0=[sym(vkwindow)], a1=[a0+332], a2=0x0, a3=0x2.
  The `jal` at 0x10034e04 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x10034e0c targets 0x10034e14 and is always taken.
  The return at 0x10034e20 has v0 = ret(update__18VkwindowMainWindowGv).
- `yPixel__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10034e30 (n32).
  It occupies 112 bytes.
  The `lw` at 0x10034e64 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x10034e6c stores 4 bytes to [a0+328] +0x14c (value 0x1).
  The `lw` at 0x10034e74 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10034e7c calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=0x1, a2=[a0+328]+332, a3=a2 at entry (arg2), a4=0x7c240.
  The `beq` branch at 0x10034e84 targets 0x10034e8c and is always taken.
  The return at 0x10034e98 has v0 = ret(update__18VkwindowMainWindowGv).
- `z__5Form1GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10034ea0 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10034ed4 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `sw` at 0x10034ed8 stores 4 bytes to [a0+328] +0x134 (value 0x3).
  The `lw` at 0x10034ee0 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x10034ee8 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=0x3, a2=[a0+328], a3=a2 at entry (arg2), a4=0x7c1d0.
  The `beq` branch at 0x10034ef0 targets 0x10034ef8 and is always taken.
  The return at 0x10034f04 has v0 = ret(update__18VkwindowMainWindowGv).
- `RegisterForm1Interface__5Form1SGv` in `usr/gfx/ircombine` at 0x10034f10 (n32).
  It occupies 60 bytes.
  The `lw` at 0x10034f24 loads 4 bytes from abs 0x100a90d8.
  The `beq` branch at 0x10034f30 targets 0x10034f38 and is always taken.
  The return at 0x10034f44 has v0 = 0x100a23e0.
- `__ct__7Form1UIGPCcP10_WidgetRec` in `usr/gfx/ircombine` at 0x100353e0 (n32).
  It occupies 132 bytes.
  The `sw` at 0x10035420 stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__7Form1UI)).
  The `jalr` at 0x10035410 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10035430 calls create__7Form1UIGP10_WidgetRec with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=unknown, a3=unknown.
  The return at 0x10035448 has v0 = a0.
  The instructions from 0x10035450 to 0x10035460 are not reached by any path from the entry, and their branches are not listed.
- `__ct__7Form1UIGPCc` in `usr/gfx/ircombine` at 0x10035470 (n32).
  It occupies 108 bytes.
  The `sw` at 0x100354ac stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__7Form1UI)).
  The `jalr` at 0x1003549c calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100354c0 has v0 = a0.
  The instructions from 0x100354c8 to 0x100354d8 are not reached by any path from the entry, and their branches are not listed.
- `__dt__7Form1UIGv` in `usr/gfx/ircombine` at 0x100354e0 (n32).
  It occupies 148 bytes.
  The `sw` at 0x10035514 stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__7Form1UI)).
  The `jalr` at 0x10035524 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10035544 calls __dl__GPv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x10035504 targets 0x1003554c, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x10035534 targets 0x1003554c, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10035558 has v0 = unknown.
  The instructions from 0x10035560 to 0x10035570 are not reached by any path from the entry, and their branches are not listed.
- `create__7Form1UIGP10_WidgetRec` in `usr/gfx/ircombine` at 0x10035580 (n32).
  It occupies 20792 bytes.
  The `lw` at 0x100355c0 loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from sym(xmFormWidgetClass) +0x0, including `lw` at 0x100355c8, `lw` at 0x10036f74.
  The `sw` at 0x100355fc stores 4 bytes to a0 (arg0 at entry) +0x54 (value ret(XtVaCreateWidget)).
  The `sw` at 0x10035604 stores 4 bytes to a0 (arg0 at entry) +0x10 (value ret(XtVaCreateWidget)).
  9 such `lw` accesses load 4 bytes from sym(xmToggleButtonWidgetClass) +0x0, including `lw` at 0x10035624, `lw` at 0x10035758, `lw` at 0x100359d8.
  46 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x1003562c, `lw` at 0x10035760, `lw` at 0x100358e4.
  The `sw` at 0x10035724 stores 4 bytes to a0 (arg0 at entry) +0xd8 (value ret(XtVaCreateManagedWidget)).
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd8, including `lw` at 0x1003572c, `lw` at 0x100357d0, `lw` at 0x10039920.
  The `sw` at 0x10035880 stores 4 bytes to a0 (arg0 at entry) +0x20 (value ret(XtVaCreateManagedWidget)).
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x10035888, `lw` at 0x1003647c, `lw` at 0x10036494.
  The `sw` at 0x1003592c stores 4 bytes to a0 (arg0 at entry) +0xf4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xf4, including `lw` at 0x10035934, `lw` at 0x10035968, `lw` at 0x1003599c.
  The `sw` at 0x10035960 stores 4 bytes to a0 (arg0 at entry) +0x118 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x10035994 stores 4 bytes to a0 (arg0 at entry) +0x114 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x100359c8 stores 4 bytes to a0 (arg0 at entry) +0x128 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x10035ac8 stores 4 bytes to a0 (arg0 at entry) +0x38 (value ret(XtVaCreateManagedWidget)).
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x10035ad0, `lw` at 0x10037fe8, `lw` at 0x100399c8.
  26 such `lw` accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0, including `lw` at 0x10035afc, `lw` at 0x10035c18, `lw` at 0x10035d34.
  The `sw` at 0x10035c08 stores 4 bytes to a0 (arg0 at entry) +0x24 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x10035d24 stores 4 bytes to a0 (arg0 at entry) +0x70 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x10035e2c stores 4 bytes to a0 (arg0 at entry) +0xa8 (value ret(XtVaCreateManagedWidget)).
  12 such `lw` accesses load 4 bytes from sym(xmTextFieldWidgetClass) +0x0, including `lw` at 0x10035e3c, `lw` at 0x10035f70, `lw` at 0x100360a4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0x10035ea0, `lw` at 0x10039a64.
  The `sw` at 0x10035f3c stores 4 bytes to a0 (arg0 at entry) +0x28 (value ret(XtVaCreateManagedWidget)).
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x10035f44, `lw` at 0x10039b0c, `lw` at 0x1003a604.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0x10035fd4, `lw` at 0x10039a9c.
  The `sw` at 0x10036070 stores 4 bytes to a0 (arg0 at entry) +0x74 (value ret(XtVaCreateManagedWidget)).
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x74, including `lw` at 0x10036078, `lw` at 0x10039a84, `lw` at 0x10039b34.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lw` at 0x10036108, `lw` at 0x10039a74, `lw` at 0x10039aac.
  The `sw` at 0x100361a4 stores 4 bytes to a0 (arg0 at entry) +0xac (value ret(XtVaCreateManagedWidget)).
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xac, including `lw` at 0x100361ac, `lw` at 0x10039abc, `lw` at 0x10039b5c.
  The `sw` at 0x100362d8 stores 4 bytes to a0 (arg0 at entry) +0x84 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x100363d0 stores 4 bytes to a0 (arg0 at entry) +0x80 (value ret(XtVaCreateManagedWidget)).
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x80, including `lw` at 0x100363d8, `lw` at 0x10039bac, `lw` at 0x1003a670.
  The `sw` at 0x10036544 stores 4 bytes to a0 (arg0 at entry) +0x7c (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x10036660 stores 4 bytes to a0 (arg0 at entry) +0x2c (value ret(XtVaCreateManagedWidget)).
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x10036668, `lw` at 0x10039be4.
  The `sw` at 0x100367a0 stores 4 bytes to a0 (arg0 at entry) +0x78 (value ret(XtVaCreateManagedWidget)).
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x78, including `lw` at 0x100367a8, `lw` at 0x10039c04, `lw` at 0x10039c1c.
  The `sw` at 0x100368e4 stores 4 bytes to a0 (arg0 at entry) +0xb0 (value ret(XtVaCreateManagedWidget)).
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb0, including `lw` at 0x100368ec, `lw` at 0x10039bf4, `lw` at 0x10039c2c.
  The `sw` at 0x10036a38 stores 4 bytes to a0 (arg0 at entry) +0xcc (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x10036b58 stores 4 bytes to a0 (arg0 at entry) +0xd4 (value ret(XtVaCreateManagedWidget)).
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd4, including `lw` at 0x10036b60, `lw` at 0x10039cb4.
  The `sw` at 0x10036c9c stores 4 bytes to a0 (arg0 at entry) +0xb8 (value ret(XtVaCreateManagedWidget)).
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb8, including `lw` at 0x10036ca4, `lw` at 0x10039cd4, `lw` at 0x10039cec.
  The `sw` at 0x10036e14 stores 4 bytes to a0 (arg0 at entry) +0x48 (value ret(XtVaCreateManagedWidget)).
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x10036e1c, `lw` at 0x100387e8, `lw` at 0x10039cc4.
  The `lw` at 0x10036e48 loads 4 bytes from sym(xmFrameWidgetClass) +0x0.
  The `sw` at 0x10036f64 stores 4 bytes to a0 (arg0 at entry) +0x5c (value ret(XtVaCreateManagedWidget)).
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5c, including `lw` at 0x10036f7c, `lw` at 0x10037a88, `lw` at 0x10039590.
  The `sw` at 0x10036fd4 stores 4 bytes to a0 (arg0 at entry) +0x58 (value ret(XtVaCreateManagedWidget)).
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x58, including `lw` at 0x10036fec, `lw` at 0x100370f4, `lw` at 0x10037210.
  The `sw` at 0x100370dc stores 4 bytes to a0 (arg0 at entry) +0xc8 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x100371f8 stores 4 bytes to a0 (arg0 at entry) +0xc4 (value ret(XtVaCreateManagedWidget)).
  3 such `lw` accesses load 4 bytes from sym(xmPushButtonWidgetClass) +0x0, including `lw` at 0x10037208, `lw` at 0x10037d20, `lw` at 0x10039528.
  The `sw` at 0x10037300 stores 4 bytes to a0 (arg0 at entry) +0xb4 (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x10037308 loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `sw` at 0x1003742c stores 4 bytes to a0 (arg0 at entry) +0x50 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x10037524 stores 4 bytes to a0 (arg0 at entry) +0x4c (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1003762c stores 4 bytes to a0 (arg0 at entry) +0x6c (value ret(XtVaCreateManagedWidget)).
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c, including `lw` at 0x100376a0, `lw` at 0x100379b8, `lw` at 0x100379c8.
  The `sw` at 0x10037740 stores 4 bytes to a0 (arg0 at entry) +0x68 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x10037848 stores 4 bytes to a0 (arg0 at entry) +0x9c (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x10037930 stores 4 bytes to a0 (arg0 at entry) +0xbc (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x10037938 loads 4 bytes from a0 (arg0 at entry) +0xc8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc4, including `lw` at 0x10037948, `lw` at 0x10037958, `lw` at 0x10037970.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x68, including `lw` at 0x10037980, `lw` at 0x10037990, `lw` at 0x10037a18.
  The `lw` at 0x100379a8 loads 4 bytes from a0 (arg0 at entry) +0x50.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xbc, including `lw` at 0x100379f0, `lw` at 0x10037a50, `lw` at 0x10037a60.
  The `lw` at 0x10037a08 loads 4 bytes from a0 (arg0 at entry) +0x6c.
  The `lw` at 0x10037a40 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `sw` at 0x10037af0 stores 4 bytes to a0 (arg0 at entry) +0x98 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x10037c20 stores 4 bytes to a0 (arg0 at entry) +0xd0 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x10037ca8 stores 4 bytes to a0 (arg0 at entry) +0xfc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xfc, including `lw` at 0x10037cb0, `lw` at 0x10037ce4, `lw` at 0x10039d74.
  The `sw` at 0x10037cdc stores 4 bytes to a0 (arg0 at entry) +0x110 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x10037d10 stores 4 bytes to a0 (arg0 at entry) +0x108 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x10037e1c stores 4 bytes to a0 (arg0 at entry) +0x34 (value ret(XtVaCreateManagedWidget)).
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x34, including `lw` at 0x10037e24, `lw` at 0x10039ea0.
  The `sw` at 0x10037f3c stores 4 bytes to a0 (arg0 at entry) +0x64 (value ret(XtVaCreateManagedWidget)).
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x64, including `lw` at 0x10037f44, `lw` at 0x10039eb0, `lw` at 0x10039ec0.
  The `sw` at 0x100380a8 stores 4 bytes to a0 (arg0 at entry) +0x60 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x100381a4 stores 4 bytes to a0 (arg0 at entry) +0xe0 (value ret(XtVaCreateManagedWidget)).
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe0, including `lw` at 0x100381ac, `lw` at 0x10039f10, `lw` at 0x1003a598.
  The `sw` at 0x100382c4 stores 4 bytes to a0 (arg0 at entry) +0x8c (value ret(XtVaCreateManagedWidget)).
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c, including `lw` at 0x100382cc, `lw` at 0x10038370, `lw` at 0x10039f48.
  The `sw` at 0x1003841c stores 4 bytes to a0 (arg0 at entry) +0xdc (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1003854c stores 4 bytes to a0 (arg0 at entry) +0x88 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x100385d4 stores 4 bytes to a0 (arg0 at entry) +0x104.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x104, including `lw` at 0x100385dc, `lw` at 0x10038610, `lw` at 0x10039fd0.
  The `sw` at 0x10038608 stores 4 bytes to a0 (arg0 at entry) +0x138 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x1003863c stores 4 bytes to a0 (arg0 at entry) +0x13c (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x100386c4 stores 4 bytes to a0 (arg0 at entry) +0x100.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x100, including `lw` at 0x100386cc, `lw` at 0x10038700, `lw` at 0x10038734.
  The `sw` at 0x100386f8 stores 4 bytes to a0 (arg0 at entry) +0x12c (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x1003872c stores 4 bytes to a0 (arg0 at entry) +0x130 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x10038760 stores 4 bytes to a0 (arg0 at entry) +0x134 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x100388a8 stores 4 bytes to a0 (arg0 at entry) +0xa4 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x100389a4 stores 4 bytes to a0 (arg0 at entry) +0x44 (value ret(XtVaCreateManagedWidget)).
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x100389ac, `lw` at 0x1003a218, `lw` at 0x1003a574.
  The `sw` at 0x10038af4 stores 4 bytes to a0 (arg0 at entry) +0x40 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x10038b7c stores 4 bytes to a0 (arg0 at entry) +0xf8.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xf8, including `lw` at 0x10038b84, `lw` at 0x10038bb8, `lw` at 0x10038bec.
  The `sw` at 0x10038bb0 stores 4 bytes to a0 (arg0 at entry) +0x11c (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x10038be4 stores 4 bytes to a0 (arg0 at entry) +0x124 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x10038c18 stores 4 bytes to a0 (arg0 at entry) +0x120 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x10038c48 stores 4 bytes to a0 (arg0 at entry) +0x140 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x10038c7c stores 4 bytes to a0 (arg0 at entry) +0x10c (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x10038dac stores 4 bytes to a0 (arg0 at entry) +0xa0 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x10038ed8 stores 4 bytes to a0 (arg0 at entry) +0xc0 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x10038ff8 stores 4 bytes to a0 (arg0 at entry) +0x30 (value ret(XtVaCreateManagedWidget)).
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc0, including `lw` at 0x1003906c, `lw` at 0x100391cc, `lw` at 0x100391e4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x10039084, `lw` at 0x1003a414.
  The `sw` at 0x10039134 stores 4 bytes to a0 (arg0 at entry) +0x90 (value ret(XtVaCreateManagedWidget)).
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x90, including `lw` at 0x1003913c, `lw` at 0x1003a550.
  The `sw` at 0x10039294 stores 4 bytes to a0 (arg0 at entry) +0xe4 (value ret(XtVaCreateManagedWidget)).
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe4, including `lw` at 0x1003929c, `lw` at 0x1003a424, `lw` at 0x1003a434.
  The `sw` at 0x100393c4 stores 4 bytes to a0 (arg0 at entry) +0xf0 (value ret(XtVaCreateManagedWidget)).
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xf0, including `lw` at 0x100393cc, `lw` at 0x1003a3fc, `lw` at 0x1003a44c.
  The `sw` at 0x100394f4 stores 4 bytes to a0 (arg0 at entry) +0xe8 (value ret(XtVaCreateManagedWidget)).
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe8, including `lw` at 0x100394fc, `lw` at 0x1003970c, `lw` at 0x1003a484.
  The `sw` at 0x10039664 stores 4 bytes to a0 (arg0 at entry) +0x3c (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x1003966c loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `sw` at 0x100397bc stores 4 bytes to a0 (arg0 at entry) +0xec (value ret(XtVaCreateManagedWidget)).
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0x10039858, `lw` at 0x10039ee8, `lw` at 0x10039ef8.
  The `sw` at 0x10039918 stores 4 bytes to a0 (arg0 at entry) +0x94 (value ret(XtVaCreateManagedWidget)).
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x84, including `lw` at 0x10039930, `lw` at 0x10039958, `lw` at 0x10039ae4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xcc, including `lw` at 0x10039b94, `lw` at 0x10039c64, `lw` at 0x10039c74.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0x10039bbc, `lw` at 0x10039bcc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd0, including `lw` at 0x10039c9c, `lw` at 0x10039d4c, `lw` at 0x10039dcc.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa0, including `lw` at 0x10039d34, `lw` at 0x1003a27c, `lw` at 0x1003a2f4.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x88, including `lw` at 0x10039d5c, `lw` at 0x10039f58, `lw` at 0x10039f68.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdc, including `lw` at 0x10039f20, `lw` at 0x10039f30, `lw` at 0x10039f80.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa4, including `lw` at 0x10039fb8, `lw` at 0x1003a040, `lw` at 0x1003a154.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x1003a228, `lw` at 0x1003a238, `lw` at 0x1003a26c.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x94, including `lw` at 0x1003a3c4, `lw` at 0x1003a3ec, `lw` at 0x1003a45c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xec, including `lw` at 0x1003a46c, `lw` at 0x1003a4bc.
  The `jalr` at 0x100355b4 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultForm1UIResources__7Form1UI), a3=a3 at entry (arg3).
  The `jalr` at 0x100355e4 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=sym(_XmStrings)+9052, a4=0x1, a5=0x0.
  The `jalr` at 0x10035610 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=ret(XtVaCreateWidget), a2=a0 at entry (arg0), a3=a0 at entry (arg0).
  The `jalr` at 0x10035714 calls XtVaCreateManagedWidget with a0=0x10096198, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10035744 calls XtAddCallback with a0=[a0+216], a1=sym(_XmStrings)+10557, a2=sym(useGammaCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10035870 calls XtVaCreateManagedWidget with a0=0x100961a8, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x100358a0 calls XtAddCallback with a0=[a0+32], a1=sym(_XmStrings)+10557, a2=sym(alphaChannelCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100358b4 calls __nw__GUi with a0=0x4c, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100358fc calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x100961c0, a3=0x0, a4=0x0.
  The `jalr` at 0x10035950 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+244], a1=0x100961d0, a2=sym(progressiveCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10035984 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+244], a1=0x100961e8, a2=sym(interleavedCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x100359b8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+244], a1=0x10096200, a2=sym(stackedCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10035ab8 calls XtVaCreateManagedWidget with a0=0x10096210, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10035ae8 calls XtAddCallback with a0=[a0+56], a1=sym(_XmStrings)+10557, a2=sym(channelEnableCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10035bf8 calls XtVaCreateManagedWidget with a0=0x10096228, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10035d14 calls XtVaCreateManagedWidget with a0=0x10096238, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10035e1c calls XtVaCreateManagedWidget with a0=0x10096248, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10035f2c calls XtVaCreateManagedWidget with a0=0x10096258, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10035f5c calls XtAddCallback with a0=[a0+40], a1=sym(_XmStrings)+4683, a2=sym(bGammaCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10036060 calls XtVaCreateManagedWidget with a0=0x10096268, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10036090 calls XtAddCallback with a0=[a0+116], a1=sym(_XmStrings)+4683, a2=sym(gGammaCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10036194 calls XtVaCreateManagedWidget with a0=0x10096278, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100361c4 calls XtAddCallback with a0=[a0+172], a1=sym(_XmStrings)+4683, a2=sym(rGammaCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100362c8 calls XtVaCreateManagedWidget with a0=0x10096288, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x100363c0 calls XtVaCreateManagedWidget with a0=0x10096298, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100363f0 calls XtAddCallback with a0=[a0+128], a1=sym(_XmStrings)+4683, a2=sym(gainCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10036534 calls XtVaCreateManagedWidget with a0=0x100962a8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10036650 calls XtVaCreateManagedWidget with a0=0x100962b8, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10036680 calls XtAddCallback with a0=[a0+44], a1=sym(_XmStrings)+10557, a2=sym(bSyncCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10036790 calls XtVaCreateManagedWidget with a0=0x100962c8, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x100367c0 calls XtAddCallback with a0=[a0+120], a1=sym(_XmStrings)+10557, a2=sym(gSyncCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100368d4 calls XtVaCreateManagedWidget with a0=0x100962d8, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10036904 calls XtAddCallback with a0=[a0+176], a1=sym(_XmStrings)+10557, a2=sym(rSyncCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10036a28 calls XtVaCreateManagedWidget with a0=0x100962e8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10036b48 calls XtVaCreateManagedWidget with a0=0x10096300, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10036b78 calls XtAddCallback with a0=[a0+212], a1=sym(_XmStrings)+10557, a2=sym(triLevelSyncCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10036c8c calls XtVaCreateManagedWidget with a0=0x10096318, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10036cbc calls XtAddCallback with a0=[a0+184], a1=sym(_XmStrings)+10557, a2=sym(setupCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10036e04 calls XtVaCreateManagedWidget with a0=0x10096328, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+9609.
  The `jalr` at 0x10036e34 calls XtAddCallback with a0=[a0+72], a1=sym(_XmStrings)+10557, a2=sym(ditherCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10036f54 calls XtVaCreateManagedWidget with a0=0x10096338, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x3, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x10036fc4 calls XtVaCreateManagedWidget with a0=0x10096348, a1=[sym(xmFormWidgetClass)], a2=[a0+92], a3=sym(_XmStrings)+9052, a4=0x1, a5=sym(_XmStrings)+5427, a6=0x1, a7=sym(XtStrings)+872.
  The `jalr` at 0x100370cc calls XtVaCreateManagedWidget with a0=0x10096358, a1=[sym(xmLabelWidgetClass)], a2=[a0+88], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100371e8 calls XtVaCreateManagedWidget with a0=0x10096368, a1=[sym(xmLabelWidgetClass)], a2=[a0+88], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x100372f0 calls XtVaCreateManagedWidget with a0=0x10096378, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+88], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10037320 calls XtAddCallback with a0=[a0+180], a1=sym(_XmStrings)+4683, a2=sym(restoreSizeCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003741c calls XtVaCreateManagedWidget with a0=0x10096390, a1=[sym(xmLabelWidgetClass)], a2=[a0+88], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10037514 calls XtVaCreateManagedWidget with a0=0x100aa538, a1=[sym(xmLabelWidgetClass)], a2=[a0+88], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1003761c calls XtVaCreateManagedWidget with a0=0x100963a0, a1=[sym(xmLabelWidgetClass)], a2=[a0+88], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10037730 calls XtVaCreateManagedWidget with a0=0x100963b0, a1=[sym(xmLabelWidgetClass)], a2=[a0+88], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10037838 calls XtVaCreateManagedWidget with a0=0x100963c0, a1=[sym(xmLabelWidgetClass)], a2=[a0+88], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10037920 calls XtVaCreateManagedWidget with a0=0x100aa540, a1=[sym(xmLabelWidgetClass)], a2=[a0+88], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10037964 calls XtVaSetValues with a0=[a0+200], a1=sym(_XmStrings)+10305, a2=[a0+196], a3=sym(_XmStrings)+7562, a4=[a0+196], a5=0x0.
  The `jalr` at 0x1003799c calls XtVaSetValues with a0=[a0+196], a1=sym(_XmStrings)+10305, a2=[a0+104], a3=sym(_XmStrings)+7562, a4=[a0+104], a5=0x0.
  The `jalr` at 0x100379d4 calls XtVaSetValues with a0=[a0+80], a1=sym(_XmStrings)+10305, a2=[a0+76], a3=sym(_XmStrings)+7562, a4=[a0+76], a5=0x0.
  The `jalr` at 0x100379fc calls XtVaSetValues with a0=[a0+76], a1=sym(_XmStrings)+10305, a2=[a0+188], a3=0x0.
  The `jalr` at 0x10037a34 calls XtVaSetValues with a0=[a0+108], a1=sym(_XmStrings)+10305, a2=[a0+104], a3=sym(_XmStrings)+7562, a4=[a0+104], a5=0x0.
  The `jalr` at 0x10037a6c calls XtVaSetValues with a0=[a0+156], a1=sym(_XmStrings)+10305, a2=[a0+188], a3=sym(_XmStrings)+7562, a4=[a0+188], a5=0x0.
  The `jalr` at 0x10037ae0 calls XtVaCreateManagedWidget with a0=0x100963d0, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+5427, a6=0x2, a7=sym(_XmStrings)+5350.
  The `jalr` at 0x10037c10 calls XtVaCreateManagedWidget with a0=0x100963e0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10037c30 calls __nw__GUi with a0=0x4c, a1=unknown, a2=a0 at entry (arg0), a3=unknown.
  The `jalr` at 0x10037c78 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x100963f0, a3=0x0, a4=0x0.
  The `jalr` at 0x10037ccc calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+252], a1=0x10096400, a2=sym(horizontalSyncCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10037d00 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+252], a1=0x10096418, a2=sym(compositeSyncCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10037e0c calls XtVaCreateManagedWidget with a0=0x10096430, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10037e3c calls XtAddCallback with a0=[a0+52], a1=sym(_XmStrings)+4683, a2=sym(channelBrowseCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10037f2c calls XtVaCreateManagedWidget with a0=0x10096448, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x4, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x10037f5c calls XtAddCallback with a0=[a0+100], a1=sym(_XmStrings)+4683, a2=sym(formatCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10038098 calls XtVaCreateManagedWidget with a0=0x10096458, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10038194 calls XtVaCreateManagedWidget with a0=0x10096468, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x4, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x100381c4 calls XtAddCallback with a0=[a0+224], a1=sym(_XmStrings)+4683, a2=sym(vPhaseCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100382b4 calls XtVaCreateManagedWidget with a0=0x10096478, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x4, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x100382e4 calls XtAddCallback with a0=[a0+140], a1=sym(_XmStrings)+4683, a2=sym(hPhaseCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003840c calls XtVaCreateManagedWidget with a0=0x10096488, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1003853c calls XtVaCreateManagedWidget with a0=0x10096498, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1003855c calls __nw__GUi with a0=0x4c, a1=unknown, a2=a0 at entry (arg0), a3=unknown.
  The `jalr` at 0x100385a4 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x100964a8, a3=0x0, a4=0x0.
  The `jalr` at 0x100385f8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+260], a1=0x100964b8, a2=sym(yLockedCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1003862c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+260], a1=0x100964c8, a2=sym(yPixelCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1003864c calls __nw__GUi with a0=0x4c, a1=unknown, a2=a0 at entry (arg0), a3=unknown.
  The `jalr` at 0x10038694 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x100964d8, a3=0x0, a4=0x0.
  The `jalr` at 0x100386e8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+256], a1=0x100964e8, a2=sym(xLockedCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1003871c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+256], a1=0x100964f8, a2=sym(xPixelCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10038750 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+256], a1=0x10096508, a2=sym(xTileCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10038898 calls XtVaCreateManagedWidget with a0=0x10096518, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10038994 calls XtVaCreateManagedWidget with a0=0x10096528, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x4, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x100389c4 calls XtAddCallback with a0=[a0+68], a1=sym(_XmStrings)+4683, a2=sym(cursorPriorityCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10038ae4 calls XtVaCreateManagedWidget with a0=0x10096540, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10038b04 calls __nw__GUi with a0=0x4c, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0x10038b4c calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10096558, a3=0x0, a4=0x0.
  The `jalr` at 0x10038ba0 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+248], a1=0x10096568, a2=sym(rgb10Callback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10038bd4 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+248], a1=0x10096578, a2=sym(rgba10Callback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10038c08 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+248], a1=0x10096588, a2=sym(rgb12Callback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10038c38 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+248], a1=0x100aa548, a2=sym(zCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10038c6c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+248], a1=0x10096598, a2=sym(fsCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x10038d9c calls XtVaCreateManagedWidget with a0=0x100965a8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10038ec8 calls XtVaCreateManagedWidget with a0=0x100965c0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x2, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10038fe8 calls XtVaCreateManagedWidget with a0=0x100965d0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x2, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10039124 calls XtVaCreateManagedWidget with a0=0x100965e0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10039154 calls XtAddCallback with a0=[a0+144], a1=sym(_XmStrings)+4683, a2=sym(heightCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10039284 calls XtVaCreateManagedWidget with a0=0x100965f0, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100392b4 calls XtAddCallback with a0=[a0+228], a1=sym(_XmStrings)+4683, a2=sym(widthCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100393b4 calls XtVaCreateManagedWidget with a0=0x10096600, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x100393e4 calls XtAddCallback with a0=[a0+240], a1=sym(_XmStrings)+4683, a2=sym(yOriginCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100394e4 calls XtVaCreateManagedWidget with a0=0x10096610, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10039514 calls XtAddCallback with a0=[a0+232], a1=sym(_XmStrings)+4683, a2=sym(xOriginCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10039654 calls XtVaCreateManagedWidget with a0=0x10096620, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x10039684 calls XtAddCallback with a0=[a0+60], a1=sym(_XmStrings)+4683, a2=sym(closeChannelCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100397ac calls XtVaCreateManagedWidget with a0=0x100aa550, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x2, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x10039908 calls XtVaCreateManagedWidget with a0=0x10096638, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(XtStrings)+124, a4=0x0, a5=sym(_XmStrings)+4724, a6=0x0, a7=sym(_XmStrings)+7513.
  The `jalr` at 0x1003993c calls XtVaSetValues with a0=[a0+216], a1=sym(_XmStrings)+10305, a2=[a0+132], a3=0x0.
  The `jalr` at 0x10039964 calls XtVaSetValues with a0=[a0+32], a1=sym(_XmStrings)+10305, a2=[a0+132], a3=0x0.
  The `jalr` at 0x10039978 calls baseWidget__10VkMenuItemCGv with a0=[a0+244], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10039a58 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x1, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x10039a90 calls XtVaSetValues with a0=[a0+36], a1=sym(_XmStrings)+10305, a2=[a0+168], a3=sym(_XmStrings)+7562, a4=[a0+116], a5=0x0.
  The `jalr` at 0x10039ac8 calls XtVaSetValues with a0=[a0+112], a1=sym(_XmStrings)+10305, a2=[a0+168], a3=sym(_XmStrings)+7562, a4=[a0+172], a5=0x0.
  The `jalr` at 0x10039b00 calls XtVaSetValues with a0=[a0+168], a1=sym(_XmStrings)+10305, a2=[a0+132], a3=sym(_XmStrings)+7562, a4=[a0+132], a5=0x0.
  The `jalr` at 0x10039b28 calls XtVaSetValues with a0=[a0+40], a1=sym(_XmStrings)+10305, a2=[a0+132], a3=0x0.
  The `jalr` at 0x10039b50 calls XtVaSetValues with a0=[a0+116], a1=sym(_XmStrings)+10305, a2=[a0+132], a3=0x0.
  The `jalr` at 0x10039b78 calls XtVaSetValues with a0=[a0+172], a1=sym(_XmStrings)+10305, a2=[a0+132], a3=0x0.
  The `jalr` at 0x10039ba0 calls XtVaSetValues with a0=[a0+132], a1=sym(_XmStrings)+10305, a2=[a0+204], a3=0x0.
  The `jalr` at 0x10039bd8 calls XtVaSetValues with a0=[a0+128], a1=sym(_XmStrings)+10305, a2=[a0+124], a3=sym(_XmStrings)+7562, a4=[a0+124], a5=0x0.
  The `jalr` at 0x10039c10 calls XtVaSetValues with a0=[a0+44], a1=sym(_XmStrings)+10305, a2=[a0+176], a3=sym(_XmStrings)+7562, a4=[a0+120], a5=0x0.
  The `jalr` at 0x10039c48 calls XtVaSetValues with a0=[a0+120], a1=sym(_XmStrings)+10305, a2=[a0+176], a3=sym(_XmStrings)+7562, a4=[a0+176], a5=0x0.
  The `jalr` at 0x10039c80 calls XtVaSetValues with a0=[a0+176], a1=sym(_XmStrings)+10305, a2=[a0+204], a3=sym(_XmStrings)+7562, a4=[a0+204], a5=0x0.
  The `jalr` at 0x10039ca8 calls XtVaSetValues with a0=[a0+204], a1=sym(_XmStrings)+10305, a2=[a0+208], a3=0x0.
  The `jalr` at 0x10039ce0 calls XtVaSetValues with a0=[a0+212], a1=sym(_XmStrings)+10305, a2=[a0+72], a3=sym(_XmStrings)+7562, a4=[a0+184], a5=0x0.
  The `jalr` at 0x10039d18 calls XtVaSetValues with a0=[a0+184], a1=sym(_XmStrings)+10305, a2=[a0+72], a3=sym(_XmStrings)+7562, a4=[a0+72], a5=0x0.
  The `jalr` at 0x10039d40 calls XtVaSetValues with a0=[a0+72], a1=sym(_XmStrings)+10305, a2=[a0+160], a3=0x0.
  The `jalr` at 0x10039d68 calls XtVaSetValues with a0=[a0+208], a1=sym(_XmStrings)+10305, a2=[a0+136], a3=0x0.
  The `jalr` at 0x10039d7c calls baseWidget__10VkMenuItemCGv with a0=[a0+252], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10039e94 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x10039ecc calls XtVaSetValues with a0=[a0+52], a1=sym(_XmStrings)+10305, a2=[a0+100], a3=sym(_XmStrings)+7562, a4=[a0+100], a5=0x0.
  The `jalr` at 0x10039f04 calls XtVaSetValues with a0=[a0+100], a1=sym(_XmStrings)+10305, a2=[a0+96], a3=sym(_XmStrings)+7562, a4=[a0+96], a5=0x0.
  The `jalr` at 0x10039f3c calls XtVaSetValues with a0=[a0+224], a1=sym(_XmStrings)+10305, a2=[a0+220], a3=sym(_XmStrings)+7562, a4=[a0+220], a5=0x0.
  The `jalr` at 0x10039f74 calls XtVaSetValues with a0=[a0+140], a1=sym(_XmStrings)+10305, a2=[a0+136], a3=sym(_XmStrings)+7562, a4=[a0+136], a5=0x0.
  The `jalr` at 0x10039f9c calls XtVaSetValues with a0=[a0+220], a1=sym(_XmStrings)+10305, a2=[a0+136], a3=0x0.
  The `jalr` at 0x10039fc4 calls XtVaSetValues with a0=[a0+136], a1=sym(_XmStrings)+10305, a2=[a0+164], a3=0x0.
  The `jalr` at 0x10039fd8 calls baseWidget__10VkMenuItemCGv with a0=[a0+260], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10039ff0 calls baseWidget__10VkMenuItemCGv with a0=[a0+256], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003a0f0 calls XtVaSetValues with a0=unknown, a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x1003a104 calls baseWidget__10VkMenuItemCGv with a0=[a0+256], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003a20c calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x1003a244 calls XtVaSetValues with a0=[a0+68], a1=sym(_XmStrings)+10305, a2=[a0+64], a3=sym(_XmStrings)+7562, a4=[a0+64], a5=0x0.
  The `jalr` at 0x1003a258 calls baseWidget__10VkMenuItemCGv with a0=[a0+248], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003a290 calls XtVaSetValues with a0=[a0+64], a1=sym(_XmStrings)+10305, a2=[a0+160], a3=sym(_XmStrings)+7562, a4=ret(baseWidget__10VkMenuItemCGv), a5=0x0.
  The `jalr` at 0x1003a2a4 calls baseWidget__10VkMenuItemCGv with a0=[a0+248], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003a3a8 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x1003a3d0 calls XtVaSetValues with a0=[a0+160], a1=sym(_XmStrings)+10305, a2=[a0+148], a3=0x0.
  The `jalr` at 0x1003a408 calls XtVaSetValues with a0=[a0+192], a1=sym(_XmStrings)+10305, a2=[a0+148], a3=sym(_XmStrings)+7562, a4=[a0+240], a5=0x0.
  The `jalr` at 0x1003a440 calls XtVaSetValues with a0=[a0+48], a1=sym(_XmStrings)+10305, a2=[a0+228], a3=sym(_XmStrings)+7562, a4=[a0+228], a5=0x0.
  The `jalr` at 0x1003a478 calls XtVaSetValues with a0=[a0+240], a1=sym(_XmStrings)+10305, a2=[a0+148], a3=sym(_XmStrings)+7562, a4=[a0+236], a5=0x0.
  The `jalr` at 0x1003a4b0 calls XtVaSetValues with a0=[a0+232], a1=sym(_XmStrings)+10305, a2=[a0+148], a3=sym(_XmStrings)+7562, a4=[a0+148], a5=0x0.
  The `jalr` at 0x1003a4d8 calls XtVaSetValues with a0=[a0+236], a1=sym(_XmStrings)+10305, a2=[a0+148], a3=0x0.
  The `jalr` at 0x1003a4fc calls XtAddCallback with a0=[a0+232], a1=sym(_XmStrings)+7765, a2=sym(xOriginCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003a520 calls XtAddCallback with a0=[a0+240], a1=sym(_XmStrings)+7765, a2=sym(yOriginCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003a544 calls XtAddCallback with a0=[a0+228], a1=sym(_XmStrings)+7765, a2=sym(widthCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003a568 calls XtAddCallback with a0=[a0+144], a1=sym(_XmStrings)+7765, a2=sym(heightCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003a58c calls XtAddCallback with a0=[a0+68], a1=sym(_XmStrings)+7765, a2=sym(cursorPriorityCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003a5b0 calls XtAddCallback with a0=[a0+224], a1=sym(_XmStrings)+7765, a2=sym(vPhaseCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003a5d4 calls XtAddCallback with a0=[a0+140], a1=sym(_XmStrings)+7765, a2=sym(hPhaseCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003a5f8 calls XtAddCallback with a0=[a0+100], a1=sym(_XmStrings)+7765, a2=sym(formatCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003a61c calls XtAddCallback with a0=[a0+40], a1=sym(_XmStrings)+7765, a2=sym(bGammaCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003a640 calls XtAddCallback with a0=[a0+116], a1=sym(_XmStrings)+7765, a2=sym(gGammaCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003a664 calls XtAddCallback with a0=[a0+172], a1=sym(_XmStrings)+7765, a2=sym(rGammaCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003a688 calls XtAddCallback with a0=[a0+128], a1=sym(_XmStrings)+7765, a2=sym(gainCallback__7Form1UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `beq` branch at 0x100358cc targets 0x10035920, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10035918 targets 0x10035924 and is always taken.
  The `beq` branch at 0x10037c48 targets 0x10037c9c, is taken when a3(=ret(__nw__GUi)) == 0, and falls through when a3(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10037c94 targets 0x10037ca0 and is always taken.
  The `beq` branch at 0x10038574 targets 0x100385c8, is taken when a3(=ret(__nw__GUi)) == 0, and falls through when a3(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100385c0 targets 0x100385cc and is always taken.
  The `beq` branch at 0x10038664 targets 0x100386b8, is taken when a3(=ret(__nw__GUi)) == 0, and falls through when a3(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100386b0 targets 0x100386bc and is always taken.
  The `beq` branch at 0x10038b1c targets 0x10038b70, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10038b68 targets 0x10038b74 and is always taken.
  The return at 0x1003a69c has v0 = ret(XtAddCallback).
  The instructions from 0x1003a6a4 to 0x1003a6b4 are not reached by any path from the entry, and their branches are not listed.
- `className__7Form1UIGv` in `usr/gfx/ircombine` at 0x1003a6c0 (n32).
  It occupies 60 bytes.
  The `beq` branch at 0x1003a6e0 targets 0x1003a6e8 and is always taken.
  The return at 0x1003a6f4 has v0 = 0x100aa558.
- `alphaChannel__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003a700 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003a714 targets 0x1003a71c and is always taken.
  The return at 0x1003a724 has v0 = unknown.
- `bGamma__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003a730 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003a744 targets 0x1003a74c and is always taken.
  The return at 0x1003a754 has v0 = unknown.
- `bSync__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003a760 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003a774 targets 0x1003a77c and is always taken.
  The return at 0x1003a784 has v0 = unknown.
- `channelBrowse__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003a790 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003a7a4 targets 0x1003a7ac and is always taken.
  The return at 0x1003a7b4 has v0 = unknown.
- `channelEnable__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003a7c0 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003a7d4 targets 0x1003a7dc and is always taken.
  The return at 0x1003a7e4 has v0 = unknown.
- `closeChannel__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003a7f0 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003a804 targets 0x1003a80c and is always taken.
  The return at 0x1003a814 has v0 = unknown.
- `compositeSync__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003a820 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003a834 targets 0x1003a83c and is always taken.
  The return at 0x1003a844 has v0 = unknown.
- `cursorPriority__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003a850 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003a864 targets 0x1003a86c and is always taken.
  The return at 0x1003a874 has v0 = unknown.
- `dither__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003a880 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003a894 targets 0x1003a89c and is always taken.
  The return at 0x1003a8a4 has v0 = unknown.
- `format__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003a8b0 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003a8c4 targets 0x1003a8cc and is always taken.
  The return at 0x1003a8d4 has v0 = unknown.
- `fs__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003a8e0 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003a8f4 targets 0x1003a8fc and is always taken.
  The return at 0x1003a904 has v0 = unknown.
- `gGamma__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003a910 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003a924 targets 0x1003a92c and is always taken.
  The return at 0x1003a934 has v0 = unknown.
- `gSync__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003a940 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003a954 targets 0x1003a95c and is always taken.
  The return at 0x1003a964 has v0 = unknown.
- `gain__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003a970 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003a984 targets 0x1003a98c and is always taken.
  The return at 0x1003a994 has v0 = unknown.
- `hPhase__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003a9a0 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003a9b4 targets 0x1003a9bc and is always taken.
  The return at 0x1003a9c4 has v0 = unknown.
- `height__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003a9d0 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003a9e4 targets 0x1003a9ec and is always taken.
  The return at 0x1003a9f4 has v0 = unknown.
- `horizontalSync__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003aa00 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003aa14 targets 0x1003aa1c and is always taken.
  The return at 0x1003aa24 has v0 = unknown.
- `interleaved__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003aa30 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003aa44 targets 0x1003aa4c and is always taken.
  The return at 0x1003aa54 has v0 = unknown.
- `progressive__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003aa60 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003aa74 targets 0x1003aa7c and is always taken.
  The return at 0x1003aa84 has v0 = unknown.
- `rGamma__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003aa90 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003aaa4 targets 0x1003aaac and is always taken.
  The return at 0x1003aab4 has v0 = unknown.
- `rSync__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003aac0 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003aad4 targets 0x1003aadc and is always taken.
  The return at 0x1003aae4 has v0 = unknown.
- `restoreSize__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003aaf0 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003ab04 targets 0x1003ab0c and is always taken.
  The return at 0x1003ab14 has v0 = unknown.
- `rgb10__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003ab20 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003ab34 targets 0x1003ab3c and is always taken.
  The return at 0x1003ab44 has v0 = unknown.
- `rgb12__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003ab50 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003ab64 targets 0x1003ab6c and is always taken.
  The return at 0x1003ab74 has v0 = unknown.
- `rgba10__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003ab80 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003ab94 targets 0x1003ab9c and is always taken.
  The return at 0x1003aba4 has v0 = unknown.
- `setup__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003abb0 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003abc4 targets 0x1003abcc and is always taken.
  The return at 0x1003abd4 has v0 = unknown.
- `stacked__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003abe0 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003abf4 targets 0x1003abfc and is always taken.
  The return at 0x1003ac04 has v0 = unknown.
- `triLevelSync__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003ac10 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003ac24 targets 0x1003ac2c and is always taken.
  The return at 0x1003ac34 has v0 = unknown.
- `useGamma__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003ac40 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003ac54 targets 0x1003ac5c and is always taken.
  The return at 0x1003ac64 has v0 = unknown.
- `vPhase__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003ac70 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003ac84 targets 0x1003ac8c and is always taken.
  The return at 0x1003ac94 has v0 = unknown.
- `width__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003aca0 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003acb4 targets 0x1003acbc and is always taken.
  The return at 0x1003acc4 has v0 = unknown.
- `xLocked__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003acd0 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003ace4 targets 0x1003acec and is always taken.
  The return at 0x1003acf4 has v0 = unknown.
- `xOrigin__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003ad00 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003ad14 targets 0x1003ad1c and is always taken.
  The return at 0x1003ad24 has v0 = unknown.
- `xPixel__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003ad30 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003ad44 targets 0x1003ad4c and is always taken.
  The return at 0x1003ad54 has v0 = unknown.
- `xTile__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003ad60 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003ad74 targets 0x1003ad7c and is always taken.
  The return at 0x1003ad84 has v0 = unknown.
- `yLocked__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003ad90 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003ada4 targets 0x1003adac and is always taken.
  The return at 0x1003adb4 has v0 = unknown.
- `yOrigin__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003adc0 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003add4 targets 0x1003addc and is always taken.
  The return at 0x1003ade4 has v0 = unknown.
- `yPixel__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003adf0 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003ae04 targets 0x1003ae0c and is always taken.
  The return at 0x1003ae14 has v0 = unknown.
- `z__7Form1UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003ae20 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1003ae34 targets 0x1003ae3c and is always taken.
  The return at 0x1003ae44 has v0 = unknown.
- `alphaChannelCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003ae50 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003ae80, `lw` at 0x1003ae9c.
  The `lw` at 0x1003ae84 loads 4 bytes from [a1+8] +0x9c.
  The `lw` at 0x1003aea0 loads 4 bytes from [a1+8] +0xa4.
  The `jalr` at 0x1003aea4 calls (unknown callee) with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x76220.
  The `beq` branch at 0x1003aeac targets 0x1003aeb4 and is always taken.
  The return at 0x1003aec0 has v0 = ret(unknown).
- `bGammaCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003aed0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003af00, `lw` at 0x1003af1c.
  The `lw` at 0x1003af04 loads 4 bytes from [a1+8] +0xa8.
  The `lw` at 0x1003af20 loads 4 bytes from [a1+8] +0xb0.
  The `jalr` at 0x1003af24 calls (unknown callee) with a0=([[a1+8]+168] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x761a0.
  The `beq` branch at 0x1003af2c targets 0x1003af34 and is always taken.
  The return at 0x1003af40 has v0 = ret(unknown).
- `bSyncCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003af50 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003af80, `lw` at 0x1003af9c.
  The `lw` at 0x1003af84 loads 4 bytes from [a1+8] +0xb4.
  The `lw` at 0x1003afa0 loads 4 bytes from [a1+8] +0xbc.
  The `jalr` at 0x1003afa4 calls (unknown callee) with a0=([[a1+8]+180] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x76120.
  The `beq` branch at 0x1003afac targets 0x1003afb4 and is always taken.
  The return at 0x1003afc0 has v0 = ret(unknown).
- `channelBrowseCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003afd0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003b000, `lw` at 0x1003b01c.
  The `lw` at 0x1003b004 loads 4 bytes from [a1+8] +0xc0.
  The `lw` at 0x1003b020 loads 4 bytes from [a1+8] +0xc8.
  The `jalr` at 0x1003b024 calls (unknown callee) with a0=([[a1+8]+192] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x760a0.
  The `beq` branch at 0x1003b02c targets 0x1003b034 and is always taken.
  The return at 0x1003b040 has v0 = ret(unknown).
- `channelEnableCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003b050 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003b080, `lw` at 0x1003b09c.
  The `lw` at 0x1003b084 loads 4 bytes from [a1+8] +0xcc.
  The `lw` at 0x1003b0a0 loads 4 bytes from [a1+8] +0xd4.
  The `jalr` at 0x1003b0a4 calls (unknown callee) with a0=([[a1+8]+204] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x76020.
  The `beq` branch at 0x1003b0ac targets 0x1003b0b4 and is always taken.
  The return at 0x1003b0c0 has v0 = ret(unknown).
- `closeChannelCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003b0d0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003b100, `lw` at 0x1003b11c.
  The `lw` at 0x1003b104 loads 4 bytes from [a1+8] +0xd8.
  The `lw` at 0x1003b120 loads 4 bytes from [a1+8] +0xe0.
  The `jalr` at 0x1003b124 calls (unknown callee) with a0=([[a1+8]+216] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x75fa0.
  The `beq` branch at 0x1003b12c targets 0x1003b134 and is always taken.
  The return at 0x1003b140 has v0 = ret(unknown).
- `compositeSyncCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003b150 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003b180, `lw` at 0x1003b19c.
  The `lw` at 0x1003b184 loads 4 bytes from [a1+8] +0xe4.
  The `lw` at 0x1003b1a0 loads 4 bytes from [a1+8] +0xec.
  The `jalr` at 0x1003b1a4 calls (unknown callee) with a0=([[a1+8]+228] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x75f20.
  The `beq` branch at 0x1003b1ac targets 0x1003b1b4 and is always taken.
  The return at 0x1003b1c0 has v0 = ret(unknown).
- `cursorPriorityCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003b1d0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003b200, `lw` at 0x1003b21c.
  The `lw` at 0x1003b204 loads 4 bytes from [a1+8] +0xf0.
  The `lw` at 0x1003b220 loads 4 bytes from [a1+8] +0xf8.
  The `jalr` at 0x1003b224 calls (unknown callee) with a0=([[a1+8]+240] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x75ea0.
  The `beq` branch at 0x1003b22c targets 0x1003b234 and is always taken.
  The return at 0x1003b240 has v0 = ret(unknown).
- `ditherCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003b250 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003b280, `lw` at 0x1003b29c.
  The `lw` at 0x1003b284 loads 4 bytes from [a1+8] +0xfc.
  The `lw` at 0x1003b2a0 loads 4 bytes from [a1+8] +0x104.
  The `jalr` at 0x1003b2a4 calls (unknown callee) with a0=([[a1+8]+252] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x75e20.
  The `beq` branch at 0x1003b2ac targets 0x1003b2b4 and is always taken.
  The return at 0x1003b2c0 has v0 = ret(unknown).
- `formatCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003b2d0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003b300, `lw` at 0x1003b31c.
  The `lw` at 0x1003b304 loads 4 bytes from [a1+8] +0x108.
  The `lw` at 0x1003b320 loads 4 bytes from [a1+8] +0x110.
  The `jalr` at 0x1003b324 calls (unknown callee) with a0=([[a1+8]+264] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x75da0.
  The `beq` branch at 0x1003b32c targets 0x1003b334 and is always taken.
  The return at 0x1003b340 has v0 = ret(unknown).
- `fsCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003b350 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003b380, `lw` at 0x1003b39c.
  The `lw` at 0x1003b384 loads 4 bytes from [a1+8] +0x114.
  The `lw` at 0x1003b3a0 loads 4 bytes from [a1+8] +0x11c.
  The `jalr` at 0x1003b3a4 calls (unknown callee) with a0=([[a1+8]+276] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x75d20.
  The `beq` branch at 0x1003b3ac targets 0x1003b3b4 and is always taken.
  The return at 0x1003b3c0 has v0 = ret(unknown).
- `gGammaCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003b3d0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003b400, `lw` at 0x1003b41c.
  The `lw` at 0x1003b404 loads 4 bytes from [a1+8] +0x120.
  The `lw` at 0x1003b420 loads 4 bytes from [a1+8] +0x128.
  The `jalr` at 0x1003b424 calls (unknown callee) with a0=([[a1+8]+288] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x75ca0.
  The `beq` branch at 0x1003b42c targets 0x1003b434 and is always taken.
  The return at 0x1003b440 has v0 = ret(unknown).
- `gSyncCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003b450 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003b480, `lw` at 0x1003b49c.
  The `lw` at 0x1003b484 loads 4 bytes from [a1+8] +0x12c.
  The `lw` at 0x1003b4a0 loads 4 bytes from [a1+8] +0x134.
  The `jalr` at 0x1003b4a4 calls (unknown callee) with a0=([[a1+8]+300] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x75c20.
  The `beq` branch at 0x1003b4ac targets 0x1003b4b4 and is always taken.
  The return at 0x1003b4c0 has v0 = ret(unknown).
- `gainCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003b4d0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003b500, `lw` at 0x1003b51c.
  The `lw` at 0x1003b504 loads 4 bytes from [a1+8] +0x138.
  The `lw` at 0x1003b520 loads 4 bytes from [a1+8] +0x140.
  The `jalr` at 0x1003b524 calls (unknown callee) with a0=([[a1+8]+312] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x75ba0.
  The `beq` branch at 0x1003b52c targets 0x1003b534 and is always taken.
  The return at 0x1003b540 has v0 = ret(unknown).
- `hPhaseCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003b550 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003b580, `lw` at 0x1003b59c.
  The `lw` at 0x1003b584 loads 4 bytes from [a1+8] +0x144.
  The `lw` at 0x1003b5a0 loads 4 bytes from [a1+8] +0x14c.
  The `jalr` at 0x1003b5a4 calls (unknown callee) with a0=([[a1+8]+324] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x75b20.
  The `beq` branch at 0x1003b5ac targets 0x1003b5b4 and is always taken.
  The return at 0x1003b5c0 has v0 = ret(unknown).
- `heightCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003b5d0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003b600, `lw` at 0x1003b61c.
  The `lw` at 0x1003b604 loads 4 bytes from [a1+8] +0x150.
  The `lw` at 0x1003b620 loads 4 bytes from [a1+8] +0x158.
  The `jalr` at 0x1003b624 calls (unknown callee) with a0=([[a1+8]+336] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x75aa0.
  The `beq` branch at 0x1003b62c targets 0x1003b634 and is always taken.
  The return at 0x1003b640 has v0 = ret(unknown).
- `horizontalSyncCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003b650 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003b680, `lw` at 0x1003b69c.
  The `lw` at 0x1003b684 loads 4 bytes from [a1+8] +0x15c.
  The `lw` at 0x1003b6a0 loads 4 bytes from [a1+8] +0x164.
  The `jalr` at 0x1003b6a4 calls (unknown callee) with a0=([[a1+8]+348] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x75a20.
  The `beq` branch at 0x1003b6ac targets 0x1003b6b4 and is always taken.
  The return at 0x1003b6c0 has v0 = ret(unknown).
- `interleavedCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003b6d0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003b700, `lw` at 0x1003b71c.
  The `lw` at 0x1003b704 loads 4 bytes from [a1+8] +0x168.
  The `lw` at 0x1003b720 loads 4 bytes from [a1+8] +0x170.
  The `jalr` at 0x1003b724 calls (unknown callee) with a0=([[a1+8]+360] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x759a0.
  The `beq` branch at 0x1003b72c targets 0x1003b734 and is always taken.
  The return at 0x1003b740 has v0 = ret(unknown).
- `progressiveCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003b750 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003b780, `lw` at 0x1003b79c.
  The `lw` at 0x1003b784 loads 4 bytes from [a1+8] +0x174.
  The `lw` at 0x1003b7a0 loads 4 bytes from [a1+8] +0x17c.
  The `jalr` at 0x1003b7a4 calls (unknown callee) with a0=([[a1+8]+372] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x75920.
  The `beq` branch at 0x1003b7ac targets 0x1003b7b4 and is always taken.
  The return at 0x1003b7c0 has v0 = ret(unknown).
- `rGammaCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003b7d0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003b800, `lw` at 0x1003b81c.
  The `lw` at 0x1003b804 loads 4 bytes from [a1+8] +0x180.
  The `lw` at 0x1003b820 loads 4 bytes from [a1+8] +0x188.
  The `jalr` at 0x1003b824 calls (unknown callee) with a0=([[a1+8]+384] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x758a0.
  The `beq` branch at 0x1003b82c targets 0x1003b834 and is always taken.
  The return at 0x1003b840 has v0 = ret(unknown).
- `rSyncCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003b850 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003b880, `lw` at 0x1003b89c.
  The `lw` at 0x1003b884 loads 4 bytes from [a1+8] +0x18c.
  The `lw` at 0x1003b8a0 loads 4 bytes from [a1+8] +0x194.
  The `jalr` at 0x1003b8a4 calls (unknown callee) with a0=([[a1+8]+396] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x75820.
  The `beq` branch at 0x1003b8ac targets 0x1003b8b4 and is always taken.
  The return at 0x1003b8c0 has v0 = ret(unknown).
- `restoreSizeCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003b8d0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003b900, `lw` at 0x1003b91c.
  The `lw` at 0x1003b904 loads 4 bytes from [a1+8] +0x198.
  The `lw` at 0x1003b920 loads 4 bytes from [a1+8] +0x1a0.
  The `jalr` at 0x1003b924 calls (unknown callee) with a0=([[a1+8]+408] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x757a0.
  The `beq` branch at 0x1003b92c targets 0x1003b934 and is always taken.
  The return at 0x1003b940 has v0 = ret(unknown).
- `rgb10Callback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003b950 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003b980, `lw` at 0x1003b99c.
  The `lw` at 0x1003b984 loads 4 bytes from [a1+8] +0x1a4.
  The `lw` at 0x1003b9a0 loads 4 bytes from [a1+8] +0x1ac.
  The `jalr` at 0x1003b9a4 calls (unknown callee) with a0=([[a1+8]+420] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x75720.
  The `beq` branch at 0x1003b9ac targets 0x1003b9b4 and is always taken.
  The return at 0x1003b9c0 has v0 = ret(unknown).
- `rgb12Callback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003b9d0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003ba00, `lw` at 0x1003ba1c.
  The `lw` at 0x1003ba04 loads 4 bytes from [a1+8] +0x1b0.
  The `lw` at 0x1003ba20 loads 4 bytes from [a1+8] +0x1b8.
  The `jalr` at 0x1003ba24 calls (unknown callee) with a0=([[a1+8]+432] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x756a0.
  The `beq` branch at 0x1003ba2c targets 0x1003ba34 and is always taken.
  The return at 0x1003ba40 has v0 = ret(unknown).
- `rgba10Callback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003ba50 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003ba80, `lw` at 0x1003ba9c.
  The `lw` at 0x1003ba84 loads 4 bytes from [a1+8] +0x1bc.
  The `lw` at 0x1003baa0 loads 4 bytes from [a1+8] +0x1c4.
  The `jalr` at 0x1003baa4 calls (unknown callee) with a0=([[a1+8]+444] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x75620.
  The `beq` branch at 0x1003baac targets 0x1003bab4 and is always taken.
  The return at 0x1003bac0 has v0 = ret(unknown).
- `setupCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003bad0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003bb00, `lw` at 0x1003bb1c.
  The `lw` at 0x1003bb04 loads 4 bytes from [a1+8] +0x1c8.
  The `lw` at 0x1003bb20 loads 4 bytes from [a1+8] +0x1d0.
  The `jalr` at 0x1003bb24 calls (unknown callee) with a0=([[a1+8]+456] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x755a0.
  The `beq` branch at 0x1003bb2c targets 0x1003bb34 and is always taken.
  The return at 0x1003bb40 has v0 = ret(unknown).
- `stackedCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003bb50 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003bb80, `lw` at 0x1003bb9c.
  The `lw` at 0x1003bb84 loads 4 bytes from [a1+8] +0x1d4.
  The `lw` at 0x1003bba0 loads 4 bytes from [a1+8] +0x1dc.
  The `jalr` at 0x1003bba4 calls (unknown callee) with a0=([[a1+8]+468] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x75520.
  The `beq` branch at 0x1003bbac targets 0x1003bbb4 and is always taken.
  The return at 0x1003bbc0 has v0 = ret(unknown).
- `triLevelSyncCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003bbd0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003bc00, `lw` at 0x1003bc1c.
  The `lw` at 0x1003bc04 loads 4 bytes from [a1+8] +0x1e0.
  The `lw` at 0x1003bc20 loads 4 bytes from [a1+8] +0x1e8.
  The `jalr` at 0x1003bc24 calls (unknown callee) with a0=([[a1+8]+480] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x754a0.
  The `beq` branch at 0x1003bc2c targets 0x1003bc34 and is always taken.
  The return at 0x1003bc40 has v0 = ret(unknown).
- `useGammaCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003bc50 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003bc80, `lw` at 0x1003bc9c.
  The `lw` at 0x1003bc84 loads 4 bytes from [a1+8] +0x1ec.
  The `lw` at 0x1003bca0 loads 4 bytes from [a1+8] +0x1f4.
  The `jalr` at 0x1003bca4 calls (unknown callee) with a0=([[a1+8]+492] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x75420.
  The `beq` branch at 0x1003bcac targets 0x1003bcb4 and is always taken.
  The return at 0x1003bcc0 has v0 = ret(unknown).
- `vPhaseCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003bcd0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003bd00, `lw` at 0x1003bd1c.
  The `lw` at 0x1003bd04 loads 4 bytes from [a1+8] +0x1f8.
  The `lw` at 0x1003bd20 loads 4 bytes from [a1+8] +0x200.
  The `jalr` at 0x1003bd24 calls (unknown callee) with a0=([[a1+8]+504] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x753a0.
  The `beq` branch at 0x1003bd2c targets 0x1003bd34 and is always taken.
  The return at 0x1003bd40 has v0 = ret(unknown).
- `widthCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003bd50 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003bd80, `lw` at 0x1003bd9c.
  The `lw` at 0x1003bd84 loads 4 bytes from [a1+8] +0x204.
  The `lw` at 0x1003bda0 loads 4 bytes from [a1+8] +0x20c.
  The `jalr` at 0x1003bda4 calls (unknown callee) with a0=([[a1+8]+516] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x75320.
  The `beq` branch at 0x1003bdac targets 0x1003bdb4 and is always taken.
  The return at 0x1003bdc0 has v0 = ret(unknown).
- `xLockedCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003bdd0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003be00, `lw` at 0x1003be1c.
  The `lw` at 0x1003be04 loads 4 bytes from [a1+8] +0x210.
  The `lw` at 0x1003be20 loads 4 bytes from [a1+8] +0x218.
  The `jalr` at 0x1003be24 calls (unknown callee) with a0=([[a1+8]+528] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x752a0.
  The `beq` branch at 0x1003be2c targets 0x1003be34 and is always taken.
  The return at 0x1003be40 has v0 = ret(unknown).
- `xOriginCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003be50 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003be80, `lw` at 0x1003be9c.
  The `lw` at 0x1003be84 loads 4 bytes from [a1+8] +0x21c.
  The `lw` at 0x1003bea0 loads 4 bytes from [a1+8] +0x224.
  The `jalr` at 0x1003bea4 calls (unknown callee) with a0=([[a1+8]+540] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x75220.
  The `beq` branch at 0x1003beac targets 0x1003beb4 and is always taken.
  The return at 0x1003bec0 has v0 = ret(unknown).
- `xPixelCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003bed0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003bf00, `lw` at 0x1003bf1c.
  The `lw` at 0x1003bf04 loads 4 bytes from [a1+8] +0x228.
  The `lw` at 0x1003bf20 loads 4 bytes from [a1+8] +0x230.
  The `jalr` at 0x1003bf24 calls (unknown callee) with a0=([[a1+8]+552] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x751a0.
  The `beq` branch at 0x1003bf2c targets 0x1003bf34 and is always taken.
  The return at 0x1003bf40 has v0 = ret(unknown).
- `xTileCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003bf50 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003bf80, `lw` at 0x1003bf9c.
  The `lw` at 0x1003bf84 loads 4 bytes from [a1+8] +0x234.
  The `lw` at 0x1003bfa0 loads 4 bytes from [a1+8] +0x23c.
  The `jalr` at 0x1003bfa4 calls (unknown callee) with a0=([[a1+8]+564] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x75120.
  The `beq` branch at 0x1003bfac targets 0x1003bfb4 and is always taken.
  The return at 0x1003bfc0 has v0 = ret(unknown).
- `yLockedCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003bfd0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003c000, `lw` at 0x1003c01c.
  The `lw` at 0x1003c004 loads 4 bytes from [a1+8] +0x240.
  The `lw` at 0x1003c020 loads 4 bytes from [a1+8] +0x248.
  The `jalr` at 0x1003c024 calls (unknown callee) with a0=([[a1+8]+576] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x750a0.
  The `beq` branch at 0x1003c02c targets 0x1003c034 and is always taken.
  The return at 0x1003c040 has v0 = ret(unknown).
- `yOriginCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003c050 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003c080, `lw` at 0x1003c09c.
  The `lw` at 0x1003c084 loads 4 bytes from [a1+8] +0x24c.
  The `lw` at 0x1003c0a0 loads 4 bytes from [a1+8] +0x254.
  The `jalr` at 0x1003c0a4 calls (unknown callee) with a0=([[a1+8]+588] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x75020.
  The `beq` branch at 0x1003c0ac targets 0x1003c0b4 and is always taken.
  The return at 0x1003c0c0 has v0 = ret(unknown).
- `yPixelCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003c0d0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003c100, `lw` at 0x1003c11c.
  The `lw` at 0x1003c104 loads 4 bytes from [a1+8] +0x258.
  The `lw` at 0x1003c120 loads 4 bytes from [a1+8] +0x260.
  The `jalr` at 0x1003c124 calls (unknown callee) with a0=([[a1+8]+600] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x74fa0.
  The `beq` branch at 0x1003c12c targets 0x1003c134 and is always taken.
  The return at 0x1003c140 has v0 = ret(unknown).
- `zCallback__7Form1UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1003c150 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1003c180, `lw` at 0x1003c19c.
  The `lw` at 0x1003c184 loads 4 bytes from [a1+8] +0x264.
  The `lw` at 0x1003c1a0 loads 4 bytes from [a1+8] +0x26c.
  The `jalr` at 0x1003c1a4 calls (unknown callee) with a0=([[a1+8]+612] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x74f20.
  The `beq` branch at 0x1003c1ac targets 0x1003c1b4 and is always taken.
  The return at 0x1003c1c0 has v0 = ret(unknown).
- `__ct__5Form2GPCcP10_WidgetRec` in `usr/gfx/ircombine` at 0x1003c1f0 (n32).
  It occupies 132 bytes.
  The `sw` at 0x1003c234 stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__5Form2)).
  The `jal` at 0x1003c224 calls __ct__7Form2UIGPCcP10_WidgetRec with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003c240 calls update__5Form2Gv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The return at 0x1003c258 has v0 = a0.
  The instructions from 0x1003c260 to 0x1003c270 are not reached by any path from the entry, and their branches are not listed.
- `__ct__5Form2GPCc` in `usr/gfx/ircombine` at 0x1003c280 (n32).
  It occupies 108 bytes.
  The `sw` at 0x1003c2bc stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__5Form2)).
  The `jal` at 0x1003c2ac calls __ct__7Form2UIGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1003c2d0 has v0 = a0.
  The instructions from 0x1003c2d8 to 0x1003c2e8 are not reached by any path from the entry, and their branches are not listed.
- `__dt__5Form2Gv` in `usr/gfx/ircombine` at 0x1003c2f0 (n32).
  It occupies 148 bytes.
  The `sw` at 0x1003c324 stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__5Form2)).
  The `jal` at 0x1003c334 calls __dt__7Form2UIGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1003c354 calls __dl__GPv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x1003c314 targets 0x1003c35c, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x1003c344 targets 0x1003c35c, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x1003c368 has v0 = unknown.
  The instructions from 0x1003c370 to 0x1003c380 are not reached by any path from the entry, and their branches are not listed.
- `className__5Form2Gv` in `usr/gfx/ircombine` at 0x1003c390 (n32).
  It occupies 60 bytes.
  The `beq` branch at 0x1003c3b0 targets 0x1003c3b8 and is always taken.
  The return at 0x1003c3c4 has v0 = 0x100aa560.
- `CreateForm2__5Form2SGPCcP10_WidgetRec` in `usr/gfx/ircombine` at 0x1003c3d0 (n32).
  It occupies 188 bytes.
  The `jalr` at 0x1003c3fc calls __nw__GUi with a0=0xb0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003c428 calls __ct__5Form2GPCcP10_WidgetRec with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=unknown.
  The `beq` branch at 0x1003c408 targets 0x1003c444, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1003c43c targets 0x1003c448 and is always taken.
  The return at 0x1003c470 has v0 = unknown.
  The instructions from 0x1003c478 to 0x1003c488 are not reached by any path from the entry, and their branches are not listed.
- `update__5Form2Gv` in `usr/gfx/ircombine` at 0x1003c4d0 (n32).
  It occupies 1892 bytes.
  The `lw` at 0x1003c4f0 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0x1003c50c loads 4 bytes from sym(combination) +0x104.
  The `lw` at 0x1003c520 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x1003c53c loads 4 bytes from sym(combination) +0x108.
  3 such `lw` accesses load 4 bytes from sym(combination) +0x100, including `lw` at 0x1003c558, `lw` at 0x1003c584, `lw` at 0x1003c644.
  4 such `lw` accesses load 4 bytes from unknown (base unknown), including `lw` at 0x1003c56c, `lw` at 0x1003c598, `lw` at 0x1003c5d4.
  The `sw` at 0x1003c610 stores 4 bytes to sym(combination) +0x100.
  The `lw` at 0x1003c63c loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lw` at 0x1003c658 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x1003c684 loads 4 bytes from a0 (arg0 at entry) +0x64.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0x1003c6b4, `lw` at 0x1003c774.
  The `lwc1` at 0x1003c6d0 loads 4 bytes from sym(combination) +0x234.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1003c6e4, `lw` at 0x1003c790.
  The `lwc1` at 0x1003c700 loads 4 bytes from sym(combination) +0x230.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5c, including `lw` at 0x1003c714, `lw` at 0x1003c7ac.
  The `lwc1` at 0x1003c730 loads 4 bytes from sym(combination) +0x22c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c, including `lw` at 0x1003c744, `lw` at 0x1003c7c8.
  4 such `lw` accesses load 4 bytes from sym(combination) +0x238, including `lw` at 0x1003c760, `lw` at 0x1003c77c, `lw` at 0x1003c798.
  4 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x1003c7e0, `lw` at 0x1003c7f0, `lw` at 0x1003c9dc.
  The `lw` at 0x1003c804 loads 4 bytes from ret(getTarget__18VkwindowMainWindowGv) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lw` at 0x1003c818, `lw` at 0x1003c85c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x94, including `lw` at 0x1003c82c, `lw` at 0x1003c870.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa4, including `lw` at 0x1003c840, `lw` at 0x1003c884.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x10c, including `lw` at 0x1003c898, `lw` at 0x1003c9c8.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0x1003c908, `lw` at 0x1003c928, `lw` at 0x1003c948.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x1003ca84, `lw` at 0x1003cabc, `lw` at 0x1003caf4.
  The `lw` at 0x1003cc00 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `lw` at 0x1003cc08 loads 4 bytes from sym(combination) +0x110.
  The `jal` at 0x1003c4f8 calls EZ__GP10_WidgetRec with a0=[a0+116], a1=0x74ba0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003c514 calls __as__9EZWrapperGi with a0=ret(EZ__GP10_WidgetRec), a1=[sym(combination)+260], a2=unknown, a3=unknown.
  The `jal` at 0x1003c528 calls EZ__GP10_WidgetRec with a0=[a0+120], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1003c544 calls __as__9EZWrapperGi with a0=ret(EZ__GP10_WidgetRec), a1=[sym(combination)+264], a2=unknown, a3=unknown.
  The `jalr` at 0x1003c64c calls set__12VkOptionMenuGi with a0=[a0+132], a1=[sym(combination)+256], a2=unknown, a3=unknown.
  The `jal` at 0x1003c660 calls EZ__GP10_WidgetRec with a0=[a0+56], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1003c678 calls __as__9EZWrapperGPCc with a0=ret(EZ__GP10_WidgetRec), a1=sym(combination), a2=unknown, a3=unknown.
  The `jal` at 0x1003c68c calls EZ__GP10_WidgetRec with a0=[a0+100], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1003c6a8 calls __as__9EZWrapperGPCc with a0=ret(EZ__GP10_WidgetRec), a1=sym(combination)+276, a2=unknown, a3=unknown.
  The `jal` at 0x1003c6bc calls EZ__GP10_WidgetRec with a0=[a0+36], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1003c6d8 calls __as__9EZWrapperGf with a0=ret(EZ__GP10_WidgetRec), a1=sym(combination), a2=unknown, a3=unknown; fp f13=[sym(combination)+564].
  The `jal` at 0x1003c6ec calls EZ__GP10_WidgetRec with a0=[a0+68], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1003c708 calls __as__9EZWrapperGf with a0=ret(EZ__GP10_WidgetRec), a1=sym(combination), a2=unknown, a3=unknown; fp f13=[sym(combination)+560].
  The `jal` at 0x1003c71c calls EZ__GP10_WidgetRec with a0=[a0+92], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1003c738 calls __as__9EZWrapperGf with a0=ret(EZ__GP10_WidgetRec), a1=sym(combination), a2=unknown, a3=unknown; fp f13=[sym(combination)+556].
  The `jal` at 0x1003c74c calls EZ__GP10_WidgetRec with a0=[a0+76], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1003c768 calls __as__9EZWrapperGi with a0=ret(EZ__GP10_WidgetRec), a1=[sym(combination)+568], a2=unknown, a3=unknown.
  The `jalr` at 0x1003c784 calls XtSetSensitive with a0=[a0+36], a1=[sym(combination)+568], a2=unknown, a3=unknown.
  The `jalr` at 0x1003c7a0 calls XtSetSensitive with a0=[a0+68], a1=[sym(combination)+568], a2=unknown, a3=unknown.
  The `jalr` at 0x1003c7bc calls XtSetSensitive with a0=[a0+92], a1=[sym(combination)+568], a2=unknown, a3=unknown.
  The `jalr` at 0x1003c7d4 calls XtSetSensitive with a0=[a0+76], a1=0x1, a2=unknown, a3=unknown.
  The `jal` at 0x1003c7f8 calls getTarget__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=[sym(vkwindow)], a2=unknown, a3=unknown.
  The `jalr` at 0x1003c820 calls activate__10VkMenuItemGv with a0=[a0+168], a1=[ret(getTarget__18VkwindowMainWindowGv)], a2=0x2, a3=unknown.
  The `jalr` at 0x1003c834 calls deactivate__10VkMenuItemGv with a0=[a0+148], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003c848 calls deactivate__10VkMenuItemGv with a0=[a0+164], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003c864 calls deactivate__10VkMenuItemGv with a0=[a0+168], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003c878 calls activate__10VkMenuItemGv with a0=[a0+148], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003c88c calls activate__10VkMenuItemGv with a0=[a0+164], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003c914 calls set__12VkOptionMenuGi with a0=[a0+124], a1=0x0, a2=0x2, a3=unknown.
  The `jalr` at 0x1003c934 calls set__12VkOptionMenuGi with a0=[a0+124], a1=0x1, a2=[sym(combination)+268], a3=0x7.
  The `jalr` at 0x1003c954 calls set__12VkOptionMenuGi with a0=[a0+124], a1=0x2, a2=[sym(combination)+268], a3=0x7, a4=[sym(combination)+268], a5=0x3.
  The `jalr` at 0x1003c974 calls set__12VkOptionMenuGi with a0=[a0+124], a1=0x3, a2=[sym(combination)+268], a3=0x7, a4=[sym(combination)+268], a5=0x3, a6=[sym(combination)+268], a7=0x4.
  The `jalr` at 0x1003c994 calls set__12VkOptionMenuGi with a0=[a0+124], a1=0x4, a2=[sym(combination)+268], a3=0x7, a4=[sym(combination)+268], a5=0x3, a6=[sym(combination)+268], a7=0x4.
  The `jalr` at 0x1003c9b4 calls set__12VkOptionMenuGi with a0=[a0+124], a1=0x5, a2=[sym(combination)+268], a3=0x7, a4=[sym(combination)+268], a5=0x3, a6=[sym(combination)+268], a7=0x4.
  The `jal` at 0x1003c9f4 calls getTarget__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=[sym(combination)+268], a2=[sym(vkwindow)], a3=unknown.
  The `jal` at 0x1003ca0c calls vfmtResolvePixelDepth with a0=sym(combination), a1=ret(getTarget__18VkwindowMainWindowGv), a2=unknown, a3=unknown.
  The `jal` at 0x1003ca8c calls EZ__GP10_WidgetRec with a0=[a0+48], a1=ret(vfmtResolvePixelDepth), a2=unknown, a3=unknown.
  The `jal` at 0x1003caa8 calls __as__9EZWrapperGPCc with a0=ret(EZ__GP10_WidgetRec), a1=0x10097038, a2=unknown, a3=unknown.
  The `jal` at 0x1003cac4 calls EZ__GP10_WidgetRec with a0=[a0+48], a1=ret(vfmtResolvePixelDepth), a2=ret(vfmtResolvePixelDepth), a3=0x7.
  The `jal` at 0x1003cae0 calls __as__9EZWrapperGPCc with a0=ret(EZ__GP10_WidgetRec), a1=0x10097048, a2=unknown, a3=unknown.
  The `jal` at 0x1003cafc calls EZ__GP10_WidgetRec with a0=[a0+48], a1=ret(vfmtResolvePixelDepth), a2=ret(vfmtResolvePixelDepth), a3=0x7, a4=ret(vfmtResolvePixelDepth), a5=0x3.
  The `jal` at 0x1003cb14 calls __as__9EZWrapperGPCc with a0=ret(EZ__GP10_WidgetRec), a1=0x100aa568, a2=unknown, a3=unknown.
  The `jal` at 0x1003cb30 calls EZ__GP10_WidgetRec with a0=[a0+48], a1=ret(vfmtResolvePixelDepth), a2=ret(vfmtResolvePixelDepth), a3=0x7, a4=ret(vfmtResolvePixelDepth), a5=0x3, a6=ret(vfmtResolvePixelDepth), a7=0x4.
  The `jal` at 0x1003cb4c calls __as__9EZWrapperGPCc with a0=ret(EZ__GP10_WidgetRec), a1=0x10097058, a2=unknown, a3=unknown.
  The `jal` at 0x1003cb68 calls EZ__GP10_WidgetRec with a0=[a0+48], a1=ret(vfmtResolvePixelDepth), a2=ret(vfmtResolvePixelDepth), a3=0x7, a4=ret(vfmtResolvePixelDepth), a5=0x3, a6=ret(vfmtResolvePixelDepth), a7=0x4.
  The `jal` at 0x1003cb80 calls __as__9EZWrapperGPCc with a0=ret(EZ__GP10_WidgetRec), a1=0x100aa570, a2=unknown, a3=unknown.
  The `jal` at 0x1003cb9c calls EZ__GP10_WidgetRec with a0=[a0+48], a1=ret(vfmtResolvePixelDepth), a2=ret(vfmtResolvePixelDepth), a3=0x7, a4=ret(vfmtResolvePixelDepth), a5=0x3, a6=ret(vfmtResolvePixelDepth), a7=0x4.
  The `jal` at 0x1003cbb8 calls __as__9EZWrapperGPCc with a0=ret(EZ__GP10_WidgetRec), a1=0x10097068, a2=unknown, a3=unknown.
  The `jal` at 0x1003cbdc calls EZ__GP10_WidgetRec with a0=[a0+48], a1=[sym(combination)+268], a2=0x2, a3=unknown.
  The `jal` at 0x1003cbf4 calls __as__9EZWrapperGPCc with a0=ret(EZ__GP10_WidgetRec), a1=0x100aa578, a2=unknown, a3=unknown.
  The `jalr` at 0x1003cc10 calls set__12VkOptionMenuGi with a0=[a0+128], a1=[sym(combination)+272], a2=unknown, a3=unknown.
  The `beq` branch at 0x1003c570 targets 0x1003c5a4, is taken when a2(unknown) == 0, and falls through when a2(unknown) != 0.
  The `bne` branch at 0x1003c59c targets 0x1003c638, is taken when a3(unknown) != 0, and falls through when a3(unknown) == 0.
  The `beq` branch at 0x1003c5b0 targets 0x1003c638; its condition is not analyzed.
  The `beq` branch at 0x1003c5d8 targets 0x1003c61c, is taken when a5(unknown) == 0, and falls through when a5(unknown) != 0.
  The `beq` branch at 0x1003c600 targets 0x1003c61c, is taken when a6(unknown) == 0, and falls through when a6(unknown) != 0.
  The `beq` branch at 0x1003c614 targets 0x1003c638 and is always taken.
  The `bne` branch at 0x1003c630 targets 0x1003c5b8, is taken when t1(unknown) < 0xf (signed), and falls through when t1(unknown) >= 0xf (signed).
  The `beq` branch at 0x1003c7e4 targets 0x1003c858, is taken when a1(=[sym(vkwindow)]) == 0, and falls through when a1(=[sym(vkwindow)]) != 0.
  The `bne` branch at 0x1003c80c targets 0x1003c858, is taken when a1(=[ret(getTarget__18VkwindowMainWindowGv)]) != a2(=0x2), and falls through when a1(=[ret(getTarget__18VkwindowMainWindowGv)]) == a2(=0x2).
  The `beq` branch at 0x1003c850 targets 0x1003c894 and is always taken.
  The `beq` branch at 0x1003c8a4 targets 0x1003c904, is taken when a1(=[sym(combination)+268]) == a2(=0x2), and falls through when a1(=[sym(combination)+268]) != a2(=0x2).
  The `beq` branch at 0x1003c8b4 targets 0x1003c924, is taken when a2(=[sym(combination)+268]) == a3(=0x7), and falls through when a2(=[sym(combination)+268]) != a3(=0x7).
  The `beq` branch at 0x1003c8c4 targets 0x1003c944, is taken when a4(=[sym(combination)+268]) == a5(=0x3), and falls through when a4(=[sym(combination)+268]) != a5(=0x3).
  The `beq` branch at 0x1003c8d4 targets 0x1003c964, is taken when a6(=[sym(combination)+268]) == a7(=0x4), and falls through when a6(=[sym(combination)+268]) != a7(=0x4).
  The `beq` branch at 0x1003c8e4 targets 0x1003c984, is taken when t0(=[sym(combination)+268]) == t1(=0x5), and falls through when t0(=[sym(combination)+268]) != t1(=0x5).
  The `beq` branch at 0x1003c8f4 targets 0x1003c9a4, is taken when t2(=[sym(combination)+268]) == t3(=0x6), and falls through when t2(=[sym(combination)+268]) != t3(=0x6).
  The `beq` branch at 0x1003c8fc targets 0x1003c9c4 and is always taken.
  The `beq` branch at 0x1003c91c targets 0x1003c9c4 and is always taken.
  The `beq` branch at 0x1003c93c targets 0x1003c9c4 and is always taken.
  The `beq` branch at 0x1003c95c targets 0x1003c9c4 and is always taken.
  The `beq` branch at 0x1003c97c targets 0x1003c9c4 and is always taken.
  The `beq` branch at 0x1003c99c targets 0x1003c9c4 and is always taken.
  The `beq` branch at 0x1003c9bc targets 0x1003c9c4 and is always taken.
  The `bne` branch at 0x1003c9d0 targets 0x1003cbd0, is taken when a1(=[sym(combination)+268]) != a2(=0x2), and falls through when a1(=[sym(combination)+268]) == a2(=0x2).
  The `beq` branch at 0x1003c9e0 targets 0x1003cbc8, is taken when a2(=[sym(vkwindow)]) == 0, and falls through when a2(=[sym(vkwindow)]) != 0.
  The `beq` branch at 0x1003ca20 targets 0x1003ca80, is taken when a1(=ret(vfmtResolvePixelDepth)) == 0, and falls through when a1(=ret(vfmtResolvePixelDepth)) != 0.
  The `beq` branch at 0x1003ca30 targets 0x1003cab8, is taken when a2(=ret(vfmtResolvePixelDepth)) == a3(=0x7), and falls through when a2(=ret(vfmtResolvePixelDepth)) != a3(=0x7).
  The `beq` branch at 0x1003ca40 targets 0x1003caf0, is taken when a4(=ret(vfmtResolvePixelDepth)) == a5(=0x3), and falls through when a4(=ret(vfmtResolvePixelDepth)) != a5(=0x3).
  The `beq` branch at 0x1003ca50 targets 0x1003cb24, is taken when a6(=ret(vfmtResolvePixelDepth)) == a7(=0x4), and falls through when a6(=ret(vfmtResolvePixelDepth)) != a7(=0x4).
  The `beq` branch at 0x1003ca60 targets 0x1003cb5c, is taken when t0(=ret(vfmtResolvePixelDepth)) == t1(=0x5), and falls through when t0(=ret(vfmtResolvePixelDepth)) != t1(=0x5).
  The `beq` branch at 0x1003ca70 targets 0x1003cb90, is taken when t2(=ret(vfmtResolvePixelDepth)) == t3(=0x6), and falls through when t2(=ret(vfmtResolvePixelDepth)) != t3(=0x6).
  The `beq` branch at 0x1003ca78 targets 0x1003cbc8 and is always taken.
  The `beq` branch at 0x1003cab0 targets 0x1003cbc8 and is always taken.
  The `beq` branch at 0x1003cae8 targets 0x1003cbc8 and is always taken.
  The `beq` branch at 0x1003cb1c targets 0x1003cbc8 and is always taken.
  The `beq` branch at 0x1003cb54 targets 0x1003cbc8 and is always taken.
  The `beq` branch at 0x1003cb88 targets 0x1003cbc8 and is always taken.
  The `beq` branch at 0x1003cbc0 targets 0x1003cbc8 and is always taken.
  The `beq` branch at 0x1003cbc8 targets 0x1003cbfc and is always taken.
  The `beq` branch at 0x1003cc18 targets 0x1003cc20 and is always taken.
  The return at 0x1003cc2c has v0 = ret(set__12VkOptionMenuGi).
- `clampManagedArea__5Form2Gv` in `usr/gfx/ircombine` at 0x1003cc40 (n32).
  It occupies 156 bytes.
  The `lw` at 0x1003cc60 loads 4 bytes from sym(combination) +0x104.
  The `sw` at 0x1003cc84 stores 4 bytes to sym(combination) +0x24c.
  The `lw` at 0x1003cc8c loads 4 bytes from sym(combination) +0x108.
  The `sw` at 0x1003ccac stores 4 bytes to sym(combination) +0x250.
  The `jal` at 0x1003ccb8 calls update__5Form2Gv with a0=a0 at entry (arg0), a1=[sym(combination)+260]+159, a2=0xa0, a3=a3 at entry (arg3).
  The `beq` branch at 0x1003ccc0 targets 0x1003ccc8 and is always taken.
  The return at 0x1003ccd4 has v0 = ret(update__5Form2Gv).
- `bGamma__5Form2GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003cce0 (n32).
  It occupies 156 bytes.
  The `swc1` at 0x1003cd48 stores 4 bytes to sym(combination) +0x234.
  The `lw` at 0x1003cd50 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1003cd14 calls EZ__GP10_WidgetRec with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003cd28 calls (unknown callee) with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003cd38 calls atof with a0=ret(0x1003dc30), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1003cd58 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=sym(combination), a2=unknown, a3=unknown.
  The `beq` branch at 0x1003cd60 targets 0x1003cd68 and is always taken.
  The return at 0x1003cd74 has v0 = ret(update__18VkwindowMainWindowGv).
- `closeGlobals__5Form2GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003cd80 (n32).
  It occupies 124 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xac, including `lw` at 0x1003cdb0, `lw` at 0x1003cdc0, `lw` at 0x1003cdcc.
  2 such `lw` accesses load 4 bytes from [a0+172] +0x8, including `lw` at 0x1003cdb4, `lw` at 0x1003cdd0.
  The `lw` at 0x1003cdb8 loads 4 bytes from [[a0+172]+8] +0x30.
  The `lw` at 0x1003cdd4 loads 4 bytes from [[a0+172]+8] +0x38.
  The `jalr` at 0x1003cdd8 calls (unknown callee) with a0=([[[a0+172]+8]+48] + [a0+172]), a1=[a0+172], a2=a2 at entry (arg2), a3=0x742f0.
  The `beq` branch at 0x1003cde0 targets 0x1003cde8 and is always taken.
  The return at 0x1003cdf4 has v0 = ret(unknown).
- `description__5Form2GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003ce00 (n32).
  It occupies 136 bytes.
  The `lw` at 0x1003ce30 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `jal` at 0x1003ce38 calls EZ__GP10_WidgetRec with a0=[a0+56], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x74270.
  The `jal` at 0x1003ce4c calls (unknown callee) with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003ce64 calls strncpy with a0=sym(combination), a1=ret(0x1003dc30), a2=0xff, a3=unknown.
  The `beq` branch at 0x1003ce6c targets 0x1003ce74 and is always taken.
  The return at 0x1003ce80 has v0 = ret(strncpy).
- `external__5Form2GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003ce90 (n32).
  It occupies 104 bytes.
  The `sw` at 0x1003cec4 stores 4 bytes to sym(combination) +0x110 (value 0x1).
  The `lw` at 0x1003cecc loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1003ced4 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=0x1, a2=sym(combination), a3=a2 at entry (arg2), a4=0x741e0.
  The `beq` branch at 0x1003cedc targets 0x1003cee4 and is always taken.
  The return at 0x1003cef0 has v0 = ret(update__18VkwindowMainWindowGv).
- `gGamma__5Form2GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003cf00 (n32).
  It occupies 156 bytes.
  The `swc1` at 0x1003cf68 stores 4 bytes to sym(combination) +0x230.
  The `lw` at 0x1003cf70 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1003cf34 calls EZ__GP10_WidgetRec with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003cf48 calls (unknown callee) with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003cf58 calls atof with a0=ret(0x1003dc30), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1003cf78 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=sym(combination), a2=unknown, a3=unknown.
  The `beq` branch at 0x1003cf80 targets 0x1003cf88 and is always taken.
  The return at 0x1003cf94 has v0 = ret(update__18VkwindowMainWindowGv).
- `globalGamma__5Form2GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003cfa0 (n32).
  It occupies 108 bytes.
  The `lw` at 0x1003cfd0 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `sw` at 0x1003cfd8 stores 4 bytes to sym(combination) +0x238 (value [a2+8]).
  The `lw` at 0x1003cfe0 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1003cfe8 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=[a2+8], a2=sym(combination), a3=0x740d0.
  The `beq` branch at 0x1003cff0 targets 0x1003cff8 and is always taken.
  The return at 0x1003d004 has v0 = ret(update__18VkwindowMainWindowGv).
- `internal__5Form2GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003d010 (n32).
  It occupies 100 bytes.
  The `sw` at 0x1003d040 stores 4 bytes to sym(combination) +0x110 (value 0x0).
  The `lw` at 0x1003d048 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1003d050 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=sym(combination), a2=a2 at entry (arg2), a3=0x74060.
  The `beq` branch at 0x1003d058 targets 0x1003d060 and is always taken.
  The return at 0x1003d06c has v0 = ret(update__18VkwindowMainWindowGv).
- `loopbackCh1__5Form2GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003d080 (n32).
  It occupies 104 bytes.
  The `sw` at 0x1003d0b4 stores 4 bytes to sym(combination) +0x110 (value 0x2).
  The `lw` at 0x1003d0bc loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1003d0c4 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=0x2, a2=sym(combination), a3=a2 at entry (arg2), a4=0x73ff0.
  The `beq` branch at 0x1003d0cc targets 0x1003d0d4 and is always taken.
  The return at 0x1003d0e0 has v0 = ret(update__18VkwindowMainWindowGv).
- `pixelDepth__5Form2GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003d0f0 (n32).
  It occupies 340 bytes.
  The `lw` at 0x1003d120 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `sw` at 0x1003d1a4 stores 4 bytes to sym(combination) +0x10c (value 0x2).
  The `sw` at 0x1003d1b8 stores 4 bytes to sym(combination) +0x10c (value 0x7).
  The `sw` at 0x1003d1cc stores 4 bytes to sym(combination) +0x10c (value 0x3).
  The `sw` at 0x1003d1e0 stores 4 bytes to sym(combination) +0x10c (value 0x4).
  The `sw` at 0x1003d1f4 stores 4 bytes to sym(combination) +0x10c (value 0x5).
  The `sw` at 0x1003d208 stores 4 bytes to sym(combination) +0x10c (value 0x6).
  The `lw` at 0x1003d218 loads 4 bytes from sym(vkwindow) +0x0.
  The `jalr` at 0x1003d12c calls getItemPosition__6VkMenuGP10_WidgetRec with a0=[a0+124], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x73f80.
  The `jal` at 0x1003d220 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x1003d13c targets 0x1003d19c, is taken when a4(=ret(getItemPosition__6VkMenuGP10_WidgetRec)) == 0, and falls through when a4(=ret(getItemPosition__6VkMenuGP10_WidgetRec)) != 0.
  The `beq` branch at 0x1003d14c targets 0x1003d1b0, is taken when a5(=ret(getItemPosition__6VkMenuGP10_WidgetRec)) == a6(=0x1), and falls through when a5(=ret(getItemPosition__6VkMenuGP10_WidgetRec)) != a6(=0x1).
  The `beq` branch at 0x1003d15c targets 0x1003d1c4, is taken when a7(=ret(getItemPosition__6VkMenuGP10_WidgetRec)) == t0(=0x2), and falls through when a7(=ret(getItemPosition__6VkMenuGP10_WidgetRec)) != t0(=0x2).
  The `beq` branch at 0x1003d16c targets 0x1003d1d8, is taken when t1(=ret(getItemPosition__6VkMenuGP10_WidgetRec)) == t2(=0x3), and falls through when t1(=ret(getItemPosition__6VkMenuGP10_WidgetRec)) != t2(=0x3).
  The `beq` branch at 0x1003d17c targets 0x1003d1ec, is taken when t3(=ret(getItemPosition__6VkMenuGP10_WidgetRec)) == t8(=0x4), and falls through when t3(=ret(getItemPosition__6VkMenuGP10_WidgetRec)) != t8(=0x4).
  The `beq` branch at 0x1003d18c targets 0x1003d200, is taken when t9(=ret(getItemPosition__6VkMenuGP10_WidgetRec)) == ra(=0x5), and falls through when t9(=ret(getItemPosition__6VkMenuGP10_WidgetRec)) != ra(=0x5).
  The `beq` branch at 0x1003d194 targets 0x1003d214 and is always taken.
  The `beq` branch at 0x1003d1a8 targets 0x1003d214 and is always taken.
  The `beq` branch at 0x1003d1bc targets 0x1003d214 and is always taken.
  The `beq` branch at 0x1003d1d0 targets 0x1003d214 and is always taken.
  The `beq` branch at 0x1003d1e4 targets 0x1003d214 and is always taken.
  The `beq` branch at 0x1003d1f8 targets 0x1003d214 and is always taken.
  The `beq` branch at 0x1003d20c targets 0x1003d214 and is always taken.
  The `beq` branch at 0x1003d228 targets 0x1003d230 and is always taken.
  The return at 0x1003d23c has v0 = ret(update__18VkwindowMainWindowGv).
- `rGamma__5Form2GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003d250 (n32).
  It occupies 156 bytes.
  The `swc1` at 0x1003d2b8 stores 4 bytes to sym(combination) +0x22c.
  The `lw` at 0x1003d2c0 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1003d284 calls EZ__GP10_WidgetRec with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003d298 calls (unknown callee) with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003d2a8 calls atof with a0=ret(0x1003dc30), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1003d2c8 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=sym(combination), a2=unknown, a3=unknown.
  The `beq` branch at 0x1003d2d0 targets 0x1003d2d8 and is always taken.
  The return at 0x1003d2e4 has v0 = ret(update__18VkwindowMainWindowGv).
- `syncFormat__5Form2GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003d2f0 (n32).
  It occupies 304 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x64, including `lw` at 0x1003d320, `lw` at 0x1003d398.
  The `lbu` at 0x1003d350 loads 1 bytes from ret(0x1003dc30) +0x0.
  The `sb` at 0x1003d360 stores 1 bytes to sym(combination) +0x114 (value 0x0).
  The `lw` at 0x1003d3f4 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1003d328 calls EZ__GP10_WidgetRec with a0=[a0+100], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x73d80.
  The `jal` at 0x1003d340 calls (unknown callee) with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1003d378 calls vfcLoadSyncFormat with a0=ret(0x1003dc30), a1=sym(combination), a2=unknown, a3=unknown.
  The `jal` at 0x1003d3a0 calls EZ__GP10_WidgetRec with a0=[a0+100], a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1003d3bc calls __as__9EZWrapperGPCc with a0=ret(EZ__GP10_WidgetRec), a1=sym(combination)+276, a2=unknown, a3=unknown.
  The `jalr` at 0x1003d3c8 calls getTheErrorDialog__Gv with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1003d3e8 calls (unknown callee) with a0=ret(getTheErrorDialog__Gv), a1=sym(szErrorStr), a2=a1 at entry (arg1), a3=unknown.
  The `jal` at 0x1003d3fc calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The `bne` branch at 0x1003d354 targets 0x1003d36c, is taken when ra(=[ret(0x1003dc30)]:1) != 0, and falls through when ra(=[ret(0x1003dc30)]:1) == 0.
  The `beq` branch at 0x1003d364 targets 0x1003d40c and is always taken.
  The `beq` branch at 0x1003d38c targets 0x1003d3f0, is taken when v0(=ret(vfcLoadSyncFormat)) == 0, and falls through when v0(=ret(vfcLoadSyncFormat)) != 0.
  The `beq` branch at 0x1003d404 targets 0x1003d40c and is always taken.
  The return at 0x1003d418 has v0 = unknown.
- `syncFormatBrowse__5Form2GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003d420 (n32).
  It occupies 640 bytes.
  9 such `lw` accesses load 4 bytes from sym(sffb) +0x0, including `lw` at 0x1003d4c4, `lw` at 0x1003d4e0, `lw` at 0x1003d4f8.
  2 such `lw` accesses load 4 bytes from [sym(sffb)] +0x8, including `lw` at 0x1003d594, `lw` at 0x1003d5cc.
  The `lw` at 0x1003d598 loads 4 bytes from [[sym(sffb)]+8] +0x108.
  The `lw` at 0x1003d5d0 loads 4 bytes from [[sym(sffb)]+8] +0x110.
  The `lw` at 0x1003d5f0 loads 4 bytes from a0 (arg0 at entry) +0x64.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x1003d648, `lw` at 0x1003d664.
  The `lw` at 0x1003d64c loads 4 bytes from [a0+8] +0x114.
  The `lw` at 0x1003d668 loads 4 bytes from [a0+8] +0x11c.
  The `jalr` at 0x1003d45c calls sprintf with a0=sp-1192, a1=0x10097078, a2=a2 at entry (arg2), a3=0x73c50.
  The `jalr` at 0x1003d470 calls getenv with a0=0x10097098, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003d4b8 calls sprintf with a0=sp-1104, a1=0x100970a8, a2=unknown, a3=unknown.
  The `jalr` at 0x1003d4d4 calls setTitle__15VkDialogManagerGPCc with a0=[sym(sffb)], a1=0x100970c8, a2=unknown, a3=unknown.
  The `jalr` at 0x1003d4ec calls setDirectory__21VkFileSelectionDialogGPCc with a0=[sym(sffb)], a1=sp-1104, a2=unknown, a3=unknown.
  The `jalr` at 0x1003d504 calls setFilterPattern__21VkFileSelectionDialogGPCc with a0=[sym(sffb)], a1=0x100aa580, a2=unknown, a3=unknown.
  The `jalr` at 0x1003d518 calls baseWidget__11VkComponentCGv with a0=[sym(sffb)], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003d538 calls baseWidget__11VkComponentCGv with a0=[sym(sffb)], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003d550 calls XmFileSelectionBoxGetChild with a0=ret(baseWidget__11VkComponentCGv), a1=0x8, a2=unknown, a3=unknown.
  The `jalr` at 0x1003d584 calls XtVaSetValues with a0=ret(XmFileSelectionBoxGetChild), a1=sym(_XmStrings)+9512, a2=0x0, a3=sym(_XmStrings)+9494, a4=0x0, a5=0x0.
  The `jalr` at 0x1003d5d4 calls (unknown callee) with a0=([[[sym(sffb)]+8]+264] + [sym(sffb)]), a1=sp-1192, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x1003d5f8 calls EZ__GP10_WidgetRec with a0=[a0+100], a1=0x1, a2=unknown, a3=unknown.
  The `jal` at 0x1003d614 calls (unknown callee) with a0=[sym(sffb)], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003d628 calls basename with a0=ret(0x1003dcd0), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1003d63c calls __as__9EZWrapperGPCc with a0=unknown, a1=ret(basename), a2=unknown, a3=unknown.
  The `jalr` at 0x1003d66c calls (unknown callee) with a0=([[a0+8]+276] + a0), a1=a1 at entry (arg1), a2=0x0, a3=unknown.
  The `jal` at 0x1003d67c calls update__5Form2Gv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x1003d484 targets 0x1003d49c, is taken when a1(=ret(getenv)) == 0, and falls through when a1(=ret(getenv)) != 0.
  The `beq` branch at 0x1003d494 targets 0x1003d4a4 and is always taken.
  The `beq` branch at 0x1003d524 targets 0x1003d58c, is taken when v0(=ret(baseWidget__11VkComponentCGv)) == 0, and falls through when v0(=ret(baseWidget__11VkComponentCGv)) != 0.
  The `bne` branch at 0x1003d5e4 targets 0x1003d674, is taken when v0(=ret(unknown)) != a1(=0x1), and falls through when v0(=ret(unknown)) == a1(=0x1).
  The `beq` branch at 0x1003d684 targets 0x1003d68c and is always taken.
  The return at 0x1003d698 has v0 = ret(update__5Form2Gv).
- `xManaged__5Form2GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003d6a0 (n32).
  It occupies 156 bytes.
  The `lw` at 0x1003d6d0 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `sw` at 0x1003d6f8 stores 4 bytes to sym(combination) +0x104 (value ret(0x1003dbf0)).
  The `lw` at 0x1003d710 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1003d6d8 calls EZ__GP10_WidgetRec with a0=[a0+116], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x739d0.
  The `jal` at 0x1003d6ec calls (unknown callee) with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1003d704 calls clampManagedArea__5Form2Gv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1003d718 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x1003d720 targets 0x1003d728 and is always taken.
  The return at 0x1003d734 has v0 = ret(update__18VkwindowMainWindowGv).
- `yManaged__5Form2GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003d740 (n32).
  It occupies 156 bytes.
  The `lw` at 0x1003d770 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0x1003d798 stores 4 bytes to sym(combination) +0x108 (value ret(0x1003dbf0)).
  The `lw` at 0x1003d7b0 loads 4 bytes from sym(vkwindow) +0x0.
  The `jal` at 0x1003d778 calls EZ__GP10_WidgetRec with a0=[a0+120], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x73930.
  The `jal` at 0x1003d78c calls (unknown callee) with a0=ret(EZ__GP10_WidgetRec), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1003d7a4 calls clampManagedArea__5Form2Gv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1003d7b8 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x1003d7c0 targets 0x1003d7c8 and is always taken.
  The return at 0x1003d7d4 has v0 = ret(update__18VkwindowMainWindowGv).
- `textport__5Form2GP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1003d7e0 (n32).
  It occupies 124 bytes.
  The `lw` at 0x1003d810 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `sw` at 0x1003d828 stores 4 bytes to sym(combination) +0x100 (value ret(getItemPosition__6VkMenuGP10_WidgetRec)).
  The `lw` at 0x1003d830 loads 4 bytes from sym(vkwindow) +0x0.
  The `jalr` at 0x1003d81c calls getItemPosition__6VkMenuGP10_WidgetRec with a0=[a0+132], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x73890.
  The `jal` at 0x1003d838 calls update__18VkwindowMainWindowGv with a0=[sym(vkwindow)], a1=sym(combination), a2=unknown, a3=unknown.
  The `beq` branch at 0x1003d840 targets 0x1003d848 and is always taken.
  The return at 0x1003d854 has v0 = ret(update__18VkwindowMainWindowGv).
- `RegisterForm2Interface__5Form2SGv` in `usr/gfx/ircombine` at 0x1003d860 (n32).
  It occupies 60 bytes.
  The `lw` at 0x1003d874 loads 4 bytes from abs 0x100a90d8.
  The `beq` branch at 0x1003d880 targets 0x1003d888 and is always taken.
  The return at 0x1003d894 has v0 = 0x100a2a10.
- `__ct__7Form2UIGPCcP10_WidgetRec` in `usr/gfx/ircombine` at 0x1003dd30 (n32).
  It occupies 132 bytes.
  The `sw` at 0x1003dd70 stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__7Form2UI)).
  The `jalr` at 0x1003dd60 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003dd80 calls create__7Form2UIGP10_WidgetRec with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=unknown, a3=unknown.
  The return at 0x1003dd98 has v0 = a0.
  The instructions from 0x1003dda0 to 0x1003ddb0 are not reached by any path from the entry, and their branches are not listed.
- `__ct__7Form2UIGPCc` in `usr/gfx/ircombine` at 0x1003ddc0 (n32).
  It occupies 108 bytes.
  The `sw` at 0x1003ddfc stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__7Form2UI)).
  The `jalr` at 0x1003ddec calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1003de10 has v0 = a0.
  The instructions from 0x1003de18 to 0x1003de28 are not reached by any path from the entry, and their branches are not listed.
- `__dt__7Form2UIGv` in `usr/gfx/ircombine` at 0x1003de30 (n32).
  It occupies 148 bytes.
  The `sw` at 0x1003de64 stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__7Form2UI)).
  The `jalr` at 0x1003de74 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1003de94 calls __dl__GPv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x1003de54 targets 0x1003de9c, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x1003de84 targets 0x1003de9c, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x1003dea8 has v0 = unknown.
  The instructions from 0x1003deb0 to 0x1003dec0 are not reached by any path from the entry, and their branches are not listed.
- `create__7Form2UIGP10_WidgetRec` in `usr/gfx/ircombine` at 0x1003ded0 (n32).
  It occupies 9672 bytes.
  The `lw` at 0x1003df10 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0x1003df18 loads 4 bytes from sym(xmFormWidgetClass) +0x0.
  The `sw` at 0x1003df4c stores 4 bytes to a0 (arg0 at entry) +0x3c (value ret(XtVaCreateWidget)).
  The `sw` at 0x1003df54 stores 4 bytes to a0 (arg0 at entry) +0x10 (value ret(XtVaCreateWidget)).
  The `lw` at 0x1003df74 loads 4 bytes from sym(xmToggleButtonWidgetClass) +0x0.
  25 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x1003df7c, `lw` at 0x1003e0b0, `lw` at 0x1003e1cc.
  The `sw` at 0x1003e074 stores 4 bytes to a0 (arg0 at entry) +0x4c (value ret(XtVaCreateManagedWidget)).
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c, including `lw` at 0x1003e07c, `lw` at 0x1003e7b4, `lw` at 0x1003e7cc.
  7 such `lw` accesses load 4 bytes from sym(xmTextFieldWidgetClass) +0x0, including `lw` at 0x1003e0a8, `lw` at 0x1003e2e0, `lw` at 0x1003e518.
  The `sw` at 0x1003e190 stores 4 bytes to a0 (arg0 at entry) +0x24 (value ret(XtVaCreateManagedWidget)).
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0x1003e198, `lw` at 0x1003fc28, `lw` at 0x100403ec.
  12 such `lw` accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0, including `lw` at 0x1003e1c4, `lw` at 0x1003e3fc, `lw` at 0x1003e634.
  The `sw` at 0x1003e2d0 stores 4 bytes to a0 (arg0 at entry) +0x20 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1003e3c8 stores 4 bytes to a0 (arg0 at entry) +0x44 (value ret(XtVaCreateManagedWidget)).
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1003e3d0, `lw` at 0x1003fc80, `lw` at 0x1003fc98.
  The `sw` at 0x1003e508 stores 4 bytes to a0 (arg0 at entry) +0x40 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1003e600 stores 4 bytes to a0 (arg0 at entry) +0x5c (value ret(XtVaCreateManagedWidget)).
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5c, including `lw` at 0x1003e608, `lw` at 0x1003fcf0, `lw` at 0x1003fd08.
  The `sw` at 0x1003e72c stores 4 bytes to a0 (arg0 at entry) +0x58 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1003e87c stores 4 bytes to a0 (arg0 at entry) +0x48 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1003e984 stores 4 bytes to a0 (arg0 at entry) +0x30 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1003ea0c stores 4 bytes to a0 (arg0 at entry) +0x84.
  2 such `lw` accesses load 4 bytes from sym(xmPushButtonWidgetClass) +0x0, including `lw` at 0x1003ea1c, `lw` at 0x1003fad4.
  The `sw` at 0x1003eb18 stores 4 bytes to a0 (arg0 at entry) +0x60 (value ret(XtVaCreateManagedWidget)).
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0x1003eb20, `lw` at 0x1003fedc.
  The `sw` at 0x1003ec38 stores 4 bytes to a0 (arg0 at entry) +0x64 (value ret(XtVaCreateManagedWidget)).
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x64, including `lw` at 0x1003ec40, `lw` at 0x1003feec, `lw` at 0x1003fefc.
  The `sw` at 0x1003ece4 stores 4 bytes to a0 (arg0 at entry) +0x80.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x80, including `lw` at 0x1003ecec, `lw` at 0x1003ed20, `lw` at 0x1003ed54.
  The `sw` at 0x1003ed18 stores 4 bytes to a0 (arg0 at entry) +0x90 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x1003ed4c stores 4 bytes to a0 (arg0 at entry) +0x8c (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x1003ed80 stores 4 bytes to a0 (arg0 at entry) +0x98 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x1003ee08 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0x1003ee10, `lw` at 0x1003ee44, `lw` at 0x1003ee78.
  The `sw` at 0x1003ee3c stores 4 bytes to a0 (arg0 at entry) +0x88 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x1003ee70 stores 4 bytes to a0 (arg0 at entry) +0xa8 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x1003eea4 stores 4 bytes to a0 (arg0 at entry) +0xa0 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x1003eed8 stores 4 bytes to a0 (arg0 at entry) +0x9c (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x1003ef0c stores 4 bytes to a0 (arg0 at entry) +0x94 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x1003ef40 stores 4 bytes to a0 (arg0 at entry) +0xa4 (value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi)).
  The `sw` at 0x1003f048 stores 4 bytes to a0 (arg0 at entry) +0x28 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1003f178 stores 4 bytes to a0 (arg0 at entry) +0x68 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1003f2a8 stores 4 bytes to a0 (arg0 at entry) +0x6c (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1003f3d8 stores 4 bytes to a0 (arg0 at entry) +0x54 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1003f508 stores 4 bytes to a0 (arg0 at entry) +0x70 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1003f600 stores 4 bytes to a0 (arg0 at entry) +0x38 (value ret(XtVaCreateManagedWidget)).
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x1003f608, `lw` at 0x10040254, `lw` at 0x10040380.
  The `sw` at 0x1003f754 stores 4 bytes to a0 (arg0 at entry) +0x34 (value ret(XtVaCreateManagedWidget)).
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x1003f7c8, `lw` at 0x1004017c.
  The `sw` at 0x1003f864 stores 4 bytes to a0 (arg0 at entry) +0x78 (value ret(XtVaCreateManagedWidget)).
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x78, including `lw` at 0x1003f86c, `lw` at 0x100402b4, `lw` at 0x10040338.
  The `sw` at 0x1003f980 stores 4 bytes to a0 (arg0 at entry) +0x74 (value ret(XtVaCreateManagedWidget)).
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x74, including `lw` at 0x1003f988, `lw` at 0x1004018c, `lw` at 0x1004019c.
  The `sw` at 0x1003fac4 stores 4 bytes to a0 (arg0 at entry) +0x50 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1003fbd4 stores 4 bytes to a0 (arg0 at entry) +0x2c (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x1003fbdc loads 4 bytes from a0 (arg0 at entry) +0x2c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x68, including `lw` at 0x1003fc10, `lw` at 0x1003ff24, `lw` at 0x1003ff34.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1003fc38, `lw` at 0x1003fca8, `lw` at 0x1003fd18.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x1003fc48, `lw` at 0x1003fc60.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x58, including `lw` at 0x1003fc70, `lw` at 0x1003fce0, `lw` at 0x1003fd28.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x1003fcb8, `lw` at 0x1003fcd0.
  The `lw` at 0x1003fd94 loads 4 bytes from a0 (arg0 at entry) +0x30.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x1003fda4, `lw` at 0x100400bc, `lw` at 0x100400d4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x84, including `lw` at 0x1003fdc4, `lw` at 0x10040424.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0x1003fe1c, `lw` at 0x1003fe34, `lw` at 0x10040214.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0x1003ffa4, `lw` at 0x1003ffbc, `lw` at 0x100401c4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x34, including `lw` at 0x1004023c, `lw` at 0x10040264, `lw` at 0x10040274.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x50, including `lw` at 0x1004029c, `lw` at 0x100402c4, `lw` at 0x100402ec.
  The `lw` at 0x10040438 loads 4 bytes from unknown (base unknown).
  The `jalr` at 0x1003df04 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultForm2UIResources__7Form2UI), a3=a3 at entry (arg3).
  The `jalr` at 0x1003df34 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=sym(_XmStrings)+9052, a4=0x1, a5=0x0.
  The `jalr` at 0x1003df60 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=ret(XtVaCreateWidget), a2=a0 at entry (arg0), a3=a0 at entry (arg0).
  The `jalr` at 0x1003e064 calls XtVaCreateManagedWidget with a0=0x100970f8, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1003e094 calls XtAddCallback with a0=[a0+76], a1=sym(_XmStrings)+10557, a2=sym(globalGammaCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003e180 calls XtVaCreateManagedWidget with a0=0x10097110, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1003e1b0 calls XtAddCallback with a0=[a0+36], a1=sym(_XmStrings)+4683, a2=sym(bGammaCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003e2c0 calls XtVaCreateManagedWidget with a0=0x10097128, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1003e3b8 calls XtVaCreateManagedWidget with a0=0x10097140, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1003e3e8 calls XtAddCallback with a0=[a0+68], a1=sym(_XmStrings)+4683, a2=sym(gGammaCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003e4f8 calls XtVaCreateManagedWidget with a0=0x10097158, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1003e5f0 calls XtVaCreateManagedWidget with a0=0x10097170, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1003e620 calls XtAddCallback with a0=[a0+92], a1=sym(_XmStrings)+4683, a2=sym(rGammaCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003e71c calls XtVaCreateManagedWidget with a0=0x10097188, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1003e86c calls XtVaCreateManagedWidget with a0=0x100971a0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1003e974 calls XtVaCreateManagedWidget with a0=0x100971b8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1003e994 calls __nw__GUi with a0=0x4c, a1=unknown, a2=a0 at entry (arg0), a3=unknown.
  The `jalr` at 0x1003e9dc calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x100971d0, a3=0x0, a4=0x0.
  The `jalr` at 0x1003eb08 calls XtVaCreateManagedWidget with a0=0x100971e0, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1003eb38 calls XtAddCallback with a0=[a0+96], a1=sym(_XmStrings)+4683, a2=sym(syncFormatBrowseCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003ec28 calls XtVaCreateManagedWidget with a0=0x100971f8, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+10165, a4=0x4, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x1003ec58 calls XtAddCallback with a0=[a0+100], a1=sym(_XmStrings)+4683, a2=sym(syncFormatCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003ec6c calls __nw__GUi with a0=0x4c, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003ecb4 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10097208, a3=0x0, a4=0x0.
  The `jalr` at 0x1003ed08 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+128], a1=0x10097218, a2=sym(internalCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1003ed3c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+128], a1=0x10097228, a2=sym(externalCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1003ed70 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+128], a1=0x10097238, a2=sym(loopbackCh1Callback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1003ed90 calls __nw__GUi with a0=0x4c, a1=unknown, a2=a0 at entry (arg0), a3=unknown.
  The `jalr` at 0x1003edd8 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+16], a2=0x10097250, a3=0x0, a4=0x0.
  The `jalr` at 0x1003ee2c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+124], a1=0x10097260, a2=sym(pixelDepthCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1003ee60 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+124], a1=0x10097270, a2=sym(pixelDepthCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1003ee94 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+124], a1=0x10097280, a2=sym(pixelDepthCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1003eec8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+124], a1=0x10097290, a2=sym(pixelDepthCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1003eefc calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+124], a1=0x100972a0, a2=sym(pixelDepthCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1003ef30 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+124], a1=0x100972b0, a2=sym(pixelDepthCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1003f038 calls XtVaCreateManagedWidget with a0=0x100aa5a8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1003f168 calls XtVaCreateManagedWidget with a0=0x100972c0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1003f298 calls XtVaCreateManagedWidget with a0=0x100972d0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1003f3c8 calls XtVaCreateManagedWidget with a0=0x100972e0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1003f4f8 calls XtVaCreateManagedWidget with a0=0x100972f0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1003f5f0 calls XtVaCreateManagedWidget with a0=0x10097300, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x1e, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1003f620 calls XtAddCallback with a0=[a0+56], a1=sym(_XmStrings)+4683, a2=sym(descriptionCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003f744 calls XtVaCreateManagedWidget with a0=0x10097310, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1003f854 calls XtVaCreateManagedWidget with a0=0x10097328, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x4, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1003f884 calls XtAddCallback with a0=[a0+120], a1=sym(_XmStrings)+4683, a2=sym(yManagedCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003f970 calls XtVaCreateManagedWidget with a0=0x10097338, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+5482, a4=0x4, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1003f9a0 calls XtAddCallback with a0=[a0+116], a1=sym(_XmStrings)+4683, a2=sym(xManagedCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003fab4 calls XtVaCreateManagedWidget with a0=0x10097348, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1003fbc4 calls XtVaCreateManagedWidget with a0=0x10097358, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x0, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1003fbf4 calls XtAddCallback with a0=[a0+44], a1=sym(_XmStrings)+4683, a2=sym(closeGlobalsCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003fc1c calls XtVaSetValues with a0=[a0+76], a1=sym(_XmStrings)+10305, a2=[a0+104], a3=0x0.
  The `jalr` at 0x1003fc54 calls XtVaSetValues with a0=[a0+36], a1=sym(_XmStrings)+10305, a2=[a0+72], a3=sym(_XmStrings)+7562, a4=[a0+32], a5=0x0.
  The `jalr` at 0x1003fc8c calls XtVaSetValues with a0=[a0+32], a1=sym(_XmStrings)+10305, a2=[a0+88], a3=sym(_XmStrings)+7562, a4=[a0+68], a5=0x0.
  The `jalr` at 0x1003fcc4 calls XtVaSetValues with a0=[a0+68], a1=sym(_XmStrings)+10305, a2=[a0+72], a3=sym(_XmStrings)+7562, a4=[a0+64], a5=0x0.
  The `jalr` at 0x1003fcfc calls XtVaSetValues with a0=[a0+64], a1=sym(_XmStrings)+10305, a2=[a0+88], a3=sym(_XmStrings)+7562, a4=[a0+92], a5=0x0.
  The `jalr` at 0x1003fd34 calls XtVaSetValues with a0=[a0+92], a1=sym(_XmStrings)+10305, a2=[a0+72], a3=sym(_XmStrings)+7562, a4=[a0+88], a5=0x0.
  The `jalr` at 0x1003fd6c calls XtVaSetValues with a0=[a0+88], a1=sym(_XmStrings)+10305, a2=[a0+72], a3=sym(_XmStrings)+7562, a4=[a0+72], a5=0x0.
  The `jalr` at 0x1003fd80 calls baseWidget__10VkMenuItemCGv with a0=[a0+124], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003fdb8 calls XtVaSetValues with a0=[a0+48], a1=sym(_XmStrings)+10305, a2=[a0+84], a3=sym(_XmStrings)+7562, a4=ret(baseWidget__10VkMenuItemCGv), a5=0x0.
  The `jalr` at 0x1003fdcc calls baseWidget__10VkMenuItemCGv with a0=[a0+132], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1003fed0 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x1003ff08 calls XtVaSetValues with a0=[a0+96], a1=sym(_XmStrings)+10305, a2=[a0+100], a3=sym(_XmStrings)+7562, a4=[a0+100], a5=0x0.
  The `jalr` at 0x1003ff40 calls XtVaSetValues with a0=[a0+100], a1=sym(_XmStrings)+10305, a2=[a0+104], a3=sym(_XmStrings)+7562, a4=[a0+104], a5=0x0.
  The `jalr` at 0x1003ff54 calls baseWidget__10VkMenuItemCGv with a0=[a0+128], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10040058 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x1004006c calls baseWidget__10VkMenuItemCGv with a0=[a0+124], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10040170 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x4, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `jalr` at 0x100401a8 calls XtVaSetValues with a0=[a0+40], a1=sym(_XmStrings)+10305, a2=[a0+116], a3=sym(_XmStrings)+7562, a4=[a0+116], a5=0x0.
  The `jalr` at 0x100401d0 calls XtVaSetValues with a0=[a0+104], a1=sym(_XmStrings)+10305, a2=[a0+108], a3=0x0.
  The `jalr` at 0x100401f8 calls XtVaSetValues with a0=[a0+108], a1=sym(_XmStrings)+10305, a2=[a0+84], a3=0x0.
  The `jalr` at 0x10040220 calls XtVaSetValues with a0=[a0+84], a1=sym(_XmStrings)+10305, a2=[a0+112], a3=0x0.
  The `jalr` at 0x10040248 calls XtVaSetValues with a0=[a0+112], a1=sym(_XmStrings)+10305, a2=[a0+52], a3=0x0.
  The `jalr` at 0x10040280 calls XtVaSetValues with a0=[a0+56], a1=sym(_XmStrings)+10305, a2=[a0+52], a3=sym(_XmStrings)+7562, a4=[a0+52], a5=0x0.
  The `jalr` at 0x100402a8 calls XtVaSetValues with a0=[a0+52], a1=sym(_XmStrings)+10305, a2=[a0+80], a3=0x0.
  The `jalr` at 0x100402d0 calls XtVaSetValues with a0=[a0+120], a1=sym(_XmStrings)+10305, a2=[a0+80], a3=0x0.
  The `jalr` at 0x10040308 calls XtVaSetValues with a0=[a0+116], a1=sym(_XmStrings)+10305, a2=[a0+80], a3=sym(_XmStrings)+7562, a4=[a0+80], a5=0x0.
  The `jalr` at 0x1004032c calls XtAddCallback with a0=[a0+100], a1=sym(_XmStrings)+7765, a2=sym(syncFormatCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10040350 calls XtAddCallback with a0=[a0+120], a1=sym(_XmStrings)+7765, a2=sym(yManagedCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10040374 calls XtAddCallback with a0=[a0+116], a1=sym(_XmStrings)+7765, a2=sym(xManagedCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10040398 calls XtAddCallback with a0=[a0+56], a1=sym(_XmStrings)+7765, a2=sym(descriptionCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100403bc calls XtAddCallback with a0=[a0+92], a1=sym(_XmStrings)+7765, a2=sym(rGammaCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x100403e0 calls XtAddCallback with a0=[a0+68], a1=sym(_XmStrings)+7765, a2=sym(gGammaCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x10040404 calls XtAddCallback with a0=[a0+36], a1=sym(_XmStrings)+7765, a2=sym(bGammaCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1004044c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+132], a1=unknown, a2=sym(textportCallback__7Form2UISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `beq` branch at 0x1003e9ac targets 0x1003ea00, is taken when a3(=ret(__nw__GUi)) == 0, and falls through when a3(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1003e9f8 targets 0x1003ea04 and is always taken.
  The `beq` branch at 0x1003ec84 targets 0x1003ecd8, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1003ecd0 targets 0x1003ecdc and is always taken.
  The `beq` branch at 0x1003eda8 targets 0x1003edfc, is taken when a3(=ret(__nw__GUi)) == 0, and falls through when a3(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1003edf4 targets 0x1003ee00 and is always taken.
  The `beq` branch at 0x10040418 targets 0x10040470; its condition is not analyzed.
  The `bne` branch at 0x10040468 targets 0x10040420, is taken when a1(unknown) < 0xf (signed), and falls through when a1(unknown) >= 0xf (signed).
  The return at 0x1004047c has v0 = ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  The instructions from 0x10040484 to 0x10040494 are not reached by any path from the entry, and their branches are not listed.
- `className__7Form2UIGv` in `usr/gfx/ircombine` at 0x100404a0 (n32).
  It occupies 60 bytes.
  The `beq` branch at 0x100404c0 targets 0x100404c8 and is always taken.
  The return at 0x100404d4 has v0 = 0x100aa5b0.
- `bGamma__7Form2UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100404e0 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x100404f4 targets 0x100404fc and is always taken.
  The return at 0x10040504 has v0 = unknown.
- `closeGlobals__7Form2UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10040510 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x10040524 targets 0x1004052c and is always taken.
  The return at 0x10040534 has v0 = unknown.
- `description__7Form2UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10040540 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x10040554 targets 0x1004055c and is always taken.
  The return at 0x10040564 has v0 = unknown.
- `external__7Form2UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10040570 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x10040584 targets 0x1004058c and is always taken.
  The return at 0x10040594 has v0 = unknown.
- `gGamma__7Form2UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100405a0 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x100405b4 targets 0x100405bc and is always taken.
  The return at 0x100405c4 has v0 = unknown.
- `globalGamma__7Form2UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100405d0 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x100405e4 targets 0x100405ec and is always taken.
  The return at 0x100405f4 has v0 = unknown.
- `internal__7Form2UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10040600 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x10040614 targets 0x1004061c and is always taken.
  The return at 0x10040624 has v0 = unknown.
- `loopbackCh1__7Form2UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10040630 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x10040644 targets 0x1004064c and is always taken.
  The return at 0x10040654 has v0 = unknown.
- `pixelDepth__7Form2UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10040660 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x10040674 targets 0x1004067c and is always taken.
  The return at 0x10040684 has v0 = unknown.
- `rGamma__7Form2UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10040690 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x100406a4 targets 0x100406ac and is always taken.
  The return at 0x100406b4 has v0 = unknown.
- `syncFormat__7Form2UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100406c0 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x100406d4 targets 0x100406dc and is always taken.
  The return at 0x100406e4 has v0 = unknown.
- `syncFormatBrowse__7Form2UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100406f0 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x10040704 targets 0x1004070c and is always taken.
  The return at 0x10040714 has v0 = unknown.
- `xManaged__7Form2UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10040720 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x10040734 targets 0x1004073c and is always taken.
  The return at 0x10040744 has v0 = unknown.
- `yManaged__7Form2UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10040750 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x10040764 targets 0x1004076c and is always taken.
  The return at 0x10040774 has v0 = unknown.
- `bGammaCallback__7Form2UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10040780 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100407b0, `lw` at 0x100407cc.
  The `lw` at 0x100407b4 loads 4 bytes from [a1+8] +0x9c.
  The `lw` at 0x100407d0 loads 4 bytes from [a1+8] +0xa4.
  The `jalr` at 0x100407d4 calls (unknown callee) with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x708f0.
  The `beq` branch at 0x100407dc targets 0x100407e4 and is always taken.
  The return at 0x100407f0 has v0 = ret(unknown).
- `closeGlobalsCallback__7Form2UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10040800 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10040830, `lw` at 0x1004084c.
  The `lw` at 0x10040834 loads 4 bytes from [a1+8] +0xa8.
  The `lw` at 0x10040850 loads 4 bytes from [a1+8] +0xb0.
  The `jalr` at 0x10040854 calls (unknown callee) with a0=([[a1+8]+168] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x70870.
  The `beq` branch at 0x1004085c targets 0x10040864 and is always taken.
  The return at 0x10040870 has v0 = ret(unknown).
- `descriptionCallback__7Form2UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10040880 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100408b0, `lw` at 0x100408cc.
  The `lw` at 0x100408b4 loads 4 bytes from [a1+8] +0xb4.
  The `lw` at 0x100408d0 loads 4 bytes from [a1+8] +0xbc.
  The `jalr` at 0x100408d4 calls (unknown callee) with a0=([[a1+8]+180] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x707f0.
  The `beq` branch at 0x100408dc targets 0x100408e4 and is always taken.
  The return at 0x100408f0 has v0 = ret(unknown).
- `externalCallback__7Form2UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10040900 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10040930, `lw` at 0x1004094c.
  The `lw` at 0x10040934 loads 4 bytes from [a1+8] +0xc0.
  The `lw` at 0x10040950 loads 4 bytes from [a1+8] +0xc8.
  The `jalr` at 0x10040954 calls (unknown callee) with a0=([[a1+8]+192] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x70770.
  The `beq` branch at 0x1004095c targets 0x10040964 and is always taken.
  The return at 0x10040970 has v0 = ret(unknown).
- `gGammaCallback__7Form2UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10040980 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100409b0, `lw` at 0x100409cc.
  The `lw` at 0x100409b4 loads 4 bytes from [a1+8] +0xcc.
  The `lw` at 0x100409d0 loads 4 bytes from [a1+8] +0xd4.
  The `jalr` at 0x100409d4 calls (unknown callee) with a0=([[a1+8]+204] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x706f0.
  The `beq` branch at 0x100409dc targets 0x100409e4 and is always taken.
  The return at 0x100409f0 has v0 = ret(unknown).
- `globalGammaCallback__7Form2UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10040a00 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10040a30, `lw` at 0x10040a4c.
  The `lw` at 0x10040a34 loads 4 bytes from [a1+8] +0xd8.
  The `lw` at 0x10040a50 loads 4 bytes from [a1+8] +0xe0.
  The `jalr` at 0x10040a54 calls (unknown callee) with a0=([[a1+8]+216] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x70670.
  The `beq` branch at 0x10040a5c targets 0x10040a64 and is always taken.
  The return at 0x10040a70 has v0 = ret(unknown).
- `internalCallback__7Form2UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10040a80 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10040ab0, `lw` at 0x10040acc.
  The `lw` at 0x10040ab4 loads 4 bytes from [a1+8] +0xe4.
  The `lw` at 0x10040ad0 loads 4 bytes from [a1+8] +0xec.
  The `jalr` at 0x10040ad4 calls (unknown callee) with a0=([[a1+8]+228] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x705f0.
  The `beq` branch at 0x10040adc targets 0x10040ae4 and is always taken.
  The return at 0x10040af0 has v0 = ret(unknown).
- `loopbackCh1Callback__7Form2UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10040b00 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10040b30, `lw` at 0x10040b4c.
  The `lw` at 0x10040b34 loads 4 bytes from [a1+8] +0xf0.
  The `lw` at 0x10040b50 loads 4 bytes from [a1+8] +0xf8.
  The `jalr` at 0x10040b54 calls (unknown callee) with a0=([[a1+8]+240] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x70570.
  The `beq` branch at 0x10040b5c targets 0x10040b64 and is always taken.
  The return at 0x10040b70 has v0 = ret(unknown).
- `pixelDepthCallback__7Form2UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10040b80 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10040bb0, `lw` at 0x10040bcc.
  The `lw` at 0x10040bb4 loads 4 bytes from [a1+8] +0xfc.
  The `lw` at 0x10040bd0 loads 4 bytes from [a1+8] +0x104.
  The `jalr` at 0x10040bd4 calls (unknown callee) with a0=([[a1+8]+252] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x704f0.
  The `beq` branch at 0x10040bdc targets 0x10040be4 and is always taken.
  The return at 0x10040bf0 has v0 = ret(unknown).
- `rGammaCallback__7Form2UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10040c00 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10040c30, `lw` at 0x10040c4c.
  The `lw` at 0x10040c34 loads 4 bytes from [a1+8] +0x108.
  The `lw` at 0x10040c50 loads 4 bytes from [a1+8] +0x110.
  The `jalr` at 0x10040c54 calls (unknown callee) with a0=([[a1+8]+264] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x70470.
  The `beq` branch at 0x10040c5c targets 0x10040c64 and is always taken.
  The return at 0x10040c70 has v0 = ret(unknown).
- `syncFormatCallback__7Form2UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10040c80 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10040cb0, `lw` at 0x10040ccc.
  The `lw` at 0x10040cb4 loads 4 bytes from [a1+8] +0x114.
  The `lw` at 0x10040cd0 loads 4 bytes from [a1+8] +0x11c.
  The `jalr` at 0x10040cd4 calls (unknown callee) with a0=([[a1+8]+276] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x703f0.
  The `beq` branch at 0x10040cdc targets 0x10040ce4 and is always taken.
  The return at 0x10040cf0 has v0 = ret(unknown).
- `syncFormatBrowseCallback__7Form2UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10040d00 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10040d30, `lw` at 0x10040d4c.
  The `lw` at 0x10040d34 loads 4 bytes from [a1+8] +0x120.
  The `lw` at 0x10040d50 loads 4 bytes from [a1+8] +0x128.
  The `jalr` at 0x10040d54 calls (unknown callee) with a0=([[a1+8]+288] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x70370.
  The `beq` branch at 0x10040d5c targets 0x10040d64 and is always taken.
  The return at 0x10040d70 has v0 = ret(unknown).
- `xManagedCallback__7Form2UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10040d80 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10040db0, `lw` at 0x10040dcc.
  The `lw` at 0x10040db4 loads 4 bytes from [a1+8] +0x12c.
  The `lw` at 0x10040dd0 loads 4 bytes from [a1+8] +0x134.
  The `jalr` at 0x10040dd4 calls (unknown callee) with a0=([[a1+8]+300] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x702f0.
  The `beq` branch at 0x10040ddc targets 0x10040de4 and is always taken.
  The return at 0x10040df0 has v0 = ret(unknown).
- `yManagedCallback__7Form2UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10040e00 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10040e30, `lw` at 0x10040e4c.
  The `lw` at 0x10040e34 loads 4 bytes from [a1+8] +0x138.
  The `lw` at 0x10040e50 loads 4 bytes from [a1+8] +0x140.
  The `jalr` at 0x10040e54 calls (unknown callee) with a0=([[a1+8]+312] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x70270.
  The `beq` branch at 0x10040e5c targets 0x10040e64 and is always taken.
  The return at 0x10040e70 has v0 = ret(unknown).
- `textportCallback__7Form2UISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10040e80 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10040eb0, `lw` at 0x10040ecc.
  The `lw` at 0x10040eb4 loads 4 bytes from [a1+8] +0x144.
  The `lw` at 0x10040ed0 loads 4 bytes from [a1+8] +0x14c.
  The `jalr` at 0x10040ed4 calls (unknown callee) with a0=([[a1+8]+324] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x701f0.
  The `beq` branch at 0x10040edc targets 0x10040ee4 and is always taken.
  The return at 0x10040ef0 has v0 = ret(unknown).
- `textport__7Form2UIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10040f00 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x10040f14 targets 0x10040f1c and is always taken.
  The return at 0x10040f24 has v0 = unknown.
- `myErrorHandler__GP9_XDisplayP11XErrorEvent` in `usr/gfx/ircombine` at 0x10040f40 (n32).
  It occupies 172 bytes.
  The `lw` at 0x10040f64 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lbu` at 0x10040f6c loads 1 bytes from a1 (arg1 at entry) +0x10.
  2 such `lw` accesses load 4 bytes from ret(getTheErrorDialog__Gv) +0x8, including `lw` at 0x10040f90, `lw` at 0x10040fb8.
  The `lw` at 0x10040f94 loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108.
  The `lw` at 0x10040fbc loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110.
  The `jalr` at 0x10040f7c calls XGetErrorText with a0=[a1+4], a1=[a1+16]:1, a2=sp-304, a3=0x100.
  The `jalr` at 0x10040f88 calls getTheErrorDialog__Gv with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10040fc0 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sp-304, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `beq` branch at 0x10040fcc targets 0x10040fd4 and is always taken.
  The return at 0x10040fe4 has v0 = 0x0.
- `CreateFrame` in `usr/gfx/ircombine` at 0x10040ff0 (n32).
  It occupies 228 bytes.
  4 such `lw` accesses load 4 bytes from unknown (base unknown), including `lw` at 0x1004107c, `lw` at 0x10041080, `lw` at 0x10041090.
  The `jalr` at 0x1004101c calls __nw__GUi with a0=0xaeac, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10041048 calls __ct__5FrameGPCcP10_WidgetRec with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=unknown.
  The `jalr` at 0x10041098 calls (unknown callee) with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x10041028 targets 0x10041064, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1004105c targets 0x10041068 and is always taken.
  The return at 0x100410b8 has v0 = unknown.
  The instructions from 0x100410c0 to 0x100410d0 are not reached by any path from the entry, and their branches are not listed.
- `RegisterFrameInterface` in `usr/gfx/ircombine` at 0x100410e0 (n32).
  It occupies 60 bytes.
  The `lw` at 0x100410f4 loads 4 bytes from abs 0x100a90d8.
  The `beq` branch at 0x10041100 targets 0x10041108 and is always taken.
  The return at 0x10041114 has v0 = 0x100a2f48.
- `__ct__5FrameGPCcP10_WidgetRec` in `usr/gfx/ircombine` at 0x10041140 (n32).
  It occupies 1584 bytes.
  The `sw` at 0x10041184 stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__5Frame)).
  The `sw` at 0x10041190 stores 4 bytes to a0 (arg0 at entry) +0x108 (value -0x1).
  The `sw` at 0x1004119c stores 4 bytes to a0 (arg0 at entry) +0x10c (value -0x1).
  2 such `lw` accesses load 4 bytes from unknown (base unknown), including `lw` at 0x100411cc, `lw` at 0x10041474.
  2 such `sw` accesses store 4 bytes to unknown (base unknown), including `sw` at 0x100411d8, `sw` at 0x10041480.
  The `sw` at 0x1004123c stores 4 bytes to unknown (base unknown) (value 0x0).
  The `sw` at 0x100412e0 stores 4 bytes to a0 (arg0 at entry) +0xaea0.
  The `lw` at 0x100412f0 loads 4 bytes from a0 (arg0 at entry) +0xaea0.
  The `sw` at 0x10041390 stores 4 bytes to a0 (arg0 at entry) +0xaea8.
  The `sw` at 0x1004143c stores 4 bytes to a0 (arg0 at entry) +0xaea4.
  The `lw` at 0x100414ac loads 4 bytes from a0 (arg0 at entry) +0xaea4.
  The `sw` at 0x100414d0 stores 4 bytes to a0 (arg0 at entry) +0x98 (value a0+188).
  3 such `lw` accesses load 4 bytes from sym(work_order) +0xae90, including `lw` at 0x100414e0, `lw` at 0x10041508, `lw` at 0x1004155c.
  2 such `lw` accesses load 4 bytes from sym(work_order) +0xae94, including `lw` at 0x10041518, `lw` at 0x1004156c.
  The `sw` at 0x1004159c stores 4 bytes to a0 (arg0 at entry) +0x98 (value a0+156).
  The `swc1` at 0x10041604 stores 4 bytes to a0 (arg0 at entry) +0xe4.
  The `swc1` at 0x10041634 stores 4 bytes to a0 (arg0 at entry) +0xe8.
  The `swc1` at 0x10041660 stores 4 bytes to a0 (arg0 at entry) +0xec.
  The `sb` at 0x100416ac stores 1 bytes to a0 (arg0 at entry) +0xf0.
  The `sb` at 0x100416c0 stores 1 bytes to a0 (arg0 at entry) +0xf1.
  The `sb` at 0x100416d0 stores 1 bytes to a0 (arg0 at entry) +0xf2.
  The `sb` at 0x1004171c stores 1 bytes to a0 (arg0 at entry) +0xf3.
  The `sb` at 0x10041730 stores 1 bytes to a0 (arg0 at entry) +0xf4.
  The `sb` at 0x10041740 stores 1 bytes to a0 (arg0 at entry) +0xf5.
  The `jal` at 0x10041174 calls __ct__7FrameUIGPCcP10_WidgetRec with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10041208 calls bzero with a0=a0+272, a1=0xab0, a2=a0 at entry (arg0), a3=-0x1, a4=a0 at entry (arg0), a5=sym(__vtbl__5Frame), a6=a0 at entry (arg0).
  The `jalr` at 0x10041268 calls __nw__GUi with a0=0x44, a1=0x1, a2=unknown, a3=unknown, a5=0xae64.
  The `jal` at 0x100412a8 calls __ct__18GlobalsWindowClassGPCcP3ArgUi with a0=ret(__nw__GUi), a1=0x10097820, a2=0x0, a3=0x0, a6=ret(__nw__GUi), a7=0x1.
  The `jal` at 0x100412f8 calls clampManagedArea__18GlobalsWindowClassGv with a0=[a0+44704], a1=a0 at entry (arg0), a2=unknown, a3=a0+44704, a4=a0 at entry (arg0).
  The `jalr` at 0x1004130c calls __nw__GUi with a0=0x50, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1004133c calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown, a5=ret(__nw__GUi), a6=0x1.
  The `jalr` at 0x1004135c calls __ct__11VkPopupMenuGP10_WidgetRecP10VkMenuDescPv with a0=unknown, a1=ret(baseWidget__11VkComponentCGv), a2=sym(gl_menu__5Frame), a3=a0 at entry (arg0).
  The `jalr` at 0x10041398 calls getTheErrorDialog__Gv with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100413b0 calls setTitle__15VkDialogManagerGPCc with a0=ret(getTheErrorDialog__Gv), a1=0x100aa5b8, a2=unknown, a3=unknown.
  The `jalr` at 0x100413c4 calls __nw__GUi with a0=0x44, a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10041404 calls __ct__19HardwareWindowClassGPCcP3ArgUi with a0=ret(__nw__GUi), a1=0x10097838, a2=0x0, a3=0x0.
  The `jal` at 0x100414bc calls setTarget__19HardwareWindowClassGP11konTarget_t with a0=[a0+44708], a1=a0+188, a2=unknown, a3=0x8, a4=a0+188, a5=sym(work_order)+44140, a6=0xac6c.
  The `jal` at 0x100414e8 calls vfcQueryXSGIvc with a0=[sym(work_order)+44688], a1=0xae90, a2=a0+188, a3=a0 at entry (arg0).
  The `jalr` at 0x10041524 calls XSGIvcQueryVideoScreenInfo with a0=[sym(work_order)+44688], a1=[sym(work_order)+44692], a2=sp-208, a3=unknown.
  The `jalr` at 0x1004153c calls strncmp with a0=sp-196, a1=0x100aa5c0, a2=0x4, a3=unknown.
  The `jalr` at 0x10041588 calls XSGIvcQueryPlatformParameter with a0=[sym(work_order)+44688], a1=[sym(work_order)+44692], a2=0x0, a3=-0x6, a4=a0+156, a5=0x20.
  The `jalr` at 0x100415b4 calls VkGetResource__GPCcT1 with a0=0x10097848, a1=0x10097860, a2=unknown, a3=unknown.
  The `jalr` at 0x100415d0 calls sscanf with a0=ret(VkGetResource__GPCcT1), a1=0x100aa5c8, a2=sp-160, a3=unknown.
  The `jalr` at 0x10041678 calls VkGetResource__GPCcT1 with a0=0x10097878, a1=0x10097888, a2=unknown, a3=a0+232, a5=a0+228.
  The `jalr` at 0x10041694 calls sscanf with a0=ret(VkGetResource__GPCcT1), a1=0x100aa5c8, a2=sp-160, a3=unknown.
  The `jalr` at 0x100416e8 calls VkGetResource__GPCcT1 with a0=0x10097898, a1=0x100978a8, a2=a0+242, a3=unknown, a4=a0+241, a5=a0+240.
  The `jalr` at 0x10041704 calls sscanf with a0=ret(VkGetResource__GPCcT1), a1=0x100aa5c8, a2=sp-160, a3=unknown.
  The `bgtz` branch at 0x100411f0 targets 0x100411c0, is taken when a7(unknown) > 0 (signed), and falls through when a7(unknown) <= 0 (signed).
  The `beq` branch at 0x1004121c targets 0x1004125c; its condition is not analyzed.
  The `bne` branch at 0x10041254 targets 0x10041224, is taken when a2(unknown) < 0xf (signed), and falls through when a2(unknown) >= 0xf (signed).
  The `beq` branch at 0x10041280 targets 0x100412cc, is taken when a6(=ret(__nw__GUi)) == 0, and falls through when a6(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100412c4 targets 0x100412d0 and is always taken.
  The `beq` branch at 0x10041324 targets 0x1004137c, is taken when a5(=ret(__nw__GUi)) == 0, and falls through when a5(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10041374 targets 0x10041380 and is always taken.
  The `beq` branch at 0x100413dc targets 0x10041428, is taken when t3(=ret(__nw__GUi)) == 0, and falls through when t3(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10041420 targets 0x1004142c and is always taken.
  The `bgtz` branch at 0x10041498 targets 0x10041468, is taken when t2(unknown) > 0 (signed), and falls through when t2(unknown) <= 0 (signed).
  The `beq` branch at 0x100414f4 targets 0x100415a0, is taken when v0(=ret(vfcQueryXSGIvc)) == 0, and falls through when v0(=ret(vfcQueryXSGIvc)) != 0.
  The `bne` branch at 0x10041548 targets 0x100415a0, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The return at 0x10041754 has v0 = a0.
  The instructions from 0x1004175c to 0x1004176c are not reached by any path from the entry, and their branches are not listed.
- `__ct__5FrameGPCc` in `usr/gfx/ircombine` at 0x10041770 (n32).
  It occupies 108 bytes.
  The `sw` at 0x100417ac stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__5Frame)).
  The `jal` at 0x1004179c calls __ct__7FrameUIGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100417c0 has v0 = a0.
  The instructions from 0x100417c8 to 0x100417d8 are not reached by any path from the entry, and their branches are not listed.
- `__dt__5FrameGv` in `usr/gfx/ircombine` at 0x100417e0 (n32).
  It occupies 592 bytes.
  The `sw` at 0x10041814 stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__5Frame)).
  9 such `lw` accesses load 4 bytes from unknown (base unknown), including `lw` at 0x10041844, `lw` at 0x10041868, `lw` at 0x1004188c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xaea0, including `lw` at 0x10041910, `lw` at 0x10041928, `lw` at 0x10041940.
  2 such `lw` accesses load 4 bytes from [a0+44704] +0x8, including `lw` at 0x1004192c, `lw` at 0x1004195c.
  The `lw` at 0x10041930 loads 4 bytes from [[a0+44704]+8] +0xc.
  The `lw` at 0x10041960 loads 4 bytes from [[a0+44704]+8] +0x14.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xaea4, including `lw` at 0x10041978, `lw` at 0x10041990, `lw` at 0x100419a8.
  2 such `lw` accesses load 4 bytes from [a0+44708] +0x8, including `lw` at 0x10041994, `lw` at 0x100419c4.
  The `lw` at 0x10041998 loads 4 bytes from [[a0+44708]+8] +0xc.
  The `lw` at 0x100419c8 loads 4 bytes from [[a0+44708]+8] +0x14.
  The `jalr` at 0x100418e0 calls (unknown callee) with a0=unknown, a1=0x3, a2=unknown, a3=unknown, a5=0xae64.
  The `jalr` at 0x10041964 calls (unknown callee) with a0=([[[a0+44704]+8]+12] + [a0+44704]), a1=0x3, a2=a0 at entry (arg0), a3=unknown, a5=[a0+44704], a6=a0 at entry (arg0).
  The `jalr` at 0x100419cc calls (unknown callee) with a0=([[[a0+44708]+8]+12] + [a0+44708]), a1=0x3, a2=a0 at entry (arg0), a3=a0 at entry (arg0).
  The `jal` at 0x100419e0 calls __dt__7FrameUIGv with a0=a0 at entry (arg0), a1=0x0, a2=unknown, a3=unknown.
  The `jalr` at 0x10041a00 calls __dl__GPv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x10041804 targets 0x10041a08, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x10041824 targets 0x10041904; its condition is not analyzed.
  The `beq` branch at 0x10041848 targets 0x100418e8, is taken when a2(unknown) == 0, and falls through when a2(unknown) != 0.
  The `beq` branch at 0x1004186c targets 0x100418e8, is taken when a4(unknown) == 0, and falls through when a4(unknown) != 0.
  The `bne` branch at 0x100418fc targets 0x1004182c, is taken when a3(unknown) < 0xf (signed), and falls through when a3(unknown) >= 0xf (signed).
  The `beq` branch at 0x10041914 targets 0x1004196c, is taken when a5(=[a0+44704]) == 0, and falls through when a5(=[a0+44704]) != 0.
  The `beq` branch at 0x1004197c targets 0x100419d4, is taken when a2(=[a0+44708]) == 0, and falls through when a2(=[a0+44708]) != 0.
  The `beq` branch at 0x100419f0 targets 0x10041a08, is taken when (a2(=a1) & 0x1) == 0, and falls through when (a2(=a1) & 0x1) != 0.
  The return at 0x10041a14 has v0 = unknown.
  The instructions from 0x10041a1c to 0x10041a2c are not reached by any path from the entry, and their branches are not listed.
- `className__5FrameGv` in `usr/gfx/ircombine` at 0x10041a30 (n32).
  It occupies 60 bytes.
  The `beq` branch at 0x10041a50 targets 0x10041a58 and is always taken.
  The return at 0x10041a64 has v0 = 0x100aa5d0.
- `copy__5FrameGv` in `usr/gfx/ircombine` at 0x10041ab0 (n32).
  It occupies 272 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x108, including `lw` at 0x10041ad0, `lw` at 0x10041aec.
  The `lw` at 0x10041b28 loads 4 bytes from unknown (base unknown).
  The `sw` at 0x10041b34 stores 4 bytes to unknown (base unknown).
  2 such `lw` accesses load 4 bytes from ret(getTheErrorDialog__Gv) +0x8, including `lw` at 0x10041b68, `lw` at 0x10041b94.
  The `lw` at 0x10041b6c loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108.
  The `lw` at 0x10041b98 loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110.
  The `jalr` at 0x10041b60 calls getTheErrorDialog__Gv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10041b9c calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=0x100978b8, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `beq` branch at 0x10041ad8 targets 0x10041b5c, is taken when at(=[a0+264]) == v0(=-0x1), and falls through when at(=[a0+264]) != v0(=-0x1).
  The `bgtz` branch at 0x10041b4c targets 0x10041b1c, is taken when a2(unknown) > 0 (signed), and falls through when a2(unknown) <= 0 (signed).
  The `beq` branch at 0x10041b54 targets 0x10041ba4 and is always taken.
  The `beq` branch at 0x10041ba4 targets 0x10041bac and is always taken.
  The return at 0x10041bb8 has v0 = unknown.
- `currentHardware__5FrameGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10041bc0 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10041bf0 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `sw` at 0x10041c08 stores 4 bytes to a0 (arg0 at entry) +0x98 (value a0+156).
  The `jal` at 0x10041c14 calls setSensitive__5FrameGv with a0=a0 at entry (arg0), a1=unknown, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10041bf4 targets 0x10041c0c, is taken when at(=[a2+8]) == 0, and falls through when at(=[a2+8]) != 0.
  The `beq` branch at 0x10041c1c targets 0x10041c24 and is always taken.
  The return at 0x10041c30 has v0 = ret(setSensitive__5FrameGv).
- `cut__5FrameGv` in `usr/gfx/ircombine` at 0x10041c40 (n32).
  It occupies 240 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x108, including `lw` at 0x10041c60, `lw` at 0x10041c7c.
  The `lw` at 0x10041cb8 loads 4 bytes from unknown (base unknown).
  The `sw` at 0x10041cc4 stores 4 bytes to unknown (base unknown).
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x10041ce8, `lw` at 0x10041d04.
  The `lw` at 0x10041cec loads 4 bytes from [a0+8] +0x120.
  The `lw` at 0x10041d08 loads 4 bytes from [a0+8] +0x128.
  The `jalr` at 0x10041d0c calls (unknown callee) with a0=([[a0+8]+288] + a0), a1=0x0, a2=0x0, a3=unknown.
  The `beq` branch at 0x10041c68 targets 0x10041ce4, is taken when at(=[a0+264]) == v0(=-0x1), and falls through when at(=[a0+264]) != v0(=-0x1).
  The `bgtz` branch at 0x10041cdc targets 0x10041cac, is taken when a2(unknown) > 0 (signed), and falls through when a2(unknown) <= 0 (signed).
  The `beq` branch at 0x10041d14 targets 0x10041d1c and is always taken.
  The return at 0x10041d28 has v0 = ret(unknown).
- `deleteChannel__5FrameGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10041d30 (n32).
  It occupies 352 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x108, including `lw` at 0x10041d58, `lw` at 0x10041d70, `lw` at 0x10041db8.
  The `lw` at 0x10041db0 loads 4 bytes from unknown (base unknown).
  The `sw` at 0x10041e20 stores 4 bytes to a0 (arg0 at entry) +0x108 (value -0x1).
  2 such `lw` accesses load 4 bytes from ret(getTheErrorDialog__Gv) +0x8, including `lw` at 0x10041e38, `lw` at 0x10041e64.
  The `lw` at 0x10041e3c loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108.
  The `lw` at 0x10041e68 loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110.
  The `jal` at 0x10041d78 calls removeChannel__5FrameGi with a0=a0 at entry (arg0), a1=[a0+264], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10041de4 calls removeChannel__5FrameGi with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown, a4=[a0+264], a6=0xab0.
  The `jal` at 0x10041e10 calls update__5FrameGv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10041e30 calls getTheErrorDialog__Gv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10041e6c calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=0x100978b8, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `beq` branch at 0x10041d60 targets 0x10041e2c, is taken when at(=[a0+264]) == v0(=-0x1), and falls through when at(=[a0+264]) != v0(=-0x1).
  The `beq` branch at 0x10041d8c targets 0x10041e08; its condition is not analyzed.
  The `bne` branch at 0x10041dbc targets 0x10041dec, is taken when a3(unknown) != a4(=[a0+264]), and falls through when a3(unknown) == a4(=[a0+264]).
  The `beq` branch at 0x10041dd0 targets 0x10041dec, is taken when a4(=[a0+264]) == a5(unknown), and falls through when a4(=[a0+264]) != a5(unknown).
  The `bne` branch at 0x10041e00 targets 0x10041d94, is taken when a5(unknown) < 0xf (signed), and falls through when a5(unknown) >= 0xf (signed).
  The `beq` branch at 0x10041e24 targets 0x10041e74 and is always taken.
  The `beq` branch at 0x10041e74 targets 0x10041e7c and is always taken.
  The return at 0x10041e88 has v0 = unknown.
- `editChannel__5FrameGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10041e90 (n32).
  It occupies 180 bytes.
  The `lw` at 0x10041eb8 loads 4 bytes from a0 (arg0 at entry) +0x108.
  2 such `lw` accesses load 4 bytes from ret(getTheErrorDialog__Gv) +0x8, including `lw` at 0x10041eec, `lw` at 0x10041f18.
  The `lw` at 0x10041ef0 loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108.
  The `lw` at 0x10041f1c loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110.
  The `jal` at 0x10041ed0 calls showChannelAttributes__5FrameGv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10041ee4 calls getTheErrorDialog__Gv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10041f20 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=0x100978b8, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `beq` branch at 0x10041ec0 targets 0x10041ee0, is taken when at(=[a0+264]) == v0(=-0x1), and falls through when at(=[a0+264]) != v0(=-0x1).
  The `beq` branch at 0x10041ed8 targets 0x10041f28 and is always taken.
  The `beq` branch at 0x10041f28 targets 0x10041f30 and is always taken.
  The return at 0x10041f3c has v0 = unknown.
- `editHardware__5FrameGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10041f50 (n32).
  It occupies 140 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xaea4, including `lw` at 0x10041f80, `lw` at 0x10041f98, `lw` at 0x10041fac.
  2 such `lw` accesses load 4 bytes from [a0+44708] +0x8, including `lw` at 0x10041f84, `lw` at 0x10041fb0.
  The `lw` at 0x10041f88 loads 4 bytes from [[a0+44708]+8] +0x24.
  The `lw` at 0x10041fb4 loads 4 bytes from [[a0+44708]+8] +0x2c.
  The `jalr` at 0x10041fb8 calls (unknown callee) with a0=([[[a0+44708]+8]+36] + [a0+44708]), a1=[a0+44708], a2=a0 at entry (arg0), a3=0x6f120.
  The `beq` branch at 0x10041fc0 targets 0x10041fc8 and is always taken.
  The return at 0x10041fd4 has v0 = ret(unknown).
- `newChannel__5FrameGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10042310 (n32).
  It occupies 276 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x98, including `lw` at 0x1004233c, `lw` at 0x100423dc.
  2 such `lw` accesses load 4 bytes from [a0+152] +0x10, including `lw` at 0x10042340, `lw` at 0x100423e0.
  The `lw` at 0x10042368 loads 4 bytes from sym(combination) +0x5a9c.
  The `lw` at 0x10042378 loads 4 bytes from sym(combination) +0x5a78.
  The `lw` at 0x100423c0 loads 4 bytes from unknown (base unknown).
  The `jal` at 0x10042400 calls createNewChannel__5FrameGi with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x1004234c targets 0x100423f4, is taken when at(=0x0) >= v0(=[[a0+152]+16]) (signed), and falls through when at(=0x0) < v0(=[[a0+152]+16]) (signed).
  The `bne` branch at 0x1004235c targets 0x10042394, is taken when a0(unknown) != a1(=0x1), and falls through when a0(unknown) == a1(=0x1).
  The `beq` branch at 0x1004236c targets 0x10042394, is taken when a2(=[sym(combination)+23196]) == 0, and falls through when a2(=[sym(combination)+23196]) != 0.
  The `beq` branch at 0x1004237c targets 0x10042394, is taken when a3(=[sym(combination)+23160]) == 0, and falls through when a3(=[sym(combination)+23160]) != 0.
  The `beq` branch at 0x1004238c targets 0x10042398 and is always taken.
  The `bne` branch at 0x1004239c targets 0x100423cc, is taken when a5(=one of 0x0, 0x1) != 0, and falls through when a5(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x100423c4 targets 0x100423f4, is taken when a6(unknown) == 0, and falls through when a6(unknown) != 0.
  The `bne` branch at 0x100423ec targets 0x10042354, is taken when a7(unknown) < t0(=[[a0+152]+16]) (signed), and falls through when a7(unknown) >= t0(=[[a0+152]+16]) (signed).
  The `beq` branch at 0x10042408 targets 0x10042410 and is always taken.
  The return at 0x1004241c has v0 = ret(createNewChannel__5FrameGi).
- `newFile__5FrameGv` in `usr/gfx/ircombine` at 0x10042430 (n32).
  It occupies 468 bytes.
  2 such `lw` accesses load 4 bytes from ret(getTheWarningDialog__Gv) +0x8, including `lw` at 0x100424b8, `lw` at 0x100424e4.
  The `lw` at 0x100424bc loads 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x108.
  The `lw` at 0x100424e8 loads 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x110.
  The `sb` at 0x10042540 stores 1 bytes to sym(work_order) +0xad90 (value 0x0).
  The `lw` at 0x100425a4 loads 4 bytes from unknown (base unknown).
  The `sw` at 0x100425b0 stores 4 bytes to unknown (base unknown).
  The `jalr` at 0x10042470 calls bcmp with a0=a0+3008, a1=sym(combination), a2=0xa2a4, a3=a3 at entry (arg3).
  The `jalr` at 0x10042488 calls getTheWarningDialog__Gv with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100424a0 calls setTitle__15VkDialogManagerGPCc with a0=ret(getTheWarningDialog__Gv), a1=0x100aa5d8, a2=unknown, a3=unknown.
  The `jalr` at 0x100424ac calls getTheWarningDialog__Gv with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100424ec calls (unknown callee) with a0=([[ret(getTheWarningDialog__Gv)+8]+264] + ret(getTheWarningDialog__Gv)), a1=0x100978d8, a2=0x1, a3=0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10042514 calls bzero with a0=sym(combination), a1=0xa2a4, a2=unknown, a3=unknown.
  The `jalr` at 0x1004252c calls bzero with a0=a0+272, a1=0xab0, a2=unknown, a3=unknown.
  The `jal` at 0x10042568 calls vfcGetKonaCombination with a0=sp-44712, a1=sym(combination), a2=sp-65536, a3=sym(work_order)+44432, a4=0xad90.
  The `jal` at 0x100425d8 calls cleanup__5FrameGv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown, a5=0x28a9, a6=a0+3008, a7=sym(combination).
  The `beq` branch at 0x1004247c targets 0x10042508, is taken when v0(=ret(bcmp)) == 0, and falls through when v0(=ret(bcmp)) != 0.
  The `beq` branch at 0x100424f8 targets 0x10042508, is taken when v0(=ret(unknown)) == a1(=0x1), and falls through when v0(=ret(unknown)) != a1(=0x1).
  The `beq` branch at 0x10042500 targets 0x100425e8 and is always taken.
  The `bgtz` branch at 0x100425c8 targets 0x10042598, is taken when t0(unknown) > 0 (signed), and falls through when t0(unknown) <= 0 (signed).
  The `beq` branch at 0x100425e0 targets 0x100425e8 and is always taken.
  The return at 0x100425fc has v0 = unknown.
- `openFile__5FrameGPCc` in `usr/gfx/ircombine` at 0x10042610 (n32).
  It occupies 668 bytes.
  The `sw` at 0x10042650 stores 4 bytes to sym(work_order) +0xac48 (value 0x3).
  The `sw` at 0x10042658 stores 4 bytes to sym(work_order) +0x0 (value 0x0).
  The `ld` at 0x100426ac loads 8 bytes from unknown (base unknown).
  The `sd` at 0x100426b8 stores 8 bytes to unknown (base unknown).
  3 such `lw` accesses load 4 bytes from unknown (base unknown), including `lw` at 0x100426e4, `lw` at 0x100427c4, `lw` at 0x10042844.
  3 such `sw` accesses store 4 bytes to unknown (base unknown), including `sw` at 0x100426f0, `sw` at 0x100427d0, `sw` at 0x10042850.
  2 such `lw` accesses load 4 bytes from ret(getTheErrorDialog__Gv) +0x8, including `lw` at 0x1004275c, `lw` at 0x10042784.
  The `lw` at 0x10042760 loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108.
  The `lw` at 0x10042788 loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110.
  The `jalr` at 0x10042674 calls strncpy with a0=sym(work_order)+44172, a1=a1 at entry (arg1), a2=0xff, a3=0x3, a4=sym(work_order)+44104, a5=0xac48, a6=0x6ea60, a7=s8 at entry.
  The `jal` at 0x10042708 calls vfcGetKonaCombination with a0=sym(work_order), a1=sym(combination), a2=unknown, a3=unknown.
  The `jalr` at 0x10042750 calls getTheErrorDialog__Gv with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1004278c calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sym(szErrorStr), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10042810 calls strncpy with a0=sym(work_order)+44432, a1=a1 at entry (arg1), a2=0xff, a3=unknown.
  The `jal` at 0x10042878 calls cleanup__5FrameGv with a0=a0 at entry (arg0), a1=unknown, a2=0x28a9, a3=a0+3008, a4=sym(combination).
  The `bgtz` branch at 0x100426d0 targets 0x100426a0, is taken when t3(unknown) > 0 (signed), and falls through when t3(unknown) <= 0 (signed).
  The `beq` branch at 0x10042720 targets 0x1004274c, is taken when v0(=ret(vfcGetKonaCombination)) == v1(=0x1), and falls through when v0(=ret(vfcGetKonaCombination)) != v1(=0x1).
  The `beq` branch at 0x10042730 targets 0x1004274c, is taken when a0(=ret(vfcGetKonaCombination)) == a1(=0x2), and falls through when a0(=ret(vfcGetKonaCombination)) != a1(=0x2).
  The `beq` branch at 0x1004273c targets 0x100427f8, is taken when a2(=ret(vfcGetKonaCombination)) == 0, and falls through when a2(=ret(vfcGetKonaCombination)) != 0.
  The `beq` branch at 0x10042744 targets 0x10042888 and is always taken.
  The `bgtz` branch at 0x100427e8 targets 0x100427b8, is taken when a4(unknown) > 0 (signed), and falls through when a4(unknown) <= 0 (signed).
  The `beq` branch at 0x100427f0 targets 0x10042888 and is always taken.
  The `bgtz` branch at 0x10042868 targets 0x10042838, is taken when a5(unknown) > 0 (signed), and falls through when a5(unknown) <= 0 (signed).
  The `beq` branch at 0x10042880 targets 0x10042888 and is always taken.
  The `beq` branch at 0x10042888 targets 0x10042890 and is always taken.
  The return at 0x100428a4 has v0 = unknown.
- `paste__5FrameGv` in `usr/gfx/ircombine` at 0x100428b0 (n32).
  It occupies 764 bytes.
  The `lw` at 0x100428d0 loads 4 bytes from a0 (arg0 at entry) +0x3d8.
  4 such `lw` accesses load 4 bytes from ret(getTheErrorDialog__Gv) +0x8, including `lw` at 0x100428ec, `lw` at 0x10042918, `lw` at 0x10042b54.
  2 such `lw` accesses load 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108, including `lw` at 0x100428f0, `lw` at 0x10042b58.
  2 such `lw` accesses load 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110, including `lw` at 0x1004291c, `lw` at 0x10042b84.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x108, including `lw` at 0x10042934, `lw` at 0x10042a10.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x98, including `lw` at 0x1004294c, `lw` at 0x100429ec, `lw` at 0x10042a28.
  3 such `lw` accesses load 4 bytes from [a0+152] +0x10, including `lw` at 0x10042950, `lw` at 0x100429f0, `lw` at 0x10042a2c.
  The `lw` at 0x10042978 loads 4 bytes from sym(combination) +0x5a9c.
  The `lw` at 0x10042988 loads 4 bytes from sym(combination) +0x5a78.
  3 such `lw` accesses load 4 bytes from unknown (base unknown), including `lw` at 0x100429d0, `lw` at 0x10042a84, `lw` at 0x10042ae4.
  The `sw` at 0x10042a20 stores 4 bytes to a0 (arg0 at entry) +0x108 (value -0x1).
  2 such `sw` accesses store 4 bytes to unknown (base unknown), including `sw` at 0x10042a90, `sw` at 0x10042ad0.
  The `jalr` at 0x100428e0 calls getTheErrorDialog__Gv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10042920 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=0x10097928, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x10042aec calls EZ__GP10_WidgetRec with a0=unknown, a1=unknown, a2=unknown, a3=unknown, a6=0xab0.
  The `jalr` at 0x10042b0c calls VkGetResource__GPCcT1 with a0=0x10097898, a1=0x100978a8, a2=unknown, a3=unknown.
  The `jal` at 0x10042b24 calls __as__7EZColorGPc with a0=unknown, a1=ret(VkGetResource__GPCcT1), a2=unknown, a3=unknown.
  The `jal` at 0x10042b34 calls update__5FrameGv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10042b48 calls getTheErrorDialog__Gv with a0=[[a0+152]+16], a1=[a0+264], a2=unknown, a3=unknown.
  The `jalr` at 0x10042b88 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=0x10097940, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `bne` branch at 0x100428d4 targets 0x10042930, is taken when at(=[a0+984]) != 0, and falls through when at(=[a0+984]) == 0.
  The `beq` branch at 0x10042928 targets 0x10042b98 and is always taken.
  The `bne` branch at 0x1004293c targets 0x10042a0c, is taken when a1(=[a0+264]) != a2(=-0x1), and falls through when a1(=[a0+264]) == a2(=-0x1).
  The `beq` branch at 0x1004295c targets 0x10042a04, is taken when a2(=0x0) >= a3(=[[a0+152]+16]) (signed), and falls through when a2(=0x0) < a3(=[[a0+152]+16]) (signed).
  The `bne` branch at 0x1004296c targets 0x100429a4, is taken when a4(unknown) != a5(=0x1), and falls through when a4(unknown) == a5(=0x1).
  The `beq` branch at 0x1004297c targets 0x100429a4, is taken when a6(=[sym(combination)+23196]) == 0, and falls through when a6(=[sym(combination)+23196]) != 0.
  The `beq` branch at 0x1004298c targets 0x100429a4, is taken when a7(=[sym(combination)+23160]) == 0, and falls through when a7(=[sym(combination)+23160]) != 0.
  The `beq` branch at 0x1004299c targets 0x100429a8 and is always taken.
  The `bne` branch at 0x100429ac targets 0x100429dc, is taken when t1(=one of 0x0, 0x1) != 0, and falls through when t1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x100429d4 targets 0x10042a04, is taken when t2(unknown) == 0, and falls through when t2(unknown) != 0.
  The `bne` branch at 0x100429fc targets 0x10042964, is taken when t3(unknown) < t8(=[[a0+152]+16]) (signed), and falls through when t3(unknown) >= t8(=[[a0+152]+16]) (signed).
  The `beq` branch at 0x10042a04 targets 0x10042a24 and is always taken.
  The `beq` branch at 0x10042a38 targets 0x10042b44, is taken when v1(unknown) >= a0(=[[a0+152]+16]) (signed), and falls through when v1(unknown) < a0(=[[a0+152]+16]) (signed).
  The `bgtz` branch at 0x10042aa8 targets 0x10042a78, is taken when a4(unknown) > 0 (signed), and falls through when a4(unknown) <= 0 (signed).
  The `beq` branch at 0x10042b3c targets 0x10042b90 and is always taken.
  The `beq` branch at 0x10042b90 targets 0x10042b98 and is always taken.
  The return at 0x10042ba4 has v0 = unknown.
- `save__5FrameGv` in `usr/gfx/ircombine` at 0x10042bb0 (n32).
  It occupies 884 bytes.
  The `lbu` at 0x10042bd8 loads 1 bytes from sym(work_order) +0xad90.
  2 such `lw` accesses load 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x8, including `lw` at 0x10042cc0, `lw` at 0x10042cec.
  The `lw` at 0x10042cc4 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x108.
  The `lw` at 0x10042cf0 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x110.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x10042d3c, `lw` at 0x10042d50.
  The `lw` at 0x10042d40 loads 4 bytes from [a0+8] +0x198.
  The `lw` at 0x10042d54 loads 4 bytes from [a0+8] +0x1a0.
  The `sw` at 0x10042d78 stores 4 bytes to sym(work_order) +0xad8c (value 0x3).
  2 such `lw` accesses load 4 bytes from ret(getTheErrorDialog__Gv) +0x8, including `lw` at 0x10042dcc, `lw` at 0x10042df4.
  The `lw` at 0x10042dd0 loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108.
  The `lw` at 0x10042df8 loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110.
  The `sb` at 0x10042e10 stores 1 bytes to sym(work_order) +0xad90 (value 0x0).
  The `lw` at 0x10042e48 loads 4 bytes from unknown (base unknown).
  The `sw` at 0x10042e54 stores 4 bytes to unknown (base unknown).
  The `lbu` at 0x10042e78 loads 1 bytes from sym(szErrorStr) +0x0.
  2 such `lw` accesses load 4 bytes from ret(getTheWarningDialog__Gv) +0x8, including `lw` at 0x10042eb8, `lw` at 0x10042ee0.
  The `lw` at 0x10042ebc loads 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x108.
  The `lw` at 0x10042ee4 loads 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x110.
  The `jalr` at 0x10042bf0 calls getenv with a0=0x10097960, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10042c38 calls sprintf with a0=sp-1128, a1=0x10097970, a2=unknown, a3=unknown.
  The `jalr` at 0x10042c44 calls getTheFileSelectionDialog__Gv with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10042c60 calls setTitle__15VkDialogManagerGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=0x10097990, a2=unknown, a3=unknown.
  The `jalr` at 0x10042c6c calls getTheFileSelectionDialog__Gv with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10042c84 calls setDirectory__21VkFileSelectionDialogGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=sp-1128, a2=unknown, a3=unknown.
  The `jalr` at 0x10042c90 calls getTheFileSelectionDialog__Gv with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10042ca8 calls setFilterPattern__21VkFileSelectionDialogGPCc with a0=ret(getTheFileSelectionDialog__Gv), a1=0x100aa5e8, a2=unknown, a3=unknown.
  The `jalr` at 0x10042cb4 calls getTheFileSelectionDialog__Gv with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10042cf4 calls (unknown callee) with a0=([[ret(getTheFileSelectionDialog__Gv)+8]+264] + ret(getTheFileSelectionDialog__Gv)), a1=0x100979a8, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10042d10 calls getTheFileSelectionDialog__Gv with a0=unknown, a1=0x1, a2=unknown, a3=unknown.
  The `jal` at 0x10042d28 calls (unknown callee) with a0=ret(getTheFileSelectionDialog__Gv), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10042d58 calls (unknown callee) with a0=([[a0+8]+408] + a0), a1=ret(0x10049b90), a2=a0 at entry (arg0), a3=unknown.
  The `jal` at 0x10042d88 calls vfcPutKonaCombination with a0=sym(work_order), a1=sym(combination), a2=sym(work_order)+44428, a3=0xad8c.
  The `jalr` at 0x10042dc0 calls getTheErrorDialog__Gv with a0=unknown, a1=unknown, a2=unknown, a3=unknown, a4=ret(vfcPutKonaCombination), a5=0x1.
  The `jalr` at 0x10042dfc calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sym(szErrorStr), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10042e88 calls getTheWarningDialog__Gv with a0=unknown, a1=unknown, a2=unknown, a3=0x28a9, a4=a0+3008, a5=sym(combination).
  The `jalr` at 0x10042ea0 calls setTitle__15VkDialogManagerGPCc with a0=ret(getTheWarningDialog__Gv), a1=0x100aa5d8, a2=unknown, a3=unknown.
  The `jalr` at 0x10042eac calls getTheWarningDialog__Gv with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10042ee8 calls (unknown callee) with a0=([[ret(getTheWarningDialog__Gv)+8]+264] + ret(getTheWarningDialog__Gv)), a1=sym(szErrorStr), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x10042f00 calls setTitle__5FrameGv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `bne` branch at 0x10042bdc targets 0x10042d68, is taken when at(=[sym(work_order)+44432]:1) != 0, and falls through when at(=[sym(work_order)+44432]:1) == 0.
  The `beq` branch at 0x10042c04 targets 0x10042c1c, is taken when a1(=ret(getenv)) == 0, and falls through when a1(=ret(getenv)) != 0.
  The `beq` branch at 0x10042c14 targets 0x10042c24 and is always taken.
  The `bne` branch at 0x10042d04 targets 0x10042d60, is taken when v0(=ret(unknown)) != a1(=0x1), and falls through when v0(=ret(unknown)) == a1(=0x1).
  The `beq` branch at 0x10042d60 targets 0x10042f10 and is always taken.
  The `beq` branch at 0x10042da0 targets 0x10042dbc, is taken when a4(=ret(vfcPutKonaCombination)) == a5(=0x1), and falls through when a4(=ret(vfcPutKonaCombination)) != a5(=0x1).
  The `beq` branch at 0x10042dac targets 0x10042e1c, is taken when a6(=ret(vfcPutKonaCombination)) == 0, and falls through when a6(=ret(vfcPutKonaCombination)) != 0.
  The `beq` branch at 0x10042db4 targets 0x10042ef8 and is always taken.
  The `beq` branch at 0x10042e14 targets 0x10042ef8 and is always taken.
  The `bgtz` branch at 0x10042e6c targets 0x10042e3c, is taken when a6(unknown) > 0 (signed), and falls through when a6(unknown) <= 0 (signed).
  The `beq` branch at 0x10042e7c targets 0x10042ef0, is taken when t1(=[sym(szErrorStr)]:1) == 0, and falls through when t1(=[sym(szErrorStr)]:1) != 0.
  The `beq` branch at 0x10042ef0 targets 0x10042ef8 and is always taken.
  The `beq` branch at 0x10042f08 targets 0x10042f10 and is always taken.
  The return at 0x10042f1c has v0 = unknown.
- `saveToHardware__5FrameGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10042f30 (n32).
  It occupies 436 bytes.
  2 such `lw` accesses load 4 bytes from ret(getTheQuestionDialog__Gv) +0x8, including `lw` at 0x10042fb8, `lw` at 0x10042fe4.
  The `lw` at 0x10042fbc loads 4 bytes from [ret(getTheQuestionDialog__Gv)+8] +0x108.
  The `lw` at 0x10042fe8 loads 4 bytes from [ret(getTheQuestionDialog__Gv)+8] +0x110.
  The `sw` at 0x1004303c stores 4 bytes to sym(work_order) +0xad8c (value 0x2).
  2 such `lw` accesses load 4 bytes from ret(getTheErrorDialog__Gv) +0x8, including `lw` at 0x10043078, `lw` at 0x100430a0.
  The `lw` at 0x1004307c loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108.
  The `lw` at 0x100430a4 loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110.
  The `lw` at 0x100430b4 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `jalr` at 0x10042f58 calls getTheQuestionDialog__Gv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10042f74 calls setTitle__15VkDialogManagerGPCc with a0=ret(getTheQuestionDialog__Gv), a1=0x100979c0, a2=unknown, a3=unknown.
  The `jalr` at 0x10042f80 calls getTheQuestionDialog__Gv with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10042fa4 calls setButtonLabels__15VkDialogManagerGPCcN21 with a0=ret(getTheQuestionDialog__Gv), a1=0x100979d8, a2=0x100aa5f0, a3=0x0.
  The `jalr` at 0x10042fb0 calls getTheQuestionDialog__Gv with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10042fec calls (unknown callee) with a0=([[ret(getTheQuestionDialog__Gv)+8]+264] + ret(getTheQuestionDialog__Gv)), a1=0x100979e8, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x1004304c calls vfcPutKonaCombination with a0=sym(work_order), a1=sym(combination), a2=0x1, a3=unknown, a4=0x2, a5=sym(work_order)+44428, a6=0xad8c.
  The `jalr` at 0x1004306c calls getTheErrorDialog__Gv with a0=unknown, a1=unknown, a2=unknown, a3=unknown, a7=ret(vfcPutKonaCombination).
  The `jalr` at 0x100430a8 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sym(szErrorStr), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x100430c0 calls XmProcessTraversal with a0=[a0+76], a1=0x0, a2=unknown, a3=unknown.
  The `beq` branch at 0x10043000 targets 0x1004301c, is taken when a1(=ret(unknown)) == a2(=0x1), and falls through when a1(=ret(unknown)) != a2(=0x1).
  The `beq` branch at 0x1004300c targets 0x10043024, is taken when a3(=ret(unknown)) == 0, and falls through when a3(=ret(unknown)) != 0.
  The `beq` branch at 0x10043014 targets 0x1004302c and is always taken.
  The `beq` branch at 0x1004301c targets 0x1004302c and is always taken.
  The `beq` branch at 0x10043024 targets 0x100430d0 and is always taken.
  The `beq` branch at 0x10043060 targets 0x100430b0, is taken when a7(=ret(vfcPutKonaCombination)) == 0, and falls through when a7(=ret(vfcPutKonaCombination)) != 0.
  The `beq` branch at 0x100430c8 targets 0x100430d0 and is always taken.
  The return at 0x100430dc has v0 = unknown.
- `saveas__5FrameGPCc` in `usr/gfx/ircombine` at 0x100430f0 (n32).
  It occupies 384 bytes.
  2 such `lw` accesses load 4 bytes from ret(getTheWarningDialog__Gv) +0x8, including `lw` at 0x100431b4, `lw` at 0x100431e0.
  The `lw` at 0x100431b8 loads 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x108.
  The `lw` at 0x100431e4 loads 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x110.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x10043228, `lw` at 0x1004323c.
  The `lw` at 0x1004322c loads 4 bytes from [a0+8] +0x180.
  The `lw` at 0x10043240 loads 4 bytes from [a0+8] +0x188.
  The `jalr` at 0x10043148 calls strncpy with a0=sp-540, a1=a1 at entry (arg1), a2=0xff, a3=a3 at entry (arg3).
  The `jal` at 0x1004316c calls vfcGetKonaCombination with a0=sp-44712, a1=sp-86352, a2=unknown, a3=unknown.
  The `jalr` at 0x10043184 calls getTheWarningDialog__Gv with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1004319c calls setTitle__15VkDialogManagerGPCc with a0=ret(getTheWarningDialog__Gv), a1=0x100aa5d8, a2=unknown, a3=unknown.
  The `jalr` at 0x100431a8 calls getTheWarningDialog__Gv with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100431e8 calls (unknown callee) with a0=([[ret(getTheWarningDialog__Gv)+8]+264] + ret(getTheWarningDialog__Gv)), a1=0x10097a40, a2=0x1, a3=0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1004321c calls strncpy with a0=sym(work_order)+44432, a1=a1 at entry (arg1), a2=0xff, a3=unknown.
  The `jalr` at 0x10043244 calls (unknown callee) with a0=([[a0+8]+384] + a0), a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `bne` branch at 0x10043178 targets 0x10043204, is taken when v0(=ret(vfcGetKonaCombination)) != 0, and falls through when v0(=ret(vfcGetKonaCombination)) == 0.
  The `beq` branch at 0x100431f4 targets 0x10043204, is taken when v0(=ret(unknown)) == a1(=0x1), and falls through when v0(=ret(unknown)) != a1(=0x1).
  The `beq` branch at 0x100431fc targets 0x10043254 and is always taken.
  The `beq` branch at 0x1004324c targets 0x10043254 and is always taken.
  The return at 0x10043268 has v0 = ret(unknown).
- `snapChannel__5FrameGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10043270 (n32).
  It occupies 1468 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x108, including `lw` at 0x10043298, `lw` at 0x10043314, `lw` at 0x10043490.
  2 such `lw` accesses load 4 bytes from ret(getTheErrorDialog__Gv) +0x8, including `lw` at 0x100432b8, `lw` at 0x100432e4.
  The `lw` at 0x100432bc loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108.
  The `lw` at 0x100432e8 loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110.
  27 such `lw` accesses load 4 bytes from unknown (base unknown), including `lw` at 0x10043390, `lw` at 0x100433a0, `lw` at 0x100433b8.
  2 such `sw` accesses store 4 bytes to unknown (base unknown), including `sw` at 0x100437dc, `sw` at 0x100437fc.
  The `jalr` at 0x100432ac calls getTheErrorDialog__Gv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100432ec calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=0x100978b8, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x10043808 calls update__5FrameGv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `bne` branch at 0x100432a0 targets 0x100432fc, is taken when at(=[a0+264]) != v0(=-0x1), and falls through when at(=[a0+264]) == v0(=-0x1).
  The `beq` branch at 0x100432f4 targets 0x10043818 and is always taken.
  The `beq` branch at 0x10043338 targets 0x1004370c; its condition is not analyzed.
  The `beq` branch at 0x10043348 targets 0x10043388, is taken when a4(unknown) == 0, and falls through when a4(unknown) != 0.
  The `beq` branch at 0x10043358 targets 0x100433b0, is taken when a5(unknown) == a6(=0x1), and falls through when a5(unknown) != a6(=0x1).
  The `beq` branch at 0x10043368 targets 0x100433ec, is taken when a7(unknown) == t0(=0x2), and falls through when a7(unknown) != t0(=0x2).
  The `beq` branch at 0x10043378 targets 0x10043428, is taken when t1(unknown) == t2(=0x3), and falls through when t1(unknown) != t2(=0x3).
  The `beq` branch at 0x10043380 targets 0x10043478 and is always taken.
  The `beq` branch at 0x100433a8 targets 0x10043478 and is always taken.
  The `beq` branch at 0x100433e4 targets 0x10043478 and is always taken.
  The `beq` branch at 0x10043420 targets 0x10043478 and is always taken.
  The `beq` branch at 0x10043470 targets 0x10043478 and is always taken.
  The `beq` branch at 0x10043484 targets 0x100436f0; its condition is not analyzed.
  The `beq` branch at 0x10043498 targets 0x100436d4, is taken when a2(=[a0+264]) == a3(unknown), and falls through when a2(=[a0+264]) != a3(unknown).
  The `beq` branch at 0x100434c0 targets 0x100436d4, is taken when a3(unknown) == 0, and falls through when a3(unknown) != 0.
  The `beq` branch at 0x100434f4 targets 0x100436d4; its condition is not analyzed.
  The `beq` branch at 0x10043504 targets 0x10043544, is taken when a6(unknown) == 0, and falls through when a6(unknown) != 0.
  The `beq` branch at 0x10043514 targets 0x1004356c, is taken when a7(unknown) == t0(=0x1), and falls through when a7(unknown) != t0(=0x1).
  The `beq` branch at 0x10043524 targets 0x100435a8, is taken when t1(unknown) == t2(=0x2), and falls through when t1(unknown) != t2(=0x2).
  The `beq` branch at 0x10043534 targets 0x100435e4, is taken when t3(unknown) == t8(=0x3), and falls through when t3(unknown) != t8(=0x3).
  The `beq` branch at 0x1004353c targets 0x10043634 and is always taken.
  The `beq` branch at 0x10043564 targets 0x10043634 and is always taken.
  The `beq` branch at 0x100435a0 targets 0x10043634 and is always taken.
  The `beq` branch at 0x100435dc targets 0x10043634 and is always taken.
  The `beq` branch at 0x1004362c targets 0x10043634 and is always taken.
  The `beq` branch at 0x10043688 targets 0x100436b8, is taken when a3(unknown) >= a4(unknown) (signed), and falls through when a3(unknown) < a4(unknown) (signed).
  The `bne` branch at 0x100436cc targets 0x100434fc, is taken when a2(unknown) < 0x4 (signed), and falls through when a2(unknown) >= 0x4 (signed).
  The `bne` branch at 0x100436e8 targets 0x1004348c, is taken when a4(unknown) < 0xf (signed), and falls through when a4(unknown) >= 0xf (signed).
  The `bne` branch at 0x10043704 targets 0x10043340, is taken when a6(unknown) < 0x4 (signed), and falls through when a6(unknown) >= 0x4 (signed).
  The `beq` branch at 0x10043718 targets 0x10043800, is taken when t0(unknown) == t1(=0x7fffffff), and falls through when t0(unknown) != t1(=0x7fffffff).
  The `beq` branch at 0x10043730 targets 0x10043770, is taken when t2(unknown) == t3(unknown), and falls through when t2(unknown) != t3(unknown).
  The `beq` branch at 0x10043740 targets 0x10043758, is taken when (t3(unknown) & 0x2) == 0, and falls through when (t3(unknown) & 0x2) != 0.
  The `beq` branch at 0x10043750 targets 0x10043760 and is always taken.
  The `beq` branch at 0x10043780 targets 0x100437c0, is taken when v0(unknown) == v1(unknown), and falls through when v0(unknown) != v1(unknown).
  The `beq` branch at 0x10043790 targets 0x100437a8, is taken when (v1(unknown) & 0x1) == 0, and falls through when (v1(unknown) & 0x1) != 0.
  The `beq` branch at 0x100437a0 targets 0x100437b0 and is always taken.
  The `beq` branch at 0x10043810 targets 0x10043818 and is always taken.
  The return at 0x10043824 has v0 = unknown.
- `userHardware__5FrameGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10043830 (n32).
  It occupies 120 bytes.
  The `lw` at 0x10043860 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `sw` at 0x10043878 stores 4 bytes to a0 (arg0 at entry) +0x98 (value a0+188).
  The `jal` at 0x10043884 calls setSensitive__5FrameGv with a0=a0 at entry (arg0), a1=unknown, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10043864 targets 0x1004387c, is taken when at(=[a2+8]) == 0, and falls through when at(=[a2+8]) != 0.
  The `beq` branch at 0x1004388c targets 0x10043894 and is always taken.
  The return at 0x100438a0 has v0 = ret(setSensitive__5FrameGv).
- `okToQuit__5FrameGv` in `usr/gfx/ircombine` at 0x100438b0 (n32).
  It occupies 264 bytes.
  2 such `lw` accesses load 4 bytes from ret(getTheWarningDialog__Gv) +0x8, including `lw` at 0x10043928, `lw` at 0x10043954.
  The `lw` at 0x1004392c loads 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x108.
  The `lw` at 0x10043958 loads 4 bytes from [ret(getTheWarningDialog__Gv)+8] +0x110.
  The `jalr` at 0x100438e0 calls bcmp with a0=a0+3008, a1=sym(combination), a2=0xa2a4, a3=a3 at entry (arg3).
  The `jalr` at 0x100438f8 calls getTheWarningDialog__Gv with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10043910 calls setTitle__15VkDialogManagerGPCc with a0=ret(getTheWarningDialog__Gv), a1=0x100aa5d8, a2=unknown, a3=unknown.
  The `jalr` at 0x1004391c calls getTheWarningDialog__Gv with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1004395c calls (unknown callee) with a0=([[ret(getTheWarningDialog__Gv)+8]+264] + ret(getTheWarningDialog__Gv)), a1=0x10097a80, a2=0x1, a3=0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `beq` branch at 0x100438ec targets 0x1004398c, is taken when v0(=ret(bcmp)) == 0, and falls through when v0(=ret(bcmp)) != 0.
  The `bne` branch at 0x10043968 targets 0x10043980, is taken when v0(=ret(unknown)) != a1(=0x1), and falls through when v0(=ret(unknown)) == a1(=0x1).
  The `beq` branch at 0x10043978 targets 0x100439a0 and is always taken.
  The `beq` branch at 0x10043984 targets 0x100439a0 and is always taken.
  The `beq` branch at 0x10043998 targets 0x100439a0 and is always taken.
  The return at 0x100439b0 has v0 = one of 0x0, 0x1.
- `cleanup__5FrameGv` in `usr/gfx/ircombine` at 0x100439c0 (n32).
  It occupies 644 bytes.
  12 such `lw` accesses load 4 bytes from unknown (base unknown), including `lw` at 0x10043a08, `lw` at 0x10043a2c, `lw` at 0x10043a50.
  The `sw` at 0x10043ac4 stores 4 bytes to table(0xae64) +0x0 (value 0x0).
  The `lw` at 0x10043c08 loads 4 bytes from a0 (arg0 at entry) +0xaea0.
  The `jalr` at 0x10043aa4 calls (unknown callee) with a0=unknown, a1=0x3, a2=unknown, a3=unknown.
  The `jal` at 0x10043b38 calls EZ__GP10_WidgetRec with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10043b58 calls VkGetResource__GPCcT1 with a0=0x10097898, a1=0x100978a8, a2=unknown, a3=unknown.
  The `jal` at 0x10043b74 calls __as__7EZColorGPc with a0=unknown, a1=ret(VkGetResource__GPCcT1), a2=unknown, a3=unknown.
  The `jal` at 0x10043b9c calls EZ__GP10_WidgetRec with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10043bbc calls VkGetResource__GPCcT1 with a0=0x10097878, a1=0x10097888, a2=unknown, a3=unknown.
  The `jal` at 0x10043bd8 calls __as__7EZColorGPc with a0=unknown, a1=ret(VkGetResource__GPCcT1), a2=unknown, a3=unknown.
  The `jal` at 0x10043c10 calls update__18GlobalsWindowClassGv with a0=[a0+44704], a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jal` at 0x10043c20 calls setTitle__5FrameGv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x100439e8 targets 0x10043ae4; its condition is not analyzed.
  The `beq` branch at 0x10043a0c targets 0x10043ac8, is taken when v1(unknown) == 0, and falls through when v1(unknown) != 0.
  The `beq` branch at 0x10043a30 targets 0x10043aac, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x10043adc targets 0x100439f0, is taken when a5(unknown) < 0xf (signed), and falls through when a5(unknown) >= 0xf (signed).
  The `beq` branch at 0x10043af0 targets 0x10043bfc; its condition is not analyzed.
  The `beq` branch at 0x10043b18 targets 0x10043b84, is taken when t0(unknown) == 0, and falls through when t0(unknown) != 0.
  The `beq` branch at 0x10043b7c targets 0x10043be0 and is always taken.
  The `bne` branch at 0x10043bf4 targets 0x10043af8, is taken when a1(unknown) < 0xf (signed), and falls through when a1(unknown) >= 0xf (signed).
  The `beq` branch at 0x10043c28 targets 0x10043c30 and is always taken.
  The return at 0x10043c3c has v0 = ret(setTitle__5FrameGv).
- `setSensitive__5FrameGv` in `usr/gfx/ircombine` at 0x100446d0 (n32).
  It occupies 1972 bytes.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x98, including `lw` at 0x100446f0, `lw` at 0x1004484c, `lw` at 0x10044a4c.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xaea4, including `lw` at 0x10044710, `lw` at 0x10044728, `lw` at 0x1004473c.
  4 such `lw` accesses load 4 bytes from [a0+44708] +0x8, including `lw` at 0x10044714, `lw` at 0x10044740, `lw` at 0x100447b0.
  2 such `lw` accesses load 4 bytes from [[a0+44708]+8] +0xe4, including `lw` at 0x10044718, `lw` at 0x100447b4.
  2 such `lw` accesses load 4 bytes from [[a0+44708]+8] +0xec, including `lw` at 0x10044744, `lw` at 0x100447e0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x1004476c, `lw` at 0x10044808.
  2 such `lw` accesses load 4 bytes from sym(vkwindow) +0x0, including `lw` at 0x10044784, `lw` at 0x10044820.
  2 such `lw` accesses load 4 bytes from [sym(vkwindow)] +0x44, including `lw` at 0x10044788, `lw` at 0x10044824.
  The `lw` at 0x10044850 loads 4 bytes from [a0+152] +0x10.
  2 such `lw` accesses load 4 bytes from unknown (base unknown), including `lw` at 0x10044874, `lw` at 0x1004494c.
  8 such `lw` accesses load 4 bytes from table(0xae64) +0x0, including `lw` at 0x100448a0, `lw` at 0x100448c4, `lw` at 0x100448e8.
  4 such `lw` accesses load 4 bytes from entry(0xae64) +0x8, including `lw` at 0x100448c8, `lw` at 0x1004490c, `lw` at 0x100449c0.
  2 such `lw` accesses load 4 bytes from [entry(0xae64)+8] +0xe4, including `lw` at 0x100448cc, `lw` at 0x100449c4.
  2 such `lw` accesses load 4 bytes from [entry(0xae64)+8] +0xec, including `lw` at 0x10044910, `lw` at 0x10044a08.
  The `sw` at 0x1004497c stores 4 bytes to unknown (base unknown) (value 0x0).
  5 such `lw` accesses load 4 bytes from [a0+152] +0x18, including `lw` at 0x10044a50, `lw` at 0x10044a68, `lw` at 0x10044a80.
  The `lw` at 0x10044ac4 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `lw` at 0x10044adc loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lw` at 0x10044af4 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0x10044b0c loads 4 bytes from a0 (arg0 at entry) +0x8c.
  The `lw` at 0x10044b24 loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `lw` at 0x10044b3c loads 4 bytes from a0 (arg0 at entry) +0x94.
  The `sw` at 0x10044b54 stores 4 bytes to sym(combination) +0x6528 (value 0x0).
  The `sw` at 0x10044b5c stores 4 bytes to sym(combination) +0x6fd8 (value 0x0).
  The `sw` at 0x10044b64 stores 4 bytes to sym(combination) +0x7a88 (value 0x0).
  The `sw` at 0x10044b74 stores 4 bytes to sym(combination) +0x8538 (value 0x0).
  The `sw` at 0x10044b84 stores 4 bytes to sym(combination) +0x8fe8 (value 0x0).
  The `sw` at 0x10044b94 stores 4 bytes to sym(combination) +0x9a98 (value 0x0).
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xae88, including `lw` at 0x10044ba4, `lw` at 0x10044bbc, `lw` at 0x10044bd4.
  2 such `lw` accesses load 4 bytes from [a0+44680] +0x8, including `lw` at 0x10044bc0, `lw` at 0x10044bec.
  The `lw` at 0x10044bc4 loads 4 bytes from [[a0+44680]+8] +0xe4.
  The `lw` at 0x10044bf0 loads 4 bytes from [[a0+44680]+8] +0xec.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xae8c, including `lw` at 0x10044c20, `lw` at 0x10044c38, `lw` at 0x10044c50.
  2 such `lw` accesses load 4 bytes from [a0+44684] +0x8, including `lw` at 0x10044c3c, `lw` at 0x10044c68.
  The `lw` at 0x10044c40 loads 4 bytes from [[a0+44684]+8] +0xe4.
  The `lw` at 0x10044c6c loads 4 bytes from [[a0+44684]+8] +0xec.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xae90, including `lw` at 0x10044c9c, `lw` at 0x10044cb4, `lw` at 0x10044ccc.
  2 such `lw` accesses load 4 bytes from [a0+44688] +0x8, including `lw` at 0x10044cb8, `lw` at 0x10044ce4.
  The `lw` at 0x10044cbc loads 4 bytes from [[a0+44688]+8] +0xe4.
  The `lw` at 0x10044ce8 loads 4 bytes from [[a0+44688]+8] +0xec.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xae94, including `lw` at 0x10044d18, `lw` at 0x10044d30, `lw` at 0x10044d48.
  2 such `lw` accesses load 4 bytes from [a0+44692] +0x8, including `lw` at 0x10044d34, `lw` at 0x10044d60.
  The `lw` at 0x10044d38 loads 4 bytes from [[a0+44692]+8] +0xe4.
  The `lw` at 0x10044d64 loads 4 bytes from [[a0+44692]+8] +0xec.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xae98, including `lw` at 0x10044d94, `lw` at 0x10044dac, `lw` at 0x10044dc4.
  2 such `lw` accesses load 4 bytes from [a0+44696] +0x8, including `lw` at 0x10044db0, `lw` at 0x10044ddc.
  The `lw` at 0x10044db4 loads 4 bytes from [[a0+44696]+8] +0xe4.
  The `lw` at 0x10044de0 loads 4 bytes from [[a0+44696]+8] +0xec.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xae9c, including `lw` at 0x10044e10, `lw` at 0x10044e28, `lw` at 0x10044e3c.
  2 such `lw` accesses load 4 bytes from [a0+44700] +0x8, including `lw` at 0x10044e14, `lw` at 0x10044e40.
  The `lw` at 0x10044e18 loads 4 bytes from [[a0+44700]+8] +0xe4.
  The `lw` at 0x10044e44 loads 4 bytes from [[a0+44700]+8] +0xec.
  The `jalr` at 0x10044748 calls (unknown callee) with a0=([[[a0+44708]+8]+228] + [a0+44708]), a1=[a0+44708], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0x10044760 calls XtSetSensitive with a0=ret(unknown), a1=0x0, a2=unknown, a3=unknown.
  The `jalr` at 0x10044778 calls XtSetSensitive with a0=[a0+48], a1=0x1, a2=unknown, a3=unknown.
  The `jalr` at 0x10044790 calls activate__10VkMenuItemGv with a0=[[sym(vkwindow)]+68], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100447e4 calls (unknown callee) with a0=([[[a0+44708]+8]+228] + [a0+44708]), a1=[a0+44708], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0x100447fc calls XtSetSensitive with a0=ret(unknown), a1=0x1, a2=unknown, a3=unknown.
  The `jalr` at 0x10044814 calls XtSetSensitive with a0=[a0+48], a1=0x0, a2=unknown, a3=unknown.
  The `jalr` at 0x1004482c calls deactivate__10VkMenuItemGv with a0=[[sym(vkwindow)]+68], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10044880 calls XtSetSensitive with a0=unknown, a1=0x1, a2=unknown, a3=[[a0+152]+16].
  The `jalr` at 0x10044914 calls (unknown callee) with a0=([[entry(0xae64)+8]+228] + entry(0xae64)), a1=entry(0xae64), a2=unknown, a3=unknown.
  The `jalr` at 0x1004492c calls XtSetSensitive with a0=ret(unknown), a1=0x1, a2=unknown, a3=unknown.
  The `jalr` at 0x10044958 calls XtSetSensitive with a0=unknown, a1=0x0, a2=unknown, a3=[[a0+152]+16].
  The `jalr` at 0x10044a0c calls (unknown callee) with a0=([[entry(0xae64)+8]+228] + entry(0xae64)), a1=entry(0xae64), a2=unknown, a3=unknown, a7=0xab0.
  The `jalr` at 0x10044a24 calls XtSetSensitive with a0=ret(unknown), a1=0x0, a2=unknown, a3=unknown.
  The `jalr` at 0x10044ad0 calls XtSetSensitive with a0=[a0+128], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10044ae8 calls XtSetSensitive with a0=[a0+132], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10044b00 calls XtSetSensitive with a0=[a0+136], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10044b18 calls XtSetSensitive with a0=[a0+140], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10044b30 calls XtSetSensitive with a0=[a0+144], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10044b48 calls XtSetSensitive with a0=[a0+148], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10044bf4 calls (unknown callee) with a0=([[[a0+44680]+8]+228] + [a0+44680]), a1=[a0+44680], a2=a0 at entry (arg0), a3=sym(combination)+39576, a4=0x9a98, a5=sym(combination)+36840, a6=0x8fe8, a7=sym(combination)+34104.
  The `jalr` at 0x10044c0c calls XtSetSensitive with a0=ret(unknown), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10044c70 calls (unknown callee) with a0=([[[a0+44684]+8]+228] + [a0+44684]), a1=[a0+44684], a2=a0 at entry (arg0), a3=0xae8c.
  The `jalr` at 0x10044c88 calls XtSetSensitive with a0=ret(unknown), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10044cec calls (unknown callee) with a0=([[[a0+44688]+8]+228] + [a0+44688]), a1=[a0+44688], a2=a0 at entry (arg0), a3=0xae90.
  The `jalr` at 0x10044d04 calls XtSetSensitive with a0=ret(unknown), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10044d68 calls (unknown callee) with a0=([[[a0+44692]+8]+228] + [a0+44692]), a1=[a0+44692], a2=a0 at entry (arg0), a3=0xae94.
  The `jalr` at 0x10044d80 calls XtSetSensitive with a0=ret(unknown), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10044de4 calls (unknown callee) with a0=([[[a0+44696]+8]+228] + [a0+44696]), a1=[a0+44696], a2=a0 at entry (arg0), a3=0xae98.
  The `jalr` at 0x10044dfc calls XtSetSensitive with a0=ret(unknown), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10044e48 calls (unknown callee) with a0=([[[a0+44700]+8]+228] + [a0+44700]), a1=[a0+44700], a2=a0 at entry (arg0), a3=unknown.
  The `jalr` at 0x10044e60 calls XtSetSensitive with a0=ret(unknown), a1=unknown, a2=unknown, a3=unknown.
  The `bne` branch at 0x100446fc targets 0x100447a0, is taken when at(=[a0+152]) != v0(=a0+156), and falls through when at(=[a0+152]) == v0(=a0+156).
  The `beq` branch at 0x10044798 targets 0x10044834 and is always taken.
  The `beq` branch at 0x10044840 targets 0x10044a48; its condition is not analyzed.
  The `beq` branch at 0x1004485c targets 0x1004493c, is taken when a2(unknown) >= a3(=[[a0+152]+16]) (signed), and falls through when a2(unknown) < a3(=[[a0+152]+16]) (signed).
  The `beq` branch at 0x100448a4 targets 0x10044934, is taken when a2(=entry(0xae64)) == 0, and falls through when a2(=entry(0xae64)) != 0.
  The `beq` branch at 0x10044934 targets 0x10044a2c and is always taken.
  The `beq` branch at 0x1004499c targets 0x10044a2c, is taken when a2(=entry(0xae64)) == 0, and falls through when a2(=entry(0xae64)) != 0.
  The `bne` branch at 0x10044a40 targets 0x10044848, is taken when a3(unknown) < 0x8 (signed), and falls through when a3(unknown) >= 0x8 (signed).
  The `beq` branch at 0x10044ba8 targets 0x10044c14, is taken when a1(=[a0+44680]) == 0, and falls through when a1(=[a0+44680]) != 0.
  The `beq` branch at 0x10044c24 targets 0x10044c90, is taken when a2(=[a0+44684]) == 0, and falls through when a2(=[a0+44684]) != 0.
  The `beq` branch at 0x10044ca0 targets 0x10044d0c, is taken when a2(=[a0+44688]) == 0, and falls through when a2(=[a0+44688]) != 0.
  The `beq` branch at 0x10044d1c targets 0x10044d88, is taken when a2(=[a0+44692]) == 0, and falls through when a2(=[a0+44692]) != 0.
  The `beq` branch at 0x10044d98 targets 0x10044e68, is taken when a2(=[a0+44696]) == 0, and falls through when a2(=[a0+44696]) != 0.
  The `beq` branch at 0x10044e68 targets 0x10044e70 and is always taken.
  The return at 0x10044e7c has v0 = ret(XtSetSensitive).
- `clamp_channel__5FrameGiN21` in `usr/gfx/ircombine` at 0x10044e90 (n32).
  It occupies 1728 bytes.
  The `lw` at 0x10044f3c loads 4 bytes from sym(combination) +0x6388.
  The `lw` at 0x10044f60 loads 4 bytes from sym(combination) +0x638c.
  The `lw` at 0x10044f6c loads 4 bytes from sym(combination) +0x6394.
  The `lw` at 0x10044f80 loads 4 bytes from sym(combination) +0x6390.
  The `lw` at 0x10044f8c loads 4 bytes from sym(combination) +0x6398.
  The `lw` at 0x10044f9c loads 4 bytes from sym(combination) +0x78e8.
  The `lw` at 0x10044fc0 loads 4 bytes from sym(combination) +0x78ec.
  The `lw` at 0x10044fcc loads 4 bytes from sym(combination) +0x78f4.
  The `lw` at 0x10044fe0 loads 4 bytes from sym(combination) +0x78f0.
  The `lw` at 0x10044fec loads 4 bytes from sym(combination) +0x78f8.
  The `lw` at 0x10044ffc loads 4 bytes from sym(combination) +0x58d8.
  The `lw` at 0x10045020 loads 4 bytes from sym(combination) +0x58dc.
  The `lw` at 0x1004502c loads 4 bytes from sym(combination) +0x58e4.
  The `lw` at 0x10045040 loads 4 bytes from sym(combination) +0x58e0.
  The `lw` at 0x1004504c loads 4 bytes from sym(combination) +0x58e8.
  24 such `lw` accesses load 4 bytes from unknown (base unknown), including `lw` at 0x100450f8, `lw` at 0x1004510c, `lw` at 0x1004514c.
  9 such `sw` accesses store 4 bytes to unknown (base unknown), including `sw` at 0x10045198, `sw` at 0x100451c4, `sw` at 0x10045284.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x104, including `lw` at 0x100452d8, `lw` at 0x100452e0.
  The `lw` at 0x1004530c loads 4 bytes from sym(combination) +0x108.
  The `sw` at 0x100453b4 stores 4 bytes to unknown (base unknown) (value 0x0).
  The `jal` at 0x10044f1c calls clamp_encoder__5FrameGiN21 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x6c1e0.
  The `beq` branch at 0x10044ee0 targets 0x10044f08, is taken when at(=a1) == v0(=0x8), and falls through when at(=a1) != v0(=0x8).
  The `beq` branch at 0x10044ef0 targets 0x10044f08, is taken when a5(=a1) == a6(=0xb), and falls through when a5(=a1) != a6(=0xb).
  The `bne` branch at 0x10044f00 targets 0x10044f2c, is taken when a7(=a1) != t0(=0x9), and falls through when a7(=a1) == t0(=0x9).
  The `beq` branch at 0x10044f24 targets 0x1004553c and is always taken.
  The `bne` branch at 0x10044f44 targets 0x10044f98, is taken when t1(=[sym(combination)+25480]) != t2(=a1), and falls through when t1(=[sym(combination)+25480]) == t2(=a1).
  The `bne` branch at 0x10044fa4 targets 0x10044ff8, is taken when ra(=[sym(combination)+30952]) != at(=a1), and falls through when ra(=[sym(combination)+30952]) == at(=a1).
  The `bne` branch at 0x10045004 targets 0x10045090, is taken when a0(=[sym(combination)+22744]) != a1, and falls through when a0(=[sym(combination)+22744]) == a1.
  The `beq` branch at 0x10045064 targets 0x10045074, is taken when a1(unknown) >= a2(=([sym(combination)+22748] + [sym(combination)+22756])) (signed), and falls through when a1(unknown) < a2(=([sym(combination)+22748] + [sym(combination)+22756])) (signed).
  The `beq` branch at 0x10045080 targets 0x10045090, is taken when a7(unknown) >= t0(=([sym(combination)+22752] + [sym(combination)+22760])) (signed), and falls through when a7(unknown) < t0(=([sym(combination)+22752] + [sym(combination)+22760])) (signed).
  The `beq` branch at 0x100450dc targets 0x100452d4; its condition is not analyzed.
  The `beq` branch at 0x10045114 targets 0x100451c8, is taken when at(unknown) >= v0(unknown) (signed), and falls through when at(unknown) < v0(unknown) (signed).
  The `beq` branch at 0x10045130 targets 0x1004519c, is taken when (v1(=a3) & a0(unknown)) == 0, and falls through when (v1(=a3) & a0(unknown)) != 0.
  The `beq` branch at 0x100451fc targets 0x100452b8, is taken when a6(unknown) >= a7(unknown) (signed), and falls through when a6(unknown) < a7(unknown) (signed).
  The `beq` branch at 0x10045218 targets 0x10045288, is taken when (t1(=a3) & t2(unknown)) == 0, and falls through when (t1(=a3) & t2(unknown)) != 0.
  The `bne` branch at 0x100452cc targets 0x100450e4, is taken when v0(unknown) < 0x2 (signed), and falls through when v0(unknown) >= 0x2 (signed).
  The `beq` branch at 0x10045320 targets 0x100454d4; its condition is not analyzed.
  The `bgez` branch at 0x10045340 targets 0x100453c0, is taken when a3(unknown) >= 0 (signed), and falls through when a3(unknown) < 0 (signed).
  The `beq` branch at 0x1004534c targets 0x100453a0, is taken when a5(=a2) == 0, and falls through when a5(=a2) != 0.
  The `beq` branch at 0x100453b8 targets 0x100454b8 and is always taken.
  The `beq` branch at 0x1004540c targets 0x100454b8, is taken when t2(unknown) >= t3(unknown) (signed), and falls through when t2(unknown) < t3(unknown) (signed).
  The `beq` branch at 0x10045418 targets 0x10045470, is taken when t8(=a2) == 0, and falls through when t8(=a2) != 0.
  The `beq` branch at 0x10045468 targets 0x100454b8 and is always taken.
  The `bne` branch at 0x100454cc targets 0x10045328, is taken when v1(unknown) < 0x2 (signed), and falls through when v1(unknown) >= 0x2 (signed).
  The `beq` branch at 0x10045534 targets 0x1004553c and is always taken.
  The return at 0x10045548 has v0 = unknown.
- `clamp_encoder__5FrameGiN21` in `usr/gfx/ircombine` at 0x10045550 (n32).
  It occupies 1528 bytes.
  5 such `lw` accesses load 4 bytes from abs 0x100a9ee8, including `lw` at 0x10045574, `lw` at 0x100455c8, `lw` at 0x100455d0.
  39 such `lw` accesses load 4 bytes from unknown (base unknown), including `lw` at 0x10045598, `lw` at 0x100455b0, `lw` at 0x100455c0.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x104, including `lw` at 0x100455cc, `lw` at 0x100455d4.
  The `lw` at 0x10045600 loads 4 bytes from sym(combination) +0x108.
  10 such `sw` accesses store 4 bytes to unknown (base unknown), including `sw` at 0x1004571c, `sw` at 0x100457e4, `sw` at 0x10045834.
  The `sw` at 0x10045734 stores 4 bytes to unknown (base unknown) (value 0x0).
  The `bne` branch at 0x100455a0 targets 0x10045628, is taken when v0(unknown) != v1(=a1), and falls through when v0(unknown) == v1(=a1).
  The `beq` branch at 0x10045620 targets 0x10045694 and is always taken.
  The `beq` branch at 0x100456a0 targets 0x10045854; its condition is not analyzed.
  The `bgez` branch at 0x100456c0 targets 0x10045740, is taken when v1(unknown) >= 0 (signed), and falls through when v1(unknown) < 0 (signed).
  The `beq` branch at 0x100456cc targets 0x10045720, is taken when a1(=a2) == 0, and falls through when a1(=a2) != 0.
  The `beq` branch at 0x10045738 targets 0x10045838 and is always taken.
  The `beq` branch at 0x1004578c targets 0x10045838, is taken when a6(unknown) >= a7(unknown) (signed), and falls through when a6(unknown) < a7(unknown) (signed).
  The `beq` branch at 0x10045798 targets 0x100457f0, is taken when t0(=a2) == 0, and falls through when t0(=a2) != 0.
  The `beq` branch at 0x100457e8 targets 0x10045838 and is always taken.
  The `bne` branch at 0x1004584c targets 0x100456a8, is taken when t9(unknown) < 0x2 (signed), and falls through when t9(unknown) >= 0x2 (signed).
  The `beq` branch at 0x10045860 targets 0x10045a4c; its condition is not analyzed.
  The `beq` branch at 0x10045898 targets 0x1004594c, is taken when v1(unknown) >= a0(unknown) (signed), and falls through when v1(unknown) < a0(unknown) (signed).
  The `beq` branch at 0x100458b4 targets 0x10045920, is taken when (a1(=a3) & a2(unknown)) == 0, and falls through when (a1(=a3) & a2(unknown)) != 0.
  The `beq` branch at 0x1004597c targets 0x10045a30, is taken when t0(unknown) >= t1(unknown) (signed), and falls through when t0(unknown) < t1(unknown) (signed).
  The `beq` branch at 0x10045998 targets 0x10045a04, is taken when (t3(=a3) & t8(unknown)) == 0, and falls through when (t3(=a3) & t8(unknown)) != 0.
  The `bne` branch at 0x10045a44 targets 0x10045868, is taken when a1(unknown) < 0x2 (signed), and falls through when a1(unknown) >= 0x2 (signed).
  The `beq` branch at 0x10045ab8 targets 0x10045b30, is taken when a3(unknown) == a4(=a1), and falls through when a3(unknown) != a4(=a1).
  The `bne` branch at 0x10045ad8 targets 0x10045b30, is taken when t0(unknown) != t1(unknown), and falls through when t0(unknown) == t1(unknown).
  The `bne` branch at 0x10045af8 targets 0x10045b30, is taken when t1(unknown) != t2(unknown), and falls through when t1(unknown) == t2(unknown).
  The `beq` branch at 0x10045b30 targets 0x10045b38 and is always taken.
  The return at 0x10045b40 has v0 = unknown.
- `loadFormat__5FrameGiPCc` in `usr/gfx/ircombine` at 0x10045b50 (n32).
  It occupies 652 bytes.
  2 such `sw` accesses store 4 bytes to unknown (base unknown) (value 0x1), including `sw` at 0x10045c10, `sw` at 0x10045c18.
  2 such `sw` accesses store 4 bytes to unknown (base unknown) (value 0x0), including `sw` at 0x10045c38, `sw` at 0x10045c44.
  6 such `lw` accesses load 4 bytes from unknown (base unknown), including `lw` at 0x10045c50, `lw` at 0x10045c74, `lw` at 0x10045ca8.
  4 such `sw` accesses store 4 bytes to unknown (base unknown), including `sw` at 0x10045c5c, `sw` at 0x10045c68, `sw` at 0x10045c84.
  The `sw` at 0x10045c9c stores 4 bytes to unknown (base unknown) (value a1).
  The `lw` at 0x10045cb0 loads 4 bytes from sym(combination) +0x104.
  The `sw` at 0x10045cd0 stores 4 bytes to sym(combination) +0x104.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xaea0, including `lw` at 0x10045ce0, `lw` at 0x10045d30.
  The `lw` at 0x10045d00 loads 4 bytes from sym(combination) +0x108.
  The `sw` at 0x10045d20 stores 4 bytes to sym(combination) +0x108.
  The `sw` at 0x10045d48 stores 4 bytes to a0 (arg0 at entry) +0x108 (value a1).
  The `lw` at 0x10045d5c loads 4 bytes from (a0 + (a1 << 0x2)) +0x5c.
  The `jal` at 0x10045b80 calls iGUIReadFormatFile__GPCcP11konFormat_t with a0=a2 at entry (arg2), a1=sp-2096, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10045ba4 calls basename with a0=a2 at entry (arg2), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10045bdc calls strncpy with a0=unknown, a1=ret(basename), a2=0xff, a3=a1 at entry (arg1), a4=0xab0.
  The `jal` at 0x10045c28 calls vfcSetKonaChannelFormatParameters with a0=unknown, a1=sp-2096, a2=unknown, a3=unknown, a6=a1 at entry (arg1), a7=0xab0.
  The `jal` at 0x10045ce8 calls clampManagedArea__18GlobalsWindowClassGv with a0=[a0+44704], a1=a0 at entry (arg0), a2=unknown, a3=sym(combination), a7=a1 at entry (arg1).
  The `jal` at 0x10045d38 calls clampManagedArea__18GlobalsWindowClassGv with a0=[a0+44704], a1=a0 at entry (arg0), a2=unknown, a3=sym(combination).
  The `jal` at 0x10045d64 calls EZ__GP10_WidgetRec with a0=[(a0 + (a1 << 0x2))+92], a1=(a1 << 0x2), a2=a1 at entry (arg1), a3=a0 at entry (arg0).
  The `jalr` at 0x10045d84 calls VkGetResource__GPCcT1 with a0=0x10097898, a1=0x100978a8, a2=unknown, a3=unknown.
  The `jal` at 0x10045d9c calls __as__7EZColorGPc with a0=unknown, a1=ret(VkGetResource__GPCcT1), a2=unknown, a3=unknown.
  The `jal` at 0x10045dac calls update__5FrameGv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x10045b94 targets 0x10045db4, is taken when v0(=ret(iGUIReadFormatFile__GPCcP11konFormat_t)) == 0, and falls through when v0(=ret(iGUIReadFormatFile__GPCcP11konFormat_t)) != 0.
  The `beq` branch at 0x10045cb8 targets 0x10045cf0, is taken when a5(=[sym(combination)+260]) >= a6(unknown) (signed), and falls through when a5(=[sym(combination)+260]) < a6(unknown) (signed).
  The `beq` branch at 0x10045d08 targets 0x10045d40, is taken when a3(=[sym(combination)+264]) >= a4(unknown) (signed), and falls through when a3(=[sym(combination)+264]) < a4(unknown) (signed).
  The `beq` branch at 0x10045dbc targets 0x10045dc4 and is always taken.
  The return at 0x10045dd4 has v0 = unknown.
- `download__5FrameGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10045de0 (n32).
  It occupies 248 bytes.
  The `sw` at 0x10045e30 stores 4 bytes to sym(work_order) +0xad8c (value 0x1).
  2 such `lw` accesses load 4 bytes from ret(getTheErrorDialog__Gv) +0x8, including `lw` at 0x10045e6c, `lw` at 0x10045e94.
  The `lw` at 0x10045e70 loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108.
  The `lw` at 0x10045e98 loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110.
  The `lw` at 0x10045ea8 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `jalr` at 0x10045e0c calls XtIsSensitive with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10045e40 calls vfcPutKonaCombination with a0=sym(work_order), a1=sym(combination), a2=unknown, a3=unknown.
  The `jalr` at 0x10045e60 calls getTheErrorDialog__Gv with a0=unknown, a1=ret(vfcPutKonaCombination), a2=unknown, a3=unknown.
  The `jalr` at 0x10045e9c calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=sym(szErrorStr), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10045eb4 calls XmProcessTraversal with a0=[a0+76], a1=0x0, a2=unknown, a3=unknown.
  The `beq` branch at 0x10045e18 targets 0x10045ebc, is taken when v0(=ret(XtIsSensitive)) == 0, and falls through when v0(=ret(XtIsSensitive)) != 0.
  The `beq` branch at 0x10045e54 targets 0x10045ea4, is taken when a1(=ret(vfcPutKonaCombination)) == 0, and falls through when a1(=ret(vfcPutKonaCombination)) != 0.
  The `beq` branch at 0x10045ebc targets 0x10045ec4 and is always taken.
  The return at 0x10045ed0 has v0 = unknown.
- `editGlobals__5FrameGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10045ee0 (n32).
  It occupies 164 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xaea0, including `lw` at 0x10045f10, `lw` at 0x10045f28, `lw` at 0x10045f3c.
  2 such `lw` accesses load 4 bytes from [a0+44704] +0x8, including `lw` at 0x10045f14, `lw` at 0x10045f40.
  The `lw` at 0x10045f18 loads 4 bytes from [[a0+44704]+8] +0x24.
  The `lw` at 0x10045f44 loads 4 bytes from [[a0+44704]+8] +0x2c.
  The `lw` at 0x10045f54 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `jalr` at 0x10045f48 calls (unknown callee) with a0=([[[a0+44704]+8]+36] + [a0+44704]), a1=[a0+44704], a2=a0 at entry (arg0), a3=0x6b190.
  The `jalr` at 0x10045f60 calls XmProcessTraversal with a0=[a0+76], a1=0x0, a2=unknown, a3=unknown.
  The `beq` branch at 0x10045f68 targets 0x10045f70 and is always taken.
  The return at 0x10045f7c has v0 = ret(XmProcessTraversal).
- `expose__5FrameGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10045f90 (n32).
  It occupies 104 bytes.
  The `lw` at 0x10045fbc loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `jal` at 0x10045fc4 calls GLwDrawingAreaMakeCurrent with a0=a1 at entry (arg1), a1=[a0+224], a2=a2 at entry (arg2), a3=0x6b0e0.
  The `jal` at 0x10045fd4 calls update__5FrameGv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x10045fdc targets 0x10045fe4 and is always taken.
  The return at 0x10045ff0 has v0 = ret(update__5FrameGv).
- `ginit__5FrameGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10046000 (n32).
  It occupies 188 bytes.
  The `sw` at 0x1004607c stores 4 bytes to a0 (arg0 at entry) +0xe0 (value ret(glXCreateContext)).
  The `lhu` at 0x10046084 loads 2 bytes from a2 (arg2 at entry) +0x8.
  The `sw` at 0x1004608c stores 4 bytes to a0 (arg0 at entry) +0xf8 (value [a2+8]:2).
  The `lhu` at 0x10046094 loads 2 bytes from a2 (arg2 at entry) +0xa.
  The `sw` at 0x1004609c stores 4 bytes to a0 (arg0 at entry) +0xfc (value [a2+10]:2).
  The `jalr` at 0x10046044 calls XtVaGetValues with a0=a1 at entry (arg1), a1=0x10097b20, a2=sp-60, a3=0x0.
  The `jalr` at 0x10046054 calls XtDisplay with a0=a1 at entry (arg1), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10046070 calls glXCreateContext with a0=ret(XtDisplay), a1=unknown, a2=0x0, a3=0x1.
  The `beq` branch at 0x100460a0 targets 0x100460a8 and is always taken.
  The return at 0x100460b4 has v0 = ret(glXCreateContext).
- `input__5FrameGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x100460c0 (n32).
  It occupies 3080 bytes.
  16 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x100460f8, `lw` at 0x1004614c, `lw` at 0x10046178.
  The `lw` at 0x100460fc loads 4 bytes from [a2+4] +0x0.
  6 such `lw` accesses load 4 bytes from [a2+4] +0x30, including `lw` at 0x10046150, `lw` at 0x100467c0, `lw` at 0x100468d4.
  38 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x108, including `lw` at 0x10046164, `lw` at 0x100461f8, `lw` at 0x1004625c.
  2 such `lw` accesses load 4 bytes from [a2+4] +0x20, including `lw` at 0x1004617c, `lw` at 0x100464d0.
  The `lwc1` at 0x10046198 loads 4 bytes from a0 (arg0 at entry) +0x100.
  2 such `lw` accesses load 4 bytes from [a2+4] +0x24, including `lw` at 0x100461b8, `lw` at 0x100464e0.
  The `lwc1` at 0x100461d4 loads 4 bytes from a0 (arg0 at entry) +0x104.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10c, including `lw` at 0x10046214, `lw` at 0x10046280.
  22 such `sw` accesses store 4 bytes to unknown (base unknown), including `sw` at 0x10046238, `sw` at 0x10046250, `sw` at 0x100462dc.
  The `lw` at 0x10046454 loads 4 bytes from [a2+4] +0x34.
  13 such `lw` accesses load 4 bytes from unknown (base unknown), including `lw` at 0x100464f0, `lw` at 0x10046500, `lw` at 0x10046510.
  2 such `lw` accesses load 4 bytes from [a2+4] +0x1c, including `lw` at 0x10046554, `lw` at 0x100465a8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x10046c24, `lw` at 0x10046c44, `lw` at 0x10046c60.
  The `lw` at 0x10046c28 loads 4 bytes from [a0+8] +0x9c.
  The `lw` at 0x10046c38 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x10046c48 loads 4 bytes from [a0+8] +0xa4.
  The `lw` at 0x10046c64 loads 4 bytes from [a0+8] +0x120.
  The `lw` at 0x10046c80 loads 4 bytes from [a0+8] +0x128.
  The `jal` at 0x1004626c calls clamp_channel__5FrameGiN21 with a0=a0 at entry (arg0), a1=[a0+264], a2=0x0, a3=0x3.
  The `jal` at 0x1004643c calls clamp_channel__5FrameGiN21 with a0=a0 at entry (arg0), a1=[a0+264], a2=0x1, a3=unknown.
  The `jalr` at 0x10046470 calls XmProcessTraversal with a0=a1 at entry (arg1), a1=0x0, a2=[[a2+4]+52], a3=0x1, a4=[[a2+4]], a5=0x4.
  The `jal` at 0x10046488 calls do_select__5FrameGP7_XEvent with a0=a0 at entry (arg0), a1=[a2+4], a2=unknown, a3=unknown.
  The `jalr` at 0x10046530 calls XtDisplay with a0=a1 at entry (arg1), a1=unknown, a2=[a0+264], a3=unknown.
  The `jalr` at 0x10046544 calls XtGetMultiClickTime with a0=ret(XtDisplay), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10046598 calls showChannelAttributes__5FrameGv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x100465cc calls update__5FrameGv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x6afb0, a4=[[a2+4]], a5=0x4, a6=[[a2+4]], a7=0x5.
  The `jalr` at 0x1004660c calls XLookupString with a0=[a2+4], a1=0x0, a2=0x0, a3=sp-72, a4=0x0, a5=0x4, a6=[[a2+4]], a7=0x5.
  The `jal` at 0x1004683c calls clamp_channel__5FrameGiN21 with a0=a0 at entry (arg0), a1=[a0+264], a2=0x0, a3=0x1, a5=[a0+264], a6=0xab0, a7=one of 0x1, 0xab0.
  The `jal` at 0x100468bc calls clamp_channel__5FrameGiN21 with a0=a0 at entry (arg0), a1=[a0+264], a2=0x1, a3=0x0, a5=[a0+264], a6=0xab0, a7=one of 0x1, 0xab0.
  The `jal` at 0x10046950 calls clamp_channel__5FrameGiN21 with a0=a0 at entry (arg0), a1=[a0+264], a2=0x0, a3=0x1, a5=[a0+264], a6=0xab0, a7=one of 0x1, 0xab0.
  The `jal` at 0x100469d0 calls clamp_channel__5FrameGiN21 with a0=a0 at entry (arg0), a1=[a0+264], a2=0x1, a3=0x0, a5=[a0+264], a6=0xab0, a7=one of 0x1, 0xab0.
  The `jal` at 0x10046a64 calls clamp_channel__5FrameGiN21 with a0=a0 at entry (arg0), a1=[a0+264], a2=0x0, a3=0x2, a5=[a0+264], a6=0xab0, a7=one of 0x1, 0xab0.
  The `jal` at 0x10046ae4 calls clamp_channel__5FrameGiN21 with a0=a0 at entry (arg0), a1=[a0+264], a2=0x1, a3=0x0, a5=[a0+264], a6=0xab0, a7=one of 0x1, 0xab0.
  The `jal` at 0x10046b78 calls clamp_channel__5FrameGiN21 with a0=a0 at entry (arg0), a1=[a0+264], a2=0x0, a3=0x2, a5=[a0+264], a6=0xab0, a7=one of 0x1, 0xab0.
  The `jal` at 0x10046bf8 calls clamp_channel__5FrameGiN21 with a0=a0 at entry (arg0), a1=[a0+264], a2=0x1, a3=0x0, a5=[a0+264], a6=0xab0, a7=one of 0x1, 0xab0.
  The `jalr` at 0x10046c4c calls (unknown callee) with a0=([[a0+8]+156] + a0), a1=[a0+48], a2=0x0, a3=unknown, a7=one of 0x1, 0xab0.
  The `jalr` at 0x10046c84 calls (unknown callee) with a0=([[a0+8]+288] + a0), a1=0x0, a2=0x0, a3=unknown.
  The `jal` at 0x10046ca4 calls update_fast__5FrameGv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x10046108 targets 0x10046148, is taken when at(=[[a2+4]]) == v0(=0x6), and falls through when at(=[[a2+4]]) != v0(=0x6).
  The `beq` branch at 0x10046118 targets 0x1004644c, is taken when a4(=[[a2+4]]) == a5(=0x4), and falls through when a4(=[[a2+4]]) != a5(=0x4).
  The `beq` branch at 0x10046128 targets 0x100465c4, is taken when a6(=[[a2+4]]) == a7(=0x5), and falls through when a6(=[[a2+4]]) != a7(=0x5).
  The `beq` branch at 0x10046138 targets 0x100465dc, is taken when t0(=[[a2+4]]) == t1(=0x2), and falls through when t0(=[[a2+4]]) != t1(=0x2).
  The `beq` branch at 0x10046140 targets 0x10046c9c and is always taken.
  The `beq` branch at 0x10046158 targets 0x10046444, is taken when (t2(=[[a2+4]+48]) & 0x100) == 0, and falls through when (t2(=[[a2+4]+48]) & 0x100) != 0.
  The `beq` branch at 0x1004616c targets 0x10046444, is taken when t3(=[a0+264]) == t8(=-0x1), and falls through when t3(=[a0+264]) != t8(=-0x1).
  The `bne` branch at 0x1004621c targets 0x1004627c, is taken when t8(=[a0+268]) != t9(=0x4), and falls through when t8(=[a0+268]) == t9(=0x4).
  The `beq` branch at 0x10046274 targets 0x10046424 and is always taken.
  The `beq` branch at 0x10046288 targets 0x100462c8, is taken when a6(=[a0+268]) == 0, and falls through when a6(=[a0+268]) != 0.
  The `beq` branch at 0x10046298 targets 0x10046338, is taken when a7(=[a0+268]) == t0(=0x1), and falls through when a7(=[a0+268]) != t0(=0x1).
  The `beq` branch at 0x100462a8 targets 0x10046390, is taken when t1(=[a0+268]) == t2(=0x2), and falls through when t1(=[a0+268]) != t2(=0x2).
  The `beq` branch at 0x100462b8 targets 0x100463e8, is taken when t3(=[a0+268]) == t8(=0x3), and falls through when t3(=[a0+268]) != t8(=0x3).
  The `beq` branch at 0x100462c0 targets 0x10046424 and is always taken.
  The `beq` branch at 0x10046330 targets 0x10046424 and is always taken.
  The `beq` branch at 0x10046388 targets 0x10046424 and is always taken.
  The `beq` branch at 0x100463e0 targets 0x10046424 and is always taken.
  The `beq` branch at 0x1004641c targets 0x10046424 and is always taken.
  The `beq` branch at 0x10046444 targets 0x10046c9c and is always taken.
  The `bne` branch at 0x1004645c targets 0x100465bc, is taken when a2(=[[a2+4]+52]) != a3(=0x1), and falls through when a2(=[[a2+4]+52]) == a3(=0x1).
  The `beq` branch at 0x1004649c targets 0x10046528, is taken when a2(=[a0+264]) == a3(=-0x1), and falls through when a2(=[a0+264]) != a3(=-0x1).
  The `beq` branch at 0x10046564 targets 0x100465a0, is taken when t2(unknown) >= v0(=ret(XtGetMultiClickTime)) (unsigned), and falls through when t2(unknown) < v0(=ret(XtGetMultiClickTime)) (unsigned).
  The `bne` branch at 0x10046578 targets 0x100465a0, is taken when t3(=[a0+264]) != t8(=[0x100aa108]), and falls through when t3(=[a0+264]) == t8(=[0x100aa108]).
  The `beq` branch at 0x10046588 targets 0x100465a0, is taken when t8(=[0x100aa108]) == t9(=-0x1), and falls through when t8(=[0x100aa108]) != t9(=-0x1).
  The `beq` branch at 0x100465bc targets 0x10046c9c and is always taken.
  The `beq` branch at 0x100465d4 targets 0x10046c9c and is always taken.
  The `beq` branch at 0x100465e8 targets 0x10046c9c, is taken when v0(=[a0+264]) == v1(=-0x1), and falls through when v0(=[a0+264]) != v1(=-0x1).
  The `beq` branch at 0x10046620 targets 0x10046650, is taken when a1(=[a0+264]) == a2(=0x9), and falls through when a1(=[a0+264]) != a2(=0x9).
  The `beq` branch at 0x10046634 targets 0x10046650, is taken when a2(=[a0+264]) == a3(=0xb), and falls through when a2(=[a0+264]) != a3(=0xb).
  The `bne` branch at 0x10046648 targets 0x1004669c, is taken when a3(=[a0+264]) != a4(=0x8), and falls through when a3(=[a0+264]) == a4(=0x8).
  The `beq` branch at 0x1004667c targets 0x1004669c, is taken when a4(unknown) == a5(=[a0+264]), and falls through when a4(unknown) != a5(=[a0+264]).
  The `beq` branch at 0x10046694 targets 0x100466ac and is always taken.
  The `bne` branch at 0x100466b8 targets 0x100466d8, is taken when t1(unknown) < 0x6c (unsigned), and falls through when t1(unknown) >= 0x6c (unsigned).
  The `beq` branch at 0x100466c8 targets 0x10046758, is taken when t2(unknown) >= 0x6d (unsigned), and falls through when t2(unknown) < 0x6d (unsigned).
  The `beq` branch at 0x100466d0 targets 0x100468cc and is always taken.
  The `bne` branch at 0x100466e0 targets 0x10046700, is taken when t3(unknown) < 0x6a (unsigned), and falls through when t3(unknown) >= 0x6a (unsigned).
  The `beq` branch at 0x100466f0 targets 0x10046740, is taken when t8(unknown) >= 0x6b (unsigned), and falls through when t8(unknown) < 0x6b (unsigned).
  The `beq` branch at 0x100466f8 targets 0x10046af4 and is always taken.
  The `bne` branch at 0x10046708 targets 0x10046728, is taken when t9(unknown) < 0x68 (unsigned), and falls through when t9(unknown) >= 0x68 (unsigned).
  The `beq` branch at 0x10046718 targets 0x10046c94, is taken when ra(unknown) >= 0x69 (unsigned), and falls through when ra(unknown) < 0x69 (unsigned).
  The `beq` branch at 0x10046720 targets 0x100467b8 and is always taken.
  The `bne` branch at 0x10046730 targets 0x10046c94, is taken when at(unknown) != v0(=0x64), and falls through when at(unknown) == v0(=0x64).
  The `beq` branch at 0x10046738 targets 0x10046c08 and is always taken.
  The `bne` branch at 0x10046748 targets 0x10046c94, is taken when v1(unknown) != a0(=0x6b), and falls through when v1(unknown) == a0(=0x6b).
  The `beq` branch at 0x10046750 targets 0x100469e0 and is always taken.
  The `bne` branch at 0x10046764 targets 0x10046788, is taken when a1(unknown) < a2(=0xff9f) (unsigned), and falls through when a1(unknown) >= a2(=0xff9f) (unsigned).
  The `bne` branch at 0x10046778 targets 0x100467a0, is taken when a3(=0xff9f) < a4(unknown) (unsigned), and falls through when a3(=0xff9f) >= a4(unknown) (unsigned).
  The `beq` branch at 0x10046780 targets 0x10046c5c and is always taken.
  The `bne` branch at 0x10046790 targets 0x10046c94, is taken when a5(unknown) != a6(=0xff08), and falls through when a5(unknown) == a6(=0xff08).
  The `beq` branch at 0x10046798 targets 0x10046c5c and is always taken.
  The `bne` branch at 0x100467a8 targets 0x10046c94, is taken when a7(unknown) != t0(=0xffff), and falls through when a7(unknown) == t0(=0xffff).
  The `beq` branch at 0x100467b0 targets 0x10046c5c and is always taken.
  The `bne` branch at 0x100467c4 targets 0x1004684c, is taken when t1(=[[a2+4]+48]) != 0, and falls through when t1(=[[a2+4]+48]) == 0.
  The `beq` branch at 0x10046844 targets 0x100468c4 and is always taken.
  The `beq` branch at 0x100468c4 targets 0x10046c94 and is always taken.
  The `bne` branch at 0x100468d8 targets 0x10046960, is taken when a3(=[[a2+4]+48]) != 0, and falls through when a3(=[[a2+4]+48]) == 0.
  The `beq` branch at 0x10046958 targets 0x100469d8 and is always taken.
  The `beq` branch at 0x100469d8 targets 0x10046c94 and is always taken.
  The `bne` branch at 0x100469ec targets 0x10046a74, is taken when a3(=[[a2+4]+48]) != 0, and falls through when a3(=[[a2+4]+48]) == 0.
  The `beq` branch at 0x10046a6c targets 0x10046aec and is always taken.
  The `beq` branch at 0x10046aec targets 0x10046c94 and is always taken.
  The `bne` branch at 0x10046b00 targets 0x10046b88, is taken when a3(=[[a2+4]+48]) != 0, and falls through when a3(=[[a2+4]+48]) == 0.
  The `beq` branch at 0x10046b80 targets 0x10046c00 and is always taken.
  The `beq` branch at 0x10046c00 targets 0x10046c94 and is always taken.
  The `beq` branch at 0x10046c18 targets 0x10046c54, is taken when (a3(=[[a2+4]+48]) & 0x4) == 0, and falls through when (a3(=[[a2+4]+48]) & 0x4) != 0.
  The `beq` branch at 0x10046c54 targets 0x10046c94 and is always taken.
  The `beq` branch at 0x10046c8c targets 0x10046c94 and is always taken.
  The `beq` branch at 0x10046c94 targets 0x10046c9c and is always taken.
  The `beq` branch at 0x10046cac targets 0x10046cb4 and is always taken.
  The return at 0x10046cc0 has v0 = ret(update_fast__5FrameGv).
- `resize__5FrameGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10046cd0 (n32).
  It occupies 284 bytes.
  The `lw` at 0x10046d04 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `lhu` at 0x10046d18 loads 2 bytes from a2 (arg2 at entry) +0x8.
  The `sw` at 0x10046d20 stores 4 bytes to a0 (arg0 at entry) +0xf8 (value [a2+8]:2).
  The `lhu` at 0x10046d28 loads 2 bytes from a2 (arg2 at entry) +0xa.
  The `sw` at 0x10046d30 stores 4 bytes to a0 (arg0 at entry) +0xfc (value [a2+10]:2).
  The `lw` at 0x10046d38 loads 4 bytes from sym(combination) +0x24c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xf8, including `lw` at 0x10046d4c, `lw` at 0x10046da8.
  The `swc1` at 0x10046d64 stores 4 bytes to a0 (arg0 at entry) +0x100.
  The `lw` at 0x10046d6c loads 4 bytes from sym(combination) +0x250.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xfc, including `lw` at 0x10046d80, `lw` at 0x10046db0.
  The `swc1` at 0x10046d98 stores 4 bytes to a0 (arg0 at entry) +0x104.
  The `jal` at 0x10046d0c calls GLwDrawingAreaMakeCurrent with a0=a1 at entry (arg1), a1=[a0+224], a2=a2 at entry (arg2), a3=0x6a3a0.
  The `jalr` at 0x10046db8 calls glViewport with a0=0x0, a1=0x0, a2=[a0+248], a3=[a0+252], a4=[a0+252], a5=[sym(combination)+592], a6=a0 at entry (arg0), a7=[a0+248].
  The `jalr` at 0x10046dc8 calls glDisable with a0=0xbd0, a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x10046dd0 targets 0x10046dd8 and is always taken.
  The return at 0x10046de4 has v0 = ret(glDisable).
- `doChannelButton__5FrameGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x10046df0 (n32).
  It occupies 932 bytes.
  2 such `lw` accesses load 4 bytes from unknown (base unknown), including `lw` at 0x10046e40, `lw` at 0x10046e88.
  The `lw` at 0x10046ea8 loads 4 bytes from sym(combination) +0xfcc.
  The `lw` at 0x10046eb8 loads 4 bytes from sym(combination) +0xfa8.
  8 such `lw` accesses load 4 bytes from ret(getTheErrorDialog__Gv) +0x8, including `lw` at 0x10046ed4, `lw` at 0x10046f00, `lw` at 0x10046f58.
  4 such `lw` accesses load 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108, including `lw` at 0x10046ed8, `lw` at 0x10046f5c, `lw` at 0x10046ff0.
  4 such `lw` accesses load 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110, including `lw` at 0x10046f04, `lw` at 0x10046f88, `lw` at 0x1004701c.
  The `lw` at 0x10046f2c loads 4 bytes from sym(combination) +0x5a9c.
  The `lw` at 0x10046f3c loads 4 bytes from sym(combination) +0x5a78.
  The `lw` at 0x10046fb8 loads 4 bytes from sym(combination) +0x9abc.
  The `lw` at 0x10046fd0 loads 4 bytes from sym(combination) +0x9a98.
  The `lw` at 0x1004704c loads 4 bytes from sym(combination) +0x900c.
  The `lw` at 0x10047064 loads 4 bytes from sym(combination) +0x8fe8.
  The `sw` at 0x100470e8 stores 4 bytes to a0 (arg0 at entry) +0x108.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x10047114, `lw` at 0x10047154.
  2 such `lw` accesses load 4 bytes from [a2+4] +0x1c, including `lw` at 0x10047118, `lw` at 0x10047158.
  The `jalr` at 0x10046ec8 calls getTheErrorDialog__Gv with a0=unknown, a1=a1 at entry (arg1), a2=unknown, a3=unknown, a6=0x8, a7=[sym(combination)+4044].
  The `jalr` at 0x10046f08 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=0x10097b30, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10046f4c calls getTheErrorDialog__Gv with a0=unknown, a1=unknown, a2=0x1, a3=[sym(combination)+23196], a4=[sym(combination)+23160], a6=0x8.
  The `jalr` at 0x10046f8c calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=0x10097b68, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10046fe0 calls getTheErrorDialog__Gv with a0=unknown, a1=unknown, a2=0xd, a3=[sym(combination)+39612], a4=0x9abc, a5=[sym(combination)+39576], a6=0x9a98.
  The `jalr` at 0x10047020 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=0x10097ba0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10047074 calls getTheErrorDialog__Gv with a0=unknown, a1=unknown, a2=0xe, a3=[sym(combination)+36876], a4=0x900c, a5=[sym(combination)+36840], a6=0x8fe8.
  The `jalr` at 0x100470b4 calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=0x10097bc8, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x100470d0 calls createNewChannel__5FrameGi with a0=a0 at entry (arg0), a1=unknown, a2=0xe, a3=unknown, a6=one of 0x8, 0x8fe8, 0x9a98.
  The `jalr` at 0x100470f4 calls XtDisplay with a0=a1 at entry (arg1), a1=unknown, a2=a0 at entry (arg0), a3=unknown, a7=0xab0.
  The `jalr` at 0x10047108 calls XtGetMultiClickTime with a0=ret(XtDisplay), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10047148 calls showChannelAttributes__5FrameGv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown, a5=[0x100aa10c].
  The `jal` at 0x10047170 calls update__5FrameGv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x10046e28 targets 0x10046e6c; its condition is not analyzed.
  The `beq` branch at 0x10046e48 targets 0x10046e6c, is taken when a0(unknown) == a1, and falls through when a0(unknown) != a1.
  The `bne` branch at 0x10046e64 targets 0x10046e30, is taken when a2(unknown) < 0xf (signed), and falls through when a2(unknown) >= 0xf (signed).
  The `bne` branch at 0x10046e8c targets 0x100470e0, is taken when a4(unknown) != 0, and falls through when a4(unknown) == 0.
  The `bne` branch at 0x10046e9c targets 0x10046f18, is taken when a5(unknown) != a6(=0x8), and falls through when a5(unknown) == a6(=0x8).
  The `beq` branch at 0x10046eac targets 0x10046f18, is taken when a7(=[sym(combination)+4044]) == 0, and falls through when a7(=[sym(combination)+4044]) != 0.
  The `beq` branch at 0x10046ebc targets 0x10046f18, is taken when t0(=[sym(combination)+4008]) == 0, and falls through when t0(=[sym(combination)+4008]) != 0.
  The `beq` branch at 0x10046f10 targets 0x10047180 and is always taken.
  The `bne` branch at 0x10046f20 targets 0x10046f9c, is taken when a1(unknown) != a2(=0x1), and falls through when a1(unknown) == a2(=0x1).
  The `beq` branch at 0x10046f30 targets 0x10046f9c, is taken when a3(=[sym(combination)+23196]) == 0, and falls through when a3(=[sym(combination)+23196]) != 0.
  The `beq` branch at 0x10046f40 targets 0x10046f9c, is taken when a4(=[sym(combination)+23160]) == 0, and falls through when a4(=[sym(combination)+23160]) != 0.
  The `beq` branch at 0x10046f94 targets 0x10047180 and is always taken.
  The `bne` branch at 0x10046fa4 targets 0x10047030, is taken when a1(unknown) != a2(=0xd), and falls through when a1(unknown) == a2(=0xd).
  The `beq` branch at 0x10046fbc targets 0x10047030, is taken when a3(=[sym(combination)+39612]) == 0, and falls through when a3(=[sym(combination)+39612]) != 0.
  The `beq` branch at 0x10046fd4 targets 0x10047030, is taken when a5(=[sym(combination)+39576]) == 0, and falls through when a5(=[sym(combination)+39576]) != 0.
  The `beq` branch at 0x10047028 targets 0x10047180 and is always taken.
  The `bne` branch at 0x10047038 targets 0x100470c4, is taken when a1(unknown) != a2(=0xe), and falls through when a1(unknown) == a2(=0xe).
  The `beq` branch at 0x10047050 targets 0x100470c4, is taken when a3(=[sym(combination)+36876]) == 0, and falls through when a3(=[sym(combination)+36876]) != 0.
  The `beq` branch at 0x10047068 targets 0x100470c4, is taken when a5(=[sym(combination)+36840]) == 0, and falls through when a5(=[sym(combination)+36840]) != 0.
  The `beq` branch at 0x100470bc targets 0x10047180 and is always taken.
  The `beq` branch at 0x100470d8 targets 0x10047168 and is always taken.
  The `beq` branch at 0x10047128 targets 0x10047150, is taken when a3(unknown) >= v0(=ret(XtGetMultiClickTime)) (unsigned), and falls through when a3(unknown) < v0(=ret(XtGetMultiClickTime)) (unsigned).
  The `bne` branch at 0x10047138 targets 0x10047150, is taken when a4(unknown) != a5(=[0x100aa10c]), and falls through when a4(unknown) == a5(=[0x100aa10c]).
  The `beq` branch at 0x10047178 targets 0x10047180 and is always taken.
  The return at 0x1004718c has v0 = unknown.
- `draw_frame__5FrameGv` in `usr/gfx/ircombine` at 0x100471a0 (n32).
  It occupies 816 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c, including `lw` at 0x100471cc, `lw` at 0x10047468, `lw` at 0x10047480.
  3 such `lw` accesses load 4 bytes from unknown (base unknown), including `lw` at 0x1004724c, `lw` at 0x10047258, `lw` at 0x10047278.
  The `lwc1` at 0x100472bc loads 4 bytes from a0 (arg0 at entry) +0xe4.
  The `lwc1` at 0x100472c4 loads 4 bytes from a0 (arg0 at entry) +0xe8.
  The `lwc1` at 0x100472cc loads 4 bytes from a0 (arg0 at entry) +0xec.
  The `lw` at 0x10047314 loads 4 bytes from sym(combination) +0x24c.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x250, including `lw` at 0x10047330, `lw` at 0x100473a8.
  3 such `lw` accesses load 4 bytes from sym(combination) +0x108, including `lw` at 0x100473bc, `lw` at 0x100473e8, `lw` at 0x10047430.
  3 such `lw` accesses load 4 bytes from sym(combination) +0x104, including `lw` at 0x100473d8, `lw` at 0x10047404, `lw` at 0x10047420.
  The `jalr` at 0x100471d4 calls XtDisplay with a0=[a0+76], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100471f4 calls XLoadQueryFont with a0=ret(XtDisplay), a1=0x10097bf0, a2=unknown, a3=unknown.
  The `jalr` at 0x10047230 calls fprintf with a0=sym(__iob)+32, a1=0x10097c18, a2=0x10097bf0, a3=unknown.
  The `jalr` at 0x10047240 calls exit with a0=0x1, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047294 calls glXUseXFont with a0=unknown, a1=unknown, a2=unknown, a3=0x1000.
  The `jalr` at 0x100472a8 calls XFreeFont with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100472d8 calls glClearColor with a0=unknown, a1=unknown, a2=unknown, a3=unknown, a6=a0 at entry (arg0), a7=a0 at entry (arg0); fp f12=[a0+228], f13=[a0+232], f14=[a0+236], f15=0x3f800000.
  The `jalr` at 0x100472e8 calls glClear with a0=0x4000, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100472f8 calls glMatrixMode with a0=0x1701, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047304 calls glLoadIdentity with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047348 calls gluOrtho2D with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047358 calls glMatrixMode with a0=0x1700, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047364 calls glLoadIdentity with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047374 calls glListBase with a0=0x1000, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1004738c calls glColor3ub with a0=0xff, a1=0x0, a2=0x0, a3=unknown.
  The `jalr` at 0x1004739c calls glBegin with a0=0x1, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100473cc calls glVertex2i with a0=0x0, a1=unknown, a2=[sym(combination)+264], a3=[sym(combination)+592].
  The `jalr` at 0x100473f8 calls glVertex2i with a0=[sym(combination)+260]+1, a1=unknown, a2=[sym(combination)+264], a3=unknown.
  The `jalr` at 0x10047414 calls glVertex2i with a0=[sym(combination)+260]+1, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047440 calls glVertex2i with a0=[sym(combination)+260]+1, a1=unknown, a2=[sym(combination)+264], a3=unknown.
  The `jalr` at 0x1004744c calls glEnd with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1004745c calls draw_rects__5FrameGv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047470 calls XtDisplay with a0=[a0+76], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047488 calls XtWindow with a0=[a0+76], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100474a0 calls glXSwapBuffers with a0=unknown, a1=ret(XtWindow), a2=unknown, a3=unknown.
  The `jalr` at 0x100474ac calls glFinish with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `bne` branch at 0x100471c0 targets 0x100472b8, is taken when at(=[0x100ab090]) != 0, and falls through when at(=[0x100ab090]) == 0.
  The `bne` branch at 0x1004720c targets 0x10047248, is taken when a2(=ret(XLoadQueryFont)) != 0, and falls through when a2(=ret(XLoadQueryFont)) == 0.
  The `beq` branch at 0x100474b4 targets 0x100474bc and is always taken.
  The return at 0x100474c8 has v0 = ret(glFinish).
- `do_select__5FrameGP7_XEvent` in `usr/gfx/ircombine` at 0x100474d0 (n32).
  It occupies 692 bytes.
  The `lw` at 0x10047550 loads 4 bytes from a0 (arg0 at entry) +0xf8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xfc, including `lw` at 0x10047558, `lw` at 0x100475b0.
  The `lw` at 0x1004759c loads 4 bytes from a1 (arg1 at entry) +0x20.
  The `lw` at 0x100475b8 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lwc1` at 0x100475d0 loads 4 bytes from a0 (arg0 at entry) +0x100.
  The `lwc1` at 0x100475e4 loads 4 bytes from a0 (arg0 at entry) +0x104.
  The `lw` at 0x1004760c loads 4 bytes from sym(combination) +0x24c.
  The `lw` at 0x10047628 loads 4 bytes from sym(combination) +0x250.
  5 such `lw` accesses load 4 bytes from unknown (base unknown), including `lw` at 0x100476cc, `lw` at 0x1004770c, `lw` at 0x1004771c.
  The `sw` at 0x10047728 stores 4 bytes to a0 (arg0 at entry) +0x108.
  The `sw` at 0x10047750 stores 4 bytes to a0 (arg0 at entry) +0x10c.
  The `sw` at 0x10047764 stores 4 bytes to a0 (arg0 at entry) +0x108 (value -0x1).
  The `jalr` at 0x10047504 calls glSelectBuffer with a0=0x3e8, a1=sp-4072, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10047514 calls glRenderMode with a0=0x1c02, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047520 calls glInitNames with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047530 calls glPushName with a0=-0x1, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1004753c calls glPushMatrix with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047560 calls glViewport with a0=0x0, a1=0x0, a2=[a0+248], a3=[a0+252].
  The `jalr` at 0x10047574 calls glGetIntegerv with a0=0xba2, a1=sp-72, a2=unknown, a3=unknown.
  The `jalr` at 0x10047584 calls glMatrixMode with a0=0x1701, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047590 calls glLoadIdentity with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100475fc calls gluPickMatrix with a0=unknown, a1=unknown, a2=unknown, a3=a0 at entry (arg0), a4=sp-72, a6=[a1+36]; fp f16=0x40a00000.
  The `jalr` at 0x10047640 calls gluOrtho2D with a0=unknown, a1=unknown, a2=unknown, a3=unknown, a7=[sym(combination)+592]+1.
  The `jalr` at 0x10047650 calls glMatrixMode with a0=0x1700, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1004765c calls glLoadIdentity with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x1004766c calls draw_rects__5FrameGv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047678 calls glPopMatrix with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047688 calls glRenderMode with a0=0x1c00, a1=unknown, a2=unknown, a3=unknown.
  The `blez` branch at 0x10047698 targets 0x1004775c, is taken when t1(=ret(glRenderMode)) <= 0 (signed), and falls through when t1(=ret(glRenderMode)) > 0 (signed).
  The `beq` branch at 0x100476bc targets 0x10047704, is taken when t2(=0x0) >= t3(=ret(glRenderMode)-1) (signed), and falls through when t2(=0x0) < t3(=ret(glRenderMode)-1) (signed).
  The `bne` branch at 0x100476fc targets 0x100476c4, is taken when t9(unknown) < ra(=ret(glRenderMode)-1) (signed), and falls through when t9(unknown) >= ra(=ret(glRenderMode)-1) (signed).
  The `beq` branch at 0x10047754 targets 0x10047768 and is always taken.
  The `beq` branch at 0x10047768 targets 0x10047770 and is always taken.
  The return at 0x1004777c has v0 = unknown.
- `draw_rects__5FrameGv` in `usr/gfx/ircombine` at 0x10047790 (n32).
  It occupies 204 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x108, including `lw` at 0x100477c4, `lw` at 0x10047808, `lw` at 0x10047820.
  The `jal` at 0x100477e0 calls draw_channel__5FrameGi with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x10047828 calls draw_channel__5FrameGi with a0=a0 at entry (arg0), a1=[a0+264], a2=[a0+264], a3=-0x1.
  The `jalr` at 0x10047838 calls glDisable with a0=0xb24, a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x100477b8 targets 0x10047804; its condition is not analyzed.
  The `beq` branch at 0x100477cc targets 0x100477e8, is taken when v1(=[a0+264]) == a0(unknown), and falls through when v1(=[a0+264]) != a0(unknown).
  The `bne` branch at 0x100477fc targets 0x100477c0, is taken when a0(unknown) < 0xf (signed), and falls through when a0(unknown) >= 0xf (signed).
  The `beq` branch at 0x10047810 targets 0x10047830, is taken when a2(=[a0+264]) == a3(=-0x1), and falls through when a2(=[a0+264]) != a3(=-0x1).
  The `beq` branch at 0x10047840 targets 0x10047848 and is always taken.
  The return at 0x10047854 has v0 = ret(glDisable).
- `draw_channel__5FrameGi` in `usr/gfx/ircombine` at 0x10047860 (n32).
  It occupies 1996 bytes.
  The `lw` at 0x10047884 loads 4 bytes from sym(combination) +0x250.
  24 such `lw` accesses load 4 bytes from unknown (base unknown), including `lw` at 0x100478b0, `lw` at 0x1004792c, `lw` at 0x10047990.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x108, including `lw` at 0x100478c8, `lw` at 0x10047bf4.
  The `lbu` at 0x100478dc loads 1 bytes from a0 (arg0 at entry) +0xf3.
  The `lbu` at 0x100478e4 loads 1 bytes from a0 (arg0 at entry) +0xf4.
  The `lbu` at 0x100478ec loads 1 bytes from a0 (arg0 at entry) +0xf5.
  The `lbu` at 0x10047908 loads 1 bytes from a0 (arg0 at entry) +0xf0.
  The `lbu` at 0x10047910 loads 1 bytes from a0 (arg0 at entry) +0xf1.
  The `lbu` at 0x10047918 loads 1 bytes from a0 (arg0 at entry) +0xf2.
  2 such `lw` accesses load 4 bytes from (sym(konCHANNEL_NAME_strings) + (a1 << 0x2)) +0x0, including `lw` at 0x100479d4, `lw` at 0x10047a6c.
  9 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x100, including `lwc1` at 0x10047b64, `lwc1` at 0x10047c2c, `lwc1` at 0x10047c8c.
  9 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x104, including `lwc1` at 0x10047ba0, `lwc1` at 0x10047c60, `lwc1` at 0x10047cc0.
  The `jalr` at 0x100478f4 calls glColor3ub with a0=[a0+243]:1, a1=[a0+244]:1, a2=[a0+245]:1, a3=[a0+264], a4=a1 at entry (arg1).
  The `jalr` at 0x10047920 calls glColor3ub with a0=[a0+240]:1, a1=[a0+241]:1, a2=[a0+242]:1, a3=[a0+264], a4=a1 at entry (arg1).
  The `jalr` at 0x10047940 calls glDisable with a0=0xb24, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047958 calls glEnable with a0=0xb24, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1004796c calls glLineStipple with a0=0x1, a1=0xff, a2=unknown, a3=unknown.
  The `jalr` at 0x10047984 calls glPushName with a0=(a1 << 0x3)+4, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100479dc calls strcpy with a0=sp-128, a1=[(sym(konCHANNEL_NAME_strings) + (a1 << 0x2))], a2=(a1 << 0x2), a3=unknown.
  The `jalr` at 0x10047a8c calls sprintf with a0=sp-128, a1=0x10097c30, a2=[(sym(konCHANNEL_NAME_strings) + (a1 << 0x2))], a3=unknown, a7=0xab0.
  The `jalr` at 0x10047a9c calls glBegin with a0=0x2, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047ab8 calls glVertex2i with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047ae0 calls glVertex2i with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047b14 calls glVertex2i with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047b3c calls glVertex2i with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047b48 calls glEnd with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047bc0 calls glRasterPos2i with a0=unknown, a1=unknown, a2=unknown, a3=unknown, a4=a0 at entry (arg0), a7=a0 at entry (arg0).
  The `jalr` at 0x10047bd0 calls strlen with a0=sp-128, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047be8 calls glCallLists with a0=ret(strlen), a1=0x1400, a2=sp-128, a3=unknown.
  The `jalr` at 0x10047c10 calls glPushName with a0=(a1 << 0x3), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047cdc calls glRecti with a0=unknown, a1=unknown, a2=unknown, a3=unknown, a6=a0 at entry (arg0).
  The `jalr` at 0x10047cf4 calls glPushName with a0=(a1 << 0x3)+1, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047de0 calls glRecti with a0=unknown, a1=unknown, a2=unknown, a3=unknown, a7=a0 at entry (arg0).
  The `jalr` at 0x10047df8 calls glPushName with a0=(a1 << 0x3)+2, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10047ee4 calls glRecti with a0=unknown, a1=unknown, a2=unknown, a3=unknown, a6=a0 at entry (arg0); fp f12=0x40800000, f13=0x40800000, f14=0x40800000, f15=0x40800000.
  The `jalr` at 0x10047efc calls glPushName with a0=(a1 << 0x3)+3, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10048008 calls glRecti with a0=unknown, a1=unknown, a2=unknown, a3=unknown, a7=a0 at entry (arg0); fp f16=0x40800000, f17=0x40800000, f18=0x40800000, f19=0x40800000.
  The `bne` branch at 0x100478b4 targets 0x100478c4, is taken when at(unknown) != 0, and falls through when at(unknown) == 0.
  The `beq` branch at 0x100478bc targets 0x10048018 and is always taken.
  The `bne` branch at 0x100478d0 targets 0x10047904, is taken when a3(=[a0+264]) != a4(=a1), and falls through when a3(=[a0+264]) == a4(=a1).
  The `beq` branch at 0x100478fc targets 0x10047928 and is always taken.
  The `beq` branch at 0x10047930 targets 0x10047950, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `beq` branch at 0x10047948 targets 0x10047974 and is always taken.
  The `bne` branch at 0x10047998 targets 0x100479ec, is taken when a1(unknown) != a2(=a1), and falls through when a1(unknown) == a2(=a1).
  The `beq` branch at 0x100479e4 targets 0x10047a94 and is always taken.
  The `bne` branch at 0x10047bfc targets 0x10048010, is taken when t1(=[a0+264]) != t2(=a1), and falls through when t1(=[a0+264]) == t2(=a1).
  The `beq` branch at 0x10048010 targets 0x10048018 and is always taken.
  The return at 0x10048024 has v0 = unknown.
- `createNewChannel__5FrameGi` in `usr/gfx/ircombine` at 0x10048240 (n32).
  It occupies 1028 bytes.
  The `sw` at 0x100482a0 stores 4 bytes to sym(combination) +0x228 (value 0x1).
  The `sw` at 0x100482e0 stores 4 bytes to sym(combination) +0x23c (value 0x1).
  The `lw` at 0x10048358 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `lw` at 0x1004835c loads 4 bytes from [a0+152] +0x10.
  9 such `lw` accesses load 4 bytes from sym(sffb) +0x0, including `lw` at 0x10048420, `lw` at 0x1004843c, `lw` at 0x10048454.
  2 such `lw` accesses load 4 bytes from [sym(sffb)] +0x8, including `lw` at 0x100484f0, `lw` at 0x10048528.
  The `lw` at 0x100484f4 loads 4 bytes from [[sym(sffb)]+8] +0x108.
  The `lw` at 0x1004852c loads 4 bytes from [[sym(sffb)]+8] +0x110.
  The `sw` at 0x1004859c stores 4 bytes to sym(combination) +0x228 (value 0x0).
  2 such `lw` accesses load 4 bytes from ret(getTheErrorDialog__Gv) +0x8, including `lw` at 0x100485b8, `lw` at 0x100485e4.
  The `lw` at 0x100485bc loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108.
  The `lw` at 0x100485e8 loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110.
  The `lw` at 0x10048608 loads 4 bytes from a0 (arg0 at entry) +0xaea0.
  The `jal` at 0x10048284 calls loadFormat__5FrameGiPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x10097c60, a3=a3 at entry (arg3).
  The `jal` at 0x100482d0 calls loadFormat__5FrameGiPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x10097c70, a3=a3 at entry (arg3), a5=a1 at entry (arg1), a6=0xe.
  The `jal` at 0x10048310 calls loadFormat__5FrameGiPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x10097c90, a3=a3 at entry (arg3), a5=a1 at entry (arg1), a6=0x9.
  The `jal` at 0x10048344 calls loadFormat__5FrameGiPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x10097ca0, a3=a1 at entry (arg1), a4=0xb, a5=a1 at entry (arg1), a6=0x9.
  The `jalr` at 0x100483b8 calls sprintf with a0=sp-1184, a1=0x10097cb8, a2=a1 at entry (arg1), a3=unknown, a4=[[a0+152]+16], a5=a1 at entry (arg1), a6=one of 0x9, 0xa.
  The `jalr` at 0x100483cc calls getenv with a0=0x10097960, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10048414 calls sprintf with a0=sp-1096, a1=0x10097ce0, a2=unknown, a3=unknown.
  The `jalr` at 0x10048430 calls setTitle__15VkDialogManagerGPCc with a0=[sym(sffb)], a1=0x10097d00, a2=unknown, a3=unknown.
  The `jalr` at 0x10048448 calls setFilterPattern__21VkFileSelectionDialogGPCc with a0=[sym(sffb)], a1=0x100aa610, a2=unknown, a3=unknown.
  The `jalr` at 0x10048460 calls setDirectory__21VkFileSelectionDialogGPCc with a0=[sym(sffb)], a1=sp-1096, a2=unknown, a3=unknown.
  The `jalr` at 0x10048474 calls baseWidget__11VkComponentCGv with a0=[sym(sffb)], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x10048494 calls baseWidget__11VkComponentCGv with a0=[sym(sffb)], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x100484ac calls XmFileSelectionBoxGetChild with a0=ret(baseWidget__11VkComponentCGv), a1=0x8, a2=unknown, a3=unknown.
  The `jalr` at 0x100484e0 calls XtVaSetValues with a0=ret(XmFileSelectionBoxGetChild), a1=sym(_XmStrings)+9512, a2=0x0, a3=sym(_XmStrings)+9494, a4=0x0, a5=0x0.
  The `jalr` at 0x10048530 calls (unknown callee) with a0=([[[sym(sffb)]+8]+264] + [sym(sffb)]), a1=sp-1184, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x10048558 calls (unknown callee) with a0=[sym(sffb)], a1=0x1, a2=unknown, a3=unknown.
  The `jal` at 0x10048574 calls loadFormat__5FrameGiPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=ret(0x10049b90), a3=unknown.
  The `jalr` at 0x100485ac calls getTheErrorDialog__Gv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=unknown, a4=[[a0+152]+16], a5=a1 at entry (arg1), a6=0xa.
  The `jalr` at 0x100485ec calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=0x10097d10, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x10048610 calls update__18GlobalsWindowClassGv with a0=[a0+44704], a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jal` at 0x10048620 calls update__5FrameGv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `bne` branch at 0x10048268 targets 0x100482ac, is taken when at(=a1) != v0(=0x8), and falls through when at(=a1) == v0(=0x8).
  The `beq` branch at 0x10048290 targets 0x100482a4, is taken when v0(=ret(loadFormat__5FrameGiPCc)) == 0, and falls through when v0(=ret(loadFormat__5FrameGiPCc)) != 0.
  The `beq` branch at 0x100482a4 targets 0x100485fc and is always taken.
  The `bne` branch at 0x100482b4 targets 0x100482ec, is taken when a5(=a1) != a6(=0xe), and falls through when a5(=a1) == a6(=0xe).
  The `beq` branch at 0x100482e4 targets 0x100485fc and is always taken.
  The `bne` branch at 0x100482f4 targets 0x10048320, is taken when a5(=a1) != a6(=0x9), and falls through when a5(=a1) == a6(=0x9).
  The `beq` branch at 0x10048318 targets 0x100485fc and is always taken.
  The `bne` branch at 0x10048328 targets 0x10048354, is taken when a3(=a1) != a4(=0xb), and falls through when a3(=a1) == a4(=0xb).
  The `beq` branch at 0x1004834c targets 0x100485fc and is always taken.
  The `bne` branch at 0x10048368 targets 0x100483a4, is taken when a3(=a1) < a4(=[[a0+152]+16]) (signed), and falls through when a3(=a1) >= a4(=[[a0+152]+16]) (signed).
  The `beq` branch at 0x10048378 targets 0x100483a4, is taken when a5(=a1) == a6(=0xa), and falls through when a5(=a1) != a6(=0xa).
  The `beq` branch at 0x1004839c targets 0x100485a8, is taken when a7(unknown) == 0, and falls through when a7(unknown) != 0.
  The `beq` branch at 0x100483e0 targets 0x100483f8, is taken when a1(=ret(getenv)) == 0, and falls through when a1(=ret(getenv)) != 0.
  The `beq` branch at 0x100483f0 targets 0x10048400 and is always taken.
  The `beq` branch at 0x10048480 targets 0x100484e8, is taken when v0(=ret(baseWidget__11VkComponentCGv)) == 0, and falls through when v0(=ret(baseWidget__11VkComponentCGv)) != 0.
  The `bne` branch at 0x10048540 targets 0x100485a0, is taken when v0(=ret(unknown)) != a1(=0x1), and falls through when v0(=ret(unknown)) == a1(=0x1).
  The `beq` branch at 0x10048580 targets 0x100485a0, is taken when v0(=ret(loadFormat__5FrameGiPCc)) == 0, and falls through when v0(=ret(loadFormat__5FrameGiPCc)) != 0.
  The `bne` branch at 0x10048590 targets 0x100485a0, is taken when a1 != a2(=0x1), and falls through when a1 == a2(=0x1).
  The `beq` branch at 0x100485a0 targets 0x100485fc and is always taken.
  The `beq` branch at 0x100485f4 targets 0x10048630 and is always taken.
  The `beq` branch at 0x10048628 targets 0x10048630 and is always taken.
  The return at 0x1004863c has v0 = unknown.
- `removeChannel__5FrameGi` in `usr/gfx/ircombine` at 0x10048650 (n32).
  It occupies 408 bytes.
  The `lw` at 0x100486ac loads 4 bytes from (a0 + (a1 << 0x2)) +0x5c.
  5 such `lw` accesses load 4 bytes from (a0 + (a1 << 0x2)) +0xae64, including `lw` at 0x1004870c, `lw` at 0x10048730, `lw` at 0x10048754.
  2 such `lw` accesses load 4 bytes from [(a0 + (a1 << 0x2))+44644] +0x8, including `lw` at 0x10048758, `lw` at 0x100487a0.
  The `lw` at 0x1004875c loads 4 bytes from [[(a0 + (a1 << 0x2))+44644]+8] +0xc.
  The `lw` at 0x100487a4 loads 4 bytes from [[(a0 + (a1 << 0x2))+44644]+8] +0x14.
  The `sw` at 0x100487c8 stores 4 bytes to (a0 + (a1 << 0x2)) +0xae64 (value 0x0).
  The `jal` at 0x10048694 calls vfcInitKonaCombinationChannel with a0=unknown, a1=a1 at entry (arg1), a2=a1 at entry (arg1), a3=0xab0.
  The `jal` at 0x100486b4 calls EZ__GP10_WidgetRec with a0=[(a0 + (a1 << 0x2))+92], a1=(a1 << 0x2), a2=unknown, a3=unknown.
  The `jalr` at 0x100486d4 calls VkGetResource__GPCcT1 with a0=0x10097878, a1=0x10097888, a2=unknown, a3=unknown.
  The `jal` at 0x100486ec calls __as__7EZColorGPc with a0=unknown, a1=ret(VkGetResource__GPCcT1), a2=unknown, a3=unknown.
  The `jalr` at 0x100487a8 calls (unknown callee) with a0=([[[(a0 + (a1 << 0x2))+44644]+8]+12] + [(a0 + (a1 << 0x2))+44644]), a1=0x3, a2=(a0 + (a1 << 0x2)), a3=(a1 << 0x2), a4=0xae64.
  The `beq` branch at 0x10048710 targets 0x100487cc, is taken when a1(=[(a0 + (a1 << 0x2))+44644]) == 0, and falls through when a1(=[(a0 + (a1 << 0x2))+44644]) != 0.
  The `beq` branch at 0x10048734 targets 0x100487b0, is taken when a3(=[(a0 + (a1 << 0x2))+44644]) == 0, and falls through when a3(=[(a0 + (a1 << 0x2))+44644]) != 0.
  The `beq` branch at 0x100487cc targets 0x100487d4 and is always taken.
  The return at 0x100487e0 has v0 = unknown.
- `showChannelAttributes__5FrameGv` in `usr/gfx/ircombine` at 0x100487f0 (n32).
  It occupies 3332 bytes.
  56 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x108, including `lw` at 0x10048810, `lw` at 0x10048854, `lw` at 0x100488f0.
  The `lw` at 0x10048840 loads 4 bytes from table(0x10097d30) +0x0.
  44 such `lw` accesses load 4 bytes from (a0 + ([a0+264] << 0x2)) +0xae64, including `lw` at 0x10048868, `lw` at 0x10048928, `lw` at 0x10048954.
  8 such `sw` accesses store 4 bytes to (a0 + ([a0+264] << 0x2)) +0xae64, including `sw` at 0x10048908, `sw` at 0x10048a78, `sw` at 0x10048bec.
  16 such `lw` accesses load 4 bytes from [(a0 + ([a0+264] << 0x2))+44644] +0x8, including `lw` at 0x10048958, `lw` at 0x100489a4, `lw` at 0x10048ac8.
  8 such `lw` accesses load 4 bytes from [[(a0 + ([a0+264] << 0x2))+44644]+8] +0x24, including `lw` at 0x1004895c, `lw` at 0x10048acc, `lw` at 0x10048c40.
  8 such `lw` accesses load 4 bytes from [[(a0 + ([a0+264] << 0x2))+44644]+8] +0x2c, including `lw` at 0x100489a8, `lw` at 0x10048b18, `lw` at 0x10048c8c.
  The `jalr` at 0x10048880 calls __nw__GUi with a0=0x44, a1=0xae64, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100488c0 calls __ct__18EncoderWindowClassGPCcP3ArgUi with a0=ret(__nw__GUi), a1=0x10097d50, a2=0x0, a3=0x0.
  The `jal` at 0x10048930 calls update__18EncoderWindowClassGv with a0=[(a0 + ([a0+264] << 0x2))+44644], a1=(a0 + ([a0+264] << 0x2)), a2=([a0+264] << 0x2), a3=unknown.
  The `jalr` at 0x100489ac calls (unknown callee) with a0=([[[(a0 + ([a0+264] << 0x2))+44644]+8]+36] + [(a0 + ([a0+264] << 0x2))+44644]), a1=[(a0 + ([a0+264] << 0x2))+44644], a2=(a0 + ([a0+264] << 0x2)), a3=([a0+264] << 0x2).
  The `jalr` at 0x100489f0 calls __nw__GUi with a0=0x44, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[(a0 + ([a0+264] << 0x2))+44644], a4=0xae64.
  The `jal` at 0x10048a30 calls __ct__17SiriusWindowClassGPCcP3ArgUi with a0=ret(__nw__GUi), a1=0x10097d68, a2=0x0, a3=0x0, a5=ret(__nw__GUi), a6=0x1.
  The `jal` at 0x10048aa0 calls update__17SiriusWindowClassGv with a0=[(a0 + ([a0+264] << 0x2))+44644], a1=(a0 + ([a0+264] << 0x2)), a2=([a0+264] << 0x2), a3=unknown.
  The `jalr` at 0x10048b1c calls (unknown callee) with a0=([[[(a0 + ([a0+264] << 0x2))+44644]+8]+36] + [(a0 + ([a0+264] << 0x2))+44644]), a1=[(a0 + ([a0+264] << 0x2))+44644], a2=(a0 + ([a0+264] << 0x2)), a3=([a0+264] << 0x2).
  The `jalr` at 0x10048b60 calls __nw__GUi with a0=0x44, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[(a0 + ([a0+264] << 0x2))+44644], a4=0xae64.
  The `jal` at 0x10048ba4 calls __ct__14DVPWindowClassGPCcP3ArgUii with a0=ret(__nw__GUi), a1=0x10097d80, a2=0x0, a3=0x0, a4=0xa, a5=ret(__nw__GUi), a6=0x1.
  The `jal` at 0x10048c14 calls update__14DVPWindowClassGv with a0=[(a0 + ([a0+264] << 0x2))+44644], a1=(a0 + ([a0+264] << 0x2)), a2=([a0+264] << 0x2), a3=unknown.
  The `jalr` at 0x10048c90 calls (unknown callee) with a0=([[[(a0 + ([a0+264] << 0x2))+44644]+8]+36] + [(a0 + ([a0+264] << 0x2))+44644]), a1=[(a0 + ([a0+264] << 0x2))+44644], a2=(a0 + ([a0+264] << 0x2)), a3=([a0+264] << 0x2).
  The `jalr` at 0x10048cd4 calls __nw__GUi with a0=0x44, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[(a0 + ([a0+264] << 0x2))+44644], a4=0xae64.
  The `jal` at 0x10048d14 calls __ct__14GVOWindowClassGPCcP3ArgUi with a0=ret(__nw__GUi), a1=0x10097d90, a2=0x0, a3=0x0, a5=ret(__nw__GUi), a6=0x1.
  The `jal` at 0x10048d84 calls update__14GVOWindowClassGv with a0=[(a0 + ([a0+264] << 0x2))+44644], a1=(a0 + ([a0+264] << 0x2)), a2=([a0+264] << 0x2), a3=unknown.
  The `jalr` at 0x10048e00 calls (unknown callee) with a0=([[[(a0 + ([a0+264] << 0x2))+44644]+8]+36] + [(a0 + ([a0+264] << 0x2))+44644]), a1=[(a0 + ([a0+264] << 0x2))+44644], a2=(a0 + ([a0+264] << 0x2)), a3=([a0+264] << 0x2).
  The `jalr` at 0x10048e44 calls __nw__GUi with a0=0x44, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[(a0 + ([a0+264] << 0x2))+44644], a4=0xae64.
  The `jal` at 0x10048e8c calls __ct__18ChannelWindowClassGPCcP3ArgUii with a0=ret(__nw__GUi), a1=0x10097da0, a2=0x0, a3=0x0, a4=[a0+264], a5=ret(__nw__GUi), a6=0x1.
  The `jalr` at 0x10048f04 calls setTitle__14VkSimpleWindowGPCc with a0=[(a0 + ([a0+264] << 0x2))+44644], a1=0x10097da0, a2=([a0+264] << 0x2), a3=unknown, a4=(a0 + ([a0+264] << 0x2))+44644, a5=0xae64.
  The `jal` at 0x10048f30 calls update__18ChannelWindowClassGv with a0=[(a0 + ([a0+264] << 0x2))+44644], a1=(a0 + ([a0+264] << 0x2)), a2=([a0+264] << 0x2), a3=unknown.
  The `jalr` at 0x10048fac calls (unknown callee) with a0=([[[(a0 + ([a0+264] << 0x2))+44644]+8]+36] + [(a0 + ([a0+264] << 0x2))+44644]), a1=[(a0 + ([a0+264] << 0x2))+44644], a2=(a0 + ([a0+264] << 0x2)), a3=([a0+264] << 0x2).
  The `jalr` at 0x10048ff0 calls __nw__GUi with a0=0x44, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[(a0 + ([a0+264] << 0x2))+44644], a4=0xae64.
  The `jal` at 0x10049034 calls __ct__14DVPWindowClassGPCcP3ArgUii with a0=ret(__nw__GUi), a1=0x10097db8, a2=0x0, a3=0x0, a4=0xd, a5=ret(__nw__GUi), a6=0x1.
  The `jalr` at 0x100490ac calls setTitle__14VkSimpleWindowGPCc with a0=[(a0 + ([a0+264] << 0x2))+44644], a1=0x10097db8, a2=([a0+264] << 0x2), a3=unknown, a4=(a0 + ([a0+264] << 0x2))+44644, a5=0xae64.
  The `jal` at 0x100490d8 calls update__14DVPWindowClassGv with a0=[(a0 + ([a0+264] << 0x2))+44644], a1=(a0 + ([a0+264] << 0x2)), a2=([a0+264] << 0x2), a3=unknown.
  The `jalr` at 0x10049154 calls (unknown callee) with a0=([[[(a0 + ([a0+264] << 0x2))+44644]+8]+36] + [(a0 + ([a0+264] << 0x2))+44644]), a1=[(a0 + ([a0+264] << 0x2))+44644], a2=(a0 + ([a0+264] << 0x2)), a3=([a0+264] << 0x2).
  The `jalr` at 0x10049198 calls __nw__GUi with a0=0x44, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[(a0 + ([a0+264] << 0x2))+44644], a4=0xae64.
  The `jal` at 0x100491d8 calls __ct__26HdgvoAttributesWindowClassGPCcP3ArgUi with a0=ret(__nw__GUi), a1=0x10097dc8, a2=0x0, a3=0x0, a5=ret(__nw__GUi), a6=0x1.
  The `jalr` at 0x10049250 calls setTitle__14VkSimpleWindowGPCc with a0=[(a0 + ([a0+264] << 0x2))+44644], a1=0x10097dc8, a2=([a0+264] << 0x2), a3=unknown, a4=(a0 + ([a0+264] << 0x2))+44644, a5=0xae64.
  The `jal` at 0x1004927c calls update__26HdgvoAttributesWindowClassGv with a0=[(a0 + ([a0+264] << 0x2))+44644], a1=(a0 + ([a0+264] << 0x2)), a2=([a0+264] << 0x2), a3=unknown.
  The `jalr` at 0x100492f8 calls (unknown callee) with a0=([[[(a0 + ([a0+264] << 0x2))+44644]+8]+36] + [(a0 + ([a0+264] << 0x2))+44644]), a1=[(a0 + ([a0+264] << 0x2))+44644], a2=(a0 + ([a0+264] << 0x2)), a3=([a0+264] << 0x2).
  The `jalr` at 0x10049348 calls sprintf with a0=sp-120, a1=0x10097de0, a2=[a0+264], a3=[(a0 + ([a0+264] << 0x2))+44644], a4=0xae64.
  The `jalr` at 0x1004935c calls __nw__GUi with a0=0x44, a1=unknown, a2=unknown, a3=unknown.
  The `jal` at 0x100493a0 calls __ct__18ChannelWindowClassGPCcP3ArgUii with a0=ret(__nw__GUi), a1=sp-120, a2=0x0, a3=0x0, a4=[a0+264].
  The `jalr` at 0x10049414 calls setTitle__14VkSimpleWindowGPCc with a0=[(a0 + ([a0+264] << 0x2))+44644], a1=sp-120, a2=([a0+264] << 0x2), a3=unknown, a4=(a0 + ([a0+264] << 0x2))+44644, a5=0xae64.
  The `jal` at 0x10049440 calls update__18ChannelWindowClassGv with a0=[(a0 + ([a0+264] << 0x2))+44644], a1=(a0 + ([a0+264] << 0x2)), a2=([a0+264] << 0x2), a3=unknown.
  The `jalr` at 0x100494bc calls (unknown callee) with a0=([[[(a0 + ([a0+264] << 0x2))+44644]+8]+36] + [(a0 + ([a0+264] << 0x2))+44644]), a1=[(a0 + ([a0+264] << 0x2))+44644], a2=(a0 + ([a0+264] << 0x2)), a3=([a0+264] << 0x2).
  The `beq` branch at 0x10048834 targets 0x10049308, is taken when at(=[a0+264]-8) >= 0x7 (unsigned), and falls through when at(=[a0+264]-8) < 0x7 (unsigned).
  The `bne` branch at 0x1004886c targets 0x1004890c, is taken when a0(=[(a0 + ([a0+264] << 0x2))+44644]) != 0, and falls through when a0(=[(a0 + ([a0+264] << 0x2))+44644]) == 0.
  The `beq` branch at 0x10048898 targets 0x100488e4, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100488dc targets 0x100488e8 and is always taken.
  The `beq` branch at 0x100489b4 targets 0x100494cc and is always taken.
  The `bne` branch at 0x100489dc targets 0x10048a7c, is taken when a3(=[(a0 + ([a0+264] << 0x2))+44644]) != 0, and falls through when a3(=[(a0 + ([a0+264] << 0x2))+44644]) == 0.
  The `beq` branch at 0x10048a08 targets 0x10048a54, is taken when a5(=ret(__nw__GUi)) == 0, and falls through when a5(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10048a4c targets 0x10048a58 and is always taken.
  The `beq` branch at 0x10048b24 targets 0x100494cc and is always taken.
  The `bne` branch at 0x10048b4c targets 0x10048bf0, is taken when a3(=[(a0 + ([a0+264] << 0x2))+44644]) != 0, and falls through when a3(=[(a0 + ([a0+264] << 0x2))+44644]) == 0.
  The `beq` branch at 0x10048b78 targets 0x10048bc8, is taken when a5(=ret(__nw__GUi)) == 0, and falls through when a5(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10048bc0 targets 0x10048bcc and is always taken.
  The `beq` branch at 0x10048c98 targets 0x100494cc and is always taken.
  The `bne` branch at 0x10048cc0 targets 0x10048d60, is taken when a3(=[(a0 + ([a0+264] << 0x2))+44644]) != 0, and falls through when a3(=[(a0 + ([a0+264] << 0x2))+44644]) == 0.
  The `beq` branch at 0x10048cec targets 0x10048d38, is taken when a5(=ret(__nw__GUi)) == 0, and falls through when a5(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10048d30 targets 0x10048d3c and is always taken.
  The `beq` branch at 0x10048e08 targets 0x100494cc and is always taken.
  The `bne` branch at 0x10048e30 targets 0x10048f0c, is taken when a3(=[(a0 + ([a0+264] << 0x2))+44644]) != 0, and falls through when a3(=[(a0 + ([a0+264] << 0x2))+44644]) == 0.
  The `beq` branch at 0x10048e5c targets 0x10048eb0, is taken when a5(=ret(__nw__GUi)) == 0, and falls through when a5(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10048ea8 targets 0x10048eb4 and is always taken.
  The `beq` branch at 0x10048fb4 targets 0x100494cc and is always taken.
  The `bne` branch at 0x10048fdc targets 0x100490b4, is taken when a3(=[(a0 + ([a0+264] << 0x2))+44644]) != 0, and falls through when a3(=[(a0 + ([a0+264] << 0x2))+44644]) == 0.
  The `beq` branch at 0x10049008 targets 0x10049058, is taken when a5(=ret(__nw__GUi)) == 0, and falls through when a5(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x10049050 targets 0x1004905c and is always taken.
  The `beq` branch at 0x1004915c targets 0x100494cc and is always taken.
  The `bne` branch at 0x10049184 targets 0x10049258, is taken when a3(=[(a0 + ([a0+264] << 0x2))+44644]) != 0, and falls through when a3(=[(a0 + ([a0+264] << 0x2))+44644]) == 0.
  The `beq` branch at 0x100491b0 targets 0x100491fc, is taken when a5(=ret(__nw__GUi)) == 0, and falls through when a5(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100491f4 targets 0x10049200 and is always taken.
  The `beq` branch at 0x10049300 targets 0x100494cc and is always taken.
  The `bne` branch at 0x10049328 targets 0x1004941c, is taken when a3(=[(a0 + ([a0+264] << 0x2))+44644]) != 0, and falls through when a3(=[(a0 + ([a0+264] << 0x2))+44644]) == 0.
  The `beq` branch at 0x10049374 targets 0x100493c4, is taken when a2(=ret(__nw__GUi)) == 0, and falls through when a2(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100493bc targets 0x100493c8 and is always taken.
  The `beq` branch at 0x100494c4 targets 0x100494cc and is always taken.
  The return at 0x100494d8 has v0 = ret(unknown).
  The instructions from 0x100494e0 to 0x100494f0 are not reached by any path from the entry, and their branches are not listed.
- `setTitle__5FrameGv` in `usr/gfx/ircombine` at 0x10049500 (n32).
  It occupies 188 bytes.
  The `lbu` at 0x10049528 loads 1 bytes from sym(work_order) +0xad90.
  The `lw` at 0x1004958c loads 4 bytes from a0 (arg0 at entry) +0xdc.
  The `jalr` at 0x10049544 calls basename with a0=sym(work_order)+44432, a1=0xad90, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10049560 calls sprintf with a0=sp-112, a1=0x10097df8, a2=ret(basename), a3=unknown.
  The `jalr` at 0x10049580 calls sprintf with a0=sp-112, a1=0x10097e18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10049598 calls setTitle__14VkSimpleWindowGPCc with a0=[a0+220], a1=sp-112, a2=unknown, a3=unknown.
  The `beq` branch at 0x1004952c targets 0x10049570, is taken when at(=[sym(work_order)+44432]:1) == 0, and falls through when at(=[sym(work_order)+44432]:1) != 0.
  The `beq` branch at 0x10049568 targets 0x10049588 and is always taken.
  The `beq` branch at 0x100495a0 targets 0x100495a8 and is always taken.
  The return at 0x100495b4 has v0 = ret(setTitle__14VkSimpleWindowGPCc).
- `deleteChannelCallback__5FrameSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100495c0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100495f0, `lw` at 0x1004960c.
  The `lw` at 0x100495f4 loads 4 bytes from [a1+8] +0x120.
  The `lw` at 0x10049610 loads 4 bytes from [a1+8] +0x128.
  The `jalr` at 0x10049614 calls (unknown callee) with a0=([[a1+8]+288] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x67ab0.
  The `beq` branch at 0x1004961c targets 0x10049624 and is always taken.
  The return at 0x10049630 has v0 = ret(unknown).
- `editChannelCallback__5FrameSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10049640 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10049670, `lw` at 0x1004968c.
  The `lw` at 0x10049674 loads 4 bytes from [a1+8] +0x12c.
  The `lw` at 0x10049690 loads 4 bytes from [a1+8] +0x134.
  The `jalr` at 0x10049694 calls (unknown callee) with a0=([[a1+8]+300] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x67a30.
  The `beq` branch at 0x1004969c targets 0x100496a4 and is always taken.
  The return at 0x100496b0 has v0 = ret(unknown).
- `newChannelCallback__5FrameSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x100496c0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x100496f0, `lw` at 0x1004970c.
  The `lw` at 0x100496f4 loads 4 bytes from [a1+8] +0x150.
  The `lw` at 0x10049710 loads 4 bytes from [a1+8] +0x158.
  The `jalr` at 0x10049714 calls (unknown callee) with a0=([[a1+8]+336] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x679b0.
  The `beq` branch at 0x1004971c targets 0x10049724 and is always taken.
  The return at 0x10049730 has v0 = ret(unknown).
- `snapChannelCallback__5FrameSGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x10049740 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x10049770, `lw` at 0x1004978c.
  The `lw` at 0x10049774 loads 4 bytes from [a1+8] +0x1a4.
  The `lw` at 0x10049790 loads 4 bytes from [a1+8] +0x1ac.
  The `jalr` at 0x10049794 calls (unknown callee) with a0=([[a1+8]+420] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x67930.
  The `beq` branch at 0x1004979c targets 0x100497a4 and is always taken.
  The return at 0x100497b0 has v0 = ret(unknown).
- `__ct__7FrameUIGPCcP10_WidgetRec` in `usr/gfx/ircombine` at 0x10049bf0 (n32).
  It occupies 132 bytes.
  The `sw` at 0x10049c30 stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__7FrameUI)).
  The `jalr` at 0x10049c20 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10049c40 calls create__7FrameUIGP10_WidgetRec with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=unknown, a3=unknown.
  The return at 0x10049c58 has v0 = a0.
  The instructions from 0x10049c60 to 0x10049c70 are not reached by any path from the entry, and their branches are not listed.
- `__ct__7FrameUIGPCc` in `usr/gfx/ircombine` at 0x10049c80 (n32).
  It occupies 108 bytes.
  The `sw` at 0x10049cbc stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__7FrameUI)).
  The `jalr` at 0x10049cac calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10049cd0 has v0 = a0.
  The instructions from 0x10049cd8 to 0x10049ce8 are not reached by any path from the entry, and their branches are not listed.
- `__dt__7FrameUIGv` in `usr/gfx/ircombine` at 0x10049cf0 (n32).
  It occupies 148 bytes.
  The `sw` at 0x10049d24 stores 4 bytes to a0 (arg0 at entry) +0x8 (value sym(__vtbl__7FrameUI)).
  The `jalr` at 0x10049d34 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10049d54 calls __dl__GPv with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x10049d14 targets 0x10049d5c, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x10049d44 targets 0x10049d5c, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10049d68 has v0 = unknown.
  The instructions from 0x10049d70 to 0x10049d80 are not reached by any path from the entry, and their branches are not listed.
- `create__7FrameUIGP10_WidgetRec` in `usr/gfx/ircombine` at 0x10049d90 (n32).
  It occupies 4988 bytes.
  The `lw` at 0x10049dd0 loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from sym(xmFrameWidgetClass) +0x0, including `lw` at 0x10049dd8, `lw` at 0x10049e7c.
  The `sw` at 0x10049e00 stores 4 bytes to a0 (arg0 at entry) +0x44 (value ret(XtVaCreateWidget)).
  The `sw` at 0x10049e08 stores 4 bytes to a0 (arg0 at entry) +0x10 (value ret(XtVaCreateWidget)).
  The `lw` at 0x10049e24 loads 4 bytes from sym(xmFormWidgetClass) +0x0.
  The `lw` at 0x10049e2c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `sw` at 0x10049e70 stores 4 bytes to a0 (arg0 at entry) +0x40 (value ret(XtVaCreateManagedWidget)).
  12 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x10049e84, `lw` at 0x1004a0ac, `lw` at 0x1004a1f8.
  The `sw` at 0x10049f74 stores 4 bytes to a0 (arg0 at entry) +0x48 (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x10049f84 loads 4 bytes from sym(glwMDrawingAreaWidgetClass) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x10049f8c, `lw` at 0x1004aa14.
  The `sw` at 0x1004a004 stores 4 bytes to a0 (arg0 at entry) +0x4c (value ret(XtVaCreateManagedWidget)).
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4c, including `lw` at 0x1004a00c, `lw` at 0x1004a030, `lw` at 0x1004a054.
  3 such `lw` accesses load 4 bytes from sym(xmPushButtonWidgetClass) +0x0, including `lw` at 0x1004a0a4, `lw` at 0x1004a1f0, `lw` at 0x1004afb0.
  The `sw` at 0x1004a1bc stores 4 bytes to a0 (arg0 at entry) +0x30 (value ret(XtVaCreateManagedWidget)).
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x1004a1c4, `lw` at 0x1004ae5c.
  The `sw` at 0x1004a310 stores 4 bytes to a0 (arg0 at entry) +0x34 (value ret(XtVaCreateManagedWidget)).
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x34, including `lw` at 0x1004a318, `lw` at 0x1004ae6c, `lw` at 0x1004ae7c.
  2 such `lw` accesses load 4 bytes from sym(xmScaleWidgetClass) +0x0, including `lw` at 0x1004a344, `lw` at 0x1004a4d0.
  The `sw` at 0x1004a4c0 stores 4 bytes to a0 (arg0 at entry) +0x54 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1004a648 stores 4 bytes to a0 (arg0 at entry) +0x20 (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x1004a658 loads 4 bytes from sym(sgSpringBoxWidgetClass) +0x0.
  The `sw` at 0x1004a75c stores 4 bytes to a0 (arg0 at entry) +0x28 (value ret(XtVaCreateManagedWidget)).
  6 such `lw` accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0, including `lw` at 0x1004a76c, `lw` at 0x1004a86c, `lw` at 0x1004a988.
  The `sw` at 0x1004a85c stores 4 bytes to a0 (arg0 at entry) +0x2c (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1004a978 stores 4 bytes to a0 (arg0 at entry) +0x3c (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1004aab4 stores 4 bytes to a0 (arg0 at entry) +0x38 (value ret(XtVaCreateManagedWidget)).
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x1004ab28, `lw` at 0x1004ac60, `lw` at 0x1004ac78.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x54, including `lw` at 0x1004ab40, `lw` at 0x1004ae94.
  The `sw` at 0x1004abec stores 4 bytes to a0 (arg0 at entry) +0x50 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1004ad34 stores 4 bytes to a0 (arg0 at entry) +0x24 (value ret(XtVaCreateManagedWidget)).
  The `sw` at 0x1004ae54 stores 4 bytes to a0 (arg0 at entry) +0x58 (value ret(XtVaCreateManagedWidget)).
  The `lw` at 0x1004aeb4 loads 4 bytes from a0 (arg0 at entry) +0x24.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x1004aedc, `lw` at 0x1004aeec, `lw` at 0x1004af3c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x1004af04, `lw` at 0x1004afb8.
  The `lw` at 0x1004af14 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x1004af2c loads 4 bytes from a0 (arg0 at entry) +0x3c.
  3 such `lw` accesses load 4 bytes from unknown (base unknown), including `lw` at 0x1004afa8, `lw` at 0x1004b058, `lw` at 0x1004b088.
  The `sw` at 0x1004b044 stores 4 bytes to unknown (base unknown) (value ret(XtVaCreateManagedWidget)).
  The `jalr` at 0x10049dc4 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultFrameUIResources__7FrameUI), a3=a3 at entry (arg3).
  The `jalr` at 0x10049de8 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFrameWidgetClass)], a2=a1 at entry (arg1), a3=0x0.
  The `jalr` at 0x10049e14 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=ret(XtVaCreateWidget), a2=a0 at entry (arg0), a3=a0 at entry (arg0).
  The `jalr` at 0x10049e60 calls XtVaCreateManagedWidget with a0=0x100aa688, a1=[sym(xmFormWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+9052, a4=0x1, a5=sym(XtStrings)+872, a6=0x351, a7=sym(XtStrings)+234.
  The `jalr` at 0x10049f64 calls XtVaCreateManagedWidget with a0=0x100aa690, a1=[sym(xmFrameWidgetClass)], a2=[a0+64], a3=sym(_XmStrings)+10165, a4=0x1, a5=sym(_XmStrings)+5017, a6=0x1, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x10049ff4 calls XtVaCreateManagedWidget with a0=0x10097ed8, a1=[sym(glwMDrawingAreaWidgetClass)], a2=[a0+72], a3=0x100aa698, a4=0x1, a5=0x10097ee8, a6=0x1, a7=0x100aa6a0.
  The `jalr` at 0x1004a024 calls XtAddCallback with a0=[a0+76], a1=0x10097f10, a2=sym(ginitCallback__7FrameUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1004a048 calls XtAddCallback with a0=[a0+76], a1=0x10097f20, a2=sym(inputCallback__7FrameUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1004a06c calls XtAddCallback with a0=[a0+76], a1=0x10097f30, a2=sym(resizeCallback__7FrameUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1004a090 calls XtAddCallback with a0=[a0+76], a1=0x10097f40, a2=sym(exposeCallback__7FrameUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1004a1ac calls XtVaCreateManagedWidget with a0=0x10097f50, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+64], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1004a1dc calls XtAddCallback with a0=[a0+48], a1=sym(_XmStrings)+4683, a2=sym(downloadCallback__7FrameUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1004a300 calls XtVaCreateManagedWidget with a0=0x10097f60, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+64], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x0, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1004a330 calls XtAddCallback with a0=[a0+52], a1=sym(_XmStrings)+4683, a2=sym(editGlobalsCallback__7FrameUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1004a4b0 calls XtVaCreateManagedWidget with a0=0x10097f78, a1=[sym(xmScaleWidgetClass)], a2=[a0+64], a3=0x10097f88, a4=0x1, a5=0x10097f98, a6=0x1, a7=0x100aa6a8.
  The `jalr` at 0x1004a638 calls XtVaCreateManagedWidget with a0=0x10097fa8, a1=[sym(xmScaleWidgetClass)], a2=[a0+64], a3=0x10097f88, a4=0x1, a5=0x10097f98, a6=0x1, a7=0x100aa6a8.
  The `jalr` at 0x1004a74c calls XtVaCreateManagedWidget with a0=0x10097fb8, a1=[sym(sgSpringBoxWidgetClass)], a2=[a0+64], a3=0x10097fc8, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1004a84c calls XtVaCreateManagedWidget with a0=0x10097fd8, a1=[sym(xmLabelWidgetClass)], a2=[a0+64], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1004a968 calls XtVaCreateManagedWidget with a0=0x10097fe8, a1=[sym(xmLabelWidgetClass)], a2=[a0+64], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1004aaa4 calls XtVaCreateManagedWidget with a0=0x10098000, a1=[sym(xmLabelWidgetClass)], a2=[a0+64], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+8964.
  The `jalr` at 0x1004abdc calls XtVaCreateManagedWidget with a0=0x10098010, a1=[sym(xmLabelWidgetClass)], a2=[a0+64], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1004ad24 calls XtVaCreateManagedWidget with a0=0x10098028, a1=[sym(xmLabelWidgetClass)], a2=[a0+64], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+10165, a6=0x4, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1004ae44 calls XtVaCreateManagedWidget with a0=0x10098040, a1=[sym(xmLabelWidgetClass)], a2=[a0+64], a3=sym(_XmStrings)+4724, a4=0x0, a5=sym(_XmStrings)+7513, a6=0x2, a7=sym(_XmStrings)+10165.
  The `jalr` at 0x1004ae88 calls XtVaSetValues with a0=[a0+48], a1=sym(_XmStrings)+10305, a2=[a0+52], a3=sym(_XmStrings)+9119, a4=[a0+52], a5=0x0.
  The `jalr` at 0x1004aec0 calls XtVaSetValues with a0=[a0+84], a1=sym(_XmStrings)+10305, a2=[a0+32], a3=sym(_XmStrings)+7562, a4=[a0+36], a5=0x0.
  The `jalr` at 0x1004aef8 calls XtVaSetValues with a0=[a0+32], a1=sym(_XmStrings)+10305, a2=[a0+56], a3=sym(_XmStrings)+7562, a4=[a0+56], a5=0x0.
  The `jalr` at 0x1004af20 calls XtVaSetValues with a0=[a0+40], a1=sym(_XmStrings)+7562, a2=[a0+44], a3=0x0.
  The `jalr` at 0x1004af58 calls XtVaSetValues with a0=[a0+60], a1=sym(_XmStrings)+10305, a2=[a0+56], a3=sym(_XmStrings)+7562, a4=[a0+56], a5=0x0.
  The `jalr` at 0x1004af7c calls XtVaSetValues with a0=[a0+76], a1=sym(_XmStrings)+10361, a2=0x1, a3=0x0.
  The `jalr` at 0x1004b024 calls XtVaCreateManagedWidget with a0=unknown, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+40], a3=0x10098050, a4=0x0, a5=0x10098060, a6=0x0, a7=0x10098070.
  The `jalr` at 0x1004b070 calls XtAddCallback with a0=unknown, a1=sym(_XmStrings)+4683, a2=sym(doChannelButtonCallback__7FrameUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jal` at 0x1004b090 calls EZ__GP10_WidgetRec with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x1004b0b0 calls VkGetResource__GPCcT1 with a0=0x100980b8, a1=0x100980d0, a2=unknown, a3=unknown.
  The `jal` at 0x1004b0cc calls __as__7EZColorGPc with a0=unknown, a1=ret(VkGetResource__GPCcT1), a2=unknown, a3=unknown.
  The `beq` branch at 0x1004af90 targets 0x1004b0f0; its condition is not analyzed.
  The `bne` branch at 0x1004b0e8 targets 0x1004af98, is taken when a1(unknown) < 0xf (signed), and falls through when a1(unknown) >= 0xf (signed).
  The `beq` branch at 0x1004b0f0 targets 0x1004b0f8 and is always taken.
  The return at 0x1004b104 has v0 = ret(__as__7EZColorGPc).
- `className__7FrameUIGv` in `usr/gfx/ircombine` at 0x1004b110 (n32).
  It occupies 60 bytes.
  The `beq` branch at 0x1004b130 targets 0x1004b138 and is always taken.
  The return at 0x1004b144 has v0 = 0x100aa6b0.
- `download__7FrameUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004b150 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1004b164 targets 0x1004b16c and is always taken.
  The return at 0x1004b174 has v0 = unknown.
- `editGlobals__7FrameUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004b180 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1004b194 targets 0x1004b19c and is always taken.
  The return at 0x1004b1a4 has v0 = unknown.
- `expose__7FrameUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004b1b0 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1004b1c4 targets 0x1004b1cc and is always taken.
  The return at 0x1004b1d4 has v0 = unknown.
- `ginit__7FrameUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004b1e0 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1004b1f4 targets 0x1004b1fc and is always taken.
  The return at 0x1004b204 has v0 = unknown.
- `input__7FrameUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004b210 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1004b224 targets 0x1004b22c and is always taken.
  The return at 0x1004b234 has v0 = unknown.
- `resize__7FrameUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004b240 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1004b254 targets 0x1004b25c and is always taken.
  The return at 0x1004b264 has v0 = unknown.
- `doChannelButton__7FrameUIGP10_WidgetRecPv` in `usr/gfx/ircombine` at 0x1004b270 (n32).
  It occupies 44 bytes.
  The `beq` branch at 0x1004b284 targets 0x1004b28c and is always taken.
  The return at 0x1004b294 has v0 = unknown.
- `downloadCallback__7FrameUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1004b2a0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1004b2d0, `lw` at 0x1004b2ec.
  The `lw` at 0x1004b2d4 loads 4 bytes from [a1+8] +0x9c.
  The `lw` at 0x1004b2f0 loads 4 bytes from [a1+8] +0xa4.
  The `jalr` at 0x1004b2f4 calls (unknown callee) with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x65dd0.
  The `beq` branch at 0x1004b2fc targets 0x1004b304 and is always taken.
  The return at 0x1004b310 has v0 = ret(unknown).
- `editGlobalsCallback__7FrameUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1004b320 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1004b350, `lw` at 0x1004b36c.
  The `lw` at 0x1004b354 loads 4 bytes from [a1+8] +0xa8.
  The `lw` at 0x1004b370 loads 4 bytes from [a1+8] +0xb0.
  The `jalr` at 0x1004b374 calls (unknown callee) with a0=([[a1+8]+168] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x65d50.
  The `beq` branch at 0x1004b37c targets 0x1004b384 and is always taken.
  The return at 0x1004b390 has v0 = ret(unknown).
- `exposeCallback__7FrameUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1004b3a0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1004b3d0, `lw` at 0x1004b3ec.
  The `lw` at 0x1004b3d4 loads 4 bytes from [a1+8] +0xb4.
  The `lw` at 0x1004b3f0 loads 4 bytes from [a1+8] +0xbc.
  The `jalr` at 0x1004b3f4 calls (unknown callee) with a0=([[a1+8]+180] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x65cd0.
  The `beq` branch at 0x1004b3fc targets 0x1004b404 and is always taken.
  The return at 0x1004b410 has v0 = ret(unknown).
- `ginitCallback__7FrameUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1004b420 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1004b450, `lw` at 0x1004b46c.
  The `lw` at 0x1004b454 loads 4 bytes from [a1+8] +0xc0.
  The `lw` at 0x1004b470 loads 4 bytes from [a1+8] +0xc8.
  The `jalr` at 0x1004b474 calls (unknown callee) with a0=([[a1+8]+192] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x65c50.
  The `beq` branch at 0x1004b47c targets 0x1004b484 and is always taken.
  The return at 0x1004b490 has v0 = ret(unknown).
- `inputCallback__7FrameUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1004b4a0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1004b4d0, `lw` at 0x1004b4ec.
  The `lw` at 0x1004b4d4 loads 4 bytes from [a1+8] +0xcc.
  The `lw` at 0x1004b4f0 loads 4 bytes from [a1+8] +0xd4.
  The `jalr` at 0x1004b4f4 calls (unknown callee) with a0=([[a1+8]+204] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x65bd0.
  The `beq` branch at 0x1004b4fc targets 0x1004b504 and is always taken.
  The return at 0x1004b510 has v0 = ret(unknown).
- `resizeCallback__7FrameUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1004b520 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1004b550, `lw` at 0x1004b56c.
  The `lw` at 0x1004b554 loads 4 bytes from [a1+8] +0xd8.
  The `lw` at 0x1004b570 loads 4 bytes from [a1+8] +0xe0.
  The `jalr` at 0x1004b574 calls (unknown callee) with a0=([[a1+8]+216] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x65b50.
  The `beq` branch at 0x1004b57c targets 0x1004b584 and is always taken.
  The return at 0x1004b590 has v0 = ret(unknown).
- `doChannelButtonCallback__7FrameUISGP10_WidgetRecPvT2` in `usr/gfx/ircombine` at 0x1004b5a0 (n32).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1004b5d0, `lw` at 0x1004b5ec.
  The `lw` at 0x1004b5d4 loads 4 bytes from [a1+8] +0xe4.
  The `lw` at 0x1004b5f0 loads 4 bytes from [a1+8] +0xec.
  The `jalr` at 0x1004b5f4 calls (unknown callee) with a0=([[a1+8]+228] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x65ad0.
  The `beq` branch at 0x1004b5fc targets 0x1004b604 and is always taken.
  The return at 0x1004b610 has v0 = ret(unknown).
- `CreateGvoForm` in `usr/gfx/ircombine` at 0x1004c220 (n32).
  It occupies 228 bytes.
  4 such `lw` accesses load 4 bytes from unknown (base unknown), including `lw` at 0x1004c2ac, `lw` at 0x1004c2b0, `lw` at 0x1004c2c0.
  The `jalr` at 0x1004c24c calls __nw__GUi with a0=0x158, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004c278 calls __ct__7GvoFormGPCcP10_WidgetRec with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=unknown.
  The `jalr` at 0x1004c2c8 calls (unknown callee) with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x1004c258 targets 0x1004c294, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1004c28c targets 0x1004c298 and is always taken.
  The return at 0x1004c2e8 has v0 = unknown.
  The instructions from 0x1004c2f0 to 0x1004c300 are not reached by any path from the entry, and their branches are not listed.
- `RegisterGvoFormInterface` in `usr/gfx/ircombine` at 0x1004c310 (n32).
  It occupies 60 bytes.
  The `lw` at 0x1004c324 loads 4 bytes from abs 0x100a90d8.
  The `beq` branch at 0x1004c330 targets 0x1004c338 and is always taken.
  The return at 0x1004c344 has v0 = 0x100a3978.
