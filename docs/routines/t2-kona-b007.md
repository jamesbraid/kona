# Tier-2 routine roles, kona batch 7

Roles for targets 175 to 199 of the ranked tier-2 list, all in the IGLOO32 `libgl.so`. Each role comes from the rendered instruction facts at the cited addresses, so every entry is graded inferred. The grader accepted all 25 rendered entries and none were rejected. The eleven 8-byte routines show only a return with v0 unset, so their roles are not derived from these facts.

- `gl_i_scrsubdivide` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c020
  **Inferred.** An 8-byte body at 0xec3c020 whose rendered facts show only the return, with v0 unset. The facts show no calls, branches or memory accesses, so the role is not derived here.
  Reviewed: 2026-11-12
- `gl_i_xfpt` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c030
  **Inferred.** An 8-byte body at 0xec3c030 whose rendered facts show only the return, with v0 unset. The facts show no calls, branches or memory accesses, so the role is not derived here.
  Reviewed: 2026-11-12
- `gl_i_xfpti` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c040
  **Inferred.** An 8-byte body at 0xec3c040 whose rendered facts show only the return, with v0 unset. The facts show no calls, branches or memory accesses, so the role is not derived here.
  Reviewed: 2026-11-12
- `gl_i_xfpts` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c050
  **Inferred.** An 8-byte body at 0xec3c050 whose rendered facts show only the return, with v0 unset. The facts show no calls, branches or memory accesses, so the role is not derived here.
  Reviewed: 2026-11-12
- `gl_i_xfpt2` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c060
  **Inferred.** An 8-byte body at 0xec3c060 whose rendered facts show only the return, with v0 unset. The facts show no calls, branches or memory accesses, so the role is not derived here.
  Reviewed: 2026-11-12
- `gl_i_xfpt2i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c070
  **Inferred.** An 8-byte body at 0xec3c070 whose rendered facts show only the return, with v0 unset. The facts show no calls, branches or memory accesses, so the role is not derived here.
  Reviewed: 2026-11-12
- `gl_i_xfpt2s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c080
  **Inferred.** An 8-byte body at 0xec3c080 whose rendered facts show only the return, with v0 unset. The facts show no calls, branches or memory accesses, so the role is not derived here.
  Reviewed: 2026-11-12
- `gl_i_xfpt4` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c090
  **Inferred.** An 8-byte body at 0xec3c090 whose rendered facts show only the return, with v0 unset. The facts show no calls, branches or memory accesses, so the role is not derived here.
  Reviewed: 2026-11-12
- `gl_i_xfpt4i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c0a0
  **Inferred.** An 8-byte body at 0xec3c0a0 whose rendered facts show only the return, with v0 unset. The facts show no calls, branches or memory accesses, so the role is not derived here.
  Reviewed: 2026-11-12
- `gl_i_xfpt4s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c0b0
  **Inferred.** An 8-byte body at 0xec3c0b0 whose rendered facts show only the return, with v0 unset. The facts show no calls, branches or memory accesses, so the role is not derived here.
  Reviewed: 2026-11-12
- `gl_i_gl_scrrect` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c0c0
  **Inferred.** An 8-byte body at 0xec3c0c0 whose rendered facts show only the return, with v0 unset. The facts show no calls, branches or memory accesses, so the role is not derived here.
  Reviewed: 2026-11-12
- `gl_clear` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c0d0
  **Inferred.** Reads render state through gl_wstatep (lw at 0xec3c0e0) and calls __iglooGetRenderMode at 0xec3c0fc and 0xec3c130, comparing the result with 0x1c00 to choose between two paths. Along the way it reads two float state values with __iglooGetFloatv (0xb00 at 0xec3c1b0, 0xb01 at 0xec3c318), gets and sets enable masks with __iglooGetAndSetEnable (0x6fe7 at 0xec3c248, 0x1fe7 at 0xec3c33c), and clears with glClearColor (0xec3c16c) and glClear with mask 0x4000 (0xec3c178). The glRecti(-1, -1, 1, 1) call at 0xec3c298 and the glIndexi call at 0xec3c398 suggest an index-mode branch, but the facts do not show which mode each branch serves.
  Reviewed: 2026-11-12
- `gl_i_clear` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c3b0
  **Inferred.** If the global gl_inMoveDraw at 0xece8bf0 is nonzero (lw at 0xec3c3c8, beq at 0xec3c3cc), it calls __iglooNCloseMoveDraw at 0xec3c3d8. It then calls gl_clear at 0xec3c3e8 with a bgezall on the zero register, which always takes its branch, so the call is not conditional, and returns gl_clear's result at 0xec3c3f8. The close-then-clear shape is shared with gl_n_clear, gl_i_zclear and gl_i_sclear, and the facts do not show why this variant differs from them.
  Reviewed: 2026-11-12
- `gl_c_clear` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c400
  **Inferred.** The flag at 0xecdd99c (beq at 0xec3c418) separates a gl_compile call with op 0x2 at 0xec3c430 from a gl_intrptab_insert call with table entry 0xecd6b40 at 0xec3c450. The return at 0xec3c440 gives gl_compile's result. The call sites suggest a variant that records the clear for later replay, but the facts show the path between the calls only in part.
  Reviewed: 2026-11-12
