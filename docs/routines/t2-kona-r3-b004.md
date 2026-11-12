# Tier-2 routine roles, kona batch 4

Roles for the two routines of targets 100 to 124 of the ranked tier-2 list that the grader accepts as understood. Each one comes from the rendered instruction facts at the cited addresses, so every entry is graded inferred. Where the facts stop short of the routine's purpose, the entry says so.

- `gl_g_lstrwidth` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec39500
  **Inferred.** Its first branch on a1 (at 0xec39530) skips to 0xec39674 when a1 is zero. Otherwise it loads gl_wstatep and the words at +3016 and +8 and +0x14 of the chain (the +3016 word being zero branches to 0xec39658), and calls mbgetnext at 0xec39c60 (calls at 0xec39574, 0xec395b8, 0xec395dc and 0xec39624), with loops back at 0xec395c0 and 0xec3962c. It calls gl_find at 0xec39604 with the +0x14 word as a0 and mbgetnext's return as a1, and after a nonzero gl_find return it loads a halfword at +0x14 at 0xec39614; the facts do not show which register that load is based on. It calls set_def_font at 0xec3965c on one path, passing a0 to a3 through unchanged. It has a return of 0 at 0xec3968c and another at 0xec39650 whose value the facts do not show. The name suggests a string width, but the facts never show the width being summed.
  Reviewed: 2026-11-12 (sonnet)
- `gl_i_lcharstr` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec39a50
  **Inferred.** When a1 is zero it returns the constant 0xa9120 at 0xec39a64 (the fall-through of the bne at 0xec39a5c). When a1 is nonzero the bne branches to 0xec39a6c, where it loads a word at offset 0 of an address register. The facts show no calls. They do not show what the loaded word is used for or where control goes after the load, and the name does not settle it.
  Reviewed: 2026-11-12 (sonnet)
