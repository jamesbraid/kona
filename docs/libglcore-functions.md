# libGLcore: one entry per function (immediate-mode senders and display-list compilers)

Read from the IP27 Kona n32 build of the 6.5.30m `libGLcore.so` (`usr/gfx/arch/IP27KONA32/libGLcore.so`; the other builds of the library carry functions of the same names, which were not read separately), through the annotated assembly in [libglcore/asm/kon/](../libglcore/asm/kon/). Addresses are virtual addresses in the library. Token names and numbers are those of [GE.h](../GE.h). The "process address" values are the per-thread mapping of [kernel.md](kernel.md#what-a-process-maps): 16384 (0x4000) is the command FIFO page, and the low words at 4136 to 4148 are the display-list state the library keeps in the driver state page.

- `__glkonim_Color3bv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da651b0, 44 bytes):
  **Established.** The immediate-mode glColor3bv, two stores to the command port with no branch and no room check. The first word carries the token 0x61 in its low byte, the first component (a signed byte) in bits 31 to 24 and the second in bits 23 to 16; the second word carries the third component in its top byte and nothing else. The vector pointer arrives in `a0` and nothing is converted or scaled.
- `__glkonim_Color3sv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65260, 40 bytes):
  **Established.** The immediate-mode glColor3sv, two stores to the command port. The first word is the first short in its upper half and the token 0x65 in its low byte; the second word packs the second short in its upper half and the third, zero-extended, in its lower half. Nothing is scaled and there is no branch.
- `__glkonim_Color3ubv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da652b0, 44 bytes):
  **Established.** The immediate-mode glColor3ubv, two stores to the command port with the same word layout as the signed-byte form but the token 0x66: the first component in bits 31 to 24 and the second in bits 23 to 16 of the first word, the third in the top byte of the second. The shifts discard the sign, so the packing is otherwise identical to `__glkonim_Color3bv`.
- `__glkonim_Color3usv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65320, 40 bytes):
  **Established.** The immediate-mode glColor3usv, two stores to the command port: the first short and the token 0x68 in the first word, the second short in the upper half and the third in the lower half of the second word. The three halfwords are loaded zero-extended, and the layout equals that of `__glkonim_Color3sv` apart from the token.
- `__glkonim_Color4bv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65380, 56 bytes):
  **Established.** The immediate-mode glColor4bv, two stores to the command port. The first word is the first component in bits 31 to 24, the second in bits 23 to 16 and the token 0x69 in the low byte; the second word is the third component in bits 31 to 24 and the fourth in bits 23 to 16, with the low half zero. All four values are raw signed bytes read from the vector at `a0`.
- `__glkonim_Color4sv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65450, 52 bytes):
  **Established.** The immediate-mode glColor4sv, three stores to the command port, the longest of the colour vector senders. Word one holds the first short in its upper half and the token 0x6d in its low byte; word two the second short in its upper half and the third in its lower half; word three the fourth short in its upper half with a zero lower half.
- `__glkonim_Color4ubv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da654c0, 56 bytes):
  **Established.** The immediate-mode glColor4ubv, two stores to the command port with the token 0x6e: the first and second components in bits 31 to 24 and 23 to 16 of the first word beside the token, the third and fourth in the same two positions of the second word. Bytes are loaded unsigned; the packing is that of `__glkonim_Color4bv`.
- `__glkonim_Color4usv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65550, 52 bytes):
  **Established.** The immediate-mode glColor4usv, three stores to the command port with the token 0x70: word one is the first short and the token, word two the second short over the third, word three the fourth short in its upper half. The shorts are loaded zero-extended; the layout is that of `__glkonim_Color4sv`.
- `__glkonim_Normal3bv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65640, 44 bytes):
  **Established.** The vector form of glNormal3b, which sends the same token 0x76 and the same two-word packing as `__glkonim_Normal3b`, but loads the three signed bytes from the pointer in `a0` itself (the second as an unsigned byte, which the shift makes equivalent).
- `__glkonim_Normal3sv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da656f0, 40 bytes):
  **Established.** The vector form of glNormal3s: it loads the three shorts from `a0` (the third zero-extended) and sends the same token 0x7a and the same two words as `__glkonim_Normal3s`.
- `__glkonim_TexCoord1sv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da658f0, 24 bytes):
  **Established.** The vector form of glTexCoord1s: it loads a signed short through `a0`, stores the token 126 (0x7e) and then the short shifted into the upper half of a word, the pair `__glkonim_TexCoord1s` sends.
- `__glkonim_TexCoord2sv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65990, 32 bytes):
  **Established.** The vector form of glTexCoord2s: it loads two signed shorts from `a0` at offsets 0 and 2 and sends the two words of `__glkonim_TexCoord2s` (the first short with the token 0x82, the second in the upper half of the next).
- `__glkonim_TexCoord3sv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65a30, 40 bytes):
  **Established.** The vector form of glTexCoord3s: it loads the first two shorts signed and the third (at offset 4) zero-extended from `a0`, and sends the two words of `__glkonim_TexCoord3s` with the token 0x86.
- `__glkonim_TexCoord4sv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65af0, 52 bytes):
  **Established.** The vector form of glTexCoord4s: it loads four shorts from `a0` (the third at offset 4 zero-extended) and sends the three words of `__glkonim_TexCoord4s` with the token 0x8a.
- `__glkonim_Vertex2sv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65bb0, 32 bytes):
  **Established.** The vector form of glVertex2s: it loads two signed shorts from `a0` at offsets 0 and 2 and sends the two words of `__glkonim_Vertex2s` under the token 0x8e.
- `__glkonim_Vertex3sv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65c50, 40 bytes):
  **Established.** The vector form of glVertex3s: it loads two signed shorts and a zero-extended third (offset 4) from `a0` and sends the two words of `__glkonim_Vertex3s` under the token 0x92.
