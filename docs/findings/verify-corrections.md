# Corrections (2026-11-10) to the recent texture-load rows of the command table

An independent check of the recently added rows in `docs/command-table.md`
found four faulty claims. Each was re-checked against the primary source
(the pipe firmware disassembly `ucode/arm1.s`, the N32 libGLcore assembly
`libglcore/asm/texture/kon_texture_api.s`, and the repo's own register notes).
Result: 3 confirmed, 1 partly right, 0 rejected. Readers who relied on the old
text should use the replacement rows below; the table applier replaces the
rows whose first cell matches.

## 1. Global-offset registers 0x101a / 0x5001 (row "address space", and the sentence in "address units and the position of a level inside the address") - confirmed

- Old claim: reserve, swap-in and swap-out write the block page, and only
  swap-out zeroes afterwards.
- Checked: `mem_swapin_tex` (arm1.s 0x0c024340-0x0c02436c) zeroes both registers
  after the transfer, exactly as `mem_swapout_tex` (0x0c0242c8-0x0c0242f4) does.
  Only `mem_reserve_tex` with key 0 (0x0c0241e0-0x0c024220) leaves the value in
  place. So after a swap the pipe holds 0 and a non-zero offset persists only after a
  reserve.
- Old claim: the value is `(page & 0x3fff) << 12`. Checked: all three routines
  compute page shifted left 18, then arithmetic-shifted right 6
  (0x0c0241e0-0x0c0241e4, 0x0c024298, 0x0c024310). Page bits 13:0 land in bits 25:12
  and page bit 13 is sign-extended into bits 31:26.
- Also regraded: that these registers are saved with the context rests on the
  shadow-restore question in item 2, so it is inferred, not established.

Replacement text for the "address space" row (cell 2 and grade):

```
| address space | texture memory is one physical pool per pipe. The kernel places each owner's blocks disjointly (first-fit, swapping other owners' blocks out to the host under pressure) and tells the pipe each block's offset with MEM_RESERVE; for a texture block the pipe writes the block page, shifted left 18 and arithmetic-shifted right 6 (page bits 13:0 in bits 25:12, bit 13 sign-extended into 31:26), to the global-offset registers 0x101a (draw) and 0x5001 (load). The reserve (key 0) leaves that value in place; swap-out and swap-in each write 0 to both registers once the transfer is done. A program's level addresses in loads and binds are relative to its block, so two contexts with identical table words and level addresses do not alias when their blocks differ (a swap-in moving the region leaves the table words unchanged). That the hardware adds the offset to the level address is inferred from the register use | established for the pool, kernel placement and the register writes; inferred that the offset is added to the level address and that the registers are context-saved | S69 |
```

In the "address units" row replace the parenthesis
"(`mem_reserve_tex`, `mem_swapin_tex` and `mem_swapout_tex` write the block page; swap-out writes 0 afterwards)" with
"(`mem_reserve_tex` writes the block page, sign-extended as above, and leaves it; `mem_swapin_tex` and `mem_swapout_tex` write it for the transfer and then write 0)".
In its grade cell, "established for the allocator, inferred for the hardware unit; global-offset unit unknown" stays.

## 2. "a context switch and a half-loaded level" - confirmed (overgraded)

- Established: the 89-word register shadow (context tag 0x20) is saved, and
  loaded back into the geometry engines' shadow RAM on switch-in
  (`mges_ContextLoadBEF`). The host-interface counters, ARM stack/registers and
  context record are also saved and restored.
- Not established: that the raster registers 0x7fc1-0x7fc5, 0x5001 and 0x101a are
  rewritten from that shadow on a switch. `docs/rm.md` grades it inferred, and
  records that the only routine walking the 89 slots out to the raster bus is
  the reload that `reset_imps` sends, not a context switch
  (ucode/geif_entries.md rows 374-377 agree). `arm_context_activate`
  (arm1.s 0x0c0209dc-0x0c020bc8) calls the private, current-engine, engine
  register, engine FIFO, distributor and host-interface restores and, for some
  pixel modes, `PixelRestore` (0x0c0290dc), which writes pixel-mode state, not the
  load registers. None of these rewrites 0x7fc1-0x7fc5, 0x5001 or 0x101a.
- Consequence: "a back end must restore it unconditionally" is advice, not an
  established hardware requirement. It is safe, but a back end may also find the
  registers need no restore.

Replacement text (cell 2 and grade) for the row:

```
| a context switch and a half-loaded level | a switch saves the load's *control* state and restores it on switch-in, not texels: the 89-word register shadow is saved and loaded back into the engines' shadow RAM (words 48-54 hold the load registers 0x7fc1-0x7fc5, 0x5001 and 0x101a), together with the host-interface owed-word count and pass-through counter (`deactivate_hip`/`activate_hip`), the ARM stack and saved registers, the context record (the finish-slot continuation at +0x73c) and the engine-FIFO contents. That the raster registers themselves are rewritten from the shadow on switch-in is inferred: no switch-in routine writes them, and the only walk of the shadow out to the raster bus is the reload sent from `reset_imps`. Texture memory itself is not saved. Rows already written persist; rows not yet received land after the restore at the restored position. A back end should hold half-loaded state per context and restore it on switch-in, and must never drop, refuse or park a level because another context also has a load in flight; the replay order of engine-FIFO rows across the switch is not read | established (shadow save and reload into the engines); inferred (raster registers rewritten from it); FIFO replay timing unknown | S69, [rm.md](rm.md#context-save-and-restore) |
```

## 3. "detail and sharpen curve" quantiser - confirmed

- The clamp is asymmetric, -1024 to +1023, not +/-0x3ff
  (kon_texture_api.s `getS2p7`, 0x0d9650d0: upper bound 1023, lower bound -1024).
- The row omitted the output code, which is the point of the routine: after the
  clamp the value is halved while it is outside -128..127, counting the halvings
  (0 to 3); the result is the low byte of the halved value shifted left 2,
  ORed with the count. The represented value is mantissa x 2^count / 128.

Replacement text:

```
| detail and sharpen curve (0x17e, kinds 1 and 2) | 64 samples at x_i = log2(i/64); the detail samples are doubled (x2) and the sharpen samples negated; each sample v is quantised by `getS2p7`: n = trunc(v x 512 + 2) >> 2 (arithmetic), clamped to -1024..1023, then halved until it lies in -128..127 with the halvings counted (0 to 3); the 10-bit code is (n & 0xff) << 2 | count, representing n x 2^count / 128; default points (-4, 1) and (0, 0). This settles which sign sharpening takes | established | S59 (libGLcore `bindTexTable` 0xd9651c0, `getS2p7` 0xd9650d0) |
```

## 4. "detail level code (texture-mode word bits 23:21)" - partly right

- Right: the stored code is the negated public value. The library's parameter
  handler for name 0x809a negates it, accepts only 0..4 (otherwise error -2),
  and shifts it into bits 23:21 of the mode word (kon_texture_api.s, 0x0d96850c
  and 0x0d9687e4).
- Wrong: "holds -n for n in -4..0; Quake GL uses n = 4" contradicts itself. The
  public value is -4..0 and the stored code is 0..4. A claim about
  what one game stores is not established by the library code and is dropped.
- The texture-mode word row (cell "23:21 detail level") said "negated public
  value inferred"; the library code now establishes the negation.

Replacement text for the detail-level row:

```
| detail level code (texture-mode word bits 23:21) | the stored code is the negated public value: the public value is -4..0 and the code 0..4 (a value outside that range is rejected with error -2). | established for the negation and the range | S59 (libGLcore `__glKonTexParameter` 0xd968390) |
```

In the texture-mode word row replace "23:21 detail level (0-4 from the diagnostic's test vectors; negated public value inferred)" with
"23:21 detail level (0-4: the negated public value, established from the library's parameter handler; also seen as 0-4 in the diagnostic's test vectors)".

## Unchecked items

Checked here: the claims about `getS2p7`, the detail-code range and mode-word
insertion, the three memory handlers and the context-activate path.
Not re-verified (still as the checker found them): the detail-image-load header
words and their record numbers; the type-equals-kind link for table
sends; the default-point ordering across the two shipped tables; the kernel
placement and share-group claims; the negative claim that the pipe has no
flat-colour state for a missing detail; the luminance row's flag-to-+0x9d0 and
operation-word details. The 0x17d/0x1d5/0x176 handler descriptions and the
513-entry flush were found matching by the checker.
