# Tier-2 routine roles, kona batch 4

Roles for the two routines of targets 100 to 124 of the ranked tier-2 list that the grader accepts as understood. Each one comes from the rendered instruction facts at the cited addresses, so every entry is graded inferred. Where the facts stop short of the routine's purpose, the entry says so.

- `gl_g_lstrwidth` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec39500
  **Inferred.** Its first branch on a1 (at 0xec39530) skips the state walk when a1 is zero, and the walk itself starts from gl_wstatep, following the pointers at +3016 and +8 and then the chain stepped by mbgetnext at 0xec39c60 (calls at 0xec39574, 0xec395b8, 0xec395dc and 0xec39624). It calls gl_find at 0xec39604, reads a halfword at +0x14 of the result, and calls set_def_font at 0xec3965c on one path. It returns 0 at 0xec3968c. The name suggests a string width, but the facts never show the width being summed.
- `gl_i_lcharstr` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec39a50
  **Inferred.** When a1 is zero it returns the constant 0xa9120 at 0xec39a64 (the fall-through of the bne at 0xec39a5c). When a1 is nonzero it loads a word from abs 0xecdab88 at 0xec39a6c and branches on to 0xec39740 through the bgezl at 0xec39a74. The 44-byte body has no other calls, so the routine selects between a constant and a forward to 0xec39740. The facts do not show what 0xec39740 does, and the name does not settle it.
