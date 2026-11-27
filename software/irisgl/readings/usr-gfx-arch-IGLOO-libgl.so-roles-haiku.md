# Role readings: `usr/gfx/arch/IGLOO/libgl.so`

- `gl_beginstring` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec345c0
  **Inferred.** Opens a string-draw bracket. It calls `__iglooCloseMoveDraw`, then `__iglooPixelStorei` with 0xcf5 set to 1 and again with 0xcf2 set to 0, then `__iglooGetAndSetEnable` with 0x19, 0 and the address 0xece2d90 as the third argument. The state pointer read from the `gl_wstatep` slot is kept at sp+0x3c. When the byte at +0x2e58 of that state is 1, it calls `glRasterPos3f` with the float at +4 in f12, the float at +8 in f14 and the word at +0xc in a2. Otherwise it reads a boolean through `__iglooGetBooleanv(0xb08)` into sp+0x27 and, when that byte is 1, fetches four words through `__iglooGetFloatv(0xb07)` and passes them to `glLoadRasterPosSGIXXX`.

- `gl_endstring` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec346e0
  **Inferred.** Closes the bracket that `gl_beginstring` opens. It passes 0x19 and 0 to `__iglooSetSavedEnable` and, as the third argument, the word stored at 0xece2d90, which it loads rather than addresses. It then writes zero to the byte at +0x2e58 of the state object. It makes no other calls.

- `gl_drawbitmap` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec34738
  **Inferred.** A forwarder. It calls `gl_outcharmap` with its first argument unchanged and a second argument of zero, then returns.

- `gl_outcharmap` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec34770
  **Inferred.** Draws one bitmap glyph, and only when `__iglooGetRenderMode` returns 0x1c00. Any other mode returns at once. For 0x1c00 it calls `__iglooCloseMoveDraw` and then `glBitmap`. The first argument is the halfword at +0x10 shifted left four bits. The second is the halfword at +6. The third and fourth are floats converted from the signed halfwords at +8 and +0xa. The fifth, sixth and seventh arguments are the float from +0xc, the float from +0xe and the word at +0 as the bitmap pointer, which go on the stack at sp+0x10, sp+0x14 and sp+0x18.

- `callfunc` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec3683c
  **Inferred.** Packs a call's words and hands them to `gl_compile`, and only when the word behind `gl_dgl_table_is_remote` is zero. A count in a1 of eleven or more reports error 0x48 through `gl_ErrorHandler`, with the word at 0xecdc2e0 as its third argument, and clamps the count to 10. The routine then copies that many words, starting at the spilled a2 slot, into a block at sp+0x40. It stores the address of `gl_n_gl_ecallfunc`, the count and the original a0 in a header at sp+0x30, and calls `gl_compile` with 2 times the count plus 8 and the header address.

- `dglope` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec5cc38
  **Inferred.** Copies at most a1 bytes of the string in a0 into a local buffer at sp+0x20 inside a 0x220-byte frame, using `strncpy`. It writes a NUL at buffer index a1, then calls `__GLdglopen` with the copy and the original a2.

- `dglclose` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec5cca8
  **Inferred.** For a negative handle it calls `gl_comm_flush` with the handle still in a0, then `gl_comm_close(1)`. For a handle from 0 to 256 it reads the pointer at that index of `comm_gfiles`. A non-null pointer is closed by `gl_comm_close_gfile(ptr, 1)`. A null pointer or an index above 256 sends two strings, at 0xecd41dc and 0xecd41e8, to `gl_dgl_error`.

- `gl_dgl_wid_from_gl` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec5e334
  **Inferred.** Returns the word at offset 0 of the record that `comm_curgfile` points to, shifted left eight bits, OR'd with the caller's a0 without masking. It makes no calls.

- `gbegin` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec620d0
  **Inferred.** Dispatches `gbegin` after the initializer runs. It has no move-draw check. A non-zero `gl_immediate_mode` word tail-jumps to `gl_g_gbegin`. Otherwise a non-zero `gl_dgl_table_is_remote` word sends the call to `gl_d_gbegin`, and a zero word sends it to `gl_g_gbegin`.

- `getwscrn` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec62144
  **Inferred.** Dispatcher for the `getwscrn` entry point. After `gl_initializer`, a non-zero `gl_inMoveDraw` word triggers `__iglooCloseMoveDrawFromTable`, and gp is reloaded. The four argument words are then restored, and a non-zero `gl_immediate_mode` word tail-jumps to `gl_g_getwscrn`. A zero immediate word sends the call to `gl_d_getwscrn` when the `gl_dgl_table_is_remote` word is non-zero, and to `gl_g_getwscrn` otherwise.

- `blanktime` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec621dc
  **Inferred.** Routes the `blanktime` call. The initializer runs first, and a non-zero `gl_inMoveDraw` word leads to `__iglooCloseMoveDrawFromTable`. The immediate-mode word then picks `gl_g_blanktime`. When it is zero, the remote-table word picks `gl_d_blanktime`, and a zero remote word falls back to `gl_g_blanktime`.

- `noport` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec62274
  **Inferred.** Selection stub for `noport`. It calls `gl_initializer`, then the move-draw closer if the `gl_inMoveDraw` word is set. The a0 to a3 words are re-read from the frame before the immediate-mode test. The target is `gl_g_noport`, or `gl_d_noport` when immediate mode is off and the remote-table word is set.

- `scrnattach` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec62380
  **Inferred.** Tail-call trampoline for `scrnattach`. It runs the initializer and closes a pending move-draw batch when `gl_inMoveDraw` is set. A non-zero immediate word jumps to `gl_g_scrnattach`. Otherwise a non-zero remote word jumps to `gl_d_scrnattach`, and a zero remote word to `gl_g_scrnattach`.

- `videocmd` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec62418
  **Inferred.** Front end for `videocmd`: the initializer, an optional move-draw close, then the immediate or remote choice. Immediate mode and a clear remote flag both end at `gl_g_videocmd`. Only immediate mode clear together with a set `gl_dgl_table_is_remote` word reaches `gl_d_videocmd`.

- `textinit` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec624b0
  **Inferred.** Calls `gl_initializer` with the four argument words saved, then restores them without any move-draw test. A non-zero immediate word tail-jumps to `gl_g_textinit`. Otherwise a non-zero remote word tail-jumps to `gl_d_textinit`, and a zero remote word to `gl_g_textinit`.

- `getvaluator` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec62524
  **Inferred.** Entry stub for `getvaluator` that saves its arguments, calls the initializer and closes a set `gl_inMoveDraw` batch. Immediate mode routes to `gl_g_getvaluator`. Without immediate mode, a set remote word routes to `gl_d_getvaluator`, and a clear remote word to `gl_g_getvaluator`.

- `getresetls` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec625bc
  **Inferred.** Calls `gl_initializer` and then selects between `gl_g_getresetls` and `gl_d_getresetls`. There is no move-draw test in this routine. The immediate-mode word is tested first, then the remote-table word.

- `blink` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec62630
  **Inferred.** Forwards a `blink` request. The initializer runs, then the move-draw closer when `gl_inMoveDraw` is set. Immediate mode jumps to `gl_g_blink`. Otherwise `gl_d_blink` is used only when the `gl_dgl_table_is_remote` word is set.

- `qreset` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec626c8
  **Inferred.** Calls the initializer and the conditional move-draw close, restores its arguments and gp, then tests `gl_immediate_mode`. The target is `gl_g_qreset` unless immediate mode is off and the remote flag is on, which selects `gl_d_qreset`.

- `pagecolor` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec627f8
  **Inferred.** Initializer call, followed by the same immediate-then-remote choice between `gl_g_pagecolor` and `gl_d_pagecolor`. The routine has no move-draw check, so the four argument words are restored straight after the initializer.

- `tpoff` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6286c
  **Inferred.** Takes the `tpoff` call past `gl_initializer` with no move-draw test. A non-zero `gl_immediate_mode` word tail-jumps to `gl_g_tpoff`. A zero immediate word goes to `gl_d_tpoff` when `gl_dgl_table_is_remote` is set and to `gl_g_tpoff` otherwise.

- `dbtext` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec62760
  **Inferred.** Runs the initializer, then closes the move-draw batch when `gl_inMoveDraw` is non-zero, saving and reloading gp around that call. Immediate mode branches to `gl_g_dbtext`. The remote-table case goes to `gl_d_dbtext`, and any other case goes to `gl_g_dbtext`.

- `qread` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec628e0
  **Inferred.** Immediate-mode split for `qread`. The initializer runs first, and `gl_inMoveDraw` gates the close call. A non-zero immediate word selects `gl_g_qread`. Otherwise a non-zero `gl_dgl_table_is_remote` word selects `gl_d_qread`, and a zero word falls through to `gl_g_qread`.

- `qenter` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec62978
  **Inferred.** Forwards `qenter`. Setup is the initializer call followed by the optional move-draw close, with gp kept across that call. The call goes to `gl_g_qenter` when `gl_immediate_mode` is non-zero or the remote-table word is zero. Otherwise it goes to `gl_d_qenter`.

- `gethitcode` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec62a10
  **Inferred.** Calls `gl_initializer` with its four argument words saved in the frame, reloads them, and has no move-draw step. The immediate-mode word and then the remote-table word choose between `gl_g_gethitcode` and `gl_d_gethitcode`.

- `getpor` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec62a84
  **Inferred.** Initializer, move-draw close on the `gl_inMoveDraw` flag, argument reload, then the immediate-mode word and remote-table word choose `gl_g_getpor` or `gl_d_getpor`.

- `getbutton` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec62b1c
  **Inferred.** Routing stub for `getbutton`. It saves the arguments, calls the initializer and closes an open move-draw batch. Immediate mode goes to `gl_g_getbutton`, a remote table to `gl_d_getbutton`, and the default is `gl_g_getbutton`.

- `setvideo` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec62bb4
  **Inferred.** Front end for `setvideo`: the initializer, then the optional move-draw close, then `gl_g_setvideo` when immediate mode is set. Without immediate mode, `gl_d_setvideo` is used when the table is remote, and `gl_g_setvideo` otherwise.

- `getothermonitor` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec62c4c
  **Inferred.** Trampoline that routes `getothermonitor`. It initializes, closes any open move-draw batch, and jumps to `gl_g_getothermonitor` in immediate mode. Without immediate mode it jumps to `gl_d_getothermonitor` when the remote table flag is set and to `gl_g_getothermonitor` otherwise.

- `ismex` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec62ce4
  **Inferred.** Selector for `ismex`. It initialises state, closes the move-draw batch when flagged, then tests immediate mode. A call that is not in immediate mode takes `gl_d_ismex` only when the remote flag is on, and `gl_g_ismex` otherwise.

- `qtest` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec62d7c
  **Inferred.** `gl_initializer`, a conditional move-draw close, then argument restore and the tail jump. Immediate mode goes to `gl_g_qtest`. A remote table with immediate mode clear goes to `gl_d_qtest`, and everything else to `gl_g_qtest`.

- `qcontrol` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec62e14
  **Inferred.** Chooses between the immediate and remote `qcontrol` implementations. The initializer and the move-draw close run before the `gl_immediate_mode` test. `gl_d_qcontrol` is reached only when immediate mode is zero and `gl_dgl_table_is_remote` is non-zero.

- `prefposition` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec62eac
  **Inferred.** Handler stub for `prefposition`. It calls the initializer, closes the move-draw batch if `gl_inMoveDraw` is non-zero, and tail-jumps to `gl_g_prefposition` or `gl_d_prefposition` by the immediate-mode and remote-table words.

- `blankscreen` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec62f44
  **Inferred.** Router for `blankscreen`. The initializer call and the optional move-draw close come first. The immediate word selects `gl_g_blankscreen`, and the remote word selects `gl_d_blankscreen` only when immediate mode is zero.

- `setfastcom` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec62fdc
  **Inferred.** Routing stub for `setfastcom`. It runs the initializer, closes move-draw when flagged, restores its arguments, then goes to `gl_g_setfastcom` in immediate mode. Outside immediate mode it goes to `gl_d_setfastcom` only when the remote table word is set.

- `imakebackground` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec63074
  **Inferred.** Front end for `imakebackground`: the initializer, an optional move-draw close, and the same immediate-then-remote selection, choosing `gl_g_imakebackground` or `gl_d_imakebackground`.

- `ringbell` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6310c
  **Inferred.** Bell request dispatcher. It runs the initializer, closes move-draw when flagged, then sends the call to `gl_g_ringbell` in immediate mode, to `gl_d_ringbell` with a remote table, and to `gl_g_ringbell` otherwise.

- `prefsize` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec631a4
  **Inferred.** Wrapper for `prefsize`. After the initializer and the optional move-draw close, it goes to `gl_g_prefsize` when `gl_immediate_mode` is set, to `gl_d_prefsize` when that word is clear and `gl_dgl_table_is_remote` is set, and to `gl_g_prefsize` when both are clear.

- `textcolor` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6230c
  **Inferred.** Textcolor stub with no move-draw test. It calls the initializer, reloads the four argument words and tail-jumps to `gl_g_textcolor` or `gl_d_textcolor` by the immediate-mode word and the remote-table word.

- `getport` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec632d4
  **Inferred.** Prologue for getport. It opens a 32-byte frame, spills a0 to a3, and calls gl_initializer through the GOT slot at gp-0x6f20. A nonzero word behind the gl_inMoveDraw pointer makes it call __iglooCloseMoveDrawFromTable and reload gp from the frame. After the spilled arguments are restored, a nonzero gl_immediate_mode word tail-jumps to gl_g_getport (slot gp-0x6c1c). With that word clear, the gl_dgl_table_is_remote word chooses gl_d_getport (slot gp-0x7124) when nonzero and gl_g_getport when zero.

- `keepaspect` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6336c
  **Inferred.** Same stub shape as its neighbours, with gp set up from its own offset. The 32-byte frame is opened and gl_initializer is called first. Immediate mode sends the tail jump to gl_g_keepaspect (gp-0x6d70). Outside immediate mode the remote-table flag picks gl_d_keepaspect (gp-0x7534) or gl_g_keepaspect.

- `attachcursor` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec63404
  **Inferred.** Forwards an attachcursor call to one of two implementations. gl_initializer runs before anything else, followed by the optional __iglooCloseMoveDrawFromTable call guarded by gl_inMoveDraw. Its selector reads the gl_immediate_mode word, then the gl_dgl_table_is_remote word; the targets are gl_g_attachcursor at gp-0x6cd8 and gl_d_attachcursor at gp-0x79a4.

- `winope` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6349c
  **Inferred.** The winope stub frames its arguments, calls gl_initializer through gp-0x6f20, and skips the move-draw close when the gl_inMoveDraw word is zero. Nonzero gl_immediate_mode goes to gl_g_winope (gp-0x6c24). Otherwise gl_dgl_table_is_remote decides between gl_d_winope (gp-0x711c) and gl_g_winope.

- `winopen` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec63534
  **Inferred.** Winopen runs the initializer, then the move-draw close if the flag behind gl_inMoveDraw is set, then reloads its four spilled arguments. Immediate mode forces the tail jump to gl_g_winopen at gp-0x6c28. Otherwise the remote-table word selects gl_d_winopen (gp-0x7120), and a clear word falls back to gl_g_winopen.

- `getvideo` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec635cc
  **Inferred.** Getvideo has the common entry sequence: a 32-byte frame, the gl_initializer call, and the conditional __iglooCloseMoveDrawFromTable. The jump goes to gl_g_getvideo (gp-0x704c) when gl_immediate_mode is set or the remote flag is clear, and to gl_d_getvideo (gp-0x7448) when the remote flag is set outside immediate mode.

- `fudge` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec636d8
  **Inferred.** The fudge entry spills its arguments to its own frame, initialises through gl_initializer, closes a pending move-draw table when gl_inMoveDraw points to a nonzero word, and then picks its tail target. The immediate-mode word first, then the remote-table word, choose between gl_g_fudge (gp-0x6d64) and gl_d_fudge (gp-0x7528).

- `setbell` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec63770
  **Inferred.** Setbell calls gl_initializer and, if gl_inMoveDraw is set, __iglooCloseMoveDrawFromTable. Its final jump is to gl_g_setbell (gp-0x7e70) for nonzero gl_immediate_mode, and to gl_d_setbell (gp-0x773c) only when that word is zero and gl_dgl_table_is_remote is nonzero.

- `pagewritemask` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec63808
  **Inferred.** Pagewritemask: 32-byte frame, initializer, guarded move-draw close, argument reload. Immediate mode or a clear remote flag tail-jumps to gl_g_pagewritemask (gp-0x5f8c). A set remote flag outside immediate mode tail-jumps to gl_d_pagewritemask (gp-0x7550).

- `clkon` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec638a0
  **Inferred.** Clkon first runs gl_initializer and then the move-draw close, guarded by the gl_inMoveDraw pointer. The gl_immediate_mode word and the gl_dgl_table_is_remote word select between gl_g_clkon at gp-0x7e84 and gl_d_clkon at gp-0x774c.

- `scrnselect` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec63938
  **Inferred.** Scrnselect keeps the common pattern: gl_initializer, a conditional close of the move-draw table, and restored arguments. Nonzero immediate mode gives gl_g_scrnselect (gp-0x5e3c). Otherwise the remote flag routes to gl_d_scrnselect (gp-0x72e4) when set, and to gl_g_scrnselect when clear.

- `setslowcom` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec639d0
  **Inferred.** Setslowcom is a dispatcher. It frames, initialises, closes the move-draw table if pending, and reloads its arguments. The targets are gl_g_setslowcom (gp-0x6f58) and gl_d_setslowcom (gp-0x7474), picked by the immediate-mode word and then the remote-table word.

- `stepunit` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec63a68
  **Inferred.** Stepunit's stub calls gl_initializer through gp-0x6f20, then __iglooCloseMoveDrawFromTable when gl_inMoveDraw is nonzero. Immediate mode jumps to gl_g_stepunit (gp-0x6d68). Otherwise gl_dgl_table_is_remote selects gl_d_stepunit (gp-0x752c) or falls back to gl_g_stepunit.

- `isqueued` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec63b00
  **Inferred.** Isqueued enters through gl_initializer, closes a pending move-draw table, and then makes its routing decision. A nonzero gl_immediate_mode word ends in gl_g_isqueued (gp-0x6c7c). A zero immediate word with a set remote flag ends in gl_d_isqueued (gp-0x74b0). Every other case ends in gl_g_isqueued.

- `minsize` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec63b98
  **Inferred.** Minsize runs the initializer and the optional move-draw close before dispatching. The immediate-mode word is tested first, going to gl_g_minsize (gp-0x6d78). The remote-table word is tested second, going to gl_d_minsize (gp-0x753c) when set.

- `clkoff` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec63c30
  **Inferred.** Clkoff: frame, gl_initializer, move-draw close if gl_inMoveDraw is set, argument reload, then the selector. Nonzero immediate mode and clear remote flag both end at gl_g_clkoff (gp-0x7e80). Only a set remote flag outside immediate mode goes to gl_d_clkoff (gp-0x7748).

- `maxsize` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec63d3c
  **Inferred.** Maxsize has the standard stub body. gl_initializer and the guarded __iglooCloseMoveDrawFromTable run first. The immediate-mode word and the remote-table word then pick gl_g_maxsize (gp-0x6d74) or gl_d_maxsize (gp-0x7538).

- `getgdesc` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec63dd4
  **Inferred.** Getgdesc is one of the stubs that calls gl_initializer through gp-0x6f20 before testing the gl_inMoveDraw pointer. Its tail target is gl_g_getgdesc (gp-0x7058) unless gl_immediate_mode is clear and gl_dgl_table_is_remote is set, in which case it is gl_d_getgdesc (gp-0x72ec).

- `icontitle` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec63e6c
  **Inferred.** Icontitle opens a 32-byte frame, runs gl_initializer, and closes the move-draw table when its gl_inMoveDraw word is nonzero. Immediate mode sends it to gl_g_icontitle (gp-0x6bfc). Otherwise the remote flag decides between gl_d_icontitle (gp-0x7354) and gl_g_icontitle.

- `gversion` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec63f04
  **Inferred.** Gversion, like its neighbours, spills arguments, calls gl_initializer, and optionally closes the move-draw table. Nonzero immediate mode gives gl_g_gversion (gp-0x6f48). Zero immediate mode with nonzero remote flag gives gl_d_gversion (gp-0x79c4). Zero for both gives gl_g_gversion.

- `iconti` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec63f9c
  **Inferred.** Iconti calls gl_initializer through gp-0x6f20 and closes a pending move-draw table before routing. Immediate mode and a clear remote-table word both end at gl_g_iconti (gp-0x6c00). Only the combination of clear immediate mode and set remote flag ends at gl_d_iconti (gp-0x7350).

- `lampon` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec64034
  **Inferred.** Lampon runs the initializer, then the move-draw close guarded by gl_inMoveDraw, then reloads its arguments. The gl_immediate_mode word selects gl_g_lampon (gp-0x7e7c). Otherwise a set gl_dgl_table_is_remote word selects gl_d_lampon (gp-0x7744).

- `lampoff` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec640cc
  **Inferred.** Lampoff is the off-side twin of lampon, with the same frame, initializer call and optional move-draw close. It tail-jumps to gl_g_lampoff (gp-0x7e78) on nonzero immediate mode or zero remote flag, and to gl_d_lampoff (gp-0x7740) otherwise.

- `textport` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec63664
  **Inferred.** Textport has no move-draw check and is 116 bytes long, against 152 for the stubs that do. It frames, spills its four arguments, calls gl_initializer, and reloads them. Nonzero gl_immediate_mode goes to gl_g_textport (gp-0x5f9c). Otherwise gl_dgl_table_is_remote picks gl_d_textport (gp-0x79b8) when set.

- `tpon` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec63cc8
  **Inferred.** Tpon calls gl_initializer and then routes on the immediate-mode word. Nonzero goes to gl_g_tpon (gp-0x5fa4). A zero immediate word combined with a set remote-table word goes to gl_d_tpon (gp-0x775c). Any other combination ends at gl_g_tpon.

- `ginit` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec64164
  **Inferred.** Ginit runs gl_initializer and tail-jumps to gl_g_ginit (gp-0x6fdc) unless the immediate-mode word is zero and the remote flag is nonzero. In that one case it jumps to gl_d_ginit (gp-0x78ac).

- `getlsbackup` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec641d8
  **Inferred.** Getlsbackup has the 116-byte form: gl_initializer, a read of gl_immediate_mode and of gl_dgl_table_is_remote, then a tail jump to gl_g_getlsbackup (gp-0x7028), or to gl_d_getlsbackup (gp-0x78dc) when the remote word is set and immediate mode is clear.

- `clearhitcode` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6424c
  **Inferred.** Clearhitcode dispatches the same way as getlsbackup. It calls gl_initializer and then sends control to gl_g_clearhitcode (gp-0x6f80) or, when the remote flag is set and immediate mode is clear, to gl_d_clearhitcode (gp-0x7974).

- `getlsrepeat` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec642c0
  **Inferred.** Getlsrepeat has no initializer call. It checks the move-draw pointer first, and only then opens a 32-byte frame to call __iglooCloseMoveDrawFromTable with its arguments saved. The routing that follows reads gl_immediate_mode, then gl_dgl_table_is_remote, and ends at gl_g_getlsrepeat (gp-0x6ed4) or gl_d_getlsrepeat (gp-0x76c0).

- `defbasis` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec643c8
  **Inferred.** Defbasis checks gl_inMoveDraw and, only when that word is nonzero, makes a frame to call __iglooCloseMoveDrawFromTable. There is no gl_initializer call. The immediate-mode and remote-table words then choose between gl_g_defbasis (gp-0x7a68) and gl_d_defbasis (gp-0x76e0).

- `screenspace` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec64450
  **Inferred.** Screenspace reaches the move-draw close without calling gl_initializer. The close, when gl_inMoveDraw points to a nonzero word, is followed by the immediate-mode test. Its candidates are gl_g_screenspace (gp-0x5f04) and gl_d_screenspace (gp-0x7510).

- `winclose` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec644d8
  **Inferred.** Winclose: optional __iglooCloseMoveDrawFromTable on a nonzero gl_inMoveDraw word, then selection between gl_g_winclose (gp-0x6c10) and gl_d_winclose (gp-0x7114). The selection reads only the immediate-mode word and the remote-table word.

- `getdcm` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec645a0
  **Inferred.** Getdcm skips the initializer and runs the move-draw close check first. Its routing sends a nonzero immediate-mode word to gl_g_getdcm (gp-0x79c8), and a set remote flag with clear immediate mode to gl_d_getdcm (gp-0x76c8).

- `RGBmode` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec64628
  **Inferred.** RGBmode has the move-draw check and a 32-byte frame, without the initializer call. Its tail target is gl_g_RGBmode (gp-0x6b8c) when immediate mode is set or the remote flag is clear, and gl_d_RGBmode (gp-0x77b8) when the remote flag is set outside immediate mode.

- `setmap` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec646b0
  **Inferred.** Setmap calls __iglooCloseMoveDrawFromTable when gl_inMoveDraw is nonzero, with no initializer call before it. It then takes gl_g_setmap (gp-0x6fc4) for nonzero immediate mode or clear remote flag, and gl_d_setmap (gp-0x7794) otherwise.

- `greset` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec64348
  **Inferred.** Greset is a leaf selector. It makes no calls and opens no frame. A nonzero gl_immediate_mode word jumps to gl_g_greset (gp-0x6fd4). A zero immediate word jumps to gl_d_greset (gp-0x78a8) only if gl_dgl_table_is_remote is nonzero.

- `fbsubtexload` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec64388
  **Inferred.** Fbsubtexload chooses between two tail targets without calling anything. It reads gl_immediate_mode and then gl_dgl_table_is_remote. The candidates are gl_g_fbsubtexload (gp-0x5fdc) and gl_d_fbsubtexload (gp-0x719c).

- `tevdef` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec64560
  **Inferred.** Tevdef is a 64-byte leaf with no stack frame. The first test is the immediate-mode word, the second the remote-table word. Targets are gl_g_tevdef (gp-0x5ff8) and gl_d_tevdef (gp-0x70e4).

- `gl_pixmode_misc` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec64738
  **Inferred.** Gl_pixmode_misc is a leaf that only routes. Nonzero gl_immediate_mode or a zero remote flag gives gl_g_gl_pixmode_misc (gp-0x70bc). A set remote flag with clear immediate mode gives gl_d_gl_pixmode_misc (gp-0x64b4).

