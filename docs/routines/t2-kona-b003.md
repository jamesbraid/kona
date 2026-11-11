# Tier-2 routine roles, kona batch 3

Roles for the 25 targets at ranks 76 to 100 of the ranked tier-2 list. Each one comes from the rendered instruction facts at the cited addresses, not from a read of the raw disassembly, so every entry is graded inferred. The renderer and grader accepted all 25 entries, and none was rejected.

- `gl_c_backface` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34650
  **Inferred.** A flag at 0xecdd904 chooses between two paths. One calls gl_compile (0xecb5010) at 0xec3468c with a0 = 0x4, and the other skips that call. Either way gl_intrptab_insert (0xec5f9f0) is called at 0xec346b0 with the block at 0xecd6828, and the return value is the gl_compile result. The facts do not show what the registered record does later, so that stays open.
- `gl_n_backface` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec346d0
  **Inferred.** Reads the flag at 0xece8bf0 (gl_inMoveDraw). When the flag is set it calls __iglooNCloseMoveDraw (0xec92d80) with its arguments passed through. It then loads the word at a0 and calls __gl_backface (0xec34520) with that value under the conditional call at 0xec3470c, and it returns a0 + 4.
- `gl_i_frontface` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34730
  **Inferred.** Reads the flag at 0xece8bf0 (gl_inMoveDraw). The beq at 0xec3474c skips the __iglooNCloseMoveDraw call (0xec92d80) when the flag is zero. It then calls __gl_frontface (0xec34590) with a0 under the conditional call at 0xec34768, and returns that callee's result.
- `gl_c_frontface` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34780
  **Inferred.** A flag at 0xecdd908 chooses between a gl_compile (0xecb5010) call at 0xec347bc with a0 = 0x4 and no such call. gl_intrptab_insert (0xec5f9f0) is then called at 0xec347e0 with the block at 0xecd6838. The shape matches gl_c_backface, but the facts do not say what replay of the record does.
- `gl_n_frontface` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34800
  **Inferred.** Reads the flag at 0xece8bf0 (gl_inMoveDraw) and, when it is set, calls __iglooNCloseMoveDraw (0xec92d80). It loads the word at a0 and calls __gl_frontface (0xec34590) with that value under the conditional call at 0xec3483c. It returns a0 + 4.
- `gl_writemask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34860
  **Inferred.** Loads the state pointer from gl_wstatep and reads the word at its +0x2f50 field. It passes that word as the second argument to __iglooIndexMask (0xecb7830), with arguments two and three passed through, and returns that callee's result. The first argument is not in the facts, so what the mask means stays open.
- `gl_i_writemask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec348b0
  **Inferred.** Reads the flag at 0xece8bf0 (gl_inMoveDraw). The beq at 0xec348cc skips the __iglooNCloseMoveDraw call (0xec92d80) when the flag is zero. It then calls gl_writemask (0xec34860) with a0 under the conditional call at 0xec348e8, and returns that callee's result.
- `gl_c_writemask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34900
  **Inferred.** A flag at 0xecdd90c chooses between a gl_compile (0xecb5010) call at 0xec34940 with a0 = 0x4 and no such call. gl_intrptab_insert (0xec5f9f0) is called at 0xec34964 with the block at 0xecd6848. The facts do not show what the registered record does at replay.
- `gl_n_writemask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34980
  **Inferred.** Reads the flag at 0xece8bf0 (gl_inMoveDraw) and, when it is set, calls __iglooNCloseMoveDraw (0xec92d80). It loads the 16-bit value at a0 and calls gl_writemask (0xec34860) with it under the conditional call at 0xec349bc, and it returns a0 + 4.
- `__gl_RGBwritemask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec349e0
  **Inferred.** Calls __iglooColorMask (0xecb7900) with a3 = 0x1 and returns that callee's result. Its other three arguments are not traced to the entry registers in the facts, so it may pass them through, but the facts do not settle that.
- `gl_i_RGBwritemask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34a20
  **Inferred.** Reads the flag at 0xece8bf0 (gl_inMoveDraw). The beq at 0xec34a3c skips the __iglooNCloseMoveDraw call (0xec92d80) when the flag is zero. It then calls __gl_RGBwritemask (0xec349e0) with arguments zero to two passed through, under the conditional call at 0xec34a68.
