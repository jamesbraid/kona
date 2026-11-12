# Tier-2 routine roles, kona round 3, batch 0

Roles for targets 0 to 24 of the ranked tier-2 list. Each one comes from the rendered instruction facts at the cited addresses. None is established: every role is inferred from the stores, loads, calls and constants the facts show, and the names are only hints.

- `__glkonim_ReadBuffer` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5c8a0
  **Inferred.** A 16-byte leaf with no calls. It stores a word to the fixed address 0x4000 at 0xda5c8a4 and 0xda5c8ac, and its return at 0xda5c8a8 leaves v0 unknown. The name suggests a read-buffer selection, but the facts show only the stores and do not say what they carry.

- `__glkonim_BlendEquationEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5cd10
  **Inferred.** A 16-byte leaf with the same shape as `__glkonim_ReadBuffer` at 0xda5c8a0. It stores a word to 0x4000 at 0xda5cd14 and 0xda5cd1c and returns at 0xda5cd18 with v0 unknown. The name points at a blend equation, which these stores alone do not confirm.

- `glXGetVideoSyncSGI` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x265995c
  **Inferred.** A 140-byte routine that loads a pointer from the absolute word 0x1028 and calls ioctl with request 0x3fe at 0x26599b4, passing a pointer to a stack buffer. It stores the result through a0 at 0x26599d8. Two zero tests at 0x2659978 and 0x2659984 branch past the ioctl to 0x26599dc, and the two returns give 0x0 at 0x26599d4 and 0x5 at 0x26599e0.

- `glXGetVideoSyncSGI` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x215995c
  **Inferred.** The same 140-byte routine as the IP27KONA64 build, with the same instruction pattern at the same low offsets. The ioctl call is at 0x21599b4 with request 0x3fe, the zero tests at 0x2159978 and 0x2159984 skip it, and the returns are 0x0 at 0x21599d4 and 0x5 at 0x21599e0.

- `__start` in `usr/bin/X11/xsetmon` at 0x1001e5a0
  **Inferred.** A 268-byte startup routine. It calls its own internal entry at __start+32 (0x1001e5c0) through the branch-and-link at 0x1001e5b8, then loads and stores words in three table slots (0x3250c, 0x32e14, 0x32e18). It makes four indirect calls at 0x1001e634, 0x1001e648, 0x1001e688 and 0x1001e6a0, and the one at 0x1001e688 passes the slot values as arguments. A test on the slot at 0x3250c at 0x1001e5ec picks the path.

- `log2` in `usr/diags/IR/bin/irsaudit` at 0x1014e558
  **Inferred.** A 52-byte integer log2 candidate. The branch at 0x1014e560 sends a0 values below 2 (signed) straight to the return at 0x1014e584, which gives v0 0x0. Otherwise the loop at 0x1014e56c repeats, with the branch at 0x1014e574 comparing a3 against a0 (signed), and the other return at 0x1014e57c leaves v0 unknown. The name fits the loop, but the facts do not show the loop's exact result.

- `__start` in `usr/gfx/KONA/bin/kpm` at 0x10009ef0
  **Inferred.** The same startup shape as the `__start` in `usr/bin/X11/xsetmon`, with slots at 0x14225c, 0x142a98 and 0x142a9c. It branch-and-links to __start+32 (0x10009f10) at 0x10009f08, makes four indirect calls at 0x10009f84, 0x10009f98, 0x10009fd8 and 0x10009ff0, and tests the slot at 0x14225c at 0x10009f3c.

- `klog` in `usr/gfx/KONA/bin/kpm` at 0x1000f794
  **Inferred.** A 504-byte logging routine. It writes a formatted message to the stream in the global at sym(output) with fprintf at 0x1000f838 and vfprintf at 0x1000f858, and it sends the variadic arguments to vsyslog at 0x1000f8b8 with level 0x6. It writes a second copy through vfprintf at 0x1000f8d8 to the stream at sym(summary), and it reads option fields at offsets 1192, 1200 and 1204 of the global sym(opts) to decide which messages to print.

- `__start` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1005f6a0
  **Inferred.** The same 268-byte startup shape as the other `__start` routines, with slots at 0x266100, 0x26666c and 0x266670. It branch-and-links to __start+32 (0x1005f6c0) at 0x1005f6b8, makes four indirect calls at 0x1005f734, 0x1005f748, 0x1005f788 and 0x1005f7a0, and tests the slot at 0x266100 at 0x1005f6ec.

- `yylook` in `usr/gfx/arch/GENERIC/Xsgi` at 0x101e8720
  **Inferred.** A 1596-byte table-driven routine with about fourteen word loads and several byte loads and stores. It has four fatal paths, each calling fprintf at 0x101e8938, 0x101e8a9c, 0x101e8c34 and 0x101e8c94 with a fixed message and then exit(1). Its two returns are at 0x101e8bc4, with v0 unknown, and at 0x101e8cf4, with v0 0x0. The name suggests a lex-style table lookup, which the facts do not confirm.

- `_stub` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec31000
  **Inferred.** A 7344-byte block of 367 indirect calls, each through the pointer word at 0xfb602ac. The call at 0xec3100c passes the stub's own argument registers on, and the facts do not trace the arguments at the other call sites. The routine looks like a generated forwarding table that sends each entry point to the dispatch pointer, but the facts do not show what the pointer targets.

- `gl_bbox` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec350b0
  **Inferred.** A 596-byte bounding-box test that uses GL feedback. It gets the current context at 0xec350d8, switches render mode through __iglooRenderMode at 0xec35110 with mode 0x1c01, and calls glFeedbackBuffer at 0xec35100 with size 0x14 and type 0x600. It draws a rectangle with glRectf at 0xec35128, then compares float bounds at 0xec35168 to 0xec35278 and returns 0 or 1 at 0xec352d8. The return value is an overlap result, which the facts only suggest.

- `gl_i_bbox2s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec35310
  **Inferred.** A 64-byte wrapper. It reads the global flag word at 0xece8bf0 (gl_inMoveDraw) at 0xec35328, and when the flag is nonzero it calls __iglooNCloseMoveDraw at 0xec35338 and returns its result. When the flag is zero it returns the constant 0xad860 on the fall-through path at 0xec35348.