- `gRGBcursor` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec64778
  **Inferred.** gRGBcursor is a 64-byte leaf that makes no calls. It tests gl_immediate_mode, then gl_dgl_table_is_remote, and tail-jumps to gl_g_gRGBcursor (gp-0x6f7c) or to gl_d_gRGBcursor (gp-0x78a0) in the remote case.

- `getmcolor` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec647b8
  **Inferred.** Forwards the getmcolor call. If the word behind gl_inMoveDraw (slot $gp-0x5bec) is set, it spills $a0 to $a3 into a 0x20-byte frame and calls __iglooCloseMoveDrawFromTable (slot $gp-0x6aac) before restoring them. It then jumps to gl_g_getmcolor (slot $gp-0x6d8c) when gl_immediate_mode (slot $gp-0x5b88) is nonzero, and otherwise to gl_d_getmcolor (slot $gp-0x7720) when gl_dgl_table_is_remote (slot $gp-0x5cb4) is nonzero, with gl_g_getmcolor as the fallback.

- `objreplace` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec64840
  **Inferred.** Tail-jumps into the objreplace variant. The same move-draw guard runs first, using slot $gp-0x6aac. The selector is the flag pair at $gp-0x5b88 and $gp-0x5cb4, with the g variant in slot $gp-0x69dc and the d variant in slot $gp-0x755c. Nonzero immediate mode lands in the g variant directly.

- `ortho` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec648c8
  **Inferred.** Passes the ortho arguments on unchanged to one of two bodies. After the move-draw check at $gp-0x5bec, a nonzero gl_immediate_mode word selects gl_g_ortho (slot $gp-0x5f38). Otherwise a nonzero gl_dgl_table_is_remote word selects gl_d_ortho (slot $gp-0x784c), and a zero one returns to gl_g_ortho.

- `setdepth` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec64950
  **Inferred.** A setdepth stub with the same guard, calling __iglooCloseMoveDrawFromTable at $gp-0x6aac when the flag at $gp-0x5bec is set. The target is gl_g_setdepth (slot $gp-0x5ef8) for nonzero immediate mode, gl_d_setdepth (slot $gp-0x779c) when the remote word is set and immediate mode is zero, and gl_g_setdepth again otherwise.

- `gsync` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec649d8
  **Inferred.** Hands gsync to gl_g_gsync (slot $gp-0x70ac) or gl_d_gsync (slot $gp-0x777c). Immediate mode set wins; with it clear, the remote-table flag decides between the two. Before either, a set move-draw flag makes the routine save $a0 to $a3, call __iglooCloseMoveDrawFromTable, and reload the arguments.

- `stensize` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec64a60
  **Inferred.** Stencil-size entry point. When gl_inMoveDraw holds a nonzero value, __iglooCloseMoveDrawFromTable runs first (slot $gp-0x6aac). The tail jump then goes to gl_g_stensize (slot $gp-0x7ddc), except when gl_immediate_mode is zero and gl_dgl_table_is_remote is set, which sends it to gl_d_stensize (slot $gp-0x7294).

- `rectwrite` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec64ae8
  **Inferred.** Its arguments reach rectwrite through a jump in the same template: move-draw check, then immediate-mode test, then remote-table test. The variants are gl_g_rectwrite (slot $gp-0x68f8) and gl_d_rectwrite (slot $gp-0x73b0). Nothing is stored by the stub itself.

- `lmdef` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec64b70
  **Inferred.** A 64-byte stub with no move-draw guard, so the first load is gl_immediate_mode (slot $gp-0x5b88). Nonzero immediate mode jumps to gl_g_lmdef (slot $gp-0x6e4c). If the immediate word is zero and gl_dgl_table_is_remote (slot $gp-0x5cb4) is nonzero, the jump goes to gl_d_lmdef (slot $gp-0x70e8). Otherwise gl_g_lmdef is taken.

- `setdblights` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec64bb0
  **Inferred.** Double-light setter. The flag word at $gp-0x5bec gates a spill of $a0 to $a3 around __iglooCloseMoveDrawFromTable. The jump then picks gl_g_setdblights (slot $gp-0x6d04) or gl_d_setdblights (slot $gp-0x75cc) by the same two-flag test on gl_immediate_mode and gl_dgl_table_is_remote.

- `gl_misc` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec64c38
  **Inferred.** Miscellaneous GL entry. A set move-draw flag at $gp-0x5bec triggers the frame-saved call to __iglooCloseMoveDrawFromTable. Then gl_immediate_mode decides between gl_g_gl_misc (slot $gp-0x6fd0) and gl_d_gl_misc (slot $gp-0x64d0), and a zero remote flag falls back to the g body.

- `textwritemask` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec64cc0
  **Inferred.** Stub of 64 bytes with no guard. gl_immediate_mode (slot $gp-0x5b88) is read first; nonzero jumps to gl_g_textwritemask (slot $gp-0x5f88). When it is zero and gl_dgl_table_is_remote is nonzero, the target becomes gl_d_textwritemask (slot $gp-0x7754).

- `getopenobj` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec64d00
  **Inferred.** A getopenobj wrapper. The move-draw guard comes first at $gp-0x5bec, with the spill and reload around the call through $gp-0x6aac. Immediate mode chooses gl_g_getopenobj (slot $gp-0x69f8); a remote-table flag with immediate mode clear chooses gl_d_getopenobj (slot $gp-0x76b8).

- `objinsert` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec64d88
  **Inferred.** Passes objinsert to gl_g_objinsert (slot $gp-0x69d8) or gl_d_objinsert (slot $gp-0x7564). The flag test is the usual pair at gl_immediate_mode and gl_dgl_table_is_remote, placed after the optional __iglooCloseMoveDrawFromTable call that the flag at $gp-0x5bec controls.

- `defcursor` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec64e10
  **Inferred.** Cursor-definition stub. The move-draw flag, when set, makes the routine call __iglooCloseMoveDrawFromTable through $gp-0x6aac. It then jumps to gl_g_defcursor (slot $gp-0x5df8) for nonzero immediate mode, and to gl_d_defcursor (slot $gp-0x794c) only when the remote word is set and immediate mode is zero.

- `mapw` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec64e98
  **Inferred.** Forwards the mapw arguments to gl_g_mapw (slot $gp-0x6f0c) or gl_d_mapw (slot $gp-0x7874). A nonzero move-draw word first triggers the frame-saved close call. Immediate mode is tested first, and the remote-table word second.

- `lsetdepth` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec64f20
  **Inferred.** Long-form depth setter. It loads gl_inMoveDraw through $gp-0x5bec, and when that word is set it saves the four argument registers, calls __iglooCloseMoveDrawFromTable through $gp-0x6aac, and reloads them. The tail target is gl_g_lsetdepth (slot $gp-0x5ef4) or gl_d_lsetdepth (slot $gp-0x73cc).

- `gflush` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec64fa8
  **Inferred.** A flush entry. Move-draw close runs when its flag is set. Then the routine jumps to gl_g_gflush (slot $gp-0x70b4) with nonzero immediate mode, to gl_d_gflush (slot $gp-0x78b0) with zero immediate mode and a set remote word, and to gl_g_gflush in every other case.

- `pixelmap` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65030
  **Inferred.** A 64-byte stub without the guard. It reads gl_immediate_mode at $gp-0x5b88 and branches to gl_g_pixelmap (slot $gp-0x6fe4) when that word is nonzero. A zero immediate word leads to gl_d_pixelmap (slot $gp-0x7188) when gl_dgl_table_is_remote is set, and gl_g_pixelmap otherwise.

- `onemap` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65070
  **Inferred.** Guarded one-map entry. The routine runs __iglooCloseMoveDrawFromTable (slot $gp-0x6aac) when gl_inMoveDraw is nonzero, then selects gl_g_onemap (slot $gp-0x6b88) or gl_d_onemap (slot $gp-0x7850) through the immediate-mode and remote-table words.

- `crvn` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec650f8
  **Inferred.** Curve-normal entry. After the optional move-draw close, a nonzero gl_immediate_mode word jumps to gl_g_crvn (slot $gp-0x7a98). A zero immediate word with a nonzero gl_dgl_table_is_remote word jumps to gl_d_crvn (slot $gp-0x76e4). The fallback is gl_g_crvn.

- `tie` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65180
  **Inferred.** Tie-array entry. It tests gl_inMoveDraw at $gp-0x5bec first and calls __iglooCloseMoveDrawFromTable when the flag is set. Targets are gl_g_tie (slot $gp-0x6c8c) and gl_d_tie (slot $gp-0x7778), chosen by the immediate and remote words.

- `zbsize` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65208
  **Inferred.** A 64-byte stub with no move-draw test. The immediate-mode word at $gp-0x5b88 chooses between gl_g_zbsize (slot $gp-0x7de4) and gl_d_zbsize (slot $gp-0x71e8). The remote-table word at $gp-0x5cb4 is read only when immediate mode is zero.

- `compactify` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65248
  **Inferred.** Compactify wrapper with the common guard at $gp-0x5bec. Calls to __iglooCloseMoveDrawFromTable go through $gp-0x6aac. Dispatch targets are gl_g_compactify (slot $gp-0x7ab4) and gl_d_compactify (slot $gp-0x7708).

- `gl_setdisplay` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec652d0
  **Inferred.** The 64-byte display stub, with no guard. It loads gl_immediate_mode and jumps to gl_g_gl_setdisplay (slot $gp-0x7144) when nonzero. Otherwise, if gl_dgl_table_is_remote is set, it jumps to gl_d_gl_setdisplay (slot $gp-0x64c8). Otherwise it takes the g path.

- `getmmode` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65310
  **Inferred.** Mode query entry. A set move-draw flag at $gp-0x5bec runs the saved-argument call to __iglooCloseMoveDrawFromTable. The routine then tail-jumps to gl_g_getmmode (slot $gp-0x5d90) or gl_d_getmmode (slot $gp-0x7434), with the remote word deciding only when immediate mode is zero.

- `circfi` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65398
  **Inferred.** Forwards the circfi arguments after the move-draw guard. Immediate mode selects gl_g_circfi (slot $gp-0x7cf0). When it is zero and gl_dgl_table_is_remote is nonzero, the jump lands in gl_d_circfi (slot $gp-0x7980).

- `fullscrn` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65420
  **Inferred.** Full-screen toggle stub. The move-draw word at $gp-0x5bec gates a call to __iglooCloseMoveDrawFromTable, using the frame at $sp. Then gl_immediate_mode and gl_dgl_table_is_remote pick between gl_g_fullscrn (slot $gp-0x6728) and gl_d_fullscrn (slot $gp-0x7494).

- `multimap` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec654a8
  **Inferred.** Reaches gl_g_multimap (slot $gp-0x6b84) or gl_d_multimap (slot $gp-0x785c) through the usual two-flag test. A nonzero gl_inMoveDraw word first runs the spill, the call through $gp-0x6aac, and the reload.

- `lshaderange` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65530
  **Inferred.** Shader-range entry: the move-draw close at $gp-0x6aac runs first when $gp-0x5bec is nonzero. Immediate mode then selects gl_g_lshaderange (slot $gp-0x79ec). The d variant at slot $gp-0x73c8 is used only if immediate mode is zero and gl_dgl_table_is_remote is nonzero.

- `perspective` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec655b8
  **Inferred.** Perspective call stub. After the guard, gl_immediate_mode picks gl_g_perspective (slot $gp-0x5f30), and a set gl_dgl_table_is_remote with immediate mode clear picks gl_d_perspective (slot $gp-0x7844).

- `writeRGB` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65640
  **Inferred.** A 64-byte RGB write stub without a move-draw check. Its first test is gl_immediate_mode (slot $gp-0x5b88); nonzero goes to gl_g_writeRGB (slot $gp-0x68f0). Zero immediate mode goes to gl_d_writeRGB (slot $gp-0x7760) when the remote-table word is nonzero, else to gl_g_writeRGB.

- `endselect` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65680
  **Inferred.** Select-mode exit. The flag at $gp-0x5bec, when set, leads to a call to __iglooCloseMoveDrawFromTable (slot $gp-0x6aac) bracketed by the argument spill. Tail targets: gl_g_endselect (slot $gp-0x696c) and gl_d_endselect (slot $gp-0x7920).

- `gl_sincos` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65708
  **Inferred.** Sine and cosine entry. The move-draw close comes first (slot $gp-0x6aac, guard $gp-0x5bec). The route then sends the call to gl_g_gl_sincos (slot $gp-0x5d30) for nonzero immediate mode, or to gl_d_gl_sincos (slot $gp-0x64dc) when gl_dgl_table_is_remote is set.

- `winconstraints` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65790
  **Inferred.** Window-constraints entry. It checks gl_inMoveDraw at $gp-0x5bec and calls __iglooCloseMoveDrawFromTable through $gp-0x6aac when it is set. Immediate mode then selects gl_g_winconstraints (slot $gp-0x6c0c), and the remote-table word selects gl_d_winconstraints (slot $gp-0x7488) when immediate mode is zero.

- `picksize` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65818
  **Inferred.** Pick-size stub. The guard at $gp-0x5bec precedes the frame-saved close call. Targets are gl_g_picksize (slot $gp-0x6960) and gl_d_picksize (slot $gp-0x783c), selected by gl_immediate_mode and gl_dgl_table_is_remote in that order.

- `reshapeviewport` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec658a0
  **Inferred.** Viewport reshape. A nonzero gl_inMoveDraw flag triggers __iglooCloseMoveDrawFromTable through $gp-0x6aac. Then the immediate-mode word chooses gl_g_reshapeviewport (slot $gp-0x5f08); a zero immediate word with a set remote word chooses gl_d_reshapeviewport (slot $gp-0x750c).

- `circfs` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65928
  **Inferred.** The circfs stub: move-draw guard at $gp-0x5bec, then gl_g_circfs (slot $gp-0x7cf8) for nonzero immediate mode, or gl_d_circfs (slot $gp-0x7718) when immediate mode is zero and the remote word is set.

- `gexit` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec659b0
  **Inferred.** Exit entry point. The move-draw flag at $gp-0x5bec, when set, leads to __iglooCloseMoveDrawFromTable through slot $gp-0x6aac. Dispatch is then gl_g_gexit (slot $gp-0x6ffc), or gl_d_gexit (slot $gp-0x7750) under the zero-immediate, set-remote condition.

- `tlutdef` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65a38
  **Inferred.** A 64-byte table-definition stub without the move-draw guard. The first branch reads gl_immediate_mode at $gp-0x5b88 and jumps to gl_g_tlutdef (slot $gp-0x5f64) when it is set. With immediate mode zero, gl_d_tlutdef (slot $gp-0x70d8) is used if gl_dgl_table_is_remote is nonzero.

- `winset` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65a78
  **Inferred.** Window-set entry. A set gl_inMoveDraw word calls __iglooCloseMoveDrawFromTable at $gp-0x6aac after saving $a0 to $a3. The tail jump is to gl_g_winset (slot $gp-0x6c14) unless immediate mode is zero and gl_dgl_table_is_remote is nonzero, in which case it is gl_d_winset (slot $gp-0x7118).

- `rectzoom` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65b00
  **Inferred.** Spills the arguments and calls the hook at 0xec8fc18 when the word at 0xecdfba0 is nonzero, then restores them. It jumps through GOT -0x6904 (0xec984a4) when flag A at 0xecec8c8 is set. If flag A is clear and flag B at 0xecdc220 is set, it jumps through GOT -0x73ac (0xec528d0) instead, and otherwise it jumps through GOT -0x6904 again.

- `circ` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65b88
  **Inferred.** Runs the 0xec8fc18 hook under the 0xecdfba0 enable word with a0 to a3 kept on a 0x20-byte frame. The default target is GOT -0x7d00 (0xec39cb0). Flag B at 0xecdc220 moves the jump to GOT -0x7988 (0xec45164), but only while flag A at 0xecec8c8 is zero.

- `closeobj` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65c10
  **Inferred.** Calls the hook at 0xec8fc18 when 0xecdfba0 is nonzero. A set flag A at 0xecec8c8 sends it to GOT -0x7c00 (0xec3be40). With flag A clear, a set flag B at 0xecdc220 sends it to GOT -0x7970 (0xec453fc), and otherwise it lands on GOT -0x7c00.

- `stereobuffer` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65c98
  **Inferred.** This 64-byte stub has no hook. Flag A at 0xecec8c8 set makes it jump through GOT -0x6b7c (0xec8cf50). When that flag is clear and flag B at 0xecdc220 is set, the target is GOT -0x71f4 (0xec56f30), and the fallback is GOT -0x6b7c.

- `minmax` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65cd8
  **Inferred.** A 64-byte stub with no pre-dispatch call. Its default target is GOT -0x6f74 (0xec74738). It switches to GOT -0x71c8 (0xec573cc) only when flag A at 0xecec8c8 is zero and flag B at 0xecdc220 is nonzero.

- `arc` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65d18
  **Inferred.** The hook at 0xec8fc18 runs first when 0xecdfba0 holds a nonzero value, and the four argument registers reach the call as the caller passed them. Next, flag A at 0xecec8c8 selects GOT -0x7cc8 (0xec3a8a4). If that flag is zero and flag B at 0xecdc220 is set, the target becomes GOT -0x79b4 (0xec44984). Otherwise the target is GOT -0x7cc8.

- `arcf` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65da0
  **Inferred.** Hook call through 0xec8fc18 gated by the word at 0xecdfba0. Flag A at 0xecec8c8 set means a jump through GOT -0x7cb0 (0xec3acc4). Flag A clear with flag B at 0xecdc220 set means a jump through GOT -0x79b0 (0xec44a4c). Both clear means GOT -0x7cb0.

- `getdrawmode` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65e28
  **Inferred.** Before dispatch, the routine calls 0xec8fc18 when 0xecdfba0 is nonzero. Its two targets are GOT -0x6ba0 (0xec8cd94) and GOT -0x745c (0xec51038). Flag A at 0xecec8c8 chooses the first. The second is used only when flag A is zero and flag B at 0xecdc220 is nonzero.

- `winmove` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65eb0
  **Inferred.** The enable word at 0xecdfba0 decides whether 0xec8fc18 is called first, with the arguments spilled to the frame and reloaded after it. Flag A at 0xecec8c8 nonzero jumps through GOT -0x6be4 (0xec8ba0c). Flag A zero with flag B at 0xecdc220 nonzero jumps through GOT -0x74e8 (0xec4fa5c). Otherwise it jumps through GOT -0x6be4.

- `arci` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65f38
  **Inferred.** The routine saves a0 to a3 on a 0x20-byte stack frame and calls the hook at 0xec8fc18 when the word at 0xecdfba0 is nonzero. The default jump is GOT -0x7cd0 (0xec3a73c). That changes to GOT -0x79a8 (0xec44bdc) only when flag A at 0xecec8c8 reads zero and flag B at 0xecdc220 reads nonzero.

- `istag` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec65fc0
  **Inferred.** After the optional hook call (enable word 0xecdfba0, hook 0xec8fc18), it reads flag A at 0xecec8c8. A set flag A jumps through GOT -0x601c (0xecb8974). If flag A is clear and flag B at 0xecdc220 is set, the jump goes through GOT -0x7894 (0xec46ec0). Otherwise it jumps through GOT -0x601c.

- `doublebuffer` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66048
  **Inferred.** Runs the 0xec8fc18 hook when 0xecdfba0 is nonzero. Its two targets are GOT -0x6b94 (0xec8cea8) and GOT -0x793c (0xec45b34). The first is taken whenever flag A at 0xecec8c8 is set, and the second only when flag A is clear and flag B at 0xecdc220 is set.

- `getcmmode` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec660d0
  **Inferred.** The hook at 0xec8fc18 brackets the argument spill and runs when the word at 0xecdfba0 is nonzero. Flag A at 0xecec8c8 then selects GOT -0x6bb0 (0xec8cc90). With flag A clear, flag B at 0xecdc220 selects GOT -0x78fc (0xec46250). With both flags clear, the target is GOT -0x6bb0.

- `getmonitor` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66158
  **Inferred.** Optional hook call through 0xec8fc18 when the enable word at 0xecdfba0 is set. The targets are GOT -0x6b50 (0xec8e318) and GOT -0x76bc (0xec4b564). A set flag A at 0xecec8c8 keeps the first target. The second is taken only when flag A is zero and flag B at 0xecdc220 is set.

- `noborder` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec661e0
  **Inferred.** Calls 0xec8fc18 first if 0xecdfba0 is nonzero, then dispatches to GOT -0x6d54 (0xec80568) or GOT -0x7480 (0xec50c24). Nonzero flag A at 0xecec8c8 means the first; zero flag A with nonzero flag B at 0xecdc220 means the second.

- `feedback` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66268
  **Inferred.** Its only stores are the argument spill slots in its frame. It runs the hook at 0xec8fc18 when 0xecdfba0 is set and then jumps through GOT -0x6928 (0xec9713c) or GOT -0x70cc (0xec5f25c). The second target needs flag A at 0xecec8c8 zero and flag B at 0xecdc220 nonzero.

- `scrmask` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec662f0
  **Inferred.** Hook-gated stub: 0xec8fc18 is called when 0xecdfba0 is nonzero. The first target is GOT -0x5f24 (0xecc6c00) and the alternate is GOT -0x77a8 (0xec4922c). Flag A at 0xecec8c8 keeps the first. Flag B at 0xecdc220 switches to the alternate only when flag A reads zero.

- `glcompat` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66378
  **Inferred.** Spills the arguments and calls the hook at 0xec8fc18 when the word at 0xecdfba0 is nonzero. The target is GOT -0x66f8 (0xeca26a8) when flag A at 0xecec8c8 is set. Otherwise, when flag B at 0xecdc220 is set, it is GOT -0x73d4 (0xec5209c), and with both clear it is GOT -0x66f8.

- `popviewport` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66400
  **Inferred.** A 0x20-byte frame carries a0 to a3 across the hook at 0xec8fc18 whenever 0xecdfba0 is set. Dispatch targets GOT -0x5ed8 (0xecc77a4) and GOT -0x77fc (0xec48748). Flag A at 0xecec8c8 picks the first, and flag B at 0xecdc220 picks the second when flag A is clear.

- `popattributes` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66488
  **Inferred.** Calls the routine at 0xec8fc18 when 0xecdfba0 is nonzero. It then jumps through GOT -0x7f58 (0xec31244) if flag A at 0xecec8c8 is set. If flag A is clear and flag B at 0xecdc220 is set it jumps through GOT -0x7804 (0xec48680), and otherwise through GOT -0x7f58.

- `arcs` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66510
  **Inferred.** Pre-dispatch hook at 0xec8fc18, enabled by the word at 0xecdfba0. The jump goes to GOT -0x7cd8 (0xec3a5d4) when flag A at 0xecec8c8 is set. It goes to GOT -0x7730 (0xec4a3a8) only when flag A is clear and flag B at 0xecdc220 is set. The default is GOT -0x7cd8.

- `gl_glx_getconfig` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66598
  **Inferred.** Two-flag dispatch with no hook call. The default target is GOT -0x5dbc (0xeccefd0). Flag A at 0xecec8c8 set keeps it there. With flag A clear and flag B at 0xecdc220 set, the stub jumps through GOT -0x64c4 (0xecaa450) instead.

- `endsurface` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec665d8
  **Inferred.** A 64-byte stub without a hook. It jumps through GOT -0x6a2c (0xec9127c) unless flag A at 0xecec8c8 is zero and flag B at 0xecdc220 is set, in which case it jumps through GOT -0x7320 (0xec53c28).

- `rectread` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66618
  **Inferred.** Calls the hook at 0xec8fc18 before dispatch when the enable word at 0xecdfba0 is nonzero. The jump goes through GOT -0x68f4 (0xec98e38) by default and whenever flag A at 0xecec8c8 is set. Only when flag A is clear and flag B at 0xecdc220 is set does it go through GOT -0x73b4 (0xec52634).

- `getzbuffer` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec666a0
  **Inferred.** The arguments are spilled and the hook at 0xec8fc18 is called when 0xecdfba0 is nonzero. The flags then choose between GOT -0x7004 (0xec61664), the default, and GOT -0x76b4 (0xec4b634), which needs flag A zero and flag B nonzero.

- `winpop` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66728
  **Inferred.** Hook call at 0xec8fc18 when the enable word 0xecdfba0 is set. Targets are GOT -0x6be8 (0xec8b984) and GOT -0x74f0 (0xec4f970). Flag A at 0xecec8c8 set selects the first. Flag A clear with flag B at 0xecdc220 set selects the second, and the fallback is the first.

- `RGBsize` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec667b0
  **Inferred.** A 64-byte stub with the two-flag selection and no hook. GOT -0x7df0 (0xec35928) is the default and is taken while flag A at 0xecec8c8 is set. GOT -0x71a0 (0xec57aa8) is taken only when flag A is zero and flag B at 0xecdc220 is nonzero.

- `cmode` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec667f0
  **Inferred.** The enable word at 0xecdfba0 controls a call to 0xec8fc18 that brackets the argument spill. After that, GOT -0x6b90 (0xec8ced0) is the target, unless flag A at 0xecec8c8 is zero and flag B at 0xecdc220 is nonzero. In that case the target is GOT -0x746c (0xec50e9c).

- `curorigin` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66878
  **Inferred.** Calls 0xec8fc18 when 0xecdfba0 is nonzero. The target is GOT -0x5dfc (0xeccc950). GOT -0x7554 (0xec4eaec) replaces it only when flag A at 0xecec8c8 is zero and flag B at 0xecdc220 is set.

- `dopup` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66900
  **Inferred.** Hook 0xec8fc18 is called when 0xecdfba0 is nonzero, with a0 to a3 saved first. Dispatch goes to GOT -0x6dc4 (0xec7c114) on flag A at 0xecec8c8, to GOT -0x74a0 (0xec508e0) on flag B at 0xecdc220 with flag A clear, and to GOT -0x6dc4 by default.

- `pick` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66988
  **Inferred.** The enable word 0xecdfba0 turns on the hook at 0xec8fc18. The two targets are GOT -0x6968 (0xec967a4) and GOT -0x7840 (0xec47a9c). Flag A at 0xecec8c8 set chooses the first. The second needs flag A clear and flag B at 0xecdc220 set.

