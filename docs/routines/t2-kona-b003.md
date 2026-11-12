# Tier-2 routine roles, kona batch 3

Roles for the 25 targets at ranks 76 to 100 of the ranked tier-2 list. Each one comes from the rendered instruction facts at the cited addresses, not from a read of the raw disassembly, so every entry is graded inferred. The renderer and grader accepted all 25 entries, and none was rejected.

- `gl_c_backface` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34650
  **Inferred.** The beq at 0xec34670 tests the flag at 0xecdd904. When it is zero, gl_intrptab_insert (0xec5f9f0) is called at 0xec346b0 with the block at 0xecd6828 before the path joins the gl_compile (0xecb5010) call at 0xec3468c with a0 = 0x4. When the flag is nonzero, only the gl_compile call runs. The return value is the gl_compile result. The facts do not show what the registered record does later.
  Reviewed: 2026-11-12
- `gl_n_backface` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec346d0
  **Inferred.** Reads the flag at 0xece8bf0 (gl_inMoveDraw). When the flag is set it calls __iglooNCloseMoveDraw (0xec92d80) with its arguments passed through. It then loads the word at a0 and calls __gl_backface (0xec34520) with that value at 0xec3470c, which runs on both paths of the beq, and it returns a0 + 4.
  Reviewed: 2026-11-12
- `gl_i_frontface` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34730
  **Inferred.** Reads the flag at 0xece8bf0 (gl_inMoveDraw). The beq at 0xec3474c skips the __iglooNCloseMoveDraw call (0xec92d80) when the flag is zero. It then calls __gl_frontface (0xec34590) with a0 at 0xec34768, which runs on both paths of the beq, and returns that callee's result.
  Reviewed: 2026-11-12
- `gl_c_frontface` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34780
  **Inferred.** The beq at 0xec347a0 tests the flag at 0xecdd908. When it is zero, gl_intrptab_insert (0xec5f9f0) is called at 0xec347e0 with the block at 0xecd6838 before the path joins the gl_compile (0xecb5010) call at 0xec347bc with a0 = 0x4. When the flag is nonzero, only the gl_compile call runs. The shape matches gl_c_backface, but the facts do not say what replay of the record does.
  Reviewed: 2026-11-12
- `gl_n_frontface` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34800
  **Inferred.** Reads the flag at 0xece8bf0 (gl_inMoveDraw) and, when it is set, calls __iglooNCloseMoveDraw (0xec92d80). It loads the word at a0 and calls __gl_frontface (0xec34590) with that value at 0xec3483c, which runs on both paths of the beq. It returns a0 + 4.
  Reviewed: 2026-11-12
- `gl_writemask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34860
  **Inferred.** Loads the state pointer from gl_wstatep and reads the word at its +0x2f50 field. It passes that word as the second argument to __iglooIndexMask (0xecb7830), with arguments two and three passed through, and returns that callee's result. The first argument is not in the facts, so what the mask means stays open.
  Reviewed: 2026-11-12
- `gl_i_writemask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec348b0
  **Inferred.** Reads the flag at 0xece8bf0 (gl_inMoveDraw). The beq at 0xec348cc skips the __iglooNCloseMoveDraw call (0xec92d80) when the flag is zero. It then calls gl_writemask (0xec34860) with a0 at 0xec348e8, which runs on both paths of the beq, and returns that callee's result.
  Reviewed: 2026-11-12
- `gl_c_writemask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34900
  **Inferred.** The beq at 0xec34920 tests the flag at 0xecdd90c. When it is zero, gl_intrptab_insert (0xec5f9f0) is called at 0xec34964 with the block at 0xecd6848 before the path joins the gl_compile (0xecb5010) call at 0xec34940 with a0 = 0x4. When the flag is nonzero, only the gl_compile call runs. The facts do not show what the registered record does at replay.
  Reviewed: 2026-11-12
- `gl_n_writemask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34980
  **Inferred.** Reads the flag at 0xece8bf0 (gl_inMoveDraw) and, when it is set, calls __iglooNCloseMoveDraw (0xec92d80). It loads the 16-bit value at a0 and calls gl_writemask (0xec34860) with it at 0xec349bc, which runs on both paths of the beq, and it returns a0 + 4.
  Reviewed: 2026-11-12
