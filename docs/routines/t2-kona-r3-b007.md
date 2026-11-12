# Routine roles, kona batch 7 of the second reading round

Roles for targets 175 to 199 of the ranked second-round list, all in the IGLOO32 `libgl.so` build. Each one comes from the rendered instruction facts at the cited addresses, so every entry is graded inferred. Where the facts stop short of a settled meaning, the entry says so.

- `__iglooMat3i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3e8d0
  **Inferred.** Reads three words from the argument block at a1 (+0x0, +0x4, +0x8) and stores four float words into the context at a0 (+0xc30 to +0xc3c, swc1 at 0xec3e99c to 0xec3e9b4). It compares the first argument word against 0xff at 0xec3e918 and branches on two more flags before the glMaterialfv call at 0xec3e9b0, which takes face and mode from a0+3148 and a0+3144. This looks like the integer-argument material setter, but the facts do not settle how the 0xff compare clamps the values.
  Reviewed: 2026-11-12 (sonnet)

- `__iglooMat4f` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3e9d0
  **Inferred.** Copies four float words from the argument at a1 (lwc1 at 0xec3e9e4 to 0xec3e9f0) into context slots at +0xc30 to +0xc3c and then calls glMaterialfv at 0xec3ea20 with face and mode from a0+3148 and a0+3144. It is the float-argument counterpart of the integer setter at 0xec3e8d0, with no range compare.
  Reviewed: 2026-11-12 (sonnet)

- `__iglooMat4s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ea40
  **Inferred.** Reads four 16-bit halfwords from a1 (lh at 0xec3ea50 to 0xec3ea78), compares the first against 0xff at 0xec3ea7c, and tests the other two against 0xff at 0xec3eab8 and 0xec3eae0. It stores float words into the context at +0xc30 to +0xc3c and calls glMaterialfv at 0xec3eb44 with halfword values in a4 and a5. Role (from name): the short-integer variant of the material setter; that the 0xff compares are range tests is not shown by the facts.
  Reviewed: 2026-11-12 (sonnet)

- `__iglooMat4i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3eb60
  **Inferred.** Reads four 32-bit words from a1 (+0x0, +0x4, +0x8, +0xc), tests three of them against 0xff at 0xec3eb9c, 0xec3ebd8 and 0xec3ec00, stores float words into the context at +0xc30 to +0xc3c, and calls glMaterialfv at 0xec3ec64. This is the same shape as the short variant at 0xec3ea40 with 32-bit operands.
  Reviewed: 2026-11-12 (sonnet)

- `__iglooMatCpack` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ec80
  **Inferred.** Reads the context words at +0xc48 and +0xc4c, stores four float words at +0xc30 to +0xc3c (swc1 at 0xec3ed78 to 0xec3ed90), and calls glMaterialfv at 0xec3ed8c with a4 set to the caller's a0. The compares against 0xff at 0xec3eca8 to 0xec3ed48 suggest the packed word is split into byte components, but the facts list only memory accesses and branches, so the unpacking arithmetic is not shown.
  Reviewed: 2026-11-12 (sonnet)

- `__iglooMatRgbcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3edb0
  **Inferred.** Compares a1 and a2 with the mask -0x100 held in a6 (beq at 0xec3edd8 and 0xec3edf4), tests a further value in v1 that the facts do not resolve (beq at 0xec3ee04), and branches on the sign of a1, a2 and a3 (bltz at 0xec3ede0, 0xec3edfc and 0xec3ee0c). It then calls glMaterialfv at 0xec3ee34 with face and mode from a0+3148 and a0+3144. Role (from name): the pattern suggests a 0 to 255 component check, but the facts do not show what the mask and sign branches lead to, and no mask test on a3 is visible.
  Reviewed: 2026-11-12 (sonnet)

- `__iglooSetRGBColorProcsToMaterial` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3eec0
  **Inferred.** Stores eight context words at +0x64 to +0x80 and reads the context word at +0xc58. Only when that word is zero (beq at 0xec3ef04) does it call __iglooSetColorProcsLight through the pointer at 0xecb4740 (call at 0xec3ef1c), with a0 passed through and the six addresses 0xec3e8d0, 0xec3e9d0, 0xec3ea40, 0xec3eb60, 0xec3ec80 and 0xec3edb0 as a1 to a6. When the word is nonzero it returns it without calling. The values stored at +0x64 to +0x80 are not visible in the facts. Role (from name): the six addresses are the material setters in this batch, so this installs material colour handlers; the handler table layout is only partly settled.
  Reviewed: 2026-11-12 (sonnet)