- `__glkonim_Vertex4sv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65d10, 52 bytes):
  **Established.** The vector form of glVertex4s: it loads four shorts from `a0` (the third at offset 4 zero-extended) and sends the three words of `__glkonim_Vertex4s` under the token 0x96.
- `__glkonlc_Color3b` (`libGLcore.so` 0x0da670e0, 164 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor3b: it records the `HP_COLOR3B` (token 0x061) command, 2 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color3b` writes to the FIFO.
- `__glkonlc_Color3bv` (`libGLcore.so` 0x0da67190, 156 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor3bv: it records the `HP_COLOR3B` (token 0x061) command, 2 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color3bv` writes to the FIFO.
- `__glkonlc_Color3d` (`libGLcore.so` 0x0da67230, 208 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor3d: it records the `HP_COLOR3D` (token 0x062) command, 7 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 7 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 28 bytes and adds 7 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color3d` writes to the FIFO.
- `__glkonlc_Color3dv` (`libGLcore.so` 0x0da67300, 196 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor3dv: it records the `HP_COLOR3D` (token 0x062) command, 7 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 7 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 28 bytes and adds 7 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color3dv` writes to the FIFO.
- `__glkonlc_Color3f` (`libGLcore.so` 0x0da673d0, 160 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor3f: it records the `HP_COLOR3F` (token 0x063) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color3f` writes to the FIFO.
- `__glkonlc_Color3fv` (`libGLcore.so` 0x0da67470, 148 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor3fv: it records the `HP_COLOR3F` (token 0x063) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color3fv` writes to the FIFO.
- `__glkonlc_Color3i` (`libGLcore.so` 0x0da67510, 152 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor3i: it records the `HP_COLOR3I` (token 0x064) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color3i` writes to the FIFO.
- `__glkonlc_Color3iv` (`libGLcore.so` 0x0da675b0, 148 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor3iv: it records the `HP_COLOR3I` (token 0x064) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color3iv` writes to the FIFO.
- `__glkonlc_Color3s` (`libGLcore.so` 0x0da67650, 160 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor3s: it records the `HP_COLOR3S` (token 0x065) command, 2 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color3s` writes to the FIFO.
- `__glkonlc_Color3sv` (`libGLcore.so` 0x0da676f0, 152 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor3sv: it records the `HP_COLOR3S` (token 0x065) command, 2 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color3sv` writes to the FIFO.
- `__glkonlc_Color3ub` (`libGLcore.so` 0x0da67790, 160 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor3ub: it records the `HP_COLOR3UB` (token 0x066) command, 2 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color3ub` writes to the FIFO.
- `__glkonlc_Color3ubv` (`libGLcore.so` 0x0da67830, 156 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor3ubv: it records the `HP_COLOR3UB` (token 0x066) command, 2 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color3ubv` writes to the FIFO.
- `__glkonlc_Color3ui` (`libGLcore.so` 0x0da678d0, 152 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor3ui: it records the `HP_COLOR3UI` (token 0x067) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color3ui` writes to the FIFO.
- `__glkonlc_Color3uiv` (`libGLcore.so` 0x0da67970, 148 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor3uiv: it records the `HP_COLOR3UI` (token 0x067) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color3uiv` writes to the FIFO.
- `__glkonlc_Color3us` (`libGLcore.so` 0x0da67a10, 156 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor3us: it records the `HP_COLOR3US` (token 0x068) command, 2 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color3us` writes to the FIFO.
- `__glkonlc_Color3usv` (`libGLcore.so` 0x0da67ab0, 152 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor3usv: it records the `HP_COLOR3US` (token 0x068) command, 2 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color3usv` writes to the FIFO.
- `__glkonlc_Color4b` (`libGLcore.so` 0x0da67b50, 184 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor4b: it records the `HP_COLOR4B` (token 0x069) command, 2 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color4b` writes to the FIFO.
- `__glkonlc_Color4bv` (`libGLcore.so` 0x0da67c10, 168 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor4bv: it records the `HP_COLOR4B` (token 0x069) command, 2 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color4bv` writes to the FIFO.
- `__glkonlc_Color4d` (`libGLcore.so` 0x0da67cc0, 240 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor4d: it records the `HP_COLOR4D` (token 0x06a) command, 9 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 9 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 36 bytes and adds 9 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color4d` writes to the FIFO.
- `__glkonlc_Color4dv` (`libGLcore.so` 0x0da67db0, 220 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor4dv: it records the `HP_COLOR4D` (token 0x06a) command, 9 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 9 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 36 bytes and adds 9 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color4dv` writes to the FIFO.
- `__glkonlc_Color4f` (`libGLcore.so` 0x0da67e90, 176 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor4f: it records the `HP_COLOR4F` (token 0x06b) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color4f` writes to the FIFO.
- `__glkonlc_Color4fv` (`libGLcore.so` 0x0da67f40, 156 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor4fv: it records the `HP_COLOR4F` (token 0x06b) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color4fv` writes to the FIFO.
- `__glkonlc_Color4i` (`libGLcore.so` 0x0da67fe0, 164 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor4i: it records the `HP_COLOR4I` (token 0x06c) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color4i` writes to the FIFO.
- `__glkonlc_Color4iv` (`libGLcore.so` 0x0da68090, 156 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor4iv: it records the `HP_COLOR4I` (token 0x06c) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color4iv` writes to the FIFO.
- `__glkonlc_Color4s` (`libGLcore.so` 0x0da68130, 176 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor4s: it records the `HP_COLOR4S` (token 0x06d) command, 3 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color4s` writes to the FIFO.
- `__glkonlc_Color4sv` (`libGLcore.so` 0x0da681e0, 164 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor4sv: it records the `HP_COLOR4S` (token 0x06d) command, 3 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color4sv` writes to the FIFO.
- `__glkonlc_Color4ub` (`libGLcore.so` 0x0da68290, 176 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor4ub: it records the `HP_COLOR4UB` (token 0x06e) command, 2 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color4ub` writes to the FIFO.
- `__glkonlc_Color4ubv` (`libGLcore.so` 0x0da68340, 168 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor4ubv: it records the `HP_COLOR4UB` (token 0x06e) command, 2 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color4ubv` writes to the FIFO.
- `__glkonlc_Color4ui` (`libGLcore.so` 0x0da683f0, 164 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor4ui: it records the `HP_COLOR4UI` (token 0x06f) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color4ui` writes to the FIFO.
- `__glkonlc_Color4uiv` (`libGLcore.so` 0x0da684a0, 156 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor4uiv: it records the `HP_COLOR4UI` (token 0x06f) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color4uiv` writes to the FIFO.
- `__glkonlc_Color4us` (`libGLcore.so` 0x0da68540, 172 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor4us: it records the `HP_COLOR4US` (token 0x070) command, 3 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color4us` writes to the FIFO.
- `__glkonlc_Color4usv` (`libGLcore.so` 0x0da685f0, 164 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColor4usv: it records the `HP_COLOR4US` (token 0x070) command, 3 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Color4usv` writes to the FIFO.
- `__glkonlc_EdgeFlag` (`libGLcore.so` 0x0da686a0, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glEdgeFlag: it records the `HP_EDGEFLAG` (token 0x0a7) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_EdgeFlag` writes to the FIFO.
- `__glkonlc_EdgeFlagv` (`libGLcore.so` 0x0da68760, 188 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glEdgeFlagv: it records the `HP_EDGEFLAG` (token 0x0a7) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_EdgeFlagv` writes to the FIFO.
- `__glkonlc_Indexd` (`libGLcore.so` 0x0da68820, 144 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glIndexd: it records the `HP_INDEXD` (token 0x072) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Indexd` writes to the FIFO.
- `__glkonlc_Indexdv` (`libGLcore.so` 0x0da688b0, 148 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glIndexdv: it records the `HP_INDEXD` (token 0x072) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Indexdv` writes to the FIFO.
- `__glkonlc_Indexf` (`libGLcore.so` 0x0da68950, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glIndexf: it records the `HP_INDEXF` (token 0x073) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Indexf` writes to the FIFO.
- `__glkonlc_Indexfv` (`libGLcore.so` 0x0da68a10, 188 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glIndexfv: it records the `HP_INDEXF` (token 0x073) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Indexfv` writes to the FIFO.
- `__glkonlc_Indexi` (`libGLcore.so` 0x0da68ad0, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glIndexi: it records the `HP_INDEXI` (token 0x074) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Indexi` writes to the FIFO.
- `__glkonlc_Indexiv` (`libGLcore.so` 0x0da68b90, 188 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glIndexiv: it records the `HP_INDEXI` (token 0x074) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Indexiv` writes to the FIFO.
- `__glkonlc_Indexs` (`libGLcore.so` 0x0da68c50, 188 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glIndexs: it records the `HP_INDEXS` (token 0x075) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Indexs` writes to the FIFO.
- `__glkonlc_Indexsv` (`libGLcore.so` 0x0da68d10, 136 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glIndexsv: it records the `HP_INDEXS` (token 0x075) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Indexsv` writes to the FIFO.
- `__glkonlc_Normal3b` (`libGLcore.so` 0x0da68da0, 164 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glNormal3b: it records the `HP_NORMAL3B` (token 0x076) command, 2 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Normal3b` writes to the FIFO.
- `__glkonlc_Normal3bv` (`libGLcore.so` 0x0da68e50, 156 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glNormal3bv: it records the `HP_NORMAL3B` (token 0x076) command, 2 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Normal3bv` writes to the FIFO.
- `__glkonlc_Normal3d` (`libGLcore.so` 0x0da68ef0, 208 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glNormal3d: it records the `HP_NORMAL3D` (token 0x077) command, 7 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 7 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 28 bytes and adds 7 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Normal3d` writes to the FIFO.
- `__glkonlc_Normal3dv` (`libGLcore.so` 0x0da68fc0, 196 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glNormal3dv: it records the `HP_NORMAL3D` (token 0x077) command, 7 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 7 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 28 bytes and adds 7 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Normal3dv` writes to the FIFO.
- `__glkonlc_Normal3f` (`libGLcore.so` 0x0da69090, 160 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glNormal3f: it records the `HP_NORMAL3F` (token 0x078) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Normal3f` writes to the FIFO.
- `__glkonlc_Normal3fv` (`libGLcore.so` 0x0da69130, 148 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glNormal3fv: it records the `HP_NORMAL3F` (token 0x078) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Normal3fv` writes to the FIFO.
- `__glkonlc_Normal3i` (`libGLcore.so` 0x0da691d0, 152 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glNormal3i: it records the `HP_NORMAL3I` (token 0x079) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Normal3i` writes to the FIFO.
- `__glkonlc_Normal3iv` (`libGLcore.so` 0x0da69270, 148 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glNormal3iv: it records the `HP_NORMAL3I` (token 0x079) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Normal3iv` writes to the FIFO.
- `__glkonlc_Normal3s` (`libGLcore.so` 0x0da69310, 160 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glNormal3s: it records the `HP_NORMAL3S` (token 0x07a) command, 2 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Normal3s` writes to the FIFO.
- `__glkonlc_Normal3sv` (`libGLcore.so` 0x0da693b0, 152 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glNormal3sv: it records the `HP_NORMAL3S` (token 0x07a) command, 2 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Normal3sv` writes to the FIFO.
- `__glkonlc_RasterPos2dv` (`libGLcore.so` 0x0da69500, 172 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glRasterPos2dv: it records the `HP_RASTERPOS2D` (token 0x0a8) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_RasterPos2dv` writes to the FIFO.
- `__glkonlc_RasterPos2fv` (`libGLcore.so` 0x0da69640, 140 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glRasterPos2fv: it records the `HP_RASTERPOS2F` (token 0x0a9) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_RasterPos2fv` writes to the FIFO.
- `__glkonlc_RasterPos2iv` (`libGLcore.so` 0x0da69760, 140 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glRasterPos2iv: it records the `HP_RASTERPOS2I` (token 0x0aa) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_RasterPos2iv` writes to the FIFO.
- `__glkonlc_RasterPos2sv` (`libGLcore.so` 0x0da69880, 140 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glRasterPos2sv: it records the `HP_RASTERPOS2S` (token 0x0ab) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_RasterPos2sv` writes to the FIFO.
- `__glkonlc_RasterPos3dv` (`libGLcore.so` 0x0da699e0, 196 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glRasterPos3dv: it records the `HP_RASTERPOS3D` (token 0x0ac) command, 7 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 7 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 28 bytes and adds 7 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_RasterPos3dv` writes to the FIFO.
- `__glkonlc_RasterPos3fv` (`libGLcore.so` 0x0da69b50, 148 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glRasterPos3fv: it records the `HP_RASTERPOS3F` (token 0x0ad) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_RasterPos3fv` writes to the FIFO.
- `__glkonlc_RasterPos3iv` (`libGLcore.so` 0x0da69c90, 148 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glRasterPos3iv: it records the `HP_RASTERPOS3I` (token 0x0ae) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_RasterPos3iv` writes to the FIFO.
- `__glkonlc_RasterPos3sv` (`libGLcore.so` 0x0da69dd0, 148 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glRasterPos3sv: it records the `HP_RASTERPOS3S` (token 0x0af) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_RasterPos3sv` writes to the FIFO.
- `__glkonlc_RasterPos4dv` (`libGLcore.so` 0x0da69f60, 220 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glRasterPos4dv: it records the `HP_RASTERPOS4D` (token 0x0b0) command, 9 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 9 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 36 bytes and adds 9 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_RasterPos4dv` writes to the FIFO.
- `__glkonlc_RasterPos4fv` (`libGLcore.so` 0x0da6a0f0, 156 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glRasterPos4fv: it records the `HP_RASTERPOS4F` (token 0x0b1) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_RasterPos4fv` writes to the FIFO.
- `__glkonlc_RasterPos4iv` (`libGLcore.so` 0x0da6a240, 156 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glRasterPos4iv: it records the `HP_RASTERPOS4I` (token 0x0b2) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_RasterPos4iv` writes to the FIFO.
- `__glkonlc_RasterPos4sv` (`libGLcore.so` 0x0da6a390, 156 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glRasterPos4sv: it records the `HP_RASTERPOS4S` (token 0x0b3) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_RasterPos4sv` writes to the FIFO.
- `__glkonlc_TexCoord1d` (`libGLcore.so` 0x0da6a430, 144 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord1d: it records the `HP_TEXCOORD1D` (token 0x07b) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord1d` writes to the FIFO.
- `__glkonlc_TexCoord1dv` (`libGLcore.so` 0x0da6a4c0, 148 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord1dv: it records the `HP_TEXCOORD1D` (token 0x07b) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord1dv` writes to the FIFO.
- `__glkonlc_TexCoord1f` (`libGLcore.so` 0x0da6a560, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord1f: it records the `HP_TEXCOORD1F` (token 0x07c) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord1f` writes to the FIFO.
- `__glkonlc_TexCoord1fv` (`libGLcore.so` 0x0da6a620, 188 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord1fv: it records the `HP_TEXCOORD1F` (token 0x07c) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord1fv` writes to the FIFO.
- `__glkonlc_TexCoord1i` (`libGLcore.so` 0x0da6a6e0, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord1i: it records the `HP_TEXCOORD1I` (token 0x07d) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord1i` writes to the FIFO.
- `__glkonlc_TexCoord1iv` (`libGLcore.so` 0x0da6a7a0, 188 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord1iv: it records the `HP_TEXCOORD1I` (token 0x07d) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord1iv` writes to the FIFO.
- `__glkonlc_TexCoord1s` (`libGLcore.so` 0x0da6a860, 188 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord1s: it records the `HP_TEXCOORD1S` (token 0x07e) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord1s` writes to the FIFO.
- `__glkonlc_TexCoord1sv` (`libGLcore.so` 0x0da6a920, 136 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord1sv: it records the `HP_TEXCOORD1S` (token 0x07e) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord1sv` writes to the FIFO.
- `__glkonlc_TexCoord2d` (`libGLcore.so` 0x0da6a9b0, 176 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord2d: it records the `HP_TEXCOORD2D` (token 0x07f) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord2d` writes to the FIFO.
- `__glkonlc_TexCoord2dv` (`libGLcore.so` 0x0da6aa60, 172 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord2dv: it records the `HP_TEXCOORD2D` (token 0x07f) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord2dv` writes to the FIFO.
- `__glkonlc_TexCoord2f` (`libGLcore.so` 0x0da6ab10, 144 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord2f: it records the `HP_TEXCOORD2F` (token 0x080) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord2f` writes to the FIFO.
- `__glkonlc_TexCoord2fv` (`libGLcore.so` 0x0da6aba0, 140 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord2fv: it records the `HP_TEXCOORD2F` (token 0x080) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord2fv` writes to the FIFO.
- `__glkonlc_TexCoord2i` (`libGLcore.so` 0x0da6ac30, 140 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord2i: it records the `HP_TEXCOORD2I` (token 0x081) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord2i` writes to the FIFO.
- `__glkonlc_TexCoord2iv` (`libGLcore.so` 0x0da6acc0, 140 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord2iv: it records the `HP_TEXCOORD2I` (token 0x081) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord2iv` writes to the FIFO.
- `__glkonlc_TexCoord2s` (`libGLcore.so` 0x0da6ad50, 144 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord2s: it records the `HP_TEXCOORD2S` (token 0x082) command, 2 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord2s` writes to the FIFO.
- `__glkonlc_TexCoord2sv` (`libGLcore.so` 0x0da6ade0, 144 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord2sv: it records the `HP_TEXCOORD2S` (token 0x082) command, 2 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord2sv` writes to the FIFO.
- `__glkonlc_TexCoord3d` (`libGLcore.so` 0x0da6ae70, 208 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord3d: it records the `HP_TEXCOORD3D` (token 0x083) command, 7 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 7 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 28 bytes and adds 7 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord3d` writes to the FIFO.
- `__glkonlc_TexCoord3dv` (`libGLcore.so` 0x0da6af40, 196 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord3dv: it records the `HP_TEXCOORD3D` (token 0x083) command, 7 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 7 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 28 bytes and adds 7 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord3dv` writes to the FIFO.
- `__glkonlc_TexCoord3f` (`libGLcore.so` 0x0da6b010, 160 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord3f: it records the `HP_TEXCOORD3F` (token 0x084) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord3f` writes to the FIFO.
- `__glkonlc_TexCoord3fv` (`libGLcore.so` 0x0da6b0b0, 148 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord3fv: it records the `HP_TEXCOORD3F` (token 0x084) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord3fv` writes to the FIFO.
- `__glkonlc_TexCoord3i` (`libGLcore.so` 0x0da6b150, 152 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord3i: it records the `HP_TEXCOORD3I` (token 0x085) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord3i` writes to the FIFO.
- `__glkonlc_TexCoord3iv` (`libGLcore.so` 0x0da6b1f0, 148 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord3iv: it records the `HP_TEXCOORD3I` (token 0x085) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord3iv` writes to the FIFO.
- `__glkonlc_TexCoord3s` (`libGLcore.so` 0x0da6b290, 160 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord3s: it records the `HP_TEXCOORD3S` (token 0x086) command, 2 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord3s` writes to the FIFO.
- `__glkonlc_TexCoord3sv` (`libGLcore.so` 0x0da6b330, 152 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord3sv: it records the `HP_TEXCOORD3S` (token 0x086) command, 2 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord3sv` writes to the FIFO.
- `__glkonlc_TexCoord4d` (`libGLcore.so` 0x0da6b3d0, 240 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord4d: it records the `HP_TEXCOORD4D` (token 0x087) command, 9 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 9 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 36 bytes and adds 9 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord4d` writes to the FIFO.
- `__glkonlc_TexCoord4dv` (`libGLcore.so` 0x0da6b4c0, 220 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord4dv: it records the `HP_TEXCOORD4D` (token 0x087) command, 9 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 9 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 36 bytes and adds 9 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord4dv` writes to the FIFO.
- `__glkonlc_TexCoord4f` (`libGLcore.so` 0x0da6b5a0, 176 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord4f: it records the `HP_TEXCOORD4F` (token 0x088) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord4f` writes to the FIFO.
- `__glkonlc_TexCoord4fv` (`libGLcore.so` 0x0da6b650, 156 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord4fv: it records the `HP_TEXCOORD4F` (token 0x088) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord4fv` writes to the FIFO.
- `__glkonlc_TexCoord4i` (`libGLcore.so` 0x0da6b6f0, 164 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord4i: it records the `HP_TEXCOORD4I` (token 0x089) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord4i` writes to the FIFO.
- `__glkonlc_TexCoord4iv` (`libGLcore.so` 0x0da6b7a0, 156 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord4iv: it records the `HP_TEXCOORD4I` (token 0x089) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord4iv` writes to the FIFO.
- `__glkonlc_TexCoord4s` (`libGLcore.so` 0x0da6b840, 176 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord4s: it records the `HP_TEXCOORD4S` (token 0x08a) command, 3 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord4s` writes to the FIFO.
- `__glkonlc_TexCoord4sv` (`libGLcore.so` 0x0da6b8f0, 164 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexCoord4sv: it records the `HP_TEXCOORD4S` (token 0x08a) command, 3 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexCoord4sv` writes to the FIFO.
- `__glkonlc_Vertex2d` (`libGLcore.so` 0x0da6b9a0, 176 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glVertex2d: it records the `HP_VERTEX2D` (token 0x08b) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Vertex2d` writes to the FIFO.
- `__glkonlc_Vertex2dv` (`libGLcore.so` 0x0da6ba50, 172 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glVertex2dv: it records the `HP_VERTEX2D` (token 0x08b) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Vertex2dv` writes to the FIFO.
- `__glkonlc_Vertex2f` (`libGLcore.so` 0x0da6bb00, 144 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glVertex2f: it records the `HP_VERTEX2F` (token 0x08c) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Vertex2f` writes to the FIFO.
- `__glkonlc_Vertex2fv` (`libGLcore.so` 0x0da6bb90, 140 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glVertex2fv: it records the `HP_VERTEX2F` (token 0x08c) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Vertex2fv` writes to the FIFO.
- `__glkonlc_Vertex2i` (`libGLcore.so` 0x0da6bc20, 140 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glVertex2i: it records the `HP_VERTEX2I` (token 0x08d) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Vertex2i` writes to the FIFO.
- `__glkonlc_Vertex2iv` (`libGLcore.so` 0x0da6bcb0, 140 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glVertex2iv: it records the `HP_VERTEX2I` (token 0x08d) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Vertex2iv` writes to the FIFO.
- `__glkonlc_Vertex2s` (`libGLcore.so` 0x0da6bd40, 144 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glVertex2s: it records the `HP_VERTEX2S` (token 0x08e) command, 2 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Vertex2s` writes to the FIFO.
- `__glkonlc_Vertex2sv` (`libGLcore.so` 0x0da6bdd0, 144 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glVertex2sv: it records the `HP_VERTEX2S` (token 0x08e) command, 2 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Vertex2sv` writes to the FIFO.
- `__glkonlc_Vertex3d` (`libGLcore.so` 0x0da6be60, 208 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glVertex3d: it records the `HP_VERTEX3D` (token 0x08f) command, 7 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 7 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 28 bytes and adds 7 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Vertex3d` writes to the FIFO.
- `__glkonlc_Vertex3dv` (`libGLcore.so` 0x0da6bf30, 196 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glVertex3dv: it records the `HP_VERTEX3D` (token 0x08f) command, 7 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 7 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 28 bytes and adds 7 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Vertex3dv` writes to the FIFO.
- `__glkonlc_Vertex3f` (`libGLcore.so` 0x0da6c000, 160 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glVertex3f: it records the `HP_VERTEX3F` (token 0x090) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Vertex3f` writes to the FIFO.
- `__glkonlc_Vertex3fv` (`libGLcore.so` 0x0da6c0a0, 148 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glVertex3fv: it records the `HP_VERTEX3F` (token 0x090) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Vertex3fv` writes to the FIFO.
- `__glkonlc_Vertex3i` (`libGLcore.so` 0x0da6c140, 152 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glVertex3i: it records the `HP_VERTEX3I` (token 0x091) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Vertex3i` writes to the FIFO.
- `__glkonlc_Vertex3iv` (`libGLcore.so` 0x0da6c1e0, 148 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glVertex3iv: it records the `HP_VERTEX3I` (token 0x091) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Vertex3iv` writes to the FIFO.
- `__glkonlc_Vertex3s` (`libGLcore.so` 0x0da6c280, 160 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glVertex3s: it records the `HP_VERTEX3S` (token 0x092) command, 2 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Vertex3s` writes to the FIFO.
- `__glkonlc_Vertex3sv` (`libGLcore.so` 0x0da6c320, 152 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glVertex3sv: it records the `HP_VERTEX3S` (token 0x092) command, 2 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Vertex3sv` writes to the FIFO.
- `__glkonlc_Vertex4d` (`libGLcore.so` 0x0da6c3c0, 240 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glVertex4d: it records the `HP_VERTEX4D` (token 0x093) command, 9 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 9 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 36 bytes and adds 9 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Vertex4d` writes to the FIFO.
- `__glkonlc_Vertex4dv` (`libGLcore.so` 0x0da6c4b0, 220 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glVertex4dv: it records the `HP_VERTEX4D` (token 0x093) command, 9 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 9 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 36 bytes and adds 9 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Vertex4dv` writes to the FIFO.
- `__glkonlc_Vertex4f` (`libGLcore.so` 0x0da6c590, 176 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glVertex4f: it records the `HP_VERTEX4F` (token 0x094) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Vertex4f` writes to the FIFO.
- `__glkonlc_Vertex4fv` (`libGLcore.so` 0x0da6c640, 156 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glVertex4fv: it records the `HP_VERTEX4F` (token 0x094) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Vertex4fv` writes to the FIFO.
- `__glkonlc_Vertex4i` (`libGLcore.so` 0x0da6c6e0, 164 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glVertex4i: it records the `HP_VERTEX4I` (token 0x095) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Vertex4i` writes to the FIFO.
- `__glkonlc_Vertex4iv` (`libGLcore.so` 0x0da6c790, 156 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glVertex4iv: it records the `HP_VERTEX4I` (token 0x095) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Vertex4iv` writes to the FIFO.
- `__glkonlc_Vertex4s` (`libGLcore.so` 0x0da6c830, 176 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glVertex4s: it records the `HP_VERTEX4S` (token 0x096) command, 3 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Vertex4s` writes to the FIFO.
- `__glkonlc_Vertex4sv` (`libGLcore.so` 0x0da6c8e0, 164 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glVertex4sv: it records the `HP_VERTEX4S` (token 0x096) command, 3 words in all, in the display-list buffer instead of sending it. The token is the low byte of the first word; its upper bytes carry the first converted argument values. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Vertex4sv` writes to the FIFO.
- `__glkonlc_ClipPlane` (`libGLcore.so` 0x0da6c990, 276 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glClipPlane: it records the `HP_CLIPPLANE` (token 0x0b4) command, 10 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 10 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 40 bytes and adds 10 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_ClipPlane` writes to the FIFO.
- `__glkonlc_ColorMaterial` (`libGLcore.so` 0x0da6cab0, 140 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColorMaterial: it records the `HP_COLORMATERIAL` (token 0x0b5) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_ColorMaterial` writes to the FIFO.
- `__glkonlc_CullFace` (`libGLcore.so` 0x0da6cb40, 184 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glCullFace: it records the `HP_CULLFACE` (token 0x0b6) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_CullFace` writes to the FIFO.
- `__glkonlc_Fogf` (`libGLcore.so` 0x0da6cc00, 200 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glFogf: it records the `HP_FOGF` (token 0x0b7) command, 6 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 6 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 24 bytes and adds 6 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_Fogf` writes to the FIFO.
- `__glkonlc_Fogfv` (`libGLcore.so` 0x0da6ccd0, 220 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glFogfv: it records the `HP_FOGF` (token 0x0b7) command, 6 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 6 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 24 bytes and adds 6 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_Fogfv` writes to the FIFO.
- `__glkonlc_Fogi` (`libGLcore.so` 0x0da6cdb0, 196 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glFogi: it records the `HP_FOGI` (token 0x0b8) command, 6 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 6 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 24 bytes and adds 6 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_Fogi` writes to the FIFO.
- `__glkonlc_Fogiv` (`libGLcore.so` 0x0da6ce80, 220 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glFogiv: it records the `HP_FOGI` (token 0x0b8) command, 6 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 6 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 24 bytes and adds 6 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_Fogiv` writes to the FIFO.
- `__glkonlc_FrontFace` (`libGLcore.so` 0x0da6cf60, 168 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glFrontFace: it records the `HP_FRONTFACE` (token 0x0ba) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_FrontFace` writes to the FIFO.
- `__glkonlc_Hint` (`libGLcore.so` 0x0da6d010, 184 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glHint: it records the `HP_HINT` (token 0x0bb) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_Hint` writes to the FIFO.
- `__glkonlc_Lightf` (`libGLcore.so` 0x0da6d0d0, 212 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glLightf: it records the `HP_LIGHTF` (token 0x007) command, 7 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 7 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 28 bytes and adds 7 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_Lightf` writes to the FIFO.
- `__glkonlc_Lightfv` (`libGLcore.so` 0x0da6d1b0, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glLightfv: it records the `HP_LIGHTF` (token 0x007) command, 7 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 7 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 28 bytes and adds 7 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Lightfv` writes to the FIFO.
- `__glkonlc_Lighti` (`libGLcore.so` 0x0da6d270, 208 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glLighti: it records the `HP_LIGHTI` (token 0x008) command, 7 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 7 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 28 bytes and adds 7 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_Lighti` writes to the FIFO.
- `__glkonlc_Lightiv` (`libGLcore.so` 0x0da6d340, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glLightiv: it records the `HP_LIGHTI` (token 0x008) command, 7 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 7 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 28 bytes and adds 7 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Lightiv` writes to the FIFO.
- `__glkonlc_LightModelf` (`libGLcore.so` 0x0da6d400, 200 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glLightModelf: it records the `HP_LIGHTMODELF` (token 0x009) command, 6 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 6 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 24 bytes and adds 6 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_LightModelf` writes to the FIFO.
- `__glkonlc_LightModelfv` (`libGLcore.so` 0x0da6d4d0, 168 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glLightModelfv: it records the `HP_LIGHTMODELF` (token 0x009) command, 6 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 6 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 24 bytes and adds 6 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_LightModelfv` writes to the FIFO.
- `__glkonlc_LightModeli` (`libGLcore.so` 0x0da6d580, 196 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glLightModeli: it records the `HP_LIGHTMODELI` (token 0x00a) command, 6 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 6 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 24 bytes and adds 6 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_LightModeli` writes to the FIFO.
- `__glkonlc_LightModeliv` (`libGLcore.so` 0x0da6d650, 168 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glLightModeliv: it records the `HP_LIGHTMODELI` (token 0x00a) command, 6 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 6 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 24 bytes and adds 6 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_LightModeliv` writes to the FIFO.
- `__glkonlc_LineStipple` (`libGLcore.so` 0x0da6d700, 140 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glLineStipple: it records the `HP_LINESTIPPLE` (token 0x0bc) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_LineStipple` writes to the FIFO.
- `__glkonlc_Materialf` (`libGLcore.so` 0x0da6d790, 200 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glMaterialf: it records the `HP_MATERIALF` (token 0x097) command, 7 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 7 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 28 bytes and adds 7 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_Materialf` writes to the FIFO.
- `__glkonlc_Materialfv` (`libGLcore.so` 0x0da6d860, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glMaterialfv: it records the `HP_MATERIALF` (token 0x097) command, 7 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 7 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 28 bytes and adds 7 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Materialfv` writes to the FIFO.
- `__glkonlc_PolygonMode` (`libGLcore.so` 0x0da6d920, 256 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glPolygonMode: it records the `HP_POLYGONMODE` (token 0x0bf) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_PolygonMode` writes to the FIFO.
- `__glkonlc_Scissor` (`libGLcore.so` 0x0da6da20, 220 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glScissor: it records the `HP_SCISSOR` (token 0x00c) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). A negative size argument goes to
  `__glsplc_InvalidValue` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_Scissor` writes to the FIFO.
- `__glkonlc_ShadeModel` (`libGLcore.so` 0x0da6db00, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glShadeModel: it records the `HP_SHADEMODEL` (token 0x0c0) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_ShadeModel` writes to the FIFO.
- `__glkonlc_TexEnvf` (`libGLcore.so` 0x0da6dbc0, 216 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexEnvf: it records the `HP_TEXENVF` (token 0x011) command, 6 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 6 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 24 bytes and adds 6 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_TexEnvf` writes to the FIFO.
- `__glkonlc_TexEnvfv` (`libGLcore.so` 0x0da6dca0, 252 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexEnvfv: it records the `HP_TEXENVF` (token 0x011) command, 6 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 6 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 24 bytes and adds 6 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_TexEnvfv` writes to the FIFO.
- `__glkonlc_TexEnvi` (`libGLcore.so` 0x0da6dda0, 212 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexEnvi: it records the `HP_TEXENVI` (token 0x012) command, 6 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 6 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 24 bytes and adds 6 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_TexEnvi` writes to the FIFO.
- `__glkonlc_TexEnviv` (`libGLcore.so` 0x0da6de80, 252 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexEnviv: it records the `HP_TEXENVI` (token 0x012) command, 6 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 6 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 24 bytes and adds 6 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_TexEnviv` writes to the FIFO.
- `__glkonlc_TexGend` (`libGLcore.so` 0x0da6df80, 184 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexGend: it records the `HP_TEXGENF` (token 0x014) command, 10 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 10 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 40 bytes and adds 10 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexGend` writes to the FIFO.
- `__glkonlc_TexGenf` (`libGLcore.so` 0x0da6e040, 184 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexGenf: it records the `HP_TEXGENF` (token 0x014) command, 10 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 10 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 40 bytes and adds 10 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexGenf` writes to the FIFO.
- `__glkonlc_TexGeni` (`libGLcore.so` 0x0da6e100, 176 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTexGeni: it records the `HP_TEXGENF` (token 0x014) command, 10 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 10 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 40 bytes and adds 10 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_TexGeni` writes to the FIFO.
- `__glkonlc_InitNames` (`libGLcore.so` 0x0da6e1b0, 164 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glInitNames: it records the `HP_INITNAMES` (token 0x10c) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_InitNames` writes to the FIFO.
- `__glkonlc_LoadName` (`libGLcore.so` 0x0da6e260, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glLoadName: it records the `HP_LOADNAME` (token 0x10d) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_LoadName` writes to the FIFO.
- `__glkonlc_PassThrough` (`libGLcore.so` 0x0da6e320, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glPassThrough: it records the `HP_PASSTHROUGH` (token 0x0c1) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_PassThrough` writes to the FIFO.
- `__glkonlc_PopName` (`libGLcore.so` 0x0da6e3e0, 164 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glPopName: it records the `HP_POPNAME` (token 0x0c2) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_PopName` writes to the FIFO.
- `__glkonlc_PushName` (`libGLcore.so` 0x0da6e490, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glPushName: it records the `HP_PUSHNAME` (token 0x0c3) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_PushName` writes to the FIFO.
- `__glkonlc_DrawBuffer` (`libGLcore.so` 0x0da6e550, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glDrawBuffer: it records the `HP_DRAWBUFFER` (token 0x0c4) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_DrawBuffer` writes to the FIFO.
- `__glkonlc_ClearIndex` (`libGLcore.so` 0x0da6e610, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glClearIndex: it records the `HP_CLEARINDEX` (token 0x01c) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_ClearIndex` writes to the FIFO.
- `__glkonlc_ClearStencil` (`libGLcore.so` 0x0da6e6d0, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glClearStencil: it records the `HP_CLEARSTENCIL` (token 0x01e) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_ClearStencil` writes to the FIFO.
- `__glkonlc_StencilMask` (`libGLcore.so` 0x0da6e790, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glStencilMask: it records the `HP_STENCILMASK` (token 0x020) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_StencilMask` writes to the FIFO.
- `__glkonlc_ColorMask` (`libGLcore.so` 0x0da6e850, 164 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColorMask: it records the `HP_COLORMASK` (token 0x021) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_ColorMask` writes to the FIFO.
- `__glkonlc_DepthMask` (`libGLcore.so` 0x0da6e900, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glDepthMask: it records the `HP_DEPTHMASK` (token 0x022) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_DepthMask` writes to the FIFO.
- `__glkonlc_IndexMask` (`libGLcore.so` 0x0da6e9c0, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glIndexMask: it records the `HP_INDEXMASK` (token 0x023) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_IndexMask` writes to the FIFO.
- `__glkonlc_Accum` (`libGLcore.so` 0x0da6ea80, 144 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glAccum: it records the `HP_ACCUM` (token 0x0c5) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Accum` writes to the FIFO.
- `__glkonlc_BlendFunc` (`libGLcore.so` 0x0da6eb10, 344 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glBlendFunc: it records the `HP_BLENDFUNC` (token 0x0cb) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_BlendFunc` writes to the FIFO.
- `__glkonlc_LogicOp` (`libGLcore.so` 0x0da6ec70, 172 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glLogicOp: it records the `HP_LOGICOP` (token 0x02e) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_LogicOp` writes to the FIFO.
- `__glkonlc_StencilFunc` (`libGLcore.so` 0x0da6ed20, 196 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glStencilFunc: it records the `HP_STENCILFUNC` (token 0x0cc) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_StencilFunc` writes to the FIFO.
- `__glkonlc_StencilOp` (`libGLcore.so` 0x0da6edf0, 340 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glStencilOp: it records the `HP_STENCILOP` (token 0x0cd) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_StencilOp` writes to the FIFO.
- `__glkonlc_DepthFunc` (`libGLcore.so` 0x0da6ef50, 172 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glDepthFunc: it records the `HP_DEPTHFUNC` (token 0x0ce) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_DepthFunc` writes to the FIFO.
- `__glkonlc_ReadBuffer` (`libGLcore.so` 0x0da6f000, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glReadBuffer: it records the `HP_READBUFFER` (token 0x037) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_ReadBuffer` writes to the FIFO.
- `__glkonlc_DepthRange` (`libGLcore.so` 0x0da6f0c0, 176 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glDepthRange: it records the `HP_DEPTHRANGE` (token 0x0cf) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_DepthRange` writes to the FIFO.
- `__glkonlc_Frustum` (`libGLcore.so` 0x0da6f170, 304 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glFrustum: it records the `HP_FRUSTUM` (token 0x0d1) command, 13 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 13 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 52 bytes and adds 13 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Frustum` writes to the FIFO.
- `__glkonlc_LoadIdentity` (`libGLcore.so` 0x0da6f2a0, 164 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glLoadIdentity: it records the `HP_LOADIDENTITY` (token 0x0d2) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_LoadIdentity` writes to the FIFO.
- `__glkonlc_LoadMatrixf` (`libGLcore.so` 0x0da6f350, 252 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glLoadMatrixf: it records the `HP_LOADMATRIXF` (token 0x0d3) command, 17 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 17 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 68 bytes and adds 17 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_LoadMatrixf` writes to the FIFO.
- `__glkonlc_LoadMatrixd` (`libGLcore.so` 0x0da6f450, 508 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glLoadMatrixd: it records the `HP_LOADMATRIXD` (token 0x0d4) command, 33 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 33 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 132 bytes and adds 33 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_LoadMatrixd` writes to the FIFO.
- `__glkonlc_MatrixMode` (`libGLcore.so` 0x0da6f650, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glMatrixMode: it records the `HP_MATRIXMODE` (token 0x0d0) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_MatrixMode` writes to the FIFO.
- `__glkonlc_MultMatrixf` (`libGLcore.so` 0x0da6f710, 252 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glMultMatrixf: it records the `HP_MULTMATRIXF` (token 0x0d5) command, 17 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 17 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 68 bytes and adds 17 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_MultMatrixf` writes to the FIFO.
- `__glkonlc_MultMatrixd` (`libGLcore.so` 0x0da6f810, 508 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glMultMatrixd: it records the `HP_MULTMATRIXD` (token 0x0d6) command, 33 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 33 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 132 bytes and adds 33 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_MultMatrixd` writes to the FIFO.
- `__glkonlc_Ortho` (`libGLcore.so` 0x0da6fa10, 304 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glOrtho: it records the `HP_ORTHO` (token 0x0d7) command, 13 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 13 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 52 bytes and adds 13 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Ortho` writes to the FIFO.
- `__glkonlc_PopMatrix` (`libGLcore.so` 0x0da6fb40, 164 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glPopMatrix: it records the `HP_POPMATRIX` (token 0x0d8) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_PopMatrix` writes to the FIFO.
- `__glkonlc_PushMatrix` (`libGLcore.so` 0x0da6fbf0, 164 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glPushMatrix: it records the `HP_PUSHMATRIX` (token 0x0d9) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_PushMatrix` writes to the FIFO.
- `__glkonlc_Rotated` (`libGLcore.so` 0x0da6fca0, 240 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glRotated: it records the `HP_ROTATED` (token 0x0da) command, 9 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 9 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 36 bytes and adds 9 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Rotated` writes to the FIFO.
- `__glkonlc_Rotatef` (`libGLcore.so` 0x0da6fd90, 176 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glRotatef: it records the `HP_ROTATEF` (token 0x0db) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Rotatef` writes to the FIFO.
- `__glkonlc_Scaled` (`libGLcore.so` 0x0da6fe40, 208 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glScaled: it records the `HP_SCALED` (token 0x0dc) command, 7 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 7 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 28 bytes and adds 7 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Scaled` writes to the FIFO.
- `__glkonlc_Scalef` (`libGLcore.so` 0x0da6ff10, 160 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glScalef: it records the `HP_SCALEF` (token 0x0dd) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Scalef` writes to the FIFO.
- `__glkonlc_Translated` (`libGLcore.so` 0x0da6ffb0, 208 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTranslated: it records the `HP_TRANSLATED` (token 0x0de) command, 7 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 7 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 28 bytes and adds 7 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Translated` writes to the FIFO.
- `__glkonlc_Translatef` (`libGLcore.so` 0x0da70080, 160 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glTranslatef: it records the `HP_TRANSLATEF` (token 0x0df) command, 4 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 4 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 16 bytes and adds 4 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Translatef` writes to the FIFO.
- `__glkonlc_Viewport` (`libGLcore.so` 0x0da70120, 220 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glViewport: it records the `HP_VIEWPORT` (token 0x0e3) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). A negative size argument goes to
  `__glsplc_InvalidValue` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_Viewport` writes to the FIFO.
- `__glkonlc_BlendColorEXT` (`libGLcore.so` 0x0da70200, 176 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glBlendColorEXT: it records the `HP_BLENDCOLOR` (token 0x0e6) command, 5 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 5 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 20 bytes and adds 5 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_BlendColorEXT` writes to the FIFO.
- `__glkonlc_BlendEquationEXT` (`libGLcore.so` 0x0da702b0, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glBlendEquationEXT: it records the `HP_BLENDEQUATION` (token 0x0e7) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_BlendEquationEXT` writes to the FIFO.
- `__glkonlc_PolygonOffsetEXT` (`libGLcore.so` 0x0da70370, 144 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glPolygonOffsetEXT: it records the `HP_POLYGONOFFSETEXT` (token 0x11b) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_PolygonOffsetEXT` writes to the FIFO.
- `__glkonlc_ResetHistogramEXT` (`libGLcore.so` 0x0da70400, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glResetHistogramEXT: it records the `HP_RESETHISTOGRAM` (token 0x103) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_ResetHistogramEXT` writes to the FIFO.
- `__glkonlc_ResetMinmaxEXT` (`libGLcore.so` 0x0da704c0, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glResetMinmaxEXT: it records the `HP_RESETMINMAX` (token 0x108) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_ResetMinmaxEXT` writes to the FIFO.
- `__glkonlc_PolygonOffset` (`libGLcore.so` 0x0da70580, 144 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glPolygonOffset: it records the `HP_POLYGONOFFSET` (token 0x168) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_PolygonOffset` writes to the FIFO.
- `__glkonlc_Indexub` (`libGLcore.so` 0x0da70610, 188 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glIndexub: it records the `HP_INDEXS` (token 0x075) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Indexub` writes to the FIFO.
- `__glkonlc_Indexubv` (`libGLcore.so` 0x0da706d0, 136 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glIndexubv: it records the `HP_INDEXS` (token 0x075) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_Indexubv` writes to the FIFO.
- `__glkonlc_SamplePatternSGIS` (`libGLcore.so` 0x0da70760, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glSamplePatternSGIS: it records the `HP_SAMPLEPATTERN` (token 0x117) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_SamplePatternSGIS` writes to the FIFO.
- `__glkonlc_TagSampleBufferSGIX` (`libGLcore.so` 0x0da70820, 8 bytes, `kon_cdlfuncs.c`): **Established.** The list-compile form of
  glTagSampleBufferSGIX. It returns at once: it records nothing in the list and sends nothing to the pipe, because the immediate form `__glkonim_TagSampleBufferSGIX` is empty too.
- `__glkonlc_ColorTableParameterfvSGI` (`libGLcore.so` 0x0da70830, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColorTableParameterfvSGI: it records the `HP_COLORTABLEPARAMETERFV` (token 0x0eb) command, 7 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 7 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 28 bytes and adds 7 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_ColorTableParameterfvSGI` writes to the FIFO.
- `__glkonlc_ColorTableParameterivSGI` (`libGLcore.so` 0x0da708f0, 212 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glColorTableParameterivSGI: it records the `HP_COLORTABLEPARAMETERFV` (token 0x0eb) command, 7 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 7 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 28 bytes and adds 7 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_ColorTableParameterivSGI` writes to the FIFO.
- `__glkonlc_SpriteParameterfSGIX` (`libGLcore.so` 0x0da709d0, 240 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glSpriteParameterfSGIX: it records the `HP_SPRITEPARAMETERI` (token 0x1a4) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_SpriteParameterfSGIX` writes to the FIFO.
- `__glkonlc_SpriteParameteriSGIX` (`libGLcore.so` 0x0da70ac0, 224 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glSpriteParameteriSGIX: it records the `HP_SPRITEPARAMETERI` (token 0x1a4) command, 3 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 3 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 12 bytes and adds 3 to the list's word count (4148). An argument outside the accepted values goes to
  `__glsplc_InvalidEnum` and nothing is recorded. **Inferred:** playing the list sends the same words the immediate form `__glkonim_SpriteParameteriSGIX` writes to the FIFO.
- `__glkonlc_ReadInstrumentsSGIX` (`libGLcore.so` 0x0da70ba0, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glReadInstrumentsSGIX: it records the `HP_READ_INSTRUMENTS` (token 0x1cd) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_ReadInstrumentsSGIX` writes to the FIFO.
- `__glkonlc_StartInstrumentsSGIX` (`libGLcore.so` 0x0da70c60, 164 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glStartInstrumentsSGIX: it records the `HP_START_INSTRUMENTS` (token 0x1b9) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_StartInstrumentsSGIX` writes to the FIFO.
- `__glkonlc_StopInstrumentsSGIX` (`libGLcore.so` 0x0da70d10, 180 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glStopInstrumentsSGIX: it records the `HP_STOP_INSTRUMENTS` (token 0x1ba) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_StopInstrumentsSGIX` writes to the FIFO.
- `__glkonlc_FlushRasterSGIX` (`libGLcore.so` 0x0da70dd0, 164 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glFlushRasterSGIX: it records the `HP_FLUSH_RASTER` (token 0x1cc) command, 2 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 2 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 8 bytes and adds 2 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_FlushRasterSGIX` writes to the FIFO.
- `__glkonlc_ReferencePlaneSGIX` (`libGLcore.so` 0x0da70e80, 220 bytes, `kon_cdlfuncs.c`): **Established.** The display-list compile form of
  glReferencePlaneSGIX: it records the `HP_REFERENCE_PLANE` (token 0x1bd) command, 9 words in all, in the display-list buffer instead of sending it. It makes room first (`__glSPDlistSpace` runs when fewer than 9 words remain; the remaining count is at process address 4136), stores the words at the list pointer (process address 4144 in the driver state page), advances it by 36 bytes and adds 9 to the list's word count (4148). **Inferred:** playing the list sends the same words the immediate form
  `__glkonim_ReferencePlaneSGIX` writes to the FIFO.

## Further immediate-mode senders

- `__glkonim_Normal3b` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65610, 36 bytes):
  **Established.** The immediate-mode glNormal3b, two stores to the command port from its three register arguments. Word one is the first component in bits 31 to 24, the second masked to a byte in bits 23 to 16 and the token 0x76 in the low byte; word two is the third component in the top byte.
- `__glkonim_Normal3s` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da656d0, 32 bytes):
  **Established.** The immediate-mode glNormal3s, two stores to the command port. Word one is the first short in its upper half beside the token 0x7a; word two is the second short in its upper half and the third masked to 16 bits in its lower half.
- `__glkonim_Normal3i` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da656b0, 24 bytes):
  **Established.** The immediate-mode glNormal3i, four word stores to the command port: the token 121 (0x79) and then its three integer arguments from `a0`, `a1` and `a2`, unchanged.
- `__glkonim_Normal3f` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65690, 24 bytes):
  **Established.** The immediate-mode glNormal3f, four stores to the command port: the token 120 (0x78) as a word, then the three single-precision arguments from `f12`, `f13` and `f14`, each as a 32-bit float store.
- `__glkonim_Normal3d` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65670, 24 bytes):
  **Established.** The immediate-mode glNormal3d, four stores to the command port: the token 119 (0x77) as a word, then the three double-precision arguments from `f12`, `f13` and `f14`, each as one 64-bit store.
- `__glkonim_EdgeFlag` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65590, 16 bytes):
  **Established.** The immediate-mode glEdgeFlag, two word stores to the command port: the token 167 (0xa7) and then the flag argument from `a0` without masking or testing it.
- `__glkonim_Indexd` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da655a0, 16 bytes):
  **Established.** The immediate-mode glIndexd, two stores to the command port: the token 114 (0x72) as a word and the double-precision index from `f12` as a single 64-bit store.
- `__glkonim_Indexf` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da655b0, 16 bytes):
  **Established.** The immediate-mode glIndexf, two stores to the command port: the token 115 (0x73) and the single-precision index from `f12` as a 32-bit float.
- `__glkonim_Indexi` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da655c0, 16 bytes):
  **Established.** The immediate-mode glIndexi, two word stores to the command port: the token 116 (0x74) and the integer index from `a0` unchanged.
- `__glkonim_Indexs` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da655d0, 20 bytes):
  **Established.** The immediate-mode glIndexs: the token 117 (0x75) is stored to the command port, then the short argument moved into the upper half of a word (a left shift by 16) is stored as the payload.
- `__glkonim_Indexsv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da655f0, 24 bytes):
  **Established.** The vector form of glIndexs: it loads one signed short from `a0`, stores the token 117 (0x75) to the command port, then stores the short shifted into the upper half of a word, exactly the pair `__glkonim_Indexs` sends.
- `__glkonim_Indexub` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da66e80, 20 bytes):
  **Established.** The immediate-mode glIndexub: it stores the token 117 (0x75) to the command port, the same token the short forms use, and then the byte argument shifted left by 24 into the top byte of the payload word, where the short forms put their value in the upper 16 bits.
- `__glkonim_Indexubv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da66ea0, 24 bytes):
  **Established.** The vector form of glIndexub: it loads one unsigned byte from `a0`, stores the token 117 (0x75) and then the byte shifted left by 24 as the payload word, the pair `__glkonim_Indexub` sends.

## Further immediate-mode senders

- `__glkonim_Color3b` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65180, 36 bytes):
  **Established.** The immediate-mode glColor3b. It builds two words from its register arguments and stores them to the command port: the first component shifted to bits 31 to 24, the second masked to a byte at bits 23 to 16 and the token 0x61 in the low byte, then the third component in the top byte. The mask on the second component keeps a negative byte from spilling into the first.
- `__glkonim_Color3s` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65240, 32 bytes):
  **Established.** The immediate-mode glColor3s, two stores to the command port: the first short in the upper half with the token 0x65, then the second short in the upper half over the third masked to 16 bits. The mask stops a negative third value from changing the upper half.
- `__glkonim_Color3ub` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65290, 32 bytes):
  **Established.** The immediate-mode glColor3ub, two stores to the command port with the token 0x66. The first argument goes to bits 31 to 24 and the second to bits 23 to 16 of the first word, the third to the top byte of the second word. Unlike `__glkonim_Color3b` it does not mask the second argument, since an unsigned byte cannot extend.
- `__glkonim_Color3us` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65300, 28 bytes):
  **Established.** The immediate-mode glColor3us, two stores to the command port: the first argument in the upper half beside the token 0x68, then the second argument in the upper half ORed with the third, which is not masked. It is the shortest of the colour senders that pack halfwords.
- `__glkonim_Color3i` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65220, 24 bytes):
  **Established.** The immediate-mode glColor3i, four stores to the command port: the token 100 (0x64) and the three integer arguments from `a0`, `a1` and `a2`, unchanged and in order.
- `__glkonim_Color3ui` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da652e0, 24 bytes):
  **Established.** The immediate-mode glColor3ui, four stores to the command port: the token 103 (0x67) and the three unsigned integer arguments, passed through unchanged. Apart from the token it is the same sequence as `__glkonim_Color3i`.
- `__glkonim_Color3f` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65200, 24 bytes):
  **Established.** The immediate-mode glColor3f, four stores to the command port: the token 99 (0x63) as a word and then the floats in `f12`, `f13` and `f14`, one 32-bit store each, with no clamping or scaling.
- `__glkonim_Color3d` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da651e0, 24 bytes):
  **Established.** The immediate-mode glColor3d, four stores to the command port: the token 98 (0x62) as a word and then the doubles in `f12`, `f13` and `f14`, each as one 64-bit store, with no narrowing to float.
- `__glkonim_Color4b` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65350, 48 bytes):
  **Established.** The immediate-mode glColor4b, two stores to the command port. Word one is the first argument at bits 31 to 24, the second masked to a byte at bits 23 to 16 and the token 0x69; word two is the third argument at bits 31 to 24 and the fourth, masked to a byte, at bits 23 to 16. The two masks are what keep the signed values from spilling upward.
- `__glkonim_Color4s` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65420, 40 bytes):
  **Established.** The immediate-mode glColor4s, three stores to the command port: the first short in the upper half with the token 0x6d, the second short in the upper half over the third masked to 16 bits, and the fourth short in the upper half alone.
- `__glkonim_Color4ub` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65490, 40 bytes):
  **Established.** The immediate-mode glColor4ub, two stores to the command port with the token 0x6e: arguments one and two at bits 31 to 24 and 23 to 16 of the first word, three and four at the same positions of the second word. None of the four is masked.
- `__glkonim_Color4us` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65520, 36 bytes):
  **Established.** The immediate-mode glColor4us, three stores to the command port: the first argument in the upper half with the token 0x70, the second in the upper half ORed with the unmasked third, and the fourth in the upper half of the last word.
- `__glkonim_Color4i` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65400, 28 bytes):
  **Established.** The immediate-mode glColor4i, five stores to the command port: the token 108 (0x6c) and the four integer arguments from `a0` to `a3` in order, unchanged.
- `__glkonim_Color4ui` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65500, 28 bytes):
  **Established.** The immediate-mode glColor4ui, five stores to the command port: the token 111 (0x6f) followed by the four unsigned integer arguments unchanged, the same shape as `__glkonim_Color4i`.
- `__glkonim_Color4f` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da653e0, 28 bytes):
  **Established.** The immediate-mode glColor4f, five stores to the command port: the token 107 (0x6b) as a word and the floats in `f12` to `f15` as 32-bit stores. It does not clamp the components.
- `__glkonim_Color4d` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da653c0, 28 bytes):
  **Established.** The immediate-mode glColor4d, five stores to the command port: the token 106 (0x6a) as a word and the doubles in `f12` to `f15`, each as one 64-bit store.

## Further immediate-mode senders

- `__glkonim_TexCoord1d` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da658a0, 16 bytes):
  **Established.** The immediate-mode glTexCoord1d, two stores to the command port: the token 123 (0x7b) as a word and the double in `f12` as one 64-bit store.
- `__glkonim_TexCoord1f` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da658b0, 16 bytes):
  **Established.** The immediate-mode glTexCoord1f, two stores to the command port: the token 124 (0x7c) and the float in `f12` as a 32-bit store.
- `__glkonim_TexCoord1i` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da658c0, 16 bytes):
  **Established.** The immediate-mode glTexCoord1i, two word stores to the command port: the token 125 (0x7d) and the integer in `a0` unchanged.
- `__glkonim_TexCoord1s` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da658d0, 20 bytes):
  **Established.** The immediate-mode glTexCoord1s: it stores the token 126 (0x7e) to the command port and then the short argument shifted into the upper half of a word.
- `__glkonim_TexCoord2d` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65910, 20 bytes):
  **Established.** The immediate-mode glTexCoord2d, three stores to the command port: the token 127 (0x7f) as a word and then the doubles in `f12` and `f13`, each as one 64-bit store.
- `__glkonim_TexCoord2f` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65930, 20 bytes):
  **Established.** The immediate-mode glTexCoord2f, three stores to the command port: the token 128 (0x80) and the floats in `f12` and `f13` as 32-bit stores.
- `__glkonim_TexCoord2i` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65950, 20 bytes):
  **Established.** The immediate-mode glTexCoord2i, three word stores to the command port: the token 129 (0x81) and the integers in `a0` and `a1`, unchanged.
- `__glkonim_TexCoord2s` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65970, 24 bytes):
  **Established.** The immediate-mode glTexCoord2s, two stores to the command port: the first short in the upper half with the token 0x82 in the low byte, then the second short alone in the upper half of the next word. Neither short needs masking because the lower half of the second word is empty.
- `__glkonim_TexCoord3d` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da659b0, 24 bytes):
  **Established.** The immediate-mode glTexCoord3d, four stores to the command port: the token 131 (0x83) and the doubles in `f12`, `f13` and `f14` as 64-bit stores.
- `__glkonim_TexCoord3f` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da659d0, 24 bytes):
  **Established.** The immediate-mode glTexCoord3f, four stores to the command port: the token 132 (0x84) and the floats in `f12`, `f13` and `f14`.
- `__glkonim_TexCoord3i` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da659f0, 24 bytes):
  **Established.** The immediate-mode glTexCoord3i, four word stores to the command port: the token 133 (0x85) and the integers from `a0`, `a1` and `a2` unchanged.
- `__glkonim_TexCoord3s` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65a10, 32 bytes):
  **Established.** The immediate-mode glTexCoord3s, two stores to the command port: the first short in the upper half with the token 0x86, then the second short in the upper half over the third masked to 16 bits in the lower half.
- `__glkonim_TexCoord4d` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65a60, 28 bytes):
  **Established.** The immediate-mode glTexCoord4d, five stores to the command port: the token 135 (0x87) and the doubles in `f12` to `f15` as 64-bit stores.
- `__glkonim_TexCoord4f` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65a80, 28 bytes):
  **Established.** The immediate-mode glTexCoord4f, five stores to the command port: the token 136 (0x88) and the floats in `f12` to `f15`.
- `__glkonim_TexCoord4i` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65aa0, 28 bytes):
  **Established.** The immediate-mode glTexCoord4i, five word stores to the command port: the token 137 (0x89) and the integers from `a0` to `a3` unchanged.
- `__glkonim_TexCoord4s` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65ac0, 40 bytes):
  **Established.** The immediate-mode glTexCoord4s, three stores to the command port: the first short in the upper half with the token 0x8a, then the second short in the upper half over the third masked to 16 bits, then the fourth short alone in the upper half.

## Further immediate-mode senders

- `__glkonim_Vertex2d` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65b30, 20 bytes):
  **Established.** The immediate-mode glVertex2d, three stores to the command port: the token 139 (0x8b) as a word and the doubles in `f12` and `f13`, each as one 64-bit store.
- `__glkonim_Vertex2f` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65b50, 20 bytes):
  **Established.** The immediate-mode glVertex2f, three stores to the command port: the token 140 (0x8c) and the floats in `f12` and `f13` as 32-bit stores.
- `__glkonim_Vertex2i` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65b70, 20 bytes):
  **Established.** The immediate-mode glVertex2i, three word stores to the command port: the token 141 (0x8d) and the integers in `a0` and `a1`, unchanged.
- `__glkonim_Vertex2s` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65b90, 24 bytes):
  **Established.** The immediate-mode glVertex2s, two stores to the command port: the first short in the upper half with the token 0x8e in the low byte, then the second short alone in the upper half of the next word.
- `__glkonim_Vertex3d` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65bd0, 24 bytes):
  **Established.** The immediate-mode glVertex3d, four stores to the command port: the token 143 (0x8f) and the doubles in `f12`, `f13` and `f14` as 64-bit stores.
- `__glkonim_Vertex3f` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65bf0, 24 bytes):
  **Established.** The immediate-mode glVertex3f, four stores to the command port: the token 144 (0x90) and the floats in `f12`, `f13` and `f14`.
- `__glkonim_Vertex3i` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65c10, 24 bytes):
  **Established.** The immediate-mode glVertex3i, four word stores to the command port: the token 145 (0x91) and the integers from `a0`, `a1` and `a2` unchanged.
- `__glkonim_Vertex3s` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65c30, 32 bytes):
  **Established.** The immediate-mode glVertex3s, two stores to the command port: the first short in the upper half with the token 0x92, then the second short in the upper half over the third masked to 16 bits.
- `__glkonim_Vertex4d` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65c80, 28 bytes):
  **Established.** The immediate-mode glVertex4d, five stores to the command port: the token 147 (0x93) and the doubles in `f12` to `f15` as 64-bit stores.
- `__glkonim_Vertex4f` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65ca0, 28 bytes):
  **Established.** The immediate-mode glVertex4f, five stores to the command port: the token 148 (0x94) and the floats in `f12` to `f15`.
- `__glkonim_Vertex4i` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65cc0, 28 bytes):
  **Established.** The immediate-mode glVertex4i, five word stores to the command port: the token 149 (0x95) and the integers from `a0` to `a3` unchanged.
- `__glkonim_Vertex4s` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65ce0, 40 bytes):
  **Established.** The immediate-mode glVertex4s, three stores to the command port: the first short in the upper half with the token 0x96, then the second short over the masked third, then the fourth short alone in the upper half.

## Further immediate-mode senders

- `__glkonim_RasterPos2d` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65720, 20 bytes):
  **Established.** The immediate-mode glRasterPos2d, three stores to the command port: the token 168 (0xa8) as a word and the doubles in `f12` and `f13`, each as one 64-bit store.
- `__glkonim_RasterPos2f` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65740, 20 bytes):
  **Established.** The immediate-mode glRasterPos2f, three stores to the command port: the token 169 (0xa9) and the floats in `f12` and `f13` as 32-bit stores.
- `__glkonim_RasterPos2i` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65760, 20 bytes):
  **Established.** The immediate-mode glRasterPos2i, three word stores to the command port: the token 170 (0xaa) and the integers in `a0` and `a1`, unchanged.
- `__glkonim_RasterPos2s` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65780, 20 bytes):
  **Established.** The immediate-mode glRasterPos2s, three word stores to the command port: the token 171 (0xab) and then each short argument from `a0` and `a1` as a whole word, with no packing into halves, unlike the short forms of the colour and vertex senders.
- `__glkonim_RasterPos3d` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da657a0, 24 bytes):
  **Established.** The immediate-mode glRasterPos3d, four stores to the command port: the token 172 (0xac) and the doubles in `f12`, `f13` and `f14` as 64-bit stores.
- `__glkonim_RasterPos3f` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da657c0, 24 bytes):
  **Established.** The immediate-mode glRasterPos3f, four stores to the command port: the token 173 (0xad) and the floats in `f12`, `f13` and `f14`.
- `__glkonim_RasterPos3i` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da657e0, 24 bytes):
  **Established.** The immediate-mode glRasterPos3i, four word stores to the command port: the token 174 (0xae) and the integers from `a0`, `a1` and `a2` unchanged.
- `__glkonim_RasterPos3s` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65800, 24 bytes):
  **Established.** The immediate-mode glRasterPos3s, four word stores to the command port: the token 175 (0xaf) and the three short arguments from `a0`, `a1` and `a2`, each sent as a whole word.
- `__glkonim_RasterPos4d` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65820, 28 bytes):
  **Established.** The immediate-mode glRasterPos4d, five stores to the command port: the token 176 (0xb0) and the doubles in `f12` to `f15` as 64-bit stores.
- `__glkonim_RasterPos4f` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65840, 28 bytes):
  **Established.** The immediate-mode glRasterPos4f, five stores to the command port: the token 177 (0xb1) and the floats in `f12` to `f15`.
- `__glkonim_RasterPos4i` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65860, 28 bytes):
  **Established.** The immediate-mode glRasterPos4i, five word stores to the command port: the token 178 (0xb2) and the integers from `a0` to `a3` unchanged.
- `__glkonim_RasterPos4s` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0x0da65880, 28 bytes):
  **Established.** The immediate-mode glRasterPos4s, five word stores to the command port: the token 179 (0xb3) and the four short arguments from `a0` to `a3`, each sent as a whole word.

## Vector senders and their entry stubs

The vector forms of the colour, index, normal, texture-coordinate, vertex and raster-position senders are not self-contained. Each has an exported entry stub of the same GL name (for `__glkonim_Color3dv`, the stub `glColor3dv` at 0xda77d18, 20 bytes) that loads the vector from its pointer argument into registers and jumps through a word of the dispatch page at process address 0x1078 to 0x1784, so the sender body shows stores of registers it never loaded. What fills each slot is not read here, so pairing a stub with the `__glkonim_` sender of the same name and token is inferred; every instruction of both is read. Stores to process address 0x4000 are stores to the command port.

- `__glkonim_Color3dv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda794a8, 24 bytes):
  **Established.** Sends the three doubles of a glColor3dv vector as token 0x62 followed by three 8-byte stores, each of which writes one double (two command words) to the port. The caller's stub `glColor3dv` has already loaded the doubles at offsets 0, 8 and 16 into `$f1`, `$f0` and `$f3`, and the stub reaches this function through the word at process address 0x15e4. No conversion is done and the fourth register `$f2` is not used.
- `__glkonim_Color3fv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda794c0, 20 bytes):
  **Established.** Sends the three floats of a glColor3fv vector with token 0x63: one word for the token, one 8-byte store of the first two floats and one word for the third. The stub `glColor3fv` (dispatch word at process address 0x15ec) loads the first eight bytes with an unaligned load pair into `$v0` and the third float, zero-extended, into `$v1`; the sender only stores them, so the floats reach the port unconverted.
- `__glkonim_Color3iv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda794d4, 20 bytes):
  **Established.** Sends a glColor3iv vector, three signed integers, under token 0x64. The stub `glColor3iv` (dispatch word 0x15f4) loads the first two integers as one doubleword and the third as a zero-extended word; this function stores the token, the doubleword and the last word in that order. The integers are not scaled to the colour range here, so any scaling is left to the pipe.
- `__glkonim_Color3uiv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda794e8, 20 bytes):
  **Established.** Sends a glColor3uiv vector (three unsigned integers) under token 0x67, as a token word, a doubleword holding the first two values and a word holding the third. Its stub `glColor3uiv` (dispatch word 0x160c) does the same two loads as the signed-integer stub; the two forms differ only in the token, so the pipe is what tells signed from unsigned.
- `__glkonim_Color4dv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda794fc, 32 bytes):
  **Established.** Sends the four doubles of a glColor4dv vector under token 0x6a. The stub `glColor4dv` (dispatch word 0x1624) loads the doubles at offsets 0, 8 and 16 into `$f1`, `$f0` and `$f3`, and this function itself loads the fourth, at offset 24, into `$f2`. It stores `$f1`, `$f0`, `$f3` and then `$f2`, four 8-byte stores that make eight command words after the token.
- `__glkonim_Color4fv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda7951c, 24 bytes):
  **Established.** Sends a glColor4fv vector (four floats) under token 0x6b as the token word and two doubleword stores. The stub `glColor4fv` (dispatch word 0x162c) loads the first eight bytes into `$v0` with an unaligned pair and starts the load of the second eight bytes into `$v1` with the left half; this function finishes that load with the right half of the pair at offset 15, so it, not the stub, completes the vector.
- `__glkonim_Color4iv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda79534, 24 bytes):
  **Established.** Sends a glColor4iv vector, four signed integers, under token 0x6c. Like the float form it takes the first eight bytes from the stub `glColor4iv` (dispatch word 0x1634) in `$v0`, completes the second doubleword with the right half of an unaligned load at offset 15, and writes the token and the two doublewords to the port. The values are passed as stored.
- `__glkonim_Color4uiv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda7954c, 24 bytes):
  **Established.** Sends a glColor4uiv vector under token 0x6f: the token word followed by two doublewords, the first filled by the stub `glColor4uiv` (dispatch word 0x164c) and the second completed here by an unaligned load at offset 15. The code is the same as the signed-integer sender; only the token word differs.
- `__glkonim_EdgeFlagv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda79564, 16 bytes):
  **Established.** Sends the glEdgeFlagv flag with token 0xa7 and one word. The stub `glEdgeFlagv` (dispatch word 0x1078) loads the single byte the argument points at, zero-extended, into `$v0`, and this function writes the token and then that word, so the pipe receives 0 or the byte's own value (not normalised to 1).
- `__glkonim_Indexdv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda79574, 16 bytes):
  **Established.** Sends one double for glIndexdv with token 0x72: the token word and one 8-byte store. The stub `glIndexdv` (dispatch word 0x165c) loads the double from the vector into `$f1`. Nothing narrows it to a float, so the pipe takes the index as a double.
- `__glkonim_Indexfv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda79584, 16 bytes):
  **Established.** Sends the single float of a glIndexfv vector under token 0x73. The stub `glIndexfv` (dispatch word 0x1664) loads the word, zero-extended, into `$v0`, and this function stores the token and then that word: two single-word stores and nothing else.
- `__glkonim_Indexiv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda79594, 16 bytes):
  **Established.** Sends the single integer of a glIndexiv vector under token 0x74, a token word and one data word. The stub `glIndexiv` (dispatch word 0x166c) zero-extends the integer into `$v0` before the jump. The index is not converted to a float on the host side.
- `__glkonim_Normal3dv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda795a4, 24 bytes):
  **Established.** Sends the three doubles of a glNormal3dv vector under token 0x77, with the same register use as the colour doubles: the stub `glNormal3dv` (dispatch word 0x168c) fills `$f1`, `$f0` and `$f3` from offsets 0, 8 and 16, and this function stores the token and then those three registers as three 8-byte stores. The normal is not normalised on the host.
- `__glkonim_Normal3fv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda795bc, 20 bytes):
  **Established.** Sends the three floats of a glNormal3fv vector under token 0x78: the token word, a doubleword that the stub `glNormal3fv` (dispatch word 0x1694) loaded from the first eight bytes, and a word holding the third float. There is no scaling or normalisation before the stores.
- `__glkonim_Normal3iv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda795d0, 20 bytes):
  **Established.** Sends a glNormal3iv vector under token 0x79. The stub `glNormal3iv` (dispatch word 0x169c) loads two integers as a doubleword and the third as a word, and this function writes the token, the doubleword and the word. Mapping the integers onto the unit range is not done on the host.
- `__glkonim_RasterPos2dv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda795e4, 20 bytes):
  **Established.** Sends the two doubles of a glRasterPos2dv vector under token 0xa8. The stub `glRasterPos2dv` (dispatch word 0x172c) loads them into `$f1` and `$f0`, and this function stores the token, `$f1` and `$f0`: one word and two 8-byte stores.
- `__glkonim_RasterPos2fv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda795f8, 16 bytes):
  **Established.** Sends the two floats of a glRasterPos2fv vector under token 0xa9. The stub `glRasterPos2fv` (dispatch word 0x1734) loads both floats as one doubleword into `$v0`, and this function stores the token word and then that doubleword.
- `__glkonim_RasterPos2iv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda79608, 16 bytes):
  **Established.** Sends the two integers of a glRasterPos2iv vector under token 0xaa, a token word and one doubleword that the stub `glRasterPos2iv` (dispatch word 0x173c) loaded; nothing is converted on the host.
- `__glkonim_RasterPos2sv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda79618, 24 bytes):
  **Established.** Sends the two shorts of a glRasterPos2sv vector under token 0xab. The stub `glRasterPos2sv` (dispatch word 0x1744) loads each short zero-extended, into `$v0` and `$v1`; this function joins them into one doubleword with the first short as the upper word and the second as the lower, then stores the token and the doubleword. Each word therefore holds a 16-bit value in its low half and a negative short arrives without sign extension.
- `__glkonim_RasterPos3dv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda79630, 24 bytes):
  **Established.** Sends the three doubles of a glRasterPos3dv vector under token 0xac, the stub `glRasterPos3dv` (dispatch word 0x174c) having placed them in `$f1`, `$f0` and `$f3`. This function stores the token and then the three doubles in that register order, six data words in all.
- `__glkonim_RasterPos3fv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda79648, 20 bytes):
  **Established.** Sends a glRasterPos3fv vector under token 0xad as the token, a doubleword of the first two floats and a word for the third. The stub `glRasterPos3fv` (dispatch word 0x1754) supplies them in `$v0` and `$v1`.
- `__glkonim_RasterPos3iv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda7965c, 20 bytes):
  **Established.** Sends a glRasterPos3iv vector under token 0xae in three stores: the token word, a doubleword with the first two integers and a word for the third. The stub `glRasterPos3iv` (dispatch word 0x175c) prepares the two data registers, and the integers go to the pipe unchanged.
- `__glkonim_RasterPos3sv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda79670, 28 bytes):
  **Established.** Sends the three shorts of a glRasterPos3sv vector under token 0xaf. The stub `glRasterPos3sv` (dispatch word 0x1764) loads the shorts zero-extended into `$v0`, `$v1` and `$t4`; this function packs the first two into a doubleword (first in the upper word) and stores it, then stores the third as a single word, after the token.
- `__glkonim_RasterPos4dv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda7968c, 32 bytes):
  **Established.** Sends the four doubles of a glRasterPos4dv vector under token 0xb0. The stub `glRasterPos4dv` (dispatch word 0x176c) loads offsets 0, 8 and 16 into `$f1`, `$f0` and `$f3`; this function loads offset 24 into `$f2` itself, then stores `$f1`, `$f0`, `$f3` and `$f2` after the token.
- `__glkonim_RasterPos4fv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda796ac, 24 bytes):
  **Established.** Sends the four floats of a glRasterPos4fv vector under token 0xb1: the token word and two doublewords, where the second doubleword is completed here by the right half of an unaligned load at offset 15 after the stub `glRasterPos4fv` (dispatch word 0x1774) did the left half and the first doubleword.
- `__glkonim_RasterPos4iv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda796c4, 24 bytes):
  **Established.** Sends a glRasterPos4iv vector (four integers) under token 0xb2. It stores the token and two doublewords: the first loaded by the stub `glRasterPos4iv` (dispatch word 0x177c) and the second finished here by an unaligned load at offset 15. No conversion applies.
- `__glkonim_RasterPos4sv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda796dc, 40 bytes):
  **Established.** Sends the four shorts of a glRasterPos4sv vector under token 0xb3. The stub `glRasterPos4sv` (dispatch word 0x1784) loads the first three shorts zero-extended into `$v0`, `$v1` and `$t4`, and this function loads the fourth into `$t5`. It packs the first pair and the second pair into two doublewords, each with its earlier short as the upper word, and stores the token and both doublewords.
- `__glkonim_TexCoord1dv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda79704, 16 bytes):
  **Established.** Sends the one double of a glTexCoord1dv vector under token 0x7b. The stub `glTexCoord1dv` (dispatch word 0x16ac) loads it into `$f1`, and this function stores the token and then `$f1` with one 8-byte store.
- `__glkonim_TexCoord1fv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda79714, 16 bytes):
  **Established.** Sends the one float of a glTexCoord1fv vector under token 0x7c. The stub `glTexCoord1fv` (dispatch word 0x16b4) loads the word into `$v0`, zero-extended, and this function writes the token word and that word.
- `__glkonim_TexCoord1iv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda79724, 16 bytes):
  **Established.** Sends the one integer of a glTexCoord1iv vector under token 0x7d: a token word, then a data word that the stub `glTexCoord1iv` (dispatch word 0x16bc) loaded zero-extended. The integer is not converted.
- `__glkonim_TexCoord2dv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda79734, 20 bytes):
  **Established.** Sends the two doubles of a glTexCoord2dv vector under token 0x7f, stored from `$f1` and `$f0` after the token. The stub `glTexCoord2dv` (dispatch word 0x16cc) loaded the doubles from offsets 0 and 8.
- `__glkonim_TexCoord2fv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda79748, 16 bytes):
  **Established.** Sends the two floats of a glTexCoord2fv vector under token 0x80, using one doubleword that the stub `glTexCoord2fv` (dispatch word 0x16d4) loaded from the vector with an unaligned pair; this function stores the token and then that doubleword.
- `__glkonim_TexCoord2iv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda79758, 16 bytes):
  **Established.** Sends the two integers of a glTexCoord2iv vector under token 0x81. The stub `glTexCoord2iv` (dispatch word 0x16dc) loads them as a single unaligned doubleword, and the function writes the token word and that doubleword with no scaling.
- `__glkonim_TexCoord3dv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda79768, 24 bytes):
  **Established.** Sends the three doubles of a glTexCoord3dv vector under token 0x83. The stub `glTexCoord3dv` (dispatch word 0x16ec) loads offsets 0, 8 and 16 into `$f1`, `$f0` and `$f3`, and this function stores the token followed by the three registers in that order.
- `__glkonim_TexCoord3fv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda79780, 20 bytes):
  **Established.** Sends a glTexCoord3fv vector under token 0x84: a doubleword of the first two floats and a word for the third follow the token word. The stub `glTexCoord3fv` (dispatch word 0x16f4) loaded those two registers.
- `__glkonim_TexCoord3iv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda79794, 20 bytes):
  **Established.** Sends a glTexCoord3iv vector under token 0x85 as the token word, one doubleword and one word, taken from the two registers the stub `glTexCoord3iv` (dispatch word 0x16fc) loaded. The integers pass through unscaled.
- `__glkonim_TexCoord4dv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda797a8, 32 bytes):
  **Established.** Sends the four doubles of a glTexCoord4dv vector under token 0x87. The stub `glTexCoord4dv` (dispatch word 0x170c) loads offsets 0, 8 and 16; the function loads offset 24 into `$f2` and stores `$f1`, `$f0`, `$f3` and `$f2` after the token.
- `__glkonim_TexCoord4fv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda797c8, 24 bytes):
  **Established.** Sends the four floats of a glTexCoord4fv vector under token 0x88 in two doublewords. The stub `glTexCoord4fv` (dispatch word 0x1714) loads the first doubleword and the left half of the second; the right half comes from an unaligned load at offset 15 in this function.
- `__glkonim_TexCoord4iv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda797e0, 24 bytes):
  **Established.** Sends a glTexCoord4iv vector under token 0x89: the token word and two doublewords, the second of which this function completes with an unaligned load at offset 15 after the stub `glTexCoord4iv` (dispatch word 0x171c) loaded the rest.
- `__glkonim_Vertex2dv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda797f8, 20 bytes):
  **Established.** Sends the two doubles of a glVertex2dv vector under token 0x8b. The stub `glVertex2dv` (dispatch word 0x157c) loads them into `$f1` and `$f0`, and the function stores the token word and then `$f1` and `$f0`.
- `__glkonim_Vertex2fv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda7980c, 16 bytes):
  **Established.** Sends the two floats of a glVertex2fv vector under token 0x8c as the token word and one doubleword, which the stub `glVertex2fv` (dispatch word 0x1584) loaded from the vector. It is the smallest vertex sender.
- `__glkonim_Vertex2iv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda7981c, 16 bytes):
  **Established.** Sends the two integers of a glVertex2iv vector under token 0x8d: the token word, then the doubleword loaded by the stub `glVertex2iv` (dispatch word 0x158c). The integers go to the pipe as stored.
- `__glkonim_Vertex3dv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda7982c, 24 bytes):
  **Established.** Sends the three doubles of a glVertex3dv vector under token 0x8f. The stub `glVertex3dv` (dispatch word 0x159c) fills `$f1`, `$f0` and `$f3`, and this function stores them after the token in that order, as three 8-byte stores.
- `__glkonim_Vertex3fv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda79844, 20 bytes):
  **Established.** Sends a glVertex3fv vector under token 0x90: token word, a doubleword of the first two floats and a word for the third, from the registers the stub `glVertex3fv` (dispatch word 0x15a4) prepared.
- `__glkonim_Vertex3iv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda79858, 20 bytes):
  **Established.** Sends a glVertex3iv vector under token 0x91 in three stores, the third being a single word for the last integer. The stub `glVertex3iv` (dispatch word 0x15ac) loaded the first two integers as a doubleword and the third zero-extended.
- `__glkonim_Vertex4dv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda7986c, 32 bytes):
  **Established.** Sends the four doubles of a glVertex4dv vector under token 0x93, loading the fourth (offset 24) into `$f2` itself while the stub `glVertex4dv` (dispatch word 0x15bc) supplied offsets 0, 8 and 16 in `$f1`, `$f0` and `$f3`. The store order after the token is `$f1`, `$f0`, `$f3`, `$f2`.
- `__glkonim_Vertex4fv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda7988c, 24 bytes):
  **Established.** Sends a glVertex4fv vector under token 0x94 as the token word and two doublewords. The second doubleword is completed in this function by an unaligned load at offset 15, which pairs with the left-half load in the stub `glVertex4fv` (dispatch word 0x15c4).
- `__glkonim_Vertex4iv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda798a4, 24 bytes):
  **Established.** Sends a glVertex4iv vector under token 0x95: token word and two doublewords of four integers. The function's own unaligned load at offset 15 finishes the second doubleword that the stub `glVertex4iv` (dispatch word 0x15cc) began.

## State setters and small senders

The state setters, matrix operations and the other short `__glkonim_` senders are mostly straight-line stores to the command port at process address 0x4000. A range check that fails never reaches `__glSetError` in these: it sends token 0xe4 with the error code as the next word, so the pipe, not the host, records the error. `ctx` is the pointer at process address 0x1010 and `__glkona_wait_rdata` is the reply wait of [libglcore-get-functions.md](libglcore-get-functions.md).

- `__glkonim_ListParameterfSGIX` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94b3b0, 56 bytes):
  **Established.** Wraps a single float in a one-element array and forwards to `__glkonim_ListParameterfvSGIX`. It stores the float argument (register `$f14`) at stack offset 0x20, passes that address as the third argument with the first two arguments unchanged, and returns when the call does.
- `__glkonim_ListParameteriSGIX` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94b540, 56 bytes):
  **Established.** The integer twin of the float wrapper: it keeps the third argument in a stack word at offset 0x24 and calls `__glkonim_ListParameterivSGIX` with the address of that word as the array argument, the first two arguments unchanged.
- `__glkonim_Begin` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94dbb0, 52 bytes):
  **Established.** The immediate-mode glBegin. A mode below 10 stores a token word of 0x57 plus the mode (so 0x57 for GL_POINTS up to 0x60 for GL_POLYGON) and a zero pad word to the command port, and sets the begin flag at process address 0x1018 to 1 in the delay slot of the return. A larger mode sends token 0xe4 with the code 0x500 (invalid enumeration) and leaves the flag alone.
- `__glkonim_End` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94dbf0, 20 bytes):
  **Established.** The immediate-mode glEnd: it clears the begin flag at process address 0x1018, then sends token 0x71 and a zero pad word to the command port. It checks nothing, so an End without a Begin is passed to the pipe unchanged.
- `__glkonim_Finish` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94dc10, 92 bytes):
  **Established.** The immediate-mode glFinish. If the begin flag at process address 0x1018 is 1 it calls `__glSetError` with 0x502 (invalid operation). Otherwise it sends token 0xc6 and the word 1 to the command port and calls `__glkona_wait_rdata`, so it returns only after the pipe has written its reply word.
- `__glkonim_Flush` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94dc70, 24 bytes):
  **Established.** The immediate-mode glFlush. It sends token 0xc7 and a zero word to the command port, then does one load from process address 0x10100 and discards it. That load is the function's only effect beyond the two stores.
- `__glkonim_AlphaFunc` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94dc90, 80 bytes):
  **Established.** The immediate-mode glAlphaFunc. The function name goes through unchecked, and the reference value (a float in `$f13`) is clamped to the range 0 to 1.0 before it is sent: the token is 0xca, followed by the function name and the clamped float. A negative reference is sent as 0.0 and one above 1.0 as 1.0.
- `__glkonim_SampleMaskSGIS` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94dd90, 80 bytes):
  **Established.** The immediate-mode glSampleMaskSGIS. The mask value (a float in `$f12`) is clamped to 0 through 1.0 and sent under token 0x118 together with the invert flag from the second argument; a negative value becomes 0.0 and a value over 1.0 becomes 1.0.
- `__glkonim_Clear` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94f880, 16 bytes):
  **Established.** The immediate-mode glClear: a token word of 0x1a followed by the buffer mask unchanged. The function checks nothing, so an invalid mask is the pipe's concern.
- `__glkonim_LineWidth` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94f950, 76 bytes):
  **Established.** The immediate-mode glLineWidth. A width of zero or less sends token 0xe4 with the code 0x501 (invalid value). Otherwise it sends token 0xbd and the width, limited to at most 32.0 (the constant in the library's pool), so a wider request is sent as 32.0.
- `__glkonim_PointSize` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94f9a0, 76 bytes):
  **Established.** The immediate-mode glPointSize. A size of zero or less sends token 0xe4 with the code 0x501 (invalid value); otherwise it sends token 0xbe and the size, capped at 22.0 (a constant in the pool), so the largest point the pipe is asked for is 22 pixels wide.
