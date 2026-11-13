# Routine role entries, kona tier-2 batch 10

These entries come from rendered facts for 25 routines in the IGLOO32 build of `libgl.so`: memory accesses, calls, branches and return values at fixed addresses. Names come from the inventory. The facts show what the code does, not what its callers intend, so every label is inferred. The command buffer pointers are the words at 0xecd6c40 through 0xecd6c4c, named by the inventory as comm_stdsize, comm_buffer, comm_endbuffer and comm_curbufpos. Where a fact is missing, the entry says so.

- `gl_d_recti` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec48ef0
  **Inferred.** Appends a 20-byte record to the command buffer. It stores five words at the cursor from +0x0 through +0x10, then advances comm_curbufpos (0xecd6c4c). The room test at 0xec48f34 compares comm_endbuffer (0xecd6c48) with cursor+20, and when the record does not fit the code calls gl_comm_flush at 0xec40750 with the constant 0x80 as its a4 argument. The facts do not show what 0x80 selects in the flush.
  Reviewed: 2026-11-12

- `gl_d_RGBcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec48fd0
  **Inferred.** Appends a 12-byte record: a word at cursor+0 and three halfwords at +0x4, +0x6 and +0x8. The room test at 0xec49010 compares comm_endbuffer with cursor+12, and the short-room path calls gl_comm_flush at 0xec40750 with the constant 0x82 as a3. The record then moves comm_curbufpos forward. The return value is either 0xecd6c4c, the address of the comm_curbufpos variable, or the gl_comm_flush result, depending on the room test.
  Reviewed: 2026-11-12

- `gl_d_RGBcursor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec49040
  **Inferred.** Writes a record with one word at cursor+0 and seven halfwords from +0x4 to +0x10. It runs two room tests, one against cursor+32 at 0xec49074 and one against cursor+20 at 0xec490ac. The routine has two gl_comm_flush calls at 0xec40750 (at 0xec490e0, passing its own arguments through, and at 0xec49114, passing cursor+20 as a0). The facts do not show which path is the ordinary one, so the record size is not fully established.
  Reviewed: 2026-11-12

- `gl_d_RGBmode` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec49130
  **Inferred.** Appends a 4-byte record: a single word stored at the cursor. The room test at 0xec49164 compares comm_endbuffer with cursor+4, and the short-room path calls gl_comm_flush at 0xec40750 with the constant 0x84 as a0. The routine advances comm_curbufpos at 0xec49168. The return at 0xec49170 is either 0xecd6c4c, the address of the comm_curbufpos variable, or the gl_comm_flush result, depending on the room test.
  Reviewed: 2026-11-12

- `gl_d_RGBwritemask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec49190
  **Inferred.** Appends a 12-byte record with the same layout as gl_d_RGBcolor: a word at cursor+0 and halfwords at +0x4, +0x6 and +0x8. The room test at 0xec491d0 compares comm_endbuffer with cursor+12, and the short-room path calls gl_comm_flush at 0xec40750 with the constant 0x85 as a3.
  Reviewed: 2026-11-12

- `gl_d_rotate` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec49200
  **Inferred.** Appends an 8-byte record: a word at cursor+0, a halfword at +0x4 and a byte at +0x6. The room test at 0xec4923c compares comm_endbuffer with cursor+8, and the short-room path calls gl_comm_flush at 0xec40750 with the constant 0x86 as a2. The record then advances comm_curbufpos.
  Reviewed: 2026-11-12

- `gl_d_scale` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec49270
  **Inferred.** Appends a 16-byte record of four words: a word at cursor+0 and three single-precision values stored with swc1 at +0x4, +0x8 and +0xc. The room test at 0xec492b0 compares comm_endbuffer with cursor+16, and the short-room path calls gl_comm_flush at 0xec40750 with the constant 0x87 as a0.
  Reviewed: 2026-11-12

- `gl_d_scrmask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec492e0
  **Inferred.** Appends a 12-byte record: a word at cursor+0 and halfwords at +0x4, +0x6, +0x8 and +0xa. The room test at 0xec49324 compares comm_endbuffer with cursor+12, and the short-room path calls gl_comm_flush at 0xec40750 with the constant 0x88 as a4 and the address 0x99890 as a5. The facts do not show what the address 0x99890 holds.
  Reviewed: 2026-11-12

