# Tier-2 routine roles, kona round 4 batch 4

Roles for targets 100 to 124 of the ranked tier-2 list (round t2list). Each one comes from the rendered instruction facts at the cited addresses, not from a read of the raw disassembly, so every entry is graded inferred. The grader accepted all 25 entries and none were rejected.

- `gl_n_patchprecision` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec42e70
  **Inferred.** Checks the flag at 0xece8bf0 and, when it is set, calls __iglooNCloseMoveDraw (0xec92d80) first; a clear flag skips that call. It then stores two halfwords into the state at gl_wstatep +0x2dd0 and +0x2dd2, using the words loaded from the argument at +0x0 and +0x4. It returns a0+8 at 0xec42ecc. The facts do not show what the two stored halfwords mean.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_patchbasis` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec42ee0
  **Inferred.** When the flag at 0xece8bf0 is nonzero it calls __iglooNCloseMoveDraw (0xec92d80); a zero flag skips that call. It then calls gl_findbasis (0xec428d0) twice, the second time on arg1, and stores the results into gl_wstatep at +0x2dc8 (0xec42f44) and +0x2dcc (0xec42f68). The return value is the result of the last gl_findbasis call at 0xec42f64. Role (from name): the immediate-mode basis setter that pairs with gl_c_patchbasis and gl_n_patchbasis.
  Reviewed: 2026-11-12 (sonnet)

- `gl_c_patchbasis` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec42f70
  **Inferred.** It is the compile-time form, since it calls gl_compile. When the global at 0xecdda2c is zero (the beq at 0xec42f94), it calls gl_intrptab_insert (0xec5f9f0) with a0 = 0xecd7268 first, then calls gl_compile (0xecb5010) with opcode 0x6 and a stack buffer at sp-48. When the global is nonzero, it calls gl_compile alone. Its return value is ret(gl_compile) at 0xec42fc8.
  Reviewed: 2026-11-12 (sonnet)

- `gl_n_patchbasis` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43000
  **Inferred.** Calls __iglooNCloseMoveDraw (0xec92d80) when the 0xece8bf0 flag is nonzero. It calls gl_findbasis (0xec428d0) on the words at [a0] and [a0+4], and stores the results into gl_wstatep at +0x2dc8 and +0x2dcc. It returns a0+8 at 0xec43088. Role (from name): the counterpart of gl_i_patchbasis that takes its arguments from the buffer at arg0.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_patchcurves` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43090
  **Inferred.** Calls __iglooNCloseMoveDraw (0xec92d80) when the 0xece8bf0 flag is nonzero. It stores two halfwords into gl_wstatep at +0x2dd4 (0xec430d8) and +0x2dd6 (0xec430ec), and returns one of 0x9fae0 or ret(__iglooNCloseMoveDraw) at 0xec430e8. Role (from name): the immediate-mode curve-parameter setter, paired with gl_c_patchcurves and gl_n_patchcurves.
  Reviewed: 2026-11-12 (sonnet)

- `gl_c_patchcurves` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec430f0
  **Inferred.** Compile-time form with the same shape as gl_c_patchbasis at 0xec42f70. When the global at 0xecdda30 is zero (the beq at 0xec43114), it calls gl_intrptab_insert (0xec5f9f0) with a0 = 0xecd7278 first, then calls gl_compile (0xecb5010) with opcode 0x6 and a stack buffer at sp-48. When the global is nonzero, it calls gl_compile alone. The table entry differs from the basis form, and the return is ret(gl_compile) at 0xec43148.
  Reviewed: 2026-11-12 (sonnet)

- `gl_n_patchcurves` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43180
  **Inferred.** Calls __iglooNCloseMoveDraw (0xec92d80) when the 0xece8bf0 flag is nonzero. It loads the words at arg0 +0x0 and +0x4 and stores halfwords into gl_wstatep at +0x2dd4 (0xec431c8) and +0x2dd6 (0xec431e0). It returns a0+8 at 0xec431dc. Role (from name): the counterpart of gl_i_patchcurves that takes its arguments from the buffer at arg0.
  Reviewed: 2026-11-12 (sonnet)

- `gl_init_curves` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec431f0
  **Inferred.** Writes defaults into the structure at arg0: halfwords at +0x2dd6, +0x2dd4, +0x2dd2, +0x2dd0 and +0x2dc4, and words at +0x2dcc, +0x2dc8 and +0x2dc0. These offsets match the ones the patch setters write through gl_wstatep, so the argument is likely that same state block. It returns the constant 0x2 at 0xec43214, and is a no-call initializer.
  Reviewed: 2026-11-12 (sonnet)

- `gl_free_bases` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43220
  **Inferred.** Loads the word at 0xecdda18 and, when it is zero, skips the loop (the beq at 0xec43238). Otherwise it calls gl_free (0xec5f570) with a1 = the word at 0xecdee70 (a0 is not resolved by the facts), and loops while the word loaded at 0xec4325c is nonzero (the bne at 0xec43260 back to 0xec43250). It returns one of 0x9f950 or ret(gl_free) at 0xec43278. Role (from name): frees a list of basis records.
  Reviewed: 2026-11-12 (sonnet)