- `gl_n_clear` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c470
  **Inferred.** Calls __iglooNCloseMoveDraw at 0xec3c49c when gl_inMoveDraw (lw at 0xec3c488, beq at 0xec3c490) is set, then calls gl_clear at 0xec3c4ac. It returns the entry value of a0 at 0xec3c4c0. The shape matches gl_i_clear, but the return value differs: a0 here, gl_clear's result there.
  Reviewed: 2026-11-12
- `gl_i_zclear` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c4d0
  **Inferred.** Calls __iglooNCloseMoveDraw at 0xec3c4f8 when gl_inMoveDraw is set (lw at 0xec3c4e8, beq at 0xec3c4ec). It then calls glClearDepth at 0xec3c504, with a double loaded from a gp-relative slot into f12 whose value the facts do not show, and glClear with mask 0x100 at 0xec3c510, and returns glClear's result at 0xec3c520.
  Reviewed: 2026-11-12
- `gl_c_zclear` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c530
  **Inferred.** The flag at 0xecdd9a0 (beq at 0xec3c548) separates a gl_compile call with op 0x2 at 0xec3c560 from a gl_intrptab_insert call with table entry 0xecd6b50 at 0xec3c580. The return at 0xec3c570 gives gl_compile's result. It has the same compile-or-insert shape as gl_c_clear, and the facts show the call sites only.
  Reviewed: 2026-11-12
- `gl_n_zclear` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c5a0
  **Inferred.** Calls __iglooNCloseMoveDraw at 0xec3c5cc when gl_inMoveDraw (lw at 0xec3c5b8, beq at 0xec3c5c0) is set. It then calls glClearDepth at 0xec3c5d8, with an argument value the facts do not show, and glClear with mask 0x100 at 0xec3c5e4, and returns the entry value of a0 at 0xec3c5f8, unlike gl_i_zclear, which returns glClear's result.
  Reviewed: 2026-11-12
- `gl_i_sclear` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c600
  **Inferred.** Calls __iglooNCloseMoveDraw at 0xec3c628 when gl_inMoveDraw is set (lw at 0xec3c618, beq at 0xec3c61c). It then calls glClearStencil with the entry value of a0 at 0xec3c638 and glClear with mask 0x400 at 0xec3c644, and returns glClear's result at 0xec3c654.
  Reviewed: 2026-11-12
- `gl_c_sclear` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c660
  **Inferred.** The flag at 0xecdd9a4 (beq at 0xec3c680) separates a gl_compile call with op 0x4 at 0xec3c69c from a gl_intrptab_insert call with table entry 0xecd6b60 at 0xec3c6c0. The return at 0xec3c6b0 gives gl_compile's result. As with gl_c_clear, the facts show the call sites only, not the full path between them.
  Reviewed: 2026-11-12
- `gl_n_sclear` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c6e0
  **Inferred.** Calls __iglooNCloseMoveDraw at 0xec3c70c when gl_inMoveDraw is set (lw at 0xec3c6f8, beq at 0xec3c700). It loads the first word of the argument block (lw at 0xec3c720), passes it to glClearStencil at 0xec3c71c, and calls glClear with mask 0x400 at 0xec3c728. It returns a0+4 at 0xec3c740.
  Reviewed: 2026-11-12
- `gl_i_czclear` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c910
  **Inferred.** Calls __iglooNCloseMoveDraw at 0xec3c93c when gl_inMoveDraw is set (lw at 0xec3c928, beq at 0xec3c92c). It then calls _czclear at 0xec3c954 (a bgezall on the zero register, so not a conditional call) with its entry a0 and a1, and returns _czclear's result at 0xec3c964. It has the same close-then-call shape as gl_i_clear.
  Reviewed: 2026-11-12
- `gl_c_czclear` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c970
  **Inferred.** The flag at 0xecdd9a8 (beq at 0xec3c994) separates a gl_compile call with op 0x6 at 0xec3c9b4 from a gl_intrptab_insert call with table entry 0xecd6b70 at 0xec3c9dc. The return at 0xec3c9c8 gives gl_compile's result. The facts show the call sites only, not the path between them.
  Reviewed: 2026-11-12
- `gl_n_czclear` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ca00
  **Inferred.** Calls __iglooNCloseMoveDraw at 0xec3ca30 when gl_inMoveDraw is set (lw at 0xec3ca18, beq at 0xec3ca24). It loads two words from the argument block (at +0 and +4, lw at 0xec3ca48 and 0xec3ca40) and passes them to _czclear as a0 and a1 at 0xec3ca44. It returns a0+8 at 0xec3ca5c.
  Reviewed: 2026-11-12
- `_czclear` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c750
  **Inferred.** Reads render state through the pointer at abs 0x1004 and gl_wstatep, and branches on a byte at [[0x1004]+20]+0x13 (beq at 0xec3c784). It gets and sets the index and color masks through __iglooGetIndexMask (0xec3c794), __iglooIndexMask (0xec3c7a0), __iglooGetColorMask (0xec3c838) and __iglooColorMask (0xec3c850), and sets the depth mask through __iglooDepthMask (0xec3c8e0), with no matching getter in the facts. It clears with glClearIndex (0xec3c7b8), glClearDepth with an argument that includes its a1 (0xec3c7e8), glClear with mask 0x4100 (0xec3c7f4) and glClearColor (0xec3c8b4), whose argument values the facts do not show. The facts do not settle which clear values map to which state fields.
  Reviewed: 2026-11-12