- `gl_c_bbox2s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec35350
  **Inferred.** A 180-byte compile-mode variant. A zero test on the word at 0xecdd91c at 0xec35374 splits the path. One side calls gl_compile at 0xec353a4 with opcode 0x8 and returns its result at 0xec353b8. The other side calls gl_intrptab_insert at 0xec353dc with the table pointer 0xecd6888.

- `gl_n_bbox2s` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec35410
  **Inferred.** A 176-byte routine that reads six halfword values from a0 (offsets 0 to 0xa) and calls __iglooNCloseMoveDraw at 0xec35440 when the flag at 0xece8bf0 is nonzero. Its conditional call to gl_bbox at 0xec35484 passes the first two halfwords as coordinates. It returns a0+12 at 0xec354a4 or the constant 0xecdedb8 at 0xec354b8.

- `gl_i_bbox2i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec354c0
  **Inferred.** A 64-byte wrapper with the same pattern as `gl_i_bbox2s`. It tests the flag at 0xece8bf0 at 0xec354dc, calls __iglooNCloseMoveDraw at 0xec354e8 with its arguments, and returns either 0xad6b0 or that call's result at 0xec354f8.

- `gl_c_bbox2i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec35500
  **Inferred.** A 180-byte compile-mode variant. A zero test on the word at 0xecdd920 at 0xec35524 splits the path. One side calls gl_compile at 0xec35554 with opcode 0xc and returns its result at 0xec35568. The other side calls gl_intrptab_insert at 0xec3558c with the table pointer 0xecd6898.

- `gl_n_bbox2i` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec355c0
  **Inferred.** A 176-byte routine that reads two halfwords from a0 at 0xec35628 and 0xec35630. It calls __iglooNCloseMoveDraw at 0xec355f0 when the flag at 0xece8bf0 is nonzero, and calls gl_bbox at 0xec35634 with the two halfwords as coordinates. It returns a0+20 at 0xec35654 or the constant 0xecdedb8 at 0xec35668.

- `gl_i_bbox2` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec35670
  **Inferred.** A short wrapper with the same flag test as the other immediate-mode variants. The flag at 0xece8bf0 is tested at 0xec3568c, and a nonzero flag leads to a call to __iglooNCloseMoveDraw at 0xec35698. It returns either 0xad500 or that call's result at 0xec356a8.

- `gl_c_bbox2` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec356b0
  **Inferred.** A 196-byte compile-mode variant. A zero test on the word at 0xecdd924 at 0xec356e8 splits the path. One side calls gl_compile at 0xec35718 with opcode 0xc, and the other calls gl_intrptab_insert at 0xec35750 with the table pointer 0xecd68a8. It returns the result of gl_compile at 0xec35730.

- `gl_n_bbox2` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec35780
  **Inferred.** A 144-byte routine that reads two halfwords from a0 at 0xec357d0 and 0xec357d8 and loads four words from a0+4 to a0+16 as float arguments. It calls __iglooNCloseMoveDraw at 0xec357b0 when the flag at 0xece8bf0 is nonzero, and calls gl_bbox at 0xec357d4 with the coordinates. It returns a0+20 at 0xec357f4 or the constant 0xecdedb8 at 0xec35808.

- `_clk` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec35810
  **Inferred.** A 100-byte routine that loads the state pointer at 0xece8bec (gl_sstatep) and calls _GLinitgl at 0xec35820. It then calls XChangeKeyboardControl at 0xec35844 with value mask 0x1 on the display pointer, and calls XFlush at 0xec35860. The name suggests a key-click setting, which the mask bit 0x1 fits, but the facts do not settle it.

- `gl_g_clkon` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec35880
  **Inferred.** A 56-byte wrapper that calls _clk at 0xec358a0 with the constant 0x64 and returns _clk's result at 0xec358b0. The name suggests turning the setting on, and the argument 100 fits a full-level value, but the facts do not confirm the meaning.

- `gl_g_clkoff` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec358c0
  **Inferred.** A 56-byte wrapper that calls _clk at 0xec358e0 with the constant 0x0 and returns _clk's result at 0xec358f0. It is the off counterpart of `gl_g_clkon` at 0xec35880.

- `_lamp` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec35900
  **Inferred.** A 344-byte routine that loads the state pointer at 0xece8bec and calls _GLinitgl at 0xec35924. It tests four bits of its argument at 0xec35944, 0xec35980, 0xec359bc and 0xec359f8. For each set bit it calls XChangeKeyboardControl with value mask 0x30 and a stack structure, then calls XFlush at 0xec35a40 and returns its result at 0xec35a50. The name suggests keyboard LED control, which the calls fit, but the facts do not name the LEDs.