- `getgpos` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66a10
  **Inferred.** Argument-preserving call to 0xec8fc18 when 0xecdfba0 is nonzero. The stub then jumps through GOT -0x7034 (0xec61210) unless flag A at 0xecec8c8 is zero and flag B at 0xecdc220 is set. In that case it jumps through GOT -0x76c4 (0xec4b454).

- `readpixels` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66a98
  **Inferred.** Hook at 0xec8fc18, enabled by 0xecdfba0. The dispatch targets are GOT -0x68e4 (0xec997e4) and GOT -0x77dc (0xec48a9c). The second is used only when flag A at 0xecec8c8 is zero and flag B at 0xecdc220 is nonzero. Every other case uses the first.

- `addtop` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66b20
  **Inferred.** Hook enabled by 0xecdfba0 runs 0xec8fc18 first. Then flag A at 0xecec8c8 selects GOT -0x6dd0 (0xec7bf0c). When flag A is zero and flag B at 0xecdc220 is set, GOT -0x70ec (0xec5e600) is used instead.

- `wintitle` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66ba8
  **Inferred.** Calls the routine at 0xec8fc18 when 0xecdfba0 is nonzero, keeping a0 to a3 on the frame. It jumps to GOT -0x6c04 (0xec8b23c) by default and to GOT -0x74e0 (0xec4fb5c) only when flag A at 0xecec8c8 is zero and flag B at 0xecdc220 is nonzero.

- `getcolor` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66c30
  **Inferred.** Hook at 0xec8fc18 gated on 0xecdfba0. The target is GOT -0x703c (0xec61130) unless flag A at 0xecec8c8 is zero and flag B at 0xecdc220 is nonzero, which selects GOT -0x78f8 (0xec462b8).

- `getdepth` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66cb8
  **Inferred.** Runs the hook at 0xec8fc18 before dispatch when the word at 0xecdfba0 is set. GOT -0x5ee8 (0xecc7554) is the default target. GOT -0x78f0 (0xec463c8) is selected when flag A at 0xecec8c8 reads zero and flag B at 0xecdc220 reads nonzero.

- `deflfont` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66d40
  **Inferred.** Under the 0xecdfba0 enable, the arguments are saved and the routine at 0xec8fc18 is called. Then it jumps through GOT -0x7d4c (0xec37a08) when flag A at 0xecec8c8 is set, through GOT -0x7238 (0xec560e4) when flag A is clear and flag B at 0xecdc220 is set, and through GOT -0x7d4c otherwise.

- `viewport` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66dc8
  **Inferred.** The enable word at 0xecdfba0 gates the call to 0xec8fc18. Jump targets are GOT -0x5f18 (0xecc6dc0) and GOT -0x7770 (0xec49a04). The first is taken when flag A at 0xecec8c8 is nonzero or when flag B at 0xecdc220 is zero. The second needs flag A zero and flag B nonzero.

- `getdev` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66e50
  **Inferred.** Hook call to 0xec8fc18 when 0xecdfba0 is nonzero, with the arguments preserved in a 0x20-byte frame. Dispatch goes to GOT -0x6ca8 (0xec8672c) by default, or to GOT -0x74cc (0xec4ff94) when flag A at 0xecec8c8 reads zero and flag B at 0xecdc220 reads nonzero.

- `getminmax` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66ed8
  **Inferred.** Tail-jumps to one of two implementations of `getminmax`. A nonzero `gl_immediate_mode` sends it to `gl_g_getminmax`. Otherwise a nonzero `gl_dgl_table_is_remote` sends it to `gl_d_getminmax`, and a zero flag falls back to `gl_g_getminmax`. The routine builds no stack frame and does not alter a0 to a3.

- `gethgram` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66f18
  **Inferred.** Picks `gl_g_gethgram` or `gl_d_gethgram` by the flag words `gl_immediate_mode` and then `gl_dgl_table_is_remote`. Immediate mode is tested first, so the generic target wins whenever that word is set. Arguments pass through untouched because the stub only ends in a jump.

- `readsource` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66f58
  **Inferred.** When `gl_inMoveDraw` is set, it saves a0 to a3 and ra in a 0x20-byte frame and calls `__iglooCloseMoveDrawFromTable`, then restores the arguments. After that it dispatches to `gl_g_readsource`, or to `gl_d_readsource` when immediate mode is clear and `gl_dgl_table_is_remote` is set.

- `noise` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec66fe0
  **Inferred.** Runs the `gl_inMoveDraw` check first and, if the flag is set, calls `__iglooCloseMoveDrawFromTable` with the four argument registers spilled. The final jump goes to `gl_g_noise` for the immediate-mode or fallback case and to `gl_d_noise` only when the remote-table flag is set.

- `gl_resetls` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67068
  **Inferred.** A move-draw close runs first, guarded by `gl_inMoveDraw`, through `__iglooCloseMoveDrawFromTable`. The entry then jumps to `gl_g_gl_resetls` unless immediate mode is off and the remote-table word is on, in which case it jumps to `gl_d_gl_resetls`.

- `gl_readscreen` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec670f0
  **Inferred.** Here the move-draw hook sits in front of the usual two-way branch. It spills a0 to a3 and ra into 0x20 bytes of stack, calls `__iglooCloseMoveDrawFromTable` when `gl_inMoveDraw` is nonzero, and reloads the arguments before branching to `gl_g_gl_readscreen` or `gl_d_gl_readscreen`.

- `isobj` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67178
  **Inferred.** Clearing `gl_inMoveDraw` skips the close call. When the flag is set, the stub calls `__iglooCloseMoveDrawFromTable` and then tail-jumps through the GOT slot for `gl_g_isobj`, switching to `gl_d_isobj` only if `gl_immediate_mode` is clear and `gl_dgl_table_is_remote` is set.

- `getscrbox` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67200
  **Inferred.** The move-draw check is the first branch: a set `gl_inMoveDraw` leads to a call of `__iglooCloseMoveDrawFromTable` with a0 to a3 saved on the stack. Dispatch afterwards chooses `gl_g_getscrbox` by default and `gl_d_getscrbox` in the remote-table case.

- `mapw2` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67288
  **Inferred.** The sequence is the same as for the other move-draw stubs. A nonzero `gl_inMoveDraw` triggers `__iglooCloseMoveDrawFromTable` through a jalr, the four arguments are reloaded, and the flags `gl_immediate_mode` and `gl_dgl_table_is_remote` select between `gl_g_mapw2` and `gl_d_mapw2`.

- `readRGB` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67310
  **Inferred.** Calls `__iglooCloseMoveDrawFromTable` first when `gl_inMoveDraw` is set, preserving a0 to a3 across the call in the 0x20-byte frame. It then jumps to `gl_g_readRGB`, or to `gl_d_readRGB` for a clear immediate-mode word with the remote-table word set.

- `shaderange` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67398
  **Inferred.** Guards a call to `__iglooCloseMoveDrawFromTable` on the `gl_inMoveDraw` word. The tail target is `gl_g_shaderange` unless the stub finds immediate mode off and the table-is-remote word on, in which case it is `gl_d_shaderange`.

- `gammaramp` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67420
  **Inferred.** Here the hook reads `gl_inMoveDraw` through a GOT pointer and, when that word is nonzero, calls `__iglooCloseMoveDrawFromTable`. Control then leaves through `gl_g_gammaramp`, except when the remote-table flag selects `gl_d_gammaramp`.

- `strwid` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec674a8
  **Inferred.** A set `gl_inMoveDraw` makes it call `__iglooCloseMoveDrawFromTable` and restore a0 to a3 afterwards. The two-flag dispatch then ends at `gl_g_strwid` or `gl_d_strwid`.

- `objdelete` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67530
  **Inferred.** Move-draw close (`__iglooCloseMoveDrawFromTable`, guarded by `gl_inMoveDraw`) comes before the choice between `gl_g_objdelete` and `gl_d_objdelete`. Immediate mode decides first; the remote-table word decides only when immediate mode is clear.

- `getpattern` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec675b8
  **Inferred.** Spills the argument registers, calls `__iglooCloseMoveDrawFromTable` if `gl_inMoveDraw` is set, and reloads them. The jump goes to `gl_g_getpattern` by default and to `gl_d_getpattern` when the immediate-mode word is zero and the remote-table word is nonzero.

- `lookat` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67640
  **Inferred.** The routine opens with the `gl_inMoveDraw` test and, on a set flag, the `__iglooCloseMoveDrawFromTable` call. It then selects between `gl_g_lookat` and `gl_d_lookat` using `gl_immediate_mode` and `gl_dgl_table_is_remote`, with the generic path as the default.

- `setshade` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec676c8
  **Inferred.** This 64-byte stub has no move-draw hook and no frame. It reads `gl_immediate_mode` and jumps to `gl_g_setshade` if the word is nonzero. Otherwise it reads `gl_dgl_table_is_remote` and jumps to `gl_d_setshade` if that is set, and to `gl_g_setshade` if not.

- `finish` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67708
  **Inferred.** Before dispatching, it calls `__iglooCloseMoveDrawFromTable` whenever `gl_inMoveDraw` holds a nonzero word, keeping the caller's arguments in its 0x20-byte frame. The final targets are `gl_g_finish` and `gl_d_finish`, with the remote-table flag deciding between them.

- `polarview` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67790
  **Inferred.** A nonzero `gl_inMoveDraw` leads to a jalr of `__iglooCloseMoveDrawFromTable` before any dispatch. The dispatch then ends in `gl_g_polarview`, or in `gl_d_polarview` when `gl_immediate_mode` is zero and `gl_dgl_table_is_remote` is nonzero.

- `gselect` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67818
  **Inferred.** Gates the `__iglooCloseMoveDrawFromTable` call on `gl_inMoveDraw`, saves a0 to a3 around it, and then jumps to `gl_g_gselect`. The jump changes to `gl_d_gselect` only in the case where immediate mode is off and the remote-table word is on.

- `maketag` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec678a0
  **Inferred.** When the move-draw word is set, the stub calls `__iglooCloseMoveDrawFromTable` through `$t9` and then restores its four argument registers. It ends at `gl_g_maketag` by default and at `gl_d_maketag` when the two flag words select the remote path.

- `subtexload` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67928
  **Inferred.** A 64-byte stub with no hook: it jumps to `gl_g_subtexload` unless `gl_immediate_mode` is clear and `gl_dgl_table_is_remote` is set, in which case it jumps to `gl_d_subtexload`. It touches no stack and no argument register.

- `lstwid` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67968
  **Inferred.** Runs the move-draw close first, guarded by `gl_inMoveDraw` and performed through `__iglooCloseMoveDrawFromTable` with a0 to a3 preserved. The branch then picks `gl_g_lstwid`, or `gl_d_lstwid` under the remote-table condition.

- `getsb` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec679f0
  **Inferred.** Immediate mode is tested first. A nonzero `gl_immediate_mode` jumps to `gl_g_getsb`; a zero value falls to the `gl_dgl_table_is_remote` test, which selects `gl_d_getsb` when set and `gl_g_getsb` when clear. No stack frame is created.

- `getfont` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67a30
  **Inferred.** Here `gl_inMoveDraw` controls a jalr to `__iglooCloseMoveDrawFromTable` with the arguments kept on the stack. After the call, `gl_immediate_mode` and `gl_dgl_table_is_remote` pick the tail target, `gl_g_getfont` or `gl_d_getfont`.

- `getplanes` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67ab8
  **Inferred.** The entry first checks `gl_inMoveDraw` and calls `__iglooCloseMoveDrawFromTable` when it is set, restoring a0 to a3 afterwards. It then jumps to `gl_g_getplanes`, or to `gl_d_getplanes` when the remote-table word is set and immediate mode is not.

- `charst` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67b40
  **Inferred.** It guards `__iglooCloseMoveDrawFromTable` with the `gl_inMoveDraw` word and keeps the arguments in a 0x20-byte frame across the call. The final jump is to `gl_g_charst` by default and to `gl_d_charst` when immediate mode is clear and the remote-table word is set.

- `texdef2d` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67bc8
  **Inferred.** A 64-byte stub without the move-draw call. The tests run in the order `gl_immediate_mode`, then `gl_dgl_table_is_remote`; a set immediate-mode word or a clear remote-table word selects `gl_g_texdef2d`, and only the remaining case selects `gl_d_texdef2d`.

- `setmonitor` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67c08
  **Inferred.** Calls `__iglooCloseMoveDrawFromTable` when `gl_inMoveDraw` is nonzero, after spilling a0 to a3 and ra. Dispatch then reaches `gl_g_setmonitor`, or `gl_d_setmonitor` when the remote-table flag is set and `gl_immediate_mode` is zero.

- `endfeedback` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67c90
  **Inferred.** The move-draw close runs through a jalr when `gl_inMoveDraw` is set and the argument registers are reloaded after it. The final dispatch goes to `gl_g_endfeedback` except in the immediate-mode-clear, remote-table-set case, which goes to `gl_d_endfeedback`.

- `pushviewport` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67d18
  **Inferred.** A move-draw hook guarded by `gl_inMoveDraw` runs first and calls `__iglooCloseMoveDrawFromTable`. The stub then ends at `gl_g_pushviewport`, or at `gl_d_pushviewport` when the immediate-mode word is zero and `gl_dgl_table_is_remote` is nonzero.

- `rectcopy` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67da0
  **Inferred.** It calls `__iglooCloseMoveDrawFromTable` if `gl_inMoveDraw` is nonzero, keeping a0 to a3 in its frame. The jump at the end goes to `gl_g_rectcopy` or `gl_d_rectcopy`, the latter only when immediate mode is clear and the remote-table word is set.

- `gconfig` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67e28
  **Inferred.** Checks `gl_inMoveDraw` and, when set, calls `__iglooCloseMoveDrawFromTable` with the argument registers saved on the stack. Targets are `gl_g_gconfig` by default and `gl_d_gconfig` for the remote-table case.

- `gRGBmask` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67eb0
  **Inferred.** The move-draw close call is made when `gl_inMoveDraw` is set and the frame restores the arguments afterward. The tail jump is to `gl_g_gRGBmask`, with `gl_d_gRGBmask` chosen when `gl_immediate_mode` is zero and `gl_dgl_table_is_remote` is nonzero.

- `endpupmode` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67f38
  **Inferred.** Here the hook reads `gl_inMoveDraw` and calls `__iglooCloseMoveDrawFromTable` on a nonzero result. It then tail-jumps to `gl_g_endpupmode`, or to `gl_d_endpupmode` under the remote-table condition.

- `bgnsurface` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec67fc0
  **Inferred.** Move-draw close first (`gl_inMoveDraw`, then `__iglooCloseMoveDrawFromTable`), with a0 to a3 saved and reloaded around it. Afterwards `gl_g_bgnsurface` is the target unless immediate mode is clear and `gl_dgl_table_is_remote` is set, which selects `gl_d_bgnsurface`.

- `getviewport` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68048
  **Inferred.** A nonzero `gl_inMoveDraw` triggers a jalr to `__iglooCloseMoveDrawFromTable` from inside a 0x20-byte frame. The routine then jumps to `gl_g_getviewport`, or to `gl_d_getviewport` when the remote-table word is set and immediate mode is zero.

- `winpush` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec680d0
  **Inferred.** It saves ra and the four argument registers, calls `__iglooCloseMoveDrawFromTable` when `gl_inMoveDraw` is set, and restores them. The dispatch that follows picks `gl_g_winpush` or `gl_d_winpush` from the same two flag words.

- `cyclemap` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68158
  **Inferred.** The routine begins with the `gl_inMoveDraw` test and the `__iglooCloseMoveDrawFromTable` call when that word is nonzero. It then reaches `gl_g_cyclemap` by default and `gl_d_cyclemap` when immediate mode is clear and the remote-table word is set.

- `ildraw` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec681e0
  **Inferred.** A 64-byte stub with no hook and no frame. A nonzero `gl_immediate_mode` jumps to `gl_g_ildraw`; otherwise a nonzero `gl_dgl_table_is_remote` jumps to `gl_d_ildraw`, and a zero value there also jumps to `gl_g_ildraw`.

- `getsm` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68220
  **Inferred.** getsm is a dispatch thunk with a flush prelude. The prelude runs __iglooCloseMoveDrawFromTable (GOT word gp-0x6aac) whenever gl_inMoveDraw is nonzero, preserving a0-a3 in its 0x20-byte frame. Afterward the thunk picks gl_d_getsm (GOT word gp-0x7440, value 0xec5143c) if gl_immediate_mode is 0 and gl_dgl_table_is_remote is nonzero, and gl_g_getsm (GOT word gp-0x7010, value 0xec614ec) otherwise, and jumps to it without a frame of its own.

- `RGBrange` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec682a8
  **Inferred.** Here the flush call comes first: a nonzero gl_inMoveDraw word triggers __iglooCloseMoveDrawFromTable through the slot at gp-0x6aac, with the four argument registers and ra spilled and restored around it. The target choice follows: gl_d_RGBrange at gp-0x7470 needs gl_immediate_mode clear and gl_dgl_table_is_remote set, and every other state reaches gl_g_RGBrange at gp-0x79e4.

- `setcursor` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68330
  **Inferred.** The stub for setcursor at 0xec68330 tests gl_inMoveDraw first and, when it is set, calls the flush whose GOT word is gp-0x6aac, saving ra and a0-a3 on a 32-byte frame. Dispatch then reads gl_immediate_mode and gl_dgl_table_is_remote; the remote variant gl_d_setcursor (gp-0x77a0) is selected only when the first is zero and the second nonzero, and the local variant gl_g_setcursor (gp-0x5e00) in all other cases.

- `getdescender` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec683b8
  **Inferred.** getdescender forwards to one of two implementations. Before forwarding, it conditionally flushes move-draw state through gl_inMoveDraw and __iglooCloseMoveDrawFromTable (GOT word gp-0x6aac). Two GOT words hold the candidates: gp-0x7438 holds gl_d_getdescender and gp-0x7d68 holds gl_g_getdescender. A zero gl_immediate_mode (gp-0x5b88) together with a nonzero gl_dgl_table_is_remote (gp-0x5cb4) selects the first.

- `readdisplay` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68440
  **Inferred.** Read in order: gl_inMoveDraw (gp-0x5bec) nonzero means call the flush at gp-0x6aac with the arguments saved. Then if gl_immediate_mode (gp-0x5b88) is nonzero the thunk tail-jumps to gl_g_readdisplay; otherwise it checks gl_dgl_table_is_remote (gp-0x5cb4), jumping to gl_d_readdisplay when that is nonzero and to gl_g_readdisplay when it is zero. The two targets sit at gp-0x724c and gp-0x66e4.

- `getcpos` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec684c8
  **Inferred.** A flush-first thunk for getcpos. Its prologue spills a0 to a3 and ra only when gl_inMoveDraw is set, then calls __iglooCloseMoveDrawFromTable through gp-0x6aac. The tail dispatch loads gl_g_getcpos from gp-0x7038 into t9 as the default and swaps in gl_d_getcpos from gp-0x76cc only for a zero gl_immediate_mode with a nonzero gl_dgl_table_is_remote.

- `getmatrix` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68550
  **Inferred.** getmatrix at 0xec68550 is 34 instructions: a conditional flush through gp-0x6aac keyed on gl_inMoveDraw, then a two-flag choice between gl_d_getmatrix (gp-0x78cc) and gl_g_getmatrix (gp-0x5da4). The flags are gl_immediate_mode at gp-0x5b88 and gl_dgl_table_is_remote at gp-0x5cb4, read after the flush, and the jump is a plain jr with a nop in its delay slot.

- `overlay` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec685d8
  **Inferred.** Calls to overlay go through a conditional flush and then a choice of target. The flush (gl_inMoveDraw at gp-0x5bec, flush routine at gp-0x6aac) saves the argument registers around its call. The choice reads gl_immediate_mode and gl_dgl_table_is_remote and lands on gl_d_overlay (GOT gp-0x7450, 0xec51284) or gl_g_overlay (GOT gp-0x7dec, 0xec35960).

- `setpup` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68660
  **Inferred.** setpup is a dispatch thunk with a flush prelude. The prelude runs __iglooCloseMoveDrawFromTable (GOT word gp-0x6aac) whenever gl_inMoveDraw is nonzero, preserving a0-a3 in its 0x20-byte frame. Afterward the thunk picks gl_d_setpup (GOT word gp-0x72f0, value 0xec54578) if gl_immediate_mode is 0 and gl_dgl_table_is_remote is nonzero, and gl_g_setpup (GOT word gp-0x6db8, value 0xec7c2f0) otherwise, and jumps to it without a frame of its own.

- `getbackface` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec686e8
  **Inferred.** Here the flush call comes first: a nonzero gl_inMoveDraw word triggers __iglooCloseMoveDrawFromTable through the slot at gp-0x6aac, with the four argument registers and ra spilled and restored around it. The target choice follows: gl_d_getbackface at gp-0x743c needs gl_immediate_mode clear and gl_dgl_table_is_remote set, and every other state reaches gl_g_getbackface at gp-0x7040.

- `winget` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68770
  **Inferred.** The stub for winget at 0xec68770 tests gl_inMoveDraw first and, when it is set, calls the flush whose GOT word is gp-0x6aac, saving ra and a0-a3 on a 32-byte frame. Dispatch then reads gl_immediate_mode and gl_dgl_table_is_remote; the remote variant gl_d_winget (gp-0x74f8) is selected only when the first is zero and the second nonzero, and the local variant gl_g_winget (gp-0x6c18) in all other cases.

- `lRGBrange` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec687f8
  **Inferred.** lRGBrange forwards to one of two implementations. Before forwarding, it conditionally flushes move-draw state through gl_inMoveDraw and __iglooCloseMoveDrawFromTable (GOT word gp-0x6aac). Two GOT words hold the candidates: gp-0x73d0 holds gl_d_lRGBrange and gp-0x79dc holds gl_g_lRGBrange. A zero gl_immediate_mode (gp-0x5b88) together with a nonzero gl_dgl_table_is_remote (gp-0x5cb4) selects the first.

- `arcfi` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68880
  **Inferred.** Read in order: gl_inMoveDraw (gp-0x5bec) nonzero means call the flush at gp-0x6aac with the arguments saved. Then if gl_immediate_mode (gp-0x5b88) is nonzero the thunk tail-jumps to gl_g_arcfi; otherwise it checks gl_dgl_table_is_remote (gp-0x5cb4), jumping to gl_d_arcfi when that is nonzero and to gl_g_arcfi when it is zero. The two targets sit at gp-0x79ac and gp-0x7cb8.

- `readcomponent` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68908
  **Inferred.** readcomponent has no flush prelude. It reads gl_immediate_mode through gp-0x5b88 and, if that is zero, gl_dgl_table_is_remote through gp-0x5cb4. It jumps to gl_d_readcomponent at gp-0x7198 only when the second word is nonzero; otherwise it jumps to gl_g_readcomponent at gp-0x66fc, using a jr with a nop in its delay slot.

- `gl_glx_link` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68948
  **Inferred.** Dispatch-only thunk for gl_glx_link: two flag reads and a choice between gl_g_gl_glx_link (GOT word gp-0x5db8, value 0xeccfcc8) and gl_d_gl_glx_link (GOT word gp-0x64c0, value 0xecaa5bc). gl_g_gl_glx_link is taken whenever gl_immediate_mode is nonzero or gl_dgl_table_is_remote is zero.

- `singlebuffer` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68988
  **Inferred.** A flush-first thunk for singlebuffer. Its prologue spills a0 to a3 and ra only when gl_inMoveDraw is set, then calls __iglooCloseMoveDrawFromTable through gp-0x6aac. The tail dispatch loads gl_g_singlebuffer from gp-0x6b98 into t9 as the default and swaps in gl_d_singlebuffer from gp-0x778c only for a zero gl_immediate_mode with a nonzero gl_dgl_table_is_remote.

- `makeobj` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68a10
  **Inferred.** makeobj at 0xec68a10 is 34 instructions: a conditional flush through gp-0x6aac keyed on gl_inMoveDraw, then a two-flag choice between gl_d_makeobj (gp-0x7880) and gl_g_makeobj (gp-0x69f4). The flags are gl_immediate_mode at gp-0x5b88 and gl_dgl_table_is_remote at gp-0x5cb4, read after the flush, and the jump is a plain jr with a nop in its delay slot.

- `devport` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68a98
  **Inferred.** For devport the code loads gl_immediate_mode and the remote-table flag gl_dgl_table_is_remote, then tail-jumps through t9. Only a clear immediate-mode word combined with a set remote-table word reaches gl_d_devport at gp-0x74d0; everything else reaches gl_g_devport at gp-0x6f60. No stack frame is built, so the arguments reach the target unchanged.

- `hgram` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68ad8
  **Inferred.** hgram has no flush prelude. It reads gl_immediate_mode through gp-0x5b88 and, if that is zero, gl_dgl_table_is_remote through gp-0x5cb4. It jumps to gl_d_hgram at gp-0x71cc only when the second word is nonzero; otherwise it jumps to gl_g_hgram at gp-0x6f78, using a jr with a nop in its delay slot.

- `texdef3d` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68b18
  **Inferred.** Dispatch-only thunk for texdef3d: two flag reads and a choice between gl_g_texdef3d (GOT word gp-0x5fc4, value 0xecbe0c4) and gl_d_texdef3d (GOT word gp-0x70dc, value 0xec5ee14). gl_g_texdef3d is taken whenever gl_immediate_mode is nonzero or gl_dgl_table_is_remote is zero.

- `mssize` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68b58
  **Inferred.** For mssize the code loads gl_immediate_mode and the remote-table flag gl_dgl_table_is_remote, then tail-jumps through t9. Only a clear immediate-mode word combined with a set remote-table word reaches gl_d_mssize at gp-0x7204; everything else reaches gl_g_mssize at gp-0x6b78. No stack frame is built, so the arguments reach the target unchanged.

- `drawmode` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68b98
  **Inferred.** Calls to drawmode go through a conditional flush and then a choice of target. The flush (gl_inMoveDraw at gp-0x5bec, flush routine at gp-0x6aac) saves the argument registers around its call. The choice reads gl_immediate_mode and gl_dgl_table_is_remote and lands on gl_d_drawmode (GOT gp-0x7460, 0xec50fd0) or gl_g_drawmode (GOT gp-0x6b6c, 0xec8d2e8).

