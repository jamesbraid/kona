# How the ARM firmware (arm1.u) is built and what each token handler does

Structure of `usr/gfx/ucode/KONA/arm1.u` (IRIX 6.5.30m): start-up, the loop that takes host commands from the host-interface chip, the way a handler reaches the geometry engines and the host, and the 306 tokens the firmware runs itself. [arm1.md](arm1.md) covers the file container and the token map; this page reads the code behind it.

Facts are labelled **established** (read from the firmware at the address given), **inferred** (with the reasoning) or **unknown**. Addresses are ARM addresses: code and read-only data from 0x0c000000, initialised data from 0x04040260. [arm1.s](arm1.s) is the listing. [scripts/arm1_handlers.py](../scripts/arm1_handlers.py) writes [arm1_handlers.tsv](arm1_handlers.tsv) (one row per ARM-run token), [dg_dispatch.tsv](dg_dispatch.tsv), [ged_bound_table.tsv](ged_bound_table.tsv) and [hw_route.tsv](hw_route.tsv). It scans each function straight through and follows no branches, so a handler that reaches an engine handler through a callee lists the callee and not the handler.

## What the ARM sees

Two base registers are set at entry and never change: **r8 = 0** (the ARM's own RAM, addressed as r8 + offset) and **r9 = 0x00200200** (the host-interface window). **Established** (`start` 0x0c00002c and every vector entry load them).

**Established** (offsets used by the code) and **inferred** (what they hold):

| ARM address | Use |
|---|---|
| r8 + 0x00-0x3f | exception vectors; `init_arm` (0x0c001aec) copies the 16 words at `vector_start` here |
| r8 + 0x48-0x147 | `gepc[0..127]` packed two 16-bit handler addresses to a word ([arm1.md](arm1.md)) |
| r8 + 0x258-0x75c | shadow of GL state the handlers keep (cull-face value at 0x258, matrix mode at 0x73c, cull-enable byte at 0x75c) |
| r8 + 0x860 | sticky GL error: two bytes read big-endian; `set_error` writes only when it is zero, so the first error stays until `arm_geterror` clears it |
| r8 + 0xc98-0xca4 | read-back setup written by RDATA_SETUP (address pair, length) |
| r8 + 0xd00-0xfff | stack, filled with 0xdeadbeef at start-up as a canary (`init_arm`) |
| 0x00400000 + 4 x token | the token map ([arm1.md](arm1.md)) |
| 0x00200000-0x002000ff | host-interface control and status registers (below) |
| r9 + 0x000, 0x03c, 0x040 | payload ports: read-only |
| r9 + 0x200 | next-handler fetch |
| r9 + 0x400-0x9ff | engine ports: write-only |

### Control and status registers

Offsets are r9-relative negatives of the form r9 - 0x1b0; the table gives the absolute ARM address. Names in quotation marks are in the firmware's own messages. Everything else is a label chosen here.

| ARM address | Evidence | Role |
|---|---|---|
| 0x200000 | read once in `init` | bit 31 set = running in a simulator. **Established:** stored in `InSimulator` (0x04040260) |
| 0x200010-0x20001c, 0x200020, 0x200024 | written by `arm_do_idma`, `arm_execlist_idma`, `arm_context_load`, `mem_swapin_*`; 0x200024 polled | host-to-pipe DMA engine: page number, page offset, byte count (+3), start (write 1), mode (2), status. **Inferred** from the DO_IDMA payload (address pair, length) and the polling loop; the bit meanings are **unknown** |
| 0x200030-0x200038, 0x200040, 0x200048, 0x20004c | written by the `*_ldma` handlers and `store_data` | list DMA (the "LDMA" commands). Roles **unknown** |
| 0x200050 | set to 1 around every rewrite of the token map in `matrix_vector` and `matrix_passthru`, saved and restored by `deactivate_hip` | **Inferred:** hold bit of the token-routing hardware |
| 0x200058 | written with `(n-1) \| 0xc000000` by `load_broadcast_ge` and polled until the low 26 bits are zero | **Inferred:** pass-through counter, which moves n payload words from the host FIFO to the engines without ARM involvement; 0x8000000 and 0x10000000 appear in the DMA paths and at deactivate |
| 0x200060 | polled in `waitForDH` (bits 4, 5) and tested for bit 2 ("arm_pipe_setup" and others print an error when it is clear) | status. Bit meanings **unknown** |
| 0x200064, 0x20005c, 0x200068, 0x200070, 0x200074 | saved and restored by `deactivate_hip` and `activate_hip`, so they hold per-context state | **Unknown** except 0x200068, which `arm_bgnend` sets to 1 or 0 (below) |
| 0x200054, 0x20006c | `init_hip` stores the address of `arm_divert` and `arm_bgnend` | vectors the hardware jumps to when it refuses a token (below) |
| 0x200078, 0x20007c | `arm_badcmd` prints them as `cmd` and `prev_cmd` | **Established:** the current and previous token numbers, the "HA_ICU_CURR_CMD" and "HA_ICU_PREV_CMD" of the messages. `deactivate_hip` keeps their low 9 bits |
| 0x200090, 0x200094 | `send_host_intr` (0x0c022d50) | mailbox word to the host and its doorbell: wait until 0x200094 bit 0 is clear, store the word at 0x200090, write 1 to 0x200094. **Established.** **Inferred:** these are the registers the host reads as `HH_ARM_MBOX` and the source of its ARM interrupt bit ([docs/hip.md](../docs/hip.md)); the kernel handler reads exactly one word per interrupt |
| 0x20009c, 0x2000a0 | `check_pipe_sync`, `reset_imps` ("HA_GE_MBOX_VALID"), `WaitOverlap` | engine-to-ARM mailbox: valid flag and data |
| 0x2000b0 | read by `sleep` (0x0c00437c) and the video-clock waits | free-running counter, compared with wrap handling. Tick rate **unknown** |
| 0x2000c0-0x2000cc | `jt_*` and `knic_*` functions | bit-bang port: boundary-scan chain access (`init_jtag`, `jt_select_chip`, `jt_reg_write`) and the serial-number devices (`nic_*`, `knic_*`). **Inferred** from the function names |

## Start-up

**Established** (`start`, `init_arm`, `init`):

1. The reset code (0x0c000000) writes zero to every 0x20th byte of a 4 KB window at 0x00a00000 (**inferred:** a clear of cache tags, from the 32-byte stride), then enters `start` (0x0c00002c), which sets r8, r9 and the stack, calls `init` (0x0c004108) and falls into the input loop.
2. `init` reads the simulator bit, prints a banner ("Welcome to ARMLand", the build version and "InfiniteReality/Reality Software, IRIX 6.5 release"), clears three bookkeeping words in the data block if not simulated, and records the end of the zero-initialised data as the free-memory base.
3. `init_jtag` finds the boards on the scan chain (`init_kona_jtag_chain`, `init_config`: geometry, raster and display boards, their chip ids and serial numbers).
4. `init_ge_board` (0x0c003d0c) runs `init_ge_config`, `init_ge_jtag`, **`init_arm`** (vectors, canary, the saved-context areas), **`init_hip`** (token map, below), **`init_ged`** (distributor program, tables and the handler table), **`init_ge`** (finds the geometry-engine microcode with `find_ucode`, loads it, and starts the engine-side initialisation handlers `mgeb_GlobalInitialize` and `mgesi_SetGeId`) and `init_bef` (`init_befshadow`; the "bef" chip is on the scan chain, where `bef_set_ge` and `bef_set_numges` select the current engine and a 16- or 32-bit input).
5. Unless simulated, `dgFetal` runs (a display-generator record built by `DoDGRqstFetal`; **unknown** purpose); then `init_rm_board` (`init_pg`, `init_tf`, `init_tg`, `init_tm`, `init_imp`: the raster-board chips, each set up through scan-chain registers and engine-forwarded register writes) and `init_dg_board` (`dgAutoInit`, blanking all channels first).
6. Three 16-bit values assembled from the bytes at r8 + 0x40-0x45 go to the data block (+0x84-0x8c), `mem_init` sets up the swap-memory records and `check_pipe_sync(1)` waits for the engines' mailbox handshake (`geMbox valid & correct` in its messages).

`init_hip` (0x0c001c60) builds the token map and fills `gepc` from `geif.u` ([arm1.md](arm1.md)). Two details **established** here that [arm1.md](arm1.md) did not state: tokens the list does not reach get the `arm_badcmd` entry only in the hardware copy at 0x00400000, not in `icu_map`; and `init_hip` finally stores `arm_bgnend` at 0x20006c and `arm_divert` at 0x200054.

## The input loop

**Established.** After `init` returns, `start` runs the loop at 0x0c00006c: `mov lr, r4; ldr pc, [r9, #0x200]`. Every handler returns with `mov pc, lr` (or ends `ldr pc, [r9, #0x200]` itself), so each command is: read r9 + 0x200, jump to it. **Inferred:** a read of that register returns the handler address of the next host token, taken from the 0x00400000 table and stalling the ARM until a command is available; the ARM never reads a token number to dispatch. The data is the 28-bit address shifted left by 4 that `init_hip` stored; the low four bits are the entry's flags and are dropped by the hardware.

**Established.** A handler pulls its payload words with reads of the payload ports: r9 + 0 (next word), r9 + 0x3c (the last word of the command) and r9 + 0x40 (used by `arm_do_idma`, `load_*_ge` and several loops as a read that does not end the command; its exact difference from + 0 is **unknown**). `arm_arm_nop` (0x0c022d70) shows the shape: read a count, read count - 1 words from r9 + 0, then the final word from r9 + 0x3c, and compare it with the expected value. Every ARM-run handler with a payload ends with the r9 + 0x3c read (the `final` column of [arm1_handlers.tsv](arm1_handlers.tsv)). **Inferred:** the read at + 0x3c tells the hardware the command is over; ARM entries in the token map carry no word count, so the handler alone knows how long its command is. A handler that does not read (`arm_kernel_private`, `arm_texload_setup`) just returns; whether the hardware discards the payload then is **unknown**.

### Refused tokens: begin/end, divert, bad command

- **Kind bits.** Bits 1-2 of an entry are 0 for 392 tokens, 1 for 12, 2 for one and 3 for 107. **Established** from the map: kind 1 is the eleven `BEGIN_*` tokens and `BEGIN_SUBDIV_PATCH`, kind 2 is `END` alone, and kind 3 covers the vertex attributes (colour, index, normal, texture coordinate, vertex, material, evaluator and packed-vertex tokens), `EDGEFLAG`, `SETERROR`, `SKIP2/4/5`, `DEFORM`, `SETCOLORNORMAL`, the list-execution and vertex-array-loop tokens, `POINTPARAMETERF/FV`, and `DO_IDMA`, `GED_VERIF_DUMP`, `CONTEXT_MOPUP`, `CONTEXT_ACTIVATE` and `CONTEXT_DEACTIVATE`. **Inferred:** kind 3 marks commands that may arrive between a begin and its end. The reasoning: the vertex data, edge flag and list calls are the commands the GL specification allows inside a `glBegin`/`glEnd` pair, the context-switch tokens must be allowed anywhere because the kernel can switch contexts mid-primitive, and `arm_bgnend` raises the GL "invalid operation" error.
- **`arm_bgnend`** (0x0c0018e4; vector at 0x20006c). **Established:** it records an invalid-operation error with `set_invalid_operation`, reads the current token number from 0x200078, looks up the number of payload words in the 512-word table `hipwc` (0x0c000ff4), and reads and discards that many words (32 for the two double-precision matrix tokens 0xd4 and 0xd6, whose entry is 0; for token 3, `BEGIN_RECT`, the count is the first payload word). Any other token with a zero entry is reported as "begin/end ERROR" and the firmware spins. It then sets 0x200068 to 1 when the token's kind is 0 or 1 and to 0 when it is 2. **Inferred:** the hardware jumps here when a kind-0 token arrives between a begin and an end, and 0x200068 is the in-begin flag (it is part of the saved context).
- **`arm_divert`** (0x0c001a34; vector at 0x200054) prints "divert not handled!" and spins. **Unknown:** what makes the hardware divert; no divert handler is installed in this build.
- **`arm_badcmd`** (0x0c0017f4) prints the current and previous token numbers, then reads 100 words of payload printing each ("future data follows") and spins on the port. 54 of the 306 ARM-run tokens point at it, directly or through a one-instruction branch: the 7 `X_UNUSED*` tokens and 47 GL entry points the firmware does not implement (`TEXIMAGE1D`, `TEXSUBIMAGE*`, `GENTEXTURES*`, `GETFLOATV`, `GETINTEGERV`, the `GET*IV` forms and others in [arm1_handlers.tsv](arm1_handlers.tsv), group `unsupported`). **Inferred:** the host driver turns these into other commands or answers them itself, since a pipe that received one would hang.

## How a handler reaches the engines

**Established** (`tbus_regwrite`, `arm_cullface`, `arm_geterror`, `load_*_ge` and about 5000 stores to the window). Every send to the engines is a short run of stores to the engine ports, ending with a store to r9 + 0x8c0. The last store is a **handler address**, taken from `gepc` (directly, or from the packed copy at r8 + 0x48); the engines start that handler when it arrives. [ge_isa.md](ge_isa.md) shows the handlers end by jumping to address 0, where the engine waits for the next command word.

| Port (r9 +) | Stores in the image | Use |
|---|---|---|
| 0x400 | 1239 | descriptor word, always followed by data: see below |
| 0x420-0x43c | 85 | destination select. **Established** from function names: 0x430 = one engine (`load_singlecast_ge`), 0x438 = all engines (`load_broadcast_ge`). 0x434 and 0x43c (video-bus and viewport-path writes) and 0x420, 0x428: **unknown** |
| 0x470, 0x474, 0x478, 0x47c, 0x4f0-0x4fc | 552 | operand words: the first word of an engine command (a register or table address, a mode value). Which port a handler uses is fixed per engine handler (`mgeb_CullFace` takes it at 0x478, `mgesi_TbusRegWrite` at 0x474, the flush at 0x4f4) |
| 0x840, 0x880 | 1640 | further operand words, in order (0x840 for data, 0x880 for the 0x2bad2dad filler `IncrGEDPtr` sends) |
| 0x8c0 | 1589 | the handler address; also single data words in a few places |
| 0x800, 0x980 | 6 | seen in `arm_polygonmode` and `arm_context_mopup`; **unknown** |

**Inferred:** the ports are the chip-level input channel of the engines (`hq_off[6]`, `hq_op[3]`, `hq_st[2]` of the engine netlist, [ge_isa.md](ge_isa.md)): the low bits of the port address look like a 6-bit word offset (0x470-0x47c = offsets 28-31) and the bits above 0x40 like a 2-bit state (0x840, 0x880, 0x8c0 = 1, 2, 3). The width match is the only support.

Three shapes **established** from code:

- **Single command.** `arm_cullface`: read the value (r9 + 0x3c), keep it in RAM (r8 + 0x258), store it to port 0x478, then store the low half of the packed word at r8 + 0x4c (slot 3, `mgeb_CullFace`) to 0x8c0.
- **Register write through the engines.** `tbus_regwrite(reg, value)` (0x0c015298): reg to 0x474, value to 0x840, slot 107 to 0x8c0. The firmware reaches the raster-board registers (the numbers 0x400-0x477 it writes in `start_rdata`, `finish_rdata`, `check_pipe_sync`, `init_tf`, `init_tm`, `init_imp`) only this way. **Inferred:** the engine handler forwards the word to the raster boards' register bus (the "tbus"); the register map is [RM.h](../RM.h).
- **Bulk copy.** `load_broadcast_geEram` (0x0c020c04) selects all engines (0x438), forwards the first word, stores `(n-1) | 0xc000000` to 0x200058 and waits for it to drain, so the words go from the host FIFO to the engines' external memory in chunks of up to 0x200 with no ARM loop, then stores slot 131 to 0x8c0.

### Descriptor port (r9 + 0x400)

**Established.** The firmware writes a descriptor word at r9 + 0x400 and then data at r9 + 0x8c0 in the same sequence everywhere: all descriptors seen from the ARM have bit 5 set and, for the small structured group, bits 30 and 25-27 choose a target. The targets whose function is read in the code:

| Descriptor | Writer | Meaning |
|---|---|---|
| 0x48200020 | `init_ged_ucode` | write one word of the distributor program (1024 words; words naming a slot are first relocated, [arm1.md](arm1.md)). 0x48000020 with data 0 first |
| 0x42000020 / 0x42400020 + data 0 | `init_ged_ucode` | reset the write pointer of the table below |
| 0x42200020 | `init_ged_ucode` | 16 words (table A of `ged1b.u`) |
| 0x42600020 | `init_ged_ucode` | 512 words (table B of `ged1b.u`, one per 9-bit command number) |
| 0x46000020 + index | `init_ged`, `arm_matrixmode`, `xform_init`, `xform_restore` | set the index of the handler table |
| 0x46200020 + handler address | same | write an entry; the index advances ([ged_bound_table.tsv](ged_bound_table.tsv)) |
| 0x44000020, 0x44200020, 0x44400020 | `init_ged` | distributor register initial values (data from the context record); **unknown** which registers |
| 0x58400800, then 0x2bad2dad at r9 + 0x880 | `IncrGEDPtr` | write filler words; the name says it advances a distributor pointer. **Inferred** |

The remaining descriptors (about 230 distinct values in the pixel, X-server and context code) are not decoded. Their field layout is the same family as the routed entries of the token map ([arm1.md](arm1.md)); **unknown** how the two are related.

### Matrix tokens flip between hardware and ARM

**Established** (`matrix_vector` 0x0c018f44, `matrix_passthru` 0x0c018ef0, `arm_matrixmode` 0x0c01904c). The fifteen matrix tokens 0x0d1-0x0df (`FRUSTUM` to `TRANSLATEF`) are rewritten in the hardware map at run time. For the colour-matrix mode (0x1800, GL_COLOR) `matrix_vector` replaces their entries with the addresses of the ARM handlers `arm_frustum` ... `arm_translatef`, and the colour-matrix state lives in the ARM (`update_colormatrix`, `invalidate_colormatrix`); `matrix_passthru` copies the original routed entries back from the static list. Both set 0x200050 bit 0 around the edit. For the other modes the ARM instead rewrites the engine-side handler table through descriptors 0x46000020 and 0x46200020 (table above, [arm1.md](arm1.md)). `xform_restore` calls both routines when a context's matrix mode is restored. So the ARM can turn a hardware-routed token into an ARM-run token and back.

## How the ARM answers the host

**Established.**

- **Text.** `putchar` (0x0c019c98) sends each character through `send_host_intr` when not simulated. The host reads one word per interrupt and keeps its low byte ([docs/hip.md](../docs/hip.md)).
- **Events.** The value sent to the mailbox by `arm_do_idma` and `arm_mem_swapin` is a word of the command's own payload (the host passes 0x100 in DO_IDMA's flags word, [docs/hip.md](../docs/hip.md)); `arm_context_activate` sends a word from its context record. The firmware has no fixed event numbers of its own.
- **Read-back (the "rdata" path).** RDATA_SETUP (0x1f2) stores an address pair and length at r8 + 0xc98. `start_rdata` (0x0c0224d4) then programs raster-board registers 0x477, 0x440, 0x463, 0x464, 0x460, 0x461, 0x462 and 0x476 through `tbus_regwrite`, and `finish_rdata` undoes it. Between them, a query handler pushes its reply words to register 0x476 (`arm_getconfig` sends 222 words from the board-configuration block at 0x04067edc; `SendDGRply` sends display-generator replies). **Inferred:** these registers are the output-DMA registers of the host-interface chip, reached over the same register bus, because the sequence loads an address, length and start and RDATA_SETUP's payload is the address pair and length the kernel sends for read-back ([docs/hip.md](../docs/hip.md)).
- **Engine events.** The engines report to the host through a kernel-communication record: `arm_ge_intr` (token 0x1dd) calls `start_kcomm` and `finish_kcomm`, which use the same read-back registers, with the record the kernel reads in `kona_ge_intr` ([docs/hip.md](../docs/hip.md)).
- **Errors.** `set_error` and the `set_invalid_*` helpers keep the first GL error; the host fetches it with GETERROR, answered by engine handler `mgebi_ErrQuery`.

