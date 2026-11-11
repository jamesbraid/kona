# Routine role statements, kona tier-2 batch 2

These statements come from rendered facts for 25 routines in `usr/gfx/arch/IGLOO32/libgl.so`: memory accesses, calls, branches and return values at fixed addresses. Names come from the inventory. The facts show what the code does, not what its callers mean by it, so every grade below is inferred. Where a fact is missing, the statement says so.

- `_pushattributes` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec32e60
  **Inferred.** Saves the current attribute state. It reads the state block through the global pointer `gl_wstatep` and its field at +276, then calls `gl_dm_save` at 0xec32e9c with the caller's three arguments and `gl_set_drawfb` at 0xec32f94 with several fields of that block. An unexpected value at 0xec32fd4 goes to `gl_ErrorHandler` with code 0x2f. The offsets it stores to (+0xe4, +0x114) are not named by the binary, so what each saved field holds stays open.

- `_copy_unpushed_fbdata` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33000
  **Inferred.** A 12-byte leaf with no calls. It copies one word from a1+0x30 to a0+0x30 (the load at 0xec33000 and store at 0xec33008), so it moves a single field between two records. The name suggests framebuffer data, but the binary does not show which field that is.

- `_popattributes` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33010
  **Inferred.** Restores the attribute state that the push routine saved. It compares the field at `gl_wstatep`+276 with the one at +280 (branch at 0xec3302c), calls `_copy_unpushed_fbdata` at 0xec33048 and 0xec33060, and reports error 0x30 through `gl_ErrorHandler` at 0xec33098 on one exit. Which compare result leads to the error is not settled by the facts.

- `_loadattribs` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec330b0
  **Inferred.** A 600-byte routine that copies attribute fields between two records passed in a0 and a1, reading offsets such as +0x0, +0x4, +0x8, +0xc, +0x10 and +0x34. It sets the mode through `gl_set_drawmode` at 0xec33100 and `gl_set_displaymode` at 0xec3321c, sets line width and render mode with `__iglooLineWidth` at 0xec3319c and `__iglooGetRenderMode` at 0xec331a8, and calls the buffer setters `gl_backbuffer`, `gl_frontbuffer` and `gl_zdraw` at 0xec33230 to 0xec3325c. The old and new roles of a0 and a1 are inferred from the parallel loads.

- `gl_i_acbuf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33310
  **Inferred.** The immediate-mode accumulation-buffer entry, as the `i` in its name suggests. It reads the move-draw flag at 0xece8bf0 and, when it is set, closes the move draw through `__iglooNCloseMoveDraw` at 0xec33340. It then calls `__igloo_acbuf` at 0xec33358 with the same arguments and returns its result.

- `gl_c_acbuf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33370
  **Inferred.** The compile-mode accumulation-buffer entry. A test of the word at 0xecdd8f0 (branch at 0xec33398) skips the compile step when it is zero. Otherwise it calls `gl_compile` at 0xec333b8 with opcode 0x6, then inserts the record through `gl_intrptab_insert` at 0xec333e0 with table entry 0xecd67d8.

- `gl_n_acbuf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33400
  **Inferred.** The named-mode accumulation-buffer entry. It reads the move-draw flag at 0xece8bf0, closes the move draw through `__iglooNCloseMoveDraw` at 0xec33430 when needed, then loads a word from a0 and a float from a0+4 and passes them to `__igloo_acbuf` at 0xec33444. It returns a0+8, so it consumes one 8-byte record from the argument stream.

- `__igloo_acbuf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33470
  **Inferred.** The core accumulation-buffer driver, 892 bytes. It gets the graphics type through `__iglooGetGraphicsType` at 0xec33490 and the visual through `__iglooGetVisualInfo` at 0xec3349c, then switches on its first argument (branch chain at 0xec33514 to 0xec33540). The cases call `glAccum` with ops 0x100 to 0x104, `glClear` with 0x200 and `glClearAccum`, and toggle the enable 0xb71 through `__iglooSetEnable` at 0xec33734 and 0xec33774. The enable 0xb71 matches GL_DEPTH_TEST in the public GL headers, which is an inference from the constant alone. Bad input reports code 0x62 through `gl_ErrorHandler` at 0xec334f0.

- `__igloo_acbuf_hw` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec337f0
  **Inferred.** The hardware-path variant of the accumulation operation, 1432 bytes. It switches on its first argument through the branch chain at 0xec33800 to 0xec33834, which tests the values 0 to 5, and it loads and stores single floats in the state block at +0x2f70 through +0x2f7c. It calls `glAccum` with 0x100 to 0x104 and `glClear` with 0x200 at 0xec33b60, and reports code 0x6e on an unhandled case at 0xec33848. The comparisons with the float constants 0x3f800000 (1.0) and 0x43800000 (256.0) suggest a scale and clamp, but the facts do not give the scale.

- `gl_i_pntsize` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33da0
  **Inferred.** The immediate-mode point size. It reads the move-draw flag at 0xec33db8, closes the move draw through `__iglooNCloseMoveDraw` at 0xec33dc8 when needed, then passes its arguments to `glPointSize` at 0xec33ddc and returns that result.