- `getdisplaymode` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68c20
  **Inferred.** getdisplaymode is a dispatch thunk with a flush prelude. The prelude runs __iglooCloseMoveDrawFromTable (GOT word gp-0x6aac) whenever gl_inMoveDraw is nonzero, preserving a0-a3 in its 0x20-byte frame. Afterward the thunk picks gl_d_getdisplaymode (GOT word gp-0x78ec, value 0xec46448) if gl_immediate_mode is 0 and gl_dgl_table_is_remote is nonzero, and gl_g_getdisplaymode (GOT word gp-0x6bac, value 0xec8cc98) otherwise, and jumps to it without a frame of its own.

- `arcfs` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68ca8
  **Inferred.** Here the flush call comes first: a nonzero gl_inMoveDraw word triggers __iglooCloseMoveDrawFromTable through the slot at gp-0x6aac, with the four argument registers and ra spilled and restored around it. The target choice follows: gl_d_arcfs at gp-0x7734 needs gl_immediate_mode clear and gl_dgl_table_is_remote set, and every other state reaches gl_g_arcfs at gp-0x7cc0.

- `patch` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68d30
  **Inferred.** The stub for patch at 0xec68d30 tests gl_inMoveDraw first and, when it is set, calls the flush whose GOT word is gp-0x6aac, saving ra and a0-a3 on a 32-byte frame. Dispatch then reads gl_immediate_mode and gl_dgl_table_is_remote; the remote variant gl_d_patch (gp-0x7688) is selected only when the first is zero and the second nonzero, and the local variant gl_g_patch (gp-0x699c) in all other cases.

- `gl_glx_unlink` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68db8
  **Inferred.** gl_glx_unlink has no flush prelude. It reads gl_immediate_mode through gp-0x5b88 and, if that is zero, gl_dgl_table_is_remote through gp-0x5cb4. It jumps to gl_d_gl_glx_unlink at gp-0x64bc only when the second word is nonzero; otherwise it jumps to gl_g_gl_glx_unlink at gp-0x5db4, using a jr with a nop in its delay slot.

- `nurbssurface` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68df8
  **Inferred.** nurbssurface forwards to one of two implementations. Before forwarding, it conditionally flushes move-draw state through gl_inMoveDraw and __iglooCloseMoveDrawFromTable (GOT word gp-0x6aac). Two GOT words hold the candidates: gp-0x7314 holds gl_d_nurbssurface and gp-0x6a18 holds gl_g_nurbssurface. A zero gl_immediate_mode (gp-0x5b88) together with a nonzero gl_dgl_table_is_remote (gp-0x5cb4) selects the first.

- `newpup` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68e80
  **Inferred.** Read in order: gl_inMoveDraw (gp-0x5bec) nonzero means call the flush at gp-0x6aac with the arguments saved. Then if gl_immediate_mode (gp-0x5b88) is nonzero the thunk tail-jumps to gl_g_newpup; otherwise it checks gl_dgl_table_is_remote (gp-0x5cb4), jumping to gl_d_newpup when that is nonzero and to gl_g_newpup when it is zero. The two targets sit at gp-0x7498 and gp-0x6dbc.

- `wintit` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68f08
  **Inferred.** A flush-first thunk for wintit. Its prologue spills a0 to a3 and ra only when gl_inMoveDraw is set, then calls __iglooCloseMoveDrawFromTable through gp-0x6aac. The tail dispatch loads gl_g_wintit from gp-0x6c08 into t9 as the default and swaps in gl_d_wintit from gp-0x74dc only for a zero gl_immediate_mode with a nonzero gl_dgl_table_is_remote.

- `getheight` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec68f90
  **Inferred.** getheight at 0xec68f90 is 34 instructions: a conditional flush through gp-0x6aac keyed on gl_inMoveDraw, then a two-flag choice between gl_d_getheight (gp-0x78e4) and gl_g_getheight (gp-0x7d6c). The flags are gl_immediate_mode at gp-0x5b88 and gl_dgl_table_is_remote at gp-0x5cb4, read after the flush, and the jump is a plain jr with a nop in its delay slot.

- `getbuffer` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec69018
  **Inferred.** Calls to getbuffer go through a conditional flush and then a choice of target. The flush (gl_inMoveDraw at gp-0x5bec, flush routine at gp-0x6aac) saves the argument registers around its call. The choice reads gl_immediate_mode and gl_dgl_table_is_remote and lands on gl_d_getbuffer (GOT gp-0x7904, 0xec46174) or gl_g_getbuffer (GOT gp-0x7054, 0xec60f90).

- `deltag` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec690a0
  **Inferred.** deltag is a dispatch thunk with a flush prelude. The prelude runs __iglooCloseMoveDrawFromTable (GOT word gp-0x6aac) whenever gl_inMoveDraw is nonzero, preserving a0-a3 in its 0x20-byte frame. Afterward the thunk picks gl_d_deltag (GOT word gp-0x76dc, value 0xec4b020) if gl_immediate_mode is 0 and gl_dgl_table_is_remote is nonzero, and gl_g_deltag (GOT word gp-0x7a0c, value 0xec43110) otherwise, and jumps to it without a frame of its own.

- `pushattributes` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec69128
  **Inferred.** Here the flush call comes first: a nonzero gl_inMoveDraw word triggers __iglooCloseMoveDrawFromTable through the slot at gp-0x6aac, with the four argument registers and ra spilled and restored around it. The target choice follows: gl_d_pushattributes at gp-0x77f8 needs gl_immediate_mode clear and gl_dgl_table_is_remote set, and every other state reaches gl_g_pushattributes at gp-0x7f60.

- `gettp` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec691b0
  **Inferred.** Dispatch-only thunk for gettp: two flag reads and a choice between gl_g_gettp (GOT word gp-0x5f90, value 0xecc507c) and gl_d_gettp (GOT word gp-0x76f0, value 0xec4acb0). gl_g_gettp is taken whenever gl_immediate_mode is nonzero or gl_dgl_table_is_remote is zero.

- `getlstyle` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec691f0
  **Inferred.** The stub for getlstyle at 0xec691f0 tests gl_inMoveDraw first and, when it is set, calls the flush whose GOT word is gp-0x6aac, saving ra and a0-a3 on a 32-byte frame. Dispatch then reads gl_immediate_mode and gl_dgl_table_is_remote; the remote variant gl_d_getlstyle (gp-0x78d8) is selected only when the first is zero and the second nonzero, and the local variant gl_g_getlstyle (gp-0x6eec) in all other cases.

- `endcurve` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec69278
  **Inferred.** For endcurve the code loads gl_immediate_mode and the remote-table flag gl_dgl_table_is_remote, then tail-jumps through t9. Only a clear immediate-mode word combined with a set remote-table word reaches gl_d_endcurve at gp-0x7244; everything else reaches gl_g_endcurve at gp-0x6a30. No stack frame is built, so the arguments reach the target unchanged.

- `curstype` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec692b8
  **Inferred.** curstype forwards to one of two implementations. Before forwarding, it conditionally flushes move-draw state through gl_inMoveDraw and __iglooCloseMoveDrawFromTable (GOT word gp-0x6aac). Two GOT words hold the candidates: gp-0x7464 holds gl_d_curstype and gp-0x5e04 holds gl_g_curstype. A zero gl_immediate_mode (gp-0x5b88) together with a nonzero gl_dgl_table_is_remote (gp-0x5cb4) selects the first.

- `editobj` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec69340
  **Inferred.** Read in order: gl_inMoveDraw (gp-0x5bec) nonzero means call the flush at gp-0x6aac with the arguments saved. Then if gl_immediate_mode (gp-0x5b88) is nonzero the thunk tail-jumps to gl_g_editobj; otherwise it checks gl_dgl_table_is_remote (gp-0x5cb4), jumping to gl_d_editobj when that is nonzero and to gl_g_editobj when it is zero. The two targets sit at gp-0x7928 and gp-0x69e0.

- `gRGBcolor` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec693c8
  **Inferred.** A flush-first thunk for gRGBcolor. Its prologue spills a0 to a3 and ra only when gl_inMoveDraw is set, then calls __iglooCloseMoveDrawFromTable through gp-0x6aac. The tail dispatch loads gl_g_gRGBcolor from gp-0x7044 into t9 as the default and swaps in gl_d_gRGBcolor from gp-0x78a4 only for a zero gl_immediate_mode with a nonzero gl_dgl_table_is_remote.

- `unqdevice` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec69450
  **Inferred.** unqdevice at 0xec69450 is 34 instructions: a conditional flush through gp-0x6aac keyed on gl_inMoveDraw, then a two-flag choice between gl_d_unqdevice (gp-0x7700) and gl_g_unqdevice (gp-0x6cc4). The flags are gl_immediate_mode at gp-0x5b88 and gl_dgl_table_is_remote at gp-0x5cb4, read after the flush, and the jump is a plain jr with a nop in its delay slot.

- `freepup` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec694d8
  **Inferred.** Tail-dispatch stub for `freepup`. A nonzero word at `gl_inMoveDraw` makes it call `__iglooCloseMoveDrawFromTable` with a0 to a3 and ra kept in a 32-byte frame. The word at `gl_immediate_mode` then picks `gl_g_freepup` when nonzero; when it is zero, the word at `gl_dgl_table_is_remote` picks `gl_d_freepup` if nonzero and `gl_g_freepup` if not. The jump is a `jr t9` with a nop in its delay slot, so the arguments reach the chosen target unchanged.

- `addtopup` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec69560
  **Inferred.** `addtopup` runs its move-draw test first, and the closer call is the only point where it builds a frame. Immediate mode set sends control to `gl_g_addtopup`; a clear word with `gl_dgl_table_is_remote` set sends it to `gl_d_addtopup`, and a clear remote word falls through to `gl_g_addtopup`. The two candidate pointers sit in GOT slots at $gp-0x6dd4 and $gp-0x70f0, so the choice is made on each call.

- `convolve` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec695e8
  **Inferred.** The `convolve` entry keeps a0 through a3 on a 32-byte frame across the optional `__iglooCloseMoveDrawFromTable` call that a set `gl_inMoveDraw` triggers. It then tests `gl_immediate_mode`: nonzero jumps to `gl_g_convolve`, and zero jumps to `gl_d_convolve` only when `gl_dgl_table_is_remote` is also nonzero.

- `getscrmask` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec69670
  **Inferred.** This is the `getscrmask` dispatcher. Its prologue rebuilds `$gp` from `$t9` at the entry address, and then the move-draw word can trigger the `__iglooCloseMoveDrawFromTable` hook. The final target is `gl_g_getscrmask` for immediate mode and for the clear-remote case, and `gl_d_getscrmask` only for zero immediate mode with the remote word set.

- `window` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec696f8
  **Inferred.** `window` tail-jumps into `gl_g_window` or `gl_d_window`. Before that, a nonzero `gl_inMoveDraw` word causes a call to `__iglooCloseMoveDrawFromTable`, and the four argument registers and ra are saved and restored around it. The selection keys on `gl_immediate_mode` and then `gl_dgl_table_is_remote`, with `gl_g_window` as the default.

- `istexloaded` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec69780
  **Inferred.** The 16-instruction `istexloaded` stub has no move-draw hook. It loads `gl_immediate_mode` straight away and jumps to `gl_g_istexloaded` for a nonzero word. Otherwise it reads `gl_dgl_table_is_remote` and jumps to `gl_d_istexloaded` when that word is nonzero, and to `gl_g_istexloaded` when it is zero.

- `smoothline` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec697c0
  **Inferred.** For `smoothline`, the move-draw word gates one call to `__iglooCloseMoveDrawFromTable`. Afterwards a set `gl_immediate_mode` sends control to `gl_g_smoothline`. A clear immediate mode with `gl_dgl_table_is_remote` set sends it to `gl_d_smoothline`, and clear for both sends it to `gl_g_smoothline`.

- `newtag` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec69848
  **Inferred.** `newtag` forwards to `gl_g_newtag` by default. It runs the move-draw hook when `gl_inMoveDraw` is nonzero and then checks `gl_immediate_mode`. Only the immediate-mode-clear, remote-set case takes the `gl_d_newtag` pointer, loaded from GOT offset $gp-0x7698.

- `curson` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec698d0
  **Inferred.** The `curson` dispatcher saves its argument registers in a 0x20-byte frame when the move-draw hook runs. Immediate mode then picks `gl_g_curson` (GOT offset $gp-0x5df4), and the remote-table word picks `gl_d_curson` (GOT offset $gp-0x7954) only when immediate mode is zero.

- `ortho2` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec69958
  **Inferred.** `ortho2` jumps to `gl_g_ortho2` unless the immediate-mode word is zero and the remote-table word is nonzero, in which case it jumps to `gl_d_ortho2`, loaded from the slot at $gp-0x7848. A nonzero `gl_inMoveDraw` runs `__iglooCloseMoveDrawFromTable` first.

- `RGBcursor` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec699e0
  **Inferred.** `RGBcursor` is a 16-word tail jump with no hook at all. Immediate mode set loads `gl_g_RGBcursor`. Otherwise the branch goes to `gl_d_RGBcursor` when `gl_dgl_table_is_remote` is set, and back to `gl_g_RGBcursor` when it is clear.

- `gl_lrectproc` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec69a20
  **Inferred.** `gl_lrectproc` begins by testing `gl_inMoveDraw`, and a set word calls `__iglooCloseMoveDrawFromTable`. It ends with a `jr t9` to `gl_g_gl_lrectproc` or `gl_d_gl_lrectproc`, chosen by the immediate-mode word and then the remote-table word.

- `gl_glx_winset` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec69aa8
  **Inferred.** `gl_glx_winset` has no move-draw test, so it reads `gl_immediate_mode` first. Nonzero jumps to `gl_g_gl_glx_winset` (GOT offset $gp-0x5db0). Zero reads `gl_dgl_table_is_remote`; nonzero jumps to `gl_d_gl_glx_winset` at $gp-0x64b8, and zero falls to the g target.

- `endpick` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec69ae8
  **Inferred.** Move-draw word first, with the closer call behind it when set. `endpick` jumps to `gl_g_endpick` when immediate mode is set or the remote word is clear, and to `gl_d_endpick` only when immediate mode is clear and the remote word is set. The pointers come from GOT slots at $gp-0x6964 and $gp-0x7924.

- `endtrim` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec69b70
  **Inferred.** `endtrim` runs the hook for a set `gl_inMoveDraw` and then routes on `gl_immediate_mode`. Its two pointers are `gl_g_endtrim` (GOT slot $gp-0x6a24) and `gl_d_endtrim` (slot $gp-0x7318), and the second is used only for clear immediate mode with the table-remote flag set.

- `getshade` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec69bf8
  **Inferred.** The `getshade` stub calls the move-draw closer when `gl_inMoveDraw` is nonzero. Its target pointers are `gl_g_getshade` (slot $gp-0x7014) and `gl_d_getshade` (slot $gp-0x748c). It picks the d-pointer only if `gl_immediate_mode` is clear and `gl_dgl_table_is_remote` is set.

- `gewrite` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec69c80
  **Inferred.** `gewrite` has no hook and is 16 instructions long. It tests `gl_immediate_mode` first and branches to `gl_g_gewrite`, and the remote-table word can divert it to `gl_d_gewrite` through the GOT slot at $gp-0x76b0.

- `qgetfd` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec69cc0
  **Inferred.** `qgetfd` checks `gl_inMoveDraw` and runs the hook when it is set, saving a0 through a3 and ra. The tail jump then goes to `gl_g_qgetfd` (slot $gp-0x6c88), except when immediate mode is clear and the table-remote word is set, which picks `gl_d_qgetfd` (slot $gp-0x70d4).

- `bgntrim` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec69d48
  **Inferred.** `bgntrim` conditionally calls `__iglooCloseMoveDrawFromTable` after the move-draw test. Immediate mode selects `gl_g_bgntrim` at $gp-0x6a28, and a clear immediate mode with `gl_dgl_table_is_remote` set selects `gl_d_bgntrim` at $gp-0x731c.

- `getwritemask` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec69dd0
  **Inferred.** A move-draw test, an optional hook, then the flag pair. `gl_g_getwritemask` (slot $gp-0x7008) is the default target, and `gl_d_getwritemask` (slot $gp-0x78b4) is taken for immediate-mode-clear with remote-table-set. The stub saves a0 through a3 in its own frame before the hook call, so the hook cannot clobber them.

- `lrectwrite` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec69e58
  **Inferred.** `lrectwrite` keeps the move-draw test and hook in front of its selector. A set `gl_immediate_mode` sends control to `gl_g_lrectwrite` (slot $gp-0x68fc), and a clear one sends it to `gl_d_lrectwrite` (slot $gp-0x70c4) only when `gl_dgl_table_is_remote` is nonzero.

- `circf` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec69ee0
  **Inferred.** `circf` checks `gl_inMoveDraw`, calls the closer when it is set, and then tail-jumps through `gl_g_circf` (slot $gp-0x7ce8) or `gl_d_circf` (slot $gp-0x7984), following the immediate-mode and remote-table rule.

- `circi` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec69f68
  **Inferred.** The `circi` stub's target choice is `gl_g_circi` at $gp-0x7d08 or `gl_d_circi` at $gp-0x797c. The move-draw closer runs ahead of it when `gl_inMoveDraw` is nonzero, inside a 0x20-byte frame.

- `nurbscurve` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec69ff0
  **Inferred.** `nurbscurve` tests `gl_inMoveDraw` and calls `__iglooCloseMoveDrawFromTable` if it is set. It then jumps to `gl_g_nurbscurve` (slot $gp-0x6a1c) when immediate mode is nonzero, to `gl_d_nurbscurve` (slot $gp-0x7310) when immediate mode is zero and the remote-table word is nonzero, and to `gl_g_nurbscurve` otherwise.

- `cursoff` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6a078
  **Inferred.** `cursoff` is a dispatcher with the move-draw hook in front. Its two pointers are `gl_g_cursoff` (slot $gp-0x5df0) and `gl_d_cursoff` (slot $gp-0x7958). Immediate mode set, or the remote word clear, leaves the g-pointer in place.

- `delobj` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6a100
  **Inferred.** `delobj` runs the move-draw hook before it chooses between `gl_g_delobj` (slot $gp-0x7a10) and `gl_d_delobj` (slot $gp-0x7940). The d-pointer needs immediate mode clear and `gl_dgl_table_is_remote` nonzero.

- `bgncurve` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6a188
  **Inferred.** `bgncurve` calls `__iglooCloseMoveDrawFromTable` through the move-draw test when `gl_inMoveDraw` is set. Its selector then uses `gl_g_bgncurve` (slot $gp-0x6a34) and `gl_d_bgncurve` (slot $gp-0x7248), read from the immediate-mode and remote-table words.

- `endfullscrn` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6a210
  **Inferred.** The `endfullscrn` stub calls the move-draw hook for a set `gl_inMoveDraw`. Its tail target is `gl_g_endfullscrn` (slot $gp-0x6724), except in the clear-immediate, set-remote case, which uses `gl_d_endfullscrn` (slot $gp-0x7490).

- `setnurbsproperty` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6a298
  **Inferred.** `setnurbsproperty` jumps to `gl_g_setnurbsproperty` (slot $gp-0x6a0c) with immediate mode set, and to `gl_d_setnurbsproperty` (slot $gp-0x7308) only when the remote-table word is set and immediate mode is clear. The move-draw word triggers the closer call beforehand.

- `getsize` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6a320
  **Inferred.** `getsize` branches on `gl_immediate_mode` to `gl_g_getsize` (slot $gp-0x6bf8). The alternate target `gl_d_getsize` (slot $gp-0x7518) is loaded only when `gl_dgl_table_is_remote` is nonzero. A nonzero `gl_inMoveDraw` runs the hook first.

- `mapcolor` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6a3a8
  **Inferred.** After its move-draw hook, `mapcolor` takes the two-flag route to `gl_g_mapcolor` (slot $gp-0x6d90) or `gl_d_mapcolor` (slot $gp-0x7878). It returns to the caller through the tail jump, so no return address is pushed for the target.

- `deflinestyle` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6a430
  **Inferred.** The move-draw hook runs first for `deflinestyle`. A nonzero immediate mode jumps to `gl_g_deflinestyle` (slot $gp-0x6f00). Zero with the table-remote word set jumps to `gl_d_deflinestyle` (slot $gp-0x7948). Every other case jumps to the g-pointer.

- `pixeltransfer` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6a4b8
  **Inferred.** `pixeltransfer` has no hook. It reads `gl_immediate_mode`, and a nonzero value goes to `gl_g_pixeltransfer` (slot $gp-0x6fec). Otherwise `gl_dgl_table_is_remote` decides between `gl_d_pixeltransfer` (slot $gp-0x71c4) and the g-pointer.

- `iconsize` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6a4f8
  **Inferred.** `iconsize` runs the move-draw hook, then selects `gl_g_iconsize` (slot $gp-0x6d50) or `gl_d_iconsize` (slot $gp-0x7358) from the immediate-mode and remote-table words.

- `spclos` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6a580
  **Inferred.** `spclos` is a 16-instruction stub with no move-draw test. Immediate mode chooses `gl_g_spclos` (slot $gp-0x6820), and clear immediate mode with the remote word set chooses `gl_d_spclos` (slot $gp-0x75bc).

- `gentag` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6a5c0
  **Inferred.** `gentag` calls `__iglooCloseMoveDrawFromTable` when `gl_inMoveDraw` is nonzero, keeping the argument registers in its stack frame. It then tail-jumps to `gl_g_gentag` (slot $gp-0x7074) or, when immediate mode is zero and the table-remote flag is set, to `gl_d_gentag` (slot $gp-0x7908).

- `monobuffer` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6a648
  **Inferred.** `monobuffer` has no hook and is 16 instructions long. It branches on `gl_immediate_mode` to `gl_g_monobuffer` (slot $gp-0x6b80), and on zero with `gl_dgl_table_is_remote` set to `gl_d_monobuffer` (slot $gp-0x71f8).

- `writepixels` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6a688
  **Inferred.** Without any move-draw check, `writepixels` tests `gl_immediate_mode` and goes to `gl_g_writepixels` (slot $gp-0x68ec). Clear immediate mode with a nonzero `gl_dgl_table_is_remote` sends it to `gl_d_writepixels` (slot $gp-0x7764).

- `circs` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6a6c8
  **Inferred.** `circs` hooks `__iglooCloseMoveDrawFromTable` on a set `gl_inMoveDraw`. The selection after the hook leads to `gl_g_circs` (slot $gp-0x7d10) or `gl_d_circs` (slot $gp-0x7714), depending on the immediate-mode and remote-table words.

- `strwidth` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6a750
  **Inferred.** `strwidth` ends in a tail jump to `gl_g_strwidth` (slot $gp-0x7d58) or `gl_d_strwidth` (slot $gp-0x7788). The move-draw hook is the first thing it does when `gl_inMoveDraw` holds a nonzero value.

- `pupmode` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6a7d8
  **Inferred.** Reads the gate word at 0xecdfba0 first, and when it is set calls the hook at 0xec8fc18 with a0 to a3 spilled to the frame and reloaded afterwards. The word at 0xecec8c8 then decides the tail jump: nonzero goes to 0xeca1750. Zero sends it to 0xec547fc when the word at 0xecdc220 is set, and to 0xeca1750 otherwise.

- `defpup` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6a860
  **Inferred.** Runs the gated call to 0xec8fc18 when 0xecdfba0 is nonzero, keeping the four argument registers. Dispatch then tests 0xecec8c8 and, if it is clear, 0xecdc220. The target is 0xec5e520 only when 0xecec8c8 is clear and 0xecdc220 is set. Every other case goes to 0xec7bfcc.

- `winattach` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6a8e8
  **Inferred.** The hook at 0xec8fc18 is called only when the word at 0xecdfba0 is nonzero. A nonzero word at 0xecec8c8 jumps to 0xec88754. With that word clear, a nonzero word at 0xecdc220 jumps to 0xec4f9e4, and a clear one jumps to 0xec88754.

- `defrasterfont` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6a970
  **Inferred.** Gated hook at 0xec8fc18 on the word at 0xecdfba0, arguments preserved. Then the flag at 0xecec8c8 picks 0xec37440 when set. When it is clear, the flag at 0xecdc220 picks 0xec45958 if set and 0xec37440 if not.

- `getgconfig` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6a9f8
  **Inferred.** No hook: this 64-byte stub never reads the gate word. It jumps to 0xec60570 when the word at 0xecec8c8 is nonzero. Otherwise it jumps to 0xec572f4 when the word at 0xecdc220 is nonzero and to 0xec60570 when that word is zero.

- `acsize` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6aa38
  **Inferred.** A set gate word at 0xecdfba0 sends the arguments through the hook at 0xec8fc18 before dispatch. The two flags at 0xecec8c8 and 0xecdc220 then choose between 0xec35ad0 and 0xec54f00. The fall-through when both words are clear is 0xec35ad0.

- `gl_rectzoomoffset` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6aac0
  **Inferred.** A 64-byte stub with no gate and no hook. A nonzero word at 0xecec8c8 jumps to 0xec617ac. A clear word there with 0xecdc220 set jumps to 0xecaa8a4, and with both words clear it jumps to 0xec617ac.

- `getcursor` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ab00
  **Inferred.** Before any branch, the hook at 0xec8fc18 runs if 0xecdfba0 holds a nonzero word, with the argument registers saved and restored. Next, 0xecec8c8 nonzero leads to 0xecccf34. Clear there and set at 0xecdc220 leads to 0xec46320. Both clear leads to 0xecccf34.

- `setvaluator` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ab88
  **Inferred.** The gate word 0xecdfba0 controls one call to the hook 0xec8fc18. Dispatch goes to 0xec49598 only when 0xecec8c8 is clear and 0xecdc220 is set. Every other case goes to 0xec870c0.

- `lrectread` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ac10
  **Inferred.** Gate 0xecdfba0 guards the hook at 0xec8fc18. A set word at 0xecec8c8 selects 0xec9929c. If that word is clear, a set word at 0xecdc220 selects 0xec5f2bc, and otherwise the call goes to 0xec9929c.

- `windepth` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ac98
  **Inferred.** The hook at 0xec8fc18 is reached only through the gate at 0xecdfba0, which passes a0 to a3 through unchanged. The routine then sends the call to 0xec8bd64 whenever 0xecec8c8 is nonzero. With that word zero it goes to 0xec5de6c if 0xecdc220 is nonzero, and otherwise to 0xec8bd64.

- `qdevice` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ad20
  **Inferred.** Gated hook call at 0xec8fc18 when 0xecdfba0 is set. Flag 0xecec8c8 being set gives 0xec85fcc as the target. Flag 0xecec8c8 clear and flag 0xecdc220 set gives 0xec4aa04. Both clear gives 0xec85fcc.

