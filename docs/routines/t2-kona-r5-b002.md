# Round r5 routine roles, kona batch 2

Roles for targets 50 to 74 of the ranked located list. Each one comes from the rendered instruction facts at the cited addresses. Every entry is graded inferred.

- `gl_g_clkoff` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec358c0
  **Inferred.** Calls _clk with a0 = 0x0 [call 1, @0xec358e0]. Returns what _clk returns [@0xec358f0].
  Role (from facts): forwards a zero first argument to _clk and passes its result back [call 1, @0xec358f0].
  Reviewed: 2026-11-12
- `_lamp` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec35900
  **Inferred.** Calls _GLinitgl first [call 1, @0xec35924]. It loads a pointer through gl_sstatep and its +0x1c and +0x4 fields [@0xec3596c]. It then calls XChangeKeyboardControl on that pointer once for each of four masks tested against a0 [call 2, @0xec35944 fall nonzero] [call 3, @0xec35980 fall nonzero] [call 4, @0xec359bc fall nonzero] [call 5, @0xec359f8 fall nonzero]. Finally it calls XFlush and returns its result [call 6, @0xec35a50].
  Role (from facts): runs the GL setup, applies up to four keyboard-control updates gated by mask tests on a0, then flushes the display [call 6].
  Reviewed: 2026-11-12
- `gl_i_blendfunction` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec360e0
  **Inferred.** Loads the word at gl_inMoveDraw [@0xec360f8]. When that word is nonzero it calls __iglooNCloseMoveDraw [call 1, @0xec360fc fall nonzero]. It then calls gl_blendfunction with a0 and a1 at entry [call 2] and returns its result [@0xec36130].
  Role (from facts): when the gl_inMoveDraw word is set [@0xec360fc fall nonzero] it runs one extra call before gl_blendfunction, and it returns gl_blendfunction's result [call 2, @0xec36130].
  Reviewed: 2026-11-12
- `DrawBufferIrisToOpen` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec371e0
  **Inferred.** It clears bit 2 of a0 and uses the result as an index [@0xec37200]. When the index is at or above 0x1c (unsigned) it returns 0x0 [@0xec37200 taken] [@0xec37214]. Below 0x1c [@0xec37200 fall] it loads an entry from the table at 0xecd4040 [@0xec37208] and branches to the code that entry names. That code returns one of the constants 0x400 to 0x408 [@0xec37244] or 0x0 [@0xec37214].
  Role (from facts): maps a0, ignoring its bit 2, through a jump table to one of nine constants, 0x400 to 0x408, and returns 0x0 for an index of 0x1c or more and for table slots that point at the zero return [@0xec37214].
  Reviewed: 2026-11-12
- `gl_backbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37320
  **Inferred.** Follows a chain of pointers from gl_wstatep to a record and loads the first word of that record [@0xec37344]. When that word is 1 [@0xec3734c taken] it changes nothing and returns 0x1 [@0xec3738c]. Otherwise [@0xec3734c fall] it reads the halfword at +0x34 of the record [@0xec37358], changes its low bit to match a0 (set when a0 is nonzero [@0xec37354 fall nonzero], cleared when a0 is zero [@0xec37354 taken zero]) and stores a halfword back at the same offset [@0xec37360]. It then calls DrawBufferIrisToOpen [call 1, @0xec3734c fall] and __iglooDrawBuffer on its result [call 2, @0xec3734c fall] and returns what __iglooDrawBuffer returns [@0xec3738c].
  Role (from facts): when the first word of a state record is not 1, changes the low bit of a halfword in that record to match a0, then refreshes the draw buffer through DrawBufferIrisToOpen and __iglooDrawBuffer [call 2, @0xec3734c fall]; when the word is 1 it returns 0x1 without touching the record [@0xec3738c].
  Reviewed: 2026-11-12
- `gl_leftbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec373b0
  **Inferred.** Follows a pointer chain from gl_wstatep. It acts only when the word at +0x38 of the first record equals 0x10 [@0xec373d8 fall] and the word at +0x8 of the record at its +0x3c is nonzero [@0xec373e4 fall nonzero]; otherwise it returns without calling anything [@0xec373d8 taken] [@0xec373e4 taken zero]. When it acts it reads the halfword at +0x34 of that second record [@0xec373ec], changes bit 3 to match a0 (set when a0 is nonzero [@0xec373f0 fall nonzero], cleared when a0 is zero [@0xec373f0 taken zero]) and stores a halfword back at the same offset [@0xec373fc]. It then calls DrawBufferIrisToOpen [call 1, @0xec373e4 fall nonzero] and __iglooDrawBuffer on its result [call 2, @0xec373e4 fall nonzero] and returns the __iglooDrawBuffer result [@0xec37428].
  Role (from facts): when the word at +0x38 of a state record is 0x10 and the word at +0x8 of the record it points to is nonzero, changes bit 3 of a halfword in that second record to match a0 and refreshes the draw buffer through DrawBufferIrisToOpen and __iglooDrawBuffer [call 2, @0xec373d8 fall].
  Reviewed: 2026-11-12
