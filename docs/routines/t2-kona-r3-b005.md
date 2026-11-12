# Routine role entries, kona tier-2 round 3 batch 5

These entries come from rendered facts for 25 routines in the IGLOO32 `libgl.so` build: memory accesses, calls, branches and return values at fixed addresses. Names come from the symbol table. The gl_i, gl_c and gl_n prefixes are read from the names, not the facts. Every label is inferred. Where a branch or flag is not settled by the facts, the entry says so.

- `__gl_clipplane` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ca70
  **Inferred.** Shared clip-plane helper, called from gl_i_clipplane at 0xec3cc08 and gl_n_clipplane at 0xec3cd34. It reads the context pointer gl_wstatep at 0xec3ca98 and branches on its a1 argument against 0, 1 and 2 (beq at 0xec3caa8, 0xec3caa0 and 0xec3ca94). The paths call __iglooSetEnable at 0xec5cb70 with a1 = 0x0 and 0x1 and a5=0xa6100 (0xec3cac8 and 0xec3cb24), and glClipPlane at 0xec3cbb0 with a stack array at sp-64. Four lwc1 loads at +0x0 to +0xc (0xec3cb74 to 0xec3cb98) precede the glClipPlane call; the facts do not show their base register or destination, so where the plane words come from is not settled. The facts do not say what a1 values 0 to 2 mean or what 0xa6100 selects.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_clipplane` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3cbc0
  **Inferred.** Immediate-mode wrapper for the clip-plane call. It tests the flag gl_inMoveDraw at 0xece8bf0 (lw at 0xec3cbd8). When the flag is set it calls __iglooNCloseMoveDraw at 0xec92d80 first (jalr at 0xec3cbf0). It then calls __gl_clipplane at 0xec3ca70 with a0 to a2 passed through (bgezall at 0xec3cc08) and returns that result.
  Reviewed: 2026-11-12 (sonnet)

- `gl_c_clipplane` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3cc20
  **Inferred.** Compile-mode wrapper for the clip-plane call. It calls gl_compile at 0xecb5010 with opcode 0xe, a stack buffer at sp-80 and a2 (jalr at 0xec3cc7c), and returns that result at 0xec3cc8c. That call is on the path where a1 differs from 2 (beq at 0xec3cc54 is taken when a1 == 2). It also calls gl_intrptab_insert at 0xec5f9f0 with slot 0xecd6b80 (jalr at 0xec3ccd0). Four lwc1 loads at +0x0 to +0xc (0xec3cc94 to 0xec3ccac) sit on the a1 == 2 path; the facts do not show their base register. A word at 0xecdd9ac (beq at 0xec3cc38) selects the path, and the facts do not name that word.
  Reviewed: 2026-11-12 (sonnet)

- `gl_n_clipplane` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ccf0
  **Inferred.** Clip-plane wrapper that takes its plane from a pointer. It tests gl_inMoveDraw at 0xece8bf0 (lw at 0xec3cd08) and, when set, calls __iglooNCloseMoveDraw at 0xec92d80 (jalr at 0xec3cd20). It then passes the words at a0 and a0+4 and the pointer a0+8 to __gl_clipplane at 0xec3ca70 (bgezall at 0xec3cd34). It returns a0+24, the argument pointer advanced past a 24-byte record.
  Reviewed: 2026-11-12 (sonnet)

- `gl_g_closeobj` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3cd60
  **Inferred.** Closes the open display-list object, using the header pointer gl_openobjhdr (lw at 0xec3cd78) and the word at 0xecdf830, named gl_objchunksize. When the header is null it returns the constant 0xecdf830 (return at 0xec3cde8). Otherwise it compares the chunk size shifted left by 2 with the word at header+12 (signed compare at 0xec3cda0), and a further test at 0xec3cda8 chooses between the stores and the gl_SetImmediateMode call and the __GLcompactify call at 0xec3cdf4. Three word stores (sw +0x0 at 0xec3cdb4, 0xec3cdd4 and 0xec3cde0) appear on these paths; the facts do not show their target addresses or values, so which of gl_openobjhdr, gl_openobj and gl_replacemode they write is not settled. It calls gl_SetImmediateMode at 0xec795b0 with a0=1 (jalr at 0xec3cdb8) and __GLcompactify with a0 loaded from 0xecdf838 and a1 the header pointer (jalr at 0xec3cdf4). What __GLcompactify does is not in the facts.
  Reviewed: 2026-11-12 (sonnet)

- `gl_g_isobj` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ce10
  **Inferred.** Object test for the name in a0. It calls gl_findhash at 0xec78fa0 with a0, a1=-1 and a2 and a3 passed through (jalr at 0xec3ce2c). It returns 0 when the lookup gives null (beq at 0xec3ce34) and 0 when the word at entry +0x1c is zero (beq at 0xec3ce40). Otherwise it returns 1 (return at 0xec3ce50).
  Reviewed: 2026-11-12 (sonnet)

- `saveCmov` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ce80
  **Inferred.** Stores three float words and one byte into the state block that gl_wstatep points to: swc1 to +0x2e5c, +0x2e60 and +0x2e64, and sb to +0x2e58 (0xec3ce88 to 0xec3ce9c). The source registers of the stores are not in the facts, so the saved value is not settled. Role (from name): the facts do not say what is saved; it is called by the raster-position wrappers in this batch. It returns the pointer loaded from gl_wstatep.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_cmov2s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3cea0
  **Inferred.** Immediate-mode wrapper for the two-short raster position call. It tests gl_inMoveDraw at 0xece8bf0 (lw at 0xec3ceb8). When the flag is set it calls __iglooNCloseMoveDraw at 0xec92d80 (jalr at 0xec3ced4). It passes a0 and a1 to glRasterPos2s (jalr at 0xec3cee4), then calls saveCmov at 0xec3ce80 (bgezall at 0xec3cf08) and returns its result.
  Reviewed: 2026-11-12 (sonnet)

- `gl_c_cmov2s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3cf30
  **Inferred.** Compile-mode wrapper for the two-short raster position call. It tests the word at 0xecdd9b0 (beq at 0xec3cf54). The compile path calls gl_compile at 0xecb5010 with opcode 0x4 and a stack buffer at sp-48 (jalr at 0xec3cf74). It calls gl_intrptab_insert at 0xec5f9f0 with slot 0xecd6b90 and a1 and a2 from entry (jalr at 0xec3cf9c). The facts do not settle which path runs for each flag value, so the role is only partly settled.
  Reviewed: 2026-11-12 (sonnet)

