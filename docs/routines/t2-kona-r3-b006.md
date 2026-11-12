# Tier-2 routine roles, kona batch 6

Roles for targets 150 to 174 of the ranked tier-2 list. Each one comes from the rendered instruction facts at the cited addresses, so every entry is graded inferred. Where the facts stop short of the routine's purpose, the entry says so.

- `gl_n_cmov` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d860
  **Inferred.** Tests the flag at abs 0xece8bf0 (gl_inMoveDraw) and, when it is set, calls __iglooNCloseMoveDraw at 0xec92d80 first. It then calls glRasterPos3f with the floats at a0+0, +4 and +8, and passes the same three values to saveCmov at 0xec3ce80 through the bgezall at 0xec3d8bc. It returns a0+12. The facts do not show what saveCmov records, so the purpose of the name stays open.
  Reviewed: 2026-11-12
- `__iglooColor3f` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d8e0
  **Inferred.** Loads three floats from a1 (+0, +4, +8) and writes four single-precision words into the context at a0+0xc30, +0xc34, +0xc38 and +0xc3c. The facts do not show where the fourth word comes from. It then reads the global pointer at abs 0x1004 and branches on its +0x44 and +0x40 fields. One path calls glColor3fv with the block at a0+3120 (0xc30), the other calls an unresolved callee at 0xec3d968 with a0=1.
  Reviewed: 2026-11-12
- `__iglooColor3i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d980
  **Inferred.** Reads three integer words from a1 (+4, +8, +0). Unsigned compares against 0xff sit at 0xec3d9bc and 0xec3d9f0, and a zero test of a register the facts do not trace sits at 0xec3da14; together they may be a range check, which the facts do not confirm. It stores four single-precision words at a0+0xc30 through +0xc3c (swc1 at 0xec3da3c to 0xec3da48). The call is glColor3fv on a0+3120 at 0xec3da68 or an unresolved callee at 0xec3da8c, chosen by the flags at [0x1004]+0x44 and +0x40. The facts do not show what the clamped values map to.
  Reviewed: 2026-11-12
- `__iglooColor3s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3daa0
  **Inferred.** The same shape as the int version, with halfword loads from a1 (lh at 0xec3daa0, 0xec3daa4 and 0xec3dab4). Unsigned compares against 0xff sit at 0xec3dadc and 0xec3db10, and a zero test of an untraced register sits at 0xec3db34. Four words go to a0+0xc30 through +0xc3c (swc1 at 0xec3db5c to 0xec3db68). The routine ends in glColor3fv at 0xec3db88 or the unresolved callee at 0xec3dbac, selected by [0x1004]+0x44 and +0x40. The facts do not say what the halfword values mean.
  Reviewed: 2026-11-12
- `__iglooColor4f` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3dbc0
  **Inferred.** Loads four floats from a1 (+0, +8, +4, +c) and stores four words at a0+0xc30 through +0xc3c (swc1 at 0xec3dbdc to 0xec3dbe8). It reads the global pointer at abs 0x1004 and branches on its +0x44 and +0x40 fields. It calls glColor4fv on a0+3120 at 0xec3dc24, or an unresolved callee at 0xec3dc48 that gets a1, a2 and a3 unchanged. The return at 0xec3dc3c passes back ret(glColor4fv).
  Reviewed: 2026-11-12
- `__iglooColor4i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3dc60
  **Inferred.** Loads four integer words from a1 (+0xc, +8, +0, +4) and runs a chain of tests on them: 0xff compares at 0xec3dc98 and zero tests at 0xec3dcdc, 0xec3dd00 and 0xec3dd24. It stores four words at a0+0xc30 through +0xc3c (swc1 at 0xec3dd48 to 0xec3dd54). It ends in glColor4fv on a0+3120 at 0xec3dd74 or an unresolved callee at 0xec3dd98, gated by [0x1004]+0x44 and +0x40. The rendered facts do not say what the zero tests select.
  Reviewed: 2026-11-12
- `__iglooColor4s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ddb0
  **Inferred.** The halfword version of the int color routine: lh loads from a1 at 0xec3ddb0 to 0xec3ddc8, with the same 0xff and zero-test chain (0xec3dde8, 0xec3de2c, 0xec3de50, 0xec3de74). Four words go to a0+0xc30 through +0xc3c (swc1 at 0xec3de98 to 0xec3dea4). It calls glColor4fv on a0+3120 at 0xec3dec4 or an unresolved callee at 0xec3dee8, selected by the context flags at [0x1004]+0x44 and +0x40.
  Reviewed: 2026-11-12