- `gl_c_backbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37650
  **Inferred.** Tests the word at 0xecdd94c [@0xec37670]. When it is zero [@0xec37670 taken zero] it first calls gl_intrptab_insert with a0 = 0xecd69b0 [call 2, @0xec37670 taken zero] and then marks that word nonzero (the store at 0xec376c0); when it is nonzero [@0xec37670 fall nonzero] it skips the insert. On both paths it then calls gl_compile with a0 = 0x4 and a1 pointing at a stack block [call 1, @0xec3768c], and returns the result of gl_compile [@0xec376a0].
  Role (from facts): when the word at 0xecdd94c is zero it registers 0xecd69b0 through gl_intrptab_insert [call 2, @0xec37670 taken zero] and marks the word nonzero; it then compiles through gl_compile [call 1].
  Reviewed: 2026-11-12
- `gl_findfont` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec384a0
  **Inferred.** When a0 is zero it skips gl_find [@0xec384b8 taken zero], and set_def_font runs [call 2] and returns its result [@0xec3850c]. When a0 is nonzero it calls gl_find with a0 = 0xecdf180 and a0 at entry as the second argument [call 1, @0xec384b8 fall nonzero]. If gl_find returns zero it calls set_def_font [call 2, @0xec384d4 taken zero]. When gl_find returns nonzero [@0xec384d4 fall nonzero] it stores that result at +0xbc8 of gl_wstatep [@0xec384e8], stores a word at +0x0 of the record at +0x114 of gl_wstatep [@0xec38504] and returns the result of gl_find [@0xec38500].
  Role (from facts): looks up a font with gl_find and, on a hit, records it at +0xbc8 of gl_wstatep and writes a word in the state record [@0xec38504]; when the argument is zero or the lookup returns zero it falls back to set_def_font [call 2, @0xec384d4 taken zero].
  Reviewed: 2026-11-12
- `gl_g_getheight` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec385a0
  **Inferred.** When a2, the word at +0xbc8 of gl_wstatep, is zero [@0xec385c0 taken zero], it calls set_def_font first [call 1, @0xec385c0 taken zero]. When a2 is nonzero [@0xec385c0 fall nonzero] it returns the halfword at +0x4 of the record that +0x8 of a2 points to [@0xec385d4]. On the path that calls set_def_font it returns that same halfword [@0xec38608].
  Role (from facts): returns a halfword from a font record reached through the state, calling set_def_font first when the record pointer is zero [call 1, @0xec385c0 taken zero].
  Reviewed: 2026-11-12
- `gl_g_getdescender` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec38610
  **Inferred.** When a2, the word at +0xbc8 of gl_wstatep, is zero [@0xec38630 taken zero], it calls set_def_font first [call 1, @0xec38630 taken zero]. When a2 is nonzero [@0xec38630 fall nonzero] it returns the halfword at +0x0 of the record that +0x8 of a2 points to [@0xec38644]. On the path that calls set_def_font it returns that same halfword [@0xec38678].
  Role (from facts): returns a halfword from a font record reached through the state, calling set_def_font first when the record pointer is zero [call 1, @0xec38630 taken zero].
  Reviewed: 2026-11-12
- `gl_c_font` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec386d0
  **Inferred.** Tests the word at 0xecdd964 [@0xec386f0]. When it is zero [@0xec386f0 taken zero] it first calls gl_intrptab_insert with a0 = 0xecd6a70 [call 2, @0xec386f0 taken zero] and then marks that word nonzero (the store at 0xec38744); when it is nonzero [@0xec386f0 fall nonzero] it skips the insert. On both paths it then calls gl_compile with a0 = 0x4 and a1 pointing at a stack block [call 1, @0xec38710], and returns the result of gl_compile [@0xec38724].
  Role (from facts): when the word at 0xecdd964 is zero it registers 0xecd6a70 through gl_intrptab_insert [call 2, @0xec386f0 taken zero] and marks the word nonzero; it then compiles through gl_compile [call 1].
  Reviewed: 2026-11-12
- `gl_g_defrasterfont` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec38a80
  **Inferred.** When a0 is zero it reports through gl_ErrorHandler with a0 = 0x37 [call 13, @0xec38ac0 taken zero]. Otherwise it calls gl_find with a0 = 0xecdf180 [call 1, @0xec38ac0 fall nonzero]. When gl_find returns nonzero [@0xec38ae0 taken], or when a2 is zero [@0xec38ae8 fall zero], it removes the font with gl_remove [call 2] and frees the removed record with fntrecfree [call 3]; a zero a2 then ends the call there [@0xec38b10 taken zero].
  Role (from name): defines a raster font. The facts show that an existing font of that number is removed and freed first [call 3], that the new record is built with fntrecnew [call 4, @0xec38c28], that input bytes are read through a3 [@0xec38b38], and that an error path reports through gl_ErrorHandler [call 13, @0xec38ac0 taken zero].
  Reviewed: 2026-11-12
- `gl_g_deflfont` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec38ff0
  **Inferred.** When a0 is zero it reports through gl_ErrorHandler with a0 = 0x37 [call 10, @0xec3902c taken zero]. Otherwise, when a1 is zero it removes the font with gl_remove [call 11, @0xec39034 taken zero] and frees the removed record with fntrecfree [call 12, @0xec39034 taken zero]. When a1 is nonzero [@0xec39034 fall nonzero] it calls gl_find with a0 = 0xecdf180 [call 1]. Only when gl_find returns zero [@0xec3913c fall] does it create a record with fntrecnew [call 2]; ras_new then runs on the record at +0x8, once a record exists [call 3, @0xec3913c taken nonzero].
  Role (from name): defines a line font from input records, with rasterised data built through ras_new. The facts show that a zero a1 deletes the font [call 12, @0xec39034 taken zero], that the record is created with fntrecnew [call 2, @0xec3913c fall] only when the lookup finds none, and that the error path reports through gl_ErrorHandler [call 10, @0xec3902c taken zero].
  Reviewed: 2026-11-12
- `mbstrlen` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec39a80
  **Inferred.** It calls mbgetnext first [call 1]. When that result is zero, the branch at 0xec39ab0 takes the path to 0xec39af4 [@0xec39ab0 taken zero]. When the first result is nonzero [@0xec39ab0 fall nonzero], it calls mbgetnext again [call 2] and repeats while each result is nonzero [@0xec39ad0 taken nonzero]. It returns 0x0 on one of its return paths [@0xec39b08].
  Role (from name): counts the characters in a multibyte string by stepping through it with mbgetnext [call 2].
  Reviewed: 2026-11-12
- `mbgetnext` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec39c60
  **Inferred.** It tests a0 against six constants, 0x11, 0x10, 0x1, 0x0, 0x100 and 0x101, in turn [@0xec39c68] [@0xec39c74] [@0xec39c7c] [@0xec39c84] [@0xec39c8c] [@0xec39c94]. a1 points at a cursor. A matching path reads the item at the pointer held there, advances that pointer and writes it back [@0xec39cf4] [@0xec39cb0]. The width follows a0: one byte for 0x0, two bytes combined big-endian for 0x1, three for 0x10 and four for 0x11 [@0xec39cfc] [@0xec39cb4] [@0xec39cdc], a halfword for 0x100 [@0xec39d3c] and a word for 0x101 [@0xec39d28]. Any other a0 returns 0x0 without touching the cursor [@0xec39c9c].
  Role (from facts): decodes the next item of a byte stream whose cursor lives behind the pointer in a1, with the item size chosen by a0, returns the item and advances the cursor, or returns 0x0 for an unknown a0 [@0xec39c9c].
  Reviewed: 2026-11-12
- `fntrecfree` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3a290
  **Inferred.** It returns at once when its argument is zero [@0xec3a298 taken zero] [@0xec3a2f4]. Otherwise it calls glDeleteLists with the word at +0xc and the word at +0xc of the record at +0x8, but only when the word at +0xc is nonzero [call 1, @0xec3a2ac fall nonzero]. It then calls fntfree on the word at +0x8 [call 2, @0xec3a298 fall nonzero] and finishes by tail-calling gl_free on the argument itself [call 3], so its return value is gl_free's.
  Role (from name): frees a font record and the storage it holds. The facts show the glDeleteLists call [call 1, @0xec3a2ac fall nonzero], the fntfree call on the inner record [call 2, @0xec3a298 fall nonzero] and the final gl_free of the record itself [call 3].
  Reviewed: 2026-11-12
- `fntfree` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3a5d0
  **Inferred.** It returns at once when its argument is zero [@0xec3a5e0 taken zero]. Otherwise it calls gl_free on the word at +0x8 when that word is nonzero [call 1, @0xec3a5ec fall nonzero] and on the word at +0x14 when that is nonzero [call 2, @0xec3a600 fall nonzero]. It then walks a chain that starts at the word at +0x10 [@0xec3a610] when that word is nonzero [@0xec3a614 taken nonzero], following each node's +0x8 link: for every node it calls gl_free on the node's words at +0x0 and +0x4 when they are nonzero [call 4] [call 5] and on the node itself [call 6]. It finishes by tail-calling gl_free on the argument [call 3, @0xec3a5e0 fall nonzero].
  Role (from name): frees a font's storage: the blocks at +0x8 and +0x14, every node of the chain at +0x10 with the words those nodes hold, and last the record itself, all through gl_free [call 3].
  Reviewed: 2026-11-12
- `fntheight` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3a780
  **Inferred.** It tests the word at +0x8 first [@0xec3a784]. When that word is nonzero [@0xec3a784 fall nonzero] it reads the count at +0xc: a count that is not positive returns 0x0 [@0xec3a790 taken] [@0xec3a874]; a positive count makes it scan that many 20-byte entries from the +0x8 pointer, keeping the largest positive halfword at +0x6 of an entry [@0xec3a7a4], and return it [@0xec3a7fc]. When the word at +0x8 is zero [@0xec3a784 taken zero] it instead loads the table pointer at +0x14 [@0xec3a804], scans its 128 four-byte slots, follows each nonzero slot along its linked nodes through their first word [@0xec3a834], keeps the largest halfword at +0xe of a node [@0xec3a828] and returns it [@0xec3a7fc].
  Role (from name): returns the height of a font as the largest halfword at +0x6 of its entries, or at +0xe of the nodes in its table when it has no entry array [@0xec3a7fc].
  Reviewed: 2026-11-12
- `gl_n_circF_setup` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3acd0
  **Inferred.** Calls pushmatrix [call 1, @0xec3acf8]. It loads the floats at +0x0 and +0x4 of its argument [@0xec3ad08] [@0xec3ad10] and passes them to translate [call 2, @0xec3ad0c]. It loads the float at +0x8 [@0xec3acec] and passes it to scale [call 3, @0xec3ad20]. It returns a0 + 12 [@0xec3ad3c].
  Role (from facts): pushes the matrix [call 1], applies a translate [call 2] and a scale [call 3] built from three floats in its argument block, and returns the block address advanced by 12 bytes [@0xec3ad3c].
  Reviewed: 2026-11-12
- `gl_n_circs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3ae20
  **Inferred.** When the word at gl_inMoveDraw is nonzero it calls __iglooNCloseMoveDraw first [call 1, @0xec3ae3c fall nonzero]. It then calls gl_n_circF_setup [call 2] and feeds its result to gl_n_circ_draw [call 3]. It returns the result of gl_n_circ_draw [@0xec3ae74].
  Role (from facts): optionally makes one extra call before gl_n_circF_setup, then passes that setup's result to gl_n_circ_draw and returns that result [call 3, @0xec3ae74].
  Reviewed: 2026-11-12
