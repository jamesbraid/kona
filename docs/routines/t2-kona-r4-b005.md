# Tier-2 routine roles, kona round 4, batch 5

Roles for targets 125 to 149 of the ranked tier-2 list. Each one comes from the rendered instruction facts at the cited addresses (renders and grades from the reading tool), not from a read of raw disassembly, so every entry is graded inferred. The grader accepted all 25 renders and none were rejected. Where a role depends on a name or constant the facts do not explain, the entry says so.

- `gl_n_RGBrange` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec44200
  **Inferred.** Reads an eight-halfword range record from its argument (offsets +0 to +0xe) and passes the values to gl_lRGBrange at 0xec44530. When the flag word at 0xece8bf0 is zero, it first calls __iglooNCloseMoveDraw at 0xec92d80. It returns a0+16, the end of the record. The facts do not say what the "n" in the name selects.

- `gl_g_lRGBrange` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec44280
  **Inferred.** When the word at 0xecdda44 is nonzero, it calls gl_compile at 0xecb5010 with the constant 0xc, then calls gl_intrptab_insert at 0xec5f9f0 with the table 0xecd7300. The branch at 0xec442a4 skips that work when the word is zero, and a backward branch at 0xec44344 loops to 0xec442ac. What the constant 0xc, the flag at 0xecdda44 and the table mean is not shown by the facts, so the role is only partly understood.

- `gl_n_lRGBrange` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec44350
  **Inferred.** Like gl_n_RGBrange at 0xec44200, it closes a move-draw batch through __iglooNCloseMoveDraw (0xec92d80) when the flag at 0xece8bf0 is clear. When the word at 0xece8bd8 (gl_zrangemap) is nonzero, it maps two record words at +0xc and +0x10 through gl_mapzrange at 0xecc5b90. It then passes six halfwords to gl_lRGBrange at 0xec44530 and returns a0+20. The facts do not show what the z-range mapping does, so the role beyond that call sequence is inferred from the name only.

- `gl_lshaderange` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec44410
  **Inferred.** Reads and writes many fields of the global state struct at gl_wstatep, mostly 8-byte FP slots at offsets 0xb38 to 0xb90 and two halfwords at 0xb80 and 0xb82. A signed compare at 0xec44458 chooses between the two halfwords' ordering. It calls the symbol glIndexs at 0xec44508 and glFogf at 0xec44520 with the constant 0xb61. The name suggests a shader range setter, but the facts do not label the stored fields, so that is inference only.

- `gl_lRGBrange` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec44530
  **Inferred.** Writes its arguments into the state struct at gl_wstatep: 8-byte values at offsets 0xb88 and 0xb90, and six single-precision words at 0xb60 to 0xb78. It sets a color with glColor4fv at 0xec4464c, passing the float 255.0 (0x437f0000) and a7 = 1, then calls glFogfv at 0xec4465c with enum 0xb66. The branch at 0xec44604 on the word at state offset 2904 equal to 1 decides whether the color call runs. Which RGB field each stored slot holds is not labelled by the facts.

- `SyncDepthCueGeom` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec44670
  **Inferred.** Saves and rebuilds the depth-cue geometry. It reads the depth range with __iglooGetDepthRange at 0xecb8f20, saves two matrices with __iglooGetMatrix at 0xec446c4 and 0xec447e8, then sets matrix modes 0x1701 and 0x1700, applies a translate, loads identity and multiplies by the saved matrix. A chain of double compares picks which case runs, and it ends with two glFogf calls for enums 0xb63 and 0xb64. How those compares map to fog behaviour is not in the facts.

- `gl_g_getdcm` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec448d0
  **Inferred.** Returns the word at offset 0xb58 (2904) of the state struct at gl_wstatep. It also loads a global word at 0xecdd8a4 whose use the facts do not show. The field it returns is the one the depth-cue branch at 0xec44604 tests against 1, which suggests a getter for a depth-cue mode, but the field's meaning is not established.

- `gl_d_gversion` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec44940
  **Inferred.** Writes three words into the shared command buffer at the write pointer in comm_curbufpos (0xecd6c4c) and advances the pointer. It then reads the reply with gl_comm_read_data at 0xec40b90, passing the constant 0x9e230, and unpacks the payload at comm_buffer+8 through gl_mem_unpack_array at 0xec7da50. It returns the length word at comm_buffer+4. The command code and reply format are not in the facts, so the version field's meaning stays open.

- `gl_d_pagecolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec449d0
  **Inferred.** Appends a record through the write pointer in comm_curbufpos (0xecd6c4c): a word at +0 and a halfword at +4, then advances the pointer. When the free space check against comm_endbuffer (0xecd6c48) fails, it flushes through gl_comm_flush at 0xec40750 with the constant 0x2 before finishing. It returns the address of the pointer cell. The stored fields are not labelled by the facts.

- `gl_d_textcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec44a40
  **Inferred.** Has the same shape as gl_d_pagecolor at 0xec449d0: a word at +0 and a halfword at +4 through the pointer in comm_curbufpos (0xecd6c4c), with the same space check against comm_endbuffer (0xecd6c48). Its flush passes the constant 0x3 to gl_comm_flush at 0xec40750. The name suggests a text color command, but the stored values are not shown.

- `gl_d_arc` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec44b20
  **Inferred.** Appends an arc record through the write pointer in comm_curbufpos (0xecd6c4c): a word at +0, three single-precision values at +4, +8 and +0xc, and two halfwords at +0x10 and +0x12. It checks buffer space twice, and the second flush through gl_comm_flush at 0xec40750 passes the constant 0x5. The floats' meaning is not labelled in the facts.

