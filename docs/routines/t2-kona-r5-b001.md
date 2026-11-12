# Routine role statements, kona tier-2 round r5 batch 1

These statements come from rendered facts for 25 routines in `usr/gfx/arch/IGLOO32/libgl.so`: memory accesses, calls, branches and return values at fixed addresses. Names come from the inventory and are not used as evidence for any role below. Every grade is inferred, because the facts show what the code does and not what its callers mean by it.

- `gl_n_acbuf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33400
  **Inferred.** The word at 0xece8bf0 is loaded [@0xec33418]. Role (from facts): when that word is nonzero [@0xec33424 fall nonzero] the routine calls `__iglooNCloseMoveDraw` [@0xec33430] first, then calls `__igloo_acbuf` [@0xec33444]. It returns a0+8 [@0xec3345c].
  Reviewed: 2026-11-12

- `__igloo_acbuf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33470
  **Inferred.** The first argument is kept in s0 [@0xec3350c], and a chain of equality tests on s0 selects the case [@0xec33514, @0xec3351c, @0xec33528, @0xec33530, @0xec3353c]. Role (from facts): a switch on the first argument [@0xec3350c] that calls `glAccum` [@0xec33690], `glClear` [@0xec3361c] and `glClearAccum` [@0xec33610], and calls `__iglooSetEnable` with 0xb71 [@0xec33734, @0xec33774] around one of them.
  Reviewed: 2026-11-12

- `__igloo_acbuf_hw` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec337f0
  **Inferred.** The routine tests a0 against 0 through 5 [@0xec33800, @0xec3380c, @0xec33818, @0xec33824, @0xec3382c, @0xec33834]. It stores floats into the state block at +0x2f74 and +0x2f78 [@0xec33918, @0xec33904]. Role (from facts): a switch on the first argument [@0xec33800] that writes float state to the `gl_wstatep` block [@0xec33918] and calls `glAccum` [@0xec33d78].
  Reviewed: 2026-11-12

- `gl_i_pntsize` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33da0
  **Inferred.** The word at 0xece8bf0 is loaded [@0xec33db8]. Role (from facts): when that word is nonzero [@0xec33dbc fall nonzero] the routine calls `__iglooNCloseMoveDraw` [@0xec33dc8], then calls `glPointSize` [@0xec33ddc] and returns its result [@0xec33dec].
  Reviewed: 2026-11-12

- `gl_c_pntsize` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33e00
  **Inferred.** The word at 0xecdd8f4 is tested at 0xec33e20 [@0xec33e20]. Role (from facts): when that word is zero [@0xec33e20 taken zero] the routine calls `gl_intrptab_insert` [@0xec33e64]; on both sides it calls `gl_compile` with a0 = 0x4 [@0xec33e40] and returns its result [@0xec33e54].
  Reviewed: 2026-11-12

- `gl_n_pntsize` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33e80
  **Inferred.** The word at 0xece8bf0 is loaded [@0xec33e98], and a halfword is read through a0 [@0xec33eb8]. Role (from facts): when the flag word is nonzero [@0xec33ea4 fall nonzero] the routine calls `__iglooNCloseMoveDraw` [@0xec33eb0], then calls `glPointSize` [@0xec33ec4]. It returns a0+4 [@0xec33edc].
  Reviewed: 2026-11-12

- `gl_i_pntsizef` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33ef0
  **Inferred.** The word at 0xece8bf0 is loaded [@0xec33f08]. Role (from facts): when that word is nonzero [@0xec33f10 fall nonzero] the routine calls `__iglooNCloseMoveDraw` [@0xec33f1c], then calls `glPointSize` [@0xec33f2c] and returns its result [@0xec33f3c].
  Reviewed: 2026-11-12

- `gl_c_pntsizef` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33f50
  **Inferred.** The word at 0xecdd8f8 is tested at 0xec33f70 [@0xec33f70]. Role (from facts): when that word is zero [@0xec33f70 taken zero] the routine calls `gl_intrptab_insert` [@0xec33fb0]; on both sides it calls `gl_compile` with a0 = 0x4 [@0xec33f8c] and returns its result [@0xec33fa0].
  Reviewed: 2026-11-12

