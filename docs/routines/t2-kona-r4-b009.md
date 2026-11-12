# Tier-2 routine roles, kona batch 9

Roles for targets 225 to 249 of the ranked tier-2 list. Each one comes from the rendered instruction facts at the cited addresses, so every entry is graded inferred. Where the facts stop short of the routine's purpose, the entry says so.

- `gl_d_pnt` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec47d20
  **Inferred.** Appends a 16-byte record to the shared command buffer. It loads the write pointer from comm_curbufpos (0xecd6c4c), stores four words at offsets 0x0 to 0xc, and stores the pointer back at 0xec47d64. When fewer than 16 bytes remain before comm_endbuffer, the call at 0xec47d7c passes the constant 0x64 as the first argument to gl_comm_flush (0xec40750). The field meanings are not shown in the facts.
  Reviewed: 2026-11-12 (sonnet)
- `gl_d_pnt2` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec47d90
  **Inferred.** The same flow as gl_d_pnt at 0xec47d20, with a 12-byte record of three stores at offsets 0x0 to 0x8. The space check at 0xec47dcc compares comm_endbuffer with the pointer plus 12, and the flush at 0xec47de8 passes 0x65 as its first argument. The name suggests a two-coordinate point, but the facts show only the record size.
  Reviewed: 2026-11-12 (sonnet)
- `gl_d_pnt2i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec47e00
  **Inferred.** The 12-byte point record of gl_d_pnt2 at 0xec47d90, written with plain word stores rather than single-precision stores, which suggests the integer form of that call. The space check at 0xec47e3c and the flush at 0xec47e58 match the pattern, with 0x66 as the third argument and 0x9ad70 as the fourth. The name suggests the integer point call, but the facts do not show the stored values.
  Reviewed: 2026-11-12 (sonnet)
- `gl_d_pnti` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec47e70
  **Inferred.** The 16-byte point record written with four word stores at offsets 0x0 to 0xc (the single-precision form of gl_d_pnt uses float stores for three of them), and a space check at 0xec47eb0 against the pointer plus 16. The flush at 0xec47ecc passes 0x67 as the fourth argument (a3), with the constant 0x9ad00 as the fifth (a4). The name suggests the integer point call. The stored values are not shown in the facts.
  Reviewed: 2026-11-12 (sonnet)
- `gl_d_polarview` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec47ee0
  **Inferred.** Writes a 16-byte record with three halfword stores at offsets 0x8 to 0xc, one single-precision store at 0x4, and one word store at 0x0. The space check at 0xec47f24 is against the pointer plus 16, and the flush at 0xec47f40 passes 0x68 as the first argument. The mix of halfword and word fields suggests a packed set of view parameters, and the name matches the GL polar-view call. The rendered facts do not name the fields, so that mapping is inferred from the name only.
  Reviewed: 2026-11-12 (sonnet)
- `gl_d_polf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec47f50
  **Inferred.** Appends a header record to the command buffer and calls a pack routine. It writes stores at offsets 0x0, 0x4 and 0x8 from the write pointer at comm_curbufpos (0xecd6c4c). The 88-byte space check at 0xec47f8c compares comm_endbuffer (0xecd6c48) with the pointer plus 88; when the buffer is shorter, control goes to the call at 0xec4803c, which passes the entry arguments to gl_comm_flush (0xec40750). It reads comm_buffer and comm_stdsize (0xecd6c44 and 0xecd6c40) and calls gl_mem_pack_array (0xec7d9b0) at 0xec4801c with 0x58 as a4 and 0xec7e8d0 as a3. A second, conditional gl_comm_flush call at 0xec48058 passes a1 = comm_buffer + comm_stdsize - 24; it is reached when the branch at 0xec47ff0 is taken. The name suggests a float-vertex polygon submit, but the facts show only the buffer writes, the pack call and the flushes.
  Reviewed: 2026-11-12 (sonnet)
- `gl_d_polf2` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec48070
  **Inferred.** The same flow as gl_d_polf at 0xec47f50, with the same 88-byte header check at 0xec480ac, the pack call at 0xec48134 with 0x58 as a4 and 0xec7e8d0 as a3, and the flushes at 0xec48154 and 0xec48170. The name suggests a two-coordinate polygon, but the facts show only the same shape as gl_d_polf.
  Reviewed: 2026-11-12 (sonnet)
