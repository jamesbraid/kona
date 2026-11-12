# Tier-2 routine roles, kona round 5 batch 0

Roles for the first 25 targets of the ranked tier-2 list for round r5. Each role comes from the rendered instruction facts at the cited addresses, so every entry is graded inferred. Six entries are written here; the others in the batch are listed in the handoff because their facts did not support a role in this pass.

- `__glkonim_ReadBuffer` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5c8a0
  **Inferred.** Stores the constant 55 as a word to the fixed address 0x4000 [@0xda5c8a4]. The return [@0xda5c8a8] has a delay slot holding a second word store to 0x4000 of a0 [@0xda5c8ac], so that store runs before control leaves the routine.
  Role (from facts): a 16-byte body that writes the constant 55, then its first argument, to the fixed address 0x4000 [@0xda5c8a4] [@0xda5c8ac].
  Reviewed: 2026-11-12
- `__glkonim_BlendEquationEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5cd10
  **Inferred.** Stores the constant 231 as a word to the fixed address 0x4000 [@0xda5cd14]. The return [@0xda5cd18] has a delay slot holding a second word store to 0x4000 of a0 [@0xda5cd1c], so that store runs before control leaves the routine.
  Role (from facts): a 16-byte body that writes the constant 231, then its first argument, to the fixed address 0x4000 [@0xda5cd14] [@0xda5cd1c].
  Reviewed: 2026-11-12
- `__glkonim_ResetMinmaxEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5cd44
  **Inferred.** Stores the constant 264 as a word to the fixed address 0x4000 [@0xda5cd48]. The return [@0xda5cd4c] has a delay slot holding a second word store to 0x4000 of a0 [@0xda5cd50], so that store runs before control leaves the routine.
  Role (from facts): a 16-byte body that writes the constant 264, then its first argument, to the fixed address 0x4000 [@0xda5cd48] [@0xda5cd50].
  Reviewed: 2026-11-12
- `nic_setup` in `usr/diags/IR/bin/irsaudit` at 0x1007af50
  **Inferred.** Stores a word at a0 +0x0 [@0x1007af6c], +0x4 [@0x1007af78], +0x8 [@0x1007af7c] and +0xc [@0x1007af84]. It calls the routine at 0x1007abc0 [call 1] and returns that call's result [@0x1007af90].
  Role (from facts): fills a four-word block at a0 before calling 0x1007abc0 [call 1].
  Reviewed: 2026-11-12
- `fcAdapPioWrite64` in `usr/diags/IR/bin/irsaudit` at 0x1013dcec
  **Inferred.** Loads the pointer at KONAINFO [@0x1013dd04] and a word from the structure it points to at +0x1b38 [@0x1013dd08]. It stores a doubleword at a0 plus that word plus 0xc000 [@0x1013dd1c]. It returns the same address [@0x1013dd18].
  Role (from facts): a 64-bit store at a0 plus the KONAINFO word plus 0xc000 [@0x1013dd1c], returning that store address [@0x1013dd18].
  Reviewed: 2026-11-12
- `gl_i_acbuf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33310
  **Inferred.** Loads gl_inMoveDraw at 0xece8bf0 [@0xec33328]. When that flag is nonzero [@0xec33330 fall nonzero] it calls __iglooNCloseMoveDraw [call 1, @0xec33330 fall]. Both paths then call __igloo_acbuf [call 2], and the routine returns its result [@0xec33368].
  Role (from facts): calls __iglooNCloseMoveDraw [call 1] only when gl_inMoveDraw is set [@0xec33330 fall nonzero], then returns the result of __igloo_acbuf [call 2, @0xec33368].
  Reviewed: 2026-11-12
