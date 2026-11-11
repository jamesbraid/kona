# Routine role entries, kona tier-2 batch 1

These entries come from rendered facts for 25 routines: memory accesses, calls, branches and return values at fixed addresses. Names come from the inventory. The facts show what the code does, not what its callers intend, so every label is inferred. Where a fact is missing, the entry says so.

- `gl_i_xfpt2` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c060
  **Inferred.** An 8-byte leaf whose only instruction effect is the return at 0xec3c060: no call, no memory access and no branch. The value in v0 at that return is unknown from these facts. Its neighbours gl_i_xfpt2i, gl_i_xfpt2s, gl_i_xfpt4, gl_i_xfpt4i and gl_i_xfpt4s at 0xec3c070 to 0xec3c0b0 have the same 8-byte shape, so in this build the xfpt entries do no visible work.

- `gl_i_xfpt2i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c070
  **Inferred.** An 8-byte leaf with a bare return at 0xec3c070 and no call, memory access or branch. The v0 value at that return is unknown. It has the same shape as gl_i_xfpt2 at 0xec3c060, so in this build it does no visible work.

- `gl_i_xfpt2s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c080
  **Inferred.** An 8-byte leaf with a bare return at 0xec3c080 and no call, memory access or branch. The v0 value at that return is unknown. It has the same shape as gl_i_xfpt2 at 0xec3c060, so in this build it does no visible work.

- `gl_i_xfpt4` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c090
  **Inferred.** An 8-byte leaf with a bare return at 0xec3c090 and no call, memory access or branch. The v0 value at that return is unknown. It has the same shape as gl_i_xfpt2 at 0xec3c060, so in this build it does no visible work.

- `gl_i_xfpt4i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c0a0
  **Inferred.** An 8-byte leaf with a bare return at 0xec3c0a0 and no call, memory access or branch. The v0 value at that return is unknown. It has the same shape as gl_i_xfpt2 at 0xec3c060, so in this build it does no visible work.

- `gl_i_xfpt4s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c0b0
  **Inferred.** An 8-byte leaf with a bare return at 0xec3c0b0 and no call, memory access or branch. The v0 value at that return is unknown. It has the same shape as gl_i_xfpt2 at 0xec3c060, so in this build it does no visible work.

- `gl_i_gl_scrrect` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c0c0
  **Inferred.** An 8-byte leaf with a bare return at 0xec3c0c0 and no call, memory access or branch. The v0 value at that return is unknown. Its name suggests a screen-rectangle entry, but the body is the same empty shape as gl_i_xfpt2, so in this build it does no visible work.

- `gl_c_cmov2s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3cf30
  **Inferred.** Compile-time counterpart of the immediate-mode cmov routines, judging by its name. The branch at 0xec3cf54 tests the word at 0xecdd9b0. When that word is zero, the routine calls gl_intrptab_insert at 0xec3cf9c with the address 0xecd6b90 and the caller's arguments, then loops back to 0xec3cf5c. Otherwise it goes straight to gl_compile at 0xec3cf74 with op 0x4 and a 48-byte stack buffer at sp-48. It returns gl_compile's result at 0xec3cf88.

- `gl_i_cmov2i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d050
  **Inferred.** Reads the flag word gl_inMoveDraw at 0xece8bf0 (lw at 0xec3d068). When the flag is nonzero it calls __iglooNCloseMoveDraw at 0xec3d084 with its four arguments unchanged. It then calls glRasterPos2i at 0xec3d094 with its first two arguments, calls saveCmov at 0xec3d0b8, and returns saveCmov's result at 0xec3d0cc.

