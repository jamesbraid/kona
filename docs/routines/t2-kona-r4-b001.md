# Routine role entries, kona tier-2 batch 1

These entries come from rendered facts for 25 routines: memory accesses, calls, branches and return values at fixed addresses. Names come from the inventory. The facts show what the code does, not what its callers intend, so every label is inferred. Where a fact is missing, the entry says so.

- `gl_i_xfpt2` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c060
  **Inferred.** An 8-byte leaf whose only instruction effect is the return at 0xec3c060: no call, no memory access and no branch. The value in v0 at that return is unknown from these facts. Its neighbours gl_i_xfpt2i, gl_i_xfpt2s, gl_i_xfpt4, gl_i_xfpt4i and gl_i_xfpt4s at 0xec3c070 to 0xec3c0b0 have the same 8-byte shape, so in this build the xfpt entries do no visible work.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_xfpt2i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c070
  **Inferred.** An 8-byte leaf with a bare return at 0xec3c070 and no call, memory access or branch. The v0 value at that return is unknown. It has the same shape as gl_i_xfpt2 at 0xec3c060, so in this build it does no visible work.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_xfpt2s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c080
  **Inferred.** An 8-byte leaf with a bare return at 0xec3c080 and no call, memory access or branch. The v0 value at that return is unknown. It has the same shape as gl_i_xfpt2 at 0xec3c060, so in this build it does no visible work.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_xfpt4` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c090
  **Inferred.** An 8-byte leaf with a bare return at 0xec3c090 and no call, memory access or branch. The v0 value at that return is unknown. It has the same shape as gl_i_xfpt2 at 0xec3c060, so in this build it does no visible work.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_xfpt4i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c0a0
  **Inferred.** An 8-byte leaf with a bare return at 0xec3c0a0 and no call, memory access or branch. The v0 value at that return is unknown. It has the same shape as gl_i_xfpt2 at 0xec3c060, so in this build it does no visible work.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_xfpt4s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c0b0
  **Inferred.** An 8-byte leaf with a bare return at 0xec3c0b0 and no call, memory access or branch. The v0 value at that return is unknown. It has the same shape as gl_i_xfpt2 at 0xec3c060, so in this build it does no visible work.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_gl_scrrect` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c0c0
  **Inferred.** An 8-byte leaf with a bare return at 0xec3c0c0 and no call, memory access or branch. The v0 value at that return is unknown. Its name suggests a screen-rectangle entry, but the body is the same empty shape as gl_i_xfpt2, so in this build it does no visible work.
  Reviewed: 2026-11-12 (sonnet)

- `gl_c_cmov2s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3cf30
  **Inferred.** Role (from name): compile-time counterpart of the immediate-mode cmov routines. The branch at 0xec3cf54 tests the word at 0xecdd9b0. When that word is nonzero, the fall-through reaches gl_compile at 0xec3cf74 with a0 = 0x4, a1 = sp-48 (a pointer into its own stack frame) and a3 = its a1 at entry, and the routine returns gl_compile's result at 0xec3cf88. When the word is zero, the branch goes to 0xec3cf90 and the routine calls gl_intrptab_insert at 0xec3cf9c with a0 = 0xecd6b90, a1 and a2 as at entry and a3 = its a1 at entry. The facts do not show where control goes after that call.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_cmov2i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d050
  **Inferred.** Reads the flag word gl_inMoveDraw at 0xece8bf0 (lw at 0xec3d068). When the flag is nonzero it calls __iglooNCloseMoveDraw at 0xec3d084 with its four arguments unchanged. It then calls glRasterPos2i at 0xec3d094 with its first two arguments, calls saveCmov at 0xec3d0b8, and returns saveCmov's result at 0xec3d0cc.
  Reviewed: 2026-11-12 (sonnet)

- `gl_c_cmov2i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d0e0
  **Inferred.** Role (from name): compile-time counterpart of gl_i_cmov2i. The branch at 0xec3d104 tests the word at 0xecdd9b4. When that word is nonzero, the fall-through reaches gl_compile at 0xec3d124 with a0 = 0x6, a1 = sp-48 (a pointer into its own stack frame) and a3 = its a1 at entry, and the routine returns gl_compile's result at 0xec3d138. When the word is zero, the branch goes to 0xec3d140 and the routine calls gl_intrptab_insert at 0xec3d14c with a0 = 0xecd6ba0, a1 and a2 as at entry and a3 = its a1 at entry. The facts do not show where control goes after that call.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_cmov2` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d200
  **Inferred.** Reads the flag word gl_inMoveDraw at 0xece8bf0 (lw at 0xec3d218). When the flag is nonzero it calls __iglooNCloseMoveDraw at 0xec3d234 with its four arguments unchanged. It then calls glRasterPos2f at 0xec3d244, calls saveCmov at 0xec3d25c, and returns saveCmov's result at 0xec3d270. The arguments passed to glRasterPos2f are not resolved by the facts.
  Reviewed: 2026-11-12 (sonnet)