- `gl_n_pntsizef` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33fd0
  **Inferred.** The word at 0xece8bf0 is loaded [@0xec33fe8], and a float is read through a0 [@0xec34010]. Role (from facts): when the flag word is nonzero [@0xec33ff4 fall nonzero] the routine calls `__iglooNCloseMoveDraw` [@0xec34000], then calls `glPointSize` [@0xec3400c]. It returns a0+4 [@0xec34024].
  Reviewed: 2026-11-12

- `gl_i_linewidth` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34030
  **Inferred.** The word at 0xece8bf0 is loaded [@0xec34048]. The routine stores a float at +0x10 of the record found at +0x114 of the state block [@0xec34084] and reads the render mode with `__iglooGetRenderMode` [@0xec340a0]. Role (from facts): when the flag word is nonzero [@0xec34054 fall nonzero] the routine calls `__iglooNCloseMoveDraw` [@0xec34060], then calls `__iglooLineWidth` [@0xec34094].
  Reviewed: 2026-11-12

- `gl_c_linewidth` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec340f0
  **Inferred.** The word at 0xecdd8fc is tested at 0xec34110 [@0xec34110]. Role (from facts): when that word is zero [@0xec34110 taken zero] the routine calls `gl_intrptab_insert` [@0xec34154]; on both sides it calls `gl_compile` with a0 = 0x4 [@0xec34130] and returns its result [@0xec34144].
  Reviewed: 2026-11-12

- `gl_n_linewidth` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34170
  **Inferred.** The word at 0xece8bf0 is loaded [@0xec34188]. The routine stores a float at +0x10 of the record found at +0x114 of the state block [@0xec341c0] and reads the render mode with `__iglooGetRenderMode` [@0xec341e4]. Role (from facts): when the flag word is nonzero [@0xec34194 fall nonzero] the routine calls `__iglooNCloseMoveDraw` [@0xec341a0], then calls `__iglooLineWidth` [@0xec341d8]. It returns a0+4 [@0xec34204].
  Reviewed: 2026-11-12

- `gl_i_linewidthf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34240
  **Inferred.** The word at 0xece8bf0 is loaded [@0xec34258]. The routine stores a float at +0x10 of the record found at +0x114 of the state block [@0xec34294] and reads the render mode with `__iglooGetRenderMode` [@0xec342b4]. Role (from facts): when the flag word is nonzero [@0xec34260 fall nonzero] the routine calls `__iglooNCloseMoveDraw` [@0xec3426c], then calls `__iglooLineWidth` [@0xec342a8].
  Reviewed: 2026-11-12

- `gl_c_linewidthf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34320
  **Inferred.** The word at 0xecdd900 is tested at 0xec34340 [@0xec34340]. Role (from facts): when that word is zero [@0xec34340 taken zero] the routine calls `gl_intrptab_insert` [@0xec34380]; on both sides it calls `gl_compile` with a0 = 0x4 [@0xec3435c] and returns its result [@0xec34370].
  Reviewed: 2026-11-12