- `__glkonim_PixelTransferi` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd957190, 56 bytes):
  **Established.** The integer form of glPixelTransfer: it converts the integer value to a float and calls `__glkonim_PixelTransferf` with the parameter name unchanged and the float in `$f13`.
- `__glkonim_ConvolutionParameteriEXT` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd958270, 52 bytes):
  **Established.** Not a separate routine: it calls `__glkonim_PixelTransformParameteriSGI` through a library entry and returns. In this build the convolution-parameter entry shares its body with the pixel-transform parameter setter of the same argument shape.
- `__glkonim_ConvolutionParameterivEXT` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd9582b0, 52 bytes):
  **Established.** Calls `__glkonim_PixelTransformParameterivSGI` with its own arguments untouched and returns, sharing that function's checks and sends for the array form of the convolution parameter.
- `__glkonim_ConvolutionParameterfEXT` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd9582f0, 52 bytes):
  **Established.** Forwards to `__glkonim_PixelTransformParameterfSGI` and returns, so the single-float convolution parameter takes the pixel-transform path.
- `__glkonim_ConvolutionParameterfvEXT` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd958330, 52 bytes):
  **Established.** Forwards to `__glkonim_PixelTransformParameterfvSGI`; the float-array convolution parameter is handled there.
- `__glkonim_GetConvolutionParameterivEXT` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd958370, 52 bytes):
  **Established.** Forwards to `__glkonim_GetPixelTransformParameterivSGI`, so reading an integer convolution parameter is the pixel-transform query.
