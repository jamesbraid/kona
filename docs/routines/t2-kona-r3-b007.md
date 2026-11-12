# Routine roles, kona batch 7 of the second reading round

Roles for targets 175 to 199 of the ranked second-round list, all in the IGLOO32 `libgl.so` build. Each one comes from the rendered instruction facts at the cited addresses, so every entry is graded inferred. Where the facts stop short of a settled meaning, the entry says so.

- `__iglooMat3i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3e8d0
  **Inferred.** Reads three words from the argument block at a1 (+0x0, +0x4, +0x8) and stores four float words into the context at a0 (+0xc30 to +0xc3c, swc1 at 0xec3e99c to 0xec3e9b4). It compares the first argument word against 0xff at 0xec3e918 and branches on two more flags before the glMaterialfv call at 0xec3e9b0, which takes face and mode from a0+3148 and a0+3144. This looks like the integer-argument material setter, but the facts do not settle how the 0xff compare clamps the values.

- `__iglooMat4f` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3e9d0
  **Inferred.** Copies four float words from the argument at a1 (lwc1 at 0xec3e9e4 to 0xec3e9f0) into context slots at +0xc30 to +0xc3c and then calls glMaterialfv at 0xec3ea20 with face and mode from a0+3148 and a0+3144. It is the float-argument counterpart of the integer setter at 0xec3e8d0, with no range compare.

- `__iglooMat4s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ea40
  **Inferred.** Reads four 16-bit halfwords from a1 (lh at 0xec3ea50 to 0xec3ea78), compares the first against 0xff at 0xec3ea7c, and tests the other two against 0xff at 0xec3eab8 and 0xec3eae0. It stores float words into the context at +0xc30 to +0xc3c and calls glMaterialfv at 0xec3eb44 with the halfword values in a4 and a5. The short-integer variant of the material setter, with the same 0xff range tests.

- `__iglooMat4i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3eb60
  **Inferred.** Reads four 32-bit words from a1 (+0x0, +0x4, +0x8, +0xc), tests three of them against 0xff at 0xec3eb9c, 0xec3ebd8 and 0xec3ec00, stores float words into the context at +0xc30 to +0xc3c, and calls glMaterialfv at 0xec3ec64. This is the same shape as the short variant at 0xec3ea40 with 32-bit operands.

- `__iglooMatCpack` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ec80
  **Inferred.** Reads the context words at +0xc48 and +0xc4c, stores four float words at +0xc30 to +0xc3c (swc1 at 0xec3ed78 to 0xec3ed90), and calls glMaterialfv at 0xec3ed8c with a4 set to the caller's a0. The compares against 0xff at 0xec3eca8 to 0xec3ed48 suggest the packed word is split into byte components, but the facts list only memory accesses and branches, so the unpacking arithmetic is not shown.

- `__iglooMatRgbcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3edb0
  **Inferred.** Tests the three colour arguments at a1, a2 and a3 against the mask -0x100 (a6) and against zero in sign (bltz at 0xec3ede0, 0xec3edfc, 0xec3ee0c), which checks whether each component fits the 0 to 255 range. It then calls glMaterialfv at 0xec3ee34 with face and mode from a0+3148 and a0+3144. The range check is inferred from the mask and the sign tests, not from a named constant.

- `__iglooSetRGBColorProcsToMaterial` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3eec0
  **Inferred.** Stores eight context words at +0x64 to +0x80 and reads the context word at +0xc58. It then calls __iglooSetColorProcsLight through the pointer at 0xecb4740 with the six material setters as arguments: 0xec3e8d0 (integer), 0xec3e9d0 (float), 0xec3ea40 (short), 0xec3eb60 (32-bit integer), 0xec3ec80 (packed) and 0xec3edb0 (RGB). The values stored at +0x64 to +0x80 are not visible in the facts, so the handler table layout is only partly settled.

- `empty_func` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ef30
  **Inferred.** The 8 bytes from 0xec3ef30 to 0xec3ef38 hold only a return at 0xec3ef30 with no loads, stores, calls or branches, and v0 is not set. It is probably a no-op stub that a handler table can point at where no colour work is needed. The facts do not show the caller.

- `__iglooSetRgbColorProcsToNull` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ef40
  **Inferred.** Stores the same context words at +0x64 to +0x80 as the material installer at 0xec3eec0, plus +0xc44, and then calls __iglooSetColorProcsLight through 0xecb4740, passing its own a0 to a3 along unchanged. The result is the value at +3160 or the call return. This is the variant that installs the null colour path, with the stored values not shown in the facts.

- `gl_i_cpack` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3efb0
  **Inferred.** Loads the global gl_wstatep and its word at +0xa8, then calls the function pointer found there with the state pointer as a0 and the caller's a0, a2 and a3 passed through. It is an immediate-mode forwarder into the current state's table. The callee is unknown from the facts.

- `gl_c_cpack` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3eff0
  **Inferred.** Tests the word at 0xecdd9c8 at 0xec3f010. When it is zero, it calls gl_intrptab_insert at 0xec3f050 with the block at 0xecd6bf0 and entry arguments a1 to a3 passed through, then calls gl_compile at 0xec3f02c with a0 = 0x6. When it is nonzero, it calls gl_compile with a0 = 0x6 alone. This looks like the display-list-compile variant of the packed colour call; the name is the only evidence for that.

- `gl_n_cpack` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f070
  **Inferred.** Loads gl_wstatep and its word at +0xa8, then calls the pointer found there with a0 set to the state pointer and a1 set to the word at the caller's a0+0. It forwards the first word of its argument block into the same dispatch slot that gl_i_cpack uses. The returned value is a0+8.