- `__gl_RGBwritemask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec349e0
  **Inferred.** Calls __iglooColorMask (0xecb7900) with a3 = 0x1 and returns that callee's result. Its other three arguments are not traced to the entry registers in the facts, so what they hold stays open.
  Reviewed: 2026-11-12
- `gl_i_RGBwritemask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34a20
  **Inferred.** Reads the flag at 0xece8bf0 (gl_inMoveDraw). The beq at 0xec34a3c skips the __iglooNCloseMoveDraw call (0xec92d80) when the flag is zero. It then calls __gl_RGBwritemask (0xec349e0) with arguments zero to two passed through, at 0xec34a68, which runs on both paths of the beq.
  Reviewed: 2026-11-12
- `gl_c_RGBwritemask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34a80
  **Inferred.** The beq at 0xec34aa4 tests the flag at 0xecdd910. When it is zero, gl_intrptab_insert (0xec5f9f0) is called at 0xec34af8 with the block at 0xecd6858 before the path joins the gl_compile (0xecb5010) call at 0xec34acc. That call has a0 = 0x6 and a1 = a stack buffer at sp-64. The facts also show a2 and a4 holding entry registers a2 and a1 at the call, but the facts do not show that gl_compile reads them as arguments. When the flag is nonzero, only the gl_compile call runs. The facts do not show what replay does with the record.
  Reviewed: 2026-11-12
- `gl_n_RGBwritemask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34b20
  **Inferred.** Reads the flag at 0xece8bf0 (gl_inMoveDraw) and, when it is set, calls __iglooNCloseMoveDraw (0xec92d80). It loads three 16-bit values from a0, +2 and +4, and passes them to __gl_RGBwritemask (0xec349e0) at 0xec34b64, which runs on both paths of the beq. It returns a0 + 8.
  Reviewed: 2026-11-12
