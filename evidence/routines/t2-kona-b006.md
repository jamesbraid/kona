# Routine roles, kona second reading round, batch 6

Roles for targets 150 to 174 of the ranked second-round list. Each one is written from the rendered instruction facts at the cited addresses, with the callees and constants named there. Where the facts leave a question open, the entry says so. Every entry is graded inferred.

- `gl_g_arcs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3b7d0
  **Inferred.** Compile path for the arc variant `s`. When the word at 0xecdd984 is zero, the branch at 0xec3b7fc jumps to the call to gl_intrptab_insert (0xec5f9f0) at 0xec3b89c, which takes the table entry at 0xecd6ae0 and passes a1 to a3 through from entry. The calls to endpt_cmplr (0xec3b410, at 0xec3b858, a0 = sp-96) and gl_compile (0xecb5010, at 0xec3b868, opcode 0x14, result returned at 0xec3b878) lie on the fall-through side, taken when the word is nonzero. When the halfword at 0xecdd968 is zero, the branch at 0xec3b808 goes to circle_init (0xec3aae0, call at 0xec3b884). The facts do not show where control goes after circle_init or after the insert call.
  Reviewed: 2026-11-12
- `gl_n_arcs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3b8b0
  **Inferred.** Draw path for the arc variant `s`. When the word at 0xece8bf0 is nonzero it calls __iglooNCloseMoveDraw (0xec92d80), then calls gl_n_circF_setup (0xec3acd0) and passes its return value to gl_n_arc_draw (0xec3b5e0), the draw callee the plain-arc variants also use. The facts do not say what the setup routine computes.
  Reviewed: 2026-11-12
- `gl_g_arci` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3b910
  **Inferred.** Compile path for the arc variant `i`, with the same call set as gl_g_arcs and its own state word at 0xecdd988. When that word is zero the branch at 0xec3b93c skips to gl_intrptab_insert (0xec3b9dc), whose table entry is at 0xecd6af0. When it is nonzero the fall-through side holds endpt_cmplr (0xec3b998) and gl_compile (0xec3b9a8, opcode 0x14); circle_init (0xec3b9c4) is reached when the halfword at 0xecdd968 is zero. The facts do not show where control goes after circle_init or the insert call, and do not decode what the `i` suffix stands for.
  Reviewed: 2026-11-12
- `gl_n_arci` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3b9f0
  **Inferred.** Draw path for the arc variant `i`, with the same call sequence as gl_n_arcs at a different address. It tests the word at 0xece8bf0, calls __iglooNCloseMoveDraw (0xec92d80) when it is nonzero, calls gl_n_circF_setup (0xec3acd0), and passes the result to gl_n_arc_draw (0xec3b5e0).
  Reviewed: 2026-11-12
- `gl_g_arc` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ba50
  **Inferred.** Compile path for the plain arc variant. It passes the constant 0xec3bb20, the address of gl_n_arc, as the fourth argument (a3) to endpt_cmplr (0xec3babc); the sibling entries' facts do not show a constant there. It then calls gl_compile (0xec3bacc) with opcode 0x14, circle_init (0xec3baec) with entry argument arg4 (the fifth, a4) as its third (a2), and gl_intrptab_insert (0xec3bb04) with the table entry at 0xecd6b00. The state word at 0xecdd98c decides whether the insert is reached directly, and the halfword at 0xecdd968 decides whether circle_init is reached.
  Reviewed: 2026-11-12
- `gl_n_arc` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3bb20
  **Inferred.** Draw path for the plain arc variant. It tests gl_inMoveDraw at 0xece8bf0, optionally calls __iglooNCloseMoveDraw (0xec92d80), calls gl_n_circF_setup (0xec3acd0), and passes the result to gl_n_arc_draw (0xec3b5e0). The return value at 0xec3bb74 is that of gl_n_arc_draw.
  Reviewed: 2026-11-12
- `gl_g_arcfs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3bb80
  **Inferred.** Compile path for the filled arc variant `fs`. It calls endpt_cmplr (0xec3bc04), gl_compile (0xec3bc14) with opcode 0x14, circle_init (0xec3bc34), and gl_intrptab_insert (0xec3bc4c) with the table entry at 0xecd6b10. Its state word is at 0xecdd990, and the halfword at 0xecdd968 guards the circle_init call.
  Reviewed: 2026-11-12
- `gl_n_arcfs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3bc60
  **Inferred.** Draw path for the filled arc variant `fs`. It tests gl_inMoveDraw, optionally calls __iglooNCloseMoveDraw (0xec92d80), calls gl_n_circF_setup (0xec3acd0), and passes the result to gl_n_arcf_draw (0xec3b6d0), the draw routine that the `s`, `i` and plain arc variants do not call.
  Reviewed: 2026-11-12
- `gl_g_arcfi` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3bcc0
  **Inferred.** Compile path for the filled arc variant `fi`. It calls endpt_cmplr (0xec3bd48), gl_compile (0xec3bd58) with opcode 0x14, circle_init (0xec3bd74), and gl_intrptab_insert (0xec3bd8c) with the table entry at 0xecd6b20. The state word at 0xecdd994 controls whether the insert is reached directly.
  Reviewed: 2026-11-12