- `__glkonim_GetConvolutionParameterfvEXT` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd9583b0, 52 bytes):
  **Established.** Forwards to `__glkonim_GetPixelTransformParameterfvSGI`, so the float convolution-parameter query is answered by the pixel-transform one.
- `__glkonim_ClearDepth` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd95d830, 124 bytes):
  **Established.** The immediate-mode glClearDepth. When the begin flag at process address 0x1018 is 1 it calls `__glSetError` with 0x502. Otherwise it clamps the double argument to the range 0 up to a float held in `ctx` at +3544, widened to a double, and sends token 0x1f and the clamped double in one 8-byte store.
- `__glkonim_SpriteParameterivSGIX` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd963e20, 136 bytes):
  **Established.** The integer form of glSpriteParameterSGIX. It converts the integer or integers to floats on the stack, one when the name is 0x8149 (GL_SPRITE_MODE_SGIX) and three for every other name, and calls `__glkonim_SpriteParameterfvSGIX` with that array.
- `__glkonim_TexImage3DEXT` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd971400, 104 bytes):
  **Established.** The three-dimensional glTexImage3DEXT. It accepts only the targets 0x806f and 0x8070 (the 3D texture and its proxy) and otherwise calls `__glSetError` with 0x500. It then copies two arguments that arrive on the caller's stack (at 0x64 and 0x6c) into the outgoing stack words 4 and 0xc and calls the shared `__glkonim_TexImage`.