- `lstrwidth` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ada8
  **Inferred.** The word at 0xecdfba0 gates one call to the hook 0xec8fc18. The word at 0xecec8c8 chooses 0xec38040 when nonzero. When it is zero and the word at 0xecdc220 is nonzero, the target is 0xec5648c, and when both are zero the target is 0xec38040.

- `pwlcurve` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ae30
  **Inferred.** Gate word 0xecdfba0 governs the pre-dispatch call to 0xec8fc18. Dispatch goes to 0xec91668 if 0xecec8c8 is set. If it is clear and 0xecdc220 is set, dispatch goes to 0xec54194 instead, and if both are clear it goes to 0xec91668.

- `ilbuffer` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6aeb8
  **Inferred.** Gateless 64-byte stub. A nonzero word at 0xecec8c8 jumps to 0xec747b8. With that word zero, a nonzero word at 0xecdc220 jumps to 0xec579d4. When both are zero it jumps to 0xec747b8.

- `swinopen` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6aef8
  **Inferred.** Hook 0xec8fc18 runs first when 0xecdfba0 is nonzero, with a0 to a3 saved in a 0x20-byte frame. The flags then pick the jump: 0xec8bb20 if 0xecec8c8 is set, 0xec5dea0 if only 0xecdc220 is set, and 0xec8bb20 if neither is set.

- `getorigin` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6af80
  **Inferred.** Set 0xecdfba0 means the hook at 0xec8fc18 is called before the jump. Set 0xecec8c8 means a jump to 0xec8b520. Clear 0xecec8c8 with set 0xecdc220 means a jump to 0xec4f3ec. Both clear means 0xec8b520.

- `winposition` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6b008
  **Inferred.** The gate at 0xecdfba0 is tested first, calling 0xec8fc18 with the arguments preserved when it is nonzero. Then 0xecec8c8 nonzero selects 0xec8b6b0. Otherwise 0xecdc220 nonzero selects 0xec4fad8, and the default is 0xec8b6b0.

- `chunksize` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6b090
  **Inferred.** Nonzero 0xecdfba0 calls the hook 0xec8fc18 and restores the argument registers after it. The jump target is 0xec93400 while 0xecec8c8 is nonzero. When that word is zero and 0xecdc220 is nonzero the target is 0xec4a6f4, and otherwise it is 0xec93400.

- `crv` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6b118
  **Inferred.** The routine calls 0xec8fc18 under the gate 0xecdfba0, then tests 0xecec8c8. Set means 0xec40f10. Clear and with 0xecdc220 set means 0xec4abc4. Clear and with 0xecdc220 clear means 0xec40f10.

- `getlwidth` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6b1a0
  **Inferred.** The hook at 0xec8fc18 is gated by the word at 0xecdfba0 and runs before any target is chosen. A nonzero word at 0xecec8c8 leads to 0xec6145c. A zero word there leads to 0xec466b8 if the word at 0xecdc220 is nonzero, and to 0xec6145c if it is zero.

- `getnurbsproperty` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6b228
  **Inferred.** Hook at 0xec8fc18 under the 0xecdfba0 gate, arguments spilled and restored. Flag 0xecec8c8 set jumps to 0xec93020. Flag 0xecec8c8 clear with 0xecdc220 set jumps to 0xec54368. Both clear jumps to 0xec93020.

- `defpattern` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6b2b0
  **Inferred.** A set word at 0xecdfba0 runs the hook 0xec8fc18 before dispatch. Dispatch is to 0xec958f4 when 0xecec8c8 holds a nonzero word. A zero word there with a nonzero 0xecdc220 dispatches to 0xec4e738, and a zero word at both sends it to 0xec958f4.

- `underlay` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6b338
  **Inferred.** Gate 0xecdfba0 decides whether the hook at 0xec8fc18 runs, with the arguments kept across it. Nonzero 0xecec8c8 jumps to 0xec35a44. Zero 0xecec8c8 with nonzero 0xecdc220 jumps to 0xec512ec, and both zero jumps to 0xec35a44.

- `getmultisample` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6b3c0
  **Inferred.** This 64-byte stub has no gate. It tests 0xecec8c8 and jumps to 0xec90658 when that word is nonzero. A zero word there with a nonzero 0xecdc220 jumps to 0xec574a8, and otherwise the jump is to 0xec90658.

- `gl_ms_init_pixels` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6b400
  **Inferred.** Gateless 64-byte stub with two flags. The word at 0xecec8c8 chooses 0xec906a8 when it is set. When it is clear, the word at 0xecdc220 chooses 0xecaa840 if set, and 0xec906a8 if not.

- `getmap` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6b440
  **Inferred.** The routine first calls the hook at 0xec8fc18 whenever 0xecdfba0 is nonzero. Then it jumps to 0xec61014 when 0xecec8c8 is nonzero. With 0xecec8c8 zero it jumps to 0xec46720 if 0xecdc220 is nonzero, and to 0xec61014 if that word is zero too.

- `blkqread` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6b4c8
  **Inferred.** The gate word 0xecdfba0 guards the hook at 0xec8fc18. A set word at 0xecec8c8 jumps to 0xec87744. A clear one with 0xecdc220 set jumps to 0xec5e164, and a clear pair falls back to 0xec87744.

- `genobj` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6b550
  **Inferred.** Before the branch, the gated hook at 0xec8fc18 runs when 0xecdfba0 is set, saving a0 to a3 around it. The two-flag test then picks 0xec60190 when 0xecec8c8 is set. Otherwise 0xec460a4 is chosen if 0xecdc220 is set, and 0xec60190 if neither is set.

- `nmode` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6b5d8
  **Inferred.** Three targets. The gate 0xecdfba0 calls the hook 0xec8fc18 first. A nonzero word at 0xecec8c8 jumps to 0xec90a50. Otherwise a nonzero gl_openobjhdr word (0xecdd624) jumps to 0xec90ab0, and if that is also zero the jump is to 0xec54b60.

- `cmov2s` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6b660
  **Inferred.** The hook at 0xec8fc18 runs only when the word at 0xecdfba0 is nonzero. The word at 0xecec8c8 then selects 0xec3bf84 if set. When it is clear, the gl_openobjhdr word at 0xecdd624 selects 0xec3c014 if set, and 0xec4a884 if clear.

- `t4s` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6b6e8
  **Inferred.** A 64-byte stub with no gate. Nonzero 0xecec8c8 jumps to 0xecadcb0. Clear 0xecec8c8 with nonzero gl_openobjhdr (0xecdd624) jumps to 0xecadcf0. If both are clear it jumps to 0xec56bb0.

- `pnti` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6b728
  **Inferred.** Gate 0xecdfba0 controls the call to 0xec8fc18 made with the argument registers preserved. Set 0xecec8c8 jumps to 0xec9dc6c. Clear 0xecec8c8 with set gl_openobjhdr jumps to 0xec9dd78. With both clear the jump is to 0xec47d38.

- `pntsmooth` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6b7b0
  **Inferred.** If 0xecdfba0 is nonzero the stub calls 0xec8fc18 first. Then 0xecec8c8 nonzero jumps to 0xecb224c. With that word zero, a nonzero gl_openobjhdr word jumps to 0xecb22ac, and a zero one jumps to 0xec53754.

- `pclos` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6b838
  **Inferred.** No gate and no hook in this 64-byte stub. The word at 0xecec8c8 nonzero means a jump to 0xec9d084. Zero there with the gl_openobjhdr word nonzero means a jump to 0xec9d0c4. With both zero, the jump goes to 0xec4bd3c.

- `polys` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6b878
  **Inferred.** Gate word 0xecdfba0 governs one call to 0xec8fc18 before dispatch. Dispatch is 0xec9ee54 when 0xecec8c8 is nonzero. When it is zero, dispatch is 0xec9efdc if gl_openobjhdr is nonzero, and 0xec4c38c if it is zero.

- `polfi` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6b900
  **Inferred.** The hook 0xec8fc18 is called only if the word at 0xecdfba0 is set, keeping a0 to a3. The word at 0xecec8c8 nonzero gives 0xeca0c64. Zero there with gl_openobjhdr nonzero gives 0xeca0de8, and both zero gives 0xec48154.

- `depthcue` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6b988
  **Inferred.** Gated call to the hook at 0xec8fc18 when 0xecdfba0 is nonzero. The target is 0xec43838 while 0xecec8c8 is nonzero. With 0xecec8c8 clear, a nonzero gl_openobjhdr word selects 0xec4389c, and otherwise the target is 0xec4b088.

- `sboxfi` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ba10
  **Inferred.** The routine tests the gate at 0xecdfba0 and calls 0xec8fc18 when it is set. Flag 0xecec8c8 nonzero jumps to 0xeca4654. Clear 0xecec8c8 with nonzero gl_openobjhdr jumps to 0xeca478c, and clear for both jumps to 0xec53994.

- `zclear` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ba98
  **Inferred.** Gate 0xecdfba0 guards a call to the hook 0xec8fc18. The routine jumps to 0xec3b46c when 0xecec8c8 holds a nonzero word. With that word zero it jumps to 0xec3b4e4 if gl_openobjhdr is nonzero, and to 0xec4ea88 if it is zero.

- `pnts` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6bb20
  **Inferred.** Dispatches through three GOT slots. When the word that the pointer at gp-0x5bec addresses is nonzero, the stub first calls the function pointer at gp-0x6aac with a0 to a3 spilled to a 0x20-byte frame. It then tail-jumps to the slot at gp-0x67f8 if the word behind gp-0x5b88 is nonzero, to gp-0x67f4 if the word behind gp-0x52dc is nonzero, and to gp-0x763c otherwise.

- `czclear` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6bba8
  **Inferred.** Runs an optional hook and then picks one of three tail targets. The hook at gp-0x6aac is called only while the pointer at gp-0x5bec addresses a nonzero word, and the argument registers survive that call. Afterwards the stub jumps to gp-0x7c1c, gp-0x7c18 or gp-0x73ec, decided by the two flag words behind gp-0x5b88 and gp-0x52dc in that order.

- `scrsubdivide` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6bc30
  **Inferred.** Hands the call to one of three slots after a guarded hook. The hook pointer lives at gp-0x6aac and runs when the pointer at gp-0x5bec reaches a nonzero word, with ra and the four argument registers saved across it. The jump target is gp-0x7c6c, gp-0x7ca0 or gp-0x726c, the first chosen by the flag behind gp-0x5b88 and the second by the flag behind gp-0x52dc.

- `bbox2` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6bcb8
  **Inferred.** A pre-call hook sits in front of a two-flag jump. Nonzero data behind gp-0x5bec makes the stub call gp-0x6aac, preserving ra and a0 to a3 in a 0x20-byte frame. The routine then jumps to gp-0x7e90 when the gp-0x5b88 flag word is set, to gp-0x7e8c when the gp-0x52dc flag word is set, and to gp-0x799c when neither is.

- `cmov` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6bd40
  **Inferred.** Reads the pointer at gp-0x5bec, and when it leads to a nonzero word the stub calls the function at gp-0x6aac after spilling the argument registers. Next it takes gp-0x7bbc as the target if the word behind gp-0x5b88 is nonzero, gp-0x7bb8 if the word behind gp-0x52dc is nonzero, and gp-0x796c otherwise. On the jump path ra reaches the target unchanged.

- `zfunction` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6bdc8
  **Inferred.** Only the hook path builds a frame here. A nonzero word behind gp-0x5bec causes a call through gp-0x6aac, and a0 to a3 plus ra are stored at sp+0 to sp+0x10 for it. The tail jump lands on gp-0x5d04 when the gp-0x5b88 flag word is nonzero, gp-0x5d00 when the gp-0x52dc flag word is nonzero, and gp-0x7368 when both are zero.

- `polfs` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6be50
  **Inferred.** Forwards to one of three GOT entries and calls a hook first when the guard word is set. The guard is the pointer at gp-0x5bec and the hook is the pointer at gp-0x6aac. Flag words behind gp-0x5b88 and gp-0x52dc select gp-0x6768, gp-0x6764 or gp-0x7664 as the target.

- `linewidthf` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6bed8
  **Inferred.** A two-flag selector with a guarded hook. The hook at gp-0x6aac is called after the four argument registers are stored into the 0x20-byte frame, but only when the word behind gp-0x5bec is nonzero. Targets are gp-0x7f20 when the gp-0x5b88 word is set, gp-0x7f1c when the gp-0x52dc word is set, and gp-0x7258 when neither is.

- `rpdr` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6bf60
  **Inferred.** A 64-byte selector with no hook and no frame. It reads the flag words behind gp-0x5b88 and gp-0x52dc and loads one of gp-0x6528, gp-0x6524 or gp-0x75fc into t9 for the closing jr. Because it never writes a0 to a3 or ra, the chosen target receives the caller's registers as they arrived.

- `rect` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6bfa0
  **Inferred.** The guard is the pointer at gp-0x5bec and the hook is the pointer at gp-0x6aac, with the argument registers spilled around the call. Dispatch then reads gp-0x5b88 and gp-0x52dc. The three slots it can jump to are gp-0x66dc, gp-0x66d8 and gp-0x77d4.

- `sboxfs` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6c028
  **Inferred.** When the pointer at gp-0x5bec leads to a nonzero word, the stub spills a0 to a3 and calls the function pointer at gp-0x6aac. After the call the flags behind gp-0x5b88 and gp-0x52dc are checked and the matching slot, gp-0x6658 or gp-0x6654, is entered. With both flags clear it enters gp-0x7328.

- `c3f` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6c0b0
  **Inferred.** This 64-byte body has no hook and never writes the argument registers. It loads gp-0x62e0, gp-0x62dc and gp-0x7408 into t9 and selects among them with the flags behind gp-0x5b88 and gp-0x52dc, then jumps.

- `splf2i` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6c0f0
  **Inferred.** After an optional, guarded call through gp-0x6aac, the routine jumps to gp-0x6144 if the gp-0x5b88 flag is nonzero, to gp-0x6140 if the gp-0x52dc flag is nonzero, and to gp-0x75ac otherwise. The frame it builds for the hook is 0x20 bytes and holds a0 to a3 and ra.

- `movei` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6c178
  **Inferred.** Runs the hook at gp-0x6aac only when the word behind gp-0x5bec is nonzero, and saves the argument registers around it. Two flags then pick gp-0x6b18, gp-0x6b14 or gp-0x7860 as the tail target, the first being the gp-0x5b88 check.

- `pmv2i` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6c200
  **Inferred.** The hook at gp-0x6aac runs only when the pointer at gp-0x5bec addresses a nonzero word, and otherwise the frame is never written. The final jump goes to gp-0x68b0 for the gp-0x5b88 flag, gp-0x68ac for the gp-0x52dc flag, and gp-0x764c when neither is set.

- `c3i` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6c288
  **Inferred.** A pure selector of 16 instructions. The two flags behind gp-0x5b88 and gp-0x52dc are tested in turn, and the jump goes to gp-0x62ec, gp-0x62e8 or gp-0x7404 depending on the result.

- `rcrvn` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6c2c8
  **Inferred.** Runs the hook first, guarded by the pointer at gp-0x5bec, invoking gp-0x6aac with a0 to a3 preserved. The tail target is gp-0x7a78 if the gp-0x5b88 flag word is nonzero, gp-0x7a74 if the gp-0x52dc flag word is nonzero, and gp-0x74c0 otherwise.

- `lmbind` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6c350
  **Inferred.** Two flag words are read through pointers at gp-0x5b88 and gp-0x52dc, and one of gp-0x6ea0, gp-0x6e9c or gp-0x7430 becomes the jump target. The 64-byte body allocates no stack and makes no direct call.

- `setpattern` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6c390
  **Inferred.** A nonzero word at the pointer gp-0x5bec makes the stub call gp-0x6aac, with ra and the four argument registers spilled and then reloaded. The routine ends in gp-0x697c, gp-0x6978 or gp-0x7568, chosen by the gp-0x5b88 and gp-0x52dc flag words.

- `draw2` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6c418
  **Inferred.** A 16-instruction selector with no hook. It tests the flag at gp-0x5b88, then the flag at gp-0x52dc, and tail-jumps to gp-0x6ae8, gp-0x6ae4 or gp-0x7934.

- `rmv2` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6c458
  **Inferred.** Behind the gp-0x5bec pointer sits a call through gp-0x6aac that preserves the argument registers. After it, the gp-0x5b88 flag selects gp-0x6624, the gp-0x52dc flag selects gp-0x6620, and gp-0x7610 is the default.

- `splf2s` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6c4e0
  **Inferred.** The optional hook at gp-0x6aac, behind the gp-0x5bec pointer, is followed by a two-flag jump. Targets are gp-0x6150 for the gp-0x5b88 flag, gp-0x614c for the gp-0x52dc flag, and gp-0x75a4 when no flag is set.

- `bbox2i` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6c568
  **Inferred.** Spills a0 to a3 and ra into a 0x20-byte frame before calling gp-0x6aac, provided gp-0x5bec leads to a nonzero word. The stub then enters gp-0x7e9c, gp-0x7e98 or gp-0x7998 in the order of the two flags it tests.

- `cmovi` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6c5f0
  **Inferred.** The hook call at gp-0x6aac happens when the word behind gp-0x5bec is nonzero, bracketed by the argument spills at sp+0 to sp+0xc. Dispatch then uses gp-0x7bc8, gp-0x7bc4 or gp-0x7960, selected by the flags at gp-0x5b88 and gp-0x52dc.

- `endqstrip` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6c678
  **Inferred.** Sixteen instructions of pure dispatch. The flag words behind gp-0x5b88 and gp-0x52dc are read, and the routine jumps to gp-0x621c, gp-0x6218 or gp-0x72c8 accordingly. It saves nothing.

- `curveit` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6c6b8
  **Inferred.** Optional hook through gp-0x6aac, guarded by the gp-0x5bec pointer, then a tail jump. The slots are gp-0x7a8c for the gp-0x5b88 flag, gp-0x7a88 for the gp-0x52dc flag and gp-0x7950 for neither.

- `moves` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6c740
  **Inferred.** When gp-0x5bec leads to a nonzero word the stub calls gp-0x6aac after saving its arguments at sp+0 to sp+0xc. The jump target comes from gp-0x6b24, gp-0x6b20 or gp-0x769c, chosen by the flags at gp-0x5b88 and gp-0x52dc.

- `pmv2s` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6c7c8
  **Inferred.** Behind the guard at gp-0x5bec, the call through gp-0x6aac keeps the arguments and ra intact. The tail jump then reaches gp-0x68bc when gp-0x5b88 is set, gp-0x68b8 when gp-0x52dc is set, and gp-0x7644 otherwise.

- `c3s` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6c850
  **Inferred.** No hook and no frame. The routine reads the two flag words at gp-0x5b88 and gp-0x52dc and jumps through gp-0x62f8, gp-0x62f4 or gp-0x7400.

- `draw2i` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6c890
  **Inferred.** A 16-instruction tail dispatcher. The gp-0x5b88 and gp-0x52dc flags choose among gp-0x6af4, gp-0x6af0 and gp-0x7930, and nothing else is done.

- `pixmodef` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6c8d0
  **Inferred.** Hook guarded by the word behind gp-0x5bec, invoked at gp-0x6aac with the four argument registers and ra saved in the 0x20-byte frame. Then gp-0x68d0, gp-0x68cc or gp-0x7240 is jumped to, depending on which of the gp-0x5b88 and gp-0x52dc flag words is nonzero.

- `rpmv2i` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6c958
  **Inferred.** The gp-0x5bec pointer decides whether the hook at gp-0x6aac runs. Dispatch on gp-0x5b88 and gp-0x52dc chooses gp-0x65a0, gp-0x659c or gp-0x75d8.

- `leftbuffer` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6c9e0
  **Inferred.** Runs a flag-checked hook at gp-0x6aac, tested through gp-0x5bec, and spills a0 to a3 and ra around it. The tail target is gp-0x7db0 when the gp-0x5b88 flag word is nonzero, gp-0x7dac when gp-0x52dc is, and gp-0x71f0 when neither is.

- `bbox2s` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ca68
  **Inferred.** Calls the gp-0x6aac hook when the pointer at gp-0x5bec reaches nonzero data, keeping ra and the four arguments in a 0x20-byte frame. It then jumps to gp-0x7ea8, gp-0x7ea4 or gp-0x772c according to the two flags.

- `cmovs` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6caf0
  **Inferred.** The hook is reached through gp-0x6aac only when the gp-0x5bec word is nonzero. The frame holds a0 to a3 and ra. The jump goes to gp-0x7bd4, gp-0x7bd0 or gp-0x770c, selected by the flag words at gp-0x5b88 and gp-0x52dc.

- `rpmv2` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6cb78
  **Inferred.** A hook guarded by the gp-0x5bec pointer calls gp-0x6aac with the arguments spilled, and then a three-way jump goes to gp-0x6594, gp-0x6590 or gp-0x75e0. The choice follows the flags behind gp-0x5b88 and gp-0x52dc.

- `charstr` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6cc00
  **Inferred.** Optional hook at gp-0x6aac, reached only when the gp-0x5bec pointer addresses a nonzero word. The final target is gp-0x7d80 if the gp-0x5b88 flag word is nonzero, gp-0x7d7c if gp-0x52dc is nonzero, and gp-0x798c otherwise.

- `draw2s` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6cc88
  **Inferred.** A sixteen-instruction selector. Flags at gp-0x5b88 and gp-0x52dc route the tail jump to gp-0x6b00, gp-0x6afc or gp-0x76d4.

- `pdr` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ccc8
  **Inferred.** This 64-byte body has no hook. The two flag words at gp-0x5b88 and gp-0x52dc pick gp-0x6838, gp-0x6834 or gp-0x7680, and the routine ends in a jump with no frame.

- `xfpt4i` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6cd08
  **Inferred.** Guarded hook call through gp-0x6aac, keyed on the gp-0x5bec pointer, with a0 to a3 and ra preserved. The jump reaches gp-0x7c4c for the gp-0x5b88 flag, gp-0x7c80 for the gp-0x52dc flag, and gp-0x7584 when neither is set.

- `v2d` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ce18
  **Inferred.** Tail-dispatches with no stack frame. The word that the pointer at -0x5b88($gp) addresses (gl_immediate_mode) is tested first; a nonzero value jumps to gl_i_v2d, loaded from -0x644c($gp). Otherwise the word behind -0x52dc($gp) (gl_openobjhdr) is tested, and a nonzero value selects gl_c_v2d from -0x6448($gp). With both words zero the jump goes to gl_d_v2d from -0x73a0($gp). The single `jr` is at 0xec6ce50.

- `v2f` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d100
  **Inferred.** The same two-word choice, for the float-vector entry. The immediate handler gl_i_v2f (-0x6458($gp)) wins when gl_immediate_mode is set, then the compiled handler gl_c_v2f (-0x6454($gp)) when gl_openobjhdr is set, and the direct handler gl_d_v2f (-0x739c($gp)) otherwise. The jump is at 0xec6d138.

- `v2i` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d250
  **Inferred.** Hands the call to gl_i_v2i (-0x6464($gp)), gl_c_v2i (-0x6460($gp)) or gl_d_v2i (-0x7398($gp)). The immediate word at -0x5b88($gp) is checked first and the open-object word at -0x52dc($gp) second. It stores nothing and has no frame; the shared jump is at 0xec6d288.

- `c4f` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d290
  **Inferred.** gl_i_c4f (-0x62bc($gp)) is loaded into t9 before the first flag test, gl_c_c4f (-0x62b8($gp)) before the second, and gl_d_c4f (-0x73fc($gp)) only on the fallthrough path. The two flag words at -0x5b88($gp) and -0x52dc($gp) decide which load survives into the jump at 0xec6d2c8.

- `swaptmesh` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d2d0
  **Inferred.** Immediate-first dispatch. A set gl_immediate_mode word goes to gl_i_swaptmesh (-0x61e8($gp)); a set gl_openobjhdr word goes to gl_c_swaptmesh (-0x61e4($gp)); otherwise the routine falls to gl_d_swaptmesh (-0x73a4($gp)). The jump is at 0xec6d308.

- `c4i` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d310
  **Inferred.** Reads gl_immediate_mode through -0x5b88($gp) and gl_openobjhdr through -0x52dc($gp), then chooses among gl_i_c4i at -0x62c8($gp), gl_c_c4i at -0x62c4($gp) and gl_d_c4i at -0x73f8($gp). It writes no memory, and the jump at 0xec6d348 ends the routine.

- `rdr2` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d570
  **Inferred.** A frame-less forwarder whose target is one of gl_i_rdr2 (-0x65dc($gp)), gl_c_rdr2 (-0x65d8($gp)) or gl_d_rdr2 (-0x762c($gp)). The arguments reach the handler in their original registers because no instruction in the body modifies a0 through a3. The jump is at 0xec6d5a8.

- `pdr2i` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d6c0
  **Inferred.** Tests the immediate word at -0x5b88($gp), then the open-object word at -0x52dc($gp), and tail-jumps to gl_i_pdr2i (-0x6868($gp)), gl_c_pdr2i (-0x6864($gp)) or gl_d_pdr2i (-0x7674($gp)). The one `jr` at 0xec6d6f8 is the only exit.

- `v2s` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d810
  **Inferred.** Three handlers, selected by two flag words: gl_i_v2s at -0x6470($gp), gl_c_v2s at -0x646c($gp) and gl_d_v2s at -0x7394($gp). The routine does not spill anything, and its jump is at 0xec6d848.

- `endpolygon` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d850
  **Inferred.** Leaves through gl_i_endpolygon (-0x6210($gp)) when gl_immediate_mode is nonzero, through gl_c_endpolygon (-0x620c($gp)) when gl_openobjhdr is nonzero, and through gl_d_endpolygon (-0x73dc($gp)) when both are zero. The jump sits at 0xec6d888.

- `c4s` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d918
  **Inferred.** Two state words are read in order and then one of three handlers is jumped to: gl_i_c4s (-0x62d4($gp)), gl_c_c4s (-0x62d0($gp)) or gl_d_c4s (-0x73f4($gp)). No stores, no frame, and the jump is at 0xec6d950.

- `rpdr2` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6daf0
  **Inferred.** The immediate branch goes to gl_i_rpdr2 (-0x654c($gp)), the compiled branch to gl_c_rpdr2 (-0x6548($gp)), and the fallback to gl_d_rpdr2 (-0x75f8($gp)). The routine ends in one `jr` at 0xec6db28.