- `gl_n_cmov2s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3cfc0
  **Inferred.** The name says this wrapper is not immediate-mode, and the facts do not show that. It takes its position from memory. It tests gl_inMoveDraw at 0xece8bf0 (lw at 0xec3cfd8) and, when set, calls __iglooNCloseMoveDraw at 0xec92d80 (jalr at 0xec3cff0). It reads two halfwords from a0 at +0x0 and +0x2 and passes them to glRasterPos2s (jalr at 0xec3d000). It calls saveCmov at 0xec3ce80 (bgezall at 0xec3d028) and returns a0+4.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_cmov2i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d050
  **Inferred.** Immediate-mode wrapper for the two-int raster position call. It tests gl_inMoveDraw at 0xece8bf0 (lw at 0xec3d068) and, when set, calls __iglooNCloseMoveDraw at 0xec92d80 (jalr at 0xec3d084). It passes a0 and a1 to glRasterPos2i (jalr at 0xec3d094), then calls saveCmov at 0xec3ce80 (bgezall at 0xec3d0b8) and returns its result.
  Reviewed: 2026-11-12 (sonnet)

- `gl_c_cmov2i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d0e0
  **Inferred.** Compile-mode wrapper for the two-int raster position call. It tests the word at 0xecdd9b4 (beq at 0xec3d104). It calls gl_compile at 0xecb5010 with opcode 0x6 and a stack buffer at sp-48 (jalr at 0xec3d124), and gl_intrptab_insert at 0xec5f9f0 with slot 0xecd6ba0 (jalr at 0xec3d14c). The facts do not settle which path runs for each flag value, so the role is only partly settled.
  Reviewed: 2026-11-12 (sonnet)

