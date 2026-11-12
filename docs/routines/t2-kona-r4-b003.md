# Tier-2 routine roles, kona round 4 batch 3

Roles for 25 routines of the kona `libgl.so` build, from the rendered instruction facts at the cited addresses. Every entry is graded inferred, because the rendered facts show control flow and callees but not the source-level meaning of the values involved. Where the facts leave a point open, the entry says so.

- `freecurve` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec41770
  **Inferred.** Calls __iglooFree (0xec5f4a0) at 0xec4178c with the entry a1 as its first and second arguments and a2 and a3 passed through, then returns that callee's result at 0xec4179c. It is a 52-byte free wrapper. The facts do not say what the freed pointer refers to.
  Reviewed: 2026-11-12
- `drawcurve` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec417b0
  **Inferred.** Reads the state at gl_wstatep, runs gl_findbasis (0xec428d0) at 0xec417ec, and brackets the evaluation with __iglooSetEnable (0xec5cb70) calls using enable 0xd98, once with 1 at 0xec41800 and once with 0 at 0xec41924. Between them it calls glMap1f at 0xec418a8, glMapGrid1f at 0xec418c0 and glEvalMesh1 with mode 0x1b01 at 0xec418d4. A word at [0x1004]+0x30 is compared with 0x404, 0x400, 0x401 and 0x408 to decide whether glFlush (0xec41940) runs. What those four constants select is not in the facts.
  Reviewed: 2026-11-12
- `gl_g_crvn` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec41950
  **Inferred.** Calls __iglooMalloc (0xec5f350) with a0 << 4 bytes at 0xec4197c. When a0 is positive (branch at 0xec41988) it copies float fields from the entry array into the block in a loop. It then passes a0 and the block to rcrvn at 0xec41a74 and frees the block with __iglooFree at 0xec41a84. The branch at 0xec41988 skips only the copy loop: when a0 is not positive, the rcrvn call and the free still run. Role (from name): temporary-array helper for curve data. The facts show a malloc, a copy, a call and a free, not what rcrvn does with the block. The facts do not show the field layout of the 16-byte record.
  Reviewed: 2026-11-12
- `freecurves` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec41aa0
  **Inferred.** Frees the two pointers held at +0xc and +0x10 of the structure in a1, skipping each one that is null (branches at 0xec41abc and 0xec41ad8), and then frees the structure itself with the call at 0xec41aec. It returns at 0xec41afc the result of that last __iglooFree call.
  Reviewed: 2026-11-12
- `drawcurves` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec41b10
  **Inferred.** Multi-curve form of drawcurve. It takes a count from the halfword at a1+8 (loop exit at 0xec41b90), runs gl_findbasis (0xec428d0) at 0xec41b50, and wraps the work in __iglooSetEnable (0xec5cb70) calls with enable 0xd98 at 0xec41b6c and 0xec41ce4. Per curve it calls glMap1f at 0xec41c68, glMapGrid1f at 0xec41c7c and glEvalMesh1 at 0xec41c90, and it uses the same switch on [0x1004]+0x30 as drawcurve before glFlush at 0xec41ccc. The facts do not say what the count's unit is.
  Reviewed: 2026-11-12
- `crv_multmatrix` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec41d30
  **Inferred.** A pair of loops over float values: one compares a3 with a2+16 (branch at 0xec41da0) and the other compares a7 with 4 (branch at 0xec41db0). The function body has 8 lwc1 and 4 swc1 accesses. The name suggests a 4x4 matrix product, but the facts do not show the arithmetic, so whether it multiplies or copies stays open.
  Reviewed: 2026-11-12
