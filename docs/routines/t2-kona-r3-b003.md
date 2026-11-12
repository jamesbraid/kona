# Tier-2 routine roles, kona round 3 batch 3

Roles for targets 75 to 99 of the ranked tier-2 list, all in the IGLOO32 `libgl.so`. Each role comes from the rendered instruction facts at the cited addresses, so every entry is graded inferred. Several callees (`__iglooNCloseMoveDraw`, `gl_compile`, `gl_intrptab_insert`) are named only by the symbol table, and their behaviour is not read here. The meaning of the global flags at 0xece8bf0 and the compile-state words at 0xecdd9xx is not settled by these facts.

- `gl_i_backbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37600
  **Inferred.** Reads the global flag at 0xece8bf0 (`gl_inMoveDraw`). When the flag is nonzero it calls `__iglooNCloseMoveDraw` at 0xec92d80 first, then calls `gl_backbuffer` at 0xec37320 and returns its result. The facts do not say what the flag means.
  Reviewed: 2026-11-12 (sonnet)
- `gl_c_backbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37650
  **Inferred.** Tests the word at 0xecdd94c. When it is zero it calls `gl_intrptab_insert` at 0xec5f9f0 with the entry 0xecd69b0 and the caller's a1 to a3. When it is nonzero it instead calls `gl_compile` at 0xecb5010 with the constant 0x4 as a0 and a stack buffer (sp-48) as a1, and returns `gl_compile`'s result. The facts do not show what `gl_intrptab_insert` returns. Role (from name): a compile-time variant of the back-buffer call; the record code 0x4 and the table are not identified here.
  Reviewed: 2026-11-12 (sonnet)
- `gl_n_backbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec376d0
  **Inferred.** Checks the flag at 0xece8bf0 and calls `__iglooNCloseMoveDraw` at 0xec92d80 when it is set. It loads the first word of its argument, passes that word to `gl_backbuffer` at 0xec37320, and returns its argument pointer plus 4.
  Reviewed: 2026-11-12 (sonnet)
- `gl_i_leftbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37730
  **Inferred.** Same shape as `gl_i_backbuffer`: when the flag at 0xece8bf0 is set it calls `__iglooNCloseMoveDraw` at 0xec92d80, then calls `gl_leftbuffer` at 0xec373b0 and returns its result.
  Reviewed: 2026-11-12 (sonnet)
- `gl_c_leftbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37780
  **Inferred.** Same shape as `gl_c_backbuffer`: tests the word at 0xecdd950. When it is zero it calls `gl_intrptab_insert` at 0xec5f9f0 with the entry 0xecd69c0. When it is nonzero it instead calls `gl_compile` at 0xecb5010 with the constant 0x4 as a0 and returns `gl_compile`'s result. The purpose of the test is not settled.
  Reviewed: 2026-11-12 (sonnet)
- `gl_n_leftbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37800
  **Inferred.** Same shape as `gl_n_backbuffer`: checks the flag at 0xece8bf0, calls `__iglooNCloseMoveDraw` at 0xec92d80 when it is set, passes the first word of its argument to `gl_leftbuffer` at 0xec373b0, and returns its argument pointer plus 4.
  Reviewed: 2026-11-12 (sonnet)
- `gl_i_rightbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37860
  **Inferred.** Same shape as `gl_i_backbuffer`: when the flag at 0xece8bf0 is set it calls `__iglooNCloseMoveDraw` at 0xec92d80, then calls `gl_rightbuffer` at 0xec37440 and returns its result.
  Reviewed: 2026-11-12 (sonnet)
- `gl_c_rightbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec378b0
  **Inferred.** Same shape as `gl_c_backbuffer`: tests the word at 0xecdd954. When it is zero it calls `gl_intrptab_insert` at 0xec5f9f0 with the entry 0xecd69d0. When it is nonzero it instead calls `gl_compile` at 0xecb5010 with the constant 0x4 as a0 and returns `gl_compile`'s result. The purpose of the test is not settled.
  Reviewed: 2026-11-12 (sonnet)