- `gl_n_cmov2i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d170
  **Inferred.** The name says this wrapper is not immediate-mode, and the facts do not show that. It is for the two-int raster position call, with the position read from memory. It tests gl_inMoveDraw at 0xece8bf0 (lw at 0xec3d188) and, when set, calls __iglooNCloseMoveDraw at 0xec92d80 (jalr at 0xec3d1a0). It reads two words from a0 at +0x0 and +0x4 and passes them to glRasterPos2i (jalr at 0xec3d1b0). It calls saveCmov at 0xec3ce80 (bgezall at 0xec3d1d8) and returns a0+8.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_cmov2` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d200
  **Inferred.** Immediate-mode wrapper for the two-float raster position call. It tests gl_inMoveDraw at 0xece8bf0 (lw at 0xec3d218) and, when set, calls __iglooNCloseMoveDraw at 0xec92d80 (jalr at 0xec3d234). It calls glRasterPos2f (jalr at 0xec3d244), whose argument registers the facts do not show, then calls saveCmov at 0xec3ce80 (bgezall at 0xec3d25c) and returns its result.
  Reviewed: 2026-11-12 (sonnet)

- `gl_c_cmov2` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d280
  **Inferred.** Compile-mode wrapper for the two-float raster position call. It tests the word at 0xecdd9b8 (beq at 0xec3d2a4). It calls gl_compile at 0xecb5010 with opcode 0x6 and a stack buffer at sp-48 (jalr at 0xec3d2c4), and gl_intrptab_insert at 0xec5f9f0 with slot 0xecd6bb0 (jalr at 0xec3d2ec). The facts do not settle which path runs for each flag value, so the role is only partly settled.
  Reviewed: 2026-11-12 (sonnet)

- `gl_n_cmov2` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d310
  **Inferred.** The name says this wrapper is not immediate-mode, and the facts do not show that. It is for the two-float raster position call, with the position read from memory. It tests gl_inMoveDraw at 0xece8bf0 (lw at 0xec3d328) and, when set, calls __iglooNCloseMoveDraw at 0xec92d80 (jalr at 0xec3d340). It does lwc1 loads at +0x4 (0xec3d34c) and +0x0 (0xec3d354) around the glRasterPos2f call (jalr at 0xec3d350) and at 0xec3d364 and 0xec3d36c; the facts do not show their base or destination registers, so the arguments of glRasterPos2f are not settled. It calls saveCmov at 0xec3ce80 (bgezall at 0xec3d368) and returns a0+8.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_cmovs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d390
  **Inferred.** Immediate-mode wrapper for the three-short raster position call. It tests gl_inMoveDraw at 0xece8bf0 (lw at 0xec3d3ac) and, when set, calls __iglooNCloseMoveDraw at 0xec92d80 (jalr at 0xec3d3c8). It passes a0 to a2 to glRasterPos3s (jalr at 0xec3d3dc), then calls saveCmov at 0xec3ce80 (bgezall at 0xec3d408) and returns its result.
  Reviewed: 2026-11-12 (sonnet)

