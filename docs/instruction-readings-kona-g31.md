# Instruction readings from hostfacts

These entries record instruction facts rendered from the routines below. They describe software behavior, not hardware behavior, and each locator names an address in the identified binary.

- `__glFilter4Func1` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda210dc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda210dc-0xda21674 (1432 bytes).
  It occupies 1432 bytes.
  The `lw` at 0xda21104 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xda21114 loads 4 bytes from a1 (arg1 at entry) +0x20.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda21118, `lw` at 0xda212e8.
  2 such `lwc1` accesses load 4 bytes from [a0] +0xdd4, including `lwc1` at 0xda21128, `lwc1` at 0xda21354.
  The `lw` at 0xda21158 loads 4 bytes from a1 (arg1 at entry) +0x14.
  4 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda213a4, `lwc1` at 0xda213a8, `lwc1` at 0xda213ac.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x60, including `lw` at 0xda213cc, `lw` at 0xda213e8, `lw` at 0xda21414.
  The `lw` at 0xda2145c loads 4 bytes from a1 (arg1 at entry) +0x40.
  The `lw` at 0xda214ac loads 4 bytes from table(0xda7b2e8) +0x0.
  8 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda214ec, `swc1` at 0xda21524, `swc1` at 0xda21558.
  The `jalr` at 0xda21170 calls floor with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xda2119c calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda211d0 calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda21204 calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda21274 calls floor with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xda21334 calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda213d0 calls (unknown callee) with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=0x0, a3=0x0.
  The `jalr` at 0xda213fc calls (unknown callee) with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=0x0, a3=0x0.
  The `jalr` at 0xda21428 calls (unknown callee) with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=0x0, a3=0x0.
  The `jalr` at 0xda21454 calls (unknown callee) with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=0x0, a3=0x0.
  The `bne` branch at 0xda21144 targets 0xda21230, is taken when t9(=[a0+4]) != at(=0x2901), and falls through when t9(=[a0+4]) == at(=0x2901).
  The `beq` branch at 0xda21228 targets 0xda21328 and is always taken.
  The `bc1fl` branch at 0xda21240 targets 0xda21254, is taken when not (f0 < f14 (c.lt.s at 0xda21238)), and falls through when f0 < f14 (c.lt.s at 0xda21238); its branch-likely delay slot `c.lt.s $f12,$f0` at 0xda21244 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda21248 targets 0xda21264 and is always taken.
  The `bc1fl` branch at 0xda21258 targets 0xda21268, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f2,$f2,$f16` at 0xda2125c runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda212b8 targets 0xda212c4, is taken when not (f4 < f14 (c.lt.s at 0xda212b0)), and falls through when f4 < f14 (c.lt.s at 0xda212b0).
  The `beq` branch at 0xda212c4 targets 0xda212d0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda212dc targets 0xda212e8, is taken when a2(?) >= v0(?) (signed), and falls through when a2(?) < v0(?) (signed).
  The `bne` branch at 0xda212f0 targets 0xda21328, is taken when t1(=[a0+4]) != at(=0x812f), and falls through when t1(=[a0+4]) == at(=0x812f).
  The `bc1fl` branch at 0xda2130c targets 0xda2131c, is taken when not (f8 < f14 (c.lt.s at 0xda21304)), and falls through when f8 < f14 (c.lt.s at 0xda21304); its branch-likely delay slot `slt at,a2,t0` at 0xda21310 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2131c targets 0xda21328, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda21474 targets 0xda21490, is taken when v0(=[a1+64]) < 0x190b (signed), and falls through when v0(=[a1+64]) >= 0x190b (signed).
  The `beq` branch at 0xda21480 targets 0xda2162c, is taken when v0(=[a1+64]) == at(=0x8049), and falls through when v0(=[a1+64]) != at(=0x8049).
  The `beq` branch at 0xda21488 targets 0xda21660 and is always taken.
  The `beql` branch at 0xda21498 targets 0xda21660, is taken when t1(=[a1+64]-6406) >= 0x5 (unsigned), and falls through when t1(=[a1+64]-6406) < 0x5 (unsigned); its branch-likely delay slot `lw ra,52(sp)` at 0xda2149c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda21520 targets 0xda2165c and is always taken.
  The `beq` branch at 0xda215ec targets 0xda2165c and is always taken.
  The `beq` branch at 0xda21624 targets 0xda2165c and is always taken.
  The return at 0xda2166c has v0 = one of [a1+64], ?.
  The instructions from 0xda21250 to 0xda21250 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xda214b4 uses the jump table at 0xda7b2e8 with targets 0xda215f4, 0xda2155c, 0xda21528, 0xda214f0, 0xda214bc.
  The indirect jump at 0xda214b4 uses the jump table at 0xda7b2e8 with targets 0xda215f4, 0xda2155c, 0xda21528, 0xda214f0, 0xda214bc.
- `__glTextureModulateA` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda21774 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda21774-0xda2178c (24 bytes).
  It occupies 24 bytes.
  The `lwc1` at 0xda21778 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lwc1` at 0xda2177c loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `swc1` at 0xda21788 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The return at 0xda21784 has v0 = ?.
- `__glTextureBlendA` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda21a48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda21a48-0xda21a60 (24 bytes).
  It occupies 24 bytes.
  The `lwc1` at 0xda21a4c loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lwc1` at 0xda21a50 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `swc1` at 0xda21a5c stores 4 bytes to a1 (arg1 at entry) +0xc.
  The return at 0xda21a58 has v0 = ?.
- `__glTextureReplaceA` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda21bc8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda21bc8-0xda21bdc (20 bytes).
  It occupies 20 bytes.
  The `lwc1` at 0xda21bc8 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda21bcc loads 4 bytes from a0 (arg0 at entry) +0x7880.
  The `swc1` at 0xda21bd8 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The return at 0xda21bd4 has v0 = ?.
- `__GL_TEXENV_CLAMP` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda21c20 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda21c20-0xda21c64 (68 bytes).
  It occupies 68 bytes.
  The `bc1f` branch at 0xda21c34 targets 0xda21c5c, is taken when not (f12 <= f4(=a2) (c.le.s at 0xda21c2c)), and falls through when f12 <= f4(=a2) (c.le.s at 0xda21c2c).
  The `bc1f` branch at 0xda21c44 targets 0xda21c54, is taken when not (f14 <= f12 (c.le.s at 0xda21c3c)), and falls through when f14 <= f12 (c.le.s at 0xda21c3c).
  The return at 0xda21c4c has v0 = ?.
  The return at 0xda21c54 has v0 = ?.
  The return at 0xda21c5c has v0 = ?.
- `__glTextureSBModulateL` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda21c64 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda21c64-0xda21d80 (284 bytes).
  It occupies 284 bytes.
  The `lwc1` at 0xda21c80 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lw` at 0xda21c84 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda21c8c, `swc1` at 0xda21d38.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda21c90, `swc1` at 0xda21d04.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda21c94, `swc1` at 0xda21cd0.
  The `lwc1` at 0xda21c98 loads 4 bytes from [a0+28264] +0xac.
  The `lwc1` at 0xda21ca0 loads 4 bytes from [a0+28264] +0xbc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda21ca8, `lw` at 0xda21cf0, `lw` at 0xda21d24.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda21cd4, `lwc1` at 0xda21d54.
  The `lwc1` at 0xda21cd8 loads 4 bytes from [a0+28264] +0xb0.
  The `lwc1` at 0xda21ce8 loads 4 bytes from [a0+28264] +0xc0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda21d08, `lwc1` at 0xda21d60.
  The `lwc1` at 0xda21d0c loads 4 bytes from [a0+28264] +0xb4.
  The `lwc1` at 0xda21d1c loads 4 bytes from [a0+28264] +0xc4.
  The `lwc1` at 0xda21d3c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda21d40 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda21d44 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda21d4c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda21d50 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `swc1` at 0xda21d5c stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda21d68 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `jalr` at 0xda21cc0 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda21cf4 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda21d28 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The return at 0xda21d78 has v0 = ret(__GL_TEXENV_CLAMP).
- `__glTextureSBModulateLA` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda21d80 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda21d80-0xda21ed4 (340 bytes).
  It occupies 340 bytes.
  The `lwc1` at 0xda21da8 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lw` at 0xda21dac loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda21db4, `swc1` at 0xda21e48.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda21db8, `swc1` at 0xda21e1c.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda21dbc, `swc1` at 0xda21df0.
  The `lwc1` at 0xda21dc0 loads 4 bytes from [a0+28264] +0xac.
  The `lwc1` at 0xda21dc8 loads 4 bytes from [a0+28264] +0xbc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda21ddc, `lw` at 0xda21e0c, `lw` at 0xda21e38.
  The `lwc1` at 0xda21df4 loads 4 bytes from [a0+28264] +0xb0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda21df8, `lwc1` at 0xda21e90.
  The `lwc1` at 0xda21e00 loads 4 bytes from [a0+28264] +0xc0.
  The `lwc1` at 0xda21e20 loads 4 bytes from [a0+28264] +0xb4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda21e24, `lwc1` at 0xda21ea0.
  The `lwc1` at 0xda21e2c loads 4 bytes from [a0+28264] +0xc4.
  The `lwc1` at 0xda21e4c loads 4 bytes from [a0+28264] +0xb8.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lwc1` at 0xda21e50, `lwc1` at 0xda21eac.
  The `lwc1` at 0xda21e58 loads 4 bytes from [a0+28264] +0xc8.
  The `swc1` at 0xda21e74 stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda21e78 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda21e7c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda21e80 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda21e88 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda21e8c stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda21e98 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `swc1` at 0xda21e9c stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda21ea8 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda21eb4 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xda21de4 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda21e10 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda21e3c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda21e68 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The return at 0xda21ecc has v0 = ret(__GL_TEXENV_CLAMP).
- `__glTextureSBModulateRGB` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda21ed4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda21ed4-0xda21fe4 (272 bytes).
  It occupies 272 bytes.
  The `lw` at 0xda21ef0 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda21ef4, `lwc1` at 0xda21fa0.
  The `lwc1` at 0xda21efc loads 4 bytes from [a0+28264] +0xac.
  The `lwc1` at 0xda21f00 loads 4 bytes from [a0+28264] +0xbc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda21f0c, `lw` at 0xda21f54, `lw` at 0xda21f88.
  The `swc1` at 0xda21f34 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda21f38, `lwc1` at 0xda21fb8.
  The `lwc1` at 0xda21f3c loads 4 bytes from [a0+28264] +0xb0.
  The `lwc1` at 0xda21f4c loads 4 bytes from [a0+28264] +0xc0.
  The `swc1` at 0xda21f68 stores 4 bytes to a2 (arg2 at entry) +0x4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda21f6c, `lwc1` at 0xda21fc4.
  The `lwc1` at 0xda21f70 loads 4 bytes from [a0+28264] +0xb4.
  The `lwc1` at 0xda21f80 loads 4 bytes from [a0+28264] +0xc4.
  The `swc1` at 0xda21f9c stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xda21fa4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda21fa8 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda21fb0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda21fb4 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `swc1` at 0xda21fc0 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda21fcc stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `jalr` at 0xda21f24 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda21f58 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda21f8c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The return at 0xda21fdc has v0 = ret(__GL_TEXENV_CLAMP).
- `__glTextureSBModulateRGBA` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda21fe4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda21fe4-0xda2212c (328 bytes).
  It occupies 328 bytes.
  The `lw` at 0xda2200c loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda22010, `lwc1` at 0xda220d4.
  The `lwc1` at 0xda22018 loads 4 bytes from [a0+28264] +0xac.
  The `lwc1` at 0xda2201c loads 4 bytes from [a0+28264] +0xbc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda22034, `lw` at 0xda22064, `lw` at 0xda22090.
  The `swc1` at 0xda22048 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda2204c loads 4 bytes from [a0+28264] +0xb0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda22050, `lwc1` at 0xda220e8.
  The `lwc1` at 0xda22058 loads 4 bytes from [a0+28264] +0xc0.
  The `swc1` at 0xda22074 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `lwc1` at 0xda22078 loads 4 bytes from [a0+28264] +0xb4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda2207c, `lwc1` at 0xda220f8.
  The `lwc1` at 0xda22084 loads 4 bytes from [a0+28264] +0xc4.
  The `swc1` at 0xda220a0 stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xda220a4 loads 4 bytes from [a0+28264] +0xb8.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lwc1` at 0xda220a8, `lwc1` at 0xda22104.
  The `lwc1` at 0xda220b0 loads 4 bytes from [a0+28264] +0xc8.
  The `swc1` at 0xda220cc stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda220d0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda220d8 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda220e0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda220e4 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda220f0 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `swc1` at 0xda220f4 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda22100 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda2210c stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xda2203c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda22068 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda22094 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda220c0 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The return at 0xda22124 has v0 = ret(__GL_TEXENV_CLAMP).
- `__glTextureSBModulateA` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2212c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2212c-0xda221a4 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xda2214c loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  The `lwc1` at 0xda22150 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda22158 loads 4 bytes from [a0+28264] +0xb8.
  The `lwc1` at 0xda2215c loads 4 bytes from [a0+28264] +0xc8.
  The `lw` at 0xda22168 loads 4 bytes from a0 (arg0 at entry) +0xdd8.
  The `swc1` at 0xda22184 stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda22188 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `swc1` at 0xda22190 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xda22170 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The return at 0xda2219c has v0 = a1.
- `__glTextureSBModulateI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda221a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda221a4-0xda222fc (344 bytes).
  It occupies 344 bytes.
  The `lwc1` at 0xda221cc loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `lw` at 0xda221d0 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x10, including `swc1` at 0xda221d8, `swc1` at 0xda2229c.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda221dc, `swc1` at 0xda22270.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda221e0, `swc1` at 0xda22244.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda221e4, `swc1` at 0xda22218.
  The `lwc1` at 0xda221e8 loads 4 bytes from [a0+28264] +0xac.
  The `lwc1` at 0xda221f0 loads 4 bytes from [a0+28264] +0xbc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda22204, `lw` at 0xda22234, `lw` at 0xda22260.
  The `lwc1` at 0xda2221c loads 4 bytes from [a0+28264] +0xb0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda22220, `lwc1` at 0xda222b8.
  The `lwc1` at 0xda22228 loads 4 bytes from [a0+28264] +0xc0.
  The `lwc1` at 0xda22248 loads 4 bytes from [a0+28264] +0xb4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda2224c, `lwc1` at 0xda222c8.
  The `lwc1` at 0xda22254 loads 4 bytes from [a0+28264] +0xc4.
  The `lwc1` at 0xda22274 loads 4 bytes from [a0+28264] +0xb8.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lwc1` at 0xda22278, `lwc1` at 0xda222d4.
  The `lwc1` at 0xda22280 loads 4 bytes from [a0+28264] +0xc8.
  The `lwc1` at 0xda222a0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda222a4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda222a8 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda222b0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda222b4 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda222c0 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `swc1` at 0xda222c4 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda222d0 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda222dc stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xda2220c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda22238 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda22264 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda22290 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The return at 0xda222f4 has v0 = ret(__GL_TEXENV_CLAMP).
- `__glTextureSBDecalRGB` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda222fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda222fc-0xda22408 (268 bytes).
  It occupies 268 bytes.
  The `lw` at 0xda22320 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda22324, `lwc1` at 0xda223c8.
  The `lwc1` at 0xda2232c loads 4 bytes from [a0+28264] +0xac.
  The `lwc1` at 0xda22330 loads 4 bytes from [a0+28264] +0xbc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda2233c, `lw` at 0xda2237c, `lw` at 0xda223ac.
  The `swc1` at 0xda22360 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda22364, `lwc1` at 0xda223d8.
  The `lwc1` at 0xda22368 loads 4 bytes from [a0+28264] +0xb0.
  The `lwc1` at 0xda22370 loads 4 bytes from [a0+28264] +0xc0.
  The `swc1` at 0xda22390 stores 4 bytes to a2 (arg2 at entry) +0x4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda22394, `lwc1` at 0xda223e8.
  The `lwc1` at 0xda22398 loads 4 bytes from [a0+28264] +0xb4.
  The `lwc1` at 0xda223a0 loads 4 bytes from [a0+28264] +0xc4.
  The `swc1` at 0xda223c0 stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xda223c4 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `swc1` at 0xda223d0 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda223d4 loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `swc1` at 0xda223e0 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda223e4 loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `swc1` at 0xda223f0 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `jalr` at 0xda22350 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda22380 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda223b0 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The return at 0xda22400 has v0 = a1.
- `__glTextureSBDecalRGBA` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda22408 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda22408-0xda22578 (368 bytes).
  It occupies 368 bytes.
  The `lw` at 0xda22430 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda22434, `lwc1` at 0xda224ec.
  The `lwc1` at 0xda2243c loads 4 bytes from [a0+28264] +0xac.
  The `lwc1` at 0xda22440 loads 4 bytes from [a0+28264] +0xbc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda22458, `lw` at 0xda22488, `lw` at 0xda224b4.
  The `swc1` at 0xda2246c stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda22470 loads 4 bytes from [a0+28264] +0xb0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda22474, `lwc1` at 0xda22520.
  The `lwc1` at 0xda2247c loads 4 bytes from [a0+28264] +0xc0.
  The `swc1` at 0xda22498 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `lwc1` at 0xda2249c loads 4 bytes from [a0+28264] +0xb4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda224a0, `lwc1` at 0xda22540.
  The `lwc1` at 0xda224a8 loads 4 bytes from [a0+28264] +0xc4.
  The `swc1` at 0xda224c4 stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xda224c8 loads 4 bytes from [a0+28264] +0xb8.
  The `lwc1` at 0xda224cc loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda224d4 loads 4 bytes from [a0+28264] +0xc8.
  The `swc1` at 0xda224f4 stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda224fc loads 4 bytes from a0 (arg0 at entry) +0xdd8.
  The `lwc1` at 0xda22500 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `lwc1` at 0xda22504 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda22518 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda2251c stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda22524 loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `lwc1` at 0xda22538 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda2253c stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda22544 loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `swc1` at 0xda22558 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `jalr` at 0xda22460 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda2248c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda224b8 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda224e4 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The return at 0xda22570 has v0 = ret(__GL_TEXENV_CLAMP).
- `__glTextureSBBlendL` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda22578 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda22578-0xda226d8 (352 bytes).
  It occupies 352 bytes.
  The `lw` at 0xda22598 loads 4 bytes from a0 (arg0 at entry) +0x9b4.
  The `lwc1` at 0xda225ac loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lw` at 0xda225b0 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda225b8, `swc1` at 0xda22658.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda225bc, `swc1` at 0xda22624.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda225c0, `swc1` at 0xda225f4.
  The `lwc1` at 0xda225c4 loads 4 bytes from [a0+28264] +0xac.
  The `lwc1` at 0xda225cc loads 4 bytes from [a0+28264] +0xbc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda225d4, `lw` at 0xda22610, `lw` at 0xda22640.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda225f8, `lwc1` at 0xda22664.
  The `lwc1` at 0xda225fc loads 4 bytes from [a0+28264] +0xb0.
  The `lwc1` at 0xda22604 loads 4 bytes from [a0+28264] +0xc0.
  The `lwc1` at 0xda22628 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xda2262c loads 4 bytes from [a0+28264] +0xb4.
  The `lwc1` at 0xda22634 loads 4 bytes from [a0+28264] +0xc4.
  The `lwc1` at 0xda2265c loads 4 bytes from a0 (arg0 at entry) +0xdd8.
  The `lwc1` at 0xda22660 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda22674 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda22678 loads 4 bytes from [a0+2484] +0x4.
  The `lwc1` at 0xda22688 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda22694 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda22698 loads 4 bytes from [a0+2484] +0x8.
  The `lwc1` at 0xda226a0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda226a8 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda226b0 loads 4 bytes from [a0+2484] +0xc.
  The `swc1` at 0xda226c0 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `jalr` at 0xda225e4 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda22614 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda22644 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The return at 0xda226d0 has v0 = [a0+2484]+4.
- `__glTextureSBBlendLA` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda226d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda226d8-0xda22880 (424 bytes).
  It occupies 424 bytes.
  The `lw` at 0xda22700 loads 4 bytes from a0 (arg0 at entry) +0x9b4.
  The `lwc1` at 0xda22714 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lw` at 0xda22718 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda22720, `swc1` at 0xda227ac.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda22724, `swc1` at 0xda22780.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda22728, `swc1` at 0xda22754.
  The `lwc1` at 0xda2272c loads 4 bytes from [a0+28264] +0xac.
  The `lwc1` at 0xda22734 loads 4 bytes from [a0+28264] +0xbc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda22740, `lw` at 0xda22770, `lw` at 0xda2279c.
  The `lwc1` at 0xda22758 loads 4 bytes from [a0+28264] +0xb0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda2275c, `lwc1` at 0xda227e4.
  The `lwc1` at 0xda22764 loads 4 bytes from [a0+28264] +0xc0.
  The `lwc1` at 0xda22784 loads 4 bytes from [a0+28264] +0xb4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda22788, `lwc1` at 0xda227d4.
  The `lwc1` at 0xda22790 loads 4 bytes from [a0+28264] +0xc4.
  The `lwc1` at 0xda227b0 loads 4 bytes from [a0+28264] +0xb8.
  The `lwc1` at 0xda227b4 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda227bc loads 4 bytes from [a0+28264] +0xc8.
  The `lwc1` at 0xda227e0 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `swc1` at 0xda227e8 stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda227f0 loads 4 bytes from a0 (arg0 at entry) +0xdd8.
  The `lwc1` at 0xda22808 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda2280c loads 4 bytes from [a0+2484] +0x4.
  The `lwc1` at 0xda22818 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda22824 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda22828 loads 4 bytes from [a0+2484] +0x8.
  The `lwc1` at 0xda22830 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda22838 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda22848 loads 4 bytes from [a0+2484] +0xc.
  The `lwc1` at 0xda22850 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `swc1` at 0xda2285c stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda22860 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xda22748 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda22774 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda227a0 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda227cc calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The return at 0xda22878 has v0 = [a0+2484]+4.
- `__glTextureSBBlendRGB` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda22880 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda22880-0xda229d4 (340 bytes).
  It occupies 340 bytes.
  The `lw` at 0xda228a0 loads 4 bytes from a0 (arg0 at entry) +0x9b4.
  The `lw` at 0xda228b4 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda228b8, `lwc1` at 0xda2295c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda228bc, `lw` at 0xda2290c, `lw` at 0xda2293c.
  The `lwc1` at 0xda228c0 loads 4 bytes from [a0+28264] +0xac.
  The `lwc1` at 0xda228c4 loads 4 bytes from [a0+28264] +0xbc.
  The `swc1` at 0xda228f0 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda228f4, `lwc1` at 0xda22960.
  The `lwc1` at 0xda228f8 loads 4 bytes from [a0+28264] +0xb0.
  The `lwc1` at 0xda22900 loads 4 bytes from [a0+28264] +0xc0.
  The `swc1` at 0xda22920 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `lwc1` at 0xda22924 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xda22928 loads 4 bytes from [a0+28264] +0xb4.
  The `lwc1` at 0xda22930 loads 4 bytes from [a0+28264] +0xc4.
  The `swc1` at 0xda22954 stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xda22958 loads 4 bytes from a0 (arg0 at entry) +0xdd8.
  The `lwc1` at 0xda22970 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda22974 loads 4 bytes from [a0+2484] +0x4.
  The `lwc1` at 0xda22984 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda22990 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda22994 loads 4 bytes from [a0+2484] +0x8.
  The `lwc1` at 0xda2299c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda229a4 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda229ac loads 4 bytes from [a0+2484] +0xc.
  The `swc1` at 0xda229bc stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `jalr` at 0xda228e0 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda22910 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda22940 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The return at 0xda229cc has v0 = [a0+2484]+4.
- `__glTextureSBBlendRGBA` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda229d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda229d4-0xda22b74 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xda229fc loads 4 bytes from a0 (arg0 at entry) +0x9b4.
  The `lw` at 0xda22a10 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda22a14, `lwc1` at 0xda22ad0.
  The `lwc1` at 0xda22a1c loads 4 bytes from [a0+28264] +0xac.
  The `lwc1` at 0xda22a20 loads 4 bytes from [a0+28264] +0xbc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda22a30, `lw` at 0xda22a60, `lw` at 0xda22a8c.
  The `swc1` at 0xda22a44 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda22a48 loads 4 bytes from [a0+28264] +0xb0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda22a4c, `lwc1` at 0xda22ad4.
  The `lwc1` at 0xda22a54 loads 4 bytes from [a0+28264] +0xc0.
  The `swc1` at 0xda22a70 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `lwc1` at 0xda22a74 loads 4 bytes from [a0+28264] +0xb4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda22a78, `lwc1` at 0xda22ac4.
  The `lwc1` at 0xda22a80 loads 4 bytes from [a0+28264] +0xc4.
  The `swc1` at 0xda22a9c stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xda22aa0 loads 4 bytes from [a0+28264] +0xb8.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lwc1` at 0xda22aa4, `lwc1` at 0xda22b4c.
  The `lwc1` at 0xda22aac loads 4 bytes from [a0+28264] +0xc8.
  The `swc1` at 0xda22ad8 stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda22ae0 loads 4 bytes from a0 (arg0 at entry) +0xdd8.
  The `lwc1` at 0xda22af8 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda22afc loads 4 bytes from [a0+2484] +0x4.
  The `lwc1` at 0xda22b08 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda22b14 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda22b18 loads 4 bytes from [a0+2484] +0x8.
  The `lwc1` at 0xda22b20 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda22b28 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda22b38 loads 4 bytes from [a0+2484] +0xc.
  The `lwc1` at 0xda22b44 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `swc1` at 0xda22b48 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda22b54 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xda22a38 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda22a64 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda22a90 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda22abc calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The return at 0xda22b6c has v0 = [a0+2484]+4.
- `__glTextureSBBlendA` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda22b74 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda22b74-0xda22bec (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xda22b94 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  The `lwc1` at 0xda22b98 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda22ba0 loads 4 bytes from [a0+28264] +0xb8.
  The `lwc1` at 0xda22ba4 loads 4 bytes from [a0+28264] +0xc8.
  The `lw` at 0xda22bb0 loads 4 bytes from a0 (arg0 at entry) +0xdd8.
  The `swc1` at 0xda22bcc stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda22bd0 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `swc1` at 0xda22bd8 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xda22bb8 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The return at 0xda22be4 has v0 = a1.
- `__glTextureSBBlendI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda22bec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda22bec-0xda22db0 (452 bytes).
  It occupies 452 bytes.
  The `lwc1` at 0xda22c18 loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `lw` at 0xda22c1c loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  The `lw` at 0xda22c20 loads 4 bytes from a0 (arg0 at entry) +0x9b4.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x10, including `swc1` at 0xda22c24, `swc1` at 0xda22cfc.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda22c28, `swc1` at 0xda22cc4.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda22c2c, `swc1` at 0xda22c98.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda22c30, `swc1` at 0xda22c6c.
  The `lwc1` at 0xda22c34 loads 4 bytes from [a0+28264] +0xac.
  The `lwc1` at 0xda22c3c loads 4 bytes from [a0+28264] +0xbc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda22c54, `lw` at 0xda22c88, `lw` at 0xda22cb4.
  The `lwc1` at 0xda22c70 loads 4 bytes from [a0+28264] +0xb0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda22c74, `lwc1` at 0xda22cf8.
  The `lwc1` at 0xda22c7c loads 4 bytes from [a0+28264] +0xc0.
  The `lwc1` at 0xda22c9c loads 4 bytes from [a0+28264] +0xb4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda22ca0, `lwc1` at 0xda22cec.
  The `lwc1` at 0xda22ca8 loads 4 bytes from [a0+28264] +0xc4.
  The `lwc1` at 0xda22cc8 loads 4 bytes from [a0+28264] +0xb8.
  The `lwc1` at 0xda22ccc loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda22cd4 loads 4 bytes from [a0+28264] +0xc8.
  The `lwc1` at 0xda22cf4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda22d04 loads 4 bytes from a0 (arg0 at entry) +0xdd8.
  The `lwc1` at 0xda22d20 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda22d24 loads 4 bytes from [a0+2484] +0x4.
  The `lwc1` at 0xda22d34 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda22d40 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda22d44 loads 4 bytes from [a0+2484] +0x8.
  The `lwc1` at 0xda22d4c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda22d54 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda22d64 loads 4 bytes from [a0+2484] +0xc.
  The `lwc1` at 0xda22d6c loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `swc1` at 0xda22d74 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lwc1` at 0xda22d7c loads 4 bytes from [a0+2484] +0x10.
  The `swc1` at 0xda22d8c stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xda22c60 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda22c8c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda22cb8 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda22ce4 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The return at 0xda22da8 has v0 = ret(__GL_TEXENV_CLAMP).
- `__glTextureSBReplaceL` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda22db0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda22db0-0xda22ec8 (280 bytes).
  It occupies 280 bytes.
  The `lwc1` at 0xda22dd4 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lw` at 0xda22dd8 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda22de0, `swc1` at 0xda22e80.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda22de4, `swc1` at 0xda22e50.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda22de8, `swc1` at 0xda22e20.
  The `lwc1` at 0xda22dec loads 4 bytes from [a0+28264] +0xac.
  The `lwc1` at 0xda22df4 loads 4 bytes from [a0+28264] +0xbc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda22dfc, `lw` at 0xda22e3c, `lw` at 0xda22e6c.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda22e24, `lwc1` at 0xda22e98.
  The `lwc1` at 0xda22e28 loads 4 bytes from [a0+28264] +0xb0.
  The `lwc1` at 0xda22e30 loads 4 bytes from [a0+28264] +0xc0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda22e54, `lwc1` at 0xda22ea8.
  The `lwc1` at 0xda22e58 loads 4 bytes from [a0+28264] +0xb4.
  The `lwc1` at 0xda22e60 loads 4 bytes from [a0+28264] +0xc4.
  The `lwc1` at 0xda22e84 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `lwc1` at 0xda22e88 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `swc1` at 0xda22e90 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda22e94 loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `swc1` at 0xda22ea0 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda22ea4 loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `swc1` at 0xda22eb0 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `jalr` at 0xda22e10 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda22e40 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda22e70 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The return at 0xda22ec0 has v0 = a1.
- `__glTextureSBReplaceLA` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda22ec8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda22ec8-0xda23018 (336 bytes).
  It occupies 336 bytes.
  The `lwc1` at 0xda22ef0 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lw` at 0xda22ef4 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda22efc, `swc1` at 0xda22f8c.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda22f00, `swc1` at 0xda22f60.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda22f04, `swc1` at 0xda22f34.
  The `lwc1` at 0xda22f08 loads 4 bytes from [a0+28264] +0xac.
  The `lwc1` at 0xda22f10 loads 4 bytes from [a0+28264] +0xbc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda22f20, `lw` at 0xda22f50, `lw` at 0xda22f7c.
  The `lwc1` at 0xda22f38 loads 4 bytes from [a0+28264] +0xb0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda22f3c, `lwc1` at 0xda22fd4.
  The `lwc1` at 0xda22f44 loads 4 bytes from [a0+28264] +0xc0.
  The `lwc1` at 0xda22f64 loads 4 bytes from [a0+28264] +0xb4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda22f68, `lwc1` at 0xda22fe4.
  The `lwc1` at 0xda22f70 loads 4 bytes from [a0+28264] +0xc4.
  The `lwc1` at 0xda22f90 loads 4 bytes from [a0+28264] +0xb8.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lwc1` at 0xda22f94, `lwc1` at 0xda22ff4.
  The `lwc1` at 0xda22f9c loads 4 bytes from [a0+28264] +0xc8.
  The `swc1` at 0xda22fbc stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda22fc0 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `lwc1` at 0xda22fc4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `swc1` at 0xda22fcc stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda22fd0 loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `swc1` at 0xda22fdc stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda22fe0 loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `swc1` at 0xda22fec stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lwc1` at 0xda22ff0 loads 4 bytes from a0 (arg0 at entry) +0x7880.
  The `swc1` at 0xda22ffc stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xda22f28 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda22f54 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda22f80 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda22fac calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The return at 0xda23010 has v0 = a1.
- `__glTextureSBReplaceRGB` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda23018 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda23018-0xda23124 (268 bytes).
  It occupies 268 bytes.
  The `lw` at 0xda2303c loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda23040, `lwc1` at 0xda230e4.
  The `lwc1` at 0xda23048 loads 4 bytes from [a0+28264] +0xac.
  The `lwc1` at 0xda2304c loads 4 bytes from [a0+28264] +0xbc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda23058, `lw` at 0xda23098, `lw` at 0xda230c8.
  The `swc1` at 0xda2307c stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda23080, `lwc1` at 0xda230f4.
  The `lwc1` at 0xda23084 loads 4 bytes from [a0+28264] +0xb0.
  The `lwc1` at 0xda2308c loads 4 bytes from [a0+28264] +0xc0.
  The `swc1` at 0xda230ac stores 4 bytes to a2 (arg2 at entry) +0x4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda230b0, `lwc1` at 0xda23104.
  The `lwc1` at 0xda230b4 loads 4 bytes from [a0+28264] +0xb4.
  The `lwc1` at 0xda230bc loads 4 bytes from [a0+28264] +0xc4.
  The `swc1` at 0xda230dc stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xda230e0 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `swc1` at 0xda230ec stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda230f0 loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `swc1` at 0xda230fc stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda23100 loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `swc1` at 0xda2310c stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `jalr` at 0xda2306c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda2309c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda230cc calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The return at 0xda2311c has v0 = a1.
- `__glTextureSBReplaceRGBA` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda23124 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda23124-0xda23268 (324 bytes).
  It occupies 324 bytes.
  The `lw` at 0xda2314c loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda23150, `lwc1` at 0xda23214.
  The `lwc1` at 0xda23158 loads 4 bytes from [a0+28264] +0xac.
  The `lwc1` at 0xda2315c loads 4 bytes from [a0+28264] +0xbc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda23170, `lw` at 0xda231a0, `lw` at 0xda231cc.
  The `swc1` at 0xda23184 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda23188 loads 4 bytes from [a0+28264] +0xb0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda2318c, `lwc1` at 0xda23224.
  The `lwc1` at 0xda23194 loads 4 bytes from [a0+28264] +0xc0.
  The `swc1` at 0xda231b0 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `lwc1` at 0xda231b4 loads 4 bytes from [a0+28264] +0xb4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda231b8, `lwc1` at 0xda23234.
  The `lwc1` at 0xda231c0 loads 4 bytes from [a0+28264] +0xc4.
  The `swc1` at 0xda231dc stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xda231e0 loads 4 bytes from [a0+28264] +0xb8.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lwc1` at 0xda231e4, `lwc1` at 0xda23244.
  The `lwc1` at 0xda231ec loads 4 bytes from [a0+28264] +0xc8.
  The `swc1` at 0xda2320c stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda23210 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `swc1` at 0xda2321c stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda23220 loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `swc1` at 0xda2322c stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda23230 loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `swc1` at 0xda2323c stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lwc1` at 0xda23240 loads 4 bytes from a0 (arg0 at entry) +0x7880.
  The `swc1` at 0xda2324c stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xda23178 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda231a4 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda231d0 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda231fc calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The return at 0xda23260 has v0 = a1.
- `__glTextureSBReplaceA` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda23268 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda23268-0xda232e8 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda23288 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  The `lwc1` at 0xda2328c loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda23294 loads 4 bytes from [a0+28264] +0xb8.
  The `lwc1` at 0xda23298 loads 4 bytes from [a0+28264] +0xc8.
  The `lw` at 0xda2329c loads 4 bytes from a0 (arg0 at entry) +0xdd8.
  The `swc1` at 0xda232c4 stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda232c8 loads 4 bytes from a0 (arg0 at entry) +0x7880.
  The `swc1` at 0xda232d4 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xda232b0 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The return at 0xda232e0 has v0 = ret(__GL_TEXENV_CLAMP).
- `__glTextureSBReplaceI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda232e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda232e8-0xda2343c (340 bytes).
  It occupies 340 bytes.
  The `lwc1` at 0xda23310 loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `lw` at 0xda23314 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x10, including `swc1` at 0xda2331c, `swc1` at 0xda233e0.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda23320, `swc1` at 0xda233b0.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda23324, `swc1` at 0xda23384.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda23328, `swc1` at 0xda23358.
  The `lwc1` at 0xda2332c loads 4 bytes from [a0+28264] +0xac.
  The `lwc1` at 0xda23334 loads 4 bytes from [a0+28264] +0xbc.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda23344, `lw` at 0xda23374, `lw` at 0xda233a0.
  The `lwc1` at 0xda2335c loads 4 bytes from [a0+28264] +0xb0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda23360, `lwc1` at 0xda233f8.
  The `lwc1` at 0xda23368 loads 4 bytes from [a0+28264] +0xc0.
  The `lwc1` at 0xda23388 loads 4 bytes from [a0+28264] +0xb4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda2338c, `lwc1` at 0xda23408.
  The `lwc1` at 0xda23394 loads 4 bytes from [a0+28264] +0xc4.
  The `lwc1` at 0xda233b4 loads 4 bytes from [a0+28264] +0xb8.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lwc1` at 0xda233b8, `lwc1` at 0xda23418.
  The `lwc1` at 0xda233c0 loads 4 bytes from [a0+28264] +0xc8.
  The `lwc1` at 0xda233e4 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `lwc1` at 0xda233e8 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `swc1` at 0xda233f0 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda233f4 loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `swc1` at 0xda23400 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda23404 loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `swc1` at 0xda23410 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lwc1` at 0xda23414 loads 4 bytes from a0 (arg0 at entry) +0x7880.
  The `swc1` at 0xda23420 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xda2334c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda23378 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda233a4 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda233d0 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The return at 0xda23434 has v0 = a1.
- `__glTextureCTModulateL` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2343c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2343c-0xda237ec (944 bytes).
  It occupies 944 bytes.
  The `lwc1` at 0xda23468 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lw` at 0xda2346c loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda23474, `swc1` at 0xda23638, `swc1` at 0xda23798.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda23478, `swc1` at 0xda235c8, `swc1` at 0xda2372c.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda2347c, `swc1` at 0xda23554, `swc1` at 0xda236b8.
  The `lw` at 0xda23480 loads 4 bytes from a0 (arg0 at entry) +0x1760.
  6 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda234a0, `lwc1` at 0xda234a8, `lwc1` at 0xda234b8.
  The `lw` at 0xda234c8 loads 4 bytes from table(0xda7b2fc) +0x0.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xac, including `lwc1` at 0xda234dc, `lwc1` at 0xda23640.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xbc, including `lwc1` at 0xda234e4, `lwc1` at 0xda23648.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda234f0, `lw` at 0xda23568, `lw` at 0xda235dc.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1724, including `lw` at 0xda23500, `lw` at 0xda23574, `lw` at 0xda235e8.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1764, including `lw` at 0xda23514, `lw` at 0xda23588, `lw` at 0xda235fc.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x171c, including `lw` at 0xda23518, `lw` at 0xda2358c, `lw` at 0xda23600.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda2352c, `lwc1` at 0xda23690, `lwc1` at 0xda237b4.
  6 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda23550, `lwc1` at 0xda235c4, `lwc1` at 0xda23630.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb0, including `lwc1` at 0xda23558, `lwc1` at 0xda236bc.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc0, including `lwc1` at 0xda23560, `lwc1` at 0xda236c4.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda235a0, `lwc1` at 0xda23704, `lwc1` at 0xda237c0.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb4, including `lwc1` at 0xda235cc, `lwc1` at 0xda23730.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc4, including `lwc1` at 0xda235d4, `lwc1` at 0xda23738.
  The `lwc1` at 0xda237a0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda237a4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda237ac loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda237b0 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `swc1` at 0xda237bc stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda237c8 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `jalr` at 0xda234f4 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda2356c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda235e0 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda23658 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda236d0 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda23744 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `bne` branch at 0xda23490 targets 0xda234ac, is taken when v0(=[a0+5984]) < 0x190b (unsigned), and falls through when v0(=[a0+5984]) >= 0x190b (unsigned).
  The `beql` branch at 0xda2349c targets 0xda234dc, is taken when v0(=[a0+5984]) == at(=0x8049), and falls through when v0(=[a0+5984]) != at(=0x8049); its branch-likely delay slot `lwc1 $f4,0(s1)` at 0xda234a0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda234a4 targets 0xda237a0 and is always taken.
  The `beql` branch at 0xda234b4 targets 0xda237a0, is taken when t6(=[a0+5984]-6406) >= 0x5 (unsigned), and falls through when t6(=[a0+5984]-6406) < 0x5 (unsigned); its branch-likely delay slot `lwc1 $f18,0(s1)` at 0xda234b8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda23634 targets 0xda2379c and is always taken.
  The return at 0xda237e4 has v0 = one of [a0+5984], ?.
  The indirect jump at 0xda234d0 uses the jump table at 0xda7b2fc with targets 0xda2379c, 0xda2363c, 0xda2363c, 0xda234d8, 0xda234d8.
- `__glTextureCTModulateLA` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda237ec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda237ec-0xda23ec0 (1748 bytes).
  It occupies 1748 bytes.
  The `lwc1` at 0xda2381c loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lw` at 0xda23820 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda23828, `swc1` at 0xda23a54, `swc1` at 0xda23bac.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda2382c, `swc1` at 0xda239ec, `swc1` at 0xda23b40.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda23830, `swc1` at 0xda23980, `swc1` at 0xda23ad4.
  The `lw` at 0xda23834 loads 4 bytes from a0 (arg0 at entry) +0x1760.
  6 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda23854, `lwc1` at 0xda2385c, `lwc1` at 0xda2386c.
  The `lw` at 0xda2387c loads 4 bytes from table(0xda7b310) +0x0.
  5 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lwc1` at 0xda2388c, `lwc1` at 0xda23b80, `lwc1` at 0xda23c18.
  4 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb8, including `lwc1` at 0xda23890, `lwc1` at 0xda23bb0, `lwc1` at 0xda23c1c.
  4 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc8, including `lwc1` at 0xda23898, `lwc1` at 0xda23bb8, `lwc1` at 0xda23c24.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda238a4, `lw` at 0xda23924, `lw` at 0xda23994.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1724, including `lw` at 0xda238b4, `lw` at 0xda23934, `lw` at 0xda239a0.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1764, including `lw` at 0xda238c8, `lw` at 0xda23938, `lw` at 0xda239a4.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x171c, including `lw` at 0xda238cc, `lw` at 0xda2393c, `lw` at 0xda239a8.
  13 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda238fc, `lwc1` at 0xda2397c, `lwc1` at 0xda239e8.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x10, including `swc1` at 0xda23900, `swc1` at 0xda23c14, `swc1` at 0xda23c8c.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xac, including `lwc1` at 0xda23908, `lwc1` at 0xda23a5c, `lwc1` at 0xda23c94.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xbc, including `lwc1` at 0xda23910, `lwc1` at 0xda23a64, `lwc1` at 0xda23c9c.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda23954, `lwc1` at 0xda23aa4, `lwc1` at 0xda23ce0.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb0, including `lwc1` at 0xda23984, `lwc1` at 0xda23ad8, `lwc1` at 0xda23d10.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc0, including `lwc1` at 0xda2398c, `lwc1` at 0xda23ae0, `lwc1` at 0xda23d18.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda239c0, `lwc1` at 0xda23b14, `lwc1` at 0xda23d4c.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb4, including `lwc1` at 0xda239f0, `lwc1` at 0xda23b44, `lwc1` at 0xda23d7c.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc4, including `lwc1` at 0xda239f8, `lwc1` at 0xda23b4c, `lwc1` at 0xda23d84.
  The `lwc1` at 0xda23e60 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda23e64 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda23e6c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda23e70 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda23e7c loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `swc1` at 0xda23e80 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda23e8c stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda23e98 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xda238a8 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda2392c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda23998 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda23a04 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda23a74 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda23aec calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda23b58 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda23bc4 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda23c34 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda23cb8 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda23d24 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda23d90 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda23e00 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `bne` branch at 0xda23844 targets 0xda23860, is taken when v0(=[a0+5984]) < 0x190b (unsigned), and falls through when v0(=[a0+5984]) >= 0x190b (unsigned).
  The `beql` branch at 0xda23850 targets 0xda23a5c, is taken when v0(=[a0+5984]) == at(=0x8049), and falls through when v0(=[a0+5984]) != at(=0x8049); its branch-likely delay slot `lwc1 $f18,0(s1)` at 0xda23854 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda23858 targets 0xda23e60 and is always taken.
  The `beql` branch at 0xda23868 targets 0xda23e60, is taken when t6(=[a0+5984]-6406) >= 0x5 (unsigned), and falls through when t6(=[a0+5984]-6406) < 0x5 (unsigned); its branch-likely delay slot `lwc1 $f16,0(s1)` at 0xda2386c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda23a50 targets 0xda23e5c and is always taken.
  The `beq` branch at 0xda23c10 targets 0xda23e5c and is always taken.
  The `beq` branch at 0xda23ddc targets 0xda23e5c and is always taken.
  The return at 0xda23eb8 has v0 = one of [a0+5984], ret(__GL_TEXENV_CLAMP).
  The instructions from 0xda23a58 to 0xda23a58 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xda23884 uses the jump table at 0xda7b310 with targets 0xda23de4, 0xda23c90, 0xda23c18, 0xda23904, 0xda2388c.
- `__glTextureCTModulateRGB` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda23ec0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda23ec0-0xda24260 (928 bytes).
  It occupies 928 bytes.
  The `lw` at 0xda23eec loads 4 bytes from a0 (arg0 at entry) +0x1760.
  The `lw` at 0xda23ef0 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  6 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda23f14, `lwc1` at 0xda23f1c, `lwc1` at 0xda23f2c.
  The `lw` at 0xda23f3c loads 4 bytes from table(0xda7b324) +0x0.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xac, including `lwc1` at 0xda23f50, `lwc1` at 0xda240b4.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xbc, including `lwc1` at 0xda23f58, `lwc1` at 0xda240bc.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda23f64, `lw` at 0xda23fdc, `lw` at 0xda24050.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1724, including `lw` at 0xda23f74, `lw` at 0xda23fe8, `lw` at 0xda2405c.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1764, including `lw` at 0xda23f88, `lw` at 0xda23ffc, `lw` at 0xda24070.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x171c, including `lw` at 0xda23f8c, `lw` at 0xda24000, `lw` at 0xda24074.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda23fa0, `lwc1` at 0xda24104, `lwc1` at 0xda24228.
  6 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda23fc4, `lwc1` at 0xda24038, `lwc1` at 0xda240a4.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda23fc8, `swc1` at 0xda2412c.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb0, including `lwc1` at 0xda23fcc, `lwc1` at 0xda24130.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc0, including `lwc1` at 0xda23fd4, `lwc1` at 0xda24138.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda24014, `lwc1` at 0xda24178, `lwc1` at 0xda24234.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda2403c, `swc1` at 0xda241a0.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb4, including `lwc1` at 0xda24040, `lwc1` at 0xda241a4.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc4, including `lwc1` at 0xda24048, `lwc1` at 0xda241ac.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda240ac, `swc1` at 0xda2420c.
  The `lwc1` at 0xda24214 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda24218 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda24220 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda24224 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `swc1` at 0xda24230 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda2423c stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `jalr` at 0xda23f68 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda23fe0 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda24054 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda240cc calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda24144 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda241b8 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `bne` branch at 0xda23f04 targets 0xda23f20, is taken when v0(=[a0+5984]) < 0x190b (unsigned), and falls through when v0(=[a0+5984]) >= 0x190b (unsigned).
  The `beql` branch at 0xda23f10 targets 0xda23f50, is taken when v0(=[a0+5984]) == at(=0x8049), and falls through when v0(=[a0+5984]) != at(=0x8049); its branch-likely delay slot `lwc1 $f4,0(s2)` at 0xda23f14 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda23f18 targets 0xda24214 and is always taken.
  The `beql` branch at 0xda23f28 targets 0xda24214, is taken when t6(=[a0+5984]-6406) >= 0x5 (unsigned), and falls through when t6(=[a0+5984]-6406) < 0x5 (unsigned); its branch-likely delay slot `lwc1 $f18,0(s2)` at 0xda23f2c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda240a8 targets 0xda24210 and is always taken.
  The return at 0xda24258 has v0 = one of [a0+5984], ?.
  The indirect jump at 0xda23f44 uses the jump table at 0xda7b324 with targets 0xda24210, 0xda240b0, 0xda240b0, 0xda23f4c, 0xda23f4c.
- `__glTextureCTModulateRGBA` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda24260 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda24260-0xda24924 (1732 bytes).
  It occupies 1732 bytes.
  The `lw` at 0xda24290 loads 4 bytes from a0 (arg0 at entry) +0x1760.
  The `lw` at 0xda24294 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  6 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda242b8, `lwc1` at 0xda242c0, `lwc1` at 0xda242d0.
  The `lw` at 0xda242e0 loads 4 bytes from table(0xda7b338) +0x0.
  5 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lwc1` at 0xda242f0, `lwc1` at 0xda245e4, `lwc1` at 0xda2467c.
  4 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb8, including `lwc1` at 0xda242f4, `lwc1` at 0xda24614, `lwc1` at 0xda24680.
  4 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc8, including `lwc1` at 0xda242fc, `lwc1` at 0xda2461c, `lwc1` at 0xda24688.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda24308, `lw` at 0xda24388, `lw` at 0xda243f8.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1724, including `lw` at 0xda24318, `lw` at 0xda24398, `lw` at 0xda24404.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1764, including `lw` at 0xda2432c, `lw` at 0xda2439c, `lw` at 0xda24408.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x171c, including `lw` at 0xda24330, `lw` at 0xda243a0, `lw` at 0xda2440c.
  13 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda24360, `lwc1` at 0xda243e0, `lwc1` at 0xda2444c.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x10, including `swc1` at 0xda24364, `swc1` at 0xda24678, `swc1` at 0xda246f0.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xac, including `lwc1` at 0xda2436c, `lwc1` at 0xda244c0, `lwc1` at 0xda246f8.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xbc, including `lwc1` at 0xda24374, `lwc1` at 0xda244c8, `lwc1` at 0xda24700.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda243b8, `lwc1` at 0xda24508, `lwc1` at 0xda24744.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda243e4, `swc1` at 0xda24538, `swc1` at 0xda24770.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb0, including `lwc1` at 0xda243e8, `lwc1` at 0xda2453c, `lwc1` at 0xda24774.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc0, including `lwc1` at 0xda243f0, `lwc1` at 0xda24544, `lwc1` at 0xda2477c.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda24424, `lwc1` at 0xda24578, `lwc1` at 0xda247b0.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda24450, `swc1` at 0xda245a4, `swc1` at 0xda247dc.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb4, including `lwc1` at 0xda24454, `lwc1` at 0xda245a8, `lwc1` at 0xda247e0.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc4, including `lwc1` at 0xda2445c, `lwc1` at 0xda245b0, `lwc1` at 0xda247e8.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda244b8, `swc1` at 0xda24610, `swc1` at 0xda24844.
  The `lwc1` at 0xda248c4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda248c8 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda248d0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda248d4 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda248e0 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `swc1` at 0xda248e4 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda248f0 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda248fc stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xda2430c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda24390 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda243fc calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda24468 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda244d8 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda24550 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda245bc calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda24628 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda24698 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda2471c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda24788 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda247f4 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda24864 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `bne` branch at 0xda242a8 targets 0xda242c4, is taken when v0(=[a0+5984]) < 0x190b (unsigned), and falls through when v0(=[a0+5984]) >= 0x190b (unsigned).
  The `beql` branch at 0xda242b4 targets 0xda244c0, is taken when v0(=[a0+5984]) == at(=0x8049), and falls through when v0(=[a0+5984]) != at(=0x8049); its branch-likely delay slot `lwc1 $f18,0(s2)` at 0xda242b8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda242bc targets 0xda248c4 and is always taken.
  The `beql` branch at 0xda242cc targets 0xda248c4, is taken when t6(=[a0+5984]-6406) >= 0x5 (unsigned), and falls through when t6(=[a0+5984]-6406) < 0x5 (unsigned); its branch-likely delay slot `lwc1 $f16,0(s2)` at 0xda242d0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda244b4 targets 0xda248c0 and is always taken.
  The `beq` branch at 0xda24674 targets 0xda248c0 and is always taken.
  The `beq` branch at 0xda24840 targets 0xda248c0 and is always taken.
  The return at 0xda2491c has v0 = one of [a0+5984], ret(__GL_TEXENV_CLAMP).
  The instructions from 0xda244bc to 0xda244bc are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xda242e8 uses the jump table at 0xda7b338 with targets 0xda24848, 0xda246f4, 0xda2467c, 0xda24368, 0xda242f0.
- `__glTextureCTModulateA` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda24924 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda24924-0xda24b18 (500 bytes).
  It occupies 500 bytes.
  The `lw` at 0xda24948 loads 4 bytes from a0 (arg0 at entry) +0x1760.
  The `lw` at 0xda2494c loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lwc1` at 0xda24980, `lwc1` at 0xda249fc, `lwc1` at 0xda24a78.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb8, including `lwc1` at 0xda24984, `lwc1` at 0xda24a00, `lwc1` at 0xda24a7c.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc8, including `lwc1` at 0xda2498c, `lwc1` at 0xda24a08, `lwc1` at 0xda24a84.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda24998, `lw` at 0xda24a14, `lw` at 0xda24a90.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1724, including `lw` at 0xda249a8, `lw` at 0xda24a24, `lw` at 0xda24aa0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1764, including `lw` at 0xda249bc, `lw` at 0xda24a38, `lw` at 0xda24ab4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x171c, including `lw` at 0xda249c0, `lw` at 0xda24a3c, `lw` at 0xda24ab8.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda249f0, `lwc1` at 0xda24a6c, `lwc1` at 0xda24ae8.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x10, including `swc1` at 0xda249f8, `swc1` at 0xda24a74, `swc1` at 0xda24aec.
  The `lwc1` at 0xda24af8 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `swc1` at 0xda24b00 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xda2499c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda24a18 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda24a94 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `beq` branch at 0xda2495c targets 0xda24980, is taken when v0(=[a0+5984]) == at(=0x1906), and falls through when v0(=[a0+5984]) != at(=0x1906).
  The `beq` branch at 0xda24968 targets 0xda249fc, is taken when v0(=[a0+5984]) == at(=0x1908), and falls through when v0(=[a0+5984]) != at(=0x1908).
  The `beq` branch at 0xda24970 targets 0xda24a78, is taken when v0(=[a0+5984]) == at(=0x190a), and falls through when v0(=[a0+5984]) != at(=0x190a).
  The `bnel` branch at 0xda24978 targets 0xda24af4, is taken when v0(=[a0+5984]) != at(=0x8049), and falls through when v0(=[a0+5984]) == at(=0x8049); its branch-likely delay slot `lw t2,44(sp)` at 0xda2497c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda249f4 targets 0xda24af0 and is always taken.
  The `beq` branch at 0xda24a70 targets 0xda24af0 and is always taken.
  The return at 0xda24b10 has v0 = one of [a0+5984], a0+5912.
- `__glTextureCTModulateI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda24b18 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda24b18-0xda251f0 (1752 bytes).
  It occupies 1752 bytes.
  The `lwc1` at 0xda24b48 loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `lw` at 0xda24b4c loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  5 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x10, including `swc1` at 0xda24b54, `swc1` at 0xda24c30, `swc1` at 0xda24f44.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda24b58, `swc1` at 0xda24d84, `swc1` at 0xda24edc.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda24b5c, `swc1` at 0xda24d1c, `swc1` at 0xda24e70.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda24b60, `swc1` at 0xda24cb0, `swc1` at 0xda24e04.
  The `lw` at 0xda24b64 loads 4 bytes from a0 (arg0 at entry) +0x1760.
  6 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda24b84, `lwc1` at 0xda24b8c, `lwc1` at 0xda24b9c.
  The `lw` at 0xda24bac loads 4 bytes from table(0xda7b34c) +0x0.
  5 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lwc1` at 0xda24bbc, `lwc1` at 0xda24eb0, `lwc1` at 0xda24f48.
  4 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb8, including `lwc1` at 0xda24bc0, `lwc1` at 0xda24ee0, `lwc1` at 0xda24f4c.
  4 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc8, including `lwc1` at 0xda24bc8, `lwc1` at 0xda24ee8, `lwc1` at 0xda24f54.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda24bd4, `lw` at 0xda24c54, `lw` at 0xda24cc4.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1724, including `lw` at 0xda24be4, `lw` at 0xda24c64, `lw` at 0xda24cd0.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1764, including `lw` at 0xda24bf8, `lw` at 0xda24c68, `lw` at 0xda24cd4.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x171c, including `lw` at 0xda24bfc, `lw` at 0xda24c6c, `lw` at 0xda24cd8.
  13 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda24c2c, `lwc1` at 0xda24cac, `lwc1` at 0xda24d18.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xac, including `lwc1` at 0xda24c38, `lwc1` at 0xda24d8c, `lwc1` at 0xda24fc4.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xbc, including `lwc1` at 0xda24c40, `lwc1` at 0xda24d94, `lwc1` at 0xda24fcc.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda24c84, `lwc1` at 0xda24dd4, `lwc1` at 0xda25010.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb0, including `lwc1` at 0xda24cb4, `lwc1` at 0xda24e08, `lwc1` at 0xda25040.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc0, including `lwc1` at 0xda24cbc, `lwc1` at 0xda24e10, `lwc1` at 0xda25048.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda24cf0, `lwc1` at 0xda24e44, `lwc1` at 0xda2507c.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb4, including `lwc1` at 0xda24d20, `lwc1` at 0xda24e74, `lwc1` at 0xda250ac.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc4, including `lwc1` at 0xda24d28, `lwc1` at 0xda24e7c, `lwc1` at 0xda250b4.
  The `lwc1` at 0xda25190 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda25194 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda2519c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda251a0 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda251ac loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `swc1` at 0xda251b0 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda251bc stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda251c8 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xda24bd8 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda24c5c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda24cc8 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda24d34 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda24da4 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda24e1c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda24e88 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda24ef4 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda24f64 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda24fe8 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda25054 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda250c0 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda25130 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `bne` branch at 0xda24b74 targets 0xda24b90, is taken when v0(=[a0+5984]) < 0x190b (unsigned), and falls through when v0(=[a0+5984]) >= 0x190b (unsigned).
  The `beql` branch at 0xda24b80 targets 0xda24d8c, is taken when v0(=[a0+5984]) == at(=0x8049), and falls through when v0(=[a0+5984]) != at(=0x8049); its branch-likely delay slot `lwc1 $f18,0(s1)` at 0xda24b84 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda24b88 targets 0xda25190 and is always taken.
  The `beql` branch at 0xda24b98 targets 0xda25190, is taken when t6(=[a0+5984]-6406) >= 0x5 (unsigned), and falls through when t6(=[a0+5984]-6406) < 0x5 (unsigned); its branch-likely delay slot `lwc1 $f16,0(s1)` at 0xda24b9c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda24d80 targets 0xda2518c and is always taken.
  The `beq` branch at 0xda24f40 targets 0xda2518c and is always taken.
  The `beq` branch at 0xda2510c targets 0xda2518c and is always taken.
  The return at 0xda251e8 has v0 = one of [a0+5984], ret(__GL_TEXENV_CLAMP).
  The instructions from 0xda24d88 to 0xda24d88 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xda24bb4 uses the jump table at 0xda7b34c with targets 0xda25114, 0xda24fc0, 0xda24f48, 0xda24c34, 0xda24bbc.
- `__glTextureCTDecalRGB` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda251f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda251f0-0xda25594 (932 bytes).
  It occupies 932 bytes.
  The `lw` at 0xda2521c loads 4 bytes from a0 (arg0 at entry) +0x1760.
  The `lw` at 0xda25220 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  6 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda25240, `lwc1` at 0xda25248, `lwc1` at 0xda25258.
  The `lw` at 0xda25268 loads 4 bytes from table(0xda7b360) +0x0.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xac, including `lwc1` at 0xda2527c, `lwc1` at 0xda253e0.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xbc, including `lwc1` at 0xda25284, `lwc1` at 0xda253e8.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda25290, `lw` at 0xda25308, `lw` at 0xda2537c.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1724, including `lw` at 0xda252a0, `lw` at 0xda25314, `lw` at 0xda25388.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1764, including `lw` at 0xda252b4, `lw` at 0xda25328, `lw` at 0xda2539c.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x171c, including `lw` at 0xda252b8, `lw` at 0xda2532c, `lw` at 0xda253a0.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda252cc, `lwc1` at 0xda25430, `lwc1` at 0xda25554.
  6 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda252f0, `lwc1` at 0xda25364, `lwc1` at 0xda253d0.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda252f4, `swc1` at 0xda25458.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb0, including `lwc1` at 0xda252f8, `lwc1` at 0xda2545c.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc0, including `lwc1` at 0xda25300, `lwc1` at 0xda25464.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda25340, `lwc1` at 0xda254a4, `lwc1` at 0xda25568.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda25368, `swc1` at 0xda254cc.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb4, including `lwc1` at 0xda2536c, `lwc1` at 0xda254d0.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc4, including `lwc1` at 0xda25374, `lwc1` at 0xda254d8.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda253d8, `swc1` at 0xda25538.
  The `lwc1` at 0xda25540 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `swc1` at 0xda2554c stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda25550 loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `swc1` at 0xda25560 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda25564 loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `swc1` at 0xda25574 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `jalr` at 0xda25294 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda2530c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda25380 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda253f8 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda25470 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda254e4 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `bne` branch at 0xda25230 targets 0xda2524c, is taken when v0(=[a0+5984]) < 0x190b (unsigned), and falls through when v0(=[a0+5984]) >= 0x190b (unsigned).
  The `beql` branch at 0xda2523c targets 0xda2527c, is taken when v0(=[a0+5984]) == at(=0x8049), and falls through when v0(=[a0+5984]) != at(=0x8049); its branch-likely delay slot `lwc1 $f4,0(s2)` at 0xda25240 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda25244 targets 0xda25540 and is always taken.
  The `beql` branch at 0xda25254 targets 0xda25540, is taken when t6(=[a0+5984]-6406) >= 0x5 (unsigned), and falls through when t6(=[a0+5984]-6406) < 0x5 (unsigned); its branch-likely delay slot `lwc1 $f18,0(s2)` at 0xda25258 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda253d4 targets 0xda2553c and is always taken.
  The return at 0xda2558c has v0 = one of [a0+5984], ?.
  The indirect jump at 0xda25270 uses the jump table at 0xda7b360 with targets 0xda2553c, 0xda253dc, 0xda253dc, 0xda25278, 0xda25278.
- `__glTextureCTDecalRGBA` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda25594 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda25594-0xda25c88 (1780 bytes).
  It occupies 1780 bytes.
  The `lw` at 0xda255c4 loads 4 bytes from a0 (arg0 at entry) +0x1760.
  The `lw` at 0xda255c8 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda255e8, `lwc1` at 0xda25698, `lwc1` at 0xda25a24.
  7 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lwc1` at 0xda255f0, `lwc1` at 0xda25600, `lwc1` at 0xda25620.
  The `lw` at 0xda25610 loads 4 bytes from table(0xda7b374) +0x0.
  4 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb8, including `lwc1` at 0xda25624, `lwc1` at 0xda25944, `lwc1` at 0xda259b0.
  4 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc8, including `lwc1` at 0xda2562c, `lwc1` at 0xda2594c, `lwc1` at 0xda259b8.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda25638, `lw` at 0xda256b8, `lw` at 0xda25728.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1724, including `lw` at 0xda25648, `lw` at 0xda256c8, `lw` at 0xda25734.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1764, including `lw` at 0xda2565c, `lw` at 0xda256cc, `lw` at 0xda25738.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x171c, including `lw` at 0xda25660, `lw` at 0xda256d0, `lw` at 0xda2573c.
  13 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda25690, `lwc1` at 0xda25710, `lwc1` at 0xda2577c.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x10, including `swc1` at 0xda25694, `swc1` at 0xda259a8, `swc1` at 0xda25a20.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xac, including `lwc1` at 0xda2569c, `lwc1` at 0xda257f0, `lwc1` at 0xda25a28.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xbc, including `lwc1` at 0xda256a4, `lwc1` at 0xda257f8, `lwc1` at 0xda25a30.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda256e8, `lwc1` at 0xda25838, `lwc1` at 0xda25a74.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda25714, `swc1` at 0xda25868, `swc1` at 0xda25aa0.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb0, including `lwc1` at 0xda25718, `lwc1` at 0xda2586c, `lwc1` at 0xda25aa4.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc0, including `lwc1` at 0xda25720, `lwc1` at 0xda25874, `lwc1` at 0xda25aac.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda25754, `lwc1` at 0xda258a8, `lwc1` at 0xda25ae0.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda25780, `swc1` at 0xda258d4, `swc1` at 0xda25b0c.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb4, including `lwc1` at 0xda25784, `lwc1` at 0xda258d8, `lwc1` at 0xda25b10.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc4, including `lwc1` at 0xda2578c, `lwc1` at 0xda258e0, `lwc1` at 0xda25b18.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda257e8, `swc1` at 0xda25940, `swc1` at 0xda25b74.
  The `lwc1` at 0xda25bf8 loads 4 bytes from a0 (arg0 at entry) +0xdd8.
  The `lwc1` at 0xda25bfc loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `lwc1` at 0xda25c0c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `swc1` at 0xda25c1c stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda25c28 loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `lwc1` at 0xda25c30 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda25c40 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda25c4c loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `lwc1` at 0xda25c54 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda25c64 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `jalr` at 0xda2563c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda256c0 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda2572c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda25798 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda25808 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda25880 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda258ec calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda25958 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda259c8 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda25a4c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda25ab8 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda25b24 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda25b94 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `bne` branch at 0xda255d8 targets 0xda255f4, is taken when v0(=[a0+5984]) < 0x190b (unsigned), and falls through when v0(=[a0+5984]) >= 0x190b (unsigned).
  The `beql` branch at 0xda255e4 targets 0xda257f0, is taken when v0(=[a0+5984]) == at(=0x8049), and falls through when v0(=[a0+5984]) != at(=0x8049); its branch-likely delay slot `lwc1 $f18,0(s2)` at 0xda255e8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda255ec targets 0xda25bf4 and is always taken.
  The `beql` branch at 0xda255fc targets 0xda25bf4, is taken when t6(=[a0+5984]-6406) >= 0x5 (unsigned), and falls through when t6(=[a0+5984]-6406) < 0x5 (unsigned); its branch-likely delay slot `lwc1 $f0,16(s2)` at 0xda25600 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda257e4 targets 0xda25bf0 and is always taken.
  The `beq` branch at 0xda259a4 targets 0xda25bf0 and is always taken.
  The `beq` branch at 0xda25b70 targets 0xda25bf0 and is always taken.
  The return at 0xda25c80 has v0 = one of [a0+5984], ret(__GL_TEXENV_CLAMP).
  The instructions from 0xda257ec to 0xda257ec are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xda25618 uses the jump table at 0xda7b374 with targets 0xda25b78, 0xda25a24, 0xda259ac, 0xda25698, 0xda25620.
- `__glTextureCTBlendL` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda25c88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda25c88-0xda2608c (1028 bytes).
  It occupies 1028 bytes.
  The `lw` at 0xda25cb4 loads 4 bytes from a0 (arg0 at entry) +0x9b4.
  The `lwc1` at 0xda25cc8 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lw` at 0xda25ccc loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda25cd4, `swc1` at 0xda25e90, `swc1` at 0xda25ff0.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda25cd8, `swc1` at 0xda25e20, `swc1` at 0xda25f84.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda25cdc, `swc1` at 0xda25dac, `swc1` at 0xda25f10.
  The `lw` at 0xda25ce0 loads 4 bytes from a0 (arg0 at entry) +0x1760.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda25cfc, `lwc1` at 0xda25d30, `lwc1` at 0xda25e94.
  5 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda25d04, `lwc1` at 0xda25d10, `lwc1` at 0xda25dfc.
  The `lw` at 0xda25d20 loads 4 bytes from table(0xda7b388) +0x0.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xac, including `lwc1` at 0xda25d34, `lwc1` at 0xda25e98.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xbc, including `lwc1` at 0xda25d3c, `lwc1` at 0xda25ea0.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda25d48, `lw` at 0xda25dc0, `lw` at 0xda25e34.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1724, including `lw` at 0xda25d58, `lw` at 0xda25dcc, `lw` at 0xda25e40.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1764, including `lw` at 0xda25d6c, `lw` at 0xda25de0, `lw` at 0xda25e54.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x171c, including `lw` at 0xda25d70, `lw` at 0xda25de4, `lw` at 0xda25e58.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda25d88, `lwc1` at 0xda25eec, `lwc1` at 0xda26000.
  6 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda25da8, `lwc1` at 0xda25e1c, `lwc1` at 0xda25e88.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb0, including `lwc1` at 0xda25db0, `lwc1` at 0xda25f14.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc0, including `lwc1` at 0xda25db8, `lwc1` at 0xda25f1c.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb4, including `lwc1` at 0xda25e24, `lwc1` at 0xda25f88.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc4, including `lwc1` at 0xda25e2c, `lwc1` at 0xda25f90.
  The `lwc1` at 0xda25ff8 loads 4 bytes from a0 (arg0 at entry) +0xdd8.
  The `lwc1` at 0xda26014 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda26018 loads 4 bytes from [a0+2484] +0x4.
  The `lwc1` at 0xda26028 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda26034 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda2603c loads 4 bytes from [a0+2484] +0x8.
  The `lwc1` at 0xda26044 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda2604c stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda26058 loads 4 bytes from [a0+2484] +0xc.
  The `swc1` at 0xda26068 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `jalr` at 0xda25d4c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda25dc4 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda25e38 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda25eb0 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda25f28 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda25f9c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `bne` branch at 0xda25cec targets 0xda25d08, is taken when v0(=[a0+5984]) < 0x190b (unsigned), and falls through when v0(=[a0+5984]) >= 0x190b (unsigned).
  The `beql` branch at 0xda25cf8 targets 0xda25d34, is taken when v0(=[a0+5984]) == at(=0x8049), and falls through when v0(=[a0+5984]) != at(=0x8049); its branch-likely delay slot `lwc1 $f4,0(s1)` at 0xda25cfc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda25d00 targets 0xda25ff8 and is always taken.
  The `beql` branch at 0xda25d0c targets 0xda25ff8, is taken when t8(=[a0+5984]-6406) >= 0x5 (unsigned), and falls through when t8(=[a0+5984]-6406) < 0x5 (unsigned); its branch-likely delay slot `lwc1 $f14,8(s1)` at 0xda25d10 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda25e8c targets 0xda25ff4 and is always taken.
  The return at 0xda26084 has v0 = one of [a0+5984], ?.
  The indirect jump at 0xda25d28 uses the jump table at 0xda7b388 with targets 0xda25ff4, 0xda25e94, 0xda25e94, 0xda25d30, 0xda25d30.
- `__glTextureCTBlendLA` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2608c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2608c-0xda267b4 (1832 bytes).
  It occupies 1832 bytes.
  The `lw` at 0xda260bc loads 4 bytes from a0 (arg0 at entry) +0x9b4.
  The `lwc1` at 0xda260d0 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lw` at 0xda260d4 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda260dc, `swc1` at 0xda26300, `swc1` at 0xda26458.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda260e0, `swc1` at 0xda26298, `swc1` at 0xda263ec.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda260e4, `swc1` at 0xda2622c, `swc1` at 0xda26380.
  The `lw` at 0xda260e8 loads 4 bytes from a0 (arg0 at entry) +0x1760.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda26104, `lwc1` at 0xda261b0, `lwc1` at 0xda2653c.
  6 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda2610c, `lwc1` at 0xda26118, `lwc1` at 0xda26274.
  The `lw` at 0xda26128 loads 4 bytes from table(0xda7b39c) +0x0.
  5 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lwc1` at 0xda26138, `lwc1` at 0xda26434, `lwc1` at 0xda264c4.
  4 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb8, including `lwc1` at 0xda2613c, `lwc1` at 0xda2645c, `lwc1` at 0xda264c8.
  4 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc8, including `lwc1` at 0xda26144, `lwc1` at 0xda26464, `lwc1` at 0xda264d0.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda26150, `lw` at 0xda261d0, `lw` at 0xda26240.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1724, including `lw` at 0xda26160, `lw` at 0xda261e0, `lw` at 0xda2624c.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1764, including `lw` at 0xda26174, `lw` at 0xda261e4, `lw` at 0xda26250.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x171c, including `lw` at 0xda26178, `lw` at 0xda261e8, `lw` at 0xda26254.
  13 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda261a8, `lwc1` at 0xda26228, `lwc1` at 0xda26294.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x10, including `swc1` at 0xda261ac, `swc1` at 0xda264c0, `swc1` at 0xda26538.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xac, including `lwc1` at 0xda261b4, `lwc1` at 0xda26308, `lwc1` at 0xda26540.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xbc, including `lwc1` at 0xda261bc, `lwc1` at 0xda26310, `lwc1` at 0xda26548.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda26208, `lwc1` at 0xda2635c, `lwc1` at 0xda26594.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb0, including `lwc1` at 0xda26230, `lwc1` at 0xda26384, `lwc1` at 0xda265bc.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc0, including `lwc1` at 0xda26238, `lwc1` at 0xda2638c, `lwc1` at 0xda265c4.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb4, including `lwc1` at 0xda2629c, `lwc1` at 0xda263f0, `lwc1` at 0xda26628.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc4, including `lwc1` at 0xda262a4, `lwc1` at 0xda263f8, `lwc1` at 0xda26630.
  The `lwc1` at 0xda2670c loads 4 bytes from a0 (arg0 at entry) +0xdd8.
  The `lwc1` at 0xda2672c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda26730 loads 4 bytes from [a0+2484] +0x4.
  The `lwc1` at 0xda26740 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda2674c stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda26754 loads 4 bytes from [a0+2484] +0x8.
  The `lwc1` at 0xda2675c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda26764 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda26770 loads 4 bytes from [a0+2484] +0xc.
  The `lwc1` at 0xda2677c loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `swc1` at 0xda26788 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda2678c stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xda26154 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda261d8 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda26244 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda262b0 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda26320 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda26398 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda26404 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda26470 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda264e0 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda26564 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda265d0 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda2663c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda266ac calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `bne` branch at 0xda260f4 targets 0xda26110, is taken when v0(=[a0+5984]) < 0x190b (unsigned), and falls through when v0(=[a0+5984]) >= 0x190b (unsigned).
  The `beql` branch at 0xda26100 targets 0xda26308, is taken when v0(=[a0+5984]) == at(=0x8049), and falls through when v0(=[a0+5984]) != at(=0x8049); its branch-likely delay slot `lwc1 $f4,0(s1)` at 0xda26104 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda26108 targets 0xda2670c and is always taken.
  The `beql` branch at 0xda26114 targets 0xda2670c, is taken when t8(=[a0+5984]-6406) >= 0x5 (unsigned), and falls through when t8(=[a0+5984]-6406) < 0x5 (unsigned); its branch-likely delay slot `lwc1 $f18,8(s1)` at 0xda26118 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda262fc targets 0xda26708 and is always taken.
  The `beq` branch at 0xda264bc targets 0xda26708 and is always taken.
  The `beq` branch at 0xda26688 targets 0xda26708 and is always taken.
  The return at 0xda267ac has v0 = one of [a0+5984], ret(__GL_TEXENV_CLAMP).
  The instructions from 0xda26304 to 0xda26304 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xda26130 uses the jump table at 0xda7b39c with targets 0xda26690, 0xda2653c, 0xda264c4, 0xda261b0, 0xda26138.
- `__glTextureCTBlendRGB` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda267b4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda267b4-0xda26ba8 (1012 bytes).
  It occupies 1012 bytes.
  The `lw` at 0xda267e0 loads 4 bytes from a0 (arg0 at entry) +0x9b4.
  The `lw` at 0xda267f4 loads 4 bytes from a0 (arg0 at entry) +0x1760.
  The `lw` at 0xda267f8 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda26814, `lwc1` at 0xda2684c, `lwc1` at 0xda269b0.
  5 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda2681c, `lwc1` at 0xda2682c, `lwc1` at 0xda26918.
  The `lw` at 0xda2683c loads 4 bytes from table(0xda7b3b0) +0x0.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xac, including `lwc1` at 0xda26850, `lwc1` at 0xda269b4.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xbc, including `lwc1` at 0xda26858, `lwc1` at 0xda269bc.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda26864, `lw` at 0xda268dc, `lw` at 0xda26950.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1724, including `lw` at 0xda26874, `lw` at 0xda268e8, `lw` at 0xda2695c.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1764, including `lw` at 0xda26888, `lw` at 0xda268fc, `lw` at 0xda26970.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x171c, including `lw` at 0xda2688c, `lw` at 0xda26900, `lw` at 0xda26974.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda268a4, `lwc1` at 0xda26a08, `lwc1` at 0xda26b1c.
  6 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda268c4, `lwc1` at 0xda26938, `lwc1` at 0xda269a4.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda268c8, `swc1` at 0xda26a2c.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb0, including `lwc1` at 0xda268cc, `lwc1` at 0xda26a30.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc0, including `lwc1` at 0xda268d4, `lwc1` at 0xda26a38.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda2693c, `swc1` at 0xda26aa0.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb4, including `lwc1` at 0xda26940, `lwc1` at 0xda26aa4.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc4, including `lwc1` at 0xda26948, `lwc1` at 0xda26aac.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda269ac, `swc1` at 0xda26b0c.
  The `lwc1` at 0xda26b14 loads 4 bytes from a0 (arg0 at entry) +0xdd8.
  The `lwc1` at 0xda26b30 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda26b34 loads 4 bytes from [a0+2484] +0x4.
  The `lwc1` at 0xda26b44 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda26b50 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda26b58 loads 4 bytes from [a0+2484] +0x8.
  The `lwc1` at 0xda26b60 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda26b68 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda26b74 loads 4 bytes from [a0+2484] +0xc.
  The `swc1` at 0xda26b84 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `jalr` at 0xda26868 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda268e0 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda26954 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda269cc calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda26a44 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda26ab8 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `bne` branch at 0xda26804 targets 0xda26820, is taken when v0(=[a0+5984]) < 0x190b (unsigned), and falls through when v0(=[a0+5984]) >= 0x190b (unsigned).
  The `beql` branch at 0xda26810 targets 0xda26850, is taken when v0(=[a0+5984]) == at(=0x8049), and falls through when v0(=[a0+5984]) != at(=0x8049); its branch-likely delay slot `lwc1 $f4,0(s2)` at 0xda26814 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda26818 targets 0xda26b14 and is always taken.
  The `beql` branch at 0xda26828 targets 0xda26b14, is taken when t8(=[a0+5984]-6406) >= 0x5 (unsigned), and falls through when t8(=[a0+5984]-6406) < 0x5 (unsigned); its branch-likely delay slot `lwc1 $f14,8(s2)` at 0xda2682c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda269a8 targets 0xda26b10 and is always taken.
  The return at 0xda26ba0 has v0 = one of [a0+5984], ?.
  The indirect jump at 0xda26844 uses the jump table at 0xda7b3b0 with targets 0xda26b10, 0xda269b0, 0xda269b0, 0xda2684c, 0xda2684c.
- `__glTextureCTBlendRGBA` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda26ba8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda26ba8-0xda272c0 (1816 bytes).
  It occupies 1816 bytes.
  The `lw` at 0xda26bd8 loads 4 bytes from a0 (arg0 at entry) +0x9b4.
  The `lw` at 0xda26bec loads 4 bytes from a0 (arg0 at entry) +0x1760.
  The `lw` at 0xda26bf0 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda26c0c, `lwc1` at 0xda26cbc, `lwc1` at 0xda27048.
  6 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda26c14, `lwc1` at 0xda26c24, `lwc1` at 0xda26d80.
  The `lw` at 0xda26c34 loads 4 bytes from table(0xda7b3c4) +0x0.
  5 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lwc1` at 0xda26c44, `lwc1` at 0xda26f40, `lwc1` at 0xda26fd0.
  4 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb8, including `lwc1` at 0xda26c48, `lwc1` at 0xda26f68, `lwc1` at 0xda26fd4.
  4 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc8, including `lwc1` at 0xda26c50, `lwc1` at 0xda26f70, `lwc1` at 0xda26fdc.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda26c5c, `lw` at 0xda26cdc, `lw` at 0xda26d4c.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1724, including `lw` at 0xda26c6c, `lw` at 0xda26cec, `lw` at 0xda26d58.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1764, including `lw` at 0xda26c80, `lw` at 0xda26cf0, `lw` at 0xda26d5c.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x171c, including `lw` at 0xda26c84, `lw` at 0xda26cf4, `lw` at 0xda26d60.
  13 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda26cb4, `lwc1` at 0xda26d34, `lwc1` at 0xda26da0.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x10, including `swc1` at 0xda26cb8, `swc1` at 0xda26fcc, `swc1` at 0xda27044.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xac, including `lwc1` at 0xda26cc0, `lwc1` at 0xda26e14, `lwc1` at 0xda2704c.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xbc, including `lwc1` at 0xda26cc8, `lwc1` at 0xda26e1c, `lwc1` at 0xda27054.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda26d14, `lwc1` at 0xda26e68, `lwc1` at 0xda270a0.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda26d38, `swc1` at 0xda26e8c, `swc1` at 0xda270c4.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb0, including `lwc1` at 0xda26d3c, `lwc1` at 0xda26e90, `lwc1` at 0xda270c8.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc0, including `lwc1` at 0xda26d44, `lwc1` at 0xda26e98, `lwc1` at 0xda270d0.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda26da4, `swc1` at 0xda26ef8, `swc1` at 0xda27130.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb4, including `lwc1` at 0xda26da8, `lwc1` at 0xda26efc, `lwc1` at 0xda27134.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc4, including `lwc1` at 0xda26db0, `lwc1` at 0xda26f04, `lwc1` at 0xda2713c.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda26e0c, `swc1` at 0xda26f64, `swc1` at 0xda27198.
  The `lwc1` at 0xda27218 loads 4 bytes from a0 (arg0 at entry) +0xdd8.
  The `lwc1` at 0xda27234 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda27238 loads 4 bytes from [a0+2484] +0x4.
  The `lwc1` at 0xda27248 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda27254 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda2725c loads 4 bytes from [a0+2484] +0x8.
  The `lwc1` at 0xda27264 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda2726c stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda27278 loads 4 bytes from [a0+2484] +0xc.
  The `lwc1` at 0xda27288 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `swc1` at 0xda2728c stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda27298 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xda26c60 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda26ce4 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda26d50 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda26dbc calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda26e2c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda26ea4 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda26f10 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda26f7c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda26fec calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda27070 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda270dc calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda27148 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda271b8 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `bne` branch at 0xda26bfc targets 0xda26c18, is taken when v0(=[a0+5984]) < 0x190b (unsigned), and falls through when v0(=[a0+5984]) >= 0x190b (unsigned).
  The `beql` branch at 0xda26c08 targets 0xda26e14, is taken when v0(=[a0+5984]) == at(=0x8049), and falls through when v0(=[a0+5984]) != at(=0x8049); its branch-likely delay slot `lwc1 $f4,0(s2)` at 0xda26c0c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda26c10 targets 0xda27218 and is always taken.
  The `beql` branch at 0xda26c20 targets 0xda27218, is taken when t8(=[a0+5984]-6406) >= 0x5 (unsigned), and falls through when t8(=[a0+5984]-6406) < 0x5 (unsigned); its branch-likely delay slot `lwc1 $f14,8(s2)` at 0xda26c24 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda26e08 targets 0xda27214 and is always taken.
  The `beq` branch at 0xda26fc8 targets 0xda27214 and is always taken.
  The `beq` branch at 0xda27194 targets 0xda27214 and is always taken.
  The return at 0xda272b8 has v0 = one of [a0+5984], ret(__GL_TEXENV_CLAMP).
  The instructions from 0xda26e10 to 0xda26e10 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xda26c3c uses the jump table at 0xda7b3c4 with targets 0xda2719c, 0xda27048, 0xda26fd0, 0xda26cbc, 0xda26c44.
- `__glTextureCTBlendA` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda272c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda272c0-0xda274b4 (500 bytes).
  It occupies 500 bytes.
  The `lw` at 0xda272e4 loads 4 bytes from a0 (arg0 at entry) +0x1760.
  The `lw` at 0xda272e8 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lwc1` at 0xda2731c, `lwc1` at 0xda27398, `lwc1` at 0xda27414.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb8, including `lwc1` at 0xda27320, `lwc1` at 0xda2739c, `lwc1` at 0xda27418.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc8, including `lwc1` at 0xda27328, `lwc1` at 0xda273a4, `lwc1` at 0xda27420.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda27334, `lw` at 0xda273b0, `lw` at 0xda2742c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1724, including `lw` at 0xda27344, `lw` at 0xda273c0, `lw` at 0xda2743c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1764, including `lw` at 0xda27358, `lw` at 0xda273d4, `lw` at 0xda27450.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x171c, including `lw` at 0xda2735c, `lw` at 0xda273d8, `lw` at 0xda27454.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda2738c, `lwc1` at 0xda27408, `lwc1` at 0xda27484.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x10, including `swc1` at 0xda27394, `swc1` at 0xda27410, `swc1` at 0xda27488.
  The `lwc1` at 0xda27494 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `swc1` at 0xda2749c stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xda27338 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda273b4 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda27430 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `beq` branch at 0xda272f8 targets 0xda2731c, is taken when v0(=[a0+5984]) == at(=0x1906), and falls through when v0(=[a0+5984]) != at(=0x1906).
  The `beq` branch at 0xda27304 targets 0xda27398, is taken when v0(=[a0+5984]) == at(=0x1908), and falls through when v0(=[a0+5984]) != at(=0x1908).
  The `beq` branch at 0xda2730c targets 0xda27414, is taken when v0(=[a0+5984]) == at(=0x190a), and falls through when v0(=[a0+5984]) != at(=0x190a).
  The `bnel` branch at 0xda27314 targets 0xda27490, is taken when v0(=[a0+5984]) != at(=0x8049), and falls through when v0(=[a0+5984]) == at(=0x8049); its branch-likely delay slot `lw t2,44(sp)` at 0xda27318 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda27390 targets 0xda2748c and is always taken.
  The `beq` branch at 0xda2740c targets 0xda2748c and is always taken.
  The return at 0xda274ac has v0 = one of [a0+5984], a0+5912.
- `__glTextureCTBlendI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda274b4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda274b4-0xda27c00 (1868 bytes).
  It occupies 1868 bytes.
  The `lw` at 0xda274e4 loads 4 bytes from a0 (arg0 at entry) +0x9b4.
  The `lwc1` at 0xda274f8 loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `lw` at 0xda274fc loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  5 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x10, including `swc1` at 0xda27504, `swc1` at 0xda275d8, `swc1` at 0xda278ec.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda27508, `swc1` at 0xda2772c, `swc1` at 0xda27884.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda2750c, `swc1` at 0xda276c4, `swc1` at 0xda27818.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda27510, `swc1` at 0xda27658, `swc1` at 0xda277ac.
  The `lw` at 0xda27514 loads 4 bytes from a0 (arg0 at entry) +0x1760.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda27530, `lwc1` at 0xda275dc, `lwc1` at 0xda27968.
  7 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lwc1` at 0xda27538, `lwc1` at 0xda27544, `lwc1` at 0xda27564.
  The `lw` at 0xda27554 loads 4 bytes from table(0xda7b3d8) +0x0.
  4 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb8, including `lwc1` at 0xda27568, `lwc1` at 0xda27888, `lwc1` at 0xda278f4.
  4 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc8, including `lwc1` at 0xda27570, `lwc1` at 0xda27890, `lwc1` at 0xda278fc.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda2757c, `lw` at 0xda275fc, `lw` at 0xda2766c.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1724, including `lw` at 0xda2758c, `lw` at 0xda2760c, `lw` at 0xda27678.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1764, including `lw` at 0xda275a0, `lw` at 0xda27610, `lw` at 0xda2767c.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x171c, including `lw` at 0xda275a4, `lw` at 0xda27614, `lw` at 0xda27680.
  13 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda275d4, `lwc1` at 0xda27654, `lwc1` at 0xda276c0.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xac, including `lwc1` at 0xda275e0, `lwc1` at 0xda27734, `lwc1` at 0xda2796c.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xbc, including `lwc1` at 0xda275e8, `lwc1` at 0xda2773c, `lwc1` at 0xda27974.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda27634, `lwc1` at 0xda27788, `lwc1` at 0xda279c0.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb0, including `lwc1` at 0xda2765c, `lwc1` at 0xda277b0, `lwc1` at 0xda279e8.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc0, including `lwc1` at 0xda27664, `lwc1` at 0xda277b8, `lwc1` at 0xda279f0.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda276a0, `lwc1` at 0xda277f4, `lwc1` at 0xda27a2c.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb4, including `lwc1` at 0xda276c8, `lwc1` at 0xda2781c, `lwc1` at 0xda27a54.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc4, including `lwc1` at 0xda276d0, `lwc1` at 0xda27824, `lwc1` at 0xda27a5c.
  The `lwc1` at 0xda27b48 loads 4 bytes from a0 (arg0 at entry) +0xdd8.
  The `lwc1` at 0xda27b64 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda27b68 loads 4 bytes from [a0+2484] +0x4.
  The `lwc1` at 0xda27b78 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda27b84 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda27b8c loads 4 bytes from [a0+2484] +0x8.
  The `lwc1` at 0xda27b94 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda27ba0 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda27ba8 loads 4 bytes from [a0+2484] +0xc.
  The `lwc1` at 0xda27bb0 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `swc1` at 0xda27bb8 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lwc1` at 0xda27bcc loads 4 bytes from [a0+2484] +0x10.
  The `swc1` at 0xda27bd8 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xda27580 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda27604 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda27670 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda276dc calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda2774c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda277c4 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda27830 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda2789c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda2790c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda27990 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda279fc calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda27a68 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda27ad8 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `bne` branch at 0xda27520 targets 0xda2753c, is taken when v0(=[a0+5984]) < 0x190b (unsigned), and falls through when v0(=[a0+5984]) >= 0x190b (unsigned).
  The `beql` branch at 0xda2752c targets 0xda27734, is taken when v0(=[a0+5984]) == at(=0x8049), and falls through when v0(=[a0+5984]) != at(=0x8049); its branch-likely delay slot `lwc1 $f4,0(s1)` at 0xda27530 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda27534 targets 0xda27b38 and is always taken.
  The `beql` branch at 0xda27540 targets 0xda27b38, is taken when t8(=[a0+5984]-6406) >= 0x5 (unsigned), and falls through when t8(=[a0+5984]-6406) < 0x5 (unsigned); its branch-likely delay slot `lwc1 $f10,16(s1)` at 0xda27544 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda27728 targets 0xda27b34 and is always taken.
  The `beq` branch at 0xda278e8 targets 0xda27b34 and is always taken.
  The `beq` branch at 0xda27ab4 targets 0xda27b34 and is always taken.
  The return at 0xda27bf8 has v0 = one of [a0+5984], ret(__GL_TEXENV_CLAMP).
  The instructions from 0xda27730 to 0xda27730 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xda2755c uses the jump table at 0xda7b3d8 with targets 0xda27abc, 0xda27968, 0xda278f0, 0xda275dc, 0xda27564.
- `__glTextureCTReplaceL` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda27c00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda27c00-0xda27fb4 (948 bytes).
  It occupies 948 bytes.
  The `lwc1` at 0xda27c2c loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lw` at 0xda27c30 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda27c38, `swc1` at 0xda27df8, `swc1` at 0xda27f58.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda27c3c, `swc1` at 0xda27d88, `swc1` at 0xda27eec.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda27c40, `swc1` at 0xda27d14, `swc1` at 0xda27e78.
  The `lw` at 0xda27c44 loads 4 bytes from a0 (arg0 at entry) +0x1760.
  6 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda27c64, `lwc1` at 0xda27c6c, `lwc1` at 0xda27c78.
  The `lw` at 0xda27c88 loads 4 bytes from table(0xda7b3ec) +0x0.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xac, including `lwc1` at 0xda27c9c, `lwc1` at 0xda27e00.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xbc, including `lwc1` at 0xda27ca4, `lwc1` at 0xda27e08.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda27cb0, `lw` at 0xda27d28, `lw` at 0xda27d9c.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1724, including `lw` at 0xda27cc0, `lw` at 0xda27d34, `lw` at 0xda27da8.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1764, including `lw` at 0xda27cd4, `lw` at 0xda27d48, `lw` at 0xda27dbc.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x171c, including `lw` at 0xda27cd8, `lw` at 0xda27d4c, `lw` at 0xda27dc0.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda27cec, `lwc1` at 0xda27e50, `lwc1` at 0xda27f74.
  6 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda27d10, `lwc1` at 0xda27d84, `lwc1` at 0xda27df0.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb0, including `lwc1` at 0xda27d18, `lwc1` at 0xda27e7c.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc0, including `lwc1` at 0xda27d20, `lwc1` at 0xda27e84.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda27d60, `lwc1` at 0xda27ec4, `lwc1` at 0xda27f88.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb4, including `lwc1` at 0xda27d8c, `lwc1` at 0xda27ef0.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc4, including `lwc1` at 0xda27d94, `lwc1` at 0xda27ef8.
  The `lwc1` at 0xda27f60 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `swc1` at 0xda27f6c stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda27f70 loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `swc1` at 0xda27f80 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda27f84 loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `swc1` at 0xda27f94 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `jalr` at 0xda27cb4 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda27d2c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda27da0 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda27e18 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda27e90 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda27f04 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `bne` branch at 0xda27c54 targets 0xda27c70, is taken when v0(=[a0+5984]) < 0x190b (unsigned), and falls through when v0(=[a0+5984]) >= 0x190b (unsigned).
  The `beql` branch at 0xda27c60 targets 0xda27c9c, is taken when v0(=[a0+5984]) == at(=0x8049), and falls through when v0(=[a0+5984]) != at(=0x8049); its branch-likely delay slot `lwc1 $f4,0(s1)` at 0xda27c64 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda27c68 targets 0xda27f60 and is always taken.
  The `beql` branch at 0xda27c74 targets 0xda27f60, is taken when t6(=[a0+5984]-6406) >= 0x5 (unsigned), and falls through when t6(=[a0+5984]-6406) < 0x5 (unsigned); its branch-likely delay slot `lwc1 $f18,0(s1)` at 0xda27c78 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda27df4 targets 0xda27f5c and is always taken.
  The return at 0xda27fac has v0 = one of [a0+5984], ?.
  The indirect jump at 0xda27c90 uses the jump table at 0xda7b3ec with targets 0xda27f5c, 0xda27dfc, 0xda27dfc, 0xda27c98, 0xda27c98.
- `__glTextureCTReplaceLA` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda27fb4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda27fb4-0xda28690 (1756 bytes).
  It occupies 1756 bytes.
  The `lwc1` at 0xda27fe4 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lw` at 0xda27fe8 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda27ff0, `swc1` at 0xda28218, `swc1` at 0xda28370.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda27ff4, `swc1` at 0xda281b0, `swc1` at 0xda28304.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda27ff8, `swc1` at 0xda28144, `swc1` at 0xda28298.
  The `lw` at 0xda27ffc loads 4 bytes from a0 (arg0 at entry) +0x1760.
  6 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda2801c, `lwc1` at 0xda28024, `lwc1` at 0xda28030.
  The `lw` at 0xda28040 loads 4 bytes from table(0xda7b400) +0x0.
  5 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lwc1` at 0xda28050, `lwc1` at 0xda28344, `lwc1` at 0xda283dc.
  4 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb8, including `lwc1` at 0xda28054, `lwc1` at 0xda28374, `lwc1` at 0xda283e0.
  4 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc8, including `lwc1` at 0xda2805c, `lwc1` at 0xda2837c, `lwc1` at 0xda283e8.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda28068, `lw` at 0xda280e8, `lw` at 0xda28158.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1724, including `lw` at 0xda28078, `lw` at 0xda280f8, `lw` at 0xda28164.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1764, including `lw` at 0xda2808c, `lw` at 0xda280fc, `lw` at 0xda28168.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x171c, including `lw` at 0xda28090, `lw` at 0xda28100, `lw` at 0xda2816c.
  13 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda280c0, `lwc1` at 0xda28140, `lwc1` at 0xda281ac.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x10, including `swc1` at 0xda280c4, `swc1` at 0xda283d8, `swc1` at 0xda28450.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xac, including `lwc1` at 0xda280cc, `lwc1` at 0xda28220, `lwc1` at 0xda28458.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xbc, including `lwc1` at 0xda280d4, `lwc1` at 0xda28228, `lwc1` at 0xda28460.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda28118, `lwc1` at 0xda28268, `lwc1` at 0xda284a4.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb0, including `lwc1` at 0xda28148, `lwc1` at 0xda2829c, `lwc1` at 0xda284d4.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc0, including `lwc1` at 0xda28150, `lwc1` at 0xda282a4, `lwc1` at 0xda284dc.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda28184, `lwc1` at 0xda282d8, `lwc1` at 0xda28510.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb4, including `lwc1` at 0xda281b4, `lwc1` at 0xda28308, `lwc1` at 0xda28540.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc4, including `lwc1` at 0xda281bc, `lwc1` at 0xda28310, `lwc1` at 0xda28548.
  The `lwc1` at 0xda28624 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `swc1` at 0xda28630 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda28634 loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `swc1` at 0xda28644 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda28648 loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `swc1` at 0xda28658 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lwc1` at 0xda2865c loads 4 bytes from a0 (arg0 at entry) +0x7880.
  The `swc1` at 0xda2866c stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xda2806c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda280f0 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda2815c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda281c8 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda28238 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda282b0 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda2831c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda28388 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda283f8 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda2847c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda284e8 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda28554 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda285c4 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `bne` branch at 0xda2800c targets 0xda28028, is taken when v0(=[a0+5984]) < 0x190b (unsigned), and falls through when v0(=[a0+5984]) >= 0x190b (unsigned).
  The `beql` branch at 0xda28018 targets 0xda28220, is taken when v0(=[a0+5984]) == at(=0x8049), and falls through when v0(=[a0+5984]) != at(=0x8049); its branch-likely delay slot `lwc1 $f18,0(s1)` at 0xda2801c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda28020 targets 0xda28624 and is always taken.
  The `beql` branch at 0xda2802c targets 0xda28624, is taken when t6(=[a0+5984]-6406) >= 0x5 (unsigned), and falls through when t6(=[a0+5984]-6406) < 0x5 (unsigned); its branch-likely delay slot `lwc1 $f16,0(s1)` at 0xda28030 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda28214 targets 0xda28620 and is always taken.
  The `beq` branch at 0xda283d4 targets 0xda28620 and is always taken.
  The `beq` branch at 0xda285a0 targets 0xda28620 and is always taken.
  The return at 0xda28688 has v0 = one of [a0+5984], ret(__GL_TEXENV_CLAMP).
  The instructions from 0xda2821c to 0xda2821c are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xda28048 uses the jump table at 0xda7b400 with targets 0xda285a8, 0xda28454, 0xda283dc, 0xda280c8, 0xda28050.
- `__glTextureCTReplaceRGB` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda28690 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda28690-0xda28a34 (932 bytes).
  It occupies 932 bytes.
  The `lw` at 0xda286bc loads 4 bytes from a0 (arg0 at entry) +0x1760.
  The `lw` at 0xda286c0 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  6 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda286e0, `lwc1` at 0xda286e8, `lwc1` at 0xda286f8.
  The `lw` at 0xda28708 loads 4 bytes from table(0xda7b414) +0x0.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xac, including `lwc1` at 0xda2871c, `lwc1` at 0xda28880.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xbc, including `lwc1` at 0xda28724, `lwc1` at 0xda28888.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda28730, `lw` at 0xda287a8, `lw` at 0xda2881c.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1724, including `lw` at 0xda28740, `lw` at 0xda287b4, `lw` at 0xda28828.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1764, including `lw` at 0xda28754, `lw` at 0xda287c8, `lw` at 0xda2883c.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x171c, including `lw` at 0xda28758, `lw` at 0xda287cc, `lw` at 0xda28840.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda2876c, `lwc1` at 0xda288d0, `lwc1` at 0xda289f4.
  6 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda28790, `lwc1` at 0xda28804, `lwc1` at 0xda28870.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda28794, `swc1` at 0xda288f8.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb0, including `lwc1` at 0xda28798, `lwc1` at 0xda288fc.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc0, including `lwc1` at 0xda287a0, `lwc1` at 0xda28904.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda287e0, `lwc1` at 0xda28944, `lwc1` at 0xda28a08.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda28808, `swc1` at 0xda2896c.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb4, including `lwc1` at 0xda2880c, `lwc1` at 0xda28970.
  2 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc4, including `lwc1` at 0xda28814, `lwc1` at 0xda28978.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda28878, `swc1` at 0xda289d8.
  The `lwc1` at 0xda289e0 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `swc1` at 0xda289ec stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda289f0 loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `swc1` at 0xda28a00 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda28a04 loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `swc1` at 0xda28a14 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `jalr` at 0xda28734 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda287ac calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda28820 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda28898 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda28910 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda28984 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `bne` branch at 0xda286d0 targets 0xda286ec, is taken when v0(=[a0+5984]) < 0x190b (unsigned), and falls through when v0(=[a0+5984]) >= 0x190b (unsigned).
  The `beql` branch at 0xda286dc targets 0xda2871c, is taken when v0(=[a0+5984]) == at(=0x8049), and falls through when v0(=[a0+5984]) != at(=0x8049); its branch-likely delay slot `lwc1 $f4,0(s2)` at 0xda286e0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda286e4 targets 0xda289e0 and is always taken.
  The `beql` branch at 0xda286f4 targets 0xda289e0, is taken when t6(=[a0+5984]-6406) >= 0x5 (unsigned), and falls through when t6(=[a0+5984]-6406) < 0x5 (unsigned); its branch-likely delay slot `lwc1 $f18,0(s2)` at 0xda286f8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda28874 targets 0xda289dc and is always taken.
  The return at 0xda28a2c has v0 = one of [a0+5984], ?.
  The indirect jump at 0xda28710 uses the jump table at 0xda7b414 with targets 0xda289dc, 0xda2887c, 0xda2887c, 0xda28718, 0xda28718.
- `__glTextureCTReplaceRGBA` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda28a34 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda28a34-0xda29100 (1740 bytes).
  It occupies 1740 bytes.
  The `lw` at 0xda28a64 loads 4 bytes from a0 (arg0 at entry) +0x1760.
  The `lw` at 0xda28a68 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  6 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda28a88, `lwc1` at 0xda28a90, `lwc1` at 0xda28aa0.
  The `lw` at 0xda28ab0 loads 4 bytes from table(0xda7b428) +0x0.
  5 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lwc1` at 0xda28ac0, `lwc1` at 0xda28db4, `lwc1` at 0xda28e4c.
  4 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb8, including `lwc1` at 0xda28ac4, `lwc1` at 0xda28de4, `lwc1` at 0xda28e50.
  4 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc8, including `lwc1` at 0xda28acc, `lwc1` at 0xda28dec, `lwc1` at 0xda28e58.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda28ad8, `lw` at 0xda28b58, `lw` at 0xda28bc8.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1724, including `lw` at 0xda28ae8, `lw` at 0xda28b68, `lw` at 0xda28bd4.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1764, including `lw` at 0xda28afc, `lw` at 0xda28b6c, `lw` at 0xda28bd8.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x171c, including `lw` at 0xda28b00, `lw` at 0xda28b70, `lw` at 0xda28bdc.
  13 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda28b30, `lwc1` at 0xda28bb0, `lwc1` at 0xda28c1c.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x10, including `swc1` at 0xda28b34, `swc1` at 0xda28e48, `swc1` at 0xda28ec0.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xac, including `lwc1` at 0xda28b3c, `lwc1` at 0xda28c90, `lwc1` at 0xda28ec8.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xbc, including `lwc1` at 0xda28b44, `lwc1` at 0xda28c98, `lwc1` at 0xda28ed0.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda28b88, `lwc1` at 0xda28cd8, `lwc1` at 0xda28f14.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda28bb4, `swc1` at 0xda28d08, `swc1` at 0xda28f40.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb0, including `lwc1` at 0xda28bb8, `lwc1` at 0xda28d0c, `lwc1` at 0xda28f44.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc0, including `lwc1` at 0xda28bc0, `lwc1` at 0xda28d14, `lwc1` at 0xda28f4c.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda28bf4, `lwc1` at 0xda28d48, `lwc1` at 0xda28f80.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda28c20, `swc1` at 0xda28d74, `swc1` at 0xda28fac.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb4, including `lwc1` at 0xda28c24, `lwc1` at 0xda28d78, `lwc1` at 0xda28fb0.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc4, including `lwc1` at 0xda28c2c, `lwc1` at 0xda28d80, `lwc1` at 0xda28fb8.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda28c88, `swc1` at 0xda28de0, `swc1` at 0xda29014.
  The `lwc1` at 0xda29094 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `swc1` at 0xda290a0 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda290a4 loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `swc1` at 0xda290b4 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda290b8 loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `swc1` at 0xda290c8 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lwc1` at 0xda290cc loads 4 bytes from a0 (arg0 at entry) +0x7880.
  The `swc1` at 0xda290dc stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xda28adc calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda28b60 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda28bcc calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda28c38 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda28ca8 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda28d20 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda28d8c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda28df8 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda28e68 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda28eec calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda28f58 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda28fc4 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda29034 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `bne` branch at 0xda28a78 targets 0xda28a94, is taken when v0(=[a0+5984]) < 0x190b (unsigned), and falls through when v0(=[a0+5984]) >= 0x190b (unsigned).
  The `beql` branch at 0xda28a84 targets 0xda28c90, is taken when v0(=[a0+5984]) == at(=0x8049), and falls through when v0(=[a0+5984]) != at(=0x8049); its branch-likely delay slot `lwc1 $f18,0(s2)` at 0xda28a88 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda28a8c targets 0xda29094 and is always taken.
  The `beql` branch at 0xda28a9c targets 0xda29094, is taken when t6(=[a0+5984]-6406) >= 0x5 (unsigned), and falls through when t6(=[a0+5984]-6406) < 0x5 (unsigned); its branch-likely delay slot `lwc1 $f16,0(s2)` at 0xda28aa0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda28c84 targets 0xda29090 and is always taken.
  The `beq` branch at 0xda28e44 targets 0xda29090 and is always taken.
  The `beq` branch at 0xda29010 targets 0xda29090 and is always taken.
  The return at 0xda290f8 has v0 = one of [a0+5984], ret(__GL_TEXENV_CLAMP).
  The instructions from 0xda28c8c to 0xda28c8c are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xda28ab8 uses the jump table at 0xda7b428 with targets 0xda29018, 0xda28ec4, 0xda28e4c, 0xda28b38, 0xda28ac0.
- `__glTextureCTReplaceA` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda29100 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda29100-0xda292f4 (500 bytes).
  It occupies 500 bytes.
  The `lw` at 0xda29124 loads 4 bytes from a0 (arg0 at entry) +0x1760.
  The `lw` at 0xda29128 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  5 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lwc1` at 0xda29158, `lwc1` at 0xda2915c, `lwc1` at 0xda291d8.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb8, including `lwc1` at 0xda29160, `lwc1` at 0xda291dc, `lwc1` at 0xda29258.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc8, including `lwc1` at 0xda29168, `lwc1` at 0xda291e4, `lwc1` at 0xda29260.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda29174, `lw` at 0xda291f0, `lw` at 0xda2926c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1724, including `lw` at 0xda29184, `lw` at 0xda29200, `lw` at 0xda2927c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1764, including `lw` at 0xda29198, `lw` at 0xda29214, `lw` at 0xda29290.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x171c, including `lw` at 0xda2919c, `lw` at 0xda29218, `lw` at 0xda29294.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda291cc, `lwc1` at 0xda29248, `lwc1` at 0xda292c4.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x10, including `swc1` at 0xda291d4, `swc1` at 0xda29250, `swc1` at 0xda292c8.
  The `lwc1` at 0xda292d0 loads 4 bytes from a0 (arg0 at entry) +0x7880.
  The `swc1` at 0xda292dc stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xda29178 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda291f4 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda29270 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `beq` branch at 0xda29138 targets 0xda2915c, is taken when v0(=[a0+5984]) == at(=0x1906), and falls through when v0(=[a0+5984]) != at(=0x1906).
  The `beq` branch at 0xda29144 targets 0xda291d8, is taken when v0(=[a0+5984]) == at(=0x1908), and falls through when v0(=[a0+5984]) != at(=0x1908).
  The `beq` branch at 0xda2914c targets 0xda29254, is taken when v0(=[a0+5984]) == at(=0x190a), and falls through when v0(=[a0+5984]) != at(=0x190a).
  The `bnel` branch at 0xda29154 targets 0xda292d0, is taken when v0(=[a0+5984]) != at(=0x8049), and falls through when v0(=[a0+5984]) == at(=0x8049); its branch-likely delay slot `lwc1 $f8,16(s1)` at 0xda29158 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda291d0 targets 0xda292cc and is always taken.
  The `beq` branch at 0xda2924c targets 0xda292cc and is always taken.
  The return at 0xda292ec has v0 = one of [a0+5984], a0+5912.
- `__glTextureCTReplaceI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda292f4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda292f4-0xda299d4 (1760 bytes).
  It occupies 1760 bytes.
  The `lwc1` at 0xda29324 loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `lw` at 0xda29328 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  5 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x10, including `swc1` at 0xda29330, `swc1` at 0xda29408, `swc1` at 0xda2971c.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda29334, `swc1` at 0xda2955c, `swc1` at 0xda296b4.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda29338, `swc1` at 0xda294f4, `swc1` at 0xda29648.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda2933c, `swc1` at 0xda29488, `swc1` at 0xda295dc.
  The `lw` at 0xda29340 loads 4 bytes from a0 (arg0 at entry) +0x1760.
  6 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda29360, `lwc1` at 0xda29368, `lwc1` at 0xda29374.
  The `lw` at 0xda29384 loads 4 bytes from table(0xda7b43c) +0x0.
  5 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lwc1` at 0xda29394, `lwc1` at 0xda29688, `lwc1` at 0xda29720.
  4 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb8, including `lwc1` at 0xda29398, `lwc1` at 0xda296b8, `lwc1` at 0xda29724.
  4 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc8, including `lwc1` at 0xda293a0, `lwc1` at 0xda296c0, `lwc1` at 0xda2972c.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lw` at 0xda293ac, `lw` at 0xda2942c, `lw` at 0xda2949c.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1724, including `lw` at 0xda293bc, `lw` at 0xda2943c, `lw` at 0xda294a8.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1764, including `lw` at 0xda293d0, `lw` at 0xda29440, `lw` at 0xda294ac.
  13 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x171c, including `lw` at 0xda293d4, `lw` at 0xda29444, `lw` at 0xda294b0.
  13 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda29404, `lwc1` at 0xda29484, `lwc1` at 0xda294f0.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xac, including `lwc1` at 0xda29410, `lwc1` at 0xda29564, `lwc1` at 0xda2979c.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xbc, including `lwc1` at 0xda29418, `lwc1` at 0xda2956c, `lwc1` at 0xda297a4.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda2945c, `lwc1` at 0xda295ac, `lwc1` at 0xda297e8.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb0, including `lwc1` at 0xda2948c, `lwc1` at 0xda295e0, `lwc1` at 0xda29818.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc0, including `lwc1` at 0xda29494, `lwc1` at 0xda295e8, `lwc1` at 0xda29820.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda294c8, `lwc1` at 0xda2961c, `lwc1` at 0xda29854.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xb4, including `lwc1` at 0xda294f8, `lwc1` at 0xda2964c, `lwc1` at 0xda29884.
  3 such `lwc1` accesses load 4 bytes from [a0+28264] +0xc4, including `lwc1` at 0xda29500, `lwc1` at 0xda29654, `lwc1` at 0xda2988c.
  The `lwc1` at 0xda29968 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `swc1` at 0xda29974 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda29978 loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `swc1` at 0xda29988 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda2998c loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `swc1` at 0xda2999c stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lwc1` at 0xda299a0 loads 4 bytes from a0 (arg0 at entry) +0x7880.
  The `swc1` at 0xda299b0 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xda293b0 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda29434 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda294a0 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda2950c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda2957c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda295f4 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda29660 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda296cc calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda2973c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `jalr` at 0xda297c0 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda2982c calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda29898 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=?, a1=?, a2=[a0+3544], a3=?.
  The `jalr` at 0xda29908 calls __GL_TEXENV_CLAMP [0xda21c20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3544], a3=a3 at entry (arg3).
  The `bne` branch at 0xda29350 targets 0xda2936c, is taken when v0(=[a0+5984]) < 0x190b (unsigned), and falls through when v0(=[a0+5984]) >= 0x190b (unsigned).
  The `beql` branch at 0xda2935c targets 0xda29564, is taken when v0(=[a0+5984]) == at(=0x8049), and falls through when v0(=[a0+5984]) != at(=0x8049); its branch-likely delay slot `lwc1 $f18,0(s1)` at 0xda29360 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda29364 targets 0xda29968 and is always taken.
  The `beql` branch at 0xda29370 targets 0xda29968, is taken when t6(=[a0+5984]-6406) >= 0x5 (unsigned), and falls through when t6(=[a0+5984]-6406) < 0x5 (unsigned); its branch-likely delay slot `lwc1 $f16,0(s1)` at 0xda29374 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda29558 targets 0xda29964 and is always taken.
  The `beq` branch at 0xda29718 targets 0xda29964 and is always taken.
  The `beq` branch at 0xda298e4 targets 0xda29964 and is always taken.
  The return at 0xda299cc has v0 = one of [a0+5984], ret(__GL_TEXENV_CLAMP).
  The instructions from 0xda29560 to 0xda29560 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xda2938c uses the jump table at 0xda7b43c with targets 0xda298ec, 0xda29798, 0xda29720, 0xda2940c, 0xda29394.
- `__glNopPolygonRho` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda299d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda299d4-0xda299f8 (36 bytes).
  It occupies 36 bytes.
  The return at 0xda299f0 has v0 = ?.
- `__glNopLineRho` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda29bec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda29bec-0xda29c10 (36 bytes).
  It occupies 36 bytes.
  The return at 0xda29c08 has v0 = ?.
- `__glInitTexSubImageStore` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2aae0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2aae0-0xda2ab90 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0xda2ab00 loads 4 bytes from a2 (arg2 at entry) +0xe4.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda2ab34, `lw` at 0xda2ab4c, `lw` at 0xda2ab5c.
  The `sw` at 0xda2ab44 stores 4 bytes to a1 (arg1 at entry) +0x80.
  The `sw` at 0xda2ab54 stores 4 bytes to a1 (arg1 at entry) +0x84.
  The `sw` at 0xda2ab64 stores 4 bytes to a1 (arg1 at entry) +0x88.
  The `sw` at 0xda2ab6c stores 4 bytes to a1 (arg1 at entry) +0x8c.
  The `sw` at 0xda2ab74 stores 4 bytes to a1 (arg1 at entry) +0x90.
  The `lw` at 0xda2ab78 loads 4 bytes from a2 (arg2 at entry) +0xe8.
  The `sw` at 0xda2ab7c stores 4 bytes to a1 (arg1 at entry) +0x1b0.
  The `jalr` at 0xda2ab20 calls __glInitTexImageStore [0xda1c3e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda2ab88 has v0 = ?.
- `__glCheckTexSubImage1DArgs` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2ac04 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2ac04-0xda2acf0 (236 bytes).
  It occupies 236 bytes.
  The `lw` at 0xda2ac60 loads 4 bytes from ret(CheckTexSubImageArgs) +0xe4.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda2ac80, `lw` at 0xda2acb4.
  The `jalr` at 0xda2ac40 calls CheckTexSubImageArgs [0xda2a858] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xda2ac9c calls __glSetError [0xd9d1af8] with a0=0x502, a1=?, a2=a3 at entry (arg3), a3=?.
  The `jalr` at 0xda2acc0 calls CheckTexSubImageRange [0xda2ab90] with a0=a0 at entry (arg0), a1=?, a2=a3 at entry (arg3), a3=?.
  The `bne` branch at 0xda2ac4c targets 0xda2ac5c, is taken when v0(=ret(CheckTexSubImageArgs)) != 0, and falls through when v0(=ret(CheckTexSubImageArgs)) == 0.
  The `beq` branch at 0xda2ac54 targets 0xda2ace0 and is always taken.
  The `bne` branch at 0xda2ac8c targets 0xda2acb0, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0xda2aca8 targets 0xda2ace0 and is always taken.
  The `bne` branch at 0xda2accc targets 0xda2acdc, is taken when v0(=ret(CheckTexSubImageRange)) != 0, and falls through when v0(=ret(CheckTexSubImageRange)) == 0.
  The `beq` branch at 0xda2acd4 targets 0xda2ace0 and is always taken.
  The return at 0xda2ace8 has v0 = one of 0x0, ret(CheckTexSubImageArgs).
- `__glCheckTexSubImage2DArgs` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2acf0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2acf0-0xda2ae0c (284 bytes).
  It occupies 284 bytes.
  The `lw` at 0xda2ad4c loads 4 bytes from ret(CheckTexSubImageArgs) +0xe4.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda2ad6c, `lw` at 0xda2ada0, `lw` at 0xda2adcc.
  The `jalr` at 0xda2ad2c calls CheckTexSubImageArgs [0xda2a858] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xda2ad88 calls __glSetError [0xd9d1af8] with a0=0x502, a1=?, a2=a3 at entry (arg3), a3=?.
  The `jalr` at 0xda2adac calls CheckTexSubImageRange [0xda2ab90] with a0=a0 at entry (arg0), a1=?, a2=a3 at entry (arg3), a3=?.
  The `jalr` at 0xda2ade0 calls CheckTexSubImageRange [0xda2ab90] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xda2ad38 targets 0xda2ad48, is taken when v0(=ret(CheckTexSubImageArgs)) != 0, and falls through when v0(=ret(CheckTexSubImageArgs)) == 0.
  The `beq` branch at 0xda2ad40 targets 0xda2adfc and is always taken.
  The `bne` branch at 0xda2ad78 targets 0xda2ad9c, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0xda2ad94 targets 0xda2adfc and is always taken.
  The `bne` branch at 0xda2adb8 targets 0xda2adc8, is taken when v0(=ret(CheckTexSubImageRange)) != 0, and falls through when v0(=ret(CheckTexSubImageRange)) == 0.
  The `beq` branch at 0xda2adc0 targets 0xda2adfc and is always taken.
  The `bne` branch at 0xda2ade8 targets 0xda2adf8, is taken when v0(=ret(CheckTexSubImageRange)) != 0, and falls through when v0(=ret(CheckTexSubImageRange)) == 0.
  The `beq` branch at 0xda2adf0 targets 0xda2adfc and is always taken.
  The return at 0xda2ae04 has v0 = one of 0x0, ret(CheckTexSubImageArgs).
- `__glCheckTexSubImage3DArgs` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2ae0c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2ae0c-0xda2af60 (340 bytes).
  It occupies 340 bytes.
  The `lw` at 0xda2ae68 loads 4 bytes from ret(CheckTexSubImageArgs) +0xe4.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda2ae88, `lw` at 0xda2aebc, `lw` at 0xda2aee8.
  The `jalr` at 0xda2ae48 calls CheckTexSubImageArgs [0xda2a858] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xda2aea4 calls __glSetError [0xd9d1af8] with a0=0x502, a1=?, a2=a3 at entry (arg3), a3=?.
  The `jalr` at 0xda2aec8 calls CheckTexSubImageRange [0xda2ab90] with a0=a0 at entry (arg0), a1=?, a2=a3 at entry (arg3), a3=?.
  The `jalr` at 0xda2af00 calls CheckTexSubImageRange [0xda2ab90] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xda2af34 calls CheckTexSubImageRange [0xda2ab90] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xda2ae54 targets 0xda2ae64, is taken when v0(=ret(CheckTexSubImageArgs)) != 0, and falls through when v0(=ret(CheckTexSubImageArgs)) == 0.
  The `beq` branch at 0xda2ae5c targets 0xda2af50 and is always taken.
  The `bne` branch at 0xda2ae94 targets 0xda2aeb8, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0xda2aeb0 targets 0xda2af50 and is always taken.
  The `bne` branch at 0xda2aed4 targets 0xda2aee4, is taken when v0(=ret(CheckTexSubImageRange)) != 0, and falls through when v0(=ret(CheckTexSubImageRange)) == 0.
  The `beq` branch at 0xda2aedc targets 0xda2af50 and is always taken.
  The `bne` branch at 0xda2af0c targets 0xda2af1c, is taken when v0(=ret(CheckTexSubImageRange)) != 0, and falls through when v0(=ret(CheckTexSubImageRange)) == 0.
  The `beq` branch at 0xda2af14 targets 0xda2af50 and is always taken.
  The `bne` branch at 0xda2af3c targets 0xda2af4c, is taken when v0(=ret(CheckTexSubImageRange)) != 0, and falls through when v0(=ret(CheckTexSubImageRange)) == 0.
  The `beq` branch at 0xda2af44 targets 0xda2af50 and is always taken.
  The return at 0xda2af58 has v0 = one of 0x0, ret(CheckTexSubImageArgs).
- `__glCheckCopyTexSubImageArgs` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2af60 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2af60-0xda2b0b4 (340 bytes).
  It occupies 340 bytes.
  The `lw` at 0xda2afbc loads 4 bytes from ret(CheckTexSubImageArgs) +0xe4.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda2afdc, `lw` at 0xda2b010, `lw` at 0xda2b03c.
  The `jalr` at 0xda2af9c calls CheckTexSubImageArgs [0xda2a858] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1908.
  The `jalr` at 0xda2aff8 calls __glSetError [0xd9d1af8] with a0=0x502, a1=?, a2=a3 at entry (arg3), a3=?.
  The `jalr` at 0xda2b01c calls CheckTexSubImageRange [0xda2ab90] with a0=a0 at entry (arg0), a1=?, a2=a3 at entry (arg3), a3=?.
  The `jalr` at 0xda2b054 calls CheckTexSubImageRange [0xda2ab90] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xda2b088 calls CheckTexSubImageRange [0xda2ab90] with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `bne` branch at 0xda2afa8 targets 0xda2afb8, is taken when v0(=ret(CheckTexSubImageArgs)) != 0, and falls through when v0(=ret(CheckTexSubImageArgs)) == 0.
  The `beq` branch at 0xda2afb0 targets 0xda2b0a4 and is always taken.
  The `bne` branch at 0xda2afe8 targets 0xda2b00c, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0xda2b004 targets 0xda2b0a4 and is always taken.
  The `bne` branch at 0xda2b028 targets 0xda2b038, is taken when v0(=ret(CheckTexSubImageRange)) != 0, and falls through when v0(=ret(CheckTexSubImageRange)) == 0.
  The `beq` branch at 0xda2b030 targets 0xda2b0a4 and is always taken.
  The `bne` branch at 0xda2b060 targets 0xda2b070, is taken when v0(=ret(CheckTexSubImageRange)) != 0, and falls through when v0(=ret(CheckTexSubImageRange)) == 0.
  The `beq` branch at 0xda2b068 targets 0xda2b0a4 and is always taken.
  The `bne` branch at 0xda2b090 targets 0xda2b0a0, is taken when v0(=ret(CheckTexSubImageRange)) != 0, and falls through when v0(=ret(CheckTexSubImageRange)) == 0.
  The `beq` branch at 0xda2b098 targets 0xda2b0a4 and is always taken.
  The return at 0xda2b0ac has v0 = one of 0x0, ret(CheckTexSubImageArgs).
- `__gllei_TexSubImage1DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2b240 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2b240-0xda2b3c4 (388 bytes).
  It occupies 388 bytes.
  The `lw` at 0xda2b268 loads 4 bytes from a0 (arg0 at entry) +0xc80.
  The `lw` at 0xda2b284 loads 4 bytes from a0 (arg0 at entry) +0x2e40.
  The `sw` at 0xda2b298 stores 4 bytes to a0 (arg0 at entry) +0xc80.
  The `lw` at 0xda2b398 loads 4 bytes from ret(__glCheckTexSubImage1DArgs) +0xf8.
  The `jalr` at 0xda2b288 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2b2a4 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2b2dc calls __glCheckTexSubImage1DArgs [0xda2ac04] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2b328 calls __glInitTexSourceUnpack [0xda1c6b8] with a0=a0 at entry (arg0), a1=sp-504, a2=?, a3=0x1.
  The `jalr` at 0xda2b354 calls __glInitTexSubImageStore [0xda2aae0] with a0=a0 at entry (arg0), a1=sp-504, a2=ret(__glCheckTexSubImage1DArgs), a3=a2 at entry (arg2).
  The `jalr` at 0xda2b36c calls __glInitUnpacker [0xd9af410] with a0=a0 at entry (arg0), a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xda2b384 calls __glInitPacker [0xd99e2a0] with a0=a0 at entry (arg0), a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xda2b3a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-504, a2=ret(__glCheckTexSubImage1DArgs), a3=a2 at entry (arg2).
  The `beq` branch at 0xda2b274 targets 0xda2b2b4, is taken when v0(=[a0+3200]) == 0, and falls through when v0(=[a0+3200]) != 0.
  The `bne` branch at 0xda2b27c targets 0xda2b29c, is taken when v0(=[a0+3200]) != at(=0x2), and falls through when v0(=[a0+3200]) == at(=0x2).
  The `beq` branch at 0xda2b294 targets 0xda2b2b4 and is always taken.
  The `beq` branch at 0xda2b2ac targets 0xda2b3b0 and is always taken.
  The `beq` branch at 0xda2b2e8 targets 0xda2b3b0, is taken when v0(=ret(__glCheckTexSubImage1DArgs)) == 0, and falls through when v0(=ret(__glCheckTexSubImage1DArgs)) != 0.
  The return at 0xda2b3bc has v0 = one of ret(__glSetError), ret(__glCheckTexSubImage1DArgs), ret(?).
- `__gllei_TexSubImage2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2b564 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2b564-0xda2b6fc (408 bytes).
  It occupies 408 bytes.
  The `lw` at 0xda2b58c loads 4 bytes from a0 (arg0 at entry) +0xc80.
  The `lw` at 0xda2b5a8 loads 4 bytes from a0 (arg0 at entry) +0x2e40.
  The `sw` at 0xda2b5bc stores 4 bytes to a0 (arg0 at entry) +0xc80.
  The `lw` at 0xda2b6d0 loads 4 bytes from ret(__glCheckTexSubImage2DArgs) +0xf8.
  The `jalr` at 0xda2b5ac calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2b5c8 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2b610 calls __glCheckTexSubImage2DArgs [0xda2acf0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2b65c calls __glInitTexSourceUnpack [0xda1c6b8] with a0=a0 at entry (arg0), a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xda2b68c calls __glInitTexSubImageStore [0xda2aae0] with a0=a0 at entry (arg0), a1=sp-504, a2=ret(__glCheckTexSubImage2DArgs), a3=a2 at entry (arg2).
  The `jalr` at 0xda2b6a4 calls __glInitUnpacker [0xd9af410] with a0=a0 at entry (arg0), a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xda2b6bc calls __glInitPacker [0xd99e2a0] with a0=a0 at entry (arg0), a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xda2b6dc calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-504, a2=ret(__glCheckTexSubImage2DArgs), a3=a2 at entry (arg2).
  The `beq` branch at 0xda2b598 targets 0xda2b5d8, is taken when v0(=[a0+3200]) == 0, and falls through when v0(=[a0+3200]) != 0.
  The `bne` branch at 0xda2b5a0 targets 0xda2b5c0, is taken when v0(=[a0+3200]) != at(=0x2), and falls through when v0(=[a0+3200]) == at(=0x2).
  The `beq` branch at 0xda2b5b8 targets 0xda2b5d8 and is always taken.
  The `beq` branch at 0xda2b5d0 targets 0xda2b6e8 and is always taken.
  The `beq` branch at 0xda2b61c targets 0xda2b6e8, is taken when v0(=ret(__glCheckTexSubImage2DArgs)) == 0, and falls through when v0(=ret(__glCheckTexSubImage2DArgs)) != 0.
  The return at 0xda2b6f4 has v0 = one of ret(__glSetError), ret(__glCheckTexSubImage2DArgs), ret(?).
- `__gllei_TexSubImage3DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2b8b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2b8b0-0xda2ba5c (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xda2b8d8 loads 4 bytes from a0 (arg0 at entry) +0xc80.
  The `lw` at 0xda2b8f4 loads 4 bytes from a0 (arg0 at entry) +0x2e40.
  The `sw` at 0xda2b908 stores 4 bytes to a0 (arg0 at entry) +0xc80.
  The `lw` at 0xda2ba30 loads 4 bytes from ret(__glCheckTexSubImage3DArgs) +0xf8.
  The `jalr` at 0xda2b8f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2b914 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2b96c calls __glCheckTexSubImage3DArgs [0xda2ae0c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2b9b8 calls __glInitTexSourceUnpack [0xda1c6b8] with a0=a0 at entry (arg0), a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xda2b9ec calls __glInitTexSubImageStore [0xda2aae0] with a0=a0 at entry (arg0), a1=sp-504, a2=ret(__glCheckTexSubImage3DArgs), a3=a2 at entry (arg2).
  The `jalr` at 0xda2ba04 calls __glInitUnpacker3D [0xd9af628] with a0=a0 at entry (arg0), a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xda2ba1c calls __glInitPacker3D [0xd99e4b4] with a0=a0 at entry (arg0), a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xda2ba3c calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-504, a2=ret(__glCheckTexSubImage3DArgs), a3=a2 at entry (arg2).
  The `beq` branch at 0xda2b8e4 targets 0xda2b924, is taken when v0(=[a0+3200]) == 0, and falls through when v0(=[a0+3200]) != 0.
  The `bne` branch at 0xda2b8ec targets 0xda2b90c, is taken when v0(=[a0+3200]) != at(=0x2), and falls through when v0(=[a0+3200]) == at(=0x2).
  The `beq` branch at 0xda2b904 targets 0xda2b924 and is always taken.
  The `beq` branch at 0xda2b91c targets 0xda2ba48 and is always taken.
  The `beq` branch at 0xda2b978 targets 0xda2ba48, is taken when v0(=ret(__glCheckTexSubImage3DArgs)) == 0, and falls through when v0(=ret(__glCheckTexSubImage3DArgs)) != 0.
  The return at 0xda2ba54 has v0 = one of ret(__glSetError), ret(__glCheckTexSubImage3DArgs), ret(?).
- `__glEmptyFreeTexObj` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2ba5c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2ba5c-0xda2ba68 (12 bytes).
  It occupies 12 bytes.
  The return at 0xda2ba60 has v0 = ?.
- `__glFreeTexObj` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2ba68 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2ba68-0xda2bb3c (212 bytes).
  It occupies 212 bytes.
  The `lw` at 0xda2ba94 loads 4 bytes from a0 (arg0 at entry) +0xe94.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xf4, including `lw` at 0xda2babc, `lw` at 0xda2baec, `lw` at 0xda2baf8.
  The `lw` at 0xda2bac4 loads 4 bytes from ?.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0xda2bad0, `lw` at 0xda2baf0, `lw` at 0xda2bb04.
  The `jalr` at 0xda2bad8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xda2bafc calls (unknown callee) with a0=a0 at entry (arg0), a1=[a1+244], a2=?, a3=?.
  The `jalr` at 0xda2bb10 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `blez` branch at 0xda2baa0 targets 0xda2baf0, is taken when s2(=[a0+3732]) <= 0 (signed), and falls through when s2(=[a0+3732]) > 0 (signed).
  The `beql` branch at 0xda2bac8 targets 0xda2bae8, is taken when a1(?) == 0, and falls through when a1(?) != 0; its branch-likely delay slot `addiu s0,s0,100` at 0xda2bacc runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda2bae8 targets 0xda2bac0, is taken when s0(?) != s3(?), and falls through when s0(?) == s3(?); its branch-likely delay slot `lw t6,244(s4)` at 0xda2baec runs only when taken and is annulled on fall-through.
  The return at 0xda2bb34 has v0 = ret(?).
- `__glDisposeTexObj` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2bb3c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2bb3c-0xda2bb84 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda2bb54 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `sw` at 0xda2bb60 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0xda2bb64 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `jalr` at 0xda2bb68 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda2bb5c targets 0xda2bb74, is taken when t7(=[a1]-1) != 0, and falls through when t7(=[a1]-1) == 0.
  The return at 0xda2bb7c has v0 = one of ?, ret(?).
- `__glTextureRGB_F_F_Span` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2d230 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2d230-0xda2e060 (3632 bytes).
  It occupies 3632 bytes.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd4, including `lwc1` at 0xda2d284, `lwc1` at 0xda2d924, `lwc1` at 0xda2d9a0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9b4, including `lw` at 0xda2d294, `lw` at 0xda2df64.
  The `lw` at 0xda2d2a0 loads 4 bytes from [a0+2484] +0x0.
  The `lw` at 0xda2d2a8 loads 4 bytes from a0 (arg0 at entry) +0x7738.
  The `lw` at 0xda2d2ac loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  The `lw` at 0xda2d2b0 loads 4 bytes from a0 (arg0 at entry) +0x7660.
  The `lwc1` at 0xda2d2b8 loads 4 bytes from a0 (arg0 at entry) +0x7648.
  The `lwc1` at 0xda2d2c8 loads 4 bytes from a0 (arg0 at entry) +0x764c.
  The `lwc1` at 0xda2d2d4 loads 4 bytes from a0 (arg0 at entry) +0x7654.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lwc1` at 0xda2d318, `lwc1` at 0xda2df5c, `lwc1` at 0xda2df8c.
  The `lw` at 0xda2d338 loads 4 bytes from [a0+28264] +0xe4.
  2 such `lw` accesses load 4 bytes from [[a0+28264]+228] +0x18, including `lw` at 0xda2d33c, `lw` at 0xda2d674.
  2 such `lw` accesses load 4 bytes from [[a0+28264]+228] +0x14, including `lw` at 0xda2d340, `lw` at 0xda2d3a8.
  The `lw` at 0xda2d344 loads 4 bytes from [[a0+28264]+228] +0x2c.
  The `lw` at 0xda2d348 loads 4 bytes from [[a0+28264]+228] +0x0.
  The `lw` at 0xda2d354 loads 4 bytes from [a0+28264] +0x4.
  The `lwc1` at 0xda2d358 loads 4 bytes from [[a0+28264]+228] +0x20.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda2d3f0, `sw` at 0xda2d424, `sw` at 0xda2d6bc.
  2 such `lw` accesses load 4 bytes from [a0+28264] +0x8, including `lw` at 0xda2d60c, `lw` at 0xda2d620.
  The `lwc1` at 0xda2d630 loads 4 bytes from [[a0+28264]+228] +0x24.
  61 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda2d950, `lwc1` at 0xda2d960, `lwc1` at 0xda2d970.
  13 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda2da44, `swc1` at 0xda2da4c, `swc1` at 0xda2da50.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda2dc40, `lw` at 0xda2ddf4, `lw` at 0xda2de10.
  The `lwc1` at 0xda2de60 loads 4 bytes from [a0+28264] +0x9c.
  The `lwc1` at 0xda2de64 loads 4 bytes from [a0+28264] +0xa0.
  The `lwc1` at 0xda2de6c loads 4 bytes from [a0+28264] +0xa4.
  The `lwc1` at 0xda2df30 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `lwc1` at 0xda2df3c loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `lwc1` at 0xda2df48 loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `lwc1` at 0xda2df70 loads 4 bytes from [a0+2484] +0x4.
  The `lwc1` at 0xda2df94 loads 4 bytes from [a0+2484] +0x8.
  The `lwc1` at 0xda2dfb4 loads 4 bytes from [a0+2484] +0xc.
  The `lwc1` at 0xda2dfd4 loads 4 bytes from a0 (arg0 at entry) +0x76e4.
  The `lwc1` at 0xda2dfec loads 4 bytes from a0 (arg0 at entry) +0x76e8.
  The `lwc1` at 0xda2dffc loads 4 bytes from a0 (arg0 at entry) +0x76f0.
  The `jalr` at 0xda2d3c8 calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2d400 calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2d58c calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2d694 calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2d6cc calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2d85c calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2d908 calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2d984 calls floor with a0=?, a1=?, a2=?, a3=?.
  The `bltz` branch at 0xda2d2d8 targets 0xda2e014, is taken when v0(=[a0+30304]-1) < 0 (signed), and falls through when v0(=[a0+30304]-1) >= 0 (signed).
  The `bnel` branch at 0xda2d360 targets 0xda2d448, is taken when t9(=[[a0+28264]+4]) != at(=0x2901), and falls through when t9(=[[a0+28264]+4]) == at(=0x2901); its branch-likely delay slot `lwc1 $f4,472(sp)` at 0xda2d364 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda2d3a0 targets 0xda2d3f4, is taken when not (f2 < f24 (c.lt.s at 0xda2d398)), and falls through when f2 < f24 (c.lt.s at 0xda2d398).
  The `beq` branch at 0xda2d3ec targets 0xda2d428 and is always taken.
  The `bne` branch at 0xda2d42c targets 0xda2d388, is taken when s0(?) != s5(=0x3), and falls through when s0(?) == s5(=0x3).
  The `beq` branch at 0xda2d43c targets 0xda2d620 and is always taken.
  The `bc1tl` branch at 0xda2d468 targets 0xda2d490, is taken when f26 < f30 (c.lt.d at 0xda2d460), and falls through when not (f26 < f30 (c.lt.d at 0xda2d460)); its branch-likely delay slot `lui at,0x4000` at 0xda2d46c runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda2d488 targets 0xda2d578, is taken when not (f4 < f10 (c.lt.d at 0xda2d480)), and falls through when f4 < f10 (c.lt.d at 0xda2d480).
  The `bc1fl` branch at 0xda2d4ac targets 0xda2d4c0, is taken when not (f2 < f8 (c.lt.d at 0xda2d4a4)), and falls through when f2 < f8 (c.lt.d at 0xda2d4a4); its branch-likely delay slot `add.d $f12,$f26,$f30` at 0xda2d4b0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2d4b4 targets 0xda2d578 and is always taken.
  The `bc1fl` branch at 0xda2d4d4 targets 0xda2d4e8, is taken when not (f12 < f4 (c.lt.d at 0xda2d4cc)), and falls through when f12 < f4 (c.lt.d at 0xda2d4cc); its branch-likely delay slot `c.lt.s $f20,$f24` at 0xda2d4d8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2d4dc targets 0xda2d578 and is always taken.
  The `bc1fl` branch at 0xda2d4ec targets 0xda2d500, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `c.lt.d $f26,$f30` at 0xda2d4f0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2d4f4 targets 0xda2d578 and is always taken.
  The `bc1fl` branch at 0xda2d504 targets 0xda2d518, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.d $f10,$f26,$f30` at 0xda2d508 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2d50c targets 0xda2d578 and is always taken.
  The `bc1fl` branch at 0xda2d524 targets 0xda2d538, is taken when not (f0 < f10 (c.lt.d at 0xda2d51c)), and falls through when f0 < f10 (c.lt.d at 0xda2d51c); its branch-likely delay slot `c.lt.s $f28,$f20` at 0xda2d528 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2d52c targets 0xda2d578 and is always taken.
  The `bc1fl` branch at 0xda2d53c targets 0xda2d550, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `c.lt.d $f0,$f12` at 0xda2d540 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2d544 targets 0xda2d578 and is always taken.
  The `bc1fl` branch at 0xda2d554 targets 0xda2d568, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `c.lt.d $f0,$f2` at 0xda2d558 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2d55c targets 0xda2d578 and is always taken.
  The `bc1f` branch at 0xda2d56c targets 0xda2d578, is taken when (condition not analyzed), and falls through when (condition not analyzed).
  The `bc1fl` branch at 0xda2d5c4 targets 0xda2d5d4, is taken when not (f8 < f24 (c.lt.s at 0xda2d5bc)), and falls through when f8 < f24 (c.lt.s at 0xda2d5bc); its branch-likely delay slot `c.lt.s $f28,$f10` at 0xda2d5c8 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda2d5d8 targets 0xda2d5f0, is taken when not (f28 < f10 (c.lt.s at 0xda2d5d0)), and falls through when f28 < f10 (c.lt.s at 0xda2d5d0); its branch-likely delay slot `addiu v1,a0,1` at 0xda2d5dc runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda2d608 targets 0xda2d624, is taken when not (f28 < f4 (c.lt.s at 0xda2d600)), and falls through when f28 < f4 (c.lt.s at 0xda2d600); its branch-likely delay slot `lw t5,8(s4)` at 0xda2d60c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda2d62c targets 0xda2d714, is taken when t5(=[[a0+28264]+8]) != at(=0x2901), and falls through when t5(=[[a0+28264]+8]) == at(=0x2901).
  The `bc1f` branch at 0xda2d66c targets 0xda2d6c0, is taken when not (f2 < f24 (c.lt.s at 0xda2d664)), and falls through when f2 < f24 (c.lt.s at 0xda2d664).
  The `beq` branch at 0xda2d6b8 targets 0xda2d6f4 and is always taken.
  The `bne` branch at 0xda2d6f8 targets 0xda2d654, is taken when s0(?) != s5(=0x3), and falls through when s0(?) == s5(=0x3).
  The `beq` branch at 0xda2d70c targets 0xda2d8fc and is always taken.
  The `bc1tl` branch at 0xda2d73c targets 0xda2d764, is taken when f22 < f30 (c.lt.d at 0xda2d734), and falls through when not (f22 < f30 (c.lt.d at 0xda2d734)); its branch-likely delay slot `lui at,0x4000` at 0xda2d740 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda2d75c targets 0xda2d84c, is taken when not (f8 < f10 (c.lt.d at 0xda2d754)), and falls through when f8 < f10 (c.lt.d at 0xda2d754).
  The `bc1fl` branch at 0xda2d780 targets 0xda2d794, is taken when not (f2 < f4 (c.lt.d at 0xda2d778)), and falls through when f2 < f4 (c.lt.d at 0xda2d778); its branch-likely delay slot `add.d $f12,$f22,$f30` at 0xda2d784 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2d788 targets 0xda2d84c and is always taken.
  The `bc1fl` branch at 0xda2d7a8 targets 0xda2d7bc, is taken when not (f12 < f8 (c.lt.d at 0xda2d7a0)), and falls through when f12 < f8 (c.lt.d at 0xda2d7a0); its branch-likely delay slot `c.lt.s $f20,$f24` at 0xda2d7ac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2d7b0 targets 0xda2d84c and is always taken.
  The `bc1fl` branch at 0xda2d7c0 targets 0xda2d7d4, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `c.lt.d $f22,$f30` at 0xda2d7c4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2d7c8 targets 0xda2d84c and is always taken.
  The `bc1fl` branch at 0xda2d7d8 targets 0xda2d7ec, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.d $f10,$f22,$f30` at 0xda2d7dc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2d7e0 targets 0xda2d84c and is always taken.
  The `bc1fl` branch at 0xda2d7f8 targets 0xda2d80c, is taken when not (f0 < f10 (c.lt.d at 0xda2d7f0)), and falls through when f0 < f10 (c.lt.d at 0xda2d7f0); its branch-likely delay slot `c.lt.s $f14,$f20` at 0xda2d7fc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2d800 targets 0xda2d84c and is always taken.
  The `bc1fl` branch at 0xda2d810 targets 0xda2d824, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `c.lt.d $f0,$f12` at 0xda2d814 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2d818 targets 0xda2d84c and is always taken.
  The `bc1fl` branch at 0xda2d828 targets 0xda2d83c, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `c.lt.d $f0,$f2` at 0xda2d82c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2d830 targets 0xda2d84c and is always taken.
  The `bc1f` branch at 0xda2d840 targets 0xda2d84c, is taken when (condition not analyzed), and falls through when (condition not analyzed).
  The `bc1fl` branch at 0xda2d8a0 targets 0xda2d8b0, is taken when not (f8 < f24 (c.lt.s at 0xda2d898)), and falls through when f8 < f24 (c.lt.s at 0xda2d898); its branch-likely delay slot `c.lt.s $f14,$f6` at 0xda2d8a4 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda2d8b4 targets 0xda2d8cc, is taken when not (f14 < f6 (c.lt.s at 0xda2d8ac)), and falls through when f14 < f6 (c.lt.s at 0xda2d8ac); its branch-likely delay slot `addiu v1,a0,1` at 0xda2d8b8 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda2d8e4 targets 0xda2d8fc, is taken when not (f14 < f10 (c.lt.s at 0xda2d8dc)), and falls through when f14 < f10 (c.lt.s at 0xda2d8dc).
  The `bne` branch at 0xda2da54 targets 0xda2da1c, is taken when s0(?) < 0x4 (signed), and falls through when s0(?) >= 0x4 (signed).
  The `bne` branch at 0xda2da64 targets 0xda2db80, is taken when v0(=one of 0x0, 0x1, 0x2) != 0, and falls through when v0(=one of 0x0, 0x1, 0x2) == 0.
  The `bne` branch at 0xda2da6c targets 0xda2db80, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0xda2da74 targets 0xda2db80, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bgez` branch at 0xda2dae8 targets 0xda2dafc, is taken when s0(?) >= 0 (signed), and falls through when s0(?) < 0 (signed).
  The `beq` branch at 0xda2daf0 targets 0xda2dafc, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `bnel` branch at 0xda2dafc targets 0xda2db10, is taken when s5(=0x3) != t5(?), and falls through when s5(=0x3) == t5(?); its branch-likely delay slot `lwc1 $f0,4(v1)` at 0xda2db00 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xda2db4c targets 0xda2db60, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `beq` branch at 0xda2db54 targets 0xda2db60, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `bne` branch at 0xda2db60 targets 0xda2db70, is taken when s5(=0x3) != t4(?), and falls through when s5(=0x3) == t4(?).
  The `bne` branch at 0xda2db70 targets 0xda2dab0, is taken when s0(?) != a1(=0x10), and falls through when s0(?) == a1(=0x10).
  The `beq` branch at 0xda2db78 targets 0xda2decc and is always taken.
  The `bne` branch at 0xda2db80 targets 0xda2dde4, is taken when v0(=one of 0x0, 0x1, 0x2) != at(=0x2), and falls through when v0(=one of 0x0, 0x1, 0x2) == at(=0x2).
  The `beq` branch at 0xda2dbac targets 0xda2dcd0 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0xda2dcc8 targets 0xda2dbb4, is taken when s0(?) != t3(=0x3), and falls through when s0(?) == t3(=0x3).
  The `beq` branch at 0xda2dddc targets 0xda2decc and is always taken.
  The `bne` branch at 0xda2de38 targets 0xda2de58, is taken when (t6(?) & t1(?)) != 0, and falls through when (t6(?) & t1(?)) == 0.
  The `beq` branch at 0xda2de50 targets 0xda2de88, is taken when (t7(?) & t2(?)) == 0, and falls through when (t7(?) & t2(?)) != 0.
  The `beq` branch at 0xda2de80 targets 0xda2deb4 and is always taken.
  The `bne` branch at 0xda2deb4 targets 0xda2de10, is taken when a1(?) != t3(=0x4), and falls through when a1(?) == t3(=0x4).
  The `bne` branch at 0xda2dec0 targets 0xda2ddf4, is taken when s0(?) != t3(=0x4), and falls through when s0(?) == t3(=0x4).
  The `bne` branch at 0xda2ded4 targets 0xda2df04, is taken when a2(=[[a0+2484]]) != at(=0x2100), and falls through when a2(=[[a0+2484]]) == at(=0x2100).
  The `beq` branch at 0xda2defc targets 0xda2dfc8 and is always taken.
  The `bne` branch at 0xda2df0c targets 0xda2df1c, is taken when v0(?) < 0x1 (unsigned), and falls through when v0(?) >= 0x1 (unsigned).
  The `beq` branch at 0xda2df20 targets 0xda2df5c, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0xda2df54 targets 0xda2dfc8 and is always taken.
  The `bgez` branch at 0xda2e00c targets 0xda2d30c, is taken when a0(?) >= 0 (signed), and falls through when a0(?) < 0 (signed).
  The return at 0xda2e058 has v0 = 0x0.
  The instructions from 0xda2d444 to 0xda2d444 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2d4bc to 0xda2d4bc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2d4e4 to 0xda2d4e4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2d4fc to 0xda2d4fc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2d514 to 0xda2d514 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2d534 to 0xda2d534 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2d54c to 0xda2d54c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2d564 to 0xda2d564 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2d790 to 0xda2d790 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2d7b8 to 0xda2d7b8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2d7d0 to 0xda2d7d0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2d7e8 to 0xda2d7e8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2d808 to 0xda2d808 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2d820 to 0xda2d820 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2d838 to 0xda2d838 are not reached by any path from the entry, and their branches are not listed.
- `__glTextureRGB_F_F_StippledSpan` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2e060 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2e060-0xda2ef80 (3872 bytes).
  It occupies 3872 bytes.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd4, including `lwc1` at 0xda2e0b4, `lwc1` at 0xda2e814, `lwc1` at 0xda2e890.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9b4, including `lw` at 0xda2e0c4, `lw` at 0xda2ee74.
  The `lw` at 0xda2e0cc loads 4 bytes from [a0+2484] +0x0.
  The `lw` at 0xda2e0d4 loads 4 bytes from a0 (arg0 at entry) +0x7660.
  The `lw` at 0xda2e0d8 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  The `lw` at 0xda2e0e0 loads 4 bytes from a0 (arg0 at entry) +0x7740.
  The `lw` at 0xda2e0e4 loads 4 bytes from a0 (arg0 at entry) +0x7738.
  The `lwc1` at 0xda2e0ec loads 4 bytes from a0 (arg0 at entry) +0x7648.
  The `lwc1` at 0xda2e0f4 loads 4 bytes from a0 (arg0 at entry) +0x764c.
  The `lwc1` at 0xda2e0fc loads 4 bytes from a0 (arg0 at entry) +0x7654.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda2e138, `lw` at 0xda2eb34, `lw` at 0xda2ece8.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lwc1` at 0xda2e170, `lwc1` at 0xda2ee6c, `lwc1` at 0xda2ee9c.
  The `lw` at 0xda2e1a8 loads 4 bytes from [a0+28264] +0xe4.
  2 such `lw` accesses load 4 bytes from [[a0+28264]+228] +0x18, including `lw` at 0xda2e1b0, `lw` at 0xda2e540.
  2 such `lw` accesses load 4 bytes from [[a0+28264]+228] +0x14, including `lw` at 0xda2e1b4, `lw` at 0xda2e254.
  The `lw` at 0xda2e1b8 loads 4 bytes from [[a0+28264]+228] +0x2c.
  The `lw` at 0xda2e1bc loads 4 bytes from [[a0+28264]+228] +0x0.
  The `lwc1` at 0xda2e1c8 loads 4 bytes from [[a0+28264]+228] +0x20.
  The `lw` at 0xda2e1dc loads 4 bytes from [a0+28264] +0x4.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda2e248, `sw` at 0xda2e29c, `sw` at 0xda2e2d0.
  2 such `lw` accesses load 4 bytes from [a0+28264] +0x8, including `lw` at 0xda2e4d8, `lw` at 0xda2e4ec.
  The `lwc1` at 0xda2e4fc loads 4 bytes from [[a0+28264]+228] +0x24.
  61 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda2e840, `lwc1` at 0xda2e850, `lwc1` at 0xda2e860.
  13 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda2e938, `swc1` at 0xda2e940, `swc1` at 0xda2e944.
  The `lwc1` at 0xda2ed54 loads 4 bytes from [a0+28264] +0x9c.
  The `lwc1` at 0xda2ed58 loads 4 bytes from [a0+28264] +0xa0.
  The `lwc1` at 0xda2ed60 loads 4 bytes from [a0+28264] +0xa4.
  The `lwc1` at 0xda2ee34 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `lwc1` at 0xda2ee40 loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `lwc1` at 0xda2ee4c loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `lwc1` at 0xda2ee80 loads 4 bytes from [a0+2484] +0x4.
  The `lwc1` at 0xda2eea4 loads 4 bytes from [a0+2484] +0x8.
  The `lwc1` at 0xda2eec4 loads 4 bytes from [a0+2484] +0xc.
  The `lwc1` at 0xda2eeec loads 4 bytes from a0 (arg0 at entry) +0x76e4.
  The `lwc1` at 0xda2ef08 loads 4 bytes from a0 (arg0 at entry) +0x76e8.
  The `lwc1` at 0xda2ef18 loads 4 bytes from a0 (arg0 at entry) +0x76f0.
  The `jalr` at 0xda2e220 calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2e274 calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2e2ac calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2e458 calls __glFloor [0xda6cc80] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xda2e560 calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2e598 calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2e74c calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2e7f8 calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2e874 calls floor with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xda2e100 targets 0xda2ef34, is taken when t8(=[a0+30304]) == 0, and falls through when t8(=[a0+30304]) != 0.
  The `bnel` branch at 0xda2e120 targets 0xda2e130, is taken when v0(?) < 0x21 (signed), and falls through when v0(?) >= 0x21 (signed); its branch-likely delay slot `lw t8,480(sp)` at 0xda2e124 runs only when taken and is annulled on fall-through.
  The `bltz` branch at 0xda2e148 targets 0xda2ef28, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beql` branch at 0xda2e158 targets 0xda2eeec, is taken when (t5(?) & v1(?)) == 0, and falls through when (t5(?) & v1(?)) != 0; its branch-likely delay slot `lwc1 $f4,476(sp)` at 0xda2e15c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda2e1e4 targets 0xda2e2f4, is taken when t7(=[[a0+28264]+4]) != at(=0x2901), and falls through when t7(=[[a0+28264]+4]) == at(=0x2901); its branch-likely delay slot `lwc1 $f8,476(sp)` at 0xda2e1e8 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda2e244 targets 0xda2e2a0, is taken when not (f24 < f28 (c.lt.s at 0xda2e234)), and falls through when f24 < f28 (c.lt.s at 0xda2e234).
  The `beq` branch at 0xda2e298 targets 0xda2e2d4 and is always taken.
  The `bne` branch at 0xda2e2d8 targets 0xda2e204, is taken when s0(?) != s6(=0x3), and falls through when s0(?) == s6(=0x3).
  The `beq` branch at 0xda2e2e8 targets 0xda2e4ec and is always taken.
  The `bc1tl` branch at 0xda2e320 targets 0xda2e348, is taken when f24 < f10 (c.lt.d at 0xda2e318), and falls through when not (f24 < f10 (c.lt.d at 0xda2e318)); its branch-likely delay slot `lui at,0x4000` at 0xda2e324 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda2e340 targets 0xda2e44c, is taken when not (f4 < f8 (c.lt.d at 0xda2e338)), and falls through when f4 < f8 (c.lt.d at 0xda2e338).
  The `bc1fl` branch at 0xda2e368 targets 0xda2e37c, is taken when not (f2 < f6 (c.lt.d at 0xda2e360)), and falls through when f2 < f6 (c.lt.d at 0xda2e360); its branch-likely delay slot `mtc1 at,$f5` at 0xda2e36c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2e370 targets 0xda2e44c and is always taken.
  The `bc1fl` branch at 0xda2e394 targets 0xda2e3a8, is taken when not (f12 < f8 (c.lt.d at 0xda2e38c)), and falls through when f12 < f8 (c.lt.d at 0xda2e38c); its branch-likely delay slot `c.lt.s $f26,$f28` at 0xda2e398 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2e39c targets 0xda2e44c and is always taken.
  The `bc1fl` branch at 0xda2e3ac targets 0xda2e3c0, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `mtc1 at,$f11` at 0xda2e3b0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2e3b4 targets 0xda2e44c and is always taken.
  The `bc1fl` branch at 0xda2e3d0 targets 0xda2e3e4, is taken when not (f24 < f10 (c.lt.d at 0xda2e3c8)), and falls through when f24 < f10 (c.lt.d at 0xda2e3c8); its branch-likely delay slot `mtc1 at,$f7` at 0xda2e3d4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2e3d8 targets 0xda2e44c and is always taken.
  The `bc1fl` branch at 0xda2e3f8 targets 0xda2e40c, is taken when not (f0 < f4 (c.lt.d at 0xda2e3f0)), and falls through when f0 < f4 (c.lt.d at 0xda2e3f0); its branch-likely delay slot `c.lt.s $f30,$f26` at 0xda2e3fc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2e400 targets 0xda2e44c and is always taken.
  The `bc1fl` branch at 0xda2e410 targets 0xda2e424, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `c.lt.d $f0,$f12` at 0xda2e414 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2e418 targets 0xda2e44c and is always taken.
  The `bc1fl` branch at 0xda2e428 targets 0xda2e43c, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `c.lt.d $f0,$f2` at 0xda2e42c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2e430 targets 0xda2e44c and is always taken.
  The `bc1f` branch at 0xda2e440 targets 0xda2e44c, is taken when (condition not analyzed), and falls through when (condition not analyzed).
  The `bc1fl` branch at 0xda2e490 targets 0xda2e4a0, is taken when not (f10 < f28 (c.lt.s at 0xda2e488)), and falls through when f10 < f28 (c.lt.s at 0xda2e488); its branch-likely delay slot `c.lt.s $f30,$f4` at 0xda2e494 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda2e4a4 targets 0xda2e4bc, is taken when not (f30 < f4 (c.lt.s at 0xda2e49c)), and falls through when f30 < f4 (c.lt.s at 0xda2e49c); its branch-likely delay slot `addiu v1,a0,1` at 0xda2e4a8 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda2e4d4 targets 0xda2e4f0, is taken when not (f30 < f6 (c.lt.s at 0xda2e4cc)), and falls through when f30 < f6 (c.lt.s at 0xda2e4cc); its branch-likely delay slot `lw t6,8(s5)` at 0xda2e4d8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda2e4f8 targets 0xda2e5e0, is taken when t6(=[[a0+28264]+8]) != at(=0x2901), and falls through when t6(=[[a0+28264]+8]) == at(=0x2901).
  The `bc1f` branch at 0xda2e538 targets 0xda2e58c, is taken when not (f0 < f28 (c.lt.s at 0xda2e530)), and falls through when f0 < f28 (c.lt.s at 0xda2e530).
  The `beq` branch at 0xda2e584 targets 0xda2e5c0 and is always taken.
  The `bne` branch at 0xda2e5c4 targets 0xda2e520, is taken when s0(?) != s6(=0x3), and falls through when s0(?) == s6(=0x3).
  The `beq` branch at 0xda2e5d8 targets 0xda2e7ec and is always taken.
  The `bc1tl` branch at 0xda2e614 targets 0xda2e63c, is taken when f20 < f10 (c.lt.d at 0xda2e60c), and falls through when not (f20 < f10 (c.lt.d at 0xda2e60c)); its branch-likely delay slot `lui at,0x4000` at 0xda2e618 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda2e634 targets 0xda2e740, is taken when not (f6 < f8 (c.lt.d at 0xda2e62c)), and falls through when f6 < f8 (c.lt.d at 0xda2e62c).
  The `bc1fl` branch at 0xda2e65c targets 0xda2e670, is taken when not (f2 < f4 (c.lt.d at 0xda2e654)), and falls through when f2 < f4 (c.lt.d at 0xda2e654); its branch-likely delay slot `mtc1 at,$f7` at 0xda2e660 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2e664 targets 0xda2e740 and is always taken.
  The `bc1fl` branch at 0xda2e688 targets 0xda2e69c, is taken when not (f12 < f8 (c.lt.d at 0xda2e680)), and falls through when f12 < f8 (c.lt.d at 0xda2e680); its branch-likely delay slot `c.lt.s $f22,$f28` at 0xda2e68c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2e690 targets 0xda2e740 and is always taken.
  The `bc1fl` branch at 0xda2e6a0 targets 0xda2e6b4, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `mtc1 at,$f11` at 0xda2e6a4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2e6a8 targets 0xda2e740 and is always taken.
  The `bc1fl` branch at 0xda2e6c4 targets 0xda2e6d8, is taken when not (f20 < f10 (c.lt.d at 0xda2e6bc)), and falls through when f20 < f10 (c.lt.d at 0xda2e6bc); its branch-likely delay slot `mtc1 at,$f5` at 0xda2e6c8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2e6cc targets 0xda2e740 and is always taken.
  The `bc1fl` branch at 0xda2e6ec targets 0xda2e700, is taken when not (f0 < f6 (c.lt.d at 0xda2e6e4)), and falls through when f0 < f6 (c.lt.d at 0xda2e6e4); its branch-likely delay slot `c.lt.s $f26,$f22` at 0xda2e6f0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2e6f4 targets 0xda2e740 and is always taken.
  The `bc1fl` branch at 0xda2e704 targets 0xda2e718, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `c.lt.d $f0,$f12` at 0xda2e708 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2e70c targets 0xda2e740 and is always taken.
  The `bc1fl` branch at 0xda2e71c targets 0xda2e730, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `c.lt.d $f0,$f2` at 0xda2e720 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2e724 targets 0xda2e740 and is always taken.
  The `bc1f` branch at 0xda2e734 targets 0xda2e740, is taken when (condition not analyzed), and falls through when (condition not analyzed).
  The `bc1fl` branch at 0xda2e790 targets 0xda2e7a0, is taken when not (f4 < f28 (c.lt.s at 0xda2e788)), and falls through when f4 < f28 (c.lt.s at 0xda2e788); its branch-likely delay slot `c.lt.s $f26,$f8` at 0xda2e794 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda2e7a4 targets 0xda2e7bc, is taken when not (f26 < f8 (c.lt.s at 0xda2e79c)), and falls through when f26 < f8 (c.lt.s at 0xda2e79c); its branch-likely delay slot `addiu v1,a0,1` at 0xda2e7a8 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda2e7d4 targets 0xda2e7ec, is taken when not (f26 < f6 (c.lt.s at 0xda2e7cc)), and falls through when f26 < f6 (c.lt.s at 0xda2e7cc).
  The `bne` branch at 0xda2e948 targets 0xda2e910, is taken when s0(?) < 0x4 (signed), and falls through when s0(?) >= 0x4 (signed).
  The `bne` branch at 0xda2e958 targets 0xda2ea74, is taken when v0(=one of 0x0, 0x1, 0x2) != 0, and falls through when v0(=one of 0x0, 0x1, 0x2) == 0.
  The `bne` branch at 0xda2e960 targets 0xda2ea74, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0xda2e968 targets 0xda2ea74, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bgez` branch at 0xda2e9d4 targets 0xda2e9e8, is taken when s0(?) >= 0 (signed), and falls through when s0(?) < 0 (signed).
  The `beq` branch at 0xda2e9dc targets 0xda2e9e8, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `bnel` branch at 0xda2e9e8 targets 0xda2ea04, is taken when s6(=0x3) != t7(?), and falls through when s6(=0x3) == t7(?); its branch-likely delay slot `lwc1 $f0,4(v1)` at 0xda2e9ec runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xda2ea3c targets 0xda2ea50, is taken when t6(?) >= 0 (signed), and falls through when t6(?) < 0 (signed).
  The `beq` branch at 0xda2ea44 targets 0xda2ea50, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `bne` branch at 0xda2ea50 targets 0xda2ea64, is taken when s6(=0x3) != t4(?), and falls through when s6(=0x3) == t4(?).
  The `bne` branch at 0xda2ea64 targets 0xda2e9a4, is taken when s0(?) != a0(=0x10), and falls through when s0(?) == a0(=0x10).
  The `beq` branch at 0xda2ea6c targets 0xda2edc0 and is always taken.
  The `bne` branch at 0xda2ea74 targets 0xda2ecd8, is taken when v0(=one of 0x0, 0x1, 0x2) != at(=0x2), and falls through when v0(=one of 0x0, 0x1, 0x2) == at(=0x2).
  The `beq` branch at 0xda2eaa0 targets 0xda2ebc4 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0xda2ebbc targets 0xda2eaa8, is taken when s0(?) != t3(=0x3), and falls through when s0(?) == t3(=0x3).
  The `beq` branch at 0xda2ecd0 targets 0xda2edc0 and is always taken.
  The `bne` branch at 0xda2ed30 targets 0xda2ed4c, is taken when (t9(?) & t1(?)) != 0, and falls through when (t9(?) & t1(?)) == 0.
  The `beq` branch at 0xda2ed44 targets 0xda2ed7c, is taken when (t8(?) & t2(?)) == 0, and falls through when (t8(?) & t2(?)) != 0.
  The `beq` branch at 0xda2ed74 targets 0xda2eda8 and is always taken.
  The `bne` branch at 0xda2eda8 targets 0xda2ed04, is taken when a1(?) != t3(=0x4), and falls through when a1(?) == t3(=0x4).
  The `bne` branch at 0xda2edb4 targets 0xda2ece8, is taken when s0(?) != t3(=0x4), and falls through when s0(?) == t3(=0x4).
  The `bne` branch at 0xda2edc4 targets 0xda2ee08, is taken when a1(=[[a0+2484]]) != at(=0x2100), and falls through when a1(=[[a0+2484]]) == at(=0x2100).
  The `beq` branch at 0xda2ee00 targets 0xda2eee8 and is always taken.
  The `bne` branch at 0xda2ee10 targets 0xda2ee20, is taken when v0(?) < 0x1 (unsigned), and falls through when v0(?) >= 0x1 (unsigned).
  The `beq` branch at 0xda2ee24 targets 0xda2ee6c, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0xda2ee64 targets 0xda2eee8 and is always taken.
  The `bgez` branch at 0xda2ef20 targets 0xda2e150, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `bnel` branch at 0xda2ef2c targets 0xda2e114, is taken when t6(?) != 0, and falls through when t6(?) == 0; its branch-likely delay slot `lw v0,464(sp)` at 0xda2ef30 runs only when taken and is annulled on fall-through.
  The return at 0xda2ef78 has v0 = 0x0.
  The instructions from 0xda2e2f0 to 0xda2e2f0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2e378 to 0xda2e378 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2e3a4 to 0xda2e3a4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2e3bc to 0xda2e3bc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2e3e0 to 0xda2e3e0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2e408 to 0xda2e408 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2e420 to 0xda2e420 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2e438 to 0xda2e438 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2e66c to 0xda2e66c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2e698 to 0xda2e698 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2e6b0 to 0xda2e6b0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2e6d4 to 0xda2e6d4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2e6fc to 0xda2e6fc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2e714 to 0xda2e714 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2e72c to 0xda2e72c are not reached by any path from the entry, and their branches are not listed.
- `__glTextureRGB_F_LML_Span` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2ef80 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2ef80-0xda30cf4 (7540 bytes).
  It occupies 7540 bytes.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd4, including `lwc1` at 0xda2efd4, `lwc1` at 0xda2f6a4, `lwc1` at 0xda2f720.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9b4, including `lw` at 0xda2efe4, `lw` at 0xda30be8.
  The `lw` at 0xda2efec loads 4 bytes from [a0+2484] +0x0.
  The `lw` at 0xda2eff4 loads 4 bytes from a0 (arg0 at entry) +0x7660.
  The `lw` at 0xda2eff8 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  The `lw` at 0xda2f000 loads 4 bytes from a0 (arg0 at entry) +0x7738.
  The `lwc1` at 0xda2f00c loads 4 bytes from a0 (arg0 at entry) +0x7648.
  The `lwc1` at 0xda2f014 loads 4 bytes from a0 (arg0 at entry) +0x764c.
  The `lwc1` at 0xda2f01c loads 4 bytes from a0 (arg0 at entry) +0x7654.
  The `lwc1` at 0xda2f024 loads 4 bytes from a0 (arg0 at entry) +0x7658.
  7 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lwc1` at 0xda2f048, `lwc1` at 0xda2ff10, `lwc1` at 0xda30318.
  The `lwc1` at 0xda2f04c loads 4 bytes from [a0+28264] +0xf0.
  4 such `lw` accesses load 4 bytes from [a0+28264] +0xe4, including `lw` at 0xda2f078, `lw` at 0xda2fd24, `lw` at 0xda3010c.
  2 such `lw` accesses load 4 bytes from [[a0+28264]+228] +0x18, including `lw` at 0xda2f084, `lw` at 0xda2f3e0.
  2 such `lw` accesses load 4 bytes from [[a0+28264]+228] +0x14, including `lw` at 0xda2f08c, `lw` at 0xda2f108.
  The `lw` at 0xda2f090 loads 4 bytes from [[a0+28264]+228] +0x2c.
  The `lw` at 0xda2f094 loads 4 bytes from [[a0+28264]+228] +0x0.
  The `lwc1` at 0xda2f0a0 loads 4 bytes from [[a0+28264]+228] +0x20.
  4 such `lw` accesses load 4 bytes from [a0+28264] +0x4, including `lw` at 0xda2f0b0, `lw` at 0xda2fd54, `lw` at 0xda30140.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda2f150, `sw` at 0xda2f184, `sw` at 0xda2f428.
  5 such `lw` accesses load 4 bytes from [a0+28264] +0x8, including `lw` at 0xda2f378, `lw` at 0xda2f38c, `lw` at 0xda2fe20.
  The `lwc1` at 0xda2f39c loads 4 bytes from [[a0+28264]+228] +0x24.
  127 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda2f6d0, `lwc1` at 0xda2f6e0, `lwc1` at 0xda2f6f0.
  13 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda2f7c4, `swc1` at 0xda2f7cc, `swc1` at 0xda2f7d0.
  15 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda2fa30, `lw` at 0xda2fb84, `lw` at 0xda2fba0.
  13 such `lwc1` accesses load 4 bytes from [a0+28264] +0x9c, including `lwc1` at 0xda2fbf0, `lwc1` at 0xda2ff58, `lwc1` at 0xda2ffac.
  13 such `lwc1` accesses load 4 bytes from [a0+28264] +0xa0, including `lwc1` at 0xda2fbf4, `lwc1` at 0xda2ff5c, `lwc1` at 0xda2ffb0.
  13 such `lwc1` accesses load 4 bytes from [a0+28264] +0xa4, including `lwc1` at 0xda2fbfc, `lwc1` at 0xda2ff60, `lwc1` at 0xda2ffb8.
  The `lw` at 0xda2fcc8 loads 4 bytes from [a0+28264] +0xec.
  The `lwc1` at 0xda30bb0 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `lwc1` at 0xda30bbc loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `lwc1` at 0xda30bc8 loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `lwc1` at 0xda30bf4 loads 4 bytes from [a0+2484] +0x4.
  The `lwc1` at 0xda30c18 loads 4 bytes from [a0+2484] +0x8.
  The `lwc1` at 0xda30c38 loads 4 bytes from [a0+2484] +0xc.
  The `lwc1` at 0xda30c54 loads 4 bytes from a0 (arg0 at entry) +0x76e4.
  The `lwc1` at 0xda30c70 loads 4 bytes from a0 (arg0 at entry) +0x76e8.
  The `lwc1` at 0xda30c80 loads 4 bytes from a0 (arg0 at entry) +0x76f0.
  The `lwc1` at 0xda30c90 loads 4 bytes from a0 (arg0 at entry) +0x76f4.
  The `jalr` at 0xda2f128 calls floor with a0=?, a1=[[[a0+28264]+228]+20]-1, a2=?, a3=?.
  The `jalr` at 0xda2f160 calls floor with a0=?, a1=[[[a0+28264]+228]+20]-1, a2=?, a3=?.
  The `jalr` at 0xda2f2f8 calls __glFloor [0xda6cc80] with a0=?, a1=[[[a0+28264]+228]+20]-1, a2=?, a3=?.
  The `jalr` at 0xda2f400 calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2f438 calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2f5dc calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2f688 calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2f704 calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2fd88 calls __glFloor [0xda6cc80] with a0=[[a0+28264]+236], a1=?, a2=?, a3=?.
  The `jalr` at 0xda2fdf8 calls __glFloor [0xda6cc80] with a0=[[a0+28264]+236], a1=?, a2=?, a3=?.
  The `jalr` at 0xda2fe4c calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2febc calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2fee4 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2fefc calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda30174 calls __glFloor [0xda6cc80] with a0=[[a0+28264]+236], a1=?, a2=?, a3=?.
  The `jalr` at 0xda301ec calls __glFloor [0xda6cc80] with a0=[[a0+28264]+236], a1=?, a2=?, a3=?.
  The `jalr` at 0xda30244 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda302c0 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda302e8 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda30304 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda30658 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda306dc calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda3073c calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda307c4 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda307fc calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda30814 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `bltz` branch at 0xda2f02c targets 0xda30ca8, is taken when t4(=[a0+30304]-1) < 0 (signed), and falls through when t4(=[a0+30304]-1) >= 0 (signed).
  The `bc1fl` branch at 0xda2f06c targets 0xda2fc64, is taken when not (f14 <= f10(=[[a0+28264]+240]) (c.le.s at 0xda2f064)), and falls through when f14 <= f10(=[[a0+28264]+240]) (c.le.s at 0xda2f064); its branch-likely delay slot `c.eq.s $f14,$f2` at 0xda2f070 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda2f0bc targets 0xda2f1a4, is taken when t3(=[[a0+28264]+4]) != at(=0x2901), and falls through when t3(=[[a0+28264]+4]) == at(=0x2901).
  The `bc1f` branch at 0xda2f100 targets 0xda2f154, is taken when not (f2 < f22 (c.lt.s at 0xda2f0f8)), and falls through when f2 < f22 (c.lt.s at 0xda2f0f8).
  The `beq` branch at 0xda2f14c targets 0xda2f188 and is always taken.
  The `bne` branch at 0xda2f18c targets 0xda2f0e8, is taken when s0(?) != s7(=0x3), and falls through when s0(?) == s7(=0x3).
  The `beq` branch at 0xda2f19c targets 0xda2f38c and is always taken.
  The `bc1tl` branch at 0xda2f1d4 targets 0xda2f1fc, is taken when f26 < f14 (c.lt.d at 0xda2f1cc), and falls through when not (f26 < f14 (c.lt.d at 0xda2f1cc)); its branch-likely delay slot `lui at,0x4000` at 0xda2f1d8 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda2f1f4 targets 0xda2f2ec, is taken when not (f6 < f10 (c.lt.d at 0xda2f1ec)), and falls through when f6 < f10 (c.lt.d at 0xda2f1ec).
  The `bc1fl` branch at 0xda2f218 targets 0xda2f22c, is taken when not (f2 < f8 (c.lt.d at 0xda2f210)), and falls through when f2 < f8 (c.lt.d at 0xda2f210); its branch-likely delay slot `add.d $f12,$f26,$f14` at 0xda2f21c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2f220 targets 0xda2f2ec and is always taken.
  The `bc1fl` branch at 0xda2f240 targets 0xda2f254, is taken when not (f12 < f6 (c.lt.d at 0xda2f238)), and falls through when f12 < f6 (c.lt.d at 0xda2f238); its branch-likely delay slot `mtc1 zero,$f10` at 0xda2f244 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2f248 targets 0xda2f2ec and is always taken.
  The `bc1fl` branch at 0xda2f260 targets 0xda2f274, is taken when not (f20 < f10 (c.lt.s at 0xda2f258)), and falls through when f20 < f10 (c.lt.s at 0xda2f258); its branch-likely delay slot `c.lt.d $f26,$f14` at 0xda2f264 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2f268 targets 0xda2f2ec and is always taken.
  The `bc1fl` branch at 0xda2f278 targets 0xda2f28c, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.d $f4,$f26,$f14` at 0xda2f27c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2f280 targets 0xda2f2ec and is always taken.
  The `bc1fl` branch at 0xda2f298 targets 0xda2f2ac, is taken when not (f0 < f4 (c.lt.d at 0xda2f290)), and falls through when f0 < f4 (c.lt.d at 0xda2f290); its branch-likely delay slot `c.lt.s $f28,$f20` at 0xda2f29c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2f2a0 targets 0xda2f2ec and is always taken.
  The `bc1fl` branch at 0xda2f2b0 targets 0xda2f2c4, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `c.lt.d $f0,$f12` at 0xda2f2b4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2f2b8 targets 0xda2f2ec and is always taken.
  The `bc1fl` branch at 0xda2f2c8 targets 0xda2f2dc, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `c.lt.d $f0,$f2` at 0xda2f2cc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2f2d0 targets 0xda2f2ec and is always taken.
  The `bc1f` branch at 0xda2f2e0 targets 0xda2f2ec, is taken when (condition not analyzed), and falls through when (condition not analyzed).
  The `bc1fl` branch at 0xda2f330 targets 0xda2f340, is taken when not (f6 < f10 (c.lt.s at 0xda2f328)), and falls through when f6 < f10 (c.lt.s at 0xda2f328); its branch-likely delay slot `c.lt.s $f28,$f8` at 0xda2f334 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda2f344 targets 0xda2f35c, is taken when not (f28 < f8 (c.lt.s at 0xda2f33c)), and falls through when f28 < f8 (c.lt.s at 0xda2f33c); its branch-likely delay slot `addiu v1,a0,1` at 0xda2f348 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda2f374 targets 0xda2f390, is taken when not (f28 < f4 (c.lt.s at 0xda2f36c)), and falls through when f28 < f4 (c.lt.s at 0xda2f36c); its branch-likely delay slot `lw t3,8(s4)` at 0xda2f378 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda2f398 targets 0xda2f480, is taken when t3(=[[a0+28264]+8]) != at(=0x2901), and falls through when t3(=[[a0+28264]+8]) == at(=0x2901).
  The `bc1f` branch at 0xda2f3d8 targets 0xda2f42c, is taken when not (f2 < f24(=[[[a0+28264]+228]+36]) (c.lt.s at 0xda2f3d0)), and falls through when f2 < f24(=[[[a0+28264]+228]+36]) (c.lt.s at 0xda2f3d0).
  The `beq` branch at 0xda2f424 targets 0xda2f460 and is always taken.
  The `bne` branch at 0xda2f464 targets 0xda2f3c0, is taken when s0(?) != s7(=0x3), and falls through when s0(?) == s7(=0x3).
  The `beq` branch at 0xda2f478 targets 0xda2f67c and is always taken.
  The `bc1tl` branch at 0xda2f4b0 targets 0xda2f4d8, is taken when f22 < f0 (c.lt.d at 0xda2f4a8), and falls through when not (f22 < f0 (c.lt.d at 0xda2f4a8)); its branch-likely delay slot `lui at,0x4000` at 0xda2f4b4 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda2f4d0 targets 0xda2f5d0, is taken when not (f8 < f10 (c.lt.d at 0xda2f4c8)), and falls through when f8 < f10 (c.lt.d at 0xda2f4c8).
  The `bc1fl` branch at 0xda2f4f4 targets 0xda2f508, is taken when not (f2 < f6 (c.lt.d at 0xda2f4ec)), and falls through when f2 < f6 (c.lt.d at 0xda2f4ec); its branch-likely delay slot `add.d $f12,$f22,$f0` at 0xda2f4f8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2f4fc targets 0xda2f5d0 and is always taken.
  The `bc1fl` branch at 0xda2f51c targets 0xda2f530, is taken when not (f12 < f8 (c.lt.d at 0xda2f514)), and falls through when f12 < f8 (c.lt.d at 0xda2f514); its branch-likely delay slot `mtc1 zero,$f10` at 0xda2f520 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2f524 targets 0xda2f5d0 and is always taken.
  The `bc1fl` branch at 0xda2f53c targets 0xda2f550, is taken when not (f20 < f10 (c.lt.s at 0xda2f534)), and falls through when f20 < f10 (c.lt.s at 0xda2f534); its branch-likely delay slot `c.lt.d $f22,$f0` at 0xda2f540 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2f544 targets 0xda2f5d0 and is always taken.
  The `bc1fl` branch at 0xda2f554 targets 0xda2f568, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `mtc1 at,$f5` at 0xda2f558 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2f55c targets 0xda2f5d0 and is always taken.
  The `bc1fl` branch at 0xda2f57c targets 0xda2f590, is taken when not (f0 < f6 (c.lt.d at 0xda2f574)), and falls through when f0 < f6 (c.lt.d at 0xda2f574); its branch-likely delay slot `c.lt.s $f24,$f20` at 0xda2f580 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2f584 targets 0xda2f5d0 and is always taken.
  The `bc1fl` branch at 0xda2f594 targets 0xda2f5a8, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `c.lt.d $f0,$f12` at 0xda2f598 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2f59c targets 0xda2f5d0 and is always taken.
  The `bc1fl` branch at 0xda2f5ac targets 0xda2f5c0, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `c.lt.d $f0,$f2` at 0xda2f5b0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2f5b4 targets 0xda2f5d0 and is always taken.
  The `bc1f` branch at 0xda2f5c4 targets 0xda2f5d0, is taken when (condition not analyzed), and falls through when (condition not analyzed).
  The `bc1fl` branch at 0xda2f620 targets 0xda2f630, is taken when not (f4 < f6 (c.lt.s at 0xda2f618)), and falls through when f4 < f6 (c.lt.s at 0xda2f618); its branch-likely delay slot `c.lt.s $f24,$f10` at 0xda2f624 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda2f634 targets 0xda2f64c, is taken when not (f24 < f10 (c.lt.s at 0xda2f62c)), and falls through when f24 < f10 (c.lt.s at 0xda2f62c); its branch-likely delay slot `addiu v1,a0,1` at 0xda2f638 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda2f664 targets 0xda2f67c, is taken when not (f24 < f8 (c.lt.s at 0xda2f65c)), and falls through when f24 < f8 (c.lt.s at 0xda2f65c).
  The `bne` branch at 0xda2f7d4 targets 0xda2f79c, is taken when s0(?) < 0x4 (signed), and falls through when s0(?) >= 0x4 (signed).
  The `bne` branch at 0xda2f7e4 targets 0xda2f904, is taken when v0(=one of 0x0, 0x1, 0x2) != 0, and falls through when v0(=one of 0x0, 0x1, 0x2) == 0.
  The `bne` branch at 0xda2f7ec targets 0xda2f904, is taken when s5(?) != 0, and falls through when s5(?) == 0.
  The `bne` branch at 0xda2f7f4 targets 0xda2f904, is taken when s6(?) != 0, and falls through when s6(?) == 0.
  The `bgez` branch at 0xda2f870 targets 0xda2f884, is taken when s0(?) >= 0 (signed), and falls through when s0(?) < 0 (signed).
  The `beq` branch at 0xda2f878 targets 0xda2f884, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `bnel` branch at 0xda2f884 targets 0xda2f898, is taken when s7(=0x3) != t5(?), and falls through when s7(=0x3) == t5(?); its branch-likely delay slot `lwc1 $f0,4(v1)` at 0xda2f888 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xda2f8d0 targets 0xda2f8e4, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `beq` branch at 0xda2f8d8 targets 0xda2f8e4, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0xda2f8e4 targets 0xda2f8f4, is taken when s7(=0x3) != t9(?), and falls through when s7(=0x3) == t9(?).
  The `bne` branch at 0xda2f8f4 targets 0xda2f834, is taken when s0(?) != a1(=0x10), and falls through when s0(?) == a1(=0x10).
  The `beq` branch at 0xda2f8fc targets 0xda30b44 and is always taken.
  The `bnel` branch at 0xda2f904 targets 0xda2fb70, is taken when v0(=one of 0x0, 0x1, 0x2) != at(=0x2), and falls through when v0(=one of 0x0, 0x1, 0x2) == at(=0x2); its branch-likely delay slot `mtc1 zero,$f2` at 0xda2f908 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2f930 targets 0xda2fa54 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0xda2fa4c targets 0xda2f938, is taken when s0(?) != t2(=0x3), and falls through when s0(?) == t2(=0x3).
  The `beq` branch at 0xda2fb64 targets 0xda30b44 and is always taken.
  The `bne` branch at 0xda2fbd0 targets 0xda2fbe8, is taken when (t8(?) & s5(?)) != 0, and falls through when (t8(?) & s5(?)) == 0.
  The `beq` branch at 0xda2fbe0 targets 0xda2fc18, is taken when (t3(?) & s6(?)) == 0, and falls through when (t3(?) & s6(?)) != 0.
  The `beq` branch at 0xda2fc10 targets 0xda2fc44 and is always taken.
  The `bne` branch at 0xda2fc44 targets 0xda2fba0, is taken when a1(?) != t2(=0x4), and falls through when a1(?) == t2(=0x4).
  The `bne` branch at 0xda2fc50 targets 0xda2fb84, is taken when s0(?) != t2(=0x4), and falls through when s0(?) == t2(=0x4).
  The `beq` branch at 0xda2fc58 targets 0xda30b44 and is always taken.
  The `bc1tl` branch at 0xda2fc68 targets 0xda2fcc4, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `mov.s $f12,$f2` at 0xda2fc6c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2fc84 targets 0xda2fc94, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xda2fc8c targets 0xda2fc88, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xda2fcb8 targets 0xda2fcc4 and is always taken.
  The `beq` branch at 0xda2fd1c targets 0xda30104, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0xda2fd6c targets 0xda2fdac, is taken when t6(=[[a0+28264]+4]) != at(=0x2901), and falls through when t6(=[[a0+28264]+4]) == at(=0x2901).
  The `beq` branch at 0xda2fda4 targets 0xda2fe18 and is always taken.
  The `bc1fl` branch at 0xda2fdbc targets 0xda2fdd4, is taken when not (f0 < f6 (c.lt.s at 0xda2fdb4)), and falls through when f0 < f6 (c.lt.s at 0xda2fdb4); its branch-likely delay slot `c.lt.s $f28,$f0` at 0xda2fdc0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2fdc8 targets 0xda2fde8 and is always taken.
  The `bc1fl` branch at 0xda2fdd8 targets 0xda2fde8, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f26,$f26,$f10` at 0xda2fddc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda2fe34 targets 0xda2fe74, is taken when t9(=[[a0+28264]+8]) != at(=0x2901), and falls through when t9(=[[a0+28264]+8]) == at(=0x2901).
  The `beq` branch at 0xda2fe6c targets 0xda2fed8 and is always taken.
  The `bc1fl` branch at 0xda2fe84 targets 0xda2fe9c, is taken when not (f0 < f6 (c.lt.s at 0xda2fe7c)), and falls through when f0 < f6 (c.lt.s at 0xda2fe7c); its branch-likely delay slot `c.lt.s $f24,$f0` at 0xda2fe88 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2fe90 targets 0xda2feb0 and is always taken.
  The `bc1fl` branch at 0xda2fea0 targets 0xda2feb0, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f22,$f22,$f20` at 0xda2fea4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2ff50 targets 0xda2ff74, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda2ff6c targets 0xda2ffa4 and is always taken.
  The `beq` branch at 0xda2ffa4 targets 0xda2ffd4, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda2ffcc targets 0xda30014 and is always taken.
  The `beq` branch at 0xda3001c targets 0xda3004c, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda30044 targets 0xda3008c and is always taken.
  The `beq` branch at 0xda3008c targets 0xda300c0, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0xda300b8 targets 0xda30b40 and is always taken.
  The `beq` branch at 0xda300fc targets 0xda30b44 and is always taken.
  The `bne` branch at 0xda30158 targets 0xda301a0, is taken when t4(=[[a0+28264]+4]) != at(=0x2901), and falls through when t4(=[[a0+28264]+4]) == at(=0x2901).
  The `beq` branch at 0xda30198 targets 0xda30208 and is always taken.
  The `bc1fl` branch at 0xda301b0 targets 0xda301c8, is taken when not (f0 < f8 (c.lt.s at 0xda301a8)), and falls through when f0 < f8 (c.lt.s at 0xda301a8); its branch-likely delay slot `c.lt.s $f28,$f0` at 0xda301b4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda301bc targets 0xda301dc and is always taken.
  The `bc1fl` branch at 0xda301cc targets 0xda301dc, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f26,$f26,$f4` at 0xda301d0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3022c targets 0xda30278, is taken when t7(=[[a0+28264]+8]) != at(=0x2901), and falls through when t7(=[[a0+28264]+8]) == at(=0x2901).
  The `beq` branch at 0xda30270 targets 0xda302dc and is always taken.
  The `bc1fl` branch at 0xda30288 targets 0xda302a0, is taken when not (f0 < f8 (c.lt.s at 0xda30280)), and falls through when f0 < f8 (c.lt.s at 0xda30280); its branch-likely delay slot `c.lt.s $f24,$f0` at 0xda3028c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda30294 targets 0xda302b4 and is always taken.
  The `bc1fl` branch at 0xda302a4 targets 0xda302b4, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f22,$f22,$f4` at 0xda302a8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda30368 targets 0xda30450, is taken when v0(?) >= 0x1 (unsigned), and falls through when v0(?) < 0x1 (unsigned).
  The `beq` branch at 0xda30448 targets 0xda305f0 and is always taken.
  The `beq` branch at 0xda30450 targets 0xda30474, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0xda3046c targets 0xda304a4 and is always taken.
  The `beq` branch at 0xda304a8 targets 0xda304d8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda304d0 targets 0xda30514 and is always taken.
  The `beq` branch at 0xda3051c targets 0xda3054c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda30544 targets 0xda30588 and is always taken.
  The `beq` branch at 0xda30588 targets 0xda305b8, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xda305b0 targets 0xda305f0 and is always taken.
  The `bne` branch at 0xda30630 targets 0xda3068c, is taken when t5(=[[a0+28264]+4]) != at(=0x2901), and falls through when t5(=[[a0+28264]+4]) == at(=0x2901).
  The `beq` branch at 0xda30684 targets 0xda30704 and is always taken.
  The `bc1fl` branch at 0xda3069c targets 0xda306b0, is taken when not (f0 < f22 (c.lt.s at 0xda30694)), and falls through when f0 < f22 (c.lt.s at 0xda30694); its branch-likely delay slot `c.lt.s $f28,$f0` at 0xda306a0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda306a4 targets 0xda306c0 and is always taken.
  The `bc1fl` branch at 0xda306b4 targets 0xda306c4, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f26,$f26,$f6` at 0xda306b8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3071c targets 0xda30778, is taken when t9(=[[a0+28264]+8]) != at(=0x2901), and falls through when t9(=[[a0+28264]+8]) == at(=0x2901).
  The `beq` branch at 0xda30770 targets 0xda307e8 and is always taken.
  The `bc1fl` branch at 0xda30788 targets 0xda3079c, is taken when not (f0 < f2 (c.lt.s at 0xda30780)), and falls through when f0 < f2 (c.lt.s at 0xda30780); its branch-likely delay slot `c.lt.s $f24,$f0` at 0xda3078c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda30790 targets 0xda307ac and is always taken.
  The `bc1fl` branch at 0xda307a0 targets 0xda307b0, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f22,$f22,$f28` at 0xda307a4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda30884 targets 0xda30980, is taken when t7(=one of 0x0, 0x1, 0x2) != at(=0x2), and falls through when t7(=one of 0x0, 0x1, 0x2) == at(=0x2).
  The `beq` branch at 0xda30978 targets 0xda30b40 and is always taken.
  The `beq` branch at 0xda30980 targets 0xda309b0, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0xda309a8 targets 0xda309ec and is always taken.
  The `beq` branch at 0xda309f0 targets 0xda30a20, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `beq` branch at 0xda30a18 targets 0xda30a5c and is always taken.
  The `beq` branch at 0xda30a64 targets 0xda30a94, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `beq` branch at 0xda30a8c targets 0xda30ad0 and is always taken.
  The `beq` branch at 0xda30ad0 targets 0xda30b04, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda30afc targets 0xda30b40 and is always taken.
  The `bne` branch at 0xda30b4c targets 0xda30b84, is taken when t4(=[[a0+2484]]) != at(=0x2100), and falls through when t4(=[[a0+2484]]) == at(=0x2100).
  The `beq` branch at 0xda30b7c targets 0xda30c50 and is always taken.
  The `bne` branch at 0xda30b8c targets 0xda30b9c, is taken when v0(?) < 0x1 (unsigned), and falls through when v0(?) >= 0x1 (unsigned).
  The `beq` branch at 0xda30ba0 targets 0xda30be0, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `beq` branch at 0xda30bd8 targets 0xda30c50 and is always taken.
  The `bgez` branch at 0xda30ca0 targets 0xda2f03c, is taken when t6(?) >= 0 (signed), and falls through when t6(?) < 0 (signed).
  The return at 0xda30cec has v0 = 0x0.
  The instructions from 0xda2f228 to 0xda2f228 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2f250 to 0xda2f250 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2f270 to 0xda2f270 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2f288 to 0xda2f288 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2f2a8 to 0xda2f2a8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2f2c0 to 0xda2f2c0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2f2d8 to 0xda2f2d8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2f504 to 0xda2f504 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2f52c to 0xda2f52c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2f54c to 0xda2f54c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2f564 to 0xda2f564 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2f58c to 0xda2f58c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2f5a4 to 0xda2f5a4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2f5bc to 0xda2f5bc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2fb6c to 0xda2fb6c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2fc60 to 0xda2fc60 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2fcc0 to 0xda2fcc0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2fdd0 to 0xda2fdd0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2fe98 to 0xda2fe98 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda301c4 to 0xda301c4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda3029c to 0xda3029c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda306ac to 0xda306ac are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda30798 to 0xda30798 are not reached by any path from the entry, and their branches are not listed.
- `__glTextureRGB_F_LML_StippledSpan` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda30cf4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda30cf4-0xda32ac4 (7632 bytes).
  It occupies 7632 bytes.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd4, including `lwc1` at 0xda30d48, `lwc1` at 0xda31490, `lwc1` at 0xda31510.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9b4, including `lw` at 0xda30d58, `lw` at 0xda3299c.
  The `lw` at 0xda30d60 loads 4 bytes from [a0+2484] +0x0.
  The `lw` at 0xda30d68 loads 4 bytes from a0 (arg0 at entry) +0x7660.
  The `lw` at 0xda30d6c loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  The `lw` at 0xda30d74 loads 4 bytes from a0 (arg0 at entry) +0x7738.
  The `lw` at 0xda30d7c loads 4 bytes from a0 (arg0 at entry) +0x7740.
  The `lwc1` at 0xda30d84 loads 4 bytes from a0 (arg0 at entry) +0x7648.
  The `lwc1` at 0xda30d8c loads 4 bytes from a0 (arg0 at entry) +0x764c.
  The `lwc1` at 0xda30d94 loads 4 bytes from a0 (arg0 at entry) +0x7654.
  The `lwc1` at 0xda30d9c loads 4 bytes from a0 (arg0 at entry) +0x7658.
  16 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda30de4, `lw` at 0xda31820, `lw` at 0xda31974.
  7 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lwc1` at 0xda30e18, `lwc1` at 0xda31cf4, `lwc1` at 0xda32104.
  The `lwc1` at 0xda30e20 loads 4 bytes from [a0+28264] +0xf0.
  4 such `lw` accesses load 4 bytes from [a0+28264] +0xe4, including `lw` at 0xda30e50, `lw` at 0xda31b04, `lw` at 0xda31ef4.
  2 such `lw` accesses load 4 bytes from [[a0+28264]+228] +0x18, including `lw` at 0xda30e5c, `lw` at 0xda311b8.
  2 such `lw` accesses load 4 bytes from [[a0+28264]+228] +0x14, including `lw` at 0xda30e60, `lw` at 0xda30ee0.
  The `lw` at 0xda30e64 loads 4 bytes from [[a0+28264]+228] +0x2c.
  The `lw` at 0xda30e68 loads 4 bytes from [[a0+28264]+228] +0x0.
  The `lwc1` at 0xda30e78 loads 4 bytes from [[a0+28264]+228] +0x20.
  4 such `lw` accesses load 4 bytes from [a0+28264] +0x4, including `lw` at 0xda30e8c, `lw` at 0xda31b34, `lw` at 0xda31f40.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda30f28, `sw` at 0xda30f5c, `sw` at 0xda31200.
  5 such `lw` accesses load 4 bytes from [a0+28264] +0x8, including `lw` at 0xda31150, `lw` at 0xda31164, `lw` at 0xda31c00.
  The `lwc1` at 0xda31174 loads 4 bytes from [[a0+28264]+228] +0x24.
  127 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda314bc, `lwc1` at 0xda314cc, `lwc1` at 0xda314dc.
  13 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda315b4, `swc1` at 0xda315bc, `swc1` at 0xda315c0.
  13 such `lwc1` accesses load 4 bytes from [a0+28264] +0x9c, including `lwc1` at 0xda319e0, `lwc1` at 0xda31d34, `lwc1` at 0xda31d90.
  13 such `lwc1` accesses load 4 bytes from [a0+28264] +0xa0, including `lwc1` at 0xda319e4, `lwc1` at 0xda31d38, `lwc1` at 0xda31d94.
  13 such `lwc1` accesses load 4 bytes from [a0+28264] +0xa4, including `lwc1` at 0xda319ec, `lwc1` at 0xda31d3c, `lwc1` at 0xda31d9c.
  The `lw` at 0xda31ab8 loads 4 bytes from [a0+28264] +0xec.
  The `lwc1` at 0xda32968 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `lwc1` at 0xda32974 loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `lwc1` at 0xda32980 loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `lwc1` at 0xda329a8 loads 4 bytes from [a0+2484] +0x4.
  The `lwc1` at 0xda329cc loads 4 bytes from [a0+2484] +0x8.
  The `lwc1` at 0xda329ec loads 4 bytes from [a0+2484] +0xc.
  The `lwc1` at 0xda32a08 loads 4 bytes from a0 (arg0 at entry) +0x76e4.
  The `lwc1` at 0xda32a28 loads 4 bytes from a0 (arg0 at entry) +0x76e8.
  The `lwc1` at 0xda32a40 loads 4 bytes from a0 (arg0 at entry) +0x76f0.
  The `lwc1` at 0xda32a50 loads 4 bytes from a0 (arg0 at entry) +0x76f4.
  The `jalr` at 0xda30f00 calls floor with a0=?, a1=[[[a0+28264]+228]+20]-1, a2=?, a3=?.
  The `jalr` at 0xda30f38 calls floor with a0=?, a1=[[[a0+28264]+228]+20]-1, a2=?, a3=?.
  The `jalr` at 0xda310d0 calls __glFloor [0xda6cc80] with a0=?, a1=[[[a0+28264]+228]+20]-1, a2=?, a3=?.
  The `jalr` at 0xda311d8 calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda31210 calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda313c8 calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda31474 calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda314f4 calls floor with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda31b68 calls __glFloor [0xda6cc80] with a0=[[a0+28264]+236], a1=?, a2=?, a3=?.
  The `jalr` at 0xda31bd8 calls __glFloor [0xda6cc80] with a0=[[a0+28264]+236], a1=?, a2=?, a3=?.
  The `jalr` at 0xda31c2c calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda31c9c calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda31cc4 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda31cdc calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda31f68 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda31fdc calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda32030 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda320ac calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda320d4 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda320f0 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda32450 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda324c4 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda32518 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda32590 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda325b8 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda325d0 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xda30da0 targets 0xda32a78, is taken when t8(=[a0+30304]) == 0, and falls through when t8(=[a0+30304]) != 0.
  The `bne` branch at 0xda30dc0 targets 0xda30dd0, is taken when t5(?) < 0x21 (signed), and falls through when t5(?) >= 0x21 (signed).
  The `bltz` branch at 0xda30df8 targets 0xda32a6c, is taken when t7(?) < 0 (signed), and falls through when t7(?) >= 0 (signed).
  The `beql` branch at 0xda30e10 targets 0xda32a08, is taken when (t8(?) & t3(?)) == 0, and falls through when (t8(?) & t3(?)) != 0; its branch-likely delay slot `lwc1 $f4,564(sp)` at 0xda30e14 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda30e40 targets 0xda31a54, is taken when not (f14 <= f10(=[[a0+28264]+240]) (c.le.s at 0xda30e38)), and falls through when f14 <= f10(=[[a0+28264]+240]) (c.le.s at 0xda30e38); its branch-likely delay slot `c.eq.s $f14,$f2` at 0xda30e44 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda30e98 targets 0xda30f7c, is taken when t3(=[[a0+28264]+4]) != at(=0x2901), and falls through when t3(=[[a0+28264]+4]) == at(=0x2901).
  The `bc1f` branch at 0xda30ed8 targets 0xda30f2c, is taken when not (f2 < f22 (c.lt.s at 0xda30ed0)), and falls through when f2 < f22 (c.lt.s at 0xda30ed0).
  The `beq` branch at 0xda30f24 targets 0xda30f60 and is always taken.
  The `bne` branch at 0xda30f64 targets 0xda30ec0, is taken when s0(?) != s7(=0x3), and falls through when s0(?) == s7(=0x3).
  The `beq` branch at 0xda30f74 targets 0xda31164 and is always taken.
  The `bc1tl` branch at 0xda30fac targets 0xda30fd4, is taken when f30 < f14 (c.lt.d at 0xda30fa4), and falls through when not (f30 < f14 (c.lt.d at 0xda30fa4)); its branch-likely delay slot `lui at,0x4000` at 0xda30fb0 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda30fcc targets 0xda310c4, is taken when not (f6 < f10 (c.lt.d at 0xda30fc4)), and falls through when f6 < f10 (c.lt.d at 0xda30fc4).
  The `bc1fl` branch at 0xda30ff0 targets 0xda31004, is taken when not (f2 < f8 (c.lt.d at 0xda30fe8)), and falls through when f2 < f8 (c.lt.d at 0xda30fe8); its branch-likely delay slot `add.d $f12,$f30,$f14` at 0xda30ff4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda30ff8 targets 0xda310c4 and is always taken.
  The `bc1fl` branch at 0xda31018 targets 0xda3102c, is taken when not (f12 < f6 (c.lt.d at 0xda31010)), and falls through when f12 < f6 (c.lt.d at 0xda31010); its branch-likely delay slot `mtc1 zero,$f10` at 0xda3101c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda31020 targets 0xda310c4 and is always taken.
  The `bc1fl` branch at 0xda31038 targets 0xda3104c, is taken when not (f20 < f10 (c.lt.s at 0xda31030)), and falls through when f20 < f10 (c.lt.s at 0xda31030); its branch-likely delay slot `c.lt.d $f30,$f14` at 0xda3103c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda31040 targets 0xda310c4 and is always taken.
  The `bc1fl` branch at 0xda31050 targets 0xda31064, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.d $f4,$f30,$f14` at 0xda31054 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda31058 targets 0xda310c4 and is always taken.
  The `bc1fl` branch at 0xda31070 targets 0xda31084, is taken when not (f0 < f4 (c.lt.d at 0xda31068)), and falls through when f0 < f4 (c.lt.d at 0xda31068); its branch-likely delay slot `c.lt.s $f28,$f20` at 0xda31074 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda31078 targets 0xda310c4 and is always taken.
  The `bc1fl` branch at 0xda31088 targets 0xda3109c, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `c.lt.d $f0,$f12` at 0xda3108c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda31090 targets 0xda310c4 and is always taken.
  The `bc1fl` branch at 0xda310a0 targets 0xda310b4, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `c.lt.d $f0,$f2` at 0xda310a4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda310a8 targets 0xda310c4 and is always taken.
  The `bc1f` branch at 0xda310b8 targets 0xda310c4, is taken when (condition not analyzed), and falls through when (condition not analyzed).
  The `bc1fl` branch at 0xda31108 targets 0xda31118, is taken when not (f6 < f10 (c.lt.s at 0xda31100)), and falls through when f6 < f10 (c.lt.s at 0xda31100); its branch-likely delay slot `c.lt.s $f28,$f8` at 0xda3110c runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda3111c targets 0xda31134, is taken when not (f28 < f8 (c.lt.s at 0xda31114)), and falls through when f28 < f8 (c.lt.s at 0xda31114); its branch-likely delay slot `addiu v1,a0,1` at 0xda31120 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda3114c targets 0xda31168, is taken when not (f28 < f4 (c.lt.s at 0xda31144)), and falls through when f28 < f4 (c.lt.s at 0xda31144); its branch-likely delay slot `lw t3,8(s4)` at 0xda31150 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda31170 targets 0xda31258, is taken when t3(=[[a0+28264]+8]) != at(=0x2901), and falls through when t3(=[[a0+28264]+8]) == at(=0x2901).
  The `bc1f` branch at 0xda311b0 targets 0xda31204, is taken when not (f2 < f24 (c.lt.s at 0xda311a8)), and falls through when f2 < f24 (c.lt.s at 0xda311a8).
  The `beq` branch at 0xda311fc targets 0xda31238 and is always taken.
  The `bne` branch at 0xda3123c targets 0xda31198, is taken when s0(?) != s7(=0x3), and falls through when s0(?) == s7(=0x3).
  The `beq` branch at 0xda31250 targets 0xda31468 and is always taken.
  The `bc1tl` branch at 0xda31288 targets 0xda312b0, is taken when f22 < f8 (c.lt.d at 0xda31280), and falls through when not (f22 < f8 (c.lt.d at 0xda31280)); its branch-likely delay slot `lui at,0x4000` at 0xda3128c runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda312a8 targets 0xda313bc, is taken when not (f6 < f4 (c.lt.d at 0xda312a0)), and falls through when f6 < f4 (c.lt.d at 0xda312a0).
  The `bc1fl` branch at 0xda312d0 targets 0xda312e4, is taken when not (f2 < f10 (c.lt.d at 0xda312c8)), and falls through when f2 < f10 (c.lt.d at 0xda312c8); its branch-likely delay slot `mtc1 at,$f7` at 0xda312d4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda312d8 targets 0xda313bc and is always taken.
  The `bc1fl` branch at 0xda312fc targets 0xda31310, is taken when not (f12 < f4 (c.lt.d at 0xda312f4)), and falls through when f12 < f4 (c.lt.d at 0xda312f4); its branch-likely delay slot `mtc1 zero,$f8` at 0xda31300 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda31304 targets 0xda313bc and is always taken.
  The `bc1fl` branch at 0xda3131c targets 0xda31330, is taken when not (f20 < f8 (c.lt.s at 0xda31314)), and falls through when f20 < f8 (c.lt.s at 0xda31314); its branch-likely delay slot `mtc1 at,$f11` at 0xda31320 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda31324 targets 0xda313bc and is always taken.
  The `bc1fl` branch at 0xda31340 targets 0xda31354, is taken when not (f22 < f10 (c.lt.d at 0xda31338)), and falls through when f22 < f10 (c.lt.d at 0xda31338); its branch-likely delay slot `mtc1 at,$f7` at 0xda31344 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda31348 targets 0xda313bc and is always taken.
  The `bc1fl` branch at 0xda31368 targets 0xda3137c, is taken when not (f0 < f4 (c.lt.d at 0xda31360)), and falls through when f0 < f4 (c.lt.d at 0xda31360); its branch-likely delay slot `c.lt.s $f26,$f20` at 0xda3136c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda31370 targets 0xda313bc and is always taken.
  The `bc1fl` branch at 0xda31380 targets 0xda31394, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `c.lt.d $f0,$f12` at 0xda31384 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda31388 targets 0xda313bc and is always taken.
  The `bc1fl` branch at 0xda31398 targets 0xda313ac, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `c.lt.d $f0,$f2` at 0xda3139c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda313a0 targets 0xda313bc and is always taken.
  The `bc1f` branch at 0xda313b0 targets 0xda313bc, is taken when (condition not analyzed), and falls through when (condition not analyzed).
  The `bc1fl` branch at 0xda3140c targets 0xda3141c, is taken when not (f6 < f4 (c.lt.s at 0xda31404)), and falls through when f6 < f4 (c.lt.s at 0xda31404); its branch-likely delay slot `c.lt.s $f26,$f10` at 0xda31410 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda31420 targets 0xda31438, is taken when not (f26 < f10 (c.lt.s at 0xda31418)), and falls through when f26 < f10 (c.lt.s at 0xda31418); its branch-likely delay slot `addiu v1,a0,1` at 0xda31424 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda31450 targets 0xda31468, is taken when not (f26 < f8 (c.lt.s at 0xda31448)), and falls through when f26 < f8 (c.lt.s at 0xda31448).
  The `bne` branch at 0xda315c4 targets 0xda3158c, is taken when s0(?) < 0x4 (signed), and falls through when s0(?) >= 0x4 (signed).
  The `bne` branch at 0xda315d4 targets 0xda316f4, is taken when v0(=one of 0x0, 0x1, 0x2) != 0, and falls through when v0(=one of 0x0, 0x1, 0x2) == 0.
  The `bne` branch at 0xda315dc targets 0xda316f4, is taken when s5(?) != 0, and falls through when s5(?) == 0.
  The `bne` branch at 0xda315e4 targets 0xda316f4, is taken when s6(?) != 0, and falls through when s6(?) == 0.
  The `bgez` branch at 0xda31660 targets 0xda31674, is taken when s0(?) >= 0 (signed), and falls through when s0(?) < 0 (signed).
  The `beq` branch at 0xda31668 targets 0xda31674, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `bnel` branch at 0xda31674 targets 0xda31688, is taken when s7(=0x3) != t4(?), and falls through when s7(=0x3) == t4(?); its branch-likely delay slot `lwc1 $f0,4(v1)` at 0xda31678 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xda316c0 targets 0xda316d4, is taken when t7(?) >= 0 (signed), and falls through when t7(?) < 0 (signed).
  The `beq` branch at 0xda316c8 targets 0xda316d4, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0xda316d4 targets 0xda316e4, is taken when s7(=0x3) != t8(?), and falls through when s7(=0x3) == t8(?).
  The `bne` branch at 0xda316e4 targets 0xda31624, is taken when s0(?) != a0(=0x10), and falls through when s0(?) == a0(=0x10).
  The `beq` branch at 0xda316ec targets 0xda32900 and is always taken.
  The `bnel` branch at 0xda316f4 targets 0xda31960, is taken when v0(=one of 0x0, 0x1, 0x2) != at(=0x2), and falls through when v0(=one of 0x0, 0x1, 0x2) == at(=0x2); its branch-likely delay slot `mtc1 zero,$f2` at 0xda316f8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda31720 targets 0xda31844 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0xda3183c targets 0xda31728, is taken when s0(?) != t2(=0x3), and falls through when s0(?) == t2(=0x3).
  The `beq` branch at 0xda31954 targets 0xda32900 and is always taken.
  The `bne` branch at 0xda319c0 targets 0xda319d8, is taken when (t7(?) & s5(?)) != 0, and falls through when (t7(?) & s5(?)) == 0.
  The `beq` branch at 0xda319d0 targets 0xda31a08, is taken when (t3(?) & s6(?)) == 0, and falls through when (t3(?) & s6(?)) != 0.
  The `beq` branch at 0xda31a00 targets 0xda31a34 and is always taken.
  The `bne` branch at 0xda31a34 targets 0xda31990, is taken when a1(?) != t2(=0x4), and falls through when a1(?) == t2(=0x4).
  The `bne` branch at 0xda31a40 targets 0xda31974, is taken when s0(?) != t2(=0x4), and falls through when s0(?) == t2(=0x4).
  The `beq` branch at 0xda31a48 targets 0xda32900 and is always taken.
  The `bc1tl` branch at 0xda31a58 targets 0xda31ab4, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `mov.s $f12,$f2` at 0xda31a5c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda31a74 targets 0xda31a84, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xda31a7c targets 0xda31a78, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xda31aa8 targets 0xda31ab4 and is always taken.
  The `beq` branch at 0xda31afc targets 0xda31ee8, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `bne` branch at 0xda31b4c targets 0xda31b8c, is taken when t5(=[[a0+28264]+4]) != at(=0x2901), and falls through when t5(=[[a0+28264]+4]) == at(=0x2901).
  The `beq` branch at 0xda31b84 targets 0xda31bf8 and is always taken.
  The `bc1fl` branch at 0xda31b9c targets 0xda31bb4, is taken when not (f0 < f10 (c.lt.s at 0xda31b94)), and falls through when f0 < f10 (c.lt.s at 0xda31b94); its branch-likely delay slot `c.lt.s $f28,$f0` at 0xda31ba0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda31ba8 targets 0xda31bc8 and is always taken.
  The `bc1fl` branch at 0xda31bb8 targets 0xda31bc8, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f30,$f30,$f8` at 0xda31bbc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda31c14 targets 0xda31c54, is taken when t8(=[[a0+28264]+8]) != at(=0x2901), and falls through when t8(=[[a0+28264]+8]) == at(=0x2901).
  The `beq` branch at 0xda31c4c targets 0xda31cb8 and is always taken.
  The `bc1fl` branch at 0xda31c64 targets 0xda31c7c, is taken when not (f0 < f10 (c.lt.s at 0xda31c5c)), and falls through when f0 < f10 (c.lt.s at 0xda31c5c); its branch-likely delay slot `c.lt.s $f26,$f0` at 0xda31c68 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda31c70 targets 0xda31c90 and is always taken.
  The `bc1fl` branch at 0xda31c80 targets 0xda31c90, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f28,$f28,$f20` at 0xda31c84 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda31d2c targets 0xda31d50, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda31d48 targets 0xda31d80 and is always taken.
  The `beq` branch at 0xda31d88 targets 0xda31db8, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xda31db0 targets 0xda31df4 and is always taken.
  The `beq` branch at 0xda31dfc targets 0xda31e2c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xda31e24 targets 0xda31e68 and is always taken.
  The `beq` branch at 0xda31e68 targets 0xda31ea0, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `beq` branch at 0xda31e98 targets 0xda328fc and is always taken.
  The `beq` branch at 0xda31ee0 targets 0xda32900 and is always taken.
  The `bne` branch at 0xda31f4c targets 0xda31f94, is taken when t7(=[[a0+28264]+4]) != at(=0x2901), and falls through when t7(=[[a0+28264]+4]) == at(=0x2901).
  The `beq` branch at 0xda31f8c targets 0xda31ffc and is always taken.
  The `bc1fl` branch at 0xda31fa4 targets 0xda31fbc, is taken when not (f0 < f6 (c.lt.s at 0xda31f9c)), and falls through when f0 < f6 (c.lt.s at 0xda31f9c); its branch-likely delay slot `c.lt.s $f28,$f0` at 0xda31fa8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda31fb0 targets 0xda31fd0 and is always taken.
  The `bc1fl` branch at 0xda31fc0 targets 0xda31fd0, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f30,$f30,$f4` at 0xda31fc4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda32018 targets 0xda32064, is taken when t3(=[[a0+28264]+8]) != at(=0x2901), and falls through when t3(=[[a0+28264]+8]) == at(=0x2901).
  The `beq` branch at 0xda3205c targets 0xda320c8 and is always taken.
  The `bc1fl` branch at 0xda32074 targets 0xda3208c, is taken when not (f0 < f8 (c.lt.s at 0xda3206c)), and falls through when f0 < f8 (c.lt.s at 0xda3206c); its branch-likely delay slot `c.lt.s $f26,$f0` at 0xda32078 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda32080 targets 0xda320a0 and is always taken.
  The `bc1fl` branch at 0xda32090 targets 0xda320a0, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f28,$f28,$f22` at 0xda32094 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda3215c targets 0xda32248, is taken when v0(?) >= 0x1 (unsigned), and falls through when v0(?) < 0x1 (unsigned).
  The `beq` branch at 0xda32240 targets 0xda323f0 and is always taken.
  The `beq` branch at 0xda32248 targets 0xda3226c, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda32264 targets 0xda3229c and is always taken.
  The `beq` branch at 0xda322a0 targets 0xda322d0, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `beq` branch at 0xda322c8 targets 0xda3230c and is always taken.
  The `beq` branch at 0xda32314 targets 0xda32344, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `beq` branch at 0xda3233c targets 0xda32380 and is always taken.
  The `beq` branch at 0xda32380 targets 0xda323b4, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xda323ac targets 0xda323f0 and is always taken.
  The `bne` branch at 0xda32434 targets 0xda3247c, is taken when t8(=[[a0+28264]+4]) != at(=0x2901), and falls through when t8(=[[a0+28264]+4]) == at(=0x2901).
  The `beq` branch at 0xda32474 targets 0xda324e0 and is always taken.
  The `bc1fl` branch at 0xda3248c targets 0xda324a0, is taken when not (f0 < f26(=ret(__glFrac)) (c.lt.s at 0xda32484)), and falls through when f0 < f26(=ret(__glFrac)) (c.lt.s at 0xda32484); its branch-likely delay slot `c.lt.s $f28,$f0` at 0xda32490 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda32494 targets 0xda324b0 and is always taken.
  The `bc1fl` branch at 0xda324a4 targets 0xda324b4, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f30,$f30,$f10` at 0xda324a8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda32500 targets 0xda3254c, is taken when t9(=[[a0+28264]+8]) != at(=0x2901), and falls through when t9(=[[a0+28264]+8]) == at(=0x2901).
  The `beq` branch at 0xda32544 targets 0xda325ac and is always taken.
  The `bc1fl` branch at 0xda3255c targets 0xda32570, is taken when not (f0 < f2 (c.lt.s at 0xda32554)), and falls through when f0 < f2 (c.lt.s at 0xda32554); its branch-likely delay slot `c.lt.s $f26,$f0` at 0xda32560 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda32564 targets 0xda32580 and is always taken.
  The `bc1fl` branch at 0xda32574 targets 0xda32584, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f28,$f28,$f4` at 0xda32578 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda32638 targets 0xda32734, is taken when t3(=one of 0x0, 0x1, 0x2) != at(=0x2), and falls through when t3(=one of 0x0, 0x1, 0x2) == at(=0x2).
  The `beq` branch at 0xda3272c targets 0xda328fc and is always taken.
  The `beq` branch at 0xda32734 targets 0xda32764, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0xda3275c targets 0xda327a0 and is always taken.
  The `beq` branch at 0xda327a4 targets 0xda327d4, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda327cc targets 0xda32810 and is always taken.
  The `beq` branch at 0xda32818 targets 0xda32848, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda32840 targets 0xda32884 and is always taken.
  The `beq` branch at 0xda32884 targets 0xda328bc, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `beq` branch at 0xda328b4 targets 0xda328fc and is always taken.
  The `bne` branch at 0xda32904 targets 0xda3293c, is taken when a1(=[[a0+2484]]) != at(=0x2100), and falls through when a1(=[[a0+2484]]) == at(=0x2100).
  The `beq` branch at 0xda32934 targets 0xda32a04 and is always taken.
  The `bne` branch at 0xda32944 targets 0xda32954, is taken when v0(?) < 0x1 (unsigned), and falls through when v0(?) >= 0x1 (unsigned).
  The `beq` branch at 0xda32958 targets 0xda32994, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda3298c targets 0xda32a04 and is always taken.
  The `bgez` branch at 0xda32a64 targets 0xda30e00, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `bnel` branch at 0xda32a70 targets 0xda30db4, is taken when t7(?) != 0, and falls through when t7(?) == 0; its branch-likely delay slot `lw t5,552(sp)` at 0xda32a74 runs only when taken and is annulled on fall-through.
  The return at 0xda32abc has v0 = 0x0.
  The instructions from 0xda31000 to 0xda31000 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda31028 to 0xda31028 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda31048 to 0xda31048 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda31060 to 0xda31060 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda31080 to 0xda31080 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda31098 to 0xda31098 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda310b0 to 0xda310b0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda312e0 to 0xda312e0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda3130c to 0xda3130c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda3132c to 0xda3132c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda31350 to 0xda31350 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda31378 to 0xda31378 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda31390 to 0xda31390 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda313a8 to 0xda313a8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda3195c to 0xda3195c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda31a50 to 0xda31a50 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda31ab0 to 0xda31ab0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda31bb0 to 0xda31bb0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda31c78 to 0xda31c78 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda31fb8 to 0xda31fb8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda32088 to 0xda32088 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda3249c to 0xda3249c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda3256c to 0xda3256c are not reached by any path from the entry, and their branches are not listed.
- `__glTextureRGB_L_NML_Span` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda32ac4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda32ac4-0xda335a8 (2788 bytes).
  It occupies 2788 bytes.
  The `lwc1` at 0xda32b1c loads 4 bytes from a0 (arg0 at entry) +0xdd4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9b4, including `lw` at 0xda32b24, `lw` at 0xda334a8.
  The `lw` at 0xda32b28 loads 4 bytes from [a0+2484] +0x0.
  The `lw` at 0xda32b30 loads 4 bytes from a0 (arg0 at entry) +0x7660.
  The `lw` at 0xda32b34 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  The `lwc1` at 0xda32b3c loads 4 bytes from a0 (arg0 at entry) +0x7654.
  The `lw` at 0xda32b40 loads 4 bytes from a0 (arg0 at entry) +0x7738.
  The `lwc1` at 0xda32b44 loads 4 bytes from a0 (arg0 at entry) +0x7648.
  The `lwc1` at 0xda32b48 loads 4 bytes from a0 (arg0 at entry) +0x764c.
  The `lwc1` at 0xda32b50 loads 4 bytes from a0 (arg0 at entry) +0x7658.
  5 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lwc1` at 0xda32b70, `lwc1` at 0xda32d40, `lwc1` at 0xda334a4.
  The `lwc1` at 0xda32b74 loads 4 bytes from [a0+28264] +0xf0.
  4 such `lw` accesses load 4 bytes from [a0+28264] +0xe4, including `lw` at 0xda32b94, `lw` at 0xda330c0, `lw` at 0xda3323c.
  3 such `lw` accesses load 4 bytes from [a0+28264] +0x4, including `lw` at 0xda32b98, `lw` at 0xda330c4, `lw` at 0xda33240.
  The `lwc1` at 0xda32ba0 loads 4 bytes from [[a0+28264]+228] +0x20.
  The `lw` at 0xda32ba4 loads 4 bytes from [[a0+28264]+228] +0x14.
  The `lw` at 0xda32ba8 loads 4 bytes from [[a0+28264]+228] +0x18.
  The `lw` at 0xda32bb4 loads 4 bytes from [[a0+28264]+228] +0x2c.
  The `lw` at 0xda32bb8 loads 4 bytes from [[a0+28264]+228] +0x0.
  The `lwc1` at 0xda32c5c loads 4 bytes from [[a0+28264]+228] +0x24.
  7 such `lw` accesses load 4 bytes from [a0+28264] +0x8, including `lw` at 0xda32c60, `lw` at 0xda3310c, `lw` at 0xda33140.
  43 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda32d9c, `lwc1` at 0xda32da0, `lwc1` at 0xda32dac.
  6 such `lwc1` accesses load 4 bytes from [a0+28264] +0x9c, including `lwc1` at 0xda32e70, `lwc1` at 0xda32ec0, `lwc1` at 0xda32f34.
  6 such `lwc1` accesses load 4 bytes from [a0+28264] +0xa0, including `lwc1` at 0xda32e74, `lwc1` at 0xda32ec4, `lwc1` at 0xda32f38.
  6 such `lwc1` accesses load 4 bytes from [a0+28264] +0xa4, including `lwc1` at 0xda32e78, `lwc1` at 0xda32ecc, `lwc1` at 0xda32f40.
  The `lw` at 0xda33078 loads 4 bytes from [a0+28264] +0xec.
  16 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda33114, `lw` at 0xda33180, `lw` at 0xda33184.
  9 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda33438, `swc1` at 0xda33440, `swc1` at 0xda33448.
  The `lwc1` at 0xda33474 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `lwc1` at 0xda33484 loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `lwc1` at 0xda33494 loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `lwc1` at 0xda334b4 loads 4 bytes from [a0+2484] +0x4.
  The `lwc1` at 0xda334dc loads 4 bytes from [a0+2484] +0x8.
  The `lwc1` at 0xda33500 loads 4 bytes from [a0+2484] +0xc.
  The `lwc1` at 0xda33520 loads 4 bytes from a0 (arg0 at entry) +0x76e4.
  The `lwc1` at 0xda33524 loads 4 bytes from a0 (arg0 at entry) +0x76f0.
  The `lwc1` at 0xda33528 loads 4 bytes from a0 (arg0 at entry) +0x76e8.
  The `lwc1` at 0xda33548 loads 4 bytes from a0 (arg0 at entry) +0x76f4.
  The `jalr` at 0xda32bdc calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda32c40 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda32c88 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda32cf0 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda32d14 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda32d2c calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda330ec calls __glFrac [0xda6cc70] with a0=[[a0+28264]+236], a1=?, a2=?, a3=?.
  The `jalr` at 0xda33168 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda33264 calls __glFrac [0xda6cc70] with a0=[[a0+28264]+236], a1=?, a2=?, a3=?.
  The `jalr` at 0xda332e0 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `bltz` branch at 0xda32b5c targets 0xda3355c, is taken when t2(=[a0+30304]-1) < 0 (signed), and falls through when t2(=[a0+30304]-1) >= 0 (signed).
  The `bc1fl` branch at 0xda32b88 targets 0xda33008, is taken when not (f12 <= f6(=[[a0+28264]+240]) (c.le.s at 0xda32b80)), and falls through when f12 <= f6(=[[a0+28264]+240]) (c.le.s at 0xda32b80); its branch-likely delay slot `mtc1 zero,$f14` at 0xda32b8c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda32bc4 targets 0xda32c00, is taken when t4(=[[a0+28264]+4]) != at(=0x2901), and falls through when t4(=[[a0+28264]+4]) == at(=0x2901).
  The `beq` branch at 0xda32bf8 targets 0xda32c58 and is always taken.
  The `bc1fl` branch at 0xda32c10 targets 0xda32c24, is taken when not (f0 < f20 (c.lt.s at 0xda32c08)), and falls through when f0 < f20 (c.lt.s at 0xda32c08); its branch-likely delay slot `c.lt.s $f2,$f0` at 0xda32c14 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda32c18 targets 0xda32c34 and is always taken.
  The `bc1fl` branch at 0xda32c28 targets 0xda32c38, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f22,$f22,$f4` at 0xda32c2c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda32c74 targets 0xda32cac, is taken when t7(=[[a0+28264]+8]) != at(=0x2901), and falls through when t7(=[[a0+28264]+8]) == at(=0x2901).
  The `beq` branch at 0xda32ca4 targets 0xda32d08 and is always taken.
  The `bc1fl` branch at 0xda32cbc targets 0xda32cd4, is taken when not (f0 < f10 (c.lt.s at 0xda32cb4)), and falls through when f0 < f10 (c.lt.s at 0xda32cb4); its branch-likely delay slot `c.lt.s $f2,$f0` at 0xda32cc0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda32cc8 targets 0xda32ce8 and is always taken.
  The `bc1fl` branch at 0xda32cd8 targets 0xda32ce8, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f20,$f20,$f4` at 0xda32cdc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda32d7c targets 0xda32e68, is taken when s7(=one of 0x0, 0x1, 0x2) != at(=0x2), and falls through when s7(=one of 0x0, 0x1, 0x2) == at(=0x2).
  The `beq` branch at 0xda32e60 targets 0xda33410 and is always taken.
  The `beq` branch at 0xda32e68 targets 0xda32e8c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xda32e84 targets 0xda32eb8 and is always taken.
  The `beq` branch at 0xda32eb8 targets 0xda32ee8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda32ee0 targets 0xda32f28 and is always taken.
  The `beq` branch at 0xda32f2c targets 0xda32f5c, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `beq` branch at 0xda32f54 targets 0xda32f98 and is always taken.
  The `beq` branch at 0xda32f98 targets 0xda32fc8, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0xda32fc0 targets 0xda33410 and is always taken.
  The `beq` branch at 0xda32ffc targets 0xda33410 and is always taken.
  The `bc1tl` branch at 0xda33018 targets 0xda33074, is taken when f12 == f14 (c.eq.s at 0xda33010), and falls through when not (f12 == f14 (c.eq.s at 0xda33010)); its branch-likely delay slot `mov.s $f2,$f14` at 0xda3301c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda33034 targets 0xda33044, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xda3303c targets 0xda33038, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xda33068 targets 0xda33074 and is always taken.
  The `beq` branch at 0xda330b8 targets 0xda3323c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0xda330d8 targets 0xda33110, is taken when t2(=[[a0+28264]+4]) != at(=0x2901), and falls through when t2(=[[a0+28264]+4]) == at(=0x2901).
  The `beq` branch at 0xda33108 targets 0xda3314c and is always taken.
  The `bgez` branch at 0xda33128 targets 0xda33138, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0xda33130 targets 0xda33148 and is always taken.
  The `bnel` branch at 0xda3313c targets 0xda3314c, is taken when v0(?) < v1(?) (signed), and falls through when v0(?) >= v1(?) (signed); its branch-likely delay slot `lw t5,8(s1)` at 0xda33140 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda33154 targets 0xda3319c, is taken when t5(=[[a0+28264]+8]) != at(=0x2901), and falls through when t5(=[[a0+28264]+8]) == at(=0x2901); its branch-likely delay slot `mul.s $f8,$f30,$f26` at 0xda33158 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda33190 targets 0xda331dc and is always taken.
  The `bgez` branch at 0xda331b8 targets 0xda331c8, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0xda331c0 targets 0xda331d8 and is always taken.
  The `bnel` branch at 0xda331cc targets 0xda331dc, is taken when v0(?) < a3(?) (signed), and falls through when v0(?) >= a3(?) (signed); its branch-likely delay slot `addiu t6,v1,-1` at 0xda331d0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda331f4 targets 0xda33210, is taken when t7(?) == 0, and falls through when t7(?) != 0; its branch-likely delay slot `lw t8,44(s0)` at 0xda331f8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda33204 targets 0xda33410 and is always taken.
  The `beq` branch at 0xda33234 targets 0xda33410 and is always taken.
  The `bne` branch at 0xda33250 targets 0xda33288, is taken when t8(=[[a0+28264]+4]) != at(=0x2901), and falls through when t8(=[[a0+28264]+4]) == at(=0x2901).
  The `beq` branch at 0xda33280 targets 0xda332c4 and is always taken.
  The `bgez` branch at 0xda332a0 targets 0xda332b0, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0xda332a8 targets 0xda332c0 and is always taken.
  The `bnel` branch at 0xda332b4 targets 0xda332c4, is taken when v0(?) < v1(?) (signed), and falls through when v0(?) >= v1(?) (signed); its branch-likely delay slot `lw t9,8(s1)` at 0xda332b8 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda332cc targets 0xda33314, is taken when t9(=[[a0+28264]+8]) != at(=0x2901), and falls through when t9(=[[a0+28264]+8]) == at(=0x2901); its branch-likely delay slot `mul.s $f10,$f30,$f26` at 0xda332d0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda33308 targets 0xda33354 and is always taken.
  The `bgez` branch at 0xda33330 targets 0xda33340, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0xda33338 targets 0xda33350 and is always taken.
  The `bnel` branch at 0xda33344 targets 0xda33354, is taken when v0(?) < a3(?) (signed), and falls through when v0(?) >= a3(?) (signed); its branch-likely delay slot `addiu t5,v1,-1` at 0xda33348 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda3336c targets 0xda33388, is taken when t4(?) == 0, and falls through when t4(?) != 0; its branch-likely delay slot `lw t2,44(s0)` at 0xda33370 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda3337c targets 0xda33410 and is always taken.
  The `bne` branch at 0xda3341c targets 0xda3344c, is taken when t4(=[[a0+2484]]) != at(=0x2100), and falls through when t4(=[[a0+2484]]) == at(=0x2100).
  The `beq` branch at 0xda33444 targets 0xda33514 and is always taken.
  The `bne` branch at 0xda33454 targets 0xda33464, is taken when v0(?) < 0x1 (unsigned), and falls through when v0(?) >= 0x1 (unsigned).
  The `beq` branch at 0xda33468 targets 0xda334a4, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `beq` branch at 0xda3349c targets 0xda33514 and is always taken.
  The `bgez` branch at 0xda33554 targets 0xda32b64, is taken when t5(?) >= 0 (signed), and falls through when t5(?) < 0 (signed).
  The return at 0xda335a0 has v0 = 0x0.
  The instructions from 0xda32c20 to 0xda32c20 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda32cd0 to 0xda32cd0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda33004 to 0xda33004 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda33070 to 0xda33070 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda33198 to 0xda33198 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda3320c to 0xda3320c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda33310 to 0xda33310 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda33384 to 0xda33384 are not reached by any path from the entry, and their branches are not listed.
- `__glTextureRGB_L_NML_StippledSpan` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda335a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda335a8-0xda34124 (2940 bytes).
  It occupies 2940 bytes.
  The `lwc1` at 0xda33600 loads 4 bytes from a0 (arg0 at entry) +0xdd4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9b4, including `lw` at 0xda33608, `lw` at 0xda34004.
  The `lw` at 0xda3360c loads 4 bytes from [a0+2484] +0x0.
  The `lw` at 0xda33614 loads 4 bytes from a0 (arg0 at entry) +0x7660.
  The `lw` at 0xda33618 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  The `lw` at 0xda33620 loads 4 bytes from a0 (arg0 at entry) +0x7740.
  The `lw` at 0xda33624 loads 4 bytes from a0 (arg0 at entry) +0x7738.
  The `lwc1` at 0xda3362c loads 4 bytes from a0 (arg0 at entry) +0x764c.
  The `lwc1` at 0xda33630 loads 4 bytes from a0 (arg0 at entry) +0x7648.
  The `lwc1` at 0xda33638 loads 4 bytes from a0 (arg0 at entry) +0x7654.
  The `lwc1` at 0xda33640 loads 4 bytes from a0 (arg0 at entry) +0x7658.
  17 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda33680, `lw` at 0xda33c7c, `lw` at 0xda33ce4.
  5 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lwc1` at 0xda336bc, `lwc1` at 0xda338b0, `lwc1` at 0xda34000.
  The `lwc1` at 0xda336c0 loads 4 bytes from [a0+28264] +0xf0.
  4 such `lw` accesses load 4 bytes from [a0+28264] +0xe4, including `lw` at 0xda336e0, `lw` at 0xda33c28, `lw` at 0xda33da4.
  3 such `lw` accesses load 4 bytes from [a0+28264] +0x4, including `lw` at 0xda336e4, `lw` at 0xda33c2c, `lw` at 0xda33da8.
  The `lwc1` at 0xda336ec loads 4 bytes from [[a0+28264]+228] +0x20.
  The `lw` at 0xda336f0 loads 4 bytes from [[a0+28264]+228] +0x14.
  The `lw` at 0xda336f4 loads 4 bytes from [[a0+28264]+228] +0x18.
  The `lw` at 0xda33700 loads 4 bytes from [[a0+28264]+228] +0x2c.
  The `lw` at 0xda33704 loads 4 bytes from [[a0+28264]+228] +0x0.
  The `lwc1` at 0xda337b8 loads 4 bytes from [[a0+28264]+228] +0x24.
  7 such `lw` accesses load 4 bytes from [a0+28264] +0x8, including `lw` at 0xda337bc, `lw` at 0xda33c74, `lw` at 0xda33ca8.
  43 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda3390c, `lwc1` at 0xda33910, `lwc1` at 0xda3391c.
  6 such `lwc1` accesses load 4 bytes from [a0+28264] +0x9c, including `lwc1` at 0xda339dc, `lwc1` at 0xda33a2c, `lwc1` at 0xda33a9c.
  6 such `lwc1` accesses load 4 bytes from [a0+28264] +0xa0, including `lwc1` at 0xda339e0, `lwc1` at 0xda33a30, `lwc1` at 0xda33aa0.
  6 such `lwc1` accesses load 4 bytes from [a0+28264] +0xa4, including `lwc1` at 0xda339e4, `lwc1` at 0xda33a38, `lwc1` at 0xda33aa8.
  The `lw` at 0xda33be0 loads 4 bytes from [a0+28264] +0xec.
  9 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda33f9c, `swc1` at 0xda33fa4, `swc1` at 0xda33fac.
  The `lwc1` at 0xda33fd8 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `lwc1` at 0xda33fe4 loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `lwc1` at 0xda33ff0 loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `lwc1` at 0xda34010 loads 4 bytes from [a0+2484] +0x4.
  The `lwc1` at 0xda34038 loads 4 bytes from [a0+2484] +0x8.
  The `lwc1` at 0xda3405c loads 4 bytes from [a0+2484] +0xc.
  The `lwc1` at 0xda3407c loads 4 bytes from a0 (arg0 at entry) +0x76e8.
  The `lwc1` at 0xda34080 loads 4 bytes from a0 (arg0 at entry) +0x76e4.
  The `lwc1` at 0xda340a0 loads 4 bytes from a0 (arg0 at entry) +0x76f0.
  The `lwc1` at 0xda340b4 loads 4 bytes from a0 (arg0 at entry) +0x76f4.
  The `jalr` at 0xda3372c calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda33798 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda337ec calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda3385c calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda33884 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda3389c calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda33c54 calls __glFrac [0xda6cc70] with a0=[[a0+28264]+236], a1=?, a2=?, a3=?.
  The `jalr` at 0xda33cd0 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda33dcc calls __glFrac [0xda6cc70] with a0=[[a0+28264]+236], a1=?, a2=?, a3=?.
  The `jalr` at 0xda33e48 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xda33644 targets 0xda340d8, is taken when t9(=[a0+30304]) == 0, and falls through when t9(=[a0+30304]) != 0.
  The `bne` branch at 0xda3365c targets 0xda3366c, is taken when t3(?) < 0x21 (signed), and falls through when t3(?) >= 0x21 (signed).
  The `bltz` branch at 0xda33694 targets 0xda340cc, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `beql` branch at 0xda336a8 targets 0xda34074, is taken when (t5(?) & t7(?)) == 0, and falls through when (t5(?) & t7(?)) != 0; its branch-likely delay slot `lw t3,328(sp)` at 0xda336ac runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda336d4 targets 0xda33b70, is taken when not (f12 <= f8(=[[a0+28264]+240]) (c.le.s at 0xda336cc)), and falls through when f12 <= f8(=[[a0+28264]+240]) (c.le.s at 0xda336cc); its branch-likely delay slot `mtc1 zero,$f14` at 0xda336d8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda33710 targets 0xda33754, is taken when t6(=[[a0+28264]+4]) != at(=0x2901), and falls through when t6(=[[a0+28264]+4]) == at(=0x2901).
  The `beq` branch at 0xda3374c targets 0xda337b4 and is always taken.
  The `bc1fl` branch at 0xda33764 targets 0xda33778, is taken when not (f0 < f22 (c.lt.s at 0xda3375c)), and falls through when f0 < f22 (c.lt.s at 0xda3375c); its branch-likely delay slot `c.lt.s $f20,$f0` at 0xda33768 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda3376c targets 0xda33788 and is always taken.
  The `bc1fl` branch at 0xda3377c targets 0xda3378c, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f24,$f24,$f6` at 0xda33780 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda337d4 targets 0xda33814, is taken when t8(=[[a0+28264]+8]) != at(=0x2901), and falls through when t8(=[[a0+28264]+8]) == at(=0x2901).
  The `beq` branch at 0xda3380c targets 0xda33878 and is always taken.
  The `bc1fl` branch at 0xda33824 targets 0xda3383c, is taken when not (f0 < f6 (c.lt.s at 0xda3381c)), and falls through when f0 < f6 (c.lt.s at 0xda3381c); its branch-likely delay slot `c.lt.s $f20,$f0` at 0xda33828 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda33830 targets 0xda33850 and is always taken.
  The `bc1fl` branch at 0xda33840 targets 0xda33850, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f22,$f22,$f8` at 0xda33844 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda338ec targets 0xda339d4, is taken when s8(=one of 0x0, 0x1, 0x2) != at(=0x2), and falls through when s8(=one of 0x0, 0x1, 0x2) == at(=0x2).
  The `beq` branch at 0xda339cc targets 0xda33f74 and is always taken.
  The `beq` branch at 0xda339d4 targets 0xda339f8, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda339f0 targets 0xda33a24 and is always taken.
  The `beq` branch at 0xda33a24 targets 0xda33a54, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0xda33a4c targets 0xda33a90 and is always taken.
  The `beq` branch at 0xda33a94 targets 0xda33ac4, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0xda33abc targets 0xda33b00 and is always taken.
  The `beq` branch at 0xda33b00 targets 0xda33b30, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xda33b28 targets 0xda33f74 and is always taken.
  The `beq` branch at 0xda33b64 targets 0xda33f74 and is always taken.
  The `bc1tl` branch at 0xda33b80 targets 0xda33bdc, is taken when f12 == f14 (c.eq.s at 0xda33b78), and falls through when not (f12 == f14 (c.eq.s at 0xda33b78)); its branch-likely delay slot `mov.s $f2,$f14` at 0xda33b84 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda33b9c targets 0xda33bac, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xda33ba4 targets 0xda33ba0, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xda33bd0 targets 0xda33bdc and is always taken.
  The `beq` branch at 0xda33c20 targets 0xda33da4, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0xda33c40 targets 0xda33c78, is taken when t2(=[[a0+28264]+4]) != at(=0x2901), and falls through when t2(=[[a0+28264]+4]) == at(=0x2901).
  The `beq` branch at 0xda33c70 targets 0xda33cb4 and is always taken.
  The `bgez` branch at 0xda33c90 targets 0xda33ca0, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0xda33c98 targets 0xda33cb0 and is always taken.
  The `bnel` branch at 0xda33ca4 targets 0xda33cb4, is taken when v0(?) < v1(?) (signed), and falls through when v0(?) >= v1(?) (signed); its branch-likely delay slot `lw t4,8(s2)` at 0xda33ca8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda33cbc targets 0xda33cfc, is taken when t4(=[[a0+28264]+8]) != at(=0x2901), and falls through when t4(=[[a0+28264]+8]) == at(=0x2901).
  The `beq` branch at 0xda33cf4 targets 0xda33d40 and is always taken.
  The `bgez` branch at 0xda33d1c targets 0xda33d2c, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0xda33d24 targets 0xda33d3c and is always taken.
  The `bnel` branch at 0xda33d30 targets 0xda33d40, is taken when v0(?) < a2(?) (signed), and falls through when v0(?) >= a2(?) (signed); its branch-likely delay slot `addiu t5,v1,-1` at 0xda33d34 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda33d58 targets 0xda33d74, is taken when t8(?) == 0, and falls through when t8(?) != 0; its branch-likely delay slot `lw t3,44(s0)` at 0xda33d5c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda33d68 targets 0xda33f74 and is always taken.
  The `beq` branch at 0xda33d9c targets 0xda33f74 and is always taken.
  The `bne` branch at 0xda33db8 targets 0xda33df0, is taken when t3(=[[a0+28264]+4]) != at(=0x2901), and falls through when t3(=[[a0+28264]+4]) == at(=0x2901).
  The `beq` branch at 0xda33de8 targets 0xda33e2c and is always taken.
  The `bgez` branch at 0xda33e08 targets 0xda33e18, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0xda33e10 targets 0xda33e28 and is always taken.
  The `bnel` branch at 0xda33e1c targets 0xda33e2c, is taken when v0(?) < v1(?) (signed), and falls through when v0(?) >= v1(?) (signed); its branch-likely delay slot `lw t7,8(s2)` at 0xda33e20 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda33e34 targets 0xda33e74, is taken when t7(=[[a0+28264]+8]) != at(=0x2901), and falls through when t7(=[[a0+28264]+8]) == at(=0x2901).
  The `beq` branch at 0xda33e6c targets 0xda33eb8 and is always taken.
  The `bgez` branch at 0xda33e94 targets 0xda33ea4, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0xda33e9c targets 0xda33eb4 and is always taken.
  The `bnel` branch at 0xda33ea8 targets 0xda33eb8, is taken when v0(?) < a2(?) (signed), and falls through when v0(?) >= a2(?) (signed); its branch-likely delay slot `addiu t4,v1,-1` at 0xda33eac runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda33ed0 targets 0xda33eec, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `lw t2,44(s0)` at 0xda33ed4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda33ee0 targets 0xda33f74 and is always taken.
  The `bne` branch at 0xda33f80 targets 0xda33fb0, is taken when t6(=[[a0+2484]]) != at(=0x2100), and falls through when t6(=[[a0+2484]]) == at(=0x2100).
  The `beq` branch at 0xda33fa8 targets 0xda34070 and is always taken.
  The `bne` branch at 0xda33fb8 targets 0xda33fc8, is taken when v0(?) < 0x1 (unsigned), and falls through when v0(?) >= 0x1 (unsigned).
  The `beq` branch at 0xda33fcc targets 0xda34000, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0xda33ff8 targets 0xda34070 and is always taken.
  The `bgez` branch at 0xda340c4 targets 0xda3369c, is taken when t4(?) >= 0 (signed), and falls through when t4(?) < 0 (signed).
  The `bnel` branch at 0xda340d0 targets 0xda33650, is taken when t8(?) != 0, and falls through when t8(?) == 0; its branch-likely delay slot `lw t3,296(sp)` at 0xda340d4 runs only when taken and is annulled on fall-through.
  The return at 0xda3411c has v0 = 0x0.
  The instructions from 0xda33774 to 0xda33774 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda33838 to 0xda33838 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda33b6c to 0xda33b6c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda33bd8 to 0xda33bd8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda33d70 to 0xda33d70 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda33ee8 to 0xda33ee8 are not reached by any path from the entry, and their branches are not listed.
- `__glTextureRGB_L_LML_Span` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda34124 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda34124-0xda3555c (5176 bytes).
  It occupies 5176 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9b4, including `lw` at 0xda3417c, `lw` at 0xda3543c.
  The `lwc1` at 0xda34180 loads 4 bytes from a0 (arg0 at entry) +0xdd4.
  The `lw` at 0xda34184 loads 4 bytes from [a0+2484] +0x0.
  The `lw` at 0xda3418c loads 4 bytes from a0 (arg0 at entry) +0x7660.
  The `lw` at 0xda34190 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  The `lw` at 0xda34198 loads 4 bytes from a0 (arg0 at entry) +0x7738.
  The `lwc1` at 0xda341a4 loads 4 bytes from a0 (arg0 at entry) +0x7648.
  The `lwc1` at 0xda341ac loads 4 bytes from a0 (arg0 at entry) +0x764c.
  The `lwc1` at 0xda341b4 loads 4 bytes from a0 (arg0 at entry) +0x7654.
  The `lwc1` at 0xda341bc loads 4 bytes from a0 (arg0 at entry) +0x7658.
  7 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lwc1` at 0xda341dc, `lwc1` at 0xda343a8, `lwc1` at 0xda348c0.
  The `lwc1` at 0xda341e0 loads 4 bytes from [a0+28264] +0xf0.
  4 such `lw` accesses load 4 bytes from [a0+28264] +0xe4, including `lw` at 0xda34208, `lw` at 0xda34738, `lw` at 0xda34aa4.
  4 such `lw` accesses load 4 bytes from [a0+28264] +0x4, including `lw` at 0xda34210, `lw` at 0xda34750, `lw` at 0xda34acc.
  The `lwc1` at 0xda34214 loads 4 bytes from [[a0+28264]+228] +0x20.
  The `lw` at 0xda34218 loads 4 bytes from [[a0+28264]+228] +0x14.
  The `lw` at 0xda3421c loads 4 bytes from [[a0+28264]+228] +0x18.
  The `lw` at 0xda34224 loads 4 bytes from [[a0+28264]+228] +0x2c.
  The `lw` at 0xda3422c loads 4 bytes from [[a0+28264]+228] +0x0.
  The `lwc1` at 0xda342cc loads 4 bytes from [[a0+28264]+228] +0x24.
  4 such `lw` accesses load 4 bytes from [a0+28264] +0x8, including `lw` at 0xda342d0, `lw` at 0xda347f4, `lw` at 0xda34b68.
  96 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda34404, `lwc1` at 0xda34408, `lwc1` at 0xda34414.
  16 such `lwc1` accesses load 4 bytes from [a0+28264] +0x9c, including `lwc1` at 0xda344d8, `lwc1` at 0xda34528, `lwc1` at 0xda34598.
  16 such `lwc1` accesses load 4 bytes from [a0+28264] +0xa0, including `lwc1` at 0xda344dc, `lwc1` at 0xda3452c, `lwc1` at 0xda3459c.
  16 such `lwc1` accesses load 4 bytes from [a0+28264] +0xa4, including `lwc1` at 0xda344e0, `lwc1` at 0xda34534, `lwc1` at 0xda345a4.
  The `lw` at 0xda346d8 loads 4 bytes from [a0+28264] +0xec.
  12 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda34754, `lw` at 0xda3475c, `lw` at 0xda34760.
  9 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda353c4, `swc1` at 0xda353cc, `swc1` at 0xda353d4.
  The `lwc1` at 0xda35404 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `lwc1` at 0xda35414 loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `lwc1` at 0xda35424 loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `lwc1` at 0xda35448 loads 4 bytes from [a0+2484] +0x4.
  The `lwc1` at 0xda35474 loads 4 bytes from [a0+2484] +0x8.
  The `lwc1` at 0xda3549c loads 4 bytes from [a0+2484] +0xc.
  The `lwc1` at 0xda354c0 loads 4 bytes from a0 (arg0 at entry) +0x76e4.
  The `lwc1` at 0xda354d8 loads 4 bytes from a0 (arg0 at entry) +0x76e8.
  The `lwc1` at 0xda354e8 loads 4 bytes from a0 (arg0 at entry) +0x76f0.
  The `lwc1` at 0xda354f8 loads 4 bytes from a0 (arg0 at entry) +0x76f4.
  The `jalr` at 0xda34248 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?; fp f14=[a0+3544].
  The `jalr` at 0xda342b0 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?; fp f14=[a0+3544].
  The `jalr` at 0xda342f8 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda34360 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda3437c calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda34394 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda34780 calls __glFloor [0xda6cc80] with a0=[[a0+28264]+236], a1=?, a2=?, a3=?; fp f14=[a0+3544].
  The `jalr` at 0xda347d4 calls __glFloor [0xda6cc80] with a0=[[a0+28264]+236], a1=?, a2=?, a3=?; fp f14=[a0+3544].
  The `jalr` at 0xda3481c calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda34878 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda34894 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda348ac calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda34aec calls __glFloor [0xda6cc80] with a0=[[a0+28264]+236], a1=?, a2=?, a3=?; fp f14=[a0+3544].
  The `jalr` at 0xda34b48 calls __glFloor [0xda6cc80] with a0=[[a0+28264]+236], a1=?, a2=?, a3=?; fp f14=[a0+3544].
  The `jalr` at 0xda34b90 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda34bf8 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda34c14 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda34c30 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda34f58 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda34fb8 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda34ff8 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda35060 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda3507c calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda35094 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `bltz` branch at 0xda341c4 targets 0xda35510, is taken when t1(=[a0+30304]-1) < 0 (signed), and falls through when t1(=[a0+30304]-1) >= 0 (signed).
  The `bc1fl` branch at 0xda341f8 targets 0xda3466c, is taken when not (f12 <= f8(=[[a0+28264]+240]) (c.le.s at 0xda341f0)), and falls through when f12 <= f8(=[[a0+28264]+240]) (c.le.s at 0xda341f0); its branch-likely delay slot `mtc1 zero,$f24` at 0xda341fc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda34238 targets 0xda34270, is taken when t3(=[[a0+28264]+4]) != at(=0x2901), and falls through when t3(=[[a0+28264]+4]) == at(=0x2901).
  The `beq` branch at 0xda34268 targets 0xda342c8 and is always taken.
  The `bc1fl` branch at 0xda34280 targets 0xda34298, is taken when not (f0 < f6 (c.lt.s at 0xda34278)), and falls through when f0 < f6 (c.lt.s at 0xda34278); its branch-likely delay slot `c.lt.s $f2,$f0` at 0xda34284 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda3428c targets 0xda342ac and is always taken.
  The `bc1fl` branch at 0xda3429c targets 0xda342ac, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f20,$f20,$f26` at 0xda342a0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda342e8 targets 0xda34320, is taken when t7(=[[a0+28264]+8]) != at(=0x2901), and falls through when t7(=[[a0+28264]+8]) == at(=0x2901).
  The `beq` branch at 0xda34318 targets 0xda34374 and is always taken.
  The `bc1fl` branch at 0xda34330 targets 0xda34348, is taken when not (f0 < f6 (c.lt.s at 0xda34328)), and falls through when f0 < f6 (c.lt.s at 0xda34328); its branch-likely delay slot `c.lt.s $f2,$f0` at 0xda34334 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda3433c targets 0xda3435c and is always taken.
  The `bc1fl` branch at 0xda3434c targets 0xda3435c, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f28,$f28,$f8` at 0xda34350 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda343e4 targets 0xda344d0, is taken when t1(=one of 0x0, 0x1, 0x2) != at(=0x2), and falls through when t1(=one of 0x0, 0x1, 0x2) == at(=0x2).
  The `beq` branch at 0xda344c8 targets 0xda35398 and is always taken.
  The `beq` branch at 0xda344d0 targets 0xda344f4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xda344ec targets 0xda34520 and is always taken.
  The `beq` branch at 0xda34520 targets 0xda34550, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0xda34548 targets 0xda3458c and is always taken.
  The `beq` branch at 0xda34590 targets 0xda345c0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xda345b8 targets 0xda345fc and is always taken.
  The `beq` branch at 0xda345fc targets 0xda3462c, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda34624 targets 0xda35398 and is always taken.
  The `beq` branch at 0xda34660 targets 0xda35398 and is always taken.
  The `bc1tl` branch at 0xda3467c targets 0xda346d4, is taken when f12 == f24 (c.eq.s at 0xda34674), and falls through when not (f12 == f24 (c.eq.s at 0xda34674)); its branch-likely delay slot `mov.s $f2,$f24` at 0xda34680 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda34698 targets 0xda346a8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xda346a0 targets 0xda3469c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xda346c8 targets 0xda346d4 and is always taken.
  The `beq` branch at 0xda34724 targets 0xda34a94, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0xda34770 targets 0xda347a0, is taken when t1(=[[a0+28264]+4]) != at(=0x2901), and falls through when t1(=[[a0+28264]+4]) == at(=0x2901).
  The `beq` branch at 0xda34798 targets 0xda347ec and is always taken.
  The `bc1fl` branch at 0xda347a8 targets 0xda347bc, is taken when not (f0 < f24 (c.lt.s at 0xda347a0)), and falls through when f0 < f24 (c.lt.s at 0xda347a0); its branch-likely delay slot `c.lt.s $f2,$f0` at 0xda347ac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda347b0 targets 0xda347cc and is always taken.
  The `bc1fl` branch at 0xda347c0 targets 0xda347d0, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f20,$f20,$f26` at 0xda347c4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3480c targets 0xda34838, is taken when t3(=[[a0+28264]+8]) != at(=0x2901), and falls through when t3(=[[a0+28264]+8]) == at(=0x2901).
  The `beq` branch at 0xda34830 targets 0xda3488c and is always taken.
  The `bc1fl` branch at 0xda34848 targets 0xda34860, is taken when not (f0 < f4 (c.lt.s at 0xda34840)), and falls through when f0 < f4 (c.lt.s at 0xda34840); its branch-likely delay slot `c.lt.s $f2,$f0` at 0xda3484c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda34854 targets 0xda34874 and is always taken.
  The `bc1fl` branch at 0xda34864 targets 0xda34874, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f28,$f28,$f8` at 0xda34868 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda34908 targets 0xda3492c, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda34924 targets 0xda3494c and is always taken.
  The `beq` branch at 0xda3494c targets 0xda3497c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xda34974 targets 0xda349b4 and is always taken.
  The `beq` branch at 0xda349b8 targets 0xda349e8, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xda349e0 targets 0xda34a28 and is always taken.
  The `beq` branch at 0xda34a28 targets 0xda34a58, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0xda34a50 targets 0xda35398 and is always taken.
  The `beq` branch at 0xda34a8c targets 0xda35398 and is always taken.
  The `bne` branch at 0xda34adc targets 0xda34b14, is taken when t3(=[[a0+28264]+4]) != at(=0x2901), and falls through when t3(=[[a0+28264]+4]) == at(=0x2901).
  The `beq` branch at 0xda34b0c targets 0xda34b60 and is always taken.
  The `bc1fl` branch at 0xda34b1c targets 0xda34b30, is taken when not (f0 < f24 (c.lt.s at 0xda34b14)), and falls through when f0 < f24 (c.lt.s at 0xda34b14); its branch-likely delay slot `c.lt.s $f2,$f0` at 0xda34b20 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda34b24 targets 0xda34b40 and is always taken.
  The `bc1fl` branch at 0xda34b34 targets 0xda34b44, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f20,$f20,$f26` at 0xda34b38 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda34b80 targets 0xda34bb8, is taken when t7(=[[a0+28264]+8]) != at(=0x2901), and falls through when t7(=[[a0+28264]+8]) == at(=0x2901).
  The `beq` branch at 0xda34bb0 targets 0xda34c0c and is always taken.
  The `bc1fl` branch at 0xda34bc8 targets 0xda34be0, is taken when not (f0 < f4 (c.lt.s at 0xda34bc0)), and falls through when f0 < f4 (c.lt.s at 0xda34bc0); its branch-likely delay slot `c.lt.s $f2,$f0` at 0xda34bcc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda34bd4 targets 0xda34bf4 and is always taken.
  The `bc1fl` branch at 0xda34be4 targets 0xda34bf4, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f28,$f28,$f8` at 0xda34be8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda34c90 targets 0xda34d78, is taken when v0(?) >= 0x1 (unsigned), and falls through when v0(?) < 0x1 (unsigned).
  The `beq` branch at 0xda34d70 targets 0xda34f0c and is always taken.
  The `beq` branch at 0xda34d78 targets 0xda34d9c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda34d94 targets 0xda34dc8 and is always taken.
  The `beq` branch at 0xda34dc8 targets 0xda34df8, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0xda34df0 targets 0xda34e34 and is always taken.
  The `beq` branch at 0xda34e38 targets 0xda34e68, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0xda34e60 targets 0xda34ea4 and is always taken.
  The `beq` branch at 0xda34ea4 targets 0xda34ed4, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `beq` branch at 0xda34ecc targets 0xda34f0c and is always taken.
  The `bne` branch at 0xda34f44 targets 0xda34f7c, is taken when t3(=[[a0+28264]+4]) != at(=0x2901), and falls through when t3(=[[a0+28264]+4]) == at(=0x2901).
  The `beq` branch at 0xda34f74 targets 0xda34fcc and is always taken.
  The `bc1fl` branch at 0xda34f8c targets 0xda34fa0, is taken when not (f0 < f12 (c.lt.s at 0xda34f84)), and falls through when f0 < f12 (c.lt.s at 0xda34f84); its branch-likely delay slot `c.lt.s $f2,$f0` at 0xda34f90 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda34f94 targets 0xda34fb0 and is always taken.
  The `bc1fl` branch at 0xda34fa4 targets 0xda34fb4, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f20,$f20,$f10` at 0xda34fa8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda34fe8 targets 0xda35020, is taken when t7(=[[a0+28264]+8]) != at(=0x2901), and falls through when t7(=[[a0+28264]+8]) == at(=0x2901).
  The `beq` branch at 0xda35018 targets 0xda35074 and is always taken.
  The `bc1fl` branch at 0xda35030 targets 0xda35048, is taken when not (f0 < f6 (c.lt.s at 0xda35028)), and falls through when f0 < f6 (c.lt.s at 0xda35028); its branch-likely delay slot `c.lt.s $f2,$f0` at 0xda35034 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda3503c targets 0xda3505c and is always taken.
  The `bc1fl` branch at 0xda3504c targets 0xda3505c, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f28,$f28,$f10` at 0xda35050 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda350f4 targets 0xda351ec, is taken when t1(=one of 0x0, 0x1, 0x2) != at(=0x2), and falls through when t1(=one of 0x0, 0x1, 0x2) == at(=0x2).
  The `beq` branch at 0xda351e4 targets 0xda35398 and is always taken.
  The `beq` branch at 0xda351ec targets 0xda3521c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xda35214 targets 0xda35254 and is always taken.
  The `beq` branch at 0xda35254 targets 0xda35284, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0xda3527c targets 0xda352c0 and is always taken.
  The `beq` branch at 0xda352c4 targets 0xda352f4, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xda352ec targets 0xda35330 and is always taken.
  The `beq` branch at 0xda35330 targets 0xda35360, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda35358 targets 0xda35398 and is always taken.
  The `bne` branch at 0xda353a4 targets 0xda353d8, is taken when t2(=[[a0+2484]]) != at(=0x2100), and falls through when t2(=[[a0+2484]]) == at(=0x2100).
  The `beq` branch at 0xda353d0 targets 0xda354b4 and is always taken.
  The `bne` branch at 0xda353e0 targets 0xda353f0, is taken when v0(?) < 0x1 (unsigned), and falls through when v0(?) >= 0x1 (unsigned).
  The `beq` branch at 0xda353f4 targets 0xda35434, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0xda3542c targets 0xda354b4 and is always taken.
  The `bgez` branch at 0xda35508 targets 0xda341d0, is taken when t5(?) >= 0 (signed), and falls through when t5(?) < 0 (signed).
  The return at 0xda35554 has v0 = 0x0.
  The instructions from 0xda34294 to 0xda34294 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda34344 to 0xda34344 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda34668 to 0xda34668 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda346d0 to 0xda346d0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda347b8 to 0xda347b8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda3485c to 0xda3485c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda34b2c to 0xda34b2c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda34bdc to 0xda34bdc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda34f9c to 0xda34f9c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda35044 to 0xda35044 are not reached by any path from the entry, and their branches are not listed.
- `__glTextureRGB_L_LML_StippledSpan` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda3555c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda3555c-0xda36a28 (5324 bytes).
  It occupies 5324 bytes.
  The `lwc1` at 0xda355b4 loads 4 bytes from a0 (arg0 at entry) +0xdd4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9b4, including `lw` at 0xda355bc, `lw` at 0xda368f0.
  The `lw` at 0xda355c0 loads 4 bytes from [a0+2484] +0x0.
  The `lw` at 0xda355c8 loads 4 bytes from a0 (arg0 at entry) +0x7660.
  The `lw` at 0xda355cc loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  The `lw` at 0xda355d4 loads 4 bytes from a0 (arg0 at entry) +0x7738.
  The `lw` at 0xda355dc loads 4 bytes from a0 (arg0 at entry) +0x7740.
  The `lwc1` at 0xda355e4 loads 4 bytes from a0 (arg0 at entry) +0x7648.
  The `lwc1` at 0xda355ec loads 4 bytes from a0 (arg0 at entry) +0x764c.
  The `lwc1` at 0xda355f4 loads 4 bytes from a0 (arg0 at entry) +0x7654.
  The `lwc1` at 0xda355fc loads 4 bytes from a0 (arg0 at entry) +0x7658.
  13 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda3563c, `lw` at 0xda35bf8, `lw` at 0xda35c00.
  7 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lwc1` at 0xda35674, `lwc1` at 0xda35840, `lwc1` at 0xda35d60.
  The `lwc1` at 0xda3567c loads 4 bytes from [a0+28264] +0xf0.
  4 such `lw` accesses load 4 bytes from [a0+28264] +0xe4, including `lw` at 0xda356a0, `lw` at 0xda35bdc, `lw` at 0xda35f4c.
  4 such `lw` accesses load 4 bytes from [a0+28264] +0x4, including `lw` at 0xda356a8, `lw` at 0xda35bf4, `lw` at 0xda35f78.
  The `lwc1` at 0xda356ac loads 4 bytes from [[a0+28264]+228] +0x20.
  The `lw` at 0xda356b0 loads 4 bytes from [[a0+28264]+228] +0x14.
  The `lw` at 0xda356b4 loads 4 bytes from [[a0+28264]+228] +0x18.
  The `lw` at 0xda356c8 loads 4 bytes from [[a0+28264]+228] +0x2c.
  The `lw` at 0xda356cc loads 4 bytes from [[a0+28264]+228] +0x0.
  The `lwc1` at 0xda35764 loads 4 bytes from [[a0+28264]+228] +0x24.
  4 such `lw` accesses load 4 bytes from [a0+28264] +0x8, including `lw` at 0xda35768, `lw` at 0xda35c94, `lw` at 0xda36010.
  96 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda358a0, `lwc1` at 0xda358a4, `lwc1` at 0xda358b0.
  16 such `lwc1` accesses load 4 bytes from [a0+28264] +0x9c, including `lwc1` at 0xda35974, `lwc1` at 0xda359c4, `lwc1` at 0xda35a34.
  16 such `lwc1` accesses load 4 bytes from [a0+28264] +0xa0, including `lwc1` at 0xda35978, `lwc1` at 0xda359c8, `lwc1` at 0xda35a38.
  16 such `lwc1` accesses load 4 bytes from [a0+28264] +0xa4, including `lwc1` at 0xda3597c, `lwc1` at 0xda359d0, `lwc1` at 0xda35a40.
  The `lw` at 0xda35b80 loads 4 bytes from [a0+28264] +0xec.
  9 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda36880, `swc1` at 0xda36888, `swc1` at 0xda36890.
  The `lwc1` at 0xda368c0 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `lwc1` at 0xda368cc loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `lwc1` at 0xda368d8 loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `lwc1` at 0xda368fc loads 4 bytes from [a0+2484] +0x4.
  The `lwc1` at 0xda36928 loads 4 bytes from [a0+2484] +0x8.
  The `lwc1` at 0xda36950 loads 4 bytes from [a0+2484] +0xc.
  The `lwc1` at 0xda36970 loads 4 bytes from a0 (arg0 at entry) +0x76e4.
  The `lwc1` at 0xda36990 loads 4 bytes from a0 (arg0 at entry) +0x76e8.
  The `lwc1` at 0xda369a4 loads 4 bytes from a0 (arg0 at entry) +0x76f0.
  The `lwc1` at 0xda369b4 loads 4 bytes from a0 (arg0 at entry) +0x76f4.
  The `jalr` at 0xda356e8 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?; fp f14=[a0+3544].
  The `jalr` at 0xda3574c calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?; fp f14=[a0+3544].
  The `jalr` at 0xda35790 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda357f8 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda35814 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda3582c calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda35c28 calls __glFloor [0xda6cc80] with a0=[[a0+28264]+236], a1=?, a2=?, a3=?; fp f14=[a0+3544].
  The `jalr` at 0xda35c78 calls __glFloor [0xda6cc80] with a0=[[a0+28264]+236], a1=?, a2=?, a3=?; fp f14=[a0+3544].
  The `jalr` at 0xda35cbc calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda35d18 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda35d34 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda35d4c calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda35f9c calls __glFloor [0xda6cc80] with a0=[[a0+28264]+236], a1=?, a2=?, a3=?; fp f14=[a0+3544].
  The `jalr` at 0xda35ff4 calls __glFloor [0xda6cc80] with a0=[[a0+28264]+236], a1=?, a2=?, a3=?; fp f14=[a0+3544].
  The `jalr` at 0xda36038 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda360a0 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda360bc calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda360d8 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda3640c calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda3646c calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda364ac calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda36514 calls __glFloor [0xda6cc80] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda36530 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda36548 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xda35600 targets 0xda369dc, is taken when t9(=[a0+30304]) == 0, and falls through when t9(=[a0+30304]) != 0.
  The `bne` branch at 0xda35618 targets 0xda35628, is taken when t2(?) < 0x21 (signed), and falls through when t2(?) >= 0x21 (signed).
  The `bltz` branch at 0xda35650 targets 0xda369d0, is taken when t9(?) < 0 (signed), and falls through when t9(?) >= 0 (signed).
  The `beql` branch at 0xda3566c targets 0xda36968, is taken when (t3(?) & t2(?)) == 0, and falls through when (t3(?) & t2(?)) != 0; its branch-likely delay slot `lw t4,376(sp)` at 0xda35670 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda35690 targets 0xda35b10, is taken when not (f12 <= f10(=[[a0+28264]+240]) (c.le.s at 0xda35688)), and falls through when f12 <= f10(=[[a0+28264]+240]) (c.le.s at 0xda35688); its branch-likely delay slot `mtc1 zero,$f24` at 0xda35694 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda356d8 targets 0xda3570c, is taken when t8(=[[a0+28264]+4]) != at(=0x2901), and falls through when t8(=[[a0+28264]+4]) == at(=0x2901).
  The `beq` branch at 0xda35704 targets 0xda35760 and is always taken.
  The `bc1fl` branch at 0xda3571c targets 0xda35734, is taken when not (f0 < f10(=[[a0+28264]+240]) (c.lt.s at 0xda35714)), and falls through when f0 < f10(=[[a0+28264]+240]) (c.lt.s at 0xda35714); its branch-likely delay slot `c.lt.s $f2,$f0` at 0xda35720 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda35728 targets 0xda35748 and is always taken.
  The `bc1fl` branch at 0xda35738 targets 0xda35748, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f20,$f20,$f4` at 0xda3573c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda35780 targets 0xda357b8, is taken when t6(=[[a0+28264]+8]) != at(=0x2901), and falls through when t6(=[[a0+28264]+8]) == at(=0x2901).
  The `beq` branch at 0xda357b0 targets 0xda3580c and is always taken.
  The `bc1fl` branch at 0xda357c8 targets 0xda357e0, is taken when not (f0 < f4 (c.lt.s at 0xda357c0)), and falls through when f0 < f4 (c.lt.s at 0xda357c0); its branch-likely delay slot `c.lt.s $f2,$f0` at 0xda357cc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda357d4 targets 0xda357f4 and is always taken.
  The `bc1fl` branch at 0xda357e4 targets 0xda357f4, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f28,$f28,$f6` at 0xda357e8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda35880 targets 0xda3596c, is taken when t4(=one of 0x0, 0x1, 0x2) != at(=0x2), and falls through when t4(=one of 0x0, 0x1, 0x2) == at(=0x2).
  The `beq` branch at 0xda35964 targets 0xda36854 and is always taken.
  The `beq` branch at 0xda3596c targets 0xda35990, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xda35988 targets 0xda359bc and is always taken.
  The `beq` branch at 0xda359bc targets 0xda359ec, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xda359e4 targets 0xda35a28 and is always taken.
  The `beq` branch at 0xda35a2c targets 0xda35a5c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xda35a54 targets 0xda35a98 and is always taken.
  The `beq` branch at 0xda35a98 targets 0xda35acc, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0xda35ac4 targets 0xda36854 and is always taken.
  The `beq` branch at 0xda35b04 targets 0xda36854 and is always taken.
  The `bc1tl` branch at 0xda35b20 targets 0xda35b7c, is taken when f12 == f24 (c.eq.s at 0xda35b18), and falls through when not (f12 == f24 (c.eq.s at 0xda35b18)); its branch-likely delay slot `mov.s $f2,$f24` at 0xda35b24 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda35b3c targets 0xda35b4c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xda35b44 targets 0xda35b40, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xda35b70 targets 0xda35b7c and is always taken.
  The `beq` branch at 0xda35bc8 targets 0xda35f3c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0xda35c14 targets 0xda35c44, is taken when t4(=[[a0+28264]+4]) != at(=0x2901), and falls through when t4(=[[a0+28264]+4]) == at(=0x2901).
  The `beq` branch at 0xda35c3c targets 0xda35c8c and is always taken.
  The `bc1fl` branch at 0xda35c4c targets 0xda35c60, is taken when not (f0 < f24 (c.lt.s at 0xda35c44)), and falls through when f0 < f24 (c.lt.s at 0xda35c44); its branch-likely delay slot `c.lt.s $f2,$f0` at 0xda35c50 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda35c54 targets 0xda35c70 and is always taken.
  The `bc1fl` branch at 0xda35c64 targets 0xda35c74, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f20,$f20,$f6` at 0xda35c68 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda35cac targets 0xda35cd8, is taken when t8(=[[a0+28264]+8]) != at(=0x2901), and falls through when t8(=[[a0+28264]+8]) == at(=0x2901).
  The `beq` branch at 0xda35cd0 targets 0xda35d2c and is always taken.
  The `bc1fl` branch at 0xda35ce8 targets 0xda35d00, is taken when not (f0 < f6 (c.lt.s at 0xda35ce0)), and falls through when f0 < f6 (c.lt.s at 0xda35ce0); its branch-likely delay slot `c.lt.s $f2,$f0` at 0xda35cec runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda35cf4 targets 0xda35d14 and is always taken.
  The `bc1fl` branch at 0xda35d04 targets 0xda35d14, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f28,$f28,$f10` at 0xda35d08 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda35dc4 targets 0xda35de8, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0xda35de0 targets 0xda35e00 and is always taken.
  The `beq` branch at 0xda35e00 targets 0xda35e30, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `beq` branch at 0xda35e28 targets 0xda35e5c and is always taken.
  The `beq` branch at 0xda35e60 targets 0xda35e90, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xda35e88 targets 0xda35ec8 and is always taken.
  The `beq` branch at 0xda35ec8 targets 0xda35efc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xda35ef4 targets 0xda36854 and is always taken.
  The `beq` branch at 0xda35f34 targets 0xda36854 and is always taken.
  The `bne` branch at 0xda35f88 targets 0xda35fc0, is taken when t8(=[[a0+28264]+4]) != at(=0x2901), and falls through when t8(=[[a0+28264]+4]) == at(=0x2901).
  The `beq` branch at 0xda35fb8 targets 0xda36008 and is always taken.
  The `bc1fl` branch at 0xda35fc8 targets 0xda35fdc, is taken when not (f0 < f24 (c.lt.s at 0xda35fc0)), and falls through when f0 < f24 (c.lt.s at 0xda35fc0); its branch-likely delay slot `c.lt.s $f2,$f0` at 0xda35fcc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda35fd0 targets 0xda35fec and is always taken.
  The `bc1fl` branch at 0xda35fe0 targets 0xda35ff0, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f20,$f20,$f6` at 0xda35fe4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda36028 targets 0xda36060, is taken when t6(=[[a0+28264]+8]) != at(=0x2901), and falls through when t6(=[[a0+28264]+8]) == at(=0x2901).
  The `beq` branch at 0xda36058 targets 0xda360b4 and is always taken.
  The `bc1fl` branch at 0xda36070 targets 0xda36088, is taken when not (f0 < f8 (c.lt.s at 0xda36068)), and falls through when f0 < f8 (c.lt.s at 0xda36068); its branch-likely delay slot `c.lt.s $f2,$f0` at 0xda36074 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda3607c targets 0xda3609c and is always taken.
  The `bc1fl` branch at 0xda3608c targets 0xda3609c, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f28,$f28,$f6` at 0xda36090 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda36138 targets 0xda36224, is taken when v0(?) >= 0x1 (unsigned), and falls through when v0(?) < 0x1 (unsigned).
  The `beq` branch at 0xda3621c targets 0xda363c0 and is always taken.
  The `beq` branch at 0xda36224 targets 0xda36248, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda36240 targets 0xda36274 and is always taken.
  The `beq` branch at 0xda36274 targets 0xda362a4, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda3629c targets 0xda362e0 and is always taken.
  The `beq` branch at 0xda362e4 targets 0xda36314, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0xda3630c targets 0xda36350 and is always taken.
  The `beq` branch at 0xda36350 targets 0xda36384, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xda3637c targets 0xda363c0 and is always taken.
  The `bne` branch at 0xda363f8 targets 0xda36430, is taken when t8(=[[a0+28264]+4]) != at(=0x2901), and falls through when t8(=[[a0+28264]+4]) == at(=0x2901).
  The `beq` branch at 0xda36428 targets 0xda36480 and is always taken.
  The `bc1fl` branch at 0xda36440 targets 0xda36454, is taken when not (f0 < f12 (c.lt.s at 0xda36438)), and falls through when f0 < f12 (c.lt.s at 0xda36438); its branch-likely delay slot `c.lt.s $f2,$f0` at 0xda36444 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda36448 targets 0xda36464 and is always taken.
  The `bc1fl` branch at 0xda36458 targets 0xda36468, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f20,$f20,$f8` at 0xda3645c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3649c targets 0xda364d4, is taken when t6(=[[a0+28264]+8]) != at(=0x2901), and falls through when t6(=[[a0+28264]+8]) == at(=0x2901).
  The `beq` branch at 0xda364cc targets 0xda36528 and is always taken.
  The `bc1fl` branch at 0xda364e4 targets 0xda364fc, is taken when not (f0 < f4 (c.lt.s at 0xda364dc)), and falls through when f0 < f4 (c.lt.s at 0xda364dc); its branch-likely delay slot `c.lt.s $f2,$f0` at 0xda364e8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda364f0 targets 0xda36510 and is always taken.
  The `bc1fl` branch at 0xda36500 targets 0xda36510, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `sub.s $f28,$f28,$f8` at 0xda36504 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda365a8 targets 0xda366a0, is taken when t4(=one of 0x0, 0x1, 0x2) != at(=0x2), and falls through when t4(=one of 0x0, 0x1, 0x2) == at(=0x2).
  The `beq` branch at 0xda36698 targets 0xda36854 and is always taken.
  The `beq` branch at 0xda366a0 targets 0xda366d0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xda366c8 targets 0xda36708 and is always taken.
  The `beq` branch at 0xda36708 targets 0xda36738, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xda36730 targets 0xda36774 and is always taken.
  The `beq` branch at 0xda36778 targets 0xda367a8, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xda367a0 targets 0xda367e4 and is always taken.
  The `beq` branch at 0xda367e4 targets 0xda36818, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0xda36810 targets 0xda36854 and is always taken.
  The `bne` branch at 0xda36860 targets 0xda36894, is taken when t5(=[[a0+2484]]) != at(=0x2100), and falls through when t5(=[[a0+2484]]) == at(=0x2100).
  The `beq` branch at 0xda3688c targets 0xda36964 and is always taken.
  The `bne` branch at 0xda3689c targets 0xda368ac, is taken when v0(?) < 0x1 (unsigned), and falls through when v0(?) >= 0x1 (unsigned).
  The `beq` branch at 0xda368b0 targets 0xda368e8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xda368e0 targets 0xda36964 and is always taken.
  The `bgez` branch at 0xda369c8 targets 0xda35658, is taken when t7(?) >= 0 (signed), and falls through when t7(?) < 0 (signed).
  The `bnel` branch at 0xda369d4 targets 0xda3560c, is taken when t9(?) != 0, and falls through when t9(?) == 0; its branch-likely delay slot `lw t2,344(sp)` at 0xda369d8 runs only when taken and is annulled on fall-through.
  The return at 0xda36a20 has v0 = 0x0.
  The instructions from 0xda35730 to 0xda35730 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda357dc to 0xda357dc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda35b0c to 0xda35b0c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda35b78 to 0xda35b78 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda35c5c to 0xda35c5c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda35cfc to 0xda35cfc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda35fd8 to 0xda35fd8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda36084 to 0xda36084 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda36450 to 0xda36450 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda364f8 to 0xda364f8 are not reached by any path from the entry, and their branches are not listed.
- `__glTextureRGB_N_N_Span` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda36a28 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda36a28-0xda36d5c (820 bytes).
  It occupies 820 bytes.
  The `lw` at 0xda36a78 loads 4 bytes from a0 (arg0 at entry) +0x7660.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9b4, including `lw` at 0xda36a7c, `lw` at 0xda36c90.
  The `lw` at 0xda36a88 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  The `lw` at 0xda36a8c loads 4 bytes from a0 (arg0 at entry) +0x7738.
  The `lwc1` at 0xda36a90 loads 4 bytes from a0 (arg0 at entry) +0x7648.
  The `lwc1` at 0xda36a94 loads 4 bytes from a0 (arg0 at entry) +0x764c.
  The `lwc1` at 0xda36a98 loads 4 bytes from a0 (arg0 at entry) +0x7654.
  The `lw` at 0xda36aa0 loads 4 bytes from [a0+2484] +0x0.
  The `lw` at 0xda36aa4 loads 4 bytes from [a0+28264] +0xe4.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lwc1` at 0xda36aa8, `lwc1` at 0xda36c60, `lwc1` at 0xda36cb8.
  The `lw` at 0xda36ab0 loads 4 bytes from [[a0+28264]+228] +0x2c.
  The `lw` at 0xda36abc loads 4 bytes from [[a0+28264]+228] +0x0.
  The `lw` at 0xda36ac4 loads 4 bytes from [a0+28264] +0x4.
  The `lw` at 0xda36ac8 loads 4 bytes from [[a0+28264]+228] +0x14.
  2 such `lw` accesses load 4 bytes from [[a0+28264]+228] +0x18, including `lw` at 0xda36acc, `lw` at 0xda36b80.
  The `lwc1` at 0xda36ad0 loads 4 bytes from [[a0+28264]+228] +0x20.
  3 such `lw` accesses load 4 bytes from [a0+28264] +0x8, including `lw` at 0xda36b04, `lw` at 0xda36b38, `lw` at 0xda36b40.
  The `lwc1` at 0xda36b48 loads 4 bytes from [[a0+28264]+228] +0x24.
  The `lwc1` at 0xda36bd0 loads 4 bytes from [a0+28264] +0x9c.
  The `lwc1` at 0xda36bd4 loads 4 bytes from [a0+28264] +0xa0.
  The `lwc1` at 0xda36bdc loads 4 bytes from [a0+28264] +0xa4.
  9 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda36c00, `lwc1` at 0xda36c04, `lwc1` at 0xda36c08.
  9 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda36c2c, `swc1` at 0xda36c30, `swc1` at 0xda36c38.
  The `lwc1` at 0xda36c64 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `lwc1` at 0xda36c70 loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `lwc1` at 0xda36c7c loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `lwc1` at 0xda36c9c loads 4 bytes from [a0+2484] +0x4.
  The `lwc1` at 0xda36cbc loads 4 bytes from [a0+2484] +0x8.
  The `lwc1` at 0xda36cdc loads 4 bytes from [a0+2484] +0xc.
  The `lwc1` at 0xda36cf4 loads 4 bytes from a0 (arg0 at entry) +0x76e4.
  The `lwc1` at 0xda36cf8 loads 4 bytes from a0 (arg0 at entry) +0x76e8.
  The `lwc1` at 0xda36cfc loads 4 bytes from a0 (arg0 at entry) +0x76f0.
  The `jalr` at 0xda36ae8 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda36b5c calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `bltz` branch at 0xda36a9c targets 0xda36d14, is taken when s8(=[a0+30304]-1) < 0 (signed), and falls through when s8(=[a0+30304]-1) >= 0 (signed).
  The `bne` branch at 0xda36ad8 targets 0xda36b08, is taken when t9(=[[a0+28264]+4]) != at(=0x2901), and falls through when t9(=[[a0+28264]+4]) == at(=0x2901).
  The `beq` branch at 0xda36b00 targets 0xda36b44 and is always taken.
  The `bgez` branch at 0xda36b20 targets 0xda36b30, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0xda36b28 targets 0xda36b40 and is always taken.
  The `bnel` branch at 0xda36b34 targets 0xda36b44, is taken when v0(?) < a0(=[[[a0+28264]+228]+20]) (signed), and falls through when v0(?) >= a0(=[[[a0+28264]+228]+20]) (signed); its branch-likely delay slot `lw t2,8(s6)` at 0xda36b38 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda36b4c targets 0xda36b80, is taken when t2(=[[a0+28264]+8]) != at(=0x2901), and falls through when t2(=[[a0+28264]+8]) == at(=0x2901); its branch-likely delay slot `mul.s $f8,$f26,$f22` at 0xda36b50 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda36b74 targets 0xda36bb8 and is always taken.
  The `bgez` branch at 0xda36b94 targets 0xda36ba4, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0xda36b9c targets 0xda36bb4 and is always taken.
  The `bnel` branch at 0xda36ba8 targets 0xda36bb8, is taken when v0(?) < v1(=[[[a0+28264]+228]+24]) (signed), and falls through when v0(?) >= v1(=[[[a0+28264]+228]+24]) (signed); its branch-likely delay slot `nor s5,s5,zero` at 0xda36bac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda36bc8 targets 0xda36be0, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda36bd8 targets 0xda36c0c and is always taken.
  The `bne` branch at 0xda36c0c targets 0xda36c3c, is taken when s7(=[[a0+2484]]) != at(=0x2100), and falls through when s7(=[[a0+2484]]) == at(=0x2100).
  The `beq` branch at 0xda36c34 targets 0xda36cf4 and is always taken.
  The `bne` branch at 0xda36c48 targets 0xda36c58, is taken when v0(?) < 0x1 (unsigned), and falls through when v0(?) >= 0x1 (unsigned).
  The `beql` branch at 0xda36c5c targets 0xda36c90, is taken when t5(?) == 0, and falls through when t5(?) != 0; its branch-likely delay slot `lwc1 $f18,3544(s2)` at 0xda36c60 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda36c84 targets 0xda36cf4 and is always taken.
  The `bgez` branch at 0xda36d0c targets 0xda36aa4, is taken when s8(?) >= 0 (signed), and falls through when s8(?) < 0 (signed).
  The return at 0xda36d54 has v0 = 0x0.
  The instructions from 0xda36b7c to 0xda36b7c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda36c8c to 0xda36c8c are not reached by any path from the entry, and their branches are not listed.
- `__glTextureRGB_N_N_StippledSpan` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda36d5c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda36d5c-0xda37108 (940 bytes).
  It occupies 940 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9b4, including `lw` at 0xda36dac, `lw` at 0xda37028.
  The `lw` at 0xda36db0 loads 4 bytes from a0 (arg0 at entry) +0x7660.
  The `lw` at 0xda36db4 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  The `lw` at 0xda36db8 loads 4 bytes from [a0+2484] +0x0.
  The `lw` at 0xda36dc0 loads 4 bytes from a0 (arg0 at entry) +0x7740.
  The `lw` at 0xda36dc4 loads 4 bytes from a0 (arg0 at entry) +0x7738.
  The `lwc1` at 0xda36dd0 loads 4 bytes from a0 (arg0 at entry) +0x7648.
  The `lwc1` at 0xda36dd4 loads 4 bytes from a0 (arg0 at entry) +0x764c.
  The `lwc1` at 0xda36ddc loads 4 bytes from a0 (arg0 at entry) +0x7654.
  The `lw` at 0xda36e08 loads 4 bytes from ?.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x76e4, including `lwc1` at 0xda36e2c, `lwc1` at 0xda3708c.
  The `lw` at 0xda36e30 loads 4 bytes from [a0+28264] +0xe4.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lwc1` at 0xda36e34, `lwc1` at 0xda36ff8, `lwc1` at 0xda37050.
  The `lw` at 0xda36e3c loads 4 bytes from [[a0+28264]+228] +0x2c.
  The `lw` at 0xda36e48 loads 4 bytes from [[a0+28264]+228] +0x0.
  The `lw` at 0xda36e50 loads 4 bytes from [a0+28264] +0x4.
  The `lw` at 0xda36e54 loads 4 bytes from [[a0+28264]+228] +0x14.
  2 such `lw` accesses load 4 bytes from [[a0+28264]+228] +0x18, including `lw` at 0xda36e58, `lw` at 0xda36f1c.
  The `lwc1` at 0xda36e5c loads 4 bytes from [[a0+28264]+228] +0x20.
  3 such `lw` accesses load 4 bytes from [a0+28264] +0x8, including `lw` at 0xda36e98, `lw` at 0xda36ecc, `lw` at 0xda36ed4.
  The `lwc1` at 0xda36edc loads 4 bytes from [[a0+28264]+228] +0x24.
  The `lwc1` at 0xda36f6c loads 4 bytes from [a0+28264] +0x9c.
  The `lwc1` at 0xda36f70 loads 4 bytes from [a0+28264] +0xa0.
  The `lwc1` at 0xda36f78 loads 4 bytes from [a0+28264] +0xa4.
  9 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda36f9c, `lwc1` at 0xda36fa0, `lwc1` at 0xda36fa4.
  9 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda36fc8, `swc1` at 0xda36fcc, `swc1` at 0xda36fd4.
  The `lwc1` at 0xda36ffc loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `lwc1` at 0xda37008 loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `lwc1` at 0xda37014 loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `lwc1` at 0xda37034 loads 4 bytes from [a0+2484] +0x4.
  The `lwc1` at 0xda37054 loads 4 bytes from [a0+2484] +0x8.
  The `lwc1` at 0xda37074 loads 4 bytes from [a0+2484] +0xc.
  The `lwc1` at 0xda37090 loads 4 bytes from a0 (arg0 at entry) +0x76e8.
  The `lwc1` at 0xda37094 loads 4 bytes from a0 (arg0 at entry) +0x76f0.
  The `jalr` at 0xda36e78 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda36ef4 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xda36dd8 targets 0xda370c0, is taken when t9(=[a0+30304]) == 0, and falls through when t9(=[a0+30304]) != 0.
  The `bnel` branch at 0xda36df0 targets 0xda36e00, is taken when s8(?) < 0x21 (signed), and falls through when s8(?) >= 0x21 (signed); its branch-likely delay slot `lw t3,208(sp)` at 0xda36df4 runs only when taken and is annulled on fall-through.
  The `bltz` branch at 0xda36e18 targets 0xda370b4, is taken when s8(?) < 0 (signed), and falls through when s8(?) >= 0 (signed).
  The `beql` branch at 0xda36e28 targets 0xda37090, is taken when (t6(?) & a1(?)) == 0, and falls through when (t6(?) & a1(?)) != 0; its branch-likely delay slot `lwc1 $f22,30436(s3)` at 0xda36e2c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda36e64 targets 0xda36e9c, is taken when t0(=[[a0+28264]+4]) != at(=0x2901), and falls through when t0(=[[a0+28264]+4]) == at(=0x2901).
  The `beq` branch at 0xda36e94 targets 0xda36ed8 and is always taken.
  The `bgez` branch at 0xda36eb4 targets 0xda36ec4, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0xda36ebc targets 0xda36ed4 and is always taken.
  The `bnel` branch at 0xda36ec8 targets 0xda36ed8, is taken when v0(?) < a0(=[[[a0+28264]+228]+20]) (signed), and falls through when v0(?) >= a0(=[[[a0+28264]+228]+20]) (signed); its branch-likely delay slot `lw t4,8(s6)` at 0xda36ecc runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda36ee0 targets 0xda36f1c, is taken when t4(=[[a0+28264]+8]) != at(=0x2901), and falls through when t4(=[[a0+28264]+8]) == at(=0x2901); its branch-likely delay slot `mul.s $f8,$f26,$f22` at 0xda36ee4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda36f10 targets 0xda36f54 and is always taken.
  The `bgez` branch at 0xda36f30 targets 0xda36f40, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0xda36f38 targets 0xda36f50 and is always taken.
  The `bnel` branch at 0xda36f44 targets 0xda36f54, is taken when v0(?) < v1(=[[[a0+28264]+228]+24]) (signed), and falls through when v0(?) >= v1(=[[[a0+28264]+228]+24]) (signed); its branch-likely delay slot `nor s5,s5,zero` at 0xda36f48 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda36f64 targets 0xda36f7c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda36f74 targets 0xda36fa8 and is always taken.
  The `bne` branch at 0xda36fa8 targets 0xda36fd8, is taken when s7(=[[a0+2484]]) != at(=0x2100), and falls through when s7(=[[a0+2484]]) == at(=0x2100).
  The `beq` branch at 0xda36fd0 targets 0xda3708c and is always taken.
  The `bne` branch at 0xda36fe0 targets 0xda36ff0, is taken when v0(?) < 0x1 (unsigned), and falls through when v0(?) >= 0x1 (unsigned).
  The `beql` branch at 0xda36ff4 targets 0xda37028, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `lwc1 $f18,3544(s3)` at 0xda36ff8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda3701c targets 0xda3708c and is always taken.
  The `bgez` branch at 0xda370ac targets 0xda36e20, is taken when s8(?) >= 0 (signed), and falls through when s8(?) < 0 (signed).
  The `bnel` branch at 0xda370b8 targets 0xda36de4, is taken when t7(?) != 0, and falls through when t7(?) == 0; its branch-likely delay slot `lw s8,192(sp)` at 0xda370bc runs only when taken and is annulled on fall-through.
  The return at 0xda37100 has v0 = 0x0.
  The instructions from 0xda36f18 to 0xda36f18 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda37024 to 0xda37024 are not reached by any path from the entry, and their branches are not listed.
- `__glTextureRGB_N_NMN_Span` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda37108 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda37108-0xda37554 (1100 bytes).
  It occupies 1100 bytes.
  The `lwc1` at 0xda3715c loads 4 bytes from a0 (arg0 at entry) +0xdd4.
  The `lw` at 0xda37168 loads 4 bytes from a0 (arg0 at entry) +0x7660.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9b4, including `lw` at 0xda3716c, `lw` at 0xda3747c.
  The `lw` at 0xda37170 loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  The `lw` at 0xda37178 loads 4 bytes from a0 (arg0 at entry) +0x7738.
  The `lwc1` at 0xda3717c loads 4 bytes from a0 (arg0 at entry) +0x7648.
  The `lwc1` at 0xda37180 loads 4 bytes from a0 (arg0 at entry) +0x764c.
  The `lwc1` at 0xda37184 loads 4 bytes from a0 (arg0 at entry) +0x7654.
  The `lwc1` at 0xda37188 loads 4 bytes from a0 (arg0 at entry) +0x7658.
  The `lw` at 0xda37190 loads 4 bytes from [a0+2484] +0x0.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lwc1` at 0xda3719c, `lwc1` at 0xda3744c, `lwc1` at 0xda374a4.
  The `lwc1` at 0xda371a0 loads 4 bytes from [a0+28264] +0xf0.
  2 such `lw` accesses load 4 bytes from [a0+28264] +0xe4, including `lw` at 0xda371c4, `lw` at 0xda37280.
  The `lw` at 0xda37250 loads 4 bytes from [a0+28264] +0xec.
  The `lwc1` at 0xda37254 loads 4 bytes from abs 0xda7b4d0.
  The `lw` at 0xda37294 loads 4 bytes from [a0+28264] +0x4.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda37298, `lw` at 0xda3729c, `lw` at 0xda372a4.
  11 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda372ac, `lwc1` at 0xda37330, `lwc1` at 0xda373ec.
  3 such `lw` accesses load 4 bytes from [a0+28264] +0x8, including `lw` at 0xda372ec, `lw` at 0xda37320, `lw` at 0xda37328.
  The `lwc1` at 0xda373c4 loads 4 bytes from [a0+28264] +0x9c.
  The `lwc1` at 0xda373c8 loads 4 bytes from [a0+28264] +0xa0.
  The `lwc1` at 0xda373d0 loads 4 bytes from [a0+28264] +0xa4.
  9 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda37418, `swc1` at 0xda3741c, `swc1` at 0xda37424.
  The `lwc1` at 0xda37450 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `lwc1` at 0xda3745c loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `lwc1` at 0xda37468 loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `lwc1` at 0xda37488 loads 4 bytes from [a0+2484] +0x4.
  The `lwc1` at 0xda374a8 loads 4 bytes from [a0+2484] +0x8.
  The `lwc1` at 0xda374c8 loads 4 bytes from [a0+2484] +0xc.
  The `lwc1` at 0xda374e0 loads 4 bytes from a0 (arg0 at entry) +0x76e4.
  The `lwc1` at 0xda374e4 loads 4 bytes from a0 (arg0 at entry) +0x76e8.
  The `lwc1` at 0xda374e8 loads 4 bytes from a0 (arg0 at entry) +0x76f0.
  The `lwc1` at 0xda374ec loads 4 bytes from a0 (arg0 at entry) +0x76f4.
  The `jalr` at 0xda372c8 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda37348 calls __glFrac [0xda6cc70] with a0=?, a1=?, a2=?, a3=?.
  The `bltz` branch at 0xda3718c targets 0xda37508, is taken when s8(=[a0+30304]-1) < 0 (signed), and falls through when s8(=[a0+30304]-1) >= 0 (signed).
  The `bc1fl` branch at 0xda371b8 targets 0xda371cc, is taken when not (f12 <= f8(=[[a0+28264]+240]) (c.le.s at 0xda371b0)), and falls through when f12 <= f8(=[[a0+28264]+240]) (c.le.s at 0xda371b0); its branch-likely delay slot `c.eq.s $f12,$f30` at 0xda371bc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda371c0 targets 0xda37294 and is always taken.
  The `bc1tl` branch at 0xda371d0 targets 0xda3722c, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `mov.s $f2,$f30` at 0xda371d4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda371ec targets 0xda371fc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xda371f4 targets 0xda371f0, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xda37220 targets 0xda3722c and is always taken.
  The `bc1f` branch at 0xda3723c targets 0xda3724c, is taken when not (f2 <= f18 (c.le.s at 0xda37234)), and falls through when f2 <= f18 (c.le.s at 0xda37234).
  The `beq` branch at 0xda37244 targets 0xda37278 and is always taken.
  The `beql` branch at 0xda3726c targets 0xda3727c, is taken when a0(=[[a0+28264]+236]) >= v1(?) (signed), and falls through when a0(=[[a0+28264]+236]) < v1(?) (signed); its branch-likely delay slot `sll t2,v1,0x2` at 0xda37270 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda372b4 targets 0xda372f0, is taken when t3(=[[a0+28264]+4]) != at(=0x2901), and falls through when t3(=[[a0+28264]+4]) == at(=0x2901).
  The `beq` branch at 0xda372e8 targets 0xda3732c and is always taken.
  The `bgez` branch at 0xda37308 targets 0xda37318, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `beq` branch at 0xda37310 targets 0xda37328 and is always taken.
  The `bnel` branch at 0xda3731c targets 0xda3732c, is taken when v1(?) < a2(?) (signed), and falls through when v1(?) >= a2(?) (signed); its branch-likely delay slot `lw t6,8(s4)` at 0xda37320 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda37334 targets 0xda37374, is taken when t6(=[[a0+28264]+8]) != at(=0x2901), and falls through when t6(=[[a0+28264]+8]) == at(=0x2901); its branch-likely delay slot `mul.s $f16,$f24,$f20` at 0xda37338 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda37368 targets 0xda373ac and is always taken.
  The `bgez` branch at 0xda37388 targets 0xda37398, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `beq` branch at 0xda37390 targets 0xda373a8 and is always taken.
  The `bnel` branch at 0xda3739c targets 0xda373ac, is taken when v1(?) < a2(?) (signed), and falls through when v1(?) >= a2(?) (signed); its branch-likely delay slot `nor s3,s3,zero` at 0xda373a0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda373bc targets 0xda373d4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xda373cc targets 0xda373f8 and is always taken.
  The `bne` branch at 0xda373f8 targets 0xda37428, is taken when s7(=[[a0+2484]]) != at(=0x2100), and falls through when s7(=[[a0+2484]]) == at(=0x2100).
  The `beq` branch at 0xda37420 targets 0xda374e0 and is always taken.
  The `bne` branch at 0xda37434 targets 0xda37444, is taken when v0(?) < 0x1 (unsigned), and falls through when v0(?) >= 0x1 (unsigned).
  The `beql` branch at 0xda37448 targets 0xda3747c, is taken when t7(?) == 0, and falls through when t7(?) != 0; its branch-likely delay slot `lwc1 $f4,3544(s1)` at 0xda3744c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda37470 targets 0xda374e0 and is always taken.
  The `bgez` branch at 0xda37500 targets 0xda3719c, is taken when s8(?) >= 0 (signed), and falls through when s8(?) < 0 (signed).
  The return at 0xda3754c has v0 = 0x0.
  The instructions from 0xda371c8 to 0xda371c8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda37228 to 0xda37228 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda37370 to 0xda37370 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda37478 to 0xda37478 are not reached by any path from the entry, and their branches are not listed.
- `__glTextureRGB_N_NMN_StippledSpan` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda37554 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda37554-0xda37a1c (1224 bytes).
  It occupies 1224 bytes.
  The `lwc1` at 0xda375a8 loads 4 bytes from a0 (arg0 at entry) +0xdd4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9b4, including `lw` at 0xda375b4, `lw` at 0xda37930.
  The `lw` at 0xda375b8 loads 4 bytes from a0 (arg0 at entry) +0x7660.
  The `lw` at 0xda375bc loads 4 bytes from a0 (arg0 at entry) +0x6e68.
  The `lw` at 0xda375c0 loads 4 bytes from [a0+2484] +0x0.
  The `lw` at 0xda375c8 loads 4 bytes from a0 (arg0 at entry) +0x7740.
  The `lw` at 0xda375cc loads 4 bytes from a0 (arg0 at entry) +0x7738.
  The `lwc1` at 0xda375d4 loads 4 bytes from a0 (arg0 at entry) +0x7648.
  The `lwc1` at 0xda375d8 loads 4 bytes from a0 (arg0 at entry) +0x764c.
  The `lwc1` at 0xda375dc loads 4 bytes from a0 (arg0 at entry) +0x7654.
  The `lwc1` at 0xda375e4 loads 4 bytes from a0 (arg0 at entry) +0x7658.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda37610, `lw` at 0xda37740, `lw` at 0xda37744.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x76e4, including `lwc1` at 0xda37634, `lwc1` at 0xda37994.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd8, including `lwc1` at 0xda37638, `lwc1` at 0xda37900, `lwc1` at 0xda37958.
  The `lwc1` at 0xda3763c loads 4 bytes from [a0+28264] +0xf0.
  2 such `lw` accesses load 4 bytes from [a0+28264] +0xe4, including `lw` at 0xda37660, `lw` at 0xda37728.
  The `lw` at 0xda376f8 loads 4 bytes from [a0+28264] +0xec.
  The `lwc1` at 0xda376fc loads 4 bytes from abs 0xda7b4d4.
  The `lw` at 0xda3773c loads 4 bytes from [a0+28264] +0x4.
  11 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda37754, `lwc1` at 0xda377e0, `lwc1` at 0xda378a4.
  3 such `lw` accesses load 4 bytes from [a0+28264] +0x8, including `lw` at 0xda3779c, `lw` at 0xda377d0, `lw` at 0xda377d8.
  The `lwc1` at 0xda3787c loads 4 bytes from [a0+28264] +0x9c.
  The `lwc1` at 0xda37880 loads 4 bytes from [a0+28264] +0xa0.
  The `lwc1` at 0xda37888 loads 4 bytes from [a0+28264] +0xa4.
  9 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda378d0, `swc1` at 0xda378d4, `swc1` at 0xda378dc.
  The `lwc1` at 0xda37904 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `lwc1` at 0xda37910 loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `lwc1` at 0xda3791c loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `lwc1` at 0xda3793c loads 4 bytes from [a0+2484] +0x4.
  The `lwc1` at 0xda3795c loads 4 bytes from [a0+2484] +0x8.
  The `lwc1` at 0xda3797c loads 4 bytes from [a0+2484] +0xc.
  The `lwc1` at 0xda37998 loads 4 bytes from a0 (arg0 at entry) +0x76e8.
  The `lwc1` at 0xda3799c loads 4 bytes from a0 (arg0 at entry) +0x76f0.
  The `lwc1` at 0xda379a0 loads 4 bytes from a0 (arg0 at entry) +0x76f4.
  The `jalr` at 0xda37774 calls __glFrac [0xda6cc70] with a0=?, a1=[[a0+2484]], a2=?, a3=?.
  The `jalr` at 0xda377fc calls __glFrac [0xda6cc70] with a0=?, a1=[[a0+2484]], a2=?, a3=?.
  The `beq` branch at 0xda375e0 targets 0xda379d0, is taken when t9(=[a0+30304]) == 0, and falls through when t9(=[a0+30304]) != 0.
  The `bnel` branch at 0xda375f8 targets 0xda37608, is taken when a2(?) < 0x21 (signed), and falls through when a2(?) >= 0x21 (signed); its branch-likely delay slot `lw t3,240(sp)` at 0xda375fc runs only when taken and is annulled on fall-through.
  The `bltz` branch at 0xda37620 targets 0xda379c4, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `beql` branch at 0xda37630 targets 0xda37998, is taken when (t6(?) & a3(?)) == 0, and falls through when (t6(?) & a3(?)) != 0; its branch-likely delay slot `lwc1 $f4,30436(s5)` at 0xda37634 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda37654 targets 0xda37668, is taken when not (f12 <= f8(=[[a0+28264]+240]) (c.le.s at 0xda3764c)), and falls through when f12 <= f8(=[[a0+28264]+240]) (c.le.s at 0xda3764c); its branch-likely delay slot `mtc1 zero,$f10` at 0xda37658 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda3765c targets 0xda3773c and is always taken.
  The `bc1tl` branch at 0xda37674 targets 0xda376d0, is taken when f12 == f10 (c.eq.s at 0xda3766c), and falls through when not (f12 == f10 (c.eq.s at 0xda3766c)); its branch-likely delay slot `mtc1 zero,$f2` at 0xda37678 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda37690 targets 0xda376a0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xda37698 targets 0xda37694, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xda376c4 targets 0xda376d4 and is always taken.
  The `bc1f` branch at 0xda376e4 targets 0xda376f4, is taken when not (f2 <= f4 (c.le.s at 0xda376dc)), and falls through when f2 <= f4 (c.le.s at 0xda376dc).
  The `beq` branch at 0xda376ec targets 0xda37720 and is always taken.
  The `beql` branch at 0xda37714 targets 0xda37724, is taken when a0(=[[a0+28264]+236]) >= v1(?) (signed), and falls through when a0(=[[a0+28264]+236]) < v1(?) (signed); its branch-likely delay slot `sll t4,v1,0x2` at 0xda37718 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3775c targets 0xda377a0, is taken when t3(=[[a0+28264]+4]) != at(=0x2901), and falls through when t3(=[[a0+28264]+4]) == at(=0x2901).
  The `beq` branch at 0xda37798 targets 0xda377dc and is always taken.
  The `bgez` branch at 0xda377b8 targets 0xda377c8, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0xda377c0 targets 0xda377d8 and is always taken.
  The `bnel` branch at 0xda377cc targets 0xda377dc, is taken when v0(?) < a0(?) (signed), and falls through when v0(?) >= a0(?) (signed); its branch-likely delay slot `lw t7,8(s6)` at 0xda377d0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda377e4 targets 0xda3782c, is taken when t7(=[[a0+28264]+8]) != at(=0x2901), and falls through when t7(=[[a0+28264]+8]) == at(=0x2901); its branch-likely delay slot `mul.s $f18,$f26,$f22` at 0xda377e8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda37820 targets 0xda37864 and is always taken.
  The `bgez` branch at 0xda37840 targets 0xda37850, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0xda37848 targets 0xda37860 and is always taken.
  The `bnel` branch at 0xda37854 targets 0xda37864, is taken when v0(?) < v1(?) (signed), and falls through when v0(?) >= v1(?) (signed); its branch-likely delay slot `nor s4,s4,zero` at 0xda37858 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda37874 targets 0xda3788c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xda37884 targets 0xda378b0 and is always taken.
  The `bne` branch at 0xda378b0 targets 0xda378e0, is taken when a1(=[[a0+2484]]) != at(=0x2100), and falls through when a1(=[[a0+2484]]) == at(=0x2100).
  The `beq` branch at 0xda378d8 targets 0xda37994 and is always taken.
  The `bne` branch at 0xda378e8 targets 0xda378f8, is taken when v0(?) < 0x1 (unsigned), and falls through when v0(?) >= 0x1 (unsigned).
  The `beql` branch at 0xda378fc targets 0xda37930, is taken when t8(?) == 0, and falls through when t8(?) != 0; its branch-likely delay slot `lwc1 $f6,3544(s5)` at 0xda37900 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda37924 targets 0xda37994 and is always taken.
  The `bgez` branch at 0xda379bc targets 0xda37628, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `bnel` branch at 0xda379c8 targets 0xda375ec, is taken when t9(?) != 0, and falls through when t9(?) == 0; its branch-likely delay slot `lw a2,224(sp)` at 0xda379cc runs only when taken and is annulled on fall-through.
  The return at 0xda37a14 has v0 = 0x0.
  The instructions from 0xda37664 to 0xda37664 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda376cc to 0xda376cc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda37828 to 0xda37828 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda3792c to 0xda3792c are not reached by any path from the entry, and their branches are not listed.
- `glMultiTexCoord1svSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda38a3c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda38a3c-0xda38a78 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xda38a5c calls glTexCoord1sv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda38a70 has v0 = ret(glTexCoord1sv).
- `glMultiTexCoord2svSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda38a78 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda38a78-0xda38ab4 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xda38a98 calls glTexCoord2sv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda38aac has v0 = ret(glTexCoord2sv).
- `glMultiTexCoord3svSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda38ab4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda38ab4-0xda38af0 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xda38ad4 calls glTexCoord3sv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda38ae8 has v0 = ret(glTexCoord3sv).
- `glMultiTexCoord4svSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda38af0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda38af0-0xda38b2c (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xda38b10 calls glTexCoord4sv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda38b24 has v0 = ret(glTexCoord4sv).
- `glMultiTexCoord1ivSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda38b2c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda38b2c-0xda38b68 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xda38b4c calls glTexCoord1iv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda38b60 has v0 = ret(glTexCoord1iv).
- `glMultiTexCoord2ivSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda38b68 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda38b68-0xda38ba4 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xda38b88 calls glTexCoord2iv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda38b9c has v0 = ret(glTexCoord2iv).
- `glMultiTexCoord3ivSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda38ba4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda38ba4-0xda38be0 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xda38bc4 calls glTexCoord3iv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda38bd8 has v0 = ret(glTexCoord3iv).
- `glMultiTexCoord4ivSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda38be0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda38be0-0xda38c1c (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xda38c00 calls glTexCoord4iv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda38c14 has v0 = ret(glTexCoord4iv).
- `glMultiTexCoord1fvSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda38c1c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda38c1c-0xda38c58 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xda38c3c calls glTexCoord1fv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda38c50 has v0 = ret(glTexCoord1fv).
- `glMultiTexCoord2fvSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda38c58 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda38c58-0xda38c94 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xda38c78 calls glTexCoord2fv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda38c8c has v0 = ret(glTexCoord2fv).
- `glMultiTexCoord3fvSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda38c94 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda38c94-0xda38cd0 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xda38cb4 calls glTexCoord3fv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda38cc8 has v0 = ret(glTexCoord3fv).
- `glMultiTexCoord4fvSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda38cd0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda38cd0-0xda38d0c (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xda38cf0 calls glTexCoord4fv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda38d04 has v0 = ret(glTexCoord4fv).
- `glMultiTexCoord1dvSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda38d0c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda38d0c-0xda38d48 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xda38d2c calls glTexCoord1dv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda38d40 has v0 = ret(glTexCoord1dv).
- `glMultiTexCoord2dvSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda38d48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda38d48-0xda38d84 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xda38d68 calls glTexCoord2dv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda38d7c has v0 = ret(glTexCoord2dv).
- `glMultiTexCoord3dvSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda38d84 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda38d84-0xda38dc0 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xda38da4 calls glTexCoord3dv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda38db8 has v0 = ret(glTexCoord3dv).
- `glMultiTexCoord4dvSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda38dc0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda38dc0-0xda3a4e4 (5924 bytes).
  It occupies 5924 bytes.
  The `jalr` at 0xda38de0 calls glTexCoord4dv with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda38df4 has v0 = ret(glTexCoord4dv).
  The instructions from 0xda38dfc to 0xda3a4e0 are not reached by any path from the entry, and their branches are not listed.
- `__glReadjustZCounts` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda3ba50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda3ba50-0xda3baf0 (160 bytes).
  It occupies 160 bytes.
  The `lbu` at 0xda3ba68 loads 1 byte from a0 (arg0 at entry) +0x664.
  The `lbu` at 0xda3ba74 loads 1 byte from a0 (arg0 at entry) +0xc99.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7a88, including `lw` at 0xda3ba80, `lw` at 0xda3bab0, `lw` at 0xda3bad0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7a84, including `lw` at 0xda3ba84, `lw` at 0xda3bab4.
  The `lw` at 0xda3ba94 loads 4 bytes from a0 (arg0 at entry) +0x7aa0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x7a84, including `sw` at 0xda3bac4, `sw` at 0xda3badc.
  The `sw` at 0xda3bac8 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda3bacc loads 4 bytes from a0 (arg0 at entry) +0x2e24.
  The `sw` at 0xda3bad8 stores 4 bytes to a0 (arg0 at entry) +0x2e24.
  The `jalr` at 0xda3ba9c calls (unknown callee) with a0=a0 at entry (arg0), a1=a0+31284, a2=[a0+31368], a3=a3 at entry (arg3).
  The `beql` branch at 0xda3ba6c targets 0xda3bae4, is taken when t6(=[a0+1636]:1) == 0, and falls through when t6(=[a0+1636]:1) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xda3ba70 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda3ba78 targets 0xda3bae4, is taken when t7(=[a0+3225]:1) == 0, and falls through when t7(=[a0+3225]:1) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xda3ba7c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda3ba88 targets 0xda3bae4, is taken when a2(=[a0+31368]) == t8(=[a0+31364]), and falls through when a2(=[a0+31368]) != t8(=[a0+31364]); its branch-likely delay slot `lw ra,28(sp)` at 0xda3ba8c runs only when taken and is annulled on fall-through.
  The `bgezl` branch at 0xda3bac0 targets 0xda3bae0, is taken when t2(?) >= 0 (signed), and falls through when t2(?) < 0 (signed); its branch-likely delay slot `sw a2,31364(a0)` at 0xda3bac4 runs only when taken and is annulled on fall-through.
  The return at 0xda3bae8 has v0 = one of ?, ret(?).
- `__glPixmapAllocAccum` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda3d0f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda3d0f0-0xda3d138 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda3d110 loads 4 bytes from a0 (arg0 at entry) +0x7af0.
  The `lw` at 0xda3d118 loads 4 bytes from a0 (arg0 at entry) +0xe74.
  The `lw` at 0xda3d120 loads 4 bytes from a0 (arg0 at entry) +0xe78.
  The `jalr` at 0xda3d11c calls (unknown callee) with a0=a1 at entry (arg1), a1=[a0+3700], a2=[a0+3704], a3=a0 at entry (arg0).
  The return at 0xda3d130 has v0 = ret(?).
- `Finish` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda3d1c4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda3d1c4-0xda3d1cc (8 bytes).
  It occupies 8 bytes.
  The return at 0xda3d1c4 has v0 = ?.
- `DestroySoftContext` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda3d1dc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda3d1dc-0xda3d24c (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xda3d1f0 loads 4 bytes from abs 0x1010.
  2 such `sw` accesses store 4 bytes to abs 0x1010, including `sw` at 0xda3d1fc, `sw` at 0xda3d248.
  The `jalr` at 0xda3d204 calls __glFreeAttributeState [0xd9c808c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda3d218 calls __glFreeBufData [0xd9d2268] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xda3d22c calls __glDestroyContext [0xd9d16d8] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0xda3d244 has v0 = ret(__glDestroyContext).
- `InitFnPtrs` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda3d24c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda3d24c-0xda3d50c (704 bytes).
  It occupies 704 bytes.
  The `sw` at 0xda3d27c stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0xda3d280 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0xda3d284 stores 4 bytes to a0 (arg0 at entry) +0x2ec0.
  The `sw` at 0xda3d2b0 stores 4 bytes to a0 (arg0 at entry) +0x2ebc.
  The `sw` at 0xda3d2b4 stores 4 bytes to a0 (arg0 at entry) +0x2e34.
  The `sw` at 0xda3d2b8 stores 4 bytes to a0 (arg0 at entry) +0x2e30.
  The `sw` at 0xda3d2bc stores 4 bytes to a0 (arg0 at entry) +0x2ec4.
  The `sw` at 0xda3d2c0 stores 4 bytes to a0 (arg0 at entry) +0x2e74.
  The `sw` at 0xda3d2c4 stores 4 bytes to a0 (arg0 at entry) +0x2f0c.
  The `sw` at 0xda3d2c8 stores 4 bytes to a0 (arg0 at entry) +0x2f10.
  The `sw` at 0xda3d2cc stores 4 bytes to a0 (arg0 at entry) +0x3114.
  The `sw` at 0xda3d2d0 stores 4 bytes to a0 (arg0 at entry) +0x2f7c.
  The `sw` at 0xda3d2d4 stores 4 bytes to a0 (arg0 at entry) +0x2f74.
  The `sw` at 0xda3d300 stores 4 bytes to a0 (arg0 at entry) +0x2e40.
  The `sw` at 0xda3d304 stores 4 bytes to a0 (arg0 at entry) +0x31a8.
  The `sw` at 0xda3d308 stores 4 bytes to a0 (arg0 at entry) +0x2ea8.
  The `sw` at 0xda3d30c stores 4 bytes to a0 (arg0 at entry) +0x2eac.
  The `sw` at 0xda3d310 stores 4 bytes to a0 (arg0 at entry) +0x2eb0.
  The `sw` at 0xda3d314 stores 4 bytes to a0 (arg0 at entry) +0x2e98.
  The `sw` at 0xda3d318 stores 4 bytes to a0 (arg0 at entry) +0x2e9c.
  The `sw` at 0xda3d31c stores 4 bytes to a0 (arg0 at entry) +0x2ea0.
  The `sw` at 0xda3d320 stores 4 bytes to a0 (arg0 at entry) +0x2ea4.
  The `sw` at 0xda3d324 stores 4 bytes to a0 (arg0 at entry) +0x2eb4.
  The `sw` at 0xda3d350 stores 4 bytes to a0 (arg0 at entry) +0x2eb8.
  The `sw` at 0xda3d354 stores 4 bytes to a0 (arg0 at entry) +0x2f3c.
  The `sw` at 0xda3d358 stores 4 bytes to a0 (arg0 at entry) +0x2f40.
  The `sw` at 0xda3d35c stores 4 bytes to a0 (arg0 at entry) +0x2f38.
  The `sw` at 0xda3d360 stores 4 bytes to a0 (arg0 at entry) +0x2f34.
  The `sw` at 0xda3d364 stores 4 bytes to a0 (arg0 at entry) +0x2f58.
  The `sw` at 0xda3d368 stores 4 bytes to a0 (arg0 at entry) +0x2f48.
  The `sw` at 0xda3d36c stores 4 bytes to a0 (arg0 at entry) +0x2f4c.
  The `sw` at 0xda3d370 stores 4 bytes to a0 (arg0 at entry) +0x2f44.
  The `sw` at 0xda3d374 stores 4 bytes to a0 (arg0 at entry) +0x2f54.
  The `sw` at 0xda3d3a0 stores 4 bytes to a0 (arg0 at entry) +0x2f50.
  The `sw` at 0xda3d3a4 stores 4 bytes to a0 (arg0 at entry) +0x2f5c.
  The `sw` at 0xda3d3a8 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xda3d3ac stores 4 bytes to a0 (arg0 at entry) +0x2efc.
  The `sw` at 0xda3d3b0 stores 4 bytes to a0 (arg0 at entry) +0x2ef8.
  The `sw` at 0xda3d3b4 stores 4 bytes to a0 (arg0 at entry) +0x2ef0.
  The `sw` at 0xda3d3b8 stores 4 bytes to a0 (arg0 at entry) +0x2ef4.
  The `sw` at 0xda3d3bc stores 4 bytes to a0 (arg0 at entry) +0x3180.
  The `sw` at 0xda3d3c0 stores 4 bytes to a0 (arg0 at entry) +0x3184.
  The `sw` at 0xda3d3c4 stores 4 bytes to a0 (arg0 at entry) +0x3188.
  The `sw` at 0xda3d3f0 stores 4 bytes to a0 (arg0 at entry) +0x2e94.
  The `sw` at 0xda3d3f4 stores 4 bytes to a0 (arg0 at entry) +0x2e44.
  The `sw` at 0xda3d3f8 stores 4 bytes to a0 (arg0 at entry) +0x2e48.
  The `sw` at 0xda3d3fc stores 4 bytes to a0 (arg0 at entry) +0x2e50.
  The `sw` at 0xda3d400 stores 4 bytes to a0 (arg0 at entry) +0x2e54.
  The `sw` at 0xda3d404 stores 4 bytes to a0 (arg0 at entry) +0x2e70.
  The `sw` at 0xda3d408 stores 4 bytes to a0 (arg0 at entry) +0x2e58.
  The `sw` at 0xda3d40c stores 4 bytes to a0 (arg0 at entry) +0x2e64.
  The `sw` at 0xda3d410 stores 4 bytes to a0 (arg0 at entry) +0x2e4c.
  The `sw` at 0xda3d414 stores 4 bytes to a0 (arg0 at entry) +0x2e6c.
  The `sw` at 0xda3d440 stores 4 bytes to a0 (arg0 at entry) +0x2e5c.
  The `sw` at 0xda3d444 stores 4 bytes to a0 (arg0 at entry) +0x2e84.
  The `sw` at 0xda3d448 stores 4 bytes to a0 (arg0 at entry) +0x2e88.
  The `sw` at 0xda3d44c stores 4 bytes to a0 (arg0 at entry) +0x2e8c.
  The `sw` at 0xda3d450 stores 4 bytes to a0 (arg0 at entry) +0x2e7c.
  The `sw` at 0xda3d454 stores 4 bytes to a0 (arg0 at entry) +0x2e60.
  The `sw` at 0xda3d458 stores 4 bytes to a0 (arg0 at entry) +0x2e80.
  The `sw` at 0xda3d45c stores 4 bytes to a0 (arg0 at entry) +0x2e68.
  The `sw` at 0xda3d460 stores 4 bytes to a0 (arg0 at entry) +0x2e90.
  The `sw` at 0xda3d464 stores 4 bytes to a0 (arg0 at entry) +0x31ac.
  The `sw` at 0xda3d490 stores 4 bytes to a0 (arg0 at entry) +0x31b0.
  The `sw` at 0xda3d494 stores 4 bytes to a0 (arg0 at entry) +0x3154.
  The `sw` at 0xda3d498 stores 4 bytes to a0 (arg0 at entry) +0x3158.
  The `sw` at 0xda3d49c stores 4 bytes to a0 (arg0 at entry) +0x30b0.
  The `sw` at 0xda3d4a0 stores 4 bytes to a0 (arg0 at entry) +0x30b4.
  The `sw` at 0xda3d4a4 stores 4 bytes to a0 (arg0 at entry) +0x30b8.
  The `sw` at 0xda3d4a8 stores 4 bytes to a0 (arg0 at entry) +0x30bc.
  The `sw` at 0xda3d4ac stores 4 bytes to a0 (arg0 at entry) +0x30c0.
  The `sw` at 0xda3d4b0 stores 4 bytes to a0 (arg0 at entry) +0x30c4.
  The `sw` at 0xda3d4b4 stores 4 bytes to a0 (arg0 at entry) +0x30c8.
  The `sw` at 0xda3d4e0 stores 4 bytes to a0 (arg0 at entry) +0x30cc.
  The `sw` at 0xda3d4e4 stores 4 bytes to a0 (arg0 at entry) +0x30d0.
  The `sw` at 0xda3d4e8 stores 4 bytes to a0 (arg0 at entry) +0x30d4.
  The `sw` at 0xda3d4ec stores 4 bytes to a0 (arg0 at entry) +0x30d8.
  The `sw` at 0xda3d4f0 stores 4 bytes to a0 (arg0 at entry) +0x30dc.
  The `sw` at 0xda3d4f4 stores 4 bytes to a0 (arg0 at entry) +0x30e0.
  The `sw` at 0xda3d4f8 stores 4 bytes to a0 (arg0 at entry) +0x30e4.
  The `sw` at 0xda3d4fc stores 4 bytes to a0 (arg0 at entry) +0x30e8.
  The `sw` at 0xda3d500 stores 4 bytes to a0 (arg0 at entry) +0x30ec.
  The `sw` at 0xda3d508 stores 4 bytes to a0 (arg0 at entry) +0x2e78.
  The return at 0xda3d504 has v0 = ?.
- `__glPixmapMakeCurrent` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda3d6bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda3d6bc-0xda3d9ec (816 bytes).
  It occupies 816 bytes.
  5 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x17f4, including `sw` at 0xda3d6e8, `sw` at 0xda3d8e8, `sw` at 0xda3d92c.
  20 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda3d6f8, `lw` at 0xda3d708, `lw` at 0xda3d710.
  20 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda3d704, `sw` at 0xda3d70c, `sw` at 0xda3d718.
  The `sw` at 0xda3d764 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda3d768 loads 4 bytes from a0 (arg0 at entry) +0x2e24.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lw` at 0xda3d76c, `lw` at 0xda3d7c8, `lw` at 0xda3d80c.
  The `sw` at 0xda3d77c stores 4 bytes to a0 (arg0 at entry) +0x2e24.
  The `lw` at 0xda3d7b4 loads 4 bytes from a0 (arg0 at entry) +0x7b40.
  The `lw` at 0xda3d7bc loads 4 bytes from [a0+31552] +0x1c.
  The `sw` at 0xda3d7c0 stores 4 bytes to a0 (arg0 at entry) +0x7810.
  The `sw` at 0xda3d7c4 stores 4 bytes to [[a0+31552]+28] +0x18.
  The `sw` at 0xda3d7d8 stores 4 bytes to a0 (arg0 at entry) +0x77f8.
  The `sw` at 0xda3d7e0 stores 4 bytes to a0 (arg0 at entry) +0x77fc.
  The `lw` at 0xda3d834 loads 4 bytes from a0 (arg0 at entry) +0xe74.
  The `lw` at 0xda3d838 loads 4 bytes from a0 (arg0 at entry) +0xe78.
  The `lw` at 0xda3d848 loads 4 bytes from abs 0xda819fc (__glPixImmedState+668).
  The `lw` at 0xda3d874 loads 4 bytes from abs 0xda817f8 (__glPixImmedState+152).
  The `lw` at 0xda3d8b0 loads 4 bytes from a0 (arg0 at entry) +0x2e40.
  The `lw` at 0xda3d8c4 loads 4 bytes from abs 0x1048.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x137c, including `lw` at 0xda3d8d0, `lw` at 0xda3d8d4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xa8, including `sw` at 0xda3d9cc, `sw` at 0xda3d9d4.
  The `jalr` at 0xda3d78c calls InitBuffers [0xda3d50c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda3d7a4 calls __glMakeCurrentBuffers [0xd9d200c] with a0=a0 at entry (arg0), a1=sp-8, a2=?, a3=?.
  The `jalr` at 0xda3d7f0 calls InitFnPtrs [0xda3d24c] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xda3d804 calls __glFindWindowSize [0xd9d1ea0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xda3d828 calls __glSoftResetContext [0xd9d0bb8] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xda3d854 calls (unknown callee) with a0=0x0, a1=0x0, a2=[a0+3700], a3=[a0+3704].
  The `jalr` at 0xda3d878 calls (unknown callee) with a0=0x0, a1=0x0, a2=[a0+3700], a3=[a0+3704].
  The `jalr` at 0xda3d894 calls ApplyViewport [0xda3d138] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xda3d8a8 calls __glContextSetColorScales [0xd9d07e4] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xda3d8bc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xda3d714 targets 0xda3d6f8, is taken when t9(?) != t2(=0xda81ebc), and falls through when t9(?) == t2(=0xda81ebc).
  The `bne` branch at 0xda3d750 targets 0xda3d734, is taken when t5(?) != t2(=0xda8261c), and falls through when t5(?) == t2(=0xda8261c).
  The `bne` branch at 0xda3d778 targets 0xda3d798, is taken when (t1(=[a0+168]) & 0x4) != 0, and falls through when (t1(=[a0+168]) & 0x4) == 0.
  The `beq` branch at 0xda3d7ac targets 0xda3d7c8, is taken when v0(=ret(__glMakeCurrentBuffers)) == 0, and falls through when v0(=ret(__glMakeCurrentBuffers)) != 0.
  The `bne` branch at 0xda3d7dc targets 0xda3d7fc, is taken when (t7(=[a0+168]) & 0x4) != 0, and falls through when (t7(=[a0+168]) & 0x4) == 0.
  The `bne` branch at 0xda3d818 targets 0xda3d888, is taken when (t8(=[a0+168]) & 0x6) != 0, and falls through when (t8(=[a0+168]) & 0x6) == 0.
  The `beq` branch at 0xda3d880 targets 0xda3d8a0 and is always taken.
  The `beql` branch at 0xda3d8cc targets 0xda3d934, is taken when t1(=[0x1048]) == 0, and falls through when t1(=[0x1048]) != 0; its branch-likely delay slot `lw t9,4988(s0)` at 0xda3d8d0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda3d8e0 targets 0xda3d928, is taken when t3(=[a0+4988]) == 0, and falls through when t3(=[a0+4988]) != 0.
  The `bne` branch at 0xda3d914 targets 0xda3d8f8, is taken when t4(?) != t8(=a0+8020), and falls through when t4(?) == t8(=a0+8020).
  The `beq` branch at 0xda3d920 targets 0xda3d9bc and is always taken.
  The `beq` branch at 0xda3d928 targets 0xda3d9bc and is always taken.
  The `beql` branch at 0xda3d938 targets 0xda3d984, is taken when t9(=[a0+4988]) == 0, and falls through when t9(=[a0+4988]) != 0; its branch-likely delay slot `addiu t9,zero,4176` at 0xda3d93c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3d96c targets 0xda3d950, is taken when t3(?) != t5(=a0+8020), and falls through when t3(?) == t5(=a0+8020).
  The `beq` branch at 0xda3d978 targets 0xda3d9bc and is always taken.
  The `bne` branch at 0xda3d9ac targets 0xda3d990, is taken when t6(?) != t1(=a0+9916), and falls through when t6(?) == t1(=a0+9916).
  The return at 0xda3d9e4 has v0 = 0x1.
  The instructions from 0xda3d930 to 0xda3d930 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda3d980 to 0xda3d980 are not reached by any path from the entry, and their branches are not listed.
- `Store_8` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda3d9f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda3d9f0-0xda3dce4 (756 bytes).
  It occupies 756 bytes.
  The `lw` at 0xda3da14 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xda3da18 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xda3da1c loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xda3da20 loads 4 bytes from [a0] +0xe50.
  The `lw` at 0xda3da24 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xda3da28 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xda3da34 loads 4 bytes from [a0] +0x700.
  The `lw` at 0xda3da38 loads 4 bytes from [a0] +0xe4c.
  The `lb` at 0xda3da70 loads 1 byte from table(0xda807f0) +0x0.
  The `lwc1` at 0xda3da98 loads 4 bytes from [a0] +0xdd4.
  The `lw` at 0xda3daa8 loads 4 bytes from [a0] +0x704.
  The `lw` at 0xda3dac8 loads 4 bytes from [a0] +0x3134.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda3daf0, `lwc1` at 0xda3db7c, `lwc1` at 0xda3dc10.
  The `lw` at 0xda3db84 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0xda3dc18 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0xda3dca4 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lbu` at 0xda3dca8 loads 1 byte from ?.
  The `lw` at 0xda3dcac loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0xda3dcb0 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `sb` at 0xda3dccc stores 1 byte to ?.
  The `jalr` at 0xda3dad4 calls (unknown callee) with a0=[a0], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-24.
  The `beq` branch at 0xda3da58 targets 0xda3da98, is taken when (v1(=[[a0]+1792]) & 0x8) == 0, and falls through when (v1(=[[a0]+1792]) & 0x8) != 0.
  The `beq` branch at 0xda3da90 targets 0xda3da9c and is always taken.
  The `bne` branch at 0xda3daa0 targets 0xda3dabc, is taken when (v1(=[[a0]+1792]) & 0x2) != 0, and falls through when (v1(=[[a0]+1792]) & 0x2) == 0.
  The `beq` branch at 0xda3dab4 targets 0xda3daf0, is taken when (t8(=[[a0]+1796]) & 0x800) == 0, and falls through when (t8(=[[a0]+1796]) & 0x800) != 0.
  The `beq` branch at 0xda3dae8 targets 0xda3daf0 and is always taken.
  The `beql` branch at 0xda3db1c targets 0xda3db6c, is taken when (t1(?) & 0x78) == 0, and falls through when (t1(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t1,$f18` at 0xda3db20 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3db48 targets 0xda3db60, is taken when (t1(?) & 0x78) != 0, and falls through when (t1(?) & 0x78) == 0.
  The `beq` branch at 0xda3db58 targets 0xda3db78 and is always taken.
  The `beq` branch at 0xda3db60 targets 0xda3db78 and is always taken.
  The `bltz` branch at 0xda3db70 targets 0xda3db60, is taken when t1(?) < 0 (signed), and falls through when t1(?) >= 0 (signed).
  The `beql` branch at 0xda3dbb0 targets 0xda3dc00, is taken when (t6(?) & 0x78) == 0, and falls through when (t6(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t6,$f8` at 0xda3dbb4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3dbdc targets 0xda3dbf4, is taken when (t6(?) & 0x78) != 0, and falls through when (t6(?) & 0x78) == 0.
  The `beq` branch at 0xda3dbec targets 0xda3dc0c and is always taken.
  The `beq` branch at 0xda3dbf4 targets 0xda3dc0c and is always taken.
  The `bltz` branch at 0xda3dc04 targets 0xda3dbf4, is taken when t6(?) < 0 (signed), and falls through when t6(?) >= 0 (signed).
  The `beql` branch at 0xda3dc48 targets 0xda3dc98, is taken when (t1(?) & 0x78) == 0, and falls through when (t1(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t1,$f18` at 0xda3dc4c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3dc74 targets 0xda3dc8c, is taken when (t1(?) & 0x78) != 0, and falls through when (t1(?) & 0x78) == 0.
  The `beq` branch at 0xda3dc84 targets 0xda3dca4 and is always taken.
  The `beq` branch at 0xda3dc8c targets 0xda3dca4 and is always taken.
  The `bltz` branch at 0xda3dc9c targets 0xda3dc8c, is taken when t1(?) < 0 (signed), and falls through when t1(?) >= 0 (signed).
  The return at 0xda3dcdc has v0 = ?.
  The instructions from 0xda3db68 to 0xda3db68 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda3dbfc to 0xda3dbfc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda3dc94 to 0xda3dc94 are not reached by any path from the entry, and their branches are not listed.
- `Store_16` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda3dce4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda3dce4-0xda3dfe4 (768 bytes).
  It occupies 768 bytes.
  The `lw` at 0xda3dd08 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xda3dd0c loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xda3dd10 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xda3dd14 loads 4 bytes from [a0] +0xe50.
  The `lw` at 0xda3dd18 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xda3dd1c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xda3dd28 loads 4 bytes from [a0] +0x700.
  The `lw` at 0xda3dd2c loads 4 bytes from [a0] +0xe4c.
  The `lb` at 0xda3dd70 loads 1 byte from table(0xda807f0) +0x0.
  The `lwc1` at 0xda3dd98 loads 4 bytes from [a0] +0xdd4.
  The `lw` at 0xda3dda8 loads 4 bytes from [a0] +0x704.
  The `lw` at 0xda3ddc8 loads 4 bytes from [a0] +0x3134.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda3ddf0, `lwc1` at 0xda3de7c, `lwc1` at 0xda3df10.
  The `lw` at 0xda3de84 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0xda3df18 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0xda3dfa4 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lhu` at 0xda3dfa8 loads 2 bytes from ?.
  The `lw` at 0xda3dfac loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0xda3dfb0 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `sh` at 0xda3dfcc stores 2 bytes to ?.
  The `jalr` at 0xda3ddd4 calls (unknown callee) with a0=[a0], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-24.
  The `beq` branch at 0xda3dd50 targets 0xda3dd98, is taken when (v1(=[[a0]+1792]) & 0x8) == 0, and falls through when (v1(=[[a0]+1792]) & 0x8) != 0.
  The `beq` branch at 0xda3dd90 targets 0xda3dd9c and is always taken.
  The `bne` branch at 0xda3dda0 targets 0xda3ddbc, is taken when (v1(=[[a0]+1792]) & 0x2) != 0, and falls through when (v1(=[[a0]+1792]) & 0x2) == 0.
  The `beq` branch at 0xda3ddb4 targets 0xda3ddf0, is taken when (t3(=[[a0]+1796]) & 0x800) == 0, and falls through when (t3(=[[a0]+1796]) & 0x800) != 0.
  The `beq` branch at 0xda3dde8 targets 0xda3ddf0 and is always taken.
  The `beql` branch at 0xda3de1c targets 0xda3de6c, is taken when (t4(?) & 0x78) == 0, and falls through when (t4(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t4,$f18` at 0xda3de20 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3de48 targets 0xda3de60, is taken when (t4(?) & 0x78) != 0, and falls through when (t4(?) & 0x78) == 0.
  The `beq` branch at 0xda3de58 targets 0xda3de78 and is always taken.
  The `beq` branch at 0xda3de60 targets 0xda3de78 and is always taken.
  The `bltz` branch at 0xda3de70 targets 0xda3de60, is taken when t4(?) < 0 (signed), and falls through when t4(?) >= 0 (signed).
  The `beql` branch at 0xda3deb0 targets 0xda3df00, is taken when (t8(?) & 0x78) == 0, and falls through when (t8(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t8,$f8` at 0xda3deb4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3dedc targets 0xda3def4, is taken when (t8(?) & 0x78) != 0, and falls through when (t8(?) & 0x78) == 0.
  The `beq` branch at 0xda3deec targets 0xda3df0c and is always taken.
  The `beq` branch at 0xda3def4 targets 0xda3df0c and is always taken.
  The `bltz` branch at 0xda3df04 targets 0xda3def4, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beql` branch at 0xda3df48 targets 0xda3df98, is taken when (t4(?) & 0x78) == 0, and falls through when (t4(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t4,$f18` at 0xda3df4c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3df74 targets 0xda3df8c, is taken when (t4(?) & 0x78) != 0, and falls through when (t4(?) & 0x78) == 0.
  The `beq` branch at 0xda3df84 targets 0xda3dfa4 and is always taken.
  The `beq` branch at 0xda3df8c targets 0xda3dfa4 and is always taken.
  The `bltz` branch at 0xda3df9c targets 0xda3df8c, is taken when t4(?) < 0 (signed), and falls through when t4(?) >= 0 (signed).
  The return at 0xda3dfdc has v0 = ?.
  The instructions from 0xda3de68 to 0xda3de68 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda3defc to 0xda3defc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda3df94 to 0xda3df94 are not reached by any path from the entry, and their branches are not listed.
- `Store_32` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda3e330 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda3e330-0xda3e5e4 (692 bytes).
  It occupies 692 bytes.
  The `lw` at 0xda3e350 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xda3e354 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xda3e358 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xda3e35c loads 4 bytes from [a0] +0xe50.
  The `lw` at 0xda3e360 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xda3e364 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xda3e370 loads 4 bytes from [a0] +0x700.
  The `lw` at 0xda3e374 loads 4 bytes from [a0] +0xe4c.
  The `lw` at 0xda3e3ac loads 4 bytes from [a0] +0x704.
  The `lw` at 0xda3e3c8 loads 4 bytes from [a0] +0x3134.
  The `lwc1` at 0xda3e3ec loads 4 bytes from [a0] +0xdd4.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda3e3f0, `lwc1` at 0xda3e47c, `lwc1` at 0xda3e510.
  The `lw` at 0xda3e484 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0xda3e518 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0xda3e5a4 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0xda3e5a8 loads 4 bytes from ?.
  The `lw` at 0xda3e5ac loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0xda3e5b0 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `sw` at 0xda3e5cc stores 4 bytes to ?.
  The `jalr` at 0xda3e3d4 calls (unknown callee) with a0=[a0], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-24.
  The `bne` branch at 0xda3e3a4 targets 0xda3e3c0, is taken when (v1(=[[a0]+1792]) & 0x2) != 0, and falls through when (v1(=[[a0]+1792]) & 0x2) == 0.
  The `beq` branch at 0xda3e3b8 targets 0xda3e3ec, is taken when (t3(=[[a0]+1796]) & 0x800) == 0, and falls through when (t3(=[[a0]+1796]) & 0x800) != 0.
  The `beq` branch at 0xda3e3e4 targets 0xda3e3ec and is always taken.
  The `beql` branch at 0xda3e41c targets 0xda3e46c, is taken when (t4(?) & 0x78) == 0, and falls through when (t4(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t4,$f8` at 0xda3e420 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3e448 targets 0xda3e460, is taken when (t4(?) & 0x78) != 0, and falls through when (t4(?) & 0x78) == 0.
  The `beq` branch at 0xda3e458 targets 0xda3e478 and is always taken.
  The `beq` branch at 0xda3e460 targets 0xda3e478 and is always taken.
  The `bltz` branch at 0xda3e470 targets 0xda3e460, is taken when t4(?) < 0 (signed), and falls through when t4(?) >= 0 (signed).
  The `beql` branch at 0xda3e4b0 targets 0xda3e500, is taken when (t1(?) & 0x78) == 0, and falls through when (t1(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t1,$f18` at 0xda3e4b4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3e4dc targets 0xda3e4f4, is taken when (t1(?) & 0x78) != 0, and falls through when (t1(?) & 0x78) == 0.
  The `beq` branch at 0xda3e4ec targets 0xda3e50c and is always taken.
  The `beq` branch at 0xda3e4f4 targets 0xda3e50c and is always taken.
  The `bltz` branch at 0xda3e504 targets 0xda3e4f4, is taken when t1(?) < 0 (signed), and falls through when t1(?) >= 0 (signed).
  The `beql` branch at 0xda3e548 targets 0xda3e598, is taken when (t4(?) & 0x78) == 0, and falls through when (t4(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t4,$f8` at 0xda3e54c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3e574 targets 0xda3e58c, is taken when (t4(?) & 0x78) != 0, and falls through when (t4(?) & 0x78) == 0.
  The `beq` branch at 0xda3e584 targets 0xda3e5a4 and is always taken.
  The `beq` branch at 0xda3e58c targets 0xda3e5a4 and is always taken.
  The `bltz` branch at 0xda3e59c targets 0xda3e58c, is taken when t4(?) < 0 (signed), and falls through when t4(?) >= 0 (signed).
  The return at 0xda3e5dc has v0 = ?.
  The instructions from 0xda3e468 to 0xda3e468 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda3e4fc to 0xda3e4fc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda3e594 to 0xda3e594 are not reached by any path from the entry, and their branches are not listed.
- `Fetch_32` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda3e8ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda3e8ac-0xda3eab8 (524 bytes).
  It occupies 524 bytes.
  The `lw` at 0xda3e8b8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xda3e8bc loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xda3e8c0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xda3e8c4 loads 4 bytes from [a0] +0xe50.
  The `lw` at 0xda3e8d8 loads 4 bytes from [a0] +0xe4c.
  The `lw` at 0xda3e8f4 loads 4 bytes from ?.
  The `lw` at 0xda3e8f8 loads 4 bytes from [a0] +0xcc8.
  The `lw` at 0xda3e8fc loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `swc1` at 0xda3e920 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0xda3e924 loads 4 bytes from [a0] +0xccc.
  The `lw` at 0xda3e928 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `swc1` at 0xda3e950 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0xda3e954 loads 4 bytes from [a0] +0xcd0.
  The `lw` at 0xda3e958 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `swc1` at 0xda3e980 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0xda3e984 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `swc1` at 0xda3e98c stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `bgez` branch at 0xda3e90c targets 0xda3e920, is taken when t4(?) >= 0 (signed), and falls through when t4(?) < 0 (signed).
  The `bgez` branch at 0xda3e93c targets 0xda3e950, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `bgez` branch at 0xda3e96c targets 0xda3e980, is taken when t4(?) >= 0 (signed), and falls through when t4(?) < 0 (signed).
  The return at 0xda3e988 has v0 = [a0].
  The instructions from 0xda3e990 to 0xda3eab4 are not reached by any path from the entry, and their branches are not listed.
- `StoreStippledSpan` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda3eb88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda3eb88-0xda66c20 (163992 bytes).
  It occupies 163992 bytes.
  The `lw` at 0xda3ebc4 loads 4 bytes from a0 (arg0 at entry) +0x7740.
  The `lw` at 0xda3ebc8 loads 4 bytes from a0 (arg0 at entry) +0x7660.
  The `lw` at 0xda3ebd4 loads 4 bytes from a0 (arg0 at entry) +0x7630.
  The `lw` at 0xda3ebe0 loads 4 bytes from a0 (arg0 at entry) +0x762c.
  The `lw` at 0xda3ebe4 loads 4 bytes from a0 (arg0 at entry) +0x7738.
  The `lw` at 0xda3ebec loads 4 bytes from a0 (arg0 at entry) +0x7748.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda3ec10, `lw` at 0xda3ec30, `lw` at 0xda3ec40.
  The `lw` at 0xda3ec58 loads 4 bytes from [a0+30536] +0xa4.
  The `jalr` at 0xda3ec5c calls (unknown callee) with a0=[a0+30536], a1=sp-56, a2=?, a3=?.
  The `beq` branch at 0xda3ebe8 targets 0xda3ec84, is taken when s8(=[a0+30304]) == 0, and falls through when s8(=[a0+30304]) != 0.
  The `bne` branch at 0xda3ebf8 targets 0xda3ec04, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bltz` branch at 0xda3ec18 targets 0xda3ec7c, is taken when s0(?) < 0 (signed), and falls through when s0(?) >= 0 (signed).
  The `beql` branch at 0xda3ec24 targets 0xda3ec6c, is taken when (s5(?) & s1(?)) == 0, and falls through when (s5(?) & s1(?)) != 0; its branch-likely delay slot `addiu s0,s0,-1` at 0xda3ec28 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xda3ec74 targets 0xda3ec20, is taken when s0(?) >= 0 (signed), and falls through when s0(?) < 0 (signed).
  The `bnel` branch at 0xda3ec7c targets 0xda3ebf4, is taken when s8(?) != 0, and falls through when s8(?) == 0; its branch-likely delay slot `slti at,s8,33` at 0xda3ec80 runs only when taken and is annulled on fall-through.
  The return at 0xda3ecb0 has v0 = 0x0.
  The instructions from 0xda3ecb8 to 0xda66c1c are not reached by any path from the entry, and their branches are not listed.
- `__glPixInitRGB` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda3ee60 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda3ee60-0xda3f110 (688 bytes).
  It occupies 688 bytes.
  The `sw` at 0xda3eec8 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `sw` at 0xda3eecc stores 4 bytes to a0 (arg0 at entry) +0xd8.
  The `sw` at 0xda3eed0 stores 4 bytes to a0 (arg0 at entry) +0xa0.
  The `sw` at 0xda3eed4 stores 4 bytes to a0 (arg0 at entry) +0xb8.
  The `sw` at 0xda3eed8 stores 4 bytes to a0 (arg0 at entry) +0xbc.
  The `sw` at 0xda3eedc stores 4 bytes to a0 (arg0 at entry) +0xc8.
  The `sw` at 0xda3eee0 stores 4 bytes to a0 (arg0 at entry) +0xcc.
  The `sw` at 0xda3eee4 stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0xda3eee8 stores 4 bytes to a0 (arg0 at entry) +0xb4.
  The `lw` at 0xda3eeec loads 4 bytes from a1 (arg1 at entry) +0xcc8.
  The `sw` at 0xda3ef1c stores 4 bytes to a0 (arg0 at entry) +0x70.
  The `sw` at 0xda3ef20 stores 4 bytes to a0 (arg0 at entry) +0x48.
  The `sw` at 0xda3ef28 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `swc1` at 0xda3ef34 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `lw` at 0xda3ef38 loads 4 bytes from a1 (arg1 at entry) +0xccc.
  The `sw` at 0xda3ef60 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sw` at 0xda3ef64 stores 4 bytes to a0 (arg0 at entry) +0x4c.
  The `sw` at 0xda3ef6c stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `swc1` at 0xda3ef74 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `lw` at 0xda3ef78 loads 4 bytes from a1 (arg1 at entry) +0xcd0.
  The `sw` at 0xda3efa0 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `sw` at 0xda3efa4 stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `sw` at 0xda3efac stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `swc1` at 0xda3efb4 stores 4 bytes to a0 (arg0 at entry) +0x60.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xcd4, including `lw` at 0xda3efb8, `lw` at 0xda3f08c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x7c, including `sw` at 0xda3efcc, `sw` at 0xda3efdc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x84, including `sw` at 0xda3efec, `sw` at 0xda3f004.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x80, including `swc1` at 0xda3eff8, `swc1` at 0xda3f008.
  The `sw` at 0xda3f00c stores 4 bytes to a0 (arg0 at entry) +0x98.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0xda3f088, `sw` at 0xda3f0d4, `sw` at 0xda3f0f0.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xac, including `sw` at 0xda3f0a0, `sw` at 0xda3f0b4, `sw` at 0xda3f0dc.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xa8, including `sw` at 0xda3f0a8, `sw` at 0xda3f0bc, `sw` at 0xda3f0e4.
  The `jalr` at 0xda3ee80 calls __glInitBuffer [0xd9cb2c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda3eef8 targets 0xda3ef18, is taken when v0(=[a1+3272]) == 0, and falls through when v0(=[a1+3272]) != 0.
  The `bnel` branch at 0xda3ef04 targets 0xda3ef1c, is taken when (v0(?) & 0x1) != 0, and falls through when (v0(?) & 0x1) == 0; its branch-likely delay slot `mtc1 v0,$f4` at 0xda3ef08 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3ef10 targets 0xda3ef00, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xda3ef3c targets 0xda3ef5c, is taken when v0(=[a1+3276]) == 0, and falls through when v0(=[a1+3276]) != 0.
  The `bnel` branch at 0xda3ef48 targets 0xda3ef60, is taken when (v0(?) & 0x1) != 0, and falls through when (v0(?) & 0x1) == 0; its branch-likely delay slot `mtc1 v0,$f8` at 0xda3ef4c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3ef54 targets 0xda3ef44, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xda3ef7c targets 0xda3ef9c, is taken when v0(=[a1+3280]) == 0, and falls through when v0(=[a1+3280]) != 0.
  The `bnel` branch at 0xda3ef88 targets 0xda3efa0, is taken when (v0(?) & 0x1) != 0, and falls through when (v0(?) & 0x1) == 0; its branch-likely delay slot `mtc1 v0,$f16` at 0xda3ef8c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3ef94 targets 0xda3ef84, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xda3efbc targets 0xda3efdc, is taken when v0(=[a1+3284]) == 0, and falls through when v0(=[a1+3284]) != 0.
  The `bnel` branch at 0xda3efc8 targets 0xda3efe0, is taken when (v0(?) & 0x1) != 0, and falls through when (v0(?) & 0x1) == 0; its branch-likely delay slot `sw v1,124(a2)` at 0xda3efcc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3efd4 targets 0xda3efc4, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xda3efe0 targets 0xda3effc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xda3eff4 targets 0xda3f00c and is always taken.
  The `beq` branch at 0xda3f020 targets 0xda3f02c, is taken when (t9(?) & a0(=((([a1+3272] | [a1+3276]) | [a1+3280]) | [a1+3284]))) == 0, and falls through when (t9(?) & a0(=((([a1+3272] | [a1+3276]) | [a1+3280]) | [a1+3284]))) != 0.
  The `beq` branch at 0xda3f038 targets 0xda3f044, is taken when (t3(?) & a0(=((([a1+3272] | [a1+3276]) | [a1+3280]) | [a1+3284]))) == 0, and falls through when (t3(?) & a0(=((([a1+3272] | [a1+3276]) | [a1+3280]) | [a1+3284]))) != 0.
  The `beq` branch at 0xda3f050 targets 0xda3f05c, is taken when (t7(?) & a0(=((([a1+3272] | [a1+3276]) | [a1+3280]) | [a1+3284]))) == 0, and falls through when (t7(?) & a0(=((([a1+3272] | [a1+3276]) | [a1+3280]) | [a1+3284]))) != 0.
  The `beq` branch at 0xda3f068 targets 0xda3f074, is taken when (t2(?) & a0(=((([a1+3272] | [a1+3276]) | [a1+3280]) | [a1+3284]))) == 0, and falls through when (t2(?) & a0(=((([a1+3272] | [a1+3276]) | [a1+3280]) | [a1+3284]))) != 0.
  The `bnel` branch at 0xda3f074 targets 0xda3f018, is taken when v1(?) != a1(=0x20), and falls through when v1(?) == a1(=0x20); its branch-likely delay slot `addiu t8,zero,1` at 0xda3f078 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3f080 targets 0xda3f0c0, is taken when v0(?) < 0x11 (signed), and falls through when v0(?) >= 0x11 (signed).
  The `beq` branch at 0xda3f090 targets 0xda3f0ac, is taken when t4(=[a1+3284]) == 0, and falls through when t4(=[a1+3284]) != 0.
  The `beq` branch at 0xda3f0a4 targets 0xda3f100 and is always taken.
  The `beq` branch at 0xda3f0b8 targets 0xda3f100 and is always taken.
  The `bne` branch at 0xda3f0c4 targets 0xda3f0e8, is taken when v0(?) < 0x9 (signed), and falls through when v0(?) >= 0x9 (signed).
  The `beq` branch at 0xda3f0e0 targets 0xda3f100 and is always taken.
  The return at 0xda3f108 has v0 = one of 0xda3e5e4, 0xda3e6bc, 0xda3e7a0, 0xda3e8ac.
- `__glPixInitCI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda3fcb0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda3fcb0-0xda3fdf8 (328 bytes).
  It occupies 328 bytes.
  The `sw` at 0xda3fd1c stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `sw` at 0xda3fd20 stores 4 bytes to a0 (arg0 at entry) +0xd8.
  The `sw` at 0xda3fd24 stores 4 bytes to a0 (arg0 at entry) +0xa0.
  The `sw` at 0xda3fd28 stores 4 bytes to a0 (arg0 at entry) +0xb8.
  The `sw` at 0xda3fd2c stores 4 bytes to a0 (arg0 at entry) +0xbc.
  The `swc1` at 0xda3fd30 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `swc1` at 0xda3fd34 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `swc1` at 0xda3fd38 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `swc1` at 0xda3fd3c stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `sw` at 0xda3fd40 stores 4 bytes to a0 (arg0 at entry) +0xc8.
  The `sw` at 0xda3fd44 stores 4 bytes to a0 (arg0 at entry) +0xcc.
  The `sw` at 0xda3fd48 stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0xda3fd4c stores 4 bytes to a0 (arg0 at entry) +0xb4.
  The `lw` at 0xda3fd5c loads 4 bytes from a1 (arg1 at entry) +0xcb4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x98, including `sw` at 0xda3fd74, `sw` at 0xda3fd78.
  The `lw` at 0xda3fd7c loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `sw` at 0xda3fd88 stores 4 bytes to a0 (arg0 at entry) +0x48.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0xda3fd94, `sw` at 0xda3fdbc, `sw` at 0xda3fdd8.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xac, including `sw` at 0xda3fd9c, `sw` at 0xda3fdc4, `sw` at 0xda3fde0.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xa8, including `sw` at 0xda3fda4, `sw` at 0xda3fdcc, `sw` at 0xda3fde4.
  The `jalr` at 0xda3fcd0 calls __glInitBuffer [0xd9cb2c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda3fd64 targets 0xda3fd78, is taken when v1(=[a1+3252]) >= 0x20 (signed), and falls through when v1(=[a1+3252]) < 0x20 (signed).
  The `beq` branch at 0xda3fd70 targets 0xda3fd7c and is always taken.
  The `bne` branch at 0xda3fd84 targets 0xda3fda8, is taken when v1(=[a1+3252]) < 0x11 (signed), and falls through when v1(=[a1+3252]) >= 0x11 (signed).
  The `beq` branch at 0xda3fda0 targets 0xda3fde8 and is always taken.
  The `bne` branch at 0xda3fdac targets 0xda3fdd0, is taken when v1(=[a1+3252]) < 0x9 (signed), and falls through when v1(=[a1+3252]) >= 0x9 (signed).
  The `beq` branch at 0xda3fdc8 targets 0xda3fde8 and is always taken.
  The return at 0xda3fdf0 has v0 = one of 0xda3f790, 0xda3f7f0, 0xda3f85c.
- `__glPixPickSpanProcs` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda3fe00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda3fe00-0xda40318 (1304 bytes).
  It occupies 1304 bytes.
  The `lbu` at 0xda3fe1c loads 1 byte from a0 (arg0 at entry) +0x74c4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x700, including `lw` at 0xda3fe2c, `lw` at 0xda3fffc.
  The `lw` at 0xda3fe30 loads 4 bytes from a0 (arg0 at entry) +0x771c.
  The `lw` at 0xda3fe34 loads 4 bytes from a0 (arg0 at entry) +0x2e28.
  The `sw` at 0xda3fe60 stores 4 bytes to a0 (arg0 at entry) +0x2f80.
  The `sw` at 0xda3fe64 stores 4 bytes to a0 (arg0 at entry) +0x2fbc.
  The `sw` at 0xda3fe80 stores 4 bytes to (a0 + one of 0x2f80, 0x2f84) +0x0.
  The `sw` at 0xda3fe88 stores 4 bytes to (a0 + one of 0x2fbc, 0x2fc0) +0x0.
  3 such `sw` accesses store 4 bytes to (a0 + one of 0x2f80, 0x2f84, 0x2f88) +0x0, including `sw` at 0xda3fea8, `sw` at 0xda3ff58, `sw` at 0xda3ff74.
  3 such `sw` accesses store 4 bytes to (a0 + one of 0x2fbc, 0x2fc0, 0x2fc4) +0x0, including `sw` at 0xda3feb8, `sw` at 0xda3ff64, `sw` at 0xda3ff7c.
  3 such `sw` accesses store 4 bytes to (a0 + one of 0x2f84, 0x2f88, 0x2f8c) +0x0, including `sw` at 0xda3fed4, `sw` at 0xda3fef0, `sw` at 0xda3ff0c.
  3 such `sw` accesses store 4 bytes to (a0 + one of 0x2fc0, 0x2fc4, 0x2fc8) +0x0, including `sw` at 0xda3fee0, `sw` at 0xda3fefc, `sw` at 0xda3ff10.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x660, including `lw` at 0xda3ff24, `lw` at 0xda40248.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x3000, including `sw` at 0xda3ff40, `sw` at 0xda40264, `sw` at 0xda402f4.
  38 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda3ff9c, `sw` at 0xda3ffa4, `sw` at 0xda3ffac.
  The `lw` at 0xda40054 loads 4 bytes from ret(__glLookUpTexture) +0xe4.
  The `lw` at 0xda40060 loads 4 bytes from [ret(__glLookUpTexture)+228] +0x40.
  The `lw` at 0xda40084 loads 4 bytes from [ret(__glLookUpTexture)+228] +0x38.
  4 such `lw` accesses load 4 bytes from ret(__glLookUpTextureParams) +0xc, including `lw` at 0xda40094, `lw` at 0xda400c4, `lw` at 0xda400f4.
  4 such `lw` accesses load 4 bytes from ret(__glLookUpTextureParams) +0x10, including `lw` at 0xda400a4, `lw` at 0xda400d4, `lw` at 0xda40100.
  The `lw` at 0xda40158 loads 4 bytes from a0 (arg0 at entry) +0x778.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x760, including `lw` at 0xda401b8, `lw` at 0xda40244, `lw` at 0xda402a4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2ff8, including `sw` at 0xda402bc, `sw` at 0xda402fc.
  The `lw` at 0xda402c4 loads 4 bytes from [a0+11816] +0xb8.
  The `lw` at 0xda402d4 loads 4 bytes from [a0+11816] +0xbc.
  The `sw` at 0xda402e8 stores 4 bytes to a0 (arg0 at entry) +0x2ffc.
  The `jalr` at 0xda40030 calls __glLookUpTextureParams [0xda178a0] with a0=a0 at entry (arg0), a1=0xde1, a2=?, a3=[a0+1792].
  The `jalr` at 0xda4004c calls __glLookUpTexture [0xda1793c] with a0=a0 at entry (arg0), a1=0xde1, a2=?, a3=?.
  The `beq` branch at 0xda3fe40 targets 0xda3fe54, is taken when t6(=[a0+29892]:1) == 0, and falls through when t6(=[a0+29892]:1) != 0.
  The `beql` branch at 0xda3fe4c targets 0xda3fe6c, is taken when (a3(=[a0+1792]) & 0x4000) == 0, and falls through when (a3(=[a0+1792]) & 0x4000) != 0; its branch-likely delay slot `andi t9,t0,0x10` at 0xda3fe50 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda3fe6c targets 0xda3fe8c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0xda3fe8c targets 0xda3ff80, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0xda3fe94 targets 0xda3ff1c, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0xda3feb4 targets 0xda3ff00, is taken when (t0(=[a0+30492]) & 0x4) == 0, and falls through when (t0(=[a0+30492]) & 0x4) != 0.
  The `bgez` branch at 0xda3fec0 targets 0xda3fee4, is taken when t4(=([a0+30492] << 0xd)) >= 0 (signed), and falls through when t4(=([a0+30492] << 0xd)) < 0 (signed).
  The `beq` branch at 0xda3fedc targets 0xda3ff80 and is always taken.
  The `beq` branch at 0xda3fef8 targets 0xda3ff80 and is always taken.
  The `beq` branch at 0xda3ff14 targets 0xda3ff80 and is always taken.
  The `beql` branch at 0xda3ff1c targets 0xda3ff84, is taken when t5(?) == 0, and falls through when t5(?) != 0; its branch-likely delay slot `andi t7,t0,0x1` at 0xda3ff20 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3ff30 targets 0xda3ff44, is taken when t6(=[a0+1632]) != at(=0x200), and falls through when t6(=[a0+1632]) == at(=0x200).
  The `beq` branch at 0xda3ff3c targets 0xda40304 and is always taken.
  The `bgez` branch at 0xda3ff44 targets 0xda3ff68, is taken when t8(=([a0+30492] << 0xd)) >= 0 (signed), and falls through when t8(=([a0+30492] << 0xd)) < 0 (signed).
  The `beq` branch at 0xda3ff60 targets 0xda3ff80 and is always taken.
  The `beq` branch at 0xda3ff84 targets 0xda3ffb8, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda3ff90 targets 0xda3ffa8, is taken when (t0(=[a0+30492]) & 0x2) == 0, and falls through when (t0(=[a0+30492]) & 0x2) != 0.
  The `beq` branch at 0xda3ffa0 targets 0xda3ffe0 and is always taken.
  The `beq` branch at 0xda3ffb0 targets 0xda3ffe0 and is always taken.
  The `beq` branch at 0xda3ffbc targets 0xda3ffd4, is taken when (t0(=[a0+30492]) & 0x2) == 0, and falls through when (t0(=[a0+30492]) & 0x2) != 0.
  The `beq` branch at 0xda3ffcc targets 0xda3ffe0 and is always taken.
  The `beq` branch at 0xda3ffe4 targets 0xda4014c, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `bgez` branch at 0xda40004 targets 0xda40144, is taken when t7(=([a0+1792] << 0xe)) >= 0 (signed), and falls through when t7(=([a0+1792] << 0xe)) < 0 (signed).
  The `bltz` branch at 0xda4000c targets 0xda40144, is taken when t8(=([a0+1792] << 0x1)) < 0 (signed), and falls through when t8(=([a0+1792] << 0x1)) >= 0 (signed).
  The `bne` branch at 0xda4007c targets 0xda40144, is taken when t9(=[[ret(__glLookUpTexture)+228]+64]) != at(=0x1907), and falls through when t9(=[[ret(__glLookUpTexture)+228]+64]) == at(=0x1907).
  The `bnel` branch at 0xda4008c targets 0xda40148, is taken when t4(=[[ret(__glLookUpTexture)+228]+56]) != 0, and falls through when t4(=[[ret(__glLookUpTexture)+228]+56]) == 0; its branch-likely delay slot `addiu v1,v1,4` at 0xda40090 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda4009c targets 0xda400cc, is taken when v0(=[ret(__glLookUpTextureParams)+12]) != at(=0x2702), and falls through when v0(=[ret(__glLookUpTextureParams)+12]) == at(=0x2702); its branch-likely delay slot `addiu at,zero,9987` at 0xda400a0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda400ac targets 0xda400cc, is taken when t5(=[ret(__glLookUpTextureParams)+16]) != at(=0x2601), and falls through when t5(=[ret(__glLookUpTextureParams)+16]) == at(=0x2601); its branch-likely delay slot `addiu at,zero,9987` at 0xda400b0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda400cc targets 0xda400f8, is taken when v0(=[ret(__glLookUpTextureParams)+12]) != at(=0x2703), and falls through when v0(=[ret(__glLookUpTextureParams)+12]) == at(=0x2703).
  The `bne` branch at 0xda400dc targets 0xda400f8, is taken when t8(=[ret(__glLookUpTextureParams)+16]) != at(=0x2601), and falls through when t8(=[ret(__glLookUpTextureParams)+16]) == at(=0x2601).
  The `bne` branch at 0xda400f8 targets 0xda40120, is taken when a0(=0x2600) != v0(=[ret(__glLookUpTextureParams)+12]), and falls through when a0(=0x2600) == v0(=[ret(__glLookUpTextureParams)+12]).
  The `bne` branch at 0xda40104 targets 0xda40120, is taken when a0(=0x2600) != t5(=[ret(__glLookUpTextureParams)+16]), and falls through when a0(=0x2600) == t5(=[ret(__glLookUpTextureParams)+16]).
  The `bnel` branch at 0xda40120 targets 0xda40148, is taken when v0(=[ret(__glLookUpTextureParams)+12]) != at(=0x2700), and falls through when v0(=[ret(__glLookUpTextureParams)+12]) == at(=0x2700); its branch-likely delay slot `addiu v1,v1,4` at 0xda40124 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda4012c targets 0xda40148, is taken when a0(=0x2600) != t8(=[ret(__glLookUpTextureParams)+16]), and falls through when a0(=0x2600) == t8(=[ret(__glLookUpTextureParams)+16]); its branch-likely delay slot `addiu v1,v1,4` at 0xda40130 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda40150 targets 0xda40194, is taken when (t0(=[a0+30492]) & 0x1000) == 0, and falls through when (t0(=[a0+30492]) & 0x1000) != 0.
  The `bne` branch at 0xda40160 targets 0xda4017c, is taken when t6(=[a0+1912]) != at(=0x1102), and falls through when t6(=[a0+1912]) == at(=0x1102).
  The `beq` branch at 0xda40174 targets 0xda4018c and is always taken.
  The `beq` branch at 0xda40194 targets 0xda401b4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beql` branch at 0xda401b4 targets 0xda402a8, is taken when t1(?) == 0, and falls through when t1(?) != 0; its branch-likely delay slot `lw t6,1888(s0)` at 0xda401b8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda401bc targets 0xda40240, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda401d8 targets 0xda40224, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bgez` branch at 0xda401e4 targets 0xda40208, is taken when t4(=([a0+30492] << 0xd)) >= 0 (signed), and falls through when t4(=([a0+30492] << 0xd)) < 0 (signed).
  The `beq` branch at 0xda40200 targets 0xda402a4 and is always taken.
  The `beq` branch at 0xda4021c targets 0xda402a4 and is always taken.
  The `beq` branch at 0xda40238 targets 0xda402a4 and is always taken.
  The `beql` branch at 0xda40240 targets 0xda402a8, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `lw t6,1888(s0)` at 0xda40244 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda40254 targets 0xda40268, is taken when t5(=[a0+1632]) != at(=0x200), and falls through when t5(=[a0+1632]) == at(=0x200).
  The `beq` branch at 0xda40260 targets 0xda40304 and is always taken.
  The `bgez` branch at 0xda40268 targets 0xda4028c, is taken when t7(=([a0+30492] << 0xd)) >= 0 (signed), and falls through when t7(=([a0+30492] << 0xd)) < 0 (signed).
  The `beq` branch at 0xda40284 targets 0xda402a4 and is always taken.
  The `bne` branch at 0xda402b0 targets 0xda402c4, is taken when t6(=[a0+1888]) != at(=0x408), and falls through when t6(=[a0+1888]) == at(=0x408).
  The `beq` branch at 0xda402e4 targets 0xda402f8, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0xda402f0 targets 0xda40304 and is always taken.
  The return at 0xda40310 has v0 = one of a0+12160, ?.
- `__glPixPickStoreProcs` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40318 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda40318-0xda4041c (260 bytes).
  It occupies 260 bytes.
  The `lw` at 0xda40324 loads 4 bytes from a0 (arg0 at entry) +0x700.
  The `lbu` at 0xda40338 loads 1 byte from a0 (arg0 at entry) +0xc94.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x760, including `lw` at 0xda40358, `lw` at 0xda40360.
  The `lw` at 0xda40384 loads 4 bytes from table(0xda7b7f0) +0x0.
  3 such `lw` accesses load 4 bytes from table(0xda82630) +0x0, including `lw` at 0xda403b0, `lw` at 0xda403e0, `lw` at 0xda40404.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x317c, including `sw` at 0xda403b4, `sw` at 0xda403e4, `sw` at 0xda40410.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x3178, including `sw` at 0xda403bc, `sw` at 0xda403ec, `sw` at 0xda40408.
  The `lbu` at 0xda403c0 loads 1 byte from a0 (arg0 at entry) +0x77f4.
  The `lw` at 0xda403f8 loads 4 bytes from a0 (arg0 at entry) +0x2e28.
  The `lw` at 0xda4040c loads 4 bytes from [a0+11816] +0xa4.
  The `beq` branch at 0xda40330 targets 0xda40348, is taken when (v1(=[a0+1792]) & 0x1) == 0, and falls through when (v1(=[a0+1792]) & 0x1) != 0.
  The `beq` branch at 0xda4033c targets 0xda40348, is taken when t7(=[a0+3220]:1) == 0, and falls through when t7(=[a0+3220]:1) != 0.
  The `beq` branch at 0xda40348 targets 0xda40354, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beql` branch at 0xda40354 targets 0xda40364, is taken when t9(?) == 0, and falls through when t9(?) != 0; its branch-likely delay slot `lw v1,1888(a0)` at 0xda40358 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda40364 targets 0xda40394, is taken when v1(=[a0+1888]) == 0, and falls through when v1(=[a0+1888]) != 0.
  The `beq` branch at 0xda40370 targets 0xda40414, is taken when t0(=[a0+1888]-1028) >= 0x9 (unsigned), and falls through when t0(=[a0+1888]-1028) < 0x9 (unsigned).
  The `bne` branch at 0xda40394 targets 0xda40414, is taken when v1(=[a0+1888]) != 0, and falls through when v1(=[a0+1888]) == 0.
  The `beq` branch at 0xda403c4 targets 0xda403f0, is taken when t6(=[a0+30708]:1) == 0, and falls through when t6(=[a0+30708]:1) != 0.
  The return at 0xda403b8 has v0 = ?.
  The return at 0xda403e8 has v0 = ?.
  The return at 0xda40414 has v0 = ?.
  The indirect jump at 0xda4038c uses the jump table at 0xda7b7f0 with targets 0xda403f0, 0xda403f0, 0xda40414, 0xda40414, 0xda403c0, 0xda403f0, 0xda403f0, 0xda403f0, 0xda403f0.
- `__glle_ListBase` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c0c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c0c0-0xda4c100 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4c0d0 loads 4 bytes from abs 0x1068.
  The `lw` at 0xda4c0e4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4c0e0 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c0f8 has v0 = a0+4.
- `__glle_Color3bv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c100 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c100-0xda4c13c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c10c loads 4 bytes from abs 0x15dc.
  The `jalr` at 0xda4c11c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c134 has v0 = a0+4.
- `__glle_Color3dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c13c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c13c-0xda4c178 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c148 loads 4 bytes from abs 0x15e4.
  The `jalr` at 0xda4c158 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c170 has v0 = a0+24.
- `__glle_Color3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c178 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c178-0xda4c1b4 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c184 loads 4 bytes from abs 0x15ec.
  The `jalr` at 0xda4c194 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c1ac has v0 = a0+12.
- `__glle_Color3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c1b4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c1b4-0xda4c1f0 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c1c0 loads 4 bytes from abs 0x15f4.
  The `jalr` at 0xda4c1d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c1e8 has v0 = a0+12.
- `__glle_Color3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c1f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c1f0-0xda4c22c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c1fc loads 4 bytes from abs 0x15fc.
  The `jalr` at 0xda4c20c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c224 has v0 = a0+8.
- `__glle_Color3ubv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c22c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c22c-0xda4c268 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c238 loads 4 bytes from abs 0x1604.
  The `jalr` at 0xda4c248 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c260 has v0 = a0+4.
- `__glle_Color3uiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c268 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c268-0xda4c2a4 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c274 loads 4 bytes from abs 0x160c.
  The `jalr` at 0xda4c284 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c29c has v0 = a0+12.
- `__glle_Color3usv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c2a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c2a4-0xda4c2e0 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c2b0 loads 4 bytes from abs 0x1614.
  The `jalr` at 0xda4c2c0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c2d8 has v0 = a0+8.
- `__glle_Color4bv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c2e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c2e0-0xda4c31c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c2ec loads 4 bytes from abs 0x161c.
  The `jalr` at 0xda4c2fc calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c314 has v0 = a0+4.
- `__glle_Color4dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c31c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c31c-0xda4c358 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c328 loads 4 bytes from abs 0x1624.
  The `jalr` at 0xda4c338 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c350 has v0 = a0+32.
- `__glle_Color4fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c358 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c358-0xda4c394 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c364 loads 4 bytes from abs 0x162c.
  The `jalr` at 0xda4c374 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c38c has v0 = a0+16.
- `__glle_Color4iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c394 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c394-0xda4c3d0 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c3a0 loads 4 bytes from abs 0x1634.
  The `jalr` at 0xda4c3b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c3c8 has v0 = a0+16.
- `__glle_Color4sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c3d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c3d0-0xda4c40c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c3dc loads 4 bytes from abs 0x163c.
  The `jalr` at 0xda4c3ec calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c404 has v0 = a0+8.
- `__glle_Color4ubv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c40c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c40c-0xda4c448 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c418 loads 4 bytes from abs 0x1644.
  The `jalr` at 0xda4c428 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c440 has v0 = a0+4.
- `__glle_Color4uiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c448 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c448-0xda4c484 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c454 loads 4 bytes from abs 0x164c.
  The `jalr` at 0xda4c464 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c47c has v0 = a0+16.
- `__glle_Color4usv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c484 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c484-0xda4c4c0 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c490 loads 4 bytes from abs 0x1654.
  The `jalr` at 0xda4c4a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c4b8 has v0 = a0+8.
- `__glle_EdgeFlagv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c4c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c4c0-0xda4c4fc (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c4cc loads 4 bytes from abs 0x1078.
  The `jalr` at 0xda4c4dc calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c4f4 has v0 = a0+4.
- `__glle_End` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c4fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c4fc-0xda4c534 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0xda4c508 loads 4 bytes from abs 0x107c.
  The `jalr` at 0xda4c518 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c52c has v0 = a0.
- `__glle_Indexdv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c534 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c534-0xda4c570 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c540 loads 4 bytes from abs 0x165c.
  The `jalr` at 0xda4c550 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c568 has v0 = a0+8.
- `__glle_Indexfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c570 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c570-0xda4c5ac (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c57c loads 4 bytes from abs 0x1664.
  The `jalr` at 0xda4c58c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c5a4 has v0 = a0+4.
- `__glle_Indexiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c5ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c5ac-0xda4c5e8 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c5b8 loads 4 bytes from abs 0x166c.
  The `jalr` at 0xda4c5c8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c5e0 has v0 = a0+4.
- `__glle_Indexsv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c5e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c5e8-0xda4c624 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c5f4 loads 4 bytes from abs 0x1674.
  The `jalr` at 0xda4c604 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c61c has v0 = a0+4.
- `__glle_Normal3bv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c624 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c624-0xda4c660 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c630 loads 4 bytes from abs 0x1684.
  The `jalr` at 0xda4c640 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c658 has v0 = a0+4.
- `__glle_Normal3dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c660 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c660-0xda4c69c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c66c loads 4 bytes from abs 0x168c.
  The `jalr` at 0xda4c67c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c694 has v0 = a0+24.
- `__glle_Normal3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c69c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c69c-0xda4c6d8 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c6a8 loads 4 bytes from abs 0x1694.
  The `jalr` at 0xda4c6b8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c6d0 has v0 = a0+12.
- `__glle_Normal3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c6d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c6d8-0xda4c714 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c6e4 loads 4 bytes from abs 0x169c.
  The `jalr` at 0xda4c6f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c70c has v0 = a0+12.
- `__glle_Normal3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c714 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c714-0xda4c750 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c720 loads 4 bytes from abs 0x16a4.
  The `jalr` at 0xda4c730 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c748 has v0 = a0+8.
- `__glle_RasterPos2dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c750 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c750-0xda4c78c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c75c loads 4 bytes from abs 0x172c.
  The `jalr` at 0xda4c76c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c784 has v0 = a0+16.
- `__glle_RasterPos2fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c78c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c78c-0xda4c7c8 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c798 loads 4 bytes from abs 0x1734.
  The `jalr` at 0xda4c7a8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c7c0 has v0 = a0+8.
- `__glle_RasterPos2iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c7c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c7c8-0xda4c804 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c7d4 loads 4 bytes from abs 0x173c.
  The `jalr` at 0xda4c7e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c7fc has v0 = a0+8.
- `__glle_RasterPos2sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c804 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c804-0xda4c840 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c810 loads 4 bytes from abs 0x1744.
  The `jalr` at 0xda4c820 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c838 has v0 = a0+4.
- `__glle_RasterPos3dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c840 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c840-0xda4c87c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c84c loads 4 bytes from abs 0x174c.
  The `jalr` at 0xda4c85c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c874 has v0 = a0+24.
- `__glle_RasterPos3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c87c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c87c-0xda4c8b8 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c888 loads 4 bytes from abs 0x1754.
  The `jalr` at 0xda4c898 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c8b0 has v0 = a0+12.
- `__glle_RasterPos3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c8b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c8b8-0xda4c8f4 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c8c4 loads 4 bytes from abs 0x175c.
  The `jalr` at 0xda4c8d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c8ec has v0 = a0+12.
- `__glle_RasterPos3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c8f4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c8f4-0xda4c930 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c900 loads 4 bytes from abs 0x1764.
  The `jalr` at 0xda4c910 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c928 has v0 = a0+8.
- `__glle_RasterPos4dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c930 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c930-0xda4c96c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c93c loads 4 bytes from abs 0x176c.
  The `jalr` at 0xda4c94c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c964 has v0 = a0+32.
- `__glle_RasterPos4fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c96c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c96c-0xda4c9a8 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c978 loads 4 bytes from abs 0x1774.
  The `jalr` at 0xda4c988 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c9a0 has v0 = a0+16.
- `__glle_RasterPos4iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c9a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c9a8-0xda4c9e4 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c9b4 loads 4 bytes from abs 0x177c.
  The `jalr` at 0xda4c9c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4c9dc has v0 = a0+16.
- `__glle_RasterPos4sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4c9e4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4c9e4-0xda4ca20 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4c9f0 loads 4 bytes from abs 0x1784.
  The `jalr` at 0xda4ca00 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4ca18 has v0 = a0+8.
- `__glle_Rectdv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ca20 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ca20-0xda4ca60 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4ca2c loads 4 bytes from abs 0x178c.
  The `jalr` at 0xda4ca40 calls (unknown callee) with a0=a0 at entry (arg0), a1=a0+16, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4ca58 has v0 = a0+32.
- `__glle_Rectfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ca60 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ca60-0xda4caa0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4ca6c loads 4 bytes from abs 0x1794.
  The `jalr` at 0xda4ca80 calls (unknown callee) with a0=a0 at entry (arg0), a1=a0+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4ca98 has v0 = a0+16.
- `__glle_Rectiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4caa0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4caa0-0xda4cae0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4caac loads 4 bytes from abs 0x179c.
  The `jalr` at 0xda4cac0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a0+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4cad8 has v0 = a0+16.
- `__glle_Rectsv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4cae0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4cae0-0xda4cb20 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4caec loads 4 bytes from abs 0x17a4.
  The `jalr` at 0xda4cb00 calls (unknown callee) with a0=a0 at entry (arg0), a1=a0+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4cb18 has v0 = a0+8.
- `__glle_TexCoord1dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4cb20 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4cb20-0xda4cb5c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4cb2c loads 4 bytes from abs 0x16ac.
  The `jalr` at 0xda4cb3c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4cb54 has v0 = a0+8.
- `__glle_TexCoord1fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4cb5c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4cb5c-0xda4cb98 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4cb68 loads 4 bytes from abs 0x16b4.
  The `jalr` at 0xda4cb78 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4cb90 has v0 = a0+4.
- `__glle_TexCoord1iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4cb98 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4cb98-0xda4cbd4 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4cba4 loads 4 bytes from abs 0x16bc.
  The `jalr` at 0xda4cbb4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4cbcc has v0 = a0+4.
- `__glle_TexCoord1sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4cbd4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4cbd4-0xda4cc10 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4cbe0 loads 4 bytes from abs 0x16c4.
  The `jalr` at 0xda4cbf0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4cc08 has v0 = a0+4.
- `__glle_TexCoord2dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4cc10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4cc10-0xda4cc4c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4cc1c loads 4 bytes from abs 0x16cc.
  The `jalr` at 0xda4cc2c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4cc44 has v0 = a0+16.
- `__glle_TexCoord2fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4cc4c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4cc4c-0xda4cc88 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4cc58 loads 4 bytes from abs 0x16d4.
  The `jalr` at 0xda4cc68 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4cc80 has v0 = a0+8.
- `__glle_TexCoord2iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4cc88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4cc88-0xda4ccc4 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4cc94 loads 4 bytes from abs 0x16dc.
  The `jalr` at 0xda4cca4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4ccbc has v0 = a0+8.
- `__glle_TexCoord2sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ccc4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ccc4-0xda4cd00 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4ccd0 loads 4 bytes from abs 0x16e4.
  The `jalr` at 0xda4cce0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4ccf8 has v0 = a0+4.
- `__glle_TexCoord3dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4cd00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4cd00-0xda4cd3c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4cd0c loads 4 bytes from abs 0x16ec.
  The `jalr` at 0xda4cd1c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4cd34 has v0 = a0+24.
- `__glle_TexCoord3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4cd3c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4cd3c-0xda4cd78 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4cd48 loads 4 bytes from abs 0x16f4.
  The `jalr` at 0xda4cd58 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4cd70 has v0 = a0+12.
- `__glle_TexCoord3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4cd78 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4cd78-0xda4cdb4 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4cd84 loads 4 bytes from abs 0x16fc.
  The `jalr` at 0xda4cd94 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4cdac has v0 = a0+12.
- `__glle_TexCoord3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4cdb4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4cdb4-0xda4cdf0 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4cdc0 loads 4 bytes from abs 0x1704.
  The `jalr` at 0xda4cdd0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4cde8 has v0 = a0+8.
- `__glle_TexCoord4dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4cdf0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4cdf0-0xda4ce2c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4cdfc loads 4 bytes from abs 0x170c.
  The `jalr` at 0xda4ce0c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4ce24 has v0 = a0+32.
- `__glle_TexCoord4fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ce2c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ce2c-0xda4ce68 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4ce38 loads 4 bytes from abs 0x1714.
  The `jalr` at 0xda4ce48 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4ce60 has v0 = a0+16.
- `__glle_TexCoord4iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ce68 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ce68-0xda4cea4 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4ce74 loads 4 bytes from abs 0x171c.
  The `jalr` at 0xda4ce84 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4ce9c has v0 = a0+16.
- `__glle_TexCoord4sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4cea4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4cea4-0xda4cee0 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4ceb0 loads 4 bytes from abs 0x1724.
  The `jalr` at 0xda4cec0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4ced8 has v0 = a0+8.
- `__glle_Vertex2dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4cee0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4cee0-0xda4cf1c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4ceec loads 4 bytes from abs 0x157c.
  The `jalr` at 0xda4cefc calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4cf14 has v0 = a0+16.
- `__glle_Vertex2fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4cf1c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4cf1c-0xda4cf58 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4cf28 loads 4 bytes from abs 0x1584.
  The `jalr` at 0xda4cf38 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4cf50 has v0 = a0+8.
- `__glle_Vertex2iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4cf58 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4cf58-0xda4cf94 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4cf64 loads 4 bytes from abs 0x158c.
  The `jalr` at 0xda4cf74 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4cf8c has v0 = a0+8.
- `__glle_Vertex2sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4cf94 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4cf94-0xda4cfd0 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4cfa0 loads 4 bytes from abs 0x1594.
  The `jalr` at 0xda4cfb0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4cfc8 has v0 = a0+4.
- `__glle_Vertex3dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4cfd0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4cfd0-0xda4d00c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4cfdc loads 4 bytes from abs 0x159c.
  The `jalr` at 0xda4cfec calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4d004 has v0 = a0+24.
- `__glle_Vertex3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d00c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d00c-0xda4d048 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4d018 loads 4 bytes from abs 0x15a4.
  The `jalr` at 0xda4d028 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4d040 has v0 = a0+12.
- `__glle_Vertex3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d048 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d048-0xda4d084 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4d054 loads 4 bytes from abs 0x15ac.
  The `jalr` at 0xda4d064 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4d07c has v0 = a0+12.
- `__glle_Vertex3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d084 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d084-0xda4d0c0 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4d090 loads 4 bytes from abs 0x15b4.
  The `jalr` at 0xda4d0a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4d0b8 has v0 = a0+8.
- `__glle_Vertex4dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d0c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d0c0-0xda4d0fc (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4d0cc loads 4 bytes from abs 0x15bc.
  The `jalr` at 0xda4d0dc calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4d0f4 has v0 = a0+32.
- `__glle_Vertex4fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d0fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d0fc-0xda4d138 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4d108 loads 4 bytes from abs 0x15c4.
  The `jalr` at 0xda4d118 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4d130 has v0 = a0+16.
- `__glle_Vertex4iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d138 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d138-0xda4d174 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4d144 loads 4 bytes from abs 0x15cc.
  The `jalr` at 0xda4d154 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4d16c has v0 = a0+16.
- `__glle_Vertex4sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d174 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d174-0xda4d1b0 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4d180 loads 4 bytes from abs 0x15d4.
  The `jalr` at 0xda4d190 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4d1a8 has v0 = a0+8.
- `__glle_ClipPlane` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d1b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d1b0-0xda4d1f4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xda4d1c0 loads 4 bytes from abs 0x1080.
  The `lw` at 0xda4d1d0 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `jalr` at 0xda4d1d4 calls (unknown callee) with a0=[a0+32], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4d1ec has v0 = a0+40.
- `__glle_ColorMaterial` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d1f4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d1f4-0xda4d23c (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda4d204 loads 4 bytes from abs 0x1084.
  The `lw` at 0xda4d214 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4d218 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4d21c calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xda4d234 has v0 = a0+8.
- `__glle_CullFace` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d23c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d23c-0xda4d27c (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4d24c loads 4 bytes from abs 0x1088.
  The `lw` at 0xda4d260 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4d25c calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4d274 has v0 = a0+4.
- `__glle_Fogf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d27c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d27c-0xda4d2c4 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda4d28c loads 4 bytes from abs 0x108c.
  The `lw` at 0xda4d29c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4d2a0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4d2a4 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xda4d2bc has v0 = a0+8.
- `__glle_Fogfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d2c4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d2c4-0xda4d32c (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xda4d2d4 loads 4 bytes from abs 0x1090.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xda4d2e4, `lw` at 0xda4d300.
  The `jalr` at 0xda4d2ec calls (unknown callee) with a0=[a0], a1=a0+4, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xda4d304 calls __glFogfv_size [0xda077e0] with a0=[a0], a1=?, a2=?, a3=?.
  The return at 0xda4d324 has v0 = (a0 + (ret(__glFogfv_size) << 0x2))+4.
- `__glle_Fogi` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d32c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d32c-0xda4d374 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda4d33c loads 4 bytes from abs 0x1094.
  The `lw` at 0xda4d34c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4d350 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4d354 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xda4d36c has v0 = a0+8.
- `__glle_Fogiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d374 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d374-0xda4d3dc (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xda4d384 loads 4 bytes from abs 0x1098.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xda4d394, `lw` at 0xda4d3b0.
  The `jalr` at 0xda4d39c calls (unknown callee) with a0=[a0], a1=a0+4, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xda4d3b4 calls __glFogiv_size [0xda07770] with a0=[a0], a1=?, a2=?, a3=?.
  The return at 0xda4d3d4 has v0 = (a0 + (ret(__glFogiv_size) << 0x2))+4.
- `__glle_FrontFace` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d3dc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d3dc-0xda4d41c (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4d3ec loads 4 bytes from abs 0x109c.
  The `lw` at 0xda4d400 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4d3fc calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4d414 has v0 = a0+4.
- `__glle_Hint` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d41c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d41c-0xda4d464 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda4d42c loads 4 bytes from abs 0x10a0.
  The `lw` at 0xda4d43c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4d440 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4d444 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xda4d45c has v0 = a0+8.
- `__glle_Lightfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d464 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d464-0xda4d4d0 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda4d474 loads 4 bytes from abs 0x10a8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda4d484, `lw` at 0xda4d4a4.
  The `lw` at 0xda4d488 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4d490 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xda4d4a8 calls __glLightfv_size [0xda07814] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xda4d4c8 has v0 = (a0 + (ret(__glLightfv_size) << 0x2))+8.
- `__glle_Lightiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d4d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d4d0-0xda4d53c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda4d4e0 loads 4 bytes from abs 0x10b0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda4d4f0, `lw` at 0xda4d510.
  The `lw` at 0xda4d4f4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4d4fc calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xda4d514 calls __glLightiv_size [0xda078a4] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xda4d534 has v0 = (a0 + (ret(__glLightiv_size) << 0x2))+8.
- `__glle_LightModelfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d53c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d53c-0xda4d5a4 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xda4d54c loads 4 bytes from abs 0x10b8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xda4d55c, `lw` at 0xda4d578.
  The `jalr` at 0xda4d564 calls (unknown callee) with a0=[a0], a1=a0+4, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xda4d57c calls __glLightModelfv_size [0xda078d8] with a0=[a0], a1=?, a2=?, a3=?.
  The return at 0xda4d59c has v0 = (a0 + (ret(__glLightModelfv_size) << 0x2))+4.
- `__glle_LightModeliv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d5a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d5a4-0xda4d60c (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xda4d5b4 loads 4 bytes from abs 0x10c0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xda4d5c4, `lw` at 0xda4d5e0.
  The `jalr` at 0xda4d5cc calls (unknown callee) with a0=[a0], a1=a0+4, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xda4d5e4 calls __glLightModeliv_size [0xda0792c] with a0=[a0], a1=?, a2=?, a3=?.
  The return at 0xda4d604 has v0 = (a0 + (ret(__glLightModeliv_size) << 0x2))+4.
- `__glle_LineStipple` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d60c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d60c-0xda4d654 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda4d61c loads 4 bytes from abs 0x10c4.
  The `lhu` at 0xda4d62c loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4d630 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4d634 calls (unknown callee) with a0=[a0], a1=[a0+4]:2, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xda4d64c has v0 = a0+8.
- `__glle_LineWidth` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d654 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d654-0xda4d694 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4d664 loads 4 bytes from abs 0x10c8.
  The `lwc1` at 0xda4d678 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4d674 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0].
  The return at 0xda4d68c has v0 = a0+4.
- `__glle_Materialfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d694 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d694-0xda4d700 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda4d6a4 loads 4 bytes from abs 0x10d0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda4d6b4, `lw` at 0xda4d6d4.
  The `lw` at 0xda4d6b8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4d6c0 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xda4d6d8 calls __glMaterialfv_size [0xda07960] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xda4d6f8 has v0 = (a0 + (ret(__glMaterialfv_size) << 0x2))+8.
- `__glle_Materialiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d700 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d700-0xda4d76c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda4d710 loads 4 bytes from abs 0x10d8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda4d720, `lw` at 0xda4d740.
  The `lw` at 0xda4d724 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4d72c calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xda4d744 calls __glMaterialiv_size [0xda079e4] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xda4d764 has v0 = (a0 + (ret(__glMaterialiv_size) << 0x2))+8.
- `__glle_PointSize` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d76c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d76c-0xda4d7ac (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4d77c loads 4 bytes from abs 0x10dc.
  The `lwc1` at 0xda4d790 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4d78c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0].
  The return at 0xda4d7a4 has v0 = a0+4.
- `__glle_PolygonMode` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d7ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d7ac-0xda4d7f4 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda4d7bc loads 4 bytes from abs 0x10e0.
  The `lw` at 0xda4d7cc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4d7d0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4d7d4 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xda4d7ec has v0 = a0+8.
- `__glle_Scissor` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d7f4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d7f4-0xda4d844 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xda4d80c loads 4 bytes from abs 0x10e8.
  The `lw` at 0xda4d818 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xda4d81c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4d820 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4d828 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4d824 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12].
  The return at 0xda4d83c has v0 = a0+16.
- `__glle_ShadeModel` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d844 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d844-0xda4d884 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4d854 loads 4 bytes from abs 0x10ec.
  The `lw` at 0xda4d868 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4d864 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4d87c has v0 = a0+4.
- `__glle_TexParameterfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d884 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d884-0xda4d8f0 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda4d894 loads 4 bytes from abs 0x10f4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda4d8a4, `lw` at 0xda4d8c4.
  The `lw` at 0xda4d8a8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4d8b0 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xda4d8c8 calls __glTexParameterfv_size [0xda19c24] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xda4d8e8 has v0 = (a0 + (ret(__glTexParameterfv_size) << 0x2))+8.
- `__glle_TexParameteriv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d8f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d8f0-0xda4d95c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda4d900 loads 4 bytes from abs 0x10fc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda4d910, `lw` at 0xda4d930.
  The `lw` at 0xda4d914 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4d91c calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xda4d934 calls __glTexParameteriv_size [0xda19d70] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xda4d954 has v0 = (a0 + (ret(__glTexParameteriv_size) << 0x2))+8.
- `__glle_TexEnvfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d95c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d95c-0xda4d9c8 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda4d96c loads 4 bytes from abs 0x110c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda4d97c, `lw` at 0xda4d99c.
  The `lw` at 0xda4d980 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4d988 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xda4d9a0 calls __glTexEnvfv_size [0xda1a15c] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xda4d9c0 has v0 = (a0 + (ret(__glTexEnvfv_size) << 0x2))+8.
- `__glle_TexEnviv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4d9c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4d9c8-0xda4da34 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda4d9d8 loads 4 bytes from abs 0x1114.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda4d9e8, `lw` at 0xda4da08.
  The `lw` at 0xda4d9ec loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4d9f4 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xda4da0c calls __glTexEnviv_size [0xda1a190] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xda4da2c has v0 = (a0 + (ret(__glTexEnviv_size) << 0x2))+8.
- `__glle_TexGendv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4da34 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4da34-0xda4daa0 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda4da44 loads 4 bytes from abs 0x111c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda4da54, `lw` at 0xda4da74.
  The `lw` at 0xda4da58 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4da60 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xda4da78 calls __glTexGendv_size [0xda18dd0] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xda4da98 has v0 = (a0 + (ret(__glTexGendv_size) << 0x3))+8.
- `__glle_TexGenfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4daa0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4daa0-0xda4db0c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda4dab0 loads 4 bytes from abs 0x1124.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda4dac0, `lw` at 0xda4dae0.
  The `lw` at 0xda4dac4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4dacc calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xda4dae4 calls __glTexGenfv_size [0xda18e0c] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xda4db04 has v0 = (a0 + (ret(__glTexGenfv_size) << 0x2))+8.
- `__glle_TexGeniv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4db0c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4db0c-0xda4db78 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda4db1c loads 4 bytes from abs 0x112c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda4db2c, `lw` at 0xda4db4c.
  The `lw` at 0xda4db30 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4db38 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xda4db50 calls __glTexGeniv_size [0xda18e40] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xda4db70 has v0 = (a0 + (ret(__glTexGeniv_size) << 0x2))+8.
- `__glle_InitNames` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4db78 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4db78-0xda4dbb0 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0xda4db84 loads 4 bytes from abs 0x113c.
  The `jalr` at 0xda4db94 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4dba8 has v0 = a0.
- `__glle_LoadName` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4dbb0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4dbb0-0xda4dbf0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4dbc0 loads 4 bytes from abs 0x1140.
  The `lw` at 0xda4dbd4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4dbd0 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4dbe8 has v0 = a0+4.
- `__glle_PassThrough` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4dbf0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4dbf0-0xda4dc30 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4dc00 loads 4 bytes from abs 0x1144.
  The `lwc1` at 0xda4dc14 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4dc10 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0].
  The return at 0xda4dc28 has v0 = a0+4.
- `__glle_PopName` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4dc30 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4dc30-0xda4dc68 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0xda4dc3c loads 4 bytes from abs 0x1148.
  The `jalr` at 0xda4dc4c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4dc60 has v0 = a0.
- `__glle_PushName` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4dc68 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4dc68-0xda4dca8 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4dc78 loads 4 bytes from abs 0x114c.
  The `lw` at 0xda4dc8c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4dc88 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4dca0 has v0 = a0+4.
- `__glle_DrawBuffer` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4dca8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4dca8-0xda4dce8 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4dcb8 loads 4 bytes from abs 0x1150.
  The `lw` at 0xda4dccc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4dcc8 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4dce0 has v0 = a0+4.
- `__glle_Clear` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4dce8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4dce8-0xda4dd28 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4dcf8 loads 4 bytes from abs 0x1154.
  The `lw` at 0xda4dd0c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4dd08 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4dd20 has v0 = a0+4.
- `__glle_ClearAccum` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4dd28 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4dd28-0xda4dd74 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xda4dd40 loads 4 bytes from abs 0x1158.
  The `lw` at 0xda4dd44 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xda4dd48 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xda4dd4c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xda4dd50 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4dd54 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+8], a3=[a0+12]; fp f12=[a0], f14=[a0+4].
  The return at 0xda4dd6c has v0 = a0+16.
- `__glle_ClearIndex` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4dd74 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4dd74-0xda4ddb4 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4dd84 loads 4 bytes from abs 0x115c.
  The `lwc1` at 0xda4dd98 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4dd94 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0].
  The return at 0xda4ddac has v0 = a0+4.
- `__glle_ClearColor` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ddb4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ddb4-0xda4de00 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xda4ddcc loads 4 bytes from abs 0x1160.
  The `lw` at 0xda4ddd0 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xda4ddd4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xda4ddd8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xda4dddc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4dde0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+8], a3=[a0+12]; fp f12=[a0], f14=[a0+4].
  The return at 0xda4ddf8 has v0 = a0+16.
- `__glle_ClearStencil` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4de00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4de00-0xda4de40 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4de10 loads 4 bytes from abs 0x1164.
  The `lw` at 0xda4de24 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4de20 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4de38 has v0 = a0+4.
- `__glle_ClearDepth` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4de40 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4de40-0xda4de80 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4de50 loads 4 bytes from abs 0x1168.
  The `ldc1` at 0xda4de64 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4de60 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0]:8.
  The return at 0xda4de78 has v0 = a0+8.
- `__glle_StencilMask` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4de80 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4de80-0xda4dec0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4de90 loads 4 bytes from abs 0x116c.
  The `lw` at 0xda4dea4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4dea0 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4deb8 has v0 = a0+4.
- `__glle_ColorMask` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4dec0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4dec0-0xda4df10 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xda4ded8 loads 4 bytes from abs 0x1170.
  The `lbu` at 0xda4dee4 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `lbu` at 0xda4dee8 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `lbu` at 0xda4deec loads 1 byte from a0 (arg0 at entry) +0x1.
  The `lbu` at 0xda4def4 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4def0 calls (unknown callee) with a0=[a0]:1, a1=[a0+1]:1, a2=[a0+2]:1, a3=[a0+3]:1.
  The return at 0xda4df08 has v0 = a0+4.
- `__glle_DepthMask` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4df10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4df10-0xda4df50 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4df20 loads 4 bytes from abs 0x1174.
  The `lbu` at 0xda4df34 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4df30 calls (unknown callee) with a0=[a0]:1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4df48 has v0 = a0+4.
- `__glle_IndexMask` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4df50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4df50-0xda4df90 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4df60 loads 4 bytes from abs 0x1178.
  The `lw` at 0xda4df74 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4df70 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4df88 has v0 = a0+4.
- `__glle_Accum` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4df90 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4df90-0xda4dfd8 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda4dfa0 loads 4 bytes from abs 0x117c.
  The `lw` at 0xda4dfb0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4dfb4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4dfb8 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xda4dfd0 has v0 = a0+8.
- `__glle_PopAttrib` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4dfd8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4dfd8-0xda4e010 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0xda4dfe4 loads 4 bytes from abs 0x1190.
  The `jalr` at 0xda4dff4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4e008 has v0 = a0.
- `__glle_PushAttrib` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e010 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e010-0xda4e050 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4e020 loads 4 bytes from abs 0x1194.
  The `lw` at 0xda4e034 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4e030 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4e048 has v0 = a0+4.
- `__glle_MapGrid1d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e050 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e050-0xda4e0a4 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0xda4e06c loads 4 bytes from abs 0x11a8.
  The `ldc1` at 0xda4e070 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4e074 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xda4e078 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4e07c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `jalr` at 0xda4e084 calls (unknown callee) with a0=[a0+16], a1=a0 at entry (arg0), a2=[a0], a3=[a0+4].
  The return at 0xda4e09c has v0 = a0+24.
- `__glle_MapGrid1f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e0a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e0a4-0xda4e0f0 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xda4e0c0 loads 4 bytes from abs 0x11ac.
  The `lw` at 0xda4e0c4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4e0c8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4e0cc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4e0d0 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=a0 at entry (arg0).
  The return at 0xda4e0e8 has v0 = a0+12.
- `__glle_MapGrid2d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e0f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e0f0-0xda4e15c (108 bytes).
  It occupies 108 bytes.
  The `ldc1` at 0xda4e10c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4e110 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xda4e114 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4e118 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0xda4e120 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0xda4e124 loads 4 bytes from abs 0x11b0.
  The `ldc1` at 0xda4e12c loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0xda4e134 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `jalr` at 0xda4e13c calls (unknown callee) with a0=[a0+32], a1=a0 at entry (arg0), a2=[a0], a3=[a0+4].
  The return at 0xda4e154 has v0 = a0+40.
- `__glle_MapGrid2f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e15c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e15c-0xda4e1bc (96 bytes).
  It occupies 96 bytes.
  The `lwc1` at 0xda4e17c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xda4e180 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xda4e184 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4e188 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4e18c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xda4e190 loads 4 bytes from abs 0x11b4.
  The `lwc1` at 0xda4e198 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `jalr` at 0xda4e19c calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12].
  The return at 0xda4e1b4 has v0 = a0+24.
- `__glle_EvalCoord1dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e1bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e1bc-0xda4e1f8 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4e1c8 loads 4 bytes from abs 0x11bc.
  The `jalr` at 0xda4e1d8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4e1f0 has v0 = a0+8.
- `__glle_EvalCoord1fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e1f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e1f8-0xda4e234 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4e204 loads 4 bytes from abs 0x11c4.
  The `jalr` at 0xda4e214 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4e22c has v0 = a0+4.
- `__glle_EvalCoord2dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e234 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e234-0xda4e270 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4e240 loads 4 bytes from abs 0x11cc.
  The `jalr` at 0xda4e250 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4e268 has v0 = a0+16.
- `__glle_EvalCoord2fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e270 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e270-0xda4e2ac (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4e27c loads 4 bytes from abs 0x11d4.
  The `jalr` at 0xda4e28c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4e2a4 has v0 = a0+8.
- `__glle_EvalMesh1` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e2ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e2ac-0xda4e2f8 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xda4e2c8 loads 4 bytes from abs 0x11d8.
  The `lw` at 0xda4e2cc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4e2d0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4e2d4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4e2d8 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=a0 at entry (arg0).
  The return at 0xda4e2f0 has v0 = a0+12.
- `__glle_EvalPoint1` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e2f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e2f8-0xda4e338 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4e308 loads 4 bytes from abs 0x11dc.
  The `lw` at 0xda4e31c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4e318 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4e330 has v0 = a0+4.
- `__glle_EvalMesh2` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e338 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e338-0xda4e390 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xda4e358 loads 4 bytes from abs 0x11e0.
  The `lw` at 0xda4e35c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xda4e360 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xda4e364 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4e368 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4e36c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4e370 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12].
  The return at 0xda4e388 has v0 = a0+20.
- `__glle_EvalPoint2` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e390 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e390-0xda4e3d8 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda4e3a0 loads 4 bytes from abs 0x11e4.
  The `lw` at 0xda4e3b0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4e3b4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4e3b8 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xda4e3d0 has v0 = a0+8.
- `__glle_AlphaFunc` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e3d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e3d8-0xda4e420 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda4e3e8 loads 4 bytes from abs 0x11e8.
  The `lw` at 0xda4e3f8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4e3fc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4e400 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xda4e418 has v0 = a0+8.
- `__glle_BlendFunc` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e420 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e420-0xda4e468 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda4e430 loads 4 bytes from abs 0x11ec.
  The `lw` at 0xda4e440 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4e444 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4e448 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xda4e460 has v0 = a0+8.
- `__glle_LogicOp` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e468 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e468-0xda4e4a8 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4e478 loads 4 bytes from abs 0x11f0.
  The `lw` at 0xda4e48c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4e488 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4e4a0 has v0 = a0+4.
- `__glle_StencilFunc` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e4a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e4a8-0xda4e4f4 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xda4e4c4 loads 4 bytes from abs 0x11f4.
  The `lw` at 0xda4e4c8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4e4cc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4e4d0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4e4d4 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=a0 at entry (arg0).
  The return at 0xda4e4ec has v0 = a0+12.
- `__glle_StencilOp` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e4f4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e4f4-0xda4e540 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xda4e510 loads 4 bytes from abs 0x11f8.
  The `lw` at 0xda4e514 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4e518 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4e51c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4e520 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=a0 at entry (arg0).
  The return at 0xda4e538 has v0 = a0+12.
- `__glle_DepthFunc` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e540 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e540-0xda4e580 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4e550 loads 4 bytes from abs 0x11fc.
  The `lw` at 0xda4e564 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4e560 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4e578 has v0 = a0+4.
- `__glle_PixelZoom` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e580 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e580-0xda4e5c4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xda4e590 loads 4 bytes from abs 0x1200.
  The `lwc1` at 0xda4e59c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xda4e5a0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4e5a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0], f14=[a0+4].
  The return at 0xda4e5bc has v0 = a0+8.
- `__glle_PixelTransferf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e5c4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e5c4-0xda4e60c (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda4e5d4 loads 4 bytes from abs 0x1204.
  The `lw` at 0xda4e5e4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4e5e8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4e5ec calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xda4e604 has v0 = a0+8.
- `__glle_PixelTransferi` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e60c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e60c-0xda4e654 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda4e61c loads 4 bytes from abs 0x1208.
  The `lw` at 0xda4e62c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4e630 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4e634 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xda4e64c has v0 = a0+8.
- `__glle_PixelMapfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e654 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e654-0xda4e6ac (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xda4e664 loads 4 bytes from abs 0x1214.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda4e674, `lw` at 0xda4e694.
  The `lw` at 0xda4e678 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4e680 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The return at 0xda4e6a4 has v0 = (a0 + ([a0+4] << 0x2))+8.
- `__glle_PixelMapuiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e6ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e6ac-0xda4e704 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xda4e6bc loads 4 bytes from abs 0x1218.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda4e6cc, `lw` at 0xda4e6ec.
  The `lw` at 0xda4e6d0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4e6d8 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The return at 0xda4e6fc has v0 = (a0 + ([a0+4] << 0x2))+8.
- `__glle_PixelMapusv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e704 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e704-0xda4e768 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xda4e714 loads 4 bytes from abs 0x121c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda4e724, `lw` at 0xda4e744.
  The `lw` at 0xda4e728 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4e730 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The return at 0xda4e760 has v0 = ?.
- `__glle_ReadBuffer` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e768 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e768-0xda4e7a8 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4e778 loads 4 bytes from abs 0x1220.
  The `lw` at 0xda4e78c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4e788 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4e7a0 has v0 = a0+4.
- `__glle_CopyPixels` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e7a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e7a8-0xda4e800 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xda4e7c8 loads 4 bytes from abs 0x1224.
  The `lw` at 0xda4e7cc loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xda4e7d0 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xda4e7d4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4e7d8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4e7dc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4e7e0 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12].
  The return at 0xda4e7f8 has v0 = a0+20.
- `__glle_DepthRange` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e800 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e800-0xda4e844 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xda4e810 loads 4 bytes from abs 0x12a8.
  The `ldc1` at 0xda4e81c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xda4e820 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4e824 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0]:8, f14=[a0+8]:8.
  The return at 0xda4e83c has v0 = a0+16.
- `__glle_Frustum` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e844 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e844-0xda4e8a8 (100 bytes).
  It occupies 100 bytes.
  The `ldc1` at 0xda4e85c loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0xda4e860 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xda4e864 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0xda4e86c loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xda4e870 loads 4 bytes from abs 0x12ac.
  The `ldc1` at 0xda4e878 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ldc1` at 0xda4e880 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `jalr` at 0xda4e888 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0]:8, f14=[a0+8]:8.
  The return at 0xda4e8a0 has v0 = a0+48.
- `__glle_LoadIdentity` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e8a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e8a8-0xda4e8e0 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0xda4e8b4 loads 4 bytes from abs 0x12b0.
  The `jalr` at 0xda4e8c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4e8d8 has v0 = a0.
- `__glle_MatrixMode` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e958 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e958-0xda4e998 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4e968 loads 4 bytes from abs 0x12bc.
  The `lw` at 0xda4e97c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4e978 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4e990 has v0 = a0+4.
- `__glle_MultMatrixf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e998 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e998-0xda4e9d4 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4e9a4 loads 4 bytes from abs 0x12c0.
  The `jalr` at 0xda4e9b4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4e9cc has v0 = a0+64.
- `__glle_MultMatrixd` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4e9d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4e9d4-0xda4ea10 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4e9e0 loads 4 bytes from abs 0x12c4.
  The `jalr` at 0xda4e9f0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4ea08 has v0 = a0+128.
- `__glle_Ortho` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ea10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ea10-0xda4ea74 (100 bytes).
  It occupies 100 bytes.
  The `ldc1` at 0xda4ea28 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0xda4ea2c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xda4ea30 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0xda4ea38 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xda4ea3c loads 4 bytes from abs 0x12c8.
  The `ldc1` at 0xda4ea44 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ldc1` at 0xda4ea4c loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `jalr` at 0xda4ea54 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0]:8, f14=[a0+8]:8.
  The return at 0xda4ea6c has v0 = a0+48.
- `__glle_PopMatrix` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ea74 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ea74-0xda4eaac (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0xda4ea80 loads 4 bytes from abs 0x12cc.
  The `jalr` at 0xda4ea90 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4eaa4 has v0 = a0.
- `__glle_PushMatrix` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4eaac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4eaac-0xda4eae4 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0xda4eab8 loads 4 bytes from abs 0x12d0.
  The `jalr` at 0xda4eac8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4eadc has v0 = a0.
- `__glle_Rotated` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4eae4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4eae4-0xda4eb38 (84 bytes).
  It occupies 84 bytes.
  The `ldc1` at 0xda4eafc loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0xda4eb00 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xda4eb04 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xda4eb08 loads 4 bytes from abs 0x12d4.
  The `ldc1` at 0xda4eb10 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `jalr` at 0xda4eb18 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0]:8, f14=[a0+8]:8.
  The return at 0xda4eb30 has v0 = a0+32.
- `__glle_Rotatef` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4eb38 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4eb38-0xda4eb84 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xda4eb50 loads 4 bytes from abs 0x12d8.
  The `lw` at 0xda4eb54 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xda4eb58 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xda4eb5c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xda4eb60 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4eb64 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+8], a3=[a0+12]; fp f12=[a0], f14=[a0+4].
  The return at 0xda4eb7c has v0 = a0+16.
- `__glle_Scaled` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4eb84 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4eb84-0xda4ebd0 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xda4eb9c loads 4 bytes from abs 0x12dc.
  The `ldc1` at 0xda4eba0 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0xda4eba4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xda4eba8 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4ebb0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0]:8, f14=[a0+8]:8.
  The return at 0xda4ebc8 has v0 = a0+24.
- `__glle_Scalef` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ebd0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ebd0-0xda4ec18 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda4ebe8 loads 4 bytes from abs 0x12e0.
  The `lw` at 0xda4ebec loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xda4ebf0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xda4ebf4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4ebf8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+8], a3=a3 at entry (arg3); fp f12=[a0], f14=[a0+4].
  The return at 0xda4ec10 has v0 = a0+12.
- `__glle_Translated` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ec18 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ec18-0xda4ec64 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xda4ec30 loads 4 bytes from abs 0x12e4.
  The `ldc1` at 0xda4ec34 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0xda4ec38 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xda4ec3c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4ec44 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0]:8, f14=[a0+8]:8.
  The return at 0xda4ec5c has v0 = a0+24.
- `__glle_Translatef` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ec64 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ec64-0xda4ecac (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda4ec7c loads 4 bytes from abs 0x12e8.
  The `lw` at 0xda4ec80 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xda4ec84 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xda4ec88 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4ec8c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+8], a3=a3 at entry (arg3); fp f12=[a0], f14=[a0+4].
  The return at 0xda4eca4 has v0 = a0+12.
- `__glle_Viewport` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ecac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ecac-0xda4ecfc (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xda4ecc4 loads 4 bytes from abs 0x12ec.
  The `lw` at 0xda4ecd0 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xda4ecd4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4ecd8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4ece0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4ecdc calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12].
  The return at 0xda4ecf4 has v0 = a0+16.
- `__glle_BlendColorEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ecfc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ecfc-0xda4ed48 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xda4ed14 loads 4 bytes from abs 0x12f0.
  The `lw` at 0xda4ed18 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xda4ed1c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xda4ed20 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xda4ed24 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4ed28 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+8], a3=[a0+12]; fp f12=[a0], f14=[a0+4].
  The return at 0xda4ed40 has v0 = a0+16.
- `__glle_BlendEquationEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ed48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ed48-0xda4ed88 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4ed58 loads 4 bytes from abs 0x12f4.
  The `lw` at 0xda4ed6c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4ed68 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4ed80 has v0 = a0+4.
- `__glle_PolygonOffsetEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ed88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ed88-0xda4edcc (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xda4ed98 loads 4 bytes from abs 0x12f8.
  The `lwc1` at 0xda4eda4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xda4eda8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4edac calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0], f14=[a0+4].
  The return at 0xda4edc4 has v0 = a0+8.
- `__glle_ConvolutionParameterfEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4edcc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4edcc-0xda4ee18 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xda4ede8 loads 4 bytes from abs 0x130c.
  The `lw` at 0xda4edec loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4edf0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4edf4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4edf8 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=a0 at entry (arg0).
  The return at 0xda4ee10 has v0 = a0+12.
- `__glle_ConvolutionParameterfvEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ee18 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ee18-0xda4ee84 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda4ee28 loads 4 bytes from abs 0x1310.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda4ee38, `lw` at 0xda4ee58.
  The `lw` at 0xda4ee3c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4ee44 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xda4ee5c calls __glConvolutionParameterfvEXT_size [0xd9d38d4] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xda4ee7c has v0 = (a0 + (ret(__glConvolutionParameterfvEXT_size) << 0x2))+8.
- `__glle_ConvolutionParameteriEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ee84 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ee84-0xda4eed0 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xda4eea0 loads 4 bytes from abs 0x1314.
  The `lw` at 0xda4eea4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4eea8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4eeac loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4eeb0 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=a0 at entry (arg0).
  The return at 0xda4eec8 has v0 = a0+12.
- `__glle_ConvolutionParameterivEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4eed0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4eed0-0xda4ef3c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda4eee0 loads 4 bytes from abs 0x1318.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda4eef0, `lw` at 0xda4ef10.
  The `lw` at 0xda4eef4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4eefc calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xda4ef14 calls __glConvolutionParameterivEXT_size [0xd9d3918] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xda4ef34 has v0 = (a0 + (ret(__glConvolutionParameterivEXT_size) << 0x2))+8.
- `__glle_CopyConvolutionFilter1DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ef3c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ef3c-0xda4ef94 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xda4ef5c loads 4 bytes from abs 0x131c.
  The `lw` at 0xda4ef60 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xda4ef64 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xda4ef68 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4ef6c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4ef70 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4ef74 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12].
  The return at 0xda4ef8c has v0 = a0+20.
- `__glle_CopyConvolutionFilter2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ef94 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ef94-0xda4eff4 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0xda4efb4 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xda4efb8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xda4efbc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4efc0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4efc4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xda4efc8 loads 4 bytes from abs 0x1320.
  The `lw` at 0xda4efd0 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `jalr` at 0xda4efd4 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12].
  The return at 0xda4efec has v0 = a0+24.
- `__glle_HistogramEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4eff4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4eff4-0xda4f044 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xda4f00c loads 4 bytes from abs 0x1350.
  The `lbu` at 0xda4f018 loads 1 byte from a0 (arg0 at entry) +0xc.
  The `lw` at 0xda4f01c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4f020 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4f028 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4f024 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12]:1.
  The return at 0xda4f03c has v0 = a0+16.
- `__glle_MinmaxEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f044 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f044-0xda4f090 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xda4f060 loads 4 bytes from abs 0x1354.
  The `lw` at 0xda4f064 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lbu` at 0xda4f068 loads 1 byte from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4f06c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4f070 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8]:1, a3=a0 at entry (arg0).
  The return at 0xda4f088 has v0 = a0+12.
- `__glle_ResetHistogramEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f090 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f090-0xda4f0d0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4f0a0 loads 4 bytes from abs 0x1358.
  The `lw` at 0xda4f0b4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4f0b0 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4f0c8 has v0 = a0+4.
- `__glle_ResetMinmaxEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f0d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f0d0-0xda4f110 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4f0e0 loads 4 bytes from abs 0x135c.
  The `lw` at 0xda4f0f4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4f0f0 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4f108 has v0 = a0+4.
- `__glle_BindTextureEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f110 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f110-0xda4f158 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda4f120 loads 4 bytes from abs 0x1390.
  The `lw` at 0xda4f130 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4f134 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4f138 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xda4f150 has v0 = a0+8.
- `__glle_PrioritizeTexturesEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f158 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f158-0xda4f1bc (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xda4f174 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xda4f178 loads 4 bytes from abs 0x13a0.
  The `jalr` at 0xda4f198 calls (unknown callee) with a0=[a0], a1=a0+4, a2=(a0 + ([a0] << 0x2))+4, a3=a0 at entry (arg0).
  The return at 0xda4f1b4 has v0 = (a0 + (([a0] << 0x2) + ([a0] << 0x2))+4).
- `__glle_CopyTexImage1DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f1bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f1bc-0xda4f224 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xda4f1dc loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xda4f1e0 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xda4f1e4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4f1e8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4f1ec loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xda4f1f4 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0xda4f1f8 loads 4 bytes from abs 0x13a4.
  The `lw` at 0xda4f200 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `jalr` at 0xda4f204 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12].
  The return at 0xda4f21c has v0 = a0+28.
- `__glle_CopyTexImage2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f224 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f224-0xda4f298 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda4f244 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xda4f248 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xda4f24c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4f250 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4f254 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xda4f25c loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0xda4f264 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xda4f26c loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xda4f274 loads 4 bytes from abs 0x13a8.
  The `jalr` at 0xda4f278 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12].
  The return at 0xda4f290 has v0 = a0+32.
- `__glle_CopyTexSubImage1DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f298 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f298-0xda4f2f8 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0xda4f2b8 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xda4f2bc loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xda4f2c0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4f2c4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4f2c8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xda4f2cc loads 4 bytes from abs 0x13ac.
  The `lw` at 0xda4f2d4 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `jalr` at 0xda4f2d8 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12].
  The return at 0xda4f2f0 has v0 = a0+24.
- `__glle_CopyTexSubImage2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f2f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f2f8-0xda4f36c (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda4f318 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xda4f31c loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xda4f320 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4f324 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4f328 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xda4f330 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0xda4f338 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xda4f340 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xda4f348 loads 4 bytes from abs 0x13b0.
  The `jalr` at 0xda4f34c calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12].
  The return at 0xda4f364 has v0 = a0+32.
- `__glle_CopyTexSubImage3DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f36c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f36c-0xda4f3e4 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xda4f38c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xda4f390 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xda4f394 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4f398 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4f39c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xda4f3a4 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0xda4f3ac loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xda4f3b4 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xda4f3bc loads 4 bytes from abs 0x13b4.
  The `lw` at 0xda4f3c0 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `jalr` at 0xda4f3c4 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12].
  The return at 0xda4f3dc has v0 = a0+36.
- `__glle_PolygonOffset` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f3e4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f3e4-0xda4f428 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xda4f3f4 loads 4 bytes from abs 0x13e0.
  The `lwc1` at 0xda4f400 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xda4f404 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4f408 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0], f14=[a0+4].
  The return at 0xda4f420 has v0 = a0+8.
- `__glle_Indexubv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f428 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f428-0xda4f464 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4f434 loads 4 bytes from abs 0x167c.
  The `jalr` at 0xda4f444 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4f45c has v0 = a0+4.
- `__glle_SampleMaskSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f464 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f464-0xda4f4a8 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xda4f474 loads 4 bytes from abs 0x13ec.
  The `lbu` at 0xda4f480 loads 1 byte from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xda4f484 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4f488 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+4]:1, a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f12=[a0].
  The return at 0xda4f4a0 has v0 = a0+8.
- `__glle_SamplePatternSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f4a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f4a8-0xda4f4e8 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4f4b8 loads 4 bytes from abs 0x13f0.
  The `lw` at 0xda4f4cc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4f4c8 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4f4e0 has v0 = a0+4.
- `__glle_TagSampleBufferSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f4e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f4e8-0xda4f520 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0xda4f4f4 loads 4 bytes from abs 0x13f4.
  The `jalr` at 0xda4f504 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4f518 has v0 = a0.
- `__glle_DetailTexFuncSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f520 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f520-0xda4f578 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xda4f530 loads 4 bytes from abs 0x13f8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda4f540, `lw` at 0xda4f560.
  The `lw` at 0xda4f544 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4f54c calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The return at 0xda4f570 has v0 = (a0 + ([a0+4] << 0x3))+8.
- `__glle_SharpenTexFuncSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f578 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f578-0xda4f5d0 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xda4f588 loads 4 bytes from abs 0x1400.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda4f598, `lw` at 0xda4f5b8.
  The `lw` at 0xda4f59c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4f5a4 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The return at 0xda4f5c8 has v0 = (a0 + ([a0+4] << 0x3))+8.
- `__glle_ColorTableParameterfvSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f5d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f5d0-0xda4f63c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda4f5e0 loads 4 bytes from abs 0x140c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda4f5f0, `lw` at 0xda4f610.
  The `lw` at 0xda4f5f4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4f5fc calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xda4f614 calls __glColorTableParameterfvSGI_size [0xda07a18] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xda4f634 has v0 = (a0 + (ret(__glColorTableParameterfvSGI_size) << 0x2))+8.
- `__glle_ColorTableParameterivSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f63c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f63c-0xda4f6a8 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda4f64c loads 4 bytes from abs 0x1410.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda4f65c, `lw` at 0xda4f67c.
  The `lw` at 0xda4f660 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4f668 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xda4f680 calls __glColorTableParameterivSGI_size [0xda07a3c] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xda4f6a0 has v0 = (a0 + (ret(__glColorTableParameterivSGI_size) << 0x2))+8.
- `__glle_CopyColorTableSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f6a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f6a8-0xda4f700 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xda4f6c8 loads 4 bytes from abs 0x1414.
  The `lw` at 0xda4f6cc loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xda4f6d0 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xda4f6d4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4f6d8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4f6dc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4f6e0 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12].
  The return at 0xda4f6f8 has v0 = a0+20.
- `__glle_PixelTexGenSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f700 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f700-0xda4f740 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4f710 loads 4 bytes from abs 0x142c.
  The `lw` at 0xda4f724 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4f720 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4f738 has v0 = a0+4.
- `__glle_SpriteParameterfSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f740 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f740-0xda4f788 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda4f750 loads 4 bytes from abs 0x1430.
  The `lw` at 0xda4f760 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4f764 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4f768 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xda4f780 has v0 = a0+8.
- `__glle_SpriteParameterfvSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f788 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f788-0xda4f7f0 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xda4f798 loads 4 bytes from abs 0x1434.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xda4f7a8, `lw` at 0xda4f7c4.
  The `jalr` at 0xda4f7b0 calls (unknown callee) with a0=[a0], a1=a0+4, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xda4f7c8 calls __glSpriteParameterfvSGIX_size [0xda07a70] with a0=[a0], a1=?, a2=?, a3=?.
  The return at 0xda4f7e8 has v0 = (a0 + (ret(__glSpriteParameterfvSGIX_size) << 0x2))+4.
- `__glle_SpriteParameteriSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f7f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f7f0-0xda4f838 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda4f800 loads 4 bytes from abs 0x1438.
  The `lw` at 0xda4f810 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4f814 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4f818 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xda4f830 has v0 = a0+8.
- `__glle_SpriteParameterivSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f838 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f838-0xda4f8a0 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xda4f848 loads 4 bytes from abs 0x143c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xda4f858, `lw` at 0xda4f874.
  The `jalr` at 0xda4f860 calls (unknown callee) with a0=[a0], a1=a0+4, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xda4f878 calls __glSpriteParameterivSGIX_size [0xda07ab4] with a0=[a0], a1=?, a2=?, a3=?.
  The return at 0xda4f898 has v0 = (a0 + (ret(__glSpriteParameterivSGIX_size) << 0x2))+4.
- `__glle_TexFilterFuncSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f8a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f8a0-0xda4f8fc (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0xda4f8b4 loads 4 bytes from abs 0x1444.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0xda4f8c4, `lw` at 0xda4f8d8.
  The `lw` at 0xda4f8c8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4f8cc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4f8d0 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=a0+12.
  The return at 0xda4f8f4 has v0 = (a0 + ([a0+8] << 0x2))+12.
- `__glle_PointParameterfSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f8fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f8fc-0xda4f944 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda4f90c loads 4 bytes from abs 0x1448.
  The `lw` at 0xda4f91c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4f920 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4f924 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xda4f93c has v0 = a0+8.
- `__glle_PointParameterfvSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f944 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f944-0xda4f9ac (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xda4f954 loads 4 bytes from abs 0x144c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xda4f964, `lw` at 0xda4f980.
  The `jalr` at 0xda4f96c calls (unknown callee) with a0=[a0], a1=a0+4, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xda4f984 calls __glPointParameterfvSGIS_size [0xda07ae8] with a0=[a0], a1=?, a2=?, a3=?.
  The return at 0xda4f9a4 has v0 = (a0 + (ret(__glPointParameterfvSGIS_size) << 0x2))+4.
- `__glle_FogFuncSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4f9ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4f9ac-0xda4fa00 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0xda4f9bc loads 4 bytes from abs 0x1450.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xda4f9cc, `lw` at 0xda4f9e8.
  The `jalr` at 0xda4f9d4 calls (unknown callee) with a0=[a0], a1=a0+4, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xda4f9f8 has v0 = (a0 + ([a0] << 0x3))+4.
- `__glle_ReadInstrumentsSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4fa00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4fa00-0xda4fa40 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4fa10 loads 4 bytes from abs 0x1460.
  The `lw` at 0xda4fa24 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4fa20 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4fa38 has v0 = a0+4.
- `__glle_StartInstrumentsSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4fa40 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4fa40-0xda4fa78 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0xda4fa4c loads 4 bytes from abs 0x1464.
  The `jalr` at 0xda4fa5c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4fa70 has v0 = a0.
- `__glle_StopInstrumentsSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4fa78 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4fa78-0xda4fab8 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4fa88 loads 4 bytes from abs 0x1468.
  The `lw` at 0xda4fa9c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4fa98 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4fab0 has v0 = a0+4.
- `__glle_ReferencePlaneSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4fab8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4fab8-0xda4faf4 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4fac4 loads 4 bytes from abs 0x1470.
  The `jalr` at 0xda4fad4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4faec has v0 = a0+32.
- `__glle_FrameZoomSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4faf4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4faf4-0xda4fb34 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4fb04 loads 4 bytes from abs 0x1474.
  The `lw` at 0xda4fb18 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4fb14 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4fb2c has v0 = a0+4.
- `__glle_DeformSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4fb34 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4fb34-0xda4fb74 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4fb44 loads 4 bytes from abs 0x1484.
  The `lw` at 0xda4fb58 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4fb54 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4fb6c has v0 = a0+4.
- `__glle_LoadIdentityDeformationMapSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4fb74 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4fb74-0xda4fbb4 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4fb84 loads 4 bytes from abs 0x1488.
  The `lw` at 0xda4fb98 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4fb94 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4fbac has v0 = a0+4.
- `__glle_CopyColorSubTable` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4fbb4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4fbb4-0xda4fc0c (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xda4fbd4 loads 4 bytes from abs 0x14a8.
  The `lw` at 0xda4fbd8 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xda4fbdc loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xda4fbe0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4fbe4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4fbe8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4fbec calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=[a0+12].
  The return at 0xda4fc04 has v0 = a0+20.
- `__glle_PixelTexGenParameteriSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4fc0c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4fc0c-0xda4fc54 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda4fc1c loads 4 bytes from abs 0x14b4.
  The `lw` at 0xda4fc2c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4fc30 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4fc34 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xda4fc4c has v0 = a0+8.
- `__glle_PixelTexGenParameterivSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4fc54 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4fc54-0xda4fcbc (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xda4fc64 loads 4 bytes from abs 0x14b8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xda4fc74, `lw` at 0xda4fc90.
  The `jalr` at 0xda4fc7c calls (unknown callee) with a0=[a0], a1=a0+4, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xda4fc94 calls __glPixelTexGenParameterivSGIS_size [0xda07c0c] with a0=[a0], a1=?, a2=?, a3=?.
  The return at 0xda4fcb4 has v0 = (a0 + (ret(__glPixelTexGenParameterivSGIS_size) << 0x2))+4.
- `__glle_PixelTexGenParameterfSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4fcbc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4fcbc-0xda4fd04 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda4fccc loads 4 bytes from abs 0x14bc.
  The `lw` at 0xda4fcdc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4fce0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4fce4 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xda4fcfc has v0 = a0+8.
- `__glle_PixelTexGenParameterfvSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4fd04 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4fd04-0xda4fd6c (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xda4fd14 loads 4 bytes from abs 0x14c0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xda4fd24, `lw` at 0xda4fd40.
  The `jalr` at 0xda4fd2c calls (unknown callee) with a0=[a0], a1=a0+4, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xda4fd44 calls __glPixelTexGenParameterfvSGIS_size [0xda07c40] with a0=[a0], a1=?, a2=?, a3=?.
  The return at 0xda4fd64 has v0 = (a0 + (ret(__glPixelTexGenParameterfvSGIS_size) << 0x2))+4.
- `__glle_AsyncMarkerSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4fd6c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4fd6c-0xda4fdac (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xda4fd7c loads 4 bytes from abs 0x14cc.
  The `lw` at 0xda4fd90 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4fd8c calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4fda4 has v0 = a0+4.
- `__glle_FragmentColorMaterialSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4fdac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4fdac-0xda4fdf4 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda4fdbc loads 4 bytes from abs 0x14e4.
  The `lw` at 0xda4fdcc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4fdd0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4fdd4 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xda4fdec has v0 = a0+8.
- `__glle_FragmentLightfSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4fdf4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4fdf4-0xda4fe40 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xda4fe10 loads 4 bytes from abs 0x14e8.
  The `lw` at 0xda4fe14 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4fe18 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4fe1c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4fe20 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=a0 at entry (arg0).
  The return at 0xda4fe38 has v0 = a0+12.
- `__glle_FragmentLightfvSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4fe40 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4fe40-0xda4feac (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda4fe50 loads 4 bytes from abs 0x14ec.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda4fe60, `lw` at 0xda4fe80.
  The `lw` at 0xda4fe64 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4fe6c calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xda4fe84 calls __glFragmentLightfvSGIX_size [0xda07d1c] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xda4fea4 has v0 = (a0 + (ret(__glFragmentLightfvSGIX_size) << 0x2))+8.
- `__glle_FragmentLightiSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4feac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4feac-0xda4fef8 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xda4fec8 loads 4 bytes from abs 0x14f0.
  The `lw` at 0xda4fecc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4fed0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda4fed4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4fed8 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=a0 at entry (arg0).
  The return at 0xda4fef0 has v0 = a0+12.
- `__glle_FragmentLightivSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4fef8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4fef8-0xda4ff64 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda4ff08 loads 4 bytes from abs 0x14f4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda4ff18, `lw` at 0xda4ff38.
  The `lw` at 0xda4ff1c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4ff24 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xda4ff3c calls __glFragmentLightivSGIX_size [0xda07dd4] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xda4ff5c has v0 = (a0 + (ret(__glFragmentLightivSGIX_size) << 0x2))+8.
- `__glle_FragmentLightModelfSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ff64 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ff64-0xda4ffac (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda4ff74 loads 4 bytes from abs 0x14f8.
  The `lw` at 0xda4ff84 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda4ff88 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda4ff8c calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xda4ffa4 has v0 = a0+8.
- `__glle_FragmentLightModelfvSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4ffac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4ffac-0xda50014 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xda4ffbc loads 4 bytes from abs 0x14fc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xda4ffcc, `lw` at 0xda4ffe8.
  The `jalr` at 0xda4ffd4 calls (unknown callee) with a0=[a0], a1=a0+4, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xda4ffec calls __glFragmentLightModelfvSGIX_size [0xda07e08] with a0=[a0], a1=?, a2=?, a3=?.
  The return at 0xda5000c has v0 = (a0 + (ret(__glFragmentLightModelfvSGIX_size) << 0x2))+4.
- `__glle_FragmentLightModeliSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50014 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50014-0xda5005c (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda50024 loads 4 bytes from abs 0x1500.
  The `lw` at 0xda50034 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda50038 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda5003c calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xda50054 has v0 = a0+8.
- `__glle_FragmentLightModelivSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5005c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5005c-0xda500c4 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xda5006c loads 4 bytes from abs 0x1504.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xda5007c, `lw` at 0xda50098.
  The `jalr` at 0xda50084 calls (unknown callee) with a0=[a0], a1=a0+4, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xda5009c calls __glFragmentLightModelivSGIX_size [0xda07e5c] with a0=[a0], a1=?, a2=?, a3=?.
  The return at 0xda500bc has v0 = (a0 + (ret(__glFragmentLightModelivSGIX_size) << 0x2))+4.
- `__glle_FragmentMaterialfSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda500c4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda500c4-0xda50110 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xda500e0 loads 4 bytes from abs 0x1508.
  The `lw` at 0xda500e4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda500e8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda500ec loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda500f0 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=a0 at entry (arg0).
  The return at 0xda50108 has v0 = a0+12.
- `__glle_FragmentMaterialfvSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50110 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50110-0xda5017c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda50120 loads 4 bytes from abs 0x150c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda50130, `lw` at 0xda50150.
  The `lw` at 0xda50134 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda5013c calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xda50154 calls __glFragmentMaterialfvSGIX_size [0xda07c74] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xda50174 has v0 = (a0 + (ret(__glFragmentMaterialfvSGIX_size) << 0x2))+8.
- `__glle_FragmentMaterialiSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5017c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5017c-0xda501c8 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xda50198 loads 4 bytes from abs 0x1510.
  The `lw` at 0xda5019c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda501a0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda501a4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda501a8 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=[a0+8], a3=a0 at entry (arg0).
  The return at 0xda501c0 has v0 = a0+12.
- `__glle_FragmentMaterialivSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda501c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda501c8-0xda50234 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda501d8 loads 4 bytes from abs 0x1514.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xda501e8, `lw` at 0xda50208.
  The `lw` at 0xda501ec loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda501f4 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0+8, a3=a0 at entry (arg0).
  The `jalr` at 0xda5020c calls __glFragmentMaterialivSGIX_size [0xda07ce8] with a0=[a0+4], a1=?, a2=?, a3=a0 at entry (arg0).
  The return at 0xda5022c has v0 = (a0 + (ret(__glFragmentMaterialivSGIX_size) << 0x2))+8.
- `__glle_LightEnviSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50234 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50234-0xda5027c (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda50244 loads 4 bytes from abs 0x1528.
  The `lw` at 0xda50254 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda50258 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda5025c calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xda50274 has v0 = a0+8.
- `__glle_TextureColorMaskSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5027c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5027c-0xda502cc (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xda50294 loads 4 bytes from abs 0x152c.
  The `lbu` at 0xda502a0 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `lbu` at 0xda502a4 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `lbu` at 0xda502a8 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `lbu` at 0xda502b0 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda502ac calls (unknown callee) with a0=[a0]:1, a1=[a0+1]:1, a2=[a0+2]:1, a3=[a0+3]:1.
  The return at 0xda502c4 has v0 = a0+4.
- `__glsplc_ListBase` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50300 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50300-0xda5034c (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda50338 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda50324 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5032c targets 0xda5033c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda50344 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3b` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5034c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5034c-0xda503b0 (100 bytes).
  It occupies 100 bytes.
  The `sb` at 0xda5038c stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `sb` at 0xda50394 stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `sb` at 0xda5039c stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `jalr` at 0xda50378 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x5, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda50380 targets 0xda503a0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda503a8 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3bv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda503b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda503b0-0xda50414 (100 bytes).
  It occupies 100 bytes.
  The `lb` at 0xda503ec loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xda503f0 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `lb` at 0xda503f4 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `sb` at 0xda503f8 stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `lb` at 0xda503fc loads 1 byte from a0 (arg0 at entry) +0x2.
  The `sb` at 0xda50400 stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `jalr` at 0xda503d8 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x5, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda503e4 targets 0xda50404, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda5040c has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50414 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50414-0xda50474 (96 bytes).
  It occupies 96 bytes.
  The `sdc1` at 0xda50450 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xda50458 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xda50460 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `jalr` at 0xda5043c calls __glSPDlalloc2 [0xd94ab64] with a0=0x18, a1=0x6, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda50444 targets 0xda50464, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda5046c has v0 = ret(__glSPDlalloc2).
- `__glsplc_Color3dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50474 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50474-0xda504d8 (100 bytes).
  It occupies 100 bytes.
  The `ldc1` at 0xda504b0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda504b4 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xda504b8 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda504bc stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `ldc1` at 0xda504c0 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xda504c4 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `jalr` at 0xda5049c calls __glSPDlalloc2 [0xd94ab64] with a0=0x18, a1=0x6, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda504a8 targets 0xda504c8, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda504d0 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Color3f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda504d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda504d8-0xda5053c (100 bytes).
  It occupies 100 bytes.
  The `swc1` at 0xda50518 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda50520 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xda50528 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda50504 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x7, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5050c targets 0xda5052c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda50534 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5053c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5053c-0xda505a0 (100 bytes).
  It occupies 100 bytes.
  The `lwc1` at 0xda50578 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda5057c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xda50580 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda50584 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lwc1` at 0xda50588 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xda5058c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda50564 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x7, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda50570 targets 0xda50590, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda50598 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda505a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda505a0-0xda50604 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xda505e0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda505e8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda505f0 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda505cc calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda505d4 targets 0xda505f4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda505fc has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50604 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50604-0xda50668 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xda50640 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda50644 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xda50648 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda5064c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lw` at 0xda50650 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda50654 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda5062c calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x8, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda50638 targets 0xda50658, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda50660 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50668 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50668-0xda506cc (100 bytes).
  It occupies 100 bytes.
  The `sh` at 0xda506a8 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xda506b0 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `sh` at 0xda506b8 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda50694 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x9, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5069c targets 0xda506bc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda506c4 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda506cc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda506cc-0xda50730 (100 bytes).
  It occupies 100 bytes.
  The `lh` at 0xda50708 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda5070c stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lh` at 0xda50710 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda50714 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `lh` at 0xda50718 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xda5071c stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda506f4 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x9, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda50700 targets 0xda50720, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda50728 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3ub` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50730 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50730-0xda50794 (100 bytes).
  It occupies 100 bytes.
  The `sb` at 0xda50770 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `sb` at 0xda50778 stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `sb` at 0xda50780 stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `jalr` at 0xda5075c calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0xa, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda50764 targets 0xda50784, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda5078c has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3ubv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50794 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50794-0xda507f8 (100 bytes).
  It occupies 100 bytes.
  The `lbu` at 0xda507d0 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xda507d4 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `lbu` at 0xda507d8 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `sb` at 0xda507dc stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `lbu` at 0xda507e0 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `sb` at 0xda507e4 stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `jalr` at 0xda507bc calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0xa, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda507c8 targets 0xda507e8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda507f0 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3ui` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda507f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda507f8-0xda5085c (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xda50838 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda50840 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda50848 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda50824 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0xb, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5082c targets 0xda5084c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda50854 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3uiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5085c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5085c-0xda508c0 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xda50898 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda5089c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xda508a0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda508a4 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lw` at 0xda508a8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda508ac stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda50884 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0xb, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda50890 targets 0xda508b0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda508b8 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3us` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda508c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda508c0-0xda50924 (100 bytes).
  It occupies 100 bytes.
  The `sh` at 0xda50900 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xda50908 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `sh` at 0xda50910 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda508ec calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda508f4 targets 0xda50914, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda5091c has v0 = ret(__glSPDlalloc).
- `__glsplc_Color3usv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50924 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50924-0xda50988 (100 bytes).
  It occupies 100 bytes.
  The `lhu` at 0xda50960 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda50964 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lhu` at 0xda50968 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda5096c stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `lhu` at 0xda50970 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xda50974 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda5094c calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0xc, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda50958 targets 0xda50978, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda50980 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4b` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50988 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50988-0xda509f8 (112 bytes).
  It occupies 112 bytes.
  The `sb` at 0xda509cc stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `sb` at 0xda509d4 stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `sb` at 0xda509dc stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `sb` at 0xda509e4 stores 1 byte to ret(__glSPDlalloc) +0x3.
  The `jalr` at 0xda509b8 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0xd, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda509c0 targets 0xda509e8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda509f0 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4bv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda509f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda509f8-0xda50a64 (108 bytes).
  It occupies 108 bytes.
  The `lb` at 0xda50a34 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xda50a38 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `lb` at 0xda50a3c loads 1 byte from a0 (arg0 at entry) +0x1.
  The `sb` at 0xda50a40 stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `lb` at 0xda50a44 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `sb` at 0xda50a48 stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `lb` at 0xda50a4c loads 1 byte from a0 (arg0 at entry) +0x3.
  The `sb` at 0xda50a50 stores 1 byte to ret(__glSPDlalloc) +0x3.
  The `jalr` at 0xda50a20 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0xd, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda50a2c targets 0xda50a54, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda50a5c has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50a64 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50a64-0xda50acc (104 bytes).
  It occupies 104 bytes.
  The `sdc1` at 0xda50aa0 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xda50aa8 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xda50ab0 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `sdc1` at 0xda50ab8 stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xda50a8c calls __glSPDlalloc2 [0xd94ab64] with a0=0x20, a1=0xe, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda50a94 targets 0xda50abc, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda50ac4 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Color4dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50acc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50acc-0xda50b38 (108 bytes).
  It occupies 108 bytes.
  The `ldc1` at 0xda50b08 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda50b0c stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xda50b10 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda50b14 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `ldc1` at 0xda50b18 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xda50b1c stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `ldc1` at 0xda50b20 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sdc1` at 0xda50b24 stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xda50af4 calls __glSPDlalloc2 [0xd94ab64] with a0=0x20, a1=0xe, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda50b00 targets 0xda50b28, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda50b30 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Color4f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50b38 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50b38-0xda50ba8 (112 bytes).
  It occupies 112 bytes.
  The `swc1` at 0xda50b7c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda50b84 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xda50b8c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `swc1` at 0xda50b94 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda50b68 calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0xf, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda50b70 targets 0xda50b98, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda50ba0 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50ba8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50ba8-0xda50c14 (108 bytes).
  It occupies 108 bytes.
  The `lwc1` at 0xda50be4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda50be8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xda50bec loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda50bf0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lwc1` at 0xda50bf4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xda50bf8 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `lwc1` at 0xda50bfc loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `swc1` at 0xda50c00 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda50bd0 calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0xf, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda50bdc targets 0xda50c04, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda50c0c has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50c14 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50c14-0xda50c84 (112 bytes).
  It occupies 112 bytes.
  The `sw` at 0xda50c58 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda50c60 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda50c68 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xda50c70 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda50c44 calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda50c4c targets 0xda50c74, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda50c7c has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50c84 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50c84-0xda50cf0 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda50cc0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda50cc4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xda50cc8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda50ccc stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lw` at 0xda50cd0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda50cd4 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `lw` at 0xda50cd8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0xda50cdc stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda50cac calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0x10, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda50cb8 targets 0xda50ce0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda50ce8 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50cf0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50cf0-0xda50d60 (112 bytes).
  It occupies 112 bytes.
  The `sh` at 0xda50d34 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xda50d3c stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `sh` at 0xda50d44 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `sh` at 0xda50d4c stores 2 bytes to ret(__glSPDlalloc) +0x6.
  The `jalr` at 0xda50d20 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x11, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda50d28 targets 0xda50d50, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda50d58 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50d60 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50d60-0xda50dcc (108 bytes).
  It occupies 108 bytes.
  The `lh` at 0xda50d9c loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda50da0 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lh` at 0xda50da4 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda50da8 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `lh` at 0xda50dac loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xda50db0 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `lh` at 0xda50db4 loads 2 bytes from a0 (arg0 at entry) +0x6.
  The `sh` at 0xda50db8 stores 2 bytes to ret(__glSPDlalloc) +0x6.
  The `jalr` at 0xda50d88 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x11, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda50d94 targets 0xda50dbc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda50dc4 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4ub` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50dcc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50dcc-0xda50e3c (112 bytes).
  It occupies 112 bytes.
  The `sb` at 0xda50e10 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `sb` at 0xda50e18 stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `sb` at 0xda50e20 stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `sb` at 0xda50e28 stores 1 byte to ret(__glSPDlalloc) +0x3.
  The `jalr` at 0xda50dfc calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x12, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda50e04 targets 0xda50e2c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda50e34 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4ubv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50e3c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50e3c-0xda50ea8 (108 bytes).
  It occupies 108 bytes.
  The `lbu` at 0xda50e78 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xda50e7c stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `lbu` at 0xda50e80 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `sb` at 0xda50e84 stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `lbu` at 0xda50e88 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `sb` at 0xda50e8c stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `lbu` at 0xda50e90 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `sb` at 0xda50e94 stores 1 byte to ret(__glSPDlalloc) +0x3.
  The `jalr` at 0xda50e64 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x12, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda50e70 targets 0xda50e98, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda50ea0 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4ui` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50ea8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50ea8-0xda50f18 (112 bytes).
  It occupies 112 bytes.
  The `sw` at 0xda50eec stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda50ef4 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda50efc stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xda50f04 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda50ed8 calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0x13, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda50ee0 targets 0xda50f08, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda50f10 has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4uiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50f18 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50f18-0xda50f84 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda50f54 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda50f58 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xda50f5c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda50f60 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lw` at 0xda50f64 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda50f68 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `lw` at 0xda50f6c loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0xda50f70 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda50f40 calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0x13, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda50f4c targets 0xda50f74, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda50f7c has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4us` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50f84 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50f84-0xda50ff4 (112 bytes).
  It occupies 112 bytes.
  The `sh` at 0xda50fc8 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xda50fd0 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `sh` at 0xda50fd8 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `sh` at 0xda50fe0 stores 2 bytes to ret(__glSPDlalloc) +0x6.
  The `jalr` at 0xda50fb4 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x14, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda50fbc targets 0xda50fe4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda50fec has v0 = ret(__glSPDlalloc).
- `__glsplc_Color4usv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda50ff4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda50ff4-0xda51060 (108 bytes).
  It occupies 108 bytes.
  The `lhu` at 0xda51030 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda51034 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lhu` at 0xda51038 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda5103c stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `lhu` at 0xda51040 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xda51044 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `lhu` at 0xda51048 loads 2 bytes from a0 (arg0 at entry) +0x6.
  The `sh` at 0xda5104c stores 2 bytes to ret(__glSPDlalloc) +0x6.
  The `jalr` at 0xda5101c calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x14, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51028 targets 0xda51050, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda51058 has v0 = ret(__glSPDlalloc).
- `__glsplc_EdgeFlag` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51060 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51060-0xda510ac (76 bytes).
  It occupies 76 bytes.
  The `sb` at 0xda51098 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda51084 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x15, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5108c targets 0xda5109c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda510a4 has v0 = ret(__glSPDlalloc).
- `__glsplc_EdgeFlagv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda510ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda510ac-0xda510fc (80 bytes).
  It occupies 80 bytes.
  The `lbu` at 0xda510e4 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xda510e8 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda510d0 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x15, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda510d8 targets 0xda510ec, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda510f4 has v0 = ret(__glSPDlalloc).
- `__glsplc_End` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda510fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda510fc-0xda51138 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xda5111c calls __glSPDlalloc [0xd94a930] with a0=0x0, a1=0x16, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda51130 has v0 = ret(__glSPDlalloc).
- `__glsplc_Indexd` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51138 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51138-0xda51184 (76 bytes).
  It occupies 76 bytes.
  The `sdc1` at 0xda51170 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `jalr` at 0xda5115c calls __glSPDlalloc2 [0xd94ab64] with a0=0x8, a1=0x17, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51164 targets 0xda51174, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda5117c has v0 = ret(__glSPDlalloc2).
- `__glsplc_Indexdv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51184 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51184-0xda511d4 (80 bytes).
  It occupies 80 bytes.
  The `ldc1` at 0xda511bc loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda511c0 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `jalr` at 0xda511a8 calls __glSPDlalloc2 [0xd94ab64] with a0=0x8, a1=0x17, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda511b0 targets 0xda511c4, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda511cc has v0 = ret(__glSPDlalloc2).
- `__glsplc_Indexf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda511d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda511d4-0xda51220 (76 bytes).
  It occupies 76 bytes.
  The `swc1` at 0xda5120c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda511f8 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51200 targets 0xda51210, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda51218 has v0 = ret(__glSPDlalloc).
- `__glsplc_Indexfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51220 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51220-0xda51270 (80 bytes).
  It occupies 80 bytes.
  The `lwc1` at 0xda51258 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda5125c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda51244 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5124c targets 0xda51260, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda51268 has v0 = ret(__glSPDlalloc).
- `__glsplc_Indexi` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51270 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51270-0xda512bc (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda512a8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda51294 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5129c targets 0xda512ac, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda512b4 has v0 = ret(__glSPDlalloc).
- `__glsplc_Indexiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda512bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda512bc-0xda5130c (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xda512f4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda512f8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda512e0 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda512e8 targets 0xda512fc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda51304 has v0 = ret(__glSPDlalloc).
- `__glsplc_Indexs` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5130c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5130c-0xda51358 (76 bytes).
  It occupies 76 bytes.
  The `sh` at 0xda51344 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda51330 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x1a, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51338 targets 0xda51348, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda51350 has v0 = ret(__glSPDlalloc).
- `__glsplc_Indexsv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51358 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51358-0xda513a8 (80 bytes).
  It occupies 80 bytes.
  The `lh` at 0xda51390 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda51394 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda5137c calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x1a, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51384 targets 0xda51398, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda513a0 has v0 = ret(__glSPDlalloc).
- `__glsplc_Normal3b` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda513a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda513a8-0xda5140c (100 bytes).
  It occupies 100 bytes.
  The `sb` at 0xda513e8 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `sb` at 0xda513f0 stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `sb` at 0xda513f8 stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `jalr` at 0xda513d4 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x1b, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda513dc targets 0xda513fc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda51404 has v0 = ret(__glSPDlalloc).
- `__glsplc_Normal3bv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5140c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5140c-0xda51470 (100 bytes).
  It occupies 100 bytes.
  The `lb` at 0xda51448 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xda5144c stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `lb` at 0xda51450 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `sb` at 0xda51454 stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `lb` at 0xda51458 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `sb` at 0xda5145c stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `jalr` at 0xda51434 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x1b, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51440 targets 0xda51460, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda51468 has v0 = ret(__glSPDlalloc).
- `__glsplc_Normal3d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51470 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51470-0xda514d0 (96 bytes).
  It occupies 96 bytes.
  The `sdc1` at 0xda514ac stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xda514b4 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xda514bc stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `jalr` at 0xda51498 calls __glSPDlalloc2 [0xd94ab64] with a0=0x18, a1=0x1c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda514a0 targets 0xda514c0, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda514c8 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Normal3dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda514d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda514d0-0xda51534 (100 bytes).
  It occupies 100 bytes.
  The `ldc1` at 0xda5150c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda51510 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xda51514 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda51518 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `ldc1` at 0xda5151c loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xda51520 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `jalr` at 0xda514f8 calls __glSPDlalloc2 [0xd94ab64] with a0=0x18, a1=0x1c, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51504 targets 0xda51524, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda5152c has v0 = ret(__glSPDlalloc2).
- `__glsplc_Normal3f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51534 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51534-0xda51598 (100 bytes).
  It occupies 100 bytes.
  The `swc1` at 0xda51574 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda5157c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xda51584 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda51560 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x1d, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51568 targets 0xda51588, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda51590 has v0 = ret(__glSPDlalloc).
- `__glsplc_Normal3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51598 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51598-0xda515fc (100 bytes).
  It occupies 100 bytes.
  The `lwc1` at 0xda515d4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda515d8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xda515dc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda515e0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lwc1` at 0xda515e4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xda515e8 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda515c0 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x1d, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda515cc targets 0xda515ec, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda515f4 has v0 = ret(__glSPDlalloc).
- `__glsplc_Normal3i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda515fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda515fc-0xda51660 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xda5163c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda51644 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda5164c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda51628 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x1e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51630 targets 0xda51650, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda51658 has v0 = ret(__glSPDlalloc).
- `__glsplc_Normal3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51660 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51660-0xda516c4 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xda5169c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda516a0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xda516a4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda516a8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lw` at 0xda516ac loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda516b0 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda51688 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x1e, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51694 targets 0xda516b4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda516bc has v0 = ret(__glSPDlalloc).
- `__glsplc_Normal3s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda516c4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda516c4-0xda51728 (100 bytes).
  It occupies 100 bytes.
  The `sh` at 0xda51704 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xda5170c stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `sh` at 0xda51714 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda516f0 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x1f, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda516f8 targets 0xda51718, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda51720 has v0 = ret(__glSPDlalloc).
- `__glsplc_Normal3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51728 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51728-0xda5178c (100 bytes).
  It occupies 100 bytes.
  The `lh` at 0xda51764 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda51768 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lh` at 0xda5176c loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda51770 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `lh` at 0xda51774 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xda51778 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda51750 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x1f, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5175c targets 0xda5177c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda51784 has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos2d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5178c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5178c-0xda517e4 (88 bytes).
  It occupies 88 bytes.
  The `sdc1` at 0xda517c8 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xda517d0 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `jalr` at 0xda517b4 calls __glSPDlalloc2 [0xd94ab64] with a0=0x10, a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda517bc targets 0xda517d4, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda517dc has v0 = ret(__glSPDlalloc2).
- `__glsplc_RasterPos2dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda517e4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda517e4-0xda5183c (88 bytes).
  It occupies 88 bytes.
  The `ldc1` at 0xda5181c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda51820 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xda51824 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda51828 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `jalr` at 0xda51808 calls __glSPDlalloc2 [0xd94ab64] with a0=0x10, a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51814 targets 0xda5182c, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda51834 has v0 = ret(__glSPDlalloc2).
- `__glsplc_RasterPos2f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5183c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5183c-0xda51894 (88 bytes).
  It occupies 88 bytes.
  The `swc1` at 0xda51878 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda51880 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda51864 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x21, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5186c targets 0xda51884, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda5188c has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos2fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51894 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51894-0xda518ec (88 bytes).
  It occupies 88 bytes.
  The `lwc1` at 0xda518cc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda518d0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xda518d4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda518d8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda518b8 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x21, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda518c4 targets 0xda518dc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda518e4 has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos2i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda518ec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda518ec-0xda51944 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda51928 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda51930 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda51914 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x22, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5191c targets 0xda51934, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda5193c has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos2iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51944 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51944-0xda5199c (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xda5197c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda51980 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xda51984 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda51988 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda51968 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x22, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51974 targets 0xda5198c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda51994 has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos2s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5199c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5199c-0xda519f4 (88 bytes).
  It occupies 88 bytes.
  The `sh` at 0xda519d8 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xda519e0 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `jalr` at 0xda519c4 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x23, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda519cc targets 0xda519e4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda519ec has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos2sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda519f4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda519f4-0xda51a4c (88 bytes).
  It occupies 88 bytes.
  The `lh` at 0xda51a2c loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda51a30 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lh` at 0xda51a34 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda51a38 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `jalr` at 0xda51a18 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x23, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51a24 targets 0xda51a3c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda51a44 has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos3d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51a4c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51a4c-0xda51aac (96 bytes).
  It occupies 96 bytes.
  The `sdc1` at 0xda51a88 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xda51a90 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xda51a98 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `jalr` at 0xda51a74 calls __glSPDlalloc2 [0xd94ab64] with a0=0x18, a1=0x24, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51a7c targets 0xda51a9c, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda51aa4 has v0 = ret(__glSPDlalloc2).
- `__glsplc_RasterPos3dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51aac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51aac-0xda51b10 (100 bytes).
  It occupies 100 bytes.
  The `ldc1` at 0xda51ae8 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda51aec stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xda51af0 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda51af4 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `ldc1` at 0xda51af8 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xda51afc stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `jalr` at 0xda51ad4 calls __glSPDlalloc2 [0xd94ab64] with a0=0x18, a1=0x24, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51ae0 targets 0xda51b00, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda51b08 has v0 = ret(__glSPDlalloc2).
- `__glsplc_RasterPos3f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51b10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51b10-0xda51b74 (100 bytes).
  It occupies 100 bytes.
  The `swc1` at 0xda51b50 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda51b58 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xda51b60 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda51b3c calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x25, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51b44 targets 0xda51b64, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda51b6c has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51b74 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51b74-0xda51bd8 (100 bytes).
  It occupies 100 bytes.
  The `lwc1` at 0xda51bb0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda51bb4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xda51bb8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda51bbc stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lwc1` at 0xda51bc0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xda51bc4 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda51b9c calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x25, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51ba8 targets 0xda51bc8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda51bd0 has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos3i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51bd8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51bd8-0xda51c3c (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xda51c18 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda51c20 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda51c28 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda51c04 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x26, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51c0c targets 0xda51c2c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda51c34 has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51c3c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51c3c-0xda51ca0 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xda51c78 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda51c7c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xda51c80 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda51c84 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lw` at 0xda51c88 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda51c8c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda51c64 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x26, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51c70 targets 0xda51c90, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda51c98 has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos3s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51ca0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51ca0-0xda51d04 (100 bytes).
  It occupies 100 bytes.
  The `sh` at 0xda51ce0 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xda51ce8 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `sh` at 0xda51cf0 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda51ccc calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x27, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51cd4 targets 0xda51cf4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda51cfc has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51d04 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51d04-0xda51d68 (100 bytes).
  It occupies 100 bytes.
  The `lh` at 0xda51d40 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda51d44 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lh` at 0xda51d48 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda51d4c stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `lh` at 0xda51d50 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xda51d54 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda51d2c calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x27, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51d38 targets 0xda51d58, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda51d60 has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos4d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51d68 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51d68-0xda51dd0 (104 bytes).
  It occupies 104 bytes.
  The `sdc1` at 0xda51da4 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xda51dac stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xda51db4 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `sdc1` at 0xda51dbc stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xda51d90 calls __glSPDlalloc2 [0xd94ab64] with a0=0x20, a1=0x28, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51d98 targets 0xda51dc0, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda51dc8 has v0 = ret(__glSPDlalloc2).
- `__glsplc_RasterPos4dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51dd0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51dd0-0xda51e3c (108 bytes).
  It occupies 108 bytes.
  The `ldc1` at 0xda51e0c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda51e10 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xda51e14 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda51e18 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `ldc1` at 0xda51e1c loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xda51e20 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `ldc1` at 0xda51e24 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sdc1` at 0xda51e28 stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xda51df8 calls __glSPDlalloc2 [0xd94ab64] with a0=0x20, a1=0x28, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51e04 targets 0xda51e2c, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda51e34 has v0 = ret(__glSPDlalloc2).
- `__glsplc_RasterPos4f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51e3c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51e3c-0xda51eac (112 bytes).
  It occupies 112 bytes.
  The `swc1` at 0xda51e80 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda51e88 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xda51e90 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `swc1` at 0xda51e98 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda51e6c calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0x29, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51e74 targets 0xda51e9c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda51ea4 has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos4fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51eac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51eac-0xda51f18 (108 bytes).
  It occupies 108 bytes.
  The `lwc1` at 0xda51ee8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda51eec stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xda51ef0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda51ef4 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lwc1` at 0xda51ef8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xda51efc stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `lwc1` at 0xda51f00 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `swc1` at 0xda51f04 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda51ed4 calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0x29, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51ee0 targets 0xda51f08, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda51f10 has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos4i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51f18 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51f18-0xda51f88 (112 bytes).
  It occupies 112 bytes.
  The `sw` at 0xda51f5c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda51f64 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda51f6c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xda51f74 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda51f48 calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0x2a, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51f50 targets 0xda51f78, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda51f80 has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos4iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51f88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51f88-0xda51ff4 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda51fc4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda51fc8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xda51fcc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda51fd0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lw` at 0xda51fd4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda51fd8 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `lw` at 0xda51fdc loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0xda51fe0 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda51fb0 calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0x2a, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51fbc targets 0xda51fe4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda51fec has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos4s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda51ff4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda51ff4-0xda52064 (112 bytes).
  It occupies 112 bytes.
  The `sh` at 0xda52038 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xda52040 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `sh` at 0xda52048 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `sh` at 0xda52050 stores 2 bytes to ret(__glSPDlalloc) +0x6.
  The `jalr` at 0xda52024 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x2b, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5202c targets 0xda52054, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda5205c has v0 = ret(__glSPDlalloc).
- `__glsplc_RasterPos4sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52064 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52064-0xda520d0 (108 bytes).
  It occupies 108 bytes.
  The `lh` at 0xda520a0 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda520a4 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lh` at 0xda520a8 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda520ac stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `lh` at 0xda520b0 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xda520b4 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `lh` at 0xda520b8 loads 2 bytes from a0 (arg0 at entry) +0x6.
  The `sh` at 0xda520bc stores 2 bytes to ret(__glSPDlalloc) +0x6.
  The `jalr` at 0xda5208c calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x2b, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52098 targets 0xda520c0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda520c8 has v0 = ret(__glSPDlalloc).
- `__glsplc_Rectd` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda520d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda520d0-0xda52138 (104 bytes).
  It occupies 104 bytes.
  The `sdc1` at 0xda5210c stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xda52114 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xda5211c stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `sdc1` at 0xda52124 stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xda520f8 calls __glSPDlalloc2 [0xd94ab64] with a0=0x20, a1=0x2c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52100 targets 0xda52128, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda52130 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Rectdv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52138 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52138-0xda521a8 (112 bytes).
  It occupies 112 bytes.
  The `ldc1` at 0xda52178 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda5217c stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xda52180 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda52184 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `ldc1` at 0xda52188 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `sdc1` at 0xda5218c stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `ldc1` at 0xda52190 loads 8 bytes from a1 (arg1 at entry) +0x8.
  The `sdc1` at 0xda52194 stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xda52160 calls __glSPDlalloc2 [0xd94ab64] with a0=0x20, a1=0x2c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52170 targets 0xda52198, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda521a0 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Rectf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda521a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda521a8-0xda52218 (112 bytes).
  It occupies 112 bytes.
  The `swc1` at 0xda521ec stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda521f4 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xda521fc stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `swc1` at 0xda52204 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda521d8 calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0x2d, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda521e0 targets 0xda52208, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda52210 has v0 = ret(__glSPDlalloc).
- `__glsplc_Rectfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52218 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52218-0xda52288 (112 bytes).
  It occupies 112 bytes.
  The `lwc1` at 0xda52258 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda5225c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xda52260 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda52264 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lwc1` at 0xda52268 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `swc1` at 0xda5226c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `lwc1` at 0xda52270 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda52274 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda52240 calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0x2d, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52250 targets 0xda52278, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda52280 has v0 = ret(__glSPDlalloc).
- `__glsplc_Recti` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52288 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52288-0xda522f8 (112 bytes).
  It occupies 112 bytes.
  The `sw` at 0xda522cc stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda522d4 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda522dc stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xda522e4 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda522b8 calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0x2e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda522c0 targets 0xda522e8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda522f0 has v0 = ret(__glSPDlalloc).
- `__glsplc_Rectiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda522f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda522f8-0xda52368 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xda52338 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda5233c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xda52340 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda52344 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lw` at 0xda52348 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `sw` at 0xda5234c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `lw` at 0xda52350 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `sw` at 0xda52354 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda52320 calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0x2e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52330 targets 0xda52358, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda52360 has v0 = ret(__glSPDlalloc).
- `__glsplc_Rects` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52368 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52368-0xda523d8 (112 bytes).
  It occupies 112 bytes.
  The `sh` at 0xda523ac stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xda523b4 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `sh` at 0xda523bc stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `sh` at 0xda523c4 stores 2 bytes to ret(__glSPDlalloc) +0x6.
  The `jalr` at 0xda52398 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x2f, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda523a0 targets 0xda523c8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda523d0 has v0 = ret(__glSPDlalloc).
- `__glsplc_Rectsv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda523d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda523d8-0xda52448 (112 bytes).
  It occupies 112 bytes.
  The `lh` at 0xda52418 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda5241c stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lh` at 0xda52420 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda52424 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `lh` at 0xda52428 loads 2 bytes from a1 (arg1 at entry) +0x0.
  The `sh` at 0xda5242c stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `lh` at 0xda52430 loads 2 bytes from a1 (arg1 at entry) +0x2.
  The `sh` at 0xda52434 stores 2 bytes to ret(__glSPDlalloc) +0x6.
  The `jalr` at 0xda52400 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x2f, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52410 targets 0xda52438, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda52440 has v0 = ret(__glSPDlalloc).
- `__glsplc_TexCoord1d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52448 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52448-0xda52494 (76 bytes).
  It occupies 76 bytes.
  The `sdc1` at 0xda52480 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `jalr` at 0xda5246c calls __glSPDlalloc2 [0xd94ab64] with a0=0x8, a1=0x30, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52474 targets 0xda52484, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda5248c has v0 = ret(__glSPDlalloc2).
- `__glsplc_TexCoord1dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52494 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52494-0xda524e4 (80 bytes).
  It occupies 80 bytes.
  The `ldc1` at 0xda524cc loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda524d0 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `jalr` at 0xda524b8 calls __glSPDlalloc2 [0xd94ab64] with a0=0x8, a1=0x30, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda524c0 targets 0xda524d4, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda524dc has v0 = ret(__glSPDlalloc2).
- `__glsplc_TexCoord1f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda524e4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda524e4-0xda52530 (76 bytes).
  It occupies 76 bytes.
  The `swc1` at 0xda5251c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda52508 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x31, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52510 targets 0xda52520, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda52528 has v0 = ret(__glSPDlalloc).
- `__glsplc_TexCoord1fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52530 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52530-0xda52580 (80 bytes).
  It occupies 80 bytes.
  The `lwc1` at 0xda52568 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda5256c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda52554 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x31, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5255c targets 0xda52570, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda52578 has v0 = ret(__glSPDlalloc).
- `__glsplc_TexCoord1i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52580 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52580-0xda525cc (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda525b8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda525a4 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x32, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda525ac targets 0xda525bc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda525c4 has v0 = ret(__glSPDlalloc).
- `__glsplc_TexCoord1iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda525cc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda525cc-0xda5261c (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xda52604 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda52608 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda525f0 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x32, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda525f8 targets 0xda5260c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda52614 has v0 = ret(__glSPDlalloc).
- `__glsplc_TexCoord1s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5261c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5261c-0xda52668 (76 bytes).
  It occupies 76 bytes.
  The `sh` at 0xda52654 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda52640 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x33, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52648 targets 0xda52658, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda52660 has v0 = ret(__glSPDlalloc).
- `__glsplc_TexCoord1sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52668 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52668-0xda526b8 (80 bytes).
  It occupies 80 bytes.
  The `lh` at 0xda526a0 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda526a4 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda5268c calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x33, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52694 targets 0xda526a8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda526b0 has v0 = ret(__glSPDlalloc).
- `__glsplc_TexCoord2d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda526b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda526b8-0xda52710 (88 bytes).
  It occupies 88 bytes.
  The `sdc1` at 0xda526f4 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xda526fc stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `jalr` at 0xda526e0 calls __glSPDlalloc2 [0xd94ab64] with a0=0x10, a1=0x34, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda526e8 targets 0xda52700, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda52708 has v0 = ret(__glSPDlalloc2).
- `__glsplc_TexCoord2dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52710 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52710-0xda52768 (88 bytes).
  It occupies 88 bytes.
  The `ldc1` at 0xda52748 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda5274c stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xda52750 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda52754 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `jalr` at 0xda52734 calls __glSPDlalloc2 [0xd94ab64] with a0=0x10, a1=0x34, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52740 targets 0xda52758, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda52760 has v0 = ret(__glSPDlalloc2).
- `__glsplc_TexCoord2f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52768 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52768-0xda527c0 (88 bytes).
  It occupies 88 bytes.
  The `swc1` at 0xda527a4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda527ac stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda52790 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x35, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52798 targets 0xda527b0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda527b8 has v0 = ret(__glSPDlalloc).
- `__glsplc_TexCoord2fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda527c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda527c0-0xda52818 (88 bytes).
  It occupies 88 bytes.
  The `lwc1` at 0xda527f8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda527fc stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xda52800 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda52804 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda527e4 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x35, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda527f0 targets 0xda52808, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda52810 has v0 = ret(__glSPDlalloc).
- `__glsplc_TexCoord2i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52818 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52818-0xda52870 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda52854 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda5285c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda52840 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x36, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52848 targets 0xda52860, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda52868 has v0 = ret(__glSPDlalloc).
- `__glsplc_TexCoord2iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52870 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52870-0xda528c8 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xda528a8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda528ac stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xda528b0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda528b4 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda52894 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x36, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda528a0 targets 0xda528b8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda528c0 has v0 = ret(__glSPDlalloc).
- `__glsplc_TexCoord2s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda528c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda528c8-0xda52920 (88 bytes).
  It occupies 88 bytes.
  The `sh` at 0xda52904 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xda5290c stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `jalr` at 0xda528f0 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x37, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda528f8 targets 0xda52910, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda52918 has v0 = ret(__glSPDlalloc).
- `__glsplc_TexCoord2sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52920 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52920-0xda52978 (88 bytes).
  It occupies 88 bytes.
  The `lh` at 0xda52958 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda5295c stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lh` at 0xda52960 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda52964 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `jalr` at 0xda52944 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x37, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52950 targets 0xda52968, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda52970 has v0 = ret(__glSPDlalloc).
- `__glsplc_TexCoord3d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52978 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52978-0xda529d8 (96 bytes).
  It occupies 96 bytes.
  The `sdc1` at 0xda529b4 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xda529bc stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xda529c4 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `jalr` at 0xda529a0 calls __glSPDlalloc2 [0xd94ab64] with a0=0x18, a1=0x38, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda529a8 targets 0xda529c8, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda529d0 has v0 = ret(__glSPDlalloc2).
- `__glsplc_TexCoord3dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda529d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda529d8-0xda52a3c (100 bytes).
  It occupies 100 bytes.
  The `ldc1` at 0xda52a14 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda52a18 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xda52a1c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda52a20 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `ldc1` at 0xda52a24 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xda52a28 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `jalr` at 0xda52a00 calls __glSPDlalloc2 [0xd94ab64] with a0=0x18, a1=0x38, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52a0c targets 0xda52a2c, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda52a34 has v0 = ret(__glSPDlalloc2).
- `__glsplc_TexCoord3f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52a3c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52a3c-0xda52aa0 (100 bytes).
  It occupies 100 bytes.
  The `swc1` at 0xda52a7c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda52a84 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xda52a8c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda52a68 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x39, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52a70 targets 0xda52a90, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda52a98 has v0 = ret(__glSPDlalloc).
- `__glsplc_TexCoord3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52aa0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52aa0-0xda52b04 (100 bytes).
  It occupies 100 bytes.
  The `lwc1` at 0xda52adc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda52ae0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xda52ae4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda52ae8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lwc1` at 0xda52aec loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xda52af0 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda52ac8 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x39, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52ad4 targets 0xda52af4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda52afc has v0 = ret(__glSPDlalloc).
- `__glsplc_TexCoord3i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52b04 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52b04-0xda52b68 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xda52b44 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda52b4c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda52b54 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda52b30 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x3a, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52b38 targets 0xda52b58, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda52b60 has v0 = ret(__glSPDlalloc).
- `__glsplc_TexCoord3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52b68 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52b68-0xda52bcc (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xda52ba4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda52ba8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xda52bac loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda52bb0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lw` at 0xda52bb4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda52bb8 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda52b90 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x3a, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52b9c targets 0xda52bbc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda52bc4 has v0 = ret(__glSPDlalloc).
- `__glsplc_TexCoord3s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52bcc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52bcc-0xda52c30 (100 bytes).
  It occupies 100 bytes.
  The `sh` at 0xda52c0c stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xda52c14 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `sh` at 0xda52c1c stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda52bf8 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x3b, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52c00 targets 0xda52c20, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda52c28 has v0 = ret(__glSPDlalloc).
- `__glsplc_TexCoord3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52c30 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52c30-0xda52c94 (100 bytes).
  It occupies 100 bytes.
  The `lh` at 0xda52c6c loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda52c70 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lh` at 0xda52c74 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda52c78 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `lh` at 0xda52c7c loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xda52c80 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda52c58 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x3b, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52c64 targets 0xda52c84, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda52c8c has v0 = ret(__glSPDlalloc).
- `__glsplc_TexCoord4d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52c94 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52c94-0xda52cfc (104 bytes).
  It occupies 104 bytes.
  The `sdc1` at 0xda52cd0 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xda52cd8 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xda52ce0 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `sdc1` at 0xda52ce8 stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xda52cbc calls __glSPDlalloc2 [0xd94ab64] with a0=0x20, a1=0x3c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52cc4 targets 0xda52cec, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda52cf4 has v0 = ret(__glSPDlalloc2).
- `__glsplc_TexCoord4dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52cfc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52cfc-0xda52d68 (108 bytes).
  It occupies 108 bytes.
  The `ldc1` at 0xda52d38 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda52d3c stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xda52d40 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda52d44 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `ldc1` at 0xda52d48 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xda52d4c stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `ldc1` at 0xda52d50 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sdc1` at 0xda52d54 stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xda52d24 calls __glSPDlalloc2 [0xd94ab64] with a0=0x20, a1=0x3c, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52d30 targets 0xda52d58, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda52d60 has v0 = ret(__glSPDlalloc2).
- `__glsplc_TexCoord4f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52d68 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52d68-0xda52dd8 (112 bytes).
  It occupies 112 bytes.
  The `swc1` at 0xda52dac stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda52db4 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xda52dbc stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `swc1` at 0xda52dc4 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda52d98 calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0x3d, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52da0 targets 0xda52dc8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda52dd0 has v0 = ret(__glSPDlalloc).
- `__glsplc_TexCoord4fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52dd8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52dd8-0xda52e44 (108 bytes).
  It occupies 108 bytes.
  The `lwc1` at 0xda52e14 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda52e18 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xda52e1c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda52e20 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lwc1` at 0xda52e24 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xda52e28 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `lwc1` at 0xda52e2c loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `swc1` at 0xda52e30 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda52e00 calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0x3d, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52e0c targets 0xda52e34, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda52e3c has v0 = ret(__glSPDlalloc).
- `__glsplc_TexCoord4i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52e44 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52e44-0xda52eb4 (112 bytes).
  It occupies 112 bytes.
  The `sw` at 0xda52e88 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda52e90 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda52e98 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xda52ea0 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda52e74 calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0x3e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52e7c targets 0xda52ea4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda52eac has v0 = ret(__glSPDlalloc).
- `__glsplc_TexCoord4iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52eb4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52eb4-0xda52f20 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda52ef0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda52ef4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xda52ef8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda52efc stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lw` at 0xda52f00 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda52f04 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `lw` at 0xda52f08 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0xda52f0c stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda52edc calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0x3e, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52ee8 targets 0xda52f10, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda52f18 has v0 = ret(__glSPDlalloc).
- `__glsplc_TexCoord4s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52f20 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52f20-0xda52f90 (112 bytes).
  It occupies 112 bytes.
  The `sh` at 0xda52f64 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xda52f6c stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `sh` at 0xda52f74 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `sh` at 0xda52f7c stores 2 bytes to ret(__glSPDlalloc) +0x6.
  The `jalr` at 0xda52f50 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x3f, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52f58 targets 0xda52f80, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda52f88 has v0 = ret(__glSPDlalloc).
- `__glsplc_TexCoord4sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52f90 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52f90-0xda52ffc (108 bytes).
  It occupies 108 bytes.
  The `lh` at 0xda52fcc loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda52fd0 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lh` at 0xda52fd4 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda52fd8 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `lh` at 0xda52fdc loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xda52fe0 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `lh` at 0xda52fe4 loads 2 bytes from a0 (arg0 at entry) +0x6.
  The `sh` at 0xda52fe8 stores 2 bytes to ret(__glSPDlalloc) +0x6.
  The `jalr` at 0xda52fb8 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x3f, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52fc4 targets 0xda52fec, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda52ff4 has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex2d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda52ffc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda52ffc-0xda53054 (88 bytes).
  It occupies 88 bytes.
  The `sdc1` at 0xda53038 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xda53040 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `jalr` at 0xda53024 calls __glSPDlalloc2 [0xd94ab64] with a0=0x10, a1=0x40, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5302c targets 0xda53044, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda5304c has v0 = ret(__glSPDlalloc2).
- `__glsplc_Vertex2dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda53054 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda53054-0xda530ac (88 bytes).
  It occupies 88 bytes.
  The `ldc1` at 0xda5308c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda53090 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xda53094 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda53098 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `jalr` at 0xda53078 calls __glSPDlalloc2 [0xd94ab64] with a0=0x10, a1=0x40, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda53084 targets 0xda5309c, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda530a4 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Vertex2f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda530ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda530ac-0xda53104 (88 bytes).
  It occupies 88 bytes.
  The `swc1` at 0xda530e8 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda530f0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda530d4 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x41, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda530dc targets 0xda530f4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda530fc has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex2fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda53104 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda53104-0xda5315c (88 bytes).
  It occupies 88 bytes.
  The `lwc1` at 0xda5313c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda53140 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xda53144 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda53148 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda53128 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x41, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda53134 targets 0xda5314c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda53154 has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex2i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5315c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5315c-0xda531b4 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda53198 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda531a0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda53184 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x42, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5318c targets 0xda531a4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda531ac has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex2iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda531b4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda531b4-0xda5320c (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xda531ec loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda531f0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xda531f4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda531f8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda531d8 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x42, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda531e4 targets 0xda531fc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda53204 has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex2s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5320c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5320c-0xda53264 (88 bytes).
  It occupies 88 bytes.
  The `sh` at 0xda53248 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xda53250 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `jalr` at 0xda53234 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x43, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5323c targets 0xda53254, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda5325c has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex2sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda53264 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda53264-0xda532bc (88 bytes).
  It occupies 88 bytes.
  The `lh` at 0xda5329c loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda532a0 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lh` at 0xda532a4 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda532a8 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `jalr` at 0xda53288 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x43, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda53294 targets 0xda532ac, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda532b4 has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex3d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda532bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda532bc-0xda5331c (96 bytes).
  It occupies 96 bytes.
  The `sdc1` at 0xda532f8 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xda53300 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xda53308 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `jalr` at 0xda532e4 calls __glSPDlalloc2 [0xd94ab64] with a0=0x18, a1=0x44, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda532ec targets 0xda5330c, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda53314 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Vertex3dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5331c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5331c-0xda53380 (100 bytes).
  It occupies 100 bytes.
  The `ldc1` at 0xda53358 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda5335c stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xda53360 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda53364 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `ldc1` at 0xda53368 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xda5336c stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `jalr` at 0xda53344 calls __glSPDlalloc2 [0xd94ab64] with a0=0x18, a1=0x44, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda53350 targets 0xda53370, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda53378 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Vertex3f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda53380 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda53380-0xda533e4 (100 bytes).
  It occupies 100 bytes.
  The `swc1` at 0xda533c0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda533c8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xda533d0 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda533ac calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x45, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda533b4 targets 0xda533d4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda533dc has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda533e4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda533e4-0xda53448 (100 bytes).
  It occupies 100 bytes.
  The `lwc1` at 0xda53420 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda53424 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xda53428 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda5342c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lwc1` at 0xda53430 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xda53434 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda5340c calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x45, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda53418 targets 0xda53438, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda53440 has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex3i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda53448 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda53448-0xda534ac (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xda53488 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda53490 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda53498 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda53474 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x46, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5347c targets 0xda5349c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda534a4 has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda534ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda534ac-0xda53510 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xda534e8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda534ec stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xda534f0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda534f4 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lw` at 0xda534f8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda534fc stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xda534d4 calls __glSPDlalloc [0xd94a930] with a0=0xc, a1=0x46, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda534e0 targets 0xda53500, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda53508 has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex3s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda53510 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda53510-0xda53574 (100 bytes).
  It occupies 100 bytes.
  The `sh` at 0xda53550 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xda53558 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `sh` at 0xda53560 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda5353c calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x47, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda53544 targets 0xda53564, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda5356c has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda53574 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda53574-0xda535d8 (100 bytes).
  It occupies 100 bytes.
  The `lh` at 0xda535b0 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda535b4 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lh` at 0xda535b8 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda535bc stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `lh` at 0xda535c0 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xda535c4 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda5359c calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x47, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda535a8 targets 0xda535c8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda535d0 has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex4d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda535d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda535d8-0xda53640 (104 bytes).
  It occupies 104 bytes.
  The `sdc1` at 0xda53614 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `sdc1` at 0xda5361c stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `sdc1` at 0xda53624 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `sdc1` at 0xda5362c stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xda53600 calls __glSPDlalloc2 [0xd94ab64] with a0=0x20, a1=0x48, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda53608 targets 0xda53630, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda53638 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Vertex4dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda53640 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda53640-0xda536ac (108 bytes).
  It occupies 108 bytes.
  The `ldc1` at 0xda5367c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda53680 stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xda53684 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda53688 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `ldc1` at 0xda5368c loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xda53690 stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `ldc1` at 0xda53694 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sdc1` at 0xda53698 stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xda53668 calls __glSPDlalloc2 [0xd94ab64] with a0=0x20, a1=0x48, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda53674 targets 0xda5369c, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda536a4 has v0 = ret(__glSPDlalloc2).
- `__glsplc_Vertex4f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda536ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda536ac-0xda5371c (112 bytes).
  It occupies 112 bytes.
  The `swc1` at 0xda536f0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda536f8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xda53700 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `swc1` at 0xda53708 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda536dc calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0x49, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda536e4 targets 0xda5370c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda53714 has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex4fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5371c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5371c-0xda53788 (108 bytes).
  It occupies 108 bytes.
  The `lwc1` at 0xda53758 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda5375c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lwc1` at 0xda53760 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda53764 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lwc1` at 0xda53768 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xda5376c stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `lwc1` at 0xda53770 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `swc1` at 0xda53774 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda53744 calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0x49, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda53750 targets 0xda53778, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda53780 has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex4i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda53788 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda53788-0xda537f8 (112 bytes).
  It occupies 112 bytes.
  The `sw` at 0xda537cc stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda537d4 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xda537dc stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0xda537e4 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda537b8 calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0x4a, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda537c0 targets 0xda537e8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda537f0 has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex4iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda537f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda537f8-0xda53864 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda53834 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda53838 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `lw` at 0xda5383c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda53840 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `lw` at 0xda53844 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda53848 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `lw` at 0xda5384c loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0xda53850 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `jalr` at 0xda53820 calls __glSPDlalloc [0xd94a930] with a0=0x10, a1=0x4a, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5382c targets 0xda53854, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda5385c has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex4s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda53864 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda53864-0xda538d4 (112 bytes).
  It occupies 112 bytes.
  The `sh` at 0xda538a8 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xda538b0 stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `sh` at 0xda538b8 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `sh` at 0xda538c0 stores 2 bytes to ret(__glSPDlalloc) +0x6.
  The `jalr` at 0xda53894 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x4b, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5389c targets 0xda538c4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda538cc has v0 = ret(__glSPDlalloc).
- `__glsplc_Vertex4sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda538d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda538d4-0xda53940 (108 bytes).
  It occupies 108 bytes.
  The `lh` at 0xda53910 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda53914 stores 2 bytes to ret(__glSPDlalloc) +0x0.
  The `lh` at 0xda53918 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda5391c stores 2 bytes to ret(__glSPDlalloc) +0x2.
  The `lh` at 0xda53920 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xda53924 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `lh` at 0xda53928 loads 2 bytes from a0 (arg0 at entry) +0x6.
  The `sh` at 0xda5392c stores 2 bytes to ret(__glSPDlalloc) +0x6.
  The `jalr` at 0xda538fc calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x4b, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda53908 targets 0xda53930, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda53938 has v0 = ret(__glSPDlalloc).
- `__glsplc_ClipPlane` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda53940 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda53940-0xda539b8 (120 bytes).
  It occupies 120 bytes.
  The `sw` at 0xda53984 stores 4 bytes to ret(__glSPDlalloc2) +0x20.
  The `ldc1` at 0xda53988 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `sdc1` at 0xda5398c stores 8 bytes to ret(__glSPDlalloc2) +0x0.
  The `ldc1` at 0xda53990 loads 8 bytes from a1 (arg1 at entry) +0x8.
  The `sdc1` at 0xda53994 stores 8 bytes to ret(__glSPDlalloc2) +0x8.
  The `ldc1` at 0xda53998 loads 8 bytes from a1 (arg1 at entry) +0x10.
  The `sdc1` at 0xda5399c stores 8 bytes to ret(__glSPDlalloc2) +0x10.
  The `ldc1` at 0xda539a0 loads 8 bytes from a1 (arg1 at entry) +0x18.
  The `sdc1` at 0xda539a4 stores 8 bytes to ret(__glSPDlalloc2) +0x18.
  The `jalr` at 0xda5396c calls __glSPDlalloc2 [0xd94ab64] with a0=0x28, a1=0x4c, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `beq` branch at 0xda53978 targets 0xda539a8, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda539b0 has v0 = ret(__glSPDlalloc2).
- `__glsplc_ColorMaterial` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda539b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda539b8-0xda53a10 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda539f4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda539fc stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda539e0 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x4d, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda539e8 targets 0xda53a00, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda53a08 has v0 = ret(__glSPDlalloc).
- `__glsplc_CullFace` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda53a10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda53a10-0xda53a5c (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda53a48 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda53a34 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x4e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda53a3c targets 0xda53a4c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda53a54 has v0 = ret(__glSPDlalloc).
- `__glsplc_Fogf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda53a5c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda53a5c-0xda53ab4 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda53a98 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `swc1` at 0xda53aa0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda53a84 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x4f, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda53a8c targets 0xda53aa4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda53aac has v0 = ret(__glSPDlalloc).
- `__glsplc_Fogfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda53ab4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda53ab4-0xda53b4c (152 bytes).
  It occupies 152 bytes.
  The `sw` at 0xda53b24 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda53ad4 calls __glFogfv_size [0xda077e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda53aec calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glFogfv_size) << 0x2), a3=?.
  The `jalr` at 0xda53b08 calls __glSPDlalloc [0xd94a930] with a0=(ret(__glFogfv_size) << 0x2)+4, a1=0x50, a2=(ret(__glFogfv_size) << 0x2), a3=?.
  The `jalr` at 0xda53b30 calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=(ret(__glFogfv_size) << 0x2), a3=?.
  The `bgez` branch at 0xda53ae0 targets 0xda53afc, is taken when a2(=(ret(__glFogfv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFogfv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda53af4 targets 0xda53b3c and is always taken.
  The `beq` branch at 0xda53b14 targets 0xda53b3c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda53b44 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_Fogi` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda53b4c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda53b4c-0xda53ba4 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda53b88 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda53b90 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda53b74 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x51, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda53b7c targets 0xda53b94, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda53b9c has v0 = ret(__glSPDlalloc).
- `__glsplc_Fogiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda53ba4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda53ba4-0xda53c3c (152 bytes).
  It occupies 152 bytes.
  The `sw` at 0xda53c14 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda53bc4 calls __glFogiv_size [0xda07770] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda53bdc calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glFogiv_size) << 0x2), a3=?.
  The `jalr` at 0xda53bf8 calls __glSPDlalloc [0xd94a930] with a0=(ret(__glFogiv_size) << 0x2)+4, a1=0x52, a2=(ret(__glFogiv_size) << 0x2), a3=?.
  The `jalr` at 0xda53c20 calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=(ret(__glFogiv_size) << 0x2), a3=?.
  The `bgez` branch at 0xda53bd0 targets 0xda53bec, is taken when a2(=(ret(__glFogiv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFogiv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda53be4 targets 0xda53c2c and is always taken.
  The `beq` branch at 0xda53c04 targets 0xda53c2c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda53c34 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_FrontFace` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda53c3c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda53c3c-0xda53c88 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xda53c74 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda53c60 calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x53, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda53c68 targets 0xda53c78, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda53c80 has v0 = ret(__glSPDlalloc).
- `__glsplc_Hint` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda53c88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda53c88-0xda53ce0 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda53cc4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda53ccc stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda53cb0 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x54, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda53cb8 targets 0xda53cd0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda53cd8 has v0 = ret(__glSPDlalloc).
- `__glsplc_Lightf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda53ce0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda53ce0-0xda53d58 (120 bytes).
  It occupies 120 bytes.
  The `jalr` at 0xda53d08 calls __glLightfv_size [0xda07814] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda53d20 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda53d3c calls __glsplc_Lightfv [0xda53d58] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xda53d14 targets 0xda53d30, is taken when v0(=ret(__glLightfv_size)) == at(=0x1), and falls through when v0(=ret(__glLightfv_size)) != at(=0x1).
  The `beq` branch at 0xda53d28 targets 0xda53d48 and is always taken.
  The return at 0xda53d50 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glsplc_Lightfv).
- `__glsplc_Lightfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda53d58 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda53d58-0xda53e00 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xda53dd0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda53dd8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda53d80 calls __glLightfv_size [0xda07814] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda53d98 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glLightfv_size) << 0x2), a3=?.
  The `jalr` at 0xda53db4 calls __glSPDlalloc [0xd94a930] with a0=(ret(__glLightfv_size) << 0x2)+8, a1=0x56, a2=(ret(__glLightfv_size) << 0x2), a3=?.
  The `jalr` at 0xda53de4 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=(ret(__glLightfv_size) << 0x2), a3=?.
  The `bgez` branch at 0xda53d8c targets 0xda53da8, is taken when a2(=(ret(__glLightfv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glLightfv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda53da0 targets 0xda53df0 and is always taken.
  The `beq` branch at 0xda53dc0 targets 0xda53df0, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda53df8 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_Lighti` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda53e00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda53e00-0xda53e78 (120 bytes).
  It occupies 120 bytes.
  The `jalr` at 0xda53e28 calls __glLightiv_size [0xda078a4] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda53e40 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda53e5c calls __glsplc_Lightiv [0xda53e78] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xda53e34 targets 0xda53e50, is taken when v0(=ret(__glLightiv_size)) == at(=0x1), and falls through when v0(=ret(__glLightiv_size)) != at(=0x1).
  The `beq` branch at 0xda53e48 targets 0xda53e68 and is always taken.
  The return at 0xda53e70 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glsplc_Lightiv).
- `__glsplc_Lightiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda53e78 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda53e78-0xda53f20 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xda53ef0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda53ef8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda53ea0 calls __glLightiv_size [0xda078a4] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda53eb8 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glLightiv_size) << 0x2), a3=?.
  The `jalr` at 0xda53ed4 calls __glSPDlalloc [0xd94a930] with a0=(ret(__glLightiv_size) << 0x2)+8, a1=0x58, a2=(ret(__glLightiv_size) << 0x2), a3=?.
  The `jalr` at 0xda53f04 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=(ret(__glLightiv_size) << 0x2), a3=?.
  The `bgez` branch at 0xda53eac targets 0xda53ec8, is taken when a2(=(ret(__glLightiv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glLightiv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda53ec0 targets 0xda53f10 and is always taken.
  The `beq` branch at 0xda53ee0 targets 0xda53f10, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda53f18 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_LightModelf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda53f20 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda53f20-0xda53f90 (112 bytes).
  It occupies 112 bytes.
  The `jalr` at 0xda53f40 calls __glLightModelfv_size [0xda078d8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda53f58 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda53f74 calls __glsplc_LightModelfv [0xda53f90] with a0=a0 at entry (arg0), a1=sp+4, a2=?, a3=?.
  The `beq` branch at 0xda53f4c targets 0xda53f68, is taken when v0(=ret(__glLightModelfv_size)) == at(=0x1), and falls through when v0(=ret(__glLightModelfv_size)) != at(=0x1).
  The `beq` branch at 0xda53f60 targets 0xda53f80 and is always taken.
  The return at 0xda53f88 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glsplc_LightModelfv).
- `__glsplc_LightModelfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda53f90 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda53f90-0xda54028 (152 bytes).
  It occupies 152 bytes.
  The `sw` at 0xda54000 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda53fb0 calls __glLightModelfv_size [0xda078d8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda53fc8 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glLightModelfv_size) << 0x2), a3=?.
  The `jalr` at 0xda53fe4 calls __glSPDlalloc [0xd94a930] with a0=(ret(__glLightModelfv_size) << 0x2)+4, a1=0x5a, a2=(ret(__glLightModelfv_size) << 0x2), a3=?.
  The `jalr` at 0xda5400c calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=(ret(__glLightModelfv_size) << 0x2), a3=?.
  The `bgez` branch at 0xda53fbc targets 0xda53fd8, is taken when a2(=(ret(__glLightModelfv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glLightModelfv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda53fd0 targets 0xda54018 and is always taken.
  The `beq` branch at 0xda53ff0 targets 0xda54018, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda54020 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_LightModeli` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54028 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54028-0xda54098 (112 bytes).
  It occupies 112 bytes.
  The `jalr` at 0xda54048 calls __glLightModeliv_size [0xda0792c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda54060 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5407c calls __glsplc_LightModeliv [0xda54098] with a0=a0 at entry (arg0), a1=sp+4, a2=?, a3=?.
  The `beq` branch at 0xda54054 targets 0xda54070, is taken when v0(=ret(__glLightModeliv_size)) == at(=0x1), and falls through when v0(=ret(__glLightModeliv_size)) != at(=0x1).
  The `beq` branch at 0xda54068 targets 0xda54088 and is always taken.
  The return at 0xda54090 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glsplc_LightModeliv).
- `__glsplc_LightModeliv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54098 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54098-0xda54130 (152 bytes).
  It occupies 152 bytes.
  The `sw` at 0xda54108 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda540b8 calls __glLightModeliv_size [0xda0792c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda540d0 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glLightModeliv_size) << 0x2), a3=?.
  The `jalr` at 0xda540ec calls __glSPDlalloc [0xd94a930] with a0=(ret(__glLightModeliv_size) << 0x2)+4, a1=0x5c, a2=(ret(__glLightModeliv_size) << 0x2), a3=?.
  The `jalr` at 0xda54114 calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=(ret(__glLightModeliv_size) << 0x2), a3=?.
  The `bgez` branch at 0xda540c4 targets 0xda540e0, is taken when a2(=(ret(__glLightModeliv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glLightModeliv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda540d8 targets 0xda54120 and is always taken.
  The `beq` branch at 0xda540f8 targets 0xda54120, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda54128 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_LineStipple` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54130 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54130-0xda54188 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda5416c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sh` at 0xda54174 stores 2 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda54158 calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x5d, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda54160 targets 0xda54178, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda54180 has v0 = ret(__glSPDlalloc).
- `__glsplc_LineWidth` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54188 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54188-0xda541d4 (76 bytes).
  It occupies 76 bytes.
  The `swc1` at 0xda541c0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda541ac calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x5e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda541b4 targets 0xda541c4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda541cc has v0 = ret(__glSPDlalloc).
- `__glsplc_Materialf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda541d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda541d4-0xda5424c (120 bytes).
  It occupies 120 bytes.
  The `jalr` at 0xda541fc calls __glMaterialfv_size [0xda07960] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda54214 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda54230 calls __glsplc_Materialfv [0xda5424c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xda54208 targets 0xda54224, is taken when v0(=ret(__glMaterialfv_size)) == at(=0x1), and falls through when v0(=ret(__glMaterialfv_size)) != at(=0x1).
  The `beq` branch at 0xda5421c targets 0xda5423c and is always taken.
  The return at 0xda54244 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glsplc_Materialfv).
- `__glsplc_Materialfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5424c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5424c-0xda54324 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xda54278 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sw` at 0xda542f4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda542fc stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda54274 calls __glErrorCheckMaterial [0xd9c339c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a2], a3=a3 at entry (arg3).
  The `jalr` at 0xda5428c calls __glsplc_Error [0xd994580] with a0=ret(__glErrorCheckMaterial), a1=?, a2=?, a3=?.
  The `jalr` at 0xda542a4 calls __glMaterialfv_size [0xda07960] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xda542bc calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glMaterialfv_size) << 0x2), a3=?.
  The `jalr` at 0xda542d8 calls __glSPDlalloc [0xd94a930] with a0=(ret(__glMaterialfv_size) << 0x2)+8, a1=0x60, a2=(ret(__glMaterialfv_size) << 0x2), a3=?.
  The `jalr` at 0xda54308 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=(ret(__glMaterialfv_size) << 0x2), a3=?.
  The `beq` branch at 0xda54280 targets 0xda5429c, is taken when v0(=ret(__glErrorCheckMaterial)) == 0, and falls through when v0(=ret(__glErrorCheckMaterial)) != 0.
  The `beq` branch at 0xda54294 targets 0xda54314 and is always taken.
  The `bgez` branch at 0xda542b0 targets 0xda542cc, is taken when a2(=(ret(__glMaterialfv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glMaterialfv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda542c4 targets 0xda54314 and is always taken.
  The `beq` branch at 0xda542e4 targets 0xda54314, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda5431c has v0 = one of ret(__glsplc_Error), ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_Materiali` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54324 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54324-0xda5439c (120 bytes).
  It occupies 120 bytes.
  The `jalr` at 0xda5434c calls __glMaterialiv_size [0xda079e4] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda54364 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda54380 calls __glsplc_Materialiv [0xda5439c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xda54358 targets 0xda54374, is taken when v0(=ret(__glMaterialiv_size)) == at(=0x1), and falls through when v0(=ret(__glMaterialiv_size)) != at(=0x1).
  The `beq` branch at 0xda5436c targets 0xda5438c and is always taken.
  The return at 0xda54394 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glsplc_Materialiv).
- `__glsplc_Materialiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5439c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda5439c-0xda54488 (236 bytes).
  It occupies 236 bytes.
  The `lw` at 0xda543c0 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sw` at 0xda54458 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda54460 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda543d8 calls __glErrorCheckMaterial [0xd9c339c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xda543f0 calls __glsplc_Error [0xd994580] with a0=ret(__glErrorCheckMaterial), a1=?, a2=?, a3=?.
  The `jalr` at 0xda54408 calls __glMaterialiv_size [0xda079e4] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xda54420 calls __glsplc_InvalidEnum [0xd994500] with a0=?, a1=?, a2=(ret(__glMaterialiv_size) << 0x2), a3=?.
  The `jalr` at 0xda5443c calls __glSPDlalloc [0xd94a930] with a0=(ret(__glMaterialiv_size) << 0x2)+8, a1=0x62, a2=(ret(__glMaterialiv_size) << 0x2), a3=?.
  The `jalr` at 0xda5446c calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=(ret(__glMaterialiv_size) << 0x2), a3=?.
  The `beq` branch at 0xda543e4 targets 0xda54400, is taken when v0(=ret(__glErrorCheckMaterial)) == 0, and falls through when v0(=ret(__glErrorCheckMaterial)) != 0.
  The `beq` branch at 0xda543f8 targets 0xda54478 and is always taken.
  The `bgez` branch at 0xda54414 targets 0xda54430, is taken when a2(=(ret(__glMaterialiv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glMaterialiv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda54428 targets 0xda54478 and is always taken.
  The `beq` branch at 0xda54448 targets 0xda54478, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda54480 has v0 = one of ret(__glsplc_Error), ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_PointSize` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda54488 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda54488-0xda544d4 (76 bytes).
  It occupies 76 bytes.
  The `swc1` at 0xda544c0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xda544ac calls __glSPDlalloc [0xd94a930] with a0=0x4, a1=0x63, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda544b4 targets 0xda544c4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda544cc has v0 = ret(__glSPDlalloc).
- `__glsplc_PolygonMode` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda544d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda544d4-0xda5452c (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xda54510 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xda54518 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xda544fc calls __glSPDlalloc [0xd94a930] with a0=0x8, a1=0x64, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda54504 targets 0xda5451c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda54524 has v0 = ret(__glSPDlalloc).

The renderer skipped 4 `Ioctl` routines because each target has address 0x0 and no recorded size.
