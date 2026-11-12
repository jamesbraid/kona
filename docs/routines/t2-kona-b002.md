# Routine role statements, kona tier-2 batch 2

These statements come from rendered facts for 25 routines in `usr/gfx/arch/IGLOO32/libgl.so`: memory accesses, calls, branches and return values at fixed addresses. Names come from the inventory. The facts show what the code does, not what its callers mean by it, so every grade below is inferred. Where a fact is missing, the statement says so.

- `_pushattributes` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec32e60
  **Inferred.** Role (from name): saves attribute state; the facts do not show what each saved field holds. The routine loads `gl_wstatep` and the word at +276 (0x114) of that block and compares it with `gl_wstatep`+2560 at 0xec32e7c. When they are equal the branch goes to 0xec32fc4, the code that calls `gl_ErrorHandler` at 0xec32fd4 with a0 = 0x2f and a1 = 2. On the other path it calls `gl_dm_save` at 0xec32e9c with `gl_wstatep` as a0 and its own a1 to a3 passed through, runs a counted loop (backward branch at 0xec32f84) that loads and stores words, with a store at +0xe4 at 0xec32ef0, and calls `gl_set_drawfb` at 0xec32f94 with a0 = the +276 word plus 228 and a4 to a7 = that word plus 12, 20, 248 and 28. A store at +0x114 follows at 0xec32f98.
  Reviewed: 2026-11-12

- `_copy_unpushed_fbdata` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33000
  **Inferred.** A 12-byte leaf with no calls. It copies one word from a1+0x30 to a0+0x30 (the load at 0xec33000 and store at 0xec33008), so it moves a single field between two records. The name suggests framebuffer data, but the binary does not show which field that is.
  Reviewed: 2026-11-12

- `_popattributes` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33010
  **Inferred.** Role (from name): restores attribute state saved by the push routine; the facts do not show what is restored. It compares the word at `gl_wstatep`+276 with the address `gl_wstatep`+280 (branch at 0xec3302c), calls `_copy_unpushed_fbdata` at 0xec33048 and 0xec33060, stores at +0x114 at 0xec3304c, and calls `gl_ErrorHandler` at 0xec33098 with a0 = 0x30 and a1 = 2. Which compare result leads to the error call is not settled by the facts.
  Reviewed: 2026-11-12

- `_loadattribs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec330b0
  **Inferred.** Role (from name): loads attribute state. The facts show a 600-byte routine that compares fields of the two records passed in a0 and a1 and calls a setter where they differ; which record is old and which is new is inferred from the parallel loads. `gl_set_drawmode` is called at 0xec33100 (a0 = the word at a0+56) when the words at +56 differ (branch at 0xec330e8) or the words at +4 behind the +60 pointers differ (branch at 0xec330f8 is taken, skipping the call, when they are equal). `gl_set_displaymode` is called at 0xec3321c when the words at +72 differ (branch at 0xec33110). Branches at 0xec33128, 0xec33134 and 0xec33140 compare values built from the halfwords at +0x34 behind the +60 pointers (the facts do not resolve the compared values) and lead to `gl_backbuffer` at 0xec33230, `gl_frontbuffer` at 0xec33248 and `gl_zdraw` at 0xec3325c. Differences in the words at +4, +8, +0xc, +0x0 and +0x14 lead to `gl_setlinestyle` at 0xec33270, `gl_lsrepeat` at 0xec33280, `gl_setpattern` at 0xec33294, `gl_findfont` at 0xec332a4 and `gl_shademodel` at 0xec332b8. When the floats at +0x10 differ (bc1t at 0xec33168 is taken when equal) it stores a float at +0x10 at 0xec33178 and calls `__iglooLineWidth` at 0xec3319c, then queries `__iglooGetRenderMode` at 0xec331a8; if the result equals 0x1c01 (branch at 0xec331b4) it goes to 0xec332c8, which calls `glPassThrough` at 0xec332f8 with a2 = 5 and a3 = 0x3f. The routine ends with a tail call to `gl_dm_load` at 0xec33214 with the value of `gl_wstatep` as a0.
  Reviewed: 2026-11-12

- `gl_i_acbuf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33310
  **Inferred.** Role (from name): the immediate-mode accumulation-buffer entry; the `i` and `acbuf` come from the name. It loads the word at 0xece8bf0 and, when it is nonzero (branch at 0xec33330), calls `__iglooNCloseMoveDraw` at 0xec33340 with a0 to a3 passed through. It then calls `__igloo_acbuf` at 0xec33358 with its own a0 (the facts do not resolve a1 to a3 at that call) and returns that call's result.
  Reviewed: 2026-11-12