- `pdr2s` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6dc40
  **Inferred.** Dispatches on gl_immediate_mode and gl_openobjhdr to gl_i_pdr2s (-0x6874($gp)), gl_c_pdr2s (-0x6870($gp)) or gl_d_pdr2s (-0x766c($gp)). The shared jump is at 0xec6dc78 and the routine keeps no frame.

- `endclosedline` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6dc80
  **Inferred.** gl_i_endclosedline (-0x6234($gp)) is loaded into t9 ahead of the test on -0x5b88($gp), gl_c_endclosedline (-0x6230($gp)) ahead of the test on -0x52dc($gp), and gl_d_endclosedline (-0x73e8($gp)) only if both words are zero. The jump at 0xec6dcb8 transfers control to whichever pointer is in t9.

- `rpdr2i` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6dcc0
  **Inferred.** Picks gl_i_rpdr2i (-0x6558($gp)) first, then gl_c_rpdr2i (-0x6554($gp)), then gl_d_rpdr2i (-0x75f0($gp)), using the two flag words in that order. The routine has no frame and its jump is at 0xec6dcf8.

- `pdr2` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6dd88
  **Inferred.** Routes to gl_i_pdr2 (-0x685c($gp)), gl_c_pdr2 (-0x6858($gp)) or gl_d_pdr2 (-0x767c($gp)) according to gl_immediate_mode and gl_openobjhdr. The jump at 0xec6ddc0 is the only control transfer out of the routine.

- `splf` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6cd90
  **Inferred.** When gl_inMoveDraw (-0x5bec($gp)) is nonzero, it opens a 0x20-byte frame, spills a0 through a3 and ra, and calls __iglooCloseMoveDrawFromTable through -0x6aac($gp) at 0xec6cdc4, then restores the registers. The three-way test follows with gl_i_splf (-0x6114($gp)), gl_c_splf (-0x6110($gp)) and gl_d_splf (-0x75b8($gp)). The jump is at 0xec6ce10.

- `rpmv2s` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ce58
  **Inferred.** A pending move-draw batch is closed first: the call through -0x6aac($gp) at 0xec6ce8c runs inside a 0x20-byte frame that keeps the four argument registers. Afterwards gl_immediate_mode, gl_openobjhdr and the handler slots -0x65ac($gp), -0x65a8($gp) and -0x75d0($gp) choose the target, and the jump is at 0xec6ced8.

- `polf2i` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6cee0
  **Inferred.** The routine skips the close helper unless the word behind -0x5bec($gp) is set. Its call to __iglooCloseMoveDrawFromTable is at 0xec6cf14, with the arguments kept in the frame. It then picks gl_i_polf2i (-0x6780($gp)), gl_c_polf2i (-0x677c($gp)) or gl_d_polf2i (-0x781c($gp)), and jumps at 0xec6cf60.

- `displacepolygon` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6cf68
  **Inferred.** Guarded by gl_inMoveDraw at -0x5bec($gp): a set word triggers the close call at 0xec6cf9c, bracketed by the 0x20-byte spill and reload. The dispatch then uses gl_i_displacepolygon (-0x5ce8($gp)), gl_c_displacepolygon (-0x5ce4($gp)) and gl_d_displacepolygon (-0x71a4($gp)). The jump is at 0xec6cfe8.

- `move` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6cff0
  **Inferred.** Closes the move-draw batch through -0x6aac($gp) when -0x5bec($gp) is nonzero, the call sitting at 0xec6d024 inside the frame. The handler then comes from -0x6b0c($gp) for gl_i_move, -0x6b08($gp) for gl_c_move or -0x786c($gp) for gl_d_move, and the jump is at 0xec6d070.

- `pmv2` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d078
  **Inferred.** Conditional close of the move-draw batch: the test is on -0x5bec($gp), and the helper call through -0x6aac($gp) is at 0xec6d0ac. The following three-way test chooses gl_i_pmv2 (-0x68a4($gp)), gl_c_pmv2 (-0x68a0($gp)) or gl_d_pmv2 (-0x7654($gp)) and jumps at 0xec6d0f8.

- `rmv` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d140
  **Inferred.** Before the dispatch a nonzero gl_inMoveDraw word makes it spill its arguments and call __iglooCloseMoveDrawFromTable at 0xec6d174. Then it jumps to gl_i_rmv (-0x6600($gp)), gl_c_rmv (-0x65fc($gp)) or gl_d_rmv (-0x7614($gp)) at 0xec6d1c0.

- `zsource` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d1c8
  **Inferred.** The close helper is skipped when -0x5bec($gp) is zero; otherwise the call at 0xec6d1fc runs in its frame. Afterwards the routine tests the two flag words and tail-jumps to gl_i_zsource (-0x5cd8($gp)), gl_c_zsource (-0x5cd4($gp)) or gl_d_zsource (-0x7364($gp)). The jump is at 0xec6d248.

- `swapbuffers` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d350
  **Inferred.** With gl_inMoveDraw set, the move-draw batch is closed by the call at 0xec6d384 before anything else happens. The handler comes from gl_i_swapbuffers (-0x7e18($gp)), gl_c_swapbuffers (-0x7e14($gp)) or gl_d_swapbuffers (-0x7784($gp)), and the jump is at 0xec6d3d0.

- `scrbox` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d3d8
  **Inferred.** Here the close call is at 0xec6d40c, guarded by the word at -0x5bec($gp). The three handlers are gl_i_scrbox (-0x7d24($gp)), gl_c_scrbox (-0x7d2c($gp)) and gl_d_scrbox (-0x7298($gp)), selected by gl_immediate_mode and gl_openobjhdr, and the jump is at 0xec6d458.

- `xfpt4s` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d460
  **Inferred.** A nonzero gl_inMoveDraw word triggers the close helper at 0xec6d494 inside a 0x20-byte frame. Then gl_i_xfpt4s (-0x7c48($gp)), gl_c_xfpt4s (-0x7c7c($gp)) or gl_d_xfpt4s (-0x7580($gp)) is chosen and jumped to at 0xec6d4e0.

- `polf2s` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d4e8
  **Inferred.** Close-then-dispatch. The close call through -0x6aac($gp) is at 0xec6d51c and is made only when the word at -0x5bec($gp) is nonzero. The targets are gl_i_polf2s (-0x678c($gp)), gl_c_polf2s (-0x6788($gp)) and gl_d_polf2s (-0x7668($gp)), and the jump is at 0xec6d568.

- `stencil` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d5b0
  **Inferred.** Spills and calls __iglooCloseMoveDrawFromTable (at 0xec6d5e4) when gl_inMoveDraw is set, restores the arguments, and then tests gl_immediate_mode and gl_openobjhdr. The handlers gl_i_stencil (-0x6088($gp)), gl_c_stencil (-0x6084($gp)) and gl_d_stencil (-0x7290($gp)) are the three outcomes, and the jump is at 0xec6d630.

- `patchcurves` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d638
  **Inferred.** The routine begins by checking -0x5bec($gp). A set word leads to the close call at 0xec6d66c, made from inside the 0x20-byte frame. Dispatch then uses -0x7a34($gp) for gl_i_patchcurves, -0x7a30($gp) for gl_c_patchcurves and -0x754c($gp) for gl_d_patchcurves, jumping at 0xec6d6b8.

- `pntsizef` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d700
  **Inferred.** Conditional helper call at 0xec6d734 (gl_inMoveDraw at -0x5bec($gp) gates it). The routine then jumps to gl_i_pntsizef (-0x7f38($gp)), gl_c_pntsizef (-0x7f34($gp)) or gl_d_pntsizef (-0x7250($gp)), with the final jump at 0xec6d780.

- `pntsize` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d788
  **Inferred.** Clears the move-draw batch through __iglooCloseMoveDrawFromTable (call at 0xec6d7bc) whenever -0x5bec($gp) is set. Handler selection follows the usual pattern, with gl_i_pntsize at -0x7f44($gp), gl_c_pntsize at -0x7f40($gp) and gl_d_pntsize at -0x7254($gp). The jump is at 0xec6d808.

- `frontbuffer` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d890
  **Inferred.** Guarded close helper at 0xec6d8c4, reached only when -0x5bec($gp) is nonzero. The three tail targets are gl_i_frontbuffer (-0x7dc8($gp)), gl_c_frontbuffer (-0x7dc4($gp)) and gl_d_frontbuffer (-0x7914($gp)), and the shared jump is at 0xec6d910.

- `rmv2i` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d958
  **Inferred.** If the word at -0x5bec($gp) is set, the routine calls the close helper at 0xec6d98c from its 0x20-byte frame. It then chooses gl_i_rmv2i (-0x6630($gp)), gl_c_rmv2i (-0x662c($gp)) or gl_d_rmv2i (-0x7608($gp)) by the two flag words and jumps at 0xec6d9d8.

- `linewidth` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d9e0
  **Inferred.** Closes the batch via the call at 0xec6da14 when gl_inMoveDraw is nonzero. The dispatch then picks gl_i_linewidth (-0x7f2c($gp)), gl_c_linewidth (-0x7f28($gp)) or gl_d_linewidth (-0x7890($gp)) and jumps at 0xec6da60.

- `popmatrix` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6da68
  **Inferred.** The move-draw guard at -0x5bec($gp) decides whether the helper call at 0xec6da9c runs. Afterward gl_immediate_mode and gl_openobjhdr select gl_i_popmatrix (-0x5d70($gp)), gl_c_popmatrix (-0x5d6c($gp)) or gl_d_popmatrix (-0x7800($gp)), and the jump is at 0xec6dae8.

- `patchbasis` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6db30
  **Inferred.** Conditional close call at 0xec6db64 inside a 0x20-byte frame, gated on -0x5bec($gp). Targets are gl_i_patchbasis (-0x7a40($gp)), gl_c_patchbasis (-0x7a3c($gp)) and gl_d_patchbasis (-0x7690($gp)), jumped to at 0xec6dbb0.

- `curvebasis` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6dbb8
  **Inferred.** With -0x5bec($gp) nonzero, the frame is opened and __iglooCloseMoveDrawFromTable is called at 0xec6dbec, then the registers are reloaded. The routine ends with a jump to gl_i_curvebasis (-0x7a64($gp)), gl_c_curvebasis (-0x7a60($gp)) or gl_d_curvebasis (-0x76fc($gp)) at 0xec6dc38.

- `rmv2s` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6dd00
  **Inferred.** Checks -0x5bec($gp) and, when set, runs the close helper at 0xec6dd34 inside its frame. The handler is then gl_i_rmv2s (-0x663c($gp)), gl_c_rmv2s (-0x6638($gp)) or gl_d_rmv2s (-0x7600($gp)), chosen by the two flag words; the jump is at 0xec6dd80.

- `frontface` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ddc8
  **Inferred.** The move-draw batch is closed by the call at 0xec6ddfc if -0x5bec($gp) is nonzero, otherwise the body goes straight to the dispatch. The targets are gl_i_frontface (-0x7f00($gp)), gl_c_frontface (-0x7efc($gp)) and gl_d_frontface (-0x72e8($gp)), and the jump is at 0xec6de48.

- `translate` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6de50
  **Inferred.** Routes the translate entry point to one of three targets chosen from two state flags. It first tests gl_inMoveDraw (gp-0x5bec) and, when that word is set, calls __iglooCloseMoveDrawFromTable with a0 to a3 saved in a 0x20-byte frame. If gl_immediate_mode is nonzero it tail-jumps to gl_i_translate; otherwise, if gl_openobjhdr is nonzero, it tail-jumps to gl_c_translate; otherwise it tail-jumps to gl_d_translate. The GOT slots at gp-0x5b88 (gl_immediate_mode) and gp-0x52dc (gl_openobjhdr) hold the flag addresses; gp-0x5d4c, gp-0x5d48 and gp-0x7774 hold the target addresses.

- `v3d` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ded8
  **Inferred.** Tail-calls one of three per-state implementations of v3d. There is no frame and no call: the stub reads gl_immediate_mode at once and branches on it. It tests gl_immediate_mode first and gl_openobjhdr second, then jumps (with no link) to gl_i_v3d, gl_c_v3d or gl_d_v3d respectively. Slot map: gp-0x5b88 and gp-0x52dc point at the two flags, while gp-0x641c, gp-0x6418 and gp-0x7390 point at the three routines.

- `normal` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6df18
  **Inferred.** Selects, at call time, which implementation of normal runs. With no move-draw check, the first load fetches the gl_immediate_mode slot. Dispatch is a three-way tail jump: gl_i_normal for immediate mode, gl_c_normal for an open object header, and gl_d_normal as the fallback. GP-relative GOT slots: gl_immediate_mode at gp-0x5b88, gl_openobjhdr at gp-0x52dc, and the three targets at gp-0x61f4, gp-0x61f0, gp-0x7424.

- `font` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6df58
  **Inferred.** Forwards calls to font to a state-specific routine and contains no drawing code of its own. Before choosing a target it checks gl_inMoveDraw (gp-0x5bec); a nonzero value sends it through __iglooCloseMoveDrawFromTable, with the argument registers spilled and reloaded around that call. Immediate mode wins: a nonzero gl_immediate_mode jumps to gl_i_font. Failing that, a nonzero gl_openobjhdr selects gl_c_font, and the default is gl_d_font. Targets come from the GOT slots gp-0x7d64, gp-0x7d60 and gp-0x7918; the controlling flags come from gp-0x5b88 and gp-0x52dc.

- `mmode` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6e068
  **Inferred.** The mmode stub is a dispatcher: it picks the implementation that matches the current GL state. A nonzero gl_inMoveDraw (gp-0x5bec) makes the stub call __iglooCloseMoveDrawFromTable first, spilling a0 to a3 and ra into a 0x20-byte frame that it pops afterwards. A nonzero gl_immediate_mode routes the call to gl_i_mmode. Otherwise a nonzero gl_openobjhdr routes it to gl_c_mmode, and when both words are zero the call goes to gl_d_mmode. Reads gl_immediate_mode through gp-0x5b88 and gl_openobjhdr through gp-0x52dc, then loads the targets through gp-0x5d9c, gp-0x5d98 and gp-0x7428.

- `xfpt2` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6e0f0
  **Inferred.** Each call to xfpt2 lands here and is handed on, unchanged, to whichever of three routines the state selects. The move-draw flag gl_inMoveDraw (gp-0x5bec) is read ahead of the dispatch; when it is set, __iglooCloseMoveDrawFromTable runs and the caller's registers come back from the stack. The final step jumps to gl_i_xfpt2 if gl_immediate_mode is set, to gl_c_xfpt2 if gl_openobjhdr is set, and to gl_d_xfpt2 when neither is. The target slots are gp-0x7c5c, gp-0x7c90 and gp-0x7594, and the two flag slots are gp-0x5b88 and gp-0x52dc.

- `texgen` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6e178
  **Inferred.** Decides which of three texgen handlers takes the call, based only on two flag words. Ahead of the selection it reads gl_inMoveDraw (gp-0x5bec) and calls __iglooCloseMoveDrawFromTable on a nonzero result, keeping a0 through a3 on a 0x20-byte stack frame. The stub loads gl_i_texgen up front, then gl_c_texgen or gl_d_texgen only on the paths that need them, and jumps through the one chosen: gl_i_texgen when gl_immediate_mode is set, gl_c_texgen when gl_openobjhdr is set, gl_d_texgen otherwise. Each flag is dereferenced from the GOT slot at gp-0x5b88 or gp-0x52dc; the routine pointers come from gp-0x5fbc, gp-0x5fb8 and gp-0x7260.

- `v3f` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6e200
  **Inferred.** Hands the v3f call to a mode-specific routine without doing any work of its own. It keeps no stack frame and makes no call, so a0 to a3 reach the chosen routine untouched. Selection order is gl_immediate_mode, then gl_openobjhdr; the matching pointer among gl_i_v3f, gl_c_v3f and gl_d_v3f is tail-called with the arguments as they stand. The flags are reached through the GOT slots gp-0x5b88 and gp-0x52dc; the immediate, open-object and default targets through gp-0x6428, gp-0x6424 and gp-0x738c.

- `msmask` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6e240
  **Inferred.** Routes the msmask entry point to one of three targets chosen from two state flags. When gl_inMoveDraw (gp-0x5bec) is nonzero it calls __iglooCloseMoveDrawFromTable, saving the argument registers and the return address in a 0x20-byte frame. If gl_immediate_mode is nonzero it tail-jumps to gl_i_msmask; otherwise, if gl_openobjhdr is nonzero, it tail-jumps to gl_c_msmask; otherwise it tail-jumps to gl_d_msmask. The GOT slots at gp-0x5b88 (gl_immediate_mode) and gp-0x52dc (gl_openobjhdr) hold the flag addresses; gp-0x6a98, gp-0x6a94 and gp-0x71dc hold the target addresses.

- `xfpt4` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6e2c8
  **Inferred.** Tail-calls one of three per-state implementations of xfpt4. It begins by testing gl_inMoveDraw (gp-0x5bec). On a nonzero result it calls __iglooCloseMoveDrawFromTable and restores a0 to a3 and ra before going on. It tests gl_immediate_mode first and gl_openobjhdr second, then jumps (with no link) to gl_i_xfpt4, gl_c_xfpt4 or gl_d_xfpt4 respectively. Slot map: gp-0x5b88 and gp-0x52dc point at the two flags, while gp-0x7c50, gp-0x7c84 and gp-0x7588 point at the three routines.

- `setlinestyle` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6e350
  **Inferred.** Selects, at call time, which implementation of setlinestyle runs. The opening step is a test of gl_inMoveDraw (gp-0x5bec): nonzero means a call to __iglooCloseMoveDrawFromTable, with the arguments held in a 0x20-byte frame across it. Dispatch is a three-way tail jump: gl_i_setlinestyle for immediate mode, gl_c_setlinestyle for an open object header, and gl_d_setlinestyle as the fallback. GP-relative GOT slots: gl_immediate_mode at gp-0x5b88, gl_openobjhdr at gp-0x52dc, and the three targets at gp-0x6ef8, gp-0x6ef4, gp-0x7798.

- `rightbuffer` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6e3d8
  **Inferred.** Forwards calls to rightbuffer to a state-specific routine and contains no drawing code of its own. It first tests gl_inMoveDraw (gp-0x5bec) and, when that word is set, calls __iglooCloseMoveDrawFromTable with a0 to a3 saved in a 0x20-byte frame. Immediate mode wins: a nonzero gl_immediate_mode jumps to gl_i_rightbuffer. Failing that, a nonzero gl_openobjhdr selects gl_c_rightbuffer, and the default is gl_d_rightbuffer. Targets come from the GOT slots gp-0x7da4, gp-0x7da0 and gp-0x71ec; the controlling flags come from gp-0x5b88 and gp-0x52dc.

- `v3i` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6e460
  **Inferred.** The v3i stub is a dispatcher: it picks the implementation that matches the current GL state. Nothing runs before the selection; the stub goes straight to the gl_immediate_mode test. A nonzero gl_immediate_mode routes the call to gl_i_v3i. Otherwise a nonzero gl_openobjhdr routes it to gl_c_v3i, and when both words are zero the call goes to gl_d_v3i. Reads gl_immediate_mode through gp-0x5b88 and gl_openobjhdr through gp-0x52dc, then loads the targets through gp-0x6434, gp-0x6430 and gp-0x7388.

- `popname` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6e4a0
  **Inferred.** Each call to popname lands here and is handed on, unchanged, to whichever of three routines the state selects. Before choosing a target it checks gl_inMoveDraw (gp-0x5bec); a nonzero value sends it through __iglooCloseMoveDrawFromTable, with the argument registers spilled and reloaded around that call. The final step jumps to gl_i_popname if gl_immediate_mode is set, to gl_c_popname if gl_openobjhdr is set, and to gl_d_popname when neither is. The target slots are gp-0x6944, gp-0x6940 and gp-0x7638, and the two flag slots are gp-0x5b88 and gp-0x52dc.

- `endpoint` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6e528
  **Inferred.** Decides which of three endpoint handlers takes the call, based only on two flag words. The stub skips any move-draw handling and tests gl_immediate_mode as its first action. The stub loads gl_i_endpoint up front, then gl_c_endpoint or gl_d_endpoint only on the paths that need them, and jumps through the one chosen: gl_i_endpoint when gl_immediate_mode is set, gl_c_endpoint when gl_openobjhdr is set, gl_d_endpoint otherwise. Each flag is dereferenced from the GOT slot at gp-0x5b88 or gp-0x52dc; the routine pointers come from gp-0x624c, gp-0x6248 and gp-0x73e0.

- `rpdr2s` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6e568
  **Inferred.** Hands the rpdr2s call to a mode-specific routine without doing any work of its own. No stack frame is set up, and the argument registers are never written. Selection order is gl_immediate_mode, then gl_openobjhdr; the matching pointer among gl_i_rpdr2s, gl_c_rpdr2s and gl_d_rpdr2s is tail-called with the arguments as they stand. The flags are reached through the GOT slots gp-0x5b88 and gp-0x52dc; the immediate, open-object and default targets through gp-0x6564, gp-0x6560 and gp-0x75e8.

- `drawi` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6e5a8
  **Inferred.** Routes the drawi entry point to one of three targets chosen from two state flags. Its first load is the gl_immediate_mode slot, and it makes no call of its own. If gl_immediate_mode is nonzero it tail-jumps to gl_i_drawi; otherwise, if gl_openobjhdr is nonzero, it tail-jumps to gl_c_drawi; otherwise it tail-jumps to gl_d_drawi. The GOT slots at gp-0x5b88 (gl_immediate_mode) and gp-0x52dc (gl_openobjhdr) hold the flag addresses; gp-0x6ad0, gp-0x6acc and gp-0x792c hold the target addresses.

- `endtmesh` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6e5e8
  **Inferred.** Tail-calls one of three per-state implementations of endtmesh. It does not touch the stack; the selection code is the whole body. It tests gl_immediate_mode first and gl_openobjhdr second, then jumps (with no link) to gl_i_endtmesh, gl_c_endtmesh or gl_d_endtmesh respectively. Slot map: gp-0x5b88 and gp-0x52dc point at the two flags, while gp-0x6228, gp-0x6224 and gp-0x73d8 point at the three routines.

- `patchprecision` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6e628
  **Inferred.** Selects, at call time, which implementation of patchprecision runs. A nonzero gl_inMoveDraw (gp-0x5bec) makes the stub call __iglooCloseMoveDrawFromTable first, spilling a0 to a3 and ra into a 0x20-byte frame that it pops afterwards. Dispatch is a three-way tail jump: gl_i_patchprecision for immediate mode, gl_c_patchprecision for an open object header, and gl_d_patchprecision as the fallback. GP-relative GOT slots: gl_immediate_mode at gp-0x5b88, gl_openobjhdr at gp-0x52dc, and the three targets at gp-0x7a4c, gp-0x7a48, gp-0x768c.

- `rmvi` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6e6b0
  **Inferred.** Forwards calls to rmvi to a state-specific routine and contains no drawing code of its own. The move-draw flag gl_inMoveDraw (gp-0x5bec) is read ahead of the dispatch; when it is set, __iglooCloseMoveDrawFromTable runs and the caller's registers come back from the stack. Immediate mode wins: a nonzero gl_immediate_mode jumps to gl_i_rmvi. Failing that, a nonzero gl_openobjhdr selects gl_c_rmvi, and the default is gl_d_rmvi. Targets come from the GOT slots gp-0x660c, gp-0x6608 and gp-0x760c; the controlling flags come from gp-0x5b88 and gp-0x52dc.

- `rectfi` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6e738
  **Inferred.** The rectfi stub is a dispatcher: it picks the implementation that matches the current GL state. Ahead of the selection it reads gl_inMoveDraw (gp-0x5bec) and calls __iglooCloseMoveDrawFromTable on a nonzero result, keeping a0 through a3 on a 0x20-byte stack frame. A nonzero gl_immediate_mode routes the call to gl_i_rectfi. Otherwise a nonzero gl_openobjhdr routes it to gl_c_rectfi, and when both words are zero the call goes to gl_d_rectfi. Reads gl_immediate_mode through gp-0x5b88 and gl_openobjhdr through gp-0x52dc, then loads the targets through gp-0x667c, gp-0x6678 and gp-0x77cc.

- `scale` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6e7c0
  **Inferred.** Each call to scale lands here and is handed on, unchanged, to whichever of three routines the state selects. When gl_inMoveDraw (gp-0x5bec) is nonzero it calls __iglooCloseMoveDrawFromTable, saving the argument registers and the return address in a 0x20-byte frame. The final step jumps to gl_i_scale if gl_immediate_mode is set, to gl_c_scale if gl_openobjhdr is set, and to gl_d_scale when neither is. The target slots are gp-0x5d58, gp-0x5d54 and gp-0x77ac, and the two flag slots are gp-0x5b88 and gp-0x52dc.

- `shademodel` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6e848
  **Inferred.** Decides which of three shademodel handlers takes the call, based only on two flag words. It begins by testing gl_inMoveDraw (gp-0x5bec). On a nonzero result it calls __iglooCloseMoveDrawFromTable and restores a0 to a3 and ra before going on. The stub loads gl_i_shademodel up front, then gl_c_shademodel or gl_d_shademodel only on the paths that need them, and jumps through the one chosen: gl_i_shademodel when gl_immediate_mode is set, gl_c_shademodel when gl_openobjhdr is set, gl_d_shademodel otherwise. Each flag is dereferenced from the GOT slot at gp-0x5b88 or gp-0x52dc; the routine pointers come from gp-0x7ebc, gp-0x7eb8 and gp-0x7454.

- `backface` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6e8d0
  **Inferred.** Hands the backface call to a mode-specific routine without doing any work of its own. The opening step is a test of gl_inMoveDraw (gp-0x5bec): nonzero means a call to __iglooCloseMoveDrawFromTable, with the arguments held in a 0x20-byte frame across it. Selection order is gl_immediate_mode, then gl_openobjhdr; the matching pointer among gl_i_backface, gl_c_backface and gl_d_backface is tail-called with the arguments as they stand. The flags are reached through the GOT slots gp-0x5b88 and gp-0x52dc; the immediate, open-object and default targets through gp-0x7f0c, gp-0x7f08 and gp-0x7544.

