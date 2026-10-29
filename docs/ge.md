# Geometry engines as the ARM firmware drives them

What the ARM firmware (`arm1.u`, IRIX 6.5.30m, [ucode/arm1_firmware.md](../ucode/arm1_firmware.md)) does to start, feed and save the geometry engines. The engine program is covered in [ucode/ge.md](../ucode/ge.md), [ucode/ge_isa.md](../ucode/ge_isa.md) and [ucode/ge_ops.md](../ucode/ge_ops.md); the register list is in [GE.h](../GE.h). Facts are labelled **established** (read from the firmware at the function named), **inferred** (with the reasoning) or **unknown**.

## Registers: the ARM's path to them

**Established.** `init_ge` (0x0c0032e4) reaches the engine registers of [GE.h](../GE.h) (0x40000-0x40038) with two descriptor words: 0x46a00020 followed by the register address, and 0x46600020 followed by the value, both through the data port r9 + 0x8c0 ([arm1_firmware.md](../ucode/arm1_firmware.md)). The writes it makes, in order: 0x40038 (`OFIFO_CONTROL`) = 0x8e0; 0x40018 (`CM/Ofifo TAG`) = a value the code computes from the board id; per-engine writes whose address and value are registers (`ungray` and `ge_board_id` feed them); 0x40010 (`DIAG_SEL`) = 0x100; 0x40000 (`EXECUTION_CONTROL`) = 1 twice, which is `EXEC_GO` (bit 0). **Inferred:** the two descriptors are an address port and a data port in the distributor's register space, since they are written beside the distributor's own tables (descriptors 0x42..., 0x44... and 0x46...), and a read path is not used at start-up.

