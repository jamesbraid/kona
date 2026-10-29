# Geometry engines as the ARM firmware drives them

What the ARM firmware (`arm1.u`, IRIX 6.5.30m, [ucode/arm1_firmware.md](../ucode/arm1_firmware.md)) does to start, feed and save the geometry engines. The engine program is covered in [ucode/ge.md](../ucode/ge.md), [ucode/ge_isa.md](../ucode/ge_isa.md) and [ucode/ge_ops.md](../ucode/ge_ops.md); the register list is in [GE.h](../GE.h). Facts are labelled **established** (read from the firmware at the function named), **inferred** (with the reasoning) or **unknown**.

## Registers: the ARM's path to them

**Established.** `init_ge` (0x0c0032e4) reaches the engine registers of [GE.h](../GE.h) (0x40000-0x40038) with two descriptor words: 0x46a00020 followed by the register address, and 0x46600020 followed by the value, both through the data port r9 + 0x8c0 ([arm1_firmware.md](../ucode/arm1_firmware.md)). The writes it makes, in order: 0x40038 (`OFIFO_CONTROL`) = 0x8e0; 0x40018 (`CM/Ofifo TAG`) = a value the code computes from the board id; per-engine writes whose address and value are registers (`ungray` and `ge_board_id` feed them); 0x40010 (`DIAG_SEL`) = 0x100; 0x40000 (`EXECUTION_CONTROL`) = 1 twice, which is `EXEC_GO` (bit 0). **Inferred:** the two descriptors are an address port and a data port in the distributor's register space, since they are written beside the distributor's own tables (descriptors 0x42..., 0x44... and 0x46...), and a read path is not used at start-up.