- `__iglooCpack` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3df00
  **Inferred.** Makes four unsigned compares against 0xff, at 0xec3df28, 0xec3df74, 0xec3dfa0 and 0xec3dfd0, on registers (a3 and a0) whose source the facts do not trace; the last one branches when the value is at or above 0xff. That may be a packed-color clamp, which the facts do not confirm. It stores four words at a0+0xc30 through +0xc3c (swc1 at 0xec3dfec to 0xec3dff8). It calls glColor4fv on a0+3120 at 0xec3e018 or an unresolved callee at 0xec3e03c that receives a1 unchanged. The rendered facts do not show how the packed value is split into channels.
  Reviewed: 2026-11-12
- `__iglooRgbcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3e050
  **Inferred.** Tests two values (a1 and a2) against the mask -0x100 (beq at 0xec3e07c and 0xec3e098, each followed by a bltz at 0xec3e084 and 0xec3e0a0) and tests a third register at 0xec3e0a8 (beq) and 0xec3e0b0 (bltz) that the facts do not show masked. The mask pattern may be a check for values outside 0..255, which the facts do not confirm. It stores four words at a0+0xc30 through +0xc3c and calls glColor3fv on a0+3120 at 0xec3e0e4, or an unresolved callee at 0xec3e178 with a5=-0x100. The return at 0xec3e0fc passes back ret(glColor3fv). The facts do not show the clamp's result.
  Reviewed: 2026-11-12
- `__iglooIndex` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3e190
  **Inferred.** Reads the global pointer at abs 0x1004, then its +0x44 and +0x40 fields. On the path that calls glIndexs it also stores a word at +0x40 (0xec3e1cc), loads the word at a0+0x2f50 (12112) and calls glIndexs at 0xec3e1e0 with a1 unchanged. The other path calls an unresolved callee at 0xec3e208 with a0=1 and a1 and a3 unchanged, with no +0x40 store. The return at 0xec3e1f8 gives ret(glIndexs). a1 is passed to glIndexs as given.
  Reviewed: 2026-11-12
- `__iglooIndexf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3e220
  **Inferred.** The float version of the index routine. It reads the same global pointer at abs 0x1004 and the same +0x44 and +0x40 flags, and loads the word at a0+0x2f50 (12112) before calling glIndexf at 0xec3e284. The other path is an unresolved callee at 0xec3e2ac that gets a1, a2 and a3 unchanged. The return at 0xec3e29c gives ret(glIndexf).
  Reviewed: 2026-11-12
- `__iglooSetLightColorProcsDefault` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3e2c0
  **Inferred.** Reads the word at a0+0xc58 (3160) and stores ten words into the context at a0+0x64 through +0x88. It then calls __iglooSetColorProcsLight at abs 0xecb4740 with seven routine addresses: 0xec3d980, 0xec3dbc0, 0xec3ddb0, 0xec3dc60, 0xec3df00, 0xec3e050 and 0xec3e190. These are the color and index routines above. The beq at 0xec3e324 checks [a0+3160] before returning either that word or the callee's result.
  Reviewed: 2026-11-12
- `__iglooStoreCol3f` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3e350
  **Inferred.** Loads three floats from a1 (+0, +4, +8) and stores four words at a0+0xc30 through +0xc3c. One of the four stored words comes from the float constant at abs 0xecddecc. It also stores a word into the global context at 0x1004 (+0x40). The return at 0xec3e384 gives the constant 0xa4820. The facts do not show what the context word means.
  Reviewed: 2026-11-12
- `__iglooStoreCol3i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3e390
  **Inferred.** Loads three integer words from a1 (+0, +4, +8) and writes floats to a0+0xc30, +0xc34, +0xc3c and +0xc38. The float constants come from abs 0xecddef0 and 0xecddecc, and the context at 0x1004 gets a store at +0x40. The return at 0xec3e3f4 gives [a1+8], which is the third integer.
  Reviewed: 2026-11-12
- `__iglooStoreCol3s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3e400
  **Inferred.** Loads three halfwords from a1 (lh at 0xec3e40c, 0xec3e430 and 0xec3e448) and writes them as floats to a0+0xc30, +0xc34, +0xc3c and +0xc38, with constants from abs 0xecddef0 and 0xecddecc. It also stores a word into the context at 0x1004 (+0x40). The return at 0xec3e464 gives [a1+4] as a halfword.
  Reviewed: 2026-11-12
- `__iglooStoreCol4f` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3e470
  **Inferred.** Copies four floats from a1 (+0, +4, +8, +c) into a0+0xc30, +0xc34, +0xc38 and +0xc3c. It also stores a word at the context at 0x1004 (+0x40). The return at 0xec3e498 gives the word at abs 0x1004, so the routine returns the context pointer's value.
  Reviewed: 2026-11-12