- `gl_d_polf2i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec48180
  **Inferred.** The same flow as gl_d_polf2 at 0xec48070, with the same header stores and 88-byte space check at 0xec481bc, but the pack call at 0xec48244 takes 0xec7e5b0 as a3 instead of 0xec7e8d0. The name suggests an integer variant, which would fit a different pack table, but the facts do not show what either constant is. The flushes at 0xec48264 and 0xec48280 match gl_d_polf2.
  Reviewed: 2026-11-12 (sonnet)
- `gl_d_polfi` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec48290
  **Inferred.** The same layout as gl_d_polf at 0xec47f50: the header stores, the 88-byte space check at 0xec482cc, and the pack call at 0xec4835c with 0x58 as a4 and 0xec7e5b0 as a3 (gl_d_polf uses 0xec7e8d0). The flushes at 0xec4837c and 0xec48398 match gl_d_polf. The name suggests an integer polygon submit. The facts do not show the vertex format.
  Reviewed: 2026-11-12 (sonnet)
- `gl_d_poly` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec483b0
  **Inferred.** The same flow as gl_d_polf at 0xec47f50: the header record, the pack call at 0xec4847c with 0x58 as a4 and 0xec7e8d0 as a3 (the same a3 as gl_d_polf), the 88-byte space check at 0xec483ec, and flushes at 0xec4849c and 0xec484b8. The name alone does not say which vertex form it takes, and the facts do not show it.
  Reviewed: 2026-11-12 (sonnet)
- `gl_d_poly2` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec484d0
  **Inferred.** The same polygon flow as gl_d_poly at 0xec483b0, with the pack call at 0xec48594 using 0x58 as a4 and 0xec7e8d0 as a3, the space check at 0xec4850c, and flushes at 0xec485b4 and 0xec485d0. The name suggests a two-coordinate polygon. The facts show only the shape.
  Reviewed: 2026-11-12 (sonnet)
- `gl_d_poly2i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec485e0
  **Inferred.** The same flow as gl_d_poly2 at 0xec484d0, with the pack call at 0xec486a4 using 0xec7e5b0 as a3 instead of 0xec7e8d0, the space check at 0xec4861c, and flushes at 0xec486c4 and 0xec486e0. The name suggests an integer variant. The header stores and branches match the other polygon routines in this batch. The facts do not show the vertex format.
  Reviewed: 2026-11-12 (sonnet)
- `gl_d_polyi` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec486f0
  **Inferred.** The same header record and pack call as gl_d_poly at 0xec483b0, with the pack call at 0xec487bc using 0x58 as a4 and 0xec7e5b0 as a3, and the 88-byte space check at 0xec4872c. Its flushes at 0xec487dc and 0xec487f8 follow the same pattern as the other polygon routines in this batch: the first is reached when the space check at 0xec4872c is taken, the second when the branch at 0xec48790 is taken. The name suggests an integer unsuffixed polygon submit. The facts do not show the vertex format.
  Reviewed: 2026-11-12 (sonnet)
- `gl_d_popattributes` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec48810
  **Inferred.** Appends a 4-byte record to the command buffer: one word store at the write pointer (sw at 0xec48834), with the pointer stored back at 0xec48848. The space check at 0xec48844 compares comm_endbuffer with the pointer plus 4, and the flush at 0xec48860 passes the constant 0x71 as the first argument to gl_comm_flush. The name suggests a pop-attributes call, and 0x71 is consistent with a command code, but the stored value is not shown in the facts.
  Reviewed: 2026-11-12 (sonnet)
- `gl_d_popmatrix` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec48870
  **Inferred.** The same 4-byte, one-word command record as gl_d_popattributes at 0xec48810, with the space check at 0xec488a4 and the flush at 0xec488c0 passing 0x72 as the first argument. The name suggests a pop-matrix call. The stored value is not shown in the facts.
  Reviewed: 2026-11-12 (sonnet)
- `gl_d_pushattributes` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec48930
  **Inferred.** The same 4-byte, one-word command record as gl_d_popattributes at 0xec48810, with the space check at 0xec48964 and the flush at 0xec48980 passing 0x74 as the first argument. The name suggests a push-attributes call. The stored value is not shown in the facts.
  Reviewed: 2026-11-12 (sonnet)
- `gl_d_pushmatrix` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec48990
  **Inferred.** The same 4-byte, one-word command record as gl_d_popattributes at 0xec48810, with the space check at 0xec489c4 and the flush at 0xec489e0 passing 0x75 as the first argument. The name suggests a push-matrix call. The stored value is not shown in the facts.
  Reviewed: 2026-11-12 (sonnet)
