# Tier-2 routine roles, kona batch 8

Roles for targets 200 to 224 of the ranked tier-2 list, all in the IGLOO32 `libgl.so`. Each one comes from the rendered instruction facts at the cited addresses. The grader accepted all 25 renders and none were rejected. Every entry is graded inferred.

- `gl_d_gRGBcursor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec46e50
  **Inferred.** Writes one request word at the current write position (0xec46ea0), advances comm_curbufpos (0xec46eac), and calls gl_comm_read_data (0xec40b90) with a0 = 1 and its own a1 to a3 forwarded. It then copies reply halfwords from comm_buffer at offsets 0x4 to 0x1c into the caller's pointers a0 to a6, and the word at 0x20 into a7. The return value is the a1 argument. The name suggests a cursor colour readback, but the facts do not name the reply fields.
  Reviewed: 2026-11-12

- `gl_d_gRGBmask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec46f50
  **Inferred.** Writes one request word at the current position (0xec46f8c) and advances comm_curbufpos (0xec46f98). It calls gl_comm_read_data (0xec40b90) with a0 = 1, a1 and a2 forwarded, and the constant 0x9bc20 as a3. It copies three reply halfwords from comm_buffer at offsets 0x4, 0x8 and 0xc into the caller's pointers a0, a1 and a2, and returns the read_data result. The shape matches gl_d_gRGBcursor with a smaller reply, which suggests a mask query.
  Reviewed: 2026-11-12

- `gl_d_isobj` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec46fe0
  **Inferred.** Writes two request words at the current position (0xec47004, 0xec47010) and advances comm_curbufpos (0xec4701c). It calls gl_comm_read_data (0xec40b90) with a0 = 1, the constant 0x9bb90 as a1, and its a2 and a3 forwarded. It returns the word at offset 0x4 of the block that comm_buffer points to. The name suggests a yes or no query, but the facts give no reply field name.
  Reviewed: 2026-11-12

- `gl_d_istag` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec47040
  **Inferred.** Same shape as gl_d_isobj at 0xec46fe0: two request words written at the current position (0xec47064, 0xec47070), comm_curbufpos advanced at 0xec4707c, and gl_comm_read_data (0xec40b90) called with a0 = 1 and the constant 0x9bb30 as a1. It returns the word at offset 0x4 of the reply block. The name suggests a tag query, and the reply field is not named in the facts.
  Reviewed: 2026-11-12

- `gl_d_linewidth` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec470a0
  **Inferred.** Stores a halfword at +4 and a word at +0 of an 8-byte record (0xec470c0, 0xec470c8) and advances comm_curbufpos (0xec470dc). The stores come first. When comm_endbuffer is below curbufpos + 8 (bne at 0xec470d8), it then calls gl_comm_flush (0xec40750) with the constant 0x4e as a1. The name suggests a line width setting, which the record layout is consistent with.
  Reviewed: 2026-11-12

- `gl_d_lookat` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec47200
  **Inferred.** Writes six single-precision values at offsets 0x4 to 0x18 of the current record (0xec47270 to 0xec4725c), a word at +0 (0xec47278), and a halfword at +0x1c (0xec47258). It checks for 32 bytes of room twice (bne at 0xec47250 and 0xec47288, against comm_endbuffer), and calls gl_comm_flush (0xec40750) when the room is short, with the constant 0x50 as a5 in the second call. The name suggests a view transform, and the render gives no argument names for the six values.
  Reviewed: 2026-11-12

- `gl_d_lsbackup` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec47300
  **Inferred.** Writes words at +4 and +0 of the current record (0xec47320, 0xec47328) and advances comm_curbufpos (0xec4733c). When fewer than 8 bytes remain (bne at 0xec47338), it calls gl_comm_flush (0xec40750) with the constant 0x51 as a1 and 0x9b870 as a2. The return value is the address of comm_curbufpos (0xecd6c4c) on the path without a flush, or the result of the flush.
  Reviewed: 2026-11-12

- `gl_d_makeobj` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec47370
  **Inferred.** Writes words at +4 and +0 of the current record (0xec47390, 0xec47398) and advances comm_curbufpos (0xec473ac). When fewer than 8 bytes remain (bne at 0xec473a8), it calls gl_comm_flush (0xec40750) with the constant 0x52 as a1 and 0x9b800 as a2. The record layout matches gl_d_maketag, and the name suggests an object creation request.
  Reviewed: 2026-11-12