- `pnt2i` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6e958
  **Inferred.** Routes the pnt2i entry point to one of three targets chosen from two state flags. It first tests gl_inMoveDraw (gp-0x5bec) and, when that word is set, calls __iglooCloseMoveDrawFromTable with a0 to a3 saved in a 0x20-byte frame. If gl_immediate_mode is nonzero it tail-jumps to gl_i_pnt2i; otherwise, if gl_openobjhdr is nonzero, it tail-jumps to gl_c_pnt2i; otherwise it tail-jumps to gl_d_pnt2i. The GOT slots at gp-0x5b88 (gl_immediate_mode) and gp-0x52dc (gl_openobjhdr) hold the flag addresses; gp-0x6810, gp-0x680c and gp-0x7830 hold the target addresses.

- `v3s` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6e9e0
  **Inferred.** Tail-calls one of three per-state implementations of v3s. There is no frame and no call: the stub reads gl_immediate_mode at once and branches on it. It tests gl_immediate_mode first and gl_openobjhdr second, then jumps (with no link) to gl_i_v3s, gl_c_v3s or gl_d_v3s respectively. Slot map: gp-0x5b88 and gp-0x52dc point at the two flags, while gp-0x6440, gp-0x643c and gp-0x7384 point at the three routines.

- `lcharstr` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ea20
  **Inferred.** Selects, at call time, which implementation of lcharstr runs. Before choosing a target it checks gl_inMoveDraw (gp-0x5bec); a nonzero value sends it through __iglooCloseMoveDrawFromTable, with the argument registers spilled and reloaded around that call. Dispatch is a three-way tail jump: gl_i_lcharstr for immediate mode, gl_c_lcharstr for an open object header, and gl_d_lcharstr as the fallback. GP-relative GOT slots: gl_immediate_mode at gp-0x5b88, gl_openobjhdr at gp-0x52dc, and the three targets at gp-0x7d34, gp-0x7d38, gp-0x7234.

- `curveprecision` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6eaa8
  **Inferred.** Forwards calls to curveprecision to a state-specific routine and contains no drawing code of its own. A nonzero gl_inMoveDraw (gp-0x5bec) makes the stub call __iglooCloseMoveDrawFromTable first, spilling a0 to a3 and ra into a 0x20-byte frame that it pops afterwards. Immediate mode wins: a nonzero gl_immediate_mode jumps to gl_i_curveprecision. Failing that, a nonzero gl_openobjhdr selects gl_c_curveprecision, and the default is gl_d_curveprecision. Targets come from the GOT slots gp-0x7a58, gp-0x7a54 and gp-0x76f8; the controlling flags come from gp-0x5b88 and gp-0x52dc.

- `draws` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6eb30
  **Inferred.** The draws stub is a dispatcher: it picks the implementation that matches the current GL state. With no move-draw check, the first load fetches the gl_immediate_mode slot. A nonzero gl_immediate_mode routes the call to gl_i_draws. Otherwise a nonzero gl_openobjhdr routes it to gl_c_draws, and when both words are zero the call goes to gl_d_draws. Reads gl_immediate_mode through gp-0x5b88 and gl_openobjhdr through gp-0x52dc, then loads the targets through gp-0x6adc, gp-0x6ad8 and gp-0x76d0.

- `rmvs` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6eb70
  **Inferred.** Each call to rmvs lands here and is handed on, unchanged, to whichever of three routines the state selects. The move-draw flag gl_inMoveDraw (gp-0x5bec) is read ahead of the dispatch; when it is set, __iglooCloseMoveDrawFromTable runs and the caller's registers come back from the stack. The final step jumps to gl_i_rmvs if gl_immediate_mode is set, to gl_c_rmvs if gl_openobjhdr is set, and to gl_d_rmvs when neither is. The target slots are gp-0x6618, gp-0x6614 and gp-0x7604, and the two flag slots are gp-0x5b88 and gp-0x52dc.

- `blendfunction` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ebf8
  **Inferred.** Decides which of three blendfunction handlers takes the call, based only on two flag words. Ahead of the selection it reads gl_inMoveDraw (gp-0x5bec) and calls __iglooCloseMoveDrawFromTable on a nonzero result, keeping a0 through a3 on a 0x20-byte stack frame. The stub loads gl_i_blendfunction up front, then gl_c_blendfunction or gl_d_blendfunction only on the paths that need them, and jumps through the one chosen: gl_i_blendfunction when gl_immediate_mode is set, gl_c_blendfunction when gl_openobjhdr is set, gl_d_blendfunction otherwise. Each flag is dereferenced from the GOT slot at gp-0x5b88 or gp-0x52dc; the routine pointers come from gp-0x7e60, gp-0x7e5c and gp-0x740c.

- `bgnpolygon` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ec80
  **Inferred.** Hands the bgnpolygon call to a mode-specific routine without doing any work of its own. When gl_inMoveDraw (gp-0x5bec) is nonzero it calls __iglooCloseMoveDrawFromTable, saving the argument registers and the return address in a 0x20-byte frame. Selection order is gl_immediate_mode, then gl_openobjhdr; the matching pointer among gl_i_bgnpolygon, gl_c_bgnpolygon and gl_d_bgnpolygon is tail-called with the arguments as they stand. The flags are reached through the GOT slots gp-0x5b88 and gp-0x52dc; the immediate, open-object and default targets through gp-0x6258, gp-0x6254 and gp-0x7414.

- `rectfs` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ed08
  **Inferred.** Routes the rectfs entry point to one of three targets chosen from two state flags. It begins by testing gl_inMoveDraw (gp-0x5bec). On a nonzero result it calls __iglooCloseMoveDrawFromTable and restores a0 to a3 and ra before going on. If gl_immediate_mode is nonzero it tail-jumps to gl_i_rectfs; otherwise, if gl_openobjhdr is nonzero, it tail-jumps to gl_c_rectfs; otherwise it tail-jumps to gl_d_rectfs. The GOT slots at gp-0x5b88 (gl_immediate_mode) and gp-0x52dc (gl_openobjhdr) hold the flag addresses; gp-0x6664, gp-0x6660 and gp-0x74d4 hold the target addresses.

- `multmatrix` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ed90
  **Inferred.** Tail-calls one of three per-state implementations of multmatrix. The opening step is a test of gl_inMoveDraw (gp-0x5bec): nonzero means a call to __iglooCloseMoveDrawFromTable, with the arguments held in a 0x20-byte frame across it. It tests gl_immediate_mode first and gl_openobjhdr second, then jumps (with no link) to gl_i_multmatrix, gl_c_multmatrix or gl_d_multmatrix respectively. Slot map: gp-0x5b88 and gp-0x52dc point at the two flags, while gp-0x5d7c, gp-0x5d78 and gp-0x7858 point at the three routines.

- `rpmvi` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ee18
  **Inferred.** Selects, at call time, which implementation of rpmvi runs. It first tests gl_inMoveDraw (gp-0x5bec) and, when that word is set, calls __iglooCloseMoveDrawFromTable with a0 to a3 saved in a 0x20-byte frame. Dispatch is a three-way tail jump: gl_i_rpmvi for immediate mode, gl_c_rpmvi for an open object header, and gl_d_rpmvi as the fallback. GP-relative GOT slots: gl_immediate_mode at gp-0x5b88, gl_openobjhdr at gp-0x52dc, and the three targets at gp-0x657c, gp-0x6578, gp-0x75dc.

- `passthrough` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6eea0
  **Inferred.** Forwards calls to passthrough to a state-specific routine and contains no drawing code of its own. Before choosing a target it checks gl_inMoveDraw (gp-0x5bec); a nonzero value sends it through __iglooCloseMoveDrawFromTable, with the argument registers spilled and reloaded around that call. Immediate mode wins: a nonzero gl_immediate_mode jumps to gl_i_passthrough. Failing that, a nonzero gl_openobjhdr selects gl_c_passthrough, and the default is gl_d_passthrough. Targets come from the GOT slots gp-0x691c, gp-0x6918 and gp-0x7694; the controlling flags come from gp-0x5b88 and gp-0x52dc.

- `RGBcolor` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ef28
  **Inferred.** The RGBcolor stub is a dispatcher: it picks the implementation that matches the current GL state. It keeps no stack frame and makes no call, so a0 to a3 reach the chosen routine untouched. A nonzero gl_immediate_mode routes the call to gl_i_RGBcolor. Otherwise a nonzero gl_openobjhdr routes it to gl_c_RGBcolor, and when both words are zero the call goes to gl_d_RGBcolor. Reads gl_immediate_mode through gp-0x5b88 and gl_openobjhdr through gp-0x52dc, then loads the targets through gp-0x7b00, gp-0x7afc and gp-0x77c0.

- `rpmv` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ef68
  **Inferred.** Each call to rpmv lands here and is handed on, unchanged, to whichever of three routines the state selects. A nonzero gl_inMoveDraw (gp-0x5bec) makes the stub call __iglooCloseMoveDrawFromTable first, spilling a0 to a3 and ra into a 0x20-byte frame that it pops afterwards. The final step jumps to gl_i_rpmv if gl_immediate_mode is set, to gl_c_rpmv if gl_openobjhdr is set, and to gl_d_rpmv when neither is. The target slots are gp-0x6570, gp-0x656c and gp-0x75e4, and the two flag slots are gp-0x5b88 and gp-0x52dc.

- `backbuffer` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6eff0
  **Inferred.** Decides which of three backbuffer handlers takes the call, based only on two flag words. The move-draw flag gl_inMoveDraw (gp-0x5bec) is read ahead of the dispatch; when it is set, __iglooCloseMoveDrawFromTable runs and the caller's registers come back from the stack. The stub loads gl_i_backbuffer up front, then gl_c_backbuffer or gl_d_backbuffer only on the paths that need them, and jumps through the one chosen: gl_i_backbuffer when gl_immediate_mode is set, gl_c_backbuffer when gl_openobjhdr is set, gl_d_backbuffer otherwise. Each flag is dereferenced from the GOT slot at gp-0x5b88 or gp-0x52dc; the routine pointers come from gp-0x7dbc, gp-0x7db8 and gp-0x79a0.

- `pnt2s` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6f078
  **Inferred.** Hands the pnt2s call to a mode-specific routine without doing any work of its own. Ahead of the selection it reads gl_inMoveDraw (gp-0x5bec) and calls __iglooCloseMoveDrawFromTable on a nonzero result, keeping a0 through a3 on a 0x20-byte stack frame. Selection order is gl_immediate_mode, then gl_openobjhdr; the matching pointer among gl_i_pnt2s, gl_c_pnt2s and gl_d_pnt2s is tail-called with the arguments as they stand. The flags are reached through the GOT slots gp-0x5b88 and gp-0x52dc; the immediate, open-object and default targets through gp-0x681c, gp-0x6818 and gp-0x7640.

- `rdr2i` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6f100
  **Inferred.** Flag one nonzero jumps through gp-0x65e8 (0xeca677c). Otherwise flag two nonzero jumps through gp-0x65e4 (0xeca6868), and when both are zero the target is gp-0x7624 (0xec4cab4). The routine has no frame and changes no argument register.

- `msalpha` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6f140
  **Inferred.** A nonzero word at 0xecdfba0 sends the routine through a call to 0xec8fc18 first, with a0 to a3 and ra parked in a 0x20-byte frame. The selector that follows reads flag one and jumps to gp-0x6aa4 (0xec8fc80) when it is nonzero, otherwise checks flag two for gp-0x6aa0 (0xec8fce0), and otherwise jumps to gp-0x71e0 (0xec57150).

- `mssample` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6f1c8
  **Inferred.** The gate word 0xecdfba0 is tested before anything else. A set gate calls through the pointer at gp-0x6aac (0xec8fc18) after the argument registers go to the stack and back again. The jump target is gp-0x6a80 (0xec90074) for a nonzero flag one, gp-0x6a7c (0xec900d4) for a nonzero flag two, and gp-0x7200 (0xec56ca4) when both are zero.

- `sbox` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6f250
  **Inferred.** Control enters the hook at 0xec8fc18 through slot gp-0x6aac whenever 0xecdfba0 is nonzero, and returns to the selector with a0 to a3 restored. Flag one chooses gp-0x66d0 (0xeca30d4), flag two chooses gp-0x66cc (0xeca31bc), and gp-0x733c (0xec5388c) is the default.

- `swapinterval` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6f2d8
  **Inferred.** Nonzero 0xecdfba0 triggers the hook call, with the four argument words spilled into a 0x20-byte frame and reloaded after it. Selection then tests flag one for gp-0x7e0c (0xec355f8) and flag two for gp-0x7e08 (0xec35658), with gp-0x7780 (0xec49828) as the last case.

- `pmvi` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6f360
  **Inferred.** The word at 0xecdfba0 gates a call through gp-0x6aac (0xec8fc18), and the routine keeps a0 to a3 and ra on its own stack across that call. It then tail-jumps to gp-0x688c (0xec9c404) when flag one is set, to gp-0x6888 (0xec9c4bc) when flag two is set, and to gp-0x7650 (0xec4c57c) when neither is.

- `splf2` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6f3e8
  **Inferred.** A set 0xecdfba0 means the hook at gp-0x6aac (0xec8fc18) is called inside a frame that saves the argument registers. The tail jump is chosen from gp-0x6138 (0xecb4ff0) on flag one, gp-0x6134 (0xecb51a4) on flag two, and gp-0x75b4 (0xec4d958) otherwise.

- `poly2i` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6f470
  **Inferred.** If 0xecdfba0 is nonzero the routine calls gp-0x6aac (0xec8fc18) and preserves a0 to a3 and ra around it. Afterwards flag one selects gp-0x67c8 (0xec9e604), flag two selects gp-0x67c4 (0xec9e788), and the fallback is gp-0x780c (0xec48470).

- `rpmvs` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6f4f8
  **Inferred.** Hook gate 0xecdfba0: nonzero calls gp-0x6aac (0xec8fc18) with the argument words parked on the stack. Flag one jumps to gp-0x6588 (0xeca7d30), flag two jumps to gp-0x6584 (0xeca7e88), and neither gives gp-0x75d4 (0xec4d478).

- `v4d` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6f580
  **Inferred.** A nonzero flag one leads to gp-0x63ec (0xecac640), a nonzero flag two to gp-0x63e8 (0xecac6a4), and the fallback is gp-0x7380 (0xec52f04). With no frame, the callee gets the caller's a0 to a3 unchanged and returns straight to the caller.

- `logicop` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6f5c0
  **Inferred.** Before the selector, a nonzero word at 0xecdfba0 runs the hook at gp-0x6aac (0xec8fc18), with a0 to a3 and ra held in the frame. The selector reads flag one for gp-0x7e48 (0xec34c18), flag two for gp-0x7e44 (0xec34c78), and otherwise uses gp-0x72f8 (0xec544a8).

- `bgnpoint` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6f648
  **Inferred.** The routine first checks 0xecdfba0; a set value makes it call gp-0x6aac (0xec8fc18) under a spill frame that is torn down afterwards. Then flag one picks gp-0x6294 (0xecb0bb0), flag two picks gp-0x6290 (0xecb0c14), and gp-0x7418 (0xec5193c) is the default target.

- `rot` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6f6d0
  **Inferred.** A nonzero 0xecdfba0 leads to the hook at gp-0x6aac (0xec8fc18), bracketed by stores of a0 to a3 and ra into the frame and loads of them back. Dispatch goes to gp-0x64f0 (0xeca9aec) for a set flag one, gp-0x64ec (0xeca9bac) for a set flag two, and gp-0x74ac (0xec50620) for neither.

- `v4f` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6f758
  **Inferred.** Three-way tail jump: flag one to gp-0x63f8 (0xecac510), flag two to gp-0x63f4 (0xecac550), otherwise gp-0x737c (0xec5304c). It stores nothing and builds no stack frame.

- `bgntmesh` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6f798
  **Inferred.** Gate 0xecdfba0 guards a call through gp-0x6aac (0xec8fc18), and the argument registers are spilled to a 0x20-byte frame around it. The final jump goes to gp-0x6270 (0xecb0f70) when flag one is nonzero, gp-0x626c (0xecb0ff8) when flag two is nonzero, and gp-0x7410 (0xec51a04) when both are zero.

- `polf` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6f820
  **Inferred.** When 0xecdfba0 holds a nonzero word the routine calls the hook at gp-0x6aac (0xec8fc18), saving a0 to a3 and ra first. Flag one then routes to gp-0x6750 (0xeca10e0), flag two to gp-0x674c (0xeca1254), and the default is gp-0x7824 (0xec47e40).

- `rdri` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6f8a8
  **Inferred.** Flag one picks gp-0x65c4 (0xeca6f10). With flag one clear, flag two picks gp-0x65c0 (0xeca7010), and with both clear the routine jumps to gp-0x7628 (0xec4ca44). The argument registers are not touched.

- `rdr2s` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6f8e8
  **Inferred.** Flag one gives gp-0x65f4 (0xeca64fc), flag two gives gp-0x65f0 (0xeca65e8), and the last choice is gp-0x761c (0xec4cbb4). Nothing is spilled, because the routine makes no call of its own.

- `pmvs` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6f928
  **Inferred.** Nonzero 0xecdfba0: a0 to a3 and ra go to the stack and gp-0x6aac (0xec8fc18) is called. Selection then gives gp-0x6898 (0xec9c1f0) if flag one is nonzero, gp-0x6894 (0xec9c2a8) if flag two is nonzero, and gp-0x7648 (0xec4c658) otherwise.

- `colorf` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6f9b0
  **Inferred.** Dispatches colorf through a three-way choice: flag one to gp-0x7b0c (0xec3eddc), flag two to gp-0x7b08 (0xec3ee20), and gp-0x72f4 (0xec54510) when neither is set. It is a plain tail jump with no frame.

- `v4i` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6f9f0
  **Inferred.** The routine is a flag-steered trampoline. Flag one takes gp-0x6404 (0xecac3e0), flag two takes gp-0x6400 (0xecac420), and with both clear it takes gp-0x7378 (0xec530d0). It writes no memory.

- `rotate` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6fa30
  **Inferred.** The gate at 0xecdfba0 decides whether the hook at gp-0x6aac (0xec8fc18) runs, and when it does, a 0x20-byte frame holds the arguments. The flags then pick gp-0x64f8 (0xeca98f4) for flag one or gp-0x64f4 (0xeca99f0) for flag two, and gp-0x77b0 (0xec49138) is the fallback.

- `writemask` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6fab8
  **Inferred.** A set 0xecdfba0 calls gp-0x6aac (0xec8fc18) with a0 to a3 kept in the frame. The jump goes to gp-0x7ef0 (0xec33018) when flag one is set, to gp-0x7eec (0xec33078) when flag two is set, and to gp-0x7768 (0xec49b78) when neither is.

- `poly2s` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6fb40
  **Inferred.** Gate word 0xecdfba0 first: when it is nonzero, the routine calls gp-0x6aac (0xec8fc18) and keeps the argument registers across the call. The selector then uses flag one for gp-0x67d4 (0xec9e1e0), flag two for gp-0x67d0 (0xec9e364), and gp-0x7660 (0xec4c288) as the last case.

- `endline` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6fbc8
  **Inferred.** Flag one selects gp-0x6240 (0xecb1470), flag two selects gp-0x623c (0xecb14b0), and gp-0x73e4 (0xec51f0c) is the fallback used when both flags are clear.

- `swritemask` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6fc08
  **Inferred.** 0xecdfba0 gates the hook call at gp-0x6aac (0xec8fc18), wrapped in a spill of a0 to a3 and ra. The tail target is gp-0x6094 (0xecb7850) for a set flag one, gp-0x6090 (0xecb78b0) for a set flag two, or gp-0x728c (0xec553d0) when both are zero.

- `polysmooth` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6fc90
  **Inferred.** After the gate at 0xecdfba0 has run the hook through gp-0x6aac (0xec8fc18), the routine tests flag one and then flag two. Those choose gp-0x61ac (0xecb2398) and gp-0x61a8 (0xecb23f8) respectively, and gp-0x7270 (0xec556c8) is the default.

- `lmcolor` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6fd18
  **Inferred.** Flag one jumps through gp-0x7b24 (0xec3ebb4), flag two jumps through gp-0x7b20 (0xec3ebec), and with both flags clear it jumps through gp-0x7300 (0xec543d8).

- `rectf` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6fd58
  **Inferred.** Gate 0xecdfba0 wraps a hook call through gp-0x6aac (0xec8fc18) with the arguments saved. Afterwards flag one steers to gp-0x6694 (0xeca3d18), flag two steers to gp-0x6690 (0xeca3e50), and gp-0x77d0 (0xec48d00) is taken when neither flag is set.

- `color` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6fde0
  **Inferred.** Flag one leads to gp-0x7b18 (0xec3ecb8), flag two to gp-0x7b14 (0xec3ed00), and gp-0x795c (0xec45620) is taken when neither flag is set. Besides gp and the scratch registers t2, t3 and t9, the routine writes no register.

- `rdrs` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6fe20
  **Inferred.** A nonzero flag one picks gp-0x65d0 (0xeca6c4c), a nonzero flag two picks gp-0x65cc (0xeca6d4c), and gp-0x7620 (0xec4cb20) is the fallback. Each path is a load of the pointer followed by jr t9.

- `tlutbind` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6fe60
  **Inferred.** Flags are tested in the order one, then two. Flag one selects gp-0x5f78 (0xecc5380), flag two selects gp-0x5f74 (0xecc53b8), and gp-0x71b8 (0xec57684) is used when both are clear.

- `v4s` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6fea0
  **Inferred.** Reads flag one and flag two and jumps through gp-0x6410 (0xecac2b0), gp-0x640c (0xecac2f0), or gp-0x7374 (0xec53154), in that priority order. It writes nothing.

- `bgnline` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6fee0
  **Inferred.** The gate at 0xecdfba0 decides the hook call (gp-0x6aac, 0xec8fc18), which runs with a0 to a3 and ra in a 0x20-byte frame. Targets: gp-0x6288 (0xecb0cf0) on flag one, gp-0x6284 (0xecb0d54) on flag two, gp-0x741c (0xec518d8) otherwise.

- `rpdri` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ff68
  **Inferred.** Flag one gives gp-0x6534 (0xeca9048), flag two gives gp-0x6530 (0xeca9120), and with both clear the pointer at gp-0x75f4 (0xec4d0c4) is used. There is no stack frame.

- `recti` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6ffa8
  **Inferred.** If 0xecdfba0 is set the routine calls gp-0x6aac (0xec8fc18) and reloads the saved arguments. Jump selection: gp-0x66c4 (0xeca3348) for flag one, gp-0x66c0 (0xeca3430) for flag two, gp-0x77c8 (0xec48df8) by default.

- `t2d` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70030
  **Inferred.** Chooses gp-0x638c (0xecad6a4) when flag one is set, gp-0x6388 (0xecad6f0) when flag two is set, and gp-0x72bc (0xec54c3c) when neither is. The stack pointer is not changed and nothing is stored.

- `sboxf` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70070
  **Inferred.** A nonzero 0xecdfba0 runs the hook at gp-0x6aac (0xec8fc18) inside a frame holding a0 to a3 and ra. Then flag one selects gp-0x6688 (0xeca402c), flag two selects gp-0x6684 (0xeca4164), and gp-0x7338 (0xec53910) is the fallback.

- `resetls` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec700f8
  **Inferred.** Gate word 0xecdfba0: when nonzero, call the hook at gp-0x6aac (0xec8fc18) with the arguments spilled. Dispatch order is flag one then flag two, with targets gp-0x7c70 (0xec3aee8) and gp-0x7ca4 (0xec3ae28). The default is gp-0x77c4 (0xec48e6c).

- `polymode` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70180
  **Inferred.** The hook at gp-0x6aac (0xec8fc18) runs whenever 0xecdfba0 holds a nonzero word, and a0 to a3 and ra are saved and restored around it. The selector then sends control to gp-0x6740 (0xeca1604) for flag one, gp-0x673c (0xeca1664) for flag two, or gp-0x7284 (0xec554a4).

- `t2f` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70208
  **Inferred.** Leaf stub with no stack frame. It tests the word at `gl_immediate_mode` and, when that is nonzero, jumps to `gl_i_t2f`. Otherwise it tests the word at `gl_openobjhdr` and jumps to `gl_c_t2f` if that is nonzero, and to `gl_d_t2f` when both words are zero.

- `sboxi` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70248
  **Inferred.** Pre-hook stub. A nonzero word at `gl_inMoveDraw` makes it store a0 to a3 in a 0x20-byte frame, save ra at sp+0x10, call `__iglooCloseMoveDrawFromTable` through jalr, and reload the arguments. It then picks `gl_i_sboxi`, `gl_c_sboxi` or `gl_d_sboxi` by testing `gl_immediate_mode` and then `gl_openobjhdr`.

- `pmv` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec702d0
  **Inferred.** The `__iglooCloseMoveDrawFromTable` hook runs whenever `gl_inMoveDraw` is nonzero, with a0 to a3 kept across the call in the frame. The routine then tail-jumps through `gl_i_pmv` for a nonzero `gl_immediate_mode`, `gl_c_pmv` for a nonzero `gl_openobjhdr`, and `gl_d_pmv` otherwise.

- `blendcolor` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70358
  **Inferred.** The hook guarded by `gl_inMoveDraw` comes first. After it returns, the code reads `gl_immediate_mode` and, when that is zero, reads `gl_openobjhdr`. The jump target is `gl_i_blendcolor`, `gl_c_blendcolor` or `gl_d_blendcolor` accordingly.

- `pixmode` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec703e0
  **Inferred.** If `gl_inMoveDraw` is set, a0 to a3 and ra are written to the 0x20-byte stack area, `__iglooCloseMoveDrawFromTable` is called, and the saved values are loaded back. Dispatch then selects `gl_i_pixmode`, `gl_c_pixmode` or `gl_d_pixmode` from the words `gl_immediate_mode` and `gl_openobjhdr`.

- `xfpt` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70468
  **Inferred.** The body opens with a gp-relative test of `gl_inMoveDraw`. When the word is set, it calls `__iglooCloseMoveDrawFromTable` with the arguments parked at sp+0 through sp+0xc. The tail is the usual two-word test that ends in `jr t9` at `gl_i_xfpt`, `gl_c_xfpt` or `gl_d_xfpt`.

- `t2i` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec704f0
  **Inferred.** No stack frame and no hook. The words `gl_immediate_mode` and `gl_openobjhdr` pick among `gl_i_t2i`, `gl_c_t2i` and `gl_d_t2i`, and the last of these is the fall-through default.

- `pdri` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70530
  **Inferred.** Tail dispatcher with no call. A nonzero `gl_immediate_mode` leads to `gl_i_pdri`, a nonzero `gl_openobjhdr` to `gl_c_pdri`, and otherwise the jump goes to `gl_d_pdri`.