- `gl_c_pntsize` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33e00
  **Inferred.** The compile-mode point size. It calls `gl_compile` at 0xec33e40 with opcode 0x4, then inserts the record through `gl_intrptab_insert` at 0xec33e64 with table entry 0xecd67e8. This is the same shape as the other compile wrappers in the batch.

- `gl_n_pntsize` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33e80
  **Inferred.** The named-mode point size. It reads a halfword from a0 (load at 0xec33eb8), closes the move draw through `__iglooNCloseMoveDraw` at 0xec33eb0 when needed, and calls `glPointSize` at 0xec33ec4. It returns a0+4, so it consumes a 4-byte record from the argument stream.

- `gl_i_pntsizef` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33ef0
  **Inferred.** The immediate-mode float point size. It closes the move draw through `__iglooNCloseMoveDraw` at 0xec33f1c when the flag at 0xece8bf0 is set, then calls `glPointSize` at 0xec33f2c with its arguments.

- `gl_c_pntsizef` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33f50
  **Inferred.** The compile-mode float point size. It calls `gl_compile` at 0xec33f8c with opcode 0x4, then inserts the record through `gl_intrptab_insert` at 0xec33fb0 with table entry 0xecd67f8.

- `gl_n_pntsizef` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec33fd0
  **Inferred.** The named-mode float point size. It loads a float from a0 (load at 0xec34010), closes the move draw through `__iglooNCloseMoveDraw` at 0xec34000 when needed, and calls `glPointSize` at 0xec3400c with that float as its first argument. It returns a0+4.

- `gl_i_linewidth` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34030
  **Inferred.** The immediate-mode line width. It closes the move draw at 0xec34060, stores a float into the state block at +276+0x10 (store at 0xec34084), and calls `__iglooLineWidth` at 0xec34094. It then checks the render mode through `__iglooGetRenderMode` at 0xec340a0 and passes 0x1c01 and 0x4 to `glPassThrough` at 0xec340dc in the other path. The meaning of that path is not settled by the facts.

- `gl_c_linewidth` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec340f0
  **Inferred.** The compile-mode line width. It calls `gl_compile` at 0xec34130 with opcode 0x4, then inserts the record through `gl_intrptab_insert` at 0xec34154 with table entry 0xecd6808.

- `gl_n_linewidth` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34170
  **Inferred.** The named-mode line width. It reads three halfwords from a0 (loads at 0xec341a8, 0xec341c4 and 0xec34228), stores a float into the state block at +0x10 (store at 0xec341c0), and calls `__iglooLineWidth` at 0xec341d8. It checks the render mode through `__iglooGetRenderMode` at 0xec341e4 and calls `glPassThrough` at 0xec34230. It returns a0+4. The facts leave the width field layout open.

- `gl_i_linewidthf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34240
  **Inferred.** The immediate-mode float line width. It closes the move draw at 0xec3426c, stores a float into the state block at +0x10 (store at 0xec34294), calls `__iglooLineWidth` at 0xec342a8 and checks the render mode at 0xec342b4. The alternate path calls `glPassThrough` at 0xec34304 with 0x1c01 and 0x5.

- `gl_c_linewidthf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34320
  **Inferred.** The compile-mode float line width. It calls `gl_compile` at 0xec3435c with opcode 0x4, then inserts the record through `gl_intrptab_insert` at 0xec34380 with table entry 0xecd6818.

- `gl_n_linewidthf` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec343a0
  **Inferred.** The named-mode float line width. It loads a float from a0 (load at 0xec343e0), stores it into the state block at +0x10 (store at 0xec343e8), and calls `__iglooLineWidth` at 0xec3440c. It checks the render mode at 0xec34418 and calls `glPassThrough` at 0xec34470 with 0x1c01 and 0x5. It returns a0+4.

- `_CallOpenGLCulling` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34480
  **Inferred.** Sets the cull face and enables culling. Each of three paths calls `glCullFace` with a value (0x408, 0x404 or 0x405, the public GL front-and-back, front and back enums) and then enables the token 0xb44 through `__iglooSetEnable` at 0xec344a4, 0xec344d4 or 0xec344f8. The final path at 0xec34510 disables 0xb44 with a value of 0. The token 0xb44 matches GL_CULL_FACE in the public headers, which is an inference from the constant.

- `__gl_backface` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34520
  **Inferred.** A 108-byte routine that reads a halfword from the state block at `gl_wstatep`+0xbcc, stores halfwords back to that field at 0xec34550 and 0xec34588, and calls `_CallOpenGLCulling` at 0xec34560 with the state pointer and a halfword at +3020. It appears to set the back-face culling state. The facts leave open the value written back.

- `__gl_frontface` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34590
  **Inferred.** A 104-byte routine with the same shape as `__gl_backface`: it reads and stores the halfword at `gl_wstatep`+0xbcc and calls `_CallOpenGLCulling` at 0xec345cc, with different arguments. Its name suggests the front-face counterpart, and the facts agree with that only loosely.

- `gl_i_backface` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec34600
  **Inferred.** The immediate-mode back-face entry. It reads the move-draw flag at 0xece8bf0 (load at 0xec34618), closes the move draw through `__iglooNCloseMoveDraw` at 0xec34628 when needed, then calls `__gl_backface` at 0xec34638 with its first argument and returns that result.
