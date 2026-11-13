# Tier-2 routine roles, kona batch 5

Roles for targets 125 to 149 of the ranked tier-2 list. Each one comes from the rendered instruction facts at the cited addresses, not from a read of the raw disassembly, so every entry is graded inferred. Names come from the binary's symbol table and are used only as labels; where the facts leave a point open, the entry says so.

- `fntdescender` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3a880
  **Inferred.** Reads a font record through its argument. It loads a pointer at +0x8 and a word at +0xc (0xec3a88c). When the word at +0xc is not positive it returns 0 (0xec3a974). When the +0x8 pointer is zero it takes a second path that loads a table pointer at +0x14 and then [+0x14]+0x0 (0xec3a904, 0xec3a91c). Otherwise it loops over 16-bit loads through the +0x8 pointer (0xec3a8a4, 0xec3a8cc, 0xec3a8e0) and exits at 0xec3a8fc with a computed value; the second path also exits at 0xec3a8fc. The name suggests a font descender metric, but the facts do not show which field becomes the returned value.
  Reviewed: 2026-11-12

- `fntwidth` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3a980
  **Inferred.** Has the same layout as the descender routine one entry earlier: a font record at a0 with a pointer at +0x8, 16-bit fields loaded at +0xc (0xec3a9ac), a table through +0x14 (0xec3aa2c), and exits with 0 at 0xec3aa94 and a computed value at 0xec3a9d4. The shared structure fits a pair of font metric queries. Which field is the width is not settled by the facts.
  Reviewed: 2026-11-12

- `gl_c_scrbox` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3aaa0
  **Inferred.** The body is 8 bytes and holds only a return at 0xec3aaa0, with no loads, stores, calls or branches. It has no effect inside this build.
  Reviewed: 2026-11-12

- `gl_c_mswapbuffers` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3aab0
  **Inferred.** An 8-byte body with only a return at 0xec3aab0 and no loads, stores, calls or branches. It has no effect inside this build.
  Reviewed: 2026-11-12

- `gl_i_scrbox` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3aac0
  **Inferred.** An 8-byte body with only a return at 0xec3aac0 and no loads, stores, calls or branches. It has no effect inside this build.
  Reviewed: 2026-11-12

- `gl_i_mswapbuffers` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3aad0
  **Inferred.** An 8-byte body with only a return at 0xec3aad0 and no loads, stores, calls or branches. It has no effect inside this build.
  Reviewed: 2026-11-12

- `circle_init` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3aae0
  **Inferred.** Calls gl_sincos (0xec3ab1c) with output slots at sp-48 and sp-44, then stores two single-precision values (0xec3ab34, 0xec3ab40) and loops while s1 is nonzero (0xec3ab3c). The pattern fits filling a sine and cosine pair for each segment of a circle. The facts do not show where the loop count in s1 comes from, so the segment count is open.
  Reviewed: 2026-11-12

- `gl_n_circ_draw` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ab70
  **Inferred.** Loads a pointer through a global at 0xec3ab90, then loads fields at +0xd8 (0xec3ab94) and +0xdc (0xec3abd8) of it. It calls an unnamed callee with the constant 0x2 as its first argument (0xec3aba4), calls glVertex2fv inside a loop (0xec3abc4, loop branch at 0xec3abd0), then calls an unnamed callee (0xec3abdc) and popmatrix (0xec3abf0). The return at 0xec3ac08 is a0. The routine contains no pushmatrix call. The vertex loop with a closing popmatrix fits an unfilled circle outline, but which primitive the constant 0x2 selects is not in the facts.
  Reviewed: 2026-11-12

- `gl_n_circf_draw` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ac10
  **Inferred.** Loads a pointer through a global at 0xec3ac2c, then fields at +0xd8 (0xec3ac30), +0x4 (0xec3ac48), +0x8 (0xec3ac70, 0xec3ac88) and +0xdc (0xec3ac98) of it. It passes the constant 0x6 to its first callee (0xec3ac3c), makes a second unnamed call (0xec3ac54), then runs a loop around an unnamed call (0xec3ac74, loop branch at 0xec3ac80). After the loop it makes one more unnamed call with the table address 0xecdf380 (0xec3ac90), an unnamed call (0xec3aca0) and popmatrix (0xec3acac). It returns a0 (0xec3acc0). Compared with the unfilled circle draw one entry earlier it uses 0x6 where that uses 0x2, and it calls through +0x4 and +0x8 where that routine calls glVertex2fv. The facts do not show the primitive the constant 0x6 selects.
  Reviewed: 2026-11-12

- `gl_n_circF_setup` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3acd0
  **Inferred.** Loads three single-precision values from its argument at +0x0, +0x4 and +0x8 (0xec3ad10, 0xec3ad08, 0xec3acec). It calls pushmatrix (0xec3acf8), then translate with the first two values as its float arguments (0xec3ad0c), then scale with the third value passed as two of its float arguments (0xec3ad20). It returns a0+12 (0xec3ad3c). Role (from name): per-circle matrix setup that advances its argument pointer past the three floats.
  Reviewed: 2026-11-12

