# Tier-2 routine roles, kona round 5 batch 3

Roles for nine routines of the IGLOO32 build of `libgl.so`, read from the rendered instruction facts at the cited addresses. Every entry is graded inferred: the facts show control flow, callees, loads and stores, but not the source-level meaning of the values involved.

- `endpt_cmplr` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3b410
  **Inferred.** Reduces the value held in s1 by 3600 while it is at least 0xe10 [@0xec3b44c taken] and raises it by 3600 while it is negative [@0xec3b468 taken], and does the same to s0 [@0xec3b48c taken] [@0xec3b4a8 taken]. It calls gl_sincos twice [call 1] [call 2]. It stores six words into the record at a0, at offsets 0x0 through 0x14 [@0xec3b540] [@0xec3b564] [@0xec3b56c] [@0xec3b5a4] [@0xec3b5b0] [@0xec3b5c0], and returns a0 + 24 [@0xec3b5c8].
  Role (from facts): fills six words of the record at a0, three of them after the first gl_sincos call and the rest around the second [call 1] [call 2] [@0xec3b540].
  Reviewed: 2026-11-12
- `saveCmov` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ce80
  **Inferred.** Loads the pointer in gl_wstatep [@0xec3ce84] and writes into the block it points to: three 4-byte words at +0x2e64, +0x2e60 and +0x2e5c [@0xec3ce88] [@0xec3ce8c] [@0xec3ce90], and one byte at +0x2e58 [@0xec3ce9c]. It returns that pointer [@0xec3ce98]. The facts do not show the stored values.
  Role (from facts): writes four fields of the global state block at gl_wstatep and returns the block's address [@0xec3ce98].
  Reviewed: 2026-11-12
- `gl_c_cmov2s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3cf30
  **Inferred.** Tests the word at 0xecdd9b0 [@0xec3cf54]. When it is zero [@0xec3cf54 taken zero] it calls gl_intrptab_insert with a0 = 0xecd6b90 [call 2, @0xec3cf54 taken], then calls gl_compile with a0 = 0x4 [call 1]. When it is nonzero [@0xec3cf54 fall nonzero] the insert is skipped and gl_compile runs with a0 = 0x4 [call 1]. It returns the result of gl_compile [@0xec3cf88].
  Role (from facts): when the flag word is zero, registers a record first [call 2, @0xec3cf54 taken], then compiles with a0 = 0x4 [call 1].
  Reviewed: 2026-11-12
- `gl_n_cmov2s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3cfc0
  **Inferred.** Tests the word at 0xece8bf0, which the facts name gl_inMoveDraw [@0xec3cfe4]. When it is nonzero [@0xec3cfe4 fall nonzero] it calls __iglooNCloseMoveDraw with its entry arguments [call 1]. Both paths then call glRasterPos2s with the halfwords at a0 and a0 + 2 [call 2] and then call saveCmov [call 3]. It returns a0 + 4 [@0xec3d040].
  Role (from facts): when gl_inMoveDraw is set, closes the move-draw state [call 1, @0xec3cfe4 fall], then calls glRasterPos2s on the two halfwords at a0 [call 2] and saveCmov [call 3].
  Reviewed: 2026-11-12
- `gl_c_cmov2i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d0e0
  **Inferred.** Tests the word at 0xecdd9b4 [@0xec3d104]. When it is zero [@0xec3d104 taken zero] it calls gl_intrptab_insert with a0 = 0xecd6ba0 [call 2, @0xec3d104 taken], then calls gl_compile with a0 = 0x6 [call 1]. When it is nonzero [@0xec3d104 fall nonzero] the insert is skipped and gl_compile runs with a0 = 0x6 [call 1]. It returns the result of gl_compile [@0xec3d138].
  Role (from facts): when the flag word is zero, registers a record first [call 2, @0xec3d104 taken], then compiles with a0 = 0x6 [call 1].
  Reviewed: 2026-11-12
- `gl_n_cmov2i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d170
  **Inferred.** Tests the word at 0xece8bf0, which the facts name gl_inMoveDraw [@0xec3d194]. When it is nonzero [@0xec3d194 fall nonzero] it calls __iglooNCloseMoveDraw [call 1]. Both paths then call glRasterPos2i with the words at a0 and a0 + 4 [call 2] and then call saveCmov [call 3]. It returns a0 + 8 [@0xec3d1f0].
  Role (from facts): when gl_inMoveDraw is set, closes the move-draw state [call 1, @0xec3d194 fall], then calls glRasterPos2i on the two words at a0 [call 2] and saveCmov [call 3].
  Reviewed: 2026-11-12
- `gl_c_cmov2` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d280
  **Inferred.** Tests the word at 0xecdd9b8 [@0xec3d2a4]. When it is zero [@0xec3d2a4 taken zero] it calls gl_intrptab_insert with a0 = 0xecd6bb0 [call 2, @0xec3d2a4 taken], then calls gl_compile with a0 = 0x6 [call 1]. When it is nonzero [@0xec3d2a4 fall nonzero] the insert is skipped and gl_compile runs with a0 = 0x6 [call 1]. It returns the result of gl_compile [@0xec3d2d8].
  Role (from facts): when the flag word is zero, registers a record first [call 2, @0xec3d2a4 taken], then compiles with a0 = 0x6 [call 1].
  Reviewed: 2026-11-12
- `gl_c_cmovs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d430
  **Inferred.** Tests the word at 0xecdd9bc [@0xec3d454]. When it is zero [@0xec3d454 taken zero] it calls gl_intrptab_insert with a0 = 0xecd6bc0 [call 2, @0xec3d454 taken], then calls gl_compile with a0 = 0x6 [call 1]. When it is nonzero [@0xec3d454 fall nonzero] the insert is skipped and gl_compile runs with a0 = 0x6 [call 1]. It returns the result of gl_compile [@0xec3d490].
  Role (from facts): when the flag word is zero, registers a record first [call 2, @0xec3d454 taken], then compiles with a0 = 0x6 [call 1].
  Reviewed: 2026-11-12
- `gl_n_cmovs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d4d0
  **Inferred.** Tests the word at 0xece8bf0, which the facts name gl_inMoveDraw [@0xec3d4f4]. When it is nonzero [@0xec3d4f4 fall nonzero] it calls __iglooNCloseMoveDraw [call 1]. Both paths then call glRasterPos3s with the halfwords at a0, a0 + 2 and a0 + 4 [call 2] and then call saveCmov [call 3]. It returns a0 + 8 [@0xec3d55c].
  Role (from facts): when gl_inMoveDraw is set, closes the move-draw state [call 1, @0xec3d4f4 fall], then calls glRasterPos3s on the three halfwords at a0 [call 2] and saveCmov [call 3].
  Reviewed: 2026-11-12