- `gl_c_acbuf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33370
  **Inferred.** Role (from name): the compile-mode accumulation-buffer entry. The word at 0xecdd8f0 is tested at 0xec33398. When it is nonzero the routine calls `gl_compile` at 0xec333b8 with a0 = 0x6 and a1 = a stack address, and returns that call's result at 0xec333d0. When it is zero the branch goes to 0xec333d8, where `gl_intrptab_insert` is called at 0xec333e0 with a0 = 0xecd67d8 and a1 to a3 passed through. The facts do not show what follows the insert call.
  Reviewed: 2026-11-12

- `gl_n_acbuf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33400
  **Inferred.** Role (from name): the named-mode accumulation-buffer entry. It loads the word at 0xece8bf0 and, when it is nonzero (branch at 0xec33424), calls `__iglooNCloseMoveDraw` at 0xec33430 with a0 to a3 passed through. It loads a float from a0+4 (0xec33440) and calls `__igloo_acbuf` at 0xec33444 with a0 = the word at [a0]. It returns a0+8, which suggests an 8-byte record at a0 that the routine steps past; the facts do not show how callers use the result.
  Reviewed: 2026-11-12

- `__igloo_acbuf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33470
  **Inferred.** Role (from name): the core accumulation-buffer routine, 892 bytes. It calls `__iglooGetGraphicsType` at 0xec33490 and `__iglooGetVisualInfo` at 0xec3349c, then tests its first argument against 0 to 5 in a branch chain (0xec3350c to 0xec3353c); the fall-through after the test against 5 calls `perror` at 0xec33548. The `gl_ErrorHandler` tail call at 0xec334f0, with a0 = 0x62 and a1 = 2, is on the fall-through side of the tests at 0xec334ac, 0xec334b8 and 0xec334c8 (words behind the +276 pointer and in the visual info); the facts do not say what the failing condition is. The cases call `glAccum` with a0 = 0x100 to 0x104, `glClear` with 0x200 at 0xec3361c and `glClearAccum` at 0xec33610. `__iglooIsEnabled` is called for 0xb71 at 0xec3371c; when its low byte is nonzero `__iglooSetEnable` is called with 0xb71 and 0 at 0xec33734, and a branch on s0 at 0xec33764 decides whether `__iglooSetEnable` is called with 0xb71 and 1 at 0xec33774. The enable 0xb71 matches GL_DEPTH_TEST in the public GL headers; that is an inference from the constant alone.
  Reviewed: 2026-11-12

- `__igloo_acbuf_hw` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec337f0
  **Inferred.** Role (from name): a hardware-path variant of the accumulation routine, 1432 bytes. It tests its first argument against 0 to 5 in the branch chain at 0xec33800 to 0xec33834; the fall-through after the test against 5 calls `gl_ErrorHandler` at 0xec33848 with a0 = 0x6e and a1 = 2. It loads and stores single floats at offsets +0x2f70 to +0x2f7c (the facts do not name the base). It calls `glAccum` with a0 = 0x100 to 0x104 and `glClear` with a0 = 0x200 at 0xec33b60. Comparisons with the float constants 0x3f800000 (1.0) and 0x43800000 (256.0) suggest a scale and clamp, but the facts do not give the scale.
  Reviewed: 2026-11-12

- `gl_i_pntsize` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33da0
  **Inferred.** Role (from name): the immediate-mode point size entry. It loads the word at 0xece8bf0 (load at 0xec33db8) and, when it is nonzero (branch at 0xec33dbc), calls `__iglooNCloseMoveDraw` at 0xec33dc8 with a0 to a3 passed through. It then calls `glPointSize` at 0xec33ddc with a0 = its own first argument and returns that call's result.
  Reviewed: 2026-11-12

- `gl_c_pntsize` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33e00
  **Inferred.** Role (from name): the compile-mode point size entry. The word at 0xecdd8f4 is tested at 0xec33e20. When it is nonzero the routine calls `gl_compile` at 0xec33e40 with a0 = 0x4 and a1 = a stack address, and returns that call's result at 0xec33e54. When it is zero the branch goes to 0xec33e5c, where `gl_intrptab_insert` is called at 0xec33e64 with a0 = 0xecd67e8 and a1 to a3 passed through. The facts do not show what follows the insert call.
  Reviewed: 2026-11-12

- `gl_n_pntsize` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33e80
  **Inferred.** Role (from name): the named-mode point size entry. When the word at 0xece8bf0 is nonzero (branch at 0xec33ea4) it calls `__iglooNCloseMoveDraw` at 0xec33eb0 with a0 to a3 passed through. It loads a halfword from [a0] (0xec33eb8) and calls `glPointSize` at 0xec33ec4; the facts do not resolve that call's arguments. It returns a0+4, which suggests a 4-byte record at a0 that the routine steps past; the facts do not show how callers use the result.
  Reviewed: 2026-11-12

- `gl_i_pntsizef` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33ef0
  **Inferred.** Role (from name): the immediate-mode float point size entry. When the word at 0xece8bf0 is nonzero (branch at 0xec33f10) it calls `__iglooNCloseMoveDraw` at 0xec33f1c with a0 to a3 passed through. It then calls `glPointSize` at 0xec33f2c; the facts do not resolve that call's arguments. It returns that call's result.
  Reviewed: 2026-11-12

- `gl_c_pntsizef` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33f50
  **Inferred.** Role (from name): the compile-mode float point size entry. The word at 0xecdd8f8 is tested at 0xec33f70. When it is nonzero the routine calls `gl_compile` at 0xec33f8c with a0 = 0x4 and a1 = a stack address, and returns that call's result at 0xec33fa0. When it is zero the branch goes to 0xec33fa8, where `gl_intrptab_insert` is called at 0xec33fb0 with a0 = 0xecd67f8 and a1 to a3 passed through. The facts do not show what follows the insert call.
  Reviewed: 2026-11-12

- `gl_n_pntsizef` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33fd0
  **Inferred.** Role (from name): the named-mode float point size entry. When the word at 0xece8bf0 is nonzero (branch at 0xec33ff4) it calls `__iglooNCloseMoveDraw` at 0xec34000 with a0 to a3 passed through. It calls `glPointSize` at 0xec3400c and the facts list a float load from [a0] at 0xec34010 right after that call; the call's argument registers are not resolved. It returns a0+4.
  Reviewed: 2026-11-12

- `gl_i_linewidth` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34030
  **Inferred.** Role (from name): the immediate-mode line width entry. When the word at 0xece8bf0 is nonzero (branch at 0xec34054) it calls `__iglooNCloseMoveDraw` at 0xec34060 with a0 to a3 passed through. It stores a float at +0x10 (0xec34084) after loads at +0x0 and +0x114, so the base is probably the +0x114 word of the `gl_wstatep` block; the facts do not name it. It calls `__iglooLineWidth` at 0xec34094 and `__iglooGetRenderMode` at 0xec340a0. When the render mode equals 0x1c01 (branch at 0xec340ac) it calls `glPassThrough` at 0xec340dc, where the facts list a0 = 0x1c01, a1 = 0x4 and a2 = 0x3f; a0 is also the constant compared at the branch, so which of those are arguments is open. The return value is the render-mode result or the `glPassThrough` result.
  Reviewed: 2026-11-12

- `gl_c_linewidth` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec340f0
  **Inferred.** Role (from name): the compile-mode line width entry. The word at 0xecdd8fc is tested at 0xec34110. When it is nonzero the routine calls `gl_compile` at 0xec34130 with a0 = 0x4 and a1 = a stack address, and returns that call's result at 0xec34144. When it is zero the branch goes to 0xec3414c, where `gl_intrptab_insert` is called at 0xec34154 with a0 = 0xecd6808 and a1 to a3 passed through. The facts do not show what follows the insert call.
  Reviewed: 2026-11-12

- `gl_n_linewidth` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34170
  **Inferred.** Role (from name): the named-mode line width entry. When the word at 0xece8bf0 is nonzero (branch at 0xec34194) it calls `__iglooNCloseMoveDraw` at 0xec341a0 with a0 to a3 passed through. It loads halfwords from [a0] (0xec341a8, 0xec341c4 and 0xec34228) and stores a float at +0x10 (0xec341c0) after loads at +0x0 and +0x114, so the base is probably the +0x114 word of the `gl_wstatep` block; the facts do not name it. A branch at 0xec341c8 tests the second halfword against zero. It calls `__iglooLineWidth` at 0xec341d8 and `__iglooGetRenderMode` at 0xec341e4. When the render mode equals 0x1c01 (branch at 0xec341f0) it calls `glPassThrough` at 0xec34230, where the facts list a1 = 0x1c01, a2 = the halfword at [a0], a3 = 0x4 and a4 = 0x3f; 0x1c01 is also the constant compared at the branch, so which of those are arguments is open. It returns a0+4 (return at 0xec34204). The facts leave the width field layout open.
  Reviewed: 2026-11-12

- `gl_i_linewidthf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34240
  **Inferred.** Role (from name): the immediate-mode float line width entry. When the word at 0xece8bf0 is nonzero (branch at 0xec34260) it calls `__iglooNCloseMoveDraw` at 0xec3426c with a0 to a3 passed through. It stores a float at +0x10 (0xec34294) after loads at +0x0 and +0x114, so the base is probably the +0x114 word of the `gl_wstatep` block; the facts do not name it. A float comparison branch sits at 0xec34290. It calls `__iglooLineWidth` at 0xec342a8 and `__iglooGetRenderMode` at 0xec342b4. When the render mode equals 0x1c01 (branch at 0xec342c0) it calls `glPassThrough` at 0xec34304, where the facts list a0 = 0x1c01, a2 = 0x5 and a3 = 0x3f; a0 is also the constant compared at the branch, so which of those are arguments is open. The return value is the render-mode result or the `glPassThrough` result.
  Reviewed: 2026-11-12