- `gl_d_gselect` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec49350
  **Inferred.** Writes a 16-byte header of four words at the cursor (+0x0 through +0xc) and reads comm_buffer (0xecd6c44) and comm_stdsize (0xecd6c40) to form a limit of (stdsize + buffer) - 24. It tests comm_endbuffer against cursor+88 at 0xec49384 and the limit against cursor+16 at 0xec493cc. When the first test fails the code calls gl_comm_flush at 0xec40750 at 0xec493ec with its own arguments passed through. When the second fails it calls gl_comm_flush at 0xec49408 with the limit as a0 and the constant 0x89 as a7. Two stores of a word with offset 0 sit at 0xec493c8 and 0xec493d0, but the facts do not show which variables they target. The facts do not show what the buffer is switched to.
  Reviewed: 2026-11-12

- `gl_d_setcursor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec49420
  **Inferred.** Appends a 12-byte record: a word at cursor+0 and halfwords at +0x4, +0x6 and +0x8. The room test at 0xec49460 compares comm_endbuffer with cursor+12, and the short-room path calls gl_comm_flush at 0xec40750 with the constant 0x8a as a3.
  Reviewed: 2026-11-12

- `gl_d_setdepth` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec49490
  **Inferred.** Appends an 8-byte record: a word at cursor+0 and halfwords at +0x4 and +0x6. The room test at 0xec494cc compares comm_endbuffer with cursor+8, and the short-room path calls gl_comm_flush at 0xec40750 with the constant 0x8b as a2.
  Reviewed: 2026-11-12

- `gl_d_setlinestyle` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec49500
  **Inferred.** Appends an 8-byte record: a word at cursor+0 and a halfword at +0x4. The room test at 0xec49538 compares comm_endbuffer with cursor+8, and the short-room path calls gl_comm_flush at 0xec40750 with the constant 0x8c as a1.
  Reviewed: 2026-11-12

- `gl_d_setmap` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec49570
  **Inferred.** Appends an 8-byte record: a word at cursor+0 and a halfword at +0x4. The room test at 0xec495ac compares comm_endbuffer with cursor+8. The short-room path (the taken branch) calls gl_comm_flush at 0xec40750 at 0xec495d4 with the constant 0x8d as a1. The path where the record fits stores a word at 0xec495b0, calls gl_comm_flush at 0xec495b8 with arguments not recovered from the facts, and returns that call's result.
  Reviewed: 2026-11-12

- `gl_d_setvaluator` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec495f0
  **Inferred.** Appends a 12-byte record: a word at cursor+0 and halfwords at +0x4, +0x6, +0x8 and +0xa. The room test at 0xec49634 compares comm_endbuffer with cursor+12, and the short-room path calls gl_comm_flush at 0xec40750 with the constant 0x8e as a4.
  Reviewed: 2026-11-12

- `gl_d_singlebuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec49660
  **Inferred.** Appends a 4-byte record: a single word stored at the cursor. The room test at 0xec49694 compares comm_endbuffer with cursor+4, and the short-room path calls gl_comm_flush at 0xec40750 with the constant 0x8f as a0.
  Reviewed: 2026-11-12

- `gl_d_strwidth` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec496c0
  **Inferred.** Takes a string argument in a0. A room test at 0xec496f8 compares comm_endbuffer with cursor+84; when it fails the code calls gl_comm_flush at 0xec40750 at 0xec497b0 with its own arguments passed through. Otherwise it measures the string with strlen at 0xec4970c and stores words at offsets +0x0 and +0x4 of the cursor block. A branch at 0xec49720 on a0 != 0 goes to a block at 0xec49788 that calls gl_mem_pack_array at 0xec7d9b0 with a0 = cursor+8, a1 = the string argument, the constant 0xec7dac0 as a3 and 0x54 as a4. The fall-through (a0 == 0) path reads comm_buffer and comm_stdsize, calls gl_comm_read_data at 0xec40b90 with the constant 0x1 as a0 and returns the word at [[comm_buffer]+4]. The facts do not show whether the pack block rejoins that path, or what the returned word encodes.
  Reviewed: 2026-11-12

- `gl_d_swapbuffers` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec497d0
  **Inferred.** Appends a 4-byte record: a word at cursor+0. The room test at 0xec49808 compares comm_endbuffer with cursor+4. The short-room path (the taken branch) calls gl_comm_flush at 0xec40750 at 0xec49830 with the constant 0x91 as a0. The path where the record fits stores a word at 0xec4980c, calls gl_comm_flush at 0xec49814 with arguments not recovered from the facts, and returns that call's result.
  Reviewed: 2026-11-12

