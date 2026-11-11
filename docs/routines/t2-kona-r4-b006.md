# Tier-2 reading batch 6 of kona (round 4)

Instruction-reading entries for twenty-five `gl_d_*` routines in the IGLOO32 `libgl.so`. Each role is written from the
rendered facts for that routine: the loads and stores through the shared command buffer pointers (`comm_buffer`,
`comm_curbufpos`, `comm_endbuffer`, `comm_stdsize`), the branch conditions, and the callees with their constant
arguments. Where a role is a guess from the callee name or the argument constants, the entry says so.

- `gl_d_clearhitcode` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec455a0
  **Inferred.** Writes one word at offset +0x0 of the record at `comm_curbufpos` (0xecd6c4c) and advances that pointer by 4 at 0xec455d8. The `bne` at 0xec455d4 compares `comm_endbuffer` (0xecd6c48) with the new pointer; when the buffer is full it goes to the flush call at 0xec455f0, which passes the constant 0x15 and the table 0x9d5d0 to `gl_comm_flush`. The return value is 0xecd6c4c or the flush result. Reading 0x15 as a command number is an inference from the constant, not a proven opcode.

- `gl_d_closeobj` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec45600
  **Inferred.** Same shape as `gl_d_clearhitcode`: one word stored at +0x0 at 0xec45624, pointer advanced by 4 at 0xec45638, full-buffer test at 0xec45634 against `comm_endbuffer`. The flush call at 0xec45650 passes the constant 0x16 and the table 0x9d570 to `gl_comm_flush` at 0xec40750. The constant sequence 0x15, 0x16, 0x17 across neighbouring routines suggests a command table, which is an inference.

- `gl_d_cmov` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec45660
  **Inferred.** Builds a 16-byte record at `comm_curbufpos`: three single-precision stores (`swc1`) at +0x4, +0x8 and +0xc and one integer store at +0x0 (0xec45680 to 0xec45690). It advances the pointer by 16 and tests it against `comm_endbuffer` at 0xec456a0; the full-buffer path calls `gl_comm_flush` at 0xec456bc with the constant 0x17. The float fields suggest a colour-and-position move, which is an inference from the `swc1` stores.

- `gl_d_cmov2` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec456d0
  **Inferred.** Builds a 12-byte record: two single-precision stores (`swc1`) at +0x4 and +0x8 and one integer store at +0x0 (0xec456f0 to 0xec456fc). The pointer advances by 12 at 0xec45710 and is tested against `comm_endbuffer` at 0xec4570c; the full-buffer path flushes at 0xec45728 with the constant 0x18. This is the two-float variant of `gl_d_cmov`, judging from the record size and the store pattern.

