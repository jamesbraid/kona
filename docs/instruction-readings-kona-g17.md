# Instruction readings from hostfacts

These entries record selected memory accesses, calls, branches and returns from each cited routine body. Every instruction claim names its address in the exact binary build. They describe software behavior, not hardware measurements.

Skipped routines: status excluded 7,243 located, 12,633 understood, and 8 no-software-dependency rows, exact-entry checks excluded 531 named-only rows, and the first-250 limit left 33,644 eligible rows for later readings.

- `__ct__23AboutXsetmonFormClassUIGPCc` in `usr/bin/X11/xsetmon` at 0x10037de0 (n32).
  It occupies 72 bytes.
  The `lw` at 0x10037df4 loads 4 bytes from abs 0x10050be0 via base gp (0x100588fc).
  The `lw` at 0x10037e08 loads 4 bytes from abs 0x10051268 via base gp (0x100588fc).
  The `sw` at 0x10037e18 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__23AboutXsetmonFormClassUI).
  The `jalr` at 0x10037e00 calls `__ct__11VkComponentGPCc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10037e20 has v0 = a0.
- `doOptionNotBlanked__16ChannelFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10038130 (n32).
  It occupies 96 bytes.
  2 such accesses load 4 bytes from abs 0x1005131c via base gp (0x100588fc), including `lw` at 0x10038144, `lw` at 0x1003816c.
  The `lw` at 0x10038148 loads 4 bytes from a0 (arg0 at entry) +0xd8 via base a0 (a0).
  The `lw` at 0x1003814c loads 4 bytes from sym(xsetmonApp) +0x0 via base at (sym(xsetmonApp)).
  The `lw` at 0x10038150 loads 4 bytes from abs 0x10050c04 via base gp (0x100588fc).
  The `lw` at 0x10038154 loads 4 bytes from [sym(xsetmonApp)] +0x138 via base at ([sym(xsetmonApp)]).
  The `lw` at 0x10038160 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84 via base at ([[sym(xsetmonApp)]+312]).
  The `lw` at 0x10038170 loads 4 bytes from abs 0x10050bfc via base gp (0x100588fc).
  The `lw` at 0x10038174 loads 4 bytes from sym(xsetmonApp) +0x0 via base a0 (sym(xsetmonApp)).
  The `lw` at 0x1003817c loads 4 bytes from [sym(xsetmonApp)] +0x138 via base a0 ([sym(xsetmonApp)]).
  The `jalr` at 0x10038164 calls `XSGIvcSetOutputBlanking` with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[a0+216], a3=0x0.
  The `jalr` at 0x10038178 calls `XFlush` with a0=[[sym(xsetmonApp)]+312], a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x10038188 has v0 = ret(XFlush).
- `__dt__18TargetPromptDialogGv` in `usr/bin/X11/xsetmon` at 0x10038190 (n32).
  It occupies 108 bytes.
  The `lw` at 0x100381b8 loads 4 bytes from abs 0x10050bd0 via base gp (0x100588fc).
  The `lw` at 0x100381bc loads 4 bytes from abs 0x10051304 via base gp (0x100588fc).
  The `sw` at 0x100381c0 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__18TargetPromptDialog).
  The `lw` at 0x100381e0 loads 4 bytes from abs 0x100509ec via base gp (0x100588fc).
  The `jalr` at 0x100381c8 calls `__dt__15VkGenericDialogGv` with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x100381e4 calls `__dl__GPv` with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x100381b0 goes to 0x100381ec when a0 == 0 and falls through when a0 != 0.
  The `beq` at 0x100381d8 goes to 0x100381f0 when (v1(=a1) & 0x1) == 0 and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x100381f4 has v0 = ?.
- `__dt__18ChannelFormClassUIGv` in `usr/bin/X11/xsetmon` at 0x10038200 (n32).
  It occupies 568 bytes.
  The `lw` at 0x10038224 loads 4 bytes from abs 0x10051274 via base gp (0x100588fc).
  The `sw` at 0x10038228 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__18ChannelFormClassUI).
  The `lw` at 0x10038230 loads 4 bytes from a0 (arg0 at entry) +0x40 via base a0 (a0).
  The `lw` at 0x1003823c loads 4 bytes from [a0+64] +0x8 via base a3 ([a0+64]).
  The `lw` at 0x10038240 loads 4 bytes from [[a0+64]+8] +0x14 via base a0 ([[a0+64]+8]).
  The `lw` at 0x10038244 loads 4 bytes from [[a0+64]+8] +0xc via base a0 ([[a0+64]+8]).
  The `lw` at 0x10038258 loads 4 bytes from a0 (arg0 at entry) +0x20 via base a0 (a0).
  The `lw` at 0x10038264 loads 4 bytes from [a0+32] +0x8 via base a3 ([a0+32]).
  The `lw` at 0x10038268 loads 4 bytes from [[a0+32]+8] +0x14 via base a0 ([[a0+32]+8]).
  The `lw` at 0x1003826c loads 4 bytes from [[a0+32]+8] +0xc via base a0 ([[a0+32]+8]).
  The `lw` at 0x10038280 loads 4 bytes from a0 (arg0 at entry) +0x2c via base a0 (a0).
  The `lw` at 0x1003828c loads 4 bytes from [a0+44] +0x8 via base a3 ([a0+44]).
  The `lw` at 0x10038290 loads 4 bytes from [[a0+44]+8] +0x14 via base a0 ([[a0+44]+8]).
  The `lw` at 0x10038294 loads 4 bytes from [[a0+44]+8] +0xc via base a0 ([[a0+44]+8]).
  The `lw` at 0x100382a8 loads 4 bytes from a0 (arg0 at entry) +0x28 via base a0 (a0).
  The `lw` at 0x100382b4 loads 4 bytes from [a0+40] +0x8 via base a3 ([a0+40]).
  The `lw` at 0x100382b8 loads 4 bytes from [[a0+40]+8] +0x14 via base a0 ([[a0+40]+8]).
  The `lw` at 0x100382bc loads 4 bytes from [[a0+40]+8] +0xc via base a0 ([[a0+40]+8]).
  The `lw` at 0x100382d0 loads 4 bytes from a0 (arg0 at entry) +0x3c via base a0 (a0).
  The `lw` at 0x100382dc loads 4 bytes from [a0+60] +0x8 via base a3 ([a0+60]).
  The `lw` at 0x100382e0 loads 4 bytes from [[a0+60]+8] +0x14 via base a0 ([[a0+60]+8]).
  The `lw` at 0x100382e4 loads 4 bytes from [[a0+60]+8] +0xc via base a0 ([[a0+60]+8]).
  The `lw` at 0x100382f8 loads 4 bytes from a0 (arg0 at entry) +0x38 via base a0 (a0).
  The `lw` at 0x10038304 loads 4 bytes from [a0+56] +0x8 via base a3 ([a0+56]).
  The `lw` at 0x10038308 loads 4 bytes from [[a0+56]+8] +0x14 via base a0 ([[a0+56]+8]).
  The `lw` at 0x1003830c loads 4 bytes from [[a0+56]+8] +0xc via base a0 ([[a0+56]+8]).
  The `lw` at 0x10038320 loads 4 bytes from a0 (arg0 at entry) +0x34 via base a0 (a0).
  The `lw` at 0x1003832c loads 4 bytes from [a0+52] +0x8 via base a3 ([a0+52]).
  The `lw` at 0x10038330 loads 4 bytes from [[a0+52]+8] +0x14 via base a0 ([[a0+52]+8]).
  The `lw` at 0x10038334 loads 4 bytes from [[a0+52]+8] +0xc via base a0 ([[a0+52]+8]).
  The `lw` at 0x10038348 loads 4 bytes from a0 (arg0 at entry) +0x30 via base a0 (a0).
  The `lw` at 0x10038354 loads 4 bytes from [a0+48] +0x8 via base a3 ([a0+48]).
  The `lw` at 0x10038358 loads 4 bytes from [[a0+48]+8] +0x14 via base a0 ([[a0+48]+8]).
  The `lw` at 0x1003835c loads 4 bytes from [[a0+48]+8] +0xc via base a0 ([[a0+48]+8]).
  The `lw` at 0x10038370 loads 4 bytes from a0 (arg0 at entry) +0x24 via base a0 (a0).
  The `lw` at 0x1003837c loads 4 bytes from [a0+36] +0x8 via base a3 ([a0+36]).
  The `lw` at 0x10038380 loads 4 bytes from [[a0+36]+8] +0x14 via base a0 ([[a0+36]+8]).
  The `lw` at 0x10038384 loads 4 bytes from [[a0+36]+8] +0xc via base a0 ([[a0+36]+8]).
  The `lw` at 0x10038398 loads 4 bytes from a0 (arg0 at entry) +0xc0 via base a0 (a0).
  The `lw` at 0x100383a4 loads 4 bytes from [a0+192] +0x8 via base a3 ([a0+192]).
  The `lw` at 0x100383a8 loads 4 bytes from [[a0+192]+8] +0x14 via base a0 ([[a0+192]+8]).
  The `lw` at 0x100383ac loads 4 bytes from [[a0+192]+8] +0xc via base a0 ([[a0+192]+8]).
  The `lw` at 0x100383c0 loads 4 bytes from a0 (arg0 at entry) +0xc4 via base a0 (a0).
  The `lw` at 0x100383cc loads 4 bytes from [a0+196] +0x8 via base a3 ([a0+196]).
  The `lw` at 0x100383d0 loads 4 bytes from [[a0+196]+8] +0x14 via base a0 ([[a0+196]+8]).
  The `lw` at 0x100383d4 loads 4 bytes from [[a0+196]+8] +0xc via base a0 ([[a0+196]+8]).
  The `lw` at 0x100383e8 loads 4 bytes from a0 (arg0 at entry) +0xd0 via base a0 (a0).
  2 such accesses load 4 bytes from abs 0x10050b1c via base gp (0x100588fc), including `lw` at 0x100383f0, `lw` at 0x10038404.
  The `lw` at 0x100383f4 loads 4 bytes from abs 0x10050b98 via base gp (0x100588fc).
  The `lw` at 0x1003841c loads 4 bytes from abs 0x100509ec via base gp (0x100588fc).
  The `jalr` at 0x1003824c calls (unknown callee) with a0=([[[a0+64]+8]+12] + [a0+64]), a1=0x3, a2=a2 at entry (arg2), a3=[a0+64].
  The `jalr` at 0x10038274 calls (unknown callee) with a0=([[[a0+32]+8]+12] + [a0+32]), a1=0x3, a2=(unknown), a3=[a0+32].
  The `jalr` at 0x1003829c calls (unknown callee) with a0=([[[a0+44]+8]+12] + [a0+44]), a1=0x3, a2=(unknown), a3=[a0+44].
  The `jalr` at 0x100382c4 calls (unknown callee) with a0=([[[a0+40]+8]+12] + [a0+40]), a1=0x3, a2=(unknown), a3=[a0+40].
  The `jalr` at 0x100382ec calls (unknown callee) with a0=([[[a0+60]+8]+12] + [a0+60]), a1=0x3, a2=(unknown), a3=[a0+60].
  The `jalr` at 0x10038314 calls (unknown callee) with a0=([[[a0+56]+8]+12] + [a0+56]), a1=0x3, a2=(unknown), a3=[a0+56].
  The `jalr` at 0x1003833c calls (unknown callee) with a0=([[[a0+52]+8]+12] + [a0+52]), a1=0x3, a2=(unknown), a3=[a0+52].
  The `jalr` at 0x10038364 calls (unknown callee) with a0=([[[a0+48]+8]+12] + [a0+48]), a1=0x3, a2=(unknown), a3=[a0+48].
  The `jalr` at 0x1003838c calls (unknown callee) with a0=([[[a0+36]+8]+12] + [a0+36]), a1=0x3, a2=(unknown), a3=[a0+36].
  The `jalr` at 0x100383b4 calls (unknown callee) with a0=([[[a0+192]+8]+12] + [a0+192]), a1=0x3, a2=(unknown), a3=[a0+192].
  The `jalr` at 0x100383dc calls (unknown callee) with a0=([[[a0+196]+8]+12] + [a0+196]), a1=0x3, a2=(unknown), a3=[a0+196].
  The `jalr` at 0x100383f8 calls `__dla__GPv` with a0=[a0+208], a1=(unknown), a2=(unknown), a3=[a0+208].
  The `jalr` at 0x10038408 calls `__dt__11VkComponentGv` with a0=a0 at entry (arg0), a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10038420 calls `__dl__GPv` with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x10038218 goes to 0x10038428 when a0 == 0 and falls through when a0 != 0.
  The `beq` at 0x10038234 goes to 0x10038258 when a3(=[a0+64]) == 0 and falls through when a3(=[a0+64]) != 0.
  The `beq` at 0x1003825c goes to 0x10038280 when a3(=[a0+32]) == 0 and falls through when a3(=[a0+32]) != 0.
  The `beq` at 0x10038284 goes to 0x100382a8 when a3(=[a0+44]) == 0 and falls through when a3(=[a0+44]) != 0.
  The `beq` at 0x100382ac goes to 0x100382d0 when a3(=[a0+40]) == 0 and falls through when a3(=[a0+40]) != 0.
  The `beq` at 0x100382d4 goes to 0x100382f8 when a3(=[a0+60]) == 0 and falls through when a3(=[a0+60]) != 0.
  The `beq` at 0x100382fc goes to 0x10038320 when a3(=[a0+56]) == 0 and falls through when a3(=[a0+56]) != 0.
  The `beq` at 0x10038324 goes to 0x10038348 when a3(=[a0+52]) == 0 and falls through when a3(=[a0+52]) != 0.
  The `beq` at 0x1003834c goes to 0x10038370 when a3(=[a0+48]) == 0 and falls through when a3(=[a0+48]) != 0.
  The `beq` at 0x10038374 goes to 0x10038398 when a3(=[a0+36]) == 0 and falls through when a3(=[a0+36]) != 0.
  The `beq` at 0x1003839c goes to 0x100383c0 when a3(=[a0+192]) == 0 and falls through when a3(=[a0+192]) != 0.
  The `beq` at 0x100383c4 goes to 0x100383e8 when a3(=[a0+196]) == 0 and falls through when a3(=[a0+196]) != 0.
  The `beq` at 0x100383ec goes to 0x10038408 when a3(=[a0+208]) == 0 and falls through when a3(=[a0+208]) != 0.
  The `beq` at 0x10038418 goes to 0x10038428 when (a1 & 0x1) == 0 and falls through when (a1 & 0x1) != 0.
  The return at 0x10038430 has v0 = ?.
- `DeleteCombination__28CombinationContentsListClassGv` in `usr/bin/X11/xsetmon` at 0x10038440 (n32).
  It occupies 112 bytes.
  The `lw` at 0x10038444 loads 4 bytes from a0 (arg0 at entry) +0x30 via base a0 (a0).
  The `lw` at 0x10038468 loads 4 bytes from abs 0x10050c40 via base gp (0x100588fc).
  The `lw` at 0x10038474 loads 4 bytes from abs 0x10050b98 via base gp (0x100588fc).
  The `lw` at 0x10038478 loads 4 bytes from a0 (arg0 at entry) +0x34 via base s0 (a0).
  The `sw` at 0x10038480 stores 4 bytes to a0 (arg0 at entry) +0x30 via base s0 (a0) with value 0x0.
  The `lw` at 0x10038484 loads 4 bytes from abs 0x10050c54 via base gp (0x100588fc).
  The `lw` at 0x10038488 loads 4 bytes from a0 (arg0 at entry) +0x38 via base s0 (a0).
  The `lw` at 0x10038494 loads 4 bytes from a0 (arg0 at entry) +0x28 via base s0 (a0).
  The `sw` at 0x100384a0 stores 4 bytes to a0 (arg0 at entry) +0x38 via base s0 (a0) with value 0x0.
  The `jalr` at 0x1003846c calls `XFree` with a0=[a0+48], a1=a1 at entry (arg1), a2=[a0+48], a3=a3 at entry (arg3).
  The `jalr` at 0x1003847c calls `__dla__GPv` with a0=[a0+52], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10038490 calls `XmListDeleteItemsPos` with a0=[a0+40], a1=[a0+56], a2=0x1, a3=(unknown).
  The `beq` at 0x10038460 goes to 0x10038484 when a2(=[a0+48]) == 0 and falls through when a2(=[a0+48]) != 0.
  The return at 0x100384a8 has v0 = ret(XmListDeleteItemsPos).
- `DisplayfbDepth__21SetmonMasterFormClassGi` in `usr/bin/X11/xsetmon` at 0x100389f0 (n32).
  It occupies 52 bytes.
  The `lw` at 0x10038a04 loads 4 bytes from abs 0x100511a4 via base gp (0x100588fc).
  The `lw` at 0x10038a10 loads 4 bytes from a0 (arg0 at entry) +0x28 via base a0 (a0).
  The `jal` at 0x10038a0c calls `DisplayfbDepth__19StatisticsFormClassGi [0x1003cfb0]` with a0=[a0+40], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10038a1c has v0 = ret(DisplayfbDepth__19StatisticsFormClassGi).
- `__ml__GRC7MMatrixT1` in `usr/bin/X11/xsetmon` at 0x10038a30 (n32).
  It occupies 84 bytes.
  The `lw` at 0x10038a44 loads 4 bytes from abs 0x10050f3c via base gp (0x100588fc).
  The `lw` at 0x10038a60 loads 4 bytes from abs 0x10051110 via base gp (0x100588fc).
  The `jal` at 0x10038a58 calls `__ct__7MMatrixGRC7MMatrix [0x10026f50]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10038a68 calls `multRight__7MMatrixGRC7MMatrix [0x10037680]` with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=(unknown), a3=(unknown).
  The return at 0x10038a7c has v0 = ret(multRight__7MMatrixGRC7MMatrix).
- `getOpMenuIndex__12GammaClassUIGv` in `usr/bin/X11/xsetmon` at 0x10038b50 (n32).
  It occupies 52 bytes.
  The `lw` at 0x10038b64 loads 4 bytes from abs 0x10050d1c via base gp (0x100588fc).
  The `lw` at 0x10038b70 loads 4 bytes from a0 (arg0 at entry) +0x64 via base a0 (a0).
  The `jalr` at 0x10038b6c calls `getIndex__12VkOptionMenuGv` with a0=[a0+100], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10038b7c has v0 = ret(getIndex__12VkOptionMenuGv).
- `doOptionVideoVoltage__19ServerInfoFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10038b90 (n32).
  It occupies 104 bytes.
  2 such accesses load 4 bytes from abs 0x1005131c via base gp (0x100588fc), including `lw` at 0x10038ba4, `lw` at 0x10038bd4.
  2 such accesses load 4 bytes from sym(xsetmonApp) +0x0 via base a2 (sym(xsetmonApp)), including `lw` at 0x10038ba8, `lw` at 0x10038bb8.
  The `sw` at 0x10038bb4 stores 4 bytes to [sym(xsetmonApp)] +0x118 via base a4 ([sym(xsetmonApp)]) with value 0x1.
  The `lw` at 0x10038bbc loads 4 bytes from abs 0x10050d78 via base gp (0x100588fc).
  The `lw` at 0x10038bc0 loads 4 bytes from [sym(xsetmonApp)] +0x11c via base a2 ([sym(xsetmonApp)]).
  The `lw` at 0x10038bc4 loads 4 bytes from [sym(xsetmonApp)] +0x138 via base a2 ([sym(xsetmonApp)]).
  The `lw` at 0x10038bc8 loads 4 bytes from [sym(xsetmonApp)] +0x118 via base a2 ([sym(xsetmonApp)]).
  The `lw` at 0x10038bd0 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84 via base a0 ([[sym(xsetmonApp)]+312]).
  The `lw` at 0x10038bd8 loads 4 bytes from abs 0x10050bfc via base gp (0x100588fc).
  The `lw` at 0x10038bdc loads 4 bytes from sym(xsetmonApp) +0x0 via base a0 (sym(xsetmonApp)).
  The `lw` at 0x10038be4 loads 4 bytes from [sym(xsetmonApp)] +0x138 via base a0 ([sym(xsetmonApp)]).
  The `jalr` at 0x10038bcc calls `XSGIvcSetScreenInputSyncSource` with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[[sym(xsetmonApp)]+280], a3=[[sym(xsetmonApp)]+284], a4=[sym(xsetmonApp)], a5=0x1fd6c.
  The `jalr` at 0x10038be0 calls `XFlush` with a0=[[sym(xsetmonApp)]+312], a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x10038bf0 has v0 = ret(XFlush).
- `doOptionMapCallback__12GammaClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10038c00 (n32).
  It occupies 64 bytes.
  The `lw` at 0x10038c00 loads 4 bytes from a1 (arg1 at entry) +0x14 via base a1 (a1).
  The `lw` at 0x10038c0c loads 4 bytes from [a1+20] +0x8 via base a2 ([a1+20]).
  The `lw` at 0x10038c1c loads 4 bytes from [[a1+20]+8] +0xa4 via base a0 ([[a1+20]+8]).
  The `lw` at 0x10038c20 loads 4 bytes from [[a1+20]+8] +0x9c via base a0 ([[a1+20]+8]).
  The `jalr` at 0x10038c28 calls (unknown callee) with a0=([[[a1+20]+8]+156] + [a1+20]), a1=a1 at entry (arg1), a2=[a1+20], a3=0x1fcfc.
  The return at 0x10038c38 has v0 = ret(?).
- `setTitle__7xsetmonGv` in `usr/bin/X11/xsetmon` at 0x10038c60 (n32).
  It occupies 208 bytes.
  The `lw` at 0x10038c74 loads 4 bytes from abs 0x10050b68 via base gp (0x100588fc).
  The `lw` at 0x10038c78 loads 4 bytes from abs 0x1005091c via base gp (0x100588fc).
  2 such accesses load 4 bytes from abs 0x10050b8c via base gp (0x100588fc), including `lw` at 0x10038c90, `lw` at 0x10038ca8.
  3 such accesses load 4 bytes from abs 0x1005131c via base gp (0x100588fc), including `lw` at 0x10038ca4, `lw` at 0x10038ccc, `lw` at 0x10038cf0.
  2 such accesses load 4 bytes from sym(xsetmonApp) +0x0 via base a0 (sym(xsetmonApp)), including `lw` at 0x10038cac, `lw` at 0x10038cfc.
  The `lw` at 0x10038cb8 loads 4 bytes from [sym(xsetmonApp)] +0x80 via base a0 ([sym(xsetmonApp)]).
  The `lw` at 0x10038cbc loads 4 bytes from abs 0x10050b90 via base gp (0x100588fc).
  The `lw` at 0x10038cd0 loads 4 bytes from abs 0x10050b84 via base gp (0x100588fc).
  The `lw` at 0x10038cd4 loads 4 bytes from sym(xsetmonApp) +0x0 via base a2 (sym(xsetmonApp)).
  The `lw` at 0x10038ce8 loads 4 bytes from [sym(xsetmonApp)] +0x80 via base a2 ([sym(xsetmonApp)]).
  The `lw` at 0x10038cec loads 4 bytes from abs 0x10050bc4 via base gp (0x100588fc).
  The `lw` at 0x10038d00 loads 4 bytes from abs 0x10050bc8 via base gp (0x100588fc).
  The `lw` at 0x10038d10 loads 4 bytes from abs 0x10050b98 via base gp (0x100588fc).
  The `jalr` at 0x10038c88 calls `VkGetResource__GPCcT1` with a0=0x10043df0, a1=0x10043df0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10038c9c calls `strlen` with a0=ret(VkGetResource__GPCcT1), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10038cb4 calls `strlen` with a0=[[sym(xsetmonApp)]+128], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10038cc4 calls `__nwa__GUi` with a0=(ret(strlen) + ret(strlen))+10, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10038ce4 calls `sprintf` with a0=ret(__nwa__GUi), a1=ret(VkGetResource__GPCcT1), a2=[[sym(xsetmonApp)]+128], a3=(unknown).
  The `jalr` at 0x10038cf8 calls `mainWindow__5VkAppCGv` with a0=[sym(xsetmonApp)], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10038d08 calls `setTitle__14VkSimpleWindowGPCc` with a0=ret(mainWindow__5VkAppCGv), a1=ret(__nwa__GUi), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10038d14 calls `__dla__GPv` with a0=ret(__nwa__GUi), a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x10038d28 has v0 = ret(__dla__GPv).
- `accumBufTypeSelected__27FormatCombinationListsClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10038d30 (n32).
  It occupies 76 bytes.
  The `lw` at 0x10038d44 loads 4 bytes from abs 0x1005131c via base gp (0x100588fc).
  The `lw` at 0x10038d48 loads 4 bytes from sym(xsetmonApp) +0x0 via base a0 (sym(xsetmonApp)).
  The `lw` at 0x10038d4c loads 4 bytes from a2 (arg2 at entry) +0x10 via base a2 (a2).
  The `lw` at 0x10038d50 loads 4 bytes from [sym(xsetmonApp)] +0x130 via base a0 ([sym(xsetmonApp)]).
  The `lw` at 0x10038d54 loads 4 bytes from abs 0x100510a4 via base gp (0x100588fc).
  The `lw` at 0x10038d58 loads 4 bytes from [[sym(xsetmonApp)]+304] +0x44 via base a0 ([[sym(xsetmonApp)]+304]).
  The `lw` at 0x10038d68 loads 4 bytes from [[[sym(xsetmonApp)]+304]+68] +0x2c via base a0 ([[[sym(xsetmonApp)]+304]+68]).
  The `jal` at 0x10038d64 calls `DisplayaccumBufType__21SetmonMasterFormClassGi [0x10032980]` with a0=[[[[sym(xsetmonApp)]+304]+68]+44], a1=[a2+16]-1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10038d74 has v0 = ret(DisplayaccumBufType__21SetmonMasterFormClassGi).
- `doFinishScalarDragCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi` in `usr/bin/X11/xsetmon` at 0x10038d80 (n32).
  It occupies 112 bytes.
  The `lw` at 0x10038d94 loads 4 bytes from abs 0x10050ce0 via base gp (0x100588fc).
  The `lw` at 0x10038dc0 loads 4 bytes from ? (base unknown) via base a3 (?).
  2 such accesses load 4 bytes from ? (base unknown) via base a0 (?), including `lw` at 0x10038dc4, `lw` at 0x10038dc8.
  The `jalr` at 0x10038db4 calls `XtVaGetValues` with a0=a0 at entry (arg0), a1=-0xa, a2=sp-48, a3=0x0.
  The `jalr` at 0x10038dd4 calls (unknown callee) with a0=(unknown), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=(unknown).
  The return at 0x10038de8 has v0 = ret(?).
- `vListFormats__27FormatCombinationListsClassGv` in `usr/bin/X11/xsetmon` at 0x10038e50 (n32).
  It occupies 1332 bytes.
  The `lw` at 0x10038e64 loads 4 bytes from abs 0x10050cd0 via base gp (0x100588fc).
  2 such accesses load 4 bytes from abs 0x1005131c via base gp (0x100588fc), including `lw` at 0x10038e80, `lw` at 0x100390c0.
  The `sw` at 0x10038e88 stores 4 bytes to a0 (arg0 at entry) +0xd8 via base s0 (a0) with value -0x1.
  4 such accesses load 4 bytes from sym(xsetmonApp) +0x0 via base s1 (sym(xsetmonApp)), including `lw` at 0x10038e8c, `lw` at 0x10038ea8, `lw` at 0x10038eec.
  The `lw` at 0x10038e90 loads 4 bytes from abs 0x10050c38 via base gp (0x100588fc).
  3 such accesses load 4 bytes from [sym(xsetmonApp)] +0x138 via base a0 ([sym(xsetmonApp)]), including `lw` at 0x10038e94, `lw` at 0x10038ebc, `lw` at 0x100390f0.
  4 such accesses load 4 bytes from [[sym(xsetmonApp)]+312] +0x84 via base a0 ([[sym(xsetmonApp)]+312]), including `lw` at 0x10038ea4, `lw` at 0x10038ed0, `lw` at 0x10038f60.
  The `lw` at 0x10038eb0 loads 4 bytes from abs 0x10050cd4 via base gp (0x100588fc).
  4 such accesses load 4 bytes from abs 0x10050b90 via base gp (0x100588fc), including `lw` at 0x10038ed4, `lw` at 0x10038fb4, `lw` at 0x10039144.
  6 such accesses load 4 bytes from a0 (arg0 at entry) +0xc4 via base s0 (a0), including `lw` at 0x10038ed8, `lw` at 0x10038f30, `lw` at 0x10038f70.
  The `sw` at 0x10038edc stores 4 bytes to a0 (arg0 at entry) +0xc0 via base s0 (a0) with value ret(XSGIvcListVideoFormats).
  The `sw` at 0x10038ee8 stores 4 bytes to a0 (arg0 at entry) +0xd0 via base s0 (a0) with value ret(__nwa__GUi).
  The `lw` at 0x10038ef0 loads 4 bytes from [sym(xsetmonApp)] +0x8c via base t2 ([sym(xsetmonApp)]).
  The `lw` at 0x10038f1c loads 4 bytes from [sym(xsetmonApp)] +0x90 via base t2 ([sym(xsetmonApp)]).
  The `lw` at 0x10038f2c loads 4 bytes from [sym(xsetmonApp)] +0x138 via base t2 ([sym(xsetmonApp)]).
  5 such accesses load 4 bytes from abs 0x10050c40 via base gp (0x100588fc), including `lw` at 0x10038f40, `lw` at 0x100390d8, `lw` at 0x10039124.
  2 such accesses load 4 bytes from abs 0x10050cd8 via base gp (0x100588fc), including `lw` at 0x10038f4c, `lw` at 0x100390e8.
  2 such accesses store 4 bytes to a0 (arg0 at entry) +0xc8 via base s0 (a0), including `sw` at 0x10038f7c, `sw` at 0x10039118.
  3 such accesses load 4 bytes from abs 0x10050b8c via base gp (0x100588fc), including `lw` at 0x10038fa0, `lw` at 0x10039130, `lw` at 0x10039200.
  2 such accesses load 4 bytes from a0 (arg0 at entry) +0xc0 via base s0 (a0), including `lw` at 0x10038fa4, `lw` at 0x10039204.
  4 such accesses load 4 bytes from abs 0x10050b84 via base gp (0x100588fc), including `lw` at 0x10038fc0, `lw` at 0x10039018, `lw` at 0x10039150.
  4 such accesses load 4 bytes from abs 0x1005091c via base gp (0x100588fc), including `lw` at 0x10038fc8, `lw` at 0x1003901c, `lw` at 0x10039158.
  2 such accesses load 4 bytes from a0 (arg0 at entry) +0xd0 via base s0 (a0), including `lw` at 0x10038fdc, `lw` at 0x10039030.
  The `sw` at 0x10038fe4 stores 4 bytes to ? (base unknown) via base a3 (?) with value 0x0.
  4 such accesses load 4 bytes from a0 (arg0 at entry) +0xcc via base s0 (a0), including `lw` at 0x10038fe8, `lw` at 0x10039040, `lw` at 0x1003911c.
  4 such accesses load 4 bytes from abs 0x10050b70 via base gp (0x100588fc), including `lw` at 0x10039000, `lw` at 0x10039070, `lw` at 0x10039190.
  3 such accesses load 4 bytes from a0 (arg0 at entry) +0xc8 via base s0 (a0), including `lw` at 0x10039004, `lw` at 0x100390bc, `lw` at 0x10039134.
  The `sw` at 0x1003903c stores 4 bytes to ? (base unknown) via base a3 (?) with value 0x1.
  3 such accesses load 4 bytes from abs 0x10050cdc via base gp (0x100588fc), including `lw` at 0x10039054, `lw` at 0x1003916c, `lw` at 0x1003923c.
  3 such accesses load 4 bytes from abs 0x10050b98 via base gp (0x100588fc), including `lw` at 0x10039064, `lw` at 0x1003917c, `lw` at 0x1003924c.
  3 such accesses store 4 bytes to a0 (arg0 at entry) +0xec via base s0 (a0), including `sw` at 0x1003908c, `sw` at 0x100391b0, `sw` at 0x10039274.
  3 such accesses store 4 bytes to a0 (arg0 at entry) +0x9c via base s0 (a0), including `sw` at 0x10039090, `sw` at 0x100391b4, `sw` at 0x10039278.
  3 such accesses store 4 bytes to a0 (arg0 at entry) +0xd8 via base s0 (a0), including `sw` at 0x10039094, `sw` at 0x100391c0, `sw` at 0x1003927c.
  2 such accesses load 4 bytes from a0 (arg0 at entry) +0xd8 via base s0 (a0), including `lw` at 0x10039188, `lw` at 0x10039308.
  The `lw` at 0x100392a4 loads 4 bytes from abs 0x10050ce0 via base gp (0x100588fc).
  4 such accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base s0 (a0), including `lw` at 0x100392b8, `lw` at 0x100392c4, `lw` at 0x100392f8.
  The `lw` at 0x100392bc loads 4 bytes from abs 0x10050ce4 via base gp (0x100588fc).
  2 such accesses load 4 bytes from abs 0x10050ce8 via base gp (0x100588fc), including `lw` at 0x100392c8, `lw` at 0x100392fc.
  The `lw` at 0x100392d4 loads 4 bytes from abs 0x10050cec via base gp (0x100588fc).
  The `lw` at 0x100392e0 loads 4 bytes from abs 0x10050cf0 via base gp (0x100588fc).
  The `lw` at 0x10039310 loads 4 bytes from abs 0x10050c64 via base gp (0x100588fc).
  2 such accesses load 4 bytes from abs 0x10050c3c via base gp (0x100588fc), including `lw` at 0x10039320, `lw` at 0x10039330.
  The `lw` at 0x1003932c loads 4 bytes from a0 (arg0 at entry) +0x74 via base s0 (a0).
  The `lw` at 0x1003933c loads 4 bytes from a0 (arg0 at entry) +0x78 via base s0 (a0).
  The `lw` at 0x10039340 loads 4 bytes from abs 0x10050c94 via base gp (0x100588fc).
  The `lw` at 0x10039348 loads 4 bytes from a0 (arg0 at entry) +0x20 via base s0 (a0).
  The `lw` at 0x10039358 loads 4 bytes from abs 0x10050aac via base gp (0x100588fc).
  The `jalr` at 0x10038e78 calls `__ct__10VkNameListGv` with a0=sp-448, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10038ea0 calls `XSGIvcQueryChannelInfo` with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=sp-432.
  The `jalr` at 0x10038ecc calls `XSGIvcListVideoFormats` with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=sp-424, a4=0x0, a5=0x0, a6=0x3e8, a7=a0+196.
  The `jalr` at 0x10038ee0 calls `__nwa__GUi` with a0=([a0+196] << 0x2), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10038f68 calls `XSGIvcNVListVideoFormats` with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=sp-424, a4=0x0, a5=0x0, a6=0x0, a7=0x3e8.
  The `jalr` at 0x10038fac calls `strlen` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10038fb8 calls `__nwa__GUi` with a0=ret(strlen)+10, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10038fd4 calls `sprintf` with a0=ret(__nwa__GUi), a1=0x10044aa0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003900c calls `strcmp` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10039028 calls `sprintf` with a0=ret(__nwa__GUi), a1=0x10044ab0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003905c calls `add__10VkNameListGPc` with a0=sp-448, a1=ret(__nwa__GUi), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10039068 calls `__dla__GPv` with a0=ret(__nwa__GUi), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003907c calls `strcmp` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100390dc calls `XFree` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003910c calls `XSGIvcNVListVideoFormats` with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=sp-424, a4=0x0, a5=0x0, a6=0x1, a7=0x3e8.
  The `jalr` at 0x1003913c calls `strlen` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10039148 calls `__nwa__GUi` with a0=ret(strlen)+10, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10039164 calls `sprintf` with a0=ret(__nwa__GUi), a1=0x10044ac0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10039174 calls `add__10VkNameListGPc` with a0=sp-448, a1=ret(__nwa__GUi), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10039180 calls `__dla__GPv` with a0=ret(__nwa__GUi), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003919c calls `strcmp` with a0=(unknown), a1=(unknown), a2=[a0+216], a3=(unknown).
  The `jalr` at 0x1003920c calls `strlen` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10039218 calls `__nwa__GUi` with a0=ret(strlen)+10, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10039234 calls `sprintf` with a0=ret(__nwa__GUi), a1=0x10044aa0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10039244 calls `add__10VkNameListGPc` with a0=sp-448, a1=ret(__nwa__GUi), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10039250 calls `__dla__GPv` with a0=ret(__nwa__GUi), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10039264 calls `strcmp` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003929c calls `XFree` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100392b4 calls `XtVaGetValues` with a0=[a0+64], a1=-0x84, a2=sp-112, a3=0x0.
  The `jalr` at 0x100392c0 calls `XmListDeleteAllItems` with a0=[a0+64], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100392cc calls `freeXmStringTable__10VkNameListSGPPUc` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100392d8 calls `getXmStringTable__10VkNameListCGv` with a0=sp-448, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100392f4 calls `XmListAddItems` with a0=[a0+64], a1=ret(getXmStringTable__10VkNameListCGv), a2=(unknown), a3=0x1.
  The `jalr` at 0x10039300 calls `freeXmStringTable__10VkNameListSGPPUc` with a0=ret(getXmStringTable__10VkNameListCGv), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10039318 calls `XmListSelectPos` with a0=[a0+64], a1=[a0+216], a2=0x0, a3=(unknown).
  The `jalr` at 0x10039328 calls `XtSetSensitive` with a0=[a0+116], a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10039338 calls `XtSetSensitive` with a0=[a0+120], a1=0x1, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10039344 calls `XmListDeselectAllItems` with a0=[a0+32], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003936c calls `__dt__10VkNameListGv` with a0=sp-448, a1=0x2, a2=(unknown), a3=(unknown).
  The `beq` at 0x10038f08 goes to 0x10038f28 when a0(=[[sym(xsetmonApp)]+140]) >= 0x2 (signed) and falls through when a0(=[[sym(xsetmonApp)]+140]) < 0x2 (signed).
  The `bne` at 0x10038f14 goes to 0x10038f30 when a0(=[[sym(xsetmonApp)]+140]) != a2(=0x1) and falls through when a0(=[[sym(xsetmonApp)]+140]) == a2(=0x1).
  The `blez` at 0x10038f20 goes to 0x10038f30 when a3(=[[sym(xsetmonApp)]+144]) <= 0 (signed) and falls through when a3(=[[sym(xsetmonApp)]+144]) > 0 (signed).
  The `bgtz` at 0x10038f34 goes to 0x100391ec when a4(=[a0+196]) > 0 (signed) and falls through when a4(=[a0+196]) <= 0 (signed).
  The `blez` at 0x10038f78 goes to 0x100390d8 when a5(=[a0+196]) <= 0 (signed) and falls through when a5(=[a0+196]) > 0 (signed).
  The `blez` at 0x10038ff0 goes to 0x10039054 when a2(=[a0+204]) <= 0 (signed) and falls through when a2(=[a0+204]) > 0 (signed).
  The `bne` at 0x10039014 goes to 0x10039040 when v0(=ret(strcmp)) != 0 and falls through when v0(=ret(strcmp)) == 0.
  The `bne` at 0x1003904c goes to 0x10039000 when s2(?) < a4(=[a0+204]) (signed) and falls through when s2(?) >= a4(=[a0+204]) (signed).
  The `bne` at 0x10039084 goes to 0x100390a0 when v0(=ret(strcmp)) != 0 and falls through when v0(=ret(strcmp)) == 0.
  The `bne` at 0x100390b4 goes to 0x10038fa0 when s8(?) < a2(=[a0+196]) (signed) and falls through when s8(?) >= a2(=[a0+196]) (signed).
  The `beq` at 0x10039114 goes to 0x10039298 when v0(=ret(XSGIvcNVListVideoFormats)) == 0 and falls through when v0(=ret(XSGIvcNVListVideoFormats)) != 0.
  The `blez` at 0x10039120 goes to 0x1003929c when a1(=[a0+204]) <= 0 (signed) and falls through when a1(=[a0+204]) > 0 (signed).
  The `bne` at 0x1003918c goes to 0x100391d0 when a2(=[a0+216]) != s5(=-0x1) and falls through when a2(=[a0+216]) == s5(=-0x1).
  The `bne` at 0x100391a4 goes to 0x100391d0 when v0(=ret(strcmp)) != 0 and falls through when v0(=ret(strcmp)) == 0.
  The `bne` at 0x100391dc goes to 0x10039130 when s2(?) < a3(=[a0+204]) (signed) and falls through when s2(?) >= a3(=[a0+204]) (signed).
  The `bne` at 0x1003926c goes to 0x10039280 when v0(=ret(strcmp)) != 0 and falls through when v0(=ret(strcmp)) == 0.
  The `bne` at 0x10039290 goes to 0x10039200 when s5(?) < a2(=[a0+196]) (signed) and falls through when s5(?) >= a2(=[a0+196]) (signed).
  The `blez` at 0x1003930c goes to 0x1003934c when a1(=[a0+216]) <= 0 (signed) and falls through when a1(=[a0+216]) > 0 (signed).
  The return at 0x1003937c has v0 = ret(__dt__10VkNameListGv).
- `combinationSelected__27FormatCombinationListsClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10039550 (n32).
  It occupies 232 bytes.
  2 such accesses load 4 bytes from abs 0x10050c3c via base gp (0x100588fc), including `lw` at 0x10039568, `lw` at 0x10039588.
  The `lw` at 0x10039570 loads 4 bytes from a0 (arg0 at entry) +0x74 via base a0 (a0).
  The `lw` at 0x10039594 loads 4 bytes from a0 (arg0 at entry) +0x78 via base s0 (a0).
  The `lw` at 0x10039598 loads 4 bytes from abs 0x10050c94 via base gp (0x100588fc).
  The `lw` at 0x100395a0 loads 4 bytes from a0 (arg0 at entry) +0x40 via base s0 (a0).
  The `lw` at 0x100395a4 loads 4 bytes from a2 (arg2 at entry) +0x10 via base s1 (a2).
  The `lw` at 0x100395a8 loads 4 bytes from a0 (arg0 at entry) +0xb0 via base s0 (a0).
  The `lw` at 0x100395b4 loads 4 bytes from a0 (arg0 at entry) +0xb4 via base s0 (a0).
  The `lw` at 0x100395c8 loads 4 bytes from ([a0+180] + ([a2+16] << 0x2)) -0x4 via base s1 (([a0+180] + ([a2+16] << 0x2))).
  The `lw` at 0x100395cc loads 4 bytes from a0 (arg0 at entry) +0xbc via base s0 (a0).
  The `lw` at 0x100395dc loads 4 bytes from ? (base unknown) via base s1 (?).
  2 such accesses load 4 bytes from abs 0x1005131c via base gp (0x100588fc), including `lw` at 0x100395e0, `lw` at 0x10039600.
  The `sw` at 0x100395e4 stores 4 bytes to a0 (arg0 at entry) +0xa0 via base s0 (a0) with value .
  2 such accesses load 4 bytes from sym(xsetmonApp) +0x0 via base a0 (sym(xsetmonApp)), including `lw` at 0x100395e8, `lw` at 0x10039604.
  2 such accesses load 4 bytes from [sym(xsetmonApp)] +0x130 via base a0 ([sym(xsetmonApp)]), including `lw` at 0x100395ec, `lw` at 0x10039608.
  The `lw` at 0x100395f0 loads 4 bytes from abs 0x10051008 via base gp (0x100588fc).
  2 such accesses load 4 bytes from [[sym(xsetmonApp)]+304] +0x44 via base a0 ([[sym(xsetmonApp)]+304]), including `lw` at 0x100395f4, `lw` at 0x10039610.
  2 such accesses load 4 bytes from [[[sym(xsetmonApp)]+304]+68] +0x2c via base a0 ([[[sym(xsetmonApp)]+304]+68]), including `lw` at 0x100395fc, `lw` at 0x10039620.
  The `lw` at 0x1003960c loads 4 bytes from abs 0x10050ed4 via base gp (0x100588fc).
  The `jalr` at 0x10039580 calls `XtSetSensitive` with a0=[a0+116], a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10039590 calls `XtSetSensitive` with a0=[a0+120], a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003959c calls `XmListDeselectAllItems` with a0=[a0+64], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100395f8 calls `ClearFormat__21SetmonMasterFormClassGv [0x1002ce30]` with a0=[[[[sym(xsetmonApp)]+304]+68]+44], a1=[a2+16], a2=[a0+176], a3=(unknown).
  The `jal` at 0x1003961c calls `DisplayCombination__21SetmonMasterFormClassGPCc [0x10024aa0]` with a0=[[[[sym(xsetmonApp)]+304]+68]+44], a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x100395b8 goes to 0x100395cc when v0(=[a2+16]-1) >= a2(=[a0+176]) (signed) and falls through when v0(=[a2+16]-1) < a2(=[a0+176]) (signed).
  The return at 0x10039630 has v0 = ret(DisplayCombination__21SetmonMasterFormClassGPCc).
- `setChannelCurMap__22GammaAssignmentClassUIGiT1` in `usr/bin/X11/xsetmon` at 0x10039640 (n32).
  It occupies 128 bytes.
  The `lw` at 0x10039650 loads 4 bytes from a0 (arg0 at entry) +0x38 via base a0 (a0).
  The `lw` at 0x10039660 loads 4 bytes from abs 0x10050d08 via base gp (0x100588fc).
  The `lw` at 0x10039684 loads 4 bytes from ([a0+56] + (a1 << 0x3)) +0x0 via base at (([a0+56] + (a1 << 0x3))).
  The `lw` at 0x10039688 loads 4 bytes from a0 (arg0 at entry) +0x8 via base s8 (a0).
  The `lw` at 0x1003968c loads 4 bytes from [a0+8] +0xa4 via base a0 ([a0+8]).
  The `lw` at 0x10039690 loads 4 bytes from [a0+8] +0x9c via base a0 ([a0+8]).
  The `jalr` at 0x10039680 calls `set__12VkOptionMenuGi` with a0=[([a0+56] + (a1 << 0x3))], a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=0x1f2bc.
  The `jalr` at 0x100396a4 calls (unknown callee) with a0=([[a0+8]+156] + a0), a1=0x0, a2=0x0, a3=a1 at entry (arg1), a4=a2 at entry (arg2).
  The return at 0x100396b8 has v0 = ret(?).
- `doHorizontalPhaseCallback__16ChannelFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x100396c0 (n32).
  It occupies 96 bytes.
  The `lw` at 0x100396c4 loads 4 bytes from a2 (arg2 at entry) +0x8 via base a2 (a2).
  2 such accesses load 4 bytes from abs 0x1005131c via base gp (0x100588fc), including `lw` at 0x100396d8, `lw` at 0x100396fc.
  The `lw` at 0x100396dc loads 4 bytes from a0 (arg0 at entry) +0xd8 via base a0 (a0).
  The `lw` at 0x100396e0 loads 4 bytes from sym(xsetmonApp) +0x0 via base at (sym(xsetmonApp)).
  The `lw` at 0x100396e4 loads 4 bytes from abs 0x10050c00 via base gp (0x100588fc).
  The `lw` at 0x100396e8 loads 4 bytes from [sym(xsetmonApp)] +0x138 via base at ([sym(xsetmonApp)]).
  The `lw` at 0x100396f0 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84 via base at ([[sym(xsetmonApp)]+312]).
  The `lw` at 0x10039700 loads 4 bytes from abs 0x10050bfc via base gp (0x100588fc).
  The `lw` at 0x10039704 loads 4 bytes from sym(xsetmonApp) +0x0 via base a0 (sym(xsetmonApp)).
  The `lw` at 0x1003970c loads 4 bytes from [sym(xsetmonApp)] +0x138 via base a0 ([sym(xsetmonApp)]).
  The `jalr` at 0x100396f4 calls `XSGIvcSetOutputPhaseH` with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[a0+216], a3=[a2+8].
  The `jalr` at 0x10039708 calls `XFlush` with a0=[[sym(xsetmonApp)]+312], a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x10039718 has v0 = ret(XFlush).
- `RegisterFormatCombinationListsClassInterface__27FormatCombinationListsClassSGv` in `usr/bin/X11/xsetmon` at 0x10039ae0 (n32).
  It occupies 24 bytes.
  The `lw` at 0x10039aec loads 4 bytes from abs 0x10050950 via base at (0x100588fc).
  The return at 0x10039af0 has v0 = 0x1004d020.
- `iSplineXValue__19GammaMapEditorClassCGi` in `usr/bin/X11/xsetmon` at 0x1003a000 (n32).
  It occupies 20 bytes.
  The `lw` at 0x1003a000 loads 4 bytes from a0 (arg0 at entry) +0x50 via base a0 (a0).
  The `lhu` at 0x1003a010 loads 2 bytes from ([a0+80] + (a1 + a1)) +0x0 via base v0 (([a0+80] + (a1 + a1))).
  The return at 0x1003a00c has v0 = [([a0+80] + (a1 + a1))]:2.
- `vGammaToWindow__19GammaMapEditorClassCGiT1P6XPoint` in `usr/bin/X11/xsetmon` at 0x1003a020 (n32).
  It occupies 88 bytes.
  The `lwc1` at 0x1003a02c loads 4 bytes from a0 (arg0 at entry) +0xa0 via base a0 (a0).
  The `sh` at 0x1003a044 stores 2 bytes to a3 (arg3 at entry) +0x0 via base a3 (a3) with value .
  The `lwc1` at 0x1003a048 loads 4 bytes from a0 (arg0 at entry) +0xa4 via base a0 (a0).
  The `lhu` at 0x1003a050 loads 2 bytes from a0 (arg0 at entry) +0x96 via base a0 (a0).
  The `sh` at 0x1003a074 stores 2 bytes to a3 (arg3 at entry) +0x2 via base a3 (a3) with value .
  The return at 0x1003a070 has v0 = [a0+150]:2.
- `create__21ServerInfoFormClassUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003a080 (n32).
  It occupies 3532 bytes.
  The `lw` at 0x1003a098 loads 4 bytes from abs 0x10050be4 via base gp (0x100588fc).
  The `lw` at 0x1003a0b0 loads 4 bytes from abs 0x100512d4 via base gp (0x100588fc).
  The `lw` at 0x1003a0b4 loads 4 bytes from abs 0x10050be8 via base gp (0x100588fc).
  2 such accesses load 4 bytes from abs 0x10050b0c via base gp (0x100588fc), including `lw` at 0x1003a0bc, `lw` at 0x1003a5dc.
  The `lw` at 0x1003a0c8 loads 4 bytes from a0 (arg0 at entry) +0xc via base s0 (a0).
  2 such accesses load 4 bytes from sym(xmFormWidgetClass) +0x0 via base a1 (sym(xmFormWidgetClass)), including `lw` at 0x1003a0d4, `lw` at 0x1003a5f4.
  The `lw` at 0x1003a0d8 loads 4 bytes from abs 0x10050bec via base gp (0x100588fc).
  The `sw` at 0x1003a0dc stores 4 bytes to a0 (arg0 at entry) +0x10 via base s0 (a0) with value ret(XtVaCreateWidget).
  The `sw` at 0x1003a0e8 stores 4 bytes to a0 (arg0 at entry) +0x54 via base s0 (a0) with value ret(XtVaCreateWidget).
  The `lw` at 0x1003a0ec loads 4 bytes from abs 0x100509c4 via base gp (0x100588fc).
  13 such accesses load 4 bytes from a0 (arg0 at entry) +0x10 via base s0 (a0), including `lw` at 0x1003a0f0, `lw` at 0x1003a1a8, `lw` at 0x1003a260.
  12 such accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0 via base s1 (sym(xmLabelWidgetClass)), including `lw` at 0x1003a0f4, `lw` at 0x1003a1b0, `lw` at 0x1003a268.
  15 such accesses load 4 bytes from abs 0x10050bf0 via base gp (0x100588fc), including `lw` at 0x1003a180, `lw` at 0x1003a238, `lw` at 0x1003a2ec.
  14 such accesses load 4 bytes from abs 0x1005091c via base gp (0x100588fc), including `lw` at 0x1003a18c, `lw` at 0x1003a2f8, `lw` at 0x1003a450.
  The `sw` at 0x1003a1ac stores 4 bytes to a0 (arg0 at entry) +0x50 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003a264 stores 4 bytes to a0 (arg0 at entry) +0x3c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003a314 stores 4 bytes to a0 (arg0 at entry) +0x4c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003a3ac stores 4 bytes to a0 (arg0 at entry) +0x38 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003a46c stores 4 bytes to a0 (arg0 at entry) +0x44 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x1003a504 loads 4 bytes from abs 0x100509b8 via base gp (0x100588fc).
  The `sw` at 0x1003a508 stores 4 bytes to a0 (arg0 at entry) +0x34 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x1003a50c loads 4 bytes from sym(xmFrameWidgetClass) +0x0 via base a1 (sym(xmFrameWidgetClass)).
  The `sw` at 0x1003a5d4 stores 4 bytes to a0 (arg0 at entry) +0x24 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x1003a610 loads 4 bytes from abs 0x10050a68 via base gp (0x100588fc).
  The `sw` at 0x1003a614 stores 4 bytes to a0 (arg0 at entry) +0x20 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x1003a618 loads 4 bytes from sym(xmToggleButtonWidgetClass) +0x0 via base a1 (sym(xmToggleButtonWidgetClass)).
  The `lw` at 0x1003a6d0 loads 4 bytes from abs 0x10050c44 via base gp (0x100588fc).
  The `lw` at 0x1003a6dc loads 4 bytes from abs 0x1005111c via base gp (0x100588fc).
  The `sw` at 0x1003a6e8 stores 4 bytes to a0 (arg0 at entry) +0x5c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  2 such accesses load 4 bytes from abs 0x10050b4c via base gp (0x100588fc), including `lw` at 0x1003a6ec, `lw` at 0x1003a784.
  2 such accesses load 4 bytes from abs 0x10050c48 via base gp (0x100588fc), including `lw` at 0x1003a710, `lw` at 0x1003a7ac.
  2 such accesses load 4 bytes from a0 (arg0 at entry) +0x20 via base s0 (a0), including `lw` at 0x1003a724, `lw` at 0x1003a7c0.
  6 such accesses load 4 bytes from abs 0x10050c4c via base gp (0x100588fc), including `lw` at 0x1003a73c, `lw` at 0x1003a740, `lw` at 0x1003a764.
  The `lw` at 0x1003a750 loads 4 bytes from abs 0x100511b0 via base gp (0x100588fc).
  The `sw` at 0x1003a754 stores 4 bytes to a0 (arg0 at entry) +0x64 via base s0 (a0) with value .
  The `lw` at 0x1003a760 loads 4 bytes from abs 0x10050f28 via base gp (0x100588fc).
  2 such accesses load 4 bytes from a0 (arg0 at entry) +0x64 via base s0 (a0), including `lw` at 0x1003a774, `lw` at 0x1003a824.
  The `sw` at 0x1003a778 stores 4 bytes to a0 (arg0 at entry) +0x74 via base s0 (a0) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  The `sw` at 0x1003a788 stores 4 bytes to a0 (arg0 at entry) +0x70 via base s0 (a0) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  The `lw` at 0x1003a7ec loads 4 bytes from abs 0x100511bc via base gp (0x100588fc).
  The `sw` at 0x1003a7f0 stores 4 bytes to a0 (arg0 at entry) +0x60 via base s0 (a0) with value .
  The `lw` at 0x1003a7fc loads 4 bytes from abs 0x10051058 via base gp (0x100588fc).
  2 such accesses load 4 bytes from a0 (arg0 at entry) +0x60 via base s0 (a0), including `lw` at 0x1003a810, `lw` at 0x1003a8b0.
  The `sw` at 0x1003a814 stores 4 bytes to a0 (arg0 at entry) +0x6c via base s0 (a0) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  2 such accesses load 4 bytes from abs 0x10050c50 via base gp (0x100588fc), including `lw` at 0x1003a820, `lw` at 0x1003a8a8.
  The `sw` at 0x1003a82c stores 4 bytes to a0 (arg0 at entry) +0x68 via base s0 (a0) with value ret(addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi).
  9 such accesses load 4 bytes from abs 0x10050bdc via base gp (0x100588fc), including `lw` at 0x1003a880, `lw` at 0x1003a900, `lw` at 0x1003ad58.
  The `sw` at 0x1003a9f4 stores 4 bytes to a0 (arg0 at entry) +0x48 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003aa8c stores 4 bytes to a0 (arg0 at entry) +0x30 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003ab4c stores 4 bytes to a0 (arg0 at entry) +0x40 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003abe4 stores 4 bytes to a0 (arg0 at entry) +0x2c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003ac78 stores 4 bytes to a0 (arg0 at entry) +0x28 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  2 such accesses load 4 bytes from a0 (arg0 at entry) +0x3c via base s0 (a0), including `lw` at 0x1003ad54, `lw` at 0x1003ad8c.
  3 such accesses load 4 bytes from a0 (arg0 at entry) +0x4c via base s0 (a0), including `lw` at 0x1003ad5c, `lw` at 0x1003ad80, `lw` at 0x1003adac.
  The `lw` at 0x1003ad68 loads 4 bytes from a0 (arg0 at entry) +0x50 via base s0 (a0).
  The `sw` at 0x1003ad74 stores 4 bytes to a0 (arg0 at entry) +0x58 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x1003ada0 loads 4 bytes from a0 (arg0 at entry) +0x38 via base s0 (a0).
  The `lw` at 0x1003adc0 loads 4 bytes from a0 (arg0 at entry) +0x34 via base s0 (a0).
  The `lw` at 0x1003adcc loads 4 bytes from a0 (arg0 at entry) +0x44 via base s0 (a0).
  The `lw` at 0x1003ade0 loads 4 bytes from a0 (arg0 at entry) +0x30 via base s0 (a0).
  The `lw` at 0x1003adec loads 4 bytes from a0 (arg0 at entry) +0x48 via base s0 (a0).
  The `lw` at 0x1003ae00 loads 4 bytes from a0 (arg0 at entry) +0x2c via base s0 (a0).
  The `lw` at 0x1003ae0c loads 4 bytes from a0 (arg0 at entry) +0x40 via base s0 (a0).
  The `lw` at 0x1003ae34 loads 4 bytes from a0 (arg0 at entry) +0x5c via base s0 (a0).
  The `jalr` at 0x1003a0ac calls `setDefaultResources__11VkComponentGP10_WidgetRecPCPc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultServerInfoFormClassUIResources__21ServerInfoFormClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x1003a0d0 calls `XtVaCreateWidget` with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=-0xd1, a4=0x1, a5=0x0.
  The `jalr` at 0x1003a0e4 calls `installDestroyHandler__11VkComponentGv` with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003a1a0 calls `XtVaCreateManagedWidget` with a0=0x10045fa0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x0, a7=-0x66.
  The `jalr` at 0x1003a258 calls `XtVaCreateManagedWidget` with a0=0x10051738, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x0, a7=-0x66.
  The `jalr` at 0x1003a30c calls `XtVaCreateManagedWidget` with a0=0x10045fb8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1003a3a4 calls `XtVaCreateManagedWidget` with a0=0x10051740, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1003a464 calls `XtVaCreateManagedWidget` with a0=0x10045fd0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x0, a7=-0x66.
  The `jalr` at 0x1003a4fc calls `XtVaCreateManagedWidget` with a0=0x10051748, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1003a5cc calls `XtVaCreateManagedWidget` with a0=0x10045ff0, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x1003a608 calls `XtVaCreateManagedWidget` with a0=0x10051750, a1=[sym(xmFormWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0xd1, a4=0x1, a5=-0x337, a6=0x1, a7=-0x16.
  The `jalr` at 0x1003a6c8 calls `XtVaCreateManagedWidget` with a0=0x10046008, a1=[sym(xmToggleButtonWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x38.
  The `jalr` at 0x1003a6e4 calls `XtAddCallback` with a0=ret(XtVaCreateManagedWidget), a1=-0x40, a2=sym(doToggleExternalLockCallback__21ServerInfoFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003a6f4 calls `__nw__GUi` with a0=0x4c, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003a728 calls `__ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv` with a0=ret(__nw__GUi), a1=[a0+32], a2=0x10046020, a3=0x0, a4=0x0.
  The `jalr` at 0x1003a758 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=(unknown), a1=0x10046038, a2=sym(doOptionVideoVoltageCallback__21ServerInfoFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1003a77c calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+100], a1=0x10046050, a2=sym(doOptionTTLVoltageCallback__21ServerInfoFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1003a790 calls `__nw__GUi` with a0=0x4c, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003a7c4 calls `__ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv` with a0=ret(__nw__GUi), a1=[a0+32], a2=0x10046068, a3=0x0, a4=0x0.
  The `jalr` at 0x1003a7f4 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=(unknown), a1=0x10046080, a2=sym(doOptionSyncSourceInternalCallback__21ServerInfoFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1003a818 calls `addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi` with a0=[a0+96], a1=0x100460a0, a2=sym(doOptionSyncSourceExternalCallback__21ServerInfoFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1003a828 calls `baseWidget__10VkMenuItemCGv` with a0=[a0+100], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003a8a0 calls `XtVaSetValues` with a0=ret(baseWidget__10VkMenuItemCGv), a1=-0x42, a2=0x1, a3=-0x66, a4=0x0, a5=-0x46, a6=0x1, a7=-0x67.
  The `jalr` at 0x1003a8ac calls `baseWidget__10VkMenuItemCGv` with a0=[a0+96], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003a920 calls `XtVaSetValues` with a0=ret(baseWidget__10VkMenuItemCGv), a1=-0x42, a2=0x1, a3=-0x66, a4=0x0, a5=-0x46, a6=0x1, a7=-0x67.
  The `jalr` at 0x1003a9e8 calls `XtVaCreateManagedWidget` with a0=0x100460c0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x1003aa80 calls `XtVaCreateManagedWidget` with a0=0x10051758, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1003ab40 calls `XtVaCreateManagedWidget` with a0=0x100460d8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x0, a7=-0x66.
  The `jalr` at 0x1003abd8 calls `XtVaCreateManagedWidget` with a0=0x10051760, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1003ac6c calls `XtVaCreateManagedWidget` with a0=0x10051768, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1003ad48 calls `XtVaCreateManagedWidget` with a0=0x100460f0, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x1003ad70 calls `XtVaSetValues` with a0=[a0+80], a1=-0x1b3, a2=[a0+76], a3=-0xa5, a4=[a0+60], a5=0x0.
  The `jalr` at 0x1003ad90 calls `XtVaSetValues` with a0=[a0+60], a1=-0x1b3, a2=[a0+76], a3=-0xa5, a4=[a0+76], a5=0x0.
  The `jalr` at 0x1003adb0 calls `XtVaSetValues` with a0=[a0+76], a1=-0x1b3, a2=[a0+56], a3=-0xa5, a4=[a0+56], a5=0x0.
  The `jalr` at 0x1003add0 calls `XtVaSetValues` with a0=[a0+68], a1=-0x1b3, a2=[a0+52], a3=-0xa5, a4=[a0+52], a5=0x0.
  The `jalr` at 0x1003adf0 calls `XtVaSetValues` with a0=[a0+72], a1=-0x1b3, a2=[a0+48], a3=-0xa5, a4=[a0+48], a5=0x0.
  The `jalr` at 0x1003ae10 calls `XtVaSetValues` with a0=[a0+64], a1=-0x1b3, a2=[a0+44], a3=-0xa5, a4=[a0+44], a5=0x0.
  The `jalr` at 0x1003ae30 calls `XtVaSetValues` with a0=[a0+92], a1=-0xa1, a2=0x0, a3=-0x31, a4=0x0, a5=0x0.
  The `beq` at 0x1003a700 goes to 0x1003a740 when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` at 0x1003a79c goes to 0x1003a7dc when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x1003ae44 has v0 = ret(XtVaSetValues).
- `__ct__21ServerInfoFormClassUIGPCc` in `usr/bin/X11/xsetmon` at 0x1003ae50 (n32).
  It occupies 120 bytes.
  The `lw` at 0x1003ae64 loads 4 bytes from abs 0x10050be0 via base gp (0x100588fc).
  The `lw` at 0x1003ae7c loads 4 bytes from abs 0x100512d0 via base gp (0x100588fc).
  The `sw` at 0x1003ae80 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a6 (a0) with value sym(__vtbl__21ServerInfoFormClassUI).
  The `sw` at 0x1003ae88 stores 4 bytes to a0 (arg0 at entry) +0x64 via base a4 (a0) with value 0x0.
  The `sw` at 0x1003ae90 stores 4 bytes to a0 (arg0 at entry) +0x60 via base a3 (a0) with value 0x0.
  The `sw` at 0x1003ae98 stores 4 bytes to a0 (arg0 at entry) +0x74 via base a2 (a0) with value 0x0.
  The `sw` at 0x1003aea0 stores 4 bytes to a0 (arg0 at entry) +0x70 via base a1 (a0) with value 0x0.
  The `sw` at 0x1003aeac stores 4 bytes to a0 (arg0 at entry) +0x6c via base a0 (a0) with value 0x0.
  The `sw` at 0x1003aeb8 stores 4 bytes to a0 (arg0 at entry) +0x68 via base v1 (a0) with value 0x0.
  The `jalr` at 0x1003ae70 calls `__ct__11VkComponentGPCc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1003aec0 has v0 = a0.
- `input__21GammaMapEditorClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1003aed0 (n32).
  It occupies 8 bytes.
  The return at 0x1003aed0 has v0 = ?.
- `doDragRegionCallback__21GammaMapEditorClassUISGP10_WidgetRecP7_XEventPPcPUi` in `usr/bin/X11/xsetmon` at 0x1003aee0 (n32).
  It occupies 112 bytes.
  The `lw` at 0x1003aef4 loads 4 bytes from abs 0x10050ce0 via base gp (0x100588fc).
  The `lw` at 0x1003af20 loads 4 bytes from ? (base unknown) via base a3 (?).
  2 such accesses load 4 bytes from ? (base unknown) via base a0 (?), including `lw` at 0x1003af24, `lw` at 0x1003af28.
  The `jalr` at 0x1003af14 calls `XtVaGetValues` with a0=a0 at entry (arg0), a1=-0xa, a2=sp-48, a3=0x0.
  The `jalr` at 0x1003af34 calls (unknown callee) with a0=(unknown), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=(unknown).
  The return at 0x1003af48 has v0 = ret(?).
- `doOptionTTLVoltage__19ServerInfoFormClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1003b050 (n32).
  It occupies 104 bytes.
  2 such accesses load 4 bytes from abs 0x1005131c via base gp (0x100588fc), including `lw` at 0x1003b064, `lw` at 0x1003b094.
  2 such accesses load 4 bytes from sym(xsetmonApp) +0x0 via base a2 (sym(xsetmonApp)), including `lw` at 0x1003b068, `lw` at 0x1003b078.
  The `sw` at 0x1003b074 stores 4 bytes to [sym(xsetmonApp)] +0x118 via base a4 ([sym(xsetmonApp)]) with value 0x2.
  The `lw` at 0x1003b07c loads 4 bytes from abs 0x10050d78 via base gp (0x100588fc).
  The `lw` at 0x1003b080 loads 4 bytes from [sym(xsetmonApp)] +0x11c via base a2 ([sym(xsetmonApp)]).
  The `lw` at 0x1003b084 loads 4 bytes from [sym(xsetmonApp)] +0x138 via base a2 ([sym(xsetmonApp)]).
  The `lw` at 0x1003b088 loads 4 bytes from [sym(xsetmonApp)] +0x118 via base a2 ([sym(xsetmonApp)]).
  The `lw` at 0x1003b090 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84 via base a0 ([[sym(xsetmonApp)]+312]).
  The `lw` at 0x1003b098 loads 4 bytes from abs 0x10050bfc via base gp (0x100588fc).
  The `lw` at 0x1003b09c loads 4 bytes from sym(xsetmonApp) +0x0 via base a0 (sym(xsetmonApp)).
  The `lw` at 0x1003b0a4 loads 4 bytes from [sym(xsetmonApp)] +0x138 via base a0 ([sym(xsetmonApp)]).
  The `jalr` at 0x1003b08c calls `XSGIvcSetScreenInputSyncSource` with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[[sym(xsetmonApp)]+280], a3=[[sym(xsetmonApp)]+284], a4=[sym(xsetmonApp)], a5=0x1d8ac.
  The `jalr` at 0x1003b0a0 calls `XFlush` with a0=[[sym(xsetmonApp)]+312], a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x1003b0b0 has v0 = ret(XFlush).
- `doButtonQueryBestCallback__18ChannelFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x1003b0c0 (n32).
  It occupies 68 bytes.
  The `lw` at 0x1003b0c4 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a1 (a1).
  The `lw` at 0x1003b0d0 loads 4 bytes from [a1+8] +0x9c via base v1 ([a1+8]).
  The `lw` at 0x1003b0dc loads 4 bytes from [a1+8] +0xa4 via base v1 ([a1+8]).
  The `jalr` at 0x1003b0ec calls (unknown callee) with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1d83c.
  The return at 0x1003b0fc has v0 = ret(?).
- `create__12GammaClassUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003b110 (n32).
  It occupies 2468 bytes.
  The `lw` at 0x1003b128 loads 4 bytes from abs 0x10050be4 via base gp (0x100588fc).
  The `lw` at 0x1003b140 loads 4 bytes from abs 0x100512b8 via base gp (0x100588fc).
  The `lw` at 0x1003b144 loads 4 bytes from abs 0x10050be8 via base gp (0x100588fc).
  The `lw` at 0x1003b14c loads 4 bytes from abs 0x10050b0c via base gp (0x100588fc).
  The `lw` at 0x1003b158 loads 4 bytes from a0 (arg0 at entry) +0xc via base s0 (a0).
  The `lw` at 0x1003b164 loads 4 bytes from sym(xmFormWidgetClass) +0x0 via base a1 (sym(xmFormWidgetClass)).
  The `lw` at 0x1003b168 loads 4 bytes from abs 0x10050bec via base gp (0x100588fc).
  The `sw` at 0x1003b16c stores 4 bytes to a0 (arg0 at entry) +0x10 via base s0 (a0) with value ret(XtVaCreateWidget).
  The `sw` at 0x1003b178 stores 4 bytes to a0 (arg0 at entry) +0x38 via base s0 (a0) with value ret(XtVaCreateWidget).
  The `lw` at 0x1003b17c loads 4 bytes from abs 0x100509b8 via base gp (0x100588fc).
  5 such accesses load 4 bytes from a0 (arg0 at entry) +0x10 via base s0 (a0), including `lw` at 0x1003b180, `lw` at 0x1003b3e0, `lw` at 0x1003b430.
  The `lw` at 0x1003b184 loads 4 bytes from sym(xmFrameWidgetClass) +0x0 via base a1 (sym(xmFrameWidgetClass)).
  9 such accesses load 4 bytes from abs 0x10050bf0 via base gp (0x100588fc), including `lw` at 0x1003b234, `lw` at 0x1003b294, `lw` at 0x1003b2bc.
  The `sw` at 0x1003b25c stores 4 bytes to a0 (arg0 at entry) +0x34 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x1003b260 loads 4 bytes from abs 0x10050a78 via base gp (0x100588fc).
  30 such accesses load 4 bytes from abs 0x1005091c via base gp (0x100588fc), including `lw` at 0x1003b264, `lw` at 0x1003b2f0, `lw` at 0x1003b33c.
  The `lw` at 0x1003b268 loads 4 bytes from sym(xmRowColumnWidgetClass) +0x0 via base a1 (sym(xmRowColumnWidgetClass)).
  The `lw` at 0x1003b2c8 loads 4 bytes from abs 0x100509c4 via base gp (0x100588fc).
  The `sw` at 0x1003b2d4 stores 4 bytes to a0 (arg0 at entry) +0x5c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  6 such accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0 via base s1 (sym(xmLabelWidgetClass)), including `lw` at 0x1003b2e0, `lw` at 0x1003b300, `lw` at 0x1003b324.
  5 such accesses load 4 bytes from a0 (arg0 at entry) +0x5c via base s0 (a0), including `lw` at 0x1003b2e4, `lw` at 0x1003b314, `lw` at 0x1003b330.
  The `sw` at 0x1003b2fc stores 4 bytes to a0 (arg0 at entry) +0x3c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003b320 stores 4 bytes to a0 (arg0 at entry) +0x54 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003b348 stores 4 bytes to a0 (arg0 at entry) +0x40 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003b36c stores 4 bytes to a0 (arg0 at entry) +0x50 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003b394 stores 4 bytes to a0 (arg0 at entry) +0x44 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  7 such accesses load 4 bytes from abs 0x10050b4c via base gp (0x100588fc), including `lw` at 0x1003b3a4, `lw` at 0x1003b3f8, `lw` at 0x1003b400.
  The `sw` at 0x1003b3a8 stores 4 bytes to a0 (arg0 at entry) +0x4c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x1003b3cc loads 4 bytes from abs 0x10050c48 via base gp (0x100588fc).
  The `sw` at 0x1003b404 stores 4 bytes to a0 (arg0 at entry) +0x64 via base s0 (a0) with value .
  4 such accesses load 4 bytes from abs 0x10051050 via base gp (0x100588fc), including `lw` at 0x1003b424, `lw` at 0x1003b55c, `lw` at 0x1003b5c0.
  The `sw` at 0x1003b448 stores 4 bytes to a0 (arg0 at entry) +0x20 via base s0 (a0) with value .
  The `sw` at 0x1003b450 stores 4 bytes to a0 (arg0 at entry) +0x20 via base s0 (a0) with value 0x0.
  5 such accesses load 4 bytes from ? (base unknown) via base v0 (?), including `lw` at 0x1003b454, `lw` at 0x1003b58c, `lw` at 0x1003b5f0.
  10 such accesses load 4 bytes from ? (base unknown) via base a0 (?), including `lw` at 0x1003b458, `lw` at 0x1003b45c, `lw` at 0x1003b590.
  The `lw` at 0x1003b468 loads 4 bytes from abs 0x10050a58 via base gp (0x100588fc).
  The `lw` at 0x1003b470 loads 4 bytes from sym(sgSpringBoxWidgetClass) +0x0 via base a1 (sym(sgSpringBoxWidgetClass)).
  The `sw` at 0x1003b53c stores 4 bytes to a0 (arg0 at entry) +0x60 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  6 such accesses load 4 bytes from a0 (arg0 at entry) +0x60 via base s0 (a0), including `lw` at 0x1003b568, `lw` at 0x1003b5cc, `lw` at 0x1003b630.
  The `sw` at 0x1003b580 stores 4 bytes to a0 (arg0 at entry) +0x24 via base s0 (a0) with value .
  The `sw` at 0x1003b588 stores 4 bytes to a0 (arg0 at entry) +0x24 via base s0 (a0) with value 0x0.
  The `sw` at 0x1003b5e4 stores 4 bytes to a0 (arg0 at entry) +0x28 via base s0 (a0) with value .
  The `sw` at 0x1003b5ec stores 4 bytes to a0 (arg0 at entry) +0x28 via base s0 (a0) with value 0x0.
  The `sw` at 0x1003b648 stores 4 bytes to a0 (arg0 at entry) +0x2c via base s0 (a0) with value .
  The `sw` at 0x1003b650 stores 4 bytes to a0 (arg0 at entry) +0x2c via base s0 (a0) with value 0x0.
  6 such accesses load 4 bytes from abs 0x10050bd8 via base gp (0x100588fc), including `lw` at 0x1003b668, `lw` at 0x1003b6d8, `lw` at 0x1003b748.
  The `lw` at 0x1003b670 loads 4 bytes from a0 (arg0 at entry) +0x24 via base s0 (a0).
  7 such accesses load 4 bytes from abs 0x10050bdc via base gp (0x100588fc), including `lw` at 0x1003b6b0, `lw` at 0x1003b720, `lw` at 0x1003b790.
  The `lw` at 0x1003b6e0 loads 4 bytes from a0 (arg0 at entry) +0x28 via base s0 (a0).
  The `lw` at 0x1003b750 loads 4 bytes from a0 (arg0 at entry) +0x2c via base s0 (a0).
  The `lw` at 0x1003b7d8 loads 4 bytes from abs 0x100511d0 via base gp (0x100588fc).
  The `sw` at 0x1003b7fc stores 4 bytes to a0 (arg0 at entry) +0x30 via base s0 (a0) with value .
  The `sw` at 0x1003b804 stores 4 bytes to a0 (arg0 at entry) +0x30 via base s0 (a0) with value 0x0.
  3 such accesses load 4 bytes from abs 0x10050c50 via base gp (0x100588fc), including `lw` at 0x1003b820, `lw` at 0x1003b82c, `lw` at 0x1003b874.
  3 such accesses load 4 bytes from a0 (arg0 at entry) +0x64 via base s0 (a0), including `lw` at 0x1003b828, `lw` at 0x1003b838, `lw` at 0x1003b880.
  2 such accesses load 4 bytes from a0 (arg0 at entry) +0x20 via base s0 (a0), including `lw` at 0x1003b848, `lw` at 0x1003b930.
  The `lw` at 0x1003b870 loads 4 bytes from a0 (arg0 at entry) +0x34 via base s0 (a0).
  The `lw` at 0x1003ba04 loads 4 bytes from a0 (arg0 at entry) +0x30 via base s0 (a0).
  The `lw` at 0x1003ba94 loads 4 bytes from abs 0x10050f00 via base gp (0x100588fc).
  The `jalr` at 0x1003b13c calls `setDefaultResources__11VkComponentGP10_WidgetRecPCPc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultGammaClassUIResources__12GammaClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x1003b160 calls `XtVaCreateWidget` with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=-0xd1, a4=0x1, a5=0x0.
  The `jalr` at 0x1003b174 calls `installDestroyHandler__11VkComponentGv` with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003b254 calls `XtVaCreateManagedWidget` with a0=0x10051680, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x1003b2b4 calls `XtVaCreateManagedWidget` with a0=0x10045450, a1=[sym(xmRowColumnWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0xb, a4=0x2, a5=-0xc1, a6=0x2, a7=-0x41.
  The `jalr` at 0x1003b2dc calls `XtVaCreateManagedWidget` with a0=0x10051688, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x1003b304 calls `XtVaCreateManagedWidget` with a0=0x10045460, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x1003b328 calls `XtVaCreateManagedWidget` with a0=0x10051690, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x1003b350 calls `XtVaCreateManagedWidget` with a0=0x10045470, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x1003b374 calls `XtVaCreateManagedWidget` with a0=0x10051698, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x1003b39c calls `XtVaCreateManagedWidget` with a0=0x10045488, a1=[sym(xmLabelWidgetClass)], a2=[a0+92], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x1003b3b0 calls `__nw__GUi` with a0=0x4c, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003b3e4 calls `__ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv` with a0=ret(__nw__GUi), a1=[a0+16], a2=0x100454a0, a3=0x0, a4=0x0.
  The `jalr` at 0x1003b40c calls `__nw__GUi` with a0=0xc4, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1003b434 calls `__ct__19GammaMapEditorClassGPCcP10_WidgetRec [0x1002ec70]` with a0=ret(__nw__GUi), a1=0x100454b0, a2=[a0+16], a3=0x1.
  The `jalr` at 0x1003b460 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003b530 calls `XtVaCreateManagedWidget` with a0=0x100454c8, a1=[sym(sgSpringBoxWidgetClass)], a2=[a0+16], a3=0x100454d8, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1003b544 calls `__nw__GUi` with a0=0xc4, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1003b56c calls `__ct__19GammaMapEditorClassGPCcP10_WidgetRec [0x1002ec70]` with a0=ret(__nw__GUi), a1=0x100454e8, a2=[a0+96], a3=(unknown).
  The `jalr` at 0x1003b598 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003b5a8 calls `__nw__GUi` with a0=0xc4, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1003b5d0 calls `__ct__19GammaMapEditorClassGPCcP10_WidgetRec [0x1002ec70]` with a0=ret(__nw__GUi), a1=0x10045500, a2=[a0+96], a3=(unknown).
  The `jalr` at 0x1003b5fc calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003b60c calls `__nw__GUi` with a0=0xc4, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1003b634 calls `__ct__19GammaMapEditorClassGPCcP10_WidgetRec [0x1002ec70]` with a0=ret(__nw__GUi), a1=0x10045518, a2=[a0+96], a3=(unknown).
  The `jalr` at 0x1003b660 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003b66c calls `baseWidget__11VkComponentCGv` with a0=[a0+36], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003b6d0 calls `XtVaSetValues` with a0=ret(baseWidget__11VkComponentCGv), a1=0x10045530, a2=0x32, a3=0x10045540, a4=0x19, a5=0x10045550, a6=0x32, a7=0x10045560.
  The `jalr` at 0x1003b6dc calls `baseWidget__11VkComponentCGv` with a0=[a0+40], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003b740 calls `XtVaSetValues` with a0=ret(baseWidget__11VkComponentCGv), a1=0x10045530, a2=0x19, a3=0x10045540, a4=0x19, a5=0x10045550, a6=0x32, a7=0x10045560.
  The `jalr` at 0x1003b74c calls `baseWidget__11VkComponentCGv` with a0=[a0+44], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003b7b0 calls `XtVaSetValues` with a0=ret(baseWidget__11VkComponentCGv), a1=0x10045530, a2=0x19, a3=0x10045540, a4=0x32, a5=0x10045550, a6=0x32, a7=0x10045560.
  The `jalr` at 0x1003b7c0 calls `__nw__GUi` with a0=0x44, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1003b7e8 calls `__ct__20GammaAssignmentClassGPCcP10_WidgetRec [0x1003ea40]` with a0=ret(__nw__GUi), a1=0x10045598, a2=[a0+16], a3=(unknown).
  The `jalr` at 0x1003b818 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003b824 calls `baseWidget__10VkMenuItemCGv` with a0=[a0+100], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003b834 calls `baseWidget__10VkMenuItemCGv` with a0=[a0+100], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003b844 calls `baseWidget__11VkComponentCGv` with a0=[a0+32], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003b86c calls `XtVaSetValues` with a0=[a0+52], a1=-0x76, a2=ret(baseWidget__10VkMenuItemCGv), a3=-0xa5, a5=-0x116, a6=ret(baseWidget__11VkComponentCGv), a7=0x0.
  The `jalr` at 0x1003b87c calls `baseWidget__10VkMenuItemCGv` with a0=[a0+100], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003b920 calls `XtVaSetValues` with a0=ret(baseWidget__10VkMenuItemCGv), a1=-0x42, a2=0x3, a3=-0x66, a4=0x0, a5=-0x46, a6=0x1, a7=-0x67.
  The `jalr` at 0x1003b92c calls `baseWidget__11VkComponentCGv` with a0=[a0+32], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003b9f4 calls `XtVaSetValues` with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x3, a3=-0x66, a4=0x1, a5=-0x46, a6=0x5, a7=-0x67.
  The `jalr` at 0x1003ba00 calls `baseWidget__11VkComponentCGv` with a0=[a0+48], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003ba8c calls `XtVaSetValues` with a0=ret(baseWidget__11VkComponentCGv), a1=-0x42, a2=0x3, a3=-0x66, a4=0x1, a5=-0x46, a6=0x5, a7=-0x67.
  The `jal` at 0x1003ba98 calls `populateMapSelectorMenu__12GammaClassUIGv [0x10025700]` with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x1003b3bc goes to 0x1003b3fc when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` at 0x1003b414 goes to 0x1003b44c when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` at 0x1003b550 goes to 0x1003b584 when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` at 0x1003b5b4 goes to 0x1003b5e8 when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` at 0x1003b618 goes to 0x1003b64c when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` at 0x1003b7c8 goes to 0x1003b800 when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x1003baac has v0 = ret(populateMapSelectorMenu__12GammaClassUIGv).
- `__ct__18ChannelFormClassUIGPCc` in `usr/bin/X11/xsetmon` at 0x1003bac0 (n32).
  It occupies 96 bytes.
  The `lw` at 0x1003bad4 loads 4 bytes from abs 0x10050be0 via base gp (0x100588fc).
  The `lw` at 0x1003baec loads 4 bytes from abs 0x10051274 via base gp (0x100588fc).
  The `sw` at 0x1003baf0 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a3 (a0) with value sym(__vtbl__18ChannelFormClassUI).
  The `sw` at 0x1003baf8 stores 4 bytes to a0 (arg0 at entry) +0xd0 via base a1 (a0) with value 0x0.
  The `sw` at 0x1003bb04 stores 4 bytes to a0 (arg0 at entry) +0xc0 via base a0 (a0) with value 0x0.
  The `sw` at 0x1003bb10 stores 4 bytes to a0 (arg0 at entry) +0xc4 via base v1 (a0) with value 0x0.
  The `jalr` at 0x1003bae0 calls `__ct__11VkComponentGPCc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1003bb18 has v0 = a0.
- `create__21GammaMapEditorClassUIGP10_WidgetRecPCc` in `usr/bin/X11/xsetmon` at 0x1003bb20 (n32).
  It occupies 1328 bytes.
  The `lw` at 0x1003bb38 loads 4 bytes from abs 0x10050be4 via base gp (0x100588fc).
  The `lw` at 0x1003bb50 loads 4 bytes from abs 0x100512c4 via base gp (0x100588fc).
  The `lw` at 0x1003bb58 loads 4 bytes from abs 0x10050be8 via base gp (0x100588fc).
  The `lw` at 0x1003bb64 loads 4 bytes from abs 0x10050b0c via base gp (0x100588fc).
  The `lw` at 0x1003bb70 loads 4 bytes from a0 (arg0 at entry) +0xc via base s0 (a0).
  The `lw` at 0x1003bb7c loads 4 bytes from sym(xmFormWidgetClass) +0x0 via base a1 (sym(xmFormWidgetClass)).
  The `lw` at 0x1003bb80 loads 4 bytes from abs 0x10050bec via base gp (0x100588fc).
  The `sw` at 0x1003bb88 stores 4 bytes to a0 (arg0 at entry) +0x10 via base s0 (a0) with value ret(XtVaCreateWidget).
  The `sw` at 0x1003bb94 stores 4 bytes to a0 (arg0 at entry) +0x28 via base s0 (a0) with value ret(XtVaCreateWidget).
  The `lw` at 0x1003bb98 loads 4 bytes from abs 0x10050a78 via base gp (0x100588fc).
  4 such accesses load 4 bytes from a0 (arg0 at entry) +0x10 via base s0 (a0), including `lw` at 0x1003bb9c, `lw` at 0x1003bd24, `lw` at 0x1003bdf4.
  The `lw` at 0x1003bba0 loads 4 bytes from sym(xmRowColumnWidgetClass) +0x0 via base a1 (sym(xmRowColumnWidgetClass)).
  7 such accesses load 4 bytes from abs 0x1005091c via base gp (0x100588fc), including `lw` at 0x1003bc54, `lw` at 0x1003bc8c, `lw` at 0x1003bcdc.
  6 such accesses load 4 bytes from abs 0x10050bf0 via base gp (0x100588fc), including `lw` at 0x1003bc64, `lw` at 0x1003bc98, `lw` at 0x1003bce0.
  2 such accesses load 4 bytes from abs 0x10050a68 via base gp (0x100588fc), including `lw` at 0x1003bca4, `lw` at 0x1003bce8.
  The `sw` at 0x1003bcb0 stores 4 bytes to a0 (arg0 at entry) +0x2c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  2 such accesses load 4 bytes from sym(xmToggleButtonWidgetClass) +0x0 via base a1 (sym(xmToggleButtonWidgetClass)), including `lw` at 0x1003bcb4, `lw` at 0x1003bcf8.
  5 such accesses load 4 bytes from abs 0x10050c44 via base gp (0x100588fc), including `lw` at 0x1003bcc0, `lw` at 0x1003bd04, `lw` at 0x1003bf8c.
  The `lw` at 0x1003bccc loads 4 bytes from abs 0x1005106c via base gp (0x100588fc).
  The `sw` at 0x1003bcd8 stores 4 bytes to a0 (arg0 at entry) +0x38 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  2 such accesses load 4 bytes from a0 (arg0 at entry) +0x2c via base s0 (a0), including `lw` at 0x1003bcf4, `lw` at 0x1003bee4.
  The `lw` at 0x1003bd10 loads 4 bytes from abs 0x10050f7c via base gp (0x100588fc).
  The `sw` at 0x1003bd1c stores 4 bytes to a0 (arg0 at entry) +0x34 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x1003bd20 loads 4 bytes from abs 0x10050a58 via base gp (0x100588fc).
  The `lw` at 0x1003bd28 loads 4 bytes from sym(sgSpringBoxWidgetClass) +0x0 via base a1 (sym(sgSpringBoxWidgetClass)).
  The `lw` at 0x1003bdf8 loads 4 bytes from abs 0x100509c4 via base gp (0x100588fc).
  The `sw` at 0x1003bdfc stores 4 bytes to a0 (arg0 at entry) +0x30 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x1003be00 loads 4 bytes from sym(xmLabelWidgetClass) +0x0 via base a1 (sym(xmLabelWidgetClass)).
  The `lw` at 0x1003beb0 loads 4 bytes from abs 0x10050a7c via base gp (0x100588fc).
  The `sw` at 0x1003beb4 stores 4 bytes to a0 (arg0 at entry) +0x20 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x1003beb8 loads 4 bytes from sym(xmDrawingAreaWidgetClass) +0x0 via base a1 (sym(xmDrawingAreaWidgetClass)).
  The `lw` at 0x1003bf98 loads 4 bytes from abs 0x1005123c via base gp (0x100588fc).
  The `sw` at 0x1003bfa4 stores 4 bytes to a0 (arg0 at entry) +0x24 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x1003bfb0 loads 4 bytes from abs 0x10051074 via base gp (0x100588fc).
  3 such accesses load 4 bytes from a0 (arg0 at entry) +0x24 via base s0 (a0), including `lw` at 0x1003bfbc, `lw` at 0x1003bfd4, `lw` at 0x1003c018.
  The `lw` at 0x1003bfc8 loads 4 bytes from abs 0x1005100c via base gp (0x100588fc).
  The `lw` at 0x1003bfd8 loads 4 bytes from abs 0x1005119c via base gp (0x100588fc).
  The `lw` at 0x1003bfe4 loads 4 bytes from abs 0x10050c1c via base gp (0x100588fc).
  The `lw` at 0x1003bfec loads 4 bytes from a0 (arg0 at entry) +0x30 via base s0 (a0).
  The `lw` at 0x1003bff0 loads 4 bytes from abs 0x10050d54 via base gp (0x100588fc).
  The `lw` at 0x1003bff8 loads 4 bytes from abs 0x10051bf8 via base gp (0x100588fc).
  The `lw` at 0x1003bffc loads 4 bytes from abs 0x10050bdc via base gp (0x100588fc).
  The `lw` at 0x1003c01c loads 4 bytes from abs 0x10050950 via base gp (0x100588fc).
  The `lw` at 0x1003c020 loads 4 bytes from abs 0x1005131c via base gp (0x100588fc).
  The `lw` at 0x1003c024 loads 4 bytes from abs 0x10050d58 via base gp (0x100588fc).
  The `lw` at 0x1003c028 loads 4 bytes from sym(xsetmonApp) +0x0 via base a0 (sym(xsetmonApp)).
  The `lw` at 0x1003c03c loads 4 bytes from [sym(xsetmonApp)] +0x70 via base a0 ([sym(xsetmonApp)]).
  The `jalr` at 0x1003bb4c calls `setDefaultResources__11VkComponentGP10_WidgetRecPCPc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultGammaMapEditorClassUIResources__21GammaMapEditorClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x1003bb78 calls `XtVaCreateWidget` with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=-0xd1, a4=0x1, a5=-0x2e3, a6=0x3e8, a7=0x0.
  The `jalr` at 0x1003bb90 calls `installDestroyHandler__11VkComponentGv` with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003bc84 calls `XtVaCreateManagedWidget` with a0=0x10045b08, a1=[sym(xmRowColumnWidgetClass)], a2=[a0+16], a3=-0xb, a4=0x2, a5=-0xc1, a6=0x2, a7=-0x39.
  The `jalr` at 0x1003bcb8 calls `XtVaCreateManagedWidget` with a0=0x10045b18, a1=[sym(xmToggleButtonWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=-0x38, a6=0x1, a7=0x0.
  The `jalr` at 0x1003bcd4 calls `XtAddCallback` with a0=ret(XtVaCreateManagedWidget), a1=-0x40, a2=sym(setToggleGammaScalarCallback__21GammaMapEditorClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003bcfc calls `XtVaCreateManagedWidget` with a0=0x10045b30, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+44], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x1003bd18 calls `XtAddCallback` with a0=ret(XtVaCreateManagedWidget), a1=-0x40, a2=sym(setToggleGammaPointsCallback__21GammaMapEditorClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003bdec calls `XtVaCreateManagedWidget` with a0=0x10045b48, a1=[sym(sgSpringBoxWidgetClass)], a2=[a0+16], a3=0x10045b60, a4=0x0, a5=-0x42, a6=0x0, a7=-0x66.
  The `jalr` at 0x1003bea4 calls `XtVaCreateManagedWidget` with a0=0x10045b70, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1003bf84 calls `XtVaCreateManagedWidget` with a0=0x10045b80, a1=[sym(xmDrawingAreaWidgetClass)], a2=[a0+16], a3=-0x42, a4=0x3, a5=-0x66, a6=0x3, a7=-0x46.
  The `jalr` at 0x1003bfa0 calls `XtAddCallback` with a0=ret(XtVaCreateManagedWidget), a1=-0x160, a2=sym(resizeCallback__21GammaMapEditorClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003bfb8 calls `XtAddCallback` with a0=[a0+36], a1=-0xe1, a2=sym(exposeCallback__21GammaMapEditorClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003bfd0 calls `XtAddCallback` with a0=[a0+36], a1=-0x2cf, a2=sym(inputCallback__21GammaMapEditorClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jal` at 0x1003bfdc calls `allocGC__21GammaMapEditorClassUIGv [0x1003cd60]` with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003bfe8 calls `XtUnmanageChild` with a0=[a0+48], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003bff4 calls `XtParseTranslationTable` with a0=[0x10051bf8], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003c014 calls `XtVaSetValues` with a0=[a0+36], a1=-0xa3, a2=ret(XtParseTranslationTable), a3=-0xa, a4=a0 at entry (arg0), a5=0x0.
  The `jalr` at 0x1003c038 calls `XtAppAddActions` with a0=[[sym(xsetmonApp)]+112], a1=0x1004de30, a2=0x3, a3=(unknown).
  The return at 0x1003c048 has v0 = ret(XtAppAddActions).
- `__ct__21SetmonMasterFormClassGPCc` in `usr/bin/X11/xsetmon` at 0x1003c050 (n32).
  It occupies 88 bytes.
  The `lw` at 0x1003c064 loads 4 bytes from abs 0x10051244 via base gp (0x100588fc).
  The `lw` at 0x1003c078 loads 4 bytes from abs 0x10051204 via base gp (0x100588fc).
  The `lw` at 0x1003c080 loads 4 bytes from abs 0x100512d8 via base gp (0x100588fc).
  The `sw` at 0x1003c084 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a2 (a0) with value sym(__vtbl__21SetmonMasterFormClass).
  The `lw` at 0x1003c090 loads 4 bytes from a0 (arg0 at entry) +0x28 via base a0 (a0).
  The `jal` at 0x1003c070 calls `__ct__23SetmonMasterFormClassUIGPCc [0x10043100]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003c08c calls `ClearFormat__19StatisticsFormClassGv [0x10041c30]` with a0=[a0+40], a1=sym(__vtbl__21SetmonMasterFormClass), a2=a0 at entry (arg0), a3=(unknown).
  The return at 0x1003c0a0 has v0 = a0.
- `__dt__21SetmonMasterFormClassGv` in `usr/bin/X11/xsetmon` at 0x1003ca00 (n32).
  It occupies 108 bytes.
  The `lw` at 0x1003ca28 loads 4 bytes from abs 0x10050fa0 via base gp (0x100588fc).
  The `lw` at 0x1003ca2c loads 4 bytes from abs 0x100512d8 via base gp (0x100588fc).
  The `sw` at 0x1003ca30 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__21SetmonMasterFormClass).
  The `lw` at 0x1003ca50 loads 4 bytes from abs 0x100509ec via base gp (0x100588fc).
  The `jal` at 0x1003ca38 calls `__dt__23SetmonMasterFormClassUIGv [0x1002a2f0]` with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003ca54 calls `__dl__GPv` with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x1003ca20 goes to 0x1003ca5c when a0 == 0 and falls through when a0 != 0.
  The `beq` at 0x1003ca48 goes to 0x1003ca60 when (v1(=a1) & 0x1) == 0 and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x1003ca64 has v0 = ?.
- `RegisterStatisticsFormClassInterface__19StatisticsFormClassSGv` in `usr/bin/X11/xsetmon` at 0x1003cba0 (n32).
  It occupies 24 bytes.
  The `lw` at 0x1003cbac loads 4 bytes from abs 0x10050950 via base at (0x100588fc).
  The return at 0x1003cbb0 has v0 = 0x1004e840.
- `doArmScalarDrag__21GammaMapEditorClassUIGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x1003cbc0 (n32).
  It occupies 8 bytes.
  The return at 0x1003cbc0 has v0 = ?.
- `setToggleGammaScalar__19GammaMapEditorClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1003cc50 (n32).
  It occupies 64 bytes.
  The `lw` at 0x1003cc50 loads 4 bytes from a2 (arg2 at entry) +0x8 via base a2 (a2).
  The `lw` at 0x1003cc70 loads 4 bytes from abs 0x10050fc4 via base gp (0x100588fc).
  The `sw` at 0x1003cc7c stores 4 bytes to a0 (arg0 at entry) +0xc0 via base a0 (a0) with value 0x0.
  The `jal` at 0x1003cc78 calls `redraw__19GammaMapEditorClassCGi [0x1002ad90]` with a0=a0 at entry (arg0), a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` at 0x1003cc68 goes to 0x1003cc80 when at(=[a2+8]) == 0 and falls through when at(=[a2+8]) != 0.
  The return at 0x1003cc88 has v0 = ?.
- `__ct__18GainControlClassUIGPCc` in `usr/bin/X11/xsetmon` at 0x1003cc90 (n32).
  It occupies 72 bytes.
  The `lw` at 0x1003cca4 loads 4 bytes from abs 0x10050be0 via base gp (0x100588fc).
  The `lw` at 0x1003ccb8 loads 4 bytes from abs 0x1005129c via base gp (0x100588fc).
  The `sw` at 0x1003ccc8 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__18GainControlClassUI).
  The `jalr` at 0x1003ccb0 calls `__ct__11VkComponentGPCc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1003ccd0 has v0 = a0.
- `CreateChannelFormClass__16ChannelFormClassSGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003cce0 (n32).
  It occupies 128 bytes.
  The `lw` at 0x1003ccf8 loads 4 bytes from abs 0x10050b4c via base gp (0x100588fc).
  The `lw` at 0x1003cd2c loads 4 bytes from abs 0x10051120 via base gp (0x100588fc).
  The `jalr` at 0x1003cd08 calls `__nw__GUi` with a0=0x108, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003cd30 calls `__ct__16ChannelFormClassGPCcP10_WidgetRec [0x10037ad0]` with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=(unknown).
  The `beq` at 0x1003cd14 goes to 0x1003cd4c when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x1003cd44 has v0 = ?.
  The return at 0x1003cd58 has v0 = 0x0.
- `allocGC__21GammaMapEditorClassUIGv` in `usr/bin/X11/xsetmon` at 0x1003cd60 (n32).
  It occupies 544 bytes.
  5 such accesses load 4 bytes from abs 0x10050d5c via base gp (0x100588fc), including `lw` at 0x1003cd98, `lw` at 0x1003cdd8, `lw` at 0x1003ce3c.
  The `lw` at 0x1003cdb4 loads 4 bytes from a0 (arg0 at entry) +0x24 via base a0 (a0).
  5 such accesses load 4 bytes from abs 0x10050d60 via base gp (0x100588fc), including `lw` at 0x1003cdb8, `lw` at 0x1003ce20, `lw` at 0x1003ce84.
  13 such accesses load 4 bytes from a0 (arg0 at entry) +0x24 via base s0 (a0), including `lw` at 0x1003cdd0, `lw` at 0x1003cdf4, `lw` at 0x1003ce14.
  The `sw` at 0x1003cdd4 stores 4 bytes to a0 (arg0 at entry) +0x3c via base s0 (a0) with value ret(XtGetGC).
  4 such accesses load 4 bytes from abs 0x10050d64 via base gp (0x100588fc), including `lw` at 0x1003cdfc, `lw` at 0x1003ce60, `lw` at 0x1003cec4.
  4 such accesses load 4 bytes from abs 0x1005091c via base gp (0x100588fc), including `lw` at 0x1003ce04, `lw` at 0x1003ce68, `lw` at 0x1003cecc.
  The `sw` at 0x1003ce38 stores 4 bytes to a0 (arg0 at entry) +0x40 via base s0 (a0) with value ret(XtGetGC).
  The `sw` at 0x1003ce9c stores 4 bytes to a0 (arg0 at entry) +0x44 via base s0 (a0) with value ret(XtGetGC).
  The `sw` at 0x1003cf00 stores 4 bytes to a0 (arg0 at entry) +0x48 via base s0 (a0) with value ret(XtGetGC).
  The `sw` at 0x1003cf70 stores 4 bytes to a0 (arg0 at entry) +0x4c via base s0 (a0) with value ret(XtGetGC).
  The `jalr` at 0x1003cdb0 calls `XtGetValues` with a0=[a0+36], a1=sp-624, a2=0x2, a3=a3 at entry (arg3).
  The `jalr` at 0x1003cdcc calls `XtGetGC` with a0=[a0+36], a1=0x3c, a2=sp-720, a3=(unknown).
  The `jalr` at 0x1003cdf0 calls `XtGetValues` with a0=[a0+36], a1=sp-584, a2=0x1, a3=(unknown).
  The `jalr` at 0x1003ce18 calls `VkGetResource__GP10_WidgetRecPCcN32` with a0=[a0+36], a1=0x10045bb0, a2=-0xd7, a3=-0x4a, a4=0x100516e8.
  The `jalr` at 0x1003ce30 calls `XtGetGC` with a0=[a0+36], a1=0x3c, a2=sp-544, a3=(unknown).
  The `jalr` at 0x1003ce54 calls `XtGetValues` with a0=[a0+36], a1=sp-448, a2=0x1, a3=sp-396.
  The `jalr` at 0x1003ce7c calls `VkGetResource__GP10_WidgetRecPCcN32` with a0=[a0+36], a1=0x10045bc0, a2=-0xd7, a3=-0x4a, a4=0x100516e8.
  The `jalr` at 0x1003ce94 calls `XtGetGC` with a0=[a0+36], a1=0x3c, a2=sp-408, a3=(unknown).
  The `jalr` at 0x1003ceb8 calls `XtGetValues` with a0=[a0+36], a1=sp-312, a2=0x1, a3=sp-260.
  The `jalr` at 0x1003cee0 calls `VkGetResource__GP10_WidgetRecPCcN32` with a0=[a0+36], a1=0x10045bd0, a2=-0xd7, a3=-0x4a, a4=0x100516e8.
  The `jalr` at 0x1003cef8 calls `XtGetGC` with a0=[a0+36], a1=0x3c, a2=sp-272, a3=(unknown).
  The `jalr` at 0x1003cf1c calls `XtGetValues` with a0=[a0+36], a1=sp-176, a2=0x1, a3=sp-124.
  The `jalr` at 0x1003cf48 calls `VkGetResource__GP10_WidgetRecPCcN32` with a0=[a0+36], a1=0x10045be0, a2=-0xd7, a3=-0x4a, a4=0x100516e8.
  The `jalr` at 0x1003cf60 calls `XtGetGC` with a0=[a0+36], a1=0x3c, a2=sp-136, a3=(unknown).
  The return at 0x1003cf78 has v0 = ret(XtGetGC).
- `__ct__13ErrorMessagerGv` in `usr/bin/X11/xsetmon` at 0x1003cf80 (n32).
  It occupies 36 bytes.
  The `lw` at 0x1003cf8c loads 4 bytes from abs 0x1005130c via base at (0x100588fc).
  The `lw` at 0x1003cf90 loads 4 bytes from abs 0x10051d48 via base at (0x100588fc).
  The `sw` at 0x1003cf94 stores 4 bytes to a0 (arg0 at entry) +0x0 via base a0 (a0) with value [0x10051d48].
  The `sw` at 0x1003cfa0 stores 4 bytes to a0 (arg0 at entry) +0x4 via base a0 (a0) with value sym(__vtbl__13ErrorMessager).
  The return at 0x1003cf9c has v0 = a0.
- `DisplayfbDepth__19StatisticsFormClassGi` in `usr/bin/X11/xsetmon` at 0x1003cfb0 (n32).
  It occupies 108 bytes.
  The `lw` at 0x1003cfc4 loads 4 bytes from abs 0x1005131c via base gp (0x100588fc).
  2 such accesses load 4 bytes from sym(xsetmonApp) +0x0 via base at (sym(xsetmonApp)), including `lw` at 0x1003cfc8, `lw` at 0x1003cff8.
  The `lw` at 0x1003cfcc loads 4 bytes from [sym(xsetmonApp)] +0xf4 via base v0 ([sym(xsetmonApp)]).
  The `lwc1` at 0x1003cfdc loads 4 bytes from [sym(xsetmonApp)] +0x100 via base v0 ([sym(xsetmonApp)]).
  The `lw` at 0x1003cff0 loads 4 bytes from abs 0x10050fe8 via base gp (0x100588fc).
  The `sw` at 0x1003cff4 stores 4 bytes to [sym(xsetmonApp)] +0xf4 via base v0 ([sym(xsetmonApp)]) with value a1.
  The `swc1` at 0x1003d008 stores 4 bytes to [sym(xsetmonApp)] +0x100 via base at ([sym(xsetmonApp)]) with value .
  The `jal` at 0x1003d004 calls `updateMemoUsageOdsy__19StatisticsFormClassGv [0x1002bd50]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1b94c, a3=a3 at entry (arg3).
  The return at 0x1003d014 has v0 = ret(updateMemoUsageOdsy__19StatisticsFormClassGv).
- `DisplayFormat__21SetmonMasterFormClassGPC21XSGIvcVideoFormatInfo` in `usr/bin/X11/xsetmon` at 0x1003d7c0 (n32).
  It occupies 52 bytes.
  The `lw` at 0x1003d7d4 loads 4 bytes from abs 0x10050eb8 via base gp (0x100588fc).
  The `lw` at 0x1003d7e0 loads 4 bytes from a0 (arg0 at entry) +0x28 via base a0 (a0).
  The `jal` at 0x1003d7dc calls `DisplayFormat__19StatisticsFormClassGPC21XSGIvcVideoFormatInfo [0x10023f10]` with a0=[a0+40], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1003d7ec has v0 = ret(DisplayFormat__19StatisticsFormClassGPC21XSGIvcVideoFormatInfo).
- `ClearaccumBufType__19StatisticsFormClassGv` in `usr/bin/X11/xsetmon` at 0x1003d800 (n32).
  It occupies 192 bytes.
  5 such accesses load 4 bytes from abs 0x10050e64 via base gp (0x100588fc), including `lw` at 0x1003d814, `lw` at 0x1003d83c, `lw` at 0x1003d858.
  The `lw` at 0x1003d828 loads 4 bytes from a0 (arg0 at entry) +0x104 via base a0 (a0).
  5 such accesses load 4 bytes from abs 0x10050e80 via base gp (0x100588fc), including `lw` at 0x1003d82c, `lw` at 0x1003d848, `lw` at 0x1003d864.
  5 such accesses load 4 bytes from abs 0x10051cbc via base gp (0x100588fc), including `lw` at 0x1003d838, `lw` at 0x1003d854, `lw` at 0x1003d870.
  The `lw` at 0x1003d844 loads 4 bytes from a0 (arg0 at entry) +0x114 via base s0 (a0).
  The `lw` at 0x1003d860 loads 4 bytes from a0 (arg0 at entry) +0x10c via base s0 (a0).
  The `lw` at 0x1003d87c loads 4 bytes from a0 (arg0 at entry) +0x11c via base s0 (a0).
  The `lw` at 0x1003d898 loads 4 bytes from a0 (arg0 at entry) +0x124 via base s0 (a0).
  The `jal` at 0x1003d824 calls `EZ__GP10_WidgetRec [0x1001e910]` with a0=[a0+260], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003d834 calls `__as__9EZWrapperGPCc [0x100201d0]` with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cbc], a2=(unknown), a3=(unknown).
  The `jal` at 0x1003d840 calls `EZ__GP10_WidgetRec [0x1001e910]` with a0=[a0+276], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1003d850 calls `__as__9EZWrapperGPCc [0x100201d0]` with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cbc], a2=(unknown), a3=(unknown).
  The `jal` at 0x1003d85c calls `EZ__GP10_WidgetRec [0x1001e910]` with a0=[a0+268], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1003d86c calls `__as__9EZWrapperGPCc [0x100201d0]` with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cbc], a2=(unknown), a3=(unknown).
  The `jal` at 0x1003d878 calls `EZ__GP10_WidgetRec [0x1001e910]` with a0=[a0+284], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1003d888 calls `__as__9EZWrapperGPCc [0x100201d0]` with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cbc], a2=(unknown), a3=(unknown).
  The `jal` at 0x1003d894 calls `EZ__GP10_WidgetRec [0x1001e910]` with a0=[a0+292], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1003d8a8 calls `__as__9EZWrapperGPCc [0x100201d0]` with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cbc], a2=(unknown), a3=(unknown).
  The return at 0x1003d8b8 has v0 = ret(__as__9EZWrapperGPCc).
- `doOptionVideoVoltageCallback__21ServerInfoFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x1003d8c0 (n32).
  It occupies 68 bytes.
  The `lw` at 0x1003d8c4 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a1 (a1).
  The `lw` at 0x1003d8d0 loads 4 bytes from [a1+8] +0xc0 via base v1 ([a1+8]).
  The `lw` at 0x1003d8dc loads 4 bytes from [a1+8] +0xc8 via base v1 ([a1+8]).
  The `jalr` at 0x1003d8ec calls (unknown callee) with a0=([[a1+8]+192] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1b03c.
  The return at 0x1003d8fc has v0 = ret(?).
- `RegisterCombinationContentsListClassInterface__28CombinationContentsListClassSGv` in `usr/bin/X11/xsetmon` at 0x1003d910 (n32).
  It occupies 24 bytes.
  The `lw` at 0x1003d91c loads 4 bytes from abs 0x10050950 via base at (0x100588fc).
  The return at 0x1003d920 has v0 = 0x1004ccd0.
- `createDialog__16AboutDialogClassGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003d930 (n32).
  It occupies 224 bytes.
  The `lw` at 0x1003d944 loads 4 bytes from abs 0x10050bd4 via base gp (0x100588fc).
  The `lw` at 0x1003d960 loads 4 bytes from abs 0x10050b4c via base gp (0x100588fc).
  The `lw` at 0x1003d988 loads 4 bytes from abs 0x10050f70 via base gp (0x100588fc).
  The `lw` at 0x1003d98c loads 4 bytes from abs 0x1005091c via base gp (0x100588fc).
  2 such accesses load 4 bytes from abs 0x10050bd8 via base gp (0x100588fc), including `lw` at 0x1003d9ac, `lw` at 0x1003d9b0.
  The `sw` at 0x1003d9b8 stores 4 bytes to a0 (arg0 at entry) +0x54 via base s0 (a0) with value .
  The `lw` at 0x1003d9c0 loads 4 bytes from abs 0x10050bdc via base gp (0x100588fc).
  The `lw` at 0x1003d9dc loads 4 bytes from a0 (arg0 at entry) +0x54 via base s0 (a0).
  The `lw` at 0x1003d9e0 loads 4 bytes from [a0+84] +0x8 via base a1 ([a0+84]).
  The `lw` at 0x1003d9e4 loads 4 bytes from [[a0+84]+8] +0x2c via base a0 ([[a0+84]+8]).
  The `lw` at 0x1003d9e8 loads 4 bytes from [[a0+84]+8] +0x24 via base a0 ([[a0+84]+8]).
  The `jalr` at 0x1003d958 calls `createDialog__15VkGenericDialogGP10_WidgetRec` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1003d96c calls `__nw__GUi` with a0=0x30, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1003d998 calls `__ct__21AboutXsetmonFormClassGPCcP10_WidgetRec [0x10028cb0]` with a0=ret(__nw__GUi), a1=0x10043e98, a2=ret(createDialog__15VkGenericDialogGP10_WidgetRec), a3=(unknown).
  The `jalr` at 0x1003d9b4 calls `baseWidget__11VkComponentCGv` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003d9d4 calls `XtVaSetValues` with a0=ret(baseWidget__11VkComponentCGv), a1=-0x17, a2=0x1b8, a3=-0x16, a4=0xaa, a5=0x0.
  The `jalr` at 0x1003d9ec calls (unknown callee) with a0=([[[a0+84]+8]+36] + [a0+84]), a1=[a0+84], a2=(unknown), a3=(unknown).
  The `beq` at 0x1003d978 goes to 0x1003d9b0 when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x1003da08 has v0 = ret(createDialog__15VkGenericDialogGP10_WidgetRec).
- `create__23AboutXsetmonFormClassUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003da10 (n32).
  It occupies 544 bytes.
  The `lw` at 0x1003da28 loads 4 bytes from abs 0x10050be4 via base gp (0x100588fc).
  The `lw` at 0x1003da40 loads 4 bytes from abs 0x1005126c via base gp (0x100588fc).
  The `lw` at 0x1003da44 loads 4 bytes from abs 0x10050be8 via base gp (0x100588fc).
  2 such accesses load 4 bytes from abs 0x10050b0c via base gp (0x100588fc), including `lw` at 0x1003da4c, `lw` at 0x1003db5c.
  The `lw` at 0x1003da58 loads 4 bytes from a0 (arg0 at entry) +0xc via base s0 (a0).
  2 such accesses load 4 bytes from sym(xmFormWidgetClass) +0x0 via base a1 (sym(xmFormWidgetClass)), including `lw` at 0x1003da64, `lw` at 0x1003db74.
  The `lw` at 0x1003da68 loads 4 bytes from abs 0x10050bec via base gp (0x100588fc).
  The `sw` at 0x1003da70 stores 4 bytes to a0 (arg0 at entry) +0x10 via base s0 (a0) with value ret(XtVaCreateWidget).
  The `sw` at 0x1003da7c stores 4 bytes to a0 (arg0 at entry) +0x20 via base s0 (a0) with value ret(XtVaCreateWidget).
  The `lw` at 0x1003da80 loads 4 bytes from abs 0x100509b8 via base gp (0x100588fc).
  The `lw` at 0x1003da84 loads 4 bytes from a0 (arg0 at entry) +0x10 via base s0 (a0).
  The `lw` at 0x1003da88 loads 4 bytes from sym(xmFrameWidgetClass) +0x0 via base a1 (sym(xmFrameWidgetClass)).
  3 such accesses load 4 bytes from abs 0x10050bf0 via base gp (0x100588fc), including `lw` at 0x1003db2c, `lw` at 0x1003db68, `lw` at 0x1003dbf0.
  The `sw` at 0x1003db54 stores 4 bytes to a0 (arg0 at entry) +0x28 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x1003db90 loads 4 bytes from abs 0x100509c4 via base gp (0x100588fc).
  The `sw` at 0x1003db94 stores 4 bytes to a0 (arg0 at entry) +0x24 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x1003db98 loads 4 bytes from sym(xmLabelWidgetClass) +0x0 via base a1 (sym(xmLabelWidgetClass)).
  The `sw` at 0x1003dc20 stores 4 bytes to a0 (arg0 at entry) +0x2c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `jalr` at 0x1003da3c calls `setDefaultResources__11VkComponentGP10_WidgetRecPCPc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultAboutXsetmonFormClassUIResources__23AboutXsetmonFormClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x1003da60 calls `XtVaCreateWidget` with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=-0xd1, a4=0x1, a5=0x0.
  The `jalr` at 0x1003da78 calls `installDestroyHandler__11VkComponentGv` with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003db4c calls `XtVaCreateManagedWidget` with a0=0x10051480, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x1, a7=-0x66.
  The `jalr` at 0x1003db88 calls `XtVaCreateManagedWidget` with a0=0x10051488, a1=[sym(xmFormWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0xd1, a4=0x1, a5=-0x17, a6=0x1a8, a7=-0x16.
  The `jalr` at 0x1003dc10 calls `XtVaCreateManagedWidget` with a0=0x10051490, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=-0x42, a6=0x1, a7=-0x66.
  The return at 0x1003dc28 has v0 = ret(XtVaCreateManagedWidget).
- `multLeft__7MMatrixGRC7MMatrix` in `usr/bin/X11/xsetmon` at 0x1003dc30 (n32).
  It occupies 652 bytes.
  2 such accesses load 4 bytes from abs 0x10050fbc via base gp (0x100588fc), including `lw` at 0x1003dc44, `lw` at 0x1003dc68.
  The `lw` at 0x1003dc94 loads 4 bytes from abs 0x100510d8 via base gp (0x100588fc).
  5 such accesses load 4 bytes from a0 (arg0 at entry) +0x0 via base s6 (a0), including `lw` at 0x1003dcbc, `lw` at 0x1003dcfc, `lw` at 0x1003dde8.
  6 such accesses load 4 bytes from a1 (arg1 at entry) +0x0 via base s2 (a1), including `lw` at 0x1003dcc0, `lw` at 0x1003dcf4, `lw` at 0x1003dd30.
  The `lw` at 0x1003dcc4 loads 4 bytes from [a0] +0x0 via base v0 ([a0]).
  The `lw` at 0x1003dcc8 loads 4 bytes from [a1] +0x4 via base v1 ([a1]).
  2 such accesses load 4 bytes from abs 0x10050920 via base gp (0x100588fc), including `lw` at 0x1003dcd0, `lw` at 0x1003dea0.
  2 such accesses load 4 bytes from abs 0x10050b4c via base gp (0x100588fc), including `lw` at 0x1003dcd4, `lw` at 0x1003deb8.
  The `lw` at 0x1003dcf8 loads 4 bytes from abs 0x1005101c via base gp (0x100588fc).
  3 such accesses load 4 bytes from [a1] +0x4 via base a2 ([a1]), including `lw` at 0x1003dd00, `lw` at 0x1003dd78, `lw` at 0x1003ddd4.
  The `lw` at 0x1003dd0c loads 4 bytes from [a0] +0x0 via base a1 ([a0]).
  The `lw` at 0x1003dd38 loads 4 bytes from [a1] +0x0 via base a4 ([a1]).
  The `lw` at 0x1003dd48 loads 4 bytes from ? (base unknown) via base s4 (?).
  The `lw` at 0x1003dd50 loads 4 bytes from abs 0x10050918 via base gp (0x100588fc).
  The `swc1` at 0x1003dd70 stores 4 bytes to ? (base unknown) via base s4 (?) with value f20.
  The `lwc1` at 0x1003ddb8 loads 4 bytes from ret(0x1002d620) +0x0 via base v0 (ret(0x1002d620)).
  The `lwc1` at 0x1003ddbc loads 4 bytes from ret(0x1002d620) +0x0 via base s3 (ret(0x1002d620)).
  The `lwc1` at 0x1003ddc0 loads 4 bytes from ? (base unknown) via base s4 (?).
  The `swc1` at 0x1003ddcc stores 4 bytes to ? (base unknown) via base s4 (?) with value .
  2 such accesses load 4 bytes from [a0] +0x4 via base a0 ([a0]), including `lw` at 0x1003ddec, `lw` at 0x1003de2c.
  The `lw` at 0x1003de00 loads 4 bytes from [a1] +0x0 via base a2 ([a1]).
  2 such accesses load 4 bytes from abs 0x100510e0 via base gp (0x100588fc), including `lw` at 0x1003de10, `lw` at 0x1003de50.
  The `sw` at 0x1003de8c stores 4 bytes to a0 (arg0 at entry) +0x0 via base s6 (a0) with value .
  The `lw` at 0x1003de9c loads 4 bytes from abs 0x10050d10 via base gp (0x100588fc).
  The `jal` at 0x1003dc5c calls `bIsIdentity__7MMatrixCGv [0x1002ac70]` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003dc88 calls `bIsIdentity__7MMatrixCGv [0x1002ac70]` with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1003dc9c calls `__as__7MMatrixGRC7MMatrix [0x10033fc0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003dcdc calls `__nw__GUi` with a0=0x10, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1003dd08 calls `__ct__9MMdtArrayGiT1 [0x1002d5c0]` with a0=ret(__nw__GUi), a1=[[a0]], a2=[[a1]+4], a3=(unknown).
  The `jal` at 0x1003dd98 calls (unnamed) [0x1002d620] with a0=a1 at entry (arg1), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1003ddb0 calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1003de20 calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=(unknown), a2=0x0, a3=(unknown).
  The `jal` at 0x1003de54 calls `__dt__9MMdtArrayGv [0x100340b0]` with a0=[a0], a1=0x3, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003deac calls `__assert` with a0=0x10049528, a1=0x100494a0, a2=0xb6, a3=(unknown).
  The `beq` at 0x1003dc64 goes to 0x1003dc88 when v0(=ret(bIsIdentity__7MMatrixCGv)) == 0 and falls through when v0(=ret(bIsIdentity__7MMatrixCGv)) != 0.
  The `beq` at 0x1003dc90 goes to 0x1003dcbc when v0(=ret(bIsIdentity__7MMatrixCGv)) == 0 and falls through when v0(=ret(bIsIdentity__7MMatrixCGv)) != 0.
  The `bne` at 0x1003dccc goes to 0x1003de9c when v0(=[[a0]]) != v1(=[[a1]+4]) and falls through when v0(=[[a0]]) == v1(=[[a1]+4]).
  The `beq` at 0x1003dce4 goes to 0x1003dd24 when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The `blez` at 0x1003dd44 goes to 0x1003de40 when a4(=[[a1]]) <= 0 (signed) and falls through when a4(=[[a1]]) > 0 (signed).
  The `blez` at 0x1003dd7c goes to 0x1003dde8 when t8(=[[a1]+4]) <= 0 (signed) and falls through when t8(=[[a1]+4]) > 0 (signed).
  The `bne` at 0x1003dde0 goes to 0x1003dd90 when s0(?) < t9(=[[a1]+4]) (signed) and falls through when s0(?) >= t9(=[[a1]+4]) (signed).
  The `bne` at 0x1003ddf8 goes to 0x1003dd70 when s5(?) < ra(=[[a0]+4]) (signed) and falls through when s5(?) >= ra(=[[a0]+4]) (signed).
  The `beq` at 0x1003de0c goes to 0x1003de54 when s7(?) >= at(=[[a1]]) (signed) and falls through when s7(?) < at(=[[a1]]) (signed).
  The `bgtz` at 0x1003de30 goes to 0x1003dd70 when v0(=[[a0]+4]) > 0 (signed) and falls through when v0(=[[a0]+4]) <= 0 (signed).
  The return at 0x1003dc80 has v0 = a0.
  The return at 0x1003dcb4 has v0 = ret(__as__7MMatrixGRC7MMatrix).
  The return at 0x1003de94 has v0 = a0.
- `RegisterChannelFormClassInterface__16ChannelFormClassSGv` in `usr/bin/X11/xsetmon` at 0x1003dec0 (n32).
  It occupies 24 bytes.
  The `lw` at 0x1003decc loads 4 bytes from abs 0x10050950 via base at (0x100588fc).
  The return at 0x1003ded0 has v0 = 0x1004c940.
- `CreateServerInfoFormClass__19ServerInfoFormClassSGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003dee0 (n32).
  It occupies 128 bytes.
  The `lw` at 0x1003def8 loads 4 bytes from abs 0x10050b4c via base gp (0x100588fc).
  The `lw` at 0x1003df2c loads 4 bytes from abs 0x10051218 via base gp (0x100588fc).
  The `jalr` at 0x1003df08 calls `__nw__GUi` with a0=0x7c, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003df30 calls `__ct__19ServerInfoFormClassGPCcP10_WidgetRec [0x10042400]` with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=(unknown).
  The `beq` at 0x1003df14 goes to 0x1003df4c when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x1003df44 has v0 = ?.
  The return at 0x1003df58 has v0 = 0x0.
- `getTheTargetPromptDialog__Gv` in `usr/bin/X11/xsetmon` at 0x1003df60 (n32).
  It occupies 136 bytes.
  The `lw` at 0x1003df74 loads 4 bytes from abs 0x10051e20 via base gp (0x100588fc).
  The `lw` at 0x1003df7c loads 4 bytes from abs 0x10050b4c via base gp (0x100588fc).
  The `sw` at 0x1003dfac stores 4 bytes to abs 0x10051e20 via base gp (0x100588fc) with value .
  The `lw` at 0x1003dfc4 loads 4 bytes from abs 0x10050914 via base gp (0x100588fc).
  The `lw` at 0x1003dfc8 loads 4 bytes from abs 0x10050920 via base gp (0x100588fc).
  The `jalr` at 0x1003df94 calls `__nw__GUi` with a0=0x60, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003dfd4 calls (unnamed) [0x10027050] with a0=ret(__nw__GUi), a1=0x10048fc0, a2=(unknown), a3=(unknown).
  The `beq` at 0x1003df78 goes to 0x1003df8c when v0(=[0x10051e20]) == 0 and falls through when v0(=[0x10051e20]) != 0.
  The `bne` at 0x1003df9c goes to 0x1003dfbc when v0(=ret(__nw__GUi)) != 0 and falls through when v0(=ret(__nw__GUi)) == 0.
  The return at 0x1003df84 has v0 = [0x10051e20].
  The return at 0x1003dfb4 has v0 = ?.
- `doFinishRegionDrag__21GammaMapEditorClassUIGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x1003e030 (n32).
  It occupies 8 bytes.
  The return at 0x1003e030 has v0 = ?.
- `doSetGainCallback__18GainControlClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1003e0a0 (n32).
  It occupies 8 bytes.
  The return at 0x1003e0a0 has v0 = ?.
- `postErrorMessage__22ScrollingErrorMessagerGP9strstream` in `usr/bin/X11/xsetmon` at 0x1003e0b0 (n32).
  It occupies 96 bytes.
  The `lw` at 0x1003e0c4 loads 4 bytes from abs 0x10050de0 via base gp (0x100588fc).
  The `lw` at 0x1003e0dc loads 4 bytes from abs 0x10050f5c via base gp (0x100588fc).
  The `lw` at 0x1003e0f0 loads 4 bytes from abs 0x100509ec via base gp (0x100588fc).
  The `jalr` at 0x1003e0d4 calls `str__9strstreamGv` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003e0e8 calls `appendText__22ScrollingErrorMessagerGPc [0x10027c70]` with a0=a0 at entry (arg0), a1=ret(str__9strstreamGv), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003e0f8 calls `__dl__GPv` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x1003e108 has v0 = ret(__dl__GPv).
- `__dt__18GainControlClassUIGv` in `usr/bin/X11/xsetmon` at 0x1003e160 (n32).
  It occupies 108 bytes.
  The `lw` at 0x1003e188 loads 4 bytes from abs 0x10050b1c via base gp (0x100588fc).
  The `lw` at 0x1003e18c loads 4 bytes from abs 0x1005129c via base gp (0x100588fc).
  The `sw` at 0x1003e190 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__18GainControlClassUI).
  The `lw` at 0x1003e1b0 loads 4 bytes from abs 0x100509ec via base gp (0x100588fc).
  The `jalr` at 0x1003e198 calls `__dt__11VkComponentGv` with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003e1b4 calls `__dl__GPv` with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x1003e180 goes to 0x1003e1bc when a0 == 0 and falls through when a0 != 0.
  The `beq` at 0x1003e1a8 goes to 0x1003e1c0 when (v1(=a1) & 0x1) == 0 and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x1003e1c4 has v0 = ?.
- `doButtonQueryBest__18ChannelFormClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1003e1d0 (n32).
  It occupies 8 bytes.
  The return at 0x1003e1d0 has v0 = ?.
- `populateVPhaseWithChannel__16ChannelFormClassGiPC17XSGIvcChannelInfo` in `usr/bin/X11/xsetmon` at 0x1003e1e0 (n32).
  It occupies 276 bytes.
  The `lw` at 0x1003e1f0 loads 4 bytes from a2 (arg2 at entry) +0x170 via base a2 (a2).
  The `lw` at 0x1003e218 loads 4 bytes from a2 (arg2 at entry) +0x0 via base a2 (a2).
  The `lw` at 0x1003e220 loads 4 bytes from abs 0x10050c10 via base gp (0x100588fc).
  The `lw` at 0x1003e228 loads 4 bytes from a0 (arg0 at entry) +0xa8 via base a0 (a0).
  The `lw` at 0x1003e22c loads 4 bytes from abs 0x1005131c via base gp (0x100588fc).
  The `lw` at 0x1003e230 loads 4 bytes from sym(xsetmonApp) +0x0 via base a0 (sym(xsetmonApp)).
  The `lw` at 0x1003e234 loads 4 bytes from abs 0x10050c20 via base gp (0x100588fc).
  The `lw` at 0x1003e238 loads 4 bytes from [sym(xsetmonApp)] +0x138 via base a0 ([sym(xsetmonApp)]).
  The `lw` at 0x1003e248 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84 via base a0 ([[sym(xsetmonApp)]+312]).
  2 such accesses load 4 bytes from abs 0x10050b60 via base gp (0x100588fc), including `lw` at 0x1003e250, `lw` at 0x1003e2b8.
  The `lw` at 0x1003e254 loads 4 bytes from a2 (arg2 at entry) +0x178 via base s1 (a2).
  The `lw` at 0x1003e258 loads 4 bytes from abs 0x10050bdc via base gp (0x100588fc).
  The `lw` at 0x1003e260 loads 4 bytes from a2 (arg2 at entry) +0x174 via base s1 (a2).
  2 such accesses load 4 bytes from a0 (arg0 at entry) +0xa8 via base s0 (a0), including `lw` at 0x1003e278, `lw` at 0x1003e2e8.
  The `lw` at 0x1003e298 loads 4 bytes from abs 0x1005091c via base gp (0x100588fc).
  The `lw` at 0x1003e29c loads 4 bytes from abs 0x10050a50 via base gp (0x100588fc).
  The `lw` at 0x1003e2a8 loads 4 bytes from abs 0x10050c18 via base gp (0x100588fc).
  The `lw` at 0x1003e2c8 loads 4 bytes from abs 0x10050a40 via base gp (0x100588fc).
  The `lw` at 0x1003e2d4 loads 4 bytes from abs 0x10050b30 via base gp (0x100588fc).
  The `lw` at 0x1003e2e0 loads 4 bytes from abs 0x10050c1c via base gp (0x100588fc).
  The `jalr` at 0x1003e224 calls `XtManageChild` with a0=[a0+168], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1003e244 calls `XSGIvcQueryOutputPhaseV` with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=a1 at entry (arg1), a3=sp-48.
  The `jalr` at 0x1003e274 calls `XtVaSetValues` with a0=[a0+168], a1=-0x8, a2=(unknown), a3=-0x18, a4=[a2+372], a5=-0xd, a6=[a2+376], a7=0x0.
  The `jalr` at 0x1003e2a0 calls `__ls__7ostreamGPCc` with a0=sym(cerr), a1=0x10043fc0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003e2b0 calls `__ls__7ostreamGi` with a0=ret(__ls__7ostreamGPCc), a1=a1 at entry (arg1), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003e2c0 calls `__ls__7ostreamGPCc` with a0=ret(__ls__7ostreamGi), a1=0x10051498, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003e2cc calls `endl__GR7ostream` with a0=ret(__ls__7ostreamGPCc), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003e2d8 calls `exit` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003e2e4 calls `XtUnmanageChild` with a0=[a0+168], a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x1003e210 goes to 0x1003e2e0 when at(=[a2+368]) == 0 and falls through when at(=[a2+368]) != 0.
  The `beq` at 0x1003e21c goes to 0x1003e2e0 when v1(=[a2]) == 0 and falls through when v1(=[a2]) != 0.
  The `beq` at 0x1003e24c goes to 0x1003e298 when v0(=ret(XSGIvcQueryOutputPhaseV)) == 0 and falls through when v0(=ret(XSGIvcQueryOutputPhaseV)) != 0.
  The return at 0x1003e290 has v0 = ?.
- `formatSelected__27FormatCombinationListsClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1003e6d0 (n32).
  It occupies 256 bytes.
  2 such accesses load 4 bytes from abs 0x10050c3c via base gp (0x100588fc), including `lw` at 0x1003e6e8, `lw` at 0x1003e708.
  The `lw` at 0x1003e6f0 loads 4 bytes from a0 (arg0 at entry) +0x74 via base a0 (a0).
  The `lw` at 0x1003e714 loads 4 bytes from a0 (arg0 at entry) +0x78 via base s0 (a0).
  The `lw` at 0x1003e718 loads 4 bytes from abs 0x10050c94 via base gp (0x100588fc).
  The `lw` at 0x1003e720 loads 4 bytes from a0 (arg0 at entry) +0x20 via base s0 (a0).
  The `lw` at 0x1003e724 loads 4 bytes from a2 (arg2 at entry) +0x10 via base s1 (a2).
  The `lw` at 0x1003e728 loads 4 bytes from a0 (arg0 at entry) +0xc4 via base s0 (a0).
  The `lw` at 0x1003e73c loads 4 bytes from a0 (arg0 at entry) +0xc0 via base s0 (a0).
  The `lw` at 0x1003e768 loads 4 bytes from a0 (arg0 at entry) +0xc8 via base s0 (a0).
  2 such accesses load 4 bytes from abs 0x1005131c via base gp (0x100588fc), including `lw` at 0x1003e778, `lw` at 0x1003e798.
  The `sw` at 0x1003e77c stores 4 bytes to a0 (arg0 at entry) +0x9c via base s0 (a0) with value .
  2 such accesses load 4 bytes from sym(xsetmonApp) +0x0 via base a0 (sym(xsetmonApp)), including `lw` at 0x1003e780, `lw` at 0x1003e79c.
  2 such accesses load 4 bytes from [sym(xsetmonApp)] +0x130 via base a0 ([sym(xsetmonApp)]), including `lw` at 0x1003e784, `lw` at 0x1003e7a0.
  The `lw` at 0x1003e788 loads 4 bytes from abs 0x100510cc via base gp (0x100588fc).
  2 such accesses load 4 bytes from [[sym(xsetmonApp)]+304] +0x44 via base a0 ([[sym(xsetmonApp)]+304]), including `lw` at 0x1003e78c, `lw` at 0x1003e7a8.
  2 such accesses load 4 bytes from [[[sym(xsetmonApp)]+304]+68] +0x2c via base a0 ([[[sym(xsetmonApp)]+304]+68]), including `lw` at 0x1003e794, `lw` at 0x1003e7b8.
  The `lw` at 0x1003e7a4 loads 4 bytes from abs 0x100511a8 via base gp (0x100588fc).
  The `jalr` at 0x1003e700 calls `XtSetSensitive` with a0=[a0+116], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1003e710 calls `XtSetSensitive` with a0=[a0+120], a1=0x1, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003e71c calls `XmListDeselectAllItems` with a0=[a0+32], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1003e790 calls `DeleteCombination__21SetmonMasterFormClassGv [0x10033aa0]` with a0=[[[[sym(xsetmonApp)]+304]+68]+44], a1=[a2+16]-1, a2=[a0+196], a3=(unknown).
  The `jal` at 0x1003e7b4 calls `DisplayFormat__21SetmonMasterFormClassGPC21XSGIvcVideoFormatInfo [0x1003d7c0]` with a0=[[[[sym(xsetmonApp)]+304]+68]+44], a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x1003e740 goes to 0x1003e75c when a1(=[a2+16]-1) >= a2(=[a0+196]) (signed) and falls through when a1(=[a2+16]-1) < a2(=[a0+196]) (signed).
  The return at 0x1003e7c8 has v0 = ret(DisplayFormat__21SetmonMasterFormClassGPC21XSGIvcVideoFormatInfo).
- `__ct__27FormatCombinationListsClassGPCc` in `usr/bin/X11/xsetmon` at 0x1003e7d0 (n32).
  It occupies 240 bytes.
  The `lw` at 0x1003e7e4 loads 4 bytes from abs 0x10051018 via base gp (0x100588fc).
  The `lw` at 0x1003e7fc loads 4 bytes from abs 0x10051288 via base gp (0x100588fc).
  The `sw` at 0x1003e800 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a2 (a0) with value sym(__vtbl__27FormatCombinationListsClass).
  The `sw` at 0x1003e808 stores 4 bytes to a0 (arg0 at entry) +0xb0 via base a0 (a0) with value 0x0.
  The `sw` at 0x1003e810 stores 4 bytes to a0 (arg0 at entry) +0xc4 via base v1 (a0) with value 0x0.
  The `sw` at 0x1003e818 stores 4 bytes to a0 (arg0 at entry) +0xc0 via base v0 (a0) with value 0x0.
  The `sw` at 0x1003e820 stores 4 bytes to a0 (arg0 at entry) +0xc8 via base at (a0) with value 0x0.
  The `sw` at 0x1003e828 stores 4 bytes to a0 (arg0 at entry) +0xb4 via base ra (a0) with value 0x0.
  The `sw` at 0x1003e830 stores 4 bytes to a0 (arg0 at entry) +0xbc via base t9 (a0) with value 0x0.
  The `sw` at 0x1003e838 stores 4 bytes to a0 (arg0 at entry) +0x9c via base t8 (a0) with value 0x0.
  The `sw` at 0x1003e840 stores 4 bytes to a0 (arg0 at entry) +0xd0 via base t3 (a0) with value 0x0.
  The `sw` at 0x1003e848 stores 4 bytes to a0 (arg0 at entry) +0xd4 via base t2 (a0) with value 0x0.
  The `sw` at 0x1003e850 stores 4 bytes to a0 (arg0 at entry) +0xa4 via base t1 (a0) with value 0x0.
  The `sw` at 0x1003e858 stores 4 bytes to a0 (arg0 at entry) +0xa0 via base t0 (a0) with value 0x0.
  The `sw` at 0x1003e860 stores 4 bytes to a0 (arg0 at entry) +0xac via base a7 (a0) with value 0x0.
  The `sw` at 0x1003e868 stores 4 bytes to a0 (arg0 at entry) +0xa8 via base a6 (a0) with value 0x0.
  The `sw` at 0x1003e874 stores 4 bytes to a0 (arg0 at entry) +0xe0 via base a5 (a0) with value -0x1.
  The `sw` at 0x1003e87c stores 4 bytes to a0 (arg0 at entry) +0xdc via base a4 (a0) with value -0x1.
  The `sw` at 0x1003e884 stores 4 bytes to a0 (arg0 at entry) +0xd8 via base a3 (a0) with value -0x1.
  The `sw` at 0x1003e88c stores 4 bytes to a0 (arg0 at entry) +0xf4 via base a1 (a0) with value 0x0.
  The `lw` at 0x1003e894 loads 4 bytes from abs 0x10050eb0 via base gp (0x100588fc).
  The `sw` at 0x1003e898 stores 4 bytes to a0 (arg0 at entry) +0xf0 via base a0 (a0) with value 0x0.
  The `sw` at 0x1003e8a0 stores 4 bytes to a0 (arg0 at entry) +0xec via base v1 (a0) with value 0x0.
  The `jal` at 0x1003e7f0 calls `__ct__29FormatCombinationListsClassUIGPCc [0x1002d530]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003e8a4 calls `vPopulateList__27FormatCombinationListsClassGv [0x100236b0]` with a0=a0 at entry (arg0), a1=a0 at entry (arg0), a2=-0x1, a3=a0 at entry (arg0), a4=a0 at entry (arg0), a5=a0 at entry (arg0), a6=a0 at entry (arg0), a7=a0 at entry (arg0).
  The return at 0x1003e8b8 has v0 = a0.
- `__dt__19GammaMapEditorClassGv` in `usr/bin/X11/xsetmon` at 0x1003e8c0 (n32).
  It occupies 176 bytes.
  The `lw` at 0x1003e8e4 loads 4 bytes from abs 0x100512bc via base gp (0x100588fc).
  The `sw` at 0x1003e8e8 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__19GammaMapEditorClass).
  The `lw` at 0x1003e8f0 loads 4 bytes from a0 (arg0 at entry) +0x9c via base a0 (a0).
  3 such accesses load 4 bytes from abs 0x10050b98 via base gp (0x100588fc), including `lw` at 0x1003e8f8, `lw` at 0x1003e910, `lw` at 0x1003e92c.
  The `lw` at 0x1003e908 loads 4 bytes from a0 (arg0 at entry) +0x50 via base a0 (a0).
  The `lw` at 0x1003e920 loads 4 bytes from a0 (arg0 at entry) +0x64 via base a0 (a0).
  2 such accesses load 4 bytes from abs 0x100510e8 via base gp (0x100588fc), including `lw` at 0x1003e928, `lw` at 0x1003e93c.
  The `lw` at 0x1003e954 loads 4 bytes from abs 0x100509ec via base gp (0x100588fc).
  The `jalr` at 0x1003e8fc calls `__dla__GPv` with a0=[a0+156], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+156].
  The `jalr` at 0x1003e914 calls `__dla__GPv` with a0=[a0+80], a1=(unknown), a2=(unknown), a3=[a0+80].
  The `jalr` at 0x1003e930 calls `__dla__GPv` with a0=[a0+100], a1=(unknown), a2=(unknown), a3=[a0+100].
  The `jal` at 0x1003e940 calls `__dt__21GammaMapEditorClassUIGv [0x10034570]` with a0=a0 at entry (arg0), a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003e958 calls `__dl__GPv` with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x1003e8d8 goes to 0x1003e960 when a0 == 0 and falls through when a0 != 0.
  The `beq` at 0x1003e8f4 goes to 0x1003e908 when a3(=[a0+156]) == 0 and falls through when a3(=[a0+156]) != 0.
  The `beq` at 0x1003e90c goes to 0x1003e920 when a3(=[a0+80]) == 0 and falls through when a3(=[a0+80]) != 0.
  The `beq` at 0x1003e924 goes to 0x1003e940 when a3(=[a0+100]) == 0 and falls through when a3(=[a0+100]) != 0.
  The `beq` at 0x1003e950 goes to 0x1003e960 when (v1(=a1) & 0x1) == 0 and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x1003e968 has v0 = ?.
- `doArmRegionDrag__21GammaMapEditorClassUIGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x1003e970 (n32).
  It occupies 8 bytes.
  The return at 0x1003e970 has v0 = ?.
- `doSetGainCallback__16GainControlClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x1003e980 (n32).
  It occupies 116 bytes.
  The `lw` at 0x1003e980 loads 4 bytes from a2 (arg2 at entry) +0x8 via base a2 (a2).
  The `lw` at 0x1003e988 loads 4 bytes from a0 (arg0 at entry) +0x34 via base a2 (a0).
  The `lw` at 0x1003e990 loads 4 bytes from a0 (arg0 at entry) +0x38 via base a0 (a0).
  2 such accesses load 4 bytes from abs 0x1005131c via base gp (0x100588fc), including `lw` at 0x1003e9a8, `lw` at 0x1003e9d0.
  The `lwc1` at 0x1003e9ac loads 4 bytes from abs 0x10051dcc via base gp (0x100588fc).
  2 such accesses load 4 bytes from sym(xsetmonApp) +0x0 via base a0 (sym(xsetmonApp)), including `lw` at 0x1003e9b4, `lw` at 0x1003e9d8.
  The `lw` at 0x1003e9b8 loads 4 bytes from abs 0x10050d00 via base gp (0x100588fc).
  2 such accesses load 4 bytes from [sym(xsetmonApp)] +0x138 via base a0 ([sym(xsetmonApp)]), including `lw` at 0x1003e9bc, `lw` at 0x1003e9e0.
  The `lw` at 0x1003e9c4 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84 via base a0 ([[sym(xsetmonApp)]+312]).
  The `lw` at 0x1003e9d4 loads 4 bytes from abs 0x10050bfc via base gp (0x100588fc).
  The `jalr` at 0x1003e9c8 calls `XSGIvcSetOutputGain` with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=[a0+52], a3=[a0+56], a4=[a2+8]; fp f17=0x41200000.
  The `jalr` at 0x1003e9dc calls `XFlush` with a0=[[sym(xsetmonApp)]+312], a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x1003e9ec has v0 = ret(XFlush).
- `changeChannelCallback__18ChannelFormClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x1003ea00 (n32).
  It occupies 64 bytes.
  The `lw` at 0x1003ea00 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a1 (a1).
  The `lw` at 0x1003ea0c loads 4 bytes from [a1+8] +0x8 via base a2 ([a1+8]).
  The `lw` at 0x1003ea1c loads 4 bytes from [[a1+8]+8] +0xf8 via base a0 ([[a1+8]+8]).
  The `lw` at 0x1003ea20 loads 4 bytes from [[a1+8]+8] +0xf0 via base a0 ([[a1+8]+8]).
  The `jalr` at 0x1003ea28 calls (unknown callee) with a0=([[[a1+8]+8]+240] + [a1+8]), a1=a1 at entry (arg1), a2=[a1+8], a3=0x19efc.
  The return at 0x1003ea38 has v0 = ret(?).
- `__ct__20GammaAssignmentClassGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003ea40 (n32).
  It occupies 72 bytes.
  The `lw` at 0x1003ea54 loads 4 bytes from abs 0x10050ef0 via base gp (0x100588fc).
  The `lw` at 0x1003ea68 loads 4 bytes from abs 0x100512a4 via base gp (0x100588fc).
  The `sw` at 0x1003ea78 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__20GammaAssignmentClass).
  The `jal` at 0x1003ea60 calls `__ct__22GammaAssignmentClassUIGPCcP10_WidgetRec [0x10025160]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1003ea80 has v0 = a0.
- `vSetIdentity__7MMatrixGv` in `usr/bin/X11/xsetmon` at 0x1003ea90 (n32).
  It occupies 280 bytes.
  The `lw` at 0x1003ea90 loads 4 bytes from a0 (arg0 at entry) +0x0 via base a0 (a0).
  3 such accesses load 4 bytes from [a0] +0x0 via base a6 ([a0]), including `lw` at 0x1003ea94, `lw` at 0x1003eae0, `lw` at 0x1003eba4.
  4 such accesses load 4 bytes from [a0] +0x4 via base a6 ([a0]), including `lw` at 0x1003ea98, `lw` at 0x1003ead4, `lw` at 0x1003eb18.
  The `lw` at 0x1003eac0 loads 4 bytes from [a0] +0xc via base a6 ([a0]).
  The `lwc1` at 0x1003eac4 loads 4 bytes from abs 0x10051dc8 via base gp (0x100588fc).
  2 such accesses store 4 bytes to ? (base unknown) via base a3 (?), including `swc1` at 0x1003eb10, `swc1` at 0x1003eb3c.
  3 such accesses load 4 bytes from a0 (arg0 at entry) +0x0 via base s0 (a0), including `lw` at 0x1003eb14, `lw` at 0x1003eb40, `lw` at 0x1003eb98.
  2 such accesses store 4 bytes to ? (base unknown) via base a3 (?), including `swc1` at 0x1003eb38, `swc1` at 0x1003eb64.
  2 such accesses load 4 bytes from abs 0x10050920 via base gp (0x100588fc), including `lw` at 0x1003eb78, `lw` at 0x1003eb80.
  The `lw` at 0x1003eb7c loads 4 bytes from abs 0x10050d10 via base gp (0x100588fc).
  The `jalr` at 0x1003eb90 calls `__assert` with a0=0x100494e8, a1=0x100494a0, a2=0x3a, a3=a3 at entry (arg3), a6=[a0].
  The `bne` at 0x1003eab4 goes to 0x1003eb78 when v0(=[[a0]+4]) != a2(=[[a0]]) and falls through when v0(=[[a0]+4]) == a2(=[[a0]]).
  The `blez` at 0x1003eabc goes to 0x1003eb68 when a2(=[[a0]]) <= 0 (signed) and falls through when a2(=[[a0]]) > 0 (signed).
  The `beq` at 0x1003eaec goes to 0x1003eb6c when a4(?) >= a2(=[[a0]]) (signed) and falls through when a4(?) < a2(=[[a0]]) (signed).
  The `blez` at 0x1003eaf4 goes to 0x1003eae4 when a5(=[[a0]+4]) <= 0 (signed) and falls through when a5(=[[a0]+4]) > 0 (signed).
  The `beq` at 0x1003eb24 goes to 0x1003eae0 when a2(?) >= a5(=[[a0]+4]) (signed) and falls through when a2(?) < a5(=[[a0]+4]) (signed).
  The `bne` at 0x1003eb2c goes to 0x1003eb3c when a2(?) != a4(?) and falls through when a2(?) == a4(?).
  The `beq` at 0x1003eb50 goes to 0x1003eae0 when a2(?) >= a5(=[[a0]+4]) (signed) and falls through when a2(?) < a5(=[[a0]+4]) (signed).
  The `bne` at 0x1003eb58 goes to 0x1003eb10 when a2(?) != a4(?) and falls through when a2(?) == a4(?).
  The return at 0x1003eb70 has v0 = ?.
- `combinationSelectedCallback__29FormatCombinationListsClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x1003ebb0 (n32).
  It occupies 68 bytes.
  The `lw` at 0x1003ebb4 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a1 (a1).
  The `lw` at 0x1003ebc0 loads 4 bytes from [a1+8] +0x9c via base v1 ([a1+8]).
  The `lw` at 0x1003ebcc loads 4 bytes from [a1+8] +0xa4 via base v1 ([a1+8]).
  The `jalr` at 0x1003ebdc calls (unknown callee) with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x19d4c.
  The return at 0x1003ebec has v0 = ret(?).
- `__ct__30CombinationContentsListClassUIGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003ec00 (n32).
  It occupies 100 bytes.
  The `lw` at 0x1003ec14 loads 4 bytes from abs 0x10050be0 via base gp (0x100588fc).
  The `lw` at 0x1003ec34 loads 4 bytes from abs 0x10050f04 via base gp (0x100588fc).
  The `lw` at 0x1003ec38 loads 4 bytes from abs 0x10051280 via base gp (0x100588fc).
  The `sw` at 0x1003ec3c stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__30CombinationContentsListClassUI).
  The `jalr` at 0x1003ec28 calls `__ct__11VkComponentGPCc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003ec44 calls `create__30CombinationContentsListClassUIGP10_WidgetRec [0x100258c0]` with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=(unknown), a3=(unknown).
  The return at 0x1003ec5c has v0 = a0.
- `assignChannelMap__22GammaAssignmentClassUIGP10_WidgetRecPviT3` in `usr/bin/X11/xsetmon` at 0x1003ec70 (n32).
  It occupies 8 bytes.
  The return at 0x1003ec70 has v0 = ?.
- `__ct__10GammaClassGPCc` in `usr/bin/X11/xsetmon` at 0x1003ec80 (n32).
  It occupies 72 bytes.
  The `lw` at 0x1003ec94 loads 4 bytes from abs 0x10050f18 via base gp (0x100588fc).
  The `lw` at 0x1003eca8 loads 4 bytes from abs 0x100512b0 via base gp (0x100588fc).
  The `sw` at 0x1003ecb8 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__10GammaClass).
  The `jal` at 0x1003eca0 calls `__ct__12GammaClassUIGPCc [0x100264d0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1003ecc0 has v0 = a0.
- `vInitialize__18GammaMapDescriptorGiP9_XDisplayT1` in `usr/bin/X11/xsetmon` at 0x1003ecd0 (n32).
  It occupies 172 bytes.
  The `lw` at 0x1003ecf0 loads 4 bytes from abs 0x10050df0 via base gp (0x100588fc).
  The `sw` at 0x1003ecf8 stores 4 bytes to a0 (arg0 at entry) +0x0 via base a0 (a0) with value a1.
  2 such accesses load 4 bytes from abs 0x10050b60 via base gp (0x100588fc), including `lw` at 0x1003ed1c, `lw` at 0x1003ed54.
  The `lw` at 0x1003ed30 loads 4 bytes from abs 0x10050920 via base gp (0x100588fc).
  The `lw` at 0x1003ed34 loads 4 bytes from abs 0x10050a50 via base gp (0x100588fc).
  The `lw` at 0x1003ed40 loads 4 bytes from abs 0x10050c18 via base gp (0x100588fc).
  The `lw` at 0x1003ed50 loads 4 bytes from a0 (arg0 at entry) +0x0 via base a1 (a0).
  The `lw` at 0x1003ed64 loads 4 bytes from abs 0x10050a40 via base gp (0x100588fc).
  The `lw` at 0x1003ed70 loads 4 bytes from abs 0x10050b30 via base gp (0x100588fc).
  The `jalr` at 0x1003ed10 calls `XSGIvcQueryGammaMap` with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a1 at entry (arg1), a3=a0+4, a4=a0+8, a5=a0+12, a7=0x19c2c.
  The `jalr` at 0x1003ed38 calls `__ls__7ostreamGPCc` with a0=sym(cerr), a1=0x10049478, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003ed4c calls `__ls__7ostreamGi` with a0=ret(__ls__7ostreamGPCc), a1=[a0], a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003ed5c calls `__ls__7ostreamGPCc` with a0=ret(__ls__7ostreamGi), a1=0x1005198e, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003ed68 calls `endl__GR7ostream` with a0=ret(__ls__7ostreamGPCc), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003ed74 calls `exit` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x1003ed18 goes to 0x1003ed30 when v0(=ret(XSGIvcQueryGammaMap)) == 0 and falls through when v0(=ret(XSGIvcQueryGammaMap)) != 0.
  The return at 0x1003ed28 has v0 = ret(XSGIvcQueryGammaMap).
- `__ct__16GainControlClassGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003ed80 (n32).
  It occupies 72 bytes.
  The `lw` at 0x1003ed94 loads 4 bytes from abs 0x10050ea4 via base gp (0x100588fc).
  The `lw` at 0x1003eda8 loads 4 bytes from abs 0x10051298 via base gp (0x100588fc).
  The `sw` at 0x1003edb8 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__16GainControlClass).
  The `jal` at 0x1003eda0 calls `__ct__18GainControlClassUIGPCcP10_WidgetRec [0x10023480]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1003edc0 has v0 = a0.
- `className__18GainControlClassUIGv` in `usr/bin/X11/xsetmon` at 0x1003edd0 (n32).
  It occupies 24 bytes.
  The `lw` at 0x1003eddc loads 4 bytes from abs 0x1005091c via base at (0x100588fc).
  The return at 0x1003ede0 has v0 = 0x10044fe8.
- `vTellGammaScalarValue__19GammaMapEditorClassCGf` in `usr/bin/X11/xsetmon` at 0x1003ee30 (n32).
  It occupies 92 bytes.
  The `lw` at 0x1003ee44 loads 4 bytes from abs 0x10050b84 via base gp (0x100588fc).
  The `lw` at 0x1003ee68 loads 4 bytes from abs 0x10050fb4 via base gp (0x100588fc).
  The `jalr` at 0x1003ee60 calls `sprintf` with a0=sp-48, a1=0x100516b0, a2=(unknown), a3=a3 at entry (arg3).
  The `jal` at 0x1003ee70 calls `vDrawText__19GammaMapEditorClassCGPCc [0x1002ab00]` with a0=a0 at entry (arg0), a1=sp-48, a2=(unknown), a3=(unknown).
  The return at 0x1003ee84 has v0 = ret(vDrawText__19GammaMapEditorClassCGPCc).
- `vListfbDepths__27FormatCombinationListsClassGv` in `usr/bin/X11/xsetmon` at 0x1003eea0 (n32).
  It occupies 472 bytes.
  The `lw` at 0x1003eeb4 loads 4 bytes from abs 0x10050cd0 via base gp (0x100588fc).
  The `lw` at 0x1003eed0 loads 4 bytes from abs 0x1005131c via base gp (0x100588fc).
  The `sw` at 0x1003eed8 stores 4 bytes to a0 (arg0 at entry) +0xe4 via base s4 (a0) with value -0x1.
  2 such accesses load 4 bytes from sym(xsetmonApp) +0x0 via base s5 (sym(xsetmonApp)), including `lw` at 0x1003eedc, `lw` at 0x1003ef8c.
  The `lw` at 0x1003eee0 loads 4 bytes from abs 0x10050bc0 via base gp (0x100588fc).
  The `lw` at 0x1003eee8 loads 4 bytes from [sym(xsetmonApp)] +0x138 via base a4 ([sym(xsetmonApp)]).
  The `lw` at 0x1003ef00 loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84 via base a0 ([[sym(xsetmonApp)]+312]).
  The `lw` at 0x1003ef04 loads 4 bytes from abs 0x1005128c via base gp (0x100588fc).
  2 such accesses load 4 bytes from sym(numFbDepths) +0x0 via base s6 (sym(numFbDepths)), including `lw` at 0x1003ef0c, `lw` at 0x1003efa8.
  The `lw` at 0x1003ef30 loads 4 bytes from abs 0x10050b8c via base gp (0x100588fc).
  4 such accesses load 4 bytes from ? (base unknown) via base s0 (?), including `lw` at 0x1003ef38, `lw` at 0x1003ef58, `lw` at 0x1003ef88.
  The `lw` at 0x1003ef3c loads 4 bytes from abs 0x10050b90 via base gp (0x100588fc).
  The `lw` at 0x1003ef48 loads 4 bytes from abs 0x10050b84 via base gp (0x100588fc).
  The `lw` at 0x1003ef4c loads 4 bytes from abs 0x1005091c via base gp (0x100588fc).
  The `lw` at 0x1003ef64 loads 4 bytes from abs 0x10050cdc via base gp (0x100588fc).
  The `lw` at 0x1003ef74 loads 4 bytes from abs 0x10050b98 via base gp (0x100588fc).
  The `lw` at 0x1003ef80 loads 4 bytes from abs 0x10050cc8 via base gp (0x100588fc).
  The `lw` at 0x1003ef90 loads 4 bytes from [sym(xsetmonApp)] +0xf4 via base a2 ([sym(xsetmonApp)]).
  The `sw` at 0x1003ef9c stores 4 bytes to a0 (arg0 at entry) +0xe4 via base s4 (a0) with value .
  The `sw` at 0x1003efa4 stores 4 bytes to a0 (arg0 at entry) +0xa8 via base s4 (a0) with value .
  The `lw` at 0x1003efbc loads 4 bytes from abs 0x10050ce0 via base gp (0x100588fc).
  4 such accesses load 4 bytes from a0 (arg0 at entry) +0x48 via base s4 (a0), including `lw` at 0x1003efd0, `lw` at 0x1003efdc, `lw` at 0x1003f010.
  The `lw` at 0x1003efd4 loads 4 bytes from abs 0x10050ce4 via base gp (0x100588fc).
  2 such accesses load 4 bytes from abs 0x10050ce8 via base gp (0x100588fc), including `lw` at 0x1003efe0, `lw` at 0x1003f014.
  The `lw` at 0x1003efec loads 4 bytes from abs 0x10050cec via base gp (0x100588fc).
  The `lw` at 0x1003eff8 loads 4 bytes from abs 0x10050cf0 via base gp (0x100588fc).
  The `lw` at 0x1003f020 loads 4 bytes from a0 (arg0 at entry) +0xe4 via base s4 (a0).
  The `lw` at 0x1003f02c loads 4 bytes from abs 0x10050c64 via base gp (0x100588fc).
  The `lw` at 0x1003f04c loads 4 bytes from abs 0x10050aac via base gp (0x100588fc).
  The `jalr` at 0x1003eec8 calls `__ct__10VkNameListGv` with a0=sp-96, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1003eefc calls `XSGIvcQueryPlatformParameter` with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=0x0, a4=[sym(xsetmonApp)]+244, a5=0x20.
  The `jalr` at 0x1003ef34 calls `strlen` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003ef40 calls `__nwa__GUi` with a0=ret(strlen)+10, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003ef5c calls `sprintf` with a0=ret(__nwa__GUi), a1=0x10044ac0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003ef6c calls `add__10VkNameListGPc` with a0=sp-96, a1=ret(__nwa__GUi), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003ef78 calls `__dla__GPv` with a0=ret(__nwa__GUi), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003ef84 calls `atoi` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003efcc calls `XtVaGetValues` with a0=[a0+72], a1=-0x84, a2=sp-80, a3=0x0.
  The `jalr` at 0x1003efd8 calls `XmListDeleteAllItems` with a0=[a0+72], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003efe4 calls `freeXmStringTable__10VkNameListSGPPUc` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003eff0 calls `getXmStringTable__10VkNameListCGv` with a0=sp-96, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003f00c calls `XmListAddItems` with a0=[a0+72], a1=ret(getXmStringTable__10VkNameListCGv), a2=(unknown), a3=0x1.
  The `jalr` at 0x1003f018 calls `freeXmStringTable__10VkNameListSGPPUc` with a0=ret(getXmStringTable__10VkNameListCGv), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003f034 calls `XmListSelectPos` with a0=[a0+72], a1=[a0+228], a2=0x0, a3=(unknown).
  The `jalr` at 0x1003f060 calls `__dt__10VkNameListGv` with a0=sp-96, a1=0x2, a2=(unknown), a3=(unknown).
  The `blez` at 0x1003ef24 goes to 0x1003efbc when a6(=[sym(numFbDepths)]) <= 0 (signed) and falls through when a6(=[sym(numFbDepths)]) > 0 (signed).
  The `bne` at 0x1003ef94 goes to 0x1003efa8 when a2(=[[sym(xsetmonApp)]+244]) != v0(=ret(atoi)) and falls through when a2(=[[sym(xsetmonApp)]+244]) == v0(=ret(atoi)).
  The `bne` at 0x1003efb4 goes to 0x1003ef30 when s3(?) < a4(=[sym(numFbDepths)]) (signed) and falls through when s3(?) >= a4(=[sym(numFbDepths)]) (signed).
  The `blez` at 0x1003f024 goes to 0x1003f040 when a1(=[a0+228]) <= 0 (signed) and falls through when a1(=[a0+228]) > 0 (signed).
  The return at 0x1003f070 has v0 = ret(__dt__10VkNameListGv).
- `CreateSetmonMasterFormClass__21SetmonMasterFormClassSGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003f080 (n32).
  It occupies 128 bytes.
  The `lw` at 0x1003f098 loads 4 bytes from abs 0x10050b4c via base gp (0x100588fc).
  The `lw` at 0x1003f0cc loads 4 bytes from abs 0x10051088 via base gp (0x100588fc).
  The `jalr` at 0x1003f0a8 calls `__nw__GUi` with a0=0x40, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003f0d0 calls `__ct__21SetmonMasterFormClassGPCcP10_WidgetRec [0x10030fd0]` with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=(unknown).
  The `beq` at 0x1003f0b4 goes to 0x1003f0ec when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x1003f0e4 has v0 = ?.
  The return at 0x1003f0f8 has v0 = 0x0.
- `__ct__23SetmonMasterFormClassUIGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003f100 (n32).
  It occupies 108 bytes.
  The `lw` at 0x1003f114 loads 4 bytes from abs 0x10050be0 via base gp (0x100588fc).
  The `lw` at 0x1003f130 loads 4 bytes from abs 0x100510a0 via base gp (0x100588fc).
  The `lw` at 0x1003f138 loads 4 bytes from abs 0x100512dc via base gp (0x100588fc).
  The `sw` at 0x1003f13c stores 4 bytes to a0 (arg0 at entry) +0x8 via base a1 (a0) with value sym(__vtbl__23SetmonMasterFormClassUI).
  The `sw` at 0x1003f144 stores 4 bytes to a0 (arg0 at entry) +0x28 via base v1 (a0) with value 0x0.
  The `jalr` at 0x1003f128 calls `__ct__11VkComponentGPCc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003f14c calls `create__23SetmonMasterFormClassUIGP10_WidgetRec [0x10032150]` with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=(unknown), a3=(unknown).
  The return at 0x1003f164 has v0 = a0.
- `create__21StatisticsFormClassUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x1003f180 (n32).
  It occupies 8972 bytes.
  The `lw` at 0x1003f198 loads 4 bytes from abs 0x10050be4 via base gp (0x100588fc).
  The `lw` at 0x1003f1b0 loads 4 bytes from abs 0x100512ec via base gp (0x100588fc).
  The `lw` at 0x1003f1b4 loads 4 bytes from abs 0x10050be8 via base gp (0x100588fc).
  The `lw` at 0x1003f1bc loads 4 bytes from abs 0x10050b0c via base gp (0x100588fc).
  The `lw` at 0x1003f1c8 loads 4 bytes from a0 (arg0 at entry) +0xc via base s0 (a0).
  The `lw` at 0x1003f1d4 loads 4 bytes from sym(xmFormWidgetClass) +0x0 via base a1 (sym(xmFormWidgetClass)).
  The `lw` at 0x1003f1d8 loads 4 bytes from abs 0x10050bec via base gp (0x100588fc).
  The `sw` at 0x1003f1dc stores 4 bytes to a0 (arg0 at entry) +0x10 via base s0 (a0) with value ret(XtVaCreateWidget).
  The `sw` at 0x1003f1e8 stores 4 bytes to a0 (arg0 at entry) +0xa4 via base s0 (a0) with value ret(XtVaCreateWidget).
  The `lw` at 0x1003f1f0 loads 4 bytes from abs 0x100509c4 via base gp (0x100588fc).
  23 such accesses load 4 bytes from a0 (arg0 at entry) +0x10 via base s0 (a0), including `lw` at 0x1003f1f4, `lw` at 0x1003f2bc, `lw` at 0x1003f4b4.
  61 such accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0 via base s1 (sym(xmLabelWidgetClass)), including `lw` at 0x1003f1f8, `lw` at 0x1003f3e8, `lw` at 0x1003f424.
  81 such accesses load 4 bytes from abs 0x10050bf0 via base gp (0x100588fc), including `lw` at 0x1003f290, `lw` at 0x1003f350, `lw` at 0x1003f3bc.
  The `lw` at 0x1003f2c0 loads 4 bytes from abs 0x100509b8 via base gp (0x100588fc).
  The `sw` at 0x1003f2c4 stores 4 bytes to a0 (arg0 at entry) +0xec via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  6 such accesses load 4 bytes from sym(xmFrameWidgetClass) +0x0 via base s3 (sym(xmFrameWidgetClass)), including `lw` at 0x1003f2c8, `lw` at 0x1003f670, `lw` at 0x1003fa28.
  64 such accesses load 4 bytes from abs 0x1005091c via base gp (0x100588fc), including `lw` at 0x1003f378, `lw` at 0x1003f400, `lw` at 0x1003f438.
  The `lw` at 0x1003f37c loads 4 bytes from abs 0x10050a78 via base gp (0x100588fc).
  The `sw` at 0x1003f380 stores 4 bytes to a0 (arg0 at entry) +0xf8 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  8 such accesses load 4 bytes from sym(xmRowColumnWidgetClass) +0x0 via base s2 (sym(xmRowColumnWidgetClass)), including `lw` at 0x1003f384, `lw` at 0x1003f720, `lw` at 0x1003fad8.
  2 such accesses store 4 bytes to a0 (arg0 at entry) +0xfc via base s0 (a0), including `sw` at 0x1003f3e4, `sw` at 0x1003f7a4.
  12 such accesses load 4 bytes from a0 (arg0 at entry) +0xfc via base s0 (a0), including `lw` at 0x1003f41c, `lw` at 0x1003f454, `lw` at 0x1003f484.
  The `sw` at 0x1003f420 stores 4 bytes to a0 (arg0 at entry) +0xb0 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003f474 stores 4 bytes to a0 (arg0 at entry) +0xb8 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003f4a4 stores 4 bytes to a0 (arg0 at entry) +0xb4 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003f4b8 stores 4 bytes to a0 (arg0 at entry) +0xbc via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  2 such accesses load 4 bytes from abs 0x10050b08 via base gp (0x100588fc), including `lw` at 0x1003f580, `lw` at 0x1003fe14.
  The `sw` at 0x1003f584 stores 4 bytes to a0 (arg0 at entry) +0xf0 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  2 such accesses load 4 bytes from sym(xmPushButtonWidgetClass) +0x0 via base a1 (sym(xmPushButtonWidgetClass)), including `lw` at 0x1003f588, `lw` at 0x1003fe1c.
  3 such accesses load 4 bytes from abs 0x1005131c via base gp (0x100588fc), including `lw` at 0x1003f640, `lw` at 0x1003fd1c, `lw` at 0x10040af8.
  The `sw` at 0x1003f644 stores 4 bytes to a0 (arg0 at entry) +0xe8 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x1003f648 loads 4 bytes from sym(xsetmonApp) +0x0 via base a2 (sym(xsetmonApp)).
  The `lbu` at 0x1003f64c loads 1 bytes from [sym(xsetmonApp)] +0xc8 via base a2 ([sym(xsetmonApp)]).
  2 such accesses load 4 bytes from abs 0x10050c44 via base gp (0x100588fc), including `lw` at 0x1003f654, `lw` at 0x1003fecc.
  The `lw` at 0x1003f660 loads 4 bytes from abs 0x10050fd4 via base gp (0x100588fc).
  The `sw` at 0x1003f71c stores 4 bytes to a0 (arg0 at entry) +0xf4 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003f7d4 stores 4 bytes to a0 (arg0 at entry) +0xc0 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003f804 stores 4 bytes to a0 (arg0 at entry) +0xc4 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003f834 stores 4 bytes to a0 (arg0 at entry) +0xc8 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003f864 stores 4 bytes to a0 (arg0 at entry) +0xcc via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003f894 stores 4 bytes to a0 (arg0 at entry) +0xd0 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003f8c4 stores 4 bytes to a0 (arg0 at entry) +0xd4 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003f8f4 stores 4 bytes to a0 (arg0 at entry) +0xd8 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003f924 stores 4 bytes to a0 (arg0 at entry) +0xdc via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003f954 stores 4 bytes to a0 (arg0 at entry) +0xe0 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003f964 stores 4 bytes to a0 (arg0 at entry) +0xe4 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003fa24 stores 4 bytes to a0 (arg0 at entry) +0x128 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003fad4 stores 4 bytes to a0 (arg0 at entry) +0x12c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003fb5c stores 4 bytes to a0 (arg0 at entry) +0x130 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  9 such accesses load 4 bytes from a0 (arg0 at entry) +0x130 via base s0 (a0), including `lw` at 0x1003fb6c, `lw` at 0x1003fb9c, `lw` at 0x1003fbcc.
  The `sw` at 0x1003fb8c stores 4 bytes to a0 (arg0 at entry) +0x100 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003fbbc stores 4 bytes to a0 (arg0 at entry) +0x104 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003fbec stores 4 bytes to a0 (arg0 at entry) +0x108 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003fc1c stores 4 bytes to a0 (arg0 at entry) +0x10c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003fc4c stores 4 bytes to a0 (arg0 at entry) +0x110 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003fc7c stores 4 bytes to a0 (arg0 at entry) +0x114 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003fcac stores 4 bytes to a0 (arg0 at entry) +0x118 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003fcdc stores 4 bytes to a0 (arg0 at entry) +0x11c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003fd0c stores 4 bytes to a0 (arg0 at entry) +0x120 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003fd20 stores 4 bytes to a0 (arg0 at entry) +0x124 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x1003fd24 loads 4 bytes from sym(xsetmonApp) +0x0 via base t0 (sym(xsetmonApp)).
  The `lbu` at 0x1003fd28 loads 1 bytes from [sym(xsetmonApp)] +0xcd via base t0 ([sym(xsetmonApp)]).
  The `lw` at 0x1003fd30 loads 4 bytes from abs 0x10050bc0 via base gp (0x100588fc).
  The `lw` at 0x1003fd38 loads 4 bytes from [sym(xsetmonApp)] +0x138 via base t0 ([sym(xsetmonApp)]).
  The `lw` at 0x1003fd4c loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84 via base a0 ([[sym(xsetmonApp)]+312]).
  The `sw` at 0x1003fe18 stores 4 bytes to a0 (arg0 at entry) +0x134 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x1003fed8 loads 4 bytes from abs 0x10051100 via base gp (0x100588fc).
  The `sw` at 0x1003fee4 stores 4 bytes to a0 (arg0 at entry) +0x140 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1003ff9c stores 4 bytes to a0 (arg0 at entry) +0x138 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040034 stores 4 bytes to a0 (arg0 at entry) +0x13c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  3 such accesses load 4 bytes from a0 (arg0 at entry) +0x13c via base s0 (a0), including `lw` at 0x10040044, `lw` at 0x100401ec, `lw` at 0x100401fc.
  The `sw` at 0x10040048 stores 4 bytes to a0 (arg0 at entry) +0x154 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  4 such accesses load 4 bytes from abs 0x10050a68 via base gp (0x100588fc), including `lw` at 0x1004014c, `lw` at 0x10040178, `lw` at 0x10040304.
  The `sw` at 0x10040158 stores 4 bytes to a0 (arg0 at entry) +0x148 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  4 such accesses load 4 bytes from sym(xmToggleButtonWidgetClass) +0x0 via base a1 (sym(xmToggleButtonWidgetClass)), including `lw` at 0x1004015c, `lw` at 0x10040188, `lw` at 0x10040314.
  The `lw` at 0x10040168 loads 4 bytes from a0 (arg0 at entry) +0x148 via base s0 (a0).
  The `sw` at 0x10040184 stores 4 bytes to a0 (arg0 at entry) +0x14c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  4 such accesses load 4 bytes from abs 0x10050d90 via base gp (0x100588fc), including `lw` at 0x10040194, `lw` at 0x100401b4, `lw` at 0x1004034c.
  The `sw` at 0x10040198 stores 4 bytes to a0 (arg0 at entry) +0x150 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x100401a8 loads 4 bytes from a0 (arg0 at entry) +0x14c via base s0 (a0).
  The `lw` at 0x100401c4 loads 4 bytes from a0 (arg0 at entry) +0x150 via base s0 (a0).
  The `sw` at 0x10040200 stores 4 bytes to a0 (arg0 at entry) +0x144 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040310 stores 4 bytes to a0 (arg0 at entry) +0x158 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x10040320 loads 4 bytes from a0 (arg0 at entry) +0x158 via base s0 (a0).
  The `sw` at 0x1004033c stores 4 bytes to a0 (arg0 at entry) +0x15c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040350 stores 4 bytes to a0 (arg0 at entry) +0x160 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x10040360 loads 4 bytes from a0 (arg0 at entry) +0x15c via base s0 (a0).
  The `lw` at 0x1004037c loads 4 bytes from a0 (arg0 at entry) +0x160 via base s0 (a0).
  The `sw` at 0x10040450 stores 4 bytes to a0 (arg0 at entry) +0x38 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040508 stores 4 bytes to a0 (arg0 at entry) +0x6c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x100405ac stores 4 bytes to a0 (arg0 at entry) +0x70 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040674 stores 4 bytes to a0 (arg0 at entry) +0xa8 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040724 stores 4 bytes to a0 (arg0 at entry) +0x24 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1004078c stores 4 bytes to a0 (arg0 at entry) +0x2c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  9 such accesses load 4 bytes from a0 (arg0 at entry) +0x2c via base s0 (a0), including `lw` at 0x100407c4, `lw` at 0x100407f4, `lw` at 0x10040824.
  The `sw` at 0x100407e4 stores 4 bytes to a0 (arg0 at entry) +0x90 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040814 stores 4 bytes to a0 (arg0 at entry) +0x8c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040844 stores 4 bytes to a0 (arg0 at entry) +0x88 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040874 stores 4 bytes to a0 (arg0 at entry) +0x84 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x100408a0 stores 4 bytes to a0 (arg0 at entry) +0x98 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x100408d0 stores 4 bytes to a0 (arg0 at entry) +0x94 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x100408fc stores 4 bytes to a0 (arg0 at entry) +0x80 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1004092c stores 4 bytes to a0 (arg0 at entry) +0x7c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1004093c stores 4 bytes to a0 (arg0 at entry) +0xa0 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040978 stores 4 bytes to a0 (arg0 at entry) +0x9c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040a48 stores 4 bytes to a0 (arg0 at entry) +0xac via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040afc stores 4 bytes to a0 (arg0 at entry) +0x20 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040b90 stores 4 bytes to a0 (arg0 at entry) +0x28 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  9 such accesses load 4 bytes from a0 (arg0 at entry) +0x28 via base s0 (a0), including `lw` at 0x10040ba0, `lw` at 0x10040bc8, `lw` at 0x10040bf0.
  The `sw` at 0x10040bb8 stores 4 bytes to a0 (arg0 at entry) +0x58 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040be0 stores 4 bytes to a0 (arg0 at entry) +0x54 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040c08 stores 4 bytes to a0 (arg0 at entry) +0x50 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040c30 stores 4 bytes to a0 (arg0 at entry) +0x4c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040c54 stores 4 bytes to a0 (arg0 at entry) +0x68 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040c7c stores 4 bytes to a0 (arg0 at entry) +0x64 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040ca0 stores 4 bytes to a0 (arg0 at entry) +0x48 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040cc8 stores 4 bytes to a0 (arg0 at entry) +0x44 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040cf0 stores 4 bytes to a0 (arg0 at entry) +0x60 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040d00 stores 4 bytes to a0 (arg0 at entry) +0x5c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040dbc stores 4 bytes to a0 (arg0 at entry) +0x30 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040e78 stores 4 bytes to a0 (arg0 at entry) +0x74 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040f34 stores 4 bytes to a0 (arg0 at entry) +0x3c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x10040ff0 stores 4 bytes to a0 (arg0 at entry) +0x78 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `sw` at 0x1004109c stores 4 bytes to a0 (arg0 at entry) +0x40 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  23 such accesses load 4 bytes from abs 0x10050bdc via base gp (0x100588fc), including `lw` at 0x10041130, `lw` at 0x10041154, `lw` at 0x10041174.
  4 such accesses load 4 bytes from a0 (arg0 at entry) +0x24 via base s0 (a0), including `lw` at 0x10041138, `lw` at 0x1004117c, `lw` at 0x10041198.
  The `lw` at 0x10041144 loads 4 bytes from a0 (arg0 at entry) +0x38 via base s0 (a0).
  The `sw` at 0x10041148 stores 4 bytes to a0 (arg0 at entry) +0x34 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  9 such accesses load 4 bytes from a0 (arg0 at entry) +0x70 via base s0 (a0), including `lw` at 0x1004115c, `lw` at 0x10041188, `lw` at 0x100411c8.
  The `lw` at 0x10041168 loads 4 bytes from a0 (arg0 at entry) +0x6c via base s0 (a0).
  4 such accesses load 4 bytes from a0 (arg0 at entry) +0x20 via base s0 (a0), including `lw` at 0x100411a0, `lw` at 0x10041314, `lw` at 0x1004132c.
  The `lw` at 0x100411a8 loads 4 bytes from a0 (arg0 at entry) +0xa8 via base s0 (a0).
  6 such accesses load 4 bytes from a0 (arg0 at entry) +0xf8 via base s0 (a0), including `lw` at 0x100411c0, `lw` at 0x100411f0, `lw` at 0x10041208.
  2 such accesses load 4 bytes from a0 (arg0 at entry) +0xec via base s0 (a0), including `lw` at 0x100411d0, `lw` at 0x1004143c.
  3 such accesses load 4 bytes from a0 (arg0 at entry) +0xf4 via base s0 (a0), including `lw` at 0x10041200, `lw` at 0x10041250, `lw` at 0x10041448.
  3 such accesses load 4 bytes from a0 (arg0 at entry) +0xf0 via base s0 (a0), including `lw` at 0x10041210, `lw` at 0x10041220, `lw` at 0x10041454.
  2 such accesses load 4 bytes from a0 (arg0 at entry) +0xe8 via base s0 (a0), including `lw` at 0x10041238, `lw` at 0x10041460.
  3 such accesses load 4 bytes from a0 (arg0 at entry) +0x12c via base s0 (a0), including `lw` at 0x10041260, `lw` at 0x10041290, `lw` at 0x10041474.
  2 such accesses load 4 bytes from a0 (arg0 at entry) +0x128 via base s0 (a0), including `lw` at 0x10041270, `lw` at 0x10041480.
  3 such accesses load 4 bytes from sym(xsetmonApp) +0x0 via base s3 (sym(xsetmonApp)), including `lw` at 0x10041294, `lw` at 0x100413f4, `lw` at 0x10041468.
  The `lbu` at 0x10041298 loads 1 bytes from [sym(xsetmonApp)] +0xcd via base a0 ([sym(xsetmonApp)]).
  3 such accesses load 4 bytes from a0 (arg0 at entry) +0x138 via base s0 (a0), including `lw` at 0x100412b0, `lw` at 0x100412d8, `lw` at 0x10041308.
  The `lw` at 0x100412c0 loads 4 bytes from a0 (arg0 at entry) +0x134 via base s0 (a0).
  The `lw` at 0x100412e8 loads 4 bytes from a0 (arg0 at entry) +0x140 via base s0 (a0).
  The `lw` at 0x10041338 loads 4 bytes from a0 (arg0 at entry) +0xac via base s0 (a0).
  4 such accesses load 4 bytes from a0 (arg0 at entry) +0x40 via base s0 (a0), including `lw` at 0x1004134c, `lw` at 0x100413a4, `lw` at 0x100413c0.
  2 such accesses load 4 bytes from a0 (arg0 at entry) +0x34 via base s0 (a0), including `lw` at 0x10041364, `lw` at 0x100413e4.
  The `lw` at 0x10041370 loads 4 bytes from a0 (arg0 at entry) +0x30 via base s0 (a0).
  2 such accesses load 4 bytes from a0 (arg0 at entry) +0x78 via base s0 (a0), including `lw` at 0x10041384, `lw` at 0x100413d8.
  The `lw` at 0x10041390 loads 4 bytes from a0 (arg0 at entry) +0x74 via base s0 (a0).
  2 such accesses load 4 bytes from a0 (arg0 at entry) +0x3c via base s0 (a0), including `lw` at 0x100413b0, `lw` at 0x100413cc.
  The `lbu` at 0x100413f8 loads 1 bytes from [sym(xsetmonApp)] +0xc8 via base t0 ([sym(xsetmonApp)]).
  7 such accesses load 4 bytes from abs 0x10050c1c via base gp (0x100588fc), including `lw` at 0x10041400, `lw` at 0x10041434, `lw` at 0x10041440.
  The `lbu` at 0x10041404 loads 1 bytes from [sym(xsetmonApp)] +0xc9 via base t0 ([sym(xsetmonApp)]).
  The `jalr` at 0x1003f1ac calls `setDefaultResources__11VkComponentGP10_WidgetRecPCPc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultStatisticsFormClassUIResources__21StatisticsFormClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x1003f1d0 calls `XtVaCreateWidget` with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=-0xd1, a4=0x1, a5=0x0.
  The `jalr` at 0x1003f1e4 calls `installDestroyHandler__11VkComponentGv` with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1003f2b0 calls `XtVaCreateManagedWidget` with a0=0x10051808, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x1003f370 calls `XtVaCreateManagedWidget` with a0=0x10051810, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x1003f3dc calls `XtVaCreateManagedWidget` with a0=0x10046960, a1=[sym(xmRowColumnWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x1d4, a4=0x0, a5=-0xb, a6=0x2, a7=-0x29a.
  The `jalr` at 0x1003f414 calls `XtVaCreateManagedWidget` with a0=0x10046970, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x5f.
  The `jalr` at 0x1003f44c calls `XtVaCreateManagedWidget` with a0=0x10046988, a1=[sym(xmLabelWidgetClass)], a2=[a0+252], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x5f.
  The `jalr` at 0x1003f47c calls `XtVaCreateManagedWidget` with a0=0x100469a0, a1=[sym(xmLabelWidgetClass)], a2=[a0+252], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003f4ac calls `XtVaCreateManagedWidget` with a0=0x100469b8, a1=[sym(xmLabelWidgetClass)], a2=[a0+252], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003f574 calls `XtVaCreateManagedWidget` with a0=0x10051818, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x1003f638 calls `XtVaCreateManagedWidget` with a0=0x10051820, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x1003f664 calls `XtAddCallback` with a0=ret(XtVaCreateManagedWidget), a1=-0x25, a2=sym(updateMemoUsageO2Callback__21StatisticsFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003f714 calls `XtVaCreateManagedWidget` with a0=0x10051828, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x1003f77c calls `XtVaCreateManagedWidget` with a0=0x10046960, a1=[sym(xmRowColumnWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x1d4, a4=0x0, a5=-0xb, a6=0x2, a7=-0x29a.
  The `jalr` at 0x1003f7ac calls `XtVaCreateManagedWidget` with a0=0x100469d0, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003f7dc calls `XtVaCreateManagedWidget` with a0=0x100469e8, a1=[sym(xmLabelWidgetClass)], a2=[a0+252], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003f80c calls `XtVaCreateManagedWidget` with a0=0x10046a00, a1=[sym(xmLabelWidgetClass)], a2=[a0+252], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003f83c calls `XtVaCreateManagedWidget` with a0=0x10046a18, a1=[sym(xmLabelWidgetClass)], a2=[a0+252], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003f86c calls `XtVaCreateManagedWidget` with a0=0x10046a30, a1=[sym(xmLabelWidgetClass)], a2=[a0+252], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003f89c calls `XtVaCreateManagedWidget` with a0=0x10046a48, a1=[sym(xmLabelWidgetClass)], a2=[a0+252], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003f8cc calls `XtVaCreateManagedWidget` with a0=0x10046a60, a1=[sym(xmLabelWidgetClass)], a2=[a0+252], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003f8fc calls `XtVaCreateManagedWidget` with a0=0x10046a80, a1=[sym(xmLabelWidgetClass)], a2=[a0+252], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003f92c calls `XtVaCreateManagedWidget` with a0=0x10046aa0, a1=[sym(xmLabelWidgetClass)], a2=[a0+252], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003f95c calls `XtVaCreateManagedWidget` with a0=0x10046ab8, a1=[sym(xmLabelWidgetClass)], a2=[a0+252], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003fa18 calls `XtVaCreateManagedWidget` with a0=0x10051830, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x1003facc calls `XtVaCreateManagedWidget` with a0=0x10051838, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x1003fb34 calls `XtVaCreateManagedWidget` with a0=0x10046ad8, a1=[sym(xmRowColumnWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x1d4, a4=0x0, a5=-0xb, a6=0x2, a7=-0x29a.
  The `jalr` at 0x1003fb64 calls `XtVaCreateManagedWidget` with a0=0x10046ae8, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003fb94 calls `XtVaCreateManagedWidget` with a0=0x10046b00, a1=[sym(xmLabelWidgetClass)], a2=[a0+304], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003fbc4 calls `XtVaCreateManagedWidget` with a0=0x10046b18, a1=[sym(xmLabelWidgetClass)], a2=[a0+304], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003fbf4 calls `XtVaCreateManagedWidget` with a0=0x10046b30, a1=[sym(xmLabelWidgetClass)], a2=[a0+304], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003fc24 calls `XtVaCreateManagedWidget` with a0=0x10046b48, a1=[sym(xmLabelWidgetClass)], a2=[a0+304], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003fc54 calls `XtVaCreateManagedWidget` with a0=0x10046b60, a1=[sym(xmLabelWidgetClass)], a2=[a0+304], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003fc84 calls `XtVaCreateManagedWidget` with a0=0x10046b78, a1=[sym(xmLabelWidgetClass)], a2=[a0+304], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003fcb4 calls `XtVaCreateManagedWidget` with a0=0x10046b90, a1=[sym(xmLabelWidgetClass)], a2=[a0+304], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003fce4 calls `XtVaCreateManagedWidget` with a0=0x10046bb0, a1=[sym(xmLabelWidgetClass)], a2=[a0+304], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003fd14 calls `XtVaCreateManagedWidget` with a0=0x10046bc8, a1=[sym(xmLabelWidgetClass)], a2=[a0+304], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1003fd48 calls `XSGIvcQueryPlatformParameter` with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=0x0, a3=0x0, a4=sp-64, a5=0x4.
  The `jalr` at 0x1003fe04 calls `XtVaCreateManagedWidget` with a0=0x10046be8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x1003fec4 calls `XtVaCreateManagedWidget` with a0=0x10046bf8, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x1003fee0 calls `XtAddCallback` with a0=ret(XtVaCreateManagedWidget), a1=-0x25, a2=sym(SG2applyChanges__21StatisticsFormClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1003ff94 calls `XtVaCreateManagedWidget` with a0=0x10046c08, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x1004000c calls `XtVaCreateManagedWidget` with a0=0x10046c18, a1=[sym(xmRowColumnWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x1d4, a4=0x0, a5=-0xb, a6=0x2, a7=-0x29a.
  The `jalr` at 0x1004003c calls `XtVaCreateManagedWidget` with a0=0x10046c28, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1004012c calls `XtVaCreateManagedWidget` with a0=0x10046c40, a1=[sym(xmRowColumnWidgetClass)], a2=[a0+316], a3=-0xb, a4=0x2, a5=-0xc1, a6=0x2, a7=-0x39.
  The `jalr` at 0x10040160 calls `XtVaCreateManagedWidget` with a0=0x10046c50, a1=[sym(xmToggleButtonWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=-0x38, a6=0x1, a7=0x0.
  The `jalr` at 0x1004018c calls `XtVaCreateManagedWidget` with a0=0x10046c68, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+328], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x100401ac calls `XmToggleButtonSetState` with a0=[a0+332], a1=(unknown), a2=0x0, a3=(unknown).
  The `jalr` at 0x100401c8 calls `XmToggleButtonSetState` with a0=[a0+336], a1=(unknown), a2=0x0, a3=(unknown).
  The `jalr` at 0x100401f4 calls `XtVaCreateManagedWidget` with a0=0x10046c80, a1=[sym(xmLabelWidgetClass)], a2=[a0+316], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x100402e4 calls `XtVaCreateManagedWidget` with a0=0x10046c40, a1=[sym(xmRowColumnWidgetClass)], a2=[a0+316], a3=-0xb, a4=0x2, a5=-0xc1, a6=0x2, a7=-0x39.
  The `jalr` at 0x10040318 calls `XtVaCreateManagedWidget` with a0=0x10046c98, a1=[sym(xmToggleButtonWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=-0x38, a6=0x1, a7=0x0.
  The `jalr` at 0x10040344 calls `XtVaCreateManagedWidget` with a0=0x10046cb0, a1=[sym(xmToggleButtonWidgetClass)], a2=[a0+344], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x10040364 calls `XmToggleButtonSetState` with a0=[a0+348], a1=(unknown), a2=0x0, a3=(unknown).
  The `jalr` at 0x10040380 calls `XmToggleButtonSetState` with a0=[a0+352], a1=(unknown), a2=0x0, a3=(unknown).
  The `jalr` at 0x10040444 calls `XtVaCreateManagedWidget` with a0=0x10051840, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x100404fc calls `XtVaCreateManagedWidget` with a0=0x10051848, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x100405a0 calls `XtVaCreateManagedWidget` with a0=0x10046cc8, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x10040668 calls `XtVaCreateManagedWidget` with a0=0x10051850, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x1004071c calls `XtVaCreateManagedWidget` with a0=0x10051858, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x10040784 calls `XtVaCreateManagedWidget` with a0=0x10046cd8, a1=[sym(xmRowColumnWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x1d4, a4=0x0, a5=-0xb, a6=0x2, a7=-0x29a.
  The `jalr` at 0x100407bc calls `XtVaCreateManagedWidget` with a0=0x10046ce8, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x5f.
  The `jalr` at 0x100407ec calls `XtVaCreateManagedWidget` with a0=0x10046d00, a1=[sym(xmLabelWidgetClass)], a2=[a0+44], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1004081c calls `XtVaCreateManagedWidget` with a0=0x10046d10, a1=[sym(xmLabelWidgetClass)], a2=[a0+44], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1004084c calls `XtVaCreateManagedWidget` with a0=0x10046d28, a1=[sym(xmLabelWidgetClass)], a2=[a0+44], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x1004087c calls `XtVaCreateManagedWidget` with a0=0x10046d38, a1=[sym(xmLabelWidgetClass)], a2=[a0+44], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x100408a8 calls `XtVaCreateManagedWidget` with a0=0x10051860, a1=[sym(xmLabelWidgetClass)], a2=[a0+44], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x100408d8 calls `XtVaCreateManagedWidget` with a0=0x10046d48, a1=[sym(xmLabelWidgetClass)], a2=[a0+44], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x10040904 calls `XtVaCreateManagedWidget` with a0=0x10051868, a1=[sym(xmLabelWidgetClass)], a2=[a0+44], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x10040934 calls `XtVaCreateManagedWidget` with a0=0x10046d58, a1=[sym(xmLabelWidgetClass)], a2=[a0+44], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=0x0.
  The `jalr` at 0x10040970 calls `XtVaCreateManagedWidget` with a0=0x10046d70, a1=[sym(xmLabelWidgetClass)], a2=[a0+44], a3=-0x29, a4=0x0, a5=-0x3, a6=0x0, a7=-0x2d.
  The `jalr` at 0x10040a3c calls `XtVaCreateManagedWidget` with a0=0x10051870, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x5f.
  The `jalr` at 0x10040af0 calls `XtVaCreateManagedWidget` with a0=0x10051878, a1=[sym(xmFrameWidgetClass)], a2=[a0+16], a3=-0xa7, a4=0x5, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x10040b70 calls `XtVaCreateManagedWidget` with a0=0x10046d80, a1=[sym(xmRowColumnWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x1d4, a4=0x0, a5=-0xb, a6=0x2, a7=-0x29a.
  The `jalr` at 0x10040b98 calls `XtVaCreateManagedWidget` with a0=0x10046d90, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x10040bc0 calls `XtVaCreateManagedWidget` with a0=0x10046da8, a1=[sym(xmLabelWidgetClass)], a2=[a0+40], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x10040be8 calls `XtVaCreateManagedWidget` with a0=0x10046db8, a1=[sym(xmLabelWidgetClass)], a2=[a0+40], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x10040c10 calls `XtVaCreateManagedWidget` with a0=0x10046dd0, a1=[sym(xmLabelWidgetClass)], a2=[a0+40], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x10040c38 calls `XtVaCreateManagedWidget` with a0=0x10046de0, a1=[sym(xmLabelWidgetClass)], a2=[a0+40], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x10040c5c calls `XtVaCreateManagedWidget` with a0=0x10051880, a1=[sym(xmLabelWidgetClass)], a2=[a0+40], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x10040c84 calls `XtVaCreateManagedWidget` with a0=0x10046df0, a1=[sym(xmLabelWidgetClass)], a2=[a0+40], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x10040ca8 calls `XtVaCreateManagedWidget` with a0=0x10051888, a1=[sym(xmLabelWidgetClass)], a2=[a0+40], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x10040cd0 calls `XtVaCreateManagedWidget` with a0=0x10046e00, a1=[sym(xmLabelWidgetClass)], a2=[a0+40], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x10040cf8 calls `XtVaCreateManagedWidget` with a0=0x10046e18, a1=[sym(xmLabelWidgetClass)], a2=[a0+40], a3=-0x2d, a4=0x2, a5=0x0.
  The `jalr` at 0x10040db4 calls `XtVaCreateManagedWidget` with a0=0x10046e28, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x10040e70 calls `XtVaCreateManagedWidget` with a0=0x10046e38, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x10040f2c calls `XtVaCreateManagedWidget` with a0=0x10046e48, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x10040fe8 calls `XtVaCreateManagedWidget` with a0=0x10046e58, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x10041090 calls `XtVaCreateManagedWidget` with a0=0x10046e70, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x10041128 calls `XtVaCreateManagedWidget` with a0=0x10046e88, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x3, a4=0x0, a5=-0x2d, a6=0x2, a7=-0x42.
  The `jalr` at 0x1004114c calls `XtVaSetValues` with a0=[a0+56], a1=-0x1b3, a2=[a0+36], a3=-0x116, a4=[a0+36], a5=0x0.
  The `jalr` at 0x1004116c calls `XtVaSetValues` with a0=[a0+108], a1=-0x1b3, a2=[a0+112], a3=-0xa5, a4=[a0+112], a5=0x0.
  The `jalr` at 0x10041184 calls `XtVaSetValues` with a0=[a0+112], a1=-0x76, a2=[a0+36], a3=0x0.
  The `jalr` at 0x100411ac calls `XtVaSetValues` with a0=[a0+168], a1=-0x76, a2=[a0+32], a3=-0x1b3, a4=[a0+36], a5=-0xa5, a6=[a0+36], a7=0x0.
  The `jalr` at 0x100411d4 calls `XtVaSetValues` with a0=[a0+236], a1=-0x76, a2=[a0+112], a3=-0x1b3, a4=[a0+248], a5=-0xa5, a6=[a0+248], a7=0x0.
  The `jalr` at 0x100411ec calls `XtVaSetValues` with a0=[a0+248], a1=-0x76, a2=[a0+112], a3=0x0.
  The `jalr` at 0x10041214 calls `XtVaSetValues` with a0=[a0+240], a1=-0x76, a2=[a0+248], a3=-0x1b3, a4=[a0+244], a5=-0xa5, a6=[a0+244], a7=0x0.
  The `jalr` at 0x10041234 calls `XtVaSetValues` with a0=[a0+232], a1=-0x76, a2=[a0+248], a3=-0xa5, a4=[a0+240], a5=0x0.
  The `jalr` at 0x1004124c calls `XtVaSetValues` with a0=[a0+244], a1=-0x76, a2=[a0+248], a3=0x0.
  The `jalr` at 0x10041274 calls `XtVaSetValues` with a0=[a0+296], a1=-0x76, a2=[a0+112], a3=-0x1b3, a4=[a0+300], a5=-0xa5, a6=[a0+300], a7=0x0.
  The `jalr` at 0x1004128c calls `XtVaSetValues` with a0=[a0+300], a1=-0x76, a2=[a0+112], a3=0x0.
  The `jalr` at 0x100412c4 calls `XtVaSetValues` with a0=[a0+308], a1=-0x76, a2=[a0+112], a3=-0x1b3, a4=[a0+312], a5=-0xa5, a6=[a0+312], a7=0x0.
  The `jalr` at 0x100412ec calls `XtVaSetValues` with a0=[a0+320], a1=-0x76, a2=[a0+112], a3=-0x1b3, a4=[a0+312], a5=-0x116, a6=[a0+312], a7=0x0.
  The `jalr` at 0x10041304 calls `XtVaSetValues` with a0=[a0+312], a1=-0x76, a2=[a0+112], a3=0x0.
  The `jalr` at 0x1004131c calls `XtVaSetValues` with a0=[a0+36], a1=-0x76, a2=[a0+32], a3=0x0.
  The `jalr` at 0x1004133c calls `XtVaSetValues` with a0=[a0+172], a1=-0x1b3, a2=[a0+32], a3=-0xa5, a4=[a0+32], a5=0x0.
  The `jalr` at 0x10041354 calls `XtVaSetValues` with a0=[a0+32], a1=-0x76, a2=[a0+64], a3=0x0.
  The `jalr` at 0x10041374 calls `XtVaSetValues` with a0=[a0+48], a1=-0x1b3, a2=[a0+52], a3=-0xa5, a4=[a0+52], a5=0x0.
  The `jalr` at 0x10041394 calls `XtVaSetValues` with a0=[a0+116], a1=-0x1b3, a2=[a0+120], a3=-0xa5, a4=[a0+120], a5=0x0.
  The `jalr` at 0x100413b4 calls `XtVaSetValues` with a0=[a0+60], a1=-0x1b3, a2=[a0+64], a3=-0xa5, a4=[a0+64], a5=0x0.
  The `jalr` at 0x100413d4 calls `XtVaSetValues` with a0=[a0+120], a1=-0xa5, a2=[a0+60], a3=-0x1b3, a4=[a0+64], a5=0x0.
  The `jalr` at 0x100413ec calls `XtVaSetValues` with a0=[a0+64], a1=-0x76, a2=[a0+52], a3=0x0.
  The `jalr` at 0x1004142c calls `XtUnmanageChild` with a0=[a0+248], a1=[[sym(xsetmonApp)]+200]:1, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10041438 calls `XtUnmanageChild` with a0=[a0+236], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10041444 calls `XtUnmanageChild` with a0=[a0+244], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10041450 calls `XtUnmanageChild` with a0=[a0+240], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1004145c calls `XtUnmanageChild` with a0=[a0+232], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10041470 calls `XtUnmanageChild` with a0=[a0+300], a1=(unknown), a2=[[sym(xsetmonApp)]+201]:1, a3=(unknown).
  The `jalr` at 0x1004147c calls `XtUnmanageChild` with a0=[a0+296], a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x1003f650 goes to 0x1003f66c when a2(=[[sym(xsetmonApp)]+200]:1) == 0 and falls through when a2(=[[sym(xsetmonApp)]+200]:1) != 0.
  The `beq` at 0x1003fd2c goes to 0x10040388 when a1(=[[sym(xsetmonApp)]+205]:1) == 0 and falls through when a1(=[[sym(xsetmonApp)]+205]:1) != 0.
  The `beq` at 0x1004129c goes to 0x10041310 when a0(=[[sym(xsetmonApp)]+205]:1) == 0 and falls through when a0(=[[sym(xsetmonApp)]+205]:1) != 0.
  The `beq` at 0x100413fc goes to 0x1004142c when a1(=[[sym(xsetmonApp)]+200]:1) == 0 and falls through when a1(=[[sym(xsetmonApp)]+200]:1) != 0.
  The `beq` at 0x10041408 goes to 0x1004146c when a2(=[[sym(xsetmonApp)]+201]:1) == 0 and falls through when a2(=[[sym(xsetmonApp)]+201]:1) != 0.
  The return at 0x10041424 has v0 = ?.
- `checkPriv__7xsetmonGv` in `usr/bin/X11/xsetmon` at 0x10041490 (n32).
  It occupies 536 bytes.
  3 such accesses load 4 bytes from abs 0x10050b6c via base gp (0x100588fc), including `lw` at 0x100414a4, `lw` at 0x100414c0, `lw` at 0x10041538.
  2 such accesses load 4 bytes from a0 (arg0 at entry) +0x80 via base s0 (a0), including `lw` at 0x100414d0, `lw` at 0x10041508.
  4 such accesses load 4 bytes from abs 0x10050b70 via base gp (0x100588fc), including `lw` at 0x100414d8, `lw` at 0x10041550, `lw` at 0x10041560.
  2 such accesses load 4 bytes from abs 0x10050b74 via base gp (0x100588fc), including `lw` at 0x100414dc, `lw` at 0x10041514.
  3 such accesses load 4 bytes from abs 0x10050b78 via base gp (0x100588fc), including `lw` at 0x100414ec, `lw` at 0x100414f0, `lw` at 0x1004153c.
  The `lw` at 0x10041524 loads 4 bytes from abs 0x10050b7c via base gp (0x100588fc).
  The `sb` at 0x10041530 stores 1 bytes to ret(strchr) +0x0 via base v0 (ret(strchr)) with value 0x0.
  The `lw` at 0x10041540 loads 4 bytes from ret(gethostbyname) +0x0 via base v0 (ret(gethostbyname)).
  3 such accesses load 4 bytes from abs 0x1005091c via base gp (0x100588fc), including `lw` at 0x10041564, `lw` at 0x10041594, `lw` at 0x100415bc.
  2 such accesses load 4 bytes from abs 0x10050b80 via base gp (0x100588fc), including `lw` at 0x1004158c, `lw` at 0x1004167c.
  3 such accesses load 4 bytes from abs 0x10050b84 via base gp (0x100588fc), including `lw` at 0x10041590, `lw` at 0x100415e8, `lw` at 0x1004168c.
  The `lw` at 0x100415a8 loads 4 bytes from abs 0x10050b88 via base gp (0x100588fc).
  The `lw` at 0x100415b8 loads 4 bytes from abs 0x10050b68 via base gp (0x100588fc).
  The `lw` at 0x100415cc loads 4 bytes from abs 0x10050b8c via base gp (0x100588fc).
  The `lw` at 0x100415dc loads 4 bytes from abs 0x10050b90 via base gp (0x100588fc).
  The `lw` at 0x10041600 loads 4 bytes from abs 0x10050b94 via base gp (0x100588fc).
  The `lw` at 0x1004160c loads 4 bytes from ret(getTheInfoDialog__Gv) +0x8 via base v0 (ret(getTheInfoDialog__Gv)).
  The `lw` at 0x10041610 loads 4 bytes from [ret(getTheInfoDialog__Gv)+8] +0xe4 via base t9 ([ret(getTheInfoDialog__Gv)+8]).
  The `lw` at 0x10041624 loads 4 bytes from [ret(getTheInfoDialog__Gv)+8] +0xec via base t9 ([ret(getTheInfoDialog__Gv)+8]).
  The `lw` at 0x10041640 loads 4 bytes from abs 0x10050b98 via base gp (0x100588fc).
  The `jalr` at 0x100414b8 calls `gethostname` with a0=sp-848, a1=0x100, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100414c8 calls `gethostname` with a0=sp-568, a1=0x100, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100414e0 calls `strchr` with a0=[a0+128], a1=0x2f, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100414f8 calls `strcpy` with a0=sp-568, a1=ret(strchr)+1, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1004150c calls `strcpy` with a0=sp-568, a1=[a0+128], a2=(unknown), a3=(unknown).
  The `jalr` at 0x1004151c calls `strchr` with a0=sp-568, a1=0x3a, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1004152c calls `gethostbyname` with a0=sp-568, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10041544 calls `strcpy` with a0=sp-568, a1=[ret(gethostbyname)], a2=(unknown), a3=(unknown).
  The `jalr` at 0x10041558 calls `gethostname` with a0=sp-568, a1=0x100, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1004156c calls `strcmp` with a0=0x10043c78, a1=sp-568, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10041580 calls `strcmp` with a0=sp-848, a1=sp-568, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100415a0 calls `sprintf` with a0=sp-312, a1=0x10043c88, a2=sp-568, a3=(unknown).
  The `jalr` at 0x100415ac calls `system` with a0=sp-312, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100415c4 calls `VkGetResource__GPCcT1` with a0=0x10043cc0, a1=0x10043cc0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100415d4 calls `strlen` with a0=ret(VkGetResource__GPCcT1), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100415e0 calls `__nwa__GUi` with a0=ret(strlen)+256, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100415f8 calls `sprintf` with a0=ret(__nwa__GUi), a1=(unknown), a2=sp-568, a3=(unknown).
  The `jalr` at 0x10041604 calls `getTheInfoDialog__Gv` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10041638 calls (unknown callee) with a0=([[ret(getTheInfoDialog__Gv)+8]+228] + ret(getTheInfoDialog__Gv)), a1=ret(__nwa__GUi), a2=0x0, a3=0x0, a4=0x0, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10041644 calls `__dla__GPv` with a0=ret(__nwa__GUi), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10041680 calls `getuid` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x100414d4 goes to 0x10041564 when a0(=[a0+128]) == 0 and falls through when a0(=[a0+128]) != 0.
  The `beq` at 0x100414e8 goes to 0x10041508 when v0(=ret(strchr)) == 0 and falls through when v0(=ret(strchr)) != 0.
  The `beq` at 0x10041534 goes to 0x10041554 when v0(=ret(gethostbyname)) == 0 and falls through when v0(=ret(gethostbyname)) != 0.
  The `beq` at 0x10041574 goes to 0x1004167c when v0(=ret(strcmp)) == 0 and falls through when v0(=ret(strcmp)) != 0.
  The `beq` at 0x10041588 goes to 0x10041680 when v0(=ret(strcmp)) == 0 and falls through when v0(=ret(strcmp)) != 0.
  The `beq` at 0x100415b4 goes to 0x10041664 when v0(=ret(system)) == 0 and falls through when v0(=ret(system)) != 0.
  The `bne` at 0x10041688 goes to 0x10041594 when v0(=ret(getuid)) != 0 and falls through when v0(=ret(getuid)) == 0.
  The return at 0x1004165c has v0 = 0x0.
  The return at 0x10041674 has v0 = 0x1.
  The return at 0x100416a0 has v0 = 0x1.
- `vLUBackSubstitute__7MMatrixGPiPf` in `usr/bin/X11/xsetmon` at 0x10041730 (n32).
  It occupies 576 bytes.
  The `lw` at 0x10041758 loads 4 bytes from a0 (arg0 at entry) +0x0 via base a0 (a0).
  2 such accesses load 4 bytes from [a0] +0x0 via base s0 ([a0]), including `lw` at 0x10041760, `lw` at 0x10041808.
  2 such accesses load 4 bytes from abs 0x10050918 via base gp (0x100588fc), including `lw` at 0x100417a0, `lw` at 0x10041864.
  2 such accesses load 4 bytes from ? (base unknown) via base s1 (?), including `lwc1` at 0x100417e4, `lwc1` at 0x100418f4.
  3 such accesses load 4 bytes from ret(0x1002d620) +0x0 via base v0 (ret(0x1002d620)), including `lwc1` at 0x100417e8, `lwc1` at 0x10041898, `lwc1` at 0x100418fc.
  2 such accesses store 4 bytes to ? (base unknown) via base s5 (?), including `swc1` at 0x10041800, `swc1` at 0x100418b8.
  4 such accesses load 4 bytes from a0 (arg0 at entry) +0x0 via base s2 (a0), including `lw` at 0x10041804, `lw` at 0x100418bc, `lw` at 0x100418f8.
  The `lw` at 0x10041824 loads 4 bytes from ? (base unknown) via base s6 (?).
  2 such accesses load 4 bytes from ? (base unknown) via base s5 (?), including `lwc1` at 0x10041830, `lwc1` at 0x100418cc.
  The `lwc1` at 0x10041838 loads 4 bytes from ? (base unknown) via base t8 (?).
  The `swc1` at 0x10041848 stores 4 bytes to ? (base unknown) via base t8 (?) with value .
  2 such accesses load 4 bytes from [a0] +0x0 via base t9 ([a0]), including `lw` at 0x100418c0, `lw` at 0x10041900.
  The `jal` at 0x100417dc calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10041890 calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100418ec calls (unnamed) [0x1002d620] with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bne` at 0x10041784 goes to 0x10041864 when s0(=[[a0]]) < 0x2 (signed) and falls through when s0(=[[a0]]) >= 0x2 (signed).
  The `bne` at 0x100417c4 goes to 0x10041800 when s7(?) < s8(?) (signed) and falls through when s7(?) >= s8(?) (signed).
  The `bne` at 0x100417f8 goes to 0x100417d0 when s0(?) != s4(?) and falls through when s0(?) == s4(?).
  The `beq` at 0x1004181c goes to 0x10041864 when s4(?) >= s0(=[[a0]]) (signed) and falls through when s4(?) < s0(=[[a0]]) (signed).
  The `bne` at 0x10041844 goes to 0x100417c0 when s8(?) != 0 and falls through when s8(?) == 0.
  The `bc1t` at 0x10041854 goes to 0x10041800 when f20 == f22 (c.eq.s at 0x1004184c) and falls through when not (f20 == f22 (c.eq.s at 0x1004184c)).
  The `bltz` at 0x1004186c goes to 0x10041924 when s4(=[[a0]]-1) < 0 (signed) and falls through when s4(=[[a0]]-1) >= 0 (signed).
  The `bltz` at 0x100418b4 goes to 0x10041924 when s4(?) < 0 (signed) and falls through when s4(?) >= 0 (signed).
  The `beq` at 0x100418d0 goes to 0x10041884 when s0(?) >= t9(=[[a0]]) (signed) and falls through when s0(?) < t9(=[[a0]]) (signed).
  The `bne` at 0x10041914 goes to 0x100418e0 when s0(?) < t9(=[[a0]]) (signed) and falls through when s0(?) >= t9(=[[a0]]) (signed).
  The return at 0x10041958 has v0 = ?.
- `doSetSCHPhase__18ChannelFormClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10041970 (n32).
  It occupies 8 bytes.
  The return at 0x10041970 has v0 = ?.
- `__dt__20GammaAssignmentClassGv` in `usr/bin/X11/xsetmon` at 0x100419e0 (n32).
  It occupies 104 bytes.
  The `lw` at 0x10041a08 loads 4 bytes from abs 0x10050ed8 via base gp (0x100588fc).
  The `lw` at 0x10041a0c loads 4 bytes from abs 0x100512a4 via base gp (0x100588fc).
  The `sw` at 0x10041a10 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__20GammaAssignmentClass).
  The `lw` at 0x10041a2c loads 4 bytes from abs 0x100509ec via base gp (0x100588fc).
  The `jal` at 0x10041a18 calls `__dt__22GammaAssignmentClassUIGv [0x10024ae0]` with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0x10041a30 calls `__dl__GPv` with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x10041a00 goes to 0x10041a38 when a0 == 0 and falls through when a0 != 0.
  The `beq` at 0x10041a28 goes to 0x10041a38 when (v1(=a1) & 0x1) == 0 and falls through when (v1(=a1) & 0x1) != 0.
  The return at 0x10041a40 has v0 = ?.
- `doDragScalar__19GammaMapEditorClassGP10_WidgetRecP7_XEvent` in `usr/bin/X11/xsetmon` at 0x10041a50 (n32).
  It occupies 300 bytes.
  The `lw` at 0x10041a50 loads 4 bytes from a2 (arg2 at entry) +0x24 via base a2 (a2).
  The `lhu` at 0x10041a54 loads 2 bytes from a0 (arg0 at entry) +0x96 via base a0 (a0).
  The `lh` at 0x10041a58 loads 2 bytes from a0 (arg0 at entry) +0x76 via base a0 (a0).
  The `lwc1` at 0x10041a8c loads 4 bytes from abs 0x10051dcc via base gp (0x100588fc).
  The `lwc1` at 0x10041a90 loads 4 bytes from a0 (arg0 at entry) +0x8c via base a0 (a0).
  The `lwc1` at 0x10041ab8 loads 4 bytes from a0 (arg0 at entry) +0x90 via base s0 (a0).
  The `lwc1` at 0x10041abc loads 4 bytes from a0 (arg0 at entry) +0x88 via base s0 (a0).
  The `lw` at 0x10041ac0 loads 4 bytes from abs 0x10050d30 via base gp (0x100588fc).
  2 such accesses store 4 bytes to a0 (arg0 at entry) +0x84 via base s0 (a0), including `swc1` at 0x10041ad4, `swc1` at 0x10041b04.
  The `ldc1` at 0x10041ad8 loads 8 bytes from abs 0x10051d90 via base gp (0x100588fc).
  The `ldc1` at 0x10041ae0 loads 8 bytes from abs 0x10051d98 via base gp (0x100588fc).
  2 such accesses load 4 bytes from abs 0x10051dd8 via base gp (0x100588fc), including `lwc1` at 0x10041ae8, `lwc1` at 0x10041afc.
  2 such accesses load 4 bytes from abs 0x10051ddc via base gp (0x100588fc), including `lwc1` at 0x10041af0, `lwc1` at 0x10041af8.
  The `swc1` at 0x10041b0c stores 4 bytes to a0 (arg0 at entry) +0x84 via base s0 (a0) with value 0x3dcccccd.
  2 such accesses load 4 bytes from abs 0x10050f24 via base gp (0x100588fc), including `lw` at 0x10041b10, `lw` at 0x10041b54.
  The `sw` at 0x10041b20 stores 4 bytes to a0 (arg0 at entry) +0x68 via base s0 (a0) with value 0x1.
  The `lw` at 0x10041b24 loads 4 bytes from abs 0x100511e4 via base gp (0x100588fc).
  The `lwc1` at 0x10041b30 loads 4 bytes from a0 (arg0 at entry) +0x84 via base s0 (a0).
  The `swc1` at 0x10041b60 stores 4 bytes to a0 (arg0 at entry) +0x84 via base s0 (a0) with value 0x41a00000.
  The `jalr` at 0x10041ad0 calls `exp` with a0=a0 at entry (arg0), a1=[a2+36], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10041b1c calls `vGammaScalarChanged__19GammaMapEditorClassGf [0x10026610]` with a0=a0 at entry (arg0), a1=(unknown), a2=0x1, a3=(unknown); fp f14=0x3dcccccd, f15=0x41a00000.
  The `jal` at 0x10041b2c calls `vTellGammaScalarValue__19GammaMapEditorClassCGf [0x1003ee30]` with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown); fp f13=[a0+132].
  The `bc1f` at 0x10041aa8 goes to 0x10041b64 when not (f4 < f0 (c.lt.s at 0x10041aa0)) and falls through when f4 < f0 (c.lt.s at 0x10041aa0).
  The `bc1f` at 0x10041b00 goes to 0x10041b48 when not (f13 < f5(=0x3dcccccd) (c.lt.s at 0x10041af4)) and falls through when f13 < f5(=0x3dcccccd) (c.lt.s at 0x10041af4).
  The `bc1f` at 0x10041b50 goes to 0x10041b14 when not (f4(=0x41a00000) < f13 (c.lt.s at 0x10041b48)) and falls through when f4(=0x41a00000) < f13 (c.lt.s at 0x10041b48).
  The `bc1f` at 0x10041b6c goes to 0x10041ab8 when not (f6(=0x41200000) < f4 (c.lt.s at 0x10041b64)) and falls through when f6(=0x41200000) < f4 (c.lt.s at 0x10041b64).
  The return at 0x10041b40 has v0 = ret(vTellGammaScalarValue__19GammaMapEditorClassCGf).
- `createWindows__7xsetmonGv` in `usr/bin/X11/xsetmon` at 0x10041b80 (n32).
  It occupies 164 bytes.
  The `lw` at 0x10041b94 loads 4 bytes from abs 0x10050b4c via base gp (0x100588fc).
  The `lw` at 0x10041bc0 loads 4 bytes from abs 0x10050f44 via base gp (0x100588fc).
  The `lw` at 0x10041bc8 loads 4 bytes from abs 0x1005091c via base gp (0x100588fc).
  2 such accesses load 1 bytes from a0 (arg0 at entry) +0x84 via base s8 (a0), including `lbu` at 0x10041be8, `lbu` at 0x10041bf0.
  The `sw` at 0x10041bf8 stores 4 bytes to a0 (arg0 at entry) +0x130 via base s8 (a0) with value .
  The `lw` at 0x10041bfc loads 4 bytes from ? (base unknown) via base v0 (?).
  2 such accesses load 4 bytes from ? (base unknown) via base a0 (?), including `lw` at 0x10041c00, `lw` at 0x10041c04.
  The `jalr` at 0x10041ba8 calls `__nw__GUi` with a0=0x70, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10041bd4 calls `__ct__18XSetmonWindowClassGPCcP3ArgUi [0x10027170]` with a0=ret(__nw__GUi), a1=0x10043c60, a2=0x0, a3=0x0.
  The `jalr` at 0x10041c08 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=[a0+132]:1, a3=(unknown).
  The `beq` at 0x10041bb4 goes to 0x10041bec when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` at 0x10041bf4 goes to 0x10041c10 when a2(=[a0+132]:1) == 0 and falls through when a2(=[a0+132]:1) != 0.
  The return at 0x10041c1c has v0 = ?.
- `ClearFormat__19StatisticsFormClassGv` in `usr/bin/X11/xsetmon` at 0x10041c30 (n32).
  It occupies 484 bytes.
  15 such accesses load 4 bytes from abs 0x10050e64 via base gp (0x100588fc), including `lw` at 0x10041c44, `lw` at 0x10041c6c, `lw` at 0x10041c88.
  The `lw` at 0x10041c58 loads 4 bytes from a0 (arg0 at entry) +0x30 via base a0 (a0).
  15 such accesses load 4 bytes from abs 0x10050e80 via base gp (0x100588fc), including `lw` at 0x10041c5c, `lw` at 0x10041c78, `lw` at 0x10041c94.
  15 such accesses load 4 bytes from abs 0x10051cc0 via base gp (0x100588fc), including `lw` at 0x10041c68, `lw` at 0x10041c84, `lw` at 0x10041ca0.
  The `lw` at 0x10041c74 loads 4 bytes from a0 (arg0 at entry) +0x54 via base s0 (a0).
  The `lw` at 0x10041c90 loads 4 bytes from a0 (arg0 at entry) +0x4c via base s0 (a0).
  The `lw` at 0x10041cac loads 4 bytes from a0 (arg0 at entry) +0x64 via base s0 (a0).
  The `lw` at 0x10041cc8 loads 4 bytes from a0 (arg0 at entry) +0x44 via base s0 (a0).
  The `lw` at 0x10041ce4 loads 4 bytes from a0 (arg0 at entry) +0x5c via base s0 (a0).
  2 such accesses load 4 bytes from a0 (arg0 at entry) +0x38 via base s0 (a0), including `lw` at 0x10041d00, `lw` at 0x10041dc4.
  The `lw` at 0x10041d1c loads 4 bytes from a0 (arg0 at entry) +0x6c via base s0 (a0).
  The `lw` at 0x10041d38 loads 4 bytes from a0 (arg0 at entry) +0x8c via base s0 (a0).
  The `lw` at 0x10041d54 loads 4 bytes from a0 (arg0 at entry) +0x84 via base s0 (a0).
  The `lw` at 0x10041d70 loads 4 bytes from a0 (arg0 at entry) +0x94 via base s0 (a0).
  The `lw` at 0x10041d8c loads 4 bytes from a0 (arg0 at entry) +0x7c via base s0 (a0).
  The `lw` at 0x10041da8 loads 4 bytes from a0 (arg0 at entry) +0x9c via base s0 (a0).
  The `lw` at 0x10041dbc loads 4 bytes from abs 0x10050c1c via base gp (0x100588fc).
  The `lw` at 0x10041dd0 loads 4 bytes from a0 (arg0 at entry) +0x3c via base s0 (a0).
  The `lw` at 0x10041dec loads 4 bytes from a0 (arg0 at entry) +0x74 via base s0 (a0).
  The `jal` at 0x10041c54 calls `EZ__GP10_WidgetRec [0x1001e910]` with a0=[a0+48], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10041c64 calls `__as__9EZWrapperGPCc [0x100201d0]` with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=(unknown), a3=(unknown).
  The `jal` at 0x10041c70 calls `EZ__GP10_WidgetRec [0x1001e910]` with a0=[a0+84], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10041c80 calls `__as__9EZWrapperGPCc [0x100201d0]` with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=(unknown), a3=(unknown).
  The `jal` at 0x10041c8c calls `EZ__GP10_WidgetRec [0x1001e910]` with a0=[a0+76], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10041c9c calls `__as__9EZWrapperGPCc [0x100201d0]` with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=(unknown), a3=(unknown).
  The `jal` at 0x10041ca8 calls `EZ__GP10_WidgetRec [0x1001e910]` with a0=[a0+100], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10041cb8 calls `__as__9EZWrapperGPCc [0x100201d0]` with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=(unknown), a3=(unknown).
  The `jal` at 0x10041cc4 calls `EZ__GP10_WidgetRec [0x1001e910]` with a0=[a0+68], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10041cd4 calls `__as__9EZWrapperGPCc [0x100201d0]` with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=(unknown), a3=(unknown).
  The `jal` at 0x10041ce0 calls `EZ__GP10_WidgetRec [0x1001e910]` with a0=[a0+92], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10041cf0 calls `__as__9EZWrapperGPCc [0x100201d0]` with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=(unknown), a3=(unknown).
  The `jal` at 0x10041cfc calls `EZ__GP10_WidgetRec [0x1001e910]` with a0=[a0+56], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10041d0c calls `__as__9EZWrapperGPCc [0x100201d0]` with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=(unknown), a3=(unknown).
  The `jal` at 0x10041d18 calls `EZ__GP10_WidgetRec [0x1001e910]` with a0=[a0+108], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10041d28 calls `__as__9EZWrapperGPCc [0x100201d0]` with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=(unknown), a3=(unknown).
  The `jal` at 0x10041d34 calls `EZ__GP10_WidgetRec [0x1001e910]` with a0=[a0+140], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10041d44 calls `__as__9EZWrapperGPCc [0x100201d0]` with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=(unknown), a3=(unknown).
  The `jal` at 0x10041d50 calls `EZ__GP10_WidgetRec [0x1001e910]` with a0=[a0+132], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10041d60 calls `__as__9EZWrapperGPCc [0x100201d0]` with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=(unknown), a3=(unknown).
  The `jal` at 0x10041d6c calls `EZ__GP10_WidgetRec [0x1001e910]` with a0=[a0+148], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10041d7c calls `__as__9EZWrapperGPCc [0x100201d0]` with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=(unknown), a3=(unknown).
  The `jal` at 0x10041d88 calls `EZ__GP10_WidgetRec [0x1001e910]` with a0=[a0+124], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10041d98 calls `__as__9EZWrapperGPCc [0x100201d0]` with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=(unknown), a3=(unknown).
  The `jal` at 0x10041da4 calls `EZ__GP10_WidgetRec [0x1001e910]` with a0=[a0+156], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10041db4 calls `__as__9EZWrapperGPCc [0x100201d0]` with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=(unknown), a3=(unknown).
  The `jalr` at 0x10041dc0 calls `XtUnmanageChild` with a0=[a0+56], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10041dcc calls `EZ__GP10_WidgetRec [0x1001e910]` with a0=[a0+60], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10041ddc calls `__as__9EZWrapperGPCc [0x100201d0]` with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=(unknown), a3=(unknown).
  The `jal` at 0x10041de8 calls `EZ__GP10_WidgetRec [0x1001e910]` with a0=[a0+116], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10041dfc calls `__as__9EZWrapperGPCc [0x100201d0]` with a0=ret(EZ__GP10_WidgetRec), a1=[0x10051cc0], a2=(unknown), a3=(unknown).
  The return at 0x10041e0c has v0 = ret(__as__9EZWrapperGPCc).
- `postErrorMessage__13ErrorMessagerGP9strstream` in `usr/bin/X11/xsetmon` at 0x10041e20 (n32).
  It occupies 132 bytes.
  The `lw` at 0x10041e34 loads 4 bytes from abs 0x10050de0 via base gp (0x100588fc).
  The `lw` at 0x10041e48 loads 4 bytes from abs 0x10050ba8 via base gp (0x100588fc).
  The `lw` at 0x10041e54 loads 4 bytes from ret(getTheErrorDialog__Gv) +0x8 via base v0 (ret(getTheErrorDialog__Gv)).
  The `lw` at 0x10041e64 loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x110 via base a0 ([ret(getTheErrorDialog__Gv)+8]).
  The `lw` at 0x10041e70 loads 4 bytes from [ret(getTheErrorDialog__Gv)+8] +0x108 via base a0 ([ret(getTheErrorDialog__Gv)+8]).
  The `lw` at 0x10041e84 loads 4 bytes from abs 0x100509ec via base gp (0x100588fc).
  The `jalr` at 0x10041e40 calls `str__9strstreamGv` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10041e4c calls `getTheErrorDialog__Gv` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10041e7c calls (unknown callee) with a0=([[ret(getTheErrorDialog__Gv)+8]+264] + ret(getTheErrorDialog__Gv)), a1=ret(str__9strstreamGv), a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x10041e88 calls `__dl__GPv` with a0=ret(str__9strstreamGv), a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x10041e9c has v0 = ret(__dl__GPv).
- `registerChild__12MyTabbedDeckGP11VkComponentPCc` in `usr/bin/X11/xsetmon` at 0x10041ed0 (n32).
  It occupies 188 bytes.
  2 such accesses load 4 bytes from abs 0x10050bd8 via base gp (0x100588fc), including `lw` at 0x10041ee8, `lw` at 0x10041f4c.
  2 such accesses load 4 bytes from abs 0x10050920 via base gp (0x100588fc), including `lw` at 0x10041f0c, `lw` at 0x10041f1c.
  The `lw` at 0x10041f10 loads 4 bytes from abs 0x10050d64 via base gp (0x100588fc).
  The `lw` at 0x10041f34 loads 4 bytes from abs 0x10050e1c via base gp (0x100588fc).
  The `lw` at 0x10041f48 loads 4 bytes from a0 (arg0 at entry) +0x20 via base s0 (a0).
  The `lw` at 0x10041f58 loads 4 bytes from abs 0x10050e20 via base gp (0x100588fc).
  The `lw` at 0x10041f70 loads 4 bytes from a0 (arg0 at entry) +0x24 via base s0 (a0).
  The `jalr` at 0x10041f04 calls `baseWidget__11VkComponentCGv` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10041f2c calls `VkGetResource__GP10_WidgetRecPCcN32` with a0=ret(baseWidget__11VkComponentCGv), a1=0x10049590, a2=0x100495a0, a3=-0x1a, a4=a2 at entry (arg2).
  The `jalr` at 0x10041f44 calls `addView__6VkDeckGP11VkComponent` with a0=[a0+32], a1=a1 at entry (arg1), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10041f50 calls `baseWidget__11VkComponentCGv` with a0=a1 at entry (arg1), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10041f6c calls `addTab__10VkTabPanelGPcPvc` with a0=[a0+36], a1=ret(VkGetResource__GP10_WidgetRecPCcN32), a2=ret(baseWidget__11VkComponentCGv), a3=0x0.
  The return at 0x10041f84 has v0 = ret(addTab__10VkTabPanelGPcPvc).
- `createDialog__18TargetPromptDialogGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10041f90 (n32).
  It occupies 452 bytes.
  The `lw` at 0x10041fa4 loads 4 bytes from abs 0x10050bd4 via base gp (0x100588fc).
  4 such accesses load 4 bytes from abs 0x10050920 via base gp (0x100588fc), including `lw` at 0x10041fb8, `lw` at 0x10041fe4, `lw` at 0x100420d4.
  6 such accesses load 4 bytes from abs 0x10050bf0 via base gp (0x100588fc), including `lw` at 0x10041fbc, `lw` at 0x10041fec, `lw` at 0x100420b0.
  2 such accesses load 4 bytes from abs 0x10050a78 via base gp (0x100588fc), including `lw` at 0x10041fc8, `lw` at 0x100420dc.
  2 such accesses load 4 bytes from sym(xmRowColumnWidgetClass) +0x0 via base a1 (sym(xmRowColumnWidgetClass)), including `lw` at 0x10041fd8, `lw` at 0x100420ec.
  The `lw` at 0x10041ff8 loads 4 bytes from abs 0x10050a70 via base gp (0x100588fc).
  The `lw` at 0x10042008 loads 4 bytes from sym(xmMessageBoxWidgetClass) +0x0 via base a1 (sym(xmMessageBoxWidgetClass)).
  5 such accesses load 4 bytes from abs 0x10050dc4 via base gp (0x100588fc), including `lw` at 0x10042014, `lw` at 0x10042034, `lw` at 0x10042050.
  5 such accesses load 4 bytes from abs 0x10050c1c via base gp (0x100588fc), including `lw` at 0x10042028, `lw` at 0x10042044, `lw` at 0x10042060.
  The `lw` at 0x100420bc loads 4 bytes from abs 0x100509b8 via base gp (0x100588fc).
  The `lw` at 0x100420d0 loads 4 bytes from sym(xmFrameWidgetClass) +0x0 via base a1 (sym(xmFrameWidgetClass)).
  The `lw` at 0x10042100 loads 4 bytes from abs 0x100509c4 via base gp (0x100588fc).
  The `lw` at 0x10042110 loads 4 bytes from sym(xmLabelWidgetClass) +0x0 via base a1 (sym(xmLabelWidgetClass)).
  The `lw` at 0x10042120 loads 4 bytes from abs 0x10050b04 via base gp (0x100588fc).
  The `lw` at 0x10042134 loads 4 bytes from sym(xmTextFieldWidgetClass) +0x0 via base a1 (sym(xmTextFieldWidgetClass)).
  The `sw` at 0x10042144 stores 4 bytes to a0 (arg0 at entry) +0x54 via base a2 (a0) with value ret(XtVaCreateManagedWidget).
  The `jalr` at 0x10041fac calls `createDialog__15VkGenericDialogGP10_WidgetRec` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10041fdc calls `XtVaCreateManagedWidget` with a0=0x10048fd0, a1=[sym(xmRowColumnWidgetClass)], a2=ret(createDialog__15VkGenericDialogGP10_WidgetRec), a3=-0xb, a4=0x2, a5=0x0.
  The `jalr` at 0x1004200c calls `XtVaCreateManagedWidget` with a0=0x10048fe0, a1=[sym(xmMessageBoxWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x9b, a4=0x4, a5=0x0.
  The `jalr` at 0x10042020 calls `XmMessageBoxGetChild` with a0=ret(XtVaCreateManagedWidget), a1=0x2, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1004202c calls `XtUnmanageChild` with a0=ret(XmMessageBoxGetChild), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1004203c calls `XmMessageBoxGetChild` with a0=ret(XtVaCreateManagedWidget), a1=0x7, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10042048 calls `XtUnmanageChild` with a0=ret(XmMessageBoxGetChild), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10042058 calls `XmMessageBoxGetChild` with a0=ret(XtVaCreateManagedWidget), a1=0x4, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10042064 calls `XtUnmanageChild` with a0=ret(XmMessageBoxGetChild), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10042074 calls `XmMessageBoxGetChild` with a0=ret(XtVaCreateManagedWidget), a1=0x3, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10042080 calls `XtUnmanageChild` with a0=ret(XmMessageBoxGetChild), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10042090 calls `XmMessageBoxGetChild` with a0=ret(XtVaCreateManagedWidget), a1=0xa, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100420a0 calls `XtUnmanageChild` with a0=ret(XmMessageBoxGetChild), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100420cc calls `XtVaCreateManagedWidget` with a0=0x10051900, a1=[sym(xmFrameWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0xa7, a4=0x5, a5=-0x23, a6=0x2, a7=0x0.
  The `jalr` at 0x100420f0 calls `XtVaCreateManagedWidget` with a0=0x10048ff0, a1=[sym(xmRowColumnWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=0x0.
  The `jalr` at 0x10042114 calls `XtVaCreateManagedWidget` with a0=0x10049000, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=0x0.
  The `jalr` at 0x10042130 calls `XtVaCreateManagedWidget` with a0=0x10051908, a1=[sym(xmTextFieldWidgetClass)], a2=(unknown), a3=0x0.
  The return at 0x1004214c has v0 = ?.
- `setToggleGammaPoints__19GammaMapEditorClassGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10042200 (n32).
  It occupies 92 bytes.
  The `lw` at 0x10042204 loads 4 bytes from a2 (arg2 at entry) +0x8 via base a2 (a2).
  The `lw` at 0x10042228 loads 4 bytes from abs 0x10050ecc via base gp (0x100588fc).
  The `sw` at 0x10042234 stores 4 bytes to a0 (arg0 at entry) +0xc0 via base s0 (a0) with value 0x1.
  The `lw` at 0x10042238 loads 4 bytes from abs 0x10050fc4 via base gp (0x100588fc).
  The `jal` at 0x10042230 calls `vDetermineSplinePoints__19GammaMapEditorClassGv [0x10024880]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10042240 calls `redraw__19GammaMapEditorClassCGi [0x1002ad90]` with a0=a0 at entry (arg0), a1=0x1, a2=(unknown), a3=(unknown).
  The `beq` at 0x10042220 goes to 0x10042248 when at(=[a2+8]) == 0 and falls through when at(=[a2+8]) != 0.
  The return at 0x10042254 has v0 = ?.
- `postHaltMessage__22ScrollingErrorMessagerGP9strstream` in `usr/bin/X11/xsetmon` at 0x10042260 (n32).
  It occupies 96 bytes.
  The `lw` at 0x10042274 loads 4 bytes from abs 0x10050de0 via base gp (0x100588fc).
  The `lw` at 0x1004228c loads 4 bytes from abs 0x10050f5c via base gp (0x100588fc).
  The `lw` at 0x100422a0 loads 4 bytes from abs 0x100509ec via base gp (0x100588fc).
  The `jalr` at 0x10042284 calls `str__9strstreamGv` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10042298 calls `appendText__22ScrollingErrorMessagerGPc [0x10027c70]` with a0=a0 at entry (arg0), a1=ret(str__9strstreamGv), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100422a8 calls `__dl__GPv` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x100422b8 has v0 = ret(__dl__GPv).
- `__ct__19StatisticsFormClassGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x100422c0 (n32).
  It occupies 72 bytes.
  The `lw` at 0x100422d4 loads 4 bytes from abs 0x10050fd8 via base gp (0x100588fc).
  The `lw` at 0x100422e8 loads 4 bytes from abs 0x100512e4 via base gp (0x100588fc).
  The `sw` at 0x100422f8 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__19StatisticsFormClass).
  The `jal` at 0x100422e0 calls `__ct__21StatisticsFormClassUIGPCcP10_WidgetRec [0x1002b840]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10042300 has v0 = a0.
- `__ct__28CombinationContentsListClassGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10042360 (n32).
  It occupies 96 bytes.
  The `lw` at 0x10042374 loads 4 bytes from abs 0x100511d8 via base gp (0x100588fc).
  The `lw` at 0x1004238c loads 4 bytes from abs 0x1005127c via base gp (0x100588fc).
  The `sw` at 0x10042390 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a3 (a0) with value sym(__vtbl__28CombinationContentsListClass).
  The `sw` at 0x10042398 stores 4 bytes to a0 (arg0 at entry) +0x30 via base a1 (a0) with value 0x0.
  The `sw` at 0x100423a4 stores 4 bytes to a0 (arg0 at entry) +0x38 via base a0 (a0) with value 0x0.
  The `sw` at 0x100423b0 stores 4 bytes to a0 (arg0 at entry) +0x34 via base v1 (a0) with value 0x0.
  The `jal` at 0x10042380 calls `__ct__30CombinationContentsListClassUIGPCcP10_WidgetRec [0x1003ec00]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100423b8 has v0 = a0.
- `__ct__19ServerInfoFormClassGPCcP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10042400 (n32).
  It occupies 84 bytes.
  The `lw` at 0x10042414 loads 4 bytes from abs 0x10051004 via base gp (0x100588fc).
  The `lw` at 0x1004242c loads 4 bytes from abs 0x100510d0 via base gp (0x100588fc).
  The `lw` at 0x10042430 loads 4 bytes from abs 0x100512cc via base gp (0x100588fc).
  The `sw` at 0x10042434 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a0 (a0) with value sym(__vtbl__19ServerInfoFormClass).
  The `jal` at 0x10042420 calls `__ct__21ServerInfoFormClassUIGPCcP10_WidgetRec [0x1002cd90]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10042438 calls `OneTimeInitialization__19ServerInfoFormClassGv [0x10033c90]` with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x1004244c has v0 = a0.
- `populateSCHPhaseWithChannel__16ChannelFormClassGiPC17XSGIvcChannelInfo` in `usr/bin/X11/xsetmon` at 0x10042460 (n32).
  It occupies 280 bytes.
  The `lw` at 0x10042470 loads 4 bytes from a2 (arg2 at entry) +0x17c via base a2 (a2).
  The `lw` at 0x10042498 loads 4 bytes from a2 (arg2 at entry) +0x0 via base a2 (a2).
  2 such accesses load 4 bytes from abs 0x10050c1c via base gp (0x100588fc), including `lw` at 0x100424a0, `lw` at 0x10042564.
  The `lw` at 0x100424a4 loads 4 bytes from abs 0x10050c10 via base gp (0x100588fc).
  The `lw` at 0x100424ac loads 4 bytes from a0 (arg0 at entry) +0xa4 via base a0 (a0).
  The `lw` at 0x100424b0 loads 4 bytes from abs 0x1005131c via base gp (0x100588fc).
  The `lw` at 0x100424b4 loads 4 bytes from sym(xsetmonApp) +0x0 via base a0 (sym(xsetmonApp)).
  The `lw` at 0x100424b8 loads 4 bytes from abs 0x10050c24 via base gp (0x100588fc).
  The `lw` at 0x100424bc loads 4 bytes from [sym(xsetmonApp)] +0x138 via base a0 ([sym(xsetmonApp)]).
  The `lw` at 0x100424cc loads 4 bytes from [[sym(xsetmonApp)]+312] +0x84 via base a0 ([[sym(xsetmonApp)]+312]).
  2 such accesses load 4 bytes from abs 0x10050b60 via base gp (0x100588fc), including `lw` at 0x100424d4, `lw` at 0x1004253c.
  The `lw` at 0x100424d8 loads 4 bytes from a2 (arg2 at entry) +0x184 via base s1 (a2).
  The `lw` at 0x100424dc loads 4 bytes from abs 0x10050bdc via base gp (0x100588fc).
  The `lw` at 0x100424e4 loads 4 bytes from a2 (arg2 at entry) +0x180 via base s1 (a2).
  2 such accesses load 4 bytes from a0 (arg0 at entry) +0xa4 via base s0 (a0), including `lw` at 0x100424fc, `lw` at 0x1004256c.
  The `lw` at 0x1004251c loads 4 bytes from abs 0x1005091c via base gp (0x100588fc).
  The `lw` at 0x10042520 loads 4 bytes from abs 0x10050a50 via base gp (0x100588fc).
  The `lw` at 0x1004252c loads 4 bytes from abs 0x10050c18 via base gp (0x100588fc).
  The `lw` at 0x1004254c loads 4 bytes from abs 0x10050a40 via base gp (0x100588fc).
  The `lw` at 0x10042558 loads 4 bytes from abs 0x10050b30 via base gp (0x100588fc).
  The `jalr` at 0x100424a8 calls `XtManageChild` with a0=[a0+164], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100424c8 calls `XSGIvcQueryOutputPhaseSCH` with a0=[[sym(xsetmonApp)]+312], a1=[[[sym(xsetmonApp)]+312]+132], a2=a1 at entry (arg1), a3=sp-48.
  The `jalr` at 0x100424f8 calls `XtVaSetValues` with a0=[a0+164], a1=-0x8, a2=(unknown), a3=-0x18, a4=[a2+384], a5=-0xd, a6=[a2+388], a7=0x0.
  The `jalr` at 0x10042524 calls `__ls__7ostreamGPCc` with a0=sym(cerr), a1=0x10043ff0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10042534 calls `__ls__7ostreamGi` with a0=ret(__ls__7ostreamGPCc), a1=a1 at entry (arg1), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10042544 calls `__ls__7ostreamGPCc` with a0=ret(__ls__7ostreamGi), a1=0x10051498, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10042550 calls `endl__GR7ostream` with a0=ret(__ls__7ostreamGPCc), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1004255c calls `exit` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10042568 calls `XtUnmanageChild` with a0=[a0+164], a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x10042490 goes to 0x10042564 when at(=[a2+380]) == 0 and falls through when at(=[a2+380]) != 0.
  The `beq` at 0x1004249c goes to 0x10042568 when v1(=[a2]) == 0 and falls through when v1(=[a2]) != 0.
  The `beq` at 0x100424d0 goes to 0x1004251c when v0(=ret(XSGIvcQueryOutputPhaseSCH)) == 0 and falls through when v0(=ret(XSGIvcQueryOutputPhaseSCH)) != 0.
  The return at 0x10042514 has v0 = ?.
- `create__22GammaAssignmentClassUIGP10_WidgetRec` in `usr/bin/X11/xsetmon` at 0x10042580 (n32).
  It occupies 708 bytes.
  The `lw` at 0x10042598 loads 4 bytes from abs 0x10050be4 via base gp (0x100588fc).
  The `lw` at 0x100425b0 loads 4 bytes from abs 0x100512ac via base gp (0x100588fc).
  The `lw` at 0x100425b4 loads 4 bytes from abs 0x10050be8 via base gp (0x100588fc).
  The `lw` at 0x100425bc loads 4 bytes from abs 0x10050b0c via base gp (0x100588fc).
  The `lw` at 0x100425c8 loads 4 bytes from a0 (arg0 at entry) +0xc via base s0 (a0).
  The `lw` at 0x100425d4 loads 4 bytes from sym(xmFormWidgetClass) +0x0 via base a1 (sym(xmFormWidgetClass)).
  The `lw` at 0x100425d8 loads 4 bytes from abs 0x10050bec via base gp (0x100588fc).
  The `sw` at 0x100425e0 stores 4 bytes to a0 (arg0 at entry) +0x10 via base s0 (a0) with value ret(XtVaCreateWidget).
  The `sw` at 0x100425ec stores 4 bytes to a0 (arg0 at entry) +0x20 via base s0 (a0) with value ret(XtVaCreateWidget).
  The `lw` at 0x100425f0 loads 4 bytes from abs 0x10050a74 via base gp (0x100588fc).
  2 such accesses load 4 bytes from a0 (arg0 at entry) +0x10 via base s0 (a0), including `lw` at 0x100425f4, `lw` at 0x10042748.
  The `lw` at 0x100425f8 loads 4 bytes from sym(xmScrolledWindowWidgetClass) +0x0 via base a1 (sym(xmScrolledWindowWidgetClass)).
  4 such accesses load 4 bytes from abs 0x10050bf0 via base gp (0x100588fc), including `lw` at 0x1004269c, `lw` at 0x100426ec, `lw` at 0x10042720.
  3 such accesses load 4 bytes from abs 0x1005091c via base gp (0x100588fc), including `lw` at 0x100426a8, `lw` at 0x100426cc, `lw` at 0x10042714.
  The `sw` at 0x100426c4 stores 4 bytes to a0 (arg0 at entry) +0x34 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x100426c8 loads 4 bytes from abs 0x10050a78 via base gp (0x100588fc).
  The `lw` at 0x100426d4 loads 4 bytes from sym(xmRowColumnWidgetClass) +0x0 via base a1 (sym(xmRowColumnWidgetClass)).
  2 such accesses load 4 bytes from abs 0x100509c4 via base gp (0x100588fc), including `lw` at 0x1004272c, `lw` at 0x1004274c.
  The `sw` at 0x10042738 stores 4 bytes to a0 (arg0 at entry) +0x30 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  2 such accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0 via base a1 (sym(xmLabelWidgetClass)), including `lw` at 0x1004273c, `lw` at 0x10042754.
  The `sw` at 0x10042750 stores 4 bytes to a0 (arg0 at entry) +0x2c via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x10042804 loads 4 bytes from abs 0x10050bdc via base gp (0x100588fc).
  The `lw` at 0x10042810 loads 4 bytes from a0 (arg0 at entry) +0x34 via base s0 (a0).
  The `sw` at 0x1004281c stores 4 bytes to a0 (arg0 at entry) +0x28 via base s0 (a0) with value ret(XtVaCreateManagedWidget).
  The `lw` at 0x10042820 loads 4 bytes from abs 0x100510c0 via base gp (0x100588fc).
  The `lw` at 0x1004282c loads 4 bytes from a0 (arg0 at entry) +0x30 via base s0 (a0).
  The `jalr` at 0x100425ac calls `setDefaultResources__11VkComponentGP10_WidgetRecPCPc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultGammaAssignmentClassUIResources__22GammaAssignmentClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x100425d0 calls `XtVaCreateWidget` with a0=[a0+12], a1=[sym(xmFormWidgetClass)], a2=a1 at entry (arg1), a3=-0xd1, a4=0x1, a5=0x0.
  The `jalr` at 0x100425e8 calls `installDestroyHandler__11VkComponentGv` with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100426bc calls `XtVaCreateManagedWidget` with a0=0x10045088, a1=[sym(xmScrolledWindowWidgetClass)], a2=[a0+16], a3=-0x5a, a4=0x0, a5=-0x42, a6=0x3, a7=-0x66.
  The `jalr` at 0x1004270c calls `XtVaCreateManagedWidget` with a0=0x10045098, a1=[sym(xmRowColumnWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x1d4, a4=0x0, a5=-0xc1, a6=0x2, a7=-0x17.
  The `jalr` at 0x10042740 calls `XtVaCreateManagedWidget` with a0=0x100450b0, a1=[sym(xmLabelWidgetClass)], a2=ret(XtVaCreateManagedWidget), a3=-0x2d, a4=0x2, a5=-0x5f, a6=0x1, a7=0x0.
  The `jalr` at 0x100427fc calls `XtVaCreateManagedWidget` with a0=0x10051650, a1=[sym(xmLabelWidgetClass)], a2=[a0+16], a3=-0x2d, a4=0x2, a5=-0x5f, a6=0x0, a7=-0x42.
  The `jalr` at 0x10042818 calls `XtVaSetValues` with a0=[a0+52], a1=-0x76, a2=ret(XtVaCreateManagedWidget), a3=0x0.
  The `jal` at 0x10042828 calls `populateAssignmentWindow__22GammaAssignmentClassUIGP10_WidgetRec [0x10033170]` with a0=a0 at entry (arg0), a1=[a0+48], a2=(unknown), a3=(unknown).
  The return at 0x1004283c has v0 = ret(populateAssignmentWindow__22GammaAssignmentClassUIGP10_WidgetRec).
- `className__21GammaMapEditorClassUIGv` in `usr/bin/X11/xsetmon` at 0x10042870 (n32).
  It occupies 24 bytes.
  The `lw` at 0x1004287c loads 4 bytes from abs 0x1005091c via base at (0x100588fc).
  The return at 0x10042880 has v0 = 0x10045b98.
- `className__16GainControlClassGv` in `usr/bin/X11/xsetmon` at 0x10042a00 (n32).
  It occupies 24 bytes.
  The `lw` at 0x10042a0c loads 4 bytes from abs 0x1005091c via base at (0x100588fc).
  The return at 0x10042a10 has v0 = 0x10044f08.
- `setTabbedDeckParent__10GammaClassGP21MasterTabbedDeckClass` in `usr/bin/X11/xsetmon` at 0x10042a30 (n32).
  It occupies 8 bytes.
  The `sw` at 0x10042a34 stores 4 bytes to a0 (arg0 at entry) +0x74 via base a0 (a0) with value a1.
  The return at 0x10042a30 has v0 = ?.
- `VkUnimplemented__GP10_WidgetRecPCc` in `usr/bin/X11/xsetmon` at 0x10042a40 (n32).
  It occupies 208 bytes.
  2 such accesses load 4 bytes from abs 0x10050920 via base gp (0x100588fc), including `lw` at 0x10042a58, `lw` at 0x10042a94.
  5 such accesses load 4 bytes from abs 0x10050b60 via base gp (0x100588fc), including `lw` at 0x10042a5c, `lw` at 0x10042a80, `lw` at 0x10042a90.
  3 such accesses load 4 bytes from abs 0x10050a50 via base gp (0x100588fc), including `lw` at 0x10042a64, `lw` at 0x10042ab8, `lw` at 0x10042adc.
  2 such accesses load 4 bytes from abs 0x10050a40 via base gp (0x100588fc), including `lw` at 0x10042aac, `lw` at 0x10042b0c.
  The `lw` at 0x10042abc loads 4 bytes from abs 0x10050dcc via base gp (0x100588fc).
  The `lw` at 0x10042ae8 loads 4 bytes from abs 0x10050dd0 via base gp (0x100588fc).
  The `jalr` at 0x10042a78 calls `__ls__7ostreamGPCc` with a0=sym(cerr), a1=0x100490f0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10042a88 calls `__ls__7ostreamGPCc` with a0=ret(__ls__7ostreamGPCc), a1=a1 at entry (arg1), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10042aa0 calls `__ls__7ostreamGPCc` with a0=ret(__ls__7ostreamGPCc), a1=0x10049108, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10042ab4 calls `endl__GR7ostream` with a0=sym(cerr), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10042ac0 calls `flush__GR7ostream` with a0=ret(endl__GR7ostream), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10042ae0 calls `__ls__7ostreamGPCc` with a0=sym(cerr), a1=0x10051918, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10042af0 calls `XtName` with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10042b00 calls `__ls__7ostreamGPCc` with a0=(unknown), a1=ret(XtName), a2=(unknown), a3=(unknown).
  The `bne` at 0x10042aa8 goes to 0x10042ad8 when s0(=a0) != 0 and falls through when s0(=a0) == 0.
  The return at 0x10042ad0 has v0 = ret(flush__GR7ostream).
- `saveData__27FormatCombinationListsClassGP8__file_s` in `usr/bin/X11/xsetmon` at 0x10042b10 (n32).
  It occupies 404 bytes.
  The `lw` at 0x10042b24 loads 4 bytes from abs 0x1005131c via base gp (0x100588fc).
  The `lw` at 0x10042b28 loads 4 bytes from sym(xsetmonApp) +0x0 via base at (sym(xsetmonApp)).
  The `lbu` at 0x10042b2c loads 1 bytes from [sym(xsetmonApp)] +0xc8 via base at ([sym(xsetmonApp)]).
  3 such accesses load 4 bytes from abs 0x10050b8c via base gp (0x100588fc), including `lw` at 0x10042b48, `lw` at 0x10042bc8, `lw` at 0x10042c5c.
  The `lw` at 0x10042b50 loads 4 bytes from a0 (arg0 at entry) +0xa4 via base a0 (a0).
  9 such accesses load 4 bytes from abs 0x10050c74 via base gp (0x100588fc), including `lw` at 0x10042b54, `lw` at 0x10042b70, `lw` at 0x10042b98.
  The `lw` at 0x10042b84 loads 4 bytes from a0 (arg0 at entry) +0xa4 via base s1 (a0).
  2 such accesses load 4 bytes from abs 0x10050c78 via base gp (0x100588fc), including `lw` at 0x10042b88, `lw` at 0x10042c40.
  The `lw` at 0x10042b90 loads 4 bytes from a0 (arg0 at entry) +0x78 via base s1 (a0).
  The `lw` at 0x10042b9c loads 4 bytes from a0 (arg0 at entry) +0x9c via base s1 (a0).
  2 such accesses load 4 bytes from a0 (arg0 at entry) +0xa0 via base s1 (a0), including `lw` at 0x10042c64, `lw` at 0x10042c98.
  The `jalr` at 0x10042b4c calls `strlen` with a0=[a0+164], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10042b68 calls `fwrite` with a0=sp-48, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10042b80 calls `fwrite` with a0=[a0+164], a1=(unknown), a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10042b8c calls `XtIsSensitive` with a0=[a0+120], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10042bc0 calls `fwrite` with a0=sp-44, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10042bcc calls `strlen` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10042be8 calls `fwrite` with a0=sp-48, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10042c00 calls `fwrite` with a0=(unknown), a1=(unknown), a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10042c34 calls `fwrite` with a0=sp-48, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10042c54 calls `fwrite` with a0=sp-44, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10042c60 calls `strlen` with a0=[a0+160], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10042c7c calls `fwrite` with a0=sp-48, a1=0x4, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0x10042c94 calls `fwrite` with a0=[a0+160], a1=(unknown), a2=0x1, a3=a1 at entry (arg1).
  The `beq` at 0x10042b40 goes to 0x10042c20 when at(=[[sym(xsetmonApp)]+200]:1) == 0 and falls through when at(=[[sym(xsetmonApp)]+200]:1) != 0.
  The `beq` at 0x10042b94 goes to 0x10042c44 when v0(=ret(XtIsSensitive)) == 0 and falls through when v0(=ret(XtIsSensitive)) != 0.
  The `beq` at 0x10042ba0 goes to 0x10042bac when a0(=[a0+156]) == 0 and falls through when a0(=[a0+156]) != 0.
  The return at 0x10042c18 has v0 = ret(fwrite).
- `doSetGainCallbackCallback__18GainControlClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10042cb0 (n32).
  It occupies 68 bytes.
  The `lw` at 0x10042cb4 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a1 (a1).
  The `lw` at 0x10042cc0 loads 4 bytes from [a1+8] +0xa8 via base v1 ([a1+8]).
  The `lw` at 0x10042ccc loads 4 bytes from [a1+8] +0xb0 via base v1 ([a1+8]).
  The `jalr` at 0x10042cdc calls (unknown callee) with a0=([[a1+8]+168] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x15c4c.
  The return at 0x10042cec has v0 = ret(?).
- `resizeCallback__21GammaMapEditorClassUISGP10_WidgetRecPvT2` in `usr/bin/X11/xsetmon` at 0x10042d00 (n32).
  It occupies 68 bytes.
  The `lw` at 0x10042d04 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a1 (a1).
  The `lw` at 0x10042d10 loads 4 bytes from [a1+8] +0xb4 via base v1 ([a1+8]).
  The `lw` at 0x10042d1c loads 4 bytes from [a1+8] +0xbc via base v1 ([a1+8]).
  The `jalr` at 0x10042d2c calls (unknown callee) with a0=([[a1+8]+180] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x15bfc.
  The return at 0x10042d3c has v0 = ret(?).
- `className__27FormatCombinationListsClassGv` in `usr/bin/X11/xsetmon` at 0x10042d50 (n32).
  It occupies 24 bytes.
  The `lw` at 0x10042d5c loads 4 bytes from abs 0x1005091c via base at (0x100588fc).
  The return at 0x10042d60 has v0 = 0x10044920.
- `textWidget__22ScrollingErrorMessagerGv` in `usr/bin/X11/xsetmon` at 0x10042d70 (n32).
  It occupies 460 bytes.
  The `lw` at 0x10042d70 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a0 (a0).
  The `lw` at 0x10042d9c loads 4 bytes from abs 0x10050b4c via base gp (0x100588fc).
  The `lw` at 0x10042dc0 loads 4 bytes from abs 0x10050de8 via base gp (0x100588fc).
  2 such accesses load 4 bytes from a0 (arg0 at entry) +0xc via base a1 (a0), including `lw` at 0x10042dd8, `lw` at 0x10042e90.
  The `lw` at 0x10042df0 loads 4 bytes from abs 0x10050bc8 via base gp (0x100588fc).
  2 such accesses load 4 bytes from abs 0x10050920 via base gp (0x100588fc), including `lw` at 0x10042df4, `lw` at 0x10042e3c.
  2 such accesses load 4 bytes from abs 0x10050bd8 via base gp (0x100588fc), including `lw` at 0x10042e04, `lw` at 0x10042e30.
  2 such accesses load 4 bytes from abs 0x10050bdc via base gp (0x100588fc), including `lw` at 0x10042e14, `lw` at 0x10042ee4.
  The `lw` at 0x10042e44 loads 4 bytes from abs 0x10050b0c via base gp (0x100588fc).
  The `lw` at 0x10042e50 loads 4 bytes from abs 0x10050bf0 via base gp (0x100588fc).
  The `lw` at 0x10042e5c loads 4 bytes from sym(xmFormWidgetClass) +0x0 via base a1 (sym(xmFormWidgetClass)).
  The `lw` at 0x10042e78 loads 4 bytes from abs 0x10050dec via base gp (0x100588fc).
  The `sw` at 0x10042e98 stores 4 bytes to a0 (arg0 at entry) +0x8 via base ra (a0) with value ret(XmCreateScrolledText).
  The `lw` at 0x10042f10 loads 4 bytes from ? (base unknown) via base a1 (?).
  2 such accesses load 4 bytes from ? (base unknown) via base a0 (?), including `lw` at 0x10042f14, `lw` at 0x10042f18.
  The `lw` at 0x10042f30 loads 4 bytes from a0 (arg0 at entry) +0x8 via base v0 (a0).
  The `jalr` at 0x10042da8 calls `__nw__GUi` with a0=0x40, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10042dd4 calls `__ct__14VkSimpleWindowGPCcP3ArgUi` with a0=ret(__nw__GUi), a1=[a0+12], a2=0x0, a3=0x0.
  The `jalr` at 0x10042dfc calls `setTitle__14VkSimpleWindowGPCc` with a0=(unknown), a1=0x10049418, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10042e08 calls `baseWidget__11VkComponentCGv` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10042e28 calls `XtVaSetValues` with a0=ret(baseWidget__11VkComponentCGv), a1=-0x17, a2=0x258, a3=-0x16, a4=0x12c, a5=0x0.
  The `jalr` at 0x10042e34 calls `baseWidget__11VkComponentCGv` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10042e70 calls `XtVaCreateManagedWidget` with a0=0x10049428, a1=[sym(xmFormWidgetClass)], a2=ret(baseWidget__11VkComponentCGv), a3=-0xd1, a4=0x1, a5=-0x17, a6=0x2a2, a7=-0x16.
  The `jalr` at 0x10042e8c calls `XmCreateScrolledText` with a0=ret(XtVaCreateManagedWidget), a1=[a0+12], a2=0x0, a3=0x0.
  The `jalr` at 0x10042f04 calls `XtVaSetValues` with a0=ret(XmCreateScrolledText), a1=-0xa1, a2=0x0, a3=-0x42, a4=0x1, a5=-0x66, a6=0x1, a7=-0x46.
  The `jalr` at 0x10042f1c calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x10042d88 goes to 0x10042d9c when v0(=[a0+8]) == 0 and falls through when v0(=[a0+8]) != 0.
  The `beq` at 0x10042db4 goes to 0x10042dec when v0(=ret(__nw__GUi)) == 0 and falls through when v0(=ret(__nw__GUi)) != 0.
  The return at 0x10042d94 has v0 = [a0+8].
  The return at 0x10042f34 has v0 = [a0+8].
- `__ct__16ChannelFormClassGPCc` in `usr/bin/X11/xsetmon` at 0x10042fc0 (n32).
  It occupies 104 bytes.
  The `lw` at 0x10042fd4 loads 4 bytes from abs 0x10051188 via base gp (0x100588fc).
  The `lw` at 0x10042fec loads 4 bytes from abs 0x10051270 via base gp (0x100588fc).
  The `sw` at 0x10042ff0 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a2 (a0) with value sym(__vtbl__16ChannelFormClass).
  The `lw` at 0x10042ff8 loads 4 bytes from abs 0x10051014 via base gp (0x100588fc).
  The `sw` at 0x10042ffc stores 4 bytes to a0 (arg0 at entry) +0x100 via base a0 (a0) with value 0x0.
  The `sw` at 0x10043004 stores 4 bytes to a0 (arg0 at entry) +0x104 via base v1 (a0) with value 0x0.
  The `jal` at 0x10042fe0 calls `__ct__18ChannelFormClassUIGPCc [0x1003bac0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004300c calls `populateFormWithChannel__16ChannelFormClassGi [0x1002d050]` with a0=a0 at entry (arg0), a1=0x0, a2=a0 at entry (arg0), a3=(unknown).
  The return at 0x10043020 has v0 = a0.
- `setToggleGammaPoints__21GammaMapEditorClassUIGP10_WidgetRecPv` in `usr/bin/X11/xsetmon` at 0x10043030 (n32).
  It occupies 8 bytes.
  The return at 0x10043030 has v0 = ?.
- `__ct__23SetmonMasterFormClassUIGPCc` in `usr/bin/X11/xsetmon` at 0x10043100 (n32).
  It occupies 80 bytes.
  The `lw` at 0x10043114 loads 4 bytes from abs 0x10050be0 via base gp (0x100588fc).
  The `lw` at 0x10043130 loads 4 bytes from abs 0x100512dc via base gp (0x100588fc).
  The `sw` at 0x10043134 stores 4 bytes to a0 (arg0 at entry) +0x8 via base a1 (a0) with value sym(__vtbl__23SetmonMasterFormClassUI).
  The `sw` at 0x10043140 stores 4 bytes to a0 (arg0 at entry) +0x28 via base v1 (a0) with value 0x0.
  The `jalr` at 0x10043120 calls `__ct__11VkComponentGPCc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10043148 has v0 = a0.
- `fDistanceFunction__19GammaMapEditorClassGfN31` in `usr/bin/X11/xsetmon` at 0x10043150 (n32).
  It occupies 36 bytes.
  The return at 0x1004316c has v0 = ?.
- `NewTri` in `usr/diags/IR/bin/irsaudit` at 0x100f6910 (n32).
  It occupies 172 bytes.
  The `lw` at 0x100f6930 loads 4 bytes from abs 0x102bd48c via base t9 (0x102c4340).
  The `sw` at 0x100f693c stores 4 bytes to ret(malloc) +0x54 via base v0 (ret(malloc)) with value 0x0.
  The `sw` at 0x100f6940 stores 4 bytes to ret(malloc) +0x58 via base v0 (ret(malloc)) with value 0x0.
  The `swc1` at 0x100f6954 stores 4 bytes to ret(malloc) +0x0 via base v0 (ret(malloc)) with value .
  The `swc1` at 0x100f6958 stores 4 bytes to ret(malloc) +0x4 via base v0 (ret(malloc)) with value .
  The `swc1` at 0x100f695c stores 4 bytes to ret(malloc) +0x8 via base v0 (ret(malloc)) with value .
  The `swc1` at 0x100f6960 stores 4 bytes to ret(malloc) +0x24 via base v0 (ret(malloc)) with value .
  The `swc1` at 0x100f6964 stores 4 bytes to ret(malloc) +0x28 via base v0 (ret(malloc)) with value .
  The `swc1` at 0x100f6968 stores 4 bytes to ret(malloc) +0x2c via base v0 (ret(malloc)) with value .
  The `swc1` at 0x100f696c stores 4 bytes to ret(malloc) +0x10 via base v0 (ret(malloc)) with value .
  The `swc1` at 0x100f6970 stores 4 bytes to ret(malloc) +0x14 via base v0 (ret(malloc)) with value .
  The `swc1` at 0x100f6974 stores 4 bytes to ret(malloc) +0x38 via base v0 (ret(malloc)) with value .
  The `swc1` at 0x100f6978 stores 4 bytes to ret(malloc) +0x3c via base v0 (ret(malloc)) with value .
  The `swc1` at 0x100f697c stores 4 bytes to ret(malloc) +0x20 via base v0 (ret(malloc)) with value .
  The `lw` at 0x100f6980 loads 4 bytes from abs 0x102bcec4 via base a0 (0x102c4340).
  The `swc1` at 0x100f6984 stores 4 bytes to ret(malloc) +0x4c via base v0 (ret(malloc)) with value .
  The `lwc1` at 0x100f6988 loads 4 bytes from abs 0x101b2114 via base a0 (0x101b2110).
  The `swc1` at 0x100f6990 stores 4 bytes to ret(malloc) +0xc via base v0 (ret(malloc)) with value 0x3f800000.
  The `swc1` at 0x100f6994 stores 4 bytes to ret(malloc) +0x34 via base v0 (ret(malloc)) with value 0x3f800000.
  The `swc1` at 0x100f6998 stores 4 bytes to ret(malloc) +0x18 via base v0 (ret(malloc)) with value 0x3f800000.
  The `swc1` at 0x100f699c stores 4 bytes to ret(malloc) +0x1c via base v0 (ret(malloc)) with value 0x3f800000.
  The `swc1` at 0x100f69a0 stores 4 bytes to ret(malloc) +0x44 via base v0 (ret(malloc)) with value 0x3f800000.
  The `swc1` at 0x100f69a4 stores 4 bytes to ret(malloc) +0x48 via base v0 (ret(malloc)) with value 0x3f800000.
  The `swc1` at 0x100f69a8 stores 4 bytes to ret(malloc) +0x30 via base v0 (ret(malloc)) with value 0x3f800000.
  The `swc1` at 0x100f69ac stores 4 bytes to ret(malloc) +0x40 via base v0 (ret(malloc)) with value 0x3f800000.
  The `swc1` at 0x100f69b8 stores 4 bytes to ret(malloc) +0x50 via base v0 (ret(malloc)) with value 0x3f800000.
  The `jalr` at 0x100f6934 calls `malloc` with a0=0x5c, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100f69b4 has v0 = ret(malloc).
- `PrintTri` in `usr/diags/IR/bin/irsaudit` at 0x100f69bc (n32).
  It occupies 244 bytes.
  The `lw` at 0x100f69f4 loads 4 bytes from abs 0x102bd414 via base s4 (0x102c4340).
  The `lw` at 0x100f6a08 loads 4 bytes from abs 0x102bd3f8 via base s3 (0x102c4340).
  3 such accesses load 4 bytes from ? (base unknown) via base s2 (?), including `lwc1` at 0x100f6a10, `lwc1` at 0x100f6a14, `lwc1` at 0x100f6a18.
  3 such accesses load 4 bytes from ? (base unknown) via base s1 (?), including `lwc1` at 0x100f6a1c, `lwc1` at 0x100f6a24, `lwc1` at 0x100f6a2c.
  The `lw` at 0x100f6a4c loads 4 bytes from abs 0x102bcec4 via base a1 (0x102c4340).
  The `jalr` at 0x100f6a70 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2118, a2=(unknown), a3=(unknown).
  The `bne` at 0x100f6a84 goes to 0x100f6a10 when s0(?) < 0x3 (signed) and falls through when s0(?) >= 0x3 (signed).
  The return at 0x100f6aa8 has v0 = ret(fprintf).
- `PrintNamedTriangle` in `usr/diags/IR/bin/irsaudit` at 0x100f6ab0 (n32).
  It occupies 168 bytes.
  The `lw` at 0x100f6ad0 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100f6ae4 loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  The `lw` at 0x100f6b08 loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `lw` at 0x100f6b14 loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  The `lw` at 0x100f6b18 loads 4 bytes from abs 0x102bcec4 via base a1 (0x102c4340).
  The `lw` at 0x100f6b38 loads 4 bytes from abs 0x102bda14 via base t9 (0x102c4340).
  The `jal` at 0x100f6ad4 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f6af0 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f6b28 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2140, a2=ret(GetNextString), a3=(unknown).
  The `jal` at 0x100f6b40 calls `PrintTri [0x100f69bc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x100f6b50 has v0 = ret(PrintTri).
- `setCurrentTri` in `usr/diags/IR/bin/irsaudit` at 0x100f6be0 (n32).
  It occupies 100 bytes.
  The `lw` at 0x100f6c00 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100f6c14 loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  The `lw` at 0x100f6c30 loads 4 bytes from abs 0x102bcec0 via base at (0x102c4340).
  The `sw` at 0x100f6c40 stores 4 bytes to abs 0x10343980 via base at (0x10343980) with value ret(DLGetNameData).
  The `jal` at 0x100f6c04 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f6c1c calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The return at 0x100f6c3c has v0 = ret(DLGetNameData).
- `GetCurrentTri` in `usr/diags/IR/bin/irsaudit` at 0x100f6c44 (n32).
  It occupies 32 bytes.
  The `lw` at 0x100f6c58 loads 4 bytes from abs 0x102bcec0 via base v0 (0x102c4340).
  The `lw` at 0x100f6c60 loads 4 bytes from abs 0x10343980 via base v0 (0x10343980).
  The return at 0x100f6c5c has v0 = [0x10343980].
- `TexForceAddress` in `usr/diags/IR/bin/irsaudit` at 0x100f6d7c (n32).
  It occupies 76 bytes.
  The `lw` at 0x100f6d9c loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `lw` at 0x100f6db4 loads 4 bytes from abs 0x102bcec8 via base v1 (0x102c4340).
  The `sw` at 0x100f6dc4 stores 4 bytes to abs 0x10343990 via base v1 (0x10343984) with value ret(GetNextInteger).
  The `jal` at 0x100f6da0 calls `GetNextInteger [0x100feebc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100f6dc0 has v0 = ret(GetNextInteger).
- `GlobalTMemOffset` in `usr/diags/IR/bin/irsaudit` at 0x100f6e64 (n32).
  It occupies 160 bytes.
  The `lw` at 0x100f6e84 loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `lw` at 0x100f6e98 loads 4 bytes from abs 0x102bded8 via base t9 (0x102c4340).
  The `lw` at 0x100f6eb0 loads 4 bytes from abs 0x102be65c via base ra (0x102c4340).
  The `lw` at 0x100f6eb4 loads 4 bytes from sym(textureDebug) +0x0 via base ra (sym(textureDebug)).
  The `lw` at 0x100f6ed0 loads 4 bytes from abs 0x102bcecc via base a1 (0x102c4340).
  The `lw` at 0x100f6edc loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  The `lw` at 0x100f6ee0 loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `jal` at 0x100f6e88 calls `GetNextInteger [0x100feebc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f6ea0 calls `tbuGlobalOffset [0x10141b6c]` with a0=ret(GetNextInteger), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f6eec calls `fprintf` with a0=sym(__iob)+32, a1=0x101b21a0, a2=(unknown), a3=(unknown).
  The `beq` at 0x100f6eb8 goes to 0x100f6ef8 when ra(=[sym(textureDebug)]) == 0 and falls through when ra(=[sym(textureDebug)]) != 0.
  The return at 0x100f6efc has v0 = ?.
- `SetTextureDebug` in `usr/diags/IR/bin/irsaudit` at 0x100f7064 (n32).
  It occupies 32 bytes.
  The `lw` at 0x100f7078 loads 4 bytes from abs 0x102be65c via base v0 (0x102c4340).
  The `sw` at 0x100f7080 stores 4 bytes to sym(textureDebug) +0x0 via base v0 (sym(textureDebug)) with value a0.
  The return at 0x100f707c has v0 = sym(textureDebug).
- `TextureDebug` in `usr/diags/IR/bin/irsaudit` at 0x100f7084 (n32).
  It occupies 76 bytes.
  The `lw` at 0x100f70a4 loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `lw` at 0x100f70bc loads 4 bytes from abs 0x102be65c via base v1 (0x102c4340).
  The `sw` at 0x100f70cc stores 4 bytes to sym(textureDebug) +0x0 via base v1 (sym(textureDebug)) with value ret(GetNextInteger).
  The `jal` at 0x100f70a8 calls `GetNextInteger [0x100feebc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100f70c8 has v0 = ret(GetNextInteger).
- `ClipBorder` in `usr/diags/IR/bin/irsaudit` at 0x100f70d0 (n32).
  It occupies 176 bytes.
  The `lw` at 0x100f70f0 loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `lw` at 0x100f710c loads 4 bytes from abs 0x102bdf50 via base t9 (0x102c4340).
  The `lw` at 0x100f7110 loads 4 bytes from abs 0x102be658 via base a1 (0x102c4340).
  The `lw` at 0x100f7120 loads 4 bytes from sym(trm) +0x0 via base a1 (sym(trm)).
  The `lw` at 0x100f712c loads 4 bytes from abs 0x102be65c via base ra (0x102c4340).
  The `lw` at 0x100f7130 loads 4 bytes from sym(textureDebug) +0x0 via base ra (sym(textureDebug)).
  The `lw` at 0x100f714c loads 4 bytes from abs 0x102bcecc via base a1 (0x102c4340).
  The `lw` at 0x100f7158 loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  The `lw` at 0x100f715c loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `jal` at 0x100f70f4 calls `GetNextInteger [0x100feebc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f711c calls `tbuClipBorder [0x1014e58c]` with a0=ret(GetNextInteger), a1=[sym(trm)], a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f7168 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b21f0, a2=(unknown), a3=(unknown).
  The `beq` at 0x100f7134 goes to 0x100f7174 when ra(=[sym(textureDebug)]) == 0 and falls through when ra(=[sym(textureDebug)]) != 0.
  The return at 0x100f7178 has v0 = ?.
- `TexturePassREnable` in `usr/diags/IR/bin/irsaudit` at 0x100f7180 (n32).
  It occupies 176 bytes.
  The `lw` at 0x100f71a0 loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `lw` at 0x100f71bc loads 4 bytes from abs 0x102bdefc via base t9 (0x102c4340).
  The `lw` at 0x100f71c0 loads 4 bytes from abs 0x102be658 via base a1 (0x102c4340).
  The `lw` at 0x100f71d0 loads 4 bytes from sym(trm) +0x0 via base a1 (sym(trm)).
  The `lw` at 0x100f71dc loads 4 bytes from abs 0x102be65c via base ra (0x102c4340).
  The `lw` at 0x100f71e0 loads 4 bytes from sym(textureDebug) +0x0 via base ra (sym(textureDebug)).
  The `lw` at 0x100f71fc loads 4 bytes from abs 0x102bcecc via base a1 (0x102c4340).
  The `lw` at 0x100f7208 loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  The `lw` at 0x100f720c loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `jal` at 0x100f71a4 calls `GetNextInteger [0x100feebc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f71cc calls `tbuEnablePassRCCT [0x10143cd8]` with a0=ret(GetNextInteger), a1=[sym(trm)], a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f7218 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2208, a2=(unknown), a3=(unknown).
  The `beq` at 0x100f71e4 goes to 0x100f7224 when ra(=[sym(textureDebug)]) == 0 and falls through when ra(=[sym(textureDebug)]) != 0.
  The return at 0x100f7228 has v0 = ?.
- `TextureEnableFog` in `usr/diags/IR/bin/irsaudit` at 0x100f7230 (n32).
  It occupies 176 bytes.
  The `lw` at 0x100f7250 loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `lw` at 0x100f726c loads 4 bytes from abs 0x102bdf00 via base t9 (0x102c4340).
  The `lw` at 0x100f7270 loads 4 bytes from abs 0x102be658 via base a1 (0x102c4340).
  The `lw` at 0x100f7280 loads 4 bytes from sym(trm) +0x0 via base a1 (sym(trm)).
  The `lw` at 0x100f728c loads 4 bytes from abs 0x102be65c via base ra (0x102c4340).
  The `lw` at 0x100f7290 loads 4 bytes from sym(textureDebug) +0x0 via base ra (sym(textureDebug)).
  The `lw` at 0x100f72ac loads 4 bytes from abs 0x102bcecc via base a1 (0x102c4340).
  The `lw` at 0x100f72b8 loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  The `lw` at 0x100f72bc loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `jal` at 0x100f7254 calls `GetNextInteger [0x100feebc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f727c calls `tbuEnableFog [0x101442b0]` with a0=ret(GetNextInteger), a1=[sym(trm)], a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f72c8 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2228, a2=(unknown), a3=(unknown).
  The `beq` at 0x100f7294 goes to 0x100f72d4 when ra(=[sym(textureDebug)]) == 0 and falls through when ra(=[sym(textureDebug)]) != 0.
  The return at 0x100f72d8 has v0 = ?.
- `RealRM` in `usr/diags/IR/bin/irsaudit` at 0x100f7498 (n32).
  It occupies 96 bytes.
  The `lw` at 0x100f74b8 loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `lw` at 0x100f74d4 loads 4 bytes from abs 0x102bdeac via base t9 (0x102c4340).
  The `lw` at 0x100f74d8 loads 4 bytes from abs 0x102bced0 via base v1 (0x102c4340).
  The `sw` at 0x100f74e4 stores 4 bytes to abs 0x1020c770 via base v1 (0x1020c764) with value ret(GetNextInteger).
  The `jal` at 0x100f74bc calls `GetNextInteger [0x100feebc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f74e0 calls `tbuFakeDownloadRegs [0x10140fd0]` with a0=ret(GetNextInteger), a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x100f74f0 has v0 = ret(tbuFakeDownloadRegs).
- `ClipLevels` in `usr/diags/IR/bin/irsaudit` at 0x100f74f8 (n32).
  It occupies 228 bytes.
  The `lw` at 0x100f7518 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100f752c loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100f7554, `lw` at 0x100f758c.
  2 such accesses load 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340), including `lw` at 0x100f7560, `lw` at 0x100f7588.
  The `lw` at 0x100f7564 loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `lw` at 0x100f75ac loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `sw` at 0x100f75bc stores 4 bytes to ? (base unknown) via base ra (?) with value ret(GetNextInteger).
  The `jal` at 0x100f751c calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f7534 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f7570 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2290, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f7594 calls `fprintf` with a0=(unknown), a1=0x101b22b8, a2=(unknown), a3=(unknown).
  The `jal` at 0x100f75b0 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bne` at 0x100f753c goes to 0x100f75a4 when v0(=ret(DLGetNameData)) != 0 and falls through when v0(=ret(DLGetNameData)) == 0.
  The return at 0x100f75c8 has v0 = ret(GetNextInteger).
  The return at 0x100f75d4 has v0 = ret(fprintf).
- `ClipCenter` in `usr/diags/IR/bin/irsaudit` at 0x100f75dc (n32).
  It occupies 256 bytes.
  The `lw` at 0x100f75fc loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100f7610 loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100f7638, `lw` at 0x100f7670.
  2 such accesses load 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340), including `lw` at 0x100f7644, `lw` at 0x100f766c.
  The `lw` at 0x100f7648 loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340), including `lw` at 0x100f7690, `lw` at 0x100f76a4.
  The `sw` at 0x100f76ac stores 4 bytes to ? (base unknown) via base ra (?) with value ret(GetNextInteger).
  The `sw` at 0x100f76cc stores 4 bytes to ? (base unknown) via base at (?) with value ret(GetNextInteger).
  The `jal` at 0x100f7600 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f7618 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f7654 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2290, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f7678 calls `fprintf` with a0=(unknown), a1=0x101b22b8, a2=(unknown), a3=(unknown).
  The `jal` at 0x100f7694 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f76b0 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bne` at 0x100f7620 goes to 0x100f7688 when v0(=ret(DLGetNameData)) != 0 and falls through when v0(=ret(DLGetNameData)) == 0.
  The return at 0x100f76c8 has v0 = ret(GetNextInteger).
  The return at 0x100f76d4 has v0 = ret(fprintf).
- `ClipVirtSize` in `usr/diags/IR/bin/irsaudit` at 0x100f76dc (n32).
  It occupies 344 bytes.
  The `lw` at 0x100f76fc loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100f7710 loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  The `lw` at 0x100f7740 loads 4 bytes from abs 0x102bd3f8 via base s0 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100f7748, `lw` at 0x100f7770.
  The `lw` at 0x100f774c loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340), including `lw` at 0x100f7790, `lw` at 0x100f77a4.
  The `sw` at 0x100f77a8 stores 4 bytes to ret(DLGetNameData) +0x2c via base s0 (ret(DLGetNameData)) with value ret(GetNextInteger).
  The `lw` at 0x100f77b8 loads 4 bytes from ret(DLGetNameData) +0x2c via base s0 (ret(DLGetNameData)).
  The `lw` at 0x100f77c8 loads 4 bytes from abs 0x102bcecc via base ra (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bd39c via base t9 (0x102c4340), including `lw` at 0x100f77cc, `lw` at 0x100f77fc.
  The `ldc1` at 0x100f77d4 loads 8 bytes from abs 0x101b22d8 via base ra (0x101b2188).
  The `sw` at 0x100f77dc stores 4 bytes to ret(DLGetNameData) +0x30 via base s0 (ret(DLGetNameData)) with value ret(GetNextInteger).
  The `swc1` at 0x100f7808 stores 4 bytes to ret(DLGetNameData) +0x24 via base s0 (ret(DLGetNameData)) with value .
  The `swc1` at 0x100f781c stores 4 bytes to ret(DLGetNameData) +0x28 via base s0 (ret(DLGetNameData)) with value .
  The `jal` at 0x100f7700 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f771c calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f775c calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2290, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f7778 calls `fprintf` with a0=(unknown), a1=0x101b22b8, a2=(unknown), a3=(unknown).
  The `jal` at 0x100f7794 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f77ac calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f77e4 calls `pow` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown); fp f12=0x4000000000000000.
  The `jalr` at 0x100f780c calls `pow` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown); fp f12=0x4000000000000000.
  The `bne` at 0x100f7724 goes to 0x100f7788 when v0(=ret(DLGetNameData)) != 0 and falls through when v0(=ret(DLGetNameData)) == 0.
  The return at 0x100f782c has v0 = ?.
- `ClipSize` in `usr/diags/IR/bin/irsaudit` at 0x100f7834 (n32).
  It occupies 320 bytes.
  The `lw` at 0x100f7854 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100f7868 loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  The `lw` at 0x100f7888 loads 4 bytes from abs 0x102bd414 via base s0 (0x102c4340).
  The `lw` at 0x100f78a4 loads 4 bytes from abs 0x102bd3f8 via base s1 (0x102c4340).
  3 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100f78ac, `lw` at 0x100f78cc, `lw` at 0x100f7940.
  The `lw` at 0x100f78ec loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `lw` at 0x100f7910 loads 4 bytes from abs 0x102bd39c via base t9 (0x102c4340).
  The `lw` at 0x100f7914 loads 4 bytes from abs 0x102bcecc via base at (0x102c4340).
  The `sw` at 0x100f7918 stores 4 bytes to ret(DLGetNameData) +0x38 via base s1 (ret(DLGetNameData)) with value ret(GetNextInteger).
  The `ldc1` at 0x100f7924 loads 8 bytes from abs 0x101b22d8 via base at (0x101b2188).
  The `lw` at 0x100f7938 loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  The `swc1` at 0x100f794c stores 4 bytes to ret(DLGetNameData) +0x34 via base s1 (ret(DLGetNameData)) with value .
  The `jal` at 0x100f7858 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f7878 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f78b8 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2290, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f78d4 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b22b8, a2=(unknown), a3=(unknown).
  The `jal` at 0x100f78f0 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f7920 calls `pow` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown); fp f12=0x4000000000000000.
  The `jalr` at 0x100f7954 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b22e0, a2=(unknown), a3=(unknown).
  The `bne` at 0x100f7890 goes to 0x100f78e4 when v0(=ret(DLGetNameData)) != 0 and falls through when v0(=ret(DLGetNameData)) == 0.
  The return at 0x100f796c has v0 = ret(fprintf).
- `TextureLevelSize` in `usr/diags/IR/bin/irsaudit` at 0x100f7974 (n32).
  It occupies 452 bytes.
  The `lw` at 0x100f7994 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100f79a8 loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  The `lw` at 0x100f79d8 loads 4 bytes from abs 0x102bdbbc via base s0 (0x102c4340).
  The `sw` at 0x100f7a0c stores 4 bytes to (ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3)) +0x68 via base s1 ((ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))) with value ret(GetNextInteger).
  The `sw` at 0x100f7a14 stores 4 bytes to (ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3)) +0x6c via base s1 ((ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))) with value ret(GetNextInteger).
  The `lw` at 0x100f7a24 loads 4 bytes from (ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3)) +0x68 via base s1 ((ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))).
  The `lw` at 0x100f7a34 loads 4 bytes from abs 0x102bcecc via base t8 (0x102c4340).
  The `lw` at 0x100f7a38 loads 4 bytes from abs 0x102bd39c via base s0 (0x102c4340).
  The `ldc1` at 0x100f7a40 loads 8 bytes from abs 0x101b22d8 via base t8 (0x101b2188).
  The `sw` at 0x100f7a4c stores 4 bytes to (ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3)) +0x70 via base s1 ((ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))) with value ret(GetNextInteger).
  The `lw` at 0x100f7a5c loads 4 bytes from (ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3)) +0x6c via base s1 ((ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))).
  The `swc1` at 0x100f7a70 stores 4 bytes to (ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3)) +0x74 via base s1 ((ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))) with value .
  The `swc1` at 0x100f7a90 stores 4 bytes to (ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3)) +0x78 via base s1 ((ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))) with value .
  The `swc1` at 0x100f7aa0 stores 4 bytes to (ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3)) +0x7c via base s1 ((ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))) with value .
  The `lw` at 0x100f7aa4 loads 4 bytes from ret(DLGetNameData) +0x0 via base s2 (ret(DLGetNameData)).
  The `sw` at 0x100f7abc stores 4 bytes to ret(DLGetNameData) +0x0 via base s2 (ret(DLGetNameData)) with value ret(GetNextInteger)+1.
  2 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100f7ae8, `lw` at 0x100f7b20.
  The `lw` at 0x100f7af8 loads 4 bytes from abs 0x102bd3f8 via base s1 (0x102c4340).
  The `lw` at 0x100f7afc loads 4 bytes from abs 0x102bd414 via base s2 (0x102c4340).
  The `jal` at 0x100f7998 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f79b4 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f79e0 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f79ec calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f7a08 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f7a18 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f7a54 calls `pow` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown); fp f12=0x4000000000000000.
  The `jalr` at 0x100f7a74 calls `pow` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown); fp f12=0x4000000000000000.
  The `jalr` at 0x100f7a94 calls `pow` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown); fp f12=0x4000000000000000.
  The `jalr` at 0x100f7b0c calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2290, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f7b28 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b22b8, a2=(unknown), a3=(unknown).
  The `beq` at 0x100f79c8 goes to 0x100f7adc when v0(=ret(DLGetNameData)) == 0 and falls through when v0(=ret(DLGetNameData)) != 0.
  The `bne` at 0x100f7ab4 goes to 0x100f7ac0 when s3(=ret(GetNextInteger)) < v0(=[ret(DLGetNameData)]) (signed) and falls through when s3(=ret(GetNextInteger)) >= v0(=[ret(DLGetNameData)]) (signed).
  The return at 0x100f7ad4 has v0 = ?.
- `TexturePrintLevel` in `usr/diags/IR/bin/irsaudit` at 0x100f7b38 (n32).
  It occupies 292 bytes.
  The `lw` at 0x100f7b58 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100f7b6c loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  The `lw` at 0x100f7b9c loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `lw` at 0x100f7bb8 loads 4 bytes from abs 0x102bdee4 via base s1 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100f7c0c, `lw` at 0x100f7c44.
  The `lw` at 0x100f7c1c loads 4 bytes from abs 0x102bd3f8 via base s0 (0x102c4340).
  The `lw` at 0x100f7c20 loads 4 bytes from abs 0x102bd414 via base s1 (0x102c4340).
  The `jal` at 0x100f7b5c calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f7b78 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f7ba0 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f7bc8 calls `tbuPrintMipmapLevel [0x10142770]` with a0=ret(DLGetNameData), a1=ret(GetNextInteger), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f7c30 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2290, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f7c4c calls `fprintf` with a0=sym(__iob)+32, a1=0x101b22b8, a2=(unknown), a3=(unknown).
  The `beq` at 0x100f7b8c goes to 0x100f7c00 when v0(=ret(DLGetNameData)) == 0 and falls through when v0(=ret(DLGetNameData)) != 0.
  The `bne` at 0x100f7bd8 goes to 0x100f7bc0 when s0(?) < 0x4 (signed) and falls through when s0(?) >= 0x4 (signed).
  The return at 0x100f7bf8 has v0 = ?.
- `TextureEnvironment` in `usr/diags/IR/bin/irsaudit` at 0x100f8494 (n32).
  It occupies 208 bytes.
  The `lw` at 0x100f84b4 loads 4 bytes from abs 0x102bdbbc via base s1 (0x102c4340).
  The `lw` at 0x100f84e4 loads 4 bytes from abs 0x102bdf94 via base t9 (0x102c4340).
  The `lw` at 0x100f84e8 loads 4 bytes from abs 0x102be658 via base a2 (0x102c4340).
  The `lw` at 0x100f84fc loads 4 bytes from sym(trm) +0x0 via base a2 (sym(trm)).
  The `lw` at 0x100f8508 loads 4 bytes from abs 0x102be65c via base ra (0x102c4340).
  The `lw` at 0x100f850c loads 4 bytes from sym(textureDebug) +0x0 via base ra (sym(textureDebug)).
  The `lw` at 0x100f8524 loads 4 bytes from abs 0x102bcecc via base a1 (0x102c4340).
  The `lw` at 0x100f8530 loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  The `lw` at 0x100f8538 loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `jal` at 0x100f84c0 calls `GetNextInteger [0x100feebc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f84cc calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f84f8 calls `tbuTexEnv [0x10154a40]` with a0=ret(GetNextInteger), a1=ret(GetNextInteger), a2=[sym(trm)], a3=(unknown).
  The `jalr` at 0x100f8544 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2688, a2=ret(GetNextInteger), a3=ret(GetNextInteger).
  The `beq` at 0x100f8510 goes to 0x100f854c when ra(=[sym(textureDebug)]) == 0 and falls through when ra(=[sym(textureDebug)]) != 0.
  The return at 0x100f855c has v0 = ?.
- `TexShadow` in `usr/diags/IR/bin/irsaudit` at 0x100f8564 (n32).
  It occupies 236 bytes.
  The `lw` at 0x100f8584 loads 4 bytes from abs 0x102bdbbc via base s0 (0x102c4340).
  The `lw` at 0x100f85c4 loads 4 bytes from abs 0x102bdf04 via base t9 (0x102c4340).
  The `lw` at 0x100f85cc loads 4 bytes from abs 0x102be658 via base a3 (0x102c4340).
  The `lw` at 0x100f85e0 loads 4 bytes from sym(trm) +0x0 via base a3 (sym(trm)).
  The `lw` at 0x100f85ec loads 4 bytes from abs 0x102be65c via base ra (0x102c4340).
  The `lw` at 0x100f85f0 loads 4 bytes from sym(textureDebug) +0x0 via base ra (sym(textureDebug)).
  The `lw` at 0x100f8608 loads 4 bytes from abs 0x102bcecc via base a1 (0x102c4340).
  The `lw` at 0x100f8614 loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  The `lw` at 0x100f8620 loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `jal` at 0x100f8590 calls `GetNextInteger [0x100feebc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f85a0 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f85ac calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f85dc calls `tbuDoShadow [0x101448b4]` with a0=ret(GetNextInteger), a1=ret(GetNextInteger), a2=ret(GetNextInteger), a3=[sym(trm)].
  The `jalr` at 0x100f862c calls `fprintf` with a0=sym(__iob)+32, a1=0x101b26a0, a2=ret(GetNextInteger), a3=ret(GetNextInteger), a4=ret(GetNextInteger).
  The `beq` at 0x100f85f4 goes to 0x100f8634 when ra(=[sym(textureDebug)]) == 0 and falls through when ra(=[sym(textureDebug)]) != 0.
  The return at 0x100f8648 has v0 = ?.
- `TexFreeImages` in `usr/diags/IR/bin/irsaudit` at 0x100f8650 (n32).
  It occupies 276 bytes.
  The `lw` at 0x100f8670 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100f8684 loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  The `lw` at 0x100f86b8 loads 4 bytes from ret(DLGetNameData) +0x0 via base v0 (ret(DLGetNameData)).
  The `lw` at 0x100f86c4 loads 4 bytes from abs 0x102bd420 via base s1 (0x102c4340).
  The `lw` at 0x100f86d0 loads 4 bytes from ? (base unknown) via base s0 (?).
  The `lw` at 0x100f86d4 loads 4 bytes from ret(DLGetNameData) +0x0 via base s3 (ret(DLGetNameData)).
  2 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100f8714, `lw` at 0x100f874c.
  The `lw` at 0x100f8724 loads 4 bytes from abs 0x102bd3f8 via base s0 (0x102c4340).
  The `lw` at 0x100f8728 loads 4 bytes from abs 0x102bd414 via base s1 (0x102c4340).
  The `jal` at 0x100f8674 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f8690 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f86cc calls `free` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f8738 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2290, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f8754 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b22b8, a2=(unknown), a3=(unknown).
  The `beq` at 0x100f86b0 goes to 0x100f8708 when v0(=ret(DLGetNameData)) == 0 and falls through when v0(=ret(DLGetNameData)) != 0.
  The `blez` at 0x100f86bc goes to 0x100f86e8 when ra(=[ret(DLGetNameData)]) <= 0 (signed) and falls through when ra(=[ret(DLGetNameData)]) > 0 (signed).
  The `bne` at 0x100f86e0 goes to 0x100f86c8 when s2(?) < t8(=[ret(DLGetNameData)]) (signed) and falls through when s2(?) >= t8(=[ret(DLGetNameData)]) (signed).
  The return at 0x100f8700 has v0 = ?.
- `TextureClipOffset` in `usr/diags/IR/bin/irsaudit` at 0x100f8864 (n32).
  It occupies 348 bytes.
  The `lw` at 0x100f8884 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100f8898 loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  The `lw` at 0x100f88b8 loads 4 bytes from abs 0x102bdbbc via base s2 (0x102c4340).
  The `lw` at 0x100f88e8 loads 4 bytes from abs 0x102bdf54 via base t9 (0x102c4340).
  The `lw` at 0x100f8904 loads 4 bytes from abs 0x102be65c via base ra (0x102c4340).
  The `lw` at 0x100f8908 loads 4 bytes from sym(textureDebug) +0x0 via base ra (sym(textureDebug)).
  3 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100f8920, `lw` at 0x100f8970, `lw` at 0x100f89a8.
  The `lw` at 0x100f892c loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  The `lw` at 0x100f8934 loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `lw` at 0x100f8980 loads 4 bytes from abs 0x102bd3f8 via base s0 (0x102c4340).
  The `lw` at 0x100f8984 loads 4 bytes from abs 0x102bd414 via base s1 (0x102c4340).
  The `jal` at 0x100f8888 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f88a8 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f88c4 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f88d0 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f88f4 calls `tbuOffsetClip [0x1014e690]` with a0=ret(DLGetNameData), a1=ret(GetNextInteger), a2=ret(GetNextInteger), a3=(unknown).
  The `jalr` at 0x100f8940 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2718, a2=ret(GetNextInteger), a3=ret(GetNextInteger).
  The `jalr` at 0x100f8994 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b26c0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f89b0 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b26e8, a2=(unknown), a3=(unknown).
  The `beq` at 0x100f88d8 goes to 0x100f8964 when s0(=ret(DLGetNameData)) == 0 and falls through when s0(=ret(DLGetNameData)) != 0.
  The `beq` at 0x100f890c goes to 0x100f8948 when ra(=[sym(textureDebug)]) == 0 and falls through when ra(=[sym(textureDebug)]) != 0.
  The return at 0x100f895c has v0 = ?.
- `TextureID` in `usr/diags/IR/bin/irsaudit` at 0x100f89c0 (n32).
  It occupies 232 bytes.
  The `lw` at 0x100f89e0 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100f89f4 loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100f8a1c, `lw` at 0x100f8a54.
  2 such accesses load 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340), including `lw` at 0x100f8a28, `lw` at 0x100f8a50.
  The `lw` at 0x100f8a2c loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `lw` at 0x100f8a74 loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  2 such accesses store 4 bytes to ? (base unknown) via base ra (?), including `sw` at 0x100f8a84, `sw` at 0x100f8a88.
  The `jal` at 0x100f89e4 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f89fc calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f8a38 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2738, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f8a5c calls `fprintf` with a0=(unknown), a1=0x101b2760, a2=(unknown), a3=(unknown).
  The `jal` at 0x100f8a78 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bne` at 0x100f8a04 goes to 0x100f8a6c when v0(=ret(DLGetNameData)) != 0 and falls through when v0(=ret(DLGetNameData)) == 0.
  The return at 0x100f8a94 has v0 = ret(GetNextInteger).
  The return at 0x100f8aa0 has v0 = ret(fprintf).
- `TexBank` in `usr/diags/IR/bin/irsaudit` at 0x100f8c00 (n32).
  It occupies 256 bytes.
  The `lw` at 0x100f8c20 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100f8c34 loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100f8c5c, `lw` at 0x100f8c94.
  2 such accesses load 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340), including `lw` at 0x100f8c68, `lw` at 0x100f8c90.
  The `lw` at 0x100f8c6c loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340), including `lw` at 0x100f8cb4, `lw` at 0x100f8cc8.
  The `sw` at 0x100f8cec stores 4 bytes to ? (base unknown) via base at (?) with value .
  The `jal` at 0x100f8c24 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f8c3c calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f8c78 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2738, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f8c9c calls `fprintf` with a0=(unknown), a1=0x101b2760, a2=(unknown), a3=(unknown).
  The `jal` at 0x100f8cb8 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f8ccc calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bne` at 0x100f8c44 goes to 0x100f8cac when v0(=ret(DLGetNameData)) != 0 and falls through when v0(=ret(DLGetNameData)) == 0.
  The return at 0x100f8cf8 has v0 = ?.
- `TexAddress` in `usr/diags/IR/bin/irsaudit` at 0x100f8d00 (n32).
  It occupies 292 bytes.
  The `lw` at 0x100f8d20 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100f8d34 loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340), including `lw` at 0x100f8d54, `lw` at 0x100f8d68.
  The `sw` at 0x100f8d8c stores 4 bytes to ? (base unknown) via base v1 (?) with value ret(GetNextInteger).
  The `lw` at 0x100f8d90 loads 4 bytes from ? (base unknown) via base at (?).
  2 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100f8dbc, `lw` at 0x100f8df4.
  2 such accesses load 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340), including `lw` at 0x100f8dc8, `lw` at 0x100f8df0.
  The `lw` at 0x100f8dcc loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  2 such accesses store 4 bytes to ? (base unknown) via base a2 (?), including `sw` at 0x100f8e14, `sw` at 0x100f8e20.
  The `jal` at 0x100f8d24 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f8d3c calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f8d58 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f8d6c calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f8dd8 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b27b8, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f8dfc calls `fprintf` with a0=(unknown), a1=0x101b27e0, a2=(unknown), a3=(unknown).
  The `beq` at 0x100f8d44 goes to 0x100f8dac when v0(=ret(DLGetNameData)) == 0 and falls through when v0(=ret(DLGetNameData)) != 0.
  The `beq` at 0x100f8d98 goes to 0x100f8e0c when at(?) == v1(=0x1) and falls through when at(?) != v1(=0x1).
  The return at 0x100f8da4 has v0 = ?.
  The return at 0x100f8e1c has v0 = ret(GetNextInteger).
- `NormalizeTexAddress` in `usr/diags/IR/bin/irsaudit` at 0x100f8e24 (n32).
  It occupies 152 bytes.
  The `lw` at 0x100f8e48 loads 4 bytes from abs 0x102bdef0 via base t9 (0x102c4340).
  The `lw` at 0x100f8e58 loads 4 bytes from a1 (arg1 at entry) +0x0 via base s8 (a1).
  The `sw` at 0x100f8e80 stores 4 bytes to a1 (arg1 at entry) +0x0 via base s8 (a1) with value .
  The `lw` at 0x100f8e84 loads 4 bytes from a2 (arg2 at entry) +0x0 via base a1 (a2).
  The `sw` at 0x100f8eac stores 4 bytes to a2 (arg2 at entry) +0x0 via base a1 (a2) with value .
  The `jal` at 0x100f8e50 calls `tbuGetTSize [0x101430cc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `blez` at 0x100f8e70 goes to 0x100f8e84 when a4(?) <= 0 (signed) and falls through when a4(?) > 0 (signed).
  The `blez` at 0x100f8e94 goes to 0x100f8eb0 when a4(?) <= 0 (signed) and falls through when a4(?) > 0 (signed).
  The return at 0x100f8ea8 has v0 = ?.
  The return at 0x100f8eb4 has v0 = ret(tbuGetTSize).
- `TextureFormat` in `usr/diags/IR/bin/irsaudit` at 0x100f9654 (n32).
  It occupies 228 bytes.
  The `lw` at 0x100f9674 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100f9688 loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100f96b0, `lw` at 0x100f96e8.
  2 such accesses load 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340), including `lw` at 0x100f96bc, `lw` at 0x100f96e4.
  The `lw` at 0x100f96c0 loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `lw` at 0x100f9708 loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `sw` at 0x100f9718 stores 4 bytes to ? (base unknown) via base ra (?) with value ret(GetNextInteger).
  The `jal` at 0x100f9678 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f9690 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f96cc calls `fprintf` with a0=sym(__iob)+32, a1=0x101b28e0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f96f0 calls `fprintf` with a0=(unknown), a1=0x101b2908, a2=(unknown), a3=(unknown).
  The `jal` at 0x100f970c calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bne` at 0x100f9698 goes to 0x100f9700 when v0(=ret(DLGetNameData)) != 0 and falls through when v0(=ret(DLGetNameData)) == 0.
  The return at 0x100f9724 has v0 = ret(GetNextInteger).
  The return at 0x100f9730 has v0 = ret(fprintf).
- `TextureMagFilter` in `usr/diags/IR/bin/irsaudit` at 0x100f9738 (n32).
  It occupies 228 bytes.
  The `lw` at 0x100f9758 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100f976c loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100f9794, `lw` at 0x100f97cc.
  2 such accesses load 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340), including `lw` at 0x100f97a0, `lw` at 0x100f97c8.
  The `lw` at 0x100f97a4 loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `lw` at 0x100f97ec loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `sw` at 0x100f97fc stores 4 bytes to ? (base unknown) via base ra (?) with value ret(GetNextInteger).
  The `jal` at 0x100f975c calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f9774 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f97b0 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2928, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f97d4 calls `fprintf` with a0=(unknown), a1=0x101b2950, a2=(unknown), a3=(unknown).
  The `jal` at 0x100f97f0 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bne` at 0x100f977c goes to 0x100f97e4 when v0(=ret(DLGetNameData)) != 0 and falls through when v0(=ret(DLGetNameData)) == 0.
  The return at 0x100f9808 has v0 = ret(GetNextInteger).
  The return at 0x100f9814 has v0 = ret(fprintf).
- `TextureMinFilter` in `usr/diags/IR/bin/irsaudit` at 0x100f981c (n32).
  It occupies 228 bytes.
  The `lw` at 0x100f983c loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100f9850 loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100f9878, `lw` at 0x100f98b0.
  2 such accesses load 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340), including `lw` at 0x100f9884, `lw` at 0x100f98ac.
  The `lw` at 0x100f9888 loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `lw` at 0x100f98d0 loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `sw` at 0x100f98e0 stores 4 bytes to ? (base unknown) via base ra (?) with value ret(GetNextInteger).
  The `jal` at 0x100f9840 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f9858 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f9894 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2928, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f98b8 calls `fprintf` with a0=(unknown), a1=0x101b2950, a2=(unknown), a3=(unknown).
  The `jal` at 0x100f98d4 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bne` at 0x100f9860 goes to 0x100f98c8 when v0(=ret(DLGetNameData)) != 0 and falls through when v0(=ret(DLGetNameData)) == 0.
  The return at 0x100f98ec has v0 = ret(GetNextInteger).
  The return at 0x100f98f8 has v0 = ret(fprintf).
- `EvenFirst` in `usr/diags/IR/bin/irsaudit` at 0x100f9900 (n32).
  It occupies 76 bytes.
  The `lw` at 0x100f9920 loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `lw` at 0x100f9938 loads 4 bytes from abs 0x102bced0 via base v1 (0x102c4340).
  The `sw` at 0x100f9948 stores 4 bytes to abs 0x1020c764 via base v1 (0x1020c764) with value ret(GetNextInteger).
  The `jal` at 0x100f9924 calls `GetNextInteger [0x100feebc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100f9944 has v0 = ret(GetNextInteger).
- `StartAddrs` in `usr/diags/IR/bin/irsaudit` at 0x100f994c (n32).
  It occupies 124 bytes.
  The `lw` at 0x100f9970 loads 4 bytes from abs 0x102bdbbc via base s0 (0x102c4340).
  The `lw` at 0x100f9990 loads 4 bytes from abs 0x102bced0 via base s1 (0x102c4340).
  The `sw` at 0x100f9998 stores 4 bytes to abs 0x1020c768 via base s1 (0x1020c764) with value ret(GetNextInteger).
  The `sw` at 0x100f99a0 stores 4 bytes to abs 0x1020c76c via base s1 (0x1020c764) with value ret(GetNextInteger).
  The `lw` at 0x100f99b4 loads 4 bytes from abs 0x102bcec8 via base t8 (0x102c4340).
  The `sw` at 0x100f99c4 stores 4 bytes to abs 0x10343984 via base t8 (0x10343984) with value 0x0.
  The `jal` at 0x100f997c calls `GetNextInteger [0x100feebc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f9994 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x100f99c0 has v0 = ret(GetNextInteger).
- `PutNextID` in `usr/diags/IR/bin/irsaudit` at 0x100f99c8 (n32).
  It occupies 144 bytes.
  The `lw` at 0x100f99e8 loads 4 bytes from abs 0x102bdeb4 via base t9 (0x102c4340).
  The `lw` at 0x100f9a04 loads 4 bytes from abs 0x102bd484 via base t9 (0x102c4340).
  The `lw` at 0x100f9a08 loads 4 bytes from abs 0x102bcecc via base a1 (0x102c4340).
  The `lw` at 0x100f9a24 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100f9a38 loads 4 bytes from abs 0x102bdb48 via base t9 (0x102c4340).
  The `jal` at 0x100f99ec calls `tbuGetNextTexID [0x10141010]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100f9a14 calls `sprintf` with a0=sp-128, a1=0x101b2970, a2=ret(tbuGetNextTexID), a3=(unknown).
  The `jal` at 0x100f9a28 calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f9a40 calls `ParserDefine [0x100fc6bc]` with a0=ret(GetNextString), a1=sp-128, a2=(unknown), a3=(unknown).
  The return at 0x100f9a50 has v0 = ret(ParserDefine).
- `GetTextureLevelSize` in `usr/diags/IR/bin/irsaudit` at 0x100f9a58 (n32).
  It occupies 384 bytes.
  2 such accesses load 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340), including `lw` at 0x100f9a78, `lw` at 0x100f9b90.
  The `lw` at 0x100f9a8c loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  3 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100f9ab4, `lw` at 0x100f9aec, `lw` at 0x100f9b60.
  2 such accesses load 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340), including `lw` at 0x100f9ac0, `lw` at 0x100f9ae8.
  The `lw` at 0x100f9ac4 loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `lw` at 0x100f9b0c loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  3 such accesses load 4 bytes from ? (base unknown) via base ra (?), including `lw` at 0x100f9b2c, `lw` at 0x100f9b30, `lw` at 0x100f9b38.
  The `lw` at 0x100f9b5c loads 4 bytes from abs 0x102bd484 via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bdaf8 via base t9 (0x102c4340), including `lw` at 0x100f9b7c, `lw` at 0x100f9bbc.
  The `lw` at 0x100f9ba4 loads 4 bytes from abs 0x102bdb48 via base t9 (0x102c4340).
  The `jal` at 0x100f9a7c calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f9a94 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f9ad0 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2978, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f9af4 calls `fprintf` with a0=(unknown), a1=0x101b29a0, a2=(unknown), a3=(unknown).
  The `jal` at 0x100f9b10 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f9b6c calls `sprintf` with a0=sp-96, a1=0x101b2970, a2=(unknown), a3=(unknown).
  The `jal` at 0x100f9b80 calls `DoSub [0x100fb3bc]` with a0=0x0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f9b94 calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f9bac calls `ParserDefine [0x100fc6bc]` with a0=ret(GetNextString), a1=sp-96, a2=(unknown), a3=(unknown).
  The `jal` at 0x100f9bc0 calls `DoSub [0x100fb3bc]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `bne` at 0x100f9a9c goes to 0x100f9b04 when v0(=ret(DLGetNameData)) != 0 and falls through when v0(=ret(DLGetNameData)) == 0.
  The return at 0x100f9bd0 has v0 = ?.
- `CreateTexture` in `usr/diags/IR/bin/irsaudit` at 0x100f9bd8 (n32).
  It occupies 188 bytes.
  The `lw` at 0x100f9bf8 loads 4 bytes from abs 0x102bdf64 via base t9 (0x102c4340).
  The `lw` at 0x100f9c10 loads 4 bytes from abs 0x102be65c via base v0 (0x102c4340).
  The `lw` at 0x100f9c14 loads 4 bytes from sym(textureDebug) +0x0 via base v0 (sym(textureDebug)).
  The `lw` at 0x100f9c30 loads 4 bytes from abs 0x102bcecc via base a1 (0x102c4340).
  The `lw` at 0x100f9c3c loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  The `lw` at 0x100f9c40 loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `lw` at 0x100f9c58 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100f9c6c loads 4 bytes from abs 0x102bdbe8 via base t9 (0x102c4340).
  The `jal` at 0x100f9bfc calls `tbuNewMipmap [0x1014f04c]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100f9c48 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b29c0, a2=(unknown), a3=(unknown).
  The `jal` at 0x100f9c5c calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f9c78 calls `DLNameData [0x100ff61c]` with a0=0x0, a1=ret(GetNextString), a2=ret(tbuNewMipmap), a3=(unknown).
  The `beq` at 0x100f9c18 goes to 0x100f9c54 when v0(=[sym(textureDebug)]) == 0 and falls through when v0(=[sym(textureDebug)]) != 0.
  The return at 0x100f9c8c has v0 = ret(DLNameData).
- `TextureClamp` in `usr/diags/IR/bin/irsaudit` at 0x100f9c94 (n32).
  It occupies 272 bytes.
  The `lw` at 0x100f9cb4 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100f9cc8 loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100f9cf8, `lw` at 0x100f9d34.
  2 such accesses load 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340), including `lw` at 0x100f9d04, `lw` at 0x100f9d30.
  The `lw` at 0x100f9d08 loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `lw` at 0x100f9d54 loads 4 bytes from abs 0x102bdbbc via base s0 (0x102c4340).
  The `sw` at 0x100f9d6c stores 4 bytes to ret(DLGetNameData) +0xc via base s1 (ret(DLGetNameData)) with value ret(GetNextInteger).
  The `sw` at 0x100f9d78 stores 4 bytes to ret(DLGetNameData) +0x10 via base s1 (ret(DLGetNameData)) with value ret(GetNextInteger).
  The `sw` at 0x100f9d88 stores 4 bytes to ret(DLGetNameData) +0x14 via base s1 (ret(DLGetNameData)) with value ret(GetNextInteger).
  The `jal` at 0x100f9cb8 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f9cd4 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f9d18 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b29d8, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f9d3c calls `fprintf` with a0=(unknown), a1=0x101b2a08, a2=(unknown), a3=(unknown).
  The `jal` at 0x100f9d5c calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f9d68 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f9d74 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bne` at 0x100f9ce0 goes to 0x100f9d4c when v0(=ret(DLGetNameData)) != 0 and falls through when v0(=ret(DLGetNameData)) == 0.
  The return at 0x100f9d90 has v0 = ret(GetNextInteger).
  The return at 0x100f9d9c has v0 = ret(fprintf).
- `GenerateTexturePattern` in `usr/diags/IR/bin/irsaudit` at 0x100f9da4 (n32).
  It occupies 516 bytes.
  The `lw` at 0x100f9dc4 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100f9dd8 loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  The `lw` at 0x100f9e08 loads 4 bytes from ret(DLGetNameData) +0x3c via base v0 (ret(DLGetNameData)).
  The `lw` at 0x100f9e18 loads 4 bytes from abs 0x102bdbbc via base s0 (0x102c4340).
  The `sw` at 0x100f9e38 stores 4 bytes to ? (base unknown) via base s1 (?) with value ret(GetNextInteger).
  The `lw` at 0x100f9e48 loads 4 bytes from abs 0x102bdf78 via base t9 (0x102c4340).
  The `lw` at 0x100f9e70 loads 4 bytes from abs 0x102be65c via base s1 (0x102c4340).
  2 such accesses load 4 bytes from sym(textureDebug) +0x0 via base s1 (sym(textureDebug)), including `lw` at 0x100f9e74, `lw` at 0x100f9f04.
  The `lw` at 0x100f9e90 loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `lw` at 0x100f9e9c loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  4 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100f9ea4, `lw` at 0x100f9f18, `lw` at 0x100f9f58.
  The `sw` at 0x100f9ec8 stores 4 bytes to ret(DLGetNameData) +0x3c via base s3 (ret(DLGetNameData)) with value [ret(DLGetNameData)+60].
  The `lw` at 0x100f9ed8 loads 4 bytes from abs 0x102bd414 via base s2 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bd3f8 via base s0 (0x102c4340), including `lw` at 0x100f9ee4, `lw` at 0x100f9f68.
  The `lw` at 0x100f9ef4 loads 4 bytes from abs 0x102bdf6c via base t9 (0x102c4340).
  The `lw` at 0x100f9f6c loads 4 bytes from abs 0x102bd414 via base s1 (0x102c4340).
  The `jal` at 0x100f9dc8 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100f9de4 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f9e20 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100f9e60 calls `tbuGenPat [0x1014ff88]` with a0=ret(DLGetNameData), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f9eb8 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2a58, a2=(unknown), a3=(unknown).
  The `jal` at 0x100f9efc calls `tbuGenerateMipmaps [0x1014f398]` with a0=ret(DLGetNameData), a1=0x1, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f9f20 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2a78, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f9f7c calls `fprintf` with a0=sym(__iob)+32, a1=0x101b29d8, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100f9f98 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2a30, a2=(unknown), a3=(unknown).
  The `beq` at 0x100f9e00 goes to 0x100f9f4c when v0(=ret(DLGetNameData)) == 0 and falls through when v0(=ret(DLGetNameData)) != 0.
  The `bne` at 0x100f9e34 goes to 0x100f9e1c when s2(?) < 0x4 (signed) and falls through when s2(?) >= 0x4 (signed).
  The `beq` at 0x100f9e78 goes to 0x100f9ec4 when ra(=[sym(textureDebug)]) == 0 and falls through when ra(=[sym(textureDebug)]) != 0.
  The `beq` at 0x100f9ee0 goes to 0x100f9f28 when s4(=[ret(DLGetNameData)+60]) == t8(=0x3) and falls through when s4(=[ret(DLGetNameData)+60]) != t8(=0x3).
  The `beq` at 0x100f9ee8 goes to 0x100f9f28 when s4(=[ret(DLGetNameData)+60]) == v0(=0x1) and falls through when s4(=[ret(DLGetNameData)+60]) != v0(=0x1).
  The `beq` at 0x100f9f08 goes to 0x100f9f28 when ra(=[sym(textureDebug)]) == 0 and falls through when ra(=[sym(textureDebug)]) != 0.
  The return at 0x100f9f44 has v0 = ?.
- `UnAttachDetail` in `usr/diags/IR/bin/irsaudit` at 0x100fa154 (n32).
  It occupies 200 bytes.
  The `lw` at 0x100fa174 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100fa188 loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  The `sw` at 0x100fa1a4 stores 4 bytes to ret(DLGetNameData) +0x12e8 via base v0 (ret(DLGetNameData)) with value 0x0.
  2 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100fa1cc, `lw` at 0x100fa204.
  2 such accesses load 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340), including `lw` at 0x100fa1d8, `lw` at 0x100fa200.
  The `lw` at 0x100fa1dc loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `jal` at 0x100fa178 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fa190 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fa1e8 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2b10, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fa20c calls `fprintf` with a0=(unknown), a1=0x101b2b40, a2=(unknown), a3=(unknown).
  The `beq` at 0x100fa198 goes to 0x100fa1c0 when v0(=ret(DLGetNameData)) == 0 and falls through when v0(=ret(DLGetNameData)) != 0.
  The return at 0x100fa1ac has v0 = ret(DLGetNameData).
  The return at 0x100fa1b8 has v0 = ret(fprintf).
- `AttachDetail` in `usr/diags/IR/bin/irsaudit` at 0x100fa21c (n32).
  It occupies 504 bytes.
  The `lw` at 0x100fa23c loads 4 bytes from abs 0x102bdbb8 via base s2 (0x102c4340).
  The `lw` at 0x100fa258 loads 4 bytes from abs 0x102bdbe4 via base s1 (0x102c4340).
  The `lw` at 0x100fa2a4 loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `lw` at 0x100fa2b8 loads 4 bytes from abs 0x102bdf48 via base t9 (0x102c4340).
  2 such accesses load 4 bytes from ret(DLGetNameData) +0x44 via base s0 (ret(DLGetNameData)), including `lw` at 0x100fa2c8, `lw` at 0x100fa318.
  The `lw` at 0x100fa2dc loads 4 bytes from abs 0x102be65c via base s1 (0x102c4340).
  2 such accesses load 4 bytes from sym(textureDebug) +0x0 via base s1 (sym(textureDebug)), including `lw` at 0x100fa2e0, `lw` at 0x100fa3e8.
  The `lw` at 0x100fa2fc loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `lw` at 0x100fa308 loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  4 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100fa30c, `lw` at 0x100fa378, `lw` at 0x100fa3b0.
  The `lw` at 0x100fa32c loads 4 bytes from abs 0x102bcec8 via base t8 (0x102c4340).
  The `lw` at 0x100fa334 loads 4 bytes from abs 0x1034399c via base t8 (0x10343984).
  The `lw` at 0x100fa344 loads 4 bytes from abs 0x102bd414 via base s2 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bd3f8 via base s0 (0x102c4340), including `lw` at 0x100fa34c, `lw` at 0x100fa388.
  The `lw` at 0x100fa38c loads 4 bytes from abs 0x102bd414 via base s1 (0x102c4340).
  The `lw` at 0x100fa3d8 loads 4 bytes from abs 0x102bdf90 via base t9 (0x102c4340).
  The `lw` at 0x100fa3dc loads 4 bytes from abs 0x102be658 via base a0 (0x102c4340).
  The `lw` at 0x100fa3e4 loads 4 bytes from sym(trm) +0x0 via base a0 (sym(trm)).
  The `jal` at 0x100fa248 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fa268 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fa274 calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fa284 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fa2a8 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x100fa2cc calls `tbuAttachDetailMap [0x1014e548]` with a0=ret(DLGetNameData), a1=ret(DLGetNameData), a2=[ret(DLGetNameData)+68], a3=ret(GetNextInteger).
  The `jalr` at 0x100fa31c calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2bc0, a2=[ret(DLGetNameData)+68], a3=ret(GetNextInteger).
  The `jalr` at 0x100fa39c calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2b60, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fa3b8 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2b90, a2=(unknown), a3=(unknown).
  The `jal` at 0x100fa3e0 calls `tbuLoadDetailTable [0x10154614]` with a0=[sym(trm)], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fa404 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2bf0, a2=(unknown), a3=(unknown).
  The `beq` at 0x100fa28c goes to 0x100fa36c when s0(=ret(DLGetNameData)) == 0 and falls through when s0(=ret(DLGetNameData)) != 0.
  The `beq` at 0x100fa294 goes to 0x100fa370 when v0(=ret(DLGetNameData)) == 0 and falls through when v0(=ret(DLGetNameData)) != 0.
  The `beq` at 0x100fa2e4 goes to 0x100fa328 when ra(=[sym(textureDebug)]) == 0 and falls through when ra(=[sym(textureDebug)]) != 0.
  The `beq` at 0x100fa348 goes to 0x100fa3c8 when t8(=[0x1034399c]) == 0 and falls through when t8(=[0x1034399c]) != 0.
  The `beq` at 0x100fa3ec goes to 0x100fa350 when ra(=[sym(textureDebug)]) == 0 and falls through when ra(=[sym(textureDebug)]) != 0.
  The return at 0x100fa364 has v0 = ?.
- `ClipTexture` in `usr/diags/IR/bin/irsaudit` at 0x100fa414 (n32).
  It occupies 372 bytes.
  The `lw` at 0x100fa434 loads 4 bytes from abs 0x102bdbb8 via base s2 (0x102c4340).
  The `lw` at 0x100fa450 loads 4 bytes from abs 0x102bdbe4 via base s1 (0x102c4340).
  The `lw` at 0x100fa498 loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `lw` at 0x100fa4ac loads 4 bytes from abs 0x102bdf5c via base t9 (0x102c4340).
  The `lw` at 0x100fa4cc loads 4 bytes from abs 0x102be65c via base ra (0x102c4340).
  The `lw` at 0x100fa4d0 loads 4 bytes from sym(textureDebug) +0x0 via base ra (sym(textureDebug)).
  3 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100fa4ec, `lw` at 0x100fa538, `lw` at 0x100fa570.
  The `lw` at 0x100fa4f8 loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  The `lw` at 0x100fa4fc loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `lw` at 0x100fa548 loads 4 bytes from abs 0x102bd3f8 via base s0 (0x102c4340).
  The `lw` at 0x100fa54c loads 4 bytes from abs 0x102bd414 via base s1 (0x102c4340).
  The `jal` at 0x100fa440 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fa460 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fa46c calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fa47c calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fa49c calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fa4bc calls `tbuMipToClip [0x1014eec8]` with a0=ret(DLGetNameData), a1=ret(DLGetNameData), a2=ret(GetNextInteger), a3=(unknown).
  The `jalr` at 0x100fa508 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2c68, a2=ret(GetNextInteger), a3=(unknown).
  The `jalr` at 0x100fa55c calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2c10, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fa578 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2c38, a2=(unknown), a3=(unknown).
  The `beq` at 0x100fa484 goes to 0x100fa52c when s0(=ret(DLGetNameData)) == 0 and falls through when s0(=ret(DLGetNameData)) != 0.
  The `beq` at 0x100fa48c goes to 0x100fa52c when v0(=ret(DLGetNameData)) == 0 and falls through when v0(=ret(DLGetNameData)) != 0.
  The `beq` at 0x100fa4d4 goes to 0x100fa514 when ra(=[sym(textureDebug)]) == 0 and falls through when ra(=[sym(textureDebug)]) != 0.
  The return at 0x100fa524 has v0 = ?.
- `ClipAndCenterTexture` in `usr/diags/IR/bin/irsaudit` at 0x100fa588 (n32).
  It occupies 428 bytes.
  The `lw` at 0x100fa5a8 loads 4 bytes from abs 0x102bdbb8 via base s2 (0x102c4340).
  The `lw` at 0x100fa5c4 loads 4 bytes from abs 0x102bdbe4 via base s0 (0x102c4340).
  The `lw` at 0x100fa614 loads 4 bytes from abs 0x102bdbbc via base s0 (0x102c4340).
  The `lw` at 0x100fa648 loads 4 bytes from abs 0x102bdf58 via base t9 (0x102c4340).
  The `lw` at 0x100fa66c loads 4 bytes from abs 0x102be65c via base ra (0x102c4340).
  The `lw` at 0x100fa670 loads 4 bytes from sym(textureDebug) +0x0 via base ra (sym(textureDebug)).
  3 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100fa688, `lw` at 0x100fa6e4, `lw` at 0x100fa71c.
  The `lw` at 0x100fa694 loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  The `lw` at 0x100fa6a0 loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `lw` at 0x100fa6f4 loads 4 bytes from abs 0x102bd3f8 via base s0 (0x102c4340).
  The `lw` at 0x100fa6f8 loads 4 bytes from abs 0x102bd414 via base s1 (0x102c4340).
  The `jal` at 0x100fa5b4 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fa5d4 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fa5e0 calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fa5f0 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fa61c calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fa628 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fa634 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fa65c calls `tbuMipToClipAndCenter [0x1014e994]` with a0=ret(DLGetNameData), a1=ret(DLGetNameData), a2=ret(GetNextInteger), a3=ret(GetNextInteger), a4=ret(GetNextInteger).
  The `jalr` at 0x100fa6ac calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2cd0, a2=ret(GetNextInteger), a3=ret(GetNextInteger), a4=ret(GetNextInteger).
  The `jalr` at 0x100fa708 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2c10, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fa724 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2c90, a2=(unknown), a3=(unknown).
  The `beq` at 0x100fa600 goes to 0x100fa6d8 when s1(=ret(DLGetNameData)) == 0 and falls through when s1(=ret(DLGetNameData)) != 0.
  The `beq` at 0x100fa608 goes to 0x100fa6d8 when v0(=ret(DLGetNameData)) == 0 and falls through when v0(=ret(DLGetNameData)) != 0.
  The `beq` at 0x100fa674 goes to 0x100fa6b4 when ra(=[sym(textureDebug)]) == 0 and falls through when ra(=[sym(textureDebug)]) != 0.
  The return at 0x100fa6d0 has v0 = ?.
- `MipToNonMip` in `usr/diags/IR/bin/irsaudit` at 0x100fa734 (n32).
  It occupies 348 bytes.
  The `lw` at 0x100fa754 loads 4 bytes from abs 0x102bdbb8 via base s2 (0x102c4340).
  The `lw` at 0x100fa770 loads 4 bytes from abs 0x102bdbe4 via base s1 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100fa7c4, `lw` at 0x100fa7fc.
  The `lw` at 0x100fa7d4 loads 4 bytes from abs 0x102bd3f8 via base s0 (0x102c4340).
  The `lw` at 0x100fa7d8 loads 4 bytes from abs 0x102bd414 via base s1 (0x102c4340).
  The `lw` at 0x100fa818 loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `lw` at 0x100fa838 loads 4 bytes from (ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3)) +0x8c via base ra ((ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))).
  The `sw` at 0x100fa83c stores 4 bytes to (ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3)) +0x8c via base at ((ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))) with value [(ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))+140].
  The `sw` at 0x100fa844 stores 4 bytes to ret(DLGetNameData) +0x0 via base s1 (ret(DLGetNameData)) with value 0x1.
  The `lw` at 0x100fa848 loads 4 bytes from (ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3)) +0x68 via base ra ((ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))).
  The `sw` at 0x100fa84c stores 4 bytes to (ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3)) +0x68 via base at ((ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))) with value [(ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))+104].
  The `lw` at 0x100fa850 loads 4 bytes from (ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3)) +0x6c via base ra ((ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))).
  The `sw` at 0x100fa854 stores 4 bytes to (ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3)) +0x6c via base at ((ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))) with value [(ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))+108].
  The `lw` at 0x100fa858 loads 4 bytes from (ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3)) +0x70 via base ra ((ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))).
  The `sw` at 0x100fa85c stores 4 bytes to (ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3)) +0x70 via base at ((ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))) with value [(ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))+112].
  The `lw` at 0x100fa860 loads 4 bytes from (ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3)) +0x74 via base ra ((ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))).
  The `sw` at 0x100fa864 stores 4 bytes to (ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3)) +0x74 via base at ((ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))) with value [(ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))+116].
  The `lw` at 0x100fa868 loads 4 bytes from (ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3)) +0x78 via base ra ((ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))).
  The `sw` at 0x100fa86c stores 4 bytes to (ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3)) +0x78 via base at ((ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))) with value [(ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))+120].
  The `lw` at 0x100fa870 loads 4 bytes from (ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3)) +0x7c via base ra ((ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))).
  The `sw` at 0x100fa874 stores 4 bytes to (ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3)) +0x7c via base at ((ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))) with value [(ret(DLGetNameData) + (((ret(GetNextInteger) << 0x2) + ret(GetNextInteger)) << 0x3))+124].
  The `jal` at 0x100fa760 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fa780 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fa78c calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fa7a0 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fa7e8 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2d08, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fa804 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2d30, a2=(unknown), a3=(unknown).
  The `jal` at 0x100fa81c calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x100fa7a8 goes to 0x100fa7b8 when s0(=ret(DLGetNameData)) == 0 and falls through when s0(=ret(DLGetNameData)) != 0.
  The `bne` at 0x100fa7b0 goes to 0x100fa814 when v0(=ret(DLGetNameData)) != 0 and falls through when v0(=ret(DLGetNameData)) == 0.
  The return at 0x100fa888 has v0 = ?.
- `TextureStorageMode` in `usr/diags/IR/bin/irsaudit` at 0x100fa890 (n32).
  It occupies 228 bytes.
  The `lw` at 0x100fa8b0 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100fa8c4 loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100fa8ec, `lw` at 0x100fa924.
  2 such accesses load 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340), including `lw` at 0x100fa8f8, `lw` at 0x100fa920.
  The `lw` at 0x100fa8fc loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `lw` at 0x100fa944 loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `sw` at 0x100fa954 stores 4 bytes to ? (base unknown) via base ra (?) with value ret(GetNextInteger).
  The `jal` at 0x100fa8b4 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fa8cc calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fa908 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b29d8, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fa92c calls `fprintf` with a0=(unknown), a1=0x101b2d60, a2=(unknown), a3=(unknown).
  The `jal` at 0x100fa948 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bne` at 0x100fa8d4 goes to 0x100fa93c when v0(=ret(DLGetNameData)) != 0 and falls through when v0(=ret(DLGetNameData)) == 0.
  The return at 0x100fa960 has v0 = ret(GetNextInteger).
  The return at 0x100fa96c has v0 = ret(fprintf).
- `TextureNLevels` in `usr/diags/IR/bin/irsaudit` at 0x100fa974 (n32).
  It occupies 228 bytes.
  The `lw` at 0x100fa994 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100fa9a8 loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100fa9d0, `lw` at 0x100faa08.
  2 such accesses load 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340), including `lw` at 0x100fa9dc, `lw` at 0x100faa04.
  The `lw` at 0x100fa9e0 loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `lw` at 0x100faa28 loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `sw` at 0x100faa38 stores 4 bytes to ? (base unknown) via base ra (?) with value ret(GetNextInteger).
  The `jal` at 0x100fa998 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fa9b0 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fa9ec calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2d78, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100faa10 calls `fprintf` with a0=(unknown), a1=0x101b2da0, a2=(unknown), a3=(unknown).
  The `jal` at 0x100faa2c calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bne` at 0x100fa9b8 goes to 0x100faa20 when v0(=ret(DLGetNameData)) != 0 and falls through when v0(=ret(DLGetNameData)) == 0.
  The return at 0x100faa44 has v0 = ret(GetNextInteger).
  The return at 0x100faa50 has v0 = ret(fprintf).
- `MAX` in `usr/diags/IR/bin/irsaudit` at 0x100faa58 (n32).
  It occupies 28 bytes.
  The `beq` at 0x100faa5c goes to 0x100faa6c when a1 >= a0 (signed) and falls through when a1 < a0 (signed).
  The return at 0x100faa64 has v0 = a0.
  The return at 0x100faa6c has v0 = a1.
- `BindTexture` in `usr/diags/IR/bin/irsaudit` at 0x100faed0 (n32).
  It occupies 508 bytes.
  The `lw` at 0x100faef0 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100faf04 loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  The `lw` at 0x100faf40 loads 4 bytes from abs 0x102bdf38 via base t9 (0x102c4340).
  The `lw` at 0x100faf44 loads 4 bytes from abs 0x102be658 via base s4 (0x102c4340).
  3 such accesses load 4 bytes from sym(trm) +0x0 via base s4 (sym(trm)), including `lw` at 0x100faf50, `lw` at 0x100faff8, `lw` at 0x100fb0c0.
  The `lw` at 0x100faf5c loads 4 bytes from abs 0x102be65c via base s1 (0x102c4340).
  4 such accesses load 4 bytes from sym(textureDebug) +0x0 via base s1 (sym(textureDebug)), including `lw` at 0x100faf60, `lw` at 0x100fafc0, `lw` at 0x100fb000.
  The `lw` at 0x100faf7c loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `lw` at 0x100faf88 loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  5 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100faf8c, `lw` at 0x100fafd4, `lw` at 0x100fb014.
  The `lw` at 0x100fafa4 loads 4 bytes from ret(DLGetNameData) +0x3c via base s3 (ret(DLGetNameData)).
  The `lw` at 0x100fafb4 loads 4 bytes from abs 0x102bd414 via base s2 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bd3f8 via base s0 (0x102c4340), including `lw` at 0x100fafbc, `lw` at 0x100fb070.
  The `lw` at 0x100fafec loads 4 bytes from abs 0x102bdf40 via base t9 (0x102c4340).
  The `lw` at 0x100fb02c loads 4 bytes from abs 0x102bcec8 via base a2 (0x102c4340).
  The `sw` at 0x100fb030 stores 4 bytes to abs 0x10343988 via base a2 (0x10343984) with value ret(DLGetNameData).
  The `lw` at 0x100fb074 loads 4 bytes from abs 0x102bd414 via base s1 (0x102c4340).
  The `lw` at 0x100fb0b8 loads 4 bytes from abs 0x102bdf8c via base t9 (0x102c4340).
  The `jal` at 0x100faef4 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100faf10 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jal` at 0x100faf4c calls `tbuEnableCubeMap [0x1014a528]` with a0=0x0, a1=[sym(trm)], a2=(unknown), a3=(unknown).
  The `jalr` at 0x100faf94 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2f18, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fafdc calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2f38, a2=(unknown), a3=(unknown).
  The `jal` at 0x100faff4 calls `tbuBindTextureCCT [0x1014aaac]` with a0=ret(DLGetNameData), a1=[sym(trm)], a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fb01c calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2f58, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fb084 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2ed0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fb0a0 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2ef8, a2=(unknown), a3=(unknown).
  The `jal` at 0x100fb0bc calls `tbuLoadBicubicTable [0x10154238]` with a0=[sym(trm)], a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x100faf28 goes to 0x100fb054 when v0(=ret(DLGetNameData)) == 0 and falls through when v0(=ret(DLGetNameData)) != 0.
  The `beq` at 0x100faf64 goes to 0x100fafa0 when ra(=[sym(textureDebug)]) == 0 and falls through when ra(=[sym(textureDebug)]) != 0.
  The `beq` at 0x100fafb8 goes to 0x100fb0b0 when t8(=[ret(DLGetNameData)+60]) == t9(=0x3) and falls through when t8(=[ret(DLGetNameData)+60]) != t9(=0x3).
  The `beq` at 0x100fafc4 goes to 0x100fafe4 when t8(=[sym(textureDebug)]) == 0 and falls through when t8(=[sym(textureDebug)]) != 0.
  The `beq` at 0x100fb004 goes to 0x100fb024 when ra(=[sym(textureDebug)]) == 0 and falls through when ra(=[sym(textureDebug)]) != 0.
  The return at 0x100fb04c has v0 = ?.
- `BindCubeMap` in `usr/diags/IR/bin/irsaudit` at 0x100fb0cc (n32).
  It occupies 552 bytes.
  The `lw` at 0x100fb0ec loads 4 bytes from abs 0x102bdbb8 via base s0 (0x102c4340).
  The `lw` at 0x100fb108 loads 4 bytes from abs 0x102bdbe4 via base s1 (0x102c4340).
  The `lw` at 0x100fb200 loads 4 bytes from abs 0x102bdf3c via base t9 (0x102c4340).
  The `lw` at 0x100fb20c loads 4 bytes from abs 0x102be658 via base a6 (0x102c4340).
  The `lw` at 0x100fb220 loads 4 bytes from sym(trm) +0x0 via base a6 (sym(trm)).
  The `lw` at 0x100fb22c loads 4 bytes from abs 0x102be65c via base ra (0x102c4340).
  The `lw` at 0x100fb230 loads 4 bytes from sym(textureDebug) +0x0 via base ra (sym(textureDebug)).
  3 such accesses load 4 bytes from abs 0x102bcecc via base a1 (0x102c4340), including `lw` at 0x100fb24c, `lw` at 0x100fb2a4, `lw` at 0x100fb2dc.
  The `lw` at 0x100fb258 loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  The `lw` at 0x100fb25c loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `lw` at 0x100fb2b4 loads 4 bytes from abs 0x102bd3f8 via base s0 (0x102c4340).
  The `lw` at 0x100fb2b8 loads 4 bytes from abs 0x102bd414 via base s1 (0x102c4340).
  The `jal` at 0x100fb0f8 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fb118 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fb124 calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fb138 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fb144 calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fb158 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fb164 calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fb178 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fb184 calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fb198 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fb1a4 calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fb1b4 calls `DLGetNameData [0x100ff57c]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fb21c calls `tbuBindCubeMap [0x1014a5fc]` with a0=ret(DLGetNameData), a1=ret(DLGetNameData), a2=ret(DLGetNameData), a3=ret(DLGetNameData), a4=ret(DLGetNameData), a5=ret(DLGetNameData), a6=[sym(trm)].
  The `jalr` at 0x100fb264 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2fe8, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fb2c8 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2f78, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fb2e4 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2fa8, a2=(unknown), a3=(unknown).
  The `beq` at 0x100fb1bc goes to 0x100fb29c when s2(=ret(DLGetNameData)) == 0 and falls through when s2(=ret(DLGetNameData)) != 0.
  The `beq` at 0x100fb1c4 goes to 0x100fb29c when s3(=ret(DLGetNameData)) == 0 and falls through when s3(=ret(DLGetNameData)) != 0.
  The `beq` at 0x100fb1cc goes to 0x100fb29c when s4(=ret(DLGetNameData)) == 0 and falls through when s4(=ret(DLGetNameData)) != 0.
  The `beq` at 0x100fb1d4 goes to 0x100fb29c when s5(=ret(DLGetNameData)) == 0 and falls through when s5(=ret(DLGetNameData)) != 0.
  The `beq` at 0x100fb1dc goes to 0x100fb29c when s6(=ret(DLGetNameData)) == 0 and falls through when s6(=ret(DLGetNameData)) != 0.
  The `beq` at 0x100fb1e4 goes to 0x100fb29c when v0(=ret(DLGetNameData)) == 0 and falls through when v0(=ret(DLGetNameData)) != 0.
  The `beq` at 0x100fb234 goes to 0x100fb270 when ra(=[sym(textureDebug)]) == 0 and falls through when ra(=[sym(textureDebug)]) != 0.
  The return at 0x100fb290 has v0 = ?.
- `TextureOnOff` in `usr/diags/IR/bin/irsaudit` at 0x100fb2f4 (n32).
  It occupies 200 bytes.
  The `lw` at 0x100fb314 loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bcec8 via base a2 (0x102c4340), including `lw` at 0x100fb330, `lw` at 0x100fb398.
  The `lw` at 0x100fb33c loads 4 bytes from abs 0x102bdf98 via base t9 (0x102c4340).
  The `lw` at 0x100fb340 loads 4 bytes from abs 0x102be658 via base a1 (0x102c4340).
  The `sw` at 0x100fb344 stores 4 bytes to abs 0x1034398c via base a2 (0x10343984) with value ret(GetNextInteger).
  The `lw` at 0x100fb350 loads 4 bytes from sym(trm) +0x0 via base a1 (sym(trm)).
  The `lw` at 0x100fb35c loads 4 bytes from abs 0x102be65c via base a3 (0x102c4340).
  The `lw` at 0x100fb360 loads 4 bytes from sym(textureDebug) +0x0 via base a3 (sym(textureDebug)).
  The `lw` at 0x100fb37c loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `lw` at 0x100fb388 loads 4 bytes from abs 0x102bcecc via base a1 (0x102c4340).
  The `lw` at 0x100fb394 loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  The `lw` at 0x100fb3a0 loads 4 bytes from abs 0x1034398c via base a2 (0x10343984).
  The `jal` at 0x100fb318 calls `GetNextInteger [0x100feebc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fb34c calls `tbuTexOnOff [0x10154b68]` with a0=ret(GetNextInteger), a1=[sym(trm)], a2=0x10343984, a3=(unknown).
  The `jalr` at 0x100fb3a4 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2670, a2=[0x1034398c], a3=[sym(textureDebug)].
  The `beq` at 0x100fb364 goes to 0x100fb3b0 when a3(=[sym(textureDebug)]) == 0 and falls through when a3(=[sym(textureDebug)]) != 0.
  The return at 0x100fb3b4 has v0 = ?.
- `DoSub` in `usr/diags/IR/bin/irsaudit` at 0x100fb3bc (n32).
  It occupies 32 bytes.
  The `lw` at 0x100fb3d0 loads 4 bytes from abs 0x102be338 via base v0 (0x102c4340).
  The `sw` at 0x100fb3d8 stores 4 bytes to sym(doSubstitute) +0x0 via base v0 (sym(doSubstitute)) with value a0.
  The return at 0x100fb3d4 has v0 = sym(doSubstitute).
- `DoPrint` in `usr/diags/IR/bin/irsaudit` at 0x100fb3dc (n32).
  It occupies 108 bytes.
  The `lw` at 0x100fb3fc loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100fb418 loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  The `lw` at 0x100fb420 loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `lw` at 0x100fb42c loads 4 bytes from abs 0x102bced4 via base a1 (0x102c4340).
  The `jal` at 0x100fb400 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100fb430 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b3020, a2=ret(GetNextString), a3=(unknown).
  The return at 0x100fb440 has v0 = ret(fprintf).
- `DoPrintHex` in `usr/diags/IR/bin/irsaudit` at 0x100fb448 (n32).
  It occupies 112 bytes.
  The `lw` at 0x100fb468 loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `lw` at 0x100fb484 loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `lw` at 0x100fb490 loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  The `lw` at 0x100fb494 loads 4 bytes from abs 0x102bced4 via base a1 (0x102c4340).
  The `jal` at 0x100fb46c calls `GetNextInteger [0x100feebc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100fb4a0 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b3028, a2=ret(GetNextInteger), a3=(unknown).
  The return at 0x100fb4b0 has v0 = ret(fprintf).
- `Debug` in `usr/diags/IR/bin/irsaudit` at 0x100fb4b8 (n32).
  It occupies 76 bytes.
  The `lw` at 0x100fb4d8 loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `lw` at 0x100fb4f0 loads 4 bytes from abs 0x102be67c via base v1 (0x102c4340).
  The `sw` at 0x100fb500 stores 4 bytes to sym(debug) +0x0 via base v1 (sym(debug)) with value ret(GetNextInteger).
  The `jal` at 0x100fb4dc calls `GetNextInteger [0x100feebc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100fb4fc has v0 = ret(GetNextInteger).
- `IncludeFile` in `usr/diags/IR/bin/irsaudit` at 0x100fb504 (n32).
  It occupies 112 bytes.
  The `lw` at 0x100fb530 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100fb534 loads 4 bytes from abs 0x102be668 via base s0 (0x102c4340).
  The `lw` at 0x100fb540 loads 4 bytes from sym(fp) +0x0 via base s0 (sym(fp)).
  The `lw` at 0x100fb54c loads 4 bytes from abs 0x102bdb84 via base t9 (0x102c4340).
  The `sw` at 0x100fb560 stores 4 bytes to sym(fp) +0x0 via base s0 (sym(fp)) with value [sym(fp)].
  The `jal` at 0x100fb53c calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fb550 calls `ParseFile [0x100fd9d4]` with a0=ret(GetNextString), a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x100fb56c has v0 = ret(ParseFile).
- `stringContainsSpace` in `usr/diags/IR/bin/irsaudit` at 0x100fb574 (n32).
  It occupies 184 bytes.
  The `lw` at 0x100fb5a0 loads 4 bytes from abs 0x102bd474 via base t9 (0x102c4340).
  The `lw` at 0x100fb5cc loads 4 bytes from abs 0x102bd4a4 via base a6 (0x102c4340).
  The `lw` at 0x100fb5dc loads 4 bytes from sym(__libc_attr) +0x0 via base a6 (sym(__libc_attr)).
  The `lbu` at 0x100fb5e4 loads 1 bytes from ? (base unknown) via base a0 (?).
  The `lw` at 0x100fb5f0 loads 4 bytes from ? (base unknown) via base t0 (?).
  The `jalr` at 0x100fb5a4 calls `strlen` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` at 0x100fb590 goes to 0x100fb60c when a0 == 0 and falls through when a0 != 0.
  The `blez` at 0x100fb5b0 goes to 0x100fb60c when v0(=ret(strlen)) <= 0 (signed) and falls through when v0(=ret(strlen)) > 0 (signed).
  The `bne` at 0x100fb5fc goes to 0x100fb620 when (a5(=0xffffffff80000008) & t0(?)) != 0 and falls through when (a5(=0xffffffff80000008) & t0(?)) == 0.
  The `bne` at 0x100fb604 goes to 0x100fb5e4 when a4(?) != 0 and falls through when a4(?) == 0.
  The return at 0x100fb618 has v0 = 0x0.
  The return at 0x100fb624 has v0 = 0x1.
- `Repeat` in `usr/diags/IR/bin/irsaudit` at 0x100fb62c (n32).
  It occupies 924 bytes.
  The `lw` at 0x100fb664 loads 4 bytes from abs 0x102bd474 via base t9 (0x102c4340).
  The `lw` at 0x100fb66c loads 4 bytes from abs 0x102be668 via base s4 (0x102c4340).
  The `lw` at 0x100fb670 loads 4 bytes from abs 0x102bced8 via base s0 (0x102c4340).
  3 such accesses load 4 bytes from sym(fp) +0x0 via base s4 (sym(fp)), including `lw` at 0x100fb674, `lw` at 0x100fb7e8, `lw` at 0x100fb80c.
  The `lw` at 0x100fb68c loads 4 bytes from abs 0x102bd48c via base t9 (0x102c4340).
  The `lw` at 0x100fb6a8 loads 4 bytes from abs 0x102bced4 via base a0 (0x102c4340).
  The `lw` at 0x100fb6b8 loads 4 bytes from abs 0x102bcedc via base s5 (0x102c4340).
  The `lw` at 0x100fb6bc loads 4 bytes from abs 0x102bd388 via base t9 (0x102c4340).
  3 such accesses load 4 bytes from abs 0x10344a38 via base s5 (0x103439a0), including `lw` at 0x100fb6c0, `lw` at 0x100fb6dc, `lw` at 0x100fb914.
  The `sw` at 0x100fb6d4 stores 4 bytes to abs 0x10344a38 via base s5 (0x103439a0) with value [0x10344a38]+1.
  The `lw` at 0x100fb6ec loads 4 bytes from abs 0x102bd484 via base t9 (0x102c4340).
  8 such accesses load 4 bytes from abs 0x102bced4 via base a1 (0x102c4340), including `lw` at 0x100fb6f8, `lw` at 0x100fb720, `lw` at 0x100fb7c8.
  The `lw` at 0x100fb71c loads 4 bytes from abs 0x102bd4ac via base t9 (0x102c4340).
  The `lw` at 0x100fb748 loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bd3f8 via base s7 (0x102c4340), including `lw` at 0x100fb760, `lw` at 0x100fb984.
  2 such accesses load 4 bytes from abs 0x102bdaf8 via base s6 (0x102c4340), including `lw` at 0x100fb76c, `lw` at 0x100fb8a0.
  The `lw` at 0x100fb78c loads 4 bytes from abs 0x102bdbb8 via base s8 (0x102c4340).
  The `lw` at 0x100fb7bc loads 4 bytes from abs 0x102bd43c via base s1 (0x102c4340).
  The `lw` at 0x100fb7fc loads 4 bytes from abs 0x102bdb0c via base t9 (0x102c4340).
  The `lw` at 0x100fb838 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100fb888 loads 4 bytes from abs 0x102bd40c via base t9 (0x102c4340).
  The `lw` at 0x100fb8c4 loads 4 bytes from abs 0x102bdb84 via base s0 (0x102c4340).
  The `lw` at 0x100fb8ec loads 4 bytes from abs 0x102bd420 via base t9 (0x102c4340).
  The `sw` at 0x100fb90c stores 4 bytes to sym(fp) +0x0 via base s4 (sym(fp)) with value .
  The `sw` at 0x100fb924 stores 4 bytes to abs 0x10344a38 via base s5 (0x103439a0) with value [0x10344a38]-1.
  The `lw` at 0x100fb988 loads 4 bytes from abs 0x102bd414 via base s0 (0x102c4340).
  The `jalr` at 0x100fb67c calls `strlen` with a0=0x1020c780, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100fb694 calls `malloc` with a0=ret(strlen)+128, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fb6d0 calls `getenv` with a0=0x101b3030, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fb704 calls `sprintf` with a0=ret(malloc), a1=0x101b3040, a2=0x1020c780, a3=ret(getenv), a4=[0x10344a38]-1.
  The `jalr` at 0x100fb72c calls `fopen` with a0=ret(malloc), a1=0x101b3058, a2=(unknown), a3=(unknown).
  The `jal` at 0x100fb75c calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fb77c calls `DoSub [0x100fb3bc]` with a0=0x0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fb794 calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fb7d4 calls `strncmp` with a0=ret(GetNextString), a1=0x101b30b8, a2=0x6, a3=(unknown).
  The `jal` at 0x100fb800 calls `stringContainsSpace [0x100fb574]` with a0=ret(GetNextString), a1=(unknown), a2=[sym(fp)], a3=(unknown).
  The `jalr` at 0x100fb828 calls `fprintf` with a0=(unknown), a1=0x101b30c0, a2=ret(GetNextString), a3=(unknown).
  The `jal` at 0x100fb83c calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fb864 calls `strncmp` with a0=ret(GetNextString), a1=0x101b30a8, a2=0x6, a3=(unknown).
  The `jalr` at 0x100fb89c calls `fclose` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fb8a8 calls `DoSub [0x100fb3bc]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fb8cc calls `ParseFile [0x100fd9d4]` with a0=ret(malloc), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fb8fc calls `free` with a0=ret(malloc), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fb950 calls `fprintf` with a0=(unknown), a1=0x101b3020, a2=ret(GetNextString), a3=(unknown).
  The `jalr` at 0x100fb99c calls `fprintf` with a0=sym(__iob)+32, a1=0x101b3060, a2=ret(malloc), a3=(unknown).
  The `jalr` at 0x100fb9b8 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b3080, a2=(unknown), a3=(unknown).
  The `beq` at 0x100fb738 goes to 0x100fb968 when v0(=ret(fopen)) == 0 and falls through when v0(=ret(fopen)) != 0.
  The `beq` at 0x100fb7a8 goes to 0x100fb87c when v0(=ret(GetNextString)) == 0 and falls through when v0(=ret(GetNextString)) != 0.
  The `beq` at 0x100fb7dc goes to 0x100fb960 when v0(=ret(strncmp)) == 0 and falls through when v0(=ret(strncmp)) != 0.
  The `beq` at 0x100fb7e4 goes to 0x100fb87c when s6(?) == s8(?) and falls through when s6(?) != s8(?).
  The `beq` at 0x100fb7ec goes to 0x100fb834 when a2(=[sym(fp)]) == 0 and falls through when a2(=[sym(fp)]) != 0.
  The `beq` at 0x100fb808 goes to 0x100fb934 when v0(=ret(stringContainsSpace)) == 0 and falls through when v0(=ret(stringContainsSpace)) != 0.
  The `beq` at 0x100fb844 goes to 0x100fb87c when v0(=ret(GetNextString)) == 0 and falls through when v0(=ret(GetNextString)) != 0.
  The `bne` at 0x100fb86c goes to 0x100fb7c0 when v0(=ret(strncmp)) != 0 and falls through when v0(=ret(strncmp)) == 0.
  The `blez` at 0x100fb8b0 goes to 0x100fb8e4 when s3(=ret(GetNextInteger)) <= 0 (signed) and falls through when s3(=ret(GetNextInteger)) > 0 (signed).
  The `bne` at 0x100fb8dc goes to 0x100fb8cc when s1(?) < s3(=ret(GetNextInteger)) (signed) and falls through when s1(?) >= s3(=ret(GetNextInteger)) (signed).
  The `beq` at 0x100fb934 goes to 0x100fb834 when v0(=[sym(fp)]) == 0 and falls through when v0(=[sym(fp)]) != 0.
  The return at 0x100fb92c has v0 = ret(free).
- `PassOnIf` in `usr/diags/IR/bin/irsaudit` at 0x100fb9c8 (n32).
  It occupies 232 bytes.
  The `lw` at 0x100fb9e8 loads 4 bytes from abs 0x102bdbb8 via base s1 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bced4 via base a1 (0x102c4340), including `lw` at 0x100fba1c, `lw` at 0x100fba5c.
  The `lw` at 0x100fba54 loads 4 bytes from abs 0x102bd43c via base s2 (0x102c4340).
  The `lw` at 0x100fba80 loads 4 bytes from abs 0x102bdb14 via base t9 (0x102c4340).
  The `jal` at 0x100fb9f4 calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100fba28 calls `strncmp` with a0=ret(GetNextString), a1=0x101b30d0, a2=0x5, a3=(unknown).
  The `jal` at 0x100fba38 calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fba6c calls `strncmp` with a0=ret(GetNextString), a1=0x101b30c8, a2=0x2, a3=(unknown).
  The `jal` at 0x100fba84 calls `PassOnIf [0x100fb9c8]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x100fba00 goes to 0x100fba94 when v0(=ret(GetNextString)) == 0 and falls through when v0(=ret(GetNextString)) != 0.
  The `beq` at 0x100fba30 goes to 0x100fba94 when v0(=ret(strncmp)) == 0 and falls through when v0(=ret(strncmp)) != 0.
  The `beq` at 0x100fba40 goes to 0x100fba94 when v0(=ret(GetNextString)) == 0 and falls through when v0(=ret(GetNextString)) != 0.
  The `bne` at 0x100fba74 goes to 0x100fba10 when v0(=ret(strncmp)) != 0 and falls through when v0(=ret(strncmp)) == 0.
  The return at 0x100fbaa8 has v0 = ?.
- `ExecuteIf` in `usr/diags/IR/bin/irsaudit` at 0x100fbab0 (n32).
  It occupies 864 bytes.
  The `lw` at 0x100fbae4 loads 4 bytes from abs 0x102bd474 via base t9 (0x102c4340).
  The `lw` at 0x100fbaec loads 4 bytes from abs 0x102be668 via base s2 (0x102c4340).
  The `lw` at 0x100fbaf0 loads 4 bytes from abs 0x102bced8 via base s0 (0x102c4340).
  3 such accesses load 4 bytes from sym(fp) +0x0 via base s2 (sym(fp)), including `lw` at 0x100fbaf4, `lw` at 0x100fbc58, `lw` at 0x100fbd78.
  The `lw` at 0x100fbb0c loads 4 bytes from abs 0x102bd48c via base t9 (0x102c4340).
  The `lw` at 0x100fbb2c loads 4 bytes from abs 0x102bced4 via base a0 (0x102c4340).
  The `lw` at 0x100fbb3c loads 4 bytes from abs 0x102bcedc via base s6 (0x102c4340).
  The `lw` at 0x100fbb40 loads 4 bytes from abs 0x102bd388 via base t9 (0x102c4340).
  3 such accesses load 4 bytes from abs 0x10344a38 via base s6 (0x103439a0), including `lw` at 0x100fbb44, `lw` at 0x100fbb60, `lw` at 0x100fbd50.
  The `sw` at 0x100fbb58 stores 4 bytes to abs 0x10344a38 via base s6 (0x103439a0) with value [0x10344a38]+1.
  The `lw` at 0x100fbb70 loads 4 bytes from abs 0x102bd484 via base t9 (0x102c4340).
  8 such accesses load 4 bytes from abs 0x102bced4 via base a1 (0x102c4340), including `lw` at 0x100fbb7c, `lw` at 0x100fbba4, `lw` at 0x100fbc38.
  The `lw` at 0x100fbba0 loads 4 bytes from abs 0x102bd4ac via base t9 (0x102c4340).
  The `lw` at 0x100fbbcc loads 4 bytes from abs 0x102bdaf8 via base s0 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bd3f8 via base s4 (0x102c4340), including `lw` at 0x100fbbe8, `lw` at 0x100fbdcc.
  The `lw` at 0x100fbbf4 loads 4 bytes from abs 0x102bdbb8 via base s8 (0x102c4340).
  The `lw` at 0x100fbc2c loads 4 bytes from abs 0x102bd43c via base s1 (0x102c4340).
  The `lw` at 0x100fbc6c loads 4 bytes from abs 0x102bdb0c via base t9 (0x102c4340).
  The `lw` at 0x100fbce8 loads 4 bytes from abs 0x102bd40c via base t9 (0x102c4340).
  The `lw` at 0x100fbd04 loads 4 bytes from abs 0x102bdaf8 via base t9 (0x102c4340).
  The `lw` at 0x100fbd24 loads 4 bytes from abs 0x102bdb84 via base t9 (0x102c4340).
  The `lw` at 0x100fbd38 loads 4 bytes from abs 0x102bd420 via base t9 (0x102c4340).
  The `sw` at 0x100fbd54 stores 4 bytes to sym(fp) +0x0 via base s2 (sym(fp)) with value .
  The `sw` at 0x100fbd5c stores 4 bytes to abs 0x10344a38 via base s6 (0x103439a0) with value [0x10344a38]-1.
  The `lw` at 0x100fbdd0 loads 4 bytes from abs 0x102bd414 via base s0 (0x102c4340).
  The `jalr` at 0x100fbafc calls `strlen` with a0=0x1020c780, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100fbb18 calls `malloc` with a0=ret(strlen)+128, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fbb54 calls `getenv` with a0=0x101b3030, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fbb88 calls `sprintf` with a0=ret(malloc), a1=0x101b3040, a2=0x1020c780, a3=ret(getenv), a4=[0x10344a38]-1.
  The `jalr` at 0x100fbbb0 calls `fopen` with a0=ret(malloc), a1=0x101b3058, a2=(unknown), a3=(unknown).
  The `jal` at 0x100fbbe4 calls `DoSub [0x100fb3bc]` with a0=0x0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fbbfc calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fbc44 calls `strncmp` with a0=ret(GetNextString), a1=0x101b30c8, a2=0x2, a3=(unknown).
  The `jal` at 0x100fbc70 calls `stringContainsSpace [0x100fb574]` with a0=ret(GetNextString), a1=(unknown), a2=[sym(fp)], a3=(unknown).
  The `jalr` at 0x100fbc94 calls `fprintf` with a0=(unknown), a1=0x101b30c0, a2=ret(GetNextString), a3=(unknown).
  The `jal` at 0x100fbca0 calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fbcc8 calls `strncmp` with a0=ret(GetNextString), a1=0x101b30d0, a2=0x5, a3=(unknown).
  The `jalr` at 0x100fbcf4 calls `fclose` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fbd14 calls `DoSub [0x100fb3bc]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fbd28 calls `ParseFile [0x100fd9d4]` with a0=ret(malloc), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fbd40 calls `free` with a0=ret(malloc), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fbd98 calls `fprintf` with a0=(unknown), a1=0x101b3020, a2=ret(GetNextString), a3=(unknown).
  The `jalr` at 0x100fbde4 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b3060, a2=ret(malloc), a3=(unknown).
  The `jalr` at 0x100fbe00 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b3080, a2=(unknown), a3=(unknown).
  The `beq` at 0x100fbbbc goes to 0x100fbdb0 when v0(=ret(fopen)) == 0 and falls through when v0(=ret(fopen)) != 0.
  The `beq` at 0x100fbc1c goes to 0x100fbce0 when v0(=ret(GetNextString)) == 0 and falls through when v0(=ret(GetNextString)) != 0.
  The `beq` at 0x100fbc4c goes to 0x100fbda8 when v0(=ret(strncmp)) == 0 and falls through when v0(=ret(strncmp)) != 0.
  The `beq` at 0x100fbc54 goes to 0x100fbce0 when s3(?) == s5(?) and falls through when s3(?) != s5(?).
  The `beq` at 0x100fbc5c goes to 0x100fbca0 when a2(=[sym(fp)]) == 0 and falls through when a2(=[sym(fp)]) != 0.
  The `beq` at 0x100fbc78 goes to 0x100fbd78 when v0(=ret(stringContainsSpace)) == 0 and falls through when v0(=ret(stringContainsSpace)) != 0.
  The `beq` at 0x100fbca8 goes to 0x100fbce0 when v0(=ret(GetNextString)) == 0 and falls through when v0(=ret(GetNextString)) != 0.
  The `bne` at 0x100fbcd0 goes to 0x100fbc30 when v0(=ret(strncmp)) != 0 and falls through when v0(=ret(strncmp)) == 0.
  The `beq` at 0x100fbd7c goes to 0x100fbca0 when at(=[sym(fp)]) == 0 and falls through when at(=[sym(fp)]) != 0.
  The return at 0x100fbd70 has v0 = ret(free).
- `IfDef` in `usr/diags/IR/bin/irsaudit` at 0x100fbe10 (n32).
  It occupies 236 bytes.
  The `lw` at 0x100fbe30 loads 4 bytes from abs 0x102bdaf8 via base s0 (0x102c4340).
  The `lw` at 0x100fbe4c loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100fbe74 loads 4 bytes from abs 0x102bdbe0 via base s0 (0x102c4340).
  The `lw` at 0x100fbe7c loads 4 bytes from abs 0x102be678 via base a0 (0x102c4340).
  The `lw` at 0x100fbe8c loads 4 bytes from sym(DefineDList) +0x0 via base a0 (sym(DefineDList)).
  The `lw` at 0x100fbea8 loads 4 bytes from abs 0x102bdb18 via base t9 (0x102c4340).
  The `lw` at 0x100fbed0 loads 4 bytes from abs 0x102bdb14 via base t9 (0x102c4340).
  The `jal` at 0x100fbe3c calls `DoSub [0x100fb3bc]` with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fbe50 calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fbe60 calls `DoSub [0x100fb3bc]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fbe88 calls `DLGetNameIndex [0x100ff480]` with a0=[sym(DefineDList)], a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fbeac calls `ExecuteIf [0x100fbab0]` with a0=(unknown), a1=ret(DLGetNameIndex), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fbed4 calls `PassOnIf [0x100fb9c8]` with a0=(unknown), a1=ret(DLGetNameIndex), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fbeec calls `DLGetNameIndex [0x100ff480]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `bltz` at 0x100fbe90 goes to 0x100fbee4 when v0(=ret(DLGetNameIndex)) < 0 (signed) and falls through when v0(=ret(DLGetNameIndex)) >= 0 (signed).
  The `bltz` at 0x100fbe98 goes to 0x100fbecc when a1(=ret(DLGetNameIndex)) < 0 (signed) and falls through when a1(=ret(DLGetNameIndex)) >= 0 (signed).
  The return at 0x100fbec4 has v0 = ?.
- `IfNotDef` in `usr/diags/IR/bin/irsaudit` at 0x100fbefc (n32).
  It occupies 236 bytes.
  The `lw` at 0x100fbf1c loads 4 bytes from abs 0x102bdaf8 via base s0 (0x102c4340).
  The `lw` at 0x100fbf38 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100fbf60 loads 4 bytes from abs 0x102bdbe0 via base s0 (0x102c4340).
  The `lw` at 0x100fbf68 loads 4 bytes from abs 0x102be678 via base a0 (0x102c4340).
  The `lw` at 0x100fbf78 loads 4 bytes from sym(DefineDList) +0x0 via base a0 (sym(DefineDList)).
  The `lw` at 0x100fbf94 loads 4 bytes from abs 0x102bdb14 via base t9 (0x102c4340).
  The `lw` at 0x100fbfbc loads 4 bytes from abs 0x102bdb18 via base t9 (0x102c4340).
  The `jal` at 0x100fbf28 calls `DoSub [0x100fb3bc]` with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fbf3c calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fbf4c calls `DoSub [0x100fb3bc]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fbf74 calls `DLGetNameIndex [0x100ff480]` with a0=[sym(DefineDList)], a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fbf98 calls `PassOnIf [0x100fb9c8]` with a0=(unknown), a1=ret(DLGetNameIndex), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fbfc0 calls `ExecuteIf [0x100fbab0]` with a0=(unknown), a1=ret(DLGetNameIndex), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fbfd8 calls `DLGetNameIndex [0x100ff480]` with a0=0x0, a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `bltz` at 0x100fbf7c goes to 0x100fbfd0 when v0(=ret(DLGetNameIndex)) < 0 (signed) and falls through when v0(=ret(DLGetNameIndex)) >= 0 (signed).
  The `bltz` at 0x100fbf84 goes to 0x100fbfb8 when a1(=ret(DLGetNameIndex)) < 0 (signed) and falls through when a1(=ret(DLGetNameIndex)) >= 0 (signed).
  The return at 0x100fbfb0 has v0 = ?.
- `IfEqual` in `usr/diags/IR/bin/irsaudit` at 0x100fbfe8 (n32).
  It occupies 140 bytes.
  The `lw` at 0x100fc008 loads 4 bytes from abs 0x102bdbbc via base s0 (0x102c4340).
  The `lw` at 0x100fc034 loads 4 bytes from abs 0x102bdb18 via base t9 (0x102c4340).
  The `lw` at 0x100fc050 loads 4 bytes from abs 0x102bdb14 via base t9 (0x102c4340).
  The `jal` at 0x100fc014 calls `GetNextInteger [0x100feebc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fc020 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fc038 calls `ExecuteIf [0x100fbab0]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fc054 calls `PassOnIf [0x100fb9c8]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bne` at 0x100fc028 goes to 0x100fc048 when s8(=ret(GetNextInteger)) != v0(=ret(GetNextInteger)) and falls through when s8(=ret(GetNextInteger)) == v0(=ret(GetNextInteger)).
  The return at 0x100fc06c has v0 = ?.
- `IfNotEqual` in `usr/diags/IR/bin/irsaudit` at 0x100fc074 (n32).
  It occupies 140 bytes.
  The `lw` at 0x100fc094 loads 4 bytes from abs 0x102bdbbc via base s0 (0x102c4340).
  The `lw` at 0x100fc0c4 loads 4 bytes from abs 0x102bdb18 via base t9 (0x102c4340).
  The `lw` at 0x100fc0dc loads 4 bytes from abs 0x102bdb14 via base t9 (0x102c4340).
  The `jal` at 0x100fc0a0 calls `GetNextInteger [0x100feebc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fc0ac calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fc0c8 calls `ExecuteIf [0x100fbab0]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fc0e0 calls `PassOnIf [0x100fb9c8]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x100fc0b4 goes to 0x100fc0d8 when s8(=ret(GetNextInteger)) == v0(=ret(GetNextInteger)) and falls through when s8(=ret(GetNextInteger)) != v0(=ret(GetNextInteger)).
  The return at 0x100fc0f8 has v0 = ?.
- `IfGreaterThan` in `usr/diags/IR/bin/irsaudit` at 0x100fc100 (n32).
  It occupies 144 bytes.
  The `lw` at 0x100fc120 loads 4 bytes from abs 0x102bdbbc via base s0 (0x102c4340).
  The `lw` at 0x100fc150 loads 4 bytes from abs 0x102bdb18 via base t9 (0x102c4340).
  The `lw` at 0x100fc16c loads 4 bytes from abs 0x102bdb14 via base t9 (0x102c4340).
  The `jal` at 0x100fc12c calls `GetNextInteger [0x100feebc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fc138 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fc154 calls `ExecuteIf [0x100fbab0]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fc170 calls `PassOnIf [0x100fb9c8]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x100fc144 goes to 0x100fc164 when v0(=ret(GetNextInteger)) >= s8(=ret(GetNextInteger)) (signed) and falls through when v0(=ret(GetNextInteger)) < s8(=ret(GetNextInteger)) (signed).
  The return at 0x100fc188 has v0 = ?.
- `IfLessThan` in `usr/diags/IR/bin/irsaudit` at 0x100fc190 (n32).
  It occupies 144 bytes.
  The `lw` at 0x100fc1b0 loads 4 bytes from abs 0x102bdbbc via base s0 (0x102c4340).
  The `lw` at 0x100fc1e0 loads 4 bytes from abs 0x102bdb18 via base t9 (0x102c4340).
  The `lw` at 0x100fc1fc loads 4 bytes from abs 0x102bdb14 via base t9 (0x102c4340).
  The `jal` at 0x100fc1bc calls `GetNextInteger [0x100feebc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fc1c8 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fc1e4 calls `ExecuteIf [0x100fbab0]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fc200 calls `PassOnIf [0x100fb9c8]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x100fc1d4 goes to 0x100fc1f4 when s8(=ret(GetNextInteger)) >= v0(=ret(GetNextInteger)) (signed) and falls through when s8(=ret(GetNextInteger)) < v0(=ret(GetNextInteger)) (signed).
  The return at 0x100fc218 has v0 = ?.
- `IfGreaterThanOrEqual` in `usr/diags/IR/bin/irsaudit` at 0x100fc220 (n32).
  It occupies 144 bytes.
  The `lw` at 0x100fc240 loads 4 bytes from abs 0x102bdbbc via base s0 (0x102c4340).
  The `lw` at 0x100fc274 loads 4 bytes from abs 0x102bdb18 via base t9 (0x102c4340).
  The `lw` at 0x100fc28c loads 4 bytes from abs 0x102bdb14 via base t9 (0x102c4340).
  The `jal` at 0x100fc24c calls `GetNextInteger [0x100feebc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fc258 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fc278 calls `ExecuteIf [0x100fbab0]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fc290 calls `PassOnIf [0x100fb9c8]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bne` at 0x100fc264 goes to 0x100fc288 when s8(=ret(GetNextInteger)) < v0(=ret(GetNextInteger)) (signed) and falls through when s8(=ret(GetNextInteger)) >= v0(=ret(GetNextInteger)) (signed).
  The return at 0x100fc2a8 has v0 = ?.
- `IfLessThanOrEqual` in `usr/diags/IR/bin/irsaudit` at 0x100fc2b0 (n32).
  It occupies 144 bytes.
  The `lw` at 0x100fc2d0 loads 4 bytes from abs 0x102bdbbc via base s0 (0x102c4340).
  The `lw` at 0x100fc300 loads 4 bytes from abs 0x102bdb18 via base t9 (0x102c4340).
  The `lw` at 0x100fc31c loads 4 bytes from abs 0x102bdb14 via base t9 (0x102c4340).
  The `jal` at 0x100fc2dc calls `GetNextInteger [0x100feebc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fc2e8 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fc304 calls `ExecuteIf [0x100fbab0]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fc320 calls `PassOnIf [0x100fb9c8]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bne` at 0x100fc2f4 goes to 0x100fc314 when v0(=ret(GetNextInteger)) < s8(=ret(GetNextInteger)) (signed) and falls through when v0(=ret(GetNextInteger)) >= s8(=ret(GetNextInteger)) (signed).
  The return at 0x100fc338 has v0 = ?.
- `PrintDefine` in `usr/diags/IR/bin/irsaudit` at 0x100fc340 (n32).
  It occupies 292 bytes.
  The `lw` at 0x100fc360 loads 4 bytes from abs 0x102bdaf8 via base s1 (0x102c4340).
  The `lw` at 0x100fc37c loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100fc3ac loads 4 bytes from abs 0x102bdbe0 via base t9 (0x102c4340).
  The `lw` at 0x100fc3b0 loads 4 bytes from abs 0x102be678 via base s2 (0x102c4340).
  2 such accesses load 4 bytes from sym(DefineDList) +0x0 via base s2 (sym(DefineDList)), including `lw` at 0x100fc3bc, `lw` at 0x100fc3e8.
  The `lw` at 0x100fc3c8 loads 4 bytes from abs 0x102bd414 via base s1 (0x102c4340).
  The `lw` at 0x100fc3dc loads 4 bytes from abs 0x102bdbcc via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340), including `lw` at 0x100fc3fc, `lw` at 0x100fc444.
  2 such accesses load 4 bytes from abs 0x102bced4 via base a1 (0x102c4340), including `lw` at 0x100fc404, `lw` at 0x100fc448.
  The `jal` at 0x100fc36c calls `DoSub [0x100fb3bc]` with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fc380 calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fc394 calls `DoSub [0x100fb3bc]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fc3b8 calls `DLGetNameIndex [0x100ff480]` with a0=[sym(DefineDList)], a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fc3e4 calls `DLGetData [0x100ff180]` with a0=[sym(DefineDList)], a1=ret(DLGetNameIndex), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fc410 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b30d8, a2=ret(GetNextString), a3=ret(DLGetData).
  The `jalr` at 0x100fc454 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b30e8, a2=ret(GetNextString), a3=(unknown).
  The `bltz` at 0x100fc3cc goes to 0x100fc434 when v0(=ret(DLGetNameIndex)) < 0 (signed) and falls through when v0(=ret(DLGetNameIndex)) >= 0 (signed).
  The return at 0x100fc42c has v0 = ret(fprintf).
- `PrintDefineHex` in `usr/diags/IR/bin/irsaudit` at 0x100fc464 (n32).
  It occupies 312 bytes.
  The `lw` at 0x100fc484 loads 4 bytes from abs 0x102bdaf8 via base s1 (0x102c4340).
  The `lw` at 0x100fc4a0 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100fc4d0 loads 4 bytes from abs 0x102bdbe0 via base t9 (0x102c4340).
  The `lw` at 0x100fc4d4 loads 4 bytes from abs 0x102be678 via base s2 (0x102c4340).
  2 such accesses load 4 bytes from sym(DefineDList) +0x0 via base s2 (sym(DefineDList)), including `lw` at 0x100fc4e0, `lw` at 0x100fc50c.
  The `lw` at 0x100fc4ec loads 4 bytes from abs 0x102bd414 via base s1 (0x102c4340).
  The `lw` at 0x100fc500 loads 4 bytes from abs 0x102bdbcc via base t9 (0x102c4340).
  The `lw` at 0x100fc518 loads 4 bytes from abs 0x102bd438 via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340), including `lw` at 0x100fc534, `lw` at 0x100fc57c.
  2 such accesses load 4 bytes from abs 0x102bced4 via base a1 (0x102c4340), including `lw` at 0x100fc53c, `lw` at 0x100fc580.
  The `jal` at 0x100fc490 calls `DoSub [0x100fb3bc]` with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fc4a4 calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fc4b8 calls `DoSub [0x100fb3bc]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fc4dc calls `DLGetNameIndex [0x100ff480]` with a0=[sym(DefineDList)], a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fc508 calls `DLGetData [0x100ff180]` with a0=[sym(DefineDList)], a1=ret(DLGetNameIndex), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fc51c calls `atoi` with a0=ret(DLGetData), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fc548 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b3100, a2=ret(GetNextString), a3=ret(atoi).
  The `jalr` at 0x100fc58c calls `fprintf` with a0=sym(__iob)+32, a1=0x101b30e8, a2=ret(GetNextString), a3=(unknown).
  The `bltz` at 0x100fc4f0 goes to 0x100fc56c when v0(=ret(DLGetNameIndex)) < 0 (signed) and falls through when v0(=ret(DLGetNameIndex)) >= 0 (signed).
  The return at 0x100fc564 has v0 = ret(fprintf).
- `PrintAllDefines` in `usr/diags/IR/bin/irsaudit` at 0x100fc59c (n32).
  It occupies 288 bytes.
  The `lw` at 0x100fc5c8 loads 4 bytes from abs 0x102bdbc4 via base t9 (0x102c4340).
  The `lw` at 0x100fc5cc loads 4 bytes from abs 0x102be678 via base s0 (0x102c4340).
  3 such accesses load 4 bytes from sym(DefineDList) +0x0 via base s0 (sym(DefineDList)), including `lw` at 0x100fc5d8, `lw` at 0x100fc638, `lw` at 0x100fc64c.
  The `lw` at 0x100fc614 loads 4 bytes from abs 0x102bdbc8 via base s3 (0x102c4340).
  The `lw` at 0x100fc61c loads 4 bytes from abs 0x102bd414 via base s7 (0x102c4340).
  The `lw` at 0x100fc624 loads 4 bytes from abs 0x102bdbcc via base s2 (0x102c4340).
  The `lw` at 0x100fc62c loads 4 bytes from abs 0x102bd3f8 via base s4 (0x102c4340).
  The `lw` at 0x100fc668 loads 4 bytes from abs 0x102bced4 via base a1 (0x102c4340).
  The `jal` at 0x100fc5d4 calls `DLGetNum [0x100ff0fc]` with a0=[sym(DefineDList)], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fc63c calls `DLGetName [0x100ff12c]` with a0=[sym(DefineDList)], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fc650 calls `DLGetData [0x100ff180]` with a0=[sym(DefineDList)], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fc674 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b30d8, a2=ret(DLGetName), a3=ret(DLGetData).
  The `blez` at 0x100fc608 goes to 0x100fc68c when v0(=ret(DLGetNum)) <= 0 (signed) and falls through when v0(=ret(DLGetNum)) > 0 (signed).
  The `bne` at 0x100fc684 goes to 0x100fc638 when s1(?) < s6(=ret(DLGetNum)) (signed) and falls through when s1(?) >= s6(=ret(DLGetNum)) (signed).
  The return at 0x100fc6b4 has v0 = ?.
- `ParserDefine` in `usr/diags/IR/bin/irsaudit` at 0x100fc6bc (n32).
  It occupies 148 bytes.
  The `lw` at 0x100fc6e0 loads 4 bytes from abs 0x102bdaf8 via base s0 (0x102c4340).
  The `lw` at 0x100fc710 loads 4 bytes from abs 0x102bdbe8 via base t9 (0x102c4340).
  The `lw` at 0x100fc714 loads 4 bytes from abs 0x102be678 via base a0 (0x102c4340).
  The `lw` at 0x100fc724 loads 4 bytes from sym(DefineDList) +0x0 via base a0 (sym(DefineDList)).
  The `jal` at 0x100fc6f8 calls `DoSub [0x100fb3bc]` with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fc720 calls `DLNameData [0x100ff61c]` with a0=[sym(DefineDList)], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=(unknown).
  The `jal` at 0x100fc734 calls `DoSub [0x100fb3bc]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x100fc748 has v0 = ret(DoSub).
- `DefineData` in `usr/diags/IR/bin/irsaudit` at 0x100fc750 (n32).
  It occupies 172 bytes.
  The `lw` at 0x100fc770 loads 4 bytes from abs 0x102bdaf8 via base s0 (0x102c4340).
  The `lw` at 0x100fc790 loads 4 bytes from abs 0x102bdbb8 via base s1 (0x102c4340).
  The `lw` at 0x100fc7bc loads 4 bytes from abs 0x102bdbe8 via base t9 (0x102c4340).
  The `lw` at 0x100fc7c0 loads 4 bytes from abs 0x102be678 via base a0 (0x102c4340).
  The `lw` at 0x100fc7d4 loads 4 bytes from sym(DefineDList) +0x0 via base a0 (sym(DefineDList)).
  The `jal` at 0x100fc780 calls `DoSub [0x100fb3bc]` with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fc798 calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fc7a4 calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fc7d0 calls `DLNameData [0x100ff61c]` with a0=[sym(DefineDList)], a1=ret(GetNextString), a2=ret(GetNextString), a3=(unknown).
  The `jal` at 0x100fc7e0 calls `DoSub [0x100fb3bc]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x100fc7f4 has v0 = ret(DoSub).
- `mystrcmp` in `usr/diags/IR/bin/irsaudit` at 0x100fc7fc (n32).
  It occupies 196 bytes.
  2 such accesses load 4 bytes from abs 0x102bd474 via base t9 (0x102c4340), including `lw` at 0x100fc83c, `lw` at 0x100fc850.
  The `lw` at 0x100fc888 loads 4 bytes from abs 0x102bd43c via base t9 (0x102c4340).
  The `jalr` at 0x100fc840 calls `strlen` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100fc858 calls `strlen` with a0=a1 at entry (arg1), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fc890 calls `strncmp` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(unknown), a3=(unknown).
  The `beq` at 0x100fc81c goes to 0x100fc8b8 when a0 == a1 and falls through when a0 != a1.
  The `beq` at 0x100fc824 goes to 0x100fc878 when a0 == 0 and falls through when a0 != 0.
  The `beq` at 0x100fc82c goes to 0x100fc878 when a1 == 0 and falls through when a1 != 0.
  The `beq` at 0x100fc868 goes to 0x100fc880 when a0(?) >= v0(=ret(strlen)) (signed) and falls through when a0(?) < v0(=ret(strlen)) (signed).
  The return at 0x100fc8b0 has v0 = ?.
- `InitParser` in `usr/diags/IR/bin/irsaudit` at 0x100fc8c0 (n32).
  It occupies 1328 bytes.
  The `lw` at 0x100fc8e0 loads 4 bytes from abs 0x102bdbd8 via base s1 (0x102c4340).
  The `lw` at 0x100fc908 loads 4 bytes from abs 0x102be678 via base s0 (0x102c4340).
  The `sw` at 0x100fc918 stores 4 bytes to sym(DefineDList) +0x0 via base s0 (sym(DefineDList)) with value ret(DLNewDList).
  The `lw` at 0x100fc930 loads 4 bytes from abs 0x102bd420 via base s2 (0x102c4340).
  The `lw` at 0x100fc938 loads 4 bytes from abs 0x102bd498 via base s1 (0x102c4340).
  The `lw` at 0x100fc944 loads 4 bytes from abs 0x102bdb50 via base s3 (0x102c4340).
  The `lw` at 0x100fc950 loads 4 bytes from abs 0x102bdbd0 via base t9 (0x102c4340).
  The `lw` at 0x100fc958 loads 4 bytes from abs 0x102be674 via base t8 (0x102c4340).
  The `sw` at 0x100fc964 stores 4 bytes to sym(TokenDList) +0x0 via base t8 (sym(TokenDList)) with value ret(DLNewDList).
  The `lw` at 0x100fc978 loads 4 bytes from abs 0x102bdbd4 via base t9 (0x102c4340).
  The `lw` at 0x100fc98c loads 4 bytes from sym(DefineDList) +0x0 via base s0 (sym(DefineDList)).
  The `lw` at 0x100fc99c loads 4 bytes from abs 0x102bdb80 via base s0 (0x102c4340).
  30 such accesses load 4 bytes from abs 0x102bced4 via base a0 (0x102c4340), including `lw` at 0x100fc9ac, `lw` at 0x100fc9d8, `lw` at 0x100fc9fc.
  The `lw` at 0x100fc9bc loads 4 bytes from abs 0x102bdb08 via base a1 (0x102c4340).
  The `lw` at 0x100fc9e0 loads 4 bytes from abs 0x102bdb4c via base a1 (0x102c4340).
  The `lw` at 0x100fca04 loads 4 bytes from abs 0x102bdafc via base a1 (0x102c4340).
  The `lw` at 0x100fca28 loads 4 bytes from abs 0x102bdb00 via base a1 (0x102c4340).
  The `lw` at 0x100fca4c loads 4 bytes from abs 0x102bdb10 via base a1 (0x102c4340).
  The `lw` at 0x100fca70 loads 4 bytes from abs 0x102bdb40 via base a1 (0x102c4340).
  The `lw` at 0x100fca94 loads 4 bytes from abs 0x102bdb3c via base s1 (0x102c4340).
  The `lw` at 0x100fcadc loads 4 bytes from abs 0x102bdb44 via base a1 (0x102c4340).
  The `lw` at 0x100fcb00 loads 4 bytes from abs 0x102bdb58 via base a1 (0x102c4340).
  The `lw` at 0x100fcb24 loads 4 bytes from abs 0x102bdb54 via base a1 (0x102c4340).
  The `lw` at 0x100fcb48 loads 4 bytes from abs 0x102bdb70 via base a1 (0x102c4340).
  The `lw` at 0x100fcb6c loads 4 bytes from abs 0x102bdb6c via base a1 (0x102c4340).
  The `lw` at 0x100fcb90 loads 4 bytes from abs 0x102bdb74 via base a1 (0x102c4340).
  The `lw` at 0x100fcbb4 loads 4 bytes from abs 0x102bdb64 via base a1 (0x102c4340).
  The `lw` at 0x100fcbd8 loads 4 bytes from abs 0x102bdb60 via base a1 (0x102c4340).
  The `lw` at 0x100fcbfc loads 4 bytes from abs 0x102bdb5c via base a1 (0x102c4340).
  The `lw` at 0x100fcc20 loads 4 bytes from abs 0x102bdb9c via base a1 (0x102c4340).
  The `lw` at 0x100fcc44 loads 4 bytes from abs 0x102bdb1c via base a1 (0x102c4340).
  The `lw` at 0x100fcc68 loads 4 bytes from abs 0x102bdb20 via base a1 (0x102c4340).
  The `lw` at 0x100fcc8c loads 4 bytes from abs 0x102bdb24 via base a1 (0x102c4340).
  The `lw` at 0x100fccb0 loads 4 bytes from abs 0x102bdb28 via base a1 (0x102c4340).
  The `lw` at 0x100fccd4 loads 4 bytes from abs 0x102bdb2c via base a1 (0x102c4340).
  The `lw` at 0x100fccf8 loads 4 bytes from abs 0x102bdb30 via base a1 (0x102c4340).
  The `lw` at 0x100fcd1c loads 4 bytes from abs 0x102bdb34 via base a1 (0x102c4340).
  The `lw` at 0x100fcd40 loads 4 bytes from abs 0x102bdb38 via base a1 (0x102c4340).
  The `lw` at 0x100fcd64 loads 4 bytes from abs 0x102bdb68 via base a1 (0x102c4340).
  The `lw` at 0x100fcd88 loads 4 bytes from abs 0x102bdb7c via base a1 (0x102c4340).
  The `lw` at 0x100fcdac loads 4 bytes from abs 0x102bdb78 via base a1 (0x102c4340).
  The `lw` at 0x100fcdd0 loads 4 bytes from abs 0x102bdb04 via base a1 (0x102c4340).
  The `jal` at 0x100fc8f0 calls `DLNewDList [0x100ff338]` with a0=0x808, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fc914 calls `DLNewDList [0x100ff338]` with a0=0x808, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fc968 calls `DLNameType [0x100ff2b8]` with a0=ret(DLNewDList), a1=sym(mystrcmp), a2=sym(strdup), a3=sym(free).
  The `jal` at 0x100fc988 calls `DLDataType [0x100ff2f8]` with a0=[sym(DefineDList)], a1=sym(mystrcmp), a2=sym(strdup), a3=sym(free).
  The `jal` at 0x100fc9c0 calls `NewTokenType [0x100fd980]` with a0=0x101b3110, a1=sym(IncludeFile), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fc9e4 calls `NewTokenType [0x100fd980]` with a0=0x101b3118, a1=sym(DefineData), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fca08 calls `NewTokenType [0x100fd980]` with a0=0x101b3120, a1=sym(DoPrint), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fca2c calls `NewTokenType [0x100fd980]` with a0=0x101b3128, a1=sym(DoPrintHex), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fca50 calls `NewTokenType [0x100fd980]` with a0=0x101b30b8, a1=sym(Repeat), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fca74 calls `NewTokenType [0x100fd980]` with a0=0x101b3138, a1=sym(PrintDefineHex), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fca9c calls `NewTokenType [0x100fd980]` with a0=0x101b3148, a1=sym(PrintDefine), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcab8 calls `NewTokenType [0x100fd980]` with a0=0x101b3158, a1=sym(PrintDefine), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcae0 calls `NewTokenType [0x100fd980]` with a0=0x101b3168, a1=sym(PrintAllDefines), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcb04 calls `NewTokenType [0x100fd980]` with a0=0x101b3178, a1=sym(ParserMin), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcb28 calls `NewTokenType [0x100fd980]` with a0=0x101b317c, a1=sym(ParserMax), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcb4c calls `NewTokenType [0x100fd980]` with a0=0x101b3180, a1=sym(ParserAdd), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcb70 calls `NewTokenType [0x100fd980]` with a0=0x101b3184, a1=sym(ParserPower), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcb94 calls `NewTokenType [0x100fd980]` with a0=0x101b3188, a1=sym(ParserMod), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcbb8 calls `NewTokenType [0x100fd980]` with a0=0x101b3190, a1=sym(ParserRand), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcbdc calls `NewTokenType [0x100fd980]` with a0=0x101b3198, a1=sym(ParserSeed), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcc00 calls `NewTokenType [0x100fd980]` with a0=0x101b31a0, a1=sym(SetFromEnv), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcc24 calls `NewTokenType [0x100fd980]` with a0=0x101b31b0, a1=sym(AssignElement), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcc48 calls `NewTokenType [0x100fd980]` with a0=0x101b31c0, a1=sym(IfDef), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcc6c calls `NewTokenType [0x100fd980]` with a0=0x101b31c8, a1=sym(IfNotDef), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcc90 calls `NewTokenType [0x100fd980]` with a0=0x101b31d0, a1=sym(IfEqual), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fccb4 calls `NewTokenType [0x100fd980]` with a0=0x101b31d8, a1=sym(IfNotEqual), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fccd8 calls `NewTokenType [0x100fd980]` with a0=0x101b31e0, a1=sym(IfGreaterThan), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fccfc calls `NewTokenType [0x100fd980]` with a0=0x101b31e4, a1=sym(IfLessThan), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcd20 calls `NewTokenType [0x100fd980]` with a0=0x101b31e8, a1=sym(IfGreaterThanOrEqual), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcd44 calls `NewTokenType [0x100fd980]` with a0=0x101b31f0, a1=sym(IfLessThanOrEqual), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcd68 calls `NewTokenType [0x100fd980]` with a0=0x101b31f8, a1=sym(ParserSubtract), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcd8c calls `NewTokenType [0x100fd980]` with a0=0x101b3208, a1=sym(ParserMultiply), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcdb0 calls `NewTokenType [0x100fd980]` with a0=0x101b3218, a1=sym(ParserDivide), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcdd4 calls `NewTokenType [0x100fd980]` with a0=0x101b3220, a1=sym(Debug), a2=(unknown), a3=(unknown).
  The return at 0x100fcde8 has v0 = ret(NewTokenType).
- `ParserMax` in `usr/diags/IR/bin/irsaudit` at 0x100fcdf0 (n32).
  It occupies 288 bytes.
  The `lw` at 0x100fce10 loads 4 bytes from abs 0x102bdbc0 via base s0 (0x102c4340).
  The `lw` at 0x100fce3c loads 4 bytes from abs 0x102bd48c via base t9 (0x102c4340).
  The `lw` at 0x100fce70 loads 4 bytes from abs 0x102bd484 via base t9 (0x102c4340).
  The `lw` at 0x100fce78 loads 4 bytes from abs 0x102bced4 via base a1 (0x102c4340).
  The `lw` at 0x100fce9c loads 4 bytes from abs 0x102bdaf8 via base s1 (0x102c4340).
  The `lw` at 0x100fceb8 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100fced4 loads 4 bytes from abs 0x102bdbe8 via base t9 (0x102c4340).
  The `lw` at 0x100fced8 loads 4 bytes from abs 0x102be678 via base a0 (0x102c4340).
  The `lw` at 0x100fcee8 loads 4 bytes from sym(DefineDList) +0x0 via base a0 (sym(DefineDList)).
  The `jal` at 0x100fce1c calls `GetNextFloat [0x100fefdc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fce2c calls `GetNextFloat [0x100fefdc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fce44 calls `malloc` with a0=0x32, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fce8c calls `sprintf` with a0=ret(malloc), a1=0x101b3228, a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcea8 calls `DoSub [0x100fb3bc]` with a0=0x0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcebc calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcee4 calls `DLNameData [0x100ff61c]` with a0=[sym(DefineDList)], a1=ret(GetNextString), a2=ret(malloc), a3=(unknown).
  The `jal` at 0x100fcef4 calls `DoSub [0x100fb3bc]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `bc1f` at 0x100fce54 goes to 0x100fce60 when not (f22(=ret(GetNextFloat)) < f20(=ret(GetNextFloat)) (c.lt.s at 0x100fce4c)) and falls through when f22(=ret(GetNextFloat)) < f20(=ret(GetNextFloat)) (c.lt.s at 0x100fce4c).
  The return at 0x100fcf08 has v0 = ret(DoSub).
- `ParserMin` in `usr/diags/IR/bin/irsaudit` at 0x100fcf10 (n32).
  It occupies 288 bytes.
  The `lw` at 0x100fcf30 loads 4 bytes from abs 0x102bdbc0 via base s0 (0x102c4340).
  The `lw` at 0x100fcf5c loads 4 bytes from abs 0x102bd48c via base t9 (0x102c4340).
  The `lw` at 0x100fcf90 loads 4 bytes from abs 0x102bd484 via base t9 (0x102c4340).
  The `lw` at 0x100fcf98 loads 4 bytes from abs 0x102bced4 via base a1 (0x102c4340).
  The `lw` at 0x100fcfbc loads 4 bytes from abs 0x102bdaf8 via base s1 (0x102c4340).
  The `lw` at 0x100fcfd8 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100fcff4 loads 4 bytes from abs 0x102bdbe8 via base t9 (0x102c4340).
  The `lw` at 0x100fcff8 loads 4 bytes from abs 0x102be678 via base a0 (0x102c4340).
  The `lw` at 0x100fd008 loads 4 bytes from sym(DefineDList) +0x0 via base a0 (sym(DefineDList)).
  The `jal` at 0x100fcf3c calls `GetNextFloat [0x100fefdc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fcf4c calls `GetNextFloat [0x100fefdc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fcf64 calls `malloc` with a0=0x32, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fcfac calls `sprintf` with a0=ret(malloc), a1=0x101b3228, a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcfc8 calls `DoSub [0x100fb3bc]` with a0=0x0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fcfdc calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd004 calls `DLNameData [0x100ff61c]` with a0=[sym(DefineDList)], a1=ret(GetNextString), a2=ret(malloc), a3=(unknown).
  The `jal` at 0x100fd014 calls `DoSub [0x100fb3bc]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `bc1t` at 0x100fcf74 goes to 0x100fcf80 when f22(=ret(GetNextFloat)) < f20(=ret(GetNextFloat)) (c.lt.s at 0x100fcf6c) and falls through when not (f22(=ret(GetNextFloat)) < f20(=ret(GetNextFloat)) (c.lt.s at 0x100fcf6c)).
  The return at 0x100fd028 has v0 = ret(DoSub).
- `SetFromEnv` in `usr/diags/IR/bin/irsaudit` at 0x100fd030 (n32).
  It occupies 204 bytes.
  The `lw` at 0x100fd050 loads 4 bytes from abs 0x102bdbb8 via base s0 (0x102c4340).
  The `lw` at 0x100fd078 loads 4 bytes from abs 0x102bd388 via base t9 (0x102c4340).
  The `lw` at 0x100fd090 loads 4 bytes from abs 0x102bdaf8 via base s1 (0x102c4340).
  The `lw` at 0x100fd0dc loads 4 bytes from abs 0x102bdbe8 via base t9 (0x102c4340).
  The `lw` at 0x100fd0e0 loads 4 bytes from abs 0x102be678 via base a0 (0x102c4340).
  The `lw` at 0x100fd0f0 loads 4 bytes from sym(DefineDList) +0x0 via base a0 (sym(DefineDList)).
  The `jal` at 0x100fd05c calls `GetNextString [0x100fee80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fd068 calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fd080 calls `getenv` with a0=ret(GetNextString), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd09c calls `DoSub [0x100fb3bc]` with a0=0x0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd0b0 calls `DoSub [0x100fb3bc]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd0ec calls `DLNameData [0x100ff61c]` with a0=[sym(DefineDList)], a1=(unknown), a2=ret(getenv), a3=(unknown).
  The `bne` at 0x100fd0a4 goes to 0x100fd0cc when s0(=ret(getenv)) != 0 and falls through when s0(=ret(getenv)) == 0.
  The return at 0x100fd0c4 has v0 = ret(DoSub).
- `ParserSeed` in `usr/diags/IR/bin/irsaudit` at 0x100fd0fc (n32).
  It occupies 80 bytes.
  The `lw` at 0x100fd11c loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `lw` at 0x100fd130 loads 4 bytes from abs 0x102bd3a0 via base t9 (0x102c4340).
  The `jal` at 0x100fd120 calls `GetNextInteger [0x100feebc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100fd134 calls `srandom` with a0=ret(GetNextInteger), a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x100fd144 has v0 = ret(srandom).
- `ParserRand` in `usr/diags/IR/bin/irsaudit` at 0x100fd14c (n32).
  It occupies 272 bytes.
  The `lw` at 0x100fd16c loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `lw` at 0x100fd180 loads 4 bytes from abs 0x102bd48c via base t9 (0x102c4340).
  The `lw` at 0x100fd1a8 loads 4 bytes from abs 0x102bd3a4 via base t9 (0x102c4340).
  The `lw` at 0x100fd1c8 loads 4 bytes from abs 0x102bd484 via base t9 (0x102c4340).
  The `lw` at 0x100fd1d0 loads 4 bytes from abs 0x102bced4 via base a1 (0x102c4340).
  The `lw` at 0x100fd1ec loads 4 bytes from abs 0x102bdaf8 via base s1 (0x102c4340).
  The `lw` at 0x100fd204 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100fd220 loads 4 bytes from abs 0x102bdbe8 via base t9 (0x102c4340).
  The `lw` at 0x100fd224 loads 4 bytes from abs 0x102be678 via base a0 (0x102c4340).
  The `lw` at 0x100fd234 loads 4 bytes from sym(DefineDList) +0x0 via base a0 (sym(DefineDList)).
  The `jal` at 0x100fd170 calls `GetNextInteger [0x100feebc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100fd18c calls `malloc` with a0=0x32, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fd1ac calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fd1dc calls `sprintf` with a0=ret(malloc), a1=0x101b3230, a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd1f4 calls `DoSub [0x100fb3bc]` with a0=0x0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd208 calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd230 calls `DLNameData [0x100ff61c]` with a0=[sym(DefineDList)], a1=ret(GetNextString), a2=ret(malloc), a3=(unknown).
  The `jal` at 0x100fd240 calls `DoSub [0x100fb3bc]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `bgtz` at 0x100fd194 goes to 0x100fd1a0 when s1(=ret(GetNextInteger)) > 0 (signed) and falls through when s1(=ret(GetNextInteger)) <= 0 (signed).
  The return at 0x100fd254 has v0 = ret(DoSub).
- `ParserSubtract` in `usr/diags/IR/bin/irsaudit` at 0x100fd25c (n32).
  It occupies 272 bytes.
  The `lw` at 0x100fd27c loads 4 bytes from abs 0x102bdbc0 via base s0 (0x102c4340).
  The `lw` at 0x100fd2a4 loads 4 bytes from abs 0x102bd48c via base t9 (0x102c4340).
  The `lw` at 0x100fd2d0 loads 4 bytes from abs 0x102bd484 via base t9 (0x102c4340).
  The `lw` at 0x100fd2d4 loads 4 bytes from abs 0x102bced4 via base a1 (0x102c4340).
  The `lw` at 0x100fd2f8 loads 4 bytes from abs 0x102bdaf8 via base s0 (0x102c4340).
  The `lw` at 0x100fd314 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100fd330 loads 4 bytes from abs 0x102bdbe8 via base t9 (0x102c4340).
  The `lw` at 0x100fd334 loads 4 bytes from abs 0x102be678 via base a0 (0x102c4340).
  The `lw` at 0x100fd344 loads 4 bytes from sym(DefineDList) +0x0 via base a0 (sym(DefineDList)).
  The `jal` at 0x100fd288 calls `GetNextFloat [0x100fefdc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fd294 calls `GetNextFloat [0x100fefdc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fd2b0 calls `malloc` with a0=0x32, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fd2e8 calls `sprintf` with a0=ret(malloc), a1=0x101b3228, a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd304 calls `DoSub [0x100fb3bc]` with a0=0x0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd318 calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd340 calls `DLNameData [0x100ff61c]` with a0=[sym(DefineDList)], a1=ret(GetNextString), a2=ret(malloc), a3=(unknown).
  The `jal` at 0x100fd350 calls `DoSub [0x100fb3bc]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x100fd364 has v0 = ret(DoSub).
- `ParserPower` in `usr/diags/IR/bin/irsaudit` at 0x100fd36c (n32).
  It occupies 372 bytes.
  The `lw` at 0x100fd38c loads 4 bytes from abs 0x102bd48c via base t9 (0x102c4340).
  The `lw` at 0x100fd3a8 loads 4 bytes from abs 0x102bdbc0 via base s1 (0x102c4340).
  The `lw` at 0x100fd3d4 loads 4 bytes from abs 0x102bd4f8 via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bced4 via base a1 (0x102c4340), including `lw` at 0x100fd3fc, `lw` at 0x100fd44c.
  The `lw` at 0x100fd40c loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  The `lw` at 0x100fd418 loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `lw` at 0x100fd448 loads 4 bytes from abs 0x102bd484 via base t9 (0x102c4340).
  The `lw` at 0x100fd470 loads 4 bytes from abs 0x102bdaf8 via base s1 (0x102c4340).
  The `lw` at 0x100fd488 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100fd4a4 loads 4 bytes from abs 0x102bdbe8 via base t9 (0x102c4340).
  The `lw` at 0x100fd4a8 loads 4 bytes from abs 0x102be678 via base a0 (0x102c4340).
  The `lw` at 0x100fd4b8 loads 4 bytes from sym(DefineDList) +0x0 via base a0 (sym(DefineDList)).
  The `jalr` at 0x100fd398 calls `malloc` with a0=0x32, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fd3b4 calls `GetNextFloat [0x100fefdc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd3c4 calls `GetNextFloat [0x100fefdc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fd3e0 calls `powf` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown); fp f12=ret(GetNextFloat), f13=ret(GetNextFloat).
  The `jalr` at 0x100fd42c calls `fprintf` with a0=sym(__iob)+32, a1=0x101b3238, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fd460 calls `sprintf` with a0=ret(malloc), a1=0x101b3228, a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd478 calls `DoSub [0x100fb3bc]` with a0=0x0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd48c calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd4b4 calls `DLNameData [0x100ff61c]` with a0=[sym(DefineDList)], a1=ret(GetNextString), a2=ret(malloc), a3=(unknown).
  The `jal` at 0x100fd4c4 calls `DoSub [0x100fb3bc]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x100fd4d8 has v0 = ret(DoSub).
- `ParserAdd` in `usr/diags/IR/bin/irsaudit` at 0x100fd4e0 (n32).
  It occupies 272 bytes.
  The `lw` at 0x100fd500 loads 4 bytes from abs 0x102bdbc0 via base s0 (0x102c4340).
  The `lw` at 0x100fd528 loads 4 bytes from abs 0x102bd48c via base t9 (0x102c4340).
  The `lw` at 0x100fd554 loads 4 bytes from abs 0x102bd484 via base t9 (0x102c4340).
  The `lw` at 0x100fd558 loads 4 bytes from abs 0x102bced4 via base a1 (0x102c4340).
  The `lw` at 0x100fd57c loads 4 bytes from abs 0x102bdaf8 via base s0 (0x102c4340).
  The `lw` at 0x100fd598 loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100fd5b4 loads 4 bytes from abs 0x102bdbe8 via base t9 (0x102c4340).
  The `lw` at 0x100fd5b8 loads 4 bytes from abs 0x102be678 via base a0 (0x102c4340).
  The `lw` at 0x100fd5c8 loads 4 bytes from sym(DefineDList) +0x0 via base a0 (sym(DefineDList)).
  The `jal` at 0x100fd50c calls `GetNextFloat [0x100fefdc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fd518 calls `GetNextFloat [0x100fefdc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fd534 calls `malloc` with a0=0x32, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fd56c calls `sprintf` with a0=ret(malloc), a1=0x101b3228, a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd588 calls `DoSub [0x100fb3bc]` with a0=0x0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd59c calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd5c4 calls `DLNameData [0x100ff61c]` with a0=[sym(DefineDList)], a1=ret(GetNextString), a2=ret(malloc), a3=(unknown).
  The `jal` at 0x100fd5d4 calls `DoSub [0x100fb3bc]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x100fd5e8 has v0 = ret(DoSub).
- `ParserMod` in `usr/diags/IR/bin/irsaudit` at 0x100fd5f0 (n32).
  It occupies 292 bytes.
  The `lw` at 0x100fd610 loads 4 bytes from abs 0x102bdbc0 via base s0 (0x102c4340).
  The `lw` at 0x100fd638 loads 4 bytes from abs 0x102bd48c via base t9 (0x102c4340).
  The `lw` at 0x100fd674 loads 4 bytes from abs 0x102bced4 via base a1 (0x102c4340).
  The `lw` at 0x100fd67c loads 4 bytes from abs 0x102bd484 via base t9 (0x102c4340).
  The `lw` at 0x100fd6a0 loads 4 bytes from abs 0x102bdaf8 via base s0 (0x102c4340).
  The `lw` at 0x100fd6bc loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100fd6d8 loads 4 bytes from abs 0x102bdbe8 via base t9 (0x102c4340).
  The `lw` at 0x100fd6dc loads 4 bytes from abs 0x102be678 via base a0 (0x102c4340).
  The `lw` at 0x100fd6ec loads 4 bytes from sym(DefineDList) +0x0 via base a0 (sym(DefineDList)).
  The `jal` at 0x100fd61c calls `GetNextFloat [0x100fefdc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fd628 calls `GetNextFloat [0x100fefdc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fd644 calls `malloc` with a0=0x32, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fd690 calls `sprintf` with a0=ret(malloc), a1=0x101b3230, a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd6ac calls `DoSub [0x100fb3bc]` with a0=0x0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd6c0 calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd6e8 calls `DLNameData [0x100ff61c]` with a0=[sym(DefineDList)], a1=ret(GetNextString), a2=ret(malloc), a3=(unknown).
  The `jal` at 0x100fd6f8 calls `DoSub [0x100fb3bc]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x100fd70c has v0 = ret(DoSub).
- `ParserDivide` in `usr/diags/IR/bin/irsaudit` at 0x100fd714 (n32).
  It occupies 272 bytes.
  The `lw` at 0x100fd734 loads 4 bytes from abs 0x102bdbc0 via base s0 (0x102c4340).
  The `lw` at 0x100fd75c loads 4 bytes from abs 0x102bd48c via base t9 (0x102c4340).
  The `lw` at 0x100fd788 loads 4 bytes from abs 0x102bd484 via base t9 (0x102c4340).
  The `lw` at 0x100fd78c loads 4 bytes from abs 0x102bced4 via base a1 (0x102c4340).
  The `lw` at 0x100fd7b0 loads 4 bytes from abs 0x102bdaf8 via base s0 (0x102c4340).
  The `lw` at 0x100fd7cc loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100fd7e8 loads 4 bytes from abs 0x102bdbe8 via base t9 (0x102c4340).
  The `lw` at 0x100fd7ec loads 4 bytes from abs 0x102be678 via base a0 (0x102c4340).
  The `lw` at 0x100fd7fc loads 4 bytes from sym(DefineDList) +0x0 via base a0 (sym(DefineDList)).
  The `jal` at 0x100fd740 calls `GetNextFloat [0x100fefdc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fd74c calls `GetNextFloat [0x100fefdc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fd768 calls `malloc` with a0=0x32, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fd7a0 calls `sprintf` with a0=ret(malloc), a1=0x101b3228, a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd7bc calls `DoSub [0x100fb3bc]` with a0=0x0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd7d0 calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd7f8 calls `DLNameData [0x100ff61c]` with a0=[sym(DefineDList)], a1=ret(GetNextString), a2=ret(malloc), a3=(unknown).
  The `jal` at 0x100fd808 calls `DoSub [0x100fb3bc]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x100fd81c has v0 = ret(DoSub).
- `ParserMultiply` in `usr/diags/IR/bin/irsaudit` at 0x100fd824 (n32).
  It occupies 272 bytes.
  The `lw` at 0x100fd844 loads 4 bytes from abs 0x102bdbc0 via base s0 (0x102c4340).
  The `lw` at 0x100fd86c loads 4 bytes from abs 0x102bd48c via base t9 (0x102c4340).
  The `lw` at 0x100fd898 loads 4 bytes from abs 0x102bd484 via base t9 (0x102c4340).
  The `lw` at 0x100fd89c loads 4 bytes from abs 0x102bced4 via base a1 (0x102c4340).
  The `lw` at 0x100fd8c0 loads 4 bytes from abs 0x102bdaf8 via base s0 (0x102c4340).
  The `lw` at 0x100fd8dc loads 4 bytes from abs 0x102bdbb8 via base t9 (0x102c4340).
  The `lw` at 0x100fd8f8 loads 4 bytes from abs 0x102bdbe8 via base t9 (0x102c4340).
  The `lw` at 0x100fd8fc loads 4 bytes from abs 0x102be678 via base a0 (0x102c4340).
  The `lw` at 0x100fd90c loads 4 bytes from sym(DefineDList) +0x0 via base a0 (sym(DefineDList)).
  The `jal` at 0x100fd850 calls `GetNextFloat [0x100fefdc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fd85c calls `GetNextFloat [0x100fefdc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fd878 calls `malloc` with a0=0x32, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fd8b0 calls `sprintf` with a0=ret(malloc), a1=0x101b3228, a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd8cc calls `DoSub [0x100fb3bc]` with a0=0x0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd8e0 calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fd908 calls `DLNameData [0x100ff61c]` with a0=[sym(DefineDList)], a1=ret(GetNextString), a2=ret(malloc), a3=(unknown).
  The `jal` at 0x100fd918 calls `DoSub [0x100fb3bc]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x100fd92c has v0 = ret(DoSub).
- `ParseFile` in `usr/diags/IR/bin/irsaudit` at 0x100fd9d4 (n32).
  It occupies 292 bytes.
  The `lw` at 0x100fd9f4 loads 4 bytes from abs 0x102bdb88 via base t9 (0x102c4340).
  The `lw` at 0x100fda18 loads 4 bytes from abs 0x102bdbb4 via base s0 (0x102c4340).
  The `lw` at 0x100fda5c loads 4 bytes from abs 0x102bdbcc via base t9 (0x102c4340).
  The `lw` at 0x100fda60 loads 4 bytes from abs 0x102be674 via base a0 (0x102c4340).
  The `lw` at 0x100fda68 loads 4 bytes from sym(TokenDList) +0x0 via base a0 (sym(TokenDList)).
  The `lw` at 0x100fda98 loads 4 bytes from abs 0x102bd40c via base t9 (0x102c4340).
  The `lw` at 0x100fda9c loads 4 bytes from abs 0x102be668 via base a0 (0x102c4340).
  The `lw` at 0x100fdaa8 loads 4 bytes from sym(fp) +0x0 via base a0 (sym(fp)).
  The `lw` at 0x100fdacc loads 4 bytes from abs 0x102bced4 via base a1 (0x102c4340).
  The `lw` at 0x100fdad8 loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  The `lw` at 0x100fdadc loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `jal` at 0x100fd9fc calls `SetInputFile [0x100fdb44]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fda20 calls `GetNextToken [0x100fee04]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fda3c calls `GetNextToken [0x100fee04]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fda64 calls `DLGetData [0x100ff180]` with a0=[sym(TokenDList)], a1=ret(GetNextToken), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fda74 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fdaa4 calls `fclose` with a0=[sym(fp)], a1=ret(GetNextToken), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fdae8 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b3250, a2=a0 at entry (arg0), a3=(unknown).
  The `beq` at 0x100fda08 goes to 0x100fdabc when v0(=ret(SetInputFile)) == s1(=-0x1) and falls through when v0(=ret(SetInputFile)) != s1(=-0x1).
  The `beq` at 0x100fda28 goes to 0x100fda84 when v0(=ret(GetNextToken)) == s1(=-0x1) and falls through when v0(=ret(GetNextToken)) != s1(=-0x1).
  The `beq` at 0x100fda44 goes to 0x100fda84 when v0(=ret(GetNextToken)) == s1(=-0x1) and falls through when v0(=ret(GetNextToken)) != s1(=-0x1).
  The `beq` at 0x100fda6c goes to 0x100fda38 when v0(=ret(DLGetData)) == 0 and falls through when v0(=ret(DLGetData)) != 0.
  The return at 0x100fdab4 has v0 = ret(fclose).
- `SetInputFile` in `usr/diags/IR/bin/irsaudit` at 0x100fdb44 (n32).
  It occupies 224 bytes.
  The `lw` at 0x100fdb74 loads 4 bytes from abs 0x102be668 via base a0 (0x102c4340).
  The `lw` at 0x100fdb78 loads 4 bytes from abs 0x102bd414 via base v1 (0x102c4340).
  The `sw` at 0x100fdb7c stores 4 bytes to sym(fp) +0x0 via base a0 (sym(fp)) with value sym(__iob).
  The `lw` at 0x100fdba4 loads 4 bytes from abs 0x102bd4ac via base t9 (0x102c4340).
  The `lw` at 0x100fdba8 loads 4 bytes from abs 0x102bced4 via base a1 (0x102c4340).
  The `lw` at 0x100fdbc0 loads 4 bytes from abs 0x102be668 via base ra (0x102c4340).
  The `sw` at 0x100fdbc8 stores 4 bytes to sym(fp) +0x0 via base ra (sym(fp)) with value ret(fopen).
  The `lw` at 0x100fdbd4 loads 4 bytes from abs 0x102bd498 via base t9 (0x102c4340).
  The `lw` at 0x100fdc00 loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `lw` at 0x100fdc04 loads 4 bytes from abs 0x102be668 via base a1 (0x102c4340).
  The `lw` at 0x100fdc08 loads 4 bytes from abs 0x102be670 via base v1 (0x102c4340).
  The `sw` at 0x100fdc14 stores 4 bytes to sym(fp) +0x0 via base a1 (sym(fp)) with value sym(__iob).
  The `sw` at 0x100fdc18 stores 4 bytes to sym(FileName) +0x0 via base v1 (sym(FileName)) with value ret(strdup).
  The `jalr` at 0x100fdbb0 calls `fopen` with a0=a0 at entry (arg0), a1=0x101b3280, a2=0x0, a3=0x0.
  The `jalr` at 0x100fdbd8 calls `strdup` with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bne` at 0x100fdb64 goes to 0x100fdb94 when a0 != 0 and falls through when a0 == 0.
  The `bne` at 0x100fdbc4 goes to 0x100fdb80 when v0(=ret(fopen)) != 0 and falls through when v0(=ret(fopen)) == 0.
  The return at 0x100fdb8c has v0 = 0x0.
  The return at 0x100fdc1c has v0 = -0x1.
- `getLine` in `usr/diags/IR/bin/irsaudit` at 0x100fdc24 (n32).
  It occupies 124 bytes.
  The `lw` at 0x100fdc50 loads 4 bytes from abs 0x102bd3ec via base t9 (0x102c4340).
  The `lw` at 0x100fdc58 loads 4 bytes from abs 0x102be668 via base a2 (0x102c4340).
  The `lw` at 0x100fdc5c loads 4 bytes from abs 0x102be660 via base a0 (0x102c4340).
  The `lw` at 0x100fdc68 loads 4 bytes from sym(fp) +0x0 via base a2 (sym(fp)).
  The `lw` at 0x100fdc94 loads 4 bytes from abs 0x102be660 via base v0 (0x102c4340).
  The `jalr` at 0x100fdc64 calls `fgets` with a0=sym(lineBuf), a1=0x1000, a2=[sym(fp)], a3=a3 at entry (arg3).
  The `bne` at 0x100fdc6c goes to 0x100fdc88 when v0(=ret(fgets)) != 0 and falls through when v0(=ret(fgets)) == 0.
  The return at 0x100fdc80 has v0 = 0x0.
  The return at 0x100fdc98 has v0 = sym(lineBuf).
- `getNextBuffer` in `usr/diags/IR/bin/irsaudit` at 0x100fdca0 (n32).
  It occupies 216 bytes.
  The `lw` at 0x100fdcc0 loads 4 bytes from abs 0x102be334 via base s3 (0x102c4340).
  2 such accesses load 4 bytes from sym(cBuffer) +0x0 via base s3 (sym(cBuffer)), including `lw` at 0x100fdcc8, `lw` at 0x100fdd74.
  The `lw` at 0x100fdd10 loads 4 bytes from abs 0x102be664 via base v0 (0x102c4340).
  The `sw` at 0x100fdd18 stores 4 bytes to sym(cBuffer) +0x0 via base s3 (sym(cBuffer)) with value .
  The `lw` at 0x100fdd28 loads 4 bytes from ? (base unknown) via base v0 (?).
  The `lw` at 0x100fdd44 loads 4 bytes from abs 0x102be664 via base s1 (0x102c4340).
  The `lw` at 0x100fdd4c loads 4 bytes from abs 0x102bd48c via base s0 (0x102c4340).
  The `sw` at 0x100fdd6c stores 4 bytes to ? (base unknown) via base s1 (?) with value ret(malloc).
  The `jalr` at 0x100fdd54 calls `malloc` with a0=0x1000, a1=(unknown), a2=(unknown), a3=(unknown).
  The `bltz` at 0x100fdcd4 goes to 0x100fdd34 when a2(=[sym(cBuffer)]) < 0 (signed) and falls through when a2(=[sym(cBuffer)]) >= 0 (signed).
  The `bne` at 0x100fdd68 goes to 0x100fdd50 when s2(?) < 0x20 (signed) and falls through when s2(?) >= 0x20 (signed).
  The return at 0x100fdd2c has v0 = ?.
- `findCharacterInString` in `usr/diags/IR/bin/irsaudit` at 0x100fdd78 (n32).
  It occupies 224 bytes.
  The `lw` at 0x100fddb4 loads 4 bytes from abs 0x102bd474 via base t9 (0x102c4340).
  The `lw` at 0x100fdddc loads 4 bytes from abs 0x102bd4a4 via base a7 (0x102c4340).
  The `lw` at 0x100fddec loads 4 bytes from sym(__libc_attr) +0x0 via base a7 (sym(__libc_attr)).
  The `lbu` at 0x100fde10 loads 1 bytes from ? (base unknown) via base a1 (?).
  The `lw` at 0x100fde1c loads 4 bytes from ? (base unknown) via base t1 (?).
  The `jalr` at 0x100fddb8 calls `strlen` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` at 0x100fdda4 goes to 0x100fde34 when a1 == 0 and falls through when a1 != 0.
  The `blez` at 0x100fddcc goes to 0x100fde34 when v0(=ret(strlen)) <= 0 (signed) and falls through when v0(=ret(strlen)) > 0 (signed).
  The `beq` at 0x100fddf0 goes to 0x100fde50 when s1(=a0) == a5(?) and falls through when s1(=a0) != a5(?).
  The `beq` at 0x100fde04 goes to 0x100fde34 when v0(?) >= a2(=ret(strlen)) (signed) and falls through when v0(?) < a2(=ret(strlen)) (signed).
  The `beq` at 0x100fde0c goes to 0x100fddf0 when s0(=a2) == 0 and falls through when s0(=a2) != 0.
  The `beq` at 0x100fde24 goes to 0x100fddf0 when (a6(=0xffffffff80000008) & t1(?)) == 0 and falls through when (a6(=0xffffffff80000008) & t1(?)) != 0.
  The return at 0x100fde48 has v0 = ?.
- `findQuotedStringLength` in `usr/diags/IR/bin/irsaudit` at 0x100fde58 (n32).
  It occupies 236 bytes.
  The `lw` at 0x100fde80 loads 4 bytes from abs 0x102bd474 via base t9 (0x102c4340).
  The `lw` at 0x100fdeac loads 4 bytes from abs 0x102bd4a4 via base a7 (0x102c4340).
  The `lw` at 0x100fdec4 loads 4 bytes from sym(__libc_attr) +0x0 via base a7 (sym(__libc_attr)).
  The `lbu` at 0x100fded8 loads 1 bytes from ? (base unknown) via base a0 (?).
  The `lw` at 0x100fdee4 loads 4 bytes from ? (base unknown) via base t3 (?).
  The `jalr` at 0x100fde84 calls `strlen` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` at 0x100fde70 goes to 0x100fdf14 when a0 == 0 and falls through when a0 != 0.
  The `blez` at 0x100fde90 goes to 0x100fdf14 when v0(=ret(strlen)) <= 0 (signed) and falls through when v0(=ret(strlen)) > 0 (signed).
  The `beq` at 0x100fded0 goes to 0x100fdf28 when a3(?) >= v0(=ret(strlen)) (signed) and falls through when a3(?) < v0(=ret(strlen)) (signed).
  The `beq` at 0x100fdeec goes to 0x100fdefc when (a5(=0xffffffff80000008) & t3(?)) == 0 and falls through when (a5(=0xffffffff80000008) & t3(?)) != 0.
  The `bltz` at 0x100fdef4 goes to 0x100fdf38 when a6(?) < 0 (signed) and falls through when a6(?) >= 0 (signed).
  The `bne` at 0x100fdefc goes to 0x100fdec8 when t0(=0x22) != a4(?) and falls through when t0(=0x22) == a4(?).
  The `bltzl` at 0x100fdf04 goes to 0x100fdec8 when a6(?) < 0 (signed) and falls through when a6(?) >= 0 (signed).
  The `bltz` at 0x100fdf28 goes to 0x100fdf14 when a6(?) < 0 (signed) and falls through when a6(?) >= 0 (signed).
  The return at 0x100fdf20 has v0 = ?.
  The return at 0x100fdf3c has v0 = -0x1.
- `AssignElement` in `usr/diags/IR/bin/irsaudit` at 0x100fdf44 (n32).
  It occupies 364 bytes.
  The `lw` at 0x100fdf64 loads 4 bytes from abs 0x102bdaf8 via base s0 (0x102c4340).
  The `lw` at 0x100fdf84 loads 4 bytes from abs 0x102bdbb8 via base s2 (0x102c4340).
  The `lw` at 0x100fdfb4 loads 4 bytes from abs 0x102bdbe0 via base s3 (0x102c4340).
  The `lw` at 0x100fdfbc loads 4 bytes from abs 0x102be678 via base s0 (0x102c4340).
  4 such accesses load 4 bytes from sym(DefineDList) +0x0 via base s0 (sym(DefineDList)), including `lw` at 0x100fdfcc, `lw` at 0x100fdfe8, `lw` at 0x100fe040.
  The `lw` at 0x100fdfdc loads 4 bytes from abs 0x102bdbcc via base t9 (0x102c4340).
  The `lw` at 0x100fdff4 loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `lw` at 0x100fe014 loads 4 bytes from abs 0x102bdba0 via base t9 (0x102c4340).
  The `lw` at 0x100fe030 loads 4 bytes from abs 0x102bdbe8 via base t9 (0x102c4340).
  The `lw` at 0x100fe084 loads 4 bytes from abs 0x102bced4 via base a1 (0x102c4340).
  The `lw` at 0x100fe090 loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  The `lw` at 0x100fe094 loads 4 bytes from abs 0x102bd414 via base a0 (0x102c4340).
  The `jal` at 0x100fdf74 calls `DoSub [0x100fb3bc]` with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fdf8c calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fdfa0 calls `DoSub [0x100fb3bc]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fdfc8 calls `DLGetNameIndex [0x100ff480]` with a0=[sym(DefineDList)], a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fdfe4 calls `DLGetData [0x100ff180]` with a0=[sym(DefineDList)], a1=ret(DLGetNameIndex), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fdff8 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fe004 calls `GetNextString [0x100fee80]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fe020 calls `SetStringElement [0x100fe0b0]` with a0=(unknown), a1=(unknown), a2=ret(GetNextString), a3=(unknown).
  The `jal` at 0x100fe03c calls `DLNameData [0x100ff61c]` with a0=[sym(DefineDList)], a1=ret(GetNextString), a2=ret(SetStringElement), a3=(unknown).
  The `jal` at 0x100fe04c calls `DLGetNameIndex [0x100ff480]` with a0=[sym(DefineDList)], a1=ret(GetNextString), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fe0a0 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b30e8, a2=ret(GetNextString), a3=(unknown).
  The `bltz` at 0x100fdfd0 goes to 0x100fe074 when v0(=ret(DLGetNameIndex)) < 0 (signed) and falls through when v0(=ret(DLGetNameIndex)) >= 0 (signed).
  The return at 0x100fe06c has v0 = ?.
- `SetStringElement` in `usr/diags/IR/bin/irsaudit` at 0x100fe0b0 (n32).
  It occupies 920 bytes.
  The `lw` at 0x100fe0d4 loads 4 bytes from abs 0x102bdb90 via base t9 (0x102c4340).
  The `sb` at 0x100fe0f0 stores 1 bytes to ret(getNextBuffer) +0x0 via base v0 (ret(getNextBuffer)) with value 0x0.
  2 such accesses load 4 bytes from abs 0x102bd4a4 via base s5 (0x102c4340), including `lw` at 0x100fe138, `lw` at 0x100fe274.
  The `lw` at 0x100fe144 loads 4 bytes from abs 0x102bd410 via base s6 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bd474 via base s3 (0x102c4340), including `lw` at 0x100fe154, `lw` at 0x100fe27c.
  7 such accesses load 1 bytes from ? (base unknown) via base s0 (?), including `lbu` at 0x100fe158, `lbu` at 0x100fe1a0, `lbu` at 0x100fe23c.
  The `lw` at 0x100fe170 loads 4 bytes from ? (base unknown) via base t8 (?).
  4 such accesses load 4 bytes from sym(__libc_attr) +0x0 via base s5 (sym(__libc_attr)), including `lw` at 0x100fe184, `lw` at 0x100fe230, `lw` at 0x100fe2cc.
  The `lw` at 0x100fe190 loads 4 bytes from ? (base unknown) via base t9 (?).
  2 such accesses load 4 bytes from ? (base unknown) via base t1 (?), including `lw` at 0x100fe1b8, `lw` at 0x100fe24c.
  3 such accesses load 4 bytes from abs 0x102bced4 via base a1 (0x102c4340), including `lw` at 0x100fe1e8, `lw` at 0x100fe3a4, `lw` at 0x100fe418.
  The `sb` at 0x100fe214 stores 1 bytes to (ret(getNextBuffer) + ret(strlen)) +0x0 via base a2 ((ret(getNextBuffer) + ret(strlen))) with value 0x20.
  The `sb` at 0x100fe220 stores 1 bytes to (ret(getNextBuffer) + ret(strlen)) +0x1 via base a2 ((ret(getNextBuffer) + ret(strlen))) with value 0x0.
  The `lw` at 0x100fe294 loads 4 bytes from abs 0x102bd4a0 via base s1 (0x102c4340).
  The `sb` at 0x100fe2bc stores 1 bytes to (ret(getNextBuffer) + ret(strlen)) +0x0 via base t8 ((ret(getNextBuffer) + ret(strlen))) with value 0x20.
  The `sb` at 0x100fe2c0 stores 1 bytes to (ret(getNextBuffer) + ret(strlen)) +0x1 via base t8 ((ret(getNextBuffer) + ret(strlen))) with value 0x0.
  The `lw` at 0x100fe2e0 loads 4 bytes from ? (base unknown) via base ra (?).
  The `lw` at 0x100fe304 loads 4 bytes from ? (base unknown) via base at (?).
  The `lw` at 0x100fe32c loads 4 bytes from ? (base unknown) via base v0 (?).
  The `lw` at 0x100fe354 loads 4 bytes from ? (base unknown) via base v1 (?).
  The `lw` at 0x100fe388 loads 4 bytes from abs 0x102be67c via base a0 (0x102c4340).
  The `lw` at 0x100fe38c loads 4 bytes from sym(debug) +0x0 via base a0 (sym(debug)).
  2 such accesses load 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340), including `lw` at 0x100fe3b0, `lw` at 0x100fe424.
  2 such accesses load 4 bytes from abs 0x102bd414 via base a0 (0x102c4340), including `lw` at 0x100fe3b4, `lw` at 0x100fe428.
  The `jal` at 0x100fe0e8 calls `getNextBuffer [0x100fdca0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100fe1d4 calls `strlen` with a0=ret(getNextBuffer), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fe1f4 calls `sscanf` with a0=(unknown), a1=0x101b3284, a2=(ret(getNextBuffer) + ret(strlen)), a3=(unknown).
  The `jalr` at 0x100fe200 calls `strlen` with a0=ret(getNextBuffer), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fe21c calls `strlen` with a0=a0 at entry (arg0), a1=(unknown), a2=(ret(getNextBuffer) + ret(strlen)), a3=0x20.
  The `jalr` at 0x100fe284 calls `strlen` with a0=ret(getNextBuffer), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fe2a0 calls `strcpy` with a0=(ret(getNextBuffer) + ret(strlen)), a1=a2 at entry (arg2), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fe2ac calls `strlen` with a0=ret(getNextBuffer), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fe368 calls `strlen` with a0=ret(getNextBuffer), a1=(unknown), a2=(unknown), a3=(unknown), a7=[sym(__libc_attr)].
  The `jalr` at 0x100fe378 calls `strcpy` with a0=(ret(getNextBuffer) + ret(strlen)), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fe3c8 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b32e0, a2=ret(getNextBuffer), a3=a1 at entry (arg1), a4=a2 at entry (arg2).
  The `jalr` at 0x100fe438 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b3288, a2=a0 at entry (arg0), a3=a1 at entry (arg1), a7=[sym(__libc_attr)].
  The `blez` at 0x100fe124 goes to 0x100fe264 when at(=a1) <= 0 (signed) and falls through when at(=a1) > 0 (signed).
  The `beq` at 0x100fe164 goes to 0x100fe1c8 when t0(?) == 0 and falls through when t0(?) != 0.
  The `beq` at 0x100fe178 goes to 0x100fe158 when (s2(=0xffffffff80000008) & t8(?)) == 0 and falls through when (s2(=0xffffffff80000008) & t8(?)) != 0.
  The `beq` at 0x100fe180 goes to 0x100fe1c8 when t0(?) == 0 and falls through when t0(?) != 0.
  The `beq` at 0x100fe198 goes to 0x100fe1c8 when (s2(=0xffffffff80000008) & t9(?)) == 0 and falls through when (s2(=0xffffffff80000008) & t9(?)) != 0.
  The `beq` at 0x100fe1ac goes to 0x100fe1c8 when t0(?) == 0 and falls through when t0(?) != 0.
  The `bne` at 0x100fe1c0 goes to 0x100fe1a0 when (s2(=0xffffffff80000008) & t1(?)) != 0 and falls through when (s2(=0xffffffff80000008) & t1(?)) == 0.
  The `beq` at 0x100fe1c8 goes to 0x100fe284 when t2(?) == 0 and falls through when t2(?) != 0.
  The `beq` at 0x100fe234 goes to 0x100fe408 when s1(?) >= v0(=ret(strlen)) (unsigned) and falls through when s1(?) < v0(=ret(strlen)) (unsigned).
  The `beq` at 0x100fe244 goes to 0x100fe1c8 when t0(?) == 0 and falls through when t0(?) != 0.
  The `bne` at 0x100fe254 goes to 0x100fe180 when (s2(=0xffffffff80000008) & t3(?)) != 0 and falls through when (s2(=0xffffffff80000008) & t3(?)) == 0.
  The `beq` at 0x100fe2d4 goes to 0x100fe364 when t0(?) == 0 and falls through when t0(?) != 0.
  The `bne` at 0x100fe2e8 goes to 0x100fe314 when (s2(=0xffffffff80000008) & ra(?)) != 0 and falls through when (s2(=0xffffffff80000008) & ra(?)) == 0.
  The `beq` at 0x100fe2f8 goes to 0x100fe364 when t0(?) == 0 and falls through when t0(?) != 0.
  The `beq` at 0x100fe30c goes to 0x100fe2f0 when (s2(=0xffffffff80000008) & at(?)) == 0 and falls through when (s2(=0xffffffff80000008) & at(?)) != 0.
  The `beq` at 0x100fe314 goes to 0x100fe368 when t0(?) == 0 and falls through when t0(?) != 0.
  The `beq` at 0x100fe338 goes to 0x100fe368 when (s2(=0xffffffff80000008) & v0(?)) == 0 and falls through when (s2(=0xffffffff80000008) & v0(?)) != 0.
  The `beq` at 0x100fe348 goes to 0x100fe364 when v0(?) == 0 and falls through when v0(?) != 0.
  The `bne` at 0x100fe35c goes to 0x100fe340 when (s2(=0xffffffff80000008) & v1(?)) != 0 and falls through when (s2(=0xffffffff80000008) & v1(?)) == 0.
  The `beq` at 0x100fe390 goes to 0x100fe3d0 when a0(=[sym(debug)]) == 0 and falls through when a0(=[sym(debug)]) != 0.
  The return at 0x100fe400 has v0 = ?.
- `GetStringElement` in `usr/diags/IR/bin/irsaudit` at 0x100fe448 (n32).
  It occupies 840 bytes.
  The `lw` at 0x100fe468 loads 4 bytes from abs 0x102bdb90 via base t9 (0x102c4340).
  The `lbu` at 0x100fe48c loads 1 bytes from a0 (arg0 at entry) +0x0 via base s6 (a0).
  The `lw` at 0x100fe4b4 loads 4 bytes from abs 0x102bd4a4 via base a2 (0x102c4340).
  3 such accesses load 4 bytes from sym(__libc_attr) +0x0 via base s3 (sym(__libc_attr)), including `lw` at 0x100fe4b8, `lw` at 0x100fe558, `lw` at 0x100fe5b8.
  The `lw` at 0x100fe4c4 loads 4 bytes from ([sym(__libc_attr)] + ([a0]:1 << 0x2)) +0x4 via base a3 (([sym(__libc_attr)] + ([a0]:1 << 0x2))).
  5 such accesses load 1 bytes from ? (base unknown) via base s0 (?), including `lbu` at 0x100fe4e0, `lbu` at 0x100fe52c, `lbu` at 0x100fe574.
  3 such accesses load 4 bytes from ? (base unknown) via base t1 (?), including `lw` at 0x100fe4f8, `lw` at 0x100fe58c, `lw` at 0x100fe5d4.
  The `lw` at 0x100fe528 loads 4 bytes from abs 0x102bd474 via base s4 (0x102c4340).
  The `lw` at 0x100fe544 loads 4 bytes from ? (base unknown) via base t8 (?).
  The `lw` at 0x100fe564 loads 4 bytes from ? (base unknown) via base t9 (?).
  The `lw` at 0x100fe5fc loads 4 bytes from abs 0x102bd410 via base t9 (0x102c4340).
  4 such accesses load 4 bytes from abs 0x102bced4 via base a1 (0x102c4340), including `lw` at 0x100fe600, `lw` at 0x100fe678, `lw` at 0x100fe6b8.
  The `lw` at 0x100fe61c loads 4 bytes from abs 0x102be338 via base ra (0x102c4340).
  The `lw` at 0x100fe620 loads 4 bytes from sym(doSubstitute) +0x0 via base ra (sym(doSubstitute)).
  The `lw` at 0x100fe638 loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  The `lw` at 0x100fe63c loads 4 bytes from abs 0x102be678 via base a0 (0x102c4340).
  The `lw` at 0x100fe648 loads 4 bytes from sym(DefineDList) +0x0 via base a0 (sym(DefineDList)).
  The `lw` at 0x100fe65c loads 4 bytes from abs 0x102be67c via base ra (0x102c4340).
  The `lw` at 0x100fe660 loads 4 bytes from sym(debug) +0x0 via base ra (sym(debug)).
  3 such accesses load 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340), including `lw` at 0x100fe684, `lw` at 0x100fe6c4, `lw` at 0x100fe748.
  3 such accesses load 4 bytes from abs 0x102bd414 via base a0 (0x102c4340), including `lw` at 0x100fe68c, `lw` at 0x100fe6cc, `lw` at 0x100fe754.
  The `lw` at 0x100fe720 loads 4 bytes from abs 0x102be67c via base a2 (0x102c4340).
  The `lw` at 0x100fe724 loads 4 bytes from sym(debug) +0x0 via base a2 (sym(debug)).
  The `lw` at 0x100fe784 loads 4 bytes from abs 0x102bd4a4 via base s3 (0x102c4340).
  The `jal` at 0x100fe47c calls `getNextBuffer [0x100fdca0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100fe5a8 calls `strlen` with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fe60c calls `sscanf` with a0=(unknown), a1=0x101b3284, a2=ret(getNextBuffer), a3=(unknown).
  The `jal` at 0x100fe644 calls `DLGetNameData [0x100ff57c]` with a0=[sym(DefineDList)], a1=ret(getNextBuffer), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fe698 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b32f8, a2=ret(DLGetNameData), a3=ret(getNextBuffer).
  The `jalr` at 0x100fe6d8 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b3288, a2=a0 at entry (arg0), a3=a1 at entry (arg1), a7=[sym(__libc_attr)].
  The `jalr` at 0x100fe760 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b32e0, a2=a0 at entry (arg0), a3=a1 at entry (arg1), a4=ret(getNextBuffer).
  The `beq` at 0x100fe4a8 goes to 0x100fe770 when v0(=[a0]:1) == 0 and falls through when v0(=[a0]:1) != 0.
  The `beq` at 0x100fe4d0 goes to 0x100fe788 when (s2(=0xffffffff80000008) & a3(=[([sym(__libc_attr)] + ([a0]:1 << 0x2))+4])) == 0 and falls through when (s2(=0xffffffff80000008) & a3(=[([sym(__libc_attr)] + ([a0]:1 << 0x2))+4])) != 0.
  The `beq` at 0x100fe4ec goes to 0x100fe508 when t0(?) == 0 and falls through when t0(?) != 0.
  The `bne` at 0x100fe500 goes to 0x100fe4e0 when (s2(=0xffffffff80000008) & t1(?)) != 0 and falls through when (s2(=0xffffffff80000008) & t1(?)) == 0.
  The `blez` at 0x100fe510 goes to 0x100fe5ec when s7(=a1) <= 0 (signed) and falls through when s7(=a1) > 0 (signed).
  The `beq` at 0x100fe538 goes to 0x100fe59c when t0(?) == 0 and falls through when t0(?) != 0.
  The `beq` at 0x100fe54c goes to 0x100fe52c when (s2(=0xffffffff80000008) & t8(?)) == 0 and falls through when (s2(=0xffffffff80000008) & t8(?)) != 0.
  The `beq` at 0x100fe554 goes to 0x100fe59c when t0(?) == 0 and falls through when t0(?) != 0.
  The `beq` at 0x100fe56c goes to 0x100fe59c when (s2(=0xffffffff80000008) & t9(?)) == 0 and falls through when (s2(=0xffffffff80000008) & t9(?)) != 0.
  The `beq` at 0x100fe580 goes to 0x100fe59c when t0(?) == 0 and falls through when t0(?) != 0.
  The `bne` at 0x100fe594 goes to 0x100fe574 when (s2(=0xffffffff80000008) & t1(?)) != 0 and falls through when (s2(=0xffffffff80000008) & t1(?)) == 0.
  The `beq` at 0x100fe59c goes to 0x100fe5f0 when t2(?) == 0 and falls through when t2(?) != 0.
  The `beq` at 0x100fe5bc goes to 0x100fe6a8 when s1(?) >= v0(=ret(strlen)) (unsigned) and falls through when s1(?) < v0(=ret(strlen)) (unsigned).
  The `beq` at 0x100fe5cc goes to 0x100fe59c when t0(?) == 0 and falls through when t0(?) != 0.
  The `bne` at 0x100fe5dc goes to 0x100fe554 when (s2(=0xffffffff80000008) & t3(?)) != 0 and falls through when (s2(=0xffffffff80000008) & t3(?)) == 0.
  The `beq` at 0x100fe624 goes to 0x100fe718 when ra(=[sym(doSubstitute)]) == 0 and falls through when ra(=[sym(doSubstitute)]) != 0.
  The `beq` at 0x100fe650 goes to 0x100fe718 when v0(=ret(DLGetNameData)) == 0 and falls through when v0(=ret(DLGetNameData)) != 0.
  The `beq` at 0x100fe664 goes to 0x100fe6a0 when ra(=[sym(debug)]) == 0 and falls through when ra(=[sym(debug)]) != 0.
  The `beq` at 0x100fe728 goes to 0x100fe768 when a2(=[sym(debug)]) == 0 and falls through when a2(=[sym(debug)]) != 0.
  The return at 0x100fe710 has v0 = ?.
- `getString` in `usr/diags/IR/bin/irsaudit` at 0x100fe790 (n32).
  It occupies 1020 bytes.
  The `lw` at 0x100fe7b0 loads 4 bytes from abs 0x102bdbac via base s2 (0x102c4340).
  The `lw` at 0x100fe7d4 loads 4 bytes from abs 0x102bdb90 via base t9 (0x102c4340).
  The `lw` at 0x100fe824 loads 4 bytes from abs 0x102bdb94 via base s3 (0x102c4340).
  The `lw` at 0x100fe84c loads 4 bytes from abs 0x102bdb98 via base t9 (0x102c4340).
  The `lw` at 0x100fe868 loads 4 bytes from abs 0x102bd484 via base t9 (0x102c4340).
  7 such accesses load 4 bytes from abs 0x102bced4 via base a1 (0x102c4340), including `lw` at 0x100fe870, `lw` at 0x100fe968, `lw` at 0x100fe9ec.
  3 such accesses load 4 bytes from abs 0x102bd410 via base t9 (0x102c4340), including `lw` at 0x100fe88c, `lw` at 0x100fe9e4, `lw` at 0x100feaf0.
  3 such accesses load 4 bytes from abs 0x102bd474 via base t9 (0x102c4340), including `lw` at 0x100fe8a8, `lw` at 0x100fea10, `lw` at 0x100feb10.
  The `sb` at 0x100fe8b8 stores 1 bytes to (ret(findQuotedStringLength) + ret(getNextBuffer)) -0x1 via base at ((ret(findQuotedStringLength) + ret(getNextBuffer))) with value 0x0.
  4 such accesses load 4 bytes from abs 0x102bd3f8 via base s4 (0x102c4340), including `lw` at 0x100fe8d8, `lw` at 0x100fea68, `lw` at 0x100fead4.
  3 such accesses load 4 bytes from abs 0x102be67c via base s2 (0x102c4340), including `lw` at 0x100fe8e0, `lw` at 0x100feacc, `lw` at 0x100feb44.
  The `lw` at 0x100fe8ec loads 4 bytes from abs 0x102be338 via base t8 (0x102c4340).
  The `lw` at 0x100fe8f0 loads 4 bytes from sym(doSubstitute) +0x0 via base t8 (sym(doSubstitute)).
  The `lw` at 0x100fe908 loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  The `lw` at 0x100fe90c loads 4 bytes from abs 0x102be678 via base a0 (0x102c4340).
  The `lw` at 0x100fe918 loads 4 bytes from sym(DefineDList) +0x0 via base a0 (sym(DefineDList)).
  The `lw` at 0x100fe92c loads 4 bytes from abs 0x102bdba4 via base t9 (0x102c4340).
  The `lw` at 0x100fe944 loads 4 bytes from sym(debug) +0x0 via base s2 (sym(debug)).
  3 such accesses load 4 bytes from abs 0x102bd414 via base a0 (0x102c4340), including `lw` at 0x100fe95c, `lw` at 0x100fea74, `lw` at 0x100feb6c.
  The `lw` at 0x100fe988 loads 4 bytes from abs 0x102be338 via base v0 (0x102c4340).
  The `lw` at 0x100fe98c loads 4 bytes from sym(doSubstitute) +0x0 via base v0 (sym(doSubstitute)).
  2 such accesses store 1 bytes to (ret(findCharacterInString) + ret(UpdatePlaceHolder)) +0x0 via base s3 ((ret(findCharacterInString) + ret(UpdatePlaceHolder))), including `sb` at 0x100fe9f4, `sb` at 0x100feb80.
  The `sb` at 0x100fe9fc stores 1 bytes to (ret(findCharacterInString) + ret(UpdatePlaceHolder)) +0x0 via base a4 ((ret(findCharacterInString) + ret(UpdatePlaceHolder))) with value 0x20.
  The `lw` at 0x100fea30 loads 4 bytes from abs 0x102bdbbc via base t9 (0x102c4340).
  The `lw` at 0x100fea44 loads 4 bytes from abs 0x102be67c via base s0 (0x102c4340).
  The `lw` at 0x100fea48 loads 4 bytes from sym(debug) +0x0 via base s0 (sym(debug)).
  The `lw` at 0x100feb64 loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  The `sb` at 0x100feb88 stores 1 bytes to ret(getNextBuffer) +0x0 via base s1 (ret(getNextBuffer)) with value 0x0.
  The `jal` at 0x100fe7c4 calls `UpdatePlaceHolder [0x100feb8c]` with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100fe7d8 calls `getNextBuffer [0x100fdca0]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fe834 calls `findCharacterInString [0x100fdd78]` with a0=0x22, a1=ret(UpdatePlaceHolder), a2=0x1, a3=(unknown).
  The `jal` at 0x100fe850 calls `findQuotedStringLength [0x100fde58]` with a0=ret(UpdatePlaceHolder), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fe87c calls `sprintf` with a0=sp-128, a1=0x101b3310, a2=ret(findQuotedStringLength), a3=(unknown).
  The `jalr` at 0x100fe898 calls `sscanf` with a0=ret(UpdatePlaceHolder), a1=sp-128, a2=ret(getNextBuffer), a3=(unknown).
  The `jalr` at 0x100fe8b4 calls `strlen` with a0=ret(getNextBuffer), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fe8c0 calls `UpdatePlaceHolder [0x100feb8c]` with a0=ret(strlen)+3, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fe914 calls `DLGetNameData [0x100ff57c]` with a0=[sym(DefineDList)], a1=ret(getNextBuffer), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fe934 calls `GetStringElement [0x100fe448]` with a0=ret(DLGetNameData), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fe974 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b32f8, a2=(unknown), a3=ret(getNextBuffer).
  The `jal` at 0x100fe9a4 calls `findCharacterInString [0x100fdd78]` with a0=0x5b, a1=ret(UpdatePlaceHolder), a2=0x1, a3=(unknown).
  The `jal` at 0x100fe9c0 calls `findCharacterInString [0x100fdd78]` with a0=0x5d, a1=ret(UpdatePlaceHolder), a2=0x0, a3=(unknown).
  The `jalr` at 0x100fea00 calls `sscanf` with a0=ret(UpdatePlaceHolder), a1=0x101b3284, a2=ret(getNextBuffer), a3=0x20, a4=(ret(findCharacterInString) + ret(UpdatePlaceHolder)).
  The `jalr` at 0x100fea14 calls `strlen` with a0=ret(getNextBuffer), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fea20 calls `UpdatePlaceHolder [0x100feb8c]` with a0=ret(strlen)+1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100fea34 calls `GetNextInteger [0x100feebc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fea88 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b3350, a2=ret(GetNextInteger), a3=(unknown).
  The `jal` at 0x100fea94 calls `UpdatePlaceHolder [0x100feb8c]` with a0=0x0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100feab4 calls `fprintf` with a0=(unknown), a1=0x101b3368, a2=ret(UpdatePlaceHolder), a3=(unknown).
  The `jalr` at 0x100feb00 calls `sscanf` with a0=ret(UpdatePlaceHolder), a1=0x101b3284, a2=ret(getNextBuffer), a3=(unknown).
  The `jalr` at 0x100feb14 calls `strlen` with a0=ret(getNextBuffer), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100feb20 calls `UpdatePlaceHolder [0x100feb8c]` with a0=ret(strlen)+1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100feb78 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b3318, a2=ret(UpdatePlaceHolder), a3=0x20.
  The `bne` at 0x100fe7e8 goes to 0x100fe81c when s0(=ret(UpdatePlaceHolder)) != 0 and falls through when s0(=ret(UpdatePlaceHolder)) == 0.
  The `bltz` at 0x100fe83c goes to 0x100fe984 when v0(=ret(findCharacterInString)) < 0 (signed) and falls through when v0(=ret(findCharacterInString)) >= 0 (signed).
  The `beq` at 0x100fe8f4 goes to 0x100fead8 when t8(=[sym(doSubstitute)]) == 0 and falls through when t8(=[sym(doSubstitute)]) != 0.
  The `bltz` at 0x100fe91c goes to 0x100fe940 when s3(?) < 0 (signed) and falls through when s3(?) >= 0 (signed).
  The `beq` at 0x100fe940 goes to 0x100fead8 when s0(?) == 0 and falls through when s0(?) != 0.
  The `beq` at 0x100fe948 goes to 0x100fe97c when ra(=[sym(debug)]) == 0 and falls through when ra(=[sym(debug)]) != 0.
  The `beq` at 0x100fe990 goes to 0x100feae4 when a2(=[sym(doSubstitute)]) == 0 and falls through when a2(=[sym(doSubstitute)]) != 0.
  The `bltz` at 0x100fe9ac goes to 0x100feae0 when v0(=ret(findCharacterInString)) < 0 (signed) and falls through when v0(=ret(findCharacterInString)) >= 0 (signed).
  The `bltz` at 0x100fe9cc goes to 0x100feb48 when v0(=ret(findCharacterInString)) < 0 (signed) and falls through when v0(=ret(findCharacterInString)) >= 0 (signed).
  The `beq` at 0x100fea4c goes to 0x100feabc when ra(=[sym(debug)]) == 0 and falls through when ra(=[sym(debug)]) != 0.
  The return at 0x100fe814 has v0 = ?.
- `UpdatePlaceHolder` in `usr/diags/IR/bin/irsaudit` at 0x100feb8c (n32).
  It occupies 432 bytes.
  The `lw` at 0x100febb0 loads 4 bytes from abs 0x102be66c via base s0 (0x102c4340).
  The `lw` at 0x100febc4 loads 4 bytes from sym(place) +0x0 via base s0 (sym(place)).
  The `lbu` at 0x100febec loads 1 bytes from [sym(place)] +0x0 via base a3 ([sym(place)]).
  The `lw` at 0x100fec0c loads 4 bytes from abs 0x102bd4a4 via base a4 (0x102c4340).
  The `lw` at 0x100fec10 loads 4 bytes from sym(__libc_attr) +0x0 via base a4 (sym(__libc_attr)).
  3 such accesses store 4 bytes to sym(place) +0x0 via base s0 (sym(place)), including `sw` at 0x100fec18, `sw` at 0x100fec3c, `sw` at 0x100fecdc.
  4 such accesses load 1 bytes from ? (base unknown) via base a3 (?), including `lbu` at 0x100fec1c, `lbu` at 0x100fec40, `lbu` at 0x100fece0.
  The `lw` at 0x100fec28 loads 4 bytes from ? (base unknown) via base a5 (?).
  The `lw` at 0x100fec4c loads 4 bytes from ? (base unknown) via base a6 (?).
  The `lw` at 0x100fec94 loads 4 bytes from abs 0x102bd4a4 via base s3 (0x102c4340).
  The `lw` at 0x100fec9c loads 4 bytes from abs 0x102bdb8c via base s2 (0x102c4340).
  The `sw` at 0x100fecb4 stores 4 bytes to sym(place) +0x0 via base s0 (sym(place)) with value ret(getLine).
  The `lw` at 0x100fecb8 loads 4 bytes from sym(__libc_attr) +0x0 via base s3 (sym(__libc_attr)).
  The `lbu` at 0x100fecbc loads 1 bytes from ret(getLine) +0x0 via base v0 (ret(getLine)).
  The `lw` at 0x100fecc8 loads 4 bytes from ([sym(__libc_attr)] + ([ret(getLine)]:1 << 0x2)) +0x4 via base t8 (([sym(__libc_attr)] + ([ret(getLine)]:1 << 0x2))).
  The `lw` at 0x100fecec loads 4 bytes from ? (base unknown) via base t9 (?).
  The `jal` at 0x100feca4 calls `getLine [0x100fdc24]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x100febe4 goes to 0x100fed34 when a3(=[sym(place)]) == 0 and falls through when a3(=[sym(place)]) != 0.
  The `beq` at 0x100febf0 goes to 0x100fec84 when s4(=0xa) == v0(=[[sym(place)]]:1) and falls through when s4(=0xa) != v0(=[[sym(place)]]:1).
  The `beq` at 0x100febf8 goes to 0x100fec84 when v0(=[[sym(place)]]:1) == 0 and falls through when v0(=[[sym(place)]]:1) != 0.
  The `beq` at 0x100fec00 goes to 0x100fec84 when a7(=0x23) == v0(=[[sym(place)]]:1) and falls through when a7(=0x23) != v0(=[[sym(place)]]:1).
  The `beq` at 0x100fec30 goes to 0x100fec5c when (s1(=0xffffffff80000008) & a5(?)) == 0 and falls through when (s1(=0xffffffff80000008) & a5(?)) != 0.
  The `bne` at 0x100fec54 goes to 0x100fec38 when (s1(=0xffffffff80000008) & a6(?)) != 0 and falls through when (s1(=0xffffffff80000008) & a6(?)) == 0.
  The `beq` at 0x100fecb0 goes to 0x100fed2c when v0(=ret(getLine)) == 0 and falls through when v0(=ret(getLine)) != 0.
  The `beq` at 0x100fecd0 goes to 0x100fecfc when (s1(=0xffffffff80000008) & t8(=[([sym(__libc_attr)] + ([ret(getLine)]:1 << 0x2))+4])) == 0 and falls through when (s1(=0xffffffff80000008) & t8(=[([sym(__libc_attr)] + ([ret(getLine)]:1 << 0x2))+4])) != 0.
  The `bne` at 0x100fecf4 goes to 0x100fecd8 when (s1(=0xffffffff80000008) & t9(?)) != 0 and falls through when (s1(=0xffffffff80000008) & t9(?)) == 0.
  The `beq` at 0x100fecfc goes to 0x100feca4 when a3(?) == 0 and falls through when a3(?) != 0.
  The `beq` at 0x100fed08 goes to 0x100feca4 when s4(=0xa) == v0(?) and falls through when s4(=0xa) != v0(?).
  The `beq` at 0x100fed10 goes to 0x100feca4 when v0(?) == 0 and falls through when v0(?) != 0.
  The `beq` at 0x100fed1c goes to 0x100feca4 when ra(=0x23) == v0(?) and falls through when ra(=0x23) != v0(?).
  The return at 0x100fec7c has v0 = ?.
- `GetNextString` in `usr/diags/IR/bin/irsaudit` at 0x100fee80 (n32).
  It occupies 60 bytes.
  The `lw` at 0x100feea0 loads 4 bytes from abs 0x102bdba8 via base t9 (0x102c4340).
  The `jal` at 0x100feea4 calls `getString [0x100fe790]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100feeb4 has v0 = ret(getString).
- `GetNextInteger` in `usr/diags/IR/bin/irsaudit` at 0x100feebc (n32).
  It occupies 288 bytes.
  The `lw` at 0x100feefc loads 4 bytes from abs 0x102bdba8 via base s5 (0x102c4340).
  The `lw` at 0x100fef0c loads 4 bytes from abs 0x102bd414 via base s3 (0x102c4340).
  The `lw` at 0x100fef18 loads 4 bytes from abs 0x102bd410 via base s2 (0x102c4340).
  The `lw` at 0x100fef1c loads 4 bytes from abs 0x102bd3f8 via base s1 (0x102c4340).
  3 such accesses load 4 bytes from abs 0x102bced4 via base a1 (0x102c4340), including `lw` at 0x100fef30, `lw` at 0x100fef64, `lw` at 0x100fefb8.
  The `lw` at 0x100fefd0 loads 4 bytes from abs 0x102bd394 via base t9 (0x102c4340).
  The `jalr` at 0x100fef3c calls `fprintf` with a0=sym(__iob)+32, a1=0x101b33c8, a2=ret(getString), a3=(unknown).
  The `jal` at 0x100fef48 calls `getString [0x100fe790]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fef70 calls `sscanf` with a0=ret(getString), a1=0x101b3230, a2=sp-80, a3=(unknown).
  The `jalr` at 0x100fefc0 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b33a8, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100fefd4 calls `exit` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x100fef50 goes to 0x100fefac when v0(=ret(getString)) == 0 and falls through when v0(=ret(getString)) != 0.
  The `bne` at 0x100fef78 goes to 0x100fef28 when v0(=ret(sscanf)) != s4(=0x1) and falls through when v0(=ret(sscanf)) == s4(=0x1).
  The return at 0x100fefa4 has v0 = ?.
- `GetNextFloat` in `usr/diags/IR/bin/irsaudit` at 0x100fefdc (n32).
  It occupies 288 bytes.
  The `lw` at 0x100ff01c loads 4 bytes from abs 0x102bdba8 via base s5 (0x102c4340).
  The `lw` at 0x100ff02c loads 4 bytes from abs 0x102bd414 via base s3 (0x102c4340).
  The `lw` at 0x100ff038 loads 4 bytes from abs 0x102bd410 via base s2 (0x102c4340).
  The `lw` at 0x100ff03c loads 4 bytes from abs 0x102bd3f8 via base s1 (0x102c4340).
  3 such accesses load 4 bytes from abs 0x102bced4 via base a1 (0x102c4340), including `lw` at 0x100ff054, `lw` at 0x100ff088, `lw` at 0x100ff0d8.
  The `lw` at 0x100ff0f0 loads 4 bytes from abs 0x102bd394 via base t9 (0x102c4340).
  The `jalr` at 0x100ff060 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b33c8, a2=ret(getString), a3=(unknown).
  The `jal` at 0x100ff06c calls `getString [0x100fe790]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100ff094 calls `sscanf` with a0=ret(getString), a1=0x101b33f8, a2=sp-80, a3=(unknown).
  The `jalr` at 0x100ff0e0 calls `fprintf` with a0=sym(__iob)+32, a1=0x101b33a8, a2=(unknown), a3=(unknown).
  The `jalr` at 0x100ff0f4 calls `exit` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x100ff074 goes to 0x100ff0cc when v0(=ret(getString)) == 0 and falls through when v0(=ret(getString)) != 0.
  The `bne` at 0x100ff09c goes to 0x100ff048 when v0(=ret(sscanf)) != s4(=0x1) and falls through when v0(=ret(sscanf)) == s4(=0x1).
  The return at 0x100ff0c4 has v0 = ret(sscanf).
- `DLGetNum` in `usr/diags/IR/bin/irsaudit` at 0x100ff0fc (n32).
  It occupies 48 bytes.
  The `lw` at 0x100ff114 loads 4 bytes from abs 0x102bcee0 via base v0 (0x102c4340).
  The `lw` at 0x100ff118 loads 4 bytes from abs 0x10344a40 via base v0 (0x10344a3c).
  The `lw` at 0x100ff120 loads 4 bytes from [0x10344a40] +0x0 via base v0 ([0x10344a40]).
  The `lw` at 0x100ff128 loads 4 bytes from a0 (arg0 at entry) +0x0 via base a0 (a0).
  The `bne` at 0x100ff108 goes to 0x100ff124 when a0 != 0 and falls through when a0 == 0.
  The return at 0x100ff11c has v0 = [[0x10344a40]].
  The return at 0x100ff124 has v0 = [a0].
- `DLGetName` in `usr/diags/IR/bin/irsaudit` at 0x100ff12c (n32).
  It occupies 84 bytes.
  The `lw` at 0x100ff144 loads 4 bytes from abs 0x102bcee0 via base a0 (0x102c4340).
  The `lw` at 0x100ff148 loads 4 bytes from abs 0x10344a40 via base a0 (0x10344a3c).
  2 such accesses load 4 bytes from ? (base unknown) via base a0 (?), including `lw` at 0x100ff15c, `lw` at 0x100ff168.
  The `lw` at 0x100ff174 loads 4 bytes from ? (base unknown) via base v0 (?).
  The `bne` at 0x100ff138 goes to 0x100ff154 when a0 != 0 and falls through when a0 == 0.
  The `beq` at 0x100ff14c goes to 0x100ff178 when a0(=[0x10344a40]) == 0 and falls through when a0(=[0x10344a40]) != 0.
  The `bltz` at 0x100ff154 goes to 0x100ff178 when a1 < 0 (signed) and falls through when a1 >= 0 (signed).
  The `beq` at 0x100ff164 goes to 0x100ff178 when a1 >= a2(?) (signed) and falls through when a1 < a2(?) (signed).
  The return at 0x100ff170 has v0 = ?.
  The return at 0x100ff178 has v0 = 0x0.
- `DLGetData` in `usr/diags/IR/bin/irsaudit` at 0x100ff180 (n32).
  It occupies 84 bytes.
  The `lw` at 0x100ff198 loads 4 bytes from abs 0x102bcee0 via base a0 (0x102c4340).
  The `lw` at 0x100ff19c loads 4 bytes from abs 0x10344a40 via base a0 (0x10344a3c).
  2 such accesses load 4 bytes from ? (base unknown) via base a0 (?), including `lw` at 0x100ff1b0, `lw` at 0x100ff1bc.
  The `lw` at 0x100ff1c8 loads 4 bytes from ? (base unknown) via base v0 (?).
  The `bne` at 0x100ff18c goes to 0x100ff1a8 when a0 != 0 and falls through when a0 == 0.
  The `beq` at 0x100ff1a0 goes to 0x100ff1cc when a0(=[0x10344a40]) == 0 and falls through when a0(=[0x10344a40]) != 0.
  The `bltz` at 0x100ff1a8 goes to 0x100ff1cc when a1 < 0 (signed) and falls through when a1 >= 0 (signed).
  The `beq` at 0x100ff1b8 goes to 0x100ff1cc when a1 >= a2(?) (signed) and falls through when a1 < a2(?) (signed).
  The return at 0x100ff1c4 has v0 = ?.
  The return at 0x100ff1cc has v0 = 0x0.
- `DLGetNamedDList` in `usr/diags/IR/bin/irsaudit` at 0x100ff1d4 (n32).
  It occupies 76 bytes.
  The `lw` at 0x100ff1f8 loads 4 bytes from abs 0x102bdbe4 via base t9 (0x102c4340).
  The `lw` at 0x100ff1fc loads 4 bytes from abs 0x102bcee0 via base at (0x102c4340).
  The `lw` at 0x100ff20c loads 4 bytes from abs 0x10344a3c via base at (0x10344a3c).
  The `jal` at 0x100ff208 calls `DLGetNameData [0x100ff57c]` with a0=[0x10344a3c], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100ff218 has v0 = ret(DLGetNameData).
- `DLNameDList` in `usr/diags/IR/bin/irsaudit` at 0x100ff220 (n32).
  It occupies 152 bytes.
  The `lw` at 0x100ff23c loads 4 bytes from abs 0x102bcee0 via base a5 (0x102c4340).
  The `lw` at 0x100ff240 loads 4 bytes from abs 0x10344a3c via base a5 (0x10344a3c).
  The `lw` at 0x100ff264 loads 4 bytes from abs 0x102bdbe8 via base t9 (0x102c4340).
  The `lw` at 0x100ff28c loads 4 bytes from abs 0x102bdbd8 via base t9 (0x102c4340).
  The `lw` at 0x100ff2a4 loads 4 bytes from abs 0x102bcee0 via base ra (0x102c4340).
  The `sw` at 0x100ff2b4 stores 4 bytes to abs 0x10344a3c via base ra (0x10344a3c) with value ret(DLNewDList).
  The `jal` at 0x100ff26c calls `DLNameData [0x100ff61c]` with a0=(unknown), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=(unknown), a6=a0 at entry (arg0).
  The `jal` at 0x100ff290 calls `DLNewDList [0x100ff338]` with a0=0x40, a1=a1 at entry (arg1), a2=a1 at entry (arg1), a3=a3 at entry (arg3), a5=[0x10344a3c], a6=a0 at entry (arg0).
  The `beq` at 0x100ff254 goes to 0x100ff284 when a5(=[0x10344a3c]) == 0 and falls through when a5(=[0x10344a3c]) != 0.
  The return at 0x100ff27c has v0 = ret(DLNameData).
- `DLNameType` in `usr/diags/IR/bin/irsaudit` at 0x100ff2b8 (n32).
  It occupies 64 bytes.
  The `lw` at 0x100ff2d0 loads 4 bytes from abs 0x102bcee0 via base v1 (0x102c4340).
  The `lw` at 0x100ff2d4 loads 4 bytes from abs 0x10344a40 via base v1 (0x10344a3c).
  The `sw` at 0x100ff2d8 stores 4 bytes to [0x10344a40] +0x10 via base v1 ([0x10344a40]) with value a1.
  The `sw` at 0x100ff2dc stores 4 bytes to [0x10344a40] +0x14 via base v1 ([0x10344a40]) with value a2.
  The `sw` at 0x100ff2e4 stores 4 bytes to [0x10344a40] +0x18 via base v1 ([0x10344a40]) with value a3.
  The `sw` at 0x100ff2e8 stores 4 bytes to a0 (arg0 at entry) +0x10 via base a0 (a0) with value a1.
  The `sw` at 0x100ff2ec stores 4 bytes to a0 (arg0 at entry) +0x14 via base a0 (a0) with value a2.
  The `sw` at 0x100ff2f4 stores 4 bytes to a0 (arg0 at entry) +0x18 via base a0 (a0) with value a3.
  The `bne` at 0x100ff2c4 goes to 0x100ff2e8 when a0 != 0 and falls through when a0 == 0.
  The return at 0x100ff2e0 has v0 = 0x1c5088.
  The return at 0x100ff2f0 has v0 = 0x1c5088.
- `DLDataType` in `usr/diags/IR/bin/irsaudit` at 0x100ff2f8 (n32).
  It occupies 64 bytes.
  The `lw` at 0x100ff310 loads 4 bytes from abs 0x102bcee0 via base v1 (0x102c4340).
  The `lw` at 0x100ff314 loads 4 bytes from abs 0x10344a40 via base v1 (0x10344a3c).
  The `sw` at 0x100ff318 stores 4 bytes to [0x10344a40] +0x1c via base v1 ([0x10344a40]) with value a1.
  The `sw` at 0x100ff31c stores 4 bytes to [0x10344a40] +0x20 via base v1 ([0x10344a40]) with value a2.
  The `sw` at 0x100ff324 stores 4 bytes to [0x10344a40] +0x24 via base v1 ([0x10344a40]) with value a3.
  The `sw` at 0x100ff328 stores 4 bytes to a0 (arg0 at entry) +0x1c via base a0 (a0) with value a1.
  The `sw` at 0x100ff32c stores 4 bytes to a0 (arg0 at entry) +0x20 via base a0 (a0) with value a2.
  The `sw` at 0x100ff334 stores 4 bytes to a0 (arg0 at entry) +0x24 via base a0 (a0) with value a3.
  The `bne` at 0x100ff304 goes to 0x100ff328 when a0 != 0 and falls through when a0 == 0.
  The return at 0x100ff320 has v0 = 0x1c5048.
  The return at 0x100ff330 has v0 = 0x1c5048.
- `DLNewDList` in `usr/diags/IR/bin/irsaudit` at 0x100ff338 (n32).
  It occupies 220 bytes.
  The `lw` at 0x100ff35c loads 4 bytes from abs 0x102bd48c via base s0 (0x102c4340).
  The `sw` at 0x100ff378 stores 4 bytes to ret(malloc) +0x0 via base v0 (ret(malloc)) with value 0x0.
  The `sw` at 0x100ff394 stores 4 bytes to ret(malloc) +0x4 via base s1 (ret(malloc)) with value .
  The `sw` at 0x100ff3a8 stores 4 bytes to ret(malloc) +0x8 via base s1 (ret(malloc)) with value ret(malloc).
  The `sw` at 0x100ff3bc stores 4 bytes to ret(malloc) +0x1c via base s1 (ret(malloc)) with value 0x0.
  The `sw` at 0x100ff3c0 stores 4 bytes to ret(malloc) +0x20 via base s1 (ret(malloc)) with value 0x0.
  The `sw` at 0x100ff3c4 stores 4 bytes to ret(malloc) +0x24 via base s1 (ret(malloc)) with value 0x0.
  The `sw` at 0x100ff3d0 stores 4 bytes to ret(malloc) +0xc via base s1 (ret(malloc)) with value ret(malloc).
  The `lw` at 0x100ff3ec loads 4 bytes from abs 0x102bd420 via base t8 (0x102c4340).
  The `lw` at 0x100ff3f0 loads 4 bytes from abs 0x102bd498 via base t9 (0x102c4340).
  The `lw` at 0x100ff3f4 loads 4 bytes from abs 0x102bd460 via base at (0x102c4340).
  The `sw` at 0x100ff3f8 stores 4 bytes to ret(malloc) +0x10 via base s1 (ret(malloc)) with value sym(strcmp).
  The `sw` at 0x100ff3fc stores 4 bytes to ret(malloc) +0x14 via base s1 (ret(malloc)) with value sym(strdup).
  The `sw` at 0x100ff404 stores 4 bytes to ret(malloc) +0x18 via base s1 (ret(malloc)) with value sym(free).
  The `jalr` at 0x100ff370 calls `malloc` with a0=0x28, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100ff398 calls `malloc` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100ff3ac calls `malloc` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `bgtz` at 0x100ff380 goes to 0x100ff38c when s2(=a0) > 0 (signed) and falls through when s2(=a0) <= 0 (signed).
  The return at 0x100ff40c has v0 = ret(malloc).
- `DLGetGenericDList` in `usr/diags/IR/bin/irsaudit` at 0x100ff414 (n32).
  It occupies 108 bytes.
  The `lw` at 0x100ff430 loads 4 bytes from abs 0x102bcee0 via base v0 (0x102c4340).
  The `lw` at 0x100ff434 loads 4 bytes from abs 0x10344a40 via base v0 (0x10344a3c).
  The `lw` at 0x100ff454 loads 4 bytes from abs 0x102bdbd8 via base t9 (0x102c4340).
  The `lw` at 0x100ff46c loads 4 bytes from abs 0x102bcee0 via base v1 (0x102c4340).
  The `sw` at 0x100ff47c stores 4 bytes to abs 0x10344a40 via base v1 (0x10344a3c) with value ret(DLNewDList).
  The `jal` at 0x100ff458 calls `DLNewDList [0x100ff338]` with a0=0x808, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` at 0x100ff438 goes to 0x100ff44c when v0(=[0x10344a40]) == 0 and falls through when v0(=[0x10344a40]) != 0.
  The return at 0x100ff444 has v0 = [0x10344a40].
  The return at 0x100ff478 has v0 = ret(DLNewDList).
- `DLGetNameIndex` in `usr/diags/IR/bin/irsaudit` at 0x100ff480 (n32).
  It occupies 252 bytes.
  5 such accesses load 4 bytes from ? (base unknown) via base s2 (?), including `lw` at 0x100ff4ac, `lw` at 0x100ff4c8, `lw` at 0x100ff4e4.
  The `lw` at 0x100ff4f4 loads 4 bytes from ? (base unknown) via base a1 (?).
  The `lw` at 0x100ff508 loads 4 bytes from ? (base unknown) via base a2 (?).
  The `lw` at 0x100ff558 loads 4 bytes from abs 0x102bdbdc via base t9 (0x102c4340).
  The `jalr` at 0x100ff4f0 calls (unknown callee) with a0=a1 at entry (arg1), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100ff55c calls `DLGetGenericDList [0x100ff414]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` at 0x100ff4a4 goes to 0x100ff550 when a0 == 0 and falls through when a0 != 0.
  The `blez` at 0x100ff4b8 goes to 0x100ff528 when v0(?) <= 0 (signed) and falls through when v0(?) > 0 (signed).
  The `beq` at 0x100ff4d4 goes to 0x100ff528 when s1(?) >= v0(?) (signed) and falls through when s1(?) < v0(?) (signed).
  The `beq` at 0x100ff4dc goes to 0x100ff4cc when t9(?) == 0 and falls through when t9(?) != 0.
  The `beq` at 0x100ff4f8 goes to 0x100ff574 when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  The `beq` at 0x100ff510 goes to 0x100ff56c when a2(?) == s3(=a1) and falls through when a2(?) != s3(=a1).
  The `bne` at 0x100ff520 goes to 0x100ff4c4 when s1(?) < v0(?) (signed) and falls through when s1(?) >= v0(?) (signed).
  The return at 0x100ff548 has v0 = ?.
- `DLGetNameData` in `usr/diags/IR/bin/irsaudit` at 0x100ff57c (n32).
  It occupies 160 bytes.
  The `lw` at 0x100ff59c loads 4 bytes from abs 0x102bdbe0 via base t9 (0x102c4340).
  The `lw` at 0x100ff5c4 loads 4 bytes from ? (base unknown) via base s0 (?).
  The `lw` at 0x100ff5d8 loads 4 bytes from ? (base unknown) via base v0 (?).
  The `lw` at 0x100ff608 loads 4 bytes from abs 0x102bdbdc via base t9 (0x102c4340).
  The `jal` at 0x100ff5a8 calls `DLGetNameIndex [0x100ff480]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100ff60c calls `DLGetGenericDList [0x100ff414]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x100ff5b0 goes to 0x100ff600 when s0(=a0) == 0 and falls through when s0(=a0) != 0.
  The `bltz` at 0x100ff5b8 goes to 0x100ff5e4 when s1(=ret(DLGetNameIndex)) < 0 (signed) and falls through when s1(=ret(DLGetNameIndex)) >= 0 (signed).
  The return at 0x100ff5dc has v0 = ?.
  The return at 0x100ff5f8 has v0 = 0x0.
- `DLNameData` in `usr/diags/IR/bin/irsaudit` at 0x100ff61c (n32).
  It occupies 436 bytes.
  The `lw` at 0x100ff65c loads 4 bytes from abs 0x102bdbe0 via base t9 (0x102c4340).
  21 such accesses load 4 bytes from ? (base unknown) via base s0 (?), including `lw` at 0x100ff674, `lw` at 0x100ff680, `lw` at 0x100ff690.
  The `lw` at 0x100ff68c loads 4 bytes from ? (base unknown) via base a0 (?).
  The `sw` at 0x100ff6b4 stores 4 bytes to ? (base unknown) via base v1 (?) with value ret(?).
  The `sw` at 0x100ff6b8 stores 4 bytes to ? (base unknown) via base v0 (?) with value a2.
  The `sw` at 0x100ff720 stores 4 bytes to ? (base unknown) via base a1 (?) with value ret(?).
  The `sw` at 0x100ff72c stores 4 bytes to ? (base unknown) via base a3 (?) with value a2.
  The `sw` at 0x100ff75c stores 4 bytes to ? (base unknown) via base a4 (?) with value ret(?).
  The `sw` at 0x100ff768 stores 4 bytes to ? (base unknown) via base a6 (?) with value a1.
  2 such accesses store 4 bytes to ? (base unknown) via base s0 (?), including `sw` at 0x100ff778, `sw` at 0x100ff7a8.
  The `lw` at 0x100ff784 loads 4 bytes from abs 0x102bdbdc via base t9 (0x102c4340).
  The `lw` at 0x100ff79c loads 4 bytes from abs 0x102bd430 via base s3 (0x102c4340).
  2 such accesses store 4 bytes to ? (base unknown) via base s0 (?), including `sw` at 0x100ff7b4, `sw` at 0x100ff7cc.
  The `jal` at 0x100ff664 calls `DLGetNameIndex [0x100ff480]` with a0=(unknown), a1=a1 at entry (arg1), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100ff688 calls (unknown callee) with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100ff6a0 calls (unknown callee) with a0=a2 at entry (arg2), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100ff704 calls (unknown callee) with a0=a2 at entry (arg2), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100ff740 calls (unknown callee) with a0=a1 at entry (arg1), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100ff788 calls `DLGetGenericDList [0x100ff414]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100ff7ac calls `realloc` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x100ff7c0 calls `realloc` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x100ff64c goes to 0x100ff77c when a0 == 0 and falls through when a0 != 0.
  The `bltz` at 0x100ff66c goes to 0x100ff6e0 when v0(=ret(DLGetNameIndex)) < 0 (signed) and falls through when v0(=ret(DLGetNameIndex)) >= 0 (signed).
  The `beq` at 0x100ff678 goes to 0x100ff690 when t9(?) == 0 and falls through when t9(?) != 0.
  The `beq` at 0x100ff698 goes to 0x100ff6b8 when t9(?) == 0 and falls through when t9(?) != 0.
  The `beq` at 0x100ff6ec goes to 0x100ff798 when a0(?) >= v0(?) (signed) and falls through when a0(?) < v0(?) (signed).
  The `beq` at 0x100ff6fc goes to 0x100ff724 when t9(?) == 0 and falls through when t9(?) != 0.
  The `beq` at 0x100ff738 goes to 0x100ff760 when t9(?) == 0 and falls through when t9(?) != 0.
  The return at 0x100ff6d8 has v0 = ?.
- `rm_hold` in `usr/diags/IR/bin/irsaudit` at 0x100ff9b0 (n32).
  It occupies 184 bytes.
  The `lw` at 0x100ff9ec loads 4 bytes from abs 0x102be064 via base s2 (0x102c4340).
  The `lw` at 0x100ff9f8 loads 4 bytes from abs 0x102be048 via base s3 (0x102c4340).
  The `lw` at 0x100ffa00 loads 4 bytes from ? (base unknown) via base a2 (?).
  2 such accesses load 4 bytes from ? (base unknown) via base s0 (?), including `lw` at 0x100ffa0c, `lw` at 0x100ffa2c.
  The `lw` at 0x100ffa18 loads 4 bytes from abs 0x102bcee4 via base a1 (0x102c4340).
  The `jal` at 0x100ff9fc calls `jt_select_chain [0x10168570]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100ffa14 calls `jt_set_global_instruction [0x10166e60]` with a0=(unknown), a1=0x101b3400, a2=(unknown), a3=(unknown).
  The `beq` at 0x100ffa24 goes to 0x100ffa48 when s1(?) >= 0x4 (signed) and falls through when s1(?) < 0x4 (signed).
  The `bne` at 0x100ffa30 goes to 0x100ff9fc when a2(?) != 0 and falls through when a2(?) == 0.
  The `bne` at 0x100ffa40 goes to 0x100ffa2c when s1(?) < 0x4 (signed) and falls through when s1(?) >= 0x4 (signed).
  The return at 0x100ffa60 has v0 = ?.
- `rm_release` in `usr/diags/IR/bin/irsaudit` at 0x100ffa68 (n32).
  It occupies 188 bytes.
  The `lw` at 0x100ffaa4 loads 4 bytes from abs 0x102be064 via base s2 (0x102c4340).
  The `lw` at 0x100ffab0 loads 4 bytes from abs 0x102be048 via base s3 (0x102c4340).
  The `lw` at 0x100ffab8 loads 4 bytes from ? (base unknown) via base a2 (?).
  The `lw` at 0x100ffac8 loads 4 bytes from abs 0x102bcee4 via base a1 (0x102c4340).
  2 such accesses load 4 bytes from ? (base unknown) via base s0 (?), including `lw` at 0x100ffacc, `lw` at 0x100ffae8.
  The `jal` at 0x100ffab4 calls `jt_select_chain [0x10168570]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x100ffad0 calls `jt_set_global_instruction [0x10166e60]` with a0=(unknown), a1=0x101b3408, a2=(unknown), a3=(unknown).
  The `beq` at 0x100ffae0 goes to 0x100ffb04 when s1(?) >= 0x4 (signed) and falls through when s1(?) < 0x4 (signed).
  The `bne` at 0x100ffaec goes to 0x100ffab4 when a2(?) != 0 and falls through when a2(?) == 0.
  The `bne` at 0x100ffafc goes to 0x100ffae8 when s1(?) < 0x4 (signed) and falls through when s1(?) >= 0x4 (signed).
  The return at 0x100ffb1c has v0 = ?.
- `test_prims` in `usr/diags/IR/bin/irsaudit` at 0x101000d4 (n32).
  It occupies 5824 bytes.
  The `lw` at 0x10100100 loads 4 bytes from abs 0x102be69c via base s4 (0x102c4340).
  8 such accesses load 4 bytes from sym(g_texture) +0x0 via base s4 (sym(g_texture)), including `lw` at 0x10100108, `lw` at 0x10100a4c, `lw` at 0x10100ab4.
  The `lw` at 0x10100118 loads 4 bytes from a1 (arg1 at entry) +0x16c via base a1 (a1).
  The `lw` at 0x10100124 loads 4 bytes from abs 0x102bdf60 via base t9 (0x102c4340).
  The `lw` at 0x10100138 loads 4 bytes from abs 0x102bdf7c via base t9 (0x102c4340).
  The `lw` at 0x10100158 loads 4 bytes from abs 0x102bdf70 via base t9 (0x102c4340).
  The `lw` at 0x10100188 loads 4 bytes from abs 0x102bdf24 via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102be628 via base s2 (0x102c4340), including `lw` at 0x10100194, `lw` at 0x10100224.
  70 such accesses load 4 bytes from sym(rm) +0x0 via base s2 (sym(rm)), including `lw` at 0x101001a8, `lw` at 0x101001b8, `lw` at 0x101001e4.
  The `lw` at 0x101001b4 loads 4 bytes from abs 0x102bdf44 via base t9 (0x102c4340).
  The `lw` at 0x101001cc loads 4 bytes from abs 0x102bdfa4 via base t9 (0x102c4340).
  The `lw` at 0x101001e0 loads 4 bytes from abs 0x102bdf98 via base t9 (0x102c4340).
  The `lw` at 0x10100204 loads 4 bytes from abs 0x102be684 via base s0 (0x102c4340).
  3 such accesses load 4 bytes from sym(g_multisample) +0x0 via base s0 (sym(g_multisample)), including `lw` at 0x1010020c, `lw` at 0x10100314, `lw` at 0x1010035c.
  The `lw` at 0x10100230 loads 4 bytes from abs 0x102be1e0 via base t8 (0x102c4340).
  The `lw` at 0x10100234 loads 4 bytes from sym(KONAINFO) +0x0 via base t8 (sym(KONAINFO)).
  The `lw` at 0x10100238 loads 4 bytes from [sym(KONAINFO)] +0x0 via base t8 ([sym(KONAINFO)]).
  The `ld` at 0x1010025c loads 8 bytes from [sym(rm)] +0xe018 via base at ([sym(rm)]+65536).
  2 such accesses load 4 bytes from abs 0x102bde1c via base s8 (0x102c4340), including `lw` at 0x10100260, `lw` at 0x101003fc.
  The `sd` at 0x10100268 stores 8 bytes to [sym(rm)] +0xe018 via base at ([sym(rm)]+65536) with value ([[sym(rm)]+57368]:8 | 0x1).
  5 such accesses load 8 bytes from [sym(rm)] +0xe018 via base a1 ([sym(rm)]+65536), including `ld` at 0x10100280, `ld` at 0x10100358, `ld` at 0x101003a4.
  2 such accesses load 8 bytes from [sym(rm)] +0x4030 via base t8 ([sym(rm)]), including `ld` at 0x1010028c, `ld` at 0x101002a4.
  2 such accesses store 8 bytes to [sym(rm)] +0x4030 via base t8 ([sym(rm)]), including `sd` at 0x1010029c, `sd` at 0x101002b4.
  The `ld` at 0x101002bc loads 8 bytes from [sym(rm)] +0x4030 via base t1 ([sym(rm)]).
  The `sd` at 0x101002cc stores 8 bytes to [sym(rm)] +0x4030 via base t1 ([sym(rm)]) with value .
  The `ld` at 0x101002d4 loads 8 bytes from [sym(rm)] +0x4030 via base a6 ([sym(rm)]).
  The `sd` at 0x101002e4 stores 8 bytes to [sym(rm)] +0x4030 via base a6 ([sym(rm)]) with value .
  2 such accesses load 8 bytes from [sym(rm)] +0x4030 via base a3 ([sym(rm)]), including `ld` at 0x101002ec, `ld` at 0x101003ac.
  2 such accesses store 8 bytes to [sym(rm)] +0x4030 via base a3 ([sym(rm)]), including `sd` at 0x101002fc, `sd` at 0x101003bc.
  2 such accesses load 8 bytes from [sym(rm)] +0x4030 via base a1 ([sym(rm)]), including `ld` at 0x10100310, `ld` at 0x101003d0.
  4 such accesses load 8 bytes from [sym(rm)] +0xe018 via base a4 ([sym(rm)]+65536), including `ld` at 0x10100338, `ld` at 0x10100380, `ld` at 0x101013c4.
  2 such accesses store 8 bytes to [sym(rm)] +0xe018 via base a4 ([sym(rm)]+65536), including `sd` at 0x10100340, `sd` at 0x1010038c.
  The `lw` at 0x101003dc loads 4 bytes from abs 0x102be688 via base ra (0x102c4340).
  The `lw` at 0x101003e4 loads 4 bytes from sym(g_zbuffer) +0x0 via base ra (sym(g_zbuffer)).
  2 such accesses load 4 bytes from abs 0x102be1e0 via base s5 (0x102c4340), including `lw` at 0x101003f4, `lw` at 0x101011e4.
  The `ld` at 0x1010040c loads 8 bytes from [sym(rm)] +0xe040 via base a6 ([sym(rm)]+65536).
  The `sd` at 0x10100414 stores 8 bytes to [sym(rm)] +0xe040 via base a6 ([sym(rm)]+65536) with value ([[sym(rm)]+57408]:8 | 0x200).
  5 such accesses load 8 bytes from [sym(rm)] +0xe040 via base a4 ([sym(rm)]+65536), including `ld` at 0x10100420, `ld` at 0x10100544, `ld` at 0x101005a4.
  The `sd` at 0x10100428 stores 8 bytes to [sym(rm)] +0xe040 via base a4 ([sym(rm)]+65536) with value (0x10000 | [[sym(rm)]+57408]:8).
  10 such accesses load 8 bytes from [sym(rm)] +0xe040 via base a1 ([sym(rm)]+65536), including `ld` at 0x10100440, `ld` at 0x10100490, `ld` at 0x101004d8.
  The `lw` at 0x10100450 loads 4 bytes from abs 0x102be688 via base v1 (0x102c4340).
  The `lw` at 0x1010045c loads 4 bytes from sym(g_zbuffer) +0x0 via base v1 (sym(g_zbuffer)).
  3 such accesses load 8 bytes from [sym(rm)] +0xe040 via base t2 ([sym(rm)]+65536), including `ld` at 0x10100464, `ld` at 0x101004b0, `ld` at 0x101004fc.
  5 such accesses store 8 bytes to [sym(rm)] +0xe040 via base t2 ([sym(rm)]+65536), including `sd` at 0x10100474, `sd` at 0x101004bc, `sd` at 0x1010151c.
  4 such accesses load 4 bytes from sym(KONAINFO) +0x0 via base s5 (sym(KONAINFO)), including `lw` at 0x10100494, `lw` at 0x101012f8, `lw` at 0x10101428.
  The `lw` at 0x1010049c loads 4 bytes from [sym(KONAINFO)] +0x0 via base a3 ([sym(KONAINFO)]).
  The `lw` at 0x101004e4 loads 4 bytes from abs 0x102be344 via base a4 (0x102c4340).
  The `lw` at 0x101004ec loads 4 bytes from sym(g_perf) +0x0 via base a4 (sym(g_perf)).
  The `sd` at 0x10100504 stores 8 bytes to [sym(rm)] +0xe040 via base t2 ([sym(rm)]+65536) with value ([[sym(rm)]+57408]:8 | 0xe000).
  The `lw` at 0x1010052c loads 4 bytes from abs 0x102be698 via base a4 (0x102c4340).
  The `lw` at 0x10100530 loads 4 bytes from sym(g_fog) +0x0 via base a4 (sym(g_fog)).
  The `sd` at 0x1010054c stores 8 bytes to [sym(rm)] +0xe040 via base a4 ([sym(rm)]+65536) with value ([[sym(rm)]+57408]:8 | 0xe000).
  The `lw` at 0x10100578 loads 4 bytes from abs 0x102bd980 via base t9 (0x102c4340).
  2 such accesses store 8 bytes to [sym(rm)] +0xe040 via base a4 ([sym(rm)]+65536), including `sd` at 0x101005b4, `sd` at 0x101009c4.
  The `lw` at 0x101005d8 loads 4 bytes from abs 0x102bdf00 via base t9 (0x102c4340).
  2 such accesses load 8 bytes from [sym(rm)] +0xa020 via base a4 ([sym(rm)]+65536), including `ld` at 0x101005f8, `ld` at 0x10100634.
  2 such accesses store 8 bytes to [sym(rm)] +0xa020 via base a4 ([sym(rm)]+65536), including `sd` at 0x1010060c, `sd` at 0x10100644.
  2 such accesses load 8 bytes from [sym(rm)] +0xa020 via base a1 ([sym(rm)]+65536), including `ld` at 0x10100624, `ld` at 0x1010065c.
  The `ld` at 0x1010066c loads 8 bytes from [sym(rm)] +0xa0a0 via base a4 ([sym(rm)]+65536).
  The `sd` at 0x10100678 stores 8 bytes to [sym(rm)] +0xa0a0 via base a4 ([sym(rm)]+65536) with value .
  The `ld` at 0x10100690 loads 8 bytes from [sym(rm)] +0xa0a0 via base a1 ([sym(rm)]+65536).
  The `lw` at 0x1010069c loads 4 bytes from abs 0x102be6a0 via base a5 (0x102c4340).
  The `lw` at 0x101006a0 loads 4 bytes from sym(g_logicop) +0x0 via base a5 (sym(g_logicop)).
  9 such accesses load 8 bytes from [sym(rm)] +0xe068 via base a4 ([sym(rm)]+65536), including `ld` at 0x101006b4, `ld` at 0x101006e4, `ld` at 0x10100730.
  The `sd` at 0x101006bc stores 8 bytes to [sym(rm)] +0xe068 via base a4 ([sym(rm)]+65536) with value ([[sym(rm)]+57448]:8 | 0x1).
  9 such accesses load 8 bytes from [sym(rm)] +0xe068 via base a1 ([sym(rm)]+65536), including `ld` at 0x101006d4, `ld` at 0x1010070c, `ld` at 0x10100750.
  7 such accesses store 8 bytes to [sym(rm)] +0xe068 via base a4 ([sym(rm)]+65536), including `sd` at 0x101006f4, `sd` at 0x1010076c, `sd` at 0x101007a0.
  The `lw` at 0x10100718 loads 4 bytes from abs 0x102be694 via base a5 (0x102c4340).
  The `lw` at 0x1010071c loads 4 bytes from sym(g_blend) +0x0 via base a5 (sym(g_blend)).
  The `sd` at 0x10100738 stores 8 bytes to [sym(rm)] +0xe068 via base a4 ([sym(rm)]+65536) with value ([[sym(rm)]+57448]:8 | 0x20).
  The `lw` at 0x101008c0 loads 4 bytes from abs 0x102be33c via base a5 (0x102c4340).
  The `lw` at 0x101008c4 loads 4 bytes from sym(g_count) +0x0 via base a5 (sym(g_count)).
  The `lw` at 0x101008fc loads 4 bytes from abs 0x102be340 via base s1 (0x102c4340).
  The `lw` at 0x10100908 loads 4 bytes from abs 0x102bd3a4 via base s0 (0x102c4340).
  The `lw` at 0x10100914 loads 4 bytes from abs 0x102bcee8 via base a6 (0x102c4340).
  The `lw` at 0x1010091c loads 4 bytes from abs 0x102bde24 via base s7 (0x102c4340).
  The `lwc1` at 0x10100928 loads 4 bytes from abs 0x101b34f8 via base a6 (0x101b3410).
  The `sd` at 0x10100934 stores 8 bytes to [sym(rm)] +0xa040 via base t2 ([sym(rm)]+65536) with value .
  2 such accesses load 8 bytes from [sym(rm)] +0xa040 via base a1 ([sym(rm)]+65536), including `ld` at 0x1010094c, `ld` at 0x10100f04.
  The `lw` at 0x10100958 loads 4 bytes from abs 0x102be688 via base a3 (0x102c4340).
  The `lw` at 0x1010095c loads 4 bytes from sym(g_zbuffer) +0x0 via base a3 (sym(g_zbuffer)).
  The `lw` at 0x10100970 loads 4 bytes from abs 0x102be68c via base a4 (0x102c4340).
  The `lw` at 0x10100974 loads 4 bytes from sym(g_random) +0x0 via base a4 (sym(g_random)).
  The `lw` at 0x101009e8 loads 4 bytes from abs 0x102be698 via base a6 (0x102c4340).
  The `lw` at 0x101009ec loads 4 bytes from sym(g_fog) +0x0 via base a6 (sym(g_fog)).
  The `lw` at 0x10100a18 loads 4 bytes from abs 0x102be690 via base t0 (0x102c4340).
  The `lw` at 0x10100a1c loads 4 bytes from sym(g_smooth) +0x0 via base t0 (sym(g_smooth)).
  7 such accesses load 4 bytes from abs 0x102bde20 via base t9 (0x102c4340), including `lw` at 0x10100a94, `lw` at 0x10100af4, `lw` at 0x10100b50.
  The `lw` at 0x10100b74 loads 4 bytes from abs 0x102be344 via base at (0x102c4340).
  The `lw` at 0x10100b7c loads 4 bytes from sym(g_perf) +0x0 via base at (sym(g_perf)).
  The `lw` at 0x10100c64 loads 4 bytes from abs 0x102be33c via base a2 (0x102c4340).
  The `lw` at 0x10100c6c loads 4 bytes from sym(g_count) +0x0 via base a2 (sym(g_count)).
  8 such accesses load 4 bytes from sym(g_size) +0x0 via base s1 (sym(g_size)), including `lw` at 0x10100c8c, `lw` at 0x10100cb4, `lw` at 0x10100cdc.
  The `lw` at 0x10100e9c loads 4 bytes from abs 0x102be680 via base s5 (0x102c4340).
  The `lw` at 0x10100ea0 loads 4 bytes from sym(g_screendoor) +0x0 via base s5 (sym(g_screendoor)).
  The `ld` at 0x10100ee0 loads 8 bytes from [sym(rm)] +0xa040 via base t2 ([sym(rm)]+65536).
  The `sd` at 0x10100ee8 stores 8 bytes to [sym(rm)] +0xa040 via base t2 ([sym(rm)]+65536) with value ([[sym(rm)]+41024]:8 | 0x4).
  The `lw` at 0x10100f14 loads 4 bytes from abs 0x102bd450 via base t9 (0x102c4340).
  The `lw` at 0x10100f28 loads 4 bytes from abs 0x102bcefc via base s5 (0x102c4340).
  The `ld` at 0x10100f44 loads 8 bytes from abs 0x10344a70 via base s5 (0x10344a48).
  3 such accesses load 4 bytes from abs 0x102bcee8 via base a1 (0x102c4340), including `lw` at 0x10100f94, `lw` at 0x10101200, `lw` at 0x10101258.
  The `lw` at 0x10100fa8 loads 4 bytes from abs 0x102bd744 via base s5 (0x102c4340).
  The `sw` at 0x10100fcc stores 4 bytes to ? (base unknown) via base a3 (?) with value .
  The `lw` at 0x10100fe8 loads 4 bytes from abs 0x102bd740 via base t9 (0x102c4340).
  8 such accesses load 4 bytes from abs 0x102bcee8 via base a0 (0x102c4340), including `lw` at 0x10100fec, `lw` at 0x101012b0, `lw` at 0x10101328.
  The `lw` at 0x10101004 loads 4 bytes from abs 0x102bcefc via base a2 (0x102c4340).
  The `sd` at 0x10101010 stores 8 bytes to abs 0x10344a70 via base a2 (0x10344a48) with value .
  The `lw` at 0x101010c8 loads 4 bytes from abs 0x102bcf00 via base t9 (0x102c4340).
  The `lw` at 0x101011c4 loads 4 bytes from abs 0x102bd5b8 via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bd744 via base t9 (0x102c4340), including `lw` at 0x101011f8, `lw` at 0x10101260.
  The `lw` at 0x10101230 loads 4 bytes from ? (base unknown) via base a0 (?).
  7 such accesses load 4 bytes from abs 0x102bd730 via base t9 (0x102c4340), including `lw` at 0x101012ac, `lw` at 0x10101324, `lw` at 0x10101454.
  3 such accesses load 4 bytes from [sym(KONAINFO)] +0x0 via base a0 ([sym(KONAINFO)]), including `lw` at 0x10101304, `lw` at 0x10101434, `lw` at 0x1010149c.
  4 such accesses load 4 bytes from abs 0x102bd764 via base s0 (0x102c4340), including `lw` at 0x10101344, `lw` at 0x101014dc, `lw` at 0x101015f8.
  The `sd` at 0x101013cc stores 8 bytes to [sym(rm)] +0xe018 via base a4 ([sym(rm)]+65536) with value ([[sym(rm)]+57368]:8 | 0x3000).
  The `sd` at 0x10101404 stores 8 bytes to [sym(rm)] +0xe018 via base a4 ([sym(rm)]+65536) with value ([[sym(rm)]+57368]:8 | 0x2).
  2 such accesses load 4 bytes from abs 0x102bd764 via base t9 (0x102c4340), including `lw` at 0x10101474, `lw` at 0x101016a4.
  The `sw` at 0x10101514 stores 4 bytes to sym(g_multisample) +0x0 via base s0 (sym(g_multisample)) with value 0x4.
  The `sd` at 0x10101560 stores 8 bytes to [sym(rm)] +0xe040 via base a4 ([sym(rm)]+65536) with value ([[sym(rm)]+57408]:8 | 0x1000).
  The `jal` at 0x10100128 calls `tbuInitTexture [0x1014ef24]` with a0=sp-5408, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10100148 calls `tbuGenPattern [0x1014ffe8]` with a0=sp-5408, a1=0x2, a2=0x40, a3=0x40.
  The `jal` at 0x1010016c calls `tbuGenMipmap [0x1014fac4]` with a0=sp-5408, a1=0x1, a2=0x0, a3=0x0, a4=0x0.
  The `jal` at 0x101001a4 calls `tbuLoadMipmap [0x1014694c]` with a0=sp-5408, a1=0x10, a2=0x1, a3=0x20, a4=0x30, a5=0x1, a6=[sym(rm)].
  The `jal` at 0x101001bc calls `tbuBindTexture [0x1014c6a8]` with a0=sp-5408, a1=[sym(rm)], a2=(unknown), a3=(unknown).
  The `jal` at 0x101001d0 calls `tbuDestroyTexture [0x1015c930]` with a0=sp-5408, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101001e8 calls `tbuTexOnOff [0x10154b68]` with a0=0x1, a1=[sym(rm)], a2=(unknown), a3=(unknown).
  The `jal` at 0x1010027c calls `tbRegWrite [0x1013eb3c]` with a0=0x1c03, a1=[[sym(rm)]+57368]:8, a2=[sym(rm)], a3=(unknown).
  The `jal` at 0x1010030c calls `tbRegWrite [0x1013eb3c]` with a0=0x806, a1=[[sym(rm)]+16432]:8, a2=(unknown), a3=[sym(rm)], a4=-0x301, a6=[sym(rm)], a7=-0x4.
  The `jal` at 0x10100354 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c03, a1=[[sym(rm)]+57368]:8, a2=[sym(rm)], a3=(unknown), a4=[sym(rm)]+65536.
  The `jal` at 0x101003a0 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c03, a1=[[sym(rm)]+57368]:8, a2=[sym(rm)], a3=(unknown), a4=[sym(rm)]+65536, a5=-0x3, a6=0x2.
  The `jal` at 0x101003cc calls `tbRegWrite [0x1013eb3c]` with a0=0x806, a1=[[sym(rm)]+16432]:8, a2=(unknown), a3=[sym(rm)], a4=-0xd.
  The `jal` at 0x1010043c calls `tbRegWrite [0x1013eb3c]` with a0=0x1c08, a1=[[sym(rm)]+57408]:8, a2=[sym(rm)], a3=(0x10000 | [[sym(rm)]+57408]:8), a4=[sym(rm)]+65536, a5=([[sym(rm)]+57408]:8 | 0x200), a6=[sym(rm)]+65536.
  The `jal` at 0x1010048c calls `tbRegWrite [0x1013eb3c]` with a0=0x1c08, a1=[[sym(rm)]+57408]:8, a2=[sym(rm)], a3=(unknown).
  The `jal` at 0x101004d4 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c08, a1=[[sym(rm)]+57408]:8, a2=[sym(rm)], a3=(unknown), a4=0x2.
  The `jal` at 0x1010051c calls `tbRegWrite [0x1013eb3c]` with a0=0x1c08, a1=[[sym(rm)]+57408]:8, a2=[sym(rm)], a3=([[sym(rm)]+57408]:8 | 0xe000), a4=[sym(g_perf)].
  The `jal` at 0x10100560 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c08, a1=[[sym(rm)]+57408]:8, a2=[sym(rm)], a3=([[sym(rm)]+57408]:8 | 0xe000), a4=[sym(rm)]+65536.
  The `jal` at 0x1010058c calls `draw_rect [0x100cea0c]` with a0=0x0, a1=0x0, a2=0x500, a3=0x400, a4=0x800, a5=0x800, a6=0x800.
  The `jal` at 0x101005c8 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c08, a1=[[sym(rm)]+57408]:8, a2=[sym(rm)], a3=(unknown), a4=[sym(rm)]+65536, a5=-0xe001.
  The `jal` at 0x101005e0 calls `tbuEnableFog [0x101442b0]` with a0=0x1, a1=[sym(rm)], a2=(unknown), a3=(unknown).
  The `jal` at 0x10100620 calls `tbRegWrite [0x1013eb3c]` with a0=0x1404, a1=[[sym(rm)]+40992]:8, a2=[sym(rm)], a3=(unknown), a4=[sym(rm)]+65536, a5=0x800000.
  The `jal` at 0x10100658 calls `tbRegWrite [0x1013eb3c]` with a0=0x1404, a1=[[sym(rm)]+40992]:8, a2=[sym(rm)], a3=(unknown), a4=[sym(rm)]+65536.
  The `jal` at 0x1010068c calls `tbRegWrite [0x1013eb3c]` with a0=0x1414, a1=[[sym(rm)]+41120]:8, a2=[sym(rm)], a3=(unknown), a4=[sym(rm)]+65536.
  The `jal` at 0x101006d0 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c0d, a1=[[sym(rm)]+57448]:8, a2=[sym(rm)], a3=([[sym(rm)]+57448]:8 | 0x1), a4=[sym(rm)]+65536, a5=[sym(g_logicop)].
  The `jal` at 0x10100708 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c0d, a1=[[sym(rm)]+57448]:8, a2=[sym(rm)], a3=(unknown), a4=[sym(rm)]+65536, a5=-0x1f.
  The `jal` at 0x1010074c calls `tbRegWrite [0x1013eb3c]` with a0=0x1c0d, a1=[[sym(rm)]+57448]:8, a2=[sym(rm)], a3=([[sym(rm)]+57448]:8 | 0x20), a4=[sym(rm)]+65536, a5=[sym(g_blend)].
  The `jal` at 0x10100780 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c0d, a1=[[sym(rm)]+57448]:8, a2=[sym(rm)], a3=(unknown), a4=[sym(rm)]+65536, a5=-0x1c1.
  The `jal` at 0x101007b4 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c0d, a1=[[sym(rm)]+57448]:8, a2=[sym(rm)], a3=(unknown), a4=[sym(rm)]+65536, a5=-0xe01.
  The `jal` at 0x101007f0 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c0d, a1=[[sym(rm)]+57448]:8, a2=[sym(rm)], a3=(unknown), a4=[sym(rm)]+65536, a5=-0xf001.
  The `jal` at 0x10100830 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c0d, a1=[[sym(rm)]+57448]:8, a2=[sym(rm)], a3=(unknown), a4=[sym(rm)]+65536, a5=0xa0000.
  The `jal` at 0x10100870 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c0d, a1=[[sym(rm)]+57448]:8, a2=[sym(rm)], a3=(unknown), a4=[sym(rm)]+65536, a5=0xb00000.
  The `jal` at 0x101008b0 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c0d, a1=[[sym(rm)]+57448]:8, a2=[sym(rm)], a3=(unknown), a4=[sym(rm)]+65536, a5=0xb000000.
  The `jal` at 0x10100948 calls `tbRegWrite [0x1013eb3c]` with a0=0x1408, a1=[[sym(rm)]+41024]:8, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10100984 calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=[sym(g_zbuffer)], a4=[sym(g_random)], a6=0x0.
  The `jal` at 0x101009d8 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c08, a1=[[sym(rm)]+57408]:8, a2=[sym(rm)], a3=(unknown), a4=[sym(rm)]+65536.
  The `jal` at 0x10100a78 calls `tbTextureCoord [0x1013ecf0]` with a0=0x0, a1=0x0, a2=0x0, a3=(unknown), a6=[sym(g_fog)]; fp f15=0x3f800000.
  The `jal` at 0x10100aac calls `tbVertex [0x1013ebcc]` with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10100ad0 calls `tbTextureCoord [0x1013ecf0]` with a0=0x800000, a1=0x0, a2=0x0, a3=(unknown); fp f15=0x3f800000.
  The `jal` at 0x10100b08 calls `tbVertex [0x1013ebcc]` with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10100b2c calls `tbTextureCoord [0x1013ecf0]` with a0=0x0, a1=0x800000, a2=0x0, a3=(unknown); fp f15=0x3f800000.
  The `jal` at 0x10100b64 calls `tbVertex [0x1013ebcc]` with a0=0x6, a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10100c84 calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10100cac calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown), a4=([sym(g_size)] << 0x8).
  The `jalr` at 0x10100cd4 calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown), a6=([sym(g_size)] << 0x8).
  The `jalr` at 0x10100cf8 calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10100d1c calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10100d40 calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10100d68 calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10100d8c calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10100db4 calls `random` with a0=(unknown), a1=([sym(g_size)] << 0x8), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10100dc0 calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10100dd0 calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10100ddc calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10100de8 calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10100dfc calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10100e08 calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10100e1c calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10100e28 calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10100e3c calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10100e48 calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10100e5c calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10100e68 calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10100e7c calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10100e98 calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10100eb4 calls `random` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10100f00 calls `tbRegWrite [0x1013eb3c]` with a0=0x1408, a1=[[sym(rm)]+41024]:8, a2=[sym(rm)], a3=([[sym(rm)]+41024]:8 | 0x4).
  The `jalr` at 0x10100f24 calls `gettimeofday` with a0=sp-344, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10100fd0 calls `kt_output_dbug [0x10046d74]` with a0=0x1, a1=0x101b3500, a2=(unknown), a3=(unknown), a6=0x14.
  The `jal` at 0x10100ff0 calls `kt_output_trce [0x10046b88]` with a0=0x101b3520, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10101058 calls `tbTextureCoord [0x1013ecf0]` with a0=0x0, a1=0x0, a2=0x0, a3=(unknown); fp f15=0x3f800000.
  The `jal` at 0x1010108c calls `tbVertex [0x1013ebcc]` with a0=0x2, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x101010b4 calls `tbTextureCoord [0x1013ecf0]` with a0=0x0, a1=0x0, a2=0x0, a3=(unknown), a6=[sym(g_fog)]; fp f15=0x3f800000.
  The `jal` at 0x101010dc calls (unnamed) [0x10101ee4] with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown), a4=sp-352, a5=sp-348.
  The `jal` at 0x10101110 calls `tbVertex [0x1013ebcc]` with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10101144 calls `tbVertex [0x1013ebcc]` with a0=0xe, a1=0x0, a2=(unknown), a3=(unknown), a4=0x0, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0x10101168 calls `tbTextureCoord [0x1013ecf0]` with a0=0x0, a1=0x800000, a2=0x0, a3=(unknown); fp f15=0x3f800000.
  The `jal` at 0x101011a0 calls `tbVertex [0x1013ebcc]` with a0=0x4, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x101011e0 calls `waitDrawLoadDone [0x1002c1d0]` with a0=a1 at entry (arg1), a1=0x2, a2=(unknown), a3=(unknown).
  The `jal` at 0x10101210 calls `kt_output_dbug [0x10046d74]` with a0=0x1, a1=0x101b3538, a2=(unknown), a3=(unknown).
  The `jal` at 0x10101274 calls `kt_output_dbug [0x10046d74]` with a0=0x1, a1=0x101b3558, a2=(unknown), a3=(unknown).
  The `jal` at 0x101012b4 calls `kt_output_info [0x10046374]` with a0=0x101b3588, a1=[sym(g_texture)], a2=0x2, a3=0x4.
  The `jal` at 0x10101334 calls `kt_output_info [0x10046374]` with a0=0x101b35b0, a1=(unknown), a2=0x104, a3=0x4.
  The `jal` at 0x10101354 calls `kt_code_result [0x10048068]` with a0=0x2, a1=0x0, a2=0x2, a3=(unknown).
  The `jal` at 0x10101368 calls `kt_code_result [0x10048068]` with a0=0x2, a1=0x1, a2=0x2, a3=(unknown).
  The `jal` at 0x1010137c calls `kt_code_result [0x10048068]` with a0=0x2, a1=0x2, a2=0x2, a3=(unknown).
  The `jal` at 0x10101390 calls `kt_code_result [0x10048068]` with a0=0x2, a1=0x3, a2=0x2, a3=(unknown).
  The `jal` at 0x101013e0 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c03, a1=[[sym(rm)]+57368]:8, a2=[sym(rm)], a3=([[sym(rm)]+57368]:8 | 0x3000), a4=[sym(rm)]+65536.
  The `jal` at 0x10101418 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c03, a1=[[sym(rm)]+57368]:8, a2=[sym(rm)], a3=([[sym(rm)]+57368]:8 | 0x2), a4=[sym(rm)]+65536, a5=0x1, a6=0x2.
  The `jal` at 0x10101464 calls `kt_output_info [0x10046374]` with a0=0x101b35b0, a1=(unknown), a2=0x82, a3=(unknown).
  The `jal` at 0x10101480 calls `kt_code_result [0x10048068]` with a0=0x2, a1=0x0, a2=0x2, a3=(unknown).
  The `jal` at 0x101014cc calls `kt_output_info [0x10046374]` with a0=0x101b35b0, a1=(unknown), a2=0x104, a3=(unknown).
  The `jal` at 0x101014ec calls `kt_code_result [0x10048068]` with a0=0x2, a1=0x0, a2=0x2, a3=(unknown).
  The `jal` at 0x10101500 calls `kt_code_result [0x10048068]` with a0=0x2, a1=0x1, a2=0x2, a3=(unknown).
  The `jal` at 0x10101534 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c08, a1=[[sym(rm)]+57408]:8, a2=[sym(rm)], a3=(unknown).
  The `jal` at 0x10101574 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c08, a1=[[sym(rm)]+57408]:8, a2=[sym(rm)], a3=([[sym(rm)]+57408]:8 | 0x1000), a4=[sym(rm)]+65536.
  The `jal` at 0x101015ac calls `tbRegWrite [0x1013eb3c]` with a0=0x1c08, a1=[[sym(rm)]+57408]:8, a2=[sym(rm)], a3=(unknown), a4=[sym(g_perf)].
  The `jal` at 0x101015e8 calls `kt_output_info [0x10046374]` with a0=0x101b35b0, a1=(unknown), a2=0x17c, a3=0x4.
  The `jal` at 0x10101608 calls `kt_code_result [0x10048068]` with a0=0x2, a1=0x0, a2=0x2, a3=(unknown).
  The `jal` at 0x1010161c calls `kt_code_result [0x10048068]` with a0=0x2, a1=0x1, a2=0x2, a3=(unknown).
  The `jal` at 0x10101630 calls `kt_code_result [0x10048068]` with a0=0x2, a1=0x2, a2=0x2, a3=(unknown).
  The `jal` at 0x10101644 calls `kt_code_result [0x10048068]` with a0=0x2, a1=0x3, a2=0x2, a3=(unknown).
  The `jal` at 0x10101694 calls `kt_output_info [0x10046374]` with a0=0x101b35b0, a1=(unknown), a2=0xbe, a3=(unknown).
  The `jal` at 0x101016b0 calls `kt_code_result [0x10048068]` with a0=0x2, a1=0x0, a2=0x2, a3=(unknown).
  The `jal` at 0x101016ec calls `kt_output_info [0x10046374]` with a0=0x101b35b0, a1=(unknown), a2=0x17c, a3=(unknown).
  The `jal` at 0x1010170c calls `kt_code_result [0x10048068]` with a0=0x2, a1=0x0, a2=0x2, a3=(unknown).
  The `jal` at 0x10101720 calls `kt_code_result [0x10048068]` with a0=0x2, a1=0x1, a2=0x2, a3=(unknown).
  The `beq` at 0x10100114 goes to 0x101001f0 when at(=[sym(g_texture)]) == 0 and falls through when at(=[sym(g_texture)]) != 0.
  The `beq` at 0x10100220 goes to 0x101003d4 when ra(=[sym(g_multisample)]) == 0 and falls through when ra(=[sym(g_multisample)]) != 0.
  The `beq` at 0x10100240 goes to 0x10101510 when t8(=[[sym(KONAINFO)]]) == t9(=0x2) and falls through when t8(=[[sym(KONAINFO)]]) != t9(=0x2).
  The `beq` at 0x1010031c goes to 0x101013b8 when v0(=[sym(g_multisample)]) == ra(=0x2) and falls through when v0(=[sym(g_multisample)]) != ra(=0x2).
  The `beq` at 0x10100324 goes to 0x101013bc when v0(=[sym(g_multisample)]) == at(=0x4) and falls through when v0(=[sym(g_multisample)]) != at(=0x4).
  The `beq` at 0x10100364 goes to 0x101013f0 when v0(=[sym(g_multisample)]) == a5(=0x1) and falls through when v0(=[sym(g_multisample)]) != a5(=0x1).
  The `beq` at 0x1010036c goes to 0x101013f4 when v0(=[sym(g_multisample)]) == a6(=0x2) and falls through when v0(=[sym(g_multisample)]) != a6(=0x2).
  The `beq` at 0x101003f8 goes to 0x10100524 when ra(=[sym(g_zbuffer)]) == 0 and falls through when ra(=[sym(g_zbuffer)]) != 0.
  The `beq` at 0x1010046c goes to 0x10101518 when v1(=[sym(g_zbuffer)]) == a0(=0x2) and falls through when v1(=[sym(g_zbuffer)]) != a0(=0x2).
  The `beq` at 0x101004ac goes to 0x10101544 when a3(=[[sym(KONAINFO)]]) == a4(=0x2) and falls through when a3(=[[sym(KONAINFO)]]) != a4(=0x2).
  The `beq` at 0x101004f8 goes to 0x10101584 when a4(=[sym(g_perf)]) == 0 and falls through when a4(=[sym(g_perf)]) != 0.
  The `beq` at 0x10100534 goes to 0x10100694 when a4(=[sym(g_fog)]) == 0 and falls through when a4(=[sym(g_fog)]) != 0.
  The `beq` at 0x101006a4 goes to 0x10100710 when a5(=[sym(g_logicop)]) == 0 and falls through when a5(=[sym(g_logicop)]) != 0.
  The `beq` at 0x10100720 goes to 0x101008b8 when a5(=[sym(g_blend)]) == 0 and falls through when a5(=[sym(g_blend)]) != 0.
  The `blez` at 0x101008c8 goes to 0x101013a8 when a5(=[sym(g_count)]) <= 0 (signed) and falls through when a5(=[sym(g_count)]) > 0 (signed).
  The `beq` at 0x10100960 goes to 0x101009e4 when a3(=[sym(g_zbuffer)]) == 0 and falls through when a3(=[sym(g_zbuffer)]) != 0.
  The `beq` at 0x10100978 goes to 0x101009e0 when a4(=[sym(g_random)]) == 0 and falls through when a4(=[sym(g_random)]) != 0.
  The `beq` at 0x101009f8 goes to 0x10100a10 when a6(=[sym(g_fog)]) == 0 and falls through when a6(=[sym(g_fog)]) != 0.
  The `beq` at 0x10100a38 goes to 0x10101014 when t0(=[sym(g_smooth)]) == 0 and falls through when t0(=[sym(g_smooth)]) != 0.
  The `beq` at 0x10100a48 goes to 0x10101040 when t1(=a0) == t2(=0x3) and falls through when t1(=a0) != t2(=0x3).
  The `beq` at 0x10100a58 goes to 0x1010109c when t3(=a0) == t8(=0x2) and falls through when t3(=a0) != t8(=0x2).
  The `beq` at 0x10100a60 goes to 0x10100a84 when v0(=[sym(g_texture)]) == 0 and falls through when v0(=[sym(g_texture)]) != 0.
  The `beq` at 0x10100ab8 goes to 0x10100adc when ra(=[sym(g_texture)]) == 0 and falls through when ra(=[sym(g_texture)]) != 0.
  The `beq` at 0x10100b14 goes to 0x10100b34 when at(=[sym(g_texture)]) == 0 and falls through when at(=[sym(g_texture)]) != 0.
  The `beq` at 0x10100b88 goes to 0x10100c5c when at(=[sym(g_perf)]) == 0 and falls through when at(=[sym(g_perf)]) != 0.
  The `bltz` at 0x10100c18 goes to 0x101011b0 when a7(?) < 0 (signed) and falls through when a7(?) >= 0 (signed).
  The `beq` at 0x10100c54 goes to 0x10100f10 when at(?) == v0(?) and falls through when at(?) != v0(?).
  The `beq` at 0x10100c7c goes to 0x101011b8 when a1(?) >= a2(=[sym(g_count)]) (signed) and falls through when a1(?) < a2(=[sym(g_count)]) (signed).
  The `beq` at 0x10100ea8 goes to 0x10100950 when t8(=[sym(g_screendoor)]) == 0 and falls through when t8(=[sym(g_screendoor)]) != 0.
  The `bne` at 0x10100edc goes to 0x1010092c when ra(?) != 0 and falls through when ra(?) == 0.
  The `beq` at 0x10100f58 goes to 0x10100ff8 when v0(=[0x10344a70]:8) == 0 and falls through when v0(=[0x10344a70]:8) != 0.
  The `beq` at 0x10101040 goes to 0x10101064 when v0(=[sym(g_texture)]) == 0 and falls through when v0(=[sym(g_texture)]) != 0.
  The `beq` at 0x1010109c goes to 0x101010c0 when v0(=[sym(g_texture)]) == 0 and falls through when v0(=[sym(g_texture)]) != 0.
  The `beq` at 0x10101150 goes to 0x10101174 when ra(=[sym(g_texture)]) == 0 and falls through when ra(=[sym(g_texture)]) != 0.
  The `bne` at 0x1010121c goes to 0x101013a0 when s0(?) < 0x2 (signed) and falls through when s0(?) >= 0x2 (signed).
  The `bne` at 0x1010123c goes to 0x1010122c when a1(?) < s0(?) (signed) and falls through when a1(?) >= s0(?) (signed).
  The `beq` at 0x1010127c goes to 0x10101428 when s6(?) == s7(=0x1) and falls through when s6(?) != s7(=0x1).
  The `beq` at 0x10101288 goes to 0x10101490 when s6(?) == a2(=0x2) and falls through when s6(?) != a2(=0x2).
  The `beq` at 0x10101294 goes to 0x101012f8 when s6(?) == a3(=0x4) and falls through when s6(?) != a3(=0x4).
  The `beq` at 0x10101300 goes to 0x101015bc when a1(=[sym(g_texture)]) == 0 and falls through when a1(=[sym(g_texture)]) != 0.
  The `beq` at 0x10101308 goes to 0x10101654 when a0(=[[sym(KONAINFO)]]) == v0(=0x6) and falls through when a0(=[[sym(KONAINFO)]]) != v0(=0x6).
  The `beq` at 0x10101310 goes to 0x101012bc when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x10101430 goes to 0x10101668 when a1(=[sym(g_texture)]) == 0 and falls through when a1(=[sym(g_texture)]) != 0.
  The `beq` at 0x10101438 goes to 0x10101730 when a0(=[[sym(KONAINFO)]]) == v0(=0x6) and falls through when a0(=[[sym(KONAINFO)]]) != v0(=0x6).
  The `beq` at 0x10101440 goes to 0x101012bc when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x10101498 goes to 0x101016c0 when a1(=[sym(g_texture)]) == 0 and falls through when a1(=[sym(g_texture)]) != 0.
  The `beq` at 0x101014a0 goes to 0x10101744 when a0(=[[sym(KONAINFO)]]) == v0(=0x6) and falls through when a0(=[[sym(KONAINFO)]]) != v0(=0x6).
  The `beq` at 0x101014a8 goes to 0x101012bc when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x101015bc goes to 0x10101758 when a0(=[[sym(KONAINFO)]]) == v0(=0x6) and falls through when a0(=[[sym(KONAINFO)]]) != v0(=0x6).
  The `beq` at 0x101015c4 goes to 0x101012bc when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x10101658 goes to 0x101012c0 when s1(?) >= 0x1ba (signed) and falls through when s1(?) < 0x1ba (signed).
  The `beq` at 0x10101668 goes to 0x1010176c when a0(=[[sym(KONAINFO)]]) == v0(=0x6) and falls through when a0(=[[sym(KONAINFO)]]) != v0(=0x6).
  The `beq` at 0x10101670 goes to 0x101012bc when t9(?) == 0 and falls through when t9(?) != 0.
  The `beq` at 0x101016c0 goes to 0x10101780 when a0(=[[sym(KONAINFO)]]) == v0(=0x6) and falls through when a0(=[[sym(KONAINFO)]]) != v0(=0x6).
  The `beq` at 0x101016c8 goes to 0x101012bc when ra(?) == 0 and falls through when ra(?) != 0.
  The `beq` at 0x10101734 goes to 0x101012c0 when s1(?) >= 0xdd (signed) and falls through when s1(?) < 0xdd (signed).
  The `beq` at 0x10101748 goes to 0x101012c0 when s1(?) >= 0x1ba (signed) and falls through when s1(?) < 0x1ba (signed).
  The `beq` at 0x1010175c goes to 0x101012c0 when s1(?) >= 0x286 (signed) and falls through when s1(?) < 0x286 (signed).
  The `beq` at 0x10101770 goes to 0x101012c0 when s1(?) >= 0x143 (signed) and falls through when s1(?) < 0x143 (signed).
  The `beq` at 0x10101784 goes to 0x101012c0 when s1(?) >= 0x286 (signed) and falls through when s1(?) < 0x286 (signed).
  The return at 0x101012f0 has v0 = ?.
- `aaspoke` in `usr/diags/IR/bin/irsaudit` at 0x1010274c (n32).
  It occupies 2956 bytes.
  The `lw` at 0x10102774 loads 4 bytes from abs 0x102bd978 via base t9 (0x102c4340).
  The `lw` at 0x1010279c loads 4 bytes from abs 0x102be1e0 via base t8 (0x102c4340).
  The `lw` at 0x101027a0 loads 4 bytes from abs 0x102be628 via base s3 (0x102c4340).
  The `lw` at 0x101027a4 loads 4 bytes from sym(KONAINFO) +0x0 via base t8 (sym(KONAINFO)).
  The `sw` at 0x101027a8 stores 4 bytes to sym(rm) +0x0 via base s3 (sym(rm)) with value ret(mytbuInit).
  The `lw` at 0x101027b4 loads 4 bytes from [sym(KONAINFO)] +0x0 via base t8 ([sym(KONAINFO)]).
  The `ld` at 0x101027c4 loads 8 bytes from ret(mytbuInit) +0xe000 via base t9 (ret(mytbuInit)+65536).
  The `lw` at 0x101027d4 loads 4 bytes from abs 0x102bde1c via base s0 (0x102c4340).
  The `sd` at 0x101027e4 stores 8 bytes to ret(mytbuInit) +0xe000 via base t9 (ret(mytbuInit)+65536) with value .
  52 such accesses load 4 bytes from sym(rm) +0x0 via base s3 (sym(rm)), including `lw` at 0x101027e8, `lw` at 0x10102804, `lw` at 0x10102818.
  2 such accesses load 8 bytes from [sym(rm)] +0xe000 via base a1 ([sym(rm)]+65536), including `ld` at 0x10102800, `ld` at 0x10102880.
  The `ld` at 0x1010280c loads 8 bytes from [sym(rm)] +0xe000 via base t3 ([sym(rm)]+65536).
  The `sd` at 0x10102814 stores 8 bytes to [sym(rm)] +0xe000 via base t3 ([sym(rm)]+65536) with value ([[sym(rm)]+57344]:8 | 0x40).
  The `ld` at 0x10102820 loads 8 bytes from [sym(rm)] +0xe000 via base t1 ([sym(rm)]+65536).
  The `sd` at 0x10102828 stores 8 bytes to [sym(rm)] +0xe000 via base t1 ([sym(rm)]+65536) with value ([[sym(rm)]+57344]:8 | 0x80).
  The `ld` at 0x10102834 loads 8 bytes from [sym(rm)] +0xe000 via base a7 ([sym(rm)]+65536).
  The `sd` at 0x1010283c stores 8 bytes to [sym(rm)] +0xe000 via base a7 ([sym(rm)]+65536) with value ([[sym(rm)]+57344]:8 | 0x100).
  The `ld` at 0x10102848 loads 8 bytes from [sym(rm)] +0xe000 via base a5 ([sym(rm)]+65536).
  The `sd` at 0x10102850 stores 8 bytes to [sym(rm)] +0xe000 via base a5 ([sym(rm)]+65536) with value ([[sym(rm)]+57344]:8 | 0x200).
  The `ld` at 0x1010285c loads 8 bytes from [sym(rm)] +0xe000 via base a3 ([sym(rm)]+65536).
  The `sd` at 0x10102868 stores 8 bytes to [sym(rm)] +0xe000 via base a3 ([sym(rm)]+65536) with value .
  2 such accesses load 8 bytes from [sym(rm)] +0x4030 via base a3 ([sym(rm)]), including `ld` at 0x1010288c, `ld` at 0x101028b8.
  2 such accesses store 8 bytes to [sym(rm)] +0x4030 via base a3 ([sym(rm)]), including `sd` at 0x1010289c, `sd` at 0x101028c8.
  2 such accesses load 8 bytes from [sym(rm)] +0x4030 via base a1 ([sym(rm)]), including `ld` at 0x101028b0, `ld` at 0x101028dc.
  The `ld` at 0x101028ec loads 8 bytes from [sym(rm)] +0x1fe88 via base a3 ([sym(rm)]+131072).
  The `sd` at 0x101028fc stores 8 bytes to [sym(rm)] +0x1fe88 via base a3 ([sym(rm)]+131072) with value .
  The `ld` at 0x10102914 loads 8 bytes from [sym(rm)] +0x1fe88 via base a1 ([sym(rm)]+131072).
  The `ld` at 0x10102920 loads 8 bytes from [sym(rm)] +0x1fe10 via base a5 ([sym(rm)]+131072).
  The `sd` at 0x1010292c stores 8 bytes to [sym(rm)] +0x1fe10 via base a5 ([sym(rm)]+131072) with value .
  The `ld` at 0x1010293c loads 8 bytes from [sym(rm)] +0x1fe10 via base a3 ([sym(rm)]+131072).
  The `sd` at 0x10102950 stores 8 bytes to [sym(rm)] +0x1fe10 via base a3 ([sym(rm)]+131072) with value .
  The `ld` at 0x10102968 loads 8 bytes from [sym(rm)] +0x1fe10 via base a1 ([sym(rm)]+131072).
  The `ld` at 0x10102974 loads 8 bytes from [sym(rm)] +0x1fe18 via base a5 ([sym(rm)]+131072).
  The `sd` at 0x10102980 stores 8 bytes to [sym(rm)] +0x1fe18 via base a5 ([sym(rm)]+131072) with value .
  The `ld` at 0x10102990 loads 8 bytes from [sym(rm)] +0x1fe18 via base a3 ([sym(rm)]+131072).
  The `sd` at 0x101029a4 stores 8 bytes to [sym(rm)] +0x1fe18 via base a3 ([sym(rm)]+131072) with value .
  The `ld` at 0x101029bc loads 8 bytes from [sym(rm)] +0x1fe18 via base a1 ([sym(rm)]+131072).
  The `ld` at 0x101029c4 loads 8 bytes from [sym(rm)] +0x4038 via base a3 ([sym(rm)]).
  The `sd` at 0x101029d0 stores 8 bytes to [sym(rm)] +0x4038 via base a3 ([sym(rm)]) with value .
  The `ld` at 0x101029e4 loads 8 bytes from [sym(rm)] +0x4038 via base a1 ([sym(rm)]).
  The `ld` at 0x101029ec loads 8 bytes from [sym(rm)] +0x4040 via base a3 ([sym(rm)]).
  The `sd` at 0x101029f8 stores 8 bytes to [sym(rm)] +0x4040 via base a3 ([sym(rm)]) with value .
  The `ld` at 0x10102a10 loads 8 bytes from [sym(rm)] +0x4040 via base a1 ([sym(rm)]).
  The `sd` at 0x10102a20 stores 8 bytes to [sym(rm)] +0x1ffb0 via base a2 ([sym(rm)]+131072) with value 0x1.
  The `ld` at 0x10102a38 loads 8 bytes from [sym(rm)] +0x1ffb0 via base a1 ([sym(rm)]+131072).
  The `ld` at 0x10102a44 loads 8 bytes from [sym(rm)] +0xe010 via base v1 ([sym(rm)]+65536).
  The `sd` at 0x10102a4c stores 8 bytes to [sym(rm)] +0xe010 via base v1 ([sym(rm)]+65536) with value ([[sym(rm)]+57360]:8 | 0xf).
  The `ld` at 0x10102a58 loads 8 bytes from [sym(rm)] +0xe010 via base at ([sym(rm)]+65536).
  The `sd` at 0x10102a64 stores 8 bytes to [sym(rm)] +0xe010 via base at ([sym(rm)]+65536) with value .
  The `ld` at 0x10102a70 loads 8 bytes from [sym(rm)] +0xe010 via base t9 ([sym(rm)]+65536).
  The `sd` at 0x10102a7c stores 8 bytes to [sym(rm)] +0xe010 via base t9 ([sym(rm)]+65536) with value .
  The `ld` at 0x10102a88 loads 8 bytes from [sym(rm)] +0xe010 via base t3 ([sym(rm)]+65536).
  The `sd` at 0x10102a94 stores 8 bytes to [sym(rm)] +0xe010 via base t3 ([sym(rm)]+65536) with value .
  The `ld` at 0x10102aa0 loads 8 bytes from [sym(rm)] +0xe010 via base t1 ([sym(rm)]+65536).
  The `sd` at 0x10102aac stores 8 bytes to [sym(rm)] +0xe010 via base t1 ([sym(rm)]+65536) with value .
  The `ld` at 0x10102ab8 loads 8 bytes from [sym(rm)] +0xe010 via base a7 ([sym(rm)]+65536).
  The `sd` at 0x10102ac0 stores 8 bytes to [sym(rm)] +0xe010 via base a7 ([sym(rm)]+65536) with value ([[sym(rm)]+57360]:8 | 0x800).
  The `ld` at 0x10102acc loads 8 bytes from [sym(rm)] +0xe010 via base a5 ([sym(rm)]+65536).
  The `sd` at 0x10102ad8 stores 8 bytes to [sym(rm)] +0xe010 via base a5 ([sym(rm)]+65536) with value .
  The `ld` at 0x10102ae4 loads 8 bytes from [sym(rm)] +0xe010 via base a3 ([sym(rm)]+65536).
  The `sd` at 0x10102af0 stores 8 bytes to [sym(rm)] +0xe010 via base a3 ([sym(rm)]+65536) with value .
  The `ld` at 0x10102b08 loads 8 bytes from [sym(rm)] +0xe010 via base a1 ([sym(rm)]+65536).
  The `ld` at 0x10102b14 loads 8 bytes from [sym(rm)] +0xe018 via base a3 ([sym(rm)]+65536).
  The `sd` at 0x10102b20 stores 8 bytes to [sym(rm)] +0xe018 via base a3 ([sym(rm)]+65536) with value .
  The `ld` at 0x10102b38 loads 8 bytes from [sym(rm)] +0xe018 via base a1 ([sym(rm)]+65536).
  The `ld` at 0x10102b44 loads 8 bytes from [sym(rm)] +0xe030 via base a3 ([sym(rm)]+65536).
  The `sd` at 0x10102b4c stores 8 bytes to [sym(rm)] +0xe030 via base a3 ([sym(rm)]+65536) with value .
  The `ld` at 0x10102b64 loads 8 bytes from [sym(rm)] +0xe030 via base a1 ([sym(rm)]+65536).
  The `ld` at 0x10102b70 loads 8 bytes from [sym(rm)] +0xe038 via base a3 ([sym(rm)]+65536).
  The `sd` at 0x10102b78 stores 8 bytes to [sym(rm)] +0xe038 via base a3 ([sym(rm)]+65536) with value .
  The `ld` at 0x10102b90 loads 8 bytes from [sym(rm)] +0xe038 via base a1 ([sym(rm)]+65536).
  The `ld` at 0x10102b9c loads 8 bytes from [sym(rm)] +0xe040 via base a3 ([sym(rm)]+65536).
  The `sd` at 0x10102ba8 stores 8 bytes to [sym(rm)] +0xe040 via base a3 ([sym(rm)]+65536) with value .
  The `ld` at 0x10102bc0 loads 8 bytes from [sym(rm)] +0xe040 via base a1 ([sym(rm)]+65536).
  2 such accesses load 8 bytes from [sym(rm)] +0xe058 via base a3 ([sym(rm)]+65536), including `ld` at 0x10102bd0, `ld` at 0x10102c9c.
  2 such accesses store 8 bytes to [sym(rm)] +0xe058 via base a3 ([sym(rm)]+65536), including `sd` at 0x10102bdc, `sd` at 0x10102cb4.
  2 such accesses load 8 bytes from [sym(rm)] +0xe058 via base a1 ([sym(rm)]+65536), including `ld` at 0x10102bf4, `ld` at 0x10102ccc.
  2 such accesses store 8 bytes to [sym(rm)] +0xe048 via base a2 ([sym(rm)]+65536), including `sd` at 0x10102c00, `sd` at 0x10102c74.
  2 such accesses load 8 bytes from [sym(rm)] +0xe048 via base a1 ([sym(rm)]+65536), including `ld` at 0x10102c1c, `ld` at 0x10102c8c.
  The `lw` at 0x10102c28 loads 4 bytes from abs 0x102bd974 via base s4 (0x102c4340).
  The `lw` at 0x10102c50 loads 4 bytes from abs 0x102be634 via base s5 (0x102c4340).
  2 such accesses load 4 bytes from sym(word_count) +0x0 via base s5 (sym(word_count)), including `lw` at 0x10102c54, `lw` at 0x10102ce8.
  The `lw` at 0x10102d04 loads 4 bytes from abs 0x102bcf10 via base s0 (0x102c4340).
  12 such accesses load 4 bytes from abs 0x10344a7c via base s0 (0x10344a78), including `lw` at 0x10102d08, `lw` at 0x10102d54, `lw` at 0x10102de0.
  The `lw` at 0x10102d24 loads 4 bytes from abs 0x102bd744 via base s8 (0x102c4340).
  The `lw` at 0x10102d30 loads 4 bytes from abs 0x102bddf8 via base s4 (0x102c4340).
  The `lw` at 0x10102d3c loads 4 bytes from abs 0x102bd730 via base s5 (0x102c4340).
  4 such accesses load 4 bytes from abs 0x102bcf08 via base a0 (0x102c4340), including `lw` at 0x10102d48, `lw` at 0x10102dd0, `lw` at 0x10102e94.
  13 such accesses load 4 bytes from abs 0x10344a78 via base s0 (0x10344a78), including `lw` at 0x10102d68, `lw` at 0x10102e20, `lw` at 0x10102ef0.
  2 such accesses load 4 bytes from ? (base unknown) via base a4 (?), including `lw` at 0x10102d70, `lw` at 0x10102da0.
  3 such accesses load 8 bytes from ? (base unknown) via base a4 (?), including `ld` at 0x10102d9c, `ld` at 0x10102da4, `ld` at 0x10102de4.
  3 such accesses store 8 bytes to abs 0x10344a88 via base s0 (0x10344a78), including `sd` at 0x10102da8, `sd` at 0x10102df0, `sd` at 0x10102e78.
  2 such accesses store 8 bytes to abs 0x10344a90 via base s0 (0x10344a78), including `sd` at 0x10102db4, `sd` at 0x10102e6c.
  14 such accesses load 4 bytes from abs 0x10344a88 via base s0 (0x10344a78), including `lw` at 0x10102e08, `lw` at 0x10102e18, `lw` at 0x10102ebc.
  14 such accesses load 4 bytes from abs 0x10344a8c via base s0 (0x10344a78), including `lw` at 0x10102e14, `lw` at 0x10102e30, `lw` at 0x10102ec8.
  12 such accesses load 4 bytes from abs 0x102bcf08 via base a1 (0x102c4340), including `lw` at 0x10102e2c, `lw` at 0x10102efc, `lw` at 0x10102f30.
  13 such accesses load 4 bytes from ? (base unknown) via base a2 (?), including `lw` at 0x10102e3c, `lw` at 0x10102e60, `lw` at 0x10102f0c.
  2 such accesses load 8 bytes from ? (base unknown) via base a2 (?), including `ld` at 0x10102e5c, `ld` at 0x10102e64.
  10 such accesses load 4 bytes from abs 0x10344a90 via base s0 (0x10344a78), including `lw` at 0x10102ed4, `lw` at 0x10102f18, `lw` at 0x10102fdc.
  10 such accesses load 4 bytes from abs 0x10344a94 via base s0 (0x10344a78), including `lw` at 0x10102ee0, `lw` at 0x10102f34, `lw` at 0x10102fe8.
  The `lw` at 0x101031cc loads 4 bytes from abs 0x102bd420 via base t9 (0x102c4340).
  The `lw` at 0x101031e8 loads 4 bytes from abs 0x102bd5b8 via base t9 (0x102c4340).
  The `jal` at 0x10102784 calls `mytbuInit [0x100cb4c8]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x101027fc calls `tbRegWrite [0x1013eb3c]` with a0=0x1c00, a1=[[sym(rm)]+57344]:8, a2=(unknown), a3=(unknown).
  The `jal` at 0x1010287c calls `tbRegWrite [0x1013eb3c]` with a0=0x1c00, a1=[[sym(rm)]+57344]:8, a2=(unknown), a3=[sym(rm)]+65536, a4=-0x3d, a5=[sym(rm)]+65536, a6=([[sym(rm)]+57344]:8 | 0x100), a7=[sym(rm)]+65536.
  The `jal` at 0x101028ac calls `tbRegWrite [0x1013eb3c]` with a0=0x806, a1=[[sym(rm)]+16432]:8, a2=(unknown), a3=[sym(rm)], a4=-0xc001.
  The `jal` at 0x101028d8 calls `tbRegWrite [0x1013eb3c]` with a0=0x806, a1=[[sym(rm)]+16432]:8, a2=(unknown), a3=[sym(rm)], a4=-0xd.
  The `jal` at 0x10102910 calls `tbRegWrite [0x1013eb3c]` with a0=0x3fd1, a1=[[sym(rm)]+130696]:8, a2=(unknown), a3=[sym(rm)]+131072, a4=-0x1000.
  The `jal` at 0x10102964 calls `tbRegWrite [0x1013eb3c]` with a0=0x3fc2, a1=[[sym(rm)]+130576]:8, a2=(unknown), a3=[sym(rm)]+131072, a5=[[sym(rm)]+130576]:8, a6=[[sym(rm)]+130576]:8.
  The `jal` at 0x101029b8 calls `tbRegWrite [0x1013eb3c]` with a0=0x3fc3, a1=[[sym(rm)]+130584]:8, a2=(unknown), a3=[sym(rm)]+131072, a5=[[sym(rm)]+130584]:8, a6=[[sym(rm)]+130584]:8.
  The `jal` at 0x101029e0 calls `tbRegWrite [0x1013eb3c]` with a0=0x807, a1=[[sym(rm)]+16440]:8, a2=(unknown), a3=[sym(rm)], a4=[[sym(rm)]+16440]:8.
  The `jal` at 0x10102a0c calls `tbRegWrite [0x1013eb3c]` with a0=0x808, a1=[[sym(rm)]+16448]:8, a2=(unknown), a3=[sym(rm)], a4=[[sym(rm)]+16448]:8.
  The `jal` at 0x10102a34 calls `tbRegWrite [0x1013eb3c]` with a0=0x3ff6, a1=[[sym(rm)]+130992]:8, a2=[sym(rm)]+131072, a3=(unknown).
  The `jal` at 0x10102b04 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c02, a1=[[sym(rm)]+57360]:8, a2=(unknown), a3=[sym(rm)]+65536, a4=-0x2001, a5=[sym(rm)]+65536, a6=-0x1001, a7=[sym(rm)]+65536.
  The `jal` at 0x10102b34 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c03, a1=[[sym(rm)]+57368]:8, a2=(unknown), a3=[sym(rm)]+65536.
  The `jal` at 0x10102b60 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c06, a1=[[sym(rm)]+57392]:8, a2=(unknown), a3=[sym(rm)]+65536.
  The `jal` at 0x10102b8c calls `tbRegWrite [0x1013eb3c]` with a0=0x1c07, a1=[[sym(rm)]+57400]:8, a2=(unknown), a3=[sym(rm)]+65536.
  The `jal` at 0x10102bbc calls `tbRegWrite [0x1013eb3c]` with a0=0x1c08, a1=[[sym(rm)]+57408]:8, a2=(unknown), a3=[sym(rm)]+65536, a4=[[sym(rm)]+57408]:8.
  The `jal` at 0x10102bf0 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c0b, a1=[[sym(rm)]+57432]:8, a2=(unknown), a3=[sym(rm)]+65536.
  The `jal` at 0x10102c18 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c09, a1=[[sym(rm)]+57416]:8, a2=[sym(rm)]+65536, a3=(unknown).
  The `jal` at 0x10102c40 calls `testClear [0x100cb340]` with a0=0x0, a1=0x4ff, a2=0x0, a3=0x3ff.
  The `jal` at 0x10102c88 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c09, a1=[[sym(rm)]+57416]:8, a2=[sym(rm)]+65536, a3=(unknown).
  The `jal` at 0x10102cc8 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c0b, a1=[[sym(rm)]+57432]:8, a2=(unknown), a3=[sym(rm)]+65536, a5=[[sym(rm)]+57432]:8.
  The `jal` at 0x10102ce0 calls `testClear [0x100cb340]` with a0=0x0, a1=0x4ff, a2=0x0, a3=0x3ff.
  The `jal` at 0x10102d4c calls `kt_output_info [0x10046374]` with a0=0x101b3878, a1=(unknown), a2=0x3, a3=[0x10344a78], a6=0x3.
  The `jal` at 0x10102dd4 calls `kt_output_info [0x10046374]` with a0=0x101b3888, a1=(unknown), a2=0x3, a3=[0x10344a78], a6=0x3.
  The `jal` at 0x10102df8 calls `fcGfxWrite32 [0x1013df2c]` with a0=0x9, a1=(unknown), a2=(unknown), a3=[0x10344a78], a6=0x3.
  The `jal` at 0x10102e04 calls `fcGfxWrite32 [0x1013df2c]` with a0=[0x10344a88], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10102e10 calls `fcGfxWrite32 [0x1013df2c]` with a0=[0x10344a8c], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10102e40 calls `kt_output_dbug [0x10046d74]` with a0=0x9, a1=0x101b39f8, a2=(unknown), a3=[0x10344a88], a4=[0x10344a8c].
  The `jal` at 0x10102e98 calls `kt_output_info [0x10046374]` with a0=0x101b3950, a1=(unknown), a2=(unknown), a3=[0x10344a78], a5=0x3, a6=0x3.
  The `jal` at 0x10102eac calls `fcGfxWrite32 [0x1013df2c]` with a0=0xb, a1=(unknown), a2=0x3, a3=[0x10344a78], a6=0x3.
  The `jal` at 0x10102eb8 calls `fcGfxWrite32 [0x1013df2c]` with a0=[0x10344a88], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10102ec4 calls `fcGfxWrite32 [0x1013df2c]` with a0=[0x10344a8c], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10102ed0 calls `fcGfxWrite32 [0x1013df2c]` with a0=[0x10344a90], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10102edc calls `fcGfxWrite32 [0x1013df2c]` with a0=[0x10344a94], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10102f10 calls `kt_output_dbug [0x10046d74]` with a0=0x9, a1=0x101b38b0, a2=(unknown), a3=[0x10344a88], a4=[0x10344a8c].
  The `jal` at 0x10102f44 calls `kt_output_dbug [0x10046d74]` with a0=0x9, a1=0x101b38e0, a2=(unknown), a3=[0x10344a90], a4=[0x10344a94].
  The `jal` at 0x10102f58 calls `fcGfxWrite32 [0x1013df2c]` with a0=0x5, a1=(unknown), a2=(unknown), a3=[0x10344a78], a6=0x3.
  The `jal` at 0x10102f64 calls `fcGfxWrite32 [0x1013df2c]` with a0=[0x10344a88], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10102f70 calls `fcGfxWrite32 [0x1013df2c]` with a0=[0x10344a8c], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10102fa0 calls `kt_output_dbug [0x10046d74]` with a0=0x9, a1=0x101b3a28, a2=(unknown), a3=[0x10344a88], a4=[0x10344a8c].
  The `jal` at 0x10102fb4 calls `fcGfxWrite32 [0x1013df2c]` with a0=0x7, a1=(unknown), a2=(unknown), a3=[0x10344a78], a5=0x3, a6=0x3.
  The `jal` at 0x10102fc0 calls `fcGfxWrite32 [0x1013df2c]` with a0=[0x10344a88], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10102fcc calls `fcGfxWrite32 [0x1013df2c]` with a0=[0x10344a8c], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10102fd8 calls `fcGfxWrite32 [0x1013df2c]` with a0=[0x10344a90], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10102fe4 calls `fcGfxWrite32 [0x1013df2c]` with a0=[0x10344a94], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10103018 calls `kt_output_dbug [0x10046d74]` with a0=0x9, a1=0x101b3980, a2=(unknown), a3=[0x10344a88], a4=[0x10344a8c].
  The `jal` at 0x1010304c calls `kt_output_dbug [0x10046d74]` with a0=0x9, a1=0x101b38e0, a2=(unknown), a3=[0x10344a90], a4=[0x10344a94].
  The `jal` at 0x10103060 calls `fcGfxWrite32 [0x1013df2c]` with a0=0xa, a1=(unknown), a2=0x3, a3=[0x10344a78], a6=0x3.
  The `jal` at 0x1010306c calls `fcGfxWrite32 [0x1013df2c]` with a0=[0x10344a88], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10103078 calls `fcGfxWrite32 [0x1013df2c]` with a0=[0x10344a8c], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10103084 calls `fcGfxWrite32 [0x1013df2c]` with a0=[0x10344a90], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10103090 calls `fcGfxWrite32 [0x1013df2c]` with a0=[0x10344a94], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101030c4 calls `kt_output_dbug [0x10046d74]` with a0=0x9, a1=0x101b3920, a2=(unknown), a3=[0x10344a88], a4=[0x10344a8c].
  The `jal` at 0x101030f8 calls `kt_output_dbug [0x10046d74]` with a0=0x9, a1=0x101b38e0, a2=(unknown), a3=[0x10344a90], a4=[0x10344a94].
  The `jal` at 0x10103108 calls `fcGfxWrite32 [0x1013df2c]` with a0=0x8, a1=(unknown), a2=0x3, a3=[0x10344a78], a6=0x3.
  The `jal` at 0x10103114 calls `fcGfxWrite32 [0x1013df2c]` with a0=[0x10344a88], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10103120 calls `fcGfxWrite32 [0x1013df2c]` with a0=[0x10344a8c], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010312c calls `fcGfxWrite32 [0x1013df2c]` with a0=[0x10344a90], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10103138 calls `fcGfxWrite32 [0x1013df2c]` with a0=[0x10344a94], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010316c calls `kt_output_dbug [0x10046d74]` with a0=0x9, a1=0x101b38f8, a2=(unknown), a3=[0x10344a88], a4=[0x10344a8c].
  The `jal` at 0x101031a0 calls `kt_output_dbug [0x10046d74]` with a0=0x9, a1=0x101b38e0, a2=(unknown), a3=[0x10344a90], a4=[0x10344a94].
  The `jalr` at 0x101031d8 calls `free` with a0=[sym(rm)], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101031f4 calls `waitDrawLoadDone [0x1002c1d0]` with a0=a0 at entry (arg0), a1=0x2, a2=(unknown), a3=(unknown).
  The `jal` at 0x10103214 calls `fcGfxWrite32 [0x1013df2c]` with a0=0x6, a1=(unknown), a2=(unknown), a3=[0x10344a78], a5=0x3, a6=0x3.
  The `jal` at 0x10103220 calls `fcGfxWrite32 [0x1013df2c]` with a0=[0x10344a88], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010322c calls `fcGfxWrite32 [0x1013df2c]` with a0=[0x10344a8c], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10103238 calls `fcGfxWrite32 [0x1013df2c]` with a0=[0x10344a90], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10103244 calls `fcGfxWrite32 [0x1013df2c]` with a0=[0x10344a94], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10103278 calls `kt_output_dbug [0x10046d74]` with a0=0x9, a1=0x101b39d0, a2=(unknown), a3=[0x10344a88], a4=[0x10344a8c].
  The `jal` at 0x101032ac calls `kt_output_dbug [0x10046d74]` with a0=0x9, a1=0x101b38e0, a2=(unknown), a3=[0x10344a90], a4=[0x10344a94].
  The `jal` at 0x101032c8 calls `kt_output_info [0x10046374]` with a0=0x101b39a8, a1=(unknown), a2=(unknown), a3=[0x10344a78], a5=0x3, a6=0x3.
  The `bne` at 0x10102c5c goes to 0x10102cfc when t8(=[sym(word_count)]) < 0x2 (signed) and falls through when t8(=[sym(word_count)]) >= 0x2 (signed).
  The `bne` at 0x10102cf4 goes to 0x10102c70 when s1(?) < a4(=[sym(word_count)]) (signed) and falls through when s1(?) >= a4(=[sym(word_count)]) (signed).
  The `blez` at 0x10102d0c goes to 0x101031b0 when a5(=[0x10344a7c]) <= 0 (signed) and falls through when a5(=[0x10344a7c]) > 0 (signed).
  The `beq` at 0x10102d60 goes to 0x101031b0 when s1(?) >= a1(=[0x10344a7c]) (signed) and falls through when s1(?) < a1(=[0x10344a7c]) (signed).
  The `beq` at 0x10102d78 goes to 0x10102de4 when s6(=0x1) == a1(?) and falls through when s6(=0x1) != a1(?).
  The `beq` at 0x10102d80 goes to 0x10102e50 when s7(=0x2) == a1(?) and falls through when s7(=0x2) != a1(?).
  The `bne` at 0x10102d88 goes to 0x10102d40 when a2(=0x3) != a1(?) and falls through when a2(=0x3) == a1(?).
  The `beq` at 0x10102db0 goes to 0x1010305c when s6(=0x1) == a1(?) and falls through when s6(=0x1) != a1(?).
  The `beq` at 0x10102db8 goes to 0x10103108 when s7(=0x2) == a1(?) and falls through when s7(=0x2) != a1(?).
  The `beq` at 0x10102dc0 goes to 0x10102ea8 when a6(=0x3) == a1(?) and falls through when a6(=0x3) != a1(?).
  The `beq` at 0x10102dec goes to 0x10102f54 when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x10102e74 goes to 0x10103210 when s6(=0x1) == a1(?) and falls through when s6(=0x1) != a1(?).
  The `beq` at 0x10102e7c goes to 0x101032bc when s7(=0x2) == a1(?) and falls through when s7(=0x2) != a1(?).
  The `beq` at 0x10102e84 goes to 0x10102fb0 when a5(=0x3) == a1(?) and falls through when a5(=0x3) != a1(?).
  The return at 0x10103208 has v0 = ret(waitDrawLoadDone).
- `TestTex` in `usr/diags/IR/bin/irsaudit` at 0x10103810 (n32).
  It occupies 1056 bytes.
  The `lw` at 0x10103818 loads 4 bytes from a0 (arg0 at entry) +0x444 via base a0 (a0).
  The `lw` at 0x10103844 loads 4 bytes from abs 0x102bcf1c via base s3 (0x102c4340).
  The `lw` at 0x10103850 loads 4 bytes from abs 0x102bcf20 via base s0 (0x102c4340).
  The `sw` at 0x10103868 stores 4 bytes to abs 0x10344ab8 via base s0 (0x10344aa0) with value 0x0.
  The `lw` at 0x10103874 loads 4 bytes from abs 0x102bcf24 via base s1 (0x102c4340).
  The `lw` at 0x10103904 loads 4 bytes from abs 0x102bcf28 via base v0 (0x102c4340).
  The `lw` at 0x10103908 loads 4 bytes from abs 0x10344aa0 via base s0 (0x10344aa0).
  The `lw` at 0x1010390c loads 4 bytes from abs 0x1020c7e8 via base v0 (0x1020c7e8).
  The `lw` at 0x1010391c loads 4 bytes from abs 0x1020c7ec via base v0 (0x1020c7e8).
  The `lw` at 0x10103920 loads 4 bytes from abs 0x10344aa4 via base s0 (0x10344aa0).
  3 such accesses load 4 bytes from abs 0x10344aa8 via base s0 (0x10344aa0), including `lw` at 0x10103928, `lw` at 0x101039c8, `lw` at 0x10103a78.
  2 such accesses load 4 bytes from abs 0x1020c7f0 via base v0 (0x1020c7e8), including `lw` at 0x1010392c, `lw` at 0x101039cc.
  2 such accesses load 4 bytes from abs 0x1020c7f4 via base v0 (0x1020c7e8), including `lw` at 0x10103934, `lw` at 0x101039d8.
  4 such accesses load 4 bytes from abs 0x10344aac via base s0 (0x10344aa0), including `lw` at 0x10103938, `lw` at 0x101039d4, `lw` at 0x10103a64.
  3 such accesses load 4 bytes from abs 0x1020c7f8 via base v0 (0x1020c7e8), including `lw` at 0x1010393c, `lw` at 0x101039bc, `lw` at 0x10103b74.
  2 such accesses load 4 bytes from abs 0x10344ab0 via base s0 (0x10344aa0), including `lw` at 0x10103944, `lw` at 0x10103a90.
  4 such accesses load 4 bytes from abs 0x102bd730 via base s0 (0x102c4340), including `lw` at 0x1010395c, `lw` at 0x101039f0, `lw` at 0x10103aa8.
  14 such accesses load 4 bytes from abs 0x102bcf18 via base a0 (0x102c4340), including `lw` at 0x10103964, `lw` at 0x1010398c, `lw` at 0x101039a4.
  The `lw` at 0x10103b20 loads 4 bytes from abs 0x102bd744 via base t9 (0x102c4340).
  The `lw` at 0x10103b24 loads 4 bytes from abs 0x102bcf18 via base a1 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bd730 via base t9 (0x102c4340), including `lw` at 0x10103b44, `lw` at 0x10103b90.
  The `jal` at 0x10103864 calls (unnamed) [0x10103c30] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10103880 calls (unnamed) [0x10103e28] with a0=a0 at entry (arg0), a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10103890 calls (unnamed) [0x10103c30] with a0=a0 at entry (arg0), a1=0x40000, a2=(unknown), a3=(unknown).
  The `jal` at 0x101038a0 calls (unnamed) [0x10103c30] with a0=a0 at entry (arg0), a1=0x200000, a2=(unknown), a3=(unknown).
  The `jal` at 0x101038b0 calls (unnamed) [0x10103c30] with a0=a0 at entry (arg0), a1=0x800000, a2=(unknown), a3=(unknown).
  The `jal` at 0x101038c4 calls (unnamed) [0x10103e28] with a0=a0 at entry (arg0), a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x101038d4 calls (unnamed) [0x10103e28] with a0=a0 at entry (arg0), a1=0x40000, a2=(unknown), a3=(unknown).
  The `jal` at 0x101038e4 calls (unnamed) [0x10103e28] with a0=a0 at entry (arg0), a1=0x200000, a2=(unknown), a3=(unknown).
  The `jal` at 0x101038f4 calls (unnamed) [0x10103e28] with a0=a0 at entry (arg0), a1=0x800000, a2=(unknown), a3=(unknown).
  The `jal` at 0x10103970 calls `kt_output_info [0x10046374]` with a0=0x101b3be0, a1=0x400, a2=[0x10344aac], a3=[0x1020c7f4], a4=[0x10344aa4].
  The `jal` at 0x10103990 calls `kt_output_info [0x10046374]` with a0=0x101b3bf8, a1=0x6, a2=(unknown), a3=(unknown).
  The `jal` at 0x101039ac calls `kt_output_info [0x10046374]` with a0=0x101b3c18, a1=0x400, a2=(unknown), a3=(unknown).
  The `jal` at 0x10103a04 calls `kt_output_info [0x10046374]` with a0=0x101b3be0, a1=0x100, a2=[0x10344aac], a3=[0x1020c7f4], a4=[0x10344aa4], a5=[0x1020c7f0].
  The `jal` at 0x10103a28 calls `kt_output_info [0x10046374]` with a0=0x101b3bf8, a1=0x4, a2=(unknown), a3=(unknown).
  The `jal` at 0x10103a44 calls `kt_output_info [0x10046374]` with a0=0x101b3c18, a1=0x100, a2=(unknown), a3=(unknown).
  The `jal` at 0x10103abc calls `kt_output_info [0x10046374]` with a0=0x101b3be0, a1=0x10, a2=[0x10344aac], a3=[0x10344ab0], a4=[0x10344aa4], a5=[0x1020c7f0].
  The `jal` at 0x10103ae0 calls `kt_output_info [0x10046374]` with a0=0x101b3bf8, a1=0x1, a2=(unknown), a3=(unknown).
  The `jal` at 0x10103afc calls `kt_output_info [0x10046374]` with a0=0x101b3c18, a1=0x10, a2=(unknown), a3=(unknown).
  The `jal` at 0x10103b2c calls `kt_output_dbug [0x10046d74]` with a0=0x1, a1=0x101b3c50, a2=(unknown), a3=(unknown), a4=[0x10344aa4].
  The `jal` at 0x10103b4c calls `kt_output_info [0x10046374]` with a0=0x101b3bb0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10103b98 calls `kt_output_info [0x10046374]` with a0=0x101b3bb0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10103bc8 calls `kt_output_info [0x10046374]` with a0=0x101b3be0, a1=0x40, a2=[0x10344aac], a3=(unknown), a4=[0x10344aa4], a5=[0x1020c7f0].
  The `jal` at 0x10103bec calls `kt_output_info [0x10046374]` with a0=0x101b3bf8, a1=0x2, a2=(unknown), a3=(unknown).
  The `jal` at 0x10103c08 calls `kt_output_info [0x10046374]` with a0=0x101b3c18, a1=0x40, a2=(unknown), a3=(unknown).
  The `bne` at 0x10103914 goes to 0x10103b80 when t8(=[0x10344aa0]) != t9(=[0x1020c7e8]) and falls through when t8(=[0x10344aa0]) == t9(=[0x1020c7e8]).
  The `bne` at 0x10103924 goes to 0x101039bc when v1(=[0x1020c7ec]) != a4(=[0x10344aa4]) and falls through when v1(=[0x1020c7ec]) == a4(=[0x10344aa4]).
  The `bne` at 0x10103930 goes to 0x10103b70 when a0(=[0x10344aa8]) != a1(=[0x1020c7f0]) and falls through when a0(=[0x10344aa8]) == a1(=[0x1020c7f0]).
  The `bne` at 0x10103940 goes to 0x101039c0 when a2(=[0x10344aac]) != a3(=[0x1020c7f4]) and falls through when a2(=[0x10344aac]) == a3(=[0x1020c7f4]).
  The `bne` at 0x10103948 goes to 0x101039c0 when a1(=[0x10344ab0]) != a0(=[0x1020c7f8]) and falls through when a1(=[0x10344ab0]) == a0(=[0x1020c7f8]).
  The `beq` at 0x1010397c goes to 0x10103c28 when s4(=[a0+1092]) == a1(=0x6) and falls through when s4(=[a0+1092]) != a1(=0x6).
  The `bne` at 0x101039c0 goes to 0x10103b14 when a0(=[0x1020c7f8]) != a4(=[0x10344aa4]) and falls through when a0(=[0x1020c7f8]) == a4(=[0x10344aa4]).
  The `bne` at 0x101039d0 goes to 0x10103a54 when a1(=[0x10344aa8]) != a5(=[0x1020c7f0]) and falls through when a1(=[0x10344aa8]) == a5(=[0x1020c7f0]).
  The `bne` at 0x101039dc goes to 0x10103a5c when a2(=[0x10344aac]) != a3(=[0x1020c7f4]) and falls through when a2(=[0x10344aac]) == a3(=[0x1020c7f4]).
  The `beq` at 0x10103a10 goes to 0x10103c18 when s4(=[a0+1092]) == a1(=0x4) and falls through when s4(=[a0+1092]) != a1(=0x4).
  The `bne` at 0x10103a54 goes to 0x10103b14 when a0(=[0x1020c7f8]) != a4(=[0x10344aa4]) and falls through when a0(=[0x1020c7f8]) == a4(=[0x10344aa4]).
  The `bne` at 0x10103a5c goes to 0x10103b0c when a1(=[0x10344aa8]) != a5(=[0x1020c7f0]) and falls through when a1(=[0x10344aa8]) == a5(=[0x1020c7f0]).
  The `beq` at 0x10103a68 goes to 0x10103ba8 when a1(=[0x10344aac]) == a0(=[0x1020c7f8]) and falls through when a1(=[0x10344aac]) != a0(=[0x1020c7f8]).
  The `bne` at 0x10103a70 goes to 0x10103b14 when a0(=[0x1020c7f8]) != a4(=[0x10344aa4]) and falls through when a0(=[0x1020c7f8]) == a4(=[0x10344aa4]).
  The `bne` at 0x10103a7c goes to 0x10103b14 when a1(=[0x10344aa8]) != a0(=[0x1020c7f8]) and falls through when a1(=[0x10344aa8]) == a0(=[0x1020c7f8]).
  The `bne` at 0x10103a88 goes to 0x10103b14 when a2(=[0x10344aac]) != a0(=[0x1020c7f8]) and falls through when a2(=[0x10344aac]) == a0(=[0x1020c7f8]).
  The `bne` at 0x10103a94 goes to 0x10103b14 when a3(=[0x10344ab0]) != a0(=[0x1020c7f8]) and falls through when a3(=[0x10344ab0]) == a0(=[0x1020c7f8]).
  The `beq` at 0x10103ac8 goes to 0x10103b78 when s4(=[a0+1092]) == a1(=0x1) and falls through when s4(=[a0+1092]) != a1(=0x1).
  The `beq` at 0x10103b0c goes to 0x10103a7c when a0(=[0x1020c7f8]) == a4(=[0x10344aa4]) and falls through when a0(=[0x1020c7f8]) != a4(=[0x10344aa4]).
  The `beq` at 0x10103bd4 goes to 0x10103c20 when s4(=[a0+1092]) == a1(=0x2) and falls through when s4(=[a0+1092]) != a1(=0x2).
  The return at 0x10103b68 has v0 = one of -0x1, 0x0.
- `test_callig` in `usr/diags/IR/bin/irsaudit` at 0x10104b08 (n32).
  It occupies 188 bytes.
  The `lw` at 0x10104b28 loads 4 bytes from abs 0x102bd978 via base t9 (0x102c4340).
  The `lw` at 0x10104b48 loads 4 bytes from abs 0x102bcf3c via base t9 (0x102c4340).
  The `lw` at 0x10104b4c loads 4 bytes from abs 0x102be628 via base v1 (0x102c4340).
  The `sw` at 0x10104b58 stores 4 bytes to sym(rm) +0x0 via base v1 (sym(rm)) with value ret(mytbuInit).
  The `lw` at 0x10104b88 loads 4 bytes from abs 0x102bd420 via base t9 (0x102c4340).
  The `lw` at 0x10104b8c loads 4 bytes from abs 0x102be628 via base a0 (0x102c4340).
  The `lw` at 0x10104b94 loads 4 bytes from sym(rm) +0x0 via base a0 (sym(rm)).
  The `lw` at 0x10104ba0 loads 4 bytes from abs 0x102bd5b8 via base t9 (0x102c4340).
  The `jal` at 0x10104b30 calls `mytbuInit [0x100cb4c8]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10104b54 calls (unnamed) [0x10104c18] with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10104b90 calls `free` with a0=[sym(rm)], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10104ba8 calls `waitDrawLoadDone [0x1002c1d0]` with a0=a0 at entry (arg0), a1=0x2, a2=(unknown), a3=(unknown).
  The `beq` at 0x10104b5c goes to 0x10104b78 when v0(=ret(0x10104c18)) == 0 and falls through when v0(=ret(0x10104c18)) != 0.
  The return at 0x10104b70 has v0 = -0x1.
  The return at 0x10104bbc has v0 = ret(waitDrawLoadDone).
- `TEST_tbusfile` in `usr/diags/IR/bin/irsaudit` at 0x1010a75c (n32).
  It occupies 1840 bytes.
  The `lw` at 0x1010a770 loads 4 bytes from a0 (arg0 at entry) +0x16c via base a0 (a0).
  2 such accesses load 4 bytes from abs 0x102bd730 via base s4 (0x102c4340), including `lw` at 0x1010a7a0, `lw` at 0x1010ab44.
  9 such accesses load 4 bytes from abs 0x102bcfbc via base a0 (0x102c4340), including `lw` at 0x1010a7b8, `lw` at 0x1010a7c8, `lw` at 0x1010a928.
  7 such accesses load 4 bytes from abs 0x102bd728 via base t9 (0x102c4340), including `lw` at 0x1010a7e4, `lw` at 0x1010ab68, `lw` at 0x1010ad18.
  6 such accesses load 4 bytes from abs 0x102bcfbc via base a1 (0x102c4340), including `lw` at 0x1010a7e8, `lw` at 0x1010aa60, `lw` at 0x1010aad0.
  The `lw` at 0x1010a830 loads 4 bytes from abs 0x102bd764 via base s1 (0x102c4340).
  The `lw` at 0x1010a860 loads 4 bytes from abs 0x102be1e0 via base t9 (0x102c4340).
  The `lw` at 0x1010a864 loads 4 bytes from sym(KONAINFO) +0x0 via base t9 (sym(KONAINFO)).
  The `lw` at 0x1010a868 loads 4 bytes from [sym(KONAINFO)] +0x0 via base t9 ([sym(KONAINFO)]).
  The `lw` at 0x1010a87c loads 4 bytes from abs 0x102bddf4 via base s1 (0x102c4340).
  The `lw` at 0x1010a894 loads 4 bytes from abs 0x102bcfc0 via base s3 (0x102c4340).
  The `lw` at 0x1010a8ac loads 4 bytes from abs 0x102bd458 via base s2 (0x102c4340).
  The `lw` at 0x1010a8f0 loads 4 bytes from abs 0x102bd45c via base s0 (0x102c4340).
  The `lw` at 0x1010a8f8 loads 4 bytes from abs 0x102be77c via base s1 (0x102c4340).
  The `lw` at 0x1010a90c loads 4 bytes from sym(pipeFD) +0x0 via base s1 (sym(pipeFD)).
  The `lw` at 0x1010a924 loads 4 bytes from abs 0x102bd7c4 via base t9 (0x102c4340).
  The `lw` at 0x1010a948 loads 4 bytes from abs 0x102bd7fc via base t9 (0x102c4340).
  The `lw` at 0x1010a964 loads 4 bytes from abs 0x102bd7cc via base t9 (0x102c4340).
  The `lw` at 0x1010a988 loads 4 bytes from abs 0x102bd92c via base s0 (0x102c4340).
  The `lw` at 0x1010a9e4 loads 4 bytes from abs 0x102bd49c via base t9 (0x102c4340).
  The `lw` at 0x1010aa00 loads 4 bytes from abs 0x102bd7c0 via base t9 (0x102c4340).
  The `lw` at 0x1010aa10 loads 4 bytes from abs 0x102bd7cc via base s1 (0x102c4340).
  The `lw` at 0x1010aa24 loads 4 bytes from abs 0x102bcfc4 via base s0 (0x102c4340).
  The `sw` at 0x1010aa30 stores 4 bytes to abs 0x10344ae4 via base s0 (0x10344ac0) with value ret(hash_lookup).
  The `sw` at 0x1010aa34 stores 4 bytes to abs 0x1020c918 via base s3 (0x1020c8e0) with value ret(hash_lookup).
  The `sw` at 0x1010aa48 stores 4 bytes to abs 0x10344ae4 via base s0 (0x10344ac0) with value ret(kt_data_file).
  The `lw` at 0x1010aa5c loads 4 bytes from abs 0x102bd744 via base t9 (0x102c4340).
  3 such accesses load 4 bytes from abs 0x10344ae4 via base s0 (0x10344ac0), including `lw` at 0x1010aa78, `lw` at 0x1010ada4, `lw` at 0x1010ae50.
  The `lw` at 0x1010aa88 loads 4 bytes from abs 0x102bcfbc via base at (0x102c4340).
  The `lw` at 0x1010aa8c loads 4 bytes from abs 0x102bd390 via base t9 (0x102c4340).
  The `lbu` at 0x1010aa90 loads 1 bytes from abs 0x101b55ee via base at (0x101b54e8).
  The `ld` at 0x1010aa94 loads 8 bytes from abs 0x101b55e0 via base at (0x101b54e8).
  The `lhu` at 0x1010aa98 loads 2 bytes from abs 0x101b55ec via base at (0x101b54e8).
  The `lw` at 0x1010aa9c loads 4 bytes from abs 0x101b55e8 via base at (0x101b54e8).
  The `lw` at 0x1010aacc loads 4 bytes from abs 0x102bd3a8 via base t9 (0x102c4340).
  The `lw` at 0x1010aaf4 loads 4 bytes from abs 0x102bd3ec via base s6 (0x102c4340).
  The `lw` at 0x1010ab38 loads 4 bytes from abs 0x102bd47c via base s8 (0x102c4340).
  The `lw` at 0x1010ab4c loads 4 bytes from abs 0x102bd478 via base s2 (0x102c4340).
  The `lw` at 0x1010ab58 loads 4 bytes from abs 0x102bd43c via base s5 (0x102c4340).
  The `lw` at 0x1010ab8c loads 4 bytes from abs 0x102bcfc8 via base t9 (0x102c4340).
  The `sb` at 0x1010abd4 stores 1 bytes to ret(strrchr) +0x0 via base v0 (ret(strrchr)) with value 0x0.
  The `sb` at 0x1010ac48 stores 1 bytes to ret(strchr) +0x0 via base v0 (ret(strchr)) with value 0x0.
  The `sw` at 0x1010ac4c stores 4 bytes to abs 0x1020c8f4 via base s3 (0x1020c8e0) with value .
  The `sw` at 0x1010ac54 stores 4 bytes to abs 0x1020c8fc via base s3 (0x1020c8e0) with value 0x10344be8.
  The `sw` at 0x1010ac58 stores 4 bytes to abs 0x10344ae0 via base s0 (0x10344ac0) with value 0x0.
  The `ld` at 0x1010ac60 loads 8 bytes from abs 0x1020c8e0 via base s3 (0x1020c8e0).
  The `lw` at 0x1010ac68 loads 4 bytes from abs 0x102bcfcc via base t9 (0x102c4340).
  The `ld` at 0x1010ac6c loads 8 bytes from abs 0x1020c8e8 via base s3 (0x1020c8e0).
  The `sd` at 0x1010ac70 stores 8 bytes to abs 0x10344bf0 via base s0 (0x10344ac0) with value [0x1020c8e8]:8.
  The `sd` at 0x1010ac7c stores 8 bytes to abs 0x10344be8 via base s0 (0x10344ac0) with value [0x1020c8e0]:8.
  The `lw` at 0x1010ac90 loads 4 bytes from abs 0x102be488 via base v0 (0x102c4340).
  The `lw` at 0x1010ac94 loads 4 bytes from sym(Nocrc) +0x0 via base v0 (sym(Nocrc)).
  2 such accesses load 4 bytes from abs 0x102bd5a4 via base t9 (0x102c4340), including `lw` at 0x1010aca4, `lw` at 0x1010acd8.
  The `lw` at 0x1010acb4 loads 4 bytes from abs 0x102bd5ac via base a0 (0x102c4340).
  The `lw` at 0x1010acc0 loads 4 bytes from abs 0x102bd584 via base t9 (0x102c4340).
  The `lw` at 0x1010ad04 loads 4 bytes from abs 0x102bd4fc via base t9 (0x102c4340).
  The `lw` at 0x1010ad44 loads 4 bytes from abs 0x102bd45c via base t9 (0x102c4340).
  The `lw` at 0x1010ad48 loads 4 bytes from abs 0x102be77c via base a0 (0x102c4340).
  The `lw` at 0x1010ad5c loads 4 bytes from sym(pipeFD) +0x0 via base a0 (sym(pipeFD)).
  The `lw` at 0x1010ad74 loads 4 bytes from abs 0x102bcfc0 via base a2 (0x102c4340).
  The `sd` at 0x1010ad80 stores 8 bytes to abs 0x1020c8e8 via base a2 (0x1020c8e0) with value 0x7ffffffffff.
  The `lw` at 0x1010ad88 loads 4 bytes from abs 0x1020c918 via base s3 (0x1020c8e0).
  2 such accesses load 4 bytes from abs 0x102bd730 via base t9 (0x102c4340), including `lw` at 0x1010ad9c, `lw` at 0x1010ade0.
  The `jal` at 0x1010a7b4 calls `kt_output_info [0x10046374]` with a0=0x101b54e8, a1=[a0+364], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1010a7cc calls `kt_output_info [0x10046374]` with a0=0x101b5500, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010a7f0 calls `kt_output_rslt [0x10045978]` with a0=0x2, a1=0x101b5528, a2=(unknown), a3=(unknown).
  The `jal` at 0x1010a840 calls `kt_code_result [0x10048068]` with a0=0x2, a1=(unknown), a2=0x1, a3=(unknown).
  The `jal` at 0x1010a890 calls `fcPioRead32 [0x1013dd88]` with a0=0x208, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1010a8b4 calls `sginap` with a0=0x5, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010a8c0 calls `fcPioRead32 [0x1013dd88]` with a0=0x208, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1010a908 calls `ioctl` with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=(unknown).
  The `jal` at 0x1010a930 calls `hash_value [0x10059f54]` with a0=0x101b5580, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1010a94c calls `reset_dacs [0x10061f50]` with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010a96c calls `kt_data_file [0x1005a128]` with a0=0x101b5588, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010a9a8 calls `tst_multi_voc [0x100b6c58]` with a0=0x8, a1=0x1, a2=0x1, a3=ret(kt_data_file), a4=0x1, a5=0x0, a6=0x0, a7=-0x1.
  The `jal` at 0x1010a9d4 calls `tst_multi_voc [0x100b6c58]` with a0=0x8, a1=0x1, a2=0x0, a3=ret(kt_data_file), a4=0x1, a5=0x1, a6=0x0, a7=-0x1.
  The `jalr` at 0x1010a9e8 calls `sleep` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010aa14 calls `hash_lookup [0x10059ecc]` with a0=0x101b55a0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010aa3c calls `kt_data_file [0x1005a128]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010aa6c calls `kt_output_dbug [0x10046d74]` with a0=0x6, a1=0x101b55c8, a2=ret(kt_data_file), a3=(unknown).
  The `jalr` at 0x1010aab4 calls `strcat` with a0=sp-1136, a1=[0x10344ae4], a2=0x2f7573722f627364, a3=(unknown).
  The `jalr` at 0x1010aad8 calls `popen` with a0=sp-1136, a1=0x101b55f0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1010ab04 calls `fgets` with a0=0x10344ae8, a1=0x100, a2=ret(popen), a3=(unknown).
  The `jal` at 0x1010ab74 calls `kt_output_rslt [0x10045978]` with a0=0x0, a1=0x101b5548, a2=(unknown), a3=(unknown).
  The `jal` at 0x1010ab90 calls (unnamed) [0x1010ae8c] with a0=a0 at entry (arg0), a1=(unknown), a2=-0x1, a3=(unknown).
  The `jalr` at 0x1010abac calls `fgets` with a0=0x10344ae8, a1=0x100, a2=ret(popen), a3=(unknown).
  The `jalr` at 0x1010abc4 calls `strrchr` with a0=0x10344ae8, a1=0xa, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1010abf0 calls `strncmp` with a0=0x10344ae8, a1=0x101b5618, a2=0x6, a3=(unknown).
  The `jalr` at 0x1010ac08 calls `strchr` with a0=0x10344ae8, a1=0x20, a2=(unknown), a3=(unknown).
  The `jal` at 0x1010ac28 calls `kt_output_info [0x10046374]` with a0=0x101b5620, a1=ret(strchr)+1, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1010ac38 calls `strchr` with a0=(unknown), a1=0x2e, a2=(unknown), a3=(unknown).
  The `jal` at 0x1010ac78 calls (unnamed) [0x1010b9b4] with a0=ret(popen), a1=0x10344be8, a2=(unknown), a3=(unknown).
  The `jal` at 0x1010acb0 calls `set_decode_fcn [0x1002b380]` with a0=sym(wishy_washy_decode_func), a1=(unknown), a2=-0x1, a3=(unknown).
  The `jal` at 0x1010acc8 calls `run_crc_testlist [0x1001d0dc]` with a0=0x1020c8f0, a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010ace4 calls `set_decode_fcn [0x1002b380]` with a0=0x0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x1010ad08 calls `pclose` with a0=ret(popen), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010ad2c calls `kt_output_rslt [0x10045978]` with a0=(unknown), a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1010ad58 calls `ioctl` with a0=[sym(pipeFD)], a1=0x2775, a2=0x0, a3=(unknown).
  The `jal` at 0x1010ada8 calls `kt_output_info [0x10046374]` with a0=0x101b55f8, a1=[0x10344ae4], a2=(unknown), a3=(unknown).
  The `jal` at 0x1010adc0 calls `kt_output_rslt [0x10045978]` with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1010adec calls `kt_output_info [0x10046374]` with a0=0x101b55b0, a1=ret(kt_data_file), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010ae04 calls `kt_output_rslt [0x10045978]` with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1010ae30 calls `kt_output_rslt [0x10045978]` with a0=0x0, a1=0x101b5560, a2=(unknown), a3=(unknown).
  The `jal` at 0x1010ae54 calls `kt_output_info [0x10046374]` with a0=0x101b5630, a1=[0x10344ae4], a2=-0x1, a3=(unknown).
  The `jal` at 0x1010ae7c calls `kt_output_rslt [0x10045978]` with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `beq` at 0x1010a790 goes to 0x1010a81c when s2(=[a0+364]) == at(=0x1) and falls through when s2(=[a0+364]) != at(=0x1).
  The `blez` at 0x1010a81c goes to 0x1010a85c when s2(=[a0+364]) <= 0 (signed) and falls through when s2(=[a0+364]) > 0 (signed).
  The `bne` at 0x1010a850 goes to 0x1010a838 when s0(?) < s2(=[a0+364]) (signed) and falls through when s0(?) >= s2(=[a0+364]) (signed).
  The `beq` at 0x1010a870 goes to 0x1010ad68 when t9(=[[sym(KONAINFO)]]) == ra(=0x6) and falls through when t9(=[[sym(KONAINFO)]]) != ra(=0x6).
  The `beq` at 0x1010a898 goes to 0x1010a8e8 when v0(=ret(fcPioRead32)) == 0 and falls through when v0(=ret(fcPioRead32)) != 0.
  The `bne` at 0x1010a8d4 goes to 0x1010a8b0 when s0(?) < 0x5 (unsigned) and falls through when s0(?) >= 0x5 (unsigned).
  The `beq` at 0x1010a8dc goes to 0x1010ab5c when t9(?) == 0 and falls through when t9(?) != 0.
  The `bltz` at 0x1010a910 goes to 0x1010ae14 when v0(=ret(ioctl)) < 0 (signed) and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `beq` at 0x1010a938 goes to 0x1010a9f4 when v0(=ret(hash_value)) == 0 and falls through when v0(=ret(hash_value)) != 0.
  The `beq` at 0x1010aa2c goes to 0x1010ad84 when v0(=ret(hash_lookup)) == 0 and falls through when v0(=ret(hash_lookup)) != 0.
  The `beq` at 0x1010aa44 goes to 0x1010add0 when v0(=ret(kt_data_file)) == 0 and falls through when v0(=ret(kt_data_file)) != 0.
  The `beq` at 0x1010aae4 goes to 0x1010ad8c when v0(=ret(popen)) == 0 and falls through when v0(=ret(popen)) != 0.
  The `beq` at 0x1010ab1c goes to 0x1010acf4 when v0(=ret(fgets)) == 0 and falls through when v0(=ret(fgets)) != 0.
  The `beq` at 0x1010abb4 goes to 0x1010ad00 when v0(=ret(fgets)) == 0 and falls through when v0(=ret(fgets)) != 0.
  The `beq` at 0x1010abcc goes to 0x1010abdc when v0(=ret(strrchr)) == 0 and falls through when v0(=ret(strrchr)) != 0.
  The `bne` at 0x1010abf8 goes to 0x1010aba4 when v0(=ret(strncmp)) != 0 and falls through when v0(=ret(strncmp)) == 0.
  The `beq` at 0x1010ac40 goes to 0x1010ac4c when v0(=ret(strchr)) == 0 and falls through when v0(=ret(strchr)) != 0.
  The `beq` at 0x1010ac84 goes to 0x1010ae40 when v0(=ret(0x1010b9b4)) == a2(=-0x1) and falls through when v0(=ret(0x1010b9b4)) != a2(=-0x1).
  The `bne` at 0x1010ac98 goes to 0x1010ab84 when v0(=[sym(Nocrc)]) != 0 and falls through when v0(=[sym(Nocrc)]) == 0.
  The return at 0x1010a814 has v0 = ?.
- `fog` in `usr/diags/IR/bin/irsaudit` at 0x1010c994 (n32).
  It occupies 1056 bytes.
  The `lw` at 0x1010c9b4 loads 4 bytes from abs 0x102bd978 via base t9 (0x102c4340).
  The `lw` at 0x1010c9d4 loads 4 bytes from abs 0x102bcfe0 via base t9 (0x102c4340).
  The `lw` at 0x1010c9d8 loads 4 bytes from abs 0x102be628 via base s0 (0x102c4340).
  The `sw` at 0x1010c9e4 stores 4 bytes to sym(rm) +0x0 via base s0 (sym(rm)) with value ret(mytbuInit).
  12 such accesses load 4 bytes from sym(rm) +0x0 via base s0 (sym(rm)), including `lw` at 0x1010c9e8, `lw` at 0x1010ca00, `lw` at 0x1010ca24.
  The `ld` at 0x1010c9ec loads 8 bytes from [sym(rm)] +0x4030 via base v0 ([sym(rm)]).
  The `sd` at 0x1010c9fc stores 8 bytes to [sym(rm)] +0x4030 via base v0 ([sym(rm)]) with value .
  The `ld` at 0x1010ca10 loads 8 bytes from [sym(rm)] +0x4030 via base t9 ([sym(rm)]).
  The `lw` at 0x1010ca18 loads 4 bytes from abs 0x102bde1c via base s1 (0x102c4340).
  The `sd` at 0x1010ca20 stores 8 bytes to [sym(rm)] +0x4030 via base t9 ([sym(rm)]) with value .
  The `ld` at 0x1010ca34 loads 8 bytes from [sym(rm)] +0x4030 via base a1 ([sym(rm)]).
  The `ld` at 0x1010ca50 loads 8 bytes from [sym(rm)] +0x4000 via base a3 ([sym(rm)]).
  The `sd` at 0x1010ca60 stores 8 bytes to [sym(rm)] +0x4000 via base a3 ([sym(rm)]) with value .
  The `ld` at 0x1010ca78 loads 8 bytes from [sym(rm)] +0x4000 via base a1 ([sym(rm)]).
  The `lw` at 0x1010caa8 loads 4 bytes from abs 0x102bcfe4 via base s2 (0x102c4340).
  The `lw` at 0x1010cab4 loads 4 bytes from abs 0x102bcfe8 via base s3 (0x102c4340).
  The `ld` at 0x1010cb04 loads 8 bytes from [sym(rm)] +0xa018 via base a0 ([sym(rm)]+65536).
  The `sd` at 0x1010cb10 stores 8 bytes to [sym(rm)] +0xa018 via base a0 ([sym(rm)]+65536) with value .
  2 such accesses load 8 bytes from [sym(rm)] +0xa018 via base v0 ([sym(rm)]+65536), including `ld` at 0x1010cb1c, `ld` at 0x1010cbb8.
  2 such accesses store 8 bytes to [sym(rm)] +0xa018 via base v0 ([sym(rm)]+65536), including `sd` at 0x1010cb2c, `sd` at 0x1010cbc8.
  The `ld` at 0x1010cb3c loads 8 bytes from [sym(rm)] +0xa018 via base ra ([sym(rm)]+65536).
  The `sd` at 0x1010cb48 stores 8 bytes to [sym(rm)] +0xa018 via base ra ([sym(rm)]+65536) with value .
  The `ld` at 0x1010cb54 loads 8 bytes from [sym(rm)] +0xa018 via base t8 ([sym(rm)]+65536).
  The `sd` at 0x1010cb5c stores 8 bytes to [sym(rm)] +0xa018 via base t8 ([sym(rm)]+65536) with value .
  The `ld` at 0x1010cb6c loads 8 bytes from [sym(rm)] +0xa018 via base t2 ([sym(rm)]+65536).
  The `sd` at 0x1010cb78 stores 8 bytes to [sym(rm)] +0xa018 via base t2 ([sym(rm)]+65536) with value .
  The `ld` at 0x1010cb90 loads 8 bytes from [sym(rm)] +0xa018 via base t0 ([sym(rm)]+65536).
  The `lw` at 0x1010cb94 loads 4 bytes from abs 0x102bcfd8 via base a4 (0x102c4340).
  The `sd` at 0x1010cba0 stores 8 bytes to [sym(rm)] +0xa018 via base t0 ([sym(rm)]+65536) with value .
  The `lw` at 0x1010cbcc loads 4 bytes from abs 0x101b5a28 via base a4 (0x101b5a28).
  The `jal` at 0x1010c9bc calls `mytbuInit [0x100cb4c8]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1010c9e0 calls (unnamed) [0x1010c44c] with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1010ca30 calls `tbRegWrite [0x1013eb3c]` with a0=0x806, a1=[[sym(rm)]+16432]:8, a2=(unknown), a3=(unknown).
  The `jal` at 0x1010ca74 calls `tbRegWrite [0x1013eb3c]` with a0=0x800, a1=[[sym(rm)]+16384]:8, a2=(unknown), a3=[sym(rm)], a4=-0x3.
  The `jal` at 0x1010caf4 calls (unnamed) [0x1010cdb4] with a0=0x2, a1=(unknown), a2=(unknown), a3=(unknown).
  The `tail` at 0x1010cbd0 calls `fog+676 [0x1010cc38]` with a0=0xfffffffffff7ffff, a1=0xfffffffffffeffff, a2=0x1010cc38, a3=0xfffffffffffbffff, a4=0x101b5a28, a5=-0xf1, a6=-0x10, a7=0x0.
  The `beq` at 0x1010cae8 goes to 0x1010cbd8 when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1010cc50 goes to 0x1010cad4 when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1010cc70 goes to 0x1010cad4 when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1010cc90 goes to 0x1010cad4 when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1010ccb0 goes to 0x1010cad4 when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1010ccd0 goes to 0x1010cad4 when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1010ccf0 goes to 0x1010cad4 when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1010cd0c goes to 0x1010cad4 when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1010cd2c goes to 0x1010cad4 when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1010cd4c goes to 0x1010cad4 when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1010cd6c goes to 0x1010cad4 when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1010cd8c goes to 0x1010cad4 when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0x1010cdac goes to 0x1010cad4 when condition not analyzed and falls through when condition not analyzed.
- `i2c_test` in `usr/diags/IR/bin/irsaudit` at 0x10114668 (n32).
  It occupies 3384 bytes.
  5 such accesses load 4 bytes from abs 0x102be6bc via base s8 (0x102c4340), including `lw` at 0x101146d4, `lw` at 0x10114e18, `lw` at 0x10114ea4.
  The `lw` at 0x101146e0 loads 4 bytes from abs 0x102bdea0 via base s3 (0x102c4340).
  The `lw` at 0x10114700 loads 4 bytes from abs 0x102bdc50 via base s0 (0x102c4340).
  The `lw` at 0x1011473c loads 4 bytes from abs 0x102bdea8 via base s1 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bd730 via base s5 (0x102c4340), including `lw` at 0x10114764, `lw` at 0x101147ec.
  15 such accesses load 4 bytes from abs 0x102bd09c via base a0 (0x102c4340), including `lw` at 0x10114774, `lw` at 0x10114828, `lw` at 0x101148dc.
  2 such accesses load 4 bytes from abs 0x102bd744 via base s4 (0x102c4340), including `lw` at 0x101147a4, `lw` at 0x101147b4.
  16 such accesses load 4 bytes from abs 0x102bd09c via base a1 (0x102c4340), including `lw` at 0x101147c0, `lw` at 0x10114858, `lw` at 0x10114910.
  The `lw` at 0x10114b04 loads 4 bytes from ? (base unknown) via base a1 (?).
  The `sw` at 0x10114e2c stores 4 bytes to ? (base unknown) via base v0 (?) with value 0xffffffffaaaaaaaa.
  The `lw` at 0x10114e34 loads 4 bytes from sym(i2cbuf_out) +0x10 via base s8 (sym(i2cbuf_out)).
  The `sw` at 0x10114e48 stores 4 bytes to sym(i2cbuf_out) +0x10 via base s8 (sym(i2cbuf_out)) with value ([sym(i2cbuf_out)+16] | 0x8).
  The `sw` at 0x10114e6c stores 4 bytes to ? (base unknown) via base v0 (?) with value 0x55555555.
  The `sw` at 0x10114eac stores 4 bytes to sym(i2cbuf_out) +0x30 via base s8 (sym(i2cbuf_out)) with value 0x55.
  The `sw` at 0x10114eb4 stores 4 bytes to sym(i2cbuf_out) +0x2c via base s8 (sym(i2cbuf_out)) with value 0xaa.
  The `sw` at 0x10114eb8 stores 4 bytes to sym(i2cbuf_out) +0x28 via base s8 (sym(i2cbuf_out)) with value 0x55.
  The `sw` at 0x10114ebc stores 4 bytes to sym(i2cbuf_out) +0x24 via base s8 (sym(i2cbuf_out)) with value 0xaa.
  The `sw` at 0x10114ec0 stores 4 bytes to sym(i2cbuf_out) +0x20 via base s8 (sym(i2cbuf_out)) with value 0x55.
  The `sw` at 0x10114ec8 stores 4 bytes to sym(i2cbuf_out) +0x1c via base s8 (sym(i2cbuf_out)) with value 0x9.
  The `sw` at 0x10114ed0 stores 4 bytes to sym(i2cbuf_out) +0x18 via base s8 (sym(i2cbuf_out)) with value 0x3f.
  The `sw` at 0x10114ed4 stores 4 bytes to sym(i2cbuf_out) +0x14 via base s8 (sym(i2cbuf_out)) with value 0x0.
  The `sw` at 0x10114edc stores 4 bytes to sym(i2cbuf_out) +0x10 via base s8 (sym(i2cbuf_out)) with value 0x80.
  The `sw` at 0x10114ee0 stores 4 bytes to sym(i2cbuf_out) +0xc via base s8 (sym(i2cbuf_out)) with value 0x0.
  3 such accesses store 4 bytes to sym(i2cbuf_out) +0x8 via base s8 (sym(i2cbuf_out)), including `sw` at 0x10114ee4, `sw` at 0x10114f34, `sw` at 0x10114f84.
  3 such accesses store 4 bytes to sym(i2cbuf_out) +0x4 via base s8 (sym(i2cbuf_out)), including `sw` at 0x10114eec, `sw` at 0x10114f3c, `sw` at 0x10114f8c.
  2 such accesses store 4 bytes to sym(i2cbuf_out) +0x30 via base s8 (sym(i2cbuf_out)), including `sw` at 0x10114f00, `sw` at 0x10114f50.
  2 such accesses store 4 bytes to sym(i2cbuf_out) +0x2c via base s8 (sym(i2cbuf_out)), including `sw` at 0x10114f08, `sw` at 0x10114f58.
  2 such accesses store 4 bytes to sym(i2cbuf_out) +0x28 via base s8 (sym(i2cbuf_out)), including `sw` at 0x10114f0c, `sw` at 0x10114f5c.
  2 such accesses store 4 bytes to sym(i2cbuf_out) +0x24 via base s8 (sym(i2cbuf_out)), including `sw` at 0x10114f10, `sw` at 0x10114f60.
  2 such accesses store 4 bytes to sym(i2cbuf_out) +0x20 via base s8 (sym(i2cbuf_out)), including `sw` at 0x10114f14, `sw` at 0x10114f64.
  The `sw` at 0x10114f1c stores 4 bytes to sym(i2cbuf_out) +0x1c via base s8 (sym(i2cbuf_out)) with value 0xa.
  2 such accesses store 4 bytes to sym(i2cbuf_out) +0x18 via base s8 (sym(i2cbuf_out)), including `sw` at 0x10114f24, `sw` at 0x10114f74.
  2 such accesses store 4 bytes to sym(i2cbuf_out) +0x14 via base s8 (sym(i2cbuf_out)), including `sw` at 0x10114f28, `sw` at 0x10114f78.
  2 such accesses store 4 bytes to sym(i2cbuf_out) +0x10 via base s8 (sym(i2cbuf_out)), including `sw` at 0x10114f2c, `sw` at 0x10114f7c.
  2 such accesses store 4 bytes to sym(i2cbuf_out) +0xc via base s8 (sym(i2cbuf_out)), including `sw` at 0x10114f30, `sw` at 0x10114f80.
  The `sw` at 0x10114f6c stores 4 bytes to sym(i2cbuf_out) +0x1c via base s8 (sym(i2cbuf_out)) with value 0xc.
  The `lw` at 0x101150a8 loads 4 bytes from abs 0x102be6b8 via base s2 (0x102c4340).
  The `sw` at 0x10115144 stores 4 bytes to ? (base unknown) via base a2 (?) with value ret(vcRead).
  The `lw` at 0x1011518c loads 4 bytes from sym(i2cbuf_out) +0x1c via base s8 (sym(i2cbuf_out)).
  The `lw` at 0x10115190 loads 4 bytes from sym(i2cbuf_in) +0xc via base s2 (sym(i2cbuf_in)).
  2 such accesses load 4 bytes from sym(i2cbuf_in) +0x3c via base s2 (sym(i2cbuf_in)), including `lw` at 0x101151cc, `lw` at 0x1011521c.
  The `lw` at 0x10115230 loads 4 bytes from sym(i2cbuf_out) +0x3c via base s8 (sym(i2cbuf_out)).
  The `lw` at 0x10115258 loads 4 bytes from sym(i2cbuf_in) +0x1c via base s2 (sym(i2cbuf_in)).
  The `lw` at 0x10115260 loads 4 bytes from sym(i2cbuf_in) +0x18 via base s2 (sym(i2cbuf_in)).
  The `lw` at 0x10115284 loads 4 bytes from sym(i2cbuf_in) +0x24 via base s2 (sym(i2cbuf_in)).
  The `lw` at 0x1011528c loads 4 bytes from sym(i2cbuf_in) +0x20 via base s2 (sym(i2cbuf_in)).
  The `jal` at 0x101146f0 calls `vcWrite [0x1014071c]` with a0=0xc301, a1=0x80, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011470c calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114720 calls `vcWrite [0x1014071c]` with a0=0xc300, a1=(a2 << 0x1), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011472c calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114744 calls `vcRead [0x10140bac]` with a0=0xc300, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011478c calls `kt_output_info [0x10046374]` with a0=0x101b6970, a1=0xc300, a2=(unknown), a3=ret(vcRead), a4=a0 at entry (arg0), a5=a4 at entry (arg4).
  The `jal` at 0x101147d8 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b69c8, a2=0xc300, a3=(unknown), a4=ret(vcRead).
  The `jal` at 0x101147f4 calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114800 calls `vcRead [0x10140bac]` with a0=0xc300, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114834 calls `kt_output_info [0x10046374]` with a0=0x101b6a00, a1=0xc300, a2=(unknown), a3=ret(vcRead), a4=a0 at entry (arg0).
  The `jal` at 0x10114864 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b6a50, a2=0xc300, a3=(unknown), a4=ret(vcRead).
  The `jal` at 0x10114870 calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114880 calls `vcWrite [0x1014071c]` with a0=0xc301, a1=0x20, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011488c calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011489c calls `vcWrite [0x1014071c]` with a0=0xc300, a1=a3 at entry (arg3), a2=(unknown), a3=(unknown).
  The `jal` at 0x101148a8 calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101148b4 calls `vcRead [0x10140bac]` with a0=0xc300, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101148f0 calls `kt_output_info [0x10046374]` with a0=0x101b6970, a1=0xc300, a2=a3 at entry (arg3), a3=(unknown), a4=a0 at entry (arg0), a5=a4 at entry (arg4).
  The `jal` at 0x10114924 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b6a88, a2=0xc300, a3=a3 at entry (arg3), a5=a0 at entry (arg0).
  The `jal` at 0x10114930 calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011493c calls `vcRead [0x10140bac]` with a0=0xc300, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011496c calls `kt_output_info [0x10046374]` with a0=0x101b6ac8, a1=0xc300, a2=a3 at entry (arg3), a3=(unknown).
  The `jal` at 0x10114998 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b6a50, a2=0xc300, a3=a3 at entry (arg3).
  The `jal` at 0x101149a4 calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101149b4 calls `vcWrite [0x1014071c]` with a0=0xc301, a1=0xc1, a2=(unknown), a3=(unknown).
  The `jal` at 0x101149c0 calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101149d0 calls `vcRead [0x10140bac]` with a0=0xc301, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101149e8 calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114a08 calls `vcRead [0x10140bac]` with a0=0xc301, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114a24 calls `vcWrite [0x1014071c]` with a0=0xc300, a1=(a4 << 0x1), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114a30 calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114a40 calls `vcWrite [0x1014071c]` with a0=0xc301, a1=0xc5, a2=(unknown), a3=(unknown).
  The `jal` at 0x10114a4c calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114a70 calls `vcRead [0x10140bac]` with a0=0xc301, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114a9c calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114ab8 calls `vcRead [0x10140bac]` with a0=0xc301, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114ad0 calls `vcRead [0x10140bac]` with a0=0xc301, a1=(unknown), a2=(unknown), a3=(unknown), a4=ret(vcRead).
  The `jal` at 0x10114ae8 calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114b0c calls `vcWrite [0x1014071c]` with a0=0xc300, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114b18 calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114b3c calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b6c28, a2=(unknown), a3=(unknown).
  The `jal` at 0x10114b64 calls `vcRead [0x10140bac]` with a0=0xc301, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114b84 calls `kt_output_dbug [0x10046d74]` with a0=0x7, a1=0x101b6c48, a2=ret(vcRead), a3=(unknown).
  The `jal` at 0x10114b94 calls `vcWrite [0x1014071c]` with a0=0xc301, a1=0xc3, a2=(unknown), a3=(unknown).
  The `jal` at 0x10114ba0 calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114bac calls `vcRead [0x10140bac]` with a0=0xc301, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114bcc calls `kt_output_dbug [0x10046d74]` with a0=0x7, a1=0x101b6c80, a2=ret(vcRead), a3=(unknown).
  The `jal` at 0x10114bdc calls `vcWrite [0x1014071c]` with a0=0xc301, a1=0xc1, a2=(unknown), a3=(unknown).
  The `jal` at 0x10114be8 calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114bf4 calls `vcRead [0x10140bac]` with a0=0xc301, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114c14 calls `kt_output_dbug [0x10046d74]` with a0=0x7, a1=0x101b6cb8, a2=ret(vcRead), a3=(unknown).
  The `jal` at 0x10114c20 calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114c30 calls `vcRead [0x10140bac]` with a0=0xc301, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114c5c calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114c78 calls `vcRead [0x10140bac]` with a0=0xc301, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114c94 calls `vcRead [0x10140bac]` with a0=0xc301, a1=(unknown), a2=(unknown), a3=ret(vcRead).
  The `jal` at 0x10114cb8 calls `kt_output_dbug [0x10046d74]` with a0=0x7, a1=0x101b6d68, a2=ret(vcRead), a3=(unknown).
  The `jal` at 0x10114cc8 calls `vcWrite [0x1014071c]` with a0=0xc300, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114cd4 calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114ce4 calls `vcWrite [0x1014071c]` with a0=0xc301, a1=0xc5, a2=(unknown), a3=(unknown).
  The `jal` at 0x10114cf0 calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114d00 calls `vcRead [0x10140bac]` with a0=0xc301, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114d18 calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114d30 calls `vcRead [0x10140bac]` with a0=0xc301, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114d48 calls `vcRead [0x10140bac]` with a0=0xc301, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114d70 calls `kt_output_info [0x10046374]` with a0=0x101b6e08, a1=a0 at entry (arg0), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114d9c calls `kt_output_info [0x10046374]` with a0=0x101b6b70, a1=(unknown), a2=(unknown), a3=a0 at entry (arg0).
  The `jal` at 0x10114df4 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b6b48, a2=(unknown), a3=(unknown), a4=ret(vcRead).
  The `jal` at 0x10114e8c calls `kt_output_info [0x10046374]` with a0=0x101b6b10, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114fa0 calls `kt_output_info [0x10046374]` with a0=0x101b6be8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10114fc4 calls `kt_output_info [0x10046374]` with a0=0x101b6d18, a1=(unknown), a2=a0 at entry (arg0), a3=(unknown).
  The `jal` at 0x10114ff0 calls `kt_output_info [0x10046374]` with a0=0x101b6da0, a1=(unknown), a2=a0 at entry (arg0), a3=a4 at entry (arg4).
  The `jal` at 0x10115014 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b6ce8, a2=(unknown), a3=ret(vcRead).
  The `jal` at 0x10115024 calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10115030 calls `vcRead [0x10140bac]` with a0=0xc300, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10115064 calls `kt_output_info [0x10046374]` with a0=0x101b6e58, a1=a4 at entry (arg4), a2=(unknown), a3=a0 at entry (arg0).
  The `jal` at 0x1011508c calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b6ea0, a2=a4 at entry (arg4), a3=(unknown).
  The `jal` at 0x10115098 calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101150c4 calls `vcRead [0x10140bac]` with a0=0xc301, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101150dc calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101150fc calls `vcRead [0x10140bac]` with a0=0xc301, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10115120 calls `vcRead [0x10140bac]` with a0=0xc300, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011514c calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b6f20, a2=(unknown), a3=ret(vcRead).
  The `jal` at 0x10115158 calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101151c0 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b6f40, a2=(unknown), a3=(unknown).
  The `jal` at 0x101151e8 calls `kt_output_info [0x10046374]` with a0=0x101b6ed0, a1=(unknown), a2=a0 at entry (arg0), a3=(unknown).
  The `jal` at 0x10115210 calls `kt_output_info [0x10046374]` with a0=0x101b6f78, a1=(unknown), a2=(unknown), a3=a0 at entry (arg0).
  The `jal` at 0x10115244 calls `kt_output_info [0x10046374]` with a0=0x101b6fb8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011527c calls `kt_output_dbug [0x10046d74]` with a0=0x3, a1=0x101b6fe8, a2=(unknown), a3=[sym(i2cbuf_in)+28]+8.
  The `jal` at 0x101152a8 calls `kt_output_dbug [0x10046d74]` with a0=0x3, a1=0x101b7008, a2=(unknown), a3=[sym(i2cbuf_in)+36]+8.
  The `jal` at 0x101152c0 calls `vcWrite [0x1014071c]` with a0=0xc301, a1=0x40, a2=(unknown), a3=(unknown).
  The `jal` at 0x101152cc calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101152e4 calls `vcRead [0x10140bac]` with a0=0xc301, a1=(unknown), a2=(unknown), a3=0xf.
  The `jal` at 0x101152fc calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011531c calls `vcRead [0x10140bac]` with a0=0xc301, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10115338 calls `vcWrite [0x1014071c]` with a0=0xc301, a1=0xc3, a2=(unknown), a3=(unknown).
  The `jal` at 0x10115344 calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10115350 calls `vcRead [0x10140bac]` with a0=0xc300, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011535c calls `dgo_wait [0x1011935c]` with a0=0xf, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10115384 calls `kt_output_info [0x10046374]` with a0=0x101b6ed0, a1=(unknown), a2=a0 at entry (arg0), a3=(unknown).
  The `beq` at 0x101146ac goes to 0x10114e9c when a0 == 0 and falls through when a0 != 0.
  The `beq` at 0x101146b8 goes to 0x10114ef0 when a0 == v0(=0x1) and falls through when a0 != v0(=0x1).
  The `beq` at 0x101146c0 goes to 0x10114f40 when a0 == v1(=0x2) and falls through when a0 != v1(=0x2).
  The `beq` at 0x101146c8 goes to 0x10114e04 when s7(=a0) == a0(=0x7) and falls through when s7(=a0) != a0(=0x7).
  The `beq` at 0x10114750 goes to 0x101147a8 when v0(=ret(vcRead)) == t0(?) and falls through when v0(=ret(vcRead)) != t0(?).
  The `beq` at 0x1011480c goes to 0x10114844 when t8(?) == v0(=ret(vcRead)) and falls through when t8(?) != v0(=ret(vcRead)).
  The `beq` at 0x101148c4 goes to 0x10114900 when a2(=a3) == a3(?) and falls through when a2(=a3) != a3(?).
  The `beq` at 0x1011494c goes to 0x1011497c when a2(?) == a4(?) and falls through when a2(?) != a4(?).
  The `bne` at 0x101149dc goes to 0x10114a1c when (v0(=ret(vcRead)) & 0x1) != 0 and falls through when (v0(=ret(vcRead)) & 0x1) == 0.
  The `beq` at 0x101149fc goes to 0x10114e78 when v0(?) >= 0x33 (signed) and falls through when v0(?) < 0x33 (signed).
  The `beq` at 0x10114a14 goes to 0x101149e4 when (v0(=ret(vcRead)) & 0x1) == 0 and falls through when (v0(=ret(vcRead)) & 0x1) != 0.
  The `beq` at 0x10114a7c goes to 0x10114acc when (v0(=ret(vcRead)) & 0x80) == 0 and falls through when (v0(=ret(vcRead)) & 0x80) != 0.
  The `beq` at 0x10114a90 goes to 0x10114ddc when t0(?) == 0 and falls through when t0(?) != 0.
  The `beq` at 0x10114aac goes to 0x10114d80 when s2(?) >= 0x33 (signed) and falls through when s2(?) < 0x33 (signed).
  The `bne` at 0x10114ac4 goes to 0x10114a84 when (v0(=ret(vcRead)) & 0x80) != 0 and falls through when (v0(=ret(vcRead)) & 0x80) == 0.
  The `bne` at 0x10114adc goes to 0x10114f90 when (v0(=ret(vcRead)) & 0x8) != 0 and falls through when (v0(=ret(vcRead)) & 0x8) == 0.
  The `beq` at 0x10114af8 goes to 0x10114b60 when s2(?) == t9(=0xd) and falls through when s2(?) != t9(=0xd).
  The `bne` at 0x10114b58 goes to 0x10114a68 when s2(?) < 0xe (signed) and falls through when s2(?) >= 0xe (signed).
  The `bne` at 0x10114c3c goes to 0x10114c90 when (v0(=ret(vcRead)) & 0x1) != 0 and falls through when (v0(=ret(vcRead)) & 0x1) == 0.
  The `beq` at 0x10114c50 goes to 0x10115000 when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x10114c6c goes to 0x10114fb0 when s2(?) >= 0x33 (signed) and falls through when s2(?) < 0x33 (signed).
  The `beq` at 0x10114c88 goes to 0x10114c48 when (v0(=ret(vcRead)) & 0x1) == 0 and falls through when (v0(=ret(vcRead)) & 0x1) != 0.
  The `beq` at 0x10114d0c goes to 0x10114d48 when (v0(=ret(vcRead)) & 0x80) == 0 and falls through when (v0(=ret(vcRead)) & 0x80) != 0.
  The `beq` at 0x10114d28 goes to 0x10114fd4 when s2(?) >= 0x33 (signed) and falls through when s2(?) < 0x33 (signed).
  The `bne` at 0x10114d3c goes to 0x10114d18 when (v0(=ret(vcRead)) & 0x80) != 0 and falls through when (v0(=ret(vcRead)) & 0x80) == 0.
  The `beq` at 0x10114d54 goes to 0x10115024 when (v0(=ret(vcRead)) & 0x8) == 0 and falls through when (v0(=ret(vcRead)) & 0x8) != 0.
  The `beq` at 0x10114e44 goes to 0x10114e70 when a0(?) >= 0xd (signed) and falls through when a0(?) < 0xd (signed).
  The `bne` at 0x10114e60 goes to 0x10114e2c when at(?) != 0 and falls through when at(?) == 0.
  The `beq` at 0x10115040 goes to 0x10115074 when a2(=a4) == t0(?) and falls through when a2(=a4) != t0(?).
  The `beq` at 0x101150d0 goes to 0x10115114 when (v0(=ret(vcRead)) & 0x80) == 0 and falls through when (v0(=ret(vcRead)) & 0x80) != 0.
  The `beq` at 0x101150f0 goes to 0x101151d0 when v0(?) >= 0x33 (signed) and falls through when v0(?) < 0x33 (signed).
  The `bne` at 0x10115108 goes to 0x101150dc when (v0(=ret(vcRead)) & 0x80) != 0 and falls through when (v0(=ret(vcRead)) & 0x80) == 0.
  The `beq` at 0x10115118 goes to 0x101152b8 when at(?) == v0(=0xf) and falls through when at(?) != v0(=0xf).
  The `beq` at 0x10115168 goes to 0x101152dc when a2(?) == a3(=0xf) and falls through when a2(?) != a3(=0xf).
  The `bne` at 0x10115184 goes to 0x101150bc when a4(?) < 0x10 (signed) and falls through when a4(?) >= 0x10 (signed).
  The `beq` at 0x1011519c goes to 0x101151f8 when (v0(=[sym(i2cbuf_out)+28]) & 0x8) == 0 and falls through when (v0(=[sym(i2cbuf_out)+28]) & 0x8) != 0.
  The `bne` at 0x101151a4 goes to 0x101151f8 when v0(?) != a2(?) and falls through when v0(?) == a2(?).
  The `beq` at 0x10115224 goes to 0x10115254 when (a1(=[sym(i2cbuf_in)+60]) & 0xfc) == 0 and falls through when (a1(=[sym(i2cbuf_in)+60]) & 0xfc) != 0.
  The `blez` at 0x10115254 goes to 0x101152b0 when a1 <= 0 (signed) and falls through when a1 > 0 (signed).
  The `beq` at 0x101152f0 goes to 0x10115334 when (v0(=ret(vcRead)) & 0x80) == 0 and falls through when (v0(=ret(vcRead)) & 0x80) != 0.
  The `beq` at 0x10115310 goes to 0x1011536c when v0(?) >= 0x33 (signed) and falls through when v0(?) < 0x33 (signed).
  The `bne` at 0x10115328 goes to 0x101152fc when (v0(=ret(vcRead)) & 0x80) != 0 and falls through when (v0(=ret(vcRead)) & 0x80) == 0.
  The return at 0x10114dd4 has v0 = ?.
- `dgo_clearfb` in `usr/diags/IR/bin/irsaudit` at 0x1011582c (n32).
  It occupies 1964 bytes.
  The `lw` at 0x10115854 loads 4 bytes from abs 0x102bddf4 via base s1 (0x102c4340).
  The `lw` at 0x1011586c loads 4 bytes from a0 (arg0 at entry) +0x16c via base a0 (a0).
  The `lw` at 0x10115894 loads 4 bytes from abs 0x102bd458 via base s2 (0x102c4340).
  The `lw` at 0x101158dc loads 4 bytes from abs 0x102bd45c via base t9 (0x102c4340).
  The `lw` at 0x101158e0 loads 4 bytes from abs 0x102be77c via base a0 (0x102c4340).
  The `lw` at 0x101158f0 loads 4 bytes from sym(pipeFD) +0x0 via base a0 (sym(pipeFD)).
  The `lw` at 0x10115900 loads 4 bytes from abs 0x102bd978 via base t9 (0x102c4340).
  The `lw` at 0x10115920 loads 4 bytes from abs 0x102bd744 via base s3 (0x102c4340).
  5 such accesses load 4 bytes from abs 0x102bd09c via base a1 (0x102c4340), including `lw` at 0x10115928, `lw` at 0x10115964, `lw` at 0x10115e34.
  The `lw` at 0x1011592c loads 4 bytes from abs 0x102be628 via base s0 (0x102c4340).
  The `sw` at 0x10115940 stores 4 bytes to sym(rm) +0x0 via base s0 (sym(rm)) with value ret(mytbuInit).
  The `lw` at 0x10115980 loads 4 bytes from abs 0x102be1e0 via base t8 (0x102c4340).
  The `lw` at 0x10115984 loads 4 bytes from sym(KONAINFO) +0x0 via base t8 (sym(KONAINFO)).
  53 such accesses load 4 bytes from sym(rm) +0x0 via base s0 (sym(rm)), including `lw` at 0x10115988, `lw` at 0x101159c4, `lw` at 0x101159e0.
  The `lw` at 0x10115990 loads 4 bytes from [sym(KONAINFO)] +0x0 via base t8 ([sym(KONAINFO)]).
  The `ld` at 0x101159a0 loads 8 bytes from [sym(rm)] +0xe000 via base t9 ([sym(rm)]+65536).
  The `lw` at 0x101159b0 loads 4 bytes from abs 0x102bde1c via base s1 (0x102c4340).
  The `sd` at 0x101159c0 stores 8 bytes to [sym(rm)] +0xe000 via base t9 ([sym(rm)]+65536) with value .
  2 such accesses load 8 bytes from [sym(rm)] +0xe000 via base a1 ([sym(rm)]+65536), including `ld` at 0x101159dc, `ld` at 0x10115a68.
  The `ld` at 0x101159e8 loads 8 bytes from [sym(rm)] +0xe000 via base t3 ([sym(rm)]+65536).
  The `sd` at 0x101159f0 stores 8 bytes to [sym(rm)] +0xe000 via base t3 ([sym(rm)]+65536) with value ([[sym(rm)]+57344]:8 | 0x40).
  The `ld` at 0x101159fc loads 8 bytes from [sym(rm)] +0xe000 via base t1 ([sym(rm)]+65536).
  The `sd` at 0x10115a04 stores 8 bytes to [sym(rm)] +0xe000 via base t1 ([sym(rm)]+65536) with value ([[sym(rm)]+57344]:8 | 0x80).
  The `ld` at 0x10115a10 loads 8 bytes from [sym(rm)] +0xe000 via base a7 ([sym(rm)]+65536).
  The `sd` at 0x10115a18 stores 8 bytes to [sym(rm)] +0xe000 via base a7 ([sym(rm)]+65536) with value ([[sym(rm)]+57344]:8 | 0x100).
  The `ld` at 0x10115a24 loads 8 bytes from [sym(rm)] +0xe000 via base a5 ([sym(rm)]+65536).
  The `sd` at 0x10115a2c stores 8 bytes to [sym(rm)] +0xe000 via base a5 ([sym(rm)]+65536) with value ([[sym(rm)]+57344]:8 | 0x200).
  The `ld` at 0x10115a38 loads 8 bytes from [sym(rm)] +0xe000 via base a3 ([sym(rm)]+65536).
  The `sd` at 0x10115a50 stores 8 bytes to [sym(rm)] +0xe000 via base a3 ([sym(rm)]+65536) with value .
  2 such accesses load 8 bytes from [sym(rm)] +0x4030 via base a3 ([sym(rm)]), including `ld` at 0x10115a74, `ld` at 0x10115aa0.
  2 such accesses store 8 bytes to [sym(rm)] +0x4030 via base a3 ([sym(rm)]), including `sd` at 0x10115a84, `sd` at 0x10115ab0.
  2 such accesses load 8 bytes from [sym(rm)] +0x4030 via base a1 ([sym(rm)]), including `ld` at 0x10115a98, `ld` at 0x10115ac4.
  The `ld` at 0x10115ad4 loads 8 bytes from [sym(rm)] +0x1fe88 via base a3 ([sym(rm)]+131072).
  The `sd` at 0x10115ae4 stores 8 bytes to [sym(rm)] +0x1fe88 via base a3 ([sym(rm)]+131072) with value .
  The `ld` at 0x10115afc loads 8 bytes from [sym(rm)] +0x1fe88 via base a1 ([sym(rm)]+131072).
  The `ld` at 0x10115b08 loads 8 bytes from [sym(rm)] +0x1fe10 via base a5 ([sym(rm)]+131072).
  The `sd` at 0x10115b14 stores 8 bytes to [sym(rm)] +0x1fe10 via base a5 ([sym(rm)]+131072) with value .
  The `ld` at 0x10115b24 loads 8 bytes from [sym(rm)] +0x1fe10 via base a3 ([sym(rm)]+131072).
  The `sd` at 0x10115b38 stores 8 bytes to [sym(rm)] +0x1fe10 via base a3 ([sym(rm)]+131072) with value .
  The `ld` at 0x10115b50 loads 8 bytes from [sym(rm)] +0x1fe10 via base a1 ([sym(rm)]+131072).
  The `ld` at 0x10115b5c loads 8 bytes from [sym(rm)] +0x1fe18 via base a5 ([sym(rm)]+131072).
  The `sd` at 0x10115b68 stores 8 bytes to [sym(rm)] +0x1fe18 via base a5 ([sym(rm)]+131072) with value .
  The `ld` at 0x10115b78 loads 8 bytes from [sym(rm)] +0x1fe18 via base a3 ([sym(rm)]+131072).
  The `sd` at 0x10115b8c stores 8 bytes to [sym(rm)] +0x1fe18 via base a3 ([sym(rm)]+131072) with value .
  The `ld` at 0x10115ba4 loads 8 bytes from [sym(rm)] +0x1fe18 via base a1 ([sym(rm)]+131072).
  The `ld` at 0x10115bac loads 8 bytes from [sym(rm)] +0x4038 via base a3 ([sym(rm)]).
  The `sd` at 0x10115bb8 stores 8 bytes to [sym(rm)] +0x4038 via base a3 ([sym(rm)]) with value .
  The `ld` at 0x10115bcc loads 8 bytes from [sym(rm)] +0x4038 via base a1 ([sym(rm)]).
  The `ld` at 0x10115bd4 loads 8 bytes from [sym(rm)] +0x4040 via base a3 ([sym(rm)]).
  The `sd` at 0x10115be0 stores 8 bytes to [sym(rm)] +0x4040 via base a3 ([sym(rm)]) with value .
  The `ld` at 0x10115bf4 loads 8 bytes from [sym(rm)] +0x4040 via base a1 ([sym(rm)]).
  The `sd` at 0x10115c04 stores 8 bytes to [sym(rm)] +0x1ffb0 via base a3 ([sym(rm)]+131072) with value 0x1.
  The `ld` at 0x10115c1c loads 8 bytes from [sym(rm)] +0x1ffb0 via base a1 ([sym(rm)]+131072).
  The `ld` at 0x10115c28 loads 8 bytes from [sym(rm)] +0xe010 via base v1 ([sym(rm)]+65536).
  The `sd` at 0x10115c30 stores 8 bytes to [sym(rm)] +0xe010 via base v1 ([sym(rm)]+65536) with value ([[sym(rm)]+57360]:8 | 0xf).
  The `ld` at 0x10115c3c loads 8 bytes from [sym(rm)] +0xe010 via base at ([sym(rm)]+65536).
  The `sd` at 0x10115c48 stores 8 bytes to [sym(rm)] +0xe010 via base at ([sym(rm)]+65536) with value .
  The `ld` at 0x10115c54 loads 8 bytes from [sym(rm)] +0xe010 via base t9 ([sym(rm)]+65536).
  The `sd` at 0x10115c60 stores 8 bytes to [sym(rm)] +0xe010 via base t9 ([sym(rm)]+65536) with value .
  The `ld` at 0x10115c6c loads 8 bytes from [sym(rm)] +0xe010 via base t3 ([sym(rm)]+65536).
  The `sd` at 0x10115c78 stores 8 bytes to [sym(rm)] +0xe010 via base t3 ([sym(rm)]+65536) with value .
  The `ld` at 0x10115c84 loads 8 bytes from [sym(rm)] +0xe010 via base t1 ([sym(rm)]+65536).
  The `sd` at 0x10115c90 stores 8 bytes to [sym(rm)] +0xe010 via base t1 ([sym(rm)]+65536) with value .
  The `ld` at 0x10115c9c loads 8 bytes from [sym(rm)] +0xe010 via base a7 ([sym(rm)]+65536).
  The `sd` at 0x10115ca4 stores 8 bytes to [sym(rm)] +0xe010 via base a7 ([sym(rm)]+65536) with value ([[sym(rm)]+57360]:8 | 0x800).
  The `ld` at 0x10115cb0 loads 8 bytes from [sym(rm)] +0xe010 via base a5 ([sym(rm)]+65536).
  The `sd` at 0x10115cbc stores 8 bytes to [sym(rm)] +0xe010 via base a5 ([sym(rm)]+65536) with value .
  The `ld` at 0x10115cc8 loads 8 bytes from [sym(rm)] +0xe010 via base a3 ([sym(rm)]+65536).
  The `sd` at 0x10115cd4 stores 8 bytes to [sym(rm)] +0xe010 via base a3 ([sym(rm)]+65536) with value .
  The `ld` at 0x10115cec loads 8 bytes from [sym(rm)] +0xe010 via base a1 ([sym(rm)]+65536).
  The `ld` at 0x10115cf8 loads 8 bytes from [sym(rm)] +0xe018 via base a3 ([sym(rm)]+65536).
  The `sd` at 0x10115d04 stores 8 bytes to [sym(rm)] +0xe018 via base a3 ([sym(rm)]+65536) with value .
  The `ld` at 0x10115d1c loads 8 bytes from [sym(rm)] +0xe018 via base a1 ([sym(rm)]+65536).
  The `ld` at 0x10115d28 loads 8 bytes from [sym(rm)] +0xe030 via base a3 ([sym(rm)]+65536).
  The `sd` at 0x10115d30 stores 8 bytes to [sym(rm)] +0xe030 via base a3 ([sym(rm)]+65536) with value .
  The `ld` at 0x10115d48 loads 8 bytes from [sym(rm)] +0xe030 via base a1 ([sym(rm)]+65536).
  The `ld` at 0x10115d54 loads 8 bytes from [sym(rm)] +0xe038 via base a3 ([sym(rm)]+65536).
  The `sd` at 0x10115d5c stores 8 bytes to [sym(rm)] +0xe038 via base a3 ([sym(rm)]+65536) with value .
  The `ld` at 0x10115d74 loads 8 bytes from [sym(rm)] +0xe038 via base a1 ([sym(rm)]+65536).
  The `ld` at 0x10115d80 loads 8 bytes from [sym(rm)] +0xe040 via base a3 ([sym(rm)]+65536).
  The `sd` at 0x10115d8c stores 8 bytes to [sym(rm)] +0xe040 via base a3 ([sym(rm)]+65536) with value .
  The `ld` at 0x10115da8 loads 8 bytes from [sym(rm)] +0xe040 via base a1 ([sym(rm)]+65536).
  2 such accesses load 8 bytes from [sym(rm)] +0xe058 via base a3 ([sym(rm)]+65536), including `ld` at 0x10115db8, `ld` at 0x10115ebc.
  2 such accesses store 8 bytes to [sym(rm)] +0xe058 via base a3 ([sym(rm)]+65536), including `sd` at 0x10115dc4, `sd` at 0x10115ed0.
  2 such accesses load 8 bytes from [sym(rm)] +0xe058 via base a1 ([sym(rm)]+65536), including `ld` at 0x10115ddc, `ld` at 0x10115ee8.
  The `sd` at 0x10115de8 stores 8 bytes to [sym(rm)] +0xe048 via base a2 ([sym(rm)]+65536) with value 0x0.
  2 such accesses load 8 bytes from [sym(rm)] +0xe048 via base a1 ([sym(rm)]+65536), including `ld` at 0x10115e00, `ld` at 0x10115eb0.
  The `lw` at 0x10115e0c loads 4 bytes from abs 0x102bd974 via base s4 (0x102c4340).
  The `lw` at 0x10115e54 loads 4 bytes from abs 0x102be634 via base s5 (0x102c4340).
  2 such accesses load 4 bytes from sym(word_count) +0x0 via base s5 (sym(word_count)), including `lw` at 0x10115e58, `lw` at 0x10115f04.
  The `sd` at 0x10115e98 stores 8 bytes to [sym(rm)] +0xe048 via base a3 ([sym(rm)]+65536) with value .
  The `lw` at 0x10115f28 loads 4 bytes from abs 0x102bd420 via base t9 (0x102c4340).
  The `lw` at 0x10115f44 loads 4 bytes from abs 0x102bd5b8 via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bd728 via base t9 (0x102c4340), including `lw` at 0x10115f90, `lw` at 0x10115fbc.
  The `jal` at 0x10115870 calls `fcPioRead32 [0x1013dd88]` with a0=0x208, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1011589c calls `sginap` with a0=0x5, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101158a8 calls `fcPioRead32 [0x1013dd88]` with a0=0x208, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x101158ec calls `ioctl` with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=(unknown).
  The `jal` at 0x10115904 calls `mytbuInit [0x100cb4c8]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10115944 calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7340, a2=[a0+364], a3=(unknown).
  The `jal` at 0x10115970 calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7350, a2=0x4ff, a3=([a0+364] << 0xa)-1.
  The `jal` at 0x101159d8 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c00, a1=[[sym(rm)]+57344]:8, a2=(unknown), a3=(unknown).
  The `jal` at 0x10115a64 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c00, a1=[[sym(rm)]+57344]:8, a2=(unknown), a3=[sym(rm)]+65536, a5=-0x3d, a6=([[sym(rm)]+57344]:8 | 0x100), a7=[sym(rm)]+65536.
  The `jal` at 0x10115a94 calls `tbRegWrite [0x1013eb3c]` with a0=0x806, a1=[[sym(rm)]+16432]:8, a2=(unknown), a3=[sym(rm)], a4=-0xc001.
  The `jal` at 0x10115ac0 calls `tbRegWrite [0x1013eb3c]` with a0=0x806, a1=[[sym(rm)]+16432]:8, a2=(unknown), a3=[sym(rm)], a4=-0xd.
  The `jal` at 0x10115af8 calls `tbRegWrite [0x1013eb3c]` with a0=0x3fd1, a1=[[sym(rm)]+130696]:8, a2=(unknown), a3=[sym(rm)]+131072, a4=-0x1000.
  The `jal` at 0x10115b4c calls `tbRegWrite [0x1013eb3c]` with a0=0x3fc2, a1=[[sym(rm)]+130576]:8, a2=(unknown), a3=[sym(rm)]+131072, a5=[[sym(rm)]+130576]:8, a6=[[sym(rm)]+130576]:8.
  The `jal` at 0x10115ba0 calls `tbRegWrite [0x1013eb3c]` with a0=0x3fc3, a1=[[sym(rm)]+130584]:8, a2=(unknown), a3=[sym(rm)]+131072, a5=[[sym(rm)]+130584]:8, a6=[[sym(rm)]+130584]:8.
  The `jal` at 0x10115bc8 calls `tbRegWrite [0x1013eb3c]` with a0=0x807, a1=[[sym(rm)]+16440]:8, a2=(unknown), a3=[sym(rm)], a4=[[sym(rm)]+16440]:8.
  The `jal` at 0x10115bf0 calls `tbRegWrite [0x1013eb3c]` with a0=0x808, a1=[[sym(rm)]+16448]:8, a2=(unknown), a3=[sym(rm)], a4=[[sym(rm)]+16448]:8.
  The `jal` at 0x10115c18 calls `tbRegWrite [0x1013eb3c]` with a0=0x3ff6, a1=[[sym(rm)]+130992]:8, a2=0x1, a3=[sym(rm)]+131072.
  The `jal` at 0x10115ce8 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c02, a1=[[sym(rm)]+57360]:8, a2=(unknown), a3=[sym(rm)]+65536, a4=-0x2001, a5=[sym(rm)]+65536, a6=-0x1001, a7=[sym(rm)]+65536.
  The `jal` at 0x10115d18 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c03, a1=[[sym(rm)]+57368]:8, a2=(unknown), a3=[sym(rm)]+65536.
  The `jal` at 0x10115d44 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c06, a1=[[sym(rm)]+57392]:8, a2=(unknown), a3=[sym(rm)]+65536.
  The `jal` at 0x10115d70 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c07, a1=[[sym(rm)]+57400]:8, a2=(unknown), a3=[sym(rm)]+65536.
  The `jal` at 0x10115da4 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c08, a1=[[sym(rm)]+57408]:8, a2=(unknown), a3=[sym(rm)]+65536, a4=[[sym(rm)]+57408]:8.
  The `jal` at 0x10115dd8 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c0b, a1=[[sym(rm)]+57432]:8, a2=(unknown), a3=[sym(rm)]+65536.
  The `jal` at 0x10115dfc calls `tbRegWrite [0x1013eb3c]` with a0=0x1c09, a1=[[sym(rm)]+57416]:8, a2=[sym(rm)]+65536, a3=(unknown).
  The `jal` at 0x10115e20 calls `testClear [0x100cb340]` with a0=0x0, a1=0x4ff, a2=0x0, a3=([a0+364] << 0xa)-1.
  The `jal` at 0x10115e44 calls `kt_output_dbug [0x10046d74]` with a0=0x1, a1=0x101b7368, a2=a2 at entry (arg2), a3=(unknown).
  The `jal` at 0x10115eac calls `tbRegWrite [0x1013eb3c]` with a0=0x1c09, a1=[[sym(rm)]+57416]:8, a2=(unknown), a3=[sym(rm)]+65536.
  The `jal` at 0x10115ee4 calls `tbRegWrite [0x1013eb3c]` with a0=0x1c0b, a1=[[sym(rm)]+57432]:8, a2=(unknown), a3=[sym(rm)]+65536.
  The `jal` at 0x10115efc calls `testClear [0x100cb340]` with a0=0x0, a1=0x4ff, a2=0x0, a3=([a0+364] << 0xa)-1.
  The `jalr` at 0x10115f34 calls `free` with a0=[sym(rm)], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10115f4c calls `waitDrawLoadDone [0x1002c1d0]` with a0=a0 at entry (arg0), a1=0x2, a2=(unknown), a3=(unknown).
  The `jal` at 0x10115f9c calls `kt_output_rslt [0x10045978]` with a0=0x0, a1=0x101b7308, a2=(unknown), a3=(unknown).
  The `jal` at 0x10115fc8 calls `kt_output_rslt [0x10045978]` with a0=0x0, a1=0x101b7320, a2=(unknown), a3=(unknown).
  The `beq` at 0x10115880 goes to 0x101158cc when v0(=ret(fcPioRead32)) == 0 and falls through when v0(=ret(fcPioRead32)) != 0.
  The `bne` at 0x101158bc goes to 0x10115898 when s0(?) < 0x5 (unsigned) and falls through when s0(?) >= 0x5 (unsigned).
  The `beq` at 0x101158c4 goes to 0x10115f84 when t9(?) == 0 and falls through when t9(?) != 0.
  The `bltz` at 0x101158f4 goes to 0x10115fac when v0(=ret(ioctl)) < 0 (signed) and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `bne` at 0x10115e60 goes to 0x10115f18 when a2(=[sym(word_count)]) < 0x2 (signed) and falls through when a2(=[sym(word_count)]) >= 0x2 (signed).
  The `bne` at 0x10115f10 goes to 0x10115e90 when s3(?) < a4(=[sym(word_count)]) (signed) and falls through when s3(?) >= a4(=[sym(word_count)]) (signed).
  The return at 0x10115f7c has v0 = ?.
- `dgo_setup_video` in `usr/diags/IR/bin/irsaudit` at 0x101161a0 (n32).
  It occupies 1176 bytes.
  The `lw` at 0x1011621c loads 4 bytes from abs 0x102bd744 via base s0 (0x102c4340).
  The `lw` at 0x1011622c loads 4 bytes from abs 0x102bd09c via base at (0x102c4340).
  The `lw` at 0x1011626c loads 4 bytes from abs 0x102bdea0 via base s1 (0x102c4340).
  The `lw` at 0x10116270 loads 4 bytes from ? (base unknown) via base s2 (?).
  7 such accesses load 4 bytes from abs 0x102bd09c via base a1 (0x102c4340), including `lw` at 0x10116284, `lw` at 0x101162b8, `lw` at 0x101163c0.
  The `lw` at 0x101162f8 loads 4 bytes from abs 0x102bd7cc via base s4 (0x102c4340).
  The `lw` at 0x10116300 loads 4 bytes from abs 0x102bd0a0 via base s3 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x1020c984 via base s3 (0x1020c984), including `lw` at 0x1011630c, `lw` at 0x10116410.
  The `lw` at 0x10116330 loads 4 bytes from abs 0x102bd92c via base s1 (0x102c4340).
  The `lw` at 0x1011633c loads 4 bytes from abs 0x102bd0a4 via base s2 (0x102c4340).
  2 such accesses store 4 bytes to abs 0x10345670 via base s2 (0x10345438), including `sw` at 0x10116354, `sw` at 0x10116428.
  6 such accesses load 4 bytes from abs 0x102bd730 via base t9 (0x102c4340), including `lw` at 0x1011637c, `lw` at 0x101163f0, `lw` at 0x1011645c.
  6 such accesses load 4 bytes from abs 0x102bd09c via base a0 (0x102c4340), including `lw` at 0x10116380, `lw` at 0x101163f4, `lw` at 0x10116460.
  2 such accesses load 4 bytes from abs 0x1020c988 via base s3 (0x1020c984), including `lw` at 0x10116498, `lw` at 0x101165b0.
  2 such accesses store 4 bytes to abs 0x10345674 via base s2 (0x10345438), including `sw` at 0x101164b0, `sw` at 0x101165c8.
  The `lw` at 0x10116508 loads 4 bytes from abs 0x10345670 via base s2 (0x10345438).
  The `lw` at 0x10116578 loads 4 bytes from abs 0x102bd0a8 via base t9 (0x102c4340).
  The `jal` at 0x10116244 calls `kt_output_dbug [0x10046d74]` with a0=0x4, a1=0x101b7650, a2=a2 at entry (arg2), a3=0xa, a4=0x14, a5=0x30, a6=0x31, a7=0x32.
  The `jal` at 0x10116290 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b7680, a2=table(0xc800), a3=(unknown).
  The `jal` at 0x101162a0 calls `vcWrite [0x1014071c]` with a0=table(0xc800), a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x101162c4 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b7680, a2=table(0xc900), a3=(unknown).
  The `jal` at 0x101162d4 calls `vcWrite [0x1014071c]` with a0=table(0xc900), a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10116308 calls `kt_data_file [0x1005a128]` with a0=[0x1020c984], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011635c calls `tst_multi_voc [0x100b6c58]` with a0=0x8, a1=0x1, a2=0x1, a3=ret(kt_data_file), a4=0x1, a5=0x0, a6=0x0, a7=-0x1.
  The `jal` at 0x10116384 calls `kt_output_info [0x10046374]` with a0=0x101b7690, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x101163c8 calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b76c0, a2=(unknown), a3=(unknown).
  The `jal` at 0x101163f8 calls `kt_output_info [0x10046374]` with a0=0x101b77d0, a1=(unknown), a2=0x1, a3=(unknown), a7=-0x1.
  The `jal` at 0x1011640c calls `kt_data_file [0x1005a128]` with a0=[0x1020c984], a1=(unknown), a2=0x1, a3=(unknown), a7=-0x1.
  The `jal` at 0x10116440 calls `tst_multi_voc [0x100b6c58]` with a0=0x8, a1=0x1, a2=0x0, a3=ret(kt_data_file), a4=0x1, a5=0x1, a6=0x0, a7=-0x1.
  The `jal` at 0x10116464 calls `kt_output_info [0x10046374]` with a0=0x101b76d8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10116488 calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7710, a2=(unknown), a3=(unknown).
  The `jal` at 0x10116494 calls `kt_data_file [0x1005a128]` with a0=[0x1020c988], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101164c8 calls `tst_multi_voc [0x100b6c58]` with a0=0x8, a1=0x1, a2=a1 at entry (arg1), a3=ret(kt_data_file), a4=0x1, a5=0x1, a6=0x0, a7=-0x1.
  The `jal` at 0x101164ec calls `kt_output_info [0x10046374]` with a0=0x101b7788, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10116520 calls `tst_multi_voc [0x100b6c58]` with a0=0x8, a1=0x1, a2=0x0, a3=[0x10345670], a4=0x1, a5=0x1, a6=0x0, a7=-0x1.
  The `jal` at 0x10116544 calls `kt_output_info [0x10046374]` with a0=0x101b76d8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10116568 calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b77b8, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011657c calls (unnamed) [0x10115fd8] with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101165a0 calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7710, a2=(unknown), a3=(unknown).
  The `jal` at 0x101165ac calls `kt_data_file [0x1005a128]` with a0=[0x1020c988], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101165e0 calls `tst_multi_voc [0x100b6c58]` with a0=0x8, a1=0x1, a2=a1 at entry (arg1), a3=ret(kt_data_file), a4=0x1, a5=0x0, a6=0x1, a7=0x0.
  The `jal` at 0x10116604 calls `kt_output_info [0x10046374]` with a0=0x101b7730, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10116628 calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7768, a2=(unknown), a3=(unknown).
  The `bne` at 0x101162e4 goes to 0x10116270 when s3(?) < 0x8 (unsigned) and falls through when s3(?) >= 0x8 (unsigned).
  The `beq` at 0x10116364 goes to 0x101163b8 when v0(=ret(tst_multi_voc)) == 0 and falls through when v0(=ret(tst_multi_voc)) != 0.
  The `beq` at 0x101163d0 goes to 0x101164fc when s8(=a0) == 0 and falls through when s8(=a0) != 0.
  The `beq` at 0x101163dc goes to 0x10116408 when s8(=a0) == a2(=0x1) and falls through when s8(=a0) != a2(=0x1).
  The `beq` at 0x10116448 goes to 0x10116474 when v0(=ret(tst_multi_voc)) == 0 and falls through when v0(=ret(tst_multi_voc)) != 0.
  The `beq` at 0x101164d0 goes to 0x10116554 when v0(=ret(tst_multi_voc)) == 0 and falls through when v0(=ret(tst_multi_voc)) != 0.
  The `beq` at 0x10116528 goes to 0x1011658c when v0(=ret(tst_multi_voc)) == 0 and falls through when v0(=ret(tst_multi_voc)) != 0.
  The `beq` at 0x101165e8 goes to 0x10116614 when v0(=ret(tst_multi_voc)) == 0 and falls through when v0(=ret(tst_multi_voc)) != 0.
  The return at 0x101163b0 has v0 = one of -0x1, 0x0.
- `dgo_stop_video` in `usr/diags/IR/bin/irsaudit` at 0x10116638 (n32).
  It occupies 1024 bytes.
  6 such accesses load 4 bytes from abs 0x102bd730 via base t9 (0x102c4340), including `lw` at 0x10116678, `lw` at 0x10116718, `lw` at 0x101168b0.
  6 such accesses load 4 bytes from abs 0x102bd09c via base a0 (0x102c4340), including `lw` at 0x1011667c, `lw` at 0x1011671c, `lw` at 0x101168b4.
  2 such accesses load 4 bytes from abs 0x102bd7cc via base t9 (0x102c4340), including `lw` at 0x101166ac, `lw` at 0x10116908.
  2 such accesses load 4 bytes from abs 0x102bd0a0 via base a0 (0x102c4340), including `lw` at 0x101166b0, `lw` at 0x1011690c.
  The `lw` at 0x101166b8 loads 4 bytes from abs 0x1020c990 via base a0 (0x1020c984).
  2 such accesses load 4 bytes from abs 0x102bd0a4 via base v1 (0x102c4340), including `lw` at 0x101166cc, `lw` at 0x1011692c.
  2 such accesses load 4 bytes from abs 0x102bd92c via base t9 (0x102c4340), including `lw` at 0x101166dc, `lw` at 0x1011693c.
  The `sw` at 0x101166f4 stores 4 bytes to abs 0x1034567c via base v1 (0x10345438) with value ret(kt_data_file).
  The `lw` at 0x10116738 loads 4 bytes from abs 0x102bdea8 via base s0 (0x102c4340).
  The `lw` at 0x10116754 loads 4 bytes from abs 0x102bdea0 via base s1 (0x102c4340).
  The `lw` at 0x101167ec loads 4 bytes from abs 0x102bdcec via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bd744 via base t9 (0x102c4340), including `lw` at 0x10116884, `lw` at 0x101169d0.
  2 such accesses load 4 bytes from abs 0x102bd09c via base a1 (0x102c4340), including `lw` at 0x10116888, `lw` at 0x101169d4.
  The `lw` at 0x101168ec loads 4 bytes from abs 0x102bdcf0 via base t9 (0x102c4340).
  The `lw` at 0x10116918 loads 4 bytes from abs 0x1020c98c via base a0 (0x1020c984).
  The `sw` at 0x10116954 stores 4 bytes to abs 0x10345678 via base v1 (0x10345438) with value ret(kt_data_file).
  The `lw` at 0x101169f4 loads 4 bytes from abs 0x102bd45c via base t9 (0x102c4340).
  The `lw` at 0x101169f8 loads 4 bytes from abs 0x102be77c via base a0 (0x102c4340).
  The `lw` at 0x10116a08 loads 4 bytes from sym(pipeFD) +0x0 via base a0 (sym(pipeFD)).
  The `jal` at 0x10116680 calls `kt_output_info [0x10046374]` with a0=0x101b78e0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x101166b4 calls `kt_data_file [0x1005a128]` with a0=[0x1020c990], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x101166fc calls `tst_multi_voc [0x100b6c58]` with a0=0x8, a1=0x1, a2=0xe6, a3=ret(kt_data_file), a4=0x1, a5=0x0, a6=0x0, a7=-0x1.
  The `jal` at 0x10116720 calls `kt_output_info [0x10046374]` with a0=0x101b78a0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10116744 calls `vcRead [0x10140bac]` with a0=0xc801, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10116760 calls `vcWrite [0x1014071c]` with a0=0xc801, a1=(ret(vcRead) | 0x3), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011676c calls `vcRead [0x10140bac]` with a0=0xc901, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011677c calls `vcWrite [0x1014071c]` with a0=0xc901, a1=(ret(vcRead) | 0x3), a2=(unknown), a3=(unknown).
  The `jal` at 0x10116788 calls `vcRead [0x10140bac]` with a0=0xc88f, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011679c calls `vcWrite [0x1014071c]` with a0=0xc88f, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101167a8 calls `vcRead [0x10140bac]` with a0=0xc98f, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101167bc calls `vcWrite [0x1014071c]` with a0=0xc98f, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101167cc calls `vcWrite [0x1014071c]` with a0=0xc802, a1=0x1, a2=(unknown), a3=(unknown).
  The `jal` at 0x101167dc calls `vcWrite [0x1014071c]` with a0=0xc902, a1=0x1, a2=(unknown), a3=(unknown).
  The `jal` at 0x101167f0 calls `vdBeginVCBusPoll [0x1013399c]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10116804 calls `vcRead [0x10140bac]` with a0=0xc802, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10116838 calls `vcRead [0x10140bac]` with a0=0xc802, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10116854 calls `vcRead [0x10140bac]` with a0=0xc902, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10116890 calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b78c8, a2=(unknown), a3=(unknown).
  The `jal` at 0x101168bc calls `kt_output_info [0x10046374]` with a0=0x101b7860, a1=0xc7, a2=(unknown), a3=(unknown).
  The `jal` at 0x101168d0 calls `vcRead [0x10140bac]` with a0=0xc902, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101168f0 calls `vdEndVCBusPoll [0x10133a3c]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10116914 calls `kt_data_file [0x1005a128]` with a0=[0x1020c98c], a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011695c calls `tst_multi_voc [0x100b6c58]` with a0=0x8, a1=0x1, a2=0x0, a3=ret(kt_data_file), a4=0x1, a5=0x0, a6=0x0, a7=-0x1.
  The `jal` at 0x10116980 calls `kt_output_info [0x10046374]` with a0=0x101b7808, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101169ac calls `kt_output_info [0x10046374]` with a0=0x101b7860, a1=0xc6, a2=(unknown), a3=(unknown).
  The `jal` at 0x101169dc calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7840, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10116a04 calls `ioctl` with a0=[sym(pipeFD)], a1=0x2775, a2=0x0, a3=(unknown).
  The `jal` at 0x10116a28 calls `kt_output_info [0x10046374]` with a0=0x101b7320, a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x10116654 goes to 0x10116730 when a0 == 0 and falls through when a0 != 0.
  The `beq` at 0x10116660 goes to 0x101166a0 when a0 == v0(=0x1) and falls through when a0 != v0(=0x1).
  The `beq` at 0x10116704 goes to 0x10116874 when v0(=ret(tst_multi_voc)) == 0 and falls through when v0(=ret(tst_multi_voc)) != 0.
  The `beq` at 0x10116810 goes to 0x101168d0 when (v0(=ret(vcRead)) & 0x1) == 0 and falls through when (v0(=ret(vcRead)) & 0x1) != 0.
  The `bne` at 0x10116828 goes to 0x10116990 when v0(=0xf4240) < s1(?) (signed) and falls through when v0(=0xf4240) >= s1(?) (signed).
  The `bne` at 0x10116830 goes to 0x101168a0 when v0(?) != 0 and falls through when v0(?) == 0.
  The `beq` at 0x10116844 goes to 0x10116854 when (v0(=ret(vcRead)) & 0x1) == 0 and falls through when (v0(=ret(vcRead)) & 0x1) != 0.
  The `beq` at 0x10116860 goes to 0x10116800 when (v0(=ret(vcRead)) & 0x1) == 0 and falls through when (v0(=ret(vcRead)) & 0x1) != 0.
  The `bne` at 0x101168dc goes to 0x1011681c when (v0(=ret(vcRead)) & 0x1) != 0 and falls through when (v0(=ret(vcRead)) & 0x1) == 0.
  The `beq` at 0x10116964 goes to 0x101169c0 when v0(=ret(tst_multi_voc)) == 0 and falls through when v0(=ret(tst_multi_voc)) != 0.
  The `bgez` at 0x10116a0c goes to 0x10116898 when v0(=ret(ioctl)) >= 0 (signed) and falls through when v0(=ret(ioctl)) < 0 (signed).
  The return at 0x10116698 has v0 = one of -0x1, 0x0.
- `dgo_setup_fb_mode` in `usr/diags/IR/bin/irsaudit` at 0x10116ddc (n32).
  It occupies 460 bytes.
  The `lw` at 0x10116e00 loads 4 bytes from abs 0x102bd744 via base s0 (0x102c4340).
  4 such accesses load 4 bytes from abs 0x102bd09c via base a1 (0x102c4340), including `lw` at 0x10116e08, `lw` at 0x10116e50, `lw` at 0x10116f0c.
  The `lw` at 0x10116e2c loads 4 bytes from abs 0x102bdea0 via base s1 (0x102c4340).
  The `lw` at 0x10116e70 loads 4 bytes from abs 0x102bdc50 via base s2 (0x102c4340).
  The `lw` at 0x10116ea4 loads 4 bytes from abs 0x102bdc80 via base t9 (0x102c4340).
  The `lw` at 0x10116ebc loads 4 bytes from abs 0x102bdea8 via base s3 (0x102c4340).
  The `jal` at 0x10116e1c calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7a60, a2=0x1ad564, a3=a3 at entry (arg3).
  The `jal` at 0x10116e38 calls `vcWrite [0x1014071c]` with a0=0x8400, a1=0x800, a2=(unknown), a3=(unknown).
  The `jal` at 0x10116e60 calls `kt_output_dbug [0x10046d74]` with a0=0x6, a1=0x101b7a80, a2=0x800, a3=0x8400.
  The `jal` at 0x10116e78 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10116e88 calls `vcWrite [0x1014071c]` with a0=0x8000, a1=0x1, a2=(unknown), a3=(unknown).
  The `jal` at 0x10116e94 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10116eac calls `csc_config [0x1011a624]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10116ec8 calls `vcRead [0x10140bac]` with a0=0xc006, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10116ee8 calls `vcWrite [0x1014071c]` with a0=0xc006, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10116ef4 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10116f18 calls `kt_output_dbug [0x10046d74]` with a0=0x6, a1=0x101b7aa0, a2=(unknown), a3=0xc006.
  The `jal` at 0x10116f2c calls `vcRead [0x10140bac]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10116f4c calls `vcWrite [0x1014071c]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10116f5c calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10116f84 calls `kt_output_dbug [0x10046d74]` with a0=0x6, a1=0x101b7ac8, a2=(unknown), a3=0xc104.
  The return at 0x10116fa0 has v0 = 0x0.
- `dgo_fb_test` in `usr/diags/IR/bin/irsaudit` at 0x10116fa8 (n32).
  It occupies 3504 bytes.
  The `lw` at 0x10116fdc loads 4 bytes from abs 0x102bd7c4 via base s0 (0x102c4340).
  The `lw` at 0x10116fe8 loads 4 bytes from abs 0x102bd09c via base at (0x102c4340).
  The `lw` at 0x10117010 loads 4 bytes from abs 0x102bdc58 via base t9 (0x102c4340).
  The `lw` at 0x10117070 loads 4 bytes from abs 0x102bd744 via base s6 (0x102c4340).
  22 such accesses load 4 bytes from abs 0x102bd09c via base a1 (0x102c4340), including `lw` at 0x10117078, `lw` at 0x10117098, `lw` at 0x10117134.
  33 such accesses load 4 bytes from abs 0x102bd09c via base a0 (0x102c4340), including `lw` at 0x101170b4, `lw` at 0x101170f4, `lw` at 0x101171fc.
  The `lw` at 0x101170cc loads 4 bytes from abs 0x102be1e0 via base a2 (0x102c4340).
  The `lw` at 0x101170d0 loads 4 bytes from sym(KONAINFO) +0x0 via base a2 (sym(KONAINFO)).
  2 such accesses load 4 bytes from [sym(KONAINFO)] +0x0 via base a1 ([sym(KONAINFO)]), including `lw` at 0x101170d4, `lw` at 0x101174a0.
  The `lw` at 0x10117160 loads 4 bytes from abs 0x102bdc34 via base s0 (0x102c4340).
  3 such accesses load 4 bytes from abs 0x102bdc1c via base t9 (0x102c4340), including `lw` at 0x101171d0, `lw` at 0x101172d0, `lw` at 0x10117454.
  6 such accesses load 4 bytes from abs 0x102bd730 via base s7 (0x102c4340), including `lw` at 0x101171f4, `lw` at 0x101172f4, `lw` at 0x10117478.
  The `lw` at 0x10117214 loads 4 bytes from abs 0x102be1e0 via base v1 (0x102c4340).
  The `lw` at 0x10117218 loads 4 bytes from sym(KONAINFO) +0x0 via base v1 (sym(KONAINFO)).
  The `lw` at 0x1011721c loads 4 bytes from [sym(KONAINFO)] +0x0 via base v1 ([sym(KONAINFO)]).
  2 such accesses load 4 bytes from abs 0x102bdc2c via base t9 (0x102c4340), including `lw` at 0x10117240, `lw` at 0x10117314.
  The `lw` at 0x10117280 loads 4 bytes from abs 0x102bd730 via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bdc20 via base t9 (0x102c4340), including `lw` at 0x10117350, `lw` at 0x101173c0.
  2 such accesses load 4 bytes from abs 0x102bdc28 via base t9 (0x102c4340), including `lw` at 0x10117388, `lw` at 0x101173fc.
  The `lw` at 0x10117498 loads 4 bytes from abs 0x102be1e0 via base a1 (0x102c4340).
  The `lw` at 0x1011749c loads 4 bytes from sym(KONAINFO) +0x0 via base a1 (sym(KONAINFO)).
  The `lw` at 0x101174f8 loads 4 bytes from abs 0x102bd49c via base t9 (0x102c4340).
  The `lw` at 0x1011750c loads 4 bytes from abs 0x102be494 via base ra (0x102c4340).
  The `lw` at 0x10117510 loads 4 bytes from sym(GvoCrcs) +0x0 via base ra (sym(GvoCrcs)).
  The `lw` at 0x10117528 loads 4 bytes from abs 0x102bd740 via base t9 (0x102c4340).
  The `lw` at 0x10117540 loads 4 bytes from abs 0x102bdca8 via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bdc24 via base t9 (0x102c4340), including `lw` at 0x101175b4, `lw` at 0x10117a40.
  The `lw` at 0x101175e8 loads 4 bytes from abs 0x102bdc38 via base t9 (0x102c4340).
  The `lw` at 0x10117650 loads 4 bytes from abs 0x102bdea8 via base s0 (0x102c4340).
  The `lw` at 0x1011765c loads 4 bytes from abs 0x102bdc3c via base s3 (0x102c4340).
  The `sw` at 0x10117670 stores 4 bytes to ? (base unknown) via base s2 (?) with value ret(vcRead).
  The `sb` at 0x10117688 stores 1 bytes to ? (base unknown) via base s1 (?) with value .
  The `lw` at 0x101176b4 loads 4 bytes from abs 0x102bd4ac via base t9 (0x102c4340).
  The `lw` at 0x10117700 loads 4 bytes from abs 0x102bd3f8 via base t9 (0x102c4340).
  The `lw` at 0x10117708 loads 4 bytes from ? (base unknown) via base s0 (?).
  The `lbu` at 0x1011770c loads 1 bytes from ? (base unknown) via base s1 (?).
  The `lw` at 0x10117734 loads 4 bytes from abs 0x102bd40c via base t9 (0x102c4340).
  The `lbu` at 0x10117800 loads 1 bytes from ? (base unknown) via base v0 (?).
  The `lw` at 0x10117828 loads 4 bytes from abs 0x102be204 via base a0 (0x102c4340).
  The `lw` at 0x10117830 loads 4 bytes from sym(MAX_ERRORS) +0x0 via base a0 (sym(MAX_ERRORS)).
  2 such accesses load 4 bytes from ? (base unknown) via base s4 (?), including `lw` at 0x1011786c, `lw` at 0x10117ab8.
  The `lw` at 0x1011787c loads 4 bytes from abs 0x102be204 via base a1 (0x102c4340).
  The `lw` at 0x10117880 loads 4 bytes from sym(MAX_ERRORS) +0x0 via base a1 (sym(MAX_ERRORS)).
  3 such accesses load 4 bytes from abs 0x102bd72c via base s0 (0x102c4340), including `lw` at 0x101178e0, `lw` at 0x10117958, `lw` at 0x10117c50.
  The `lw` at 0x10117a0c loads 4 bytes from abs 0x102bd418 via base a1 (0x102c4340).
  The `lw` at 0x10117a10 loads 4 bytes from sym(__us_rsthread_stdio) +0x0 via base a1 (sym(__us_rsthread_stdio)).
  The `lw` at 0x10117a24 loads 4 bytes from abs 0x102bd41c via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bd414 via base a0 (0x102c4340), including `lw` at 0x10117a34, `lw` at 0x10117be8.
  The `lw` at 0x10117bec loads 4 bytes from sym(__iob) +0x0 via base a0 (sym(__iob)).
  The `sw` at 0x10117bf8 stores 4 bytes to sym(__iob) +0x0 via base a0 (sym(__iob)) with value [sym(__iob)]-1.
  The `lw` at 0x10117bfc loads 4 bytes from sym(__iob) +0x4 via base a0 (sym(__iob)).
  The `sw` at 0x10117c08 stores 4 bytes to sym(__iob) +0x4 via base a0 (sym(__iob)) with value [sym(__iob)+4]+1.
  The `lw` at 0x10117d44 loads 4 bytes from abs 0x102bd44c via base t9 (0x102c4340).
  The `jal` at 0x10117000 calls `hash_value [0x10059f54]` with a0=0x101b7af0, a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10117014 calls `dgo_reset [0x101195bc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117084 calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7b00, a2=(unknown), a3=(unknown).
  The `jal` at 0x101170a0 calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7b38, a2=(unknown), a3=(unknown).
  The `jal` at 0x101170bc calls `hash_value [0x10059f54]` with a0=0x101b7b78, a1=0x1, a2=(unknown), a3=(unknown).
  The `jal` at 0x101170fc calls `hash_value [0x10059f54]` with a0=0x101b7b88, a1=0x5a5a5a5a, a2=sym(KONAINFO), a3=0x2.
  The `jal` at 0x10117150 calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7b98, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011716c calls `flip [0x10117d58]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117190 calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7bb0, a2=(unknown), a3=(unknown).
  The `jal` at 0x101171c0 calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7c30, a2=0x1, a3=(unknown).
  The `jal` at 0x101171dc calls `dgo_clearfb [0x1011582c]` with a0=a0 at entry (arg0), a1=0x1, a2=ret(hash_value), a3=(unknown).
  The `jal` at 0x10117204 calls `kt_output_info [0x10046374]` with a0=0x101b7c08, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117244 calls `dgo_setup_fb_mode [0x10116ddc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117264 calls `kt_output_info [0x10046374]` with a0=0x101b7c50, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117290 calls `kt_output_info [0x10046374]` with a0=0x101b8180, a1=ret(hash_value), a2=0x1, a3=(unknown).
  The `jal` at 0x101172b8 calls `hash_value [0x10059f54]` with a0=0x101b7b88, a1=0x5aa55a5a, a2=sym(KONAINFO), a3=0x2.
  The `jal` at 0x101172dc calls `dgo_clearfb [0x1011582c]` with a0=a0 at entry (arg0), a1=(unknown), a2=ret(hash_value), a3=(unknown).
  The `jal` at 0x10117304 calls `kt_output_info [0x10046374]` with a0=0x101b7c08, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117318 calls `dgo_setup_fb_mode [0x10116ddc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117338 calls `kt_output_info [0x10046374]` with a0=0x101b7c50, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011735c calls `dgo_setup_video [0x101161a0]` with a0=0x0, a1=0xe6, a2=ret(hash_value), a3=(unknown).
  The `jal` at 0x10117378 calls `kt_output_info [0x10046374]` with a0=0x101b7c90, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011738c calls `load_gamma_lut [0x10116a38]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101173ac calls `kt_output_info [0x10046374]` with a0=0x101b7cb0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101173cc calls `dgo_setup_video [0x101161a0]` with a0=0x0, a1=0xe6, a2=ret(hash_value), a3=(unknown).
  The `jal` at 0x101173ec calls `kt_output_info [0x10046374]` with a0=0x101b7c90, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10117400 calls `load_gamma_lut [0x10116a38]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117420 calls `kt_output_info [0x10046374]` with a0=0x101b7cb0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117444 calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7bc8, a2=(unknown), a3=(unknown).
  The `jal` at 0x10117460 calls `dgo_clearfb [0x1011582c]` with a0=a0 at entry (arg0), a1=0x0, a2=ret(hash_value), a3=(unknown).
  The `jal` at 0x10117488 calls `kt_output_info [0x10046374]` with a0=0x101b7c08, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101174d8 calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7be8, a2=(unknown), a3=(unknown).
  The `jalr` at 0x101174fc calls `sleep` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117530 calls `kt_output_trce [0x10046b88]` with a0=0x101b7cd8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117548 calls `gvo_crc_test [0x1011f4b4]` with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011756c calls `kt_output_info [0x10046374]` with a0=0x101b7cf0, a1=ret(gvo_crc_test), a2=(unknown), a3=(unknown).
  The `jal` at 0x101175a4 calls `kt_output_info [0x10046374]` with a0=0x101b7d40, a1=one of 0x101b7d20, 0x101b7d30, a2=(unknown), a3=(unknown).
  The `jal` at 0x101175bc calls `dgo_stop_video [0x10116638]` with a0=0x0, a1=ret(hash_value), a2=(unknown), a3=(unknown).
  The `jal` at 0x101175d8 calls `kt_output_info [0x10046374]` with a0=0x101b7d90, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101175ec calls `fb_rd_rst [0x10117d94]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011760c calls `kt_output_dbug [0x10046d74]` with a0=0x3, a1=0x101b7db8, a2=0xc600, a3=(unknown).
  The `jal` at 0x10117664 calls `vcRead [0x10140bac]` with a0=0xc600, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117674 calls `vcRead [0x10140bac]` with a0=0xc700, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117684 calls `fb_step_clk [0x10117e4c]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x101176bc calls `fopen` with a0=0x101b7df0, a1=0x101b7e08, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10117710 calls `fprintf` with a0=(unknown), a1=0x101b7e10, a2=(unknown), a3=(unknown).
  The `jalr` at 0x10117738 calls `fclose` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117758 calls `kt_output_dbug [0x10046d74]` with a0=0x3, a1=0x101b7b98, a2=(unknown), a3=(unknown).
  The `jal` at 0x10117778 calls `kt_output_dbug [0x10046d74]` with a0=0x3, a1=0x101b7bb0, a2=(unknown), a3=(unknown).
  The `jal` at 0x101177d0 calls `kt_output_dbug [0x10046d74]` with a0=0x9, a1=0x101b7ed0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011785c calls `kt_output_info [0x10046374]` with a0=0x101b7ea0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101178b0 calls `kt_output_info [0x10046374]` with a0=0x101b7e50, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101178f0 calls `kt_output_diag [0x100461b0]` with a0=0x101b7f00, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117908 calls `kt_output_diag [0x100461b0]` with a0=0x101b7f40, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117920 calls `kt_output_diag [0x100461b0]` with a0=0x101b7f78, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117938 calls `kt_output_diag [0x100461b0]` with a0=0x101b7fa8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011796c calls `kt_output_diag [0x100461b0]` with a0=0x101b8078, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117984 calls `kt_output_diag [0x100461b0]` with a0=0x101b80b8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011799c calls `kt_output_diag [0x100461b0]` with a0=0x101b80f8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101179b4 calls `kt_output_diag [0x100461b0]` with a0=0x101b8138, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101179d8 calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7be8, a2=(unknown), a3=(unknown).
  The `jal` at 0x101179fc calls `kt_output_info [0x10046374]` with a0=0x101b8198, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10117a30 calls `__semgetc` with a0=sym(__iob), a1=[sym(__us_rsthread_stdio)], a2=(unknown), a3=(unknown).
  The `jal` at 0x10117a48 calls `dgo_stop_video [0x10116638]` with a0=0x0, a1=ret(hash_value), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117a68 calls `kt_output_info [0x10046374]` with a0=0x101b7d90, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10117a8c calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7c78, a2=(unknown), a3=(unknown).
  The `jal` at 0x10117abc calls `kt_output_dbug [0x10046d74]` with a0=0x9, a1=0x101b7e20, a2=(unknown), a3=(unknown).
  The `jal` at 0x10117afc calls `flip [0x10117d58]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117b0c calls `flip [0x10117d58]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117b24 calls `flip [0x10117d58]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117b38 calls `flip [0x10117d58]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117b88 calls `kt_output_dbug [0x10046d74]` with a0=0x9, a1=0x101b7e78, a2=(unknown), a3=(unknown).
  The `jal` at 0x10117ba8 calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7c78, a2=(unknown), a3=(unknown).
  The `jal` at 0x10117bcc calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7be8, a2=(unknown), a3=(unknown).
  The `jal` at 0x10117c34 calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7d70, a2=(unknown), a3=(unknown).
  The `jal` at 0x10117c60 calls `kt_output_diag [0x100461b0]` with a0=0x101b7fd0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117c78 calls `kt_output_diag [0x100461b0]` with a0=0x101b8010, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117c90 calls `kt_output_diag [0x100461b0]` with a0=0x101b8040, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117cb0 calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7d70, a2=(unknown), a3=(unknown).
  The `jal` at 0x10117cf8 calls `flip [0x10117d58]` with a0=(unknown), a1=[[sym(KONAINFO)]], a2=(unknown), a3=(unknown), a6=0xff0000.
  The `jal` at 0x10117d0c calls `flip [0x10117d58]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117d1c calls `flip [0x10117d58]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10117d48 calls `__filbuf` with a0=sym(__iob), a1=[sym(__us_rsthread_stdio)], a2=(unknown), a3=(unknown).
  The `beq` at 0x10117028 goes to 0x10117064 when v0(=ret(dgo_reset)) == 0 and falls through when v0(=ret(dgo_reset)) != 0.
  The `beq` at 0x101170dc goes to 0x101172a0 when a1(=[[sym(KONAINFO)]]) == a3(=0x2) and falls through when a1(=[[sym(KONAINFO)]]) != a3(=0x2).
  The `beq` at 0x1011710c goes to 0x101172c8 when a1(?) == 0 and falls through when a1(?) != 0.
  The `beq` at 0x10117198 goes to 0x10117430 when s1(=ret(hash_value)) == 0 and falls through when s1(=ret(hash_value)) != 0.
  The `bne` at 0x101171a4 goes to 0x10117274 when s1(=ret(hash_value)) != a2(=0x1) and falls through when s1(=ret(hash_value)) == a2(=0x1).
  The `beq` at 0x101171e4 goes to 0x101174c4 when v0(=ret(dgo_clearfb)) == 0 and falls through when v0(=ret(dgo_clearfb)) != 0.
  The `beq` at 0x10117228 goes to 0x10117acc when v1(=[[sym(KONAINFO)]]) == a0(=0x2) and falls through when v1(=[[sym(KONAINFO)]]) != a0(=0x2).
  The `beq` at 0x1011724c goes to 0x10117348 when v0(=ret(dgo_setup_fb_mode)) == 0 and falls through when v0(=ret(dgo_setup_fb_mode)) != 0.
  The `beq` at 0x101172e4 goes to 0x101179c4 when v0(=ret(dgo_clearfb)) == 0 and falls through when v0(=ret(dgo_clearfb)) != 0.
  The `beq` at 0x10117320 goes to 0x101173bc when v0(=ret(dgo_setup_fb_mode)) == 0 and falls through when v0(=ret(dgo_setup_fb_mode)) != 0.
  The `beq` at 0x10117364 goes to 0x10117a78 when v0(=ret(dgo_setup_video)) == 0 and falls through when v0(=ret(dgo_setup_video)) != 0.
  The `beq` at 0x10117394 goes to 0x101174f0 when v0(=ret(load_gamma_lut)) == 0 and falls through when v0(=ret(load_gamma_lut)) != 0.
  The `beq` at 0x101173d4 goes to 0x10117b98 when v0(=ret(dgo_setup_video)) == 0 and falls through when v0(=ret(dgo_setup_video)) != 0.
  The `beq` at 0x10117408 goes to 0x101179f0 when v0(=ret(load_gamma_lut)) == 0 and falls through when v0(=ret(load_gamma_lut)) != 0.
  The `beq` at 0x10117468 goes to 0x10117bb8 when v0(=ret(dgo_clearfb)) == 0 and falls through when v0(=ret(dgo_clearfb)) != 0.
  The `beq` at 0x101174a8 goes to 0x10117cc0 when a1(=[[sym(KONAINFO)]]) == a2(=0x2) and falls through when a1(=[[sym(KONAINFO)]]) != a2(=0x2).
  The `beq` at 0x10117514 goes to 0x1011757c when ra(=[sym(GvoCrcs)]) == 0 and falls through when ra(=[sym(GvoCrcs)]) != 0.
  The `blez` at 0x10117550 goes to 0x10117580 when v0(=ret(gvo_crc_test)) <= 0 (signed) and falls through when v0(=ret(gvo_crc_test)) > 0 (signed).
  The `beq` at 0x10117580 goes to 0x10117c0c when s1(=ret(hash_value)) == 0 and falls through when s1(=ret(hash_value)) != 0.
  The `beq` at 0x101175c4 goes to 0x10117c20 when v0(=ret(dgo_stop_video)) == 0 and falls through when v0(=ret(dgo_stop_video)) != 0.
  The `bne` at 0x10117698 goes to 0x10117660 when s4(?) < s5(=0x556e0) (signed) and falls through when s4(?) >= s5(=0x556e0) (signed).
  The `bne` at 0x10117724 goes to 0x101176ec when s4(?) < s5(=0x556e0) (signed) and falls through when s4(?) >= s5(=0x556e0) (signed).
  The `beq` at 0x101177ec goes to 0x101178c0 when s0(?) >= s5(=0x556e0) (signed) and falls through when s0(?) < s5(=0x556e0) (signed).
  The `beq` at 0x10117808 goes to 0x10117a9c when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x10117810 goes to 0x1011786c when v1(?) == a0(=0x1) and falls through when v1(?) != a0(=0x1).
  The `beq` at 0x1011782c goes to 0x101177b0 when a1(?) == v0(?) and falls through when a1(?) != v0(?).
  The `beq` at 0x1011783c goes to 0x101177d8 when s1(?) >= a0(=[sym(MAX_ERRORS)]) (unsigned) and falls through when s1(?) < a0(=[sym(MAX_ERRORS)]) (unsigned).
  The `beq` at 0x10117870 goes to 0x10117b68 when s2(?) == a7(?) and falls through when s2(?) != a7(?).
  The `beq` at 0x1011788c goes to 0x1011781c when s1(?) >= a1(=[sym(MAX_ERRORS)]) (unsigned) and falls through when s1(?) < a1(=[sym(MAX_ERRORS)]) (unsigned).
  The `beq` at 0x101178c4 goes to 0x10117944 when a1(?) == 0 and falls through when a1(?) != 0.
  The `beq` at 0x101178cc goes to 0x10117c44 when s1(?) == 0 and falls through when s1(?) != 0.
  The `beq` at 0x10117954 goes to 0x101179bc when s1(?) == 0 and falls through when s1(?) != 0.
  The `beq` at 0x10117a14 goes to 0x10117be4 when a1(=[sym(__us_rsthread_stdio)]) == 0 and falls through when a1(=[sym(__us_rsthread_stdio)]) != 0.
  The `beq` at 0x10117a50 goes to 0x10117ca0 when v0(=ret(dgo_stop_video)) == 0 and falls through when v0(=ret(dgo_stop_video)) != 0.
  The `bltz` at 0x10117bf4 goes to 0x10117d3c when t8(=[sym(__iob)]-1) < 0 (signed) and falls through when t8(=[sym(__iob)]-1) >= 0 (signed).
  The return at 0x1011705c has v0 = ?.
- `flip` in `usr/diags/IR/bin/irsaudit` at 0x10117d58 (n32).
  It occupies 60 bytes.
  The `beq` at 0x10117d74 goes to 0x10117d80 when (a0 & a3(?)) == 0 and falls through when (a0 & a3(?)) != 0.
  The `bne` at 0x10117d84 goes to 0x10117d68 when a3(?) != 0 and falls through when a3(?) == 0.
  The return at 0x10117d8c has v0 = ?.
- `fb_rd_rst` in `usr/diags/IR/bin/irsaudit` at 0x10117d94 (n32).
  It occupies 184 bytes.
  The `lw` at 0x10117db4 loads 4 bytes from abs 0x102bdea8 via base s2 (0x102c4340).
  The `lw` at 0x10117dd4 loads 4 bytes from abs 0x102bdea0 via base s0 (0x102c4340).
  The `lw` at 0x10117df8 loads 4 bytes from abs 0x102bdc50 via base s1 (0x102c4340).
  The `jal` at 0x10117dc4 calls `vcRead [0x10140bac]` with a0=0xc104, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10117de8 calls `vcWrite [0x1014071c]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117e00 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117e0c calls `vcRead [0x10140bac]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117e20 calls `vcWrite [0x1014071c]` with a0=0xc104, a1=(ret(vcRead) | 0x1e), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117e30 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x10117e44 has v0 = ret(dgo_wait).
- `fb_step_clk` in `usr/diags/IR/bin/irsaudit` at 0x10117e4c (n32).
  It occupies 184 bytes.
  The `lw` at 0x10117e6c loads 4 bytes from abs 0x102bdea8 via base s2 (0x102c4340).
  The `lw` at 0x10117e8c loads 4 bytes from abs 0x102bdea0 via base s0 (0x102c4340).
  The `lw` at 0x10117eac loads 4 bytes from abs 0x102bdc50 via base s1 (0x102c4340).
  The `jal` at 0x10117e7c calls `vcRead [0x10140bac]` with a0=0xc006, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10117e9c calls `vcWrite [0x1014071c]` with a0=0xc006, a1=(ret(vcRead) | 0x40), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117eb4 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117ec0 calls `vcRead [0x10140bac]` with a0=0xc006, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117ed8 calls `vcWrite [0x1014071c]` with a0=0xc006, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117ee8 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x10117efc has v0 = ret(dgo_wait).
- `dgo_lsb_test` in `usr/diags/IR/bin/irsaudit` at 0x10117f04 (n32).
  It occupies 1836 bytes.
  The `lw` at 0x10117f34 loads 4 bytes from abs 0x102bdc1c via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bd730 via base s5 (0x102c4340), including `lw` at 0x10117f68, `lw` at 0x10118574.
  14 such accesses load 4 bytes from abs 0x102bd09c via base a0 (0x102c4340), including `lw` at 0x10117f70, `lw` at 0x10117fb0, `lw` at 0x10118008.
  2 such accesses load 4 bytes from abs 0x102bd744 via base s6 (0x102c4340), including `lw` at 0x10117f88, `lw` at 0x1011854c.
  The `lw` at 0x10117f94 loads 4 bytes from abs 0x102bdc2c via base t9 (0x102c4340).
  The `lw` at 0x10117fcc loads 4 bytes from abs 0x102bdc20 via base s0 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bd49c via base t9 (0x102c4340), including `lw` at 0x10118030, `lw` at 0x10118228.
  The `lw` at 0x1011805c loads 4 bytes from abs 0x102bdea8 via base s1 (0x102c4340).
  The `lw` at 0x10118078 loads 4 bytes from abs 0x102bdea0 via base s2 (0x102c4340).
  The `lw` at 0x101180a0 loads 4 bytes from abs 0x102bdc50 via base s0 (0x102c4340).
  10 such accesses load 4 bytes from abs 0x102bd09c via base a1 (0x102c4340), including `lw` at 0x101180c0, `lw` at 0x10118284, `lw` at 0x10118390.
  The `lw` at 0x101180dc loads 4 bytes from abs 0x102bdc24 via base s7 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bdc38 via base t9 (0x102c4340), including `lw` at 0x10118118, `lw` at 0x101182d4.
  The `lw` at 0x10118144 loads 4 bytes from abs 0x102bdc3c via base s2 (0x102c4340).
  The `sb` at 0x10118160 stores 1 bytes to ? (base unknown) via base s0 (?) with value .
  2 such accesses load 4 bytes from abs 0x102be204 via base a1 (0x102c4340), including `lw` at 0x10118188, `lw` at 0x1011850c.
  The `lw` at 0x1011819c loads 4 bytes from sym(MAX_ERRORS) +0x0 via base a1 (sym(MAX_ERRORS)).
  The `lbu` at 0x101181a0 loads 1 bytes from ? (base unknown) via base s3 (?).
  The `lw` at 0x101181ec loads 4 bytes from abs 0x102bdc20 via base t9 (0x102c4340).
  The `lw` at 0x10118248 loads 4 bytes from abs 0x102bdea0 via base t9 (0x102c4340).
  The `lw` at 0x10118268 loads 4 bytes from abs 0x102bdc50 via base t9 (0x102c4340).
  The `lw` at 0x101182a0 loads 4 bytes from abs 0x102bdc24 via base t9 (0x102c4340).
  The `sb` at 0x10118308 stores 1 bytes to ? (base unknown) via base s3 (?) with value .
  The `lw` at 0x10118324 loads 4 bytes from abs 0x102bdc34 via base s2 (0x102c4340).
  The `lw` at 0x1011834c loads 4 bytes from abs 0x102be204 via base s7 (0x102c4340).
  The `lw` at 0x101183b8 loads 4 bytes from sym(MAX_ERRORS) +0x0 via base s7 (sym(MAX_ERRORS)).
  The `lbu` at 0x101183bc loads 1 bytes from ? (base unknown) via base s1 (?).
  The `lw` at 0x101183f8 loads 4 bytes from abs 0x102bd72c via base s1 (0x102c4340).
  The `jal` at 0x10117f44 calls `dgo_clearfb [0x1011582c]` with a0=a0 at entry (arg0), a1=0x1, a2=0x5a5a5a5a, a3=a3 at entry (arg3).
  The `jal` at 0x10117f78 calls `kt_output_info [0x10046374]` with a0=0x101b7c08, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117f98 calls `dgo_setup_fb_mode [0x10116ddc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117fb4 calls `kt_output_info [0x10046374]` with a0=0x101b7c50, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10117fdc calls `dgo_setup_video [0x101161a0]` with a0=0x0, a1=0xe6, a2=0x1, a3=(unknown).
  The `jal` at 0x1011800c calls `kt_output_info [0x10046374]` with a0=0x101b7c90, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10118034 calls `sleep` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011804c calls `kt_output_info [0x10046374]` with a0=0x101b81b8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118064 calls `vcRead [0x10140bac]` with a0=0xc006, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118090 calls `vcWrite [0x1014071c]` with a0=0xc006, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101180a8 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101180cc calls `kt_output_dbug [0x10046d74]` with a0=0x5, a1=0x101b7aa0, a2=(unknown), a3=0xc006.
  The `jal` at 0x101180e8 calls `dgo_stop_video [0x10116638]` with a0=0x0, a1=0x1, a2=(unknown), a3=(unknown).
  The `jal` at 0x10118108 calls `kt_output_info [0x10046374]` with a0=0x101b7d90, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011811c calls `fb_rd_rst [0x10117d94]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011814c calls `vcRead [0x10140bac]` with a0=0xc700, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011815c calls `fb_step_clk [0x10117e4c]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101181dc calls `kt_output_info [0x10046374]` with a0=0x101b8230, a1=sym(MAX_ERRORS), a2=(unknown), a3=(unknown).
  The `jal` at 0x101181f8 calls `dgo_setup_video [0x101161a0]` with a0=0x0, a1=0xe6, a2=0x1, a3=(unknown).
  The `jal` at 0x10118218 calls `kt_output_info [0x10046374]` with a0=0x101b7c90, a1=0x0, a2=(unknown), a3=(unknown).
  The `jalr` at 0x1011822c calls `sleep` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118238 calls `vcRead [0x10140bac]` with a0=0xc006, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118258 calls `vcWrite [0x1014071c]` with a0=0xc006, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011826c calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118290 calls `kt_output_dbug [0x10046d74]` with a0=0x4, a1=0x101b7aa0, a2=(unknown), a3=0xc006.
  The `jal` at 0x101182a8 calls `dgo_stop_video [0x10116638]` with a0=0x0, a1=0x1, a2=(unknown), a3=(unknown).
  The `jal` at 0x101182c4 calls `kt_output_info [0x10046374]` with a0=0x101b7d90, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101182d8 calls `fb_rd_rst [0x10117d94]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101182f4 calls `vcRead [0x10140bac]` with a0=0xc700, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118304 calls `fb_step_clk [0x10117e4c]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011832c calls `flip [0x10117d58]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118348 calls `flip [0x10117d58]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118358 calls `flip [0x10117d58]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118368 calls `flip [0x10117d58]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101183a8 calls `kt_output_dbug [0x10046d74]` with a0=0x3, a1=0x101b8258, a2=(unknown), a3=(unknown).
  The `jal` at 0x10118408 calls `kt_output_diag [0x100461b0]` with a0=0x101b8268, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118420 calls `kt_output_diag [0x100461b0]` with a0=0x101b82a8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118438 calls `kt_output_diag [0x100461b0]` with a0=0x101b82c0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118450 calls `kt_output_diag [0x100461b0]` with a0=0x101b8310, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101184b4 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b8200, a2=(unknown), a3=(unknown).
  The `jal` at 0x101184ec calls `kt_output_info [0x10046374]` with a0=0x101b81d0, a1=(unknown), a2=0x0, a3=(unknown).
  The `jal` at 0x10118530 calls `kt_output_info [0x10046374]` with a0=0x101b81d0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118560 calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7be8, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011858c calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7c78, a2=(unknown), a3=(unknown).
  The `jal` at 0x101185ac calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7d70, a2=(unknown), a3=(unknown).
  The `jal` at 0x101185cc calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7c78, a2=(unknown), a3=(unknown).
  The `jal` at 0x101185f0 calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7d70, a2=(unknown), a3=(unknown).
  The `jal` at 0x10118620 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b8200, a2=(unknown), a3=0x0.
  The `beq` at 0x10117f54 goes to 0x10118540 when v0(=ret(dgo_clearfb)) == 0 and falls through when v0(=ret(dgo_clearfb)) != 0.
  The `beq` at 0x10117fa0 goes to 0x10117fc4 when v0(=ret(dgo_setup_fb_mode)) == 0 and falls through when v0(=ret(dgo_setup_fb_mode)) != 0.
  The `beq` at 0x10117ff4 goes to 0x10118578 when v0(=ret(dgo_setup_video)) == 0 and falls through when v0(=ret(dgo_setup_video)) != 0.
  The `beq` at 0x101180f0 goes to 0x1011859c when v0(=ret(dgo_stop_video)) == 0 and falls through when v0(=ret(dgo_stop_video)) != 0.
  The `bne` at 0x1011816c goes to 0x10118148 when s3(?) < s4(=0x556e0) (signed) and falls through when s3(?) >= s4(=0x556e0) (signed).
  The `beq` at 0x101181a8 goes to 0x10118600 when a7(?) == 0 and falls through when a7(?) != 0.
  The `bne` at 0x101181b8 goes to 0x101184d4 when s0(?) < v0(=[sym(MAX_ERRORS)]) (unsigned) and falls through when s0(?) >= v0(=[sym(MAX_ERRORS)]) (unsigned).
  The `bne` at 0x101181c4 goes to 0x101181a0 when a4(?) != 0 and falls through when a4(?) == 0.
  The `beq` at 0x10118200 goes to 0x101185bc when v0(=ret(dgo_setup_video)) == 0 and falls through when v0(=ret(dgo_setup_video)) != 0.
  The `beq` at 0x101182b0 goes to 0x101185dc when v0(=ret(dgo_stop_video)) == 0 and falls through when v0(=ret(dgo_stop_video)) != 0.
  The `bne` at 0x10118314 goes to 0x101182f0 when s7(?) < s4(=0x556e0) (signed) and falls through when s7(?) >= s4(=0x556e0) (signed).
  The `beq` at 0x101183c4 goes to 0x10118494 when a7(?) == s3(?) and falls through when a7(?) != s3(?).
  The `bne` at 0x101183d4 goes to 0x10118518 when s0(?) < v0(=[sym(MAX_ERRORS)]) (unsigned) and falls through when s0(?) >= v0(=[sym(MAX_ERRORS)]) (unsigned).
  The `bne` at 0x101183e0 goes to 0x101183bc when a4(?) != 0 and falls through when a4(?) == 0.
  The `beq` at 0x101183e8 goes to 0x10118458 when s0(?) == 0 and falls through when s0(?) != 0.
  The `bne` at 0x101184c4 goes to 0x101183b8 when s2(?) < s4(=0x556e0) (signed) and falls through when s2(?) >= s4(=0x556e0) (signed).
  The `bne` at 0x10118508 goes to 0x1011819c when s7(?) < s4(=0x556e0) (signed) and falls through when s7(?) >= s4(=0x556e0) (signed).
  The return at 0x1011848c has v0 = ?.
- `dgo_fb_lite_test` in `usr/diags/IR/bin/irsaudit` at 0x10118630 (n32).
  It occupies 1948 bytes.
  The `lw` at 0x10118660 loads 4 bytes from abs 0x102bdc1c via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bd730 via base s6 (0x102c4340), including `lw` at 0x10118698, `lw` at 0x101187c0.
  21 such accesses load 4 bytes from abs 0x102bd09c via base a0 (0x102c4340), including `lw` at 0x101186a0, `lw` at 0x101186e4, `lw` at 0x10118744.
  2 such accesses load 4 bytes from abs 0x102bd744 via base s7 (0x102c4340), including `lw` at 0x101186b8, `lw` at 0x10118798.
  The `lw` at 0x101186c4 loads 4 bytes from abs 0x102bdc2c via base t9 (0x102c4340).
  The `lw` at 0x1011871c loads 4 bytes from abs 0x102bdc20 via base t9 (0x102c4340).
  The `lw` at 0x10118758 loads 4 bytes from abs 0x102bdc28 via base t9 (0x102c4340).
  7 such accesses load 4 bytes from abs 0x102bd09c via base a1 (0x102c4340), including `lw` at 0x101187a0, `lw` at 0x10118994, `lw` at 0x101189b4.
  The `lw` at 0x101187c8 loads 4 bytes from abs 0x102bd49c via base t9 (0x102c4340).
  The `lw` at 0x101187dc loads 4 bytes from abs 0x102be494 via base ra (0x102c4340).
  The `lw` at 0x101187e0 loads 4 bytes from sym(GvoCrcs) +0x0 via base ra (sym(GvoCrcs)).
  The `lw` at 0x101187f0 loads 4 bytes from abs 0x102bdca8 via base t9 (0x102c4340).
  The `lw` at 0x1011883c loads 4 bytes from abs 0x102bdc24 via base t9 (0x102c4340).
  The `lw` at 0x10118890 loads 4 bytes from abs 0x102bdc38 via base t9 (0x102c4340).
  The `lw` at 0x101188d0 loads 4 bytes from abs 0x102bdea8 via base s0 (0x102c4340).
  The `lw` at 0x101188dc loads 4 bytes from abs 0x102bdc3c via base s3 (0x102c4340).
  The `sw` at 0x101188f0 stores 4 bytes to ? (base unknown) via base s2 (?) with value ret(vcRead).
  The `sb` at 0x10118908 stores 1 bytes to ? (base unknown) via base s1 (?) with value .
  The `lw` at 0x10118928 loads 4 bytes from abs 0x102be1e0 via base a6 (0x102c4340).
  The `lw` at 0x1011892c loads 4 bytes from sym(KONAINFO) +0x0 via base a6 (sym(KONAINFO)).
  The `lw` at 0x10118934 loads 4 bytes from [sym(KONAINFO)] +0x0 via base a6 ([sym(KONAINFO)]).
  The `lw` at 0x1011895c loads 4 bytes from abs 0x102bdc34 via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102be204 via base v0 (0x102c4340), including `lw` at 0x101189f8, `lw` at 0x10118c50.
  The `lw` at 0x101189fc loads 4 bytes from sym(MAX_ERRORS) +0x0 via base v0 (sym(MAX_ERRORS)).
  The `lw` at 0x10118a04 loads 4 bytes from ? (base unknown) via base s3 (?).
  2 such accesses load 1 bytes from ? (base unknown) via base s2 (?), including `lbu` at 0x10118a24, `lbu` at 0x10118bc0.
  3 such accesses load 4 bytes from abs 0x102bd72c via base s0 (0x102c4340), including `lw` at 0x10118a6c, `lw` at 0x10118af0, `lw` at 0x10118d7c.
  The `lw` at 0x10118bc8 loads 4 bytes from abs 0x102be204 via base a0 (0x102c4340).
  The `lw` at 0x10118bd0 loads 4 bytes from sym(MAX_ERRORS) +0x0 via base a0 (sym(MAX_ERRORS)).
  The `lw` at 0x10118cec loads 4 bytes from abs 0x102bdc34 via base s0 (0x102c4340).
  The `jal` at 0x10118678 calls `dgo_clearfb [0x1011582c]` with a0=a0 at entry (arg0), a1=0x1, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jal` at 0x101186a8 calls `kt_output_info [0x10046374]` with a0=0x101b7c08, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101186c8 calls `dgo_setup_fb_mode [0x10116ddc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101186e8 calls `kt_output_info [0x10046374]` with a0=0x101b7c50, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118728 calls `dgo_setup_video [0x101161a0]` with a0=0x0, a1=0xe6, a2=0x1, a3=(unknown).
  The `jal` at 0x10118748 calls `kt_output_info [0x10046374]` with a0=0x101b7c90, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011875c calls `load_gamma_lut [0x10116a38]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011877c calls `kt_output_info [0x10046374]` with a0=0x101b7cb0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101187ac calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7be8, a2=(unknown), a3=(unknown).
  The `jalr` at 0x101187cc calls `sleep` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101187f8 calls `gvo_crc_test [0x1011f4b4]` with a0=0x1, a1=a2 at entry (arg2), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118820 calls `kt_output_info [0x10046374]` with a0=0x101b8338, a1=a1 at entry (arg1), a2=ret(gvo_crc_test), a3=(unknown).
  The `jal` at 0x10118844 calls `dgo_stop_video [0x10116638]` with a0=0x0, a1=0x1, a2=(unknown), a3=(unknown).
  The `jal` at 0x10118870 calls `kt_output_info [0x10046374]` with a0=0x101b7d90, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118894 calls `fb_rd_rst [0x10117d94]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101188e4 calls `vcRead [0x10140bac]` with a0=0xc600, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101188f4 calls `vcRead [0x10140bac]` with a0=0xc700, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118904 calls `fb_step_clk [0x10117e4c]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011897c calls `flip [0x10117d58]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown), a5=0xffffffffff000000, a6=[[sym(KONAINFO)]].
  The `jal` at 0x101189a0 calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7b98, a2=(unknown), a3=(unknown).
  The `jal` at 0x101189c0 calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b8378, a2=(unknown), a3=(unknown).
  The `jal` at 0x10118a7c calls `kt_output_diag [0x100461b0]` with a0=0x101b83f0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118a94 calls `kt_output_diag [0x100461b0]` with a0=0x101b7f40, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118aac calls `kt_output_diag [0x100461b0]` with a0=0x101b7f78, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118ac4 calls `kt_output_diag [0x100461b0]` with a0=0x101b7fa8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118b08 calls `kt_output_diag [0x100461b0]` with a0=0x101b8470, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118b20 calls `kt_output_diag [0x100461b0]` with a0=0x101b84b8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118b38 calls `kt_output_diag [0x100461b0]` with a0=0x101b8500, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118b50 calls `kt_output_diag [0x100461b0]` with a0=0x101b8528, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118b68 calls `kt_output_diag [0x100461b0]` with a0=0x101b8560, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118b80 calls `kt_output_diag [0x100461b0]` with a0=0x101b8588, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118bb4 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b83c0, a2=(unknown), a3=(unknown).
  The `jal` at 0x10118bfc calls `kt_output_info [0x10046374]` with a0=0x101b81d0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118c2c calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b8200, a2=(unknown), a3=(unknown).
  The `jal` at 0x10118c78 calls `kt_output_info [0x10046374]` with a0=0x101b8390, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118c98 calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7c78, a2=(unknown), a3=(unknown).
  The `jal` at 0x10118cbc calls `kt_output_dbug [0x10046d74]` with a0=0x2, a1=0x101b7d70, a2=(unknown), a3=(unknown).
  The `jal` at 0x10118d0c calls `flip [0x10117d58]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown), a6=[[sym(KONAINFO)]].
  The `jal` at 0x10118d1c calls `flip [0x10117d58]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118d38 calls `flip [0x10117d58]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118d48 calls `flip [0x10117d58]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118d8c calls `kt_output_diag [0x100461b0]` with a0=0x101b8430, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118da4 calls `kt_output_diag [0x100461b0]` with a0=0x101b8010, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118dbc calls `kt_output_diag [0x100461b0]` with a0=0x101b8040, a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x10118684 goes to 0x1011878c when v0(=ret(dgo_clearfb)) == 0 and falls through when v0(=ret(dgo_clearfb)) != 0.
  The `beq` at 0x101186d0 goes to 0x10118718 when v0(=ret(dgo_setup_fb_mode)) == 0 and falls through when v0(=ret(dgo_setup_fb_mode)) != 0.
  The `beq` at 0x10118730 goes to 0x10118c88 when v0(=ret(dgo_setup_video)) == 0 and falls through when v0(=ret(dgo_setup_video)) != 0.
  The `beq` at 0x10118764 goes to 0x101187c4 when v0(=ret(load_gamma_lut)) == 0 and falls through when v0(=ret(load_gamma_lut)) != 0.
  The `beq` at 0x101187e4 goes to 0x10118830 when ra(=[sym(GvoCrcs)]) == 0 and falls through when ra(=[sym(GvoCrcs)]) != 0.
  The `beq` at 0x10118800 goes to 0x10118834 when v0(=ret(gvo_crc_test)) == 0 and falls through when v0(=ret(gvo_crc_test)) != 0.
  The `beq` at 0x10118858 goes to 0x10118ca8 when v0(=ret(dgo_stop_video)) == 0 and falls through when v0(=ret(dgo_stop_video)) != 0.
  The `bne` at 0x10118918 goes to 0x101188e0 when s4(?) < s5(=0x556e0) (signed) and falls through when s4(?) >= s5(=0x556e0) (signed).
  The `beq` at 0x10118944 goes to 0x10118ccc when a6(=[[sym(KONAINFO)]]) == t0(=0x2) and falls through when a6(=[[sym(KONAINFO)]]) != t0(=0x2).
  The `beq` at 0x10118a0c goes to 0x10118b94 when a7(?) == v1(?) and falls through when a7(?) != v1(?).
  The `bne` at 0x10118a1c goes to 0x10118c5c when s1(?) < a0(=[sym(MAX_ERRORS)]) (unsigned) and falls through when s1(?) >= a0(=[sym(MAX_ERRORS)]) (unsigned).
  The `beq` at 0x10118a28 goes to 0x10118c10 when s4(?) == a7(?) and falls through when s4(?) != a7(?).
  The `bne` at 0x10118a48 goes to 0x10118a00 when t0(?) != 0 and falls through when t0(?) == 0.
  The `beq` at 0x10118a54 goes to 0x10118ad0 when a3(?) == 0 and falls through when a3(?) != 0.
  The `beq` at 0x10118a5c goes to 0x10118d70 when s1(?) == 0 and falls through when s1(?) != 0.
  The `beq` at 0x10118aec goes to 0x10118b88 when s6(?) == 0 and falls through when s6(?) != 0.
  The `beq` at 0x10118bcc goes to 0x10118c0c when s4(?) == a7(?) and falls through when s4(?) != a7(?).
  The `beq` at 0x10118bdc goes to 0x10118c34 when s1(?) >= a0(=[sym(MAX_ERRORS)]) (unsigned) and falls through when s1(?) < a0(=[sym(MAX_ERRORS)]) (unsigned).
  The `bne` at 0x10118c4c goes to 0x101189fc when s0(?) < s5(=0x556e0) (signed) and falls through when s0(?) >= s5(=0x556e0) (signed).
  The return at 0x10118710 has v0 = ?.
- `run_dgo_fb_lite_test` in `usr/diags/IR/bin/irsaudit` at 0x10118dcc (n32).
  It occupies 416 bytes.
  The `lw` at 0x10118e08 loads 4 bytes from abs 0x102bd09c via base v0 (0x102c4340).
  The `lw` at 0x10118e10 loads 4 bytes from abs 0x101b85e8 via base v0 (0x101b6328).
  The `ld` at 0x10118e14 loads 8 bytes from abs 0x101b85e0 via base v0 (0x101b6328).
  The `ld` at 0x10118e18 loads 8 bytes from abs 0x101b85d8 via base v0 (0x101b6328).
  The `ld` at 0x10118e1c loads 8 bytes from abs 0x101b85d0 via base v0 (0x101b6328).
  The `ld` at 0x10118e24 loads 8 bytes from abs 0x101b85c8 via base v0 (0x101b6328).
  The `lw` at 0x10118e30 loads 4 bytes from abs 0x102bd490 via base s4 (0x102c4340).
  The `lw` at 0x10118e6c loads 4 bytes from abs 0x102bd730 via base s3 (0x102c4340).
  The `lw` at 0x10118e78 loads 4 bytes from abs 0x102bdc44 via base s6 (0x102c4340).
  The `lw` at 0x10118e84 loads 4 bytes from abs 0x102bdc58 via base s5 (0x102c4340).
  4 such accesses load 4 bytes from abs 0x102bd09c via base a0 (0x102c4340), including `lw` at 0x10118e94, `lw` at 0x10118ed8, `lw` at 0x10118ef4.
  The `lw` at 0x10118e98 loads 4 bytes from ? (base unknown) via base s1 (?).
  The `jalr` at 0x10118e48 calls `printf` with a0=0x101b85f0, a1=0x33333333cccccccc, a2=0x55555555aaaaaaaa, a3=0xffffffff.
  The `jalr` at 0x10118e9c calls `printf` with a0=0x101b8610, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118ea8 calls `dgo_reset [0x101195bc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118ebc calls `dgo_fb_lite_test [0x10118630]` with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118ee0 calls `kt_output_info [0x10046374]` with a0=0x101b8618, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10118f00 calls `kt_output_info [0x10046374]` with a0=0x101b8630, a1=ret(dgo_fb_lite_test), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10118f2c calls `printf` with a0=0x101b8658, a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x10118ec4 goes to 0x10118f0c when v0(=ret(dgo_fb_lite_test)) == 0 and falls through when v0(=ret(dgo_fb_lite_test)) != 0.
  The `bne` at 0x10118f14 goes to 0x10118e88 when s2(?) < 0x9 (unsigned) and falls through when s2(?) >= 0x9 (unsigned).
  The return at 0x10118f64 has v0 = ?.
- `dgo_status` in `usr/diags/IR/bin/irsaudit` at 0x10118f6c (n32).
  It occupies 1008 bytes.
  The `lw` at 0x10118f8c loads 4 bytes from abs 0x102bdea8 via base s1 (0x102c4340).
  The `lw` at 0x10118fb4 loads 4 bytes from abs 0x102bd744 via base t9 (0x102c4340).
  The `lw` at 0x10118fbc loads 4 bytes from abs 0x102bd09c via base a1 (0x102c4340).
  4 such accesses load 4 bytes from abs 0x102bd730 via base s0 (0x102c4340), including `lw` at 0x10119000, `lw` at 0x10119284, `lw` at 0x101192b4.
  22 such accesses load 4 bytes from abs 0x102bd09c via base a0 (0x102c4340), including `lw` at 0x10119008, `lw` at 0x10119058, `lw` at 0x10119078.
  The `jal` at 0x10118f9c calls `vcRead [0x10140bac]` with a0=0xc006, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10118fc8 calls `kt_output_dbug [0x10046d74]` with a0=0x6, a1=0x101b8668, a2=(unknown), a3=(unknown).
  The `jal` at 0x10119014 calls `kt_output_info [0x10046374]` with a0=0x101b8728, a1=0xc006, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011905c calls `kt_output_info [0x10046374]` with a0=0x101b8798, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011907c calls `kt_output_info [0x10046374]` with a0=0x101b8800, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119098 calls `kt_output_info [0x10046374]` with a0=0x101b8830, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101190b8 calls `kt_output_info [0x10046374]` with a0=0x101b8850, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101190c8 calls `vcRead [0x10140bac]` with a0=0xcf00, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101190e4 calls `vcRead [0x10140bac]` with a0=0xcf00, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119110 calls `kt_output_info [0x10046374]` with a0=0x101b8870, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119138 calls `kt_output_info [0x10046374]` with a0=0x101b88b8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119150 calls `kt_output_info [0x10046374]` with a0=0x101b88e0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119170 calls `kt_output_info [0x10046374]` with a0=0x101b8948, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119190 calls `kt_output_info [0x10046374]` with a0=0x101b8998, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101191d4 calls `kt_output_info [0x10046374]` with a0=0x101b87c0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101191f4 calls `kt_output_info [0x10046374]` with a0=0x101b8818, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119214 calls `kt_output_info [0x10046374]` with a0=0x101b8970, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119234 calls `kt_output_info [0x10046374]` with a0=0x101b89c0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119254 calls `kt_output_info [0x10046374]` with a0=0x101b8908, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011926c calls `kt_output_info [0x10046374]` with a0=0x101b8928, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119298 calls `kt_output_info [0x10046374]` with a0=0x101b86f8, a1=0xc006, a2=(unknown), a3=(unknown).
  The `jal` at 0x101192c8 calls `kt_output_info [0x10046374]` with a0=0x101b8680, a1=0xc006, a2=(unknown), a3=(unknown).
  The `jal` at 0x101192e4 calls `kt_output_info [0x10046374]` with a0=0x101b8780, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119314 calls `kt_output_info [0x10046374]` with a0=0x101b86c0, a1=0xc006, a2=(unknown), a3=(unknown).
  The `jal` at 0x10119330 calls `kt_output_info [0x10046374]` with a0=0x101b8768, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011934c calls `kt_output_info [0x10046374]` with a0=0x101b8750, a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x10118fdc goes to 0x101192a8 when (v0(?) & 0x3) == 0 and falls through when (v0(?) & 0x3) != 0.
  The `beq` at 0x10118fe4 goes to 0x101192f4 when a1(=0x1) == v0(?) and falls through when a1(=0x1) != v0(?).
  The `beq` at 0x10118fec goes to 0x1011927c when v0(?) == v1(=0x3) and falls through when v0(?) != v1(=0x3).
  The `beq` at 0x10119024 goes to 0x101192d8 when (v0(?) & 0x3) == 0 and falls through when (v0(?) & 0x3) != 0.
  The `beq` at 0x10119030 goes to 0x10119324 when v0(?) == v1(=0x2) and falls through when v0(?) != v1(=0x2).
  The `beq` at 0x1011903c goes to 0x10119340 when v0(?) == a0(=0x3) and falls through when v0(?) != a0(=0x3).
  The `beq` at 0x10119048 goes to 0x101191c4 when a1(?) == 0 and falls through when a1(?) != 0.
  The `beq` at 0x10119068 goes to 0x101191e4 when a1(?) == 0 and falls through when a1(?) != 0.
  The `beq` at 0x101190dc goes to 0x101191bc when a3(?) == 0 and falls through when a3(?) != 0.
  The `beq` at 0x101190f8 goes to 0x101190dc when (a1(?) & 0x1f) == 0 and falls through when (a1(?) & 0x1f) != 0.
  The `beq` at 0x10119124 goes to 0x10119244 when (s3(=ret(vcRead)) & 0x1) == 0 and falls through when (s3(=ret(vcRead)) & 0x1) != 0.
  The `beq` at 0x1011915c goes to 0x10119204 when a1(?) == 0 and falls through when a1(?) != 0.
  The `beq` at 0x1011917c goes to 0x10119224 when a1(?) == 0 and falls through when a1(?) != 0.
  The return at 0x101191b4 has v0 = ?.
- `dgo_genlock` in `usr/diags/IR/bin/irsaudit` at 0x101193e4 (n32).
  It occupies 472 bytes.
  The `lw` at 0x10119404 loads 4 bytes from abs 0x102bd0ac via base a2 (0x102c4340).
  The `lw` at 0x10119418 loads 4 bytes from table(0x101b8a18) +0x0 via base a2 (table(0x101b8a18)).
  2 such accesses load 4 bytes from abs 0x102bdea8 via base t9 (0x102c4340), including `lw` at 0x1011942c, `lw` at 0x10119540.
  2 such accesses load 4 bytes from abs 0x102bdea0 via base t9 (0x102c4340), including `lw` at 0x10119440, `lw` at 0x10119554.
  2 such accesses load 4 bytes from abs 0x102bdc6c via base t9 (0x102c4340), including `lw` at 0x10119458, `lw` at 0x101194d8.
  2 such accesses load 4 bytes from abs 0x102bdc70 via base t9 (0x102c4340), including `lw` at 0x1011946c, `lw` at 0x10119594.
  2 such accesses load 4 bytes from abs 0x102bdc78 via base t9 (0x102c4340), including `lw` at 0x10119480, `lw` at 0x101195a8.
  The `lw` at 0x101194a4 loads 4 bytes from abs 0x102bdc64 via base t9 (0x102c4340).
  The `lw` at 0x101194bc loads 4 bytes from abs 0x102bdc60 via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bdc7c via base t9 (0x102c4340), including `lw` at 0x101194ec, `lw` at 0x10119508.
  The `lw` at 0x10119524 loads 4 bytes from abs 0x102bdc74 via base t9 (0x102c4340).
  The `lw` at 0x1011956c loads 4 bytes from abs 0x102bdc50 via base t9 (0x102c4340).
  The `lw` at 0x10119580 loads 4 bytes from abs 0x102bdc68 via base t9 (0x102c4340).
  The `jal` at 0x10119430 calls `vcRead [0x10140bac]` with a0=0xc006, a1=a1 at entry (arg1), a2=table(0x101b8a18), a3=(a0 << 0x2), a4=entry(0x101b8a18).
  The `jal` at 0x10119448 calls `vcWrite [0x1014071c]` with a0=0xc006, a1=(ret(vcRead) | 0x10), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011945c calls `dgo_genlock_PAL [0x1011a088]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119470 calls `dgo_write_tcm22071 [0x1011a164]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119484 calls `dgo_ll_path [0x1011a30c]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101194a8 calls `dgo_genlock_status [0x101199f4]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=table(0x101b8a18), a3=(a0 << 0x2), a4=entry(0x101b8a18).
  The `jal` at 0x101194c0 calls `dgo_csc_status [0x10119824]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=table(0x101b8a18), a3=(a0 << 0x2), a4=entry(0x101b8a18).
  The `jal` at 0x101194dc calls `dgo_genlock_PAL [0x1011a088]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=table(0x101b8a18), a3=(a0 << 0x2), a4=entry(0x101b8a18).
  The `jal` at 0x101194f0 calls `dgo_fb_path [0x1011a4b4]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011950c calls `dgo_fb_path [0x1011a4b4]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=table(0x101b8a18), a3=(a0 << 0x2), a4=entry(0x101b8a18).
  The `jal` at 0x10119528 calls `dgo_genlock_reset [0x1011a280]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=table(0x101b8a18), a3=(a0 << 0x2), a4=entry(0x101b8a18).
  The `jal` at 0x10119544 calls `vcRead [0x10140bac]` with a0=0xc006, a1=a1 at entry (arg1), a2=table(0x101b8a18), a3=(a0 << 0x2), a4=entry(0x101b8a18).
  The `jal` at 0x1011955c calls `vcWrite [0x1014071c]` with a0=0xc006, a1=(ret(vcRead) | 0x10), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119570 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119584 calls `dgo_genlock_NTSC [0x10119fac]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119598 calls `dgo_write_tcm22071 [0x1011a164]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101195ac calls `dgo_ll_path [0x1011a30c]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x10119410 goes to 0x1011948c when a0 >= 0x8 (unsigned) and falls through when a0 < 0x8 (unsigned).
  The return at 0x10119494 has v0 = ?.
- `dgo_csc_status` in `usr/diags/IR/bin/irsaudit` at 0x10119824 (n32).
  It occupies 464 bytes.
  The `lw` at 0x1011986c loads 4 bytes from abs 0x102bd744 via base s4 (0x102c4340).
  The `lw` at 0x1011987c loads 4 bytes from abs 0x102bd0ac via base at (0x102c4340).
  The `lw` at 0x10119888 loads 4 bytes from abs 0x102bdea8 via base s0 (0x102c4340).
  The `lwc1` at 0x10119894 loads 4 bytes from abs 0x101b8b28 via base at (0x101b8a18).
  The `lw` at 0x101198bc loads 4 bytes from abs 0x102bd0ac via base a1 (0x102c4340).
  The `lw` at 0x10119934 loads 4 bytes from abs 0x102bd730 via base s1 (0x102c4340).
  4 such accesses load 4 bytes from abs 0x102bd0ac via base a0 (0x102c4340), including `lw` at 0x1011993c, `lw` at 0x1011997c, `lw` at 0x101199a4.
  The `jal` at 0x101198d0 calls `kt_output_dbug [0x10046d74]` with a0=0x4, a1=0x101b8b30, a2=ret(vcRead), a3=ret(vcRead).
  The `jal` at 0x101198f0 calls `vcRead [0x10140bac]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119900 calls `vcRead [0x10140bac]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119944 calls `kt_output_info [0x10046374]` with a0=0x101b8b50, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119968 calls `vcRead [0x10140bac]` with a0=0xc214, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119984 calls `kt_output_info [0x10046374]` with a0=0x101b8b58, a1=ret(vcRead), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119990 calls `vcRead [0x10140bac]` with a0=0xc215, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101199ac calls `kt_output_info [0x10046374]` with a0=0x101b8b68, a1=ret(vcRead), a2=(unknown), a3=(unknown).
  The `jal` at 0x101199b8 calls `vcRead [0x10140bac]` with a0=0xc216, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x101199d8 calls `kt_output_info [0x10046374]` with a0=0x101b8b78, a1=ret(vcRead), a2=(unknown), a3=(unknown).
  The `beq` at 0x101198e4 goes to 0x10119928 when s5(?) >= 0xa (signed) and falls through when s5(?) < 0xa (signed).
  The `bne` at 0x10119918 goes to 0x10119898 when (a4(?) & 0x1000) != 0 and falls through when (a4(?) & 0x1000) == 0.
  The return at 0x101199ec has v0 = ret(kt_output_info).
- `dgo_genlock_status` in `usr/diags/IR/bin/irsaudit` at 0x101199f4 (n32).
  It occupies 1464 bytes.
  The `lw` at 0x10119a24 loads 4 bytes from abs 0x102bd0ac via base at (0x102c4340).
  The `lw` at 0x10119a4c loads 4 bytes from abs 0x102bd490 via base s3 (0x102c4340).
  The `lw` at 0x10119a88 loads 4 bytes from abs 0x102be6b4 via base s1 (0x102c4340).
  The `lw` at 0x10119a98 loads 4 bytes from abs 0x102bdea8 via base s4 (0x102c4340).
  34 such accesses load 4 bytes from abs 0x102bd0ac via base a0 (0x102c4340), including `lw` at 0x10119ab8, `lw` at 0x10119af4, `lw` at 0x10119b14.
  The `sw` at 0x10119ac0 stores 4 bytes to ? (base unknown) via base s2 (?) with value .
  The `lw` at 0x10119b0c loads 4 bytes from abs 0x102bd730 via base s0 (0x102c4340).
  The `lw` at 0x10119b24 loads 4 bytes from sym(dgo_genlock_buf_in) +0xe0 via base s1 (sym(dgo_genlock_buf_in)).
  2 such accesses load 4 bytes from sym(dgo_genlock_buf_in) +0xc4 via base s1 (sym(dgo_genlock_buf_in)), including `lw` at 0x10119b4c, `lw` at 0x10119fa8.
  The `lw` at 0x10119b50 loads 4 bytes from sym(dgo_genlock_buf_in) +0xc8 via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119b54 loads 4 bytes from sym(dgo_genlock_buf_in) +0xcc via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119b58 loads 4 bytes from sym(dgo_genlock_buf_in) +0xd0 via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119b5c loads 4 bytes from sym(dgo_genlock_buf_in) +0xd4 via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119b60 loads 4 bytes from sym(dgo_genlock_buf_in) +0xd8 via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119b68 loads 4 bytes from sym(dgo_genlock_buf_in) +0xdc via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119b78 loads 4 bytes from sym(dgo_genlock_buf_in) +0xc0 via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119b88 loads 4 bytes from sym(dgo_genlock_buf_in) +0xbc via base s1 (sym(dgo_genlock_buf_in)).
  2 such accesses load 4 bytes from sym(dgo_genlock_buf_in) +0xac via base s1 (sym(dgo_genlock_buf_in)), including `lw` at 0x10119ba8, `lw` at 0x10119e58.
  The `lw` at 0x10119bb0 loads 4 bytes from sym(dgo_genlock_buf_in) +0xa8 via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119bc0 loads 4 bytes from sym(dgo_genlock_buf_in) +0xa4 via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119bc4 loads 4 bytes from sym(dgo_genlock_buf_in) +0xa0 via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119bd0 loads 4 bytes from sym(dgo_genlock_buf_in) +0xb8 via base s1 (sym(dgo_genlock_buf_in)).
  2 such accesses load 4 bytes from sym(dgo_genlock_buf_in) +0x88 via base s1 (sym(dgo_genlock_buf_in)), including `lw` at 0x10119bf4, `lw` at 0x10119e74.
  2 such accesses load 4 bytes from sym(dgo_genlock_buf_in) +0x84 via base s1 (sym(dgo_genlock_buf_in)), including `lw` at 0x10119c18, `lw` at 0x10119e90.
  2 such accesses load 4 bytes from sym(dgo_genlock_buf_in) +0x7c via base s1 (sym(dgo_genlock_buf_in)), including `lw` at 0x10119c38, `lw` at 0x10119eb0.
  2 such accesses load 4 bytes from sym(dgo_genlock_buf_in) +0x78 via base s1 (sym(dgo_genlock_buf_in)), including `lw` at 0x10119c58, `lw` at 0x10119ed0.
  2 such accesses load 4 bytes from sym(dgo_genlock_buf_in) +0x68 via base s1 (sym(dgo_genlock_buf_in)), including `lw` at 0x10119c78, `lw` at 0x10119ef0.
  2 such accesses load 4 bytes from sym(dgo_genlock_buf_in) +0x64 via base s1 (sym(dgo_genlock_buf_in)), including `lw` at 0x10119cc8, `lw` at 0x10119f2c.
  2 such accesses load 4 bytes from sym(dgo_genlock_buf_in) +0x48 via base s1 (sym(dgo_genlock_buf_in)), including `lw` at 0x10119ce8, `lw` at 0x10119f4c.
  The `lw` at 0x10119cec loads 4 bytes from sym(dgo_genlock_buf_in) +0x4c via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119cf0 loads 4 bytes from sym(dgo_genlock_buf_in) +0x50 via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119cf4 loads 4 bytes from sym(dgo_genlock_buf_in) +0x54 via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119cf8 loads 4 bytes from sym(dgo_genlock_buf_in) +0x58 via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119cfc loads 4 bytes from sym(dgo_genlock_buf_in) +0x5c via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119d04 loads 4 bytes from sym(dgo_genlock_buf_in) +0x60 via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119d14 loads 4 bytes from sym(dgo_genlock_buf_in) +0x44 via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119d24 loads 4 bytes from sym(dgo_genlock_buf_in) +0x30 via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119d28 loads 4 bytes from sym(dgo_genlock_buf_in) +0x34 via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119d30 loads 4 bytes from sym(dgo_genlock_buf_in) +0x38 via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119d40 loads 4 bytes from sym(dgo_genlock_buf_in) +0x3c via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119d44 loads 4 bytes from sym(dgo_genlock_buf_in) +0x40 via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119d50 loads 4 bytes from sym(dgo_genlock_buf_in) +0x24 via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119d80 loads 4 bytes from sym(dgo_genlock_buf_in) +0x1c via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119d84 loads 4 bytes from sym(dgo_genlock_buf_in) +0x20 via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119d90 loads 4 bytes from sym(dgo_genlock_buf_in) +0x4 via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119d94 loads 4 bytes from sym(dgo_genlock_buf_in) +0x8 via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119da0 loads 4 bytes from sym(dgo_genlock_buf_in) +0xc via base s1 (sym(dgo_genlock_buf_in)).
  The `lw` at 0x10119dd4 loads 4 bytes from (sp-96 + ((([sym(dgo_genlock_buf_in)+4] | ([sym(dgo_genlock_buf_in)+8] << 0x1)) | ([sym(dgo_genlock_buf_in)+12] << 0x2)) << 0x2)) +0x0 via base a4 ((sp-96 + ((([sym(dgo_genlock_buf_in)+4] | ([sym(dgo_genlock_buf_in)+8] << 0x1)) | ([sym(dgo_genlock_buf_in)+12] << 0x2)) << 0x2))).
  The `lw` at 0x10119dd8 loads 4 bytes from sym(dgo_genlock_buf_in) +0x0 via base s1 (sym(dgo_genlock_buf_in)).
  The `jalr` at 0x10119a74 calls `printf` with a0=0x101b8be0, a1=0x101b8b88, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10119aa4 calls `vcRead [0x10140bac]` with a0=0xc400, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10119ac4 calls `printf` with a0=0x101b8bf8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jalr` at 0x10119af8 calls `printf` with a0=0x101b8bfe, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119b1c calls `kt_output_info [0x10046374]` with a0=0x101b8c00, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119b44 calls `kt_output_info [0x10046374]` with a0=0x101b8c28, a1=[sym(dgo_genlock_buf_in)+224], a2=(unknown), a3=(unknown).
  The `jal` at 0x10119b80 calls `kt_output_info [0x10046374]` with a0=0x101b8c38, a1=[sym(dgo_genlock_buf_in)+220], a2=[sym(dgo_genlock_buf_in)+216], a3=[sym(dgo_genlock_buf_in)+212], a4=[sym(dgo_genlock_buf_in)+208], a5=[sym(dgo_genlock_buf_in)+204], a6=[sym(dgo_genlock_buf_in)+200], a7=[sym(dgo_genlock_buf_in)+196].
  The `jal` at 0x10119ba0 calls `kt_output_info [0x10046374]` with a0=0x101b8c90, a1=[sym(dgo_genlock_buf_in)+188], a2=(unknown), a3=(unknown).
  The `jal` at 0x10119bc8 calls `kt_output_info [0x10046374]` with a0=0x101b8ca8, a1=[sym(dgo_genlock_buf_in)+172], a2=[sym(dgo_genlock_buf_in)+168], a3=[sym(dgo_genlock_buf_in)+164], a4=[sym(dgo_genlock_buf_in)+160].
  The `jal` at 0x10119bec calls `kt_output_info [0x10046374]` with a0=0x101b8ce0, a1=[sym(dgo_genlock_buf_in)+184], a2=(unknown), a3=(unknown).
  The `jal` at 0x10119c10 calls `kt_output_info [0x10046374]` with a0=0x101b8d10, a1=[sym(dgo_genlock_buf_in)+136], a2=(unknown), a3=(unknown).
  The `jal` at 0x10119c30 calls `kt_output_info [0x10046374]` with a0=0x101b8d48, a1=[sym(dgo_genlock_buf_in)+132], a2=(unknown), a3=(unknown).
  The `jal` at 0x10119c50 calls `kt_output_info [0x10046374]` with a0=0x101b8d78, a1=[sym(dgo_genlock_buf_in)+124], a2=(unknown), a3=(unknown).
  The `jal` at 0x10119c70 calls `kt_output_info [0x10046374]` with a0=0x101b8dd8, a1=[sym(dgo_genlock_buf_in)+120], a2=(unknown), a3=(unknown).
  The `jal` at 0x10119c90 calls `kt_output_info [0x10046374]` with a0=0x101b8e58, a1=[sym(dgo_genlock_buf_in)+104], a2=(unknown), a3=(unknown).
  The `jal` at 0x10119c9c calls `vcRead [0x10140bac]` with a0=0xc006, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119cc0 calls `kt_output_info [0x10046374]` with a0=0x101b8e98, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119ce0 calls `kt_output_info [0x10046374]` with a0=0x101b8f08, a1=[sym(dgo_genlock_buf_in)+100], a2=(unknown), a3=(unknown).
  The `jal` at 0x10119d1c calls `kt_output_info [0x10046374]` with a0=0x101b8f20, a1=[sym(dgo_genlock_buf_in)+96], a2=[sym(dgo_genlock_buf_in)+92], a3=[sym(dgo_genlock_buf_in)+88], a4=[sym(dgo_genlock_buf_in)+84], a5=[sym(dgo_genlock_buf_in)+80], a6=[sym(dgo_genlock_buf_in)+76], a7=[sym(dgo_genlock_buf_in)+72].
  The `jal` at 0x10119d48 calls `kt_output_info [0x10046374]` with a0=0x101b8f60, a1=[sym(dgo_genlock_buf_in)+64], a2=[sym(dgo_genlock_buf_in)+60], a3=[sym(dgo_genlock_buf_in)+56], a4=[sym(dgo_genlock_buf_in)+52], a5=[sym(dgo_genlock_buf_in)+48].
  The `jal` at 0x10119d68 calls `kt_output_info [0x10046374]` with a0=0x101b8fb8, a1=[sym(dgo_genlock_buf_in)+36], a2=(unknown), a3=(unknown).
  The `jal` at 0x10119d88 calls `kt_output_info [0x10046374]` with a0=0x101b8fd8, a1=[sym(dgo_genlock_buf_in)+32], a2=[sym(dgo_genlock_buf_in)+28], a3=(unknown).
  The `jal` at 0x10119dd0 calls `kt_output_info [0x10046374]` with a0=0x101b9000, a1=[sym(dgo_genlock_buf_in)+12], a2=[sym(dgo_genlock_buf_in)+8], a3=[sym(dgo_genlock_buf_in)+4], a4=[(sp-96 + ((([sym(dgo_genlock_buf_in)+4] | ([sym(dgo_genlock_buf_in)+8] << 0x1)) | ([sym(dgo_genlock_buf_in)+12] << 0x2)) << 0x2))], a5=((([sym(dgo_genlock_buf_in)+4] | ([sym(dgo_genlock_buf_in)+8] << 0x1)) | ([sym(dgo_genlock_buf_in)+12] << 0x2)) << 0x2), a6=([sym(dgo_genlock_buf_in)+12] << 0x2).
  The `jal` at 0x10119df0 calls `kt_output_info [0x10046374]` with a0=0x101b9058, a1=(unknown), a2=(unknown), a3=(unknown), a7=[sym(dgo_genlock_buf_in)].
  The `jalr` at 0x10119e2c calls `printf` with a0=0x101b8bfc, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119e4c calls `kt_output_info [0x10046374]` with a0=0x101b8c70, a1=[sym(dgo_genlock_buf_in)+188], a2=(unknown), a3=(unknown).
  The `jal` at 0x10119e68 calls `kt_output_info [0x10046374]` with a0=0x101b8cd0, a1=[sym(dgo_genlock_buf_in)+184], a2=(unknown), a3=(unknown).
  The `jal` at 0x10119e84 calls `kt_output_info [0x10046374]` with a0=0x101b8cf0, a1=[sym(dgo_genlock_buf_in)+136], a2=(unknown), a3=(unknown).
  The `jal` at 0x10119ea4 calls `kt_output_info [0x10046374]` with a0=0x101b8d30, a1=[sym(dgo_genlock_buf_in)+132], a2=(unknown), a3=(unknown).
  The `jal` at 0x10119ec4 calls `kt_output_info [0x10046374]` with a0=0x101b8d60, a1=[sym(dgo_genlock_buf_in)+124], a2=(unknown), a3=(unknown).
  The `jal` at 0x10119ee4 calls `kt_output_info [0x10046374]` with a0=0x101b8da0, a1=[sym(dgo_genlock_buf_in)+120], a2=(unknown), a3=(unknown).
  The `jal` at 0x10119f04 calls `kt_output_info [0x10046374]` with a0=0x101b8e08, a1=[sym(dgo_genlock_buf_in)+104], a2=(unknown), a3=(unknown).
  The `jal` at 0x10119f20 calls `kt_output_info [0x10046374]` with a0=0x101b8eb8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x10119f40 calls `kt_output_info [0x10046374]` with a0=0x101b8ef8, a1=[sym(dgo_genlock_buf_in)+100], a2=(unknown), a3=(unknown).
  The `jal` at 0x10119f60 calls `kt_output_info [0x10046374]` with a0=0x101b8f98, a1=[sym(dgo_genlock_buf_in)+36], a2=(unknown), a3=(unknown).
  The `jal` at 0x10119f80 calls `kt_output_info [0x10046374]` with a0=0x101b9030, a1=(unknown), a2=(unknown), a3=(unknown), a7=[sym(dgo_genlock_buf_in)].
  The `jal` at 0x10119f9c calls `kt_output_info [0x10046374]` with a0=0x101b8c18, a1=[sym(dgo_genlock_buf_in)+224], a2=(unknown), a3=(unknown).
  The `beq` at 0x10119ad4 goes to 0x10119e20 when a1(?) == 0 and falls through when a1(?) != 0.
  The `bgez` at 0x10119ae0 goes to 0x10119aa0 when s0(?) >= 0 (signed) and falls through when s0(?) < 0 (signed).
  The `beq` at 0x10119b2c goes to 0x10119f90 when a1(=[sym(dgo_genlock_buf_in)+224]) == s2(=0x1) and falls through when a1(=[sym(dgo_genlock_buf_in)+224]) != s2(=0x1).
  The `beq` at 0x10119b8c goes to 0x10119e3c when a1(=[sym(dgo_genlock_buf_in)+188]) == 0 and falls through when a1(=[sym(dgo_genlock_buf_in)+188]) != 0.
  The `beq` at 0x10119bd4 goes to 0x10119e5c when a1(=[sym(dgo_genlock_buf_in)+184]) == s2(=0x1) and falls through when a1(=[sym(dgo_genlock_buf_in)+184]) != s2(=0x1).
  The `beq` at 0x10119bf8 goes to 0x10119e78 when a1(=[sym(dgo_genlock_buf_in)+136]) == s2(=0x1) and falls through when a1(=[sym(dgo_genlock_buf_in)+136]) != s2(=0x1).
  The `beq` at 0x10119c1c goes to 0x10119e94 when a1(=[sym(dgo_genlock_buf_in)+132]) == s2(=0x1) and falls through when a1(=[sym(dgo_genlock_buf_in)+132]) != s2(=0x1).
  The `beq` at 0x10119c3c goes to 0x10119eb4 when a1(=[sym(dgo_genlock_buf_in)+124]) == s2(=0x1) and falls through when a1(=[sym(dgo_genlock_buf_in)+124]) != s2(=0x1).
  The `beq` at 0x10119c5c goes to 0x10119ed4 when a1(=[sym(dgo_genlock_buf_in)+120]) == s2(=0x1) and falls through when a1(=[sym(dgo_genlock_buf_in)+120]) != s2(=0x1).
  The `beq` at 0x10119c7c goes to 0x10119ef4 when a1(=[sym(dgo_genlock_buf_in)+104]) == s2(=0x1) and falls through when a1(=[sym(dgo_genlock_buf_in)+104]) != s2(=0x1).
  The `beq` at 0x10119ca8 goes to 0x10119f14 when (v0(=ret(vcRead)) & 0x10) == 0 and falls through when (v0(=ret(vcRead)) & 0x10) != 0.
  The `beq` at 0x10119ccc goes to 0x10119f30 when a1(=[sym(dgo_genlock_buf_in)+100]) == s2(=0x1) and falls through when a1(=[sym(dgo_genlock_buf_in)+100]) != s2(=0x1).
  The `beq` at 0x10119d54 goes to 0x10119f50 when a1(=[sym(dgo_genlock_buf_in)+36]) == s2(=0x1) and falls through when a1(=[sym(dgo_genlock_buf_in)+36]) != s2(=0x1).
  The `beq` at 0x10119ddc goes to 0x10119f70 when a7(=[sym(dgo_genlock_buf_in)]) == s2(=0x1) and falls through when a7(=[sym(dgo_genlock_buf_in)]) != s2(=0x1).
  The return at 0x10119e18 has v0 = ret(kt_output_info).
- `dgo_genlock_NTSC` in `usr/diags/IR/bin/irsaudit` at 0x10119fac (n32).
  It occupies 220 bytes.
  The `lw` at 0x10119fc0 loads 4 bytes from abs 0x102be6b0 via base v1 (0x102c4340).
  The `sw` at 0x10119fc4 stores 4 bytes to sym(dgo_genlock_buf_out) +0xb8 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x10119fc8 stores 4 bytes to sym(dgo_genlock_buf_out) +0xb4 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x10119fd0 stores 4 bytes to sym(dgo_genlock_buf_out) +0xb0 via base v1 (sym(dgo_genlock_buf_out)) with value 0x1.
  The `sw` at 0x10119fd4 stores 4 bytes to sym(dgo_genlock_buf_out) +0xac via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x10119fd8 stores 4 bytes to sym(dgo_genlock_buf_out) +0xa8 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x10119fdc stores 4 bytes to sym(dgo_genlock_buf_out) +0xa4 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x10119fe0 stores 4 bytes to sym(dgo_genlock_buf_out) +0xa0 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x10119fe4 stores 4 bytes to sym(dgo_genlock_buf_out) +0x9c via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x10119fe8 stores 4 bytes to sym(dgo_genlock_buf_out) +0x98 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x10119fec stores 4 bytes to sym(dgo_genlock_buf_out) +0x94 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x10119ff0 stores 4 bytes to sym(dgo_genlock_buf_out) +0x90 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x10119ff4 stores 4 bytes to sym(dgo_genlock_buf_out) +0x8c via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x10119ff8 stores 4 bytes to sym(dgo_genlock_buf_out) +0x88 via base v1 (sym(dgo_genlock_buf_out)) with value 0x1.
  The `sw` at 0x10119ffc stores 4 bytes to sym(dgo_genlock_buf_out) +0x84 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a000 stores 4 bytes to sym(dgo_genlock_buf_out) +0x80 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a004 stores 4 bytes to sym(dgo_genlock_buf_out) +0x7c via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a008 stores 4 bytes to sym(dgo_genlock_buf_out) +0x78 via base v1 (sym(dgo_genlock_buf_out)) with value 0x1.
  The `sw` at 0x1011a00c stores 4 bytes to sym(dgo_genlock_buf_out) +0x74 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a010 stores 4 bytes to sym(dgo_genlock_buf_out) +0x70 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a014 stores 4 bytes to sym(dgo_genlock_buf_out) +0x6c via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a018 stores 4 bytes to sym(dgo_genlock_buf_out) +0x68 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a01c stores 4 bytes to sym(dgo_genlock_buf_out) +0x64 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a020 stores 4 bytes to sym(dgo_genlock_buf_out) +0x60 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a024 stores 4 bytes to sym(dgo_genlock_buf_out) +0x5c via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a028 stores 4 bytes to sym(dgo_genlock_buf_out) +0x58 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a02c stores 4 bytes to sym(dgo_genlock_buf_out) +0x54 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a030 stores 4 bytes to sym(dgo_genlock_buf_out) +0x50 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a034 stores 4 bytes to sym(dgo_genlock_buf_out) +0x4c via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a038 stores 4 bytes to sym(dgo_genlock_buf_out) +0x48 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a03c stores 4 bytes to sym(dgo_genlock_buf_out) +0x44 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a040 stores 4 bytes to sym(dgo_genlock_buf_out) +0x40 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a044 stores 4 bytes to sym(dgo_genlock_buf_out) +0x3c via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a048 stores 4 bytes to sym(dgo_genlock_buf_out) +0x38 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a04c stores 4 bytes to sym(dgo_genlock_buf_out) +0x34 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a050 stores 4 bytes to sym(dgo_genlock_buf_out) +0x30 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a054 stores 4 bytes to sym(dgo_genlock_buf_out) +0x2c via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a058 stores 4 bytes to sym(dgo_genlock_buf_out) +0x28 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a05c stores 4 bytes to sym(dgo_genlock_buf_out) +0x24 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a060 stores 4 bytes to sym(dgo_genlock_buf_out) +0x20 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a064 stores 4 bytes to sym(dgo_genlock_buf_out) +0x1c via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a068 stores 4 bytes to sym(dgo_genlock_buf_out) +0x18 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a06c stores 4 bytes to sym(dgo_genlock_buf_out) +0x14 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a070 stores 4 bytes to sym(dgo_genlock_buf_out) +0x10 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a074 stores 4 bytes to sym(dgo_genlock_buf_out) +0xc via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a078 stores 4 bytes to sym(dgo_genlock_buf_out) +0x8 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a07c stores 4 bytes to sym(dgo_genlock_buf_out) +0x4 via base v1 (sym(dgo_genlock_buf_out)) with value 0x1.
  The `sw` at 0x1011a084 stores 4 bytes to sym(dgo_genlock_buf_out) +0x0 via base v1 (sym(dgo_genlock_buf_out)) with value 0x1.
  The return at 0x1011a080 has v0 = 0x1.
- `dgo_genlock_PAL` in `usr/diags/IR/bin/irsaudit` at 0x1011a088 (n32).
  It occupies 220 bytes.
  The `lw` at 0x1011a09c loads 4 bytes from abs 0x102be6b0 via base v1 (0x102c4340).
  The `sw` at 0x1011a0a0 stores 4 bytes to sym(dgo_genlock_buf_out) +0xb8 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a0a4 stores 4 bytes to sym(dgo_genlock_buf_out) +0xb4 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a0ac stores 4 bytes to sym(dgo_genlock_buf_out) +0xb0 via base v1 (sym(dgo_genlock_buf_out)) with value 0x1.
  The `sw` at 0x1011a0b0 stores 4 bytes to sym(dgo_genlock_buf_out) +0xac via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a0b4 stores 4 bytes to sym(dgo_genlock_buf_out) +0xa8 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a0b8 stores 4 bytes to sym(dgo_genlock_buf_out) +0xa4 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a0bc stores 4 bytes to sym(dgo_genlock_buf_out) +0xa0 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a0c0 stores 4 bytes to sym(dgo_genlock_buf_out) +0x9c via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a0c4 stores 4 bytes to sym(dgo_genlock_buf_out) +0x98 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a0c8 stores 4 bytes to sym(dgo_genlock_buf_out) +0x94 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a0cc stores 4 bytes to sym(dgo_genlock_buf_out) +0x90 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a0d0 stores 4 bytes to sym(dgo_genlock_buf_out) +0x8c via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a0d4 stores 4 bytes to sym(dgo_genlock_buf_out) +0x88 via base v1 (sym(dgo_genlock_buf_out)) with value 0x1.
  The `sw` at 0x1011a0d8 stores 4 bytes to sym(dgo_genlock_buf_out) +0x84 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a0dc stores 4 bytes to sym(dgo_genlock_buf_out) +0x80 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a0e0 stores 4 bytes to sym(dgo_genlock_buf_out) +0x7c via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a0e4 stores 4 bytes to sym(dgo_genlock_buf_out) +0x78 via base v1 (sym(dgo_genlock_buf_out)) with value 0x1.
  The `sw` at 0x1011a0e8 stores 4 bytes to sym(dgo_genlock_buf_out) +0x74 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a0ec stores 4 bytes to sym(dgo_genlock_buf_out) +0x70 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a0f0 stores 4 bytes to sym(dgo_genlock_buf_out) +0x6c via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a0f4 stores 4 bytes to sym(dgo_genlock_buf_out) +0x68 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a0f8 stores 4 bytes to sym(dgo_genlock_buf_out) +0x64 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a0fc stores 4 bytes to sym(dgo_genlock_buf_out) +0x60 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a100 stores 4 bytes to sym(dgo_genlock_buf_out) +0x5c via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a104 stores 4 bytes to sym(dgo_genlock_buf_out) +0x58 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a108 stores 4 bytes to sym(dgo_genlock_buf_out) +0x54 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a10c stores 4 bytes to sym(dgo_genlock_buf_out) +0x50 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a110 stores 4 bytes to sym(dgo_genlock_buf_out) +0x4c via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a114 stores 4 bytes to sym(dgo_genlock_buf_out) +0x48 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a118 stores 4 bytes to sym(dgo_genlock_buf_out) +0x44 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a11c stores 4 bytes to sym(dgo_genlock_buf_out) +0x40 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a120 stores 4 bytes to sym(dgo_genlock_buf_out) +0x3c via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a124 stores 4 bytes to sym(dgo_genlock_buf_out) +0x38 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a128 stores 4 bytes to sym(dgo_genlock_buf_out) +0x34 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a12c stores 4 bytes to sym(dgo_genlock_buf_out) +0x30 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a130 stores 4 bytes to sym(dgo_genlock_buf_out) +0x2c via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a134 stores 4 bytes to sym(dgo_genlock_buf_out) +0x28 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a138 stores 4 bytes to sym(dgo_genlock_buf_out) +0x24 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a13c stores 4 bytes to sym(dgo_genlock_buf_out) +0x20 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a140 stores 4 bytes to sym(dgo_genlock_buf_out) +0x1c via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a144 stores 4 bytes to sym(dgo_genlock_buf_out) +0x18 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a148 stores 4 bytes to sym(dgo_genlock_buf_out) +0x14 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a14c stores 4 bytes to sym(dgo_genlock_buf_out) +0x10 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a150 stores 4 bytes to sym(dgo_genlock_buf_out) +0xc via base v1 (sym(dgo_genlock_buf_out)) with value 0x1.
  The `sw` at 0x1011a154 stores 4 bytes to sym(dgo_genlock_buf_out) +0x8 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a158 stores 4 bytes to sym(dgo_genlock_buf_out) +0x4 via base v1 (sym(dgo_genlock_buf_out)) with value 0x0.
  The `sw` at 0x1011a160 stores 4 bytes to sym(dgo_genlock_buf_out) +0x0 via base v1 (sym(dgo_genlock_buf_out)) with value 0x1.
  The return at 0x1011a15c has v0 = 0x1.
- `dgo_ll_path` in `usr/diags/IR/bin/irsaudit` at 0x1011a30c (n32).
  It occupies 424 bytes.
  The `lw` at 0x1011a32c loads 4 bytes from abs 0x102bdea0 via base s0 (0x102c4340).
  The `lw` at 0x1011a354 loads 4 bytes from abs 0x102bd744 via base s2 (0x102c4340).
  3 such accesses load 4 bytes from abs 0x102bd0ac via base a1 (0x102c4340), including `lw` at 0x1011a360, `lw` at 0x1011a414, `lw` at 0x1011a474.
  The `lw` at 0x1011a384 loads 4 bytes from abs 0x102bdc50 via base s1 (0x102c4340).
  The `lw` at 0x1011a3b8 loads 4 bytes from abs 0x102bdc80 via base t9 (0x102c4340).
  The `lw` at 0x1011a3d0 loads 4 bytes from abs 0x102bdea8 via base s3 (0x102c4340).
  The `jal` at 0x1011a340 calls `vcWrite [0x1014071c]` with a0=0x8400, a1=0x800, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011a374 calls `kt_output_dbug [0x10046d74]` with a0=0x6, a1=0x101b9098, a2=0x800, a3=0x8400.
  The `jal` at 0x1011a38c calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a39c calls `vcWrite [0x1014071c]` with a0=0x8000, a1=0x1, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a3a8 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a3c0 calls `csc_config [0x1011a624]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a3dc calls `vcRead [0x10140bac]` with a0=0xc006, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a3fc calls `vcWrite [0x1014071c]` with a0=0xc006, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a420 calls `kt_output_dbug [0x10046d74]` with a0=0x6, a1=0x101b90b8, a2=(unknown), a3=0xc006.
  The `jal` at 0x1011a430 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a440 calls `vcRead [0x10140bac]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a45c calls `vcWrite [0x1014071c]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a484 calls `kt_output_dbug [0x10046d74]` with a0=0x6, a1=0x101b90e0, a2=(unknown), a3=0xc104.
  The `jal` at 0x1011a498 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The return at 0x1011a4ac has v0 = ret(dgo_wait).
- `dgo_fb_path` in `usr/diags/IR/bin/irsaudit` at 0x1011a4b4 (n32).
  It occupies 368 bytes.
  The `lw` at 0x1011a4d4 loads 4 bytes from abs 0x102bdea0 via base s2 (0x102c4340).
  The `lw` at 0x1011a4f8 loads 4 bytes from abs 0x102bdc50 via base s1 (0x102c4340).
  The `lw` at 0x1011a518 loads 4 bytes from abs 0x102bd744 via base s0 (0x102c4340).
  4 such accesses load 4 bytes from abs 0x102bd0ac via base a1 (0x102c4340), including `lw` at 0x1011a524, `lw` at 0x1011a564, `lw` at 0x1011a5b4.
  The `lw` at 0x1011a57c loads 4 bytes from abs 0x102bdc80 via base t9 (0x102c4340).
  The `jal` at 0x1011a4e8 calls `vcWrite [0x1014071c]` with a0=0x8400, a1=0x800, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011a504 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a534 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b9098, a2=0x800, a3=0x8400.
  The `jal` at 0x1011a544 calls `vcWrite [0x1014071c]` with a0=0x8000, a1=0x1, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a550 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a56c calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b9108, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a580 calls `csc_config [0x1011a624]` with a0=0x0, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a590 calls `vcWrite [0x1014071c]` with a0=0xc006, a1=0x40a, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a59c calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a5c0 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b90b8, a2=0x40a, a3=0xc006.
  The `jal` at 0x1011a5d0 calls `vcWrite [0x1014071c]` with a0=0xc104, a1=0x2, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a5e0 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a608 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b90e0, a2=0x2, a3=0xc104.
  The return at 0x1011a61c has v0 = ret(kt_output_dbug).
- `csc_config` in `usr/diags/IR/bin/irsaudit` at 0x1011a624 (n32).
  It occupies 992 bytes.
  2 such accesses load 4 bytes from abs 0x102bd0ac via base a5 (0x102c4340), including `lw` at 0x1011a640, `lw` at 0x1011a684.
  The `ld` at 0x1011a660 loads 8 bytes from ? (base unknown) via base a7 (?).
  The `sd` at 0x1011a670 stores 8 bytes to ? (base unknown) via base t0 (?) with value .
  The `ld` at 0x1011a6a0 loads 8 bytes from ? (base unknown) via base t0 (?).
  The `sd` at 0x1011a6b0 stores 8 bytes to ? (base unknown) via base t1 (?) with value .
  2 such accesses load 4 bytes from abs 0x102bd0ac via base a2 (0x102c4340), including `lw` at 0x1011a6e8, `lw` at 0x1011a9f8.
  The `lw` at 0x1011a6fc loads 4 bytes from abs 0x102bd730 via base t9 (0x102c4340).
  The `lw` at 0x1011a700 loads 4 bytes from abs 0x102bd0ac via base a0 (0x102c4340).
  The `lw` at 0x1011a738 loads 4 bytes from abs 0x102bdc50 via base s1 (0x102c4340).
  The `lw` at 0x1011a744 loads 4 bytes from abs 0x102bd0b0 via base s6 (0x102c4340).
  The `lw` at 0x1011a74c loads 4 bytes from abs 0x102bd744 via base s0 (0x102c4340).
  The `lw` at 0x1011a758 loads 4 bytes from abs 0x102bdea0 via base s2 (0x102c4340).
  The `ldc1` at 0x1011a788 loads 8 bytes from ? (base unknown) via base t8 (?).
  7 such accesses load 4 bytes from abs 0x102bd0ac via base a1 (0x102c4340), including `lw` at 0x1011a7a8, `lw` at 0x1011a7f4, `lw` at 0x1011a8a8.
  The `ldc1` at 0x1011a9ec loads 8 bytes from abs 0x101b91f0 via base a2 (0x101b8a18).
  The `ldc1` at 0x1011aa00 loads 8 bytes from abs 0x101b91f8 via base a2 (0x101b8a18).
  The `jal` at 0x1011a704 calls `kt_output_info [0x10046374]` with a0=0x101b91b0, a1=a1 at entry (arg1), a2=0x101b8a18, a3=a0 at entry (arg0), a4=sp-216, a5=0x101b9168, a6=0x1, a7=0x0.
  The `jal` at 0x1011a784 calls (unnamed) [0x1011aa04] with a0=(unknown), a1=sp-136, a2=sp-135, a3=a0 at entry (arg0), a4=(sp + one of -0x120, -0xd8).
  The `jal` at 0x1011a794 calls `vcWrite [0x1014071c]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a7b8 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b9200, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a7c4 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a7e0 calls `vcWrite [0x1014071c]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a804 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b9200, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a810 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a868 calls (unnamed) [0x1011aa04] with a0=(unknown), a1=sp-136, a2=sp-135, a3=(unknown).
  The `jal` at 0x1011a894 calls `vcWrite [0x1014071c]` with a0=0xc212, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a8b8 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b9200, a2=0xc212, a3=(unknown).
  The `jal` at 0x1011a8c4 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a8d4 calls `vcWrite [0x1014071c]` with a0=0xc213, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a8f8 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b9200, a2=0xc213, a3=(unknown).
  The `jal` at 0x1011a904 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a914 calls `vcWrite [0x1014071c]` with a0=0xc214, a1=0x10, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a938 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b9200, a2=0xc214, a3=0x10.
  The `jal` at 0x1011a944 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a954 calls `vcWrite [0x1014071c]` with a0=0xc215, a1=0xa3, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a978 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b9200, a2=0xc215, a3=0xa3.
  The `jal` at 0x1011a984 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a994 calls `vcWrite [0x1014071c]` with a0=0xc216, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011a9bc calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101b9200, a2=0xc216, a3=0x0.
  The `jal` at 0x1011a9cc calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `bgtz` at 0x1011a66c goes to 0x1011a658 when a3(?) > 0 (signed) and falls through when a3(?) <= 0 (signed).
  The `bgtz` at 0x1011a6ac goes to 0x1011a698 when a3(?) > 0 (signed) and falls through when a3(?) <= 0 (signed).
  The `beq` at 0x1011a6d4 goes to 0x1011a9f0 when t1(=a0) == 0 and falls through when t1(=a0) != 0.
  The `beq` at 0x1011a6e4 goes to 0x1011a9e8 when a3(=a0) == a6(=0x1) and falls through when a3(=a0) != a6(=0x1).
  The `beq` at 0x1011a820 goes to 0x1011a83c when s8(?) >= 0x3 (signed) and falls through when s8(?) < 0x3 (signed).
  The `bne` at 0x1011a82c goes to 0x1011a770 when a3(=a0) != 0 and falls through when a3(=a0) == 0.
  The `bne` at 0x1011a854 goes to 0x1011a75c when a4(?) < 0x3 (signed) and falls through when a4(?) >= 0x3 (signed).
  The return at 0x1011a9e0 has v0 = ret(dgo_wait).
- `fbpc_test` in `usr/diags/IR/bin/irsaudit` at 0x1011aaec (n32).
  It occupies 404 bytes.
  2 such accesses load 4 bytes from abs 0x102bd744 via base t9 (0x102c4340), including `lw` at 0x1011ab2c, `lw` at 0x1011aba8.
  2 such accesses load 4 bytes from abs 0x102bd0ac via base a1 (0x102c4340), including `lw` at 0x1011ab30, `lw` at 0x1011abac.
  The `lw` at 0x1011ab64 loads 4 bytes from abs 0x102bd730 via base s7 (0x102c4340).
  The `lw` at 0x1011ab70 loads 4 bytes from abs 0x102be204 via base s3 (0x102c4340).
  The `lw` at 0x1011ab7c loads 4 bytes from abs 0x102bdc7c via base s4 (0x102c4340).
  The `lw` at 0x1011ab88 loads 4 bytes from abs 0x102bdc50 via base s5 (0x102c4340).
  The `lw` at 0x1011ab94 loads 4 bytes from abs 0x102bdea8 via base s2 (0x102c4340).
  The `lw` at 0x1011abf4 loads 4 bytes from sym(MAX_ERRORS) +0x0 via base s3 (sym(MAX_ERRORS)).
  The `lw` at 0x1011ac28 loads 4 bytes from abs 0x102bd0ac via base a0 (0x102c4340).
  The `jal` at 0x1011ab44 calls `kt_output_dbug [0x10046d74]` with a0=0x1, a1=0x101b9270, a2=0x3e8, a3=a3 at entry (arg3).
  The `jal` at 0x1011abb8 calls `kt_output_dbug [0x10046d74]` with a0=0x9, a1=0x101b92c0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011abcc calls `dgo_fb_path [0x1011a4b4]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011abd8 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011abe4 calls `vcRead [0x10140bac]` with a0=0xcf00, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011ac3c calls `kt_output_info [0x10046374]` with a0=0x101b9298, a1=(unknown), a2=(unknown), a3=(unknown).
  The `beq` at 0x1011abc4 goes to 0x1011ac4c when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x1011abf0 goes to 0x1011ab98 when (v0(=ret(vcRead)) & 0x1) == 0 and falls through when (v0(=ret(vcRead)) & 0x1) != 0.
  The `beq` at 0x1011ac00 goes to 0x1011abc0 when s1(?) >= a1(=[sym(MAX_ERRORS)]) (signed) and falls through when s1(?) < a1(=[sym(MAX_ERRORS)]) (signed).
  The return at 0x1011ac78 has v0 = ?.
- `dgo_genlock_test` in `usr/diags/IR/bin/irsaudit` at 0x1011ac80 (n32).
  It occupies 560 bytes.
  The `lw` at 0x1011aca0 loads 4 bytes from abs 0x102bdc58 via base s6 (0x102c4340).
  The `lw` at 0x1011acc0 loads 4 bytes from abs 0x102bdea8 via base s0 (0x102c4340).
  The `lw` at 0x1011acd8 loads 4 bytes from abs 0x102bdea0 via base t9 (0x102c4340).
  The `lw` at 0x1011acf0 loads 4 bytes from abs 0x102bdc50 via base t9 (0x102c4340).
  The `lw` at 0x1011ad0c loads 4 bytes from abs 0x102bd740 via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bd0ac via base a0 (0x102c4340), including `lw` at 0x1011ad10, `lw` at 0x1011ae70.
  The `lw` at 0x1011ad24 loads 4 bytes from abs 0x102bdc6c via base t9 (0x102c4340).
  The `lw` at 0x1011ad3c loads 4 bytes from abs 0x102bdc70 via base t9 (0x102c4340).
  The `lw` at 0x1011ad58 loads 4 bytes from abs 0x102be6b4 via base s3 (0x102c4340).
  The `sw` at 0x1011ad84 stores 4 bytes to ? (base unknown) via base s1 (?) with value .
  2 such accesses load 4 bytes from sym(dgo_genlock_buf_in) +0xe0 via base s3 (sym(dgo_genlock_buf_in)), including `lw` at 0x1011ad88, `lw` at 0x1011adfc.
  2 such accesses load 4 bytes from abs 0x102bd744 via base s5 (0x102c4340), including `lw` at 0x1011ada4, `lw` at 0x1011ae8c.
  3 such accesses load 4 bytes from abs 0x102bd0ac via base a1 (0x102c4340), including `lw` at 0x1011adac, `lw` at 0x1011ae18, `lw` at 0x1011ae98.
  The `sw` at 0x1011adf8 stores 4 bytes to ? (base unknown) via base s2 (?) with value .
  The `lw` at 0x1011ae6c loads 4 bytes from abs 0x102bd730 via base t9 (0x102c4340).
  The `jal` at 0x1011acb0 calls `dgo_reset [0x101195bc]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011acc8 calls `vcRead [0x10140bac]` with a0=0xc006, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011ace0 calls `vcWrite [0x1014071c]` with a0=0xc006, a1=(ret(vcRead) | 0x10), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011acf4 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011ad14 calls `kt_output_trce [0x10046b88]` with a0=0x101b92d8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011ad28 calls `dgo_genlock_PAL [0x1011a088]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011ad48 calls `dgo_write_tcm22071 [0x1011a164]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011ad6c calls `vcRead [0x10140bac]` with a0=0xc400, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011adb8 calls `kt_output_dbug [0x10046d74]` with a0=0x6, a1=0x101b9320, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011adc8 calls `dgo_reset [0x101195bc]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011ade0 calls `vcRead [0x10140bac]` with a0=0xc400, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011ae20 calls `kt_output_dbug [0x10046d74]` with a0=0x6, a1=0x101b9380, a2=(unknown), a3=[sym(dgo_genlock_buf_in)+224], a4=0x1.
  The `jal` at 0x1011ae74 calls `kt_output_info [0x10046374]` with a0=0x101b92e8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011aea0 calls `kt_output_dbug [0x10046d74]` with a0=0x6, a1=0x101b9350, a2=(unknown), a3=[sym(dgo_genlock_buf_in)+224], a4=0x1.
  The `bgez` at 0x1011ad80 goes to 0x1011ad68 when s2(?) >= 0 (signed) and falls through when s2(?) < 0 (signed).
  The `beq` at 0x1011ad90 goes to 0x1011ae5c when t9(=[sym(dgo_genlock_buf_in)+224]) == ra(=0x1) and falls through when t9(=[sym(dgo_genlock_buf_in)+224]) != ra(=0x1).
  The `bgez` at 0x1011adf4 goes to 0x1011addc when s1(?) >= 0 (signed) and falls through when s1(?) < 0 (signed).
  The `beq` at 0x1011ae04 goes to 0x1011ae90 when a3(=[sym(dgo_genlock_buf_in)+224]) == a4(=0x1) and falls through when a3(=[sym(dgo_genlock_buf_in)+224]) != a4(=0x1).
  The return at 0x1011ae54 has v0 = one of 0x0, 0x1, 0x2.
- `TEST_gvo_fb` in `usr/diags/IR/bin/irsaudit` at 0x1011b1b8 (n32).
  It occupies 592 bytes.
  The `lw` at 0x1011b1d8 loads 4 bytes from abs 0x102be6c0 via base at (0x102c4340).
  The `lw` at 0x1011b1e0 loads 4 bytes from sym(xilinx_loaded) +0x0 via base at (sym(xilinx_loaded)).
  2 such accesses load 4 bytes from abs 0x102bd744 via base s3 (0x102c4340), including `lw` at 0x1011b1fc, `lw` at 0x1011b35c.
  3 such accesses load 4 bytes from abs 0x102bd0c4 via base a1 (0x102c4340), including `lw` at 0x1011b214, `lw` at 0x1011b394, `lw` at 0x1011b3b8.
  The `lw` at 0x1011b220 loads 4 bytes from abs 0x102be6c0 via base t8 (0x102c4340).
  The `lw` at 0x1011b224 loads 4 bytes from sym(xilinx_loaded) +0x0 via base t8 (sym(xilinx_loaded)).
  The `lw` at 0x1011b23c loads 4 bytes from abs 0x102bd730 via base s0 (0x102c4340).
  5 such accesses load 4 bytes from abs 0x102bd0c4 via base a0 (0x102c4340), including `lw` at 0x1011b244, `lw` at 0x1011b27c, `lw` at 0x1011b298.
  The `lw` at 0x1011b25c loads 4 bytes from abs 0x102bdc30 via base t9 (0x102c4340).
  The `lw` at 0x1011b2ac loads 4 bytes from abs 0x102bdc84 via base t9 (0x102c4340).
  2 such accesses load 4 bytes from abs 0x102bd764 via base t9 (0x102c4340), including `lw` at 0x1011b2f0, `lw` at 0x1011b3d4.
  2 such accesses load 4 bytes from abs 0x102bd728 via base t9 (0x102c4340), including `lw` at 0x1011b30c, `lw` at 0x1011b3f0.
  The `lw` at 0x1011b344 loads 4 bytes from abs 0x102bdc5c via base t9 (0x102c4340).
  The `lw` at 0x1011b370 loads 4 bytes from abs 0x102bd730 via base t9 (0x102c4340).
  The `jal` at 0x1011b210 calls `kt_output_dbug [0x10046d74]` with a0=0x1, a1=0x101b93b8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011b24c calls `kt_output_info [0x10046374]` with a0=0x101b94a8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b260 calls `dgo_fb_test [0x10116fa8]` with a0=a0 at entry (arg0), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b284 calls `kt_output_info [0x10046374]` with a0=0x101b94d0, a1=ret(dgo_fb_test), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b29c calls `kt_output_info [0x10046374]` with a0=0x101b9528, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b2b0 calls `fbpc_test [0x1011aaec]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b2d4 calls `kt_output_info [0x10046374]` with a0=0x101b9550, a1=ret(fbpc_test), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b2fc calls `kt_code_result [0x10048068]` with a0=0x4, a1=0x0, a2=0x4, a3=(unknown).
  The `jal` at 0x1011b314 calls `kt_output_rslt [0x10045978]` with a0=0x0, a1=0x0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b348 calls `dgo_loadXilinx_reset [0x10119708]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1011b378 calls `kt_output_info [0x10046374]` with a0=0x101b93e8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b39c calls `kt_output_dbug [0x10046d74]` with a0=0x1, a1=0x101b9500, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b3c0 calls `kt_output_dbug [0x10046d74]` with a0=0x1, a1=0x101b9588, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011b3e0 calls `kt_code_result [0x10048068]` with a0=0x4, a1=0x0, a2=0x1, a3=(unknown).
  The `jal` at 0x1011b3f8 calls `kt_output_rslt [0x10045978]` with a0=0x1, a1=0x0, a2=(unknown), a3=(unknown).
  The `beq` at 0x1011b1ec goes to 0x1011b33c when at(=[sym(xilinx_loaded)]) == 0 and falls through when at(=[sym(xilinx_loaded)]) != 0.
  The `beq` at 0x1011b228 goes to 0x1011b360 when t8(=[sym(xilinx_loaded)]) == 0 and falls through when t8(=[sym(xilinx_loaded)]) != 0.
  The `beq` at 0x1011b268 goes to 0x1011b388 when v0(=ret(dgo_fb_test)) == 0 and falls through when v0(=ret(dgo_fb_test)) != 0.
  The `beq` at 0x1011b2b8 goes to 0x1011b3ac when v0(=ret(fbpc_test)) == 0 and falls through when v0(=ret(fbpc_test)) != 0.
  The `beq` at 0x1011b2e0 goes to 0x1011b3d0 when a1(=(ret(dgo_fb_test) + ret(fbpc_test))) == 0 and falls through when a1(=(ret(dgo_fb_test) + ret(fbpc_test))) != 0.
  The return at 0x1011b334 has v0 = ret(kt_output_rslt).
- `dgo_gamma_lut_cell_test` in `usr/diags/IR/bin/irsaudit` at 0x1011cd2c (n32).
  It occupies 872 bytes.
  The `lw` at 0x1011cd94 loads 4 bytes from abs 0x102bd740 via base t9 (0x102c4340).
  3 such accesses load 4 bytes from abs 0x102bd0e0 via base a0 (0x102c4340), including `lw` at 0x1011cdac, `lw` at 0x1011cfc0, `lw` at 0x1011d02c.
  The `lw` at 0x1011cddc loads 4 bytes from abs 0x102bd744 via base s2 (0x102c4340).
  The `lw` at 0x1011cde8 loads 4 bytes from abs 0x102bdea0 via base s3 (0x102c4340).
  The `lw` at 0x1011cdf4 loads 4 bytes from abs 0x102bdc50 via base s4 (0x102c4340).
  The `lw` at 0x1011ce10 loads 4 bytes from abs 0x102bdea8 via base s0 (0x102c4340).
  4 such accesses load 4 bytes from abs 0x102bd0e0 via base a1 (0x102c4340), including `lw` at 0x1011ce64, `lw` at 0x1011ceb8, `lw` at 0x1011cff4.
  The `lw` at 0x1011cec8 loads 4 bytes from ? (base unknown) via base s6 (?).
  The `lw` at 0x1011cf5c loads 4 bytes from abs 0x102bdea8 via base t9 (0x102c4340).
  The `lw` at 0x1011cf7c loads 4 bytes from abs 0x102be204 via base a0 (0x102c4340).
  The `lw` at 0x1011cf84 loads 4 bytes from ? (base unknown) via base t0 (?).
  The `lw` at 0x1011cf8c loads 4 bytes from sym(MAX_ERRORS) +0x0 via base a0 (sym(MAX_ERRORS)).
  2 such accesses load 4 bytes from abs 0x102bd730 via base t9 (0x102c4340), including `lw` at 0x1011cfb4, `lw` at 0x1011d028.
  The `jal` at 0x1011cda8 calls `kt_output_trce [0x10046b88]` with a0=0x101bc270, a1=0x55555555, a2=0xffffffffaaaaaaaa, a3=0x0, a4=0x33333333, a5=0x1a7614, a6=0xffffffffcccccccc.
  The `jal` at 0x1011ce18 calls `vcRead [0x10140bac]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011ce3c calls `vcWrite [0x1014071c]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011ce48 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011ce70 calls `kt_output_dbug [0x10046d74]` with a0=0x7, a1=0x101bc298, a2=(unknown), a3=0xc104.
  The `jal` at 0x1011cedc calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101bc2c0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011ceec calls `vcWrite [0x1014071c]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011cef8 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011cf60 calls `vcRead [0x10140bac]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011cfcc calls `kt_output_info [0x10046374]` with a0=0x101bc2e8, a1=(unknown), a2=(unknown), a3=(unknown), a4=ret(vcRead).
  The `jal` at 0x1011d000 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101bc318, a2=(unknown), a3=(unknown), a5=ret(vcRead).
  The `jal` at 0x1011d034 calls `kt_output_info [0x10046374]` with a0=0x101bc348, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d084 calls `kt_output_dbug [0x10046d74]` with a0=0x1, a1=0x101bc380, a2=(unknown), a3=(unknown).
  The `beq` at 0x1011ce00 goes to 0x1011d010 when s8(?) >= 0x10 (unsigned) and falls through when s8(?) < 0x10 (unsigned).
  The `beq` at 0x1011ce90 goes to 0x1011cdf8 when a2(?) >= 0x6 (signed) and falls through when a2(?) < 0x6 (signed).
  The `bne` at 0x1011cf0c goes to 0x1011cea0 when s5(?) < 0x400 (signed) and falls through when s5(?) >= 0x400 (signed).
  The `beq` at 0x1011cf4c goes to 0x1011ce80 when a5(?) >= 0x400 (signed) and falls through when a5(?) < 0x400 (signed).
  The `beq` at 0x1011cf94 goes to 0x1011cfdc when v0(=ret(vcRead)) == t0(?) and falls through when v0(=ret(vcRead)) != t0(?).
  The `beq` at 0x1011cf9c goes to 0x1011cf30 when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x1011d010 goes to 0x1011d074 when a2(?) == 0 and falls through when a2(?) != 0.
  The return at 0x1011d06c has v0 = ?.
- `dgo_gamma_lut_funky_cell_test` in `usr/diags/IR/bin/irsaudit` at 0x1011d094 (n32).
  It occupies 1320 bytes.
  The `lw` at 0x1011d0d0 loads 4 bytes from abs 0x102bd740 via base t9 (0x102c4340).
  4 such accesses load 4 bytes from abs 0x102bd0e0 via base a0 (0x102c4340), including `lw` at 0x1011d0d4, `lw` at 0x1011d478, `lw` at 0x1011d514.
  The `lw` at 0x1011d104 loads 4 bytes from abs 0x102bdc50 via base s2 (0x102c4340).
  The `lw` at 0x1011d110 loads 4 bytes from abs 0x102bdea8 via base s3 (0x102c4340).
  The `lw` at 0x1011d118 loads 4 bytes from abs 0x102bdea0 via base s1 (0x102c4340).
  The `lw` at 0x1011d124 loads 4 bytes from abs 0x102bd744 via base s0 (0x102c4340).
  9 such accesses load 4 bytes from abs 0x102bd0e0 via base a1 (0x102c4340), including `lw` at 0x1011d180, `lw` at 0x1011d1d8, `lw` at 0x1011d24c.
  The `lw` at 0x1011d2e8 loads 4 bytes from abs 0x102be204 via base s7 (0x102c4340).
  2 such accesses load 4 bytes from sym(MAX_ERRORS) +0x0 via base s7 (sym(MAX_ERRORS)), including `lw` at 0x1011d398, `lw` at 0x1011d450.
  3 such accesses load 4 bytes from abs 0x102bd730 via base t9 (0x102c4340), including `lw` at 0x1011d474, `lw` at 0x1011d510, `lw` at 0x1011d550.
  The `jal` at 0x1011d0e0 calls `kt_output_trce [0x10046b88]` with a0=0x101bc3b0, a1=0x0, a2=0x1a72ac, a3=a3 at entry (arg3).
  The `jal` at 0x1011d12c calls `vcRead [0x10140bac]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d158 calls `vcWrite [0x1014071c]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d164 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d18c calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101bc298, a2=(unknown), a3=0xc104.
  The `jal` at 0x1011d1b4 calls `vcWrite [0x1014071c]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d1c0 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d1e8 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101bc2c0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d1f4 calls `vcRead [0x10140bac]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d220 calls `vcWrite [0x1014071c]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d230 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d258 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101bc298, a2=(unknown), a3=0xc104.
  The `jal` at 0x1011d284 calls `vcWrite [0x1014071c]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d294 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d2bc calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101bc2c0, a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d2f4 calls `vcRead [0x10140bac]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d324 calls `vcWrite [0x1014071c]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d330 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d358 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101bc298, a2=(unknown), a3=0xc104.
  The `jal` at 0x1011d378 calls `vcRead [0x10140bac]` with a0=table(0xf000), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d3c0 calls `vcRead [0x10140bac]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d3ec calls `vcWrite [0x1014071c]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d3f8 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d420 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101bc298, a2=(unknown), a3=0xc104.
  The `jal` at 0x1011d438 calls `vcRead [0x10140bac]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d48c calls `kt_output_info [0x10046374]` with a0=0x101bc2e8, a1=(unknown), a2=(unknown), a3=(unknown), a4=ret(vcRead).
  The `jal` at 0x1011d4c0 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101bc318, a2=(unknown), a3=(unknown), a5=ret(vcRead).
  The `jal` at 0x1011d4f4 calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101bc318, a2=(unknown), a3=(unknown), a5=ret(vcRead).
  The `jal` at 0x1011d528 calls `kt_output_info [0x10046374]` with a0=0x101bc2e8, a1=(unknown), a2=(unknown), a3=(unknown), a4=ret(vcRead).
  The `jal` at 0x1011d55c calls `kt_output_info [0x10046374]` with a0=0x101bc3d8, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d5ac calls `kt_output_dbug [0x10046d74]` with a0=0x1, a1=0x101bc410, a2=(unknown), a3=(unknown).
  The `bne` at 0x1011d2cc goes to 0x1011d12c when s4(?) < 0x4000 (signed) and falls through when s4(?) >= 0x4000 (signed).
  The `beq` at 0x1011d394 goes to 0x1011d4d0 when v0(=ret(vcRead)) == t0(?) and falls through when v0(=ret(vcRead)) != t0(?).
  The `bne` at 0x1011d3a0 goes to 0x1011d504 when s5(?) < t3(=[sym(MAX_ERRORS)]) (unsigned) and falls through when s5(?) >= t3(=[sym(MAX_ERRORS)]) (unsigned).
  The `beq` at 0x1011d3b4 goes to 0x1011d538 when s8(?) >= 0x4000 (signed) and falls through when s8(?) < 0x4000 (signed).
  The `beq` at 0x1011d458 goes to 0x1011d49c when v0(=ret(vcRead)) == t1(?) and falls through when v0(=ret(vcRead)) != t1(?).
  The `beq` at 0x1011d460 goes to 0x1011d2ec when t0(?) == 0 and falls through when t0(?) != 0.
  The `beq` at 0x1011d538 goes to 0x1011d59c when s5(?) == 0 and falls through when s5(?) != 0.
  The return at 0x1011d594 has v0 = ?.
- `dgo_gamma_lut_abus_test` in `usr/diags/IR/bin/irsaudit` at 0x1011d5bc (n32).
  It occupies 1796 bytes.
  The `lw` at 0x1011d5e4 loads 4 bytes from abs 0x102bd740 via base t9 (0x102c4340).
  6 such accesses load 4 bytes from abs 0x102bd0e0 via base a0 (0x102c4340), including `lw` at 0x1011d5e8, `lw` at 0x1011d76c, `lw` at 0x1011d88c.
  The `lw` at 0x1011d604 loads 4 bytes from abs 0x102bdea8 via base s2 (0x102c4340).
  The `lw` at 0x1011d620 loads 4 bytes from abs 0x102bdea0 via base s0 (0x102c4340).
  The `lw` at 0x1011d644 loads 4 bytes from abs 0x102bdc50 via base s1 (0x102c4340).
  The `lw` at 0x1011d664 loads 4 bytes from abs 0x102bd744 via base s3 (0x102c4340).
  12 such accesses load 4 bytes from abs 0x102bd0e0 via base a1 (0x102c4340), including `lw` at 0x1011d670, `lw` at 0x1011d6c0, `lw` at 0x1011d7a0.
  The `lw` at 0x1011d714 loads 4 bytes from abs 0x102be204 via base s5 (0x102c4340).
  4 such accesses load 4 bytes from sym(MAX_ERRORS) +0x0 via base s5 (sym(MAX_ERRORS)), including `lw` at 0x1011d748, `lw` at 0x1011d868, `lw` at 0x1011da10.
  5 such accesses load 4 bytes from abs 0x102bd730 via base t9 (0x102c4340), including `lw` at 0x1011d764, `lw` at 0x1011d884, `lw` at 0x1011da2c.
  The `jal` at 0x1011d5f4 calls `kt_output_trce [0x10046b88]` with a0=0x101bc440, a1=0x0, a2=0x1a6d84, a3=a3 at entry (arg3).
  The `jal` at 0x1011d610 calls `vcRead [0x10140bac]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d634 calls `vcWrite [0x1014071c]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d650 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d688 calls `kt_output_dbug [0x10046d74]` with a0=0x7, a1=0x101bc468, a2=(unknown), a3=0xc104.
  The `jal` at 0x1011d6cc calls `kt_output_dbug [0x10046d74]` with a0=0x6, a1=0x101bc298, a2=(unknown), a3=table(0xf000), a4=0x0.
  The `jal` at 0x1011d6dc calls `vcWrite [0x1014071c]` with a0=table(0xf000), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d6e8 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d738 calls `vcRead [0x10140bac]` with a0=table(0xf000), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d77c calls `kt_output_info [0x10046374]` with a0=0x101bc488, a1=0x0, a2=(unknown), a3=(unknown), a4=ret(vcRead).
  The `jal` at 0x1011d7b0 calls `kt_output_dbug [0x10046d74]` with a0=0x6, a1=0x101bc4b8, a2=0x0, a3=(unknown), a5=ret(vcRead).
  The `jal` at 0x1011d7f4 calls `kt_output_dbug [0x10046d74]` with a0=0x6, a1=0x101bc4e8, a2=(unknown), a3=table(0xf000), a4=0x0.
  The `jal` at 0x1011d804 calls `vcWrite [0x1014071c]` with a0=(unknown), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d810 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d858 calls `vcRead [0x10140bac]` with a0=table(0xf000), a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d89c calls `kt_output_info [0x10046374]` with a0=0x101bc488, a1=0x0, a2=(unknown), a3=(unknown), a4=ret(vcRead).
  The `jal` at 0x1011d8d0 calls `kt_output_dbug [0x10046d74]` with a0=0x6, a1=0x101bc4b8, a2=0x0, a3=(unknown), a5=ret(vcRead).
  The `jal` at 0x1011d8ec calls `vcRead [0x10140bac]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d914 calls `vcWrite [0x1014071c]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d920 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d948 calls `kt_output_dbug [0x10046d74]` with a0=0x7, a1=0x101bc298, a2=(unknown), a3=0xc104.
  The `jal` at 0x1011d970 calls `kt_output_dbug [0x10046d74]` with a0=0x6, a1=0x101bc298, a2=(unknown), a3=0xf000.
  The `jal` at 0x1011d980 calls `vcWrite [0x1014071c]` with a0=0xf000, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d990 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d9c4 calls `vcRead [0x10140bac]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d9e8 calls `vcWrite [0x1014071c]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011d9f4 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011da00 calls `vcRead [0x10140bac]` with a0=0xf000, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011da44 calls `kt_output_info [0x10046374]` with a0=0x101bc510, a1=(unknown), a2=0xf000, a3=(unknown), a4=ret(vcRead).
  The `jal` at 0x1011da78 calls `kt_output_dbug [0x10046d74]` with a0=0x6, a1=0x101bc540, a2=(unknown), a3=0xf000, a5=ret(vcRead).
  The `jal` at 0x1011da90 calls `vcRead [0x10140bac]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011dac0 calls `vcWrite [0x1014071c]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011dacc calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011daf4 calls `kt_output_dbug [0x10046d74]` with a0=0x7, a1=0x101bc298, a2=(unknown), a3=0xc104.
  The `jal` at 0x1011db1c calls `kt_output_dbug [0x10046d74]` with a0=0x6, a1=0x101bc298, a2=(unknown), a3=0xf000.
  The `jal` at 0x1011db2c calls `vcWrite [0x1014071c]` with a0=0xf000, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011db3c calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011db70 calls `vcRead [0x10140bac]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011db9c calls `vcWrite [0x1014071c]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011dba8 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011dbb4 calls `vcRead [0x10140bac]` with a0=0xf000, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011dbf8 calls `kt_output_info [0x10046374]` with a0=0x101bc510, a1=(unknown), a2=0xf000, a3=(unknown), a4=ret(vcRead).
  The `jal` at 0x1011dc2c calls `kt_output_dbug [0x10046d74]` with a0=0x6, a1=0x101bc540, a2=(unknown), a3=0xf000, a5=ret(vcRead).
  The `jal` at 0x1011dc60 calls `kt_output_info [0x10046374]` with a0=0x101bc570, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011dcb0 calls `kt_output_dbug [0x10046d74]` with a0=0x1, a1=0x101bc5a8, a2=(unknown), a3=(unknown).
  The `bne` at 0x1011d6f8 goes to 0x1011d6a8 when s4(?) < 0xa (signed) and falls through when s4(?) >= 0xa (signed).
  The `beq` at 0x1011d724 goes to 0x1011d7c0 when s8(?) >= 0xa (signed) and falls through when s8(?) < 0xa (signed).
  The `beq` at 0x1011d744 goes to 0x1011d78c when v0(=ret(vcRead)) == t0(?) and falls through when v0(=ret(vcRead)) != t0(?).
  The `beq` at 0x1011d750 goes to 0x1011d718 when s4(?) >= a1(=[sym(MAX_ERRORS)]) (unsigned) and falls through when s4(?) < a1(=[sym(MAX_ERRORS)]) (unsigned).
  The `bne` at 0x1011d820 goes to 0x1011d7c8 when s8(?) < 0xa (signed) and falls through when s8(?) >= 0xa (signed).
  The `beq` at 0x1011d83c goes to 0x1011d8e0 when s8(?) >= 0xa (signed) and falls through when s8(?) < 0xa (signed).
  The `beq` at 0x1011d864 goes to 0x1011d8ac when v0(=ret(vcRead)) == t0(?) and falls through when v0(=ret(vcRead)) != t0(?).
  The `beq` at 0x1011d870 goes to 0x1011d830 when s4(?) >= a1(=[sym(MAX_ERRORS)]) (unsigned) and falls through when s4(?) < a1(=[sym(MAX_ERRORS)]) (unsigned).
  The `bne` at 0x1011d9a0 goes to 0x1011d8e8 when s6(?) < 0x4 (signed) and falls through when s6(?) >= 0x4 (signed).
  The `beq` at 0x1011d9bc goes to 0x1011da88 when s6(?) >= 0x4 (signed) and falls through when s6(?) < 0x4 (signed).
  The `beq` at 0x1011da0c goes to 0x1011da54 when v0(=ret(vcRead)) == t0(?) and falls through when v0(=ret(vcRead)) != t0(?).
  The `beq` at 0x1011da18 goes to 0x1011d9b0 when s4(?) >= a0(=[sym(MAX_ERRORS)]) (unsigned) and falls through when s4(?) < a0(=[sym(MAX_ERRORS)]) (unsigned).
  The `bne` at 0x1011db4c goes to 0x1011da8c when s6(?) < 0x4 (signed) and falls through when s6(?) >= 0x4 (signed).
  The `beq` at 0x1011db68 goes to 0x1011dc3c when s6(?) >= 0x4 (signed) and falls through when s6(?) < 0x4 (signed).
  The `beq` at 0x1011dbc0 goes to 0x1011dc08 when v0(=ret(vcRead)) == t0(?) and falls through when v0(=ret(vcRead)) != t0(?).
  The `beq` at 0x1011dbcc goes to 0x1011db5c when s4(?) >= a0(=[sym(MAX_ERRORS)]) (unsigned) and falls through when s4(?) < a0(=[sym(MAX_ERRORS)]) (unsigned).
  The `beq` at 0x1011dc3c goes to 0x1011dca0 when s4(?) == 0 and falls through when s4(?) != 0.
  The return at 0x1011dc98 has v0 = ?.
- `dgo_gamma_lut_dbus_test` in `usr/diags/IR/bin/irsaudit` at 0x1011dcc0 (n32).
  It occupies 816 bytes.
  The `lw` at 0x1011dce8 loads 4 bytes from abs 0x102bd740 via base t9 (0x102c4340).
  4 such accesses load 4 bytes from abs 0x102bd0e0 via base a0 (0x102c4340), including `lw` at 0x1011dcec, `lw` at 0x1011de40, `lw` at 0x1011df20.
  The `lw` at 0x1011dd08 loads 4 bytes from abs 0x102bdea8 via base s3 (0x102c4340).
  The `lw` at 0x1011dd24 loads 4 bytes from abs 0x102bdea0 via base s2 (0x102c4340).
  The `lw` at 0x1011dd48 loads 4 bytes from abs 0x102bdc50 via base s4 (0x102c4340).
  The `lw` at 0x1011dd68 loads 4 bytes from abs 0x102bd744 via base s0 (0x102c4340).
  6 such accesses load 4 bytes from abs 0x102bd0e0 via base a1 (0x102c4340), including `lw` at 0x1011dd78, `lw` at 0x1011dddc, `lw` at 0x1011de70.
  The `lw` at 0x1011ddb4 loads 4 bytes from abs 0x102be204 via base s5 (0x102c4340).
  2 such accesses load 4 bytes from sym(MAX_ERRORS) +0x0 via base s5 (sym(MAX_ERRORS)), including `lw` at 0x1011de1c, `lw` at 0x1011defc.
  3 such accesses load 4 bytes from abs 0x102bd730 via base t9 (0x102c4340), including `lw` at 0x1011de38, `lw` at 0x1011df18, `lw` at 0x1011df84.
  The `jal` at 0x1011dcf8 calls `kt_output_trce [0x10046b88]` with a0=0x101bc5d8, a1=0x0, a2=0x1a6680, a3=a3 at entry (arg3).
  The `jal` at 0x1011dd14 calls `vcRead [0x10140bac]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011dd38 calls `vcWrite [0x1014071c]` with a0=0xc104, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011dd54 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011dd90 calls `kt_output_dbug [0x10046d74]` with a0=0x7, a1=0x101bc468, a2=0xc104, a3=(unknown).
  The `jal` at 0x1011dde8 calls `kt_output_dbug [0x10046d74]` with a0=0x6, a1=0x101bc468, a2=(unknown), a3=0xf000.
  The `jal` at 0x1011ddf8 calls `vcWrite [0x1014071c]` with a0=0xf000, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011de04 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011de10 calls `vcRead [0x10140bac]` with a0=0xf000, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011de4c calls `kt_output_info [0x10046374]` with a0=0x101bc600, a1=0xf000, a2=(unknown), a3=ret(vcRead).
  The `jal` at 0x1011de7c calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101bc628, a2=0xf000, a3=(unknown), a4=ret(vcRead).
  The `jal` at 0x1011dec8 calls `kt_output_dbug [0x10046d74]` with a0=0x6, a1=0x101bc468, a2=(unknown), a3=0xf000.
  The `jal` at 0x1011ded8 calls `vcWrite [0x1014071c]` with a0=0xf000, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011dee4 calls `dgo_wait [0x1011935c]` with a0=0x1, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011def0 calls `vcRead [0x10140bac]` with a0=0xf000, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011df2c calls `kt_output_info [0x10046374]` with a0=0x101bc600, a1=0xf000, a2=(unknown), a3=ret(vcRead).
  The `jal` at 0x1011df5c calls `kt_output_dbug [0x10046d74]` with a0=0x8, a1=0x101bc628, a2=0xf000, a3=(unknown), a4=ret(vcRead).
  The `jal` at 0x1011df90 calls `kt_output_info [0x10046374]` with a0=0x101bc650, a1=(unknown), a2=(unknown), a3=(unknown).
  The `jal` at 0x1011dfe0 calls `kt_output_dbug [0x10046d74]` with a0=0x1, a1=0x101bc680, a2=(unknown), a3=(unknown).
  The `beq` at 0x1011ddc4 goes to 0x1011de8c when s7(?) >= 0x1e (signed) and falls through when s7(?) < 0x1e (signed).
  The `beq` at 0x1011de18 goes to 0x1011de5c when v0(=ret(vcRead)) == s6(?) and falls through when v0(=ret(vcRead)) != s6(?).
  The `beq` at 0x1011de24 goes to 0x1011ddb8 when s1(?) >= a1(=[sym(MAX_ERRORS)]) (unsigned) and falls through when s1(?) < a1(=[sym(MAX_ERRORS)]) (unsigned).
  The `beq` at 0x1011dea0 goes to 0x1011df6c when s7(?) >= 0x1e (signed) and falls through when s7(?) < 0x1e (signed).
  The `beq` at 0x1011def8 goes to 0x1011df3c when v0(=ret(vcRead)) == s6(?) and falls through when v0(=ret(vcRead)) != s6(?).
  The `beq` at 0x1011df04 goes to 0x1011de94 when s1(?) >= a1(=[sym(MAX_ERRORS)]) (unsigned) and falls through when s1(?) < a1(=[sym(MAX_ERRORS)]) (unsigned).
  The `beq` at 0x1011df6c goes to 0x1011dfd0 when s1(?) == 0 and falls through when s1(?) != 0.
  The return at 0x1011dfc8 has v0 = ?.