- `empty_func` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ef30
  **Inferred.** The 8 bytes from 0xec3ef30 to 0xec3ef38 hold only a return at 0xec3ef30 with no loads, stores, calls or branches, and v0 is not set. It is probably a no-op stub that a handler table can point at where no colour work is needed. The facts do not show the caller.
  Reviewed: 2026-11-12 (sonnet)

- `__iglooSetRgbColorProcsToNull` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ef40
  **Inferred.** Stores the context words at +0x64 to +0x80 as the routine at 0xec3eec0 does, and +0xc44 as well, and reads the context word at +0xc58. Only when that word is zero (beq at 0xec3ef74) does it call __iglooSetColorProcsLight through 0xecb4740 (call at 0xec3ef94), with a0 to a3 passed through unchanged. The return value is the word at +3160 or the call result. The stored values are not shown in the facts. Role (from name): installs the null colour handlers.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_cpack` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3efb0
  **Inferred.** Loads the global gl_wstatep and its word at +0xa8, then calls the function pointer found there with the state pointer as a0 and the caller's a0, a2 and a3 passed as a1, a2 and a3. The callee is unknown from the facts. Role (from name): an immediate-mode forwarder into the current state's table.
  Reviewed: 2026-11-12 (sonnet)

- `gl_c_cpack` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3eff0
  **Inferred.** Tests the word at 0xecdd9c8 at 0xec3f010. When it is zero, it calls gl_intrptab_insert at 0xec3f050 with the block at 0xecd6bf0 and entry arguments a1 to a3 passed through, then calls gl_compile at 0xec3f02c with a0 = 0x6. When it is nonzero, it calls gl_compile with a0 = 0x6 alone. Role (from name): a display-list-compile variant of the packed colour call; the name is the only evidence for that.
  Reviewed: 2026-11-12 (sonnet)

- `gl_n_cpack` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f070
  **Inferred.** Loads gl_wstatep and its word at +0xa8, then calls the pointer found there with a0 set to the state pointer and a1 set to the word at the caller's a0+0. It forwards the first word of its argument block into the same dispatch slot that gl_i_cpack uses. The returned value is a0+8.
  Reviewed: 2026-11-12 (sonnet)

- `__igloolmcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f0c0
  **Inferred.** Reads the state fields at +0xb58 and +0xc40, writes +0xc40 back (store at 0xec3f11c), and branches at 0xec3f0e4 on the state word at +2904 being nonzero, at 0xec3f0f0 on the state word at +3136 differing from a0, and at 0xec3f0f8 on a1 equalling 1. When the branches reach the call, it calls __iglooSyncLmcolor (entry 0xec3f130) at 0xec3f118 with the state pointer as a0, a1 and a2 passed through, its own a0 as a3 and 0x1 in a7. Role (from name): the light-model colour setter that hands the work to the sync routine.
  Reviewed: 2026-11-12 (sonnet)

- `__iglooSyncLmcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f130
  **Inferred.** This is the largest routine in the batch, about 1100 bytes, and only part of its structure is settled. It reads the context fields at +0xb58, +0xc40, +0xc04, +0xc44 and +0xc48 to +0xc50, and the global block at abs 0x1004. It calls __iglooSetEnable at 0xec3f184, 0xec3f434 and 0xec3f4f0 with enable id 0xb57 and values 0, 1 and 0, calls __iglooGetGraphicsType at 0xec3f1b8, and calls glColorMaterial at 0xec3f424 and glColor4fv at 0xec3f3ac. It dispatches through jump tables (jr at 0xec3f29c and 0xec3f3dc, and a third bounds check at 0xec3f2e8) at 0xecd4154, 0xecd4170 and 0xecd4138, indexed by the context word at +3136 and each bounds-checked against 7 (0xec3f290, 0xec3f2e8, 0xec3f3d0). The table addresses come from the disassembly, not the call facts. The jump-table successors at 0xec3f3dc are unresolved, so the full set of cases is not known. Role (from name): the colour-material state sync for the lighting path.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_lmcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f580
  **Inferred.** Calls __igloolmcolor at 0xec3f0c0 with a1 set to zero, passing a0, a2 and a3 through (call at 0xec3f59c); the facts show no other work. Role (from name): the immediate-mode entry for the light-model colour.
  Reviewed: 2026-11-12 (sonnet)

- `gl_c_lmcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f5c0
  **Inferred.** Tests the word at 0xecdd9cc at 0xec3f5e0. When it is zero, it calls gl_intrptab_insert at 0xec3f620 with the table entry at 0xecd6c00 and the entry's arguments passed through, then calls gl_compile at 0xec3f5fc with a0 = 0x4. When it is nonzero, it calls gl_compile with a0 = 0x4 alone. Role (from name): the display-list-compile variant of the light-model colour call.
  Reviewed: 2026-11-12 (sonnet)