- `gl_d_maketag` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec473e0
  **Inferred.** Writes words at +4 and +0 of the current record (0xec47400, 0xec47408) and advances comm_curbufpos (0xec4741c). When fewer than 8 bytes remain (bne at 0xec47418), it calls gl_comm_flush (0xec40750) with the constant 0x53 as a1 and 0x9b790 as a2. It is the same routine body as gl_d_makeobj with a different opcode constant, and the name suggests a tag creation request.
  Reviewed: 2026-11-12

- `gl_d_mapcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec47450
  **Inferred.** Writes four halfwords at offsets 0xa, 0x8, 0x6 and 0x4 and a word at +0 of the current record (0xec47470 to 0xec47484), a 12-byte payload. When fewer than 12 bytes remain (bne at 0xec47494), it calls gl_comm_flush (0xec40750), passing its own a0 to a3 along with the constant 0x54 as a4 and 0x9b720 as a5. The name suggests a colour map entry.
  Reviewed: 2026-11-12

- `gl_d_mapw` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec474c0
  **Inferred.** Writes a request header of a word at +0, halfwords at +8 and +0xa, and a word at +4 (0xec474fc to 0xec47510), then advances comm_curbufpos (0xec4751c). It calls gl_comm_read_data (0xec40b90) with a0 = 1 and its a1 to a3 forwarded, then copies five reply floats from comm_buffer at offsets 0x4 to 0x14 into the caller's pointers a3 to a7. A sixth float from offset 0x18 is stored to a destination the render does not resolve. The return value is the word at 0xecd6c44 (the comm_buffer pointer itself), not the read_data result. The name suggests a coordinate mapping query.
  Reviewed: 2026-11-12

- `gl_d_mapw2` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec475a0
  **Inferred.** Writes a request header of a word at +0 and +4 and halfwords at +8 and +0xa (0xec475d0 to 0xec475e4), then advances comm_curbufpos (0xec475f0). It calls gl_comm_read_data (0xec40b90) at 0xec475ec with a0 = 1, its a1 to a3 forwarded, and the constant 0x9b5d0 as a5. It copies two reply floats from comm_buffer at offsets 0x4 and 0x8 into the caller's pointers a3 and a4, and returns the read_data result. The name suggests a two-coordinate form of gl_d_mapw.
  Reviewed: 2026-11-12

- `gl_d_move` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec47630
  **Inferred.** Writes three floats at offsets 0xc, 0x8 and 0x4 and a word at +0 of the current record (0xec47650 to 0xec47660), a 16-byte payload. When fewer than 16 bytes remain (bne at 0xec47670), it calls gl_comm_flush (0xec40750) with the constant 0x57 as a0 and 0x9b540 as a1. The name suggests a current position move.
  Reviewed: 2026-11-12

- `gl_d_move2` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec476a0
  **Inferred.** Writes two floats at +8 and +4 and a word at +0 of the current record (0xec476c0 to 0xec476cc), a 12-byte payload. When fewer than 12 bytes remain (bne at 0xec476dc), it calls gl_comm_flush (0xec40750) with the constant 0x58 as a0 and 0x9b4d0 as a1. The name suggests a two-coordinate form of gl_d_move.
  Reviewed: 2026-11-12

- `gl_d_move2i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec47710
  **Inferred.** Writes three words at +8, +4 and +0 of the current record (0xec47730 to 0xec4773c), a 12-byte payload. When fewer than 12 bytes remain (bne at 0xec4774c), it calls gl_comm_flush (0xec40750) with the constant 0x59 as a2 and 0x9b460 as a3. The stores are integer, which separates it from gl_d_move2 at 0xec476a0, and the name suggests a two-coordinate integer move.
  Reviewed: 2026-11-12

- `gl_d_movei` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec47780
  **Inferred.** Writes four words at offsets 0xc, 0x8, 0x4 and 0x0 of the current record (0xec477a0 to 0xec477b0), a 16-byte payload. When fewer than 16 bytes remain (bne at 0xec477c0), it calls gl_comm_flush (0xec40750) with the constant 0x5a as a3 and 0x9b3f0 as a4. The name suggests an integer move with three coordinates.
  Reviewed: 2026-11-12

- `gl_d_multimap` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec477f0
  **Inferred.** Writes one word at +0 of the current record (0xec47814) and advances comm_curbufpos (0xec47828). When fewer than 4 bytes remain (bne at 0xec47824), it calls gl_comm_flush (0xec40750) with the constant 0x5b as a0 and 0x9b380 as a1. The name suggests a multi-map request.
  Reviewed: 2026-11-12

