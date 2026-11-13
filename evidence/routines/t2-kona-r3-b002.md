# Tier-2 routine roles, kona round 3 batch 2

Roles for targets 50 to 74 of the ranked tier-2 list, all in the IGLOO32 `libgl.so`. Each role comes from the rendered instruction facts at the cited addresses, so every entry is graded inferred. The grader accepted all 25 rendered entries and none were rejected. Where the facts do not show what a constant, global or callee means, the entry says so.

- `gl_i_swapbuffers` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36b70
  **Inferred.** Tests the word at abs 0xece8bf0 (gl_inMoveDraw) at 0xec36b88. When it is zero, the branch at 0xec36b8c goes straight to the `bgezall` at 0xec36ba4 that calls __gl_swapbuffers (0xec36b00). When it is nonzero, it first calls __iglooNCloseMoveDraw (0xec92d80) with its four argument registers passed through, then calls __gl_swapbuffers. The return value is the swap call's result in v0.
  Reviewed: 2026-11-12
- `gl_c_swapbuffers` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36bc0
  **Inferred.** Tests the flag at abs 0xecdd93c at 0xec36bd8. When it is zero, the branch goes to 0xec36c08, where the call to gl_intrptab_insert (0xec5f9f0) at 0xec36c10 sits with the table entry 0xecd6970 and the entry arguments in a1 to a3. The facts do not show a path that skips gl_compile (0xecb5010): its call at 0xec36bf0 passes the constant 2 and a frame at sp-32, and the one return at 0xec36c00 yields its result. The name suggests a display-list compile mode, but the facts do not show what the constant 2 selects or whether the zero-flag block rejoins before gl_compile, so that reading is not settled.
  Reviewed: 2026-11-12
- `gl_n_swapbuffers` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36c30
  **Inferred.** The same gl_inMoveDraw test as the immediate-mode swap at 0xec36c48 and 0xec36c50. A nonzero value calls __iglooNCloseMoveDraw (0xec92d80) at 0xec36c5c before the `bgezall` at 0xec36c68 calls __gl_swapbuffers. The return at 0xec36c7c yields the caller's a0 instead of the swap result, so the swap status is not passed back.
  Reviewed: 2026-11-12
- `gl_i_swapinterval` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36c90
  **Inferred.** Checks gl_inMoveDraw at 0xec36ca8. A nonzero value calls __iglooNCloseMoveDraw (0xec92d80) at 0xec36cb8 first. It then calls glXSwapIntervalSGI at 0xec36cc8 with the entry a0 and returns that call's result in v0.
  Reviewed: 2026-11-12
- `gl_c_swapinterval` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36ce0
  **Inferred.** The compile-mode variant. It tests the flag at abs 0xecdd940 at 0xec36d00. When it is zero, the branch goes to 0xec36d3c, where gl_intrptab_insert (0xec5f9f0) is called at 0xec36d44 with the table entry 0xecd6980 and the entry a1 to a3. The call to gl_compile (0xecb5010) at 0xec36d20 passes the constant 4 and a frame at sp-48, and the one return at 0xec36d34 yields its result. The facts do not show a path that skips gl_compile, or what the constant 4 selects.
  Reviewed: 2026-11-12
- `gl_n_swapinterval` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36d60
  **Inferred.** The name says this variant does not compile, and the facts do not show that. It takes its interval from memory. A nonzero gl_inMoveDraw calls __iglooNCloseMoveDraw (0xec92d80) at 0xec36d90 first. It loads the halfword at the entry a0 (0xec36da0) and passes it to glXSwapIntervalSGI at 0xec36d9c as the interval. The return is a0+4. That is consistent with the caller's argument pointer advancing past one 4-byte record, but the facts show only the +4.
  Reviewed: 2026-11-12