- `gl_d_arcf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec44c00
  **Inferred.** Has the same record layout as gl_d_arc at 0xec44b20 and the same two space checks against comm_endbuffer (0xecd6c48). Its second flush passes the constant 0x6 to gl_comm_flush at 0xec40750. The facts show the same float stores, so the difference from gl_d_arc is only the flush code.

- `gl_d_arcfi` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec44ce0
  **Inferred.** Appends an arc record like gl_d_arc, but the words at +0, +4, +8 and +0xc are stored as integers (sw) and the two halfwords sit at +0x10 and +0x12. Its two flushes through gl_comm_flush at 0xec40750 forward the caller's arguments (a1 to a3) instead of passing a fixed code. The facts do not say what the integer fields hold.

- `gl_d_arci` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec44db0
  **Inferred.** Its stores match gl_d_arcfi at 0xec44ce0: integer words at +0 to +0xc and halfwords at +0x10 and +0x12 through the pointer in comm_curbufpos (0xecd6c4c). It forwards the caller's arguments to the two gl_comm_flush calls at 0xec40750. The facts show no difference from gl_d_arcfi, so any difference in meaning is not visible here.

- `gl_d_backbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec44ef0
  **Inferred.** Appends a two-word record (words at +0 and +4) through the write pointer in comm_curbufpos (0xecd6c4c) and advances it. When comm_endbuffer (0xecd6c48) is too close, it flushes through gl_comm_flush at 0xec40750 with the constant 0xa. The name suggests a back-buffer command, but the facts do not show what the words carry.

- `gl_d_bbox2` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec44f60
  **Inferred.** Writes a 24-byte record through the write pointer in comm_curbufpos (0xecd6c4c): a word at +0, halfwords at +4 and +6, and four single-precision values at +8 to +0x14. It checks buffer space twice, and the second flush through gl_comm_flush at 0xec40750 sets the sixth argument to 0xb. The name suggests a bounding box, but the facts do not label the floats.

- `gl_d_bbox2i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec45050
  **Inferred.** Has the same layout as gl_d_bbox2 at 0xec44f60, with integer words where that routine stores floats: a word at +0, halfwords at +4 and +6, and integer words at +8 to +0x14. It writes through the pointer in comm_curbufpos (0xecd6c4c) and flushes through gl_comm_flush at 0xec40750 on two space checks against comm_endbuffer (0xecd6c48). The stored values are not labelled by the facts.

- `gl_d_blink` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec45130
  **Inferred.** Appends a record of one word at +0 and five halfwords at +4 to +0xc through the write pointer in comm_curbufpos (0xecd6c4c). Its two space checks, at 0xec45164 and 0xec45194, forward the caller's arguments to gl_comm_flush at 0xec40750. The name suggests a blink attribute, but the facts show no constant for it.

- `gl_d_callobj` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec45200
  **Inferred.** Appends a two-word record (words at +0 and +4) through the write pointer in comm_curbufpos (0xecd6c4c) and advances it. When comm_endbuffer (0xecd6c48) is too close, it flushes through gl_comm_flush at 0xec40750 with the constant 0xe. The name suggests a call-object command, but the facts show only the stores.

- `gl_d_charstr` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec45270
  **Inferred.** Takes the length of its string argument with strlen at 0xec452bc, writes a word at +0 and +4 through the write pointer in comm_curbufpos (0xecd6c4c), and packs the string at offset +8 with gl_mem_pack_array at 0xec7d9b0. The constant 0x54 (84) appears both as the packing argument and as the offset in the space check at 0xec452a8, which suggests an 84-byte header ahead of the string. That reading is inference. It flushes through gl_comm_flush at 0xec40750 when the space check fails, and the facts do not say how the buffer sizes in comm_stdsize (0xecd6c40) and comm_buffer (0xecd6c44) are used.

- `gl_d_circ` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec45380
  **Inferred.** Appends a circle record: one word at +0 and three single-precision values at +4, +8 and +0xc, through the write pointer in comm_curbufpos (0xecd6c4c). Its flush through gl_comm_flush at 0xec40750 passes the constant 0x10. The floats are probably a center and radius, but the facts do not show that.

- `gl_d_circf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec453f0
  **Inferred.** Has the same record layout as gl_d_circ at 0xec45380, with one word at +0 and three single-precision values at +4 to +0xc. Its flush passes the constant 0x11 to gl_comm_flush at 0xec40750. The facts show no difference beyond the flush code.

- `gl_d_circfi` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec45460
  **Inferred.** Appends a circle record with integer words at +0, +4, +8 and +0xc through the write pointer in comm_curbufpos (0xecd6c4c), where gl_d_circf stores floats. Its flush through gl_comm_flush at 0xec40750 passes the constant 0x12 as the fourth argument. The facts do not say what the integer fields hold.

- `gl_d_circi` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec454d0
  **Inferred.** Has the same integer-word layout as gl_d_circfi at 0xec45460 (words at +0 to +0xc through the write pointer in comm_curbufpos at 0xecd6c4c). Its flush through gl_comm_flush at 0xec40750 passes the constant 0x13 as the fourth argument. The facts show no difference from gl_d_circfi beyond that code.

- `gl_d_clear` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec45540
  **Inferred.** Appends a single word at +0 through the write pointer in comm_curbufpos (0xecd6c4c) and advances it. When comm_endbuffer (0xecd6c48) is too close, it flushes through gl_comm_flush at 0xec40750 with the constant 0x14. The facts do not say which clear bits the word carries.
