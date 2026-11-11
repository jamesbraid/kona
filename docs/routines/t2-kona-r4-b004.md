# Tier-2 routine roles, kona round 4 batch 4

Roles for targets 100 to 124 of the ranked tier-2 list (round t2list). Each one comes from the rendered instruction facts at the cited addresses, not from a read of the raw disassembly, so every entry is graded inferred. The grader accepted all 25 entries and none were rejected.

- `gl_n_patchprecision` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec42e70
  **Inferred.** Checks the flag at 0xece8bf0 and, when it is clear, calls __iglooNCloseMoveDraw (0xec92d80) first. It then stores two halfwords into the state at gl_wstatep +0x2dd0 and +0x2dd2, using the words loaded from the argument at +0x0 and +0x4. It returns a0+8 at 0xec42ecc, which fits a patch-state setter in the normal-vector family.

- `gl_i_patchbasis` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec42ee0
  **Inferred.** Under the same 0xece8bf0 flag it calls __iglooNCloseMoveDraw (0xec92d80), then calls gl_findbasis (0xec428d0) twice, the second time on arg1, and stores the results into gl_wstatep at +0x2dc8 (0xec42f44) and +0x2dcc (0xec42f68). The return value is the result of the last gl_findbasis call at 0xec42f64. It reads as the immediate-mode basis setter that pairs with gl_c_patchbasis and gl_n_patchbasis.

- `gl_c_patchbasis` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec42f70
  **Inferred.** It is the compile-time form: it calls gl_compile (0xecb5010) with opcode 0x6 and a stack buffer at sp-48, then gl_intrptab_insert (0xec5f9f0) with a0 = 0xecd7268. The insert is gated by the global at 0xecdda2c (the beq at 0xec42f94). It records the command when display-list compilation is active, and its return value is ret(gl_compile) at 0xec42fc8.

- `gl_n_patchbasis` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43000
  **Inferred.** Closes move-draw state through __iglooNCloseMoveDraw (0xec92d80) under the 0xece8bf0 flag. It calls gl_findbasis (0xec428d0) on the words at [a0] and [a0+4], and stores the results into gl_wstatep at +0x2dc8 and +0x2dcc. It returns a0+8 at 0xec43088, the normal-vector counterpart of gl_i_patchbasis.

- `gl_i_patchcurves` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43090
  **Inferred.** Closes move-draw state through __iglooNCloseMoveDraw (0xec92d80) under the 0xece8bf0 flag. It stores two halfwords into gl_wstatep at +0x2dd4 (0xec430d8) and +0x2dd6 (0xec430ec), and returns one of 0x9fae0 or ret(__iglooNCloseMoveDraw) at 0xec430e8. It reads as the immediate-mode curve-parameter setter, paired with gl_c_patchcurves and gl_n_patchcurves.

- `gl_c_patchcurves` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec430f0
  **Inferred.** Compile-time form with the same shape as gl_c_patchbasis at 0xec42f70: gl_compile (0xecb5010) with opcode 0x6 and a stack buffer at sp-48, then gl_intrptab_insert (0xec5f9f0) with a0 = 0xecd7278. The insert is gated by the global at 0xecdda30 (the beq at 0xec43114). The table entry differs from the basis form, and the return is ret(gl_compile) at 0xec43148.

- `gl_n_patchcurves` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43180
  **Inferred.** Closes move-draw state through __iglooNCloseMoveDraw (0xec92d80) under the 0xece8bf0 flag. It loads the words at arg0 +0x0 and +0x4 and stores halfwords into gl_wstatep at +0x2dd4 (0xec431c8) and +0x2dd6 (0xec431e0). It returns a0+8 at 0xec431dc, the normal-vector counterpart of gl_i_patchcurves.

- `gl_init_curves` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec431f0
  **Inferred.** Writes defaults into the structure at arg0: halfwords at +0x2dd6, +0x2dd4, +0x2dd2, +0x2dd0 and +0x2dc4, and words at +0x2dcc, +0x2dc8 and +0x2dc0. These offsets match the ones the patch setters write through gl_wstatep, so the argument is likely that same state block. It returns the constant 0x2 at 0xec43214, and is a no-call initializer.

