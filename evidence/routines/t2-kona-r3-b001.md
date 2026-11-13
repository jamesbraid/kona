# Routine role entries, kona tier-2 round 3 batch 1

These entries come from rendered facts for 25 routines in the IGLOO32 `libgl.so` build: memory accesses, calls, branches and constants at fixed addresses. Names come from the inventory. The facts show what the code does, not what its callers intend, so every label is inferred.

- `gl_g_lampon` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec35a60
  **Inferred.** A 56-byte forwarding stub. It calls _lamp at 0xec35900 with a1 set to 1 and passes a0, a2 and a3 through unchanged, then returns the result of that call. The facts do not show the lamp index that a0 selects.
  Reviewed: 2026-11-12

- `gl_g_lampoff` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec35aa0
  **Inferred.** The same 56-byte forwarding stub as gl_g_lampon, calling _lamp at 0xec35900 with a1 set to 0 instead of 1. It returns the result of that call.
  Reviewed: 2026-11-12

- `gl_g_ringbell` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec35ae0
  **Inferred.** Follows the pointer chain from the shared state word at 0xece8bec through +0x1c and +0x4 to get an X display handle. It calls _GLinitgl at 0xecc93b0, then XBell on that handle with percent 0, then XFlush, and returns the XFlush result. The facts show no test of the _GLinitgl result before the display is used.
  Reviewed: 2026-11-12

- `gl_g_setbell` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec35b50
  **Inferred.** Tests a0 against 0 and against 2 (signed) to pick one of three paths. It gets the same display handle as gl_g_ringbell, calls _GLinitgl at 0xecc93b0, then XChangeKeyboardControl with the mask 0xa and a pointer to a stack block, and then XFlush. The facts do not show what the stack block holds or which bell setting each path writes.
  Reviewed: 2026-11-12

- `gl_g_blanktime` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec35bf0
  **Inferred.** Calls __GLgetgdesc with the constant 0x42, then _GLinitgl, then reads the current screen saver settings with XGetScreenSaver into four stack slots. After that it branches on the registers a1, a3 and a4, whose values the facts do not resolve (they are not the entry arguments), to reach either an XSetScreenSaver call or an XForceScreenSaver call at 0xec35cf0 with a0 set to the display handle. The XSetScreenSaver path calls XFlush and returns its result; the facts do not show what follows the XForceScreenSaver call. It looks like it adjusts the X screen-saver timeout, but the facts do not show which argument carries the time or what the constant 0x42 selects.
  Reviewed: 2026-11-12

- `gl_g_blankscreen` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec35d00
  **Inferred.** Calls _GLinitgl at 0xecc93b0, then XGetScreenSaver into four stack slots. It then branches on a0 (kept in s1 from entry) and on two values the facts leave unresolved (a3 and t8). One path calls XForceScreenSaver, then XFlush, and returns the XFlush result. Another path calls XSetScreenSaver with 1 as the fifth argument (a4); the facts do not show what follows that call. The facts show which X calls run, not what the branch values mean.
  Reviewed: 2026-11-12

- `__igloo_outcharmaps` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec35ff0
  **Inferred.** Calls __iglooGetRenderMode at 0xec9b060 and compares the result with 0x1c00 at 0xec36024. The facts do not show where the unequal case goes beyond a return at 0xec36040. In the matching case it calls __iglooCloseMoveDraw at 0xec92cb0, then strlen on the string in a1. When the length is 11 or more (unsigned) it calls glListBase with a0 at 0xec360ac, then glCallLists with the length, the type 0x1401 and the string pointer at 0xec360c0, then glListBase with 0 at 0xec360cc. When the length is below 11 it runs a byte loop from 0xec36080 to 0xec36090 that calls glCallList at 0xec36084 for each character until the pointer reaches the strlen result plus a1; a zero length leaves without entering the loop.
  Reviewed: 2026-11-12

- `gl_i_blendfunction` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec360e0
  **Inferred.** Reads the flag word at 0xece8bf0 (gl_inMoveDraw). When the flag is nonzero it calls __iglooNCloseMoveDraw at 0xec92d80 first. It then calls gl_blendfunction at 0xec368d0 with a0 and a1 passed through and returns its result.
  Role (from name): an immediate-mode wrapper (gl_i_ prefix) that closes an open move-draw batch when one is open.
  Reviewed: 2026-11-12

