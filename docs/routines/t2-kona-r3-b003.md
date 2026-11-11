# Tier-2 routine roles, kona round 3 batch 3

Roles for targets 75 to 99 of the ranked tier-2 list, all in the IGLOO32 `libgl.so`. Each role comes from the rendered instruction facts at the cited addresses, so every entry is graded inferred. Several callees (`__iglooNCloseMoveDraw`, `gl_compile`, `gl_intrptab_insert`) are named only by the symbol table, and their behaviour is not read here. The meaning of the global flags at 0xece8bf0 and the compile-state words at 0xecdd9xx is not settled by these facts.

- `gl_i_backbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37600
  **Inferred.** Reads the global flag at 0xece8bf0 (`gl_inMoveDraw`). When the flag is nonzero it calls `__iglooNCloseMoveDraw` at 0xec92d80 first, then calls `gl_backbuffer` at 0xec37320 and returns its result. The facts do not say what the flag means.
- `gl_c_backbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37650
  **Inferred.** Tests the word at 0xecdd94c and, when it is zero, calls `gl_intrptab_insert` at 0xec5f9f0 with the table entry 0xecd69b0. Along the way it calls `gl_compile` at 0xecb5010 with the constant 0x4, and returns `gl_compile`'s result. It looks like a compile-time variant of the back-buffer call, but the record code 0x4 and the table are not identified here.
- `gl_n_backbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec376d0
  **Inferred.** Checks the flag at 0xece8bf0 and calls `__iglooNCloseMoveDraw` at 0xec92d80 when it is set. It loads the first word of its argument, passes that word to `gl_backbuffer` at 0xec37320, and returns its argument pointer plus 4.
- `gl_i_leftbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37730
  **Inferred.** Same shape as `gl_i_backbuffer`: when the flag at 0xece8bf0 is set it calls `__iglooNCloseMoveDraw` at 0xec92d80, then calls `gl_leftbuffer` at 0xec373b0 and returns its result.
- `gl_c_leftbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37780
  **Inferred.** Same shape as `gl_c_backbuffer`: tests the word at 0xecdd950, calls `gl_compile` at 0xecb5010 with the constant 0x4, and calls `gl_intrptab_insert` at 0xec5f9f0 with the entry 0xecd69c0. It returns `gl_compile`'s result. The purpose of the test is not settled.
- `gl_n_leftbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37800
  **Inferred.** Same shape as `gl_n_backbuffer`: checks the flag at 0xece8bf0, calls `__iglooNCloseMoveDraw` at 0xec92d80 when it is set, passes the first word of its argument to `gl_leftbuffer` at 0xec373b0, and returns its argument pointer plus 4.
- `gl_i_rightbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37860
  **Inferred.** Same shape as `gl_i_backbuffer`: when the flag at 0xece8bf0 is set it calls `__iglooNCloseMoveDraw` at 0xec92d80, then calls `gl_rightbuffer` at 0xec37440 and returns its result.
- `gl_c_rightbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec378b0
  **Inferred.** Tests the word at 0xecdd954 and, when it is zero, calls `gl_intrptab_insert` at 0xec5f9f0 with the entry 0xecd69d0. It calls `gl_compile` at 0xecb5010 with the constant 0x4 and returns `gl_compile`'s result. The purpose of the test is not settled.
