# Tier-2 routine roles, kona batch 7

Roles for targets 175 to 199 of the ranked tier-2 list, all in the IGLOO32 build of `libgl.so`. Each one comes from the rendered instruction facts at the cited addresses, so every entry is graded inferred.

- `gl_d_gconfig` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec46260
  **Inferred.** Writes a record into the comm buffer, using the write pointer comm_curbufpos (0xecd6c4c) and the end pointer comm_endbuffer (0xecd6c48). When fewer than four bytes remain (the bne at 0xec46294), it calls gl_comm_flush at 0xec40750 with a0=0x2e and a1=0x9c910; otherwise it stores through the write pointer and advances it at 0xec46298. The name suggests a configuration query, and the 0x2e code is inferred from the flush call shape.

- `gl_d_genobj` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec462c0
  **Inferred.** The lw at 0xec462dc reads the write pointer, and the sw at 0xec462ec writes a request word through it, with the pointer stored back at 0xec462f8. A call to gl_comm_read_data at 0xec40b90, from 0xec462f4, passes a0=1 and forwards a1, a2 and a3 from entry. The reply word comes back as [[0xecd6c44]+4] at the return 0xec46310, read by the lw at 0xec4630c. The name suggests object-name generation, which fits a reply that carries a new id.

- `gl_d_gentag` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec46320
  **Inferred.** The lw at 0xec4633c reads the write pointer, and the sw at 0xec4634c writes a request word through it, with the pointer stored back at 0xec46358. A call to gl_comm_read_data at 0xec40b90, from 0xec46354, passes a0=1 and forwards a1, a2 and a3 from entry. The reply word comes back as [[0xecd6c44]+4] at the return 0xec46370, read by the lw at 0xec4636c. The name suggests a tag generator, and the reply shape matches gl_d_genobj at 0xec462c0.

- `gl_d_getbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec46380
  **Inferred.** The lw at 0xec4639c reads the write pointer, and the sw at 0xec463ac writes a request word through it, with the pointer stored back at 0xec463b8. A call to gl_comm_read_data at 0xec40b90, from 0xec463b4, passes a0=1 and forwards a1, a2 and a3 from entry. The reply word comes back as [[0xecd6c44]+4] at the return 0xec463d0, read by the lw at 0xec463cc. The name suggests a buffer-size query.

- `gl_d_getbutton` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec463e0
  **Inferred.** Sends a request with a halfword argument at offset 4 of the write position (the sh at 0xec46404), then calls gl_comm_read_data at 0xec40b90 (bgezall at 0xec46418) with a0=1 and a1=0x9c790, passing a2 and a3 through. It returns the word at [[0xecd6c44]+4] (the lw at 0xec46430). The name suggests a button-state query, and the halfword argument fits a button index.

- `gl_d_getcmmode` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec46440
  **Inferred.** The lw at 0xec4645c reads the write pointer, and the sw at 0xec4646c writes a request word through it, with the pointer stored back at 0xec46478. A call to gl_comm_read_data at 0xec40b90, from 0xec46474, passes a0=1 and forwards a1, a2 and a3 from entry. The reply word comes back as [[0xecd6c44]+4] at the return 0xec46490, read by the lw at 0xec4648c. The name suggests a colour-map mode query.

- `gl_d_getcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec464a0
  **Inferred.** The lw at 0xec464bc reads the write pointer, and the sw at 0xec464cc writes a request word through it, with the pointer stored back at 0xec464d8. A call to gl_comm_read_data at 0xec40b90, from 0xec464d4, passes a0=1 and forwards a1, a2 and a3 from entry. The reply word comes back as [[0xecd6c44]+4] at the return 0xec464f0, read by the lw at 0xec464ec. The name suggests a colour query.

