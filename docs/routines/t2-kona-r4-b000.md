# Tier-2 routine roles, kona round 4 batch 0

Roles for targets 0 to 24 of the ranked tier-2 list, all in the IGLOO32 `libgl.so`. Each role comes from the rendered instruction facts at the cited addresses, so every entry is graded inferred. The grader accepted all 25 rendered entries. Where the facts do not show what a constant, global or callee means, the entry says so.

- `gl_c_swapinterval` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36ce0
  **Inferred.** Tests the word at abs 0xecdd940 at 0xec36d00. When it is zero, it calls gl_intrptab_insert (0xec5f9f0) at 0xec36d44 with the table entry 0xecd6980 and the caller's three arguments, then calls gl_compile (0xecb5010) with the constant 4 and a frame at sp-48. When it is nonzero, it calls gl_compile alone. The return value is the gl_compile result. The facts do not show what the constant 4 selects.
- `gl_g_RGBsize` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36f90
  **Inferred.** Follows gl_wstatep to the pointer at offset 0x114 (276), then reads the word at offset 0x38 of the record that pointer names. It compares that word with 0x10 at 0xec36fb0 and returns it either way. A store at 0xec36fc4 writes a word at offset 0x24 of the record at offset 60 from the same pointer. The facts do not show what the field at 0x38 holds.
- `gl_backbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37320
  **Inferred.** Reads the current draw-buffer state through gl_wstatep and the nested pointers at 276 and 60. It calls DrawBufferIrisToOpen (0xec371e0) at 0xec37370 and then __iglooDrawBuffer (0xecb7390) at 0xec3737c. It branches on a comparison against 1 at 0xec3734c, and returns 1 or the __iglooDrawBuffer result at 0xec3738c. The name suggests the back buffer selector, which fits these calls.
- `gl_leftbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec373b0
  **Inferred.** The left-buffer variant of the draw-buffer selector. It reads the same gl_wstatep chain, calls DrawBufferIrisToOpen (0xec371e0) at 0xec3740c, and then __iglooDrawBuffer (0xecb7390) at 0xec37418. It compares the word at offset 0x38 with the constant 0x10 at 0xec373d8 and the word at offset 8 at 0xec373e4 before choosing its path. The return at 0xec37428 is the __iglooDrawBuffer result or an unset value.
- `gl_c_backbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37650
  **Inferred.** The compile-mode back-buffer entry. It is skipped when the flag at abs 0xecdd94c is zero, which is the branch at 0xec37670. Otherwise it calls gl_compile (0xecb5010) with the constant 4 at 0xec3768c and gl_intrptab_insert (0xec5f9f0) with table entry 0xecd69b0 at 0xec376b0. The return value is the gl_compile result.
- `gl_i_charstr` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec38130
  **Inferred.** Branches on its first argument a0 at 0xec3813c. When a0 is nonzero it loads the word at abs 0xecdab88 at 0xec3814c. Both paths then reach a shared exit through the `bgezl` at 0xec38154, and the return at 0xec38144 sets v0 to the constant 0xaaa40. The facts show the branch structure but not what the loaded word controls.
- `gl_g_getheight` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec385a0
  **Inferred.** Gets a font height from the font record at gl_wstatep+3016. If that pointer is zero at 0xec385c0, it calls set_def_font (0xec3a710) first. It then returns the halfword at offset 4 of the record reached through the pointers at 3016, 8 and 4. The name suggests a text-metric getter, which the loads and the default-font call are consistent with.
- `gl_g_getdescender` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec38610
  **Inferred.** The descender counterpart of the height getter at 0xec385a0. It reads the same font record at gl_wstatep+3016 and calls set_def_font (0xec3a710) at 0xec38654 when that pointer is zero. It returns the halfword at offset 0 of the record reached through the pointers at 3016 and 8, which the name suggests is the descender value.
- `gl_c_font` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec386d0
  **Inferred.** The compile-mode font entry. It tests the word at abs 0xecdd964 at 0xec386f0 and skips the work when it is zero. Otherwise it calls gl_compile (0xecb5010) with the constant 4 at 0xec38710 and gl_intrptab_insert (0xec5f9f0) with table entry 0xecd6a70 at 0xec38734. The return at 0xec38724 is the gl_compile result.
- `gl_c_scrsubdivide` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3bf50
  **Inferred.** An 8-byte body that holds only a return at 0xec3bf50. It makes no call, takes no branch and stores nothing, so it does no work in this build and writes no return value.