- `gl_d_swapinterval` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec49840
  **Inferred.** Appends an 8-byte record: a word at cursor+0 and a halfword at +0x4. The room test at 0xec49878 compares comm_endbuffer with cursor+8, and the short-room path calls gl_comm_flush at 0xec40750 with the constant 0x92 as a1.
  Reviewed: 2026-11-12

- `gl_d_gsync` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec498b0
  **Inferred.** Appends a 4-byte record: a word at cursor+0. The room test at 0xec498e8 compares comm_endbuffer with cursor+4. The short-room path (the taken branch) calls gl_comm_flush at 0xec40750 at 0xec49910 with the constant 0x93 as a0. The path where the record fits stores a word at 0xec498ec, calls gl_comm_flush at 0xec498f4 with arguments not recovered from the facts, and returns that call's result.
  Reviewed: 2026-11-12

- `gl_d_tie` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec49920
  **Inferred.** Appends a 12-byte record: a word at cursor+0 and halfwords at +0x4, +0x6 and +0x8. The room test at 0xec49960 compares comm_endbuffer with cursor+12, and the short-room path calls gl_comm_flush at 0xec40750 with the constant 0x94 as a3.
  Reviewed: 2026-11-12

- `gl_d_translate` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec49990
  **Inferred.** Appends a 16-byte record: a word at cursor+0 and three single-precision values stored with swc1 at +0x4, +0x8 and +0xc. The room test at 0xec499d0 compares comm_endbuffer with cursor+16, and the short-room path calls gl_comm_flush at 0xec40750 with the constant 0x95 as a0.
  Reviewed: 2026-11-12

- `gl_d_writemask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec49b60
  **Inferred.** Appends an 8-byte record: a word at cursor+0 and a halfword at +0x4. The room test at 0xec49b98 compares comm_endbuffer with cursor+8, and the short-room path calls gl_comm_flush at 0xec40750 with the constant 0x98 as a1.
  Reviewed: 2026-11-12

- `gl_d_writepixels` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec49bd0
  **Inferred.** Writes a header with a halfword at cursor+0x4 and a word at +0x0; a word at +0x8 is stored only on the path where a1 == 0 (the branch at 0xec49c34 on a1 != 0 goes elsewhere). Its room test at 0xec49c10 compares comm_endbuffer with cursor+88, the same 0x58 as the element size it passes to gl_mem_pack_array. A call to gl_mem_pack_array at 0xec7d9b0 at 0xec49c98 with a0 = cursor+12, a3 = 0xec7e410 and a4 = 0x58 is on the a1 != 0 path. gl_comm_flush at 0xec40750 is called at 0xec49cb8 when the room test fails, with its own arguments passed through, and at 0xec49cd4 when a second test against the limit (stdsize + buffer) - 24 at 0xec49c6c fails. The facts do not show what the packed pixel data holds, so the content of the record is unknown.
  Reviewed: 2026-11-12

- `gl_d_writeRGB` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec49cf0
  **Inferred.** Writes a header of a word at cursor+0, a halfword at +0x4 and a word at +0x8, with a room test against cursor+248 at 0xec49d44. It then calls gl_mem_pack_array at 0xec7d9b0 up to three times with element size 0xf8 in a4 and the constant 0xec7dac0 as a3, each guarded by a non-zero test on the arguments in a1, a2 and a3 (branches at 0xec49d68, 0xec49d78 and 0xec49d8c, taken when non-zero). gl_comm_flush at 0xec40750 is called at 0xec49e70 when the room test fails, with its own arguments passed through, and at 0xec49e88 when a second test against the limit (stdsize + buffer) - 24 at 0xec49dc4 fails. The facts do not show the layout of the arrays, so the record format beyond the header is unknown.
  Reviewed: 2026-11-12

- `gl_d_tpon` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec49ea0
  **Inferred.** Appends a 4-byte record: a word at cursor+0. The room test at 0xec49ed4 compares comm_endbuffer with cursor+4, and the short-room path calls gl_comm_flush at 0xec40750 with the constant 0x9b as a0 and the address 0x98cd0 as a1. The facts do not show what the constant 0x9b or the address means to the flush.
  Reviewed: 2026-11-12
