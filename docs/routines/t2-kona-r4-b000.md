# Tier-2 routine roles, kona round 4 batch 0

Roles for targets 0 to 24 of the ranked tier-2 list, all in the IGLOO32 `libgl.so`. Each role comes from the rendered instruction facts at the cited addresses, so every entry is graded inferred. The grader accepted all 25 rendered entries. Where the facts do not show what a constant, global or callee means, the entry says so.

- `gl_c_swapinterval` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36ce0
  **Inferred.** Tests the word at abs 0xecdd940 at 0xec36d00. When it is nonzero (the fall-through), it calls gl_compile (0xecb5010) at 0xec36d20 with the constant 4 as a0 and a frame at sp-48 as a1, and returns the gl_compile result at 0xec36d34. When it is zero, the branch goes to 0xec36d3c, past that return, and the facts list gl_intrptab_insert (0xec5f9f0) at 0xec36d44 with the table entry 0xecd6980 as a0 and the entry values of a1 to a3 passed through. The facts do not show what gl_intrptab_insert returns or what the constant 4 selects.
  Reviewed: 2026-11-12 (sonnet)
- `gl_g_RGBsize` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36f90
  **Inferred.** Follows gl_wstatep to the pointer at offset 0x114 (276), then reads the word at offset 0x38 of the record that pointer names. It compares that word with 0x10 at 0xec36fb0 and returns it on both outcomes. A store of a word at offset 0x24 appears at 0xec36fc4, after the return at 0xec36fc0; the facts do not show its base register. They also do not show what the field at 0x38 holds.
  Reviewed: 2026-11-12 (sonnet)
- `gl_backbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37320
  **Inferred.** Follows gl_wstatep and the nested pointers at 276 and 60 to a word, which it compares with 1 at 0xec3734c (a branch to 0xec37384 when equal). It tests a0 at 0xec37354. It calls DrawBufferIrisToOpen (0xec371e0) at 0xec37370 and then __iglooDrawBuffer (0xecb7390) at 0xec3737c, with the DrawBufferIrisToOpen result as a0. It returns either 1 or the __iglooDrawBuffer result at 0xec3738c. Role (from name): a back-buffer selector; the facts do not say what the buffer state means.
  Reviewed: 2026-11-12 (sonnet)
- `gl_leftbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec373b0
  **Inferred.** Follows the same gl_wstatep chain. It compares the word at offset 0x38 of the record at 276 with 0x10 at 0xec373d8, and tests the word at offset 8 of the record at 276+60 against zero at 0xec373e4. Each branch goes to 0xec37424, past the two calls, when the first word is not 0x10 or the second is zero. Otherwise it calls DrawBufferIrisToOpen (0xec371e0) at 0xec3740c and then __iglooDrawBuffer (0xecb7390) at 0xec37418. The return at 0xec37428 is one of the __iglooDrawBuffer result or a value the facts do not resolve. Role (from name): a left-buffer variant of the draw-buffer selector.
  Reviewed: 2026-11-12 (sonnet)
- `gl_c_backbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37650
  **Inferred.** Tests the word at abs 0xecdd94c at 0xec37670. When it is nonzero (the fall-through), it calls gl_compile (0xecb5010) at 0xec3768c with the constant 4 as a0 and sp-48 as a1, and returns the gl_compile result at 0xec376a0. When it is zero, the branch goes to 0xec376a8, past that return, and the facts list gl_intrptab_insert (0xec5f9f0) at 0xec376b0 with the table entry 0xecd69b0 as a0 and the entry values of a1 to a3 passed through. The facts do not show what gl_intrptab_insert returns. Role (from name): a compile-mode variant of the back-buffer call.
  Reviewed: 2026-11-12 (sonnet)
- `gl_i_charstr` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec38130
  **Inferred.** Branches on its first argument a0 at 0xec3813c. When a0 is nonzero the branch goes to 0xec3814c, where a word is loaded (offset 0). When a0 is zero the fall-through reaches the return at 0xec38144, which sets v0 to the constant 0xaaa40. The facts show nothing after the load at 0xec3814c, so they do not show how that path exits or what the loaded word controls.
  Reviewed: 2026-11-12 (sonnet)
- `gl_g_getheight` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec385a0
  **Inferred.** Loads the word at gl_wstatep+3016 and tests it at 0xec385c0. When it is nonzero it follows the pointer at offset 8 of that record and returns the halfword at offset 4 of the result (0xec385d4). When it is zero the branch goes to 0xec385dc and it calls set_def_font (0xec3a710) at 0xec385e4, passing a0 and a1 through and 0xaa5d0 as a3, then reloads the same chain and returns the same halfword at 0xec38608. Role (from name): a font height getter; the facts do not say what the field holds.
  Reviewed: 2026-11-12 (sonnet)
- `gl_g_getdescender` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec38610
  **Inferred.** Loads the word at gl_wstatep+3016 and tests it at 0xec38630. When it is nonzero it follows the pointer at offset 8 of that record and returns the halfword at offset 0 of the result (0xec38644). When it is zero the branch goes to 0xec3864c and it calls set_def_font (0xec3a710) at 0xec38654, passing a0 and a1 through and 0xaa560 as a3, then reloads the same chain and returns the same halfword at 0xec38678. Role (from name): a font descender getter; the facts do not say what the field holds.
  Reviewed: 2026-11-12 (sonnet)
- `gl_c_font` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec386d0
  **Inferred.** Tests the word at abs 0xecdd964 at 0xec386f0. When it is nonzero (the fall-through), it calls gl_compile (0xecb5010) at 0xec38710 with the constant 4 as a0 and sp-48 as a1, and returns the gl_compile result at 0xec38724. When it is zero, the branch goes to 0xec3872c, past that return, and the facts list gl_intrptab_insert (0xec5f9f0) at 0xec38734 with the table entry 0xecd6a70 as a0 and the entry values of a1 to a3 passed through. The facts do not show what gl_intrptab_insert returns. Role (from name): a compile-mode variant of the font call.
  Reviewed: 2026-11-12 (sonnet)
- `gl_c_scrsubdivide` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3bf50
  **Inferred.** An 8-byte body that holds only a return at 0xec3bf50. It makes no call, takes no branch and stores nothing, so it does no work in this build and writes no return value.
  Reviewed: 2026-11-12 (sonnet)