- `gl_n_lmcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f640
  **Inferred.** Loads the word at a0+0 and calls __igloolmcolor at 0xec3f0c0 with that word as a0 and a1 set to zero (a2 and a3 passed through). It returns a0+4, so it advances the caller's pointer by one word. Role (from name): the indirect variant of the light-model colour forwarder.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_color` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f690
  **Inferred.** Loads gl_wstatep and its word at +0xac, then calls the function pointer found there with the state pointer as a0 and the caller's a0, a2 and a3 passed as a1, a2 and a3. It uses slot +0xac where gl_i_cpack at 0xec3efb0 uses +0xa8. The callee is unknown from the facts. Role (from name): an immediate-mode colour forwarder into the state table.
  Reviewed: 2026-11-12 (sonnet)

- `gl_c_color` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f6d0
  **Inferred.** Tests the word at 0xecdd9d0 at 0xec3f6f0. When it is zero, it calls gl_intrptab_insert at 0xec3f734 with the table entry at 0xecd6c10 and the entry's arguments passed through, then calls gl_compile at 0xec3f710 with a0 = 0x4. When it is nonzero, it calls gl_compile with a0 = 0x4 alone. Role (from name): the display-list-compile variant of the colour call.
  Reviewed: 2026-11-12 (sonnet)

- `gl_n_color` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f750
  **Inferred.** Loads the halfword at a0+0 (lhu at 0xec3f770) and calls the function pointer at state+0xac with that value as a1, a0 set to the state pointer and a2 and a3 passed through. It returns a0+4. Role (from name): forwards one 16-bit colour value into the same slot that gl_i_color uses.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_colorf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f7a0
  **Inferred.** Loads gl_wstatep and its word at +0xb0, then calls the function pointer found there with the state pointer as a0 and the caller's a2 and a3 passed through. It copies f12 into f13 in the call's delay slot (mov.s at 0xec3f7c8). The 0xa33d0 shown as a1 in the call facts is the global-pointer setup value left in a1 by the prologue (lui and addiu at 0xec3f7a0 and 0xec3f7a8), not an argument constant. Role (from name): an immediate-mode float colour forwarder.
  Reviewed: 2026-11-12 (sonnet)

- `gl_c_colorf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f7e0
  **Inferred.** Tests the word at 0xecdd9d4 at 0xec3f800. When it is zero, it calls gl_intrptab_insert at 0xec3f840 with the table entry at 0xecd6c20 and the entry's arguments passed through, then calls gl_compile at 0xec3f81c with a0 = 0x4. When it is nonzero, it calls gl_compile with a0 = 0x4 alone. Role (from name): the display-list-compile variant of the float colour call.
  Reviewed: 2026-11-12 (sonnet)

- `gl_n_colorf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f860
  **Inferred.** Loads the state word at +0xb0 and the float at a0+0 (lwc1 at 0xec3f880), then calls the function pointer at state+0xb0 with the state pointer as a0, that float in f13 and the caller's a1, a2 and a3 passed through. It returns a0+4. Role (from name): the indirect float colour forwarder.
  Reviewed: 2026-11-12 (sonnet)

- `gl_i_RGBcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f8b0
  **Inferred.** Loads gl_wstatep and its word at +0xa4, then calls the function pointer found there with the state pointer as a0 and the caller's a0, a1 and a2 shifted into a1, a2 and a3. The callee and the meaning of the +0xa4 slot are unknown from the facts. Role (from name): the immediate-mode RGB colour forwarder.
  Reviewed: 2026-11-12 (sonnet)

- `gl_c_RGBcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f900
  **Inferred.** Tests the word at 0xecdd9d8 at 0xec3f924. When it is zero, it calls gl_intrptab_insert at 0xec3f978 with the table entry at 0xecd6c30 and the entry's arguments passed through, then calls gl_compile at 0xec3f94c with a0 = 0x6. When it is nonzero, it calls gl_compile with a0 = 0x6 alone. The value 0x6 matches gl_c_cpack at 0xec3eff0, not the 0x4 used by the other display-list variants in this batch. The facts do not say why. Role (from name): the display-list-compile variant of the RGB colour call.
  Reviewed: 2026-11-12 (sonnet)
