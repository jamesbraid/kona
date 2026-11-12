# Tier-2 routine roles, kona batch 11

Roles for targets 275 to 299 of the ranked tier-2 list, all in `usr/gfx/arch/IGLOO32/libgl.so`. Each role comes from the rendered instruction facts at the cited addresses, so every entry is graded inferred.

- `gl_d_tpoff` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec49f00
  **Inferred.** Reserves a four-byte slot at the buffer cursor (comm_curbufpos, 0xecd6c4c) and stores one word at its start. The room check at 0xec49f34 compares comm_endbuffer (0xecd6c48) with cursor+4; when the slot does not fit, the routine calls gl_comm_flush at 0xec49f50 with 0x9c in a0 and 0x98c70 in a1, then returns. The single-word layout matches gl_d_clkon and gl_d_ringbell.

- `gl_d_textwritemask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec49f60
  **Inferred.** Writes a halfword at cursor+4 and a word at cursor+0, so the command takes one 16-bit value beyond the word at offset 0. The room test at 0xec49f98 is against cursor+8, and a short buffer sends the record out through gl_comm_flush at 0xec49fb4 with arg0 passed through, 0x9d in a1 and 0x98c10 in a2. The name suggests a text-write mask setting, and the halfword probably holds that mask.

- `gl_d_gexit` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec49fd0
  **Inferred.** Appears to be a flush-and-return primitive: it stores one word at the cursor and returns the result of gl_comm_flush. The room check at 0xec4a008 compares comm_endbuffer with cursor+4, and the flush at 0xec4a030 sends 0x9e in a0 with 0x98ba0 in a1. The earlier flush at 0xec4a014 takes argument registers the renderer could not resolve, so the order of the two flushes is only partly visible in these facts.

- `gl_d_clkon` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec4a040
  **Inferred.** Stores one word at the buffer cursor and returns either the cursor value or the status from gl_comm_flush. The check at 0xec4a074 needs four bytes of room beyond the cursor, and a full buffer flushes at 0xec4a090 with 0x9f in a0 and 0x98b30 in a1. The public name suggests a clock-on request, and the four-byte record is the one the clock-off pair uses.

- `gl_d_clkoff` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec4a0a0
  **Inferred.** Writes the same one-word record as gl_d_clkon, with its room test at 0xec4a0d4 and its flush at 0xec4a0f0 using 0xa0 in a0 and 0x98ad0 in a1. Its return at 0xec4a0e0 is the cursor or the flush result. Taken with gl_d_clkon, the opcodes 0x9f and 0xa0 read as the on and off halves of one request.

- `gl_d_lampon` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec4a100
  **Inferred.** Writes a byte at cursor+4 and a word at cursor+0, an eight-byte record. The room check at 0xec4a13c compares the buffer end with cursor+8, and a short buffer leads to a gl_comm_flush call at 0xec4a164 with arg0 passed through, 0xa1 in a1 and 0x98a70 in a2. A flush at 0xec4a148 precedes it with argument registers the renderer could not resolve. The byte probably carries the lamp state the request sets.

- `gl_d_lampoff` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec4a180
  **Inferred.** Builds the same byte-and-word record as gl_d_lampon, with the room check at 0xec4a1bc against cursor+8. The flush at 0xec4a1e4 passes arg0 through with 0xa2 in a1 and 0x989f0 in a2, and an earlier flush at 0xec4a1c8 has unresolved arguments. Its opcode 0xa2 sits directly after the lampon opcode 0xa1, which fits it being the off request of that pair.

- `gl_d_setbell` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec4a200
  **Inferred.** Writes a byte at cursor+4 and a word at cursor+0 for an eight-byte record. The room test at 0xec4a238 is against cursor+8, and a full buffer flushes at 0xec4a254 with arg0 passed through, 0xa3 in a1 and 0x98970 in a2. The public name suggests a bell-setting request, and the byte at +4 probably holds the setting.

- `gl_d_ringbell` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec4a270
  **Inferred.** Writes only a word at the cursor and returns the flush result. The room check at 0xec4a2a8 needs four bytes beyond the cursor, and the flush at 0xec4a2d0 sends 0xa4 in a0 with 0x98900 in a1. An earlier flush at 0xec4a2b4 has argument registers the renderer could not resolve. The name suggests a bell request with no payload beyond its opcode.

- `gl_d_arcfs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec4a2e0
  **Inferred.** Writes a 24-byte record at the cursor: a word at +0 and five halfword fields at +4 through +0xc. The buffer is tested against cursor+24 at 0xec4a314, and an overrun flushes at 0xec4a370 with all four caller argument registers passed through. A second test against cursor+16 at 0xec4a344 leads to a flush at 0xec4a39c that starts 16 bytes into the record, so a large record is split across flushes. The five halfwords and the forwarded arguments suggest a filled arc with five 16-bit parameters.

- `gl_d_arcs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec4a3b0
  **Inferred.** The renderer shows the same 24-byte, five-halfword record as gl_d_arcfs at different addresses, split across flushes at the same 24-byte and 16-byte boundaries. The tests are at 0xec4a3e4 and 0xec4a414, and the flushes at 0xec4a440 and 0xec4a46c forward the caller's arguments with the cursor address in a7. The public name suggests an outline arc, so the two entries probably share one record layout and differ only in the drawing request.

- `gl_d_bbox2s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec4a480
  **Inferred.** Writes a 28-byte record at the cursor: a word at +0 and six halfword fields from +4 to +0xe. A check against cursor+28 at 0xec4a4b4 sends a full buffer to a flush at 0xec4a518 that passes the caller's four argument registers through. A second check at cursor+16 splits the record at its 16-byte mark, with the flush at 0xec4a548 starting there. The name suggests a bounding box in 16-bit coordinates, which six halfwords would hold.