- `gl_d_qenter` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec48a50
  **Inferred.** Appends an 8-byte record of two halfword stores at offsets 0x4 and 0x6 and one word store at 0x0 to the command buffer. The space check at 0xec48a8c compares comm_endbuffer with the pointer plus 8, and the flush at 0xec48aa8 passes 0x77 as the third argument (a2) with the constant 0x9a120 as the fourth (a3). The name suggests a queue-enter call, but the facts do not show the record fields.
  Reviewed: 2026-11-12 (sonnet)
- `gl_dgl_qread` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec48ac0
  **Inferred.** Sends a one-word request through the command buffer (store at 0xec48af4, pointer stored back at 0xec48b00) and reads the reply with gl_comm_read_data (0xec40b90), called at 0xec48afc with 0x1 as the first argument and the constant 0x9a0b0 as the second. It then loads a halfword from [comm_buffer]+0x8 (lh at 0xec48b14) and stores a halfword at 0xec48b18; the store's destination is not shown in the facts. It returns the word at [comm_buffer]+0x4. The name suggests a queued read query. The reply layout is taken from the offsets only.
  Reviewed: 2026-11-12 (sonnet)
- `gl_dgl_qtest` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec48b90
  **Inferred.** Sends a one-word request (store at 0xec48bbc, pointer stored back at 0xec48bc8) and reads the reply with gl_comm_read_data (0xec40b90), called at 0xec48bc4 with 0x1 as the first argument and arguments 1 to 3 passed through from entry. It returns the word at [comm_buffer]+0x4. There is no space check, unlike the record writers. The name suggests a query test, but the facts do not show what the reply means.
  Reviewed: 2026-11-12 (sonnet)
- `gl_d_readpixels` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec48bf0
  **Inferred.** Writes a request record of word stores at offsets 0x0, 0x8 and 0xc, a halfword store at 0x4, and stores the pointer back at 0xec48c4c. It calls gl_comm_read_data (0xec40b90) at 0xec48c48 with 0x1 and -2 as the first and third arguments. It then calls gl_mem_unpack_array (0xec7da50) at 0xec48c64 with arg1 as a0, [comm_buffer]+8 as a1 and 0xec7e4e0 as a2. The routine returns the word at [comm_buffer]+0x4. The name suggests a pixel readback, but the record fields and the role of the unpack arguments are not shown.
  Reviewed: 2026-11-12 (sonnet)
- `gl_d_readRGB` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec48c90
  **Inferred.** Writes an eight-store request record reaching offset 0x1c. When fewer than 32 bytes remain (the branch at 0xec48cd4), it first flushes through gl_comm_flush (0xec40750), called at 0xec48ce0. It then reads the reply with gl_comm_read_data (0xec40b90) at 0xec48d24, with 0x1 and 0x7c as the first two arguments. It unpacks three arrays with gl_mem_unpack_array (0xec7da50) at 0xec48d44, 0xec48d58 and 0xec48d70, all using 0xec7dac0 as a2. The name suggests three colour planes, but the planes are inferred from the name and three unpack calls only.
  Reviewed: 2026-11-12 (sonnet)
- `gl_d_rect` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec48da0
  **Inferred.** Appends a 20-byte record of five words: single-precision stores at offsets 0x4 to 0x10 and one word store at 0x0. The space check at 0xec48de4 compares comm_endbuffer with the pointer plus 20, and the flush at 0xec48e00 passes 0x7d as the first argument. Four float fields are consistent with two corner points, but the facts do not name the fields.
  Reviewed: 2026-11-12 (sonnet)
- `gl_d_rectf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec48e10
  **Inferred.** The same 20-byte, five-word record as gl_d_rect at 0xec48da0, with the space check at 0xec48e54 and the flush at 0xec48e70 passing 0x7e as the first argument. The name suggests a filled rectangle. The facts show only the record shape.
  Reviewed: 2026-11-12 (sonnet)
- `gl_d_rectfi` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec48e80
  **Inferred.** The integer form of the 20-byte rectangle record: the four single-precision stores of gl_d_rectf become word stores, with a space check at 0xec48ec4 and a flush at 0xec48ee0. That flush passes 0x7f as the fifth argument (a4), not the first as in gl_d_rect and gl_d_rectf, so the opcode reading is less certain for this routine. The facts do not say why the constant sits in that slot.
  Reviewed: 2026-11-12 (sonnet)