- `gl_curveit` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec41dc0
  **Inferred.** Reads the state at gl_wstatep and branches at 0xec41e00 on the halfword at state +0x108: when it equals 2 the code goes to 0xec42098. On the other path it fetches a matrix with __iglooGetMatrix (0xecb8e70) using id 0xba6 at 0xec41e10, loads a matrix with __iglooLoadMatrix (0xecb8940) at 0xec41e20, and emits vertices with glVertex3f at 0xec41e50 and glVertex4f at 0xec41e9c, 0xec41f50 and 0xec41fe8. The path at 0xec42098 calls __iglooGetMatrix with 0xba6 at 0xec420a0 and with 0xba7 at 0xec420b0, then crv_multmatrix (0xec41d30) at 0xec420c4. The facts do not show where that path continues. a0 is tested with blez at 0xec41e58 and its low bit at 0xec41e70, where a clear bit skips the glVertex4f at 0xec41e9c. The meaning of the value 2 at +0x108 and the callees of the unnamed calls at 0xec41e2c and 0xec4207c are not in the facts.
  Reviewed: 2026-11-12
- `gl_i_curveit` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec420e0
  **Inferred.** Role (from name): immediate-mode entry for a curve (the i_ prefix). When the move-draw flag at 0xece8bf0 is set (beq at 0xec420fc), it calls __iglooNCloseMoveDraw (0xec92d80) at 0xec42108. It then calls gl_curveit (0xec41dc0) at 0xec42118 with its a0 and returns that result. The facts do not show the other arguments passed to gl_curveit.
  Reviewed: 2026-11-12
- `gl_c_curveit` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec42130
  **Inferred.** The name suggests a compile-time variant of the curve entry. The beq at 0xec42150 tests the flag at 0xecdda14. When it is zero, gl_intrptab_insert (0xec5f9f0) is called at 0xec42194 with the block at 0xecd7138 before the path joins the gl_compile call at 0xec42170 with a0 = 0x4. When the flag is nonzero, only the gl_compile call runs. The facts do not show what replay does with the inserted record.
  Reviewed: 2026-11-12
- `gl_n_curveit` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec421b0
  **Inferred.** Role (from name): next-variant of the curve entry (the n_ prefix). When the flag at 0xece8bf0 is set (beq at 0xec421d4), it calls __iglooNCloseMoveDraw (0xec92d80) at 0xec421e0. It then calls gl_curveit (0xec41dc0) at 0xec421ec with the 16-bit value at a0 as its first argument (loaded at 0xec421f0) and returns a0+4.
  Reviewed: 2026-11-12
- `gl_i_rcrv` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec42210
  **Inferred.** Role (from name): immediate-mode rational curve draw (the i_ prefix and rcrv). It makes the same calls as drawcurve: gl_findbasis (0xec428d0) at 0xec42250, __iglooSetEnable (0xec5cb70) with enable 0xd98 at 0xec42280 (a1 = 1) and 0xec4239c (a1 = 0), glMap1f at 0xec42328, glMapGrid1f at 0xec42340, glEvalMesh1 at 0xec42354 and glFlush at 0xec423b8, with the same switch on [0x1004]+0x30. Two calls at 0xec42260 and 0xec4226c have callees the facts do not name.
  Reviewed: 2026-11-12
- `gl_c_rcrv` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec423d0
  **Inferred.** Role (from name): compile-time rational curve. Calls __iglooCalloc (0xec5f3c0) with 0x88 at 0xec423f4, then calls gl_ecallfunc (0xec37c00) at 0xec42418 with drawcurve (0xec417b0), freecurve (0xec41770), 1 and the new record. After that call it copies 16 single-precision values from a0 into the record (loads at 0xec42424 through 0xec424a4, stores from +0x8 to +0x44), writes a halfword at +0x0 and a word at +0x4, and returns the gl_ecallfunc result at 0xec424bc. The facts do not show what gl_ecallfunc does with the record.
  Reviewed: 2026-11-12