- `gl_c_linewidthf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34320
  **Inferred.** Role (from name): the compile-mode float line width entry. The word at 0xecdd900 is tested at 0xec34340. When it is nonzero the routine calls `gl_compile` at 0xec3435c with a0 = 0x4 and a1 = a stack address, and returns that call's result at 0xec34370. When it is zero the branch goes to 0xec34378, where `gl_intrptab_insert` is called at 0xec34380 with a0 = 0xecd6818 and a1 to a3 passed through. The facts do not show what follows the insert call.
  Reviewed: 2026-11-12

- `gl_n_linewidthf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec343a0
  **Inferred.** Role (from name): the named-mode float line width entry. When the word at 0xece8bf0 is nonzero (branch at 0xec343c4) it calls `__iglooNCloseMoveDraw` at 0xec343d0 with a0 to a3 passed through. It loads a float from [a0] (0xec343e0) and stores a float at +0x10 (0xec343e8) after loads at +0x0 and +0x114, so the base is probably the +0x114 word of the `gl_wstatep` block; the facts do not name it. It calls `__iglooLineWidth` at 0xec3440c and `__iglooGetRenderMode` at 0xec34418. When the render mode equals 0x1c01 (branch at 0xec34424) it calls `glPassThrough` at 0xec34470, where the facts list a0 = 0x1c01, a2 = 0x5 and a3 = 0x3f; a0 is also the constant compared at the branch, so which of those are arguments is open. It returns a0+4 (return at 0xec34438).
  Reviewed: 2026-11-12