- `gl_scrrect` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70570
  **Inferred.** Calls `__iglooCloseMoveDrawFromTable` when `gl_inMoveDraw` is nonzero and otherwise falls straight into the dispatch. The dispatch tests `gl_immediate_mode` first, then `gl_openobjhdr`, and jumps to `gl_i_gl_scrrect`, `gl_c_gl_scrrect` or `gl_d_gl_scrrect`.

- `poly` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec705f8
  **Inferred.** The 0x20-byte frame holds the four argument registers and ra at sp+0x10. A nonzero `gl_inMoveDraw` triggers the call to `__iglooCloseMoveDrawFromTable`. A nonzero `gl_immediate_mode` sends control to `gl_i_poly`, a nonzero `gl_openobjhdr` to `gl_c_poly`, and anything else to `gl_d_poly`.

- `pushname` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70680
  **Inferred.** A nonzero `gl_inMoveDraw` routes the call through `__iglooCloseMoveDrawFromTable`. The stub then jumps to `gl_i_pushname` for immediate mode, `gl_c_pushname` for an open object header, or `gl_d_pushname` by default.

- `RGBwritemask` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70708
  **Inferred.** The first action is the `gl_inMoveDraw` check, which guards a call to `__iglooCloseMoveDrawFromTable` wrapped in a stack save of a0 to a3 and ra. Control then transfers three ways, keyed on `gl_immediate_mode` and `gl_openobjhdr`, to `gl_i_RGBwritemask`, `gl_c_RGBwritemask` or `gl_d_RGBwritemask`.

- `rects` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70790
  **Inferred.** The hook comes first: a nonzero `gl_inMoveDraw` leads to `__iglooCloseMoveDrawFromTable` after a0 to a3 are spilled. The stub then reads `gl_immediate_mode`, and a nonzero value jumps to `gl_i_rects`. Otherwise it reads `gl_openobjhdr` and jumps to `gl_c_rects` when that is nonzero, or to `gl_d_rects` when it is not.

- `xfpti` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70818
  **Inferred.** Spills a0 to a3 and ra, calls `__iglooCloseMoveDrawFromTable` when `gl_inMoveDraw` is set, reloads them, and then selects among `gl_i_xfpti`, `gl_c_xfpti` and `gl_d_xfpti` by testing `gl_immediate_mode` and then `gl_openobjhdr`.

- `rpdrs` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec708a0
  **Inferred.** Reads two flag words in order. A set `gl_immediate_mode` sends the caller to `gl_i_rpdrs`, a set `gl_openobjhdr` sends it to `gl_c_rpdrs`, and when both are clear it goes to `gl_d_rpdrs`. The routine has no frame and makes no call.

- `afunction` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec708e0
  **Inferred.** A pre-hook gated by `gl_inMoveDraw` calls `__iglooCloseMoveDrawFromTable` with its arguments preserved. Dispatch is then `gl_immediate_mode` nonzero to `gl_i_afunction`, `gl_openobjhdr` nonzero to `gl_c_afunction`, and otherwise `gl_d_afunction`.

- `fogvertex` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70968
  **Inferred.** The routine calls `__iglooCloseMoveDrawFromTable` for a nonzero `gl_inMoveDraw`, keeping its arguments on the stack, and then transfers control to `gl_i_fogvertex`, `gl_c_fogvertex` or `gl_d_fogvertex` based on the two open-state words.

- `multisample` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec709f0
  **Inferred.** With `gl_inMoveDraw` set, the body spills and reloads the argument registers around a jalr to `__iglooCloseMoveDrawFromTable`. The closing dispatch uses `gl_immediate_mode` and `gl_openobjhdr` and targets `gl_i_multisample`, `gl_c_multisample` or `gl_d_multisample`.

- `sboxs` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70b00
  **Inferred.** The guard word `gl_inMoveDraw` controls a hook call to `__iglooCloseMoveDrawFromTable` under a 0x20-byte frame. The routine ends in a tail jump chosen by `gl_immediate_mode` (to `gl_i_sboxs`), then `gl_openobjhdr` (to `gl_c_sboxs`), with `gl_d_sboxs` as the default.

- `t2s` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70b88
  **Inferred.** The gp setup is followed directly by the two flag loads. The jump lands on `gl_i_t2s`, `gl_c_t2s` or `gl_d_t2s`, and the routine never touches the stack.

- `pdrs` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70bc8
  **Inferred.** Leaf dispatcher with no frame and no hook. It jumps to `gl_i_pdrs`, `gl_c_pdrs` or `gl_d_pdrs` according to whether `gl_immediate_mode` or `gl_openobjhdr` is nonzero.

- `zdraw` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70c08
  **Inferred.** Before dispatch, a set `gl_inMoveDraw` makes the routine call `__iglooCloseMoveDrawFromTable` and restore a0 through a3. It then picks `gl_i_zdraw`, `gl_c_zdraw` or `gl_d_zdraw` by testing the two words in turn.

- `rpatch` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70c90
  **Inferred.** Calls the close hook when `gl_inMoveDraw` is nonzero, with the arguments kept on the stack. It then branches on `gl_immediate_mode`, and on `gl_openobjhdr` if that is zero, to tail-jump through `gl_i_rpatch`, `gl_c_rpatch` or `gl_d_rpatch`.

- `poly2` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70d18
  **Inferred.** The hook `__iglooCloseMoveDrawFromTable` is called if `gl_inMoveDraw` is nonzero. Afterwards the body jumps to `gl_i_poly2` when `gl_immediate_mode` is set, to `gl_c_poly2` when `gl_openobjhdr` is set, and to `gl_d_poly2` otherwise.

- `wmpack` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70da0
  **Inferred.** A nonzero `gl_inMoveDraw` triggers a call to `__iglooCloseMoveDrawFromTable` from a 0x20-byte frame. The final three-way jump goes to `gl_i_wmpack`, `gl_c_wmpack` or `gl_d_wmpack`, depending on the words `gl_immediate_mode` and `gl_openobjhdr`.

- `move2i` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70e28
  **Inferred.** The hook is gated by `gl_inMoveDraw`: a0 to a3 and ra go to the frame, `__iglooCloseMoveDrawFromTable` is called, and they come back. The routine then tail-jumps to `gl_i_move2i` for immediate mode, `gl_c_move2i` for an open object header, and `gl_d_move2i` in the remaining case.

- `xfpts` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70eb0
  **Inferred.** Calls `__iglooCloseMoveDrawFromTable` through a register when `gl_inMoveDraw` is set, keeping the argument registers in a 0x20-byte frame. The dispatch reads `gl_immediate_mode` and `gl_openobjhdr` and ends at `gl_i_xfpts`, `gl_c_xfpts` or `gl_d_xfpts`.

- `pnt2` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70f38
  **Inferred.** If `gl_inMoveDraw` holds a nonzero word, the routine saves its arguments, calls `__iglooCloseMoveDrawFromTable`, and restores them. It then dispatches to `gl_i_pnt2`, `gl_c_pnt2` or `gl_d_pnt2` by checking `gl_immediate_mode` before `gl_openobjhdr`.

- `dither` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70fc0
  **Inferred.** Pre-hook on `gl_inMoveDraw`, with the close-move-draw table call and a0 to a3 and ra held in the frame. Dispatch goes to `gl_i_dither` when `gl_immediate_mode` is nonzero, to `gl_c_dither` when `gl_openobjhdr` is nonzero, and otherwise to `gl_d_dither`.

- `subpixel` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71048
  **Inferred.** A frame is opened only when the guard `gl_inMoveDraw` is set. Inside it, `__iglooCloseMoveDrawFromTable` runs and the four arguments are reloaded. The three-target dispatch then uses `gl_immediate_mode`, `gl_openobjhdr` and the default slot `gl_d_subpixel`.

- `acbuf` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec710d0
  **Inferred.** `gl_inMoveDraw` decides whether `__iglooCloseMoveDrawFromTable` runs first, with a0 to a3 preserved on the stack. Afterwards the tail jump lands on `gl_i_acbuf`, `gl_c_acbuf` or `gl_d_acbuf` in the order the two open-state words are tested.

- `bgnclosedline` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71158
  **Inferred.** The close hook runs first when `gl_inMoveDraw` is nonzero. Then `gl_immediate_mode` is tested, followed by `gl_openobjhdr`, and control jumps to `gl_i_bgnclosedline`, `gl_c_bgnclosedline` or `gl_d_bgnclosedline`.

- `polf2` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec711e0
  **Inferred.** A nonzero `gl_inMoveDraw` routes through `__iglooCloseMoveDrawFromTable` with the arguments spilled to sp+0 through sp+0xc. The stub ends by jumping to `gl_i_polf2` for a set `gl_immediate_mode`, `gl_c_polf2` for a set `gl_openobjhdr`, or `gl_d_polf2` otherwise.

- `tevbind` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71268
  **Inferred.** The gp-relative load of `gl_inMoveDraw` decides whether the 0x20-byte frame is built and `__iglooCloseMoveDrawFromTable` called. Dispatch follows, choosing `gl_i_tevbind`, `gl_c_tevbind` or `gl_d_tevbind` from the two words.

- `sclear` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec712f0
  **Inferred.** When `gl_inMoveDraw` is set, the routine calls `__iglooCloseMoveDrawFromTable`, keeping a0 to a3 and ra in its frame. It then picks the immediate, open-object or default target (`gl_i_sclear`, `gl_c_sclear`, `gl_d_sclear`) by testing `gl_immediate_mode` and `gl_openobjhdr`.

- `move2s` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71378
  **Inferred.** Hook on `gl_inMoveDraw`, with a0 to a3 saved at sp+0 through sp+0xc and ra at sp+0x10. Tail dispatch goes to `gl_i_move2s`, `gl_c_move2s` or `gl_d_move2s`, using `gl_immediate_mode` and then `gl_openobjhdr`.

- `pushmatrix` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71400
  **Inferred.** If `gl_inMoveDraw` is nonzero, the stub calls `__iglooCloseMoveDrawFromTable` and restores its arguments from the frame. It then branches on `gl_immediate_mode` and `gl_openobjhdr` to exit through `gl_i_pushmatrix`, `gl_c_pushmatrix` or `gl_d_pushmatrix`.

- `t3d` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71488
  **Inferred.** Pure dispatch with no frame and no call: `gl_immediate_mode`, then `gl_openobjhdr`, then the default. The targets are `gl_i_t3d`, `gl_c_t3d` and `gl_d_t3d`.

- `pnt` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec714c8
  **Inferred.** The hook path through `__iglooCloseMoveDrawFromTable` is taken when `gl_inMoveDraw` is nonzero, bracketed by the frame at sp. The jump at the end uses `gl_i_pnt`, `gl_c_pnt` or `gl_d_pnt` according to `gl_immediate_mode` and `gl_openobjhdr`.

- `t3f` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71550
  **Inferred.** Three-way tail jump with no call and no stack use. It reads `gl_immediate_mode`, then `gl_openobjhdr`, and transfers to `gl_i_t3f`, `gl_c_t3f` or `gl_d_t3f`.

- `concave` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71590
  **Inferred.** A nonzero gl_inMoveDraw word makes the routine call __iglooCloseMoveDrawFromTable first, with a0 to a3 spilled to a 0x20-byte frame and reloaded afterwards. It then reads gl_immediate_mode and tail-jumps to gl_i_concave at 0xecb4054 when that word is set. Otherwise the gl_openobjhdr word picks gl_c_concave at 0xecb40b4, and a zero there selects gl_d_concave at 0xec50f00.

- `callobj` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71618
  **Inferred.** The move-draw guard comes first: when gl_inMoveDraw is nonzero, callobj calls __iglooCloseMoveDrawFromTable with its four argument registers kept on the stack. Its three exits are gl_i_callobj at 0xec36a10 for immediate mode, gl_c_callobj at 0xec36ab8 for a nonzero gl_openobjhdr, and gl_d_callobj at 0xec44fe8 for the remaining case.

- `t3i` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec716a0
  **Inferred.** This 64-byte selector has no move-draw test. It loads the gl_immediate_mode word and jumps to gl_i_t3i at 0xecad908 when that word is nonzero. Failing that, the gl_openobjhdr word chooses gl_c_t3i at 0xecad948, and a zero value there reaches gl_d_t3i at 0xec56868.

- `splfi` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec716e0
  **Inferred.** A nonzero gl_inMoveDraw word sends the call through __iglooCloseMoveDrawFromTable, with the argument registers saved and restored around it. Immediate mode, tested through gl_immediate_mode, selects gl_i_splfi at 0xecb59d4. With immediate mode clear, gl_openobjhdr chooses between gl_c_splfi at 0xecb5b9c and gl_d_splfi at 0xec4dab4.

- `clipplane` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71768
  **Inferred.** Here gl_inMoveDraw gates a call to __iglooCloseMoveDrawFromTable, and the incoming arguments are kept in a 0x20-byte frame across it. The selector then reads gl_immediate_mode and jumps to gl_i_clipplane at 0xec3bc7c when it is nonzero. Otherwise a nonzero gl_openobjhdr sends the call to gl_c_clipplane at 0xec3bce4, and anything else reaches gl_d_clipplane at 0xec54f68.

- `cpack` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec717f0
  **Inferred.** cpack goes straight to its mode selector, with no move-draw check. Immediate mode jumps to gl_i_cpack at 0xec3e5a8. Failing that, the gl_openobjhdr word, loaded through the GOT slot at -0x52dc(gp), jumps to gl_c_cpack at 0xec3e5ec, and a zero value selects gl_d_cpack at 0xec51dd4.

- `rcrv` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71830
  **Inferred.** rcrv calls __iglooCloseMoveDrawFromTable whenever gl_inMoveDraw is set, then reloads its four incoming registers from the frame. The gl_immediate_mode word decides between gl_i_rcrv at 0xec41a0c and the object-header test, which selects gl_c_rcrv at 0xec41bf8 or gl_d_rcrv at 0xec5012c.

- `rdr` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec718b8
  **Inferred.** Without any move-draw test, rdr compares the gl_immediate_mode word and transfers to gl_i_rdr at 0xeca71d0 when it is set. The gl_openobjhdr word is read next: a nonzero value sends control to gl_c_rdr at 0xeca72b4, and a zero value to gl_d_rdr at 0xec4c960.

- `move2` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec718f8
  **Inferred.** move2 runs __iglooCloseMoveDrawFromTable when gl_inMoveDraw is nonzero and then picks one of three bodies. Immediate mode uses gl_i_move2 at 0xec8e890. Otherwise gl_c_move2 at 0xec8e948 is used when gl_openobjhdr is set, and gl_d_move2 at 0xec47540 when it is clear.

- `mspattern` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71980
  **Inferred.** The routine opens with the gl_inMoveDraw guard: a nonzero word leads to a call of __iglooCloseMoveDrawFromTable, with the argument registers saved to the stack first. Its selector then jumps to gl_i_mspattern at 0xec8ff28 for immediate mode, to gl_c_mspattern at 0xec8ff88 when gl_openobjhdr is set, and to gl_d_mspattern at 0xec57224 otherwise.

- `linesmooth` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71a08
  **Inferred.** A nonzero gl_inMoveDraw word triggers __iglooCloseMoveDrawFromTable before the selector runs. The selector then reads gl_immediate_mode, and a set word jumps to gl_i_linesmooth at 0xecb1fdc. The gl_openobjhdr word then chooses gl_c_linesmooth at 0xecb203c, or gl_d_linesmooth at 0xec537bc when it is zero.

- `t3s` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71a90
  **Inferred.** t3s is a 64-byte selector with no move-draw test. Its immediate-mode target is gl_i_t3s at 0xecad7e0, its object-header target is gl_c_t3s at 0xecad820, and its fallback is gl_d_t3s at 0xec568e4.

- `splfs` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71ad0
  **Inferred.** Ahead of the mode test, splfs calls __iglooCloseMoveDrawFromTable whenever gl_inMoveDraw is non-zero. It then transfers to gl_i_splfs at 0xecb54d8 if gl_immediate_mode is set, to gl_c_splfs at 0xecb56a0 if gl_openobjhdr is set, and to gl_d_splfs at 0xec4dd78 in every other case.

- `lchstr` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71b58
  **Inferred.** The gl_inMoveDraw guard leads to __iglooCloseMoveDrawFromTable. A set gl_immediate_mode word hands the call to gl_i_lchstr at 0xec3849c. The gl_openobjhdr word then hands it to gl_c_lchstr at 0xec3842c, or to gl_d_lchstr at 0xec56370 when it reads zero.

- `initnames` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71be0
  **Inferred.** initnames closes the move-draw table through __iglooCloseMoveDrawFromTable when gl_inMoveDraw is set. Immediate mode then selects gl_i_initnames at 0xec96d0c, and gl_openobjhdr selects gl_c_initnames at 0xec96d68 or gl_d_initnames at 0xec4b7ac.

- `cmov2` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71c68
  **Inferred.** cmov2 spills its arguments to a stack frame before the move-draw call, which runs only when gl_inMoveDraw is set. Afterwards gl_immediate_mode and gl_openobjhdr pick among gl_i_cmov2 at 0xec3c2ec, gl_c_cmov2 at 0xec3c370 and gl_d_cmov2 at 0xec454d8.

- `lsbackup` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71cf0
  **Inferred.** lsbackup checks gl_inMoveDraw and calls __iglooCloseMoveDrawFromTable when the word is set. Its final jump goes to gl_i_lsbackup at 0xec3aee0 under immediate mode, to gl_c_lsbackup at 0xec3ae20 when gl_openobjhdr is non-zero, and to gl_d_lsbackup at 0xec47164 in the last case.

- `lsrepeat` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71d78
  **Inferred.** After the move-draw guard, lsrepeat loads gl_immediate_mode and branches to gl_i_lsrepeat at 0xec761b4 if it is set. A clear immediate-mode word falls through to the object-header test, which selects gl_c_lsrepeat at 0xec76214 or, when that word is also clear, gl_d_lsrepeat at 0xec4b884.

- `draw` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71e00
  **Inferred.** draw has no move-draw guard. It reads gl_immediate_mode and, when nonzero, jumps to gl_i_draw at 0xec8f8dc. Otherwise gl_openobjhdr decides between gl_c_draw at 0xec8f960 and gl_d_draw at 0xec45b98.

- `zwritemask` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71e40
  **Inferred.** zwritemask makes its move-draw call, to __iglooCloseMoveDrawFromTable, only if gl_inMoveDraw holds a nonzero value. Immediate mode selects gl_i_zwritemask at 0xecd2f18, the object-header word selects gl_c_zwritemask at 0xecd2f94, and the remaining case jumps to gl_d_zwritemask at 0xec53378.

- `xfpt2i` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71ec8
  **Inferred.** xfpt2i begins with the gl_inMoveDraw test and the __iglooCloseMoveDrawFromTable call it guards. The mode selector follows: gl_i_xfpt2i at 0xec3af38 for immediate mode, gl_c_xfpt2i at 0xec3ae78 for a nonzero object-header word, and gl_d_xfpt2i at 0xec4e224 for the rest.

- `zbuffer` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71f50
  **Inferred.** When gl_inMoveDraw is set, zbuffer closes the move-draw table through __iglooCloseMoveDrawFromTable and keeps a0 to a3 on the stack across the call. It then jumps to gl_i_zbuffer at 0xecd2c1c when gl_immediate_mode is nonzero, to gl_c_zbuffer at 0xecd2c7c for a nonzero gl_openobjhdr word, and to gl_d_zbuffer at 0xec4e4b0 otherwise.

- `t4d` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec71fd8
  **Inferred.** t4d has no leading guard. Its first branch reads gl_immediate_mode and goes to gl_i_t4d at 0xecae040 on a nonzero value. Its second branch reads gl_openobjhdr: a nonzero value goes to gl_c_t4d at 0xecae0a4, and a zero value to gl_d_t4d at 0xec569e4.

- `clear` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec72018
  **Inferred.** The leading guard is gl_inMoveDraw: when set, clear calls __iglooCloseMoveDrawFromTable and reloads its arguments afterward. The later jump lands on gl_i_clear at 0xec3b33c if immediate mode is on, on gl_c_clear at 0xec3b398 if the object-header word is on, and on gl_d_clear at 0xec45334 if neither is.

- `t4f` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec720a0
  **Inferred.** Two words decide the target of t4f. A nonzero gl_immediate_mode word selects gl_i_t4f at 0xecadf10. Failing that, a nonzero gl_openobjhdr word selects gl_c_t4f at 0xecadf50. Only when both are zero does the routine transfer to gl_d_t4f at 0xec56960.

- `bgnqstrip` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec720e0
  **Inferred.** bgnqstrip calls __iglooCloseMoveDrawFromTable first when gl_inMoveDraw is nonzero. For dispatch it goes to gl_i_bgnqstrip at 0xecb10f8 when immediate mode is on, to gl_c_bgnqstrip at 0xecb115c when the object-header word is on, and to gl_d_bgnqstrip at 0xec54a98 when neither is.

- `cmov2i` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec72168
  **Inferred.** Under the gl_inMoveDraw guard, cmov2i runs __iglooCloseMoveDrawFromTable. Three targets follow: gl_i_cmov2i at 0xec3c138, gl_c_cmov2i at 0xec3c1c8 and gl_d_cmov2i at 0xec45544, chosen by the immediate-mode word and then the gl_openobjhdr word.

- `t4i` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec721f0
  **Inferred.** t4i has no gl_inMoveDraw guard. It tests gl_immediate_mode for gl_i_t4i at 0xecadde0, then gl_openobjhdr for gl_c_t4i at 0xecade20, and otherwise jumps to gl_d_t4i at 0xec56b2c.

- `n3f` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec72230
  **Inferred.** n3f jumps to gl_i_n3f at 0xecb1a40 when the gl_immediate_mode word is nonzero. Failing that, a nonzero gl_openobjhdr word jumps to gl_c_n3f at 0xecb1a84, and a zero object-header word jumps to gl_d_n3f at 0xec52550.

- `loadname` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec72270
  **Inferred.** loadname makes the __iglooCloseMoveDrawFromTable call only when gl_inMoveDraw is set. Its selector then picks gl_i_loadname at 0xec9692c, gl_c_loadname at 0xec96990 or gl_d_loadname at 0xec4b810 by the two mode words.

- `xfpt2s` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec722f8
  **Inferred.** xfpt2s makes the move-draw close call when gl_inMoveDraw is set, with its four argument registers saved in the frame. Next, gl_immediate_mode chooses gl_i_xfpt2s at 0xec3af44. The gl_openobjhdr word then chooses gl_c_xfpt2s at 0xec3ae84 or gl_d_xfpt2s at 0xec4e290.

- `texbind` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec72380
  **Inferred.** texbind calls __iglooCloseMoveDrawFromTable under the gl_inMoveDraw guard. Its three destinations are gl_i_texbind at 0xecb9690, gl_c_texbind at 0xecb96f4 and gl_d_texbind at 0xec555e4, picked by gl_immediate_mode and then gl_openobjhdr.

- `polyi` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec72408
  **Inferred.** polyi's move-draw guard calls __iglooCloseMoveDrawFromTable when gl_inMoveDraw is nonzero, spilling a0 to a3 first. The remaining branches send it to gl_i_polyi at 0xec9f2d0, gl_c_polyi at 0xec9f458 or gl_d_polyi at 0xec48574.

- `gl_dgl_printf` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec7f3d4
  **Inferred.** A varargs forwarder. It stores a1, a2 and a3 at frame offsets 0x2c, 0x30 and 0x34 so that the variable arguments sit in one block, then calls the routine at 0xec7f31c, which has no symbol-table entry. The call passes a0 unchanged, a1 as the address of that block, and the constant 6 in a2. The callee's return value stays in v0 on the way out.

- `GLXwinset` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec8c854
  **Inferred.** GLXwinset stores its first argument into __iglooClientDPY and then calls gl_initdisplay with a0 and the constant 1. A zero return from gl_initdisplay makes it return -2. Otherwise the object pointer that gl_initdisplay returned goes to an unnamed routine at 0xec8c7c0. The comm_curgfile word at +4 then decides the callee: a value of 1 calls __GLgl_glx_winset, and any other value calls gl_d_gl_glx_winset, each with the object's +8 field and the second argument.

- `GLXunlink` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec8c914
  **Inferred.** This routine follows the GLXwinset sequence without the store. It calls gl_initdisplay with a0 and 1, returns -2 when that call yields zero, then calls the unnamed routine at 0xec8c7c0. Finally comm_curgfile +4 chooses between __GLgl_glx_unlink and gl_d_gl_glx_unlink, each given the +8 field of the object and the second argument.

- `GLXgetconfig` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec8c9cc
  **Inferred.** The routine calls gl_initializer, then gl_initdisplay with a0 and 1, and returns 0 when the display call yields zero. Otherwise it calls an unnamed routine at 0xec8c400, then one at 0xec8c7c0 with the object pointer. It mallocs 4 times *gl_template_size plus 4 bytes and zeroes the word at index *gl_template_size. The 12-byte records of the third argument are counted up to the first record whose leading word is zero. Each counted record contributes three words to the call to __GLgl_glx_getconfig, or to gl_d_gl_glx_getconfig when comm_curgfile +4 is not 1, which receives the object's +8 field, the second argument, the count times three, the third argument, and the template size and buffer on the stack. A nonzero result frees the buffer and returns 0. Otherwise the buffer is returned, after a last call to an unnamed routine at 0xec8c450.

- `GLXlink` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec8cb78
  **Inferred.** GLXlink returns 0 when gl_initdisplay(a0, 1) returns 0. Otherwise it calls the unnamed routine at 0xec8c7c0, then XSync on the original a0 with a second argument of 0. The second argument array is counted in the same 12-byte-record way as GLXgetconfig. The routine then calls __GLgl_glx_link, or gl_d_gl_glx_link when comm_curgfile +4 is not 1, with the object's +8 field, three words per counted record, and the array. Whatever the callee returns becomes the result.

- `gl_islocal` in `usr/gfx/arch/IGLOO/libgl.so` at 0xeca51c0
  **Inferred.** It calls gl_shlib_version (at 0xec5bec0) and returns 1 when the result is below 4. Otherwise it reads the pointer in comm_curgfile (at 0xecdc614), and if that pointer is null it calls gl_comm_default_init (at 0xec3f090) first and reads the +4 word of the object that call returns. The result is 1 exactly when that +4 word equals 1, and 0 otherwise.