- `gl_i_rcrvn` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec424d0
  **Inferred.** Role (from name): immediate-mode curve draw (the i_ prefix). When a0 is below 4 (branch at 0xec42524) it calls gl_ErrorHandler (0xec5d440) with code 0x3f at 0xec42718. Otherwise it calls gl_findbasis (0xec428d0) at 0xec42538 and __iglooSetEnable (0xec5cb70) with enable 0xd98 at 0xec42564 (a1 = 1) and 0xec426c4 (a1 = 0). Between them is a loop whose count comes from a0-3 (s4, tested at 0xec42574) and which calls glMap1f at 0xec42648, glMapGrid1f at 0xec4265c, glEvalMesh1 at 0xec42670 and glFlush at 0xec426ac, with the same switch on [0x1004]+0x30 as gl_i_rcrv. The two unnamed callees at 0xec42548 and 0xec42554 are not identified.
  Reviewed: 2026-11-12
- `gl_c_rcrvn` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec42730
  **Inferred.** Role (from name): compile-time curve entry. The name also says the curve is not rational, and the facts do not show that. It has a count check (branch at 0xec42750, taken when a0 is below 4, to a path that calls gl_ErrorHandler with error code 0x3f at 0xec42804). Otherwise it allocates a 0x14-byte record with __iglooCalloc at 0xec4275c. When that allocation is nonzero (branch at 0xec42764) it calls gl_ecallfunc (0xec37c00) at 0xec42784 with drawcurves (0xec41b10), freecurves (0xec41aa0), 1 and the record. After that it allocates a0 << 4 bytes with __iglooMalloc at 0xec4279c and copies a0 times 16 bytes from a1 into that block with bcopy at 0xec427bc.
  Reviewed: 2026-11-12
- `gl_findb` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec42820
  **Inferred.** Searches a linked list anchored at the global 0xecdda18. The branch at 0xec42834 tests a1 against zero. The nonzero path compares the word at +0x8 of the entries with a0 (branch at 0xec42848), and the zero path compares the word at +0x4 (branch at 0xec428a4). The facts show its return value only as v0 = ?, so what it returns is not in the facts. The match path has stores at 0xec4287c, 0xec42884 and 0xec4288c, and the facts do not show their targets or values. What the node stores is not in the facts.
  Reviewed: 2026-11-12
- `gl_findbasis` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec428d0
  **Inferred.** Lookup wrapper for gl_findb (0xec42820), called with its arguments passed through at 0xec428ec. When the result is zero (branch at 0xec428f8), it reports error code 0x8 through gl_ErrorHandler (0xec5d440) at 0xec4291c with the constant 0xecd1760 and returns the constant 0xecd71a8 on that path. Otherwise it returns the node gl_findb found.
  Reviewed: 2026-11-12
- `gl_g_defbasis` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec42940
  **Inferred.** Role (from name): global define-basis. It looks up the basis with gl_findb (0xec42820) at 0xec42968 with a1 = 0. When the lookup returns zero (branch at 0xec42970) it calls gl_malloc (0xec5f4e0) with 0x4c at 0xec42ad0 and, when that is nonzero (branch at 0xec42adc), writes words at +0x0 and +0x4 of the new record (stores at 0xec42aec and 0xec42af4). The facts then show a 4-iteration loop (bound 0x4 at 0xec42ab0) that loads 16 floats from a1 (+0x0, +0x10, +0x20, +0x30, +0x4 and on to +0x3c, at 0xec429c0 through 0xec42aa0) and stores 16 floats from 0xec429c8 onward. The facts do not show whether the stores are a plain copy or involve arithmetic. The 16 values fit a 4x4 matrix, but the facts do not name the fields or which record the stores target.
  Reviewed: 2026-11-12
- `gl_i_curvebasis` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec42b00
  **Inferred.** Role (from name): immediate-mode define-basis (the i_ prefix). When the flag at 0xece8bf0 is set (branch at 0xec42b1c) it calls __iglooNCloseMoveDraw (0xec92d80) at 0xec42b28. It then calls gl_findbasis (0xec428d0) with a1 = 0 at 0xec42b38 and stores the word at +0x8 of the returned record into the state field +0x2dc0 (store at 0xec42b5c). It returns the gl_findbasis result.
  Reviewed: 2026-11-12