- `__glkonim_TexImage1D` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd971500, 124 bytes):
  **Established.** The one-dimensional glTexImage1D. It accepts the targets 0xde0 and 0x8063 (the 1D texture and its proxy), otherwise `__glSetError` gets 0x500. It calls `__glkonim_TexImage` with the constant 1 loaded into two argument registers that the one-dimensional signature does not supply, and the trailing arguments moved into new places on the stack.
- `__glkonim_CopyTexImage1DEXT` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd971580, 84 bytes):
  **Established.** glCopyTexImage1DEXT. Only target 0xde0 is accepted (anything else gives `__glSetError` 0x500); the call goes to `__glkonim_CopyTexImage` with the constant 1 loaded into one argument register that the one-dimensional signature does not supply.
- `__glkonim_CopyTexImage2DEXT` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd9715e0, 92 bytes):
  **Established.** glCopyTexImage2DEXT. It accepts targets 0xde1 and 0x8095 (the 2D texture and the detail-texture target of the SGIS extension), raises 0x500 for anything else, and calls `__glkonim_CopyTexImage` with the arguments unchanged.
- `__glkonim_TexSubImage3DEXT` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd9725a0, 100 bytes):
  **Established.** glTexSubImage3DEXT. The only target accepted is 0x806f, otherwise 0x500 goes to `__glSetError`. The function moves three stack arguments (offsets 0x74, 0x7c and 0x84) down to words 4, 0xc and 0x14 and calls `__glkonim_TexSubImage`.
- `__glkonim_TexSubImage2DEXT` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd972610, 132 bytes):
  **Established.** glTexSubImage2DEXT. Targets 0xde1 and 0x8095 pass, others raise 0x500. It calls `__glkonim_TexSubImage` with a zero in one argument register, the constant 1 in another, and the remaining arguments rearranged on the stack.
- `__glkonim_TexSubImage1DEXT` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd9726a0, 124 bytes):
  **Established.** glTexSubImage1DEXT. Target 0xde0 only (0x500 otherwise). It loads zero into two argument registers and the constant 1 into two others, and calls `__glkonim_TexSubImage`.
- `__glkonim_CopyTexSubImage1DEXT` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd972720, 108 bytes):
  **Established.** glCopyTexSubImage1DEXT. Target 0xde0 only, else 0x500; it calls `__glkonim_CopyTexSubImage` with zero in two argument registers and the constant 1 in a stack word.
- `__glkonim_CopyTexSubImage2DEXT` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd972790, 120 bytes):
  **Established.** glCopyTexSubImage2DEXT. It accepts targets 0xde1 and 0x8095, raises 0x500 otherwise, loads a zero into one argument register and calls `__glkonim_CopyTexSubImage`.
- `__glkonim_GetTexLevelParameterfv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd974510, 76 bytes):
  **Established.** glGetTexLevelParameterfv. It calls `__glkonim_GetTexLevelParameteriv` with its own arguments, keeps the output pointer in a saved register, and afterwards converts the integer that call stored into a float in the same place.
- `__glkonim_EvalCoord1d` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd97f640, 80 bytes):
  **Established.** glEvalCoord1d. It reads a word at ctx +0x8c8c and returns without sending anything when that word is zero. Otherwise it narrows the double to a float and calls the function whose pointer is at ctx +0x909c.
- `__glkonim_EvalCoord1dv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd97f690, 80 bytes):
  **Established.** glEvalCoord1dv. The same guard as the scalar form (the word at ctx +0x8c8c must be non-zero): it loads the double from the vector, narrows it to a float and calls the function at ctx +0x909c.
- `__glkonim_EvalCoord1f` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd97f6e0, 76 bytes):
  **Established.** glEvalCoord1f. It tests the word at ctx +0x8c8c and, when it is non-zero, calls the pointer at ctx +0x909c with the float unchanged; when it is zero it returns at once.
- `__glkonim_EvalCoord1fv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd97f730, 76 bytes):
  **Established.** glEvalCoord1fv: if the word at ctx +0x8c8c is non-zero it loads the float from the vector as the call argument and calls the pointer at ctx +0x909c, otherwise it returns doing nothing.
- `__glkonim_EvalCoord2d` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd97f780, 88 bytes):
  **Established.** glEvalCoord2d. A zero word at ctx +0x8e94 ends the call; otherwise both doubles are narrowed to floats and the function at ctx +0x90a0 is called with them.
- `__glkonim_EvalCoord2dv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd97f7e0, 88 bytes):
  **Established.** glEvalCoord2dv. With the word at ctx +0x8e94 non-zero it loads the two doubles from the vector, narrows them to floats and calls the pointer at ctx +0x90a0; with it zero nothing happens.
- `__glkonim_EvalCoord2f` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd97f840, 76 bytes):
  **Established.** glEvalCoord2f. The word at ctx +0x8e94 gates it; when set, the two floats go unchanged to the function at ctx +0x90a0.
- `__glkonim_EvalCoord2fv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd97f890, 80 bytes):
  **Established.** glEvalCoord2fv. Gated by the word at ctx +0x8e94, it loads two floats from the vector and calls the pointer at ctx +0x90a0.
- `__glkonim_EvalPoint1` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd97fd40, 104 bytes):
  **Established.** glEvalPoint1. It returns when the word at ctx +0x8c8c is zero. Otherwise it computes the parameter as the grid's first value (ctx +0x78c) plus the index times the step (ctx +0x794), except that an index equal to the segment count at ctx +0x798 uses the stored end value at ctx +0x790 exactly, and calls the function at ctx +0x909c with the result.
- `__glkonim_EvalPoint2` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd97fe50, 140 bytes):
  **Established.** glEvalPoint2. The word at ctx +0x8e94 must be non-zero. Each of the two parameters is the grid start plus index times step, with the end value used exactly when the index equals the segment count: the first from ctx +0x79c, +0x7a0, +0x7a4 and the count at +0x7a8, the second from +0x7ac, +0x7b0, +0x7b4 and the count at +0x7b8. The pair goes to the function at ctx +0x90a0.
- `__glkonim_PixelMapfv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd982650, 56 bytes):
  **Established.** glPixelMapfv: it calls the shared pixel-map routine `do_pixelmap` with the element type 0x1406 (GL_FLOAT) in the fourth argument.
- `__glkonim_PixelMapuiv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd982690, 56 bytes):
  **Established.** glPixelMapuiv: it calls `do_pixelmap` with the element type 0x1405 (GL_UNSIGNED_INT) as the fourth argument and the rest unchanged.
- `__glkonim_PixelMapusv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd9826d0, 56 bytes):
  **Established.** glPixelMapusv: it calls `do_pixelmap` with the element type 0x1403 (GL_UNSIGNED_SHORT).
- `__glkonim_Materiali` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd9844e0, 116 bytes):
  **Established.** glMateriali. Only the name 0x1601 (shininess) is accepted, otherwise 0x500 goes to `__glSetError`. The integer is converted to a float and sent under token 0x97 after the face and the name, followed by three zero pad words.