- `gl_free_bases` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43220
  **Inferred.** Walks a list of basis records: it tests the flag at 0xecdda18 (the beq at 0xec43238), then calls gl_free (0xec5f570) with the list pointer from the global at 0xecdee70, and loops on the bne at 0xec43260 back to 0xec43250. It returns 0x9f950 or ret(gl_free) at 0xec43278. The word loaded at 0xec4325c is not resolved by the facts, so the exact freed argument is a sub-fact left open.

- `gl_data_check_special` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43280
  **Inferred.** Checks a record by reading fields at +0x18 and +0x1c of arg0 and passing each to gl_comm_io (0xec3fdb0). On a failed transfer it reports through gl_comm_fatal_error (0xec40ec0) with the message constants 0xecdee74 through 0xecdee89. It compares a3 against a4, which holds -0x1234, at 0xec433b0, and returns 0x22 at 0xec433cc or 0x0 at 0xec433e0.

- `gl_data_check_xdr` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec433f0
  **Inferred.** A thin wrapper: it calls gl_d_dglxdrformat (0xec5b010) with a0 = 0x2, a1 = 0x1, and the caller's a2 and a3, then returns that result at 0xec43420. It is the XDR-format arm of the data-check family.

- `gl_decnet_init` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43430
  **Inferred.** The body is one call to gl_dgl_error (0xec83700) with the message constants 0xecd7288 and 0xecd7298, passing through the caller's a2 and a3. It returns 0x13 at 0xec43468. Nothing else happens in the routine, so it reads as a stub for a transport this build does not provide.

- `gl_g_objdelete` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43470
  **Inferred.** Deletes an entry from the open-object table. It reads gl_openobjhdr and the current open object at gl_openobj (0xecdf838), looks the name up with gl_findhash (0xec78fa0), and on a hit updates gl_replacemode (0xecdf82c), gl_currentpos (0xecdf840) and gl_currentend (0xecdf844). It frees the entry through __GLdeltag and gl_intrp_freefunc (0xec37bb0), and reports error codes 0x20, 0x6c, 0x5 and 0x20 through gl_ErrorHandler (0xec5d440).

- `gl_g_delobj` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43700
  **Inferred.** Deletes one object by name: it calls gl_findhash (0xec78fa0) with name -1 and returns early when the slot is empty or the entry at +0x1c is zero. On a hit it calls __GLobjdelete (0xec43768), updates gl_openobj and gl_openobjhdr, and frees two buffers with gl_free (0xec5f570). The failure path reports code 0x49 through gl_ErrorHandler (0xec5d440) and sets immediate mode with gl_SetImmediateMode (0xec795b0) and a0 = 0x1.

- `gl_g_deltag` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43860
  **Inferred.** The tag-side counterpart of gl_g_delobj at 0xec43700. It gets the open object through __GLgetopenobj (0xec43880), finds the entry with gl_findhash (0xec438a4), and on a hit removes it with gl_removehash (0xec438cc). It reports codes 0x22, 0x20, 0x23 and 0x5 through gl_ErrorHandler (0xec5d440) and frees buffers with gl_free (0xec5f570).

- `__iglooRestoreUsrMat` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec439e0
  **Inferred.** Restores the saved user matrix. It reads the state at gl_wstatep +0xba8, +0xbb0 and +0xd8, saves the current matrix mode through __iglooGetMatrixMode (0xecb8680), sets mode 0x1700 with __iglooMatrixMode (0xecb85d0), and reloads the matrix with __iglooGetMatrix (0xecb8e70), __iglooLoadIdentity (0xecb88c0), __iglooTranslate (0xecb8c60) and __iglooMultMatrix (0xecb8ba0). It then sets mode 0x1701 at 0xec43b00. Four floating-point compares at 0xec43a14, 0xec43a24, 0xec43a4c and 0xec43a60 choose the branches.