- `gl_zdraw` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36dc0
  **Inferred.** Reads the state block at sym(gl_wstatep) and, through offsets 276, 56 and 60, the word at [[[gl_wstatep]+276]+56] and a pointer at [[gl_wstatep]+276]+60. It compares the word with 0x10 at 0xec36de8. When it differs, the branch goes to 0xec36e20, which returns 0x10 with no call and no store. When it equals 0x10 the entry a0 is tested at 0xec36df0. If a0 is zero it goes to 0xec36e44, which loads a halfword at +0x34, stores a halfword at 0xec36e5c and returns 0x10. If a0 is nonzero it loads the byte at [gl_wstatep]+2836 (0xec36df8) and tests it. A zero byte goes to 0xec36e2c, which loads a halfword at +0x34, stores a halfword at 0xec36e40 and returns 0x10. A nonzero byte calls gl_ErrorHandler (0xec5d440) at 0xec36e14 with code 0x62 in a0 and returns its result. The facts do not show what the 0x10 value or the halfword at +0x34 mean.
  Reviewed: 2026-11-12
- `gl_i_zdraw` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36e60
  **Inferred.** The immediate-mode z-buffer entry. A nonzero gl_inMoveDraw at 0xec36e78 calls __iglooNCloseMoveDraw (0xec92d80) at 0xec36e88 first. It then calls gl_zdraw (0xec36dc0) at 0xec36e98 with the entry a0 (the facts show the other argument registers as unknown) and returns that result.
  Reviewed: 2026-11-12
- `gl_c_zdraw` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36eb0
  **Inferred.** The compile-mode z-buffer entry. It tests the flag at abs 0xecdd944 at 0xec36ed0. When it is zero, the branch goes to 0xec36f08, where gl_intrptab_insert (0xec5f9f0) is called at 0xec36f10 with the table entry 0xecd6990 and the entry a1 to a3. The call to gl_compile (0xecb5010) at 0xec36eec passes the constant 4 and a frame at sp-48, and the one return at 0xec36f00 yields its result. The facts do not show a path that skips gl_compile.
  Reviewed: 2026-11-12
- `gl_n_zdraw` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36f30
  **Inferred.** The name says this z-buffer entry does not compile, and the facts do not show that. It reads its value from memory. A nonzero gl_inMoveDraw calls __iglooNCloseMoveDraw (0xec92d80) at 0xec36f60 first. It loads the word at the entry a0 (0xec36f70) and calls gl_zdraw (0xec36dc0) with that value. The return is a0+4. That is consistent with the caller's argument pointer advancing past one 4-byte record, but the facts show only the +4.
  Reviewed: 2026-11-12