- `gl_g_circs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ad50
  **Inferred.** Wrapper around gl_compile. It calls gl_compile through the pointer at 0xecb5010 with constant 0x8 (0xec3adcc) and returns its result (0xec3addc). Before that, when the word at 0xecdd96c is zero, it calls gl_intrptab_insert with a0 = 0xecd6a80 and its own a1-a3 passed through (0xec3ae00); this call does not use the gl_compile result. When the halfword at 0xecdd968 is zero it calls circle_init (0xec3ade8) through a bgezall that is always taken. The facts do not show which record kind is stored.
  Reviewed: 2026-11-12

- `gl_n_circs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ae20
  **Inferred.** Loads the word at 0xece8bf0 (gl_inMoveDraw, 0xec3ae38, branch at 0xec3ae3c) and branches on it. When it is nonzero it calls __iglooNCloseMoveDraw (0xec3ae48); when it is zero that call is skipped. On both paths it then calls gl_n_circF_setup (0xec3ae58) and gl_n_circ_draw (0xec3ae64) with the setup return as its first argument, and returns the gl_n_circ_draw result (0xec3ae74). Role (from name): closes a pending move-draw batch if one is open and then draws one unfilled circle.
  Reviewed: 2026-11-12

- `gl_g_circi` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ae80
  **Inferred.** Same compile-time wrapper shape as gl_g_circs one entry earlier: gl_compile with constant 0x8 (0xec3aef8), circle_init (0xec3af14), and gl_intrptab_insert at 0xec3af2c with the slot 0xecd6a90. The branches read flag words at 0xecdd970 and 0xecdd968. The difference from the circs wrapper is the slot and flag address, which suggests a separate record kind, but the facts do not say what that kind is.
  Reviewed: 2026-11-12

- `gl_n_circi` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3af40
  **Inferred.** Same body as gl_n_circs. Loads the word at 0xece8bf0 (gl_inMoveDraw, 0xec3af58, branch at 0xec3af5c) and branches on it. When it is nonzero it calls __iglooNCloseMoveDraw (0xec3af68); when it is zero that call is skipped. On both paths it then calls gl_n_circF_setup (0xec3af78) and gl_n_circ_draw (0xec3af84) with the setup return as its first argument, and returns the gl_n_circ_draw result (0xec3af94). Role (from name): closes a pending move-draw batch if one is open and then draws one unfilled circle.
  Reviewed: 2026-11-12

- `gl_g_circ` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3afa0
  **Inferred.** Compile-time wrapper. When the flag word at 0xecdd974 is zero, it calls gl_intrptab_insert with slot 0xecd6aa0 (0xec3b034) first. When the halfword at 0xecdd968 is zero, it calls circle_init (0xec3b01c). Then, on every path, it calls gl_compile with constant 0x8 and passes the address 0xec3b050 as its third argument (0xec3b000), which is the unfilled circle draw routine gl_n_circ. The compiled record probably dispatches to gl_n_circ, but the facts show only the address passed.
  Reviewed: 2026-11-12

- `gl_n_circ` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3b050
  **Inferred.** Same body as gl_n_circs and gl_n_circi. Loads the word at 0xece8bf0 (gl_inMoveDraw, 0xec3b068, branch at 0xec3b06c) and branches on it. When it is nonzero it calls __iglooNCloseMoveDraw (0xec3b078); when it is zero that call is skipped. On both paths it then calls gl_n_circF_setup (0xec3b088) and gl_n_circ_draw (0xec3b094) with the setup return as its first argument, and returns the gl_n_circ_draw result (0xec3b0a4). Role (from name): closes a pending move-draw batch if one is open and then draws one unfilled circle.
  Reviewed: 2026-11-12

- `gl_g_circfs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3b0b0
  **Inferred.** Compile-time wrapper like gl_g_circs, with gl_compile and constant 0x8 (0xec3b12c), circle_init (0xec3b148), and gl_intrptab_insert with slot 0xecd6ab0 (0xec3b160). Branches read flags at 0xecdd978 and 0xecdd968. The name suggests the filled variant of the circs record, but the facts do not show what is stored differently.
  Reviewed: 2026-11-12

- `gl_n_circfs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3b180
  **Inferred.** Loads the word at 0xece8bf0 (gl_inMoveDraw, 0xec3b198, branch at 0xec3b19c) and branches on it. When it is nonzero it calls __iglooNCloseMoveDraw (0xec3b1a8); when it is zero that call is skipped. On both paths it then calls gl_n_circF_setup (0xec3b1b8) and gl_n_circf_draw (0xec3b1c4) with the setup return as its first argument, and returns the gl_n_circf_draw result (0xec3b1d4). Role (from name): closes a pending move-draw batch if one is open and then draws one filled circle.
  Reviewed: 2026-11-12