- `gl_d_cmov2i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec45740
  **Inferred.** Builds a 12-byte record of three integer stores at +0x0, +0x4 and +0x8 (0xec4576c to 0xec45760). The pointer advances at 0xec45780 and the buffer-full test is at 0xec4577c. The flush at 0xec45798 passes the constant 0x19 as the third argument and the table 0x9d430 as the fourth, with the first two arguments taken from the entry registers.

- `gl_d_cmovi` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec457b0
  **Inferred.** Builds a 16-byte record of four integer stores at +0x0, +0x4, +0x8 and +0xc (0xec457d0 to 0xec457e0). It advances `comm_curbufpos` at 0xec457f4 and tests against `comm_endbuffer` at 0xec457f0; the full-buffer flush at 0xec4580c passes the constant 0x1a and the table 0x9d3c0. The integer variant of `gl_d_cmov`, by the record size and the store width.

- `gl_d_color` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec45820
  **Inferred.** Builds an 8-byte record: a halfword store at +0x4 (`sh`, 0xec45840) and a word store at +0x0 (0xec45848). The pointer advances at 0xec4585c and the full-buffer test is at 0xec45858 against `comm_endbuffer`. The flush at 0xec45874 passes the constant 0x1b and the table 0x9d350; the halfword at +0x4 suggests a 16-bit colour or index field, which is an inference.

- `gl_d_cursoff` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec45890
  **Inferred.** Stores one word at +0x0 of the record at `comm_curbufpos` (0xec458b4) and advances the pointer at 0xec458cc. The `bne` at 0xec458c8 compares `comm_endbuffer` with the pointer plus 4; when the buffer is full it flushes at 0xec458f0 with the constant 0x1c and the table 0x9d2e0. The `beq` at 0xec458f8 then loops back to a second flush call at 0xec458d4 whose arguments are register values, and the return is the flush result. The name and the constant suggest the cursor-off command, which is an inference.

- `gl_d_curson` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec45900
  **Inferred.** The same loop as `gl_d_cursoff` at the adjacent address: one word stored at +0x0 (0xec45924), the pointer advanced at 0xec4593c, the full-buffer test at 0xec45938, and the flush at 0xec45960 with the constant 0x1d and the table 0x9d270. The `beq` at 0xec45968 loops back to a second flush call at 0xec45944, as in `gl_d_cursoff`. The name and the 0x1d constant suggest the cursor-on command, which is an inference.

- `gl_d_curveit` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec45970
  **Inferred.** Builds an 8-byte record with a halfword store at +0x4 (0xec45990) and a word store at +0x0 (0xec45998), then advances the pointer at 0xec459ac. The full-buffer test is at 0xec459a8 and the flush at 0xec459c4 passes the constant 0x1e and the table 0x9d200. The halfword field and the name point at a curve-drawing command with a count and a mode, which is an inference.

- `gl_d_defcursor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec459e0
  **Inferred.** Writes a 10-byte header into the record: a word at +0x8 and +0x0 and a halfword at +0x4 (0xec45a28 to 0xec45a38). It stores the advanced pointers into `comm_curbufpos` (0xec45a64) and `comm_endbuffer` (0xec45a6c), then packs data with `gl_mem_pack_array` at 0xec45a94. That call takes the count 0x100, the table 0xec7e410, the constant 0x58, and the pointer `comm_curbufpos` plus 12. The size checks at 0xec45a1c, 0xec45a34 and 0xec45a68 decide whether the data fits in one flush. The packed data is most likely a cursor bitmap, which is an inference from the routine name.

- `gl_d_deflinestyle` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec45ae0
  **Inferred.** Builds an 8-byte record: halfword stores at +0x4 and +0x6 (0xec45b00 and 0xec45b04) and a word store at +0x0 (0xec45b0c). The pointer advances at 0xec45b20 and the full-buffer test is at 0xec45b1c. The flush at 0xec45b38 passes the constant 0x20 and the table 0x9d090. The two halfword fields suggest a line-pattern and repeat count, which is an inference.

- `gl_d_defrasterfont` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec45b50
  **Inferred.** Writes a 16-byte header at `comm_curbufpos`: a word at +0x0 and +0xc and halfwords at +0x4, +0x6 and +0x8 (0xec45bb0 to 0xec45bd4). It then packs two blocks with `gl_mem_pack_array`, at 0xec45c60 (element table 0xec7ef90) and 0xec45c90 (element table 0xec7e410), each with the constant 0xb4 as its fourth argument and a count taken from an entry argument register. The full-buffer test is at 0xec45ba8 against 180 bytes past the pointer, and the final flush at 0xec45cb4 passes the table 0x9d020. The layout looks like a font header followed by two glyph tables, which is an inference.

- `gl_d_delobj` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec45cf0
  **Inferred.** Builds an 8-byte record: word stores at +0x4 and +0x0 (0xec45d10 and 0xec45d18), then advances the pointer at 0xec45d2c. The full-buffer test is at 0xec45d28 and the flush at 0xec45d44 passes the constant 0x22 and the table 0x9ce80. The name suggests a delete-object command; the record carries the object name and a second word, which is an inference.