- `gl_data_check_special` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43280
  **Inferred.** Calls gl_comm_io (0xec3fdb0) five times: first with a0 = the word at arg0 +0x1c and a3 = 0x4, then four times with a0 = the word at arg0 +0x18 and a3 = 0x1 (a2 is sp-48 for the first two calls, then sp-47, sp-46 and sp-45). After each call it compares the result with the count passed (0x4, then 0x1); when they differ it calls gl_comm_fatal_error (0xec40ec0) with the message constants 0xecdee74, 0xecdee7a, 0xecdee7f, 0xecdee84 and 0xecdee89 in turn. It then compares a3 against a4, which holds -0x1234, at 0xec433b0, and returns 0x0 at 0xec433e0 when they are equal or 0x22 at 0xec433cc when they differ. Role (from name): a check of a data record.
  Reviewed: 2026-11-12 (sonnet)

- `gl_data_check_xdr` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec433f0
  **Inferred.** A thin wrapper: it calls gl_d_dglxdrformat (0xec5b010) with a0 = 0x2, a1 = 0x1, and the caller's a2 and a3, then returns that result at 0xec43420. Role (from name): the XDR-format arm of the data-check family.
  Reviewed: 2026-11-12 (sonnet)

- `gl_decnet_init` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43430
  **Inferred.** The body is one call to gl_dgl_error (0xec83700) with the message constants 0xecd7288 and 0xecd7298, passing through the caller's a2 and a3. It returns 0x13 at 0xec43468. Nothing else happens in the routine. Role (from name): initializer for a DECnet transport; the single error call suggests a stub, but the facts do not say why.
  Reviewed: 2026-11-12 (sonnet)

- `gl_g_objdelete` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43470
  **Inferred.** Loads the word at gl_openobjhdr and branches on it (beq at 0xec43494), and calls gl_findhash (0xec78fa0) with a0 = the word at gl_openobj (0xecdf838) and a1 = arg0; a zero result takes the branch at 0xec434d8. Other calls on its paths are gl_getcmdlength (0xec5fbd0) at 0xec43558, __GLdeltag at 0xec43674, gl_intrp_freefunc (0xec37bb0) at 0xec436a4, and gl_ErrorHandler (0xec5d440) with codes 0x20 (0xec4358c), 0x6c (0xec43618), 0x5 (0xec436cc) and 0x20 (0xec436ec). The facts do not resolve the targets of its stores or which branch reaches each call. Role (from name): deletes an entry from the open-object table.
  Reviewed: 2026-11-12 (sonnet)

- `gl_g_delobj` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43700
  **Inferred.** Calls gl_findhash (0xec78fa0) with a0 = arg0 and a1 = -1. When the result is zero, or the word at result +0x1c is zero, it branches to 0xec43814, ahead of the gl_ErrorHandler (0xec5d440) call with code 0x49 at 0xec43824 and the gl_SetImmediateMode (0xec795b0) call with a0 = 0x1 at 0xec4383c. Otherwise it calls __GLobjdelete at 0xec43768 and calls gl_free (0xec5f570) at 0xec437b8 and 0xec437cc in a loop on the word at result +0x4. The facts do not resolve the targets of its stores. Role (from name): deletes one object by name.
  Reviewed: 2026-11-12 (sonnet)

- `gl_g_deltag` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43860
  **Inferred.** Calls __GLgetopenobj at 0xec43880, then gl_findhash (0xec78fa0) at 0xec438a4; when that result is nonzero it calls gl_removehash (0xec78e90) at 0xec438cc. It reports codes 0x22, 0x20, 0x23 and 0x5 through gl_ErrorHandler (0xec5d440) at 0xec43934, 0xec4395c, 0xec43994 and 0xec439c8, and calls gl_free (0xec5f570) at 0xec43978 and 0xec439b0. Role (from name): the tag-side counterpart of gl_g_delobj at 0xec43700.
  Reviewed: 2026-11-12 (sonnet)

- `__iglooRestoreUsrMat` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec439e0
  **Inferred.** Four floating-point compares at 0xec43a14, 0xec43a24, 0xec43a4c and 0xec43a60, on the doubles at gl_wstatep +0xba8 and +0xbb0, choose among its paths. On the path that makes the matrix calls it calls __iglooGetMatrixMode (0xecb8680) at 0xec43a38, __iglooGetMatrix (0xecb8e70) with a0 = 0xba6 and a buffer at sp-112, __iglooMatrixMode (0xecb85d0) with 0x1700, __iglooLoadIdentity (0xecb88c0), __iglooTranslate (0xecb8c60), __iglooMultMatrix (0xecb8ba0) on the sp-112 buffer, then __iglooMatrixMode with 0x1701 at 0xec43b00 and __iglooTranslate again. It stores a word to +0xd8 at 0xec43b44. Role (from name): restores the saved user matrix.
  Reviewed: 2026-11-12 (sonnet)