- `gl_c_cmovs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d430
  **Inferred.** Compile-mode wrapper for the three-short raster position call. It tests the word at 0xecdd9bc (beq at 0xec3d454). It calls gl_compile at 0xecb5010 with opcode 0x6 and a stack buffer at sp-64 (jalr at 0xec3d47c), and gl_intrptab_insert at 0xec5f9f0 with slot 0xecd6bc0 (jalr at 0xec3d4a8). The facts do not settle which path runs for each flag value, so the role is only partly settled.
  Reviewed: 2026-11-12 (sonnet)

- `gl_n_cmovs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d4d0
  **Inferred.** The name says this wrapper is not immediate-mode, and the facts do not show that. It is for the three-short raster position call, with the position read from memory. It tests gl_inMoveDraw at 0xece8bf0 (lw at 0xec3d4e8) and, when set, calls __iglooNCloseMoveDraw at 0xec92d80 (jalr at 0xec3d500). It reads three halfwords from a0 at +0x0, +0x2 and +0x4 and passes them to glRasterPos3s (jalr at 0xec3d514). It calls saveCmov at 0xec3ce80 (bgezall at 0xec3d544) and returns a0+8.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_cmovi` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d570
  **Inferred.** Immediate-mode wrapper for the three-int raster position call. It tests gl_inMoveDraw at 0xece8bf0 (lw at 0xec3d58c) and, when set, calls __iglooNCloseMoveDraw at 0xec92d80 (jalr at 0xec3d5a8). It passes a0 to a2 to glRasterPos3i (jalr at 0xec3d5bc), then calls saveCmov at 0xec3ce80 (bgezall at 0xec3d5e8) and returns its result.
  Reviewed: 2026-11-12 (sonnet)

- `gl_c_cmovi` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d610
  **Inferred.** Compile-mode wrapper for the three-int raster position call. It tests the word at 0xecdd9c0 (beq at 0xec3d634). It calls gl_compile at 0xecb5010 with opcode 0x8 and a stack buffer at sp-64 (jalr at 0xec3d658), and gl_intrptab_insert at 0xec5f9f0 with slot 0xecd6bd0 (jalr at 0xec3d684). The facts do not settle which path runs for each flag value, so the role is only partly settled.
  Reviewed: 2026-11-12 (sonnet)

- `gl_n_cmovi` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d6a0
  **Inferred.** The name says this wrapper is not immediate-mode, and the facts do not show that. It is for the three-int raster position call, with the position read from memory. It tests gl_inMoveDraw at 0xece8bf0 (lw at 0xec3d6b8) and, when set, calls __iglooNCloseMoveDraw at 0xec92d80 (jalr at 0xec3d6d0). It reads three words from a0 at +0x0, +0x4 and +0x8 and passes them to glRasterPos3i (jalr at 0xec3d6e4). It calls saveCmov at 0xec3ce80 (bgezall at 0xec3d714) and returns a0+12.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_cmov` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d740
  **Inferred.** Immediate-mode wrapper for the three-float raster position call. It tests gl_inMoveDraw at 0xece8bf0 (lw at 0xec3d75c) and, when set, calls __iglooNCloseMoveDraw at 0xec92d80 (jalr at 0xec3d778). It calls glRasterPos3f (jalr at 0xec3d78c), whose argument registers the facts do not show, then calls saveCmov at 0xec3ce80 (bgezall at 0xec3d7a4) and returns its result.
  Reviewed: 2026-11-12 (sonnet)

- `gl_c_cmov` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d7c0
  **Inferred.** Compile-mode wrapper for the three-float raster position call. It tests the word at 0xecdd9c4 (beq at 0xec3d7e8). It calls gl_compile at 0xecb5010 with opcode 0x8 and a stack buffer at sp-64 (jalr at 0xec3d80c), and gl_intrptab_insert at 0xec5f9f0 with slot 0xecd6be0 (jalr at 0xec3d838). The facts do not settle which path runs for each flag value, so the role is only partly settled.
  Reviewed: 2026-11-12 (sonnet)

- `gl_n_cmov` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3d860
  **Inferred.** The name says this wrapper is not immediate-mode, and the facts do not show that. It is for the three-float raster position call, with the position read from memory. It tests gl_inMoveDraw at 0xece8bf0 (lw at 0xec3d878) and, when set, calls __iglooNCloseMoveDraw at 0xec92d80 (jalr at 0xec3d890). It does lwc1 loads at +0x8 and +0x4 (0xec3d89c, 0xec3d8a0) and +0x0 (0xec3d8a8) around the glRasterPos3f call (jalr at 0xec3d8a4), and further lwc1 loads at 0xec3d8b0, 0xec3d8b8 and 0xec3d8c0; the facts do not show their base or destination registers, so the arguments of glRasterPos3f are not settled. It calls saveCmov at 0xec3ce80 (bgezall at 0xec3d8bc) and returns a0+12.
  Reviewed: 2026-11-12 (sonnet)