- `gl_n_linewidthf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec343a0
  **Inferred.** The word at 0xece8bf0 is loaded [@0xec343b8], and a float is read through a0 [@0xec343e0]. Role (from facts): when the flag word is nonzero [@0xec343c4 fall nonzero] the routine calls `__iglooNCloseMoveDraw` [@0xec343d0], then calls `__iglooLineWidth` [@0xec3440c]. It returns a0+4 [@0xec34438].
  Reviewed: 2026-11-12

- `__gl_backface` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34520
  **Inferred.** The routine loads a halfword from +0xbcc of the state block [@0xec3453c]. It stores halfwords to the same field [@0xec34550, @0xec34588]. Role (from facts): it loads a halfword from the state block [@0xec3453c], stores to that field [@0xec34550], and calls `_CallOpenGLCulling` [@0xec34560].
  Reviewed: 2026-11-12

- `gl_i_backface` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34600
  **Inferred.** The word at 0xece8bf0 is loaded [@0xec34618]. Role (from facts): when that word is nonzero [@0xec3461c fall nonzero] the routine calls `__iglooNCloseMoveDraw` [@0xec34628], then calls `__gl_backface` [@0xec34638] and returns its result [@0xec34648].
  Reviewed: 2026-11-12

- `gl_c_backface` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34650
  **Inferred.** The word at 0xecdd904 is tested at 0xec34670 [@0xec34670]. Role (from facts): when that word is zero [@0xec34670 taken zero] the routine calls `gl_intrptab_insert` [@0xec346b0]; on both sides it calls `gl_compile` with a0 = 0x4 [@0xec3468c] and returns its result [@0xec346a0].
  Reviewed: 2026-11-12

- `gl_c_frontface` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34780
  **Inferred.** The word at 0xecdd908 is tested at 0xec347a0 [@0xec347a0]. Role (from facts): when that word is zero [@0xec347a0 taken zero] the routine calls `gl_intrptab_insert` [@0xec347e0]; on both sides it calls `gl_compile` with a0 = 0x4 [@0xec347bc] and returns its result [@0xec347d0].
  Reviewed: 2026-11-12

- `gl_c_writemask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34900
  **Inferred.** The word at 0xecdd90c is tested at 0xec34920 [@0xec34920]. Role (from facts): when that word is zero [@0xec34920 taken zero] the routine calls `gl_intrptab_insert` [@0xec34964]; on both sides it calls `gl_compile` with a0 = 0x4 [@0xec34940] and returns its result [@0xec34954].
  Reviewed: 2026-11-12

- `gl_c_wmpack` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34ce0
  **Inferred.** The word at 0xecdd914 is tested at 0xec34d00 [@0xec34d00]. Role (from facts): when that word is zero [@0xec34d00 taken zero] the routine calls `gl_intrptab_insert` [@0xec34d40]; on both sides it calls `gl_compile` with a0 = 0x6 [@0xec34d1c] and returns its result [@0xec34d30].
  Reviewed: 2026-11-12

- `gl_c_shademodel` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34ec0
  **Inferred.** The word at 0xecdd918 is tested at 0xec34ee0 [@0xec34ee0]. Role (from facts): when that word is zero [@0xec34ee0 taken zero] the routine calls `gl_intrptab_insert` [@0xec34f20]; on both sides it calls `gl_compile` with a0 = 0x4 [@0xec34efc] and returns its result [@0xec34f10].
  Reviewed: 2026-11-12

- `gl_insert` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec35010
  **Inferred.** The routine loads the word at a1 +0x4 [@0xec35010]. It loads a word through a base the facts do not resolve [@0xec35020], stores that word at a1 +0x0 [@0xec35024] and stores through a base the facts do not resolve [@0xec3502c]. The return value is not resolved [@0xec35028]. Role (from facts): it loads the word at a1 +0x4 [@0xec35010] and stores into a1 +0x0 [@0xec35024]; the stored word comes from the load through the computed base [@0xec35020], not from a1 +0x4.
  Reviewed: 2026-11-12

- `_clk` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec35810
  **Inferred.** The routine loads a pointer through the word at 0xece8bec [@0xec35830] and reads further fields of that record [@0xec35838, @0xec35848]. Role (from facts): it calls `_GLinitgl` [@0xec35820], then calls `XChangeKeyboardControl` [@0xec35844] and `XFlush` [@0xec35860] on a pointer taken from that record, and returns the result of `XFlush` [@0xec3586c].
  Reviewed: 2026-11-12

- `gl_g_clkon` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec35880
  **Inferred.** Role (from facts): it calls `_clk` [@0xec358a0] with a0 = 0x64 and returns its result [@0xec358b0].
  Reviewed: 2026-11-12