**Established** (the host's path, `irsaudit` 6.5.30m, `ge_host_reg_write` at 0x10039a14): the diagnostic writes the same kind of descriptor from the host through its ARM-space write routine (`PioWriteArm32`): ((register & 0x3ff) << 21) | 0x20 to ARM address 0x200600 (an engine port, r9 + 0x400), then the value to 0x200ac0 (the data port r9 + 0x8c0). The ARM's own address and data descriptors fit the same packing: 0x46a00020 and 0x46600020 are distributor register numbers 0x235 and 0x233 shifted left by 21 with 0x20. **Inferred:** the host reaches the engine registers only through the ARM's engine ports, either by the firmware or by the diagnostic writing those ports directly, and the descriptor's bits 30-21 name a distributor register. What the `value` column of kpm's register table means (a reset value, a test value or a mask) is **open question** ([open-questions.md](open-questions.md)).

## Reset and start-up

**Established** (`init`, `init_ge_board`, `init_ge`, `init_ged`; order as in [arm1_firmware.md](../ucode/arm1_firmware.md)).

1. `init_ge_config` and `init_ge_jtag` configure the engine boards through the boundary-scan chain: board id (`ge_board_id`, with `ungray`, **inferred** to undo a Gray-coded id) and chip registers (`jt_reg_write`). If the id is unreadable the firmware prints "GE board id broken - assuming BDSET_KONA".
2. `init_ged` programs the distributor: its program (1024 words), two tables and the handler table, then initial register values through descriptors 0x44... ([ucode/arm1.md](../ucode/arm1.md)).
3. `init_ge` downloads microcode. The firmware finds a file by its tag with `find_ucode` (tag 0x4593 here), then writes the address word 0x200000 + (the load address field of the file's table entry) with descriptor 0x46a00020, and three data words from the file with 0x46600020. Only three words are written, so it is **inferred** that this is a start-up stub and the engine fetches the rest of the program from external memory, which agrees with the 72-bit microcode port of the engine netlist ([ucode/ge_isa.md](../ucode/ge_isa.md)). Which file has tag 0x4593 is **unknown**.
4. It writes `DIAG_SEL`, sets `EXEC_GO`, writes the values 1 to 9, one at a time, to all engines (select 0x438, port 0x8c0), then sends the handler `gepc[152]`, `mgeb_GlobalInitialize`. Then it assigns each engine its identity with `mgesi_SetGeId`, runs `check_pipe_sync` (the engines' mailbox handshake) and calls `init_geBefAddrs`, `InitFogGlobal`, `initAALineTablesGlobal` and `InitFFTGlobal`, which send tables to the engines.
5. At address 0 the engine program starts at `HereWeGo`, two no-ops and a jump to `MemRegInit` (`bootinit.s`, [ucode/ge_isa.md](../ucode/ge_isa.md)); **inferred:** that is where the engine runs after reset and before the first command.

**open question** ([open-questions.md](open-questions.md)). How the host resets only the engines (`HH_RESET` clears the host interface and starts the ARM, [HIP.h](../HIP.h)); `arm_context_init` (token 0x1fd) and `arm_context_destroy` clear per-context state; this reading found no firmware path that pulses an engine reset.

## DMA

**Established** (register use in [arm1_firmware.md](../ucode/arm1_firmware.md)).

- **Host to engines.** Payload words reach the engines through the host-interface FIFO. A bulk copy sets a pass-through counter (0x200058 = (n - 1) | 0xc000000) so the hardware moves n words from the FIFO to the selected engines without ARM involvement, then the ARM sends a handler address (`load_broadcast_ge`, `load_singlecast_ge`, `load_broadcast_geEram`; handlers `mgeb_ContextLoadCram`, `mgeb_ContextLoadWram`, `mgeb_ContextLoadEram`).
- **Host memory to the FIFO.** `arm_do_idma` and `arm_context_load` program the input-DMA registers 0x200010-0x200020 from a page number and offset and start it; the data then arrive in the FIFO and are consumed as above. A list DMA (registers 0x200030-0x200040) moves FIFO words into the ARM's own memory (`store_data`, used for the context image; the `*_ldma` handlers use the same registers). [docs/hip.md](hip.md) has the host side.
- **Engines to host.** The engines send data back by running handlers named for the source: `mgesi_Cram2ODMA`, `mgesi_Eram2ODMA`, `mgesi_SR2ODMA` (special registers) and `mgesi_LastVertex2ODMA`, after the ARM has programmed the output-DMA address and length through the raster-board register bus (`start_rdata`). **Inferred** from the handler names and from `arm_pushattrib`, which calls `mgesi_StartRdata`, `mgesi_Eram2ODMA` and `mgesi_GetSpecial` in turn.

**Established** since: the engine-side output operation is the move into output port B = 9-11 ([ucode/ge_ops.md](../ucode/ge_ops.md#input-and-output-fifo-operations)), checked against the 172 words the IR diagnostic reads back by output DMA. **open question** ([open-questions.md](open-questions.md)): the bit meanings of the DMA registers 0x200010-0x200048.

## Context save and restore

**Established** (`arm_context_load` 0x0c02112c, `load_arm`, `store_data`).

CONTEXT_LOAD (token 0x1f9) has three payload words: the image length, a host address pair (high word, then low word) and the data. A low word of 0xffffffff means the image follows in the FIFO; otherwise the ARM programs the input-DMA registers (above) to fetch it. The image is a stream consumed in order:

1. a header of 0x52 words, copied into the ARM's `loadCtxMap` (0x04090724); its first word must equal the image length (otherwise "totalLength != ctxbytes" and the ARM spins);
2. records of three words starting at word 10 of the header: {content tag, length in words, a third word the loader does not read}, ending at a tag of 0;
3. for each record, `length` words of data from the stream, routed by the tag, then a final word 0xedededed (the loader prints "last word wrong" otherwise); at the end it writes 0x10000000 to 0x200058.

| Tag | Length checked | Where the data go |
|---|---|---|
| 0x10 | 7 | the ODMA register block to one engine, handler `mges_ContextLoadODMA` (slot 190). Message name "KONA_CTX_HIP_ODMAREGS" |
| 0x20 | 0x59 | the BEF shadow (89 words, layout in [rm.md](rm.md#the-89-word-register-shadow)) to one engine, handler `mges_ContextLoadBEF` (slot 187) |
| 0x41 | 0x200 | engine code RAM image to all engines, `mgeb_ContextLoadCram` (slot 130). Message name "KONA_CTX_GE_CRAM" |
| 0x42 | any | engine external RAM to all engines, `mgeb_ContextLoadEram` (slot 131) |
| 0x80 | any | engine work RAM to all engines, `mgeb_ContextLoadWram` (slot 134) |
| 0x40, 0x44, 0x100 | tag 0x100 requires length 0xff | copied into ARM-side save areas (`store_data`) |
| 0x200, 0x400-0x403 | | five ARM-side regions through `load_arm`, named by the firmware's messages `KONA_CTX_ARM_FAST`, `ARM_REGS`, `HIP_REGS`, `ARM_SDRAM` and `ARM_STACK`; which tag is which is **unknown**. `load_arm` checks a leading and a trailing tag word and, for the host-interface registers, re-installs `arm_context_activate` in the token map |
| `KONA_CTX_GED_REGS` | register count `GED_NUM_REGS` | the distributor's registers, with a message when the count disagrees; the tag value was not decoded |

The save side is `arm_context_deactivate` (token 0x1fc, [arm1.md](../ucode/arm1.md)): it stops the host interface, distributor and engines, runs `deactivate_ged_ge`, `deactivate_ged` and `deactivate_hip`, writes the engine slot 183 (`mges_ContextDeactGED`), 185 (`mgeb_ContextDeactReconfigureFifo`) and last 182 (`mges_ContextDeactFinish`). `arm_context_activate` (0x1fa) and `arm_context_mopup` (0x1f8) bring the saved state back and clean up; `arm_context_destroy` frees it. The host side of the same tokens, the 64 KB save area and the address pairs are in [kernel.md](kernel.md). **open question** ([open-questions.md](open-questions.md)): the order and size of the engine-state records in the saved image (the engines write them out in the `mges_ContextDeact*` handlers), the third word of each record, and which of the tags 0x200 and 0x400-0x403 is which ARM-side region. A dump of one saved image settles all three.

## Variable-length command grammars

How the host lays out a command whose length is not fixed, read from both ends: the libGLcore emitter (`libGLcore_n32.so`, IRIX 6.5.30m, `libglcore/asm/KONA/`) and the ARM firmware handler that consumes it (`arm1.u` 6.5.30m, [ucode/arm1.s](../ucode/arm1.s)). Word numbers count from 1 after the token word. Payload ports, as in [ucode/arm1_firmware.md](../ucode/arm1_firmware.md): `r9 + 0` reads the next word, `r9 + 0x3c` reads the last word of a command, `r9 + 0x40` reads a word without ending the command. The ARM's `r9` is 0x200200, so `r9 - 0x1a8` is the pass-through counter 0x200058, `r9 - 0x1f0` the input-DMA block 0x200010 and `r9 - 0x1d0` the list-DMA block 0x200030.

**Established: there is no generic length field.** Each variable command carries its own count in a header word, and the handler either moves the data with the pass-through counter (no ARM loop) or reads it word by word. Two counter forms occur: `n | 0x4000000`, where n is the exact number of words that follow (`arm_mapdata1d`, `arm_bitmap_dlist`, `arm_copylist_ldma`), and `(n - 1) | 0xc000000` after the handler has forwarded the first word itself (`load_broadcast_geEram`, `arm_usercopylist_ldma`). `SendPixelsToPipe` (0x0c028dd8) sets bit 27 (0x8000000) only for the last piece of a split image. **Inferred:** bit 26 starts the transfer and bit 27 marks that the counted words end the command; the hardware meaning of both bits is unknown: no shipped software reads them back.

### Pixel images: `HP_DRAWPIXELS`, `HP_DRAWTEXELS`, `HP_BITMAP`

**Established** (`arm_drawpixels` 0x0c02b9ec, `arm_drawtexels` 0x0c02b7a8, `arm_bitmap` 0x0c02b4c0; emitters `DoDrawPixelsOrTexels` and `__glkonim_Bitmap` in `kon_pixel.s`). A fixed header, then the image. The firmware stores the header into its pixel descriptor at ARM address 0x900:

| Word: pixels | texels | bitmap | Firmware slot | Meaning |
|---|---|---|---|---|
| | 1 | | not stored | GL target: 0xde0 (1D) clears the descriptor's +0x134 and +0x260, 0xde1 (2D) copies a context word into them, anything else stores 1 |
| 1 | 2 | 1 | +0x00 | width in pixels |
| 2 | 3 | 2 | +0x04 | height |
| 3 | 4 | | +0x1c | format code: `ParseHostImage` indexes `numCompInPixTable` (components per pixel) with it |
| 4 | 5 | | +0x14 | type code: `numByteInTypeTable` gives bytes per component; code 7 is the one-bit bitmap type, which `arm_bitmap` forces |
| 5 | 6 | 3 | +0x4c | byte offset of the image within its first word (the host pointer & 3) |
| 6 | 7 | 4 | +0x50 | data by DMA: 0 = the image follows in this command, nonzero = it arrives by a later `HP_DO_IDMA` |
| 7 | 8 | 5 | +0x54 | row mode: 0 = the image is one byte stream, 1 = every row starts on a word boundary |
| 8 | 9 | | +0x78 | pixels: the first column of this piece (`DrawPixels` splits wide images); texels: 0 |
| | 10 | | +0x7c | texel format id, [below](#the-texel-format-id) |
| | 11-20 | | +0x80-0xa4 | load id and texture-memory placement ([RM.h](../RM.h) DRAWTEXELS table); `SetupSubtexload` (0x0c034288) sends word 17 as the size register (descriptor 0x41437fc1), word 18 as the miscellaneous register (0x41407fc5), word 12 with word 16 in the high half to raster register 0x7fc3, and words 14 and 15 packed the same way (0x41447fc4); word 11 indexes the firmware's `tex_cache` |
| | | 6-9 | ARM 0xc4c-0xc58 | four floats; **inferred** the GL bitmap origin and move (x origin, y origin, x move, y move), from the order `__glkonim_Bitmap` stores its double arguments |

The last header word is read through `r9 + 0x3c` when the DMA word is nonzero (the command ends there) and through `r9 + 0x40` when it is zero (the image follows). `arm_bitmap` also ends the command at word 9 when width or height is 0, after sending words 6-9 to the engine alone: `__glkonim_Bitmap` sends exactly that form for an empty bitmap (token 6, five zero words, four floats), so an empty bitmap only moves the raster position.

**Established: the inline image length is computed, not sent** (`ParseHostImage` 0x0c027420, `NumWordToPipe` 0x0c028e7c). The firmware applies the current unpack state, which a pointer at descriptor +0xb4 locates: row length (0 means the width), skip rows, skip pixels and alignment (`mod1248Table`). With bytes per pixel p (components x bytes per component, or the type's own size for packed types), or one bit for the bitmap type:

- row bytes r = row length x p, or (row length + 7) / 8 for bitmaps;
- stride s = r rounded up to the alignment, and pad = s - r;
- total T = s x height - pad (the last row is not padded);
- start S = word 5's byte offset + skip rows x s + skip pixels x p (for bitmaps, skip pixels / 8).

Row mode 0: the image is `ceil((S + T) / 4) - floor(S / 4)` words. Row mode 1: each row is counted on its own, as the words spanning bytes [S + i x s, S + i x s + width x p) for i = 0-3, and the total is (height / 4) x (the four counts summed) + the first (height mod 4) counts. The hardware moves that many words to the engines through the pass-through counter; the ARM does not read them.

**Established: the DMA form** (`SendPixelsToPipe`; `arm_do_idma` 0x0c022df4, lines 0x0c023264-0x0c023290). With the DMA word set, the pixel handler starts no transfer; it stores its end routine (`BitmapEndStream`, or entry 4 of the draw-path record) in context word +0x73c and returns. The next `HP_DO_IDMA` fetches the image from host memory into the FIFO and, when it completes, calls the routine at +0x73c and clears it. libGLcore's `__glKonSendData` (0x0d950970) is the other side: when the descriptor's +180 word (header word 6 or 7) is 0 it stores the image through `__glkon_datavn`; otherwise it passes it to the kernel with ioctl 10001 (`KONA_DMAWRITE`), whose argument block names the DMA command.

The other image commands share this tail through `ParseHostImage` and `SendPixelsToPipe`, each with its own header: `HP_COLORTABLE` (9 header words, `arm_colortable` 0x0c03e128), `HP_CONVOLUTIONFILTER1D` (7, 0x0c036c44), `HP_CONVOLUTIONFILTER2D` (8, 0x0c036d78), `HP_SEPARABLEFILTER2D` (9, 0x0c037150) and `HP_POLYGONSTIPPLE` (3, 0x0c02c7bc; the 32 x 32 stipple then follows as an image). In each the last header word is read through `r9 + 0x3c` or `r9 + 0x40` according to a flag word, as for the pixel commands. Each emitter in `kon_colortable.s` and `kon_convolve.s` ends its header with a call to `__glKonSendData`. What each of their header words means beyond the shared image fields is **unknown**: the handlers copy them into the descriptor and no route traced here names them.

### Bitmaps in display lists: `HP_BITMAP_DLIST`

**Established** (`arm_bitmap_dlist` 0x0c02b590; `__glkonim_Bitmap` compile path, `kon_pixel.s` 0x0d953fa8 onward). Words: 1 width rounded up to a multiple of 8, 2 height, 3 and 4 the x and y origin, 5 and 6 x origin plus x move and y origin plus y move, 7 the number of words that follow (image words + 1), 8 the image size in bytes, then the image packed with no padding (`__glFillImage`). The firmware reads word 7 through `r9 + 0x40` and hands exactly that many words to the engines with the pass-through counter.

### Pixel maps: `HP_PIXELMAPFV`, `HP_PIXELMAPUIV`, `HP_PIXELMAPUSV`

**Established** (`do_pixelmap` in `kon_colortable.s` and in `arm1.u` at 0x0c03e420, `snarf_pixelmap` 0x0c03e3f4). Four header words: the map enumerant, the size n, n - 1 as a float, and a fourth word from the caller's state; then n values, one per word: floats for FV, words for UIV, and for USV each 16-bit value zero-extended into a word. The firmware reads the n values one at a time and ends on the last.

### Evaluators: `HP_MAPDATA1D`, `HP_MAPDATA2D`, `HP_MAPSPEC1D`, `HP_MAPSPEC2D`, `HP_EVALSTRIP1D`, `HP_EVALSTRIP2D`

**Established** (`__glKonSendMapData1D` 0x0d97dc10, `__glKonSendMapData2D` 0x0d97dcc0, `__glKonSendMapSpec*` in `kon_eval.s`; `arm_mapdata1d` 0x0c03dc68, `arm_mapdata2d` 0x0c03dca0, `arm_evalstrip1d` 0x0c03dd58, `arm_evalstrip2d` 0x0c03dcd4).

- `HP_MAPDATA1D`: word 1 = n + 5, then the map number x 4, three floats (the map's domain and order fields at +20, +24, +28 of the map record), n, and n floats of control points. The firmware reads word 1, selects all engines, moves exactly word 1 words to them with the pass-through counter and sends one engine handler; it parses nothing itself.
- `HP_MAPDATA2D`: the same with word 1 = n + 8 and six floats before n.
- `HP_MAPSPEC1D`: two words (the record's +4 or +8 word, and its +44 word x 4), or two zeros for no map. `HP_MAPSPEC2D`: four words (+8, +12, +4, +44 x 4), or four zeros.
- `HP_EVALSTRIP1D`: 3 words. `HP_EVALSTRIP2D`: 6 words. Both fixed; the firmware forwards them to the engine behind a descriptor, then writes 12 zero words to another engine port.

### Display lists: the `*LIST*` commands

**Established** (`arm1.u` 0x0c014dd8-0x0c0151fc; emitters in `kon_dlist.s`). Lists live in a list memory the firmware addresses from a base (ARM word 0xce8) or in the DMA pool set by `HP_DMAPOOL_SETUP` ([hip.md](hip.md)). All addresses below are offsets from those bases.

| Token | Words | Layout | Data path |
|---|---|---|---|
| `HP_COPYLIST_LDMA` (0x16c) | 2 + n | list address, byte length L, then L / 4 words of list | the FIFO words go to list memory by list DMA; when bit 2 of L is set the ARM writes one zero pad word, so lists occupy whole 8-byte units |
| `HP_IDMACOPYLIST_LDMA` (0x1c8) | 2 | list address, byte length | the same copy, with the data delivered by the command that follows (the handler jumps straight to the next token's handler); libGLcore sends it through ioctl 10001 (`__glSdramCopyIn`) |
| `HP_USERCOPYLIST_LDMA` (0x167) | 4 | list address, pool offset (page << 12 \| offset), byte length, a fourth word the firmware reads and drops (libGLcore sends 0) | input DMA from the pool into the FIFO, list DMA from the FIFO into list memory; length rounded up to 8 bytes, pad word 0xf001f001 |
| `HP_MOVELIST_LDMA` (0x16f) | 3 | two list addresses and a length | a copy inside list memory (routine at 0x0c0400e4). libGLcore's `__glSdramMemmove` passes (destination, source, length) |
| `HP_EXECLIST_LDMA` (0x16d) | 2 | list address, length in words | list DMA from list memory into the command stream, mode 2 |
| `HP_EXECLIST_LDMA_N` (0x170) | 1 + 2k | k, then k pairs (address, length in words) | as above, k lists in turn; libGLcore's `__glKonExecuteLDMAn` never sends more than 8 pairs per command |
| `HP_EXECLIST_IDMA` (0x16e) | 2 | pool offset, length in words | input DMA from the pool, mode 1; the firmware prints a warning when offset + length passes the pool's end but still runs it |
| `HP_EXECLIST_IDMA_N` (0x171) | 1 + 2k | k, then k pairs | as above; at most 4 pairs per command (`__glKonExecuteIDMAn`) |

The executed list itself is ordinary command stream: tokens and payloads as everywhere else.

### Vertex arrays: `HP_VARRAY_SET_CMDS`, `HP_VARRAY_BGN_LOOP` and the 32 loop tokens

**Established** (`arm_varray_set_cmds` 0x0c039950, `varray_build_command` 0x0c0395fc, `varray_set_cmd_table` 0x0c039884, `arm_varray_bgn_loop` 0x0c0399c4; emitter `update_cmpnd_cmd` in `kon_vertarray.s`).

`HP_VARRAY_SET_CMDS` has one word, a key describing the enabled arrays (libGLcore sends the AND of two context words). `varray_build_command` decodes it:

| Key bits | Field |
|---|---|
| 0-3, 4-7 | vertex type, vertex component count |
| 8-11 | normal type (three components) |
| 12-15, 16-19 | colour type, colour component count |
| 20-23, 24-26 | texture-coordinate type, component count |
| 27 | edge flag |
| 28-31 | colour-index type |

For each present attribute it takes the token-map entry of the matching immediate-mode token (from `normal_table`, `color_table`, `tex_coord_table`, `index_table`, `vertex_table`, or `EDGEFLAG`), replaces its count and size bits from `wordCountTable`, `lastWrdTable` and `byteCmpTable`, and sets the chain bit (bit 3). The attribute order is normal, colour, texture coordinate, index, edge flag, vertex. Up to 8 built sets are cached by key (`varray_lru`). `varray_set_cmd_table` then sets the chain bit on `HP_VARRAY_BGN_LOOP`'s own map entry and writes the attribute entries, repeated 32 / k times for k attributes, into the hardware map slots of `HP_VARRAY_LOOP00` onward (0x183-0x1a2), clearing the chain bit on the last.

`HP_VARRAY_BGN_LOOP` has three words, the vertex count first. The handler writes 0x183 to 0x200070 and ceil(count / (32 / k)) to 0x200074. **Inferred:** a chained map entry tells the hardware that the next payload words belong to the following map slot without a token word, so after `HP_VARRAY_BGN_LOOP` the vertex data arrive as bare attribute payloads in key order, and 0x200070 and 0x200074 make the hardware restart the walk at slot 0x183 that many times. The other two words are read and dropped. `HP_VARRAY_SETUP` and `HP_VARRAY_UNSETUP` are one word each. The meaning of the type codes in the key and the values in the three tables are **unknown**: the tables were not dumped for this page.

### Context, query and other long commands

Covered elsewhere: `HP_CONTEXT_LOAD` (the context image, [above](#context-save-and-restore)), the display-generator command `HP_VIDEO_CMD` (count from `DGDispatchTable`, [ucode/arm1_firmware.md](../ucode/arm1_firmware.md)) and the X server's `HP_X_LOADCURSOR` ([opengl.md](opengl.md)).

### The texel format id

**Established** (`arm_drawtexels` 0x0c02b7a8-0x0c02b8c8, `drawtexels` 0x0c02b8cc, `ResolveDrawPath` 0x0c0284cc, `commonResolve` 0x0c027714, lines 0x0c027a30-0x0c027a78). `HP_DRAWTEXELS` word 10 lands at descriptor +0x7c. `drawtexels` compares it with the id it last used (+0x384); on a change it stores the new id and sets bit 7 of the descriptor's dirty word (+0xc), which makes it call `ResolveDrawPath`. That passes the address of word 9 to `commonResolve`, which for a texel draw (descriptor flags word 0x81: neither the host-format bit 0x20 nor the framebuffer bit 0x40 set) reads the word after it, the format id, and uses it as a row number:

- id below 20 (0x14): row id of the A tables, which have 17 rows (0-16);
- id 20 or more: row id / 4 of the B tables, which have 21 rows (ids 20-83).

So the id is a table row number in two scales, not a size or a bit count: ids 0-16 count in ones and the larger ids are multiples of four. The ids `subloadLevel` sends are 8, 12-16 (A) and 20, 40, 48, 56, 80 (B rows 5, 10, 12, 14, 20); for the dual and quad groups it sends 8 or 16 rather than the table's own ids 0-6 ([RM.h](../RM.h)). A rows 0-6 and B rows 6, 8 and 16 (ids 24, 32, 64) are filled, but no word-10 value traced in libGLcore selects them.

Each row gives a destination signature (`TexFmt2DstSignatureA/B`, four 4-bit fields), the raster-bus format code (`TexFmt2TbusTableA/B`, sent in the path setup), a second bus code (`TexFmt2RbusTableA/B`), a no-alpha flag (`TexFmt2NoAlphaInpA/B`) and, for A, `TexFmt2MayInp1CmpA`. Read from the image (read-write data, file offset 0x80 + 0x40248 + address - 0x04040260):

| Id | Libgl formats ([RM.h](../RM.h)) | Signature | Tbus | Rbus | No alpha |
|---|---|---|---|---|---|
| 0, 1, 2 | quad-group table ids (not sent as word 10) | 0xf, 0xf000, 0xf | 0x12, 0x13, 0x12 | 5 | 1, 0, 1 |
| 3 | 0x811c-0x811d table id (not sent) | 0xf00f | 0x14 | 0 | 0 |
| 4, 5, 6 | dual-group table ids (not sent) | 0xf, 0xf000, 0xf | 0x15, 0x8, 0x15 | 5 | 1, 0, 1 |
| 8 | LUMINANCE_ALPHA (8/8, 6/2); every dual format | 0xf00f | 0x8 | 0 | 0 |
| 12 | LUMINANCE12_ALPHA4 | 0xf00f | 0x16 | 1 | 0 |
| 13 | LUMINANCE and sized forms, DEPTH_COMPONENT forms | 0xf | 0x9 | 5 | 1 |
| 14 | ALPHA | 0xf000 | 0x17 | 5 | 0 |
| 15 | INTENSITY | 0xf | 0x9 | 5 | 1 |
| 16 | RGB2, RGBA2, R3_G3_B2, RGB4, RGBA4; every quad format and 0x811c-0x811d | 0xffff | 0x5 | 4 | 0 |
| 20 | RGB5, RGB5_A1 | 0xffff | 0x6 | 3 | 0 |
| 24 | (none) | 0xfff | 0x7 | 2 | 1 |
| 32 | (none) | 0xf00f | 0x3 | 6 | 0 |
| 40 | LUMINANCE12_ALPHA12, LUMINANCE16_ALPHA16 | 0xf00f | 0x3 | 6 | 0 |
| 48 | RGB8, RGBA8, RGB, RGBA | 0xffff | 0x1 | 7 | 0 |
| 56 | RGB10, RGB10_A2 | 0xffff | 0x2 | 8 | 0 |
| 64 | (none) | 0xfff | 0x0 | 9 | 1 |
| 80 | RGB12, RGB16, RGBA12, RGBA16 | 0xffff | 0x0 | 9 | 0 |

**Inferred:** the signature's low field is red (or luminance) and its high field alpha. `HostFmt2DstSignature`, indexed by the host format code, gives 0xf, 0xf0, 0xf00, 0xf000 for its first four codes, and the alpha-only id 14 has only the high field while the luminance id 13 has only the low one. That also answers why luminance and depth share id 13: both load as one component in the low field with the same bus code 0x9. Whether id 13 depth texels are stored the same way as luminance texels inside texture memory is **unknown: no shipped software or published source read so far depends on it**; the firmware gives them one path.