- `gl_g_gRGBmask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34b90
  **Inferred.** Calls __iglooGetColorMask (0xecb79d0) with a stack buffer at sp-48, then stores 16-bit values to the pointers in a0, a1 and a2. Three branches test values from the callee's output before each store. The facts do not show which channel each pointer receives, so the names of the outputs stay open.
  Reviewed: 2026-11-12
- `__gl_wmpack` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34c30
  **Inferred.** Calls __iglooColorMask (0xecb7900) and returns that callee's result. The facts show a4 = 0xadf40 at the call, but the facts do not show that the callee reads a4 as an argument. The other arguments are not traced to the entry registers in the facts, so what the callee receives stays open.
  Reviewed: 2026-11-12
- `gl_i_wmpack` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34c90
  **Inferred.** Reads the flag at 0xece8bf0 (gl_inMoveDraw). The beq at 0xec34cac skips the __iglooNCloseMoveDraw call (0xec92d80) when the flag is zero. It then calls __gl_wmpack (0xec34c30) with a0 at 0xec34cc8, which runs on both paths of the beq, and returns that callee's result.
  Reviewed: 2026-11-12
- `gl_c_wmpack` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34ce0
  **Inferred.** The beq at 0xec34d00 tests the flag at 0xecdd914. When it is zero, gl_intrptab_insert (0xec5f9f0) is called at 0xec34d40 with the block at 0xecd6868 before the path joins the gl_compile (0xecb5010) call at 0xec34d1c with a0 = 0x6. When the flag is nonzero, only the gl_compile call runs. The facts do not show what the registered record does later.
  Reviewed: 2026-11-12
- `gl_n_wmpack` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34d60
  **Inferred.** Reads the flag at 0xece8bf0 (gl_inMoveDraw) and, when it is set, calls __iglooNCloseMoveDraw (0xec92d80). It loads the word at a0 and calls __gl_wmpack (0xec34c30) with it at 0xec34d9c, which runs on both paths of the beq. It returns a0 + 8.
  Reviewed: 2026-11-12
- `gl_shademodel` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34dc0
  **Inferred.** Reads state through gl_wstatep and the globals at 0xece8bf8 (gl_iglooGouraudCIDepthCue) and 0x1004, then calls __iglooShadeModel (0xecb7a10) from three call sites, and each path reaches at most one of them. The call at 0xec34df4 passes 0x1d01, and the calls at 0xec34e34 and 0xec34e60 pass 0x1d00. The public OpenGL registry names these GL_SMOOTH and GL_FLAT. The call at 0xec34df4 is taken when a0 is nonzero. When a0 is zero, the call at 0xec34e60 is taken if the word at 0xece8bf8 is zero. Otherwise the call at 0xec34e34 is taken when the word at [[0x1004]+20]+16 is nonzero or the word at +0xb58 of the gl_wstatep state is not 1, and neither call runs when both of those tests fail. What the three tests mean stays open.
  Reviewed: 2026-11-12
- `gl_i_shademodel` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34e70
  **Inferred.** Reads the flag at 0xece8bf0 (gl_inMoveDraw). The beq at 0xec34e8c skips the __iglooNCloseMoveDraw call (0xec92d80) when the flag is zero. It then calls gl_shademodel (0xec34dc0) with a0 at 0xec34ea8, which runs on both paths of the beq, and returns that callee's result.
  Reviewed: 2026-11-12
- `gl_c_shademodel` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34ec0
  **Inferred.** The beq at 0xec34ee0 tests the flag at 0xecdd918. When it is zero, gl_intrptab_insert (0xec5f9f0) is called at 0xec34f20 with the block at 0xecd6878 before the path joins the gl_compile (0xecb5010) call at 0xec34efc with a0 = 0x4. When the flag is nonzero, only the gl_compile call runs. The facts do not show what replay does with the record.
  Reviewed: 2026-11-12
- `gl_n_shademodel` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34f40
  **Inferred.** Reads the flag at 0xece8bf0 (gl_inMoveDraw) and, when it is set, calls __iglooNCloseMoveDraw (0xec92d80). It loads the word at a0 and calls gl_shademodel (0xec34dc0) with it at 0xec34f7c, which runs on both paths of the beq, and it returns a0 + 4.
  Reviewed: 2026-11-12
- `gl_find` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34fa0
  **Inferred.** Loops over a chain of records, loading about six words through pointers that the facts do not trace. The bne at 0xec34fd4 compares a loaded value with a1 and loops back to 0xec34fc4 while they differ. The beq at 0xec34fdc compares the current record pointer with a4, a register the facts do not trace to an entry argument, and when they differ the routine makes three stores (0xec34fe8, 0xec34ff0, 0xec34ff4) before returning. It returns a record pointer, or 0 at 0xec35000 when nothing matches. The meaning of the match keys and of the stores stays open.
  Reviewed: 2026-11-12
- `gl_insert` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec35010
  **Inferred.** Loads the word at a1 + 4, loads a second word through a pointer the facts do not trace, stores that second word at a1 + 0, and stores to an address the facts do not trace. Role (from name): inserts a record. The facts do not trace the base of the second store, so how the record is linked stays open. It returns a value the facts do not trace.
  Reviewed: 2026-11-12
- `gl_remove` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec35030
  **Inferred.** Calls gl_find (0xec34fa0) with all four argument registers passed through. If the result is zero it returns 0 at 0xec3509c. Otherwise it loads the word at the found pointer, stores to an address the facts do not trace, and returns the found pointer. The facts do not show what happens to the found record afterwards.
  Reviewed: 2026-11-12