- `gl_d_multmatrix` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec47850
  **Inferred.** Writes two words at +4 and +0 of the current header (0xec47890, 0xec4789c). It compares free space with 84 bytes (bne at 0xec47884, the constant 0x54), and calls gl_comm_flush (0xec40750) at 0xec47910 when less is free. When the pointer argument a0 is non-null it calls gl_mem_pack_array (0xec7d9b0) at 0xec478f0 with a size of 0x40 bytes and a4 = 0x54. The 0x40 size is 16 single-precision values, the size of a 4x4 matrix, so the argument is probably the matrix. A second flush at 0xec4792c follows a comparison (bne at 0xec478c8) against a value the render leaves unresolved.
  Reviewed: 2026-11-12

- `gl_d_noise` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec47940
  **Inferred.** Writes halfwords at +6 and +4 and a word at +0 of an 8-byte record (0xec47960 to 0xec4796c), and advances comm_curbufpos (0xec47980). When fewer than 8 bytes remain (bne at 0xec4797c), it calls gl_comm_flush (0xec40750) with the constant 0x5d as a2 and 0x9b230 as a3. The record layout is the same as gl_d_picksize at 0xec47cb0, and the name suggests a noise parameter setting.
  Reviewed: 2026-11-12

- `gl_d_onemap` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec479b0
  **Inferred.** Writes one word at +0 of the current record (0xec479d4) and advances comm_curbufpos (0xec479e8). When fewer than 4 bytes remain (bne at 0xec479e4), it calls gl_comm_flush (0xec40750) with the constant 0x5e as a0 and 0x9b1c0 as a1. The name suggests a single-map request, a single-word form of gl_d_multimap.
  Reviewed: 2026-11-12

- `gl_d_ortho` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec47a10
  **Inferred.** Writes six floats at offsets 0x4 to 0x18 and a word at +0 of the current record (0xec47a60 to 0xec47a7c), a 28-byte payload. It checks for 28 bytes of room at two points (bne at 0xec47a58 and 0xec47a8c, against comm_endbuffer), calling gl_comm_flush (0xec40750) when short, and the second flush passes the constant 0x5f as a5. The name suggests an orthographic projection, and the six floats have no argument names in the render.
  Reviewed: 2026-11-12

- `gl_d_ortho2` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec47b00
  **Inferred.** Writes four floats at offsets 0x10, 0xc, 0x8 and 0x4 and a word at +0 of the current record (0xec47b20 to 0xec47b34), a 20-byte payload. When fewer than 20 bytes remain (bne at 0xec47b44), it calls gl_comm_flush (0xec40750) with the constant 0x60 as a0 and 0x9b070 as a1. The name suggests a two-dimensional form of gl_d_ortho, and its payload is 8 bytes shorter.
  Reviewed: 2026-11-12

- `gl_d_perspective` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec47b70
  **Inferred.** Writes three floats at offsets 0x10, 0xc and 0x8, a halfword at +4, and a word at +0 of the current record (0xec47b90 to 0xec47ba4), a 20-byte payload. When fewer than 20 bytes remain (bne at 0xec47bb4), it calls gl_comm_flush (0xec40750) with the constant 0x61 as a1 and 0x9b000 as a2. The name suggests a perspective projection, and the halfword and float fields have no argument names in the render.
  Reviewed: 2026-11-12

- `gl_d_pick` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec47be0
  **Inferred.** Writes words at offsets 0xc, 0x8, 0x4 and 0x0 of the current record (0xec47c1c to 0xec47c34), then reads comm_buffer and comm_stdsize (0xec47c40, 0xec47c44) and sets comm_curbufpos and comm_endbuffer (0xec47c58, 0xec47c60) to new values. It calls gl_comm_flush (0xec40750) at 0xec47c7c only when fewer than 88 bytes of room remain (bne at 0xec47c14, taken to the flush), and at 0xec47c98 only when the new comm_endbuffer value (comm_stdsize plus comm_buffer minus 24) is below the new curbufpos (bne at 0xec47c5c). The second call has a5 = curbufpos + 16, a6 = 0x80000000 sign-extended, and the constant 0x62 as a7. The name suggests a selection setup, and the facts do not name the 0x80000000 field.
  Reviewed: 2026-11-12

- `gl_d_picksize` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec47cb0
  **Inferred.** Writes halfwords at +6 and +4 and a word at +0 of an 8-byte record (0xec47cd0 to 0xec47cdc), and advances comm_curbufpos (0xec47cf0). When fewer than 8 bytes remain (bne at 0xec47cec), it calls gl_comm_flush (0xec40750) with the constant 0x63 as a2 and 0x9aec0 as a3. The name suggests a selection size setting, and the record layout matches gl_d_noise at 0xec47940.
  Reviewed: 2026-11-12