- `gl_n_circi` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3af40
  **Inferred.** When the word at gl_inMoveDraw is nonzero it calls __iglooNCloseMoveDraw first [call 1, @0xec3af5c fall nonzero]. It then calls gl_n_circF_setup [call 2] and feeds its result to gl_n_circ_draw [call 3]. It returns the result of gl_n_circ_draw [@0xec3af94].
  Role (from facts): optionally makes one extra call before gl_n_circF_setup, then passes that setup's result to gl_n_circ_draw and returns that result [call 3, @0xec3af94].
  Reviewed: 2026-11-12
- `gl_n_circ` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3b050
  **Inferred.** When the word at gl_inMoveDraw is nonzero it calls __iglooNCloseMoveDraw first [call 1, @0xec3b06c fall nonzero]. It then calls gl_n_circF_setup [call 2] and feeds its result to gl_n_circ_draw [call 3]. It returns the result of gl_n_circ_draw [@0xec3b0a4].
  Role (from facts): optionally makes one extra call before gl_n_circF_setup, then passes that setup's result to gl_n_circ_draw and returns that result [call 3, @0xec3b0a4].
  Reviewed: 2026-11-12
- `gl_n_circfs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3b180
  **Inferred.** When the word at gl_inMoveDraw is nonzero it calls __iglooNCloseMoveDraw first [call 1, @0xec3b19c fall nonzero]. It then calls gl_n_circF_setup [call 2] and feeds its result to gl_n_circf_draw [call 3]. It returns the result of gl_n_circf_draw [@0xec3b1d4].
  Role (from facts): optionally makes one extra call before gl_n_circF_setup, then passes that setup's result to gl_n_circf_draw and returns that result [call 3, @0xec3b1d4].
  Reviewed: 2026-11-12
- `gl_n_circfi` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3b2a0
  **Inferred.** When the word at gl_inMoveDraw is nonzero it calls __iglooNCloseMoveDraw first [call 1, @0xec3b2bc fall nonzero]. It then calls gl_n_circF_setup [call 2] and feeds its result to gl_n_circf_draw [call 3]. It returns the result of gl_n_circf_draw [@0xec3b2f4].
  Role (from facts): optionally makes one extra call before gl_n_circF_setup, then passes that setup's result to gl_n_circf_draw and returns that result [call 3, @0xec3b2f4].
  Reviewed: 2026-11-12
- `gl_n_circf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3b3b0
  **Inferred.** When the word at gl_inMoveDraw is nonzero it calls __iglooNCloseMoveDraw first [call 1, @0xec3b3cc fall nonzero]. It then calls gl_n_circF_setup [call 2] and feeds its result to gl_n_circf_draw [call 3]. It returns the result of gl_n_circf_draw [@0xec3b404].
  Role (from facts): optionally makes one extra call before gl_n_circF_setup, then passes that setup's result to gl_n_circf_draw and returns that result [call 3, @0xec3b404].
  Reviewed: 2026-11-12