**Established** (the host's path, `irsaudit` 6.5.30m, `ge_host_reg_write` at 0x10039a14): the diagnostic writes the same kind of descriptor from the host through its ARM-space write routine (`PioWriteArm32`): ((register & 0x3ff) << 21) | 0x20 to ARM address 0x200600 (an engine port, r9 + 0x400), then the value to 0x200ac0 (the data port r9 + 0x8c0). The ARM's own address and data descriptors fit the same packing: 0x46a00020 and 0x46600020 are distributor register numbers 0x235 and 0x233 shifted left by 21 with 0x20. **Inferred:** the host reaches the engine registers only through the ARM's engine ports, either by the firmware or by the diagnostic writing those ports directly, and the descriptor's bits 30-21 name a distributor register. **Established** (by comparing the columns of [diags/kpm/ge_registers.tsv](../diags/kpm/ge_registers.tsv)): the `value` column of kpm's register table restates each field's position, not a reset or test value. It equals the mask for 29 of the 49 fields and the shift for 19; `GE11_ENABMSK_B` alone has 0 against shift 4, and every register record has 0.

## Reset and start-up

**Established** (`init`, `init_ge_board`, `init_ge`, `init_ged`; order as in [arm1_firmware.md](../ucode/arm1_firmware.md)).

1. `init_ge_config` and `init_ge_jtag` configure the engine boards through the boundary-scan chain: board id (`ge_board_id`, with `ungray`, **inferred** to undo a Gray-coded id) and chip registers (`jt_reg_write`). If the id is unreadable the firmware prints "GE board id broken - assuming BDSET_KONA".
2. `init_ged` programs the distributor: its program (1024 words), two tables and the handler table, then initial register values through descriptors 0x44... ([ucode/arm1.md](../ucode/arm1.md)).
3. `init_ge` at 0x0c0032e4 (`arm1.u`) has a microcode download that the shipped image skips. **Established** (`arm1.u` 0x0c003448-0x0c00355c): when the data word `backdoor_ge_loading` (0x0404026c) is zero, it loops over every file record whose tag is 0x4593 (`calls` `find_ucode`), writes the address word 0x200000 + the record's load address with descriptor 0x46a00020 and then every word of the file (count from record +0xc) with 0x46600020, and afterwards rewrites the first three words of the first such file at its load address. When the word is nonzero, as the image initialises it (1) and no store changes it, the branch at 0x0c003454 skips both, so the shipped firmware sends no engine microcode itself. **Inferred:** the host stages the engine program before start-up ([arm1_functions.md](../ucode/arm1_functions.md)), and tag 0x4593 is the high half of `ge11.u`'s magic 0x45930003 ([ucode/ge.md](../ucode/ge.md); `ge.u` has 0x4590, `ged1b.u` 0x4591), the file-table tag the host loader records.
4. It writes `DIAG_SEL`, sets `EXEC_GO`, writes the values 1 to 9, one at a time, to all engines (select 0x438, port 0x8c0), then sends the handler `gepc[152]`, `mgeb_GlobalInitialize`. Then it assigns each engine its identity with `mgesi_SetGeId`, runs `check_pipe_sync` (the engines' mailbox handshake) and calls `init_geBefAddrs`, `InitFogGlobal`, `initAALineTablesGlobal` and `InitFFTGlobal`, which send tables to the engines.
5. At address 0 the engine program starts at `HereWeGo`, two no-ops and a jump to `MemRegInit` (`bootinit.s`, [ucode/ge_isa.md](../ucode/ge_isa.md)); **inferred:** that is where the engine runs after reset and before the first command.

**No engine-only reset in the shipped software.** `HH_RESET` clears the host interface and starts the ARM ([HIP.h](../HIP.h)); `arm_context_init` (token 0x1fd) and `arm_context_destroy` clear per-context state. Routes tried for a reset that touches only the engines, all IRIX 6.5.30m: the firmware's start-up and reset paths (`init_ge` writes `OFIFO_CONTROL`, `CM/Ofifo TAG`, `DIAG_SEL` and `EXEC_GO`, nothing else); the kpm field list of `EXECUTION_CONTROL` (`GO`, `SSTEP`, `BPSET`, `BPSTALL`, `UCLAT`, `INVAL`, no reset bit); `irsaudit` `ResetKona` (0x100388e0), which only prints an abort message; `TEST_rm_reset` (0x100ff7d0), which writes ARM-space registers; and the diagnostic's engine-register writers `TEST_geucode` and `TEST_verify_ge11ucode`, which reach distributor registers 0x233-0x236 to load microcode. **Inferred:** the engines are restarted only by reloading their program and setting `EXEC_GO` again, as start-up does. Their register and memory state after a reset: unknown: no shipped software or published source depends on it, because start-up rewrites what it uses.

## DMA

**Established** (register use in [arm1_firmware.md](../ucode/arm1_firmware.md)).

- **Host to engines.** Payload words reach the engines through the host-interface FIFO. A bulk copy sets a pass-through counter (0x200058 = (n - 1) | 0xc000000) so the hardware moves n words from the FIFO to the selected engines without ARM involvement, then the ARM sends a handler address (`load_broadcast_ge`, `load_singlecast_ge`, `load_broadcast_geEram`; handlers `mgeb_ContextLoadCram`, `mgeb_ContextLoadWram`, `mgeb_ContextLoadEram`).
- **Host memory to the FIFO.** `arm_do_idma` and `arm_context_load` program the input-DMA registers 0x200010-0x200020 from a page number and offset and start it; the data then arrive in the FIFO and are consumed as above. A list DMA (registers 0x200030-0x200040) moves FIFO words into the ARM's own memory (`store_data`, used for the context image; the `*_ldma` handlers use the same registers). [docs/hip.md](hip.md) has the host side.
- **Engines to host.** The engines send data back by running handlers named for the source: `mgesi_Cram2ODMA`, `mgesi_Eram2ODMA`, `mgesi_SR2ODMA` (special registers) and `mgesi_LastVertex2ODMA`, after the ARM has programmed the output-DMA address and length through the raster-board register bus (`start_rdata`). **Inferred** from the handler names and from `arm_pushattrib`, which calls `mgesi_StartRdata`, `mgesi_Eram2ODMA` and `mgesi_GetSpecial` in turn.

**Established** since: the engine-side output operation is the move into output port B = 9-11 ([ucode/ge_ops.md](../ucode/ge_ops.md#input-and-output-fifo-operations)), checked against the 172 words the IR diagnostic reads back by output DMA. ### The DMA registers' bits

What is read, by register, is in [arm1_firmware.md](../ucode/arm1_firmware.md#control-and-status-registers) (firmware value flow) and [hip.md](hip.md#what-the-ir-diagnostic-shows-of-the-host-interface) (the IR diagnostic's register table, masks and command-queue test). In short: input DMA takes a page number (0x200010, 29 bits), a page offset (0x200014, 12 bits on HIP1, 17 on HIP2), a byte count (0x200018) and a start write (0x20001c) into a 16-entry command queue; 0x200020 is the mode (2 in the firmware, 1 in the diagnostic, which makes the queue readable at 0x200028); 0x200024 reports queue empty (bit 0), queue full (bit 1), transfer complete (bit 2) and a queue level in bits 14-18. List DMA takes a pipe-memory address (0x200030, bits 25-3), a byte count (0x200034) and a start write (0x200038), reports completion in bit 2 of 0x200040, and 0x200048 bit 0 steers the input stream into the list-DMA writer for a write into pipe memory.

**Established** since (`deact_section` 0x0c021f7c and `store_data` 0x0c020cd4). The list DMA also runs the other way, from ARM memory into the engines' input stream: `deact_section` writes 0x200030 = address, 0x200034 = bytes, 0x200038 = 0, 0x200064 = 2, then the pass-through count 0x200058 = n \| 0xc000000, and waits for bit 2 of 0x200040. `store_data` sets the pipe-memory address with bit 26 set (0x4000000 \| address), 0x200048 = 1, and the same count and pass-through words. **Inferred:** bit 26 of 0x200030 selects the write direction (stream into ARM memory) and its absence the read direction (ARM memory into the stream); the mask 0x3fffff8 the diagnostic gives the register excludes it, so the bit may be a strobe not kept in the register.

The data of the start writes (0x20001c: 0, 1 or 0xbeefface; 0x200038: 0, 0xdeadbeef or a return address; 0x20004c) vary between writers, so nothing depends on them. unknown: no shipped software or published source depends on the data of the three start writes, on 0x200020 values 0 and 3, on 0x200024 bits other than 0-2 and 14-18, on 0x200040 bits other than 2, or on the width of 0x200034. Routes tried: every firmware writer and reader of 0x200010-0x20004c (`arm1.u` 6.5.30m);

## Engine events

Source: `arm1.u` (IRIX 6.5.30m, [ucode/arm1.s](../ucode/arm1.s)). Labels as above.

**Established.** The event record the kernel reads in `kona_ge_intr` ([hip.md](hip.md)) is written by `start_kcomm` (0x0c022800) and `finish_kcomm` (0x0c022980), and only four ARM handlers call `start_kcomm`. Each passes a word of its own command's payload as the event code:

| Handler | Token | Code passed |
|---|---|---|
| `arm_ge_intr` (0x0c022cfc) | `GE_INTR` 0x1dd | the last payload word (`[r9, #0x3c]`); refused unless the command came through the privileged stream (bit 2 of 0x200060) |
| `arm_finish_selectfeed` (0x0c022c44) | `FINISH_SELECTFEED` 0x1f6 | the first payload word (`[r9, #0x0]`), 256 from the kernel |
| `arm_mem_suspend` | `MEM_SUSPEND` 0x1df | the last payload word, 0x104 from the kernel |
| `arm_context_mopup` (0x0c02226c) | `CONTEXT_MOPUP` 0x1f8 | the last payload word |

The `MEM_SWAPIN` and `MEM_SWAPOUT` trailing word 0x102 is the same kind of host-chosen code ([kernel.md](kernel.md)), and so is the check-pipe answer 0x105, which `kona_checkpipe` asks for with `GE_INTR`. **Inferred:** for these codes no engine-side condition picks the value. The host names the code in the command, and the event is raised when the ARM reaches that command in stream order, after everything queued before it.

**Established** (`ge.u`, [ctx_deact.S listing](../ucode/ge_listing/ctx_deact.S.lst)). Code 0x101, context deactivate done, has no ARM sender. The engine program's `mges_ContextDeactFinish`, the slot `arm_context_deactivate` sends last, loads the constant 0x101 at 0x6831. That load sits among raster-bus writes to 0x463 and 0x462, the second output-DMA channel's length registers ([rm.md](rm.md#host-interface-registers-on-the-raster-bus)). **Inferred:** the engines write the 0x101 record themselves through that channel when the save is finished.

Code 0, a text print request, has no writer found in `arm1.u` or `ge.u`: no `start_kcomm` caller passes it, and `finish_kcomm` has only the four callers above. unknown: no shipped software or published source depends on which pipe program sends it beyond the kernel's print handler. Routes tried: the callers of `start_kcomm` and `finish_kcomm` in `arm1.u` and the search of `ge.u` described above.

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
| 0x40, 0x44 | any | copied by `store_data` into the ARM-side save areas that `saved_regs_mem` + 0x8c and + 0x88 point to (0x44 with a busy flag at + 0xa8 set to -1 during the copy) |
| 0x100 | 0xff | the distributor's 255 registers, copied by `store_data` to the area at `saved_regs_mem` + 0x84; a wrong length prints the `KONA_CTX_GED_REGS` register-count alert with `GED_NUM_REGS` = 255 (the branch at 0x0c0214e8) |
| 0x200, 0x400-0x403 | data length + 8 | five ARM-side regions through `load_arm` ([below](#the-arm-side-sections)) |

The save side is `arm_context_deactivate` (token 0x1fc, [arm1.md](../ucode/arm1.md)): it stops the host interface, distributor and engines, runs `deactivate_ged_ge`, `deactivate_ged` and `deactivate_hip`, writes the engine slot 183 (`mges_ContextDeactGED`), 185 (`mgeb_ContextDeactReconfigureFifo`) and last 182 (`mges_ContextDeactFinish`). `arm_context_activate` (0x1fa) and `arm_context_mopup` (0x1f8) bring the saved state back and clean up; `arm_context_destroy` frees it. The host side of the same tokens, the 64 KB save area and the address pairs are in [kernel.md](kernel.md).

### The ARM-side sections

**Established** (`deactivate_arm` 0x0c02209c, `deact_section` 0x0c021f7c, `load_arm` 0x0c020dd4, `arm1.u` 6.5.30m). The save and load sides use the same five tags, and each tag's load branch prints its own region name when the length disagrees:

| Tag | Region (load-side message) | Data words | ARM source and destination |
|---|---|---|---|
| 0x200 | `KONA_CTX_HIP_REGS` | 10 | the host-interface register block `deactivate_hip` fills (the save area that `saved_regs_mem` + 0x98 points to): token-map, loop and pass-through state. On load the block is put back and `arm_context_activate` is re-installed in the token map at the entry the block names (word 6) |
| 0x400 | `KONA_CTX_ARM_FAST` | 0x2ca | the ARM's state block at r8 + 0x1cc |
| 0x401 | `KONA_CTX_ARM_SDRAM` | 0x44a | the block the pointer at r8 + 0xcf4 names (the texture records, [arm1_functions.md](../ucode/arm1_functions.md)) |
| 0x403 | `KONA_CTX_ARM_REGS` | 0x11 | the saved processor registers (`saved_regs_mem` + 0x94); written only when bit 0 of the saved host-interface block's first word is set |
| 0x402 | `KONA_CTX_ARM_STACK` | 0x400 - i | the live part of a 0x400-word stack, from word i = (saved register word 13 & 0xfe0) / 4 to the top; same condition as 0x403 |

The save order is 0x200, 0x400, 0x401, then 0x403 and 0x402. Each section goes to the engines as a stream: the tag, a flag word (3 on the last chunk, 0 before it), four marker words of tag \| tag << 16 on the first chunk, the data in chunks of at most 0x1f8 words, four marker words again on the last chunk, then the engine slot 184 (`mges_ContextDeactSection`), which writes it out. Data above ARM address 0x1000 travel by list DMA (0x200030 address, 0x200034 bytes, 0x200038 start, 0x200064 = 2, pass-through count 0x200058 = n \| 0xc000000, then a wait for bit 2 of 0x200040); lower addresses are copied word by word. `load_arm` checks four leading and four trailing marker words and expects the record length to be the data length plus 8, so in the saved image a section record's length counts its eight marker words.

### The engine-side records

**Inferred** (`mges_ContextDeactivate`, `ge.u` 0x68da, [ctx_deact.S listing](../ucode/ge_listing/ctx_deact.S.lst), read in source-line order). The handler that saves engine state loads a (length, tag) constant pair into staging registers 0xe and 0xf once per section, at a single source line each, next to the copy loop or the jump into the copy subroutine (`mEramToFifo`, `mCramToFifo`, `mWramToFifo`) for that state:

| Source line | Tag | Length | Matches the loader's check |
|---|---|---|---|
| 342 | 0x10 | 7 | yes (`KONA_CTX_HIP_ODMAREGS`, 7) |
| 387 | 0x20 | 0x59 | yes (BEF shadow, 0x59) |
| 438 | 0x40 | 0x24 | the loader takes any length |
| 481 | 0x42 | 0xeb5 | the loader takes any length |
| 508 | 0x41 | 0x200 | yes (code RAM, 0x200) |
| 513 | 0x80 | from a register | the loader takes any length |
| 550 | 0x44 | from a register | the loader takes any length |

The three constants the loader checks all match, which is the basis for reading the pairs as the record descriptors. **Inferred:** the engine records come in that order, before the ARM sections, which `arm_context_deactivate` sends after `deactivate_ge` and `deactivate_ged`. The tag 0x100 record (the distributor's 255 registers) has no constant pair in this handler. **Inferred:** it is written by `mges_ContextDeactGED` (slot 183), the distributor save handler `arm_context_deactivate` sends; that handler's 21 words were not traced.

**The third record word.** No constant is loaded for it next to any (length, tag) pair, and `arm_context_load` skips it. **Inferred:** a value computed at save time, such as the record's position in the image. unknown: no shipped software or published source depends on it. Routes tried: the loader `arm_context_load`, `load_arm`, `store_data` (none reads it); the save side `deactivate_arm`, `deact_section` (the ARM sends no third word); the engine constant loads in `ctx_deact.S`; the kernel, which treats the image as opaque (`KONApcxswap`, [kernel.md](kernel.md)).

## Variable-length command grammars

How the host lays out a command whose length is not fixed, read from both ends: the libGLcore emitter (`libGLcore_n32.so`, IRIX 6.5.30m, `libglcore/asm/KONA/`) and the ARM firmware handler that consumes it (`arm1.u` 6.5.30m, [ucode/arm1.s](../ucode/arm1.s)). Word numbers count from 1 after the token word. Payload ports, as in [ucode/arm1_firmware.md](../ucode/arm1_firmware.md): `r9 + 0` reads the next word, `r9 + 0x3c` reads the last word of a command, `r9 + 0x40` reads a word without ending the command. The ARM's `r9` is 0x200200, so `r9 - 0x1a8` is the pass-through counter 0x200058, `r9 - 0x1f0` the input-DMA block 0x200010 and `r9 - 0x1d0` the list-DMA block 0x200030.

**Established: there is no generic length field.** Each variable command carries its own count in a header word, and the handler either moves the data with the pass-through counter (no ARM loop) or reads it word by word. Two counter forms occur: `n | 0x4000000`, where n is the exact number of words that follow (`arm_mapdata1d`, `arm_bitmap_dlist`), and `(n - 1) | 0xc000000` after the handler has forwarded the first word itself (`load_broadcast_geEram`). The list-copy handlers differ: `arm_copylist_ldma` (0x0c014e24) writes the plain word count L / 4 to the counter and puts 0x4000000 on the list address it stores at 0x200030, and `arm_usercopylist_ldma` (0x0c014f34) writes L / 4 | 0xc000000, with no minus one, and also flags its list address with 0x4000000. `SendPixelsToPipe` (0x0c028dd8) sets bit 27 (0x8000000) only for the last piece of a split image. **Inferred:** bit 26 starts the transfer and bit 27 marks that the counted words end the command; the hardware meaning of both bits is unknown: no shipped software reads them back.

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

The other image commands share this tail through `ParseHostImage` and `SendPixelsToPipe`, each with its own header: `HP_COLORTABLE` (9 header words, `arm_colortable` 0x0c03e128), `HP_CONVOLUTIONFILTER1D` (7, 0x0c036c44), `HP_CONVOLUTIONFILTER2D` (8, 0x0c036d78), `HP_SEPARABLEFILTER2D` (9, 0x0c037150) and `HP_POLYGONSTIPPLE` (3, 0x0c02c7bc; the 32 x 32 stipple then follows as an image). In each the last header word is read through `r9 + 0x3c` or `r9 + 0x40` according to a flag word, as for the pixel commands. Each emitter in `kon_colortable.s` and `kon_convolve.s` ends its header with a call to `__glKonSendData`. **Established** (the handlers' stores into the pixel descriptor at 0x900, whose slots are named in the table above, and into a per-command record in the block at r8 + 0xcf4; the colour-table emitter `__glkonim_ColorTableSGI` in `kon_colortable.s`, which stores token 0xe8 and then the words in this order):

| Word | `HP_COLORTABLE` | `HP_CONVOLUTIONFILTER1D` | `HP_CONVOLUTIONFILTER2D` | `HP_SEPARABLEFILTER2D` |
|---|---|---|---|---|
| 1 | GL target (mapped by `lut_index` to one of the colour tables) | internal format | internal format | internal format |
| 2 | internal format (`internalformat_index`) | width (+0x00; height is forced to 1) | width | width |
| 3 | width (+0x00; height forced to 1) | format code (+0x1c) | height (+0x04) | height |
| 4 | width - 1 as a float (libGLcore adds -1.0 to the converted width) | type code (+0x14) | format code | format code |
| 5 | format code (+0x1c) | byte offset (+0x4c) | type code | type code |
| 6 | type code (+0x14) | data by DMA (+0x50) | byte offset | byte offset |
| 7 | byte offset (+0x4c) | row mode (+0x54) | data by DMA | which filter: 1 = the row filter (its length is the width), otherwise the column filter (the height); stored at +0x58 as 0 or 1 |
| 8 | data by DMA (+0x50) | | row mode | data by DMA |
| 9 | row mode (+0x54) | | | row mode |

Word 1 of the three filter commands is **inferred** to be the internal format: the token implies the target, the other GL arguments land in the named descriptor slots, and the internal format is the one left. The filter records sit at r8 + 0xcf4 + 0x564 (1D), + 0x5b0 (2D) and + 0x5fc (separable); each keeps the internal format at +0x10, the sizes at +0x4 and +0x8, format and type at +0x18 and +0x14. For a colour table the record is entry `lut_index` x 27 words + 1 of the same block: the GL internal format, its index, the width (+0x2c), and four component scales at +0x40-+0x4c. **Established** (`arm_colortable` 0x0c03e2a0-0x0c03e3a0): the firmware first rounds the width up to a hardware table of 256, 1024 or 4096 entries (size code 0xc, 0xd, 0xe at +0x68) with default scales 255.0, 1023.0 and 4095.0; it then overwrites the scale of every component the internal format has with word 4, so a colour component in [0, 1] times (width - 1) gives the table index. Internal-format index 5 takes only the fourth (alpha) scale, and indexes 0 and 2 leave the fourth at its default. **Inferred:** index 5 is alpha-only and 0 and 2 have no alpha, from which scales each one sets.

### Bitmaps in display lists: `HP_BITMAP_DLIST`

**Established** (`arm_bitmap_dlist` 0x0c02b590; `__glkonim_Bitmap` compile path, `kon_pixel.s` 0x0d953fa8 onward). Words: 1 width rounded up to a multiple of 8, 2 height, 3 and 4 the x and y origin, 5 and 6 x origin plus x move and y origin plus y move, 7 the number of words that follow (image words + 1), 8 the image size in bytes, then the image packed with no padding (`__glFillImage`). The firmware reads word 7 through `r9 + 0x40` and hands exactly that many words to the engines with the pass-through counter.

### Pixel maps: `HP_PIXELMAPFV`, `HP_PIXELMAPUIV`, `HP_PIXELMAPUSV`

**Established** (`do_pixelmap` in `kon_colortable.s` and in `arm1.u` at 0x0c03e420, `snarf_pixelmap` 0x0c03e3f4). Four header words: the map enumerant, the size n, n - 1 as a float, and a fourth word from the caller's state; then n values, one per word: floats for FV, words for UIV, and for USV each 16-bit value zero-extended into a word. The firmware reads the n values one at a time and ends on the last.

### Evaluators: `HP_MAPDATA1D`, `HP_MAPDATA2D`, `HP_MAPSPEC1D`, `HP_MAPSPEC2D`, `HP_EVALSTRIP1D`, `HP_EVALSTRIP2D`

**Established** (`__glKonSendMapData1D` 0x0d97dc10, `__glKonSendMapData2D` 0x0d97dcc0, `__glKonSendMapSpec*` in `kon_eval.s`; `arm_mapdata1d` 0x0c03dc68, `arm_mapdata2d` 0x0c03dca0, `arm_evalstrip1d` 0x0c03dd58, `arm_evalstrip2d` 0x0c03dcd4).

- `HP_MAPDATA1D`: word 1 = n + 5, then the map number x 4, three floats (the map's domain and order fields at +20, +24, +28 of the map record), n, and n floats of control points. The firmware reads word 1, selects all engines, moves exactly word 1 words to them with the pass-through counter and sends one engine handler; it parses nothing itself.
- `HP_MAPDATA2D`: the same with word 1 = n + 8 and six floats before n.
- `HP_MAPSPEC1D`: 12 words, three per 1D map for four maps: the record's +8 word (the order), its +4 word and its +44 word x 4 (the data count), or three zeros for no map. `__glKonCleanUp1D` stores the first map's +8 word itself and then calls `__glKonSendMapSpec1D` four times, whose second argument (1 on the first call) makes it skip that word; the token map's count of 12 and `mgeb_EvalMapSpec1D`'s reads of command words 0 to 0xb agree. `HP_MAPSPEC2D`: four words (+8, +12, +4, +44 x 4), or four zeros.
- `HP_EVALSTRIP1D`: 3 words, every strip including the last (`__glKonEvalMesh1DGe11` stores the token and three words each time). `HP_EVALSTRIP2D`: 6 words. Both fixed; the firmware forwards them to the engine behind a descriptor, then writes zero words to port r9 + 0x880, each behind its own descriptor: 6 for the 1D strip (loop bound at 0x0c03dd98) and 12 for the 2D strip (0x0c03dd40).

### Display lists: the `*LIST*` commands

**Established** (`arm1.u` 0x0c014dd8-0x0c0151fc; emitters in `kon_dlist.s`). Lists live in a list memory the firmware addresses from a base (ARM word 0xce8) or in the DMA pool set by `HP_DMAPOOL_SETUP` ([hip.md](hip.md)). All addresses below are offsets from those bases.

| Token | Words | Layout | Data path |
|---|---|---|---|
| `HP_COPYLIST_LDMA` (0x16c) | 2 + n | list address, byte length L, then L / 4 words of list | the FIFO words go to list memory by list DMA; when bit 2 of L is set the ARM writes one zero pad word, so lists occupy whole 8-byte units |
| `HP_IDMACOPYLIST_LDMA` (0x1c8) | 2 | list address, byte length | the same copy, with the data delivered by the command that follows (the handler jumps straight to the next token's handler); libGLcore sends it through ioctl 10001 (`__glSdramCopyIn`) |
| `HP_USERCOPYLIST_LDMA` (0x167) | 4 | list address, pool offset (page << 12 \| offset), byte length, a fourth word the firmware reads and drops (libGLcore sends 0) | input DMA from the pool into the FIFO, list DMA from the FIFO into list memory; length rounded up to 8 bytes, pad word 0xf001f001 |
| `HP_MOVELIST_LDMA` (0x16f) | 3 | source list address, destination list address, byte length | **Established** (`__memmove`, `arm1.u` 0x0c0400e4-0x0c040118): a copy inside list memory from the first address to the second (loads through r0, stores through r1). The routine's 16-byte loop stores nothing, so as shipped only 8 bytes reach the destination. libGLcore's `__glSdramMemmove` passes (destination, source, length), the other order, but nothing in libGLcore calls it, so no shipped software sends this token |
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

`HP_VARRAY_BGN_LOOP` has three words, the vertex count first. The handler writes 0x183 to 0x200070 and ceil(count / (32 / k)) to 0x200074. **Inferred:** a chained map entry tells the hardware that the next payload words belong to the following map slot without a token word, so after `HP_VARRAY_BGN_LOOP` the vertex data arrive as bare attribute payloads in key order, and 0x200070 and 0x200074 make the hardware restart the walk at slot 0x183 that many times. The other two words are read and dropped. `HP_VARRAY_SETUP` and `HP_VARRAY_UNSETUP` are one word each. **Established** (the tables, dumped by [scripts/ge_varray_tables.py](../scripts/ge_varray_tables.py) from `arm1.u` 6.5.30m). Each table is indexed by [type][component count], five words per type. The token tables name, for each type, the immediate-mode token whose map entry the attribute borrows, which fixes the type codes:

| Type code | Data type (from the tokens selected) | Words for 1, 2, 3, 4 components (`wordCountTable`) | Last-word code (`lastWrdTable`) | Size code (`byteCmpTable`) |
|---|---|---|---|---|
| 1 | signed byte (`COLOR3B`, `NORMAL3B`) | 1, 1, 1, 1 | 0, 1, 2, 3 | 0 |
| 2 | unsigned byte (`COLOR3UB`) | 1, 1, 1, 1 | 0, 1, 2, 3 | 0 |
| 3 | short (`VERTEX2S`, `TEXCOORD1S`, `INDEXS`) | 1, 1, 2, 2 | 1, 3, 1, 3 | 1 |
| 4 | unsigned short (`COLOR3US`) | 1, 1, 2, 2 | 1, 3, 1, 3 | 1 |
| 5 | int (`VERTEX2I`, `INDEXI`) | 1, 2, 3, 4 | 3, 3, 3, 3 | 2 |
| 6 | unsigned int (`COLOR3UI`) | 1, 2, 3, 4 | 3, 3, 3, 3 | 2 |
| 7 | float (`VERTEX2F`, `NORMAL3F`, `TEXCOORD1F`) | 1, 2, 3, 4 | 3, 3, 3, 3 | 2 |
| 8-10 | no token in any table | 0 | 3 | 0 |
| 11 | double (`VERTEX2D`, `COLOR3D`, `INDEXD`) | 2, 4, 6, 0 | 3, 3, 3, 3 | 3 |

So the type code is the GL data type minus 0x13ff (`GL_BYTE` 0x1400 gives 1, `GL_FLOAT` 0x1406 gives 7, `GL_DOUBLE` 0x140a gives 11; 8-10 are the unused `GL_2_BYTES`, `GL_3_BYTES`, `GL_4_BYTES`). The word count is the payload words for that many packed components, the last-word code is the number of valid bytes in the last word minus one, and the size code is log2 of the component size in bytes. `varray_build_command` puts them into the borrowed map entry at bits 6-10 (word count), 27-28 (last-word code) and 29-30 (size code), after clearing those fields, and sets the chain bit 3; these are the distributor control fields of [ucode/ged.md](../ucode/ged.md). Which components each table offers is fixed by the non-zero token entries: vertex 2-4, normal 3, colour 3-4, index 1, texture coordinate 1-4; only colour takes the unsigned types and signed byte, and normal takes signed byte. A four-component double has word count 0 in the table, so a double `glVertex4dv` array has no hardware form; **inferred:** libGLcore never builds that key (not traced).

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