- `gl_d_doublebuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec45d60
  **Inferred.** Stores one word at +0x0 of the record (0xec45d84) and advances the pointer at 0xec45d98. The full-buffer test is at 0xec45d94, and the flush at 0xec45db0 passes the constant 0x23 and the table 0x9ce10. The name suggests a swap-mode command with no real payload beyond its opcode, which is an inference.

- `gl_d_draw` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec45dc0
  **Inferred.** Builds a 16-byte record: three single-precision stores (`swc1`) at +0x4, +0x8 and +0xc and one integer store at +0x0 (0xec45de0 to 0xec45df0). The pointer advances at 0xec45e04 and the full-buffer test is at 0xec45e00. The flush at 0xec45e1c passes the constant 0x24 and the table 0x9cdb0. The float fields suggest a vertex coordinate with a colour or depth, which is an inference.

- `gl_d_draw2` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec45e30
  **Inferred.** Builds a 12-byte record: two single-precision stores (`swc1`) at +0x4 and +0x8 and one integer store at +0x0 (0xec45e50 to 0xec45e5c). The pointer advances at 0xec45e70 and the full-buffer test is at 0xec45e6c. The flush at 0xec45e88 passes the constant 0x25 and the table 0x9cd40. This is the two-float variant of `gl_d_draw`, judging from the record size.

- `gl_d_draw2i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec45ea0
  **Inferred.** Builds a 12-byte record of three integer stores at +0x0, +0x4 and +0x8 (0xec45ec0 to 0xec45ecc). The pointer advances at 0xec45ee0 and the full-buffer test is at 0xec45edc. The flush at 0xec45ef8 passes the constant 0x26 and the table 0x9ccd0. The integer variant of `gl_d_draw2`.

- `gl_d_drawi` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec45f10
  **Inferred.** Builds a 16-byte record of four integer stores at +0x0, +0x4, +0x8 and +0xc (0xec45f30 to 0xec45f40). The pointer advances at 0xec45f54 and the full-buffer test is at 0xec45f50. The flush at 0xec45f6c passes the constant 0x27 and the table 0x9cc60. The integer variant of `gl_d_draw`, by the record size and the store width.

- `gl_d_editobj` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec45f80
  **Inferred.** Builds an 8-byte record: word stores at +0x4 and +0x0 (0xec45fa0 and 0xec45fa8), then advances the pointer at 0xec45fbc. The full-buffer test is at 0xec45fb8 and the flush at 0xec45fd4 passes the constant 0x28 and the table 0x9cbf0. The name suggests an edit-object command with the object name and one more word, which is an inference.

- `gl_d_endpick` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec45ff0
  **Inferred.** Writes a 12-byte record at `comm_curbufpos` (word stores at +0x0, +0x4 and +0x8, 0xec4601c to 0xec46030) and advances the pointer at 0xec4603c. It then reads a reply with `gl_comm_read_data` at 0xec46038 (constant 0x1 and 0x29, table 0x9cb80) and unpacks the reply with `gl_mem_unpack_array` at 0xec46054. The return value is the word at +0x4 of the reply buffer. The request and reply pairing and the name suggest the end of pick mode, with the return as a hit count, which is an inference.

- `gl_d_endselect` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec46080
  **Inferred.** The same request and reply shape as `gl_d_endpick`: a 12-byte record of word stores at +0x0, +0x4 and +0x8 (0xec460ac to 0xec460c0), then `gl_comm_read_data` at 0xec460c8 with the constant 0x2a and the table 0x9caf0, and `gl_mem_unpack_array` at 0xec460e4. The return value is the word at +0x4 of the reply. The name suggests the end of select mode, which is an inference.

- `gl_d_finish` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec46110
  **Inferred.** Stores one word at +0x0 of the record (0xec46134) and advances the pointer at 0xec4614c. The `bne` at 0xec46148 compares `comm_endbuffer` with the pointer plus 4; on the normal path it then calls `gl_d_getpattern` at 0xec4e650, and that call's result is the return value. The full-buffer path flushes at 0xec46170 with the constant 0x2b and the table 0x9ca60, then loops back to the `gl_d_getpattern` call. The identifier and the flush constant suggest a wait-for-completion command, which is an inference.

- `gl_d_font` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec46180
  **Inferred.** Builds an 8-byte record: a halfword store at +0x4 (0xec461a0) and a word store at +0x0 (0xec461a8), then advances the pointer at 0xec461bc. The full-buffer test is at 0xec461b8 and the flush at 0xec461d4 passes the constant 0x2c and the table 0x9c9f0. The halfword field suggests a font index or size, which is an inference.

- `gl_d_frontbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec461f0
  **Inferred.** Builds an 8-byte record of word stores at +0x4 and +0x0 (0xec46210 and 0xec46218), then advances the pointer at 0xec4622c. The full-buffer test is at 0xec46228 and the flush at 0xec46244 passes the constant 0x2d and the table 0x9c980. The name suggests a select-front-buffer command with a mode word, which is an inference.