## The 306 ARM-run tokens by kind

[arm1_handlers.tsv](arm1_handlers.tsv) lists every token with its handler, group, size, number of payload reads, the engine handlers its code names and the ports it writes. Counts by group (a handler name picks the group, so this is a reading aid, not a hardware fact):

| Group | Tokens | What the handlers do (read from the code) |
|---|---|---|
| unsupported | 54 | branch to `arm_badcmd` (see above) |
| ignored | 2 | `TEXLOAD_SETUP` and `KERNEL_PRIVATE` return without reading anything |
| raster and pipeline state | 36 | read one to four words, keep them in the r8 shadow and send one engine handler (`mgeb_CullFace`, `mgeb_FrontFace`, `mgesi_AlphaFunc`, `mgeb_FogFunc`, `mgeb_PolygonOffset`, `mgeb_SetMSPointTables`). Blend, depth, stencil and mask tokens instead write raster-board registers through the descriptor port. `arm_irisgl_mode` toggles two engine handlers (`mgeb_SetLMCFlag`, `mgeb_ClearLMCFlag`) |
| enable and disable | 2 | `arm_enable` and `arm_disable` read a GL capability number and jump through one of six pointer tables in RAM (`e0`, `e0a`, `e1` to `e4`) indexed by number range, to the per-capability routines (`e_lighting`, `e_light0`-`e_light7`, `e_clip_plane0`-`5`, `e_texture_*`, `e_fog`, `e_scissor` and others, with matching `d_*` routines for disable). An unknown number goes to `set_invalid_enum` |
| matrices, viewport and clipping | 5 | `arm_matrixmode` (above), `arm_viewport` and `arm_scissor` (range-check and keep, then `resolve_viewport` and `resolve_scissor` send the window rectangle to the engines and raster boards), `arm_clipplane` (`mgeb_UserClipPlane`), `arm_depthrange` |
| lighting and material | 7 | per-parameter routines (`light_amb`, `light_diff`, `light_pos`, `light_sdir`, ...) convert fixed or integer parameters to float (`convFixToFloat`) and send `mgeb_LightAmb`, `mgeb_LightPos` and so on; `colormaterial_*` send `mgeb_LiClrMtrlFront` |
| clear and accumulate | 7 | `arm_clear` (221 instructions) picks a clear path by buffer type (`masked_clear`, `accum_clear`, `overlay_clear`, `imp_clear`) and sends `mgesi_ClearColor`, `mgesi_ClearIndex`, `mgesi_ClearDepth32` plus register writes; `arm_accum` adds a rectangle generator |
| buffers and windows | 9 | `arm_buffer_config` (300 instructions) validates the framebuffer configuration, re-derives the transfer masks (`XferMask`) and the colour-index or RGBA mode (`mgeb_CI_Mode`, `mgeb_RGBA_Mode`), `arm_drawbuffer`, `arm_readbuffer`, window clip validation and `FINISH`, which waits for the raster boards with `mgesi_FlushRM` and a read-back |
| texture | 26 | state tokens send `mgebi_TexEnv`, `mgeb_TexGen`, `mgebi_Texture`; `arm_bind_texture` and its variants build the texture-memory tables for the raster boards and send them (`sendTexTable`, `mgesi_FillTMLoadFifo`); the TEXBIND_ID and TEXLOAD_ID family keeps a cache of texture-memory entries indexed by the number the driver passes ([docs/opengl.md](../docs/opengl.md) for the payload) |
| pixels, bitmaps and filters | 30 | `arm_drawpixels`, `arm_copypixels`, `arm_readpixels`, `arm_bitmap`, `arm_polygonstipple` and the colour-table, convolution, histogram and min-max handlers call `ParseHostImage`, pick a path (`ResolveDrawPath`, `ResolveCopyPath`, `ResolveReadPath`) and build the engine-side pipeline stage by stage with the `Add*` routines (`AddScaleBias`, `AddClamp`, `AddConvolution`, `AddHistogram`...). Each stage appends an engine handler slot and a parameter list; the `U_*` routines fill the parameters and `WriteCram` and `WriteEram` copy them to engine memory. **Inferred:** the pixel path is composed from existing engine modules (slots in the `mmo_` range of [ge.md](ge.md)), not generated code, since the ARM image holds parameter tables and no engine instruction words. The conversion work is on the engines |
| X server | 16 | `arm_x_init` (initialises the X-side state and sends `mgeb_XContextInitialize`), `arm_x_loadpos`, `arm_x_loadclip_arm`, `arm_x_loadcmap`, `arm_x_loadgamma`, `arm_x_loadcursor`, `arm_x_loadxmap_*`, `arm_x_pix_*` (rectangle copies and transfers through `X_PixSetupGE`), stipple handlers. The colour-map, gamma, cursor and X-map loads reach the display generator through the engine handlers `mgesi_VCbusWrite` and `mgesi_VCbusWriteMultiple`. The drawing tokens (`X_POINT` ...) are hardware-routed and absent here |
| display generator and swap | 6 | `arm_dispmode`, `arm_retrace_seqid`, `arm_swap_cntrl`, `arm_dplex_swap` send `mgesi_VCbusWrite` words; `arm_video_cmd` is below |
| display lists and DMA | 9 | `*_ldma`, `*_idma`: copy, execute or move a command list from host memory into the command stream or to host memory through the list-DMA and input-DMA registers (0x200010-0x20004c); the `_N` forms repeat |
| vertex arrays, evaluators and patches | 27 | `arm_varray_set_cmds` and `varray_build_command` rewrite the vertex-attribute entries of the token map ([arm1.md](arm1.md)) so the next elements go to the right engine handler; `arm_varray_bgn_loop`, `arm_pvertex_setup`, the `mapdata`, `evalstrip` and `subdiv_patch` handlers drive evaluator state; `rasterpos*` transform the raster position |
| selection, feedback and attributes | 9 | `arm_rendermode` switches between render, select and feedback with `mgeb_BgnSelectMode` and friends; names (`pushname`, `popname`, `loadname`, `initnames`) go to the engines; `arm_pushattrib` (791 instructions) and `arm_popattrib` save and restore the shadows and read engine state back to the host through the read-back path |
| queries | 26 | `GET*` tokens: collect the value from the shadow or from the engines (`mgesi_GetCurrent`, `mgesi_GetRaster`, `mgebi_ErrQuery`), wrap it in `start_rdata` and `finish_rdata` and return it by read-back |
| context, memory and host interface | 31 | `CONTEXT_*` ([kernel.md](../docs/kernel.md) and [hip.md](../docs/hip.md) give the host side), `MEM_*` (reserve, swap in and out, copy down, suspend and resume of engine and texture memory), `PIPE_SETUP`, `PIPE_SYNC`, `GEROLLCALL`, `EEPROM_OP`, `DMAPOOL_SETUP`, the select-feedback tokens, `GE_INTR`, `ARM_NOP`, `SLOP` and diagnostic tokens |
| instruments | 4 | `arm_start_instruments`, `arm_stop_instruments`, `arm_read_instruments`, `arm_instruments_buffer`: performance counters read through `mgesi_StartInstruments` and read-back |