- `gl_c_RGBwritemask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34a80
  **Inferred.** A flag at 0xecdd910 chooses between a gl_compile (0xecb5010) call at 0xec34acc with a0 = 0x6 and no such call. The call passes arguments one and two and a fourth argument from entry register a1. gl_intrptab_insert (0xec5f9f0) is then called at 0xec34af8 with the block at 0xecd6858. The facts do not show what replay does with the record.
- `gl_n_RGBwritemask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34b20
  **Inferred.** Reads the flag at 0xece8bf0 (gl_inMoveDraw) and, when it is set, calls __iglooNCloseMoveDraw (0xec92d80). It loads three 16-bit values from a0, +2 and +4, and passes them to __gl_RGBwritemask (0xec349e0) under the conditional call at 0xec34b64. It returns a0 + 8.
- `gl_g_gRGBmask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34b90
  **Inferred.** Calls __iglooGetColorMask (0xecb79d0) with a stack buffer at sp-48, then stores 16-bit values to the pointers in a0, a1 and a2. Three branches test values from the callee's output before each store. The facts do not show which channel each pointer receives, so the names of the outputs stay open.
- `__gl_wmpack` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34c30
  **Inferred.** Calls __iglooColorMask (0xecb7900) with a4 = 0xadf40 and returns that callee's result. The other arguments are not traced to the entry registers in the facts, so the role of the 0xadf40 constant is only partly settled.
- `gl_i_wmpack` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34c90
  **Inferred.** Reads the flag at 0xece8bf0 (gl_inMoveDraw). The beq at 0xec34cac skips the __iglooNCloseMoveDraw call (0xec92d80) when the flag is zero. It then calls __gl_wmpack (0xec34c30) with a0 under the conditional call at 0xec34cc8, and returns that callee's result.
- `gl_c_wmpack` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34ce0
  **Inferred.** A flag at 0xecdd914 chooses between a gl_compile (0xecb5010) call at 0xec34d1c with a0 = 0x6 and no such call. gl_intrptab_insert (0xec5f9f0) is called at 0xec34d40 with the block at 0xecd6868. The facts do not show what the registered record does later.
- `gl_n_wmpack` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34d60
  **Inferred.** Reads the flag at 0xece8bf0 (gl_inMoveDraw) and, when it is set, calls __iglooNCloseMoveDraw (0xec92d80). It loads the word at a0 and calls __gl_wmpack (0xec34c30) with it under the conditional call at 0xec34d9c. It returns a0 + 8.
- `gl_shademodel` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34dc0
  **Inferred.** Reads state through gl_wstatep and the globals at 0xece8bf8 (gl_iglooGouraudCIDepthCue) and 0x1004, then calls __iglooShadeModel (0xecb7a10) up to three times. The first call passes 0x1d01 and the later calls pass 0x1d00. The public OpenGL registry names these GL_SMOOTH and GL_FLAT. Each call is guarded by a test of the state, so the exact conditions stay partly open.
- `gl_i_shademodel` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34e70
  **Inferred.** Reads the flag at 0xece8bf0 (gl_inMoveDraw). The beq at 0xec34e8c skips the __iglooNCloseMoveDraw call (0xec92d80) when the flag is zero. It then calls gl_shademodel (0xec34dc0) with a0 under the conditional call at 0xec34ea8, and returns that callee's result.
- `gl_c_shademodel` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34ec0
  **Inferred.** A flag at 0xecdd918 chooses between a gl_compile (0xecb5010) call at 0xec34efc with a0 = 0x4 and no such call. gl_intrptab_insert (0xec5f9f0) is called at 0xec34f20 with the block at 0xecd6878. The facts do not show what replay does with the record.
- `gl_n_shademodel` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34f40
  **Inferred.** Reads the flag at 0xece8bf0 (gl_inMoveDraw) and, when it is set, calls __iglooNCloseMoveDraw (0xec92d80). It loads the word at a0 and calls gl_shademodel (0xec34dc0) with it under the conditional call at 0xec34f7c, and it returns a0 + 4.
- `gl_find` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34fa0
  **Inferred.** Loops over a chain of records, loading about six words through pointers that the facts do not trace. It compares one loaded value with the entry argument in a1 (bne at 0xec34fd4 loops back to 0xec34fc4) and another with the argument in a4 (beq at 0xec34fdc). It returns a record pointer, or 0 at 0xec35000 when nothing matches. The meaning of the match keys stays open.
- `gl_insert` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec35010
  **Inferred.** Loads the word at a1 + 4 and then stores to a1 + 0 and to a second address the facts do not trace. The pattern is consistent with linking a record in after the one at a1, but the facts do not trace the base of the second store, so that role is only partly settled. It returns a value the facts do not trace.
- `gl_remove` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec35030
  **Inferred.** Calls gl_find (0xec34fa0) with all four argument registers passed through. If the result is zero it returns 0 at 0xec3509c. Otherwise it loads the word at the found pointer, stores to an address the facts do not trace, and returns the found pointer. The facts do not show how the unlinked record is freed or reused.