- `gl_c_blendfunction` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36140
  **Inferred.** Tests the word at 0xecdd92c. When it is zero, it calls gl_intrptab_insert at 0xec5f9f0 with a0 = 0xecd6930 (a table), a1 and a2 from the entry and a3 = a1, then calls gl_compile at 0xecb5010 with a0 = 0x6. When it is nonzero, it calls gl_compile with a0 = 0x6 alone. Its return value is the result of gl_compile. The facts do not show what the table holds.
  Reviewed: 2026-11-12

- `gl_n_blendfunction` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec361d0
  **Inferred.** Reads the flag at 0xece8bf0 and closes the move-draw batch with __iglooNCloseMoveDraw at 0xec92d80 when it is nonzero. It reads two words from the argument block at +0x0 and +0x4 and passes them as the first two arguments to gl_blendfunction at 0xec368d0. It returns a0+8, the address just past the 8-byte argument block.
  Reviewed: 2026-11-12

- `gl_i_blendcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36230
  **Inferred.** Reads the flag at 0xece8bf0 and, when it is nonzero, calls __iglooNCloseMoveDraw at 0xec92d80 first. It then calls glBlendColorEXT and returns its result; the facts do not resolve the arguments of that call. The flag test at 0xec3625c skips the close call when the flag is zero.
  Reviewed: 2026-11-12

- `gl_c_blendcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec362c0
  **Inferred.** Tests the word at 0xecdd930. When it is zero, it calls gl_intrptab_insert at 0xec5f9f0 with the table at 0xecd6940 and the entry's arguments passed through, then calls gl_compile at 0xecb5010 with the constant 0xa. When it is nonzero, it calls gl_compile with the constant 0xa alone. Its return value is the gl_compile result. The facts do not show what the constant 0xa or the table holds.
  Reviewed: 2026-11-12