- `gl_c_cmov2i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d0e0
  **Inferred.** Compile-time counterpart of gl_i_cmov2i, judging by its name. The branch at 0xec3d104 tests the word at 0xecdd9b4. When that word is zero, the routine calls gl_intrptab_insert at 0xec3d14c with the address 0xecd6ba0 and the caller's arguments, then calls gl_compile at 0xec3d124 with op 0x6 and a 48-byte stack buffer at sp-48. It returns gl_compile's result at 0xec3d138. The flag-zero case is the only path with the insert, so a nonzero flag compiles without registering.

- `gl_i_cmov2` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d200
  **Inferred.** Reads the flag word gl_inMoveDraw at 0xece8bf0 (lw at 0xec3d218). When the flag is nonzero it calls __iglooNCloseMoveDraw at 0xec3d234 with its four arguments unchanged. It then calls glRasterPos2f at 0xec3d244, calls saveCmov at 0xec3d25c, and returns saveCmov's result at 0xec3d270. The arguments passed to glRasterPos2f are not resolved by the facts.

- `gl_c_cmov2` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d280
  **Inferred.** Compile-time counterpart of gl_i_cmov2, judging by its name. The branch at 0xec3d2a4 tests the word at 0xecdd9b8. When that word is zero, the routine calls gl_intrptab_insert at 0xec3d2ec with the address 0xecd6bb0 and the caller's arguments, then calls gl_compile at 0xec3d2c4 with op 0x6 and a 48-byte stack buffer at sp-48. It returns gl_compile's result at 0xec3d2d8.

- `gl_i_cmovs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d390
  **Inferred.** Reads the flag word gl_inMoveDraw at 0xece8bf0 (lw at 0xec3d3ac). When the flag is nonzero it calls __iglooNCloseMoveDraw at 0xec3d3c8 with its four arguments unchanged. It then calls glRasterPos3s at 0xec3d3dc with its first three arguments, calls saveCmov at 0xec3d408, and returns saveCmov's result at 0xec3d41c.