- `__glkonim_DeformSGIX` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd988990, 92 bytes):
  **Established.** glDeformSGIX. A mask with a bit set above bit 1 sends token 0xe4 with the code 0x501; otherwise it sends token 0x1bf and the mask.
- `__glkonim_LoadIdentityDeformationMapSGIX` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd988aa0, 20 bytes):
  **Established.** glLoadIdentityDeformationMapSGIX: it sends token 0x1c3 and the mask reduced to its low two bits. It never reports an error for the discarded bits.
- `__glkonim_SubdivPatchParameteriSGIX` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd988fb0, 56 bytes):
  **Established.** The integer form: it converts the integer value to a float and calls `__glkonim_SubdivPatchParameterfSGIX` with the name unchanged.
- `__glkonim_PixelTransformSGI` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd98cdb0, 104 bytes):
  **Established.** glPixelTransformSGI. The target must be 0x81c5 or 0x81c6, else `__glSetError` gets 0x500. It sends token 0x135 and the target, and also records the target in `ctx` at +1380 (0x564).
- `__glkonim_PixelTransformParameteriSGI` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd98d100, 56 bytes):
  **Established.** Converts the integer parameter to a float and calls `__glkonim_PixelTransformParameterfSGI`, with the target and name unchanged.
- `__glkonim_GetPixelTransformParameterfvSGI` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd98d510, 56 bytes):
  **Established.** Calls the library's own `GetPixelTransformParameterfvSGI` at 0xd98d280, reached through a rebased entry, and returns; it adds nothing to that function's arguments or results.
- `__glkonim_ClipPlane` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda65d50, 88 bytes):
  **Established.** glClipPlane. The plane name must be 0x3000 to 0x3005, else token 0xe4 with the code 0x500. Otherwise it sends token 0xb4, the plane name and the four doubles of the equation in the order they sit in the array.
- `__glkonim_ColorMaterial` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda65db0, 20 bytes):
  **Established.** glColorMaterial: token 0xb5, then the face and the mode as two words, with no check on either value.
- `__glkonim_CullFace` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda65dd0, 68 bytes):
  **Established.** glCullFace. Modes 0x404 (front), 0x405 (back) and 0x408 (front and back) go out under token 0xb6; any other mode sends token 0xe4 with the code 0x500.
- `__glkonim_Fogf` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda65e20, 72 bytes):
  **Established.** glFogf. The name must be 0xb61 to 0xb65 (index, density, start, end, mode), otherwise token 0xe4 and 0x500. A valid name sends token 0xb7, the name, the float and three zero words.
- `__glkonim_Fogfv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda65e70, 100 bytes):
  **Established.** glFogfv. Accepts 0xb61 to 0xb66 (the five scalar names and the colour) and 0x8199, otherwise token 0xe4 and 0x500. It sends token 0xb7, the name and four floats read from the array in order, whatever the name needs.
- `__glkonim_Fogi` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda65ee0, 72 bytes):
  **Established.** glFogi. Names 0xb61 to 0xb65 are accepted (0x500 through token 0xe4 otherwise); it sends token 0xb8, the name, the integer and three zero words, and no conversion to float happens here.
- `__glkonim_Fogiv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda65f30, 100 bytes):
  **Established.** glFogiv. The same names as the float array form (0xb61 to 0xb66 and 0x8199) pass, anything else sends token 0xe4 and 0x500. Token 0xb8 carries the name and four integers read from the array.
- `__glkonim_FrontFace` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda65fa0, 56 bytes):
  **Established.** glFrontFace. Only 0x900 and 0x901 are valid; they go out under token 0xba, and any other value sends token 0xe4 and the code 0x500.
- `__glkonim_Hint` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda65fe0, 60 bytes):
  **Established.** glHint. The mode must be 0x1100 to 0x1102 (don't care, fastest, nicest) or token 0xe4 and 0x500 are sent; the target is not checked. A valid pair goes out under token 0xbb.
- `__glkonim_Lightf` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66020, 76 bytes):
  **Established.** glLightf. The parameter must be 0x1205 to 0x1209 (spot exponent, spot cutoff and the three attenuation terms), otherwise token 0xe4 and 0x500. Valid calls send token 7, the light name, the parameter name, the float and three zero words.
- `__glkonim_Lightfv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66070, 52 bytes):
  **Established.** glLightfv sends token 7, the light name, the parameter name and four floats from the array, with no validation of the name; the pipe sees the array whatever its length.
- `__glkonim_Lighti` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda660b0, 76 bytes):
  **Established.** glLighti. The parameter range check is the same as for the float form (0x1205 to 0x1209, else token 0xe4 and 0x500). It sends token 8 with the light, the name, the integer and three zero words.
- `__glkonim_Lightiv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66100, 52 bytes):
  **Established.** glLightiv sends token 8, the light, the parameter name and four integers from the array without a range check on the name.
- `__glkonim_LightModelf` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66140, 72 bytes):
  **Established.** glLightModelf. Only 0xb51 and 0xb52 (local viewer and two-sided) are accepted, else token 0xe4 and 0x500. It sends token 9, the name, the float and three zero words.
- `__glkonim_LightModelfv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66190, 48 bytes):
  **Established.** glLightModelfv sends token 9, the name and four floats from the array. The name is not checked here.
- `__glkonim_LightModeli` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda661c0, 72 bytes):
  **Established.** glLightModeli. The name must be 0xb51 or 0xb52 (otherwise token 0xe4 and 0x500), and the integer goes out under token 0xa after the name, followed by three zero words.
- `__glkonim_LightModeliv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66210, 48 bytes):
  **Established.** glLightModeliv sends token 0xa, the name and four integers from the array, with no check.
- `__glkonim_LineStipple` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66240, 20 bytes):
  **Established.** glLineStipple: token 0xbc followed by the repeat factor and the 16-bit pattern as two words, unchecked.
- `__glkonim_Materialf` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66260, 64 bytes):
  **Established.** glMaterialf. Only name 0x1601 (shininess) is accepted; any other name sends token 0xe4 and 0x500. It sends token 0x97, the face, the name, the float and three zero words.
- `__glkonim_Materialfv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda662a0, 52 bytes):
  **Established.** glMaterialfv sends token 0x97, the face, the name and four floats in array order. Unlike the scalar forms it does not check the name.
- `__glkonim_PolygonMode` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda662e0, 108 bytes):
  **Established.** glPolygonMode. The face must be 0x404, 0x405 or 0x408 and the mode 0x1b00 to 0x1b02 (point, line, fill); a bad face sends token 0xe4 and 0x500, and a bad mode with a good face also ends in 0x500 through the same token. A valid pair goes out under token 0xbf.
- `__glkonim_Scissor` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66350, 80 bytes):
  **Established.** glScissor. A negative width or height sends token 0xe4 and 0x501 (invalid value). Otherwise token 0xc is followed by x, y, width and height as four words.
- `__glkonim_ShadeModel` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda663a0, 16 bytes):
  **Established.** glShadeModel: token 0xc0 and the mode word, unchecked.
- `__glkonim_TexEnvf` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda663b0, 88 bytes):
  **Established.** glTexEnvf. The target must be 0x2300 and the name 0x2200 (mode); anything else sends token 0xe4 and 0x500. A valid call sends token 0x11, the name, the float and three zero words.
- `__glkonim_TexEnvfv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66410, 132 bytes):
  **Established.** glTexEnvfv. The target must be 0x2300 and the name 0x2200, 0x2201 (colour) or 0x80be; otherwise token 0xe4 and 0x500. It sends token 0x11, the name and four floats from the array.
- `__glkonim_TexEnvi` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda664a0, 88 bytes):
  **Established.** glTexEnvi. Target 0x2300 and name 0x2200 are required (token 0xe4 and 0x500 otherwise). The integer goes out under token 0x12, one word after the name, then three zero words.
- `__glkonim_TexEnviv` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66500, 132 bytes):
  **Established.** glTexEnviv. Target 0x2300 is required and the name must be 0x2200, 0x2201 or 0x80be, else token 0xe4 and 0x500; it sends token 0x12, the name and four integers from the array.
- `__glkonim_TexGend` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66590, 52 bytes):
  **Established.** glTexGend. It sends token 0x14, the coordinate, the name and the double truncated to a 32-bit integer, followed by five zero words. The coordinate and name are not checked here, and a plane-equation value would lose its fraction.
- `__glkonim_TexGenf` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda665d0, 52 bytes):
  **Established.** glTexGenf: token 0x14, the coordinate, the name and the float truncated to an integer, then five zero words, with no checking.
- `__glkonim_TexGeni` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66610, 48 bytes):
  **Established.** glTexGeni: token 0x14, the coordinate, the name and the integer unchanged, then five zero words.
- `__glkonim_InitNames` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66640, 16 bytes):
  **Established.** glInitNames sends the name-stack reset as token 0x10c followed by one zero word, two stores in all, and reads none of its argument registers.
- `__glkonim_LoadName` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66650, 16 bytes):
  **Established.** glLoadName sends the selection-name replacement as token 0x10d followed by the name word, two stores with no range or begin-flag check.
- `__glkonim_PassThrough` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66660, 16 bytes):
  **Established.** glPassThrough: token 0xc1 and the marker value as a float word, unconverted.
- `__glkonim_PopName` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66670, 16 bytes):
  **Established.** glPopName sends the selection-name pop as token 0xc2 followed by one zero word, two stores and nothing read from the caller.
- `__glkonim_PushName` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66680, 16 bytes):
  **Established.** glPushName sends the selection-name push as token 0xc3 followed by the name word, two stores with no check of the value.
- `__glkonim_DrawBuffer` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66690, 16 bytes):
  **Established.** glDrawBuffer: token 0xc4 and the buffer name, unchecked.
- `__glkonim_ClearIndex` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda666a0, 16 bytes):
  **Established.** glClearIndex: token 0x1c and the index as a float word.
- `__glkonim_ClearStencil` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda666b0, 16 bytes):
  **Established.** glClearStencil sends the stencil clear value as token 0x1e followed by the integer, two stores, with no masking to the stencil depth on the host.
- `__glkonim_StencilMask` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda666c0, 16 bytes):
  **Established.** glStencilMask sends the write mask as token 0x20 followed by the mask word, two stores, and does not reduce it to the stencil bit count.
- `__glkonim_ColorMask` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda666d0, 28 bytes):
  **Established.** glColorMask: token 0x21 followed by the four flags (red, green, blue, alpha) as four words, unmodified.
- `__glkonim_DepthMask` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda666f0, 16 bytes):
  **Established.** glDepthMask: token 0x22 and the flag word.
- `__glkonim_IndexMask` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66700, 16 bytes):
  **Established.** glIndexMask sends the colour-index write mask as token 0x23 followed by the mask word, two stores, with no narrowing on the host.
- `__glkonim_Accum` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66710, 20 bytes):
  **Established.** glAccum: token 0xc5, the operation name and the value as a float word.
- `__glkonim_LogicOp` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66810, 56 bytes):
  **Established.** glLogicOp. An opcode below 0x1500 or at or above 0x1510 sends token 0xe4 and 0x500. Otherwise token 0x2e carries the opcode.
- `__glkonim_StencilFunc` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66850, 64 bytes):
  **Established.** glStencilFunc. The function must be 0x200 to 0x207, else token 0xe4 and 0x500. Valid calls send token 0xcc, the function, the reference and the mask.
- `__glkonim_DepthFunc` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66950, 56 bytes):
  **Established.** glDepthFunc. A function outside 0x200 to 0x207 sends token 0xe4 and 0x500; otherwise token 0xce and the function.
- `__glkonim_ReadBuffer` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66990, 16 bytes):
  **Established.** glReadBuffer: token 0x37 and the buffer name, unchecked.
- `__glkonim_DepthRange` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda669a0, 20 bytes):
  **Established.** glDepthRange: token 0xcf and the near and far doubles in two 8-byte stores.
- `__glkonim_Frustum` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda669c0, 36 bytes):
  **Established.** glFrustum: token 0xd1 followed by six doubles (left, right, bottom, top, near, far) in six 8-byte stores, with no check on their values.
- `__glkonim_LoadIdentity` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda669f0, 16 bytes):
  **Established.** glLoadIdentity sends the matrix reset as token 0xd2 followed by one zero pad word, two stores, and consults no matrix state on the host.
- `__glkonim_LoadMatrixf` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66a00, 140 bytes):
  **Established.** glLoadMatrixf: token 0xd3 and the sixteen floats of the matrix, copied as they lie in memory, element 0 first.
- `__glkonim_LoadMatrixd` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66a90, 140 bytes):
  **Established.** glLoadMatrixd: token 0xd4 and sixteen doubles, each in one 8-byte store, in memory order.
- `__glkonim_MatrixMode` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66b20, 68 bytes):
  **Established.** glMatrixMode. The mode must be 0x1700 to 0x1702 or 0x1800 (modelview, projection, texture and colour); otherwise token 0xe4 and 0x500. The mode goes out under token 0xd0.
- `__glkonim_MultMatrixf` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66b70, 140 bytes):
  **Established.** glMultMatrixf: token 0xd5 and sixteen floats in memory order.
- `__glkonim_MultMatrixd` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66c00, 140 bytes):
  **Established.** glMultMatrixd: token 0xd6 and sixteen doubles in memory order.
- `__glkonim_Ortho` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66c90, 36 bytes):
  **Established.** glOrtho: token 0xd7 and six doubles (left, right, bottom, top, near, far).
- `__glkonim_PopMatrix` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66cc0, 16 bytes):
  **Established.** glPopMatrix sends the stack pop as token 0xd8 followed by one zero pad word, two stores, and keeps no stack depth on the host.
- `__glkonim_PushMatrix` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66cd0, 16 bytes):
  **Established.** glPushMatrix sends the stack push as token 0xd9 followed by one zero pad word, two stores, with no overflow test on the host.
- `__glkonim_Rotated` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66ce0, 28 bytes):
  **Established.** glRotated: token 0xda followed by four doubles (angle, then the axis x, y and z).
- `__glkonim_Rotatef` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66d00, 28 bytes):
  **Established.** glRotatef: token 0xdb and four floats (angle, axis x, y, z).
- `__glkonim_Scaled` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66d20, 24 bytes):
  **Established.** glScaled sends the scale as token 0xdc followed by the x, y and z doubles, three 8-byte stores that make six data words.
- `__glkonim_Scalef` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66d40, 24 bytes):
  **Established.** glScalef sends the scale as token 0xdd followed by the x, y and z floats, three single-word stores.
- `__glkonim_Translated` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66d60, 24 bytes):
  **Established.** glTranslated sends the translation as token 0xde followed by the x, y and z doubles, three 8-byte stores that make six data words.
- `__glkonim_Translatef` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66d80, 24 bytes):
  **Established.** glTranslatef sends the translation as token 0xdf followed by the x, y and z floats, three single-word stores.
- `__glkonim_Viewport` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66da0, 80 bytes):
  **Established.** glViewport. A negative width or height sends token 0xe4 and 0x501. Otherwise token 0xe3 and x, y, width and height go out as four words.
- `__glkonim_BlendColorEXT` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66df0, 28 bytes):
  **Established.** glBlendColorEXT: token 0xe6 and the four floats red, green, blue, alpha, unclamped on the host.
- `__glkonim_BlendEquationEXT` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66e10, 16 bytes):
  **Established.** glBlendEquationEXT: token 0xe7 and the mode word.
- `__glkonim_PolygonOffsetEXT` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66e20, 20 bytes):
  **Established.** glPolygonOffsetEXT: token 0x11b and two floats, the factor and the bias.
- `__glkonim_ResetHistogramEXT` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66e40, 16 bytes):
  **Established.** glResetHistogramEXT: token 0x103 and the target word.
- `__glkonim_ResetMinmaxEXT` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66e50, 16 bytes):
  **Established.** glResetMinmaxEXT: token 0x108 and the target word.
- `__glkonim_PolygonOffset` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66e60, 20 bytes):
  **Established.** glPolygonOffset: token 0x168 and two floats, the factor and the units.
- `__glkonim_SamplePatternSGIS` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66ec0, 16 bytes):
  **Established.** glSamplePatternSGIS sends the multisample pattern choice as token 0x117 followed by the pattern word, two stores with no check of the value.
- `__glkonim_TagSampleBufferSGIX` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66ed0, 8 bytes):
  **Established.** glTagSampleBufferSGIX: returns at once. It sends nothing to the pipe and touches no state, so the call has no effect in this build.
- `__glkonim_ColorTableParameterfvSGI` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66ee0, 52 bytes):
  **Established.** glColorTableParameterfvSGI sends token 0xeb, the target, the name and four floats from the array in order.
- `__glkonim_ColorTableParameterivSGI` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66f20, 84 bytes):
  **Established.** glColorTableParameterivSGI converts all four integers of the array to floats and sends them under token 0xeb after the target and the name.
- `__glkonim_SpriteParameterfSGIX` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda66f80, 128 bytes):
  **Established.** glSpriteParameterfSGIX. The name must be 0x8149 and the value must equal 33100.0, 33101.0 or 33102.0 (0x814c to 0x814e); anything else sends token 0xe4 and 0x500. A valid call sends token 0x1a4, the name and the value truncated to an integer.
- `__glkonim_SpriteParameteriSGIX` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda67000, 104 bytes):
  **Established.** glSpriteParameteriSGIX. The name must be 0x8149 and the value 0x814c, 0x814d or 0x814e, else token 0xe4 and 0x500; valid calls send token 0x1a4, the name and the value.
- `__glkonim_ReadInstrumentsSGIX` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda67070, 16 bytes):
  **Established.** glReadInstrumentsSGIX: token 0x1cd and the argument word.
- `__glkonim_StartInstrumentsSGIX` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda67080, 16 bytes):
  **Established.** glStartInstrumentsSGIX sends the instrument start as token 0x1b9 followed by one zero word, two stores, and ignores its arguments.
- `__glkonim_StopInstrumentsSGIX` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda67090, 16 bytes):
  **Established.** glStopInstrumentsSGIX: token 0x1ba and the argument word.
- `__glkonim_FlushRasterSGIX` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda670a0, 16 bytes):
  **Established.** glFlushRasterSGIX sends the raster flush as token 0x1cc followed by one zero word, two stores, and does not wait for the pipe.
- `__glkonim_ReferencePlaneSGIX` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda670b0, 44 bytes):
  **Established.** glReferencePlaneSGIX: token 0x1bd followed by the four doubles of the plane equation, in array order.

## Support routines of the Kona driver

Small helpers of the host-side driver: the hyperpipe stubs, the kernel memory calls, the pixel-mode wrappers around the list-execution forms, and the per-element senders of the vertex-array paths. Addresses and sizes are those of the N32 build; `__glKon_ioctl` is the driver call whose request numbers are catalogued in [kernel.md](kernel.md).

- `BindHyperpipe` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94a150, 128 bytes):
  **Established.** Binds the context to a hyperpipe. A second argument of -1 unbinds: it calls `__glkon_UnbindHyperpipe` with the number stored in the context word at +0x8c84. Any other value calls `__glkon_BindHyperpipe` and then stores the number in that same word.
- `QueryHyperpipeBestAttrib` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94a1d0, 128 bytes):
  **Established.** Returns 0x5c when the bound-pipe word at ctx +0x8c84 is negative or when the third argument is not 1; otherwise it calls `__glkon__QueryHyperpipeBestRect` with the remaining arguments and returns its result.
- `HyperpipeAttrib` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94a300, 120 bytes):
  **Established.** Returns 0x5c unless the bound-pipe word at ctx +0x8c84 is non-negative and the third argument equals 1. In that case it calls `__glkon__HyperpipeRect` with the other arguments and returns its result.
- `__glSdramFree` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94a450, 8 bytes):
  **Established.** Returns 1 and does nothing else, so freeing a block of the SDRAM pool has no effect.
- `__glSdramInit` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94a5e0, 28 bytes):
  **Established.** Initialises a pool record: the words at +0, +4 and +8 are cleared and the word at +0x10 is set to 0x400, and it returns 1.
- `__glLockedMemoryFree` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94ad20, 64 bytes):
  **Established.** Releases a locked-memory block by calling `munmap` with the address at +0 and the length at +0xc of the record. A negative result prints "munmap" through `perror`. It returns 1 either way.
- `__glLockedMemoryMemmove` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94b020, 52 bytes):
  **Established.** Jumps through a library entry to an external copy routine with its own arguments, so a locked-memory move is the system's memmove.