- `gl_c_cmov2` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d280
  **Inferred.** Role (from name): compile-time counterpart of gl_i_cmov2. The branch at 0xec3d2a4 tests the word at 0xecdd9b8. When that word is nonzero, the fall-through reaches gl_compile at 0xec3d2c4 with a0 = 0x6 and a1 = sp-48 (a pointer into its own stack frame), and the routine returns gl_compile's result at 0xec3d2d8. When the word is zero, the branch goes to 0xec3d2e0 and the routine calls gl_intrptab_insert at 0xec3d2ec with a0 = 0xecd6bb0 and a1, a2 and a3 as at entry. The facts do not show where control goes after that call.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_cmovs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d390
  **Inferred.** Reads the flag word gl_inMoveDraw at 0xece8bf0 (lw at 0xec3d3ac). When the flag is nonzero it calls __iglooNCloseMoveDraw at 0xec3d3c8 with its four arguments unchanged. It then calls glRasterPos3s at 0xec3d3dc with its first three arguments, calls saveCmov at 0xec3d408, and returns saveCmov's result at 0xec3d41c.
  Reviewed: 2026-11-12 (sonnet)

- `gl_c_cmovs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d430
  **Inferred.** Role (from name): compile-time counterpart of gl_i_cmovs. The branch at 0xec3d454 tests the word at 0xecdd9bc. When that word is nonzero, the fall-through reaches gl_compile at 0xec3d47c with a0 = 0x6, a1 = sp-64 (a pointer into its own stack frame), a2 as at entry and a fifth argument (a4) equal to its a1 at entry, and the routine returns gl_compile's result at 0xec3d490. When the word is zero, the branch goes to 0xec3d498 and the routine calls gl_intrptab_insert at 0xec3d4a8 with a0 = 0xecd6bc0, a1, a2 and a3 as at entry and a fifth argument (a4) equal to its a1 at entry. The facts do not show where control goes after that call.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_cmovi` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d570
  **Inferred.** Reads the flag word gl_inMoveDraw at 0xece8bf0 (lw at 0xec3d58c). When the flag is nonzero it calls __iglooNCloseMoveDraw at 0xec3d5a8 with its four arguments unchanged. It then calls glRasterPos3i at 0xec3d5bc with its first three arguments, calls saveCmov at 0xec3d5e8, and returns saveCmov's result at 0xec3d5fc.
  Reviewed: 2026-11-12 (sonnet)

- `gl_c_cmovi` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d610
  **Inferred.** Role (from name): compile-time counterpart of gl_i_cmovi. The branch at 0xec3d634 tests the word at 0xecdd9c0. When that word is nonzero, the fall-through reaches gl_compile at 0xec3d658 with a0 = 0x8, a1 = sp-64 (a pointer into its own stack frame), a2 as at entry and a fifth argument (a4) equal to its a1 at entry, and the routine returns gl_compile's result at 0xec3d66c. When the word is zero, the branch goes to 0xec3d674 and the routine calls gl_intrptab_insert at 0xec3d684 with a0 = 0xecd6bd0, a1, a2 and a3 as at entry and a fifth argument (a4) equal to its a1 at entry. The facts do not show where control goes after that call.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_cmov` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d740
  **Inferred.** Reads the flag word gl_inMoveDraw at 0xece8bf0 (lw at 0xec3d75c). When the flag is nonzero it calls __iglooNCloseMoveDraw at 0xec3d778 with its four arguments unchanged. It then calls glRasterPos3f at 0xec3d78c, calls saveCmov at 0xec3d7a4, and returns saveCmov's result at 0xec3d7b8. The arguments passed to glRasterPos3f are not resolved by the facts.
  Reviewed: 2026-11-12 (sonnet)

- `gl_c_cmov` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d7c0
  **Inferred.** Role (from name): compile-time counterpart of gl_i_cmov. The branch at 0xec3d7e8 tests the word at 0xecdd9c4. When that word is nonzero, the fall-through reaches gl_compile at 0xec3d80c with a0 = 0x8 and a1 = sp-64 (a pointer into its own stack frame), and the routine returns gl_compile's result at 0xec3d820. When the word is zero, the branch goes to 0xec3d828 and the routine calls gl_intrptab_insert at 0xec3d838 with a0 = 0xecd6be0 and a1, a2 and a3 as at entry. The facts do not show where control goes after that call.
  Reviewed: 2026-11-12 (sonnet)