- `gl_c_cmovs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d430
  **Inferred.** Compile-time counterpart of gl_i_cmovs, judging by its name. The branch at 0xec3d454 tests the word at 0xecdd9bc. When that word is zero, the routine calls gl_intrptab_insert at 0xec3d4a8 with the address 0xecd6bc0 and the caller's arguments, then calls gl_compile at 0xec3d47c with op 0x6 and a 64-byte stack buffer at sp-64. It returns gl_compile's result at 0xec3d490.

- `gl_i_cmovi` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d570
  **Inferred.** Reads the flag word gl_inMoveDraw at 0xece8bf0 (lw at 0xec3d58c). When the flag is nonzero it calls __iglooNCloseMoveDraw at 0xec3d5a8 with its four arguments unchanged. It then calls glRasterPos3i at 0xec3d5bc with its first three arguments, calls saveCmov at 0xec3d5e8, and returns saveCmov's result at 0xec3d5fc.

- `gl_c_cmovi` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d610
  **Inferred.** Compile-time counterpart of gl_i_cmovi, judging by its name. The branch at 0xec3d634 tests the word at 0xecdd9c0. When that word is zero, the routine calls gl_intrptab_insert at 0xec3d684 with the address 0xecd6bd0 and the caller's arguments, then calls gl_compile at 0xec3d658 with op 0x8 and a 64-byte stack buffer at sp-64. It returns gl_compile's result at 0xec3d66c.

- `gl_i_cmov` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d740
  **Inferred.** Reads the flag word gl_inMoveDraw at 0xece8bf0 (lw at 0xec3d75c). When the flag is nonzero it calls __iglooNCloseMoveDraw at 0xec3d778 with its four arguments unchanged. It then calls glRasterPos3f at 0xec3d78c, calls saveCmov at 0xec3d7a4, and returns saveCmov's result at 0xec3d7b8. The arguments passed to glRasterPos3f are not resolved by the facts.

- `gl_c_cmov` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d7c0
  **Inferred.** Compile-time counterpart of gl_i_cmov, judging by its name. The branch at 0xec3d7e8 tests the word at 0xecdd9c4. When that word is zero, the routine calls gl_intrptab_insert at 0xec3d838 with the address 0xecd6be0 and the caller's arguments, then calls gl_compile at 0xec3d80c with op 0x8 and a 64-byte stack buffer at sp-64. It returns gl_compile's result at 0xec3d820.

- `__iglooMatCpack` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ec80
  **Inferred.** Packs a material color into four floats at a0+0xc30 through a0+0xc3c (swc1 at 0xec3ed78 to 0xec3ed90). The comparisons against 0xff in the branches from 0xec3eca8 to 0xec3ed54 suggest 8-bit color channels scaled to unit floats, but the scaling formula is not in these facts. It then calls glMaterialfv at 0xec3ed8c with face from a0+0xc4c, pname from a0+0xc48 and the float block as params. It also stores one word at +0x40 of the block that the absolute word at 0x1004 points to (0xec3eca4).

- `__iglooSetRgbColorProcsToNull` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ef40
  **Inferred.** Clears the RGB color procedure slots in the context: it stores to eight words from a0+0x64 to a0+0x80 and to a0+0xc44 (sw at 0xec3ef50 through 0xec3ef7c). The stored values are not in these facts, and the name says they are null. If the word at a0+0xc58 is nonzero it calls __iglooSetColorProcsLight at 0xec3ef94 with the same four arguments, and the return is that word or the callee's result.

- `__iglooSyncLmcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f130
  **Inferred.** Resynchronizes the light-model color state from the color block at a0+0xc30. It switches on the mode word at a0+0xc40 with the jump tables at 0xecd4154 (indirect jump at 0xec3f29c) and 0xecd4170 (at 0xec3f2f4), and reads the graphics type through __iglooGetGraphicsType at 0xec3f1b8, comparing it with 3 and 4 at 0xec3f1c4 and 0xec3f1d0. Enable changes go through __iglooSetEnable with token 0xb57, the GL_COLOR_MATERIAL token, at 0xec3f184, 0xec3f434 and 0xec3f4f0. It calls glColorMaterial at 0xec3f424 with a0+0xc4c and a0+0xc48, and glColor4fv at 0xec3f3ac on the block at a0+0xc30. Several calls go through pointers whose targets the facts leave unresolved, so those calls are described by their argument slots only.

- `gl_i_colorf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f7a0
  **Inferred.** Forwards its arguments to a dispatch table in the global state block gl_wstatep. It loads the function pointer at +0xb0 of that block (lw at 0xec3f7bc) and calls it with the state pointer, the constant 0xa33d0 and its arguments 2 and 3, after moving the float argument from f12 to f13. The name suggests a four-float color setter, but the facts do not show which function sits in slot +0xb0 or what 0xa33d0 selects.

- `gl_i_RGBcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f8b0
  **Inferred.** Forwards its three arguments to a dispatch slot in the global state block gl_wstatep. It loads the function pointer at +0xa4 of that block (lw at 0xec3f8cc) and calls it with the state pointer and arguments 0 to 2 unchanged (jalr at 0xec3f8e0). The name suggests an RGB color setter. The callee is not resolved, so what it does with the color is open.

- `gl_n_RGBcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f9a0
  **Inferred.** Reads three 16-bit values from its argument at offsets +0, +2 and +4 (lh at 0xec3f9b8, 0xec3f9c0 and 0xec3f9c8). It passes them to the same +0xa4 dispatch slot of gl_wstatep that gl_i_RGBcolor uses (jalr at 0xec3f9d8), then returns its argument advanced by 8 (v0 = a0+8). So this is the short-integer form of gl_i_RGBcolor; the callee is not resolved.

- `gl_g_setshade` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3fa00
  **Inferred.** Forwards its four arguments unchanged to __GLcolor at 0xec3fa1c and returns that result at 0xec3fa2c. The name suggests a shade-model setter, but the body is only this forward and the facts do not show what __GLcolor does with the shade.