- `__glKonExecuteIDMA` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94b0f0, 56 bytes):
  **Established.** Replays a list of immediate-DMA word pairs: for the count at +0x1c of the second argument it reads two words at a time from the array at +0x14 and writes token 0x16e and the two words to the command port.
- `__glkonSPBfree` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94bea0, 128 bytes):
  **Established.** Frees a display-list block. It asks `__glDlistIsBlock` about the handle at +0x10 of the record that `ctx` +0x133c points to. If that accepts it, the block goes to `__glDlistTransientBlock` with the second argument; if not, the function pointer at `ctx` +0x13a0 is called with the context and the second argument.
- `__glkonDlistOptimizer` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94c110, 8 bytes):
  **Established.** An empty function: it returns immediately, so the Kona display-list path applies no optimisation.
- `__glkon_DlistInit` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94c340, 92 bytes):
  **Established.** Resets the display-list state: it clears the four process words at 0x1028 to 0x1034, writes 2 to `ctx` +0x13d4 and clears the words at +0x13cc, +0x13d0, +0x13d8 and +0x13dc, then calls `__glSPDlistSpace` with 0.
- `__glkonle_SetBegin` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94cd00, 16 bytes):
  **Established.** Sets the begin flag at process address 0x1018 to 1 and returns its argument unchanged.
- `__glkonSPValidateLocalDlist` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94cf60, 48 bytes):
  **Established.** Calls `__glKonSdramForceSwapIn` and returns 1 if that returned non-zero and 0 if it returned zero.
- `__glkonSPValidateDlist` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94d150, 88 bytes):
  **Established.** Calls `__glkonSPValidateOnlyDlist` and then the function pointer at offset 8 of its second argument, passing both of its own arguments through.
- `__glkon_mem_alloc` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94d820, 96 bytes):
  **Established.** Asks the kernel driver for memory: the five arguments are packed into a 12-byte block on the stack (byte at +0, byte at +1, halfword at +2, word at +4, word at +8) and sent through `__glKon_ioctl` with request 0x271a. It returns 0 when the ioctl returns 0 and -1 otherwise.
- `__glkon_mem_realloc` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94d880, 96 bytes):
  **Established.** The resize form of `__glkon_mem_alloc`: the same 12-byte block (byte, byte, halfword, word, word) goes to `__glKon_ioctl` with request 0x271e, and the result is mapped to 0 for success and -1 for failure.
- `__glkon_mem_free` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94d8e0, 116 bytes):
  **Established.** Frees driver memory. If the word at `ctx` +0x7b4c is zero it returns 0 without calling the driver. Otherwise it packs two bytes (the arguments) into a block and calls `__glKon_ioctl` with request 0x271b, returning 0 on success and -1 on failure.
- `__glkon_dlist_mem_alloc` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94d960, 68 bytes):
  **Established.** Allocates display-list memory by calling `__glkon_mem_alloc` with the first field 1, zero for the next three fields and the caller's size in the fourth.
- `__glkon_dlist_mem_realloc` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94d9b0, 68 bytes):
  **Established.** Resizes display-list memory through `__glkon_mem_realloc` with the first field 1, zeros in the middle and the caller's size in the fourth word.
- `__glkon_dlist_mem_free` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94da00, 56 bytes):
  **Established.** Frees display-list memory through `__glkon_mem_free` with the first field 1 and a zero second field.
- `__glkon_texture_mem_alloc` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94da40, 68 bytes):
  **Established.** Allocates texture memory by calling `__glkon_mem_alloc` with the first field 3, zeros in the middle and the caller's size in the fourth word.
- `__glkon_texture_mem_realloc` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94da90, 68 bytes):
  **Established.** Resizes texture memory through `__glkon_mem_realloc` with the first field 3 and the caller's size in the fourth word.
- `__glkon_unique_per_ge_mem_alloc` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94dae0, 68 bytes):
  **Established.** Allocates a block per geometry engine with fixed fields: `__glkon_mem_alloc` is called with 2, 9, 1, 1 and 0, and no argument of its own is used.
- `GetLineModeDist` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd94fb70, 124 bytes):
  **Established.** Reads the line-mode distance table from the pipe: it calls `__glkon_get_special` with token 0xee and then copies 16 words (64 bytes) from the reply to the destination array in the second argument, two words at a time.
- `GetConvolutionFilter` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd950920, 68 bytes):
  **Established.** Chooses a state record by target. Target 0xde0 gives the record at `ctx` +0x300, and any target other than 0, 0xde0 and 0xde1 gives the one at +0x354. Targets 0 and 0xde1 test bit 26 (0x4000000) of the word at `ctx` +0x700 and give +0x3a8 when it is clear and +0x354 when it is set. It returns the record's address.
- `__glKonSetPixelLEModes` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd9511c0, 84 bytes):
  **Established.** Puts the pipe into the mode that the compiled-list pixel paths need. It calls `__glKonPushState` with 0xc and the caller's save area, then `__glKonDefaultState` with 0xc, and finally `__glkonim_PixelStorei` with 0xcf5 (GL_UNPACK_ALIGNMENT) and 1.
- `__glKonUnsetLEModes` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd951220, 52 bytes):
  **Established.** Restores the state saved by `__glKonSetPixelLEModes` by calling `__glKonPopState` with the save area it was given.
- `ResetSubrectState` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd951300, 8 bytes):
  **Established.** An empty function: it returns at once without touching any state.
- `GetSingleCompFromPipe` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd951310, 92 bytes):
  **Established.** Reads one component from the pipe. It sends token 0x116 and four argument words to the command port, waits through `__glkona_wait_rdata` and returns the word at +8 of the return-data buffer (`ctx` +0x7b64).
- `__glkonle_DrawPixels` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd951450, 120 bytes):
  **Established.** The list-execution glDrawPixels. It sets the pixel modes with `__glKonSetPixelLEModes`, calls `__glkonim_DrawPixels` with its arguments shifted back into place from the stack, and restores the modes with `__glKonUnsetLEModes`.
- `CopyIsOverlapped` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd952a00, 72 bytes):
  **Established.** Asks the pipe whether a pixel copy's source and destination overlap: token 0x110 with four argument words, then `__glkona_wait_rdata`, and the word at +8 of the return-data buffer is returned.
- `CopyConvIsOverlapped` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd952a50, 72 bytes):
  **Established.** The convolution form of the overlap query: token 0x115 and four argument words go to the port, the function waits through `__glkona_wait_rdata` and returns the address of the reply, the return-data pointer plus 8.
- `CopyDrawFreeRectangle` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd952cc0, 84 bytes):
  **Established.** Draws a rectangle of copied pixels once its source is free: it loads five fields from the record in the first argument (words 0 to 4) as arguments of `__glkonim_DrawPixels`, then continues through the function pointer at +0xc of the context's saved state.
- `__glkonle_Bitmap` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd9543b0, 116 bytes):
  **Established.** The list-execution glBitmap. It saves and sets the pixel modes with `__glKonSetPixelLEModes`, loads the width, height, origin and move values (word at 0, word at 4, four floats at 8 to 0x14) from the record argument, calls `__glkonim_Bitmap`, and restores the modes.
- `__glkonConvertPolygonStipple` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd954520, 88 bytes):
  **Established.** Uploads a stored polygon stipple: it sets the pixel modes with `__glKonSetPixelLEModes`, calls `__glkonim_PolygonStipple` with the pattern at +0x200 of the record, and restores the modes.
- `__glkonNumCompInPix` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd955e40, 36 bytes):
  **Established.** Returns the component count of a pixel format: a word from the table at 0xda828e0 of the library's data, indexed by the format number.
- `__glkonNumByteInType` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd955e70, 36 bytes):
  **Established.** Returns the size in bytes of a pixel type: a word from the table at 0xda82920 of the library's data, indexed by the type number.
- `InvalidGetFormat` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd9572f0, 76 bytes):
  **Established.** Tests a pixel format name for the readback calls. It returns 0 for 0x1903 up to 0x190a and for 0x8000; any other name calls `__glSetError` with 0x500 and returns 1.
- `InvalidGetType` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd957340, 104 bytes):
  **Established.** Tests a pixel type name. 0x1400 to 0x1406 and 0x8032 to 0x8036 return 0; any other value calls `__glSetError` with 0x500 and returns 1.
- `pass_dword` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd95ab90, 12 bytes):
  **Established.** Sends one 8-byte element: it loads a double at +0 of the pointer argument and stores it to the command port, two command words.
- `pass_dword_word` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd95aba0, 20 bytes):
  **Established.** Sends an element of one 8-byte unit then one 4-byte word: a double at +0 and a word at +8 of the pointer are stored to the port in that order.
- `pass_dword_dword` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd95abc0, 20 bytes):
  **Established.** Sends two consecutive 8-byte units from offsets 0 and 8 of the pointer to the port, four command words.
- `pass_dword_dword_word` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd95abe0, 28 bytes):
  **Established.** Sends two 8-byte units (offsets 0 and 8) followed by a word at +0x10.
- `pass_dword_dword_dword` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd95ac00, 28 bytes):
  **Established.** Sends three 8-byte units from offsets 0, 8 and 0x10 of the pointer, six command words in all.
- `pass_dword_dword_dword_word` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd95ac20, 36 bytes):
  **Established.** Sends three 8-byte units (0, 8, 0x10) and then a word from +0x18, seven command words.
- `pass_dword_dword_dword_dword` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd95ac50, 36 bytes):
  **Established.** Sends four 8-byte units from offsets 0, 8, 0x10 and 0x18 of the pointer, eight command words.
- `pass_word` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd95ac80, 12 bytes):
  **Established.** Sends one 4-byte word from +0 of the pointer to the command port.
- `pass_word_word` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd95ac90, 20 bytes):
  **Established.** Sends the words at +0 and +4 of the pointer to the port in order.
- `pass_word_word_word` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd95acb0, 28 bytes):
  **Established.** Sends the three words at +0, +4 and +8 of the pointer in order.
- `pass_word_word_word_word` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd95acd0, 36 bytes):
  **Established.** Sends the four words at +0, +4, +8 and +0xc of the pointer in order, one store each.
- `pass_hword` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd95ad00, 16 bytes):
  **Established.** Sends one 16-bit element: the halfword at +0 is shifted into the upper 16 bits of a word and stored; the lower half is zero.
- `pass_hword_hword` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd95ad10, 24 bytes):
  **Established.** Packs two halfwords into one word, the one at +0 in the upper half and the one at +2 in the lower, and stores it.
- `pass_hword_hword_hword` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd95ad30, 36 bytes):
  **Established.** Sends three halfwords as two words: the first holds the halfwords at +0 (upper) and +2 (lower), the second holds the halfword at +4 in its upper half and zero below.
- `pass_hword_hword_hword_hword` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd95ad60, 44 bytes):
  **Established.** Sends four halfwords as two words, the halfwords at +0 and +2 in the first and the ones at +4 and +6 in the second, earlier element in the upper half of each.
- `pass_byte` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd95ad90, 16 bytes):
  **Established.** Sends one byte element, the byte at +0 shifted to the top eight bits of a word, with zeros below.
- `pass_byte_byte` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd95ada0, 28 bytes):
  **Established.** Sends two bytes in one word: the byte at +0 in bits 31 to 24 and the byte at +1 in bits 23 to 16.
- `pass_byte_byte_byte` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd95adc0, 40 bytes):
  **Established.** Sends three bytes in one word, at bits 31-24 (offset 0), 23-16 (offset 1) and 15-8 (offset 2), the low byte zero.
- `pass_byte_byte_byte_byte` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd95adf0, 48 bytes):
  **Established.** Sends four bytes (offsets 0 to 3) packed into one word with the first in the top byte, i.e. the four bytes in memory order as a big-endian word.
- `pass_invalid` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd95ae20, 8 bytes):
  **Established.** An empty function returning at once: the entry for an element size or type that has no sender, so nothing is written.
- `StartSelectFeed` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd95cb30, 108 bytes):
  **Established.** Starts selection or feedback with the driver. It builds a five-word request (the first argument, the second argument times 4 in two fields, and two zero words) and calls `__glKon_ioctl` with request 0x2712. A non-zero result is reported through a library message routine and gives -1; success gives 0.
- `FinishSelectFeed` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd95cba0, 96 bytes):
  **Established.** Ends selection or feedback with the driver: it calls `__glKon_ioctl` with request 0x2713 and a request block, reports a non-zero result with a message and returns -1, and on success stores the block's second word through the pointer in the first argument and returns the first word.
- `__glKonEvalCoord1DHost` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd97cbe0, 76 bytes):
  **Established.** Evaluates one point of a 1D map on the host. It stores the float parameter in a local record with a single row of count 1 and calls `EvalRow1D` with that record.
- `__glKonEvalCoord2DHost` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd97ce50, 84 bytes):
  **Established.** Evaluates one point of a 2D map on the host: the u parameter (`$f12`) goes into a local record and the v parameter, moved from `$f13` to `$f12`, is passed with it, both with a count of 1, to `EvalRow2D`.
- `__glKonSendMapSpec2D` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd97dbc0, 68 bytes):
  **Established.** Sends the specification of a 2D map to the pipe as four words. A null pointer gives four zero words. Otherwise the words are those at +8, +0xc and +4 of the map record and then the word at +0x2c multiplied by 4.
- `__glKonInitColortableState` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd981330, 44 bytes):
  **Established.** Points four slots of the context at records inside it. The words at ctx +0x8b38, +0x8b50, +0x8b68 and +0x8b80 (reached as 0x10000 plus a negative offset) are set to the addresses ctx +0x1538, +0x15d8, +0x1678 and +0x1718 in that order.
- `__glkonle_ColorTableSGI` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd981cc0, 128 bytes):
  **Established.** The list-execution glColorTableSGI. It sets the pixel modes with `__glKonSetPixelLEModes`, calls `__glkonim_ColorTableSGI` with the arguments restored from the stack, and then restores the modes.
- `ValidateHistogramSink` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd984870, 88 bytes):
  **Established.** Decides whether a histogram or minmax sink is active and records it in the word at `ctx` +0x8c10. It reads the word at ctx +0x700 and stores 1 when bit 28 is set and the byte at +0x500 is non-zero, or bit 29 is set and the byte at +0x560 is non-zero; otherwise it stores 0.
- `__glkon_EnableHyperpipe` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd9875a0, 8 bytes):
  **Established.** An empty function: hyperpipe enabling is a no-op in this library.
- `__glkon_DisableHyperpipe` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd9875b0, 8 bytes):
  **Established.** An empty function that returns at once, so disabling a hyperpipe does nothing.
- `__glkon_FinishHyperpipe` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd9875c0, 8 bytes):
  **Established.** An empty function with no effect, returned at once.
- `__glkon_InitHyperpipeState` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd9875d0, 8 bytes):
  **Established.** Clears the word at +4 of the state record it is given and returns.
- `__glkon__QueryHyperpipeBestRect` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd9875e0, 8 bytes):
  **Established.** Returns 0 and does nothing else, so a best-rectangle query never reports a rectangle.
- `__glkon__QueryHyperpipeRect` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd9875f0, 8 bytes):
  **Established.** Returns 0 and nothing else; the rectangle query reports no rectangle.
- `__glkon__QueryHyperpipeLimit` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd987600, 8 bytes):
  **Established.** Returns 0 and nothing else; the limit query reports 0.
- `__glkon__HyperpipeRect` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd987610, 8 bytes):
  **Established.** Returns 0 without effect, so setting a hyperpipe rectangle through this entry does nothing.
- `__glkon_BindHyperpipe` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd987620, 108 bytes):
  **Established.** Binds a hyperpipe through the driver. If the byte at ctx +0xc96 is zero it returns 1 with no call. Otherwise it passes the pipe number in a one-word block to the driver entry through the handle at `ctx` +0x7b48 with request 0x2726 and returns 1 for success, 0 for failure.
- `__glkon_UnbindHyperpipe` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd987690, 80 bytes):
  **Established.** Unbinds a hyperpipe by passing the pipe number in a one-word block to the driver entry through the handle at `ctx` +0x7b48 with request 0x2727; it returns 1 on success and 0 on failure.
- `fullscreen` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd9882d0, 92 bytes):
  **Established.** Asks the driver about full-screen mode. It builds a 28-byte block holding the driver handle at `ctx` +0x7b4c twice, a field of 3, a byte of 6, a field of 2 and the two arguments, and calls `__glKon_ioctl` with request 0x3f1.
- `__glkon_GetDeformationf` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd988ca0, 56 bytes):
  **Established.** Calls `getDeformationf` at 0xd988b80 through a rebased entry and returns its result; the function adds nothing of its own.
- `__glkonle_Push` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda772a0, 100 bytes):
  **Established.** Replays a recorded run of words to the command port. The record starts with a count word, and the data follows it. When the record's address has bit 2 clear it first sends one word alone so that the doubleword stores that follow are 8-byte aligned, then sends 8-byte units while at least two words remain, then a final single word if one is left. It returns the address just past the data.
- `__glkon_datavn` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda77304, 40 bytes):
  **Established.** Sends a counted run of words from a pointer to the command port: if the pointer has bit 2 set it sends one word alone to restore 8-byte alignment, then 8-byte units while two or more words remain, then a trailing single word. It returns the address after the data. Unlike `__glkonle_Push` the count is its own second argument.

## The glDrawArrays senders by array combination

These 33 functions are named for the client arrays they send (V vertex, N normal, C colour, I index, T texture coordinate, E edge flag; the vertex array is the last letter of every name except in the normal-only form `__glkonDrawArraysN`, which has none); the caller that chooses among them is not read here. Each takes the first index in its second argument and two vertex counts in its third and fourth. The array pointers and strides are the `ctx` words listed with the client-array pointers in [libglcore-get-functions.md](libglcore-get-functions.md): vertex +0x13e0 and +0x13ec, normal +0x13fc and +0x1404, colour +0x1414 and +0x1420, index +0x1430 and +0x1438, texture coordinate +0x1448 and +0x1454, edge flag +0x1464 and +0x1468 (pointer, then stride). The per-element sender of each array is a function pointer in `ctx`: vertex +0x8ab0, normal +0x8ab4, colour +0x8ab8, index +0x8abc, texture coordinate +0x8ac0, edge flag +0x8ac4. All 33 end each run of vertices the same way: after the first run, a non-zero second count writes token 0x182, that count and two words of 0xdeadbeef, and then sends that many more vertices.