- `gl_d_getcursor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec46500
  **Inferred.** Calls gl_comm_read_data at 0xec40b90 (bgezall at 0xec46548) with a0=1, a1 and a2 and a3 passed through, and a4=0x9c670. After the call it copies halfwords at reply offsets 4, 8 and 0xc into the locations in a0, a1 and a2, and the word at offset 0x10 into a3. It returns the call's result, ret(gl_comm_read_data). The name suggests a cursor query, and the four out-parameters fit a position and hotspot.

- `gl_d_getdepth` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec465b0
  **Inferred.** Calls gl_comm_read_data at 0xec40b90 (bgezall at 0xec465f0) with a0=1, a2=0x9c5c0, and a1 and a3 passed through. After the call it copies halfwords at reply offsets 4 and 8 into the locations in a0 and a1. It returns the call's result. The name suggests a depth query, and the two outputs fit a depth pair.

- `gl_d_getdisplaymode` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec46630
  **Inferred.** Its prologue loads comm_curbufpos at 0xec4664c, and the store at 0xec4665c writes the request through that pointer, which is saved again at 0xec46668. gl_comm_read_data is called at 0xec40b90 from 0xec46664 with a0 set to 1, and a1 through a3 are the caller's own arguments. It returns [[0xecd6c44]+4] (loaded at 0xec4667c), the first word past the reply header. The name suggests a display-mode query.

- `gl_d_getfont` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec46690
  **Inferred.** Its prologue loads comm_curbufpos at 0xec466ac, and the store at 0xec466bc writes the request through that pointer, which is saved again at 0xec466c8. gl_comm_read_data is called at 0xec40b90 from 0xec466c4 with a0 set to 1, and a1 through a3 are the caller's own arguments. It returns [[0xecd6c44]+4] (loaded at 0xec466dc), the first word past the reply header. The name suggests a font query.

- `gl_d_getheight` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec466f0
  **Inferred.** Its prologue loads comm_curbufpos at 0xec4670c, and the store at 0xec4671c writes the request through that pointer, which is saved again at 0xec46728. gl_comm_read_data is called at 0xec40b90 from 0xec46724 with a0 set to 1, and a1 through a3 are the caller's own arguments. It returns [[0xecd6c44]+4] (loaded at 0xec4673c), the first word past the reply header. The name suggests a height query.

- `gl_d_gethitcode` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec46750
  **Inferred.** Its prologue loads comm_curbufpos at 0xec4676c, and the store at 0xec4677c writes the request through that pointer, which is saved again at 0xec46788. gl_comm_read_data is called at 0xec40b90 from 0xec46784 with a0 set to 1, and a1 through a3 are the caller's own arguments. It returns [[0xecd6c44]+4] (loaded at 0xec4679c), the first word past the reply header. The name suggests a hit-code query.

- `gl_d_getlsbackup` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec467b0
  **Inferred.** Its prologue loads comm_curbufpos at 0xec467cc, and the store at 0xec467dc writes the request through that pointer, which is saved again at 0xec467e8. gl_comm_read_data is called at 0xec40b90 from 0xec467e4 with a0 set to 1, and a1 through a3 are the caller's own arguments. It returns [[0xecd6c44]+4] (loaded at 0xec467fc), the first word past the reply header. The name suggests a query of a saved line-style value.

- `gl_d_getlstyle` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec46810
  **Inferred.** Load of comm_curbufpos at 0xec4682c, store of the request word at 0xec4683c, and the saved pointer written at 0xec46848. The bgezall at 0xec46844 calls gl_comm_read_data (0xec40b90) with its first argument fixed at 1 and the remaining three passed in. Its value is [[0xecd6c44]+4], taken by the lw at 0xec4685c from the reply record at comm_buffer. The name suggests a line-style query.

- `gl_d_getlwidth` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec46870
  **Inferred.** Load of comm_curbufpos at 0xec4688c, store of the request word at 0xec4689c, and the saved pointer written at 0xec468a8. The bgezall at 0xec468a4 calls gl_comm_read_data (0xec40b90) with its first argument fixed at 1 and the remaining three passed in. Its value is [[0xecd6c44]+4], taken by the lw at 0xec468bc from the reply record at comm_buffer. The name suggests a line-width query.

- `gl_d_getmap` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec468d0
  **Inferred.** Load of comm_curbufpos at 0xec468ec, store of the request word at 0xec468fc, and the saved pointer written at 0xec46908. The bgezall at 0xec46904 calls gl_comm_read_data (0xec40b90) with its first argument fixed at 1 and the remaining three passed in. Its value is [[0xecd6c44]+4], taken by the lw at 0xec4691c from the reply record at comm_buffer. The name suggests a colour-map query.

- `gl_d_getmatrix` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec46930
  **Inferred.** Writes three request words at offsets 0, 4 and 8 of the write position (the sw at 0xec4695c, 0xec46964 and 0xec46970) and advances comm_curbufpos at 0xec4697c, then calls gl_comm_read_data at 0xec40b90 (bgezall at 0xec46978) with a0=1, a1=0x3f and a2=0x9c240. It then calls gl_mem_unpack_array at 0xec7da50 (jalr at 0xec46994) with a0 from entry, a1=[0xecd6c44]+4 (the reply payload) and a2=0xec7ea60, and returns that call's result. The name suggests a matrix query, and the unpack call suggests the reply carries a matrix payload.

- `gl_d_getplanes` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec469b0
  **Inferred.** Load of comm_curbufpos at 0xec469cc, store of the request word at 0xec469dc, and the saved pointer written at 0xec469e8. The bgezall at 0xec469e4 calls gl_comm_read_data (0xec40b90) with its first argument fixed at 1 and the remaining three passed in. Its value is [[0xecd6c44]+4], taken by the lw at 0xec469fc from the reply record at comm_buffer. The name suggests a bit-plane count query.

- `gl_d_getscrmask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec46a70
  **Inferred.** Calls gl_comm_read_data at 0xec40b90 (bgezall at 0xec46ab8) with a0=1, a4=0x9c100, and a1 to a3 passed through. After the call it copies halfwords at reply offsets 4, 8, 0xc and 0x10 into the locations in a0 through a3. It returns the call's result, ret(gl_comm_read_data). The name suggests a screen-mask query, and four halfword outputs fit a rectangle.