- `gl_n_arcfi` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3bda0
  **Inferred.** Draw path for the filled arc variant `fi`. It tests gl_inMoveDraw at 0xece8bf0, optionally calls __iglooNCloseMoveDraw (0xec92d80), calls gl_n_circF_setup (0xec3acd0), and passes the result to gl_n_arcf_draw (0xec3b6d0).
  Reviewed: 2026-11-12
- `gl_g_arcf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3be00
  **Inferred.** Compile path for the filled arc variant `f`. Like gl_g_arc it passes the matching draw routine's address, 0xec3bed0 (gl_n_arcf), as the fourth argument to endpt_cmplr (0xec3be70). It then calls gl_compile (0xec3be80) with opcode 0x14, circle_init (0xec3be9c), and gl_intrptab_insert (0xec3beb4) with the table entry at 0xecd6b30.
  Reviewed: 2026-11-12
- `gl_n_arcf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3bed0
  **Inferred.** Draw path for the filled arc variant `f`. It tests gl_inMoveDraw at 0xece8bf0, optionally calls __iglooNCloseMoveDraw (0xec92d80), calls gl_n_circF_setup (0xec3acd0), and passes the result to gl_n_arcf_draw (0xec3b6d0).
  Reviewed: 2026-11-12
- `gl_c_lsbackup` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3bf30
  **Inferred.** An 8-byte body whose only listed instruction is a return at its first address. The facts show no calls, branches or memory access and leave v0 unset. The delay slot is not listed, so the body is not fully known. Role (from name): a compile-mode placeholder; the facts do not confirm it.
  Reviewed: 2026-11-12
- `gl_c_scrsubdivide` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3bf50
  **Inferred.** An 8-byte body with one listed return at its first address and no calls, branches or memory access. The return value is not set in the facts. Role (from name): a placeholder for a screen subdivision step; the facts do not confirm it.
  Reviewed: 2026-11-12
- `gl_c_xfpt` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3bf60
  **Inferred.** An 8-byte body with one listed return at its first address and no calls, branches or memory access. The return value is not set in the facts. Role (from name): a placeholder for a vertex transform call; the facts do not confirm it.
  Reviewed: 2026-11-12
- `gl_c_xfpti` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3bf70
  **Inferred.** An 8-byte body with one listed return at its first address and no calls, branches or memory access. The return value is not set in the facts. Role (from name): the integer-argument sibling of gl_c_xfpt; the facts do not confirm it.
  Reviewed: 2026-11-12
- `gl_c_xfpts` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3bf80
  **Inferred.** An 8-byte body with one listed return at its first address and no calls, branches or memory access. The return value is not set in the facts. Role (from name): the short-argument sibling of gl_c_xfpt; the facts do not confirm it.
  Reviewed: 2026-11-12
- `gl_c_xfpt2` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3bf90
  **Inferred.** An 8-byte body with one listed return at its first address and no calls, branches or memory access. The return value is not set in the facts. Role (from name): a member of the two-component transform family; the facts do not confirm it.
  Reviewed: 2026-11-12
- `gl_c_xfpt2i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3bfa0
  **Inferred.** An 8-byte body with one listed return at its first address and no calls, branches or memory access. The return value is not set in the facts. Role (from name): the integer variant of gl_c_xfpt2; the facts do not confirm it.
  Reviewed: 2026-11-12
- `gl_c_xfpt2s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3bfb0
  **Inferred.** An 8-byte body with one listed return at its first address and no calls, branches or memory access. The return value is not set in the facts. Role (from name): the short variant of gl_c_xfpt2; the facts do not confirm it.
  Reviewed: 2026-11-12
- `gl_c_xfpt4` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3bfc0
  **Inferred.** An 8-byte body with one listed return at its first address and no calls, branches or memory access. The return value is not set in the facts. Role (from name): a four-component variant; the facts do not confirm it.
  Reviewed: 2026-11-12
- `gl_c_xfpt4i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3bfd0
  **Inferred.** An 8-byte body with one listed return at its first address and no calls, branches or memory access. The return value is not set in the facts. Role (from name): the integer variant of gl_c_xfpt4; the facts do not confirm it.
  Reviewed: 2026-11-12
- `gl_c_xfpt4s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3bfe0
  **Inferred.** An 8-byte body with one listed return at its first address and no calls, branches or memory access. The return value is not set in the facts. Role (from name): the short variant of gl_c_xfpt4; the facts do not confirm it.
  Reviewed: 2026-11-12
- `gl_c_gl_scrrect` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3bff0
  **Inferred.** An 8-byte body with one listed return at its first address and no calls, branches or memory access. The return value is not set in the facts. Role (from name): a screen-rectangle step; the facts do not confirm it.
  Reviewed: 2026-11-12
- `gl_i_lsbackup` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3c000
  **Inferred.** An 8-byte body with one listed return at its first address and no calls, branches or memory access. The return value is not set in the facts. Role (from name): shares the name stem of gl_c_lsbackup under a different prefix; the facts do not explain it.
  Reviewed: 2026-11-12