- `__iglooStoreCol4i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3e4a0
  **Inferred.** Loads four integer words from a1 (+0, +4, +8, +c) and writes them as floats to a0+0xc30 through +0xc3c. The float constants come from abs 0xecddef0, and the context at 0x1004 gets a store at +0x40. The return at 0xec3e514 gives [a1+12], the fourth integer.
  Reviewed: 2026-11-12
- `__iglooStoreCol4s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3e520
  **Inferred.** Loads four halfwords from a1 (+0, +2, +4, +6) and writes them as floats to a0+0xc30 through +0xc3c. It uses the same float constants and context store at +0x40 as the other store routines. The return at 0xec3e594 gives [a1+6] as a halfword.
  Reviewed: 2026-11-12
- `__iglooStoreCpack` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3e5a0
  **Inferred.** Writes four words to a0+0xc3c, +0xc30, +0xc38 and +0xc34, with the value from the float constant at abs 0xecddef0. It stores a word into the context at 0x1004 (+0x40). The routine does not read a1 in the facts, and it returns the constant 0x1 at 0xec3e61c.
  Reviewed: 2026-11-12
- `__iglooStoreRgbcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3e630
  **Inferred.** Writes four words to a0+0xc3c, +0xc38, +0xc34 and +0xc30. The values come from the float constants at abs 0xecddef0 and 0xecddecc, and the context at 0x1004 gets a store at +0x40. The routine does not read a1 in the facts, and it returns the constant 0x1 at 0xec3e688.
  Reviewed: 2026-11-12
- `__iglooStoreIndex` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3e690
  **Inferred.** Reads the global pointer at abs 0x1004, stores a word into it at +0x40, and writes one float to a0+0xbb8 (3000) at 0xec3e6a8. The facts do not show the stored float. The return at 0xec3e6a4 gives the context pointer's value.
  Reviewed: 2026-11-12
- `__iglooStoreIndexf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3e6b0
  **Inferred.** The same shape as __iglooStoreIndex: it loads the global pointer at abs 0x1004, stores a word at its +0x40, and writes one float to a0+0xbb8 at 0xec3e6c0. The return at 0xec3e6bc gives the context pointer's value. The facts do not show the float it writes.
  Reviewed: 2026-11-12
- `__iglooSetColorProcsToDepthCue` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3e6d0
  **Inferred.** Reads the word at a0+0xc58 (3160) and stores ten words into the context at a0+0x64 through +0x88. When that word is zero (beq at 0xec3e734) it calls __iglooSetColorProcsLight at abs 0xecb4740 with a0 passed through and the seven addresses 0xec3e390, 0xec3e470, 0xec3e520, 0xec3e4a0, 0xec3e5a0, 0xec3e630 and 0xec3e690 as a1 to a7, and returns that call's result. When it is nonzero it returns the word. The name suggests a depth-cue mode, which the facts do not confirm.
  Reviewed: 2026-11-12
- `__iglooMat3f` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3e760
  **Inferred.** Loads three floats from a1 (+4, +8, +0) and writes four words to a0+0xc38, +0xc34, +0xc30 and +0xc3c; the facts do not show where the fourth word comes from. It reads the word at a0+0xc48 on the way and stores a word into the global context at 0x1004 (+0x40). It calls glMaterialfv at 0xec3e7b0 with a0=[a0+3148] (0xc4c), a1=[a0+3144] (0xc48), a2=a0+3120 (0xc30, the block just written), a3=1, a4=[0x1004] and a5=0xa4410. The return at 0xec3e7c0 gives ret(glMaterialfv).
  Reviewed: 2026-11-12
- `__iglooMat3s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3e7d0
  **Inferred.** Loads three halfwords from a1 (+4, +0, +2) and writes four words to a0+0xc3c, +0xc38, +0xc34 and +0xc30; the facts do not show where the fourth word comes from. It stores a word into the global context at 0x1004 (+0x40). It calls glMaterialfv at 0xec3e8b0 with a0=[a0+3148], a1=[a0+3144] and a2=a0+3120 as in __iglooMat3f, then a3=[a1+2], a4=[a1+4], a5=a0 at entry and a6=[a1], where a3, a4 and a6 are halfwords from a1. A 0xff compare at 0xec3e818 and zero tests at 0xec3e840 and 0xec3e86c precede the single call; the facts show no alternative call, so what the branches select is not shown. The return at 0xec3e8c0 gives ret(glMaterialfv).
  Reviewed: 2026-11-12