- `gl_n_rightbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37930
  **Inferred.** Same shape as `gl_n_backbuffer`: checks the flag at 0xece8bf0, calls `__iglooNCloseMoveDraw` at 0xec92d80 when it is set, passes the first word of its argument to `gl_rightbuffer` at 0xec37440, and returns its argument pointer plus 4.
- `gl_do_callfunc` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37990
  **Inferred.** Uses the first argument as an index: values of 0xb or more go to the exit at 0xec379f4, and smaller values dispatch through a jump table at 0xecd410c with 11 targets. Each case reads a block of words from the record at a2, at offsets 0x0 to 0x24, and makes an indirect call with them as arguments. The callees are not resolved by these facts, so the mapping from case to operation is not settled.
- `gl_ecallfunc` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37c00
  **Inferred.** Checks the word at 0xecdd958 and compares the count in a2 against 0xb. It calls `gl_compile` at 0xecb5010 with a stack buffer at sp-160. On a guarded path it calls `gl_ErrorHandler` at 0xec5d440 with code 0x48 and severity 2, and it calls `gl_intrptab_insert` at 0xec5f9f0 with the entry 0xecd69e0. The error condition and the -1 test at 0xec37ca8 are not fully read.
- `gl_n_gl_ecallfunc` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37d20
  **Inferred.** Checks the flag at 0xece8bf0 and calls `__iglooNCloseMoveDraw` at 0xec92d80 when it is set. It then calls `gl_do_callfunc` at 0xec37990 with the word at [a0+4], the word at [a0], and the address a0+12. The return value is a0+12 plus a term computed from the words it read at a0.
- `__GLicallfunc` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37e90
  **Inferred.** Reads the word of the open-object header `gl_openobjhdr` and the error word at 0xecd6a2c. If the header is clear it calls `gl_compile` at 0xecb5010 with the stack buffer sp-128, and on the error path it calls `gl_ErrorHandler` at 0xec5d440 with code 0x48 and severity 2. It returns either the constant 0xaace0 or `gl_compile`'s result.
- `gl_i_callobj` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37f80
  **Inferred.** When the flag at 0xece8bf0 is set it calls `__iglooNCloseMoveDraw` at 0xec92d80. It then looks up the object with `gl_findhash` at 0xec78fa0, creates a header with `gl_getnewobjhdr` at 0xec96840 when the lookup returns zero, and finally calls `gl_interpret` at 0xec795cc. It returns the result of `gl_interpret` or `gl_getnewobjhdr`.
- `gl_c_callobj` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec38010
  **Inferred.** Looks up or creates an object header with `gl_findhash` at 0xec78fa0 and `gl_getnewobjhdr` at 0xec96840, the same way as `gl_i_callobj`. When the word at 0xecdd95c is zero it calls `gl_compile` at 0xecb5010 with the constant 0x4, and it inserts an entry at 0xecd6a40 with `gl_intrptab_insert` at 0xec5f9f0. The purpose of the 0xecdd95c test is not settled.
- `gl_n_callobj` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec380c0
  **Inferred.** Checks the flag at 0xece8bf0 and calls `__iglooNCloseMoveDraw` at 0xec92d80 when it is set. It loads the word at [a0] and then the word it points to, passes that to `gl_interpret` at 0xec795cc, and returns a0+4.
- `gl_i_charstr` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec38130
  **Inferred.** When its argument is zero it returns the constant 0xaaa40 directly. When the argument is nonzero it loads the word at 0xecdab88 and branches to `drawcharstr` at 0xec381f0 with the same arguments. The constant 0xaaa40 is not identified here.
- `gl_c_charstr` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec38160
  **Inferred.** Calls `strlen` on its first argument and then `mbmkstr` at 0xec39b10 with the length. If `mbmkstr` returns nonzero it calls `gl_ecallfunc` at 0xec37c00 with `drawcharstr` at 0xec381f0 as the callee, the string table at 0xec3a6d0, and a count of 1. The record that `mbmkstr` builds is not read here.
- `drawcharstr` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec381f0
  **Inferred.** Reads the state pointer at `gl_wstatep` and the font record at its +3016 offset. It begins a string with `__GLgl_beginstring`, calls `__GLlcharstr` and the outcharmaps routine at 0xec35ff0 for the bytes at a1, and ends with `__GLgl_endstring`. It calls `set_def_font` at 0xec3a710 when the font pointer is absent. The per-character decisions are only partly read.
- `gl_g_charst` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec38330
  **Inferred.** Reads the open-object header `gl_openobjhdr` and loops over the bytes of its argument string. When the header is clear it draws through `drawcharstr` at 0xec381f0 with the constant 1, and otherwise it builds a record with `mbmkstr` at 0xec39b10 and submits it through `gl_ecallfunc` at 0xec37c00. It frees a temporary with `gl_free` at 0xec5f570. The control flow between these paths is not fully read.
- `gl_findfont` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec384a0
  **Inferred.** Stores zero into the state word at gl_wstatep +0xbc8 and calls `gl_find` with the table at 0xecdf180 and its own argument. It falls back to `set_def_font` at 0xec3a710 when the argument is null or `gl_find` returns zero, and otherwise returns `gl_find`'s result. What the +0xbc8 word means is not settled.
- `gl_g_getfont` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec38530
  **Inferred.** Reads the current font record pointer at gl_wstatep +3016 and returns the word at its +4 offset. When that pointer is null it calls `set_def_font` at 0xec3a710 with the constant 0xaa640 as the fourth argument. The facts do not fix which of the two paths is taken first.
- `gl_g_getheight` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec385a0
  **Inferred.** Reads the font record at gl_wstatep +3016 and its sub-record at +8, and returns the signed 16-bit word at that sub-record's +4 offset. When the font pointer is null it calls `set_def_font` at 0xec3a710 with the constant 0xaa5d0. The name suggests a height metric, but the field is not confirmed.
- `gl_g_getdescender` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec38610
  **Inferred.** Reads the font record at gl_wstatep +3016 and its sub-record at +8, and returns the signed 16-bit word at offset 0 of that sub-record. When the font pointer is null it calls `set_def_font` at 0xec3a710 with the constant 0xaa560. The name suggests a descender metric, but the field is not confirmed.
- `gl_i_font` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec38680
  **Inferred.** When the flag at 0xece8bf0 is set it calls `__iglooNCloseMoveDraw` at 0xec92d80. It then calls `gl_findfont` at 0xec384a0 with its first argument and returns that result.