- `gl_g_RGBsize` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36f90
  **Inferred.** Reads the global word at abs 0xecdd8a4 and the state word at [[[gl_wstatep]+276]+56], and compares the state word with 0x10 at 0xec36fb0. It returns the state word on both paths. Only when the word equals 0x10 does the path through 0xec36fc0 store a word at +0x24 (sw at 0xec36fc4, in the return's delay slot) into the block loaded from +0x3c. When it differs, the entry returns at 0xec36fb8 without that store. The facts do not identify the stored value or the global's meaning. The name suggests a color bit-depth query, which these facts do not confirm.
  Reviewed: 2026-11-12
- `gl_g_overlay` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36fd0
  **Inferred.** A state-driven setter with a larger body. The branch at 0xec36ff8 tests the sign of the global at abs 0xecdedbc. When it is negative, the path at 0xec37088 calls getenv (string at 0xecd4028) at 0xec37094. The state word [[[gl_wstatep]+276]+56] is compared with 0x10 at 0xec3700c. When it differs, the entry returns at 0xec37064 without a store. When it equals 0x10, a zero test of a3 at 0xec37014 (the facts leave a3 unresolved) either skips or reaches the call to __iglooCancelSoftPup (0xec78270) at 0xec37028. That call's delay slot at 0xec3702c stores a word to __iglooMixedModel (abs 0xecdf818). Next the entry argument is compared with 0, 2, 4 and 8 at 0xec37034 through 0xec37050. A match stores it into state field +0x1c at 0xec37078 and returns, and any other value returns without that store. The name suggests overlay planes, but the link to overlay hardware is not settled by these facts.
  Reviewed: 2026-11-12
- `gl_g_underlay` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec370b0
  **Inferred.** Reads the global at abs 0xecdd8a4 and the state word at [[[gl_wstatep]+276]+56]. When that state word is 0x10 and the entry argument a0 is 0, 2, 4 or 8 (checked at 0xec370d8 through 0xec370f0), it returns the state word through 0xec37100 and its delay-slot store writes state field +0x20 (sw at 0xec37104). A state word other than 0x10, or an argument outside that set, reaches the return at 0xec370f8, which gives the same state word with no store. The 0, 2, 4, 8 set is the same one the overlay setter tests, but the facts do not say what the values stand for.
  Reviewed: 2026-11-12
- `gl_g_zbsize` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37110
  **Inferred.** Reads the global at abs 0xecdd8a4 and the state word at [[[gl_wstatep]+276]+56], and compares the state word with 0x10 at 0xec37130. It returns the state word on both paths. Only when the word equals 0x10 does the return at 0xec37140 carry a delay-slot store of a word at +0x2c (sw at 0xec37144) into the block loaded from +0x3c. A different state word returns at 0xec37138 with no store. The name suggests a depth-buffer size query, which the facts show only as a state read and a conditional store.
  Reviewed: 2026-11-12
- `gl_g_acsize` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37150
  **Inferred.** Reads the global at abs 0xecdd8a4 and the state word at [[[gl_wstatep]+276]+56], and compares the state word with 0x10 at 0xec37170. It returns the state word on both paths. Only when the word equals 0x10 does the return at 0xec37180 carry a delay-slot store of a word at +0x24 (sw at 0xec37184). A different state word returns at 0xec37178 with no store. The name suggests an accumulation-buffer size query, which these facts do not confirm.
  Reviewed: 2026-11-12
- `gl_g_stensize` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37190
  **Inferred.** Reads the global at abs 0xecdd8a4 and the state word at [[[gl_wstatep]+276]+56]. When the state word differs from 0x10 (bne at 0xec371b0), it returns the state word at 0xec371d0 with no store. When it equals 0x10, a sign test on the entry a0 at 0xec371b8 and a test of a5 at 0xec371c0 (a5 is unresolved in the facts) choose between the store path and the return at 0xec371d0. Both return the state word. The store path is the return at 0xec371c8 with a delay-slot store of a word at +0x28 (sw at 0xec371cc). The name suggests a stencil-size query, which the facts do not confirm.
  Reviewed: 2026-11-12
- `DrawBufferIrisToOpen` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec371e0
  **Inferred.** A table translator. It bounds-checks the code in v1 against 0x1c at 0xec37200. When the code is not below 0x1c, it returns 0x0 at 0xec37214. Otherwise it loads an entry from the jump table at 0xecd4040 and jumps through it at 0xec3720c. The facts list the return sites and their constants (0x0 and 0x400 through 0x408), but they do not decode which table slot reaches which return, so the mapping from input code to result is not shown. The constants 0x400 through 0x408 fall in the range of public OpenGL draw-buffer enums. The name suggests a mapping from IRIS GL buffer codes to OpenGL draw buffers, which the facts show only as a table lookup.
  Reviewed: 2026-11-12
- `gl_frontbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37270
  **Inferred.** Selects the front draw buffer. It reads the state at gl_wstatep and the pointer at [[gl_wstatep]+276]+60. The branch at 0xec37298 tests a0, whose source the facts do not name. When a0 is nonzero, it stores the halfword at +0x34 of that block ORed with 2 (sh at 0xec372b0), calls DrawBufferIrisToOpen (0xec371e0) at 0xec372b4 with the ORed halfword in a1, passes the result to __iglooDrawBuffer (0xecb7390) at 0xec372c0 and returns. When a0 is zero, it loads the word at [[gl_wstatep]+276]+60 and compares it with 2 at 0xec372d8. If it equals 2, or a further test at 0xec372e0 (on a value the facts leave unresolved) is nonzero, it stores a halfword at +0x34 (0xec372f8) and calls DrawBufferIrisToOpen at 0xec372fc and __iglooDrawBuffer at 0xec37308. Otherwise it skips both calls. The return value is the __iglooDrawBuffer result on the call paths and unresolved on the skip path.
  Reviewed: 2026-11-12
- `gl_backbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37320
  **Inferred.** Selects the back draw buffer. It tests the buffer word at [[[[gl_wstatep]+276]+60]] against 1 at 0xec3734c. When it equals 1, the entry returns 1 at 0xec3738c without calling anything. Otherwise it tests a0 at 0xec37354, which picks between two halfword updates at +0x34 (0xec37360 and 0xec373a0). It then calls DrawBufferIrisToOpen (0xec371e0) at 0xec37370, with the constant 0xab850 in a4, and passes the result to __iglooDrawBuffer (0xecb7390) at 0xec3737c. It returns the __iglooDrawBuffer result on that path. The meaning of the 0xab850 argument is not shown by these facts.
  Reviewed: 2026-11-12
- `gl_leftbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec373b0
  **Inferred.** Selects the left draw buffer. It compares the state word [[[gl_wstatep]+276]+56] with 0x10 at 0xec373d8 and checks the field at [[[gl_wstatep]+276]+60]+8 against zero at 0xec373e4. When the state word differs from 0x10, or the field is zero, it returns at 0xec37428 with no calls (the facts leave that return value unresolved). Otherwise a test of a0 at 0xec373f0 picks between two halfword updates at +0x34 (0xec373fc and 0xec3743c). It then makes a DrawBufferIrisToOpen call (0xec3740c) and a __iglooDrawBuffer call (0xec37418) and returns that result. The name suggests a stereo left eye, but the field at +8 is not identified by these facts.
  Reviewed: 2026-11-12
- `gl_rightbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37440
  **Inferred.** Selects the right draw buffer, with the same structure as gl_leftbuffer. When the state word differs from 0x10 (0xec37468) or the field at +8 is zero (0xec37474), it returns at 0xec374b8 with no calls. Otherwise a test of a0 at 0xec37480 picks between two halfword updates at +0x34 (0xec3748c and 0xec374cc), and it calls DrawBufferIrisToOpen at 0xec3749c and __iglooDrawBuffer at 0xec374a8. The name suggests a stereo right eye, which the facts do not confirm.
  Reviewed: 2026-11-12
- `gl_i_frontbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec374d0
  **Inferred.** The immediate-mode front-buffer entry. A nonzero gl_inMoveDraw at 0xec374e8 calls __iglooNCloseMoveDraw (0xec92d80) at 0xec374f8 first. It then calls gl_frontbuffer (0xec37270) at 0xec37508 with the entry a0 and returns that result at 0xec37518.
  Reviewed: 2026-11-12
- `gl_c_frontbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37520
  **Inferred.** The compile-mode front-buffer entry. It tests the flag at abs 0xecdd948 at 0xec37540. When it is zero, the branch goes to 0xec37578, where gl_intrptab_insert (0xec5f9f0) is called at 0xec37580 with the table entry 0xecd69a0 and the entry a1 to a3. The call to gl_compile (0xecb5010) at 0xec3755c passes the constant 4 and a frame at sp-48, and the one return at 0xec37570 yields its result. The facts do not show a path that skips gl_compile.
  Reviewed: 2026-11-12
- `gl_n_frontbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec375a0
  **Inferred.** The name says this front-buffer entry does not compile, and the facts do not show that. It reads its value from memory. A nonzero gl_inMoveDraw calls __iglooNCloseMoveDraw (0xec92d80) at 0xec375d0 first. It loads the word at the entry a0 (0xec375e0) and calls gl_frontbuffer (0xec37270) with that value. The return is a0+4.
  Reviewed: 2026-11-12
- `gl_i_backbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37600
  **Inferred.** The immediate-mode back-buffer entry. A nonzero gl_inMoveDraw at 0xec37618 calls __iglooNCloseMoveDraw (0xec92d80) at 0xec37628 first. It then calls gl_backbuffer (0xec37320) at 0xec37638 with the entry a0 and returns that result at 0xec37648.
  Reviewed: 2026-11-12
