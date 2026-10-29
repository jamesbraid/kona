# Geometry engines as the ARM firmware drives them

What the ARM firmware (`arm1.u`, IRIX 6.5.30m, [ucode/arm1_firmware.md](../ucode/arm1_firmware.md)) does to start, feed and save the geometry engines. The engine program is covered in [ucode/ge.md](../ucode/ge.md), [ucode/ge_isa.md](../ucode/ge_isa.md) and [ucode/ge_ops.md](../ucode/ge_ops.md); the register list is in [GE.h](../GE.h). Facts are labelled **established** (read from the firmware at the function named), **inferred** (with the reasoning) or **unknown**.

## Registers: the ARM's path to them

**Established.** `init_ge` (0x0c0032e4) reaches the engine registers of [GE.h](../GE.h) (0x40000-0x40038) with two descriptor words: 0x46a00020 followed by the register address, and 0x46600020 followed by the value, both through the data port r9 + 0x8c0 ([arm1_firmware.md](../ucode/arm1_firmware.md)). The writes it makes, in order: 0x40038 (`OFIFO_CONTROL`) = 0x8e0; 0x40018 (`CM/Ofifo TAG`) = a value the code computes from the board id; per-engine writes whose address and value are registers (`ungray` and `ge_board_id` feed them); 0x40010 (`DIAG_SEL`) = 0x100; 0x40000 (`EXECUTION_CONTROL`) = 1 twice, which is `EXEC_GO` (bit 0). **Inferred:** the two descriptors are an address port and a data port in the distributor's register space, since they are written beside the distributor's own tables (descriptors 0x42..., 0x44... and 0x46...), and a read path is not used at start-up.

**Established** (the host's path, `irsaudit` 6.5.30m, `ge_host_reg_write` at 0x10039a14): the diagnostic writes the same kind of descriptor from the host through its ARM-space write routine (`PioWriteArm32`): ((register & 0x3ff) << 21) | 0x20 to ARM address 0x200600 (an engine port, r9 + 0x400), then the value to 0x200ac0 (the data port r9 + 0x8c0). The ARM's own address and data descriptors fit the same packing: 0x46a00020 and 0x46600020 are distributor register numbers 0x235 and 0x233 shifted left by 21 with 0x20. **Inferred:** the host reaches the engine registers only through the ARM's engine ports, either by the firmware or by the diagnostic writing those ports directly, and the descriptor's bits 30-21 name a distributor register. What the `value` column of kpm's register table means (a reset value, a test value or a mask) is **unknown: needs capture** ([captures.md](captures.md)).

## Reset and start-up

**Established** (`init`, `init_ge_board`, `init_ge`, `init_ged`; order as in [arm1_firmware.md](../ucode/arm1_firmware.md)).

1. `init_ge_config` and `init_ge_jtag` configure the engine boards through the boundary-scan chain: board id (`ge_board_id`, with `ungray`, **inferred** to undo a Gray-coded id) and chip registers (`jt_reg_write`). If the id is unreadable the firmware prints "GE board id broken - assuming BDSET_KONA".
2. `init_ged` programs the distributor: its program (1024 words), two tables and the handler table, then initial register values through descriptors 0x44... ([ucode/arm1.md](../ucode/arm1.md)).
3. `init_ge` downloads microcode. The firmware finds a file by its tag with `find_ucode` (tag 0x4593 here), then writes the address word 0x200000 + (the load address field of the file's table entry) with descriptor 0x46a00020, and three data words from the file with 0x46600020. Only three words are written, so it is **inferred** that this is a start-up stub and the engine fetches the rest of the program from external memory, which agrees with the 72-bit microcode port of the engine netlist ([ucode/ge_isa.md](../ucode/ge_isa.md)). Which file has tag 0x4593 is **unknown**.
4. It writes `DIAG_SEL`, sets `EXEC_GO`, writes the values 1 to 9, one at a time, to all engines (select 0x438, port 0x8c0), then sends the handler `gepc[152]`, `mgeb_GlobalInitialize`. Then it assigns each engine its identity with `mgesi_SetGeId`, runs `check_pipe_sync` (the engines' mailbox handshake) and calls `init_geBefAddrs`, `InitFogGlobal`, `initAALineTablesGlobal` and `InitFFTGlobal`, which send tables to the engines.
5. At address 0 the engine program starts at `HereWeGo`, two no-ops and a jump to `MemRegInit` (`bootinit.s`, [ucode/ge_isa.md](../ucode/ge_isa.md)); **inferred:** that is where the engine runs after reset and before the first command.

**Unknown: needs capture** ([captures.md](captures.md)). How the host resets only the engines (`HH_RESET` clears the host interface and starts the ARM, [HIP.h](../HIP.h)); `arm_context_init` (token 0x1fd) and `arm_context_destroy` clear per-context state; this reading found no firmware path that pulses an engine reset.

## DMA

**Established** (register use in [arm1_firmware.md](../ucode/arm1_firmware.md)).

- **Host to engines.** Payload words reach the engines through the host-interface FIFO. A bulk copy sets a pass-through counter (0x200058 = (n - 1) | 0xc000000) so the hardware moves n words from the FIFO to the selected engines without ARM involvement, then the ARM sends a handler address (`load_broadcast_ge`, `load_singlecast_ge`, `load_broadcast_geEram`; handlers `mgeb_ContextLoadCram`, `mgeb_ContextLoadWram`, `mgeb_ContextLoadEram`).
- **Host memory to the FIFO.** `arm_do_idma` and `arm_context_load` program the input-DMA registers 0x200010-0x200020 from a page number and offset and start it; the data then arrive in the FIFO and are consumed as above. A list DMA (registers 0x200030-0x200040) moves FIFO words into the ARM's own memory (`store_data`, used for the context image; the `*_ldma` handlers use the same registers). [docs/hip.md](hip.md) has the host side.
- **Engines to host.** The engines send data back by running handlers named for the source: `mgesi_Cram2ODMA`, `mgesi_Eram2ODMA`, `mgesi_SR2ODMA` (special registers) and `mgesi_LastVertex2ODMA`, after the ARM has programmed the output-DMA address and length through the raster-board register bus (`start_rdata`). **Inferred** from the handler names and from `arm_pushattrib`, which calls `mgesi_StartRdata`, `mgesi_Eram2ODMA` and `mgesi_GetSpecial` in turn.

**Established** since: the engine-side output operation is the move into output port B = 9-11 ([ucode/ge_ops.md](../ucode/ge_ops.md#input-and-output-fifo-operations)), checked against the 172 words the IR diagnostic reads back by output DMA. **Unknown: needs capture** ([captures.md](captures.md)): the bit meanings of the DMA registers 0x200010-0x200048.

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

The save side is `arm_context_deactivate` (token 0x1fc, [arm1.md](../ucode/arm1.md)): it stops the host interface, distributor and engines, runs `deactivate_ged_ge`, `deactivate_ged` and `deactivate_hip`, writes the engine slot 183 (`mges_ContextDeactGED`), 185 (`mgeb_ContextDeactReconfigureFifo`) and last 182 (`mges_ContextDeactFinish`). `arm_context_activate` (0x1fa) and `arm_context_mopup` (0x1f8) bring the saved state back and clean up; `arm_context_destroy` frees it. The host side of the same tokens, the 64 KB save area and the address pairs are in [kernel.md](kernel.md). **Unknown: needs capture** ([captures.md](captures.md)): the order and size of the engine-state records in the saved image (the engines write them out in the `mges_ContextDeact*` handlers), the third word of each record, and which of the tags 0x200 and 0x400-0x403 is which ARM-side region. A dump of one saved image settles all three.