- `gl_depthcue` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43b60
  **Inferred.** Sets up depth-cue fog. It enables 0xb60 through __iglooSetEnable (0xec5cb70) and calls glFogi with 0xb65 and 0x2601, glFogfv with 0xb66, and glFogf with 0xb61. It sets the color-index path with glIndexf and selects the depth-cue color procedures through __iglooSetColorProcsToDepthCue (0xec3e6d0). The branches on gl_wstatep +2904 (0xec43b88) and on the flag at 0xece8bf8 (gl_iglooGouraudCIDepthCue) select the variant.

- `gl_i_depthcue` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43da0
  **Inferred.** Immediate-mode form. It closes move-draw state through __iglooNCloseMoveDraw (0xec92d80) when the 0xece8bf0 flag is clear, then calls gl_depthcue (0xec43b60) with a0 = arg0 and a1 = 0. It returns ret(gl_depthcue) at 0xec43de8.

- `gl_c_depthcue` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43df0
  **Inferred.** Compile-time form with the same shape as gl_c_patchbasis at 0xec42f70, but with opcode 0x4 in place of 0x6. It calls gl_compile (0xecb5010) with a stack buffer at sp-48, then gl_intrptab_insert (0xec5f9f0) with a0 = 0xecd72c0, gated by the global at 0xecdda34 (the beq at 0xec43e10). It returns ret(gl_compile) at 0xec43e40.

- `gl_n_depthcue` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43e70
  **Inferred.** Normal-vector form. It closes move-draw state through __iglooNCloseMoveDraw (0xec92d80) under the 0xece8bf0 flag, then calls gl_depthcue (0xec43b60) with a0 = [arg0] and a1 = 0. It returns a0+4 at 0xec43ec8.

- `gl_g_shaderange` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43ed0
  **Inferred.** Compile-time form for the shade range. It calls gl_compile (0xecb5010) with opcode 0x6 and a stack buffer at sp-64, passing arg2, arg3 and arg1 through, then gl_intrptab_insert (0xec5f9f0) with a0 = 0xecd72d0. The insert is gated by the global at 0xecdda38 (the beq at 0xec43ef4). It returns ret(gl_compile) at 0xec43f30.

- `gl_n_shaderange` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43f70
  **Inferred.** Normal-vector form. It closes move-draw state through __iglooNCloseMoveDraw (0xec92d80) under the 0xece8bf0 flag, reads four 16-bit values from arg0 at +0x0, +0x2, +0x4 and +0x6, and passes them to gl_lshaderange (0xec44410). It returns a0+8 at 0xec43fd0.

- `gl_g_lshaderange` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec43fe0
  **Inferred.** Compile-time form for the local shade range. It calls gl_compile (0xecb5010) with opcode 0x8 and a stack buffer at sp-80, then gl_intrptab_insert (0xec5f9f0) with a0 = 0xecd72e0. The insert is gated by the global at 0xecdda3c (the beq at 0xec44004). It returns ret(gl_compile) at 0xec44040.

- `gl_n_lshaderange` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec44080
  **Inferred.** Normal-vector form for the local shade range. It closes move-draw state through __iglooNCloseMoveDraw (0xec92d80) under the 0xece8bf0 flag. When the global at 0xece8bd8 is nonzero it maps two z values from arg0 (+0x4 and +0x8) through gl_mapzrange (0xecc5b90), then reads two halfwords at +0x0 and +0x2 and passes them to gl_lshaderange (0xec44410). It returns a0+12 at 0xec44124.

- `gl_g_RGBrange` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec44130
  **Inferred.** Compile-time form for the RGB range. It calls gl_compile (0xecb5010) with opcode 0xa and a stack buffer at sp-112, then gl_intrptab_insert (0xec5f9f0) with a0 = 0xecd72f0. The insert is gated by the global at 0xecdda40 (the beq at 0xec44154). It returns ret(gl_compile) at 0xec441a0, the same compile pattern as gl_g_shaderange with opcode 0xa in place of 0x6.