- `__igloolmcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f0c0
  **Inferred.** Reads the state fields at +0xb58 and +0xc40, writes +0xc40 back, and tests the state words at +2904 and +3136 at 0xec3f0e4 and 0xec3f0f0. When the tests allow it, it calls __iglooSyncLmcolor at 0xec3f130 with the state pointer and the argument values, with the flag 0x1 in a7. It is the light-model colour setter that hands the work to the sync routine.

- `__iglooSyncLmcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f130
  **Inferred.** This is the largest routine in the batch, about 1100 bytes, and only part of its structure is settled. It reads the context fields at +0xb58, +0xc40, +0xc04, +0xc44 and +0xc48 to +0xc50, and the global block at abs 0x1004. It calls __iglooSetEnable at 0xec3f184, 0xec3f434 and 0xec3f4f0 with enable id 0xb57 and values 0 or 1, calls __iglooGetGraphicsType at 0xec3f1b8, and calls glColorMaterial at 0xec3f424 and glColor4fv at 0xec3f3ac. It dispatches through jump tables at 0xecd4154 and 0xecd4170 indexed by the context word at +3136, bounds-checked against 7 at 0xec3f290. The role is the colour-material state sync for the lighting path. The jump-table successors at 0xec3f3dc are unresolved, so the full set of cases is not known.

- `gl_i_lmcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f580
  **Inferred.** Calls __igloolmcolor at 0xec3f0c0 with a1 set to zero, passing a0, a2 and a3 through. It is the immediate-mode entry for the light-model colour, with no state work of its own.

- `gl_c_lmcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f5c0
  **Inferred.** Tests the word at 0xecdd9cc at 0xec3f5e0. When it is zero, it calls gl_intrptab_insert at 0xec3f620 with the table entry at 0xecd6c00 and the entry's arguments passed through, then calls gl_compile at 0xec3f5fc with opcode size 0x4. When it is nonzero, it calls gl_compile with opcode size 0x4 alone. It is the display-list-compile variant of the light-model colour call.

- `gl_n_lmcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f640
  **Inferred.** Loads the word at a0+0 and calls __igloolmcolor at 0xec3f0c0 with that word as a0 and a1 set to zero. It returns a0+4, so it steps the caller's argument pointer over one word. It is the indirect variant of the light-model colour forwarder.

- `gl_i_color` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f690
  **Inferred.** Loads gl_wstatep and its word at +0xac, then calls the pointer found there with the state pointer and the caller's a0, a2 and a3 passed through. It is an immediate-mode colour forwarder into the state table, parallel to gl_i_cpack at 0xec3efb0 but using slot +0xac. The callee is unknown from the facts.

- `gl_c_color` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f6d0
  **Inferred.** Tests the word at 0xecdd9d0 at 0xec3f6f0. When it is zero, it calls gl_intrptab_insert at 0xec3f734 with the table entry at 0xecd6c10 and the entry's arguments passed through, then calls gl_compile at 0xec3f710 with opcode size 0x4. When it is nonzero, it calls gl_compile with opcode size 0x4 alone. It is the display-list-compile variant of the colour call.

- `gl_n_color` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f750
  **Inferred.** Loads the halfword at a0+0 (lhu at 0xec3f770) and calls the state pointer at +0xac with that value as a1, passing a2 and a3 through. It returns a0+4. It forwards one 16-bit colour component into the same slot that gl_i_color uses.

- `gl_i_colorf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f7a0
  **Inferred.** Loads gl_wstatep and its word at +0xb0, then calls the pointer found there with the state pointer, the constant 0xa33d0 as a1, and the caller's a2 and a3. It passes the float argument through the fp registers (f13 is set from f12). It is the immediate-mode float colour forwarder. The meaning of the constant 0xa33d0 is not identified in the facts.

- `gl_c_colorf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f7e0
  **Inferred.** Tests the word at 0xecdd9d4 at 0xec3f800. When it is zero, it calls gl_intrptab_insert at 0xec3f840 with the table entry at 0xecd6c20 and the entry's arguments passed through, then calls gl_compile at 0xec3f81c with opcode size 0x4. When it is nonzero, it calls gl_compile with opcode size 0x4 alone. It is the display-list-compile variant of the float colour call.

- `gl_n_colorf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f860
  **Inferred.** Loads the state word at +0xb0 and the float at a0+0 (lwc1 at 0xec3f880), then calls the state pointer with that float in f13 and the caller's a1, a2 and a3 passed through. It returns a0+4. It is the indirect float colour forwarder.

- `gl_i_RGBcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f8b0
  **Inferred.** Loads gl_wstatep and its word at +0xa4, then calls the pointer found there with the state pointer and the caller's a0, a1 and a2 shifted into a1, a2 and a3. It is the immediate-mode RGB colour forwarder. The callee and the meaning of the +0xa4 slot are unknown from the facts.

- `gl_c_RGBcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3f900
  **Inferred.** Tests the word at 0xecdd9d8 at 0xec3f924. When it is zero, it calls gl_intrptab_insert at 0xec3f978 with the table entry at 0xecd6c30 and the entry's arguments passed through, then calls gl_compile at 0xec3f94c with opcode size 0x6. When it is nonzero, it calls gl_compile with opcode size 0x6 alone. The opcode size matches the packed colour variant at 0xec3eff0, not the 0x4 used by the other display-list variants. The facts do not say why.