- `gl_c_curvebasis` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec42b60
  **Inferred.** Same shape as gl_c_curveit. The flag at 0xecdda20 is tested at 0xec42b80. When it is zero, gl_intrptab_insert (0xec5f9f0) is called at 0xec42bc4 with the block at 0xecd7238. The gl_compile (0xecb5010) call at 0xec42ba0 with a0 = 0x4 is on the fall-through, flag nonzero path. The facts do not show whether the zero path also reaches gl_compile, so the flag is not shown to gate gl_compile. The facts do not show what the record does at replay.
  Reviewed: 2026-11-12
- `gl_n_curvebasis` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec42be0
  **Inferred.** Role (from name): next-variant of the define-basis. When the flag at 0xece8bf0 is set (branch at 0xec42c04) it calls __iglooNCloseMoveDraw (0xec92d80) at 0xec42c10. It then reads the 16-bit value at a0 and passes it to gl_findbasis (0xec428d0) with a1 = 0 at 0xec42c20, and stores the word loaded from +0x8 of the result into the state field +0x2dc0 at 0xec42c4c. It returns a0+4.
  Reviewed: 2026-11-12
- `gl_i_curveprecision` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec42c50
  **Inferred.** Role (from name): immediate-mode precision setter (the i_ prefix). When the flag at 0xece8bf0 is set (branch at 0xec42c6c) it calls __iglooNCloseMoveDraw (0xec92d80) at 0xec42c78, then stores a 16-bit value into the state field +0x2dc4 at 0xec42c9c. The source of that stored value is not in the facts.
  Reviewed: 2026-11-12
- `gl_c_curveprecision` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec42ca0
  **Inferred.** The flag at 0xecdda24 is tested at 0xec42cc0. When it is zero, gl_intrptab_insert (0xec5f9f0) is called at 0xec42d04 with the block at 0xecd7248. The gl_compile (0xecb5010) call at 0xec42ce0 with a0 = 0x4 is on the fall-through, flag nonzero path. The facts do not show whether the zero path also reaches gl_compile. It matches gl_c_curvebasis in shape, differing in the flag and the record address.
  Reviewed: 2026-11-12
- `gl_n_curveprecision` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec42d20
  **Inferred.** Role (from name): next-variant of the precision setter. When the flag at 0xece8bf0 is set (branch at 0xec42d3c) it calls __iglooNCloseMoveDraw (0xec92d80) at 0xec42d48. It copies the 16-bit value at a0 into the state field +0x2dc4 at 0xec42d74 and returns a0+4.
  Reviewed: 2026-11-12
- `gl_i_patchprecision` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec42d80
  **Inferred.** Role (from name): immediate-mode patch precision setter (the i_ prefix). When the flag at 0xece8bf0 is set (branch at 0xec42d9c) it calls __iglooNCloseMoveDraw (0xec92d80) at 0xec42dac, and then stores two 16-bit values into the state fields +0x2dd0 and +0x2dd2 at 0xec42dc8 and 0xec42ddc. The sources of the two stored values are not in the facts.
  Reviewed: 2026-11-12
- `gl_c_patchprecision` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec42de0
  **Inferred.** The flag at 0xecdda28 is tested at 0xec42e04. When it is zero, gl_intrptab_insert (0xec5f9f0) is called at 0xec42e4c with the block at 0xecd7258. The gl_compile (0xecb5010) call at 0xec42e24 with a0 = 0x6 is on the fall-through, flag nonzero path. The facts do not show whether the zero path also reaches gl_compile. It differs from gl_c_curveprecision in the first gl_compile argument (0x6 against 0x4), the flag and the record address.
  Reviewed: 2026-11-12