- `gl_n_rightbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37930
  **Inferred.** Same shape as `gl_n_backbuffer`: checks the flag at 0xece8bf0, calls `__iglooNCloseMoveDraw` at 0xec92d80 when it is set, passes the first word of its argument to `gl_rightbuffer` at 0xec37440, and returns its argument pointer plus 4.
  Reviewed: 2026-11-12 (sonnet)
- `gl_do_callfunc` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37990
  **Inferred.** Takes its index in a1 (the second argument) and a record pointer in a2. When a1 is 0xb or more (unsigned) it branches to the exit at 0xec379f4; smaller values go to one of 11 call sites, and the facts show the table address 0xecd410c and a1 scaled by 4 in the argument setup of some of them. Each call site passes a1 as a0 and words loaded from the record at a2 (offsets within 0x0 to 0x24, fewer words in the later sites) as the following arguments. All 11 callees are unresolved in the facts, so the mapping from index to operation is not settled, and the facts do not show how the table is used.
  Reviewed: 2026-11-12 (sonnet)
- `gl_ecallfunc` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37c00
  **Inferred.** Tests the word at 0xecdd958. When it is zero it calls `gl_intrptab_insert` at 0xec5f9f0 with the entry 0xecd69e0 and the caller's a1 to a3. When it is nonzero it compares the count in a2 (signed) with 0xb: when a2 is 0xb or more it calls `gl_ErrorHandler` at 0xec5d440 with code 0x48, severity 2, the word at 0xecd69ec and the entry 0xecd69e0; when it is smaller it runs a loop-like sequence of loads and a store (the -1 test at 0xec37ca8 is not fully read) and then calls `gl_compile` at 0xecb5010 with a stack buffer at sp-160 and returns `gl_compile`'s result.
  Reviewed: 2026-11-12 (sonnet)
- `gl_n_gl_ecallfunc` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37d20
  **Inferred.** Checks the flag at 0xece8bf0 and calls `__iglooNCloseMoveDraw` at 0xec92d80 when it is set. It then calls `gl_do_callfunc` at 0xec37990 with the word at [a0+4], the word at [a0], and the address a0+12. The return value is a0+12 plus a term computed from the words it read at a0.
  Reviewed: 2026-11-12 (sonnet)
- `__GLicallfunc` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37e90
  **Inferred.** Reads the word of the open-object header `gl_openobjhdr`. The branch at 0xec37eb8 goes to 0xec37f34 when that word is zero; the `gl_compile` call at 0xecb5010 (call at 0xec37f2c, stack buffer sp-128) sits on the other side of that branch, so the clear-header case is not the one that compiles. A second branch at 0xec37ec0 on a value the facts do not resolve reaches the `gl_ErrorHandler` call at 0xec5d440 when that value is zero (code 0x48, severity 2, the word at 0xecd6a2c as the third argument). It returns either the constant 0xaace0 or `gl_compile`'s result; which condition selects which is not settled.
  Reviewed: 2026-11-12 (sonnet)
- `gl_i_callobj` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37f80
  **Inferred.** When the flag at 0xece8bf0 is set it calls `__iglooNCloseMoveDraw` at 0xec92d80. It then calls `gl_findhash` at 0xec78fa0 passing its own a0 and a1 of -0x1. When the lookup returns zero it calls `gl_getnewobjhdr` at 0xec96840; if that returns zero the branch at 0xec38000 does not take the path to the load and `gl_interpret`. On the other path it loads a word, and only when that word is nonzero calls `gl_interpret` at 0xec795cc. The return value is one of an unresolved value, `gl_interpret`'s result or `gl_getnewobjhdr`'s result.
  Reviewed: 2026-11-12 (sonnet)
- `gl_c_callobj` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec38010
  **Inferred.** Tests the word at 0xecdd95c. When it is zero it calls `gl_intrptab_insert` at 0xec5f9f0 with the entry 0xecd6a40 and skips the lookup. When it is nonzero it looks up the object with `gl_findhash` at 0xec78fa0 (a1 of -1) and, when the lookup returns zero, creates a header with `gl_getnewobjhdr` at 0xec96840, as `gl_i_callobj` does. If the header is then nonzero it calls `gl_compile` at 0xecb5010 with the constant 0x4 as a0, and it returns either `gl_getnewobjhdr`'s or `gl_compile`'s result. The purpose of the 0xecdd95c test is not settled.
  Reviewed: 2026-11-12 (sonnet)
- `gl_n_callobj` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec380c0
  **Inferred.** Checks the flag at 0xece8bf0 and calls `__iglooNCloseMoveDraw` at 0xec92d80 when it is set. It loads the word at [a0] and then the word that one points to. Only when that second word is nonzero does it call `gl_interpret` at 0xec795cc with it as a0. It returns a0+4.
  Reviewed: 2026-11-12 (sonnet)
- `gl_i_charstr` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec38130
  **Inferred.** When its argument is zero it returns the constant 0xaaa40. When the argument is nonzero it loads a word (the facts show a `lw` with offset 0, not its address) and continues from there. The facts do not show the address of that word or where control goes next, so the hand-off to `drawcharstr` at 0xec381f0 is not confirmed. The constant 0xaaa40 is not identified here.
  Reviewed: 2026-11-12 (sonnet)
- `gl_c_charstr` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec38160
  **Inferred.** When its first argument is nonzero it calls `strlen` on it, then `mbmkstr` at 0xec39b10 with a0 of 0, the string and the length; when the argument is zero it skips both. If `mbmkstr` returns nonzero it calls `gl_ecallfunc` at 0xec37c00 with a0 of 0xec381f0 (the address of `drawcharstr`), a1 of 0xec3a6d0, a2 of 1 and the `mbmkstr` result as a3. The record that `mbmkstr` builds is not read here.
  Reviewed: 2026-11-12 (sonnet)
- `drawcharstr` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec381f0
  **Inferred.** Reads the state pointer `gl_wstatep` and the font record at its +3016 offset. When the font pointer is zero it calls `set_def_font` at 0xec3a710. When it is nonzero it tests a word two levels down (the sub-record at +8, offset 20): when that word is nonzero it calls `__GLlcharstr` (the facts do not show whether control then reaches the begin call), and when it is zero it calls `__GLgl_beginstring`. After the begin call, when the word at font +12 is nonzero it calls the outcharmaps routine `__igloo_outcharmaps` at 0xec35ff0 with that word and the string in a1, and when it is zero it loops over the bytes at a1 calling `__GLgl_outcharmap`; it then calls `__GLgl_endstring`. The per-character decisions are only partly read.
  Reviewed: 2026-11-12 (sonnet)
- `gl_g_charst` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec38330
  **Inferred.** Reads the open-object header `gl_openobjhdr` and loops over the bytes of its argument string. When the header is clear it calls `drawcharstr` at 0xec381f0 with a0 of 1, and when it is nonzero it builds a record with `mbmkstr` at 0xec39b10 and, if that returns nonzero, submits it through `gl_ecallfunc` at 0xec37c00 with a0 of 0xec381f0 and a1 of 0xec3a6d0. On one path it calls `gl_free` at 0xec5f570; the facts do not resolve its pointer argument, so what is freed is not stated. The control flow between these paths is not fully read.
  Reviewed: 2026-11-12 (sonnet)
- `gl_findfont` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec384a0
  **Inferred.** When its argument is zero it calls `set_def_font` at 0xec3a710 and returns its result. Otherwise it calls `gl_find` with the table at 0xecdf180 and its own argument; when `gl_find` returns zero it also falls back to `set_def_font`. When `gl_find` returns nonzero it stores a word into the state at gl_wstatep +0xbc8 (the stored value is not shown in the facts) and returns `gl_find`'s result. What the +0xbc8 word means is not settled.
  Reviewed: 2026-11-12 (sonnet)
- `gl_g_getfont` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec38530
  **Inferred.** Reads the current font record pointer at gl_wstatep +3016 and returns the word at its +4 offset. When that pointer is null it calls `set_def_font` at 0xec3a710 with the constant 0xaa640 as the fourth argument. The facts do not fix which of the two paths is taken first.
  Reviewed: 2026-11-12 (sonnet)
- `gl_g_getheight` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec385a0
  **Inferred.** Reads the font record at gl_wstatep +3016 and its sub-record at +8, and returns the signed 16-bit word at that sub-record's +4 offset. When the font pointer is null it calls `set_def_font` at 0xec3a710 with the constant 0xaa5d0 as a3, then reads the same fields again. Role (from name): a height metric; the field is not confirmed by the facts.
  Reviewed: 2026-11-12 (sonnet)
- `gl_g_getdescender` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec38610
  **Inferred.** Reads the font record at gl_wstatep +3016 and its sub-record at +8, and returns the signed 16-bit word at offset 0 of that sub-record. When the font pointer is null it calls `set_def_font` at 0xec3a710 with the constant 0xaa560 as a3, then reads the same fields again. Role (from name): a descender metric; the field is not confirmed by the facts.
  Reviewed: 2026-11-12 (sonnet)
- `gl_i_font` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec38680
  **Inferred.** When the flag at 0xece8bf0 is set it calls `__iglooNCloseMoveDraw` at 0xec92d80. It then calls `gl_findfont` at 0xec384a0 with its first argument and returns that result.
  Reviewed: 2026-11-12 (sonnet)