### Display-generator commands

**Established** (`arm_video_cmd`, 0x0c006398). Token 0x1a6 carries a command number (0-0x5c), then as many words as the entry of `DGDispatchTable` (0x040412c0, 8-byte entries of word count and handler) says, then one checksum word at r9 + 0x3c. The checksum is the sum of the command number and the payload words: on a mismatch the firmware prints "DG: Expected checksum %d, got %d" and drops the command. Otherwise it calls the handler with the payload buffer, and the handler replies with `SendDGRply` through the read-back path. [dg_dispatch.tsv](dg_dispatch.tsv) lists the 93 commands and their `DoDGRqst*` handlers (6338 payload words in total). These are the display generator's own requests: formats, genlock, cursor, DAC and encoder control, textport glyph loads, gamma maps, monitor identification over the I2C bus (`read_edid`) and FPGA loads (`DoDGRqstLoadXilinx`). **Established** by their length: roughly 280 `dg*` and `DoDGRqst*` functions, a quarter of the image. The firmware, not the kernel, owns display timing: [docs/dg.md](../docs/dg.md) records that the kernel has no code for video timing, and this is where it is.

## Unknown

- What the hardware does with the register accesses above beyond what the firmware's behaviour implies: the 0x200010-0x20004c registers, the pass-through counter, the status bits, and the difference between the three payload ports.
- What triggers `arm_divert`, and whether any build installs a handler for it.
- Whether the hardware discards the unread payload of an ARM handler that returns early.
- The descriptor words outside the targets above, including the family starting 0x58....
- The write targets 0x420-0x43c other than 0x430 and 0x438.
- Why 54 tokens, including the whole of `TEXIMAGE*` and `GETINTEGERV`, are not handled by this firmware: the host side was not read for this page.