- `__glkonDrawArraysV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda70f60, 272 bytes):
  **Established.** For each vertex it sends the vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a3 minus the count, and the calls go through the `ctx` sender pointers +0x8ab0. The walk covers the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysNV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda71070, 348 bytes):
  **Established.** For each vertex it sends the normal, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a3 minus 2 times the count, and the calls go through the `ctx` sender pointers +0x8ab4, +0x8ab0. The walk covers the normal array at +0x13fc with stride +0x1404, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysCV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda711d0, 348 bytes):
  **Established.** For each vertex it sends the colour, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a3 minus 2 times the count, and the calls go through the `ctx` sender pointers +0x8ab8, +0x8ab0. The walk covers the colour array at +0x1414 with stride +0x1420, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysNCV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda71330, 440 bytes):
  **Established.** For each vertex it sends the normal, then colour, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a1 minus 3 times the count, and the calls go through the `ctx` sender pointers +0x8ab4, +0x8ab8, +0x8ab0. The walk covers the normal array at +0x13fc with stride +0x1404, the colour array at +0x1414 with stride +0x1420, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysTV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda714f0, 348 bytes):
  **Established.** For each vertex it sends the texture-coordinate, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a3 minus 2 times the count, and the calls go through the `ctx` sender pointers +0x8ac0, +0x8ab0. The walk covers the texture-coordinate array at +0x1448 with stride +0x1454, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysNTV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda71650, 440 bytes):
  **Established.** For each vertex it sends the normal, then texture-coordinate, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a1 minus 3 times the count, and the calls go through the `ctx` sender pointers +0x8ab4, +0x8ac0, +0x8ab0. The walk covers the normal array at +0x13fc with stride +0x1404, the texture-coordinate array at +0x1448 with stride +0x1454, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysCTV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda71810, 440 bytes):
  **Established.** For each vertex it sends the colour, then texture-coordinate, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a1 minus 3 times the count, and the calls go through the `ctx` sender pointers +0x8ab8, +0x8ac0, +0x8ab0. The walk covers the colour array at +0x1414 with stride +0x1420, the texture-coordinate array at +0x1448 with stride +0x1454, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysNCTV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda719d0, 528 bytes):
  **Established.** For each vertex it sends the normal, then colour, then texture-coordinate, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a3 minus 4 times the count, and the calls go through the `ctx` sender pointers +0x8ab4, +0x8ab8, +0x8ac0, +0x8ab0. The walk covers the normal array at +0x13fc with stride +0x1404, the colour array at +0x1414 with stride +0x1420, the texture-coordinate array at +0x1448 with stride +0x1454, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysIV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda71be0, 348 bytes):
  **Established.** For each vertex it sends the index, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a3 minus 2 times the count, and the calls go through the `ctx` sender pointers +0x8abc, +0x8ab0. The walk covers the index array at +0x1430 with stride +0x1438, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysNIV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda71d40, 440 bytes):
  **Established.** For each vertex it sends the normal, then index, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a1 minus 3 times the count, and the calls go through the `ctx` sender pointers +0x8ab4, +0x8abc, +0x8ab0. The walk covers the normal array at +0x13fc with stride +0x1404, the index array at +0x1430 with stride +0x1438, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysCIV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda71f00, 440 bytes):
  **Established.** For each vertex it sends the colour, then index, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a1 minus 3 times the count, and the calls go through the `ctx` sender pointers +0x8ab8, +0x8abc, +0x8ab0. The walk covers the colour array at +0x1414 with stride +0x1420, the index array at +0x1430 with stride +0x1438, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysNCIV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda720c0, 528 bytes):
  **Established.** For each vertex it sends the normal, then colour, then index, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a3 minus 4 times the count, and the calls go through the `ctx` sender pointers +0x8ab4, +0x8ab8, +0x8abc, +0x8ab0. The walk covers the normal array at +0x13fc with stride +0x1404, the colour array at +0x1414 with stride +0x1420, the index array at +0x1430 with stride +0x1438, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysTIV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda722d0, 440 bytes):
  **Established.** For each vertex it sends the texture-coordinate, then index, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a1 minus 3 times the count, and the calls go through the `ctx` sender pointers +0x8ac0, +0x8abc, +0x8ab0. The walk covers the texture-coordinate array at +0x1448 with stride +0x1454, the index array at +0x1430 with stride +0x1438, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysNTIV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda72490, 528 bytes):
  **Established.** For each vertex it sends the normal, then texture-coordinate, then index, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a3 minus 4 times the count, and the calls go through the `ctx` sender pointers +0x8ab4, +0x8ac0, +0x8abc, +0x8ab0. The walk covers the normal array at +0x13fc with stride +0x1404, the texture-coordinate array at +0x1448 with stride +0x1454, the index array at +0x1430 with stride +0x1438, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysCTIV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda726a0, 528 bytes):
  **Established.** For each vertex it sends the colour, then texture-coordinate, then index, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a3 minus 4 times the count, and the calls go through the `ctx` sender pointers +0x8ab8, +0x8ac0, +0x8abc, +0x8ab0. The walk covers the colour array at +0x1414 with stride +0x1420, the texture-coordinate array at +0x1448 with stride +0x1454, the index array at +0x1430 with stride +0x1438, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysNCTIV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda728b0, 612 bytes):
  **Established.** For each vertex it sends the normal, then colour, then texture-coordinate, then index, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a1 minus 5 times the count, and the calls go through the `ctx` sender pointers +0x8ab4, +0x8ab8, +0x8ac0, +0x8abc, +0x8ab0. The walk covers the normal array at +0x13fc with stride +0x1404, the colour array at +0x1414 with stride +0x1420, the texture-coordinate array at +0x1448 with stride +0x1454, the index array at +0x1430 with stride +0x1438, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysEV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda72b20, 348 bytes):
  **Established.** For each vertex it sends the edge-flag, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a3 minus 2 times the count, and the calls go through the `ctx` sender pointers +0x8ac4, +0x8ab0. The walk covers the edge-flag array at +0x1464 with stride +0x1468, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysNEV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda72c80, 440 bytes):
  **Established.** For each vertex it sends the normal, then edge-flag, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a1 minus 3 times the count, and the calls go through the `ctx` sender pointers +0x8ab4, +0x8ac4, +0x8ab0. The walk covers the normal array at +0x13fc with stride +0x1404, the edge-flag array at +0x1464 with stride +0x1468, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysCEV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda72e40, 440 bytes):
  **Established.** For each vertex it sends the colour, then edge-flag, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a1 minus 3 times the count, and the calls go through the `ctx` sender pointers +0x8ab8, +0x8ac4, +0x8ab0. The walk covers the colour array at +0x1414 with stride +0x1420, the edge-flag array at +0x1464 with stride +0x1468, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysNCEV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda73000, 528 bytes):
  **Established.** For each vertex it sends the normal, then colour, then edge-flag, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a3 minus 4 times the count, and the calls go through the `ctx` sender pointers +0x8ab4, +0x8ab8, +0x8ac4, +0x8ab0. The walk covers the normal array at +0x13fc with stride +0x1404, the colour array at +0x1414 with stride +0x1420, the edge-flag array at +0x1464 with stride +0x1468, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysTEV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda73210, 440 bytes):
  **Established.** For each vertex it sends the texture-coordinate, then edge-flag, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a1 minus 3 times the count, and the calls go through the `ctx` sender pointers +0x8ac0, +0x8ac4, +0x8ab0. The walk covers the texture-coordinate array at +0x1448 with stride +0x1454, the edge-flag array at +0x1464 with stride +0x1468, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysNTEV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda733d0, 528 bytes):
  **Established.** For each vertex it sends the normal, then texture-coordinate, then edge-flag, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a3 minus 4 times the count, and the calls go through the `ctx` sender pointers +0x8ab4, +0x8ac0, +0x8ac4, +0x8ab0. The walk covers the normal array at +0x13fc with stride +0x1404, the texture-coordinate array at +0x1448 with stride +0x1454, the edge-flag array at +0x1464 with stride +0x1468, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysCTEV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda735e0, 528 bytes):
  **Established.** For each vertex it sends the colour, then texture-coordinate, then edge-flag, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a3 minus 4 times the count, and the calls go through the `ctx` sender pointers +0x8ab8, +0x8ac0, +0x8ac4, +0x8ab0. The walk covers the colour array at +0x1414 with stride +0x1420, the texture-coordinate array at +0x1448 with stride +0x1454, the edge-flag array at +0x1464 with stride +0x1468, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysNCTEV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda737f0, 612 bytes):
  **Established.** For each vertex it sends the normal, then colour, then texture-coordinate, then edge-flag, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a1 minus 5 times the count, and the calls go through the `ctx` sender pointers +0x8ab4, +0x8ab8, +0x8ac0, +0x8ac4, +0x8ab0. The walk covers the normal array at +0x13fc with stride +0x1404, the colour array at +0x1414 with stride +0x1420, the texture-coordinate array at +0x1448 with stride +0x1454, the edge-flag array at +0x1464 with stride +0x1468, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysIEV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda73a60, 440 bytes):
  **Established.** For each vertex it sends the index, then edge-flag, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a1 minus 3 times the count, and the calls go through the `ctx` sender pointers +0x8abc, +0x8ac4, +0x8ab0. The walk covers the index array at +0x1430 with stride +0x1438, the edge-flag array at +0x1464 with stride +0x1468, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysNIEV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda73c20, 528 bytes):
  **Established.** For each vertex it sends the normal, then index, then edge-flag, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a3 minus 4 times the count, and the calls go through the `ctx` sender pointers +0x8ab4, +0x8abc, +0x8ac4, +0x8ab0. The walk covers the normal array at +0x13fc with stride +0x1404, the index array at +0x1430 with stride +0x1438, the edge-flag array at +0x1464 with stride +0x1468, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysCIEV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda73e30, 528 bytes):
  **Established.** For each vertex it sends the colour, then index, then edge-flag, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a3 minus 4 times the count, and the calls go through the `ctx` sender pointers +0x8ab8, +0x8abc, +0x8ac4, +0x8ab0. The walk covers the colour array at +0x1414 with stride +0x1420, the index array at +0x1430 with stride +0x1438, the edge-flag array at +0x1464 with stride +0x1468, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysNCIEV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda74040, 612 bytes):
  **Established.** For each vertex it sends the normal, then colour, then index, then edge-flag, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a1 minus 5 times the count, and the calls go through the `ctx` sender pointers +0x8ab4, +0x8ab8, +0x8abc, +0x8ac4, +0x8ab0. The walk covers the normal array at +0x13fc with stride +0x1404, the colour array at +0x1414 with stride +0x1420, the index array at +0x1430 with stride +0x1438, the edge-flag array at +0x1464 with stride +0x1468, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysTIEV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda742b0, 528 bytes):
  **Established.** For each vertex it sends the texture-coordinate, then index, then edge-flag, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a3 minus 4 times the count, and the calls go through the `ctx` sender pointers +0x8ac0, +0x8abc, +0x8ac4, +0x8ab0. The walk covers the texture-coordinate array at +0x1448 with stride +0x1454, the index array at +0x1430 with stride +0x1438, the edge-flag array at +0x1464 with stride +0x1468, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysNTIEV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda744c0, 612 bytes):
  **Established.** For each vertex it sends the normal, then texture-coordinate, then index, then edge-flag, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a1 minus 5 times the count, and the calls go through the `ctx` sender pointers +0x8ab4, +0x8ac0, +0x8abc, +0x8ac4, +0x8ab0. The walk covers the normal array at +0x13fc with stride +0x1404, the texture-coordinate array at +0x1448 with stride +0x1454, the index array at +0x1430 with stride +0x1438, the edge-flag array at +0x1464 with stride +0x1468, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysCTIEV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda74730, 612 bytes):
  **Established.** For each vertex it sends the colour, then texture-coordinate, then index, then edge-flag, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a1 minus 5 times the count, and the calls go through the `ctx` sender pointers +0x8ab8, +0x8ac0, +0x8abc, +0x8ac4, +0x8ab0. The walk covers the colour array at +0x1414 with stride +0x1420, the texture-coordinate array at +0x1448 with stride +0x1454, the index array at +0x1430 with stride +0x1438, the edge-flag array at +0x1464 with stride +0x1468, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysNCTIEV` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda749a0, 712 bytes):
  **Established.** For each vertex it sends the normal, then colour, then texture-coordinate, then index, then edge-flag, then vertex element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a1 minus 6 times the count, and the calls go through the `ctx` sender pointers +0x8ab4, +0x8ab8, +0x8ac0, +0x8abc, +0x8ac4, +0x8ab0. The walk covers the normal array at +0x13fc with stride +0x1404, the colour array at +0x1414 with stride +0x1420, the texture-coordinate array at +0x1448 with stride +0x1454, the index array at +0x1430 with stride +0x1438, the edge-flag array at +0x1464 with stride +0x1468, the vertex array at +0x13e0 with stride +0x13ec, each pointer starting at the base plus the first index times the stride.
- `__glkonDrawArraysN` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda74c70, 272 bytes):
  **Established.** For each vertex it sends the normal element, one call per enabled array and in that order. When the first count is non-zero a first run opens with the word 0x1a3 minus the count, and the calls go through the `ctx` sender pointers +0x8ab4. The walk covers the normal array at +0x13fc with stride +0x1404, each pointer starting at the base plus the first index times the stride.

## Packed-vertex senders (the interleaved-array formats)

The twelve interleaved formats V3F, C4UB, N3S and T2F or T2S in their combinations each have an immediate sender (`__glkonSendPackedVertex` plus the format) and a list compiler (`__glkonlSendPackedVertex` plus the format). The format letters are three-float position (V3F), four unsigned-byte colour (C4UB), three-short normal (N3S) and two-float or two-short texture coordinate (T2F, T2S). The twelve tokens run from 0x1ab for V3F to 0x1b6, in the order V3F, C4UB, N3S, C4UB with N3S, then the same four with T2F, then the same four with T2S. The immediate senders read the first index and the count from their second and third arguments, start every array at its base plus the first index times the stride (the vertex array words are `ctx` +0x13e0 and +0x13ec), step each pointer by its stride after a vertex, and test the count only after the first pass. The list compilers test the remaining-space word at process address 0x1028 before every vertex, call `__glSPDlistSpace` with 0 when it is smaller than the word count of a vertex, and then advance the list pointer at 0x1030 by four bytes per word and the word count at 0x1034 by the word count; their loop is unrolled by two with a single pass first when the count is odd. A vertex is the token plus three position words, plus one word for a colour, one for a normal, two for a float texture coordinate or one for a short pair.

- `__glKonSendPackedVertex` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd95c960, 160 bytes):
  **Established.** Sends a packed-vertex draw as a whole. It writes token 0x1b7, the format word from its fourth argument and bits 23 to 16 of that word as a second word, calls `glBegin` with the mode, then calls the sender chosen by bits 27 to 24 of the format word from a 16-entry pointer table with the first index and the count, calls `glEnd`, and finally writes token 0x1cf and a zero word.
- `__glkonlSendPackedVertexV3F` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda74d80, 472 bytes):
  **Established.** The list-compile form of the V3F sender: each vertex appends the token 0x1ab and then the x, y and z floats to the list buffer, 4 words in all, and the function never stores to the command port. The space test and the pointer and count updates are those of the common description above, with 4 in place of the word count.
- `__glkonlSendPackedVertexV3F_C4UB` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda74f60, 552 bytes):
  **Established.** The list-compile form of the V3F with C4UB sender: each vertex appends the token 0x1ac and then x, y and z, then the packed colour word to the list buffer, 5 words in all, and the function never stores to the command port. The space test and the pointer and count updates are those of the common description above, with 5 in place of the word count.
- `__glkonlSendPackedVertexV3F_N3S` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda75190, 616 bytes):
  **Established.** The list-compile form of the V3F with N3S sender: each vertex appends the token 0x1ad and then x, y and z, then the packed normal word to the list buffer, 5 words in all, and the function never stores to the command port. The space test and the pointer and count updates are those of the common description above, with 5 in place of the word count.
- `__glkonlSendPackedVertexV3F_C4UB_N3S` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda75400, 700 bytes):
  **Established.** The list-compile form of the V3F with C4UB with N3S sender: each vertex appends the token 0x1ae and then x, y, z, the colour word and the normal word to the list buffer, 6 words in all, and the function never stores to the command port. The space test and the pointer and count updates are those of the common description above, with 6 in place of the word count.
- `__glkonlSendPackedVertexV3F_T2F` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda756c0, 568 bytes):
  **Established.** The list-compile form of the V3F with T2F sender: each vertex appends the token 0x1af and then x, y, z and then the two texture floats s and t to the list buffer, 6 words in all, and the function never stores to the command port. The space test and the pointer and count updates are those of the common description above, with 6 in place of the word count.
- `__glkonlSendPackedVertexV3F_C4UB_T2F` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda75900, 668 bytes):
  **Established.** The list-compile form of the V3F with C4UB with T2F sender: each vertex appends the token 0x1b0 and then x, y, z, the colour word, then s and t to the list buffer, 7 words in all, and the function never stores to the command port. The space test and the pointer and count updates are those of the common description above, with 7 in place of the word count.
- `__glkonlSendPackedVertexV3F_N3S_T2F` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda75ba0, 716 bytes):
  **Established.** The list-compile form of the V3F with N3S with T2F sender: each vertex appends the token 0x1b1 and then x, y, z, the normal word, then s and t to the list buffer, 7 words in all, and the function never stores to the command port. The space test and the pointer and count updates are those of the common description above, with 7 in place of the word count.
- `__glkonlSendPackedVertexV3F_C4UB_N3S_T2F` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda75e70, 812 bytes):
  **Established.** The list-compile form of the V3F with C4UB with N3S with T2F sender: each vertex appends the token 0x1b2 and then x, y, z, the colour word, the normal word, s and t to the list buffer, 8 words in all, and the function never stores to the command port. The space test and the pointer and count updates are those of the common description above, with 8 in place of the word count.
- `__glkonlSendPackedVertexV3F_T2S` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda761a0, 552 bytes):
  **Established.** The list-compile form of the V3F with T2S sender: each vertex appends the token 0x1b3 and then x, y, z and one word holding both texture shorts to the list buffer, 5 words in all, and the function never stores to the command port. The space test and the pointer and count updates are those of the common description above, with 5 in place of the word count.
- `__glkonlSendPackedVertexV3F_C4UB_T2S` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda763d0, 636 bytes):
  **Established.** The list-compile form of the V3F with C4UB with T2S sender: each vertex appends the token 0x1b4 and then x, y, z, the colour word and the texture word to the list buffer, 6 words in all, and the function never stores to the command port. The space test and the pointer and count updates are those of the common description above, with 6 in place of the word count.
- `__glkonlSendPackedVertexV3F_N3S_T2S` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda76650, 700 bytes):
  **Established.** The list-compile form of the V3F with N3S with T2S sender: each vertex appends the token 0x1b5 and then x, y, z, the normal word and the texture word to the list buffer, 6 words in all, and the function never stores to the command port. The space test and the pointer and count updates are those of the common description above, with 6 in place of the word count.
- `__glkonlSendPackedVertexV3F_C4UB_N3S_T2S` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda76910, 780 bytes):
  **Established.** The list-compile form of the V3F with C4UB with N3S with T2S sender: each vertex appends the token 0x1b6 and then x, y, z, the colour word, the normal word and the texture word to the list buffer, 7 words in all, and the function never stores to the command port. The space test and the pointer and count updates are those of the common description above, with 7 in place of the word count.
- `__glkonSendPackedVertexV3F` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda77330, 76 bytes):
  **Established.** Sends one vertex per pass with token 0x1ab: an 8-byte store of x and y (read as an unaligned pair) and a word store of z.
- `__glkonSendPackedVertexV3F_C4UB` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda7737c, 112 bytes):
  **Established.** Token 0x1ac, then x and y as one 8-byte store and z joined with the colour (four unsigned bytes read as one word) in a second 8-byte store, z in the upper word.
- `__glkonSendPackedVertexV3F_N3S` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda773ec, 132 bytes):
  **Established.** Token 0x1ad, x and y in one 8-byte store, then z in the upper word of a second store whose lower word is the packed normal. The normal word is the first word of the three shorts with its lowest bit replaced by the top bit of the second word.
- `__glkonSendPackedVertexV3F_C4UB_N3S` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda77470, 168 bytes):
  **Established.** Token 0x1ae with x and y as one 8-byte store, z and the colour word as a second, and the packed normal (first normal word with its low bit replaced by the top bit of the second) as a single word.
- `__glkonSendPackedVertexV3F_T2F` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda77518, 120 bytes):
  **Established.** Token 0x1af, x and y as one 8-byte store, then z in the upper word and the first texture float in the lower word of the second store, and the second float as a single word.
- `__glkonSendPackedVertexV3F_C4UB_T2F` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda77590, 152 bytes):
  **Established.** Token 0x1b0, x and y, then z with the colour word as a second 8-byte store, and the two texture floats as a third 8-byte store read as one unaligned pair.
- `__glkonSendPackedVertexV3F_N3S_T2F` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda77628, 168 bytes):
  **Established.** Token 0x1b1, x and y, then z with the packed normal word, then the two texture floats as one 8-byte store; the normal packs the first word of its shorts with the top bit of the second in the low bit.
- `__glkonSendPackedVertexV3F_C4UB_N3S_T2F` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda776d0, 204 bytes):
  **Established.** Token 0x1b2 and eight words in all: x and y, then z with the colour, then the packed normal as one word, then the two texture floats as the last 8-byte store.
- `__glkonSendPackedVertexV3F_T2S` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda7779c, 112 bytes):
  **Established.** Token 0x1b3, x and y as one 8-byte store, then z in the upper word and the texture word (the two shorts of the coordinate read as one unsigned word) in the lower word of a second store.
- `__glkonSendPackedVertexV3F_C4UB_T2S` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda7780c, 148 bytes):
  **Established.** Token 0x1b4, x and y, then z with the colour word as a second 8-byte store, and the one-word texture coordinate as a trailing word store.
- `__glkonSendPackedVertexV3F_N3S_T2S` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda778a0, 164 bytes):
  **Established.** Token 0x1b5, x and y, then z with the packed normal word, then the texture word as a single trailing store.
- `__glkonSendPackedVertexV3F_C4UB_N3S_T2S` (`usr/gfx/arch/IP27KONA32/libGLcore.so` 0xda77944, 204 bytes):
  **Established.** Token 0x1b6, x and y, then z with the colour word, then a last 8-byte store whose upper word is the packed normal and whose lower word is the texture word.