- `gl_n_blendcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36370
  **Inferred.** Reads the flag at 0xece8bf0 and closes the move-draw batch with __iglooNCloseMoveDraw at 0xec92d80 when it is nonzero. It loads four single-precision words from a0 with lwc1 at +0xc, +0x8, +0x4 and +0x0 and calls glBlendColorEXT; the facts do not show which float register or argument each word reaches. It returns a0+16.
  Reviewed: 2026-11-12

- `gl_i_logicop` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec363e0
  **Inferred.** Reads the flag at 0xece8bf0 and, when it is nonzero, calls __iglooNCloseMoveDraw at 0xec92d80 first. It then calls gl_logicop at 0xec369f0 with a0 passed through and returns its result.
  Reviewed: 2026-11-12

- `gl_c_logicop` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36430
  **Inferred.** Tests the word at 0xecdd934. When that word is zero, it calls gl_intrptab_insert at 0xec5f9f0 with the table at 0xecd6950 and a1, a2 and a3 from the entry. The facts show no store to the word. Both paths then call gl_compile at 0xecb5010 with the constant 0x4 and return its result. The facts do not show what the constant 0x4 selects.
  Reviewed: 2026-11-12

- `gl_n_logicop` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec364b0
  **Inferred.** Reads the flag at 0xece8bf0 and closes the move-draw batch with __iglooNCloseMoveDraw at 0xec92d80 when it is nonzero. It loads the word at a0+0 and passes it to gl_logicop at 0xec369f0. It returns a0+4, the address just past the 4-byte argument.
  Reviewed: 2026-11-12

- `gl_i_afunction` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36510
  **Inferred.** Reads the flag at 0xece8bf0 and, when it is nonzero, calls __iglooNCloseMoveDraw at 0xec92d80 first. It then calls gl_alphafunc at 0xec36660 with a0 and a1 passed through and returns its result.
  Reviewed: 2026-11-12

- `gl_c_afunction` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36570
  **Inferred.** Tests the word at 0xecdd938. When it is zero, it calls gl_intrptab_insert at 0xec5f9f0 with a0 = 0xecd6960 (a table), a1 and a2 from the entry and a3 = a1, then calls gl_compile at 0xecb5010 with a0 = 0x6. When it is nonzero, it calls gl_compile with a0 = 0x6 alone. It returns the gl_compile result. The facts do not show what the table holds.
  Reviewed: 2026-11-12

- `gl_n_afunction` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36600
  **Inferred.** Reads the flag at 0xece8bf0 and closes the move-draw batch with __iglooNCloseMoveDraw at 0xec92d80 when it is nonzero. It reads the words at a0+0 and a0+4 and passes them to gl_alphafunc at 0xec36660. It returns a0+8, the address just past the 8-byte argument block.
  Reviewed: 2026-11-12

- `gl_alphafunc` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36660
  **Inferred.** Reads the state pointer at sym(gl_wstatep) and stores to its +0xae4 word. It compares a1 with 7 and tests a0 against the mask -0x100 and its sign to pick a path. The paths call __iglooSetEnable at 0xec5cb70 with the enum 0xbc0 and the value 1 (at 0xec366a4), or with 0 (at 0xec366f0), and call glAlphaFunc at 0xec366cc with a0 set to a1+512; the facts do not resolve its other arguments. The facts do not fully resolve which branch reaches which call, nor the meaning of the +512 offset.
  Reviewed: 2026-11-12

- `__iglooRebindBlendLogicopData` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36720
  **Inferred.** Reads the cached blend and logic-op fields from the state block at a0 (offsets +0xaec through +0xb08) and passes them to the calls below. It calls __iglooSetEnable at 0xec5cb70 with the enums 0xbe2 and 0xbf1, __iglooBlendEquationEXT at 0xecb76e0, __iglooBlendFunc at 0xecb7650 and __iglooLogicOp at 0xecb75e0. Branches compare the equation word at +0xaf4 with 0x8007 and 0x8008, and the words at +0xaec and +0xaf0 are tested against zero to select the path. The facts do not show the meaning of each word.
  Reviewed: 2026-11-12

- `gl_blendfunction` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec368d0
  **Inferred.** Reads the state pointer at sym(gl_wstatep) and stores to its +0xaec, +0xaf4, +0xaf8, +0xafc and +0xb08 words. Branches compare a0 with 0xf (signed) and test its sign, test the sign of a1, and compare a0 with 1, 0xd and 0xe on the way to those stores. An error path calls gl_ErrorHandler at 0xec5d440 with the code 0x6e. The path through the stores calls __iglooRebindBlendLogicopData at 0xec36720 with the state pointer and returns its result. The facts do not show which value ends up in each stored word or which factor value selects it.
  Reviewed: 2026-11-12

- `gl_logicop` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec369f0
  **Inferred.** Reads the state pointer at sym(gl_wstatep) and stores to its +0xaf0, +0xb00 and +0xb04 words. It then compares a value the facts leave unresolved with 3 [@0xec36a34]. When they are equal it calls __iglooLogicOp at 0xecb75e0 with the constant 0x1503. Otherwise it stores to the +0xb08 word, calls __iglooRebindBlendLogicopData at 0xec36720 and returns its result. The facts do not show the mapping from a0 to the stored value.
  Reviewed: 2026-11-12

- `gl_load_dgl_table` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36a70
  **Inferred.** Tests the word gl_connection_inited at 0xecdf614. When it is zero it calls gl_InitMemory at 0xec795a0 with a0 and a1 passed through. When it is nonzero it calls gl_SetImmediateMode at 0xec795b0 with mode 1 if a0 equals 1 (branch at 0xec36a9c) and mode 0 otherwise, returns its result, and stores to the flag gl_dgl_table_is_remote at 0xecdf178 (the stores at 0xec36ac8 and 0xec36ae8, one per mode). The facts show the calls, not what the table contains or what the remote flag means.
  Reviewed: 2026-11-12

- `__gl_swapbuffers` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36b00
  **Inferred.** Walks the state chain sym(gl_wstatep) +0x114, +0x3c and +0x0 to read a word and compares it with 1. Unless that word equals 1 it calls glXSwapBuffers with the display handle from the shared state chain at 0xece8bec +0x1c +0x4, the drawable from the +0xe0 chain, a2 passed through, a3 set to gl_wstatep and a4 set to 0xac070. It returns 1 or the glXSwapBuffers result. The facts do not show what the word compared with 1 records.
  Reviewed: 2026-11-12