- `gl_d_getvaluator` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec46b20
  **Inferred.** Sends a request with a halfword argument at offset 4 of the write position (the sh at 0xec46b44), then calls gl_comm_read_data at 0xec40b90 (bgezall at 0xec46b58) with a0=1 and a1=0x9c050, passing a2 and a3 through. It returns the word at [[0xecd6c44]+4] (the lw at 0xec46b70). The name suggests a valuator query, and the halfword argument fits a device index.

- `gl_d_getwritemask` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec46c30
  **Inferred.** Load of comm_curbufpos at 0xec46c4c, store of the request word at 0xec46c5c, and the saved pointer written at 0xec46c68. The bgezall at 0xec46c64 calls gl_comm_read_data (0xec40b90) with its first argument fixed at 1 and the remaining three passed in. Its value is [[0xecd6c44]+4], taken by the lw at 0xec46c7c from the reply record at comm_buffer. The name suggests a write-mask query.

- `gl_d_gflush` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec46c90
  **Inferred.** Stores a word at the write position and advances comm_curbufpos (0xecd6c4c) against comm_endbuffer (0xecd6c48). When the buffer is short (the bne at 0xec46cc8), it calls gl_comm_flush at 0xec40750 with a0=0x46 and a1=0x9bee0 (bgezall at 0xec46cf0), and a second flush call at 0xec46cd4 sits on the loop back from the beq at 0xec46cf8. It returns ret(gl_comm_flush). The name suggests a flush of the buffer, and the 0x46 code is inferred from the flush call shape.

- `gl_d_ginit` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec46d00
  **Inferred.** Stores a word at the write position and advances comm_curbufpos (0xecd6c4c) against comm_endbuffer (0xecd6c48). When fewer than four bytes remain (the bne at 0xec46d34), it calls gl_comm_flush at 0xec40750 with a0=0x47 and a1=0x9be70 (bgezall at 0xec46d50) and returns that result; otherwise it returns the pointer at 0xecd6c4c. The name suggests a context initialization, and the 0x47 code is inferred from the flush call shape.

- `gl_d_gRGBcolor` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec46dc0
  **Inferred.** Calls gl_comm_read_data at 0xec40b90 (bgezall at 0xec46e04) with a0=1, a1 and a2 from entry, and a3=0x9bdb0. After the call it copies three halfwords at reply offsets 4, 8 and 0xc into the locations in a0, a1 and a2. It returns the call's result, ret(gl_comm_read_data). The name suggests a colour query, and three halfword components fit RGB.