- `gl_d_blankscreen` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec4a560
  **Inferred.** Stores two words, at +4 and +0, into an eight-byte reservation. The room check at 0xec4a598 compares the end pointer with cursor+8, and a short buffer goes to gl_comm_flush at 0xec4a5b4 with arg0 passed through, 0xa8 in a1 and 0x98610 in a2. The facts do not show what the two stored words hold or what request opcode 0xa8 names.

- `gl_dgl_blkqread` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec4a5d0
  **Inferred.** Writes three words and a halfword as a request at the cursor, then calls gl_comm_read_data at 0xec4a628 with 1 in a0, 0xa9 in a2 and 0x985a0 in a3. The reply is read from comm_buffer (0xecd6c44): gl_mem_unpack_array at 0xec4a644 unpacks it into the table at 0xec7e4e0, and the routine returns the word at reply+4. The name suggests a block-queue read, which fits a request that returns a count.

- `gl_d_getmcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec4a670
  **Inferred.** Writes a word and a halfword request at the cursor and calls gl_comm_read_data at 0xec4a6b8 with 1 in a0, the caller's a1 to a3, and 0x98500 as the fifth argument. After the read it copies three halfwords from the reply at comm_buffer offsets +4, +8 and +0xc through the caller's pointers in a1, a2 and a3, and returns the read status. The three output halfwords suggest color components, which the public name points to.

- `gl_d_chunksize` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec4a710
  **Inferred.** Writes two words, at +4 and +0, for an eight-byte reservation at the cursor. The room test at 0xec4a748 compares comm_endbuffer with cursor+8, and a full buffer flushes at 0xec4a764 with arg0 passed through, 0xab in a1 and 0x98460 in a2. The public name suggests a transfer chunk size, and the two words probably carry it.

- `gl_d_circfs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec4a780
  **Inferred.** Writes a 12-byte record at the cursor: a word at +0 and three halfwords at +4, +6 and +8. The room check at 0xec4a7c0 compares the end pointer with cursor+12, and a short buffer flushes at 0xec4a7dc with the caller's first three arguments passed through, 0xac in a3 and 0x983f0 in a4. Three 16-bit fields probably hold a center and radius for a filled circle.

- `gl_d_circs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec4a7f0
  **Inferred.** Lays out the same 12-byte, three-halfword record as gl_d_circfs, with its room test at 0xec4a830 against cursor+12. The flush at 0xec4a84c forwards the first three arguments and passes 0xad in a3 and 0x98380 in a4. The only differences from circfs are those two constants, so the circle outline request is probably the same message with a different opcode.

- `gl_d_cmov2s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec4a860
  **Inferred.** Writes an eight-byte record at the cursor: a word at +0 and two halfwords at +4 and +6. A buffer that cannot hold it flushes at 0xec4a8b8 with the caller's first two arguments passed through, 0xae in a2 and 0x98310 in a3. The name suggests a current-position move with two 16-bit coordinates, which the two halfwords would hold.

- `gl_d_cmovs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec4a8d0
  **Inferred.** Writes a 12-byte record at the cursor: a word at +0 and three halfwords at +4, +6 and +8. The room test at 0xec4a910 compares the end pointer with cursor+12, and a short buffer flushes at 0xec4a92c with the first three arguments passed through, 0xaf in a3 and 0x982a0 in a4. The three halfwords fit a three-coordinate form of the current-position move that gl_d_cmov2s encodes with two.

- `gl_d_compactify` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec4a940
  **Inferred.** Writes two words, at +4 and +0, for an eight-byte record at the cursor. The room check at 0xec4a978 is against cursor+8, and a short buffer flushes at 0xec4a994 with arg0 and arg3 passed through, 0xb0 in a1 and 0x98230 in a2. The public name suggests a compaction request, and the two words probably carry its parameters.

- `gl_d_qdevice` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec4a9b0
  **Inferred.** Writes a halfword at +4 and a word at +0 for an eight-byte record at the cursor. The room check at 0xec4a9e8 uses cursor+8, and a short buffer flushes at 0xec4aa04 with arg0 and arg3 passed through, 0xb1 in a1 and 0x981c0 in a2. The halfword is probably the device number the caller passes, which the public queue-device call takes as its argument.

- `gl_d_unqdevice` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec4aa20
  **Inferred.** Uses the same eight-byte halfword-and-word record as gl_d_qdevice, tested against cursor+8 at 0xec4aa58. Its flush at 0xec4aa74 passes arg0 and arg3 through with 0xb2 in a1 and 0x98150 in a2. The halfword probably names the device the matching unqueue request releases.

- `gl_d_curvebasis` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec4aa90
  **Inferred.** Stores a halfword at cursor+4 and a word at cursor+0, with the room test at 0xec4aac8 against cursor+8. A full buffer flushes at 0xec4aae4 with arg0 and arg3 passed through, 0xb3 in a1 and 0x980e0 in a2. The halfword probably selects the curve basis, the single value the public call takes.

- `gl_d_curveprecision` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec4ab00
  **Inferred.** Stores a halfword at cursor+4 and a word at cursor+0, with the room check at 0xec4ab38 against cursor+8. The flush at 0xec4ab54 forwards arg0 and arg3, with 0xb4 in a1 and 0x98070 in a2. The halfword probably carries the curve precision, which the public call takes as its one value.