- `__iglooMatCpack` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ec80
  **Inferred.** Role (from name): handles a packed material color. It stores four floats with swc1 at a0+0xc3c, a0+0xc38 and a0+0xc34 (0xec3ed78 to 0xec3ed84) and a0+0xc30 (0xec3ed90); the facts do not show what is stored. The branches at 0xec3eca8, 0xec3ecf4, 0xec3ed1c and 0xec3ed48 compare values against 0xff (unsigned), but the facts do not show which values or any scaling formula. It calls glMaterialfv at 0xec3ed8c with a0 = the word at a0+0xc4c, a1 = the word at a0+0xc48 and a2 = a0+0xc30, and returns its result at 0xec3ed9c. It also stores one word at +0x40 of the block that the absolute word at 0x1004 points to (sw at 0xec3eca4).
  Reviewed: 2026-11-12 (sonnet)

- `__iglooSetRgbColorProcsToNull` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ef40
  **Inferred.** Role (from name): clears the RGB color procedure slots in the context to null. It stores nine words: eight at a0+0x64 through a0+0x80 and one at a0+0xc44 (sw at 0xec3ef50 through 0xec3ef7c). The stored values are not in these facts. It loads the word at a0+0xc58, and the branch at 0xec3ef74 goes to 0xec3ef8c when that word is zero; the call to __iglooSetColorProcsLight at 0xec3ef94, with its four arguments unchanged, is on that zero-word path. The single return at 0xec3ef84 yields either that word or the callee's result.
  Reviewed: 2026-11-12 (sonnet)

- `__iglooSyncLmcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f130
  **Inferred.** Role (from name): resynchronizes light-model color state. It works on the color block at a0+0xc30, passed to glColor4fv at 0xec3f3ac, and on the mode word at a0+0xc40, which is compared with 0, 6 and 7 (unsigned bound checks at 0xec3f290, 0xec3f2e8 and 0xec3f3d0 and a compare against 6 at 0xec3f390 and 0xec3f404). Loads at 0xec3f298 and 0xec3f2f0 follow those bound checks; the facts do not show the jump tables or their targets. It calls __iglooGetGraphicsType at 0xec3f1b8 and compares the result with 3 at 0xec3f1c4 and with 4 at 0xec3f1d0. It calls __iglooSetEnable with a0 = 0xb57, the GL_COLOR_MATERIAL token, at 0xec3f184 (a1 = 0), 0xec3f434 (a1 = 1) and 0xec3f4f0 (a1 = 0). It calls glColorMaterial at 0xec3f424 with the words at a0+0xc4c and a0+0xc48 as its first two arguments. Several calls go through pointers whose targets the facts leave unresolved, so those calls are described by their argument slots only.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_colorf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f7a0
  **Inferred.** Calls through a function pointer in the global state block gl_wstatep. It loads the pointer at +0xb0 of that block (lw at 0xec3f7bc) and calls it at 0xec3f7c4 with a0 = the state pointer, a1 = the constant 0xa33d0, and a2 and a3 as at entry, then returns that call's result at 0xec3f7d4. The name suggests a four-float color setter, but the facts do not show which function sits in slot +0xb0 or what 0xa33d0 selects.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_RGBcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f8b0
  **Inferred.** Forwards its three arguments to a dispatch slot in the global state block gl_wstatep. It loads the function pointer at +0xa4 of that block (lw at 0xec3f8cc) and calls it with the state pointer and arguments 0 to 2 unchanged (jalr at 0xec3f8e0). The name suggests an RGB color setter. The callee is not resolved, so what it does with the color is open.
  Reviewed: 2026-11-12 (sonnet)

- `gl_n_RGBcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f9a0
  **Inferred.** Reads three 16-bit values from its argument at offsets +0, +2 and +4 (lh at 0xec3f9b8, 0xec3f9c0 and 0xec3f9c8). It passes them to the same +0xa4 dispatch slot of gl_wstatep that gl_i_RGBcolor uses (jalr at 0xec3f9d8), then returns its argument advanced by 8 (v0 = a0+8). The three 16-bit values match gl_i_RGBcolor's three value arguments; the callee is not resolved, so what it does with them is open.
  Reviewed: 2026-11-12 (sonnet)

- `gl_g_setshade` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3fa00
  **Inferred.** Forwards its four arguments unchanged to __GLcolor at 0xec3fa1c and returns that result at 0xec3fa2c. The name suggests a shade-model setter, but the body is only this forward and the facts do not show what __GLcolor does with the shade.
  Reviewed: 2026-11-12 (sonnet)