- `_CallOpenGLCulling` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34480
  **Inferred.** Sets the cull face and enables culling. Each of three paths calls `glCullFace` with a value (0x408, 0x404 or 0x405, the public GL front-and-back, front and back enums) and then enables the token 0xb44 through `__iglooSetEnable` at 0xec344a4, 0xec344d4 or 0xec344f8. The final path at 0xec34510 disables 0xb44 with a value of 0. The token 0xb44 matches GL_CULL_FACE in the public headers, which is an inference from the constant.
  Reviewed: 2026-11-12

- `__gl_backface` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34520
  **Inferred.** Role (from name): sets back-face culling state; the facts leave open the value written back. It is a 108-byte routine that loads a halfword at `gl_wstatep`+0xbcc, tests a0 against zero at 0xec34544 (zero goes to 0xec34578), and stores a halfword back to +0xbcc at 0xec34550 or at 0xec34588. It calls `_CallOpenGLCulling` at 0xec34560 with a1 = its own a0; a0 is not resolved by the facts. The facts also list the state pointer in a3 and the halfword at +3020 in a5 at that call, but they are not the callee's first two arguments. The return at 0xec34570 gives that call's result.
  Reviewed: 2026-11-12

- `__gl_frontface` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34590
  **Inferred.** A 104-byte routine with the same shape as `__gl_backface`: it reads and stores the halfword at `gl_wstatep`+0xbcc and calls `_CallOpenGLCulling` at 0xec345cc, with different arguments. Its name suggests the front-face counterpart, and the facts agree with that only loosely.
  Reviewed: 2026-11-12

- `gl_i_backface` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34600
  **Inferred.** Role (from name): the immediate-mode back-face entry. It loads the word at 0xece8bf0 (load at 0xec34618) and, when it is nonzero (branch at 0xec3461c), calls `__iglooNCloseMoveDraw` at 0xec34628 with a0 to a3 passed through. It then calls `__gl_backface` at 0xec34638 with its first argument and returns that call's result.
  Reviewed: 2026-11-12