- `gl_depthcue` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43b60
  **Inferred.** It calls __iglooSetEnable (0xec5cb70) with 0xb60 and a1 of 1 at 0xec43bc4 and of 0 at 0xec43c58, and calls glFogi with 0xb65 and 0x2601, glFogfv with 0xb66, glFogf with 0xb61 and glIndexf, and selects the depth-cue color procedures through __iglooSetColorProcsToDepthCue (0xec3e6d0). A branch at 0xec43b88 compares the word at gl_wstatep +2904 with a0, and branches at 0xec43cb8 and 0xec43d60 test the flag at 0xece8bf8. Role (from name): switches depth-cue fog on and off.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_depthcue` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43da0
  **Inferred.** Immediate-mode form. It closes move-draw state through __iglooNCloseMoveDraw (0xec92d80) when the 0xece8bf0 flag is nonzero, then calls gl_depthcue (0xec43b60) with a0 = arg0 and a1 = 0. It returns ret(gl_depthcue) at 0xec43de8.
  Reviewed: 2026-11-12 (sonnet)

- `gl_c_depthcue` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43df0
  **Inferred.** Compile-time form with the same shape as gl_c_patchbasis at 0xec42f70, but with opcode 0x4 in place of 0x6. The beq at 0xec43e10 tests the global at 0xecdda34. When it is zero, the routine first calls gl_intrptab_insert (0xec5f9f0) at 0xec43e50 with a0 = 0xecd72c0 and its own arguments, then falls into the gl_compile call (0xecb5010) at 0xec43e2c with a stack buffer at sp-48. When it is nonzero it makes the gl_compile call alone. It returns ret(gl_compile) at 0xec43e40.
  Reviewed: 2026-11-12 (sonnet)

- `gl_n_depthcue` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43e70
  **Inferred.** Calls __iglooNCloseMoveDraw (0xec92d80) when the 0xece8bf0 flag is nonzero, then calls gl_depthcue (0xec43b60) with a0 = [arg0] and a1 = 0. It returns a0+4 at 0xec43ec8. Role (from name): the form of gl_depthcue that takes its argument from the buffer at arg0.
  Reviewed: 2026-11-12 (sonnet)

- `gl_g_shaderange` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43ed0
  **Inferred.** Compile-time form for the shade range, since it calls gl_compile. When the global at 0xecdda38 is zero (the beq at 0xec43ef4), it calls gl_intrptab_insert (0xec5f9f0) with a0 = 0xecd72d0 first. Then it calls gl_compile (0xecb5010) with opcode 0x6, a stack buffer at sp-64, a2 = arg2, a3 = arg3 and a5 = arg1. When the global is nonzero, it calls gl_compile alone. It returns ret(gl_compile) at 0xec43f30.
  Reviewed: 2026-11-12 (sonnet)

- `gl_n_shaderange` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43f70
  **Inferred.** Calls __iglooNCloseMoveDraw (0xec92d80) when the 0xece8bf0 flag is nonzero, reads four 16-bit values from arg0 at +0x0, +0x2, +0x4 and +0x6, and passes them to gl_lshaderange (0xec44410). It returns a0+8 at 0xec43fd0. Role (from name): the form of the shade-range call that takes its arguments from the buffer at arg0.
  Reviewed: 2026-11-12 (sonnet)

- `gl_g_lshaderange` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43fe0
  **Inferred.** Compile-time form for the local shade range. When the global at 0xecdda3c is zero (the beq at 0xec44004), it calls gl_intrptab_insert (0xec5f9f0) with a0 = 0xecd72e0 first. Then it calls gl_compile (0xecb5010) with opcode 0x8 and a stack buffer at sp-80. When the global is nonzero, it calls gl_compile alone. It returns ret(gl_compile) at 0xec44040.
  Reviewed: 2026-11-12 (sonnet)

- `gl_n_lshaderange` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec44080
  **Inferred.** Calls __iglooNCloseMoveDraw (0xec92d80) when the 0xece8bf0 flag is nonzero. When the global at 0xece8bd8 is nonzero it also maps the two words at arg0 +0x4 and +0x8 through gl_mapzrange (0xecc5b90); a zero global skips those two calls. In either case it then calls gl_lshaderange (0xec44410) with a0 and a1 taken from the halfwords at +0x0 and +0x2 (a2 and a3 are not resolved by the facts). It returns a0+12 at 0xec44124. Role (from name): the form of the local shade-range call that takes its arguments from the buffer at arg0.
  Reviewed: 2026-11-12 (sonnet)

- `gl_g_RGBrange` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec44130
  **Inferred.** Compile-time form for the RGB range. When the global at 0xecdda40 is zero (the beq at 0xec44154), it calls gl_intrptab_insert (0xec5f9f0) with a0 = 0xecd72f0 first. Then it calls gl_compile (0xecb5010) with opcode 0xa and a stack buffer at sp-112. When the global is nonzero, it calls gl_compile alone. It returns ret(gl_compile) at 0xec441a0, the same compile pattern as gl_g_shaderange with opcode 0xa in place of 0x6.
  Reviewed: 2026-11-12 (sonnet)