- `gl_g_circfi` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3b1e0
  **Inferred.** Compile-time wrapper: gl_compile with constant 0x8 (0xec3b258), circle_init (0xec3b274), and gl_intrptab_insert with slot 0xecd6ac0 (0xec3b28c). Branches read flags at 0xecdd97c and 0xecdd968. Like gl_g_circi, it differs from its siblings by slot and flag address only, and the facts do not say what record kind that is.
  Reviewed: 2026-11-12

- `gl_n_circfi` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3b2a0
  **Inferred.** Same body as gl_n_circfs. Loads the word at 0xece8bf0 (gl_inMoveDraw, 0xec3b2b8, branch at 0xec3b2bc) and branches on it. When it is nonzero it calls __iglooNCloseMoveDraw (0xec3b2c8); when it is zero that call is skipped. On both paths it then calls gl_n_circF_setup (0xec3b2d8) and gl_n_circf_draw (0xec3b2e4) with the setup return as its first argument, and returns the gl_n_circf_draw result (0xec3b2f4). Role (from name): closes a pending move-draw batch if one is open and then draws one filled circle.
  Reviewed: 2026-11-12

- `gl_g_circf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3b300
  **Inferred.** Compile-time wrapper. When the flag word at 0xecdd980 is zero, it calls gl_intrptab_insert with slot 0xecd6ad0 (0xec3b394) first. When the halfword at 0xecdd968 is zero, it calls circle_init (0xec3b37c). Then, on every path, it calls gl_compile with constant 0x8 and passes 0xec3b3b0, the filled draw routine gl_n_circf, as its third argument (0xec3b360). As with gl_g_circ, the compiled record most likely dispatches to the address it was given, but the facts show only that address.
  Reviewed: 2026-11-12

- `gl_n_circf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3b3b0
  **Inferred.** Same body as gl_n_circfs and gl_n_circfi. Loads the word at 0xece8bf0 (gl_inMoveDraw, 0xec3b3c8, branch at 0xec3b3cc) and branches on it. When it is nonzero it calls __iglooNCloseMoveDraw (0xec3b3d8); when it is zero that call is skipped. On both paths it then calls gl_n_circF_setup (0xec3b3e8) and gl_n_circf_draw (0xec3b3f4) with the setup return as its first argument, and returns the gl_n_circf_draw result (0xec3b404). Role (from name): closes a pending move-draw batch if one is open and then draws one filled circle.
  Reviewed: 2026-11-12

- `endpt_cmplr` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3b410
  **Inferred.** Role (from name): computes an arc endpoint record from two angles. It range-checks each angle against 0xe10 (3600) at 0xec3b430, 0xec3b44c, 0xec3b48c, with conditional adjustments in the branch delay slots at 0xec3b450, 0xec3b46c, 0xec3b490 and 0xec3b4ac, so the unit is probably tenths of a degree, judging by the modulus. It calls gl_sincos twice (0xec3b4bc, 0xec3b5a0), the second time with the table 0xecdf388, and writes six fields at a0+0x0 through a0+0x14 (swc1 at +0x0, +0x4, +0x10, +0x14 and sw at +0x8, +0xc). It returns a0+24. The facts do not say what each field holds.
  Reviewed: 2026-11-12

- `gl_n_arc_draw` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3b5e0
  **Inferred.** Loads a pointer through a global at 0xec3b600, then fields at +0xd8 (0xec3b604) and +0xdc (0xec3b694) of it, and reads the argument fields at +0xc and +0x8 (0xec3b62c, 0xec3b634). It calls an unnamed callee with the constant 0x3 (0xec3b610), emits its first point with glVertex2fv (0xec3b624), then emits the rest in a loop with glVertex2fv (0xec3b664, loop at 0xec3b670) and a final point at a0+16 (0xec3b68c). It finishes with an unnamed call (0xec3b698) and popmatrix (0xec3b6a4). The return is a0+24. This fits an arc outline drawn between the two points, with the count taken from +0xc. The facts do not show what constant 0x3 selects.
  Reviewed: 2026-11-12

- `gl_n_arcf_draw` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3b6d0
  **Inferred.** Same call sequence as gl_n_arc_draw with a different constant: the unnamed callee takes 0x6 (0xec3b700), it calls glVertex2i with (0, 0) (0xec3b710), which fits a center vertex, then glVertex2f with values loaded from the argument at +0x4 and +0x0 (0xec3b728). A loop calls glVertex2f (0xec3b768, loop branch at 0xec3b774), and a final glVertex2f uses the argument fields at +0x14 and +0x10 (0xec3b794). The facts do not show where the loop's values come from. It ends with an unnamed call (0xec3b7a0) and popmatrix (0xec3b7ac), and returns a0+24 at 0xec3b7c4. Its shape fits a filled arc drawn around a center vertex, but the facts do not show the primitive that constant 0x6 selects.
  Reviewed: 2026-11-12
