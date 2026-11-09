# Back-end definitions table

One canonical table of the numbers an emulator back end for the InfiniteReality2 pipe on an Onyx2 consumes: host token numbers with their word counts, display-request numbers, register and indirect-register indices, and the bit layout of every multi-field word. First configuration only: one IP27 Onyx2, one InfiniteReality2 pipe. The table consolidates what the other documents in this repository already establish; it adds no new reading except the two window-id answers in section 10, which come from the display microcode's own window-set-up code and the diagnostic's field table, and the texture field layouts of sections 7.10-7.14, which also carry observations from recorded guest command traces (key S29). The GL pixel, query, select-feedback and multisample layouts of sections 7.15-7.17 restate the shipped client's senders and the pipe processor's handlers (keys S31-S37); they carry no recorded traces.

The names are role names in plain words, written for someone who transcribes the table into a definitions module. They are not the vendor's symbol, routine or request names, and no vendor identifier appears below. Where a row needs a handle, use the number.

## 1. How to read this table

**Grades.** *established*: read directly from a shipped binary, the display microcode, the diagnostic's own tables or a published paper (the evidence column says where). *inferred*: a reasoned reading; the cited section gives the reasoning. *unknown*: no read binary or published text reaches it; the row says what would settle it. A row's grade is the grade of the weakest thing the row asserts that a back end would rely on. In the token tables the token number, route, command number and map count field are always decoded from the map, so they are established; the grade column then reflects the role and, for processor-run tokens, the word count, which are readings. A role name is plain-words labelling and is inferred unless the row says otherwise.

**Evidence keys.** Each row cites one or more keys; every key is a document and section in this repository, except S29 and S30, which say where they come from.

| Key | Where |
|---|---|
| S1 | [icu_map.tsv](../ucode/icu_map.tsv) and [the token map](../ucode/arm1.md#the-token-map-icu_map) |
| S2 | [token-map entry format](../ucode/arm1.md#entry-format) and [how a command reaches an engine handler](../ucode/arm1.md#how-a-command-reaches-a-geometry-engine-handler) |
| S3 | [arm1_handlers.tsv](../ucode/arm1_handlers.tsv), [ARM-run tokens](ge-arm-tokens.md) and [ARM function readings](../ucode/arm1_functions.md) |
| S4 | [routed tokens](ge-routed-tokens.md) and [hardware-routed tokens](../ucode/arm1.md#hardware-routed-tokens-from-command-number-to-engine-handler) |
| S5 | [display requests one by one](../ucode/dg_requests.md) and [display requests](dg.md#display-requests) |
| S6 | [XMAP registers, memories and the fast list](dg.md#xmap-registers-memories-and-the-fast-list) |
| S7 | [cursor](dg.md#cursor), [cursor memory](dg.md#cursor-memory) and the display back end answers, question 1 ([open questions](open-questions.md#display-back-end-cursor-display-ids-colour-path-gamma-pages-overlays-2026-11-07)) |
| S8 | the display back end answers, question 2: display-id window kinds, mode byte and pixel layouts (same section) |
| S9 | [colour maps and gamma tables](dg.md#colour-maps-and-gamma-tables) and the display back end answers, questions 3 and 4 |
| S10 | [the firmware's display-bus window](dg.md#the-firmwares-display-bus-window) |
| S11 | [VOC registers](dg.md#voc-registers), [the video-format load](dg.md#the-loadformat-request-383-words) and [the video requester](dg.md#the-video-requester) |
| S12 | [the register-write word](rm.md#the-register-write-word), [the 89-word register shadow](rm.md#the-89-word-register-shadow) and [shadow word map](ge-shadow-words.md) |
| S13 | [DG.h](../DG.h), the XMAP and video DAC register list |
| S14 | the architecture-plan answers, question 13: the window and clip set-up request ([open questions](open-questions.md#kona-architecture-plan-open-hardware-questions-2026-11-07)) and the display microcode listing [arm1.s](../ucode/arm1.s) |
| S15 | the diagnostic's raster register field table ([raster_registers.tsv](../diags/kpm/raster_registers.tsv)) and [RM.h](../RM.h) |
| S16 | [the command stream as the ARM reads it](hip.md#the-command-stream-as-the-arm-firmware-reads-it) and [HIP.h](../HIP.h) |
| S17 | [buffer swap and retrace wait](dg.md#buffer-swap-and-retrace-wait) |
| S18 | [bus modes 2 and 3](rm.md#bus-modes-2-and-3), [pixel and texel data words](rm.md#pixel-and-texel-data-words) and [host-interface registers on the raster bus](rm.md#host-interface-registers-on-the-raster-bus) |
| S19 | [kernel functions](kernel-functions.md): the window-clip token the kernel sends |
| S20 | [the X server module's drawing commands](opengl.md#x-server-module-drawing-commands) |
| S21 | [the X module reference](kona-ddx.md), graphics-context loading and caches, and its hook, copy and image routines |
| S22 | the engine handler readings for the graphics-context load ([ge_compute.md](../ucode/ge_compute.md), [ge_handlers.md](../ucode/ge_handlers.md)) and [shadow word map](ge-shadow-words.md) |
| S23 | the pixel set-up, write, read, copy and finish handlers ([ARM function readings](../ucode/arm1_functions.md) and the X pixel entries of [GE.h](../GE.h)) |
| S24 | the X module's disassembly listing, pixel-format branches of the pixmap loader ([listing directory](../ddx/asm/kona/kon/)) |
| S25 | [texel and pixel image headers](ge.md#pixel-images-hp_drawpixels-hp_drawtexels-hp_bitmap) and [the texel format id](ge.md#the-texel-format-id) |
| S26 | [RM.h](../RM.h): the texture mode and size registers, the texture download header and the texture load and bind commands, and the filter-table precision notes |
| S27 | [texture management](../ucode/arm1_functions.md#texture-management) and the pixel-path texture entries of [ARM function readings](../ucode/arm1_functions.md), with the texture tokens of [GE.h](../GE.h) |
| S28 | [pixel and texel data words](rm.md#pixel-and-texel-data-words): the output-module records and their bus formats |
| S29 | recorded guest command traces of texture loads, binds, frees and draws (a 6.5.30 guest running several OpenGL and IRIS GL demonstration programs); observations only, restated in the rows. Not a document in this repository: it comes from the companion emulator project's command-grammar datasheet |
| S30 | the same datasheet's reading of the shipped client's texture senders: how upload and bind words are built, the internal-format index table, volume, detail-image and filter encodings. Client expectations, not hardware measurements; also not a document in this repository |
| S31 | the client's pixel senders: [pixel-store parameters](libglcore-driver-functions.md#pixel-store-parameters), [pixel packing and reading](libglcore-driver-functions.md#pixel-packing-and-reading), [pixel transfer set-up](libglcore-driver-functions.md#pixel-transfer-set-up), [pixel reads and draws](libglcore-driver-functions.md#pixel-reads-and-draws), [pixel zoom](libglcore-driver-functions.md#clear-values-blending-stencil-and-pixel-zoom) and the accumulation and clear-value senders of [the state setters](libglcore-functions.md#state-setters-and-small-senders) and [the display-list compilers](libglcore-functions.md#display-list-compilers) |
| S32 | the pipe processor's GL pixel handlers and tables: [pixel path set-up and state](../ucode/arm1_functions.md#pixel-path-set-up-and-state), [parameter and format tables](../ucode/arm1_functions.md#pixel-path-parameter-and-format-tables), [finishing a transfer](../ucode/arm1_functions.md#pixel-path-finishing-a-transfer), [GL state handlers](../ucode/arm1_functions.md#gl-state-handlers) and [pixel images](ge.md#pixel-images-hp_drawpixels-hp_drawtexels-hp_bitmap) |
| S33 | the return-data buffer: [request, wait and reply](libglcore-get-functions.md#request-wait-and-reply), [queries and read-back](../ucode/arm1_functions.md#queries-and-read-back) and the node's return-data page in [kernel functions](kernel-functions.md) |
| S34 | the client's query senders and readers: [request, wait and reply](libglcore-get-functions.md#request-wait-and-reply), [host-state reads](libglcore-get-functions.md#reads-that-answer-from-host-state), [lights, materials and texture environment](libglcore-get-functions.md#client-array-pointers-lights-materials-and-texture-environment), [the value-table readers](libglcore-get-functions.md#the-value-table-readers-glgetbooleanv-glgetdoublev-glgetfloatv-glgetintegerv-and-glisenabled), [texture generation](libglcore-get-functions.md#the-three-glgettexgen-readers), [evaluator map queries](libglcore-driver-functions.md#evaluator-map-queries), [histogram parameter queries](libglcore-driver-functions.md#histogram-parameter-queries), [pixel transform parameters](libglcore-driver-functions.md#pixel-transform-parameters) and [colour table, pixel map and histogram routines](libglcore-driver-functions.md#colour-table-pixel-map-histogram-and-pixel-transform-routines) |
| S35 | select and feedback: [the client's selection and feedback routines](libglcore-driver-functions.md#selection-feedback-client-attributes-and-list-parameters) and [buffer set-up](libglcore-driver-functions.md#sprites-feedback-and-selection-buffers), [the select-feedback DMA](hip.md#pipe-to-host-select-feedback-kona_dmaread) and the processor's [selection, feedback and render-mode handlers](../ucode/arm1_functions.md#queries-and-read-back) |
| S36 | the client's multisample senders and configuration: [buffer configuration](opengl.md#buffer-configuration-kona_writeconfig-kona_readconfig), the sample-mask, sample-pattern and sample-buffer tag entries of [the state setters](libglcore-functions.md#state-setters-and-small-senders) and [the display-list mode compilers](libglcore-driver-functions.md#display-list-compilers-for-state-calls) |
| S37 | the pipe processor's multisample handlers and tables: [enable and disable](../ucode/arm1_functions.md#enable-and-disable), [lines, points, polygons and raster set-up](../ucode/arm1_functions.md#lines-points-polygons-and-raster-set-up), [the buffer-configuration handler](../ucode/arm1_functions.md#context-switch-saved-state-and-memory), [constant tables](../ucode/arm1_functions.md#linker-marks-and-other-data) with their contents in the firmware listing [arm1.s](../ucode/arm1.s) (the pattern table at 0x0c03c734 and the two coverage tables after it), and the [shadow word map](ge-shadow-words.md) |
| S38 | the IR diagnostic irsaudit's texture library, read from the shipped binary's own symbols: tbuGetTexelSize, tbuGetNComponents, tbuFormatTexels, tbuUnFormatTexels, tbuNextMipmapBaseAddr and tbuLoadMipmap |
| S39 | the pipe firmware's texture read-back and swap set-up in arm1.u: SetupTexRead, StartTexRead and mem_swapout_tex |
| S40 | the N32 libGLcore's texture-level loader subloadLevel (usr/gfx/arch/IP27KONA32/libGLcore.so) |
| S41 | the IR diagnostic's multisample test inputs: the raster-bus vector file tbusdata.Z (usr/diags/IR/data), blocks samplemask.tbus and msalpha.tbus, and the diagnostic's init_ms strings |
| S42 | the published InfiniteReality references on frame-buffer pixel format and multisample resolve: the Hot Chips 8 slides ("Framebuffer Pixel Format Examples") and the technical report section 7.7 |
| S43 | the geometry engine's start-up and drawing-module listings: [ge.S listing](../ucode/ge_listing/ge.S.lst) (`mGL_CM_Initialize`, store at 0xb21e) and [udrawtri.s listing](../ucode/ge_listing/udrawtri.s.lst) (0x2893, 0x28ac, 0x28b0), with the store-data rule of [ge_isa.md](../ucode/ge_isa.md#the-store-data-register) |
| S44 | the X server module's display-id painter and DAC cursor builder, read from the binary: `usr/lib/X11/dyDDX/kona.so` 0x53e7a8 (id to painted value and mask), 0x4715c0 (`kon_drawDid`), 0x53b6c0 (DAC cursor builder, caller 0x4b78ac) and the display-request sender 0x5341a0; the firmware side is `arm1.u` 0x0c007aa8 |
| S45 | the IR diagnostic irsaudit's display-chip tables and routines, read from the shipped binary's exported data symbols and disassembly (`usr/diags/IR/bin/irsaudit`, 6.5.30m): the video-output chip field tables `voc1a_RegInfo` (0x10201a70), `voc1a_dblbuf_RegInfo`, `voc1b_RegInfo` (0x10205ce0) and `voc1b_dblbuf_RegInfo`; the frame-manager, XMAP, encoder and DAC register tables `fm_regs` (0x101ffd40), `xmap_regs` (0x101ffdc0), `enc_regs` (0x101ffe58) and `vdac_regs` (0x101fffc0); and the routines `dgrm_config` (0x1004bca0), `fmFrameBufferRead` (0x10130f70), `fmDidLoadShifting` (0x10130f10), `vcWriteIncr` (0x10140988), `vcReadIncr` (0x10140d14), `arm_xmap_crc` and `verify_xmap_crc_done` |
| S46 | the pin lists of the display-board netlist `dg4_2voc.netmap`: per-chip address-pin widths (XMAP, VOC, encoder, DAC) and the frame-manager chip's select outputs |
| S47 | the pipe firmware's raster register-write sites and initialisers in arm1.u ([arm1.s listing](../ucode/arm1.s)): every four-store write read with its descriptor, bit mask, address word and value (for example `arm_colormask`, `arm_buffer_config`, `arm_accum`, `arm_stencilfunc`, `arm_stencilop`, `arm_blendfunc`, `arm_blendequation`, `arm_logicop`, `arm_samplepattern`, `resolve_scissor`, `arm_x_loadstipple`, `init_pg`, `init_tg`, `init_tf`, `init_imp`, `depth_init`, `color_init`, `CommonPixEnd`), with the diagnostic's raster-bus vector file `tbusdata.Z` (`usr/diags/IR/data`) as the replay of the same initialiser writes |
| S48 | the geometry engine's listings of the X graphics-context load and of the alpha, blend-constant and accumulation modules: [xload.S listing](../ucode/ge_listing/xload.S.lst) (`ge.u` 0x4cf4-0x4d3f, lines 119-176) and [raster.S listing](../ucode/ge_listing/raster.S.lst) (`ge.u` 0x38c0, 0x38e5, 0x39b8, 0x39c8) |
| S49 | the pipe firmware's pixel-path data tables in arm1.u: `numCompInPixTable` (0x04049950), `numByteInTypeTable` (0x0404998c) and `mod1248Table`, read from the file (file offset = address - 0x04000000 + 0x68) |
| S50 | the client's format-code table in the N32 libGLcore (`usr/gfx/arch/IP27KONA32/libGLcore.so`, data at file offset 0x1829f8, fourteen words) |
| S51 | the X server module's pixel packing data tables, read from the big-endian `.data` of `usr/lib/X11/dyDDX/kona.so` (0x586fa8-0x587078) and the selector in the pixmap loader `kon_loadPixmapGC` (0x501690, listing [kon.s](../ddx/asm/kona/kon/kon.s)) |
| S52 | the published InfiniteReality2 technical report, figure 8 (128-bit pixel row, "1 x LA16 + LA32 Accumulation Buffer") |

**Notation.** Bit ranges are `high:low`, counted from zero at the least significant bit. A "word" is 32 bits unless stated. The token map has 512 entries numbered 0x000-0x1ff; the host sends a token number and the payload words its entry describes.

**Totals.** The table has 1304 graded entries: 553 established, 655 inferred and 96 unknown. Section 11 breaks these down and lists the unknown entries that matter to a back end.


## 2. Processor-run host tokens (306)

Tokens whose map entry has bit 0 clear run a routine on the pipe's own processor. The entry gives no payload length: the routine reads its payload itself, one word per read, and the last word with a read at offset 0x3c of the register window ([the command stream](hip.md#the-command-stream-as-the-arm-firmware-reads-it)). The exact count is therefore the routine's, not a table field. "Payload reads seen" is the number of read sites a straight-line scan of the routine finds; it is a lower bound where the routine loops or reads through a helper, so the grade is inferred. Where a later section decodes the client's sender, the column carries the sender's payload word count instead (tokens 0x005, 0x006, 0x03a and 0x111 in section 2.12: the straight-line scan had found 7, 7, 7 and 1, one short of the senders' 8, 9, 8 and 2). Counts never include the token word. A count of zero with no last-word read means the routine hands the payload to another routine, so its word count is unknown from the scan alone. The 54 refused tokens run the firmware's bad-command routine; a working driver never sends them (established). Token numbers are those of the map ([S1](#1-how-to-read-this-table)); the role names are inferred from the routines' readings in [S3](#1-how-to-read-this-table).


### 2.1 Refused tokens (bad-command routine; never sent by a working driver)

| Token | Role | Payload reads seen | Last-word read | Grade | Evidence |
|---|---|---|---|---|---|
| 0x000 | raw data word | none (refused) | n/a | established | S1, S3 |
| 0x00d | texture parameter, float | none (refused) | n/a | established | S1, S3 |
| 0x00e | texture parameter, integer | none (refused) | n/a | established | S1, S3 |
| 0x00f | 1D texture image load | none (refused) | n/a | established | S1, S3 |
| 0x010 | 2D texture image load | none (refused) | n/a | established | S1, S3 |
| 0x018 | select-buffer registration | none (refused) | n/a | established | S1, S3 |
| 0x031 | set a pixel-transfer parameter (integer form) | none (refused) | n/a | established | S1, S3 |
| 0x032 | set a pixel-store parameter (float form) | none (refused) | n/a | established | S1, S3 |
| 0x03f | query state (float) | none (refused) | n/a | established | S1, S3 |
| 0x040 | query state (integer) | none (refused) | n/a | established | S1, S3 |
| 0x042 | query a light (integer) | none (refused) | n/a | established | S1, S3 |
| 0x043 | query an evaluator map (double) | none (refused) | n/a | established | S1, S3 |
| 0x044 | query an evaluator map (float) | none (refused) | n/a | established | S1, S3 |
| 0x045 | query an evaluator map (integer) | none (refused) | n/a | established | S1, S3 |
| 0x047 | query a material (integer) | none (refused) | n/a | established | S1, S3 |
| 0x049 | query a pixel map (unsigned 32-bit) | none (refused) | n/a | established | S1, S3 |
| 0x04a | query a pixel map (unsigned 16-bit) | none (refused) | n/a | established | S1, S3 |
| 0x04e | query texture environment (integer) | none (refused) | n/a | established | S1, S3 |
| 0x04f | query texture generation (double) | none (refused) | n/a | established | S1, S3 |
| 0x051 | query texture generation (integer) | none (refused) | n/a | established | S1, S3 |
| 0x053 | query a texture parameter (float) | none (refused) | n/a | established | S1, S3 |
| 0x054 | query a texture parameter (integer) | none (refused) | n/a | established | S1, S3 |
| 0x055 | query a texture-level parameter (float) | none (refused) | n/a | established | S1, S3 |
| 0x056 | query a texture-level parameter (integer) | none (refused) | n/a | established | S1, S3 |
| 0x0e9 | copy a colour table from the frame buffer | none (refused) | n/a | established | S1, S3 |
| 0x0f1 | 3D convolution filter | none (refused) | n/a | established | S1, S3 |
| 0x0f6 | 3D separable filter | none (refused) | n/a | established | S1, S3 |
| 0x0fb | query pixel-transform parameters (float) | none (refused) | n/a | established | S1, S3 |
| 0x0fc | copy a 1D texture image from the frame buffer | none (refused) | n/a | established | S1, S3 |
| 0x0fe | copy a 1D texture sub-image from the frame buffer | none (refused) | n/a | established | S1, S3 |
| 0x0ff | write-gather flush, first slot | none (refused) | n/a | established | S1, S3 |
| 0x100 | raw data word, second form | none (refused) | n/a | established | S1, S3 |
| 0x101 | copy a 2D texture sub-image from the frame buffer | none (refused) | n/a | established | S1, S3 |
| 0x11a | set pixel texture generation | none (refused) | n/a | established | S1, S3 |
| 0x11c | load a 1D texture sub-image | none (refused) | n/a | established | S1, S3 |
| 0x11d | load a 2D texture sub-image | none (refused) | n/a | established | S1, S3 |
| 0x11e | load a 3D texture sub-image | none (refused) | n/a | established | S1, S3 |
| 0x11f | load a 3D texture image | none (refused) | n/a | established | S1, S3 |
| 0x120 | 4D texture image | none (refused) | n/a | established | S1, S3 |
| 0x121 | 4D texture sub-image | none (refused) | n/a | established | S1, S3 |
| 0x122 | allocate 1D texture names | none (refused) | n/a | established | S1, S3 |
| 0x123 | allocate 2D texture names | none (refused) | n/a | established | S1, S3 |
| 0x124 | allocate 3D texture names | none (refused) | n/a | established | S1, S3 |
| 0x125 | query whether a name is a texture | none (refused) | n/a | established | S1, S3 |
| 0x126 | delete texture names | none (refused) | n/a | established | S1, S3 |
| 0x127 | bind a texture name | none (refused) | n/a | established | S1, S3 |
| 0x13b | unused window-system slot 3 | none (refused) | n/a | established | S1, S3 |
| 0x13f | unused window-system slot 4 | none (refused) | n/a | established | S1, S3 |
| 0x140 | unused window-system slot 5 | none (refused) | n/a | established | S1, S3 |
| 0x162 | unused window-system slot 6 | none (refused) | n/a | established | S1, S3 |
| 0x163 | unused window-system slot 7 | none (refused) | n/a | established | S1, S3 |
| 0x164 | unused window-system slot 8 | none (refused) | n/a | established | S1, S3 |
| 0x165 | unused window-system slot 9 | none (refused) | n/a | established | S1, S3 |
| 0x1ff | write-gather flush, last slot | none (refused) | n/a | established | S1, S3 |

### 2.2 Context, memory and host interface

| Token | Role | Payload reads seen | Last-word read | Grade | Evidence |
|---|---|---|---|---|---|
| 0x0e4 | record an error code | 1 | y | inferred | S3 |
| 0x0e5 | end-of-simulation report (simulation only) | 1 | y | inferred | S3 |
| 0x169 | diagnostic sub-command dispatch | 1 | n | inferred | S3 |
| 0x17f | multi-purpose diagnostic entry | 2 | y | inferred | S3 |
| 0x1bc | restart select or feedback | 1 | y | inferred | S3 |
| 0x1dc | set the input-DMA wait-mode flag | 1 | y | inferred | S3 |
| 0x1dd | raise a host interrupt with an event code (privileged) | 1 | y | inferred | S3 |
| 0x1de | pipe-memory resume (privileged) | 5 | y | inferred | S3 |
| 0x1df | pipe-memory suspend with an event code (privileged) | 1 | y | inferred | S3 |
| 0x1e1 | pipe-memory copy-down (privileged) | 4 | y | inferred | S3 |
| 0x1e2 | pipe-memory swap-in (privileged) | 8 | y | inferred | S3 |
| 0x1e3 | pipe-memory swap-out (privileged) | 7 | n | inferred | S3 |
| 0x1e4 | pipe-memory reserve (privileged) | 4 | y | inferred | S3 |
| 0x1e5 | roll call of every engine | 2 | y | inferred | S3 |
| 0x1e8 | payload-path self-test | 3 | y | inferred | S3 |
| 0x1ea | synchronise the pipe | 1 | y | inferred | S3 |
| 0x1ec | EEPROM operation (flash load, read, write) | 3 | y | inferred | S3 |
| 0x1ed | describe the DMA page pool (privileged) | 3 | y | inferred | S3 |
| 0x1ef | load the distributor verification program | 4 | y | inferred | S3 |
| 0x1f0 | dump the distributor verification state | 2 | y | inferred | S3 |
| 0x1f1 | pipe set-up (privileged) | 3 | y | inferred | S3 |
| 0x1f2 | set up output DMA for a host read | 3 | y | inferred | S3 |
| 0x1f5 | start select/feedback return DMA (six words) | 6 | y | inferred | S3 |
| 0x1f6 | finish select/feedback with an event code | 2 | y | inferred | S3 |
| 0x1f7 | context destroy | 1 | y | inferred | S3 |
| 0x1f8 | context clean-up with an event code | 1 | y | inferred | S3 |
| 0x1f9 | context image load | 4 | y | inferred | S3 |
| 0x1fa | context activate | 3 | y | inferred | S3 |
| 0x1fb | context FIFO synchronise | none seen; the routine hands off elsewhere | n | unknown | S3 |
| 0x1fc | context deactivate | 1 | y | inferred | S3 |
| 0x1fd | context initialise | 3 | y | inferred | S3 |

### 2.3 Display generator and swap

| Token | Role | Payload reads seen | Last-word read | Grade | Evidence |
|---|---|---|---|---|---|
| 0x114 | select the video source | 1 | y | inferred | S3 |
| 0x166 | swap request for a multi-pipe display option | 1 | y | inferred | S3 |
| 0x1a6 | display-generator request carrier (number, payload, checksum) | 4 | y | inferred | S3 |
| 0x1db | swap control: write the swap strobe | 1 | y | inferred | S3 |
| 0x1e6 | set the per-display-id mode byte | 3 | y | inferred | S3 |
| 0x1e7 | publish a retrace sequence number | 1 | y | inferred | S3 |

### 2.4 Buffers and windows

| Token | Role | Payload reads seen | Last-word read | Grade | Evidence |
|---|---|---|---|---|---|
| 0x001 | configure the frame-buffer layout (colour, depth, stencil, accumulation, multisample) | 10 | y | inferred | S3 |
| 0x004 | configure the read-side frame-buffer layout | 10 | y | inferred | S3 |
| 0x037 | select the read buffer | 1 | y | inferred | S3 |
| 0x0c4 | select the draw buffer | 1 | y | inferred | S3 |
| 0x0c6 | finish: drain the pipe and signal completion | 1 | y | inferred | S3 |
| 0x1cc | flush the raster boards (no completion reply) | 1 | y | inferred | S3 |
| 0x1ee | window read-clip set-up (three words) | 3 | y | inferred | S3 |
| 0x1f3 | window and clip set-up (eleven words) | 11 | y | inferred | S3 |
| 0x1f4 | display-bank set-up (two words) | 2 | y | inferred | S3 |

### 2.5 Window-system tokens

| Token | Role | Payload reads seen | Last-word read | Grade | Evidence |
|---|---|---|---|---|---|
| 0x128 | window-system context initialise (screen size and depth) | 4 | y | inferred | S3 |
| 0x12c | window-system clip list load (ARM-run form) | 1 | n | inferred | S3 |
| 0x12e | load colour-map entries | 2 | n | inferred | S3 |
| 0x12f | load gamma-table entries | 5 | y | inferred | S3 |
| 0x130 | load a cursor image block | 1 | n | inferred | S3 |
| 0x131 | load the cursor colour words | 1 | n | inferred | S3 |
| 0x132 | load one entry of the display-id table | 2 | y | inferred | S3 |
| 0x133 | window created or destroyed notice to the colour-map chip | 1 | y | inferred | S3 |
| 0x136 | window-system pixel path set-up | 7 | y | inferred | S3 |
| 0x137 | window-system pixel copy | 4 | y | inferred | S3 |
| 0x138 | window-system pixel read | 2 | y | inferred | S3 |
| 0x139 | window-system pixel write | 1 | n | inferred | S3 |
| 0x13a | window-system pixel path finish | 1 | y | inferred | S3 |
| 0x13c | load a window-system stipple | 1 | y | inferred | S3 |
| 0x13d | store a window-system stipple | 3 | n | inferred | S3 |
| 0x13e | rotate a window-system stipple | 3 | y | inferred | S3 |

### 2.6 Raster and pipeline state

| Token | Role | Payload reads seen | Last-word read | Grade | Evidence |
|---|---|---|---|---|---|
| 0x002 | flush and rebuild the hardware token map for packed-vertex mode | 1 | y | inferred | S3 |
| 0x020 | set the stencil write mask | 1 | y | inferred | S3 |
| 0x021 | set the colour write mask | 4 | y | inferred | S3 |
| 0x022 | set the depth write mask | 1 | y | inferred | S3 |
| 0x023 | set the colour-index write mask | 1 | y | inferred | S3 |
| 0x02e | set the logic operation | 1 | y | inferred | S3 |
| 0x0a7 | set the current edge flag | 1 | y | inferred | S3 |
| 0x0b6 | set face culling | 1 | y | inferred | S3 |
| 0x0ba | set front-face winding | 1 | y | inferred | S3 |
| 0x0bb | set a quality hint | 2 | y | inferred | S3 |
| 0x0bc | set the line stipple | 2 | y | inferred | S3 |
| 0x0bd | set the line width | 2 | y | inferred | S3 |
| 0x0be | set the point size | 2 | y | inferred | S3 |
| 0x0bf | set the polygon fill mode | 2 | y | inferred | S3 |
| 0x0c0 | set flat or smooth shading | 1 | y | inferred | S3 |
| 0x0ca | set the alpha test | 2 | y | inferred | S3 |
| 0x0cb | set the blend factors | 2 | y | inferred | S3 |
| 0x0cc | set the stencil test | 3 | y | inferred | S3 |
| 0x0cd | set the stencil operations | 3 | y | inferred | S3 |
| 0x0ce | set the depth test | 1 | y | inferred | S3 |
| 0x0e6 | set the constant blend colour | 4 | y | inferred | S3 |
| 0x0e7 | set the blend equation | none seen; the routine hands off elsewhere | n | unknown | S3 |
| 0x10f | set the fog function table | 1 | n | inferred | S3 |
| 0x112 | switch the legacy-API compatibility mode | 1 | y | inferred | S3 |
| 0x117 | set the multisample pattern | 1 | y | inferred | S3 |
| 0x118 | set the multisample coverage mask | 2 | y | inferred | S3 |
| 0x11b | set polygon offset (extension form) | 2 | y | inferred | S3 |
| 0x168 | set polygon offset | 2 | y | inferred | S3 |
| 0x1a4 | set a sprite parameter (integer) | 2 | y | inferred | S3 |
| 0x1a5 | set sprite parameters (float vector) | 8 | y | inferred | S3 |
| 0x1a7 | set a point parameter (float) | 2 | y | inferred | S3 |
| 0x1a8 | set point parameters (float vector) | 3 | y | inferred | S3 |
| 0x1c5 | free an ARM texture-cache entry | 1 | y | inferred | S3 |
| 0x1c9 | set triangle-mesh mode | 1 | y | inferred | S3 |
| 0x1ca | load engine transform attributes | 1 | n | inferred | S3 |
| 0x1ce | set lazy-validation mode | 1 | y | inferred | S3 |

### 2.7 Clear and accumulate

| Token | Role | Payload reads seen | Last-word read | Grade | Evidence |
|---|---|---|---|---|---|
| 0x01a | clear the selected buffers | 1 | y | inferred | S3 |
| 0x01b | set the accumulation-buffer clear value | 4 | y | inferred | S3 |
| 0x01c | set the colour-index clear value | 1 | y | inferred | S3 |
| 0x01d | set the colour clear value | 4 | y | inferred | S3 |
| 0x01e | set the stencil clear value | 1 | y | inferred | S3 |
| 0x01f | set the depth clear value | 2 | y | inferred | S3 |
| 0x0c5 | accumulation-buffer operation | 2 | y | inferred | S3 |

### 2.8 Enable and disable

| Token | Role | Payload reads seen | Last-word read | Grade | Evidence |
|---|---|---|---|---|---|
| 0x024 | enable a capability | 1 | y | inferred | S3 |
| 0x025 | disable a capability | 1 | y | inferred | S3 |

### 2.9 Lighting and material

| Token | Role | Payload reads seen | Last-word read | Grade | Evidence |
|---|---|---|---|---|---|
| 0x007 | set a light parameter (float form) | 6 | y | inferred | S3 |
| 0x008 | set a light parameter (integer form) | 6 | y | inferred | S3 |
| 0x009 | set a lighting-model parameter (float form) | 5 | y | inferred | S3 |
| 0x00a | set a lighting-model parameter (integer form) | 5 | y | inferred | S3 |
| 0x0b5 | set colour-material tracking | 2 | y | inferred | S3 |
| 0x113 | set the colour-material value | 1 | y | inferred | S3 |
| 0x119 | pop saved light state | 1 | n | inferred | S3 |

### 2.10 Matrices, viewport and clipping

| Token | Role | Payload reads seen | Last-word read | Grade | Evidence |
|---|---|---|---|---|---|
| 0x00c | set the scissor box | 4 | y | inferred | S3 |
| 0x0b4 | set a user clip plane | 8 | y | inferred | S3 |
| 0x0cf | set the depth range | 4 | y | inferred | S3 |
| 0x0d0 | select the current matrix stack | 1 | y | inferred | S3 |
| 0x0e3 | set the viewport | 4 | y | inferred | S3 |

### 2.11 Texture

| Token | Role | Payload reads seen | Last-word read | Grade | Evidence |
|---|---|---|---|---|---|
| 0x011 | set a texture-environment parameter (float form) | 5 | y | inferred | S3 |
| 0x012 | set a texture-environment parameter (integer form) | 5 | y | inferred | S3 |
| 0x013 | texture-coordinate generation, double form | none seen; the routine hands off elsewhere | n | unknown | S3 |
| 0x014 | texture-coordinate generation, float form | 9 | y | inferred | S3 |
| 0x015 | texture-coordinate generation, integer form | none seen; the routine hands off elsewhere | n | unknown | S3 |
| 0x016 | bind a texture by old-style binding | none seen; the routine hands off elsewhere | n | unknown | S3 |
| 0x0fd | copy a 2D texture image from the frame buffer | 17 | y | inferred | S3 |
| 0x106 | bind a linear texture | 7 | y | inferred | S3 |
| 0x173 | texture-load set-up (image size and format) | 11 | y | inferred | S3 |
| 0x174 | draw texels into texture memory | 19 | n | inferred | S3 |
| 0x176 | texture-load by identifier | 1 | y | inferred | S3 |
| 0x177 | select the active texture unit | 1 | y | inferred | S3 |
| 0x178 | bind a texture by identifier | 1 | y | inferred | S3 |
| 0x17a | bind a bicubic texture | 3 | n | inferred | S3 |
| 0x17b | bind a 3D mip-mapped texture | 4 | n | inferred | S3 |
| 0x17c | bind a 3D texture | 2 | n | inferred | S3 |
| 0x17d | bind a detail texture | 6 | y | inferred | S3 |
| 0x17e | load one entry of the ARM texture table (33 words) | 3 | y | inferred | S3 |
| 0x1aa | bind a 2D clip-map texture | 7 | y | inferred | S3 |
| 0x1bb | set a texel-store parameter | 2 | y | inferred | S3 |
| 0x1c4 | bind an ARM texture-cache entry | 1 | y | inferred | S3 |
| 0x1c7 | set shadow-texture state | 3 | y | inferred | S3 |
| 0x1d5 | bind a texture, current form | 7 | y | inferred | S3 |
| 0x1d6 | pop texture-generation state | 1 | n | inferred | S3 |
| 0x1d7 | change the post-texture scale and bias | 4 | y | inferred | S3 |
| 0x1e0 | invalidate an ARM texture-cache index | 2 | y | inferred | S3 |

The word layouts behind these tokens are in sections 7.10-7.14: the load headers (0x173, 0x174, 0x176) in 7.10, level addresses and the filter-coefficient table in 7.11, texel formats in 7.12, the binds in 7.13 and the environment and filter state in 7.14. Two corrections to the role names above: token 0x174 carries twenty words (nineteen plain reads and a final read, which decides whether the image follows inline), and token 0x17e carries thirty-four (a slot number and thirty-three filter-coefficient words), because the firmware reads them through a block helper that the scan does not count.

### 2.12 Pixels, bitmaps and filters

| Token | Role | Payload reads seen | Last-word read | Grade | Evidence |
|---|---|---|---|---|---|
| 0x005 | draw a bitmap from a display list | 8, then word 6 - 1 image words (section 7.15) | n | inferred | S3, S31, recording |
| 0x006 | draw a bitmap | 9, then the image as for a pixel draw (section 7.15) | n | established | S3, S31, S32 |
| 0x00b | load the polygon stipple pattern | 2 | n | inferred | S3 |
| 0x02f | set the pixel zoom factors | 2 | y | inferred | S3 |
| 0x030 | set a pixel-transfer parameter (float form) | 1 | y | inferred | S3 |
| 0x033 | set a pixel-store parameter (integer form) | 2 | y | inferred | S3 |
| 0x034 | load a pixel map (float values) | 4 header words, then n values (section 7.15) | y | established | S3, S32 |
| 0x035 | load a pixel map (unsigned 32-bit values) | 4 header words, then n values (section 7.15) | y | established | S3, S32 |
| 0x036 | load a pixel map (unsigned 16-bit values) | 4 header words, then n values (section 7.15) | y | established | S3, S32 |
| 0x038 | copy a pixel rectangle within the frame buffer | 7 | y | inferred | S3 |
| 0x039 | read a pixel rectangle back to the host | 7 | y | inferred | S3 |
| 0x03a | draw a pixel rectangle from host data | 8, then the image words (section 7.15) | n | established | S3, S31, S32 |
| 0x0e8 | load a colour table | 9 | y | inferred | S3 |
| 0x0eb | set colour-table parameters | 6 | y | inferred | S3 |
| 0x0ef | load a 1D convolution filter | 7 | y | inferred | S3 |
| 0x0f0 | load a 2D convolution filter | 7 | n | inferred | S3 |
| 0x0f2 | copy a 1D convolution filter from the frame buffer | 4 | y | inferred | S3 |
| 0x0f3 | copy a 2D convolution filter from the frame buffer | 5 | y | inferred | S3 |
| 0x0f5 | load a separable 2D filter | 9 | y | inferred | S3 |
| 0x0f8 | set pixel-transform parameters (integer) | 2 | n | inferred | S3 |
| 0x0f9 | set pixel-transform parameters (float) | 9 | y | inferred | S3 |
| 0x102 | set up a histogram | 5 | y | inferred | S3 |
| 0x103 | reset a histogram | 1 | y | inferred | S3 |
| 0x107 | set up min/max tracking | 2 | y | inferred | S3 |
| 0x108 | reset min/max tracking | 1 | y | inferred | S3 |
| 0x110 | ask whether a copy source overlaps its destination | 4 | y | inferred | S3 |
| 0x111 | suspend pixel-mode state around a transfer | 2 | y | established | S3, S31, S32 |
| 0x115 | ask whether a convolution copy overlaps | 4 | y | inferred | S3 |
| 0x116 | resolve whether a pixel format is single-component | 4 | y | inferred | S3 |
| 0x135 | set the pixel-transform mode | 1 | y | inferred | S3 |

### 2.13 Queries

| Token | Role | Payload reads seen | Last-word read | Grade | Evidence |
|---|---|---|---|---|---|
| 0x03b | query current vertex attributes | 1 | y | inferred | S3 |
| 0x03c | query a clip plane | 1 | y | inferred | S3 |
| 0x03d | query the raster position state | 1 | y | inferred | S3 |
| 0x03e | query the pending error | 1 | y | inferred | S3 |
| 0x041 | query a light (float) | 2 | y | inferred | S3 |
| 0x046 | query a material (float) | 2 | y | inferred | S3 |
| 0x048 | query a pixel map (float) | 3 | y | inferred | S3 |
| 0x04b | query the polygon stipple | 1 | y | inferred | S3 |
| 0x04c | query state (generic) | 1 | y | inferred | S3 |
| 0x04d | query texture environment (float) | 1 | y | inferred | S3 |
| 0x050 | query texture generation (float) | 2 | y | inferred | S3 |
| 0x052 | query a texture image | 18 | y | inferred | S3 |
| 0x0ea | query a colour table | 4 | y | inferred | S3 |
| 0x0ec | query colour-table parameters | 2 | y | inferred | S3 |
| 0x0ee | query the line-mode limit table | 1 | y | inferred | S3 |
| 0x0f4 | query a convolution filter | 2 | y | inferred | S3 |
| 0x0f7 | query a separable filter | 3 | y | inferred | S3 |
| 0x0fa | query pixel-transform parameters (integer) | 2 | y | inferred | S3 |
| 0x104 | query a histogram | 1 | y | inferred | S3 |
| 0x105 | query histogram parameters | 2 | y | inferred | S3 |
| 0x109 | query min/max results | 1 | y | inferred | S3 |
| 0x10a | query min/max parameters | 1 | y | inferred | S3 |
| 0x134 | query engine-side texture attributes | 1 | y | inferred | S3 |
| 0x1c6 | query the deformation state | 1 | y | inferred | S3 |
| 0x1cb | query engine transform attributes | 1 | y | inferred | S3 |
| 0x1e9 | query the board configuration block (478 words) | 1 | y | inferred | S3 |

### 2.14 Selection, feedback and attributes

| Token | Role | Payload reads seen | Last-word read | Grade | Evidence |
|---|---|---|---|---|---|
| 0x017 | select the feedback record type | 1 | y | inferred | S3 |
| 0x019 | switch between render, select and feedback modes | 1 | y | inferred | S3 |
| 0x0c1 | insert a feedback pass-through marker | 1 | y | inferred | S3 |
| 0x0c2 | pop a selection name | 1 | y | inferred | S3 |
| 0x0c3 | push a selection name | 1 | y | inferred | S3 |
| 0x0c8 | pop the attribute stack | 1 | y | inferred | S3 |
| 0x0c9 | push the attribute stack | 1 | y | inferred | S3 |
| 0x10c | clear the selection name stack | 1 | y | inferred | S3 |
| 0x10d | replace the top selection name | 1 | y | inferred | S3 |

### 2.15 Display lists and DMA

| Token | Role | Payload reads seen | Last-word read | Grade | Evidence |
|---|---|---|---|---|---|
| 0x167 | copy a user list by list DMA | 4 | y | inferred | S3 |
| 0x16c | copy a list by list DMA | 2 | n | inferred | S3 |
| 0x16d | execute a list by list DMA | 2 | y | inferred | S3 |
| 0x16e | execute a list by input DMA | 2 | y | inferred | S3 |
| 0x16f | move a list by list DMA | 3 | y | inferred | S3 |
| 0x170 | execute a list by list DMA, repeated | 2 | n | inferred | S3 |
| 0x171 | execute a list by input DMA, repeated | 2 | n | inferred | S3 |
| 0x1c8 | copy a list by input DMA then list DMA | 2 | y | inferred | S3 |
| 0x1eb | start an input DMA | 6 | y | inferred | S3 |

### 2.16 Vertex arrays, evaluators and patches

| Token | Role | Payload reads seen | Last-word read | Grade | Evidence |
|---|---|---|---|---|---|
| 0x026 | evaluate a 1D grid strip | 3 | y | inferred | S3 |
| 0x027 | evaluate a 2D grid strip | 5 | y | inferred | S3 |
| 0x02a | load 1D evaluator control points | 1 | n | inferred | S3 |
| 0x02b | load 2D evaluator control points | 1 | n | inferred | S3 |
| 0x0a8 | set the raster position, 2 components, double | 4 | y | inferred | S3 |
| 0x0a9 | set the raster position, 2 components, float | 2 | y | inferred | S3 |
| 0x0aa | set the raster position, 2 components, 32-bit integer | 2 | y | inferred | S3 |
| 0x0ab | set the raster position, 2 components, short | 2 | y | inferred | S3 |
| 0x0ac | set the raster position, 3 components, double | 6 | y | inferred | S3 |
| 0x0ad | set the raster position, 3 components, float | 3 | y | inferred | S3 |
| 0x0ae | set the raster position, 3 components, 32-bit integer | 3 | y | inferred | S3 |
| 0x0af | set the raster position, 3 components, short | 3 | y | inferred | S3 |
| 0x0b0 | set the raster position, 4 components, double | 8 | y | inferred | S3 |
| 0x0b1 | set the raster position, 4 components, float | 4 | y | inferred | S3 |
| 0x0b2 | set the raster position, 4 components, 32-bit integer | 4 | y | inferred | S3 |
| 0x0b3 | set the raster position, 4 components, short | 4 | y | inferred | S3 |
| 0x10e | set the current raster position (fifteen words) | 2 | y | inferred | S3 |
| 0x180 | set the vertex-array command table | 1 | y | inferred | S3 |
| 0x181 | vertex-array set-up | 1 | y | inferred | S3 |
| 0x182 | begin a vertex-array loop | 3 | y | inferred | S3 |
| 0x1a3 | vertex-array tear-down | 1 | y | inferred | S3 |
| 0x1b7 | packed-vertex set-up | 2 | y | inferred | S3 |
| 0x1cf | packed-vertex clean-up | 1 | y | inferred | S3 |
| 0x1d0 | subdivision patch | 4 | n | inferred | S3 |
| 0x1d1 | subdivision patch set-up | 1 | y | inferred | S3 |
| 0x1d2 | subdivision patch clean-up | 1 | y | inferred | S3 |
| 0x1d3 | subdivision patch parameter | 2 | y | inferred | S3 |

### 2.17 Instruments

| Token | Role | Payload reads seen | Last-word read | Grade | Evidence |
|---|---|---|---|---|---|
| 0x1b8 | set the instrumentation buffer | 1 | y | inferred | S3 |
| 0x1b9 | start instrumentation | 1 | y | inferred | S3 |
| 0x1ba | stop instrumentation | 1 | y | inferred | S3 |
| 0x1cd | read instrumentation counters | 1 | y | inferred | S3 |

### 2.18 Ignored tokens

| Token | Role | Payload reads seen | Last-word read | Grade | Evidence |
|---|---|---|---|---|---|
| 0x175 | texture-load set-up, second form | none seen; the routine hands off elsewhere | n | unknown | S3 |
| 0x1fe | kernel-private command (ignored) | none seen; the routine hands off elsewhere | n | unknown | S3 |

## 3. Routed host tokens (206)

Tokens whose map entry has bit 0 set never reach a processor routine: the host interface forwards them to the geometry distributor and the engines, using the entry's fields ([entry format](#41-token-map-entry-fields)). "Form" is the entry's bit 31: geometry form carries a 3-bit count (a field of 0 reads as 8 words, inferred from the double-precision four-component tokens, whose 8 words do not fit a 3-bit count otherwise) and pass form a 5-bit count (a field of 0 reads as 32, established by the double-precision matrix tokens). "Words that follow" is that count; for vertex-attribute tokens some components ride in the token word itself, so treat the count as the map's value, not as a byte length. "Command no." is the 9-bit command number in entry bits 23:15. Grade is established where the count is a plain field and inferred where it needs the 0-reads-as-8 rule. The role names are inferred from the distributor and engine listings ([S4](#1-how-to-read-this-table)).


### 3.1 Begin, end and primitive grammar

| Token | Role | Form | Legal between begin and end | Chain | Command no. | Words that follow | Grade | Evidence |
|---|---|---|---|---|---|---|---|---|
| 0x003 | begin primitive: rectangle (shares the quad entry) | geometry | begin token | no | 394 | 1 (the token word itself; data-invalid) | established | S1, S2, S4 |
| 0x057 | begin primitive: points | geometry | begin token | no | 388 | 1 (the token word itself; data-invalid) | established | S1, S2, S4 |
| 0x058 | begin primitive: independent lines | geometry | begin token | no | 397 | 1 (the token word itself; data-invalid) | established | S1, S2, S4 |
| 0x059 | begin primitive: line loop | geometry | begin token | no | 390 | 1 (the token word itself; data-invalid) | established | S1, S2, S4 |
| 0x05a | begin primitive: line strip | geometry | begin token | no | 389 | 1 (the token word itself; data-invalid) | established | S1, S2, S4 |
| 0x05b | begin primitive: independent triangles | geometry | begin token | no | 391 | 1 (the token word itself; data-invalid) | established | S1, S2, S4 |
| 0x05c | begin primitive: triangle strip | geometry | begin token | no | 392 | 1 (the token word itself; data-invalid) | established | S1, S2, S4 |
| 0x05d | begin primitive: triangle fan | geometry | begin token | no | 393 | 1 (the token word itself; data-invalid) | established | S1, S2, S4 |
| 0x05e | begin primitive: independent quads | geometry | begin token | no | 394 | 1 (the token word itself; data-invalid) | established | S1, S2, S4 |
| 0x05f | begin primitive: quad strip | geometry | begin token | no | 395 | 1 (the token word itself; data-invalid) | established | S1, S2, S4 |
| 0x060 | begin primitive: polygon | geometry | begin token | no | 396 | 1 (the token word itself; data-invalid) | established | S1, S2, S4 |
| 0x071 | end the open primitive | geometry | end token | no | 386 | 1 (the token word itself; data-invalid) | established | S1, S2, S4 |
| 0x1a9 | swap triangle-mesh vertex (begin/end grammar) | geometry | yes | no | 387 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x1d4 | begin primitive: subdivision patch | geometry | begin token | no | 405 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |

### 3.2 Current colour

| Token | Role | Form | Legal between begin and end | Chain | Command no. | Words that follow | Grade | Evidence |
|---|---|---|---|---|---|---|---|---|
| 0x061 | set current colour, 3 components, signed byte | geometry | yes | no | 16 | 3 | inferred | S1, S4 |
| 0x062 | set current colour, 3 components, double | geometry | yes | no | 144 | 6 | inferred | S1, S4 |
| 0x063 | set current colour, 3 components, single float | geometry | yes | no | 144 | 3 | inferred | S1, S4 |
| 0x064 | set current colour, 3 components, signed 32-bit integer | geometry | yes | no | 16 | 3 | inferred | S1, S4 |
| 0x065 | set current colour, 3 components, signed short | geometry | yes | no | 16 | 3 | inferred | S1, S4 |
| 0x066 | set current colour, 3 components, unsigned byte | geometry | yes | no | 272 | 3 | inferred | S1, S4 |
| 0x067 | set current colour, 3 components, unsigned 32-bit integer | geometry | yes | no | 272 | 3 | inferred | S1, S4 |
| 0x068 | set current colour, 3 components, unsigned short | geometry | yes | no | 272 | 3 | inferred | S1, S4 |
| 0x069 | set current colour, 4 components, signed byte | geometry | yes | no | 16 | 4 | inferred | S1, S4 |
| 0x06a | set current colour, 4 components, double | geometry | yes | no | 144 | 8 | inferred | S1, S4 |
| 0x06b | set current colour, 4 components, single float | geometry | yes | no | 144 | 4 | inferred | S1, S4 |
| 0x06c | set current colour, 4 components, signed 32-bit integer | geometry | yes | no | 16 | 4 | inferred | S1, S4 |
| 0x06d | set current colour, 4 components, signed short | geometry | yes | no | 16 | 4 | inferred | S1, S4 |
| 0x06e | set current colour, 4 components, unsigned byte | geometry | yes | no | 272 | 4 | inferred | S1, S4 |
| 0x06f | set current colour, 4 components, unsigned 32-bit integer | geometry | yes | no | 272 | 4 | inferred | S1, S4 |
| 0x070 | set current colour, 4 components, unsigned short | geometry | yes | no | 272 | 4 | inferred | S1, S4 |

### 3.3 Current colour index and normal

| Token | Role | Form | Legal between begin and end | Chain | Command no. | Words that follow | Grade | Evidence |
|---|---|---|---|---|---|---|---|---|
| 0x072 | set current colour index, double | geometry | yes | no | 145 | 2 | inferred | S1, S4 |
| 0x073 | set current colour index, single float | geometry | yes | no | 145 | 1 | inferred | S1, S4 |
| 0x074 | set current colour index, signed 32-bit integer | geometry | yes | no | 17 | 1 | inferred | S1, S4 |
| 0x075 | set current colour index, signed short | geometry | yes | no | 17 | 1 | inferred | S1, S4 |
| 0x076 | set current normal, 3 components, signed byte | geometry | yes | no | 15 | 3 | inferred | S1, S4 |
| 0x077 | set current normal, 3 components, double | geometry | yes | no | 143 | 6 | inferred | S1, S4 |
| 0x078 | set current normal, 3 components, single float | geometry | yes | no | 143 | 3 | inferred | S1, S4 |
| 0x079 | set current normal, 3 components, signed 32-bit integer | geometry | yes | no | 15 | 3 | inferred | S1, S4 |
| 0x07a | set current normal, 3 components, signed short | geometry | yes | no | 15 | 3 | inferred | S1, S4 |

### 3.4 Current texture coordinate

| Token | Role | Form | Legal between begin and end | Chain | Command no. | Words that follow | Grade | Evidence |
|---|---|---|---|---|---|---|---|---|
| 0x07b | set current texture coordinate, 1 components, double | geometry | yes | no | 146 | 2 | inferred | S1, S4 |
| 0x07c | set current texture coordinate, 1 components, single float | geometry | yes | no | 146 | 1 | inferred | S1, S4 |
| 0x07d | set current texture coordinate, 1 components, signed 32-bit integer | geometry | yes | no | 18 | 1 | inferred | S1, S4 |
| 0x07e | set current texture coordinate, 1 components, signed short | geometry | yes | no | 18 | 1 | inferred | S1, S4 |
| 0x07f | set current texture coordinate, 2 components, double | geometry | yes | no | 146 | 4 | inferred | S1, S4 |
| 0x080 | set current texture coordinate, 2 components, single float | geometry | yes | no | 146 | 2 | inferred | S1, S4 |
| 0x081 | set current texture coordinate, 2 components, signed 32-bit integer | geometry | yes | no | 18 | 2 | inferred | S1, S4 |
| 0x082 | set current texture coordinate, 2 components, signed short | geometry | yes | no | 18 | 2 | inferred | S1, S4 |
| 0x083 | set current texture coordinate, 3 components, double | geometry | yes | no | 146 | 6 | inferred | S1, S4 |
| 0x084 | set current texture coordinate, 3 components, single float | geometry | yes | no | 146 | 3 | inferred | S1, S4 |
| 0x085 | set current texture coordinate, 3 components, signed 32-bit integer | geometry | yes | no | 18 | 3 | inferred | S1, S4 |
| 0x086 | set current texture coordinate, 3 components, signed short | geometry | yes | no | 18 | 3 | inferred | S1, S4 |
| 0x087 | set current texture coordinate, 4 components, double | geometry | yes | no | 146 | 8 | inferred | S1, S4 |
| 0x088 | set current texture coordinate, 4 components, single float | geometry | yes | no | 146 | 4 | inferred | S1, S4 |
| 0x089 | set current texture coordinate, 4 components, signed 32-bit integer | geometry | yes | no | 18 | 4 | inferred | S1, S4 |
| 0x08a | set current texture coordinate, 4 components, signed short | geometry | yes | no | 18 | 4 | inferred | S1, S4 |

### 3.5 Vertex submission

| Token | Role | Form | Legal between begin and end | Chain | Command no. | Words that follow | Grade | Evidence |
|---|---|---|---|---|---|---|---|---|
| 0x08b | submit a vertex, 2 components, double | geometry | yes | no | 206 | 4 | inferred | S1, S4 |
| 0x08c | submit a vertex, 2 components, single float | geometry | yes | no | 206 | 2 | inferred | S1, S4 |
| 0x08d | submit a vertex, 2 components, signed 32-bit integer | geometry | yes | no | 78 | 2 | inferred | S1, S4 |
| 0x08e | submit a vertex, 2 components, signed short | geometry | yes | no | 78 | 2 | inferred | S1, S4 |
| 0x08f | submit a vertex, 3 components, double | geometry | yes | no | 206 | 6 | inferred | S1, S4 |
| 0x090 | submit a vertex, 3 components, single float | geometry | yes | no | 206 | 3 | inferred | S1, S4 |
| 0x091 | submit a vertex, 3 components, signed 32-bit integer | geometry | yes | no | 78 | 3 | inferred | S1, S4 |
| 0x092 | submit a vertex, 3 components, signed short | geometry | yes | no | 78 | 3 | inferred | S1, S4 |
| 0x093 | submit a vertex, 4 components, double | geometry | yes | no | 206 | 8 | inferred | S1, S4 |
| 0x094 | submit a vertex, 4 components, single float | geometry | yes | no | 206 | 4 | inferred | S1, S4 |
| 0x095 | submit a vertex, 4 components, signed 32-bit integer | geometry | yes | no | 78 | 4 | inferred | S1, S4 |
| 0x096 | submit a vertex, 4 components, signed short | geometry | yes | no | 78 | 4 | inferred | S1, S4 |

### 3.6 Packed vertices

| Token | Role | Form | Legal between begin and end | Chain | Command no. | Words that follow | Grade | Evidence |
|---|---|---|---|---|---|---|---|---|
| 0x1ab | packed vertex: position (3 floats) | geometry | yes | no | 206 | 3 | inferred | S1, S4 |
| 0x1ac | packed vertex: position (3 floats), colour (4 unsigned bytes in one word) | geometry | yes | no | 206 | 4 | inferred | S1, S4 |
| 0x1ad | packed vertex: position (3 floats), normal (3 signed shorts packed) | geometry | yes | no | 206 | 4 | inferred | S1, S4 |
| 0x1ae | packed vertex: position (3 floats), colour (4 unsigned bytes in one word), normal (3 signed shorts packed) | geometry | yes | no | 206 | 5 | inferred | S1, S4 |
| 0x1af | packed vertex: position (3 floats), texture coordinate (2 floats) | geometry | yes | no | 206 | 5 | inferred | S1, S4 |
| 0x1b0 | packed vertex: position (3 floats), colour (4 unsigned bytes in one word), texture coordinate (2 floats) | geometry | yes | no | 206 | 6 | inferred | S1, S4 |
| 0x1b1 | packed vertex: position (3 floats), normal (3 signed shorts packed), texture coordinate (2 floats) | geometry | yes | no | 206 | 6 | inferred | S1, S4 |
| 0x1b2 | packed vertex: position (3 floats), colour (4 unsigned bytes in one word), normal (3 signed shorts packed), texture coordinate (2 floats) | geometry | yes | no | 206 | 7 | inferred | S1, S4 |
| 0x1b3 | packed vertex: position (3 floats), texture coordinate (2 signed shorts in one word) | geometry | yes | no | 206 | 4 | inferred | S1, S4 |
| 0x1b4 | packed vertex: position (3 floats), colour (4 unsigned bytes in one word), texture coordinate (2 signed shorts in one word) | geometry | yes | no | 206 | 5 | inferred | S1, S4 |
| 0x1b5 | packed vertex: position (3 floats), normal (3 signed shorts packed), texture coordinate (2 signed shorts in one word) | geometry | yes | no | 206 | 5 | inferred | S1, S4 |
| 0x1b6 | packed vertex: position (3 floats), colour (4 unsigned bytes in one word), normal (3 signed shorts packed), texture coordinate (2 signed shorts in one word) | geometry | yes | no | 206 | 6 | inferred | S1, S4 |

### 3.7 Material, evaluator and deformation

| Token | Role | Form | Legal between begin and end | Chain | Command no. | Words that follow | Grade | Evidence |
|---|---|---|---|---|---|---|---|---|
| 0x028 | set up a 1D evaluator grid | pass | no | no | 153 | 4 | established | S1, S2, S4 |
| 0x029 | set up a 2D evaluator grid | pass | no | no | 154 | 8 | established | S1, S2, S4 |
| 0x02c | set up a 1D evaluator map specification | pass | no | no | 155 | 12 | inferred | S1, S4 |
| 0x02d | set up a 2D evaluator map specification | pass | no | no | 156 | 17 | inferred | S1, S4 |
| 0x097 | set a material parameter (float form) | geometry | yes | no | 129 | 6 | inferred | S1, S4 |
| 0x098 | continuation entry of the float material parameter | geometry | yes | no | 159 | 4 | inferred | S1, S4 |
| 0x099 | set a material parameter (integer form) | geometry | yes | yes | 159 | 2 | inferred | S1, S4 |
| 0x09a | continuation entry of the integer material parameter | geometry | yes | no | 1 | 4 | inferred | S1, S4 |
| 0x09b | evaluator coordinate, 1D, double | pass | yes | yes | 448 | 1 | inferred | S1, S4 |
| 0x09c | continuation entry of the evaluator eval coord1d | geometry | yes | no | 142 | 2 | inferred | S1, S4 |
| 0x09d | evaluator coordinate, 1D, single float | pass | yes | yes | 448 | 1 | inferred | S1, S4 |
| 0x09e | continuation entry of the evaluator eval coord1f | geometry | yes | no | 142 | 1 | inferred | S1, S4 |
| 0x09f | evaluator coordinate, 2D, double | pass | yes | yes | 448 | 1 | inferred | S1, S4 |
| 0x0a0 | continuation entry of the evaluator eval coord2d | geometry | yes | no | 142 | 4 | inferred | S1, S4 |
| 0x0a1 | evaluator coordinate, 2D, single float | pass | yes | yes | 448 | 1 | inferred | S1, S4 |
| 0x0a2 | continuation entry of the evaluator eval coord2f | geometry | yes | no | 142 | 2 | inferred | S1, S4 |
| 0x0a3 | evaluator grid point, 1D | pass | yes | yes | 448 | 1 | inferred | S1, S4 |
| 0x0a4 | continuation entry of the evaluator eval point1 | geometry | yes | no | 142 | 1 | inferred | S1, S4 |
| 0x0a5 | evaluator grid point, 2D | pass | yes | yes | 448 | 1 | inferred | S1, S4 |
| 0x0a6 | continuation entry of the evaluator eval point2 | geometry | yes | no | 142 | 2 | inferred | S1, S4 |
| 0x1be | set colour/normal mode value (distributor register 0x293) | pass | yes | no | 192 | 1 | inferred | S1, S4 |
| 0x1bf | deformation control | pass | yes | no | 128 | 1 | inferred | S1, S4 |
| 0x1c0 | deformation map, float form | pass | no | no | 221 | 31 | inferred | S1, S4 |
| 0x1c1 | deformation map, double form | pass | no | yes | 223 | 7 | inferred | S1, S4 |
| 0x1c2 | continuation entry of the double deformation map | pass | no | no | 221 | 24 | inferred | S1, S4 |
| 0x1c3 | load identity deformation | pass | no | no | 222 | 1 | inferred | S1, S4 |

### 3.8 Matrices

| Token | Role | Form | Legal between begin and end | Chain | Command no. | Words that follow | Grade | Evidence |
|---|---|---|---|---|---|---|---|---|
| 0x0d1 | multiply the current matrix by a frustum | pass | no | no | 133 | 12 | established | S1, S2, S4 |
| 0x0d2 | load the identity matrix | pass | no | no | 131 | 1 | established | S1, S2, S4 |
| 0x0d3 | load a matrix (16 floats) | pass | no | no | 196 | 16 | established | S1, S2, S4 |
| 0x0d4 | load a matrix (16 doubles) | pass | no | no | 196 | 32 | established | S1, S2, S4 |
| 0x0d5 | multiply by a matrix (16 floats) | pass | no | no | 198 | 16 | established | S1, S2, S4 |
| 0x0d6 | multiply by a matrix (16 doubles) | pass | no | no | 198 | 32 | established | S1, S2, S4 |
| 0x0d7 | multiply the current matrix by an orthographic projection | pass | no | no | 135 | 12 | established | S1, S2, S4 |
| 0x0d8 | pop the matrix stack | pass | no | no | 8 | 1 | established | S1, S2, S4 |
| 0x0d9 | push the matrix stack | pass | no | no | 9 | 1 | established | S1, S2, S4 |
| 0x0da | rotate (doubles) | pass | no | no | 202 | 8 | established | S1, S2, S4 |
| 0x0db | rotate (floats) | pass | no | no | 202 | 4 | established | S1, S2, S4 |
| 0x0dc | scale (doubles) | pass | no | no | 203 | 6 | established | S1, S2, S4 |
| 0x0dd | scale (floats) | pass | no | no | 203 | 3 | established | S1, S2, S4 |
| 0x0de | translate (doubles) | pass | no | no | 204 | 6 | established | S1, S2, S4 |
| 0x0df | translate (floats) | pass | no | no | 204 | 3 | established | S1, S2, S4 |

### 3.9 Window-system drawing and loads

| Token | Role | Form | Legal between begin and end | Chain | Command no. | Words that follow | Grade | Evidence |
|---|---|---|---|---|---|---|---|---|
| 0x129 | window-system graphics-context load (13 words) | pass | no | no | 179 | 13 | established | S1, S2, S4 |
| 0x12a | window-system drawable origin and size load | pass | no | no | 180 | 4 | established | S1, S2, S4 |
| 0x12b | window-system clip load | pass | no | no | 181 | 5 | established | S1, S2, S4 |
| 0x12d | window-system scissor load | pass | no | no | 182 | 4 | established | S1, S2, S4 |
| 0x141 | window-system 1-word data preload | pass | no | no | 128 | 1 | inferred | S1, S4 |
| 0x142 | window-system 2-word data preload | pass | no | no | 128 | 2 | inferred | S1, S4 |
| 0x143 | window-system 3-word data preload | pass | no | no | 128 | 3 | inferred | S1, S4 |
| 0x144 | window-system 4-word data preload | pass | no | no | 128 | 4 | inferred | S1, S4 |
| 0x145 | window-system four-word data preload, byte form | pass | no | no | 128 | 4 | inferred | S1, S4 |
| 0x146 | window-system 5-word data preload | pass | no | no | 128 | 5 | inferred | S1, S4 |
| 0x147 | window-system 6-word data preload | pass | no | no | 128 | 6 | inferred | S1, S4 |
| 0x148 | window-system 7-word data preload | pass | no | no | 128 | 7 | inferred | S1, S4 |
| 0x149 | window-system 8-word data preload | pass | no | no | 128 | 8 | inferred | S1, S4 |
| 0x14a | window-system 9-word data preload | pass | no | no | 128 | 9 | inferred | S1, S4 |
| 0x14b | window-system 10-word data preload | pass | no | no | 128 | 10 | inferred | S1, S4 |
| 0x14c | draw absolute points | pass | no | no | 170 | 1 | established | S1, S2, S4 |
| 0x14d | draw absolute points (burst of 6) | pass | no | no | 170 | 6 | established | S1, S2, S4 |
| 0x14e | draw absolute points (burst of 24) | pass | no | no | 170 | 24 | established | S1, S2, S4 |
| 0x14f | draw relative points | pass | no | no | 171 | 1 | established | S1, S2, S4 |
| 0x150 | draw relative points (burst of 6) | pass | no | no | 171 | 6 | established | S1, S2, S4 |
| 0x151 | draw relative points (burst of 24) | pass | no | no | 171 | 24 | established | S1, S2, S4 |
| 0x152 | fill rectangles (origin, width, height) | pass | no | no | 172 | 2 | established | S1, S2, S4 |
| 0x153 | fill rectangles (origin, width, height) (burst of 6) | pass | no | no | 172 | 12 | established | S1, S2, S4 |
| 0x154 | fill boxes (two corners) | pass | no | no | 173 | 2 | established | S1, S2, S4 |
| 0x155 | fill boxes (two corners) (burst of 6) | pass | no | no | 173 | 12 | established | S1, S2, S4 |
| 0x156 | fill spans | pass | no | no | 174 | 3 | established | S1, S2, S4 |
| 0x157 | fill spans (burst of 2) | pass | no | no | 174 | 5 | established | S1, S2, S4 |
| 0x158 | fill spans (burst of 6) | pass | no | no | 174 | 13 | established | S1, S2, S4 |
| 0x159 | draw line segments | pass | no | no | 175 | 2 | established | S1, S2, S4 |
| 0x15a | draw line segments (burst of 6) | pass | no | no | 175 | 12 | inferred | S1, S4 |
| 0x15b | draw connected polyline | pass | no | no | 176 | 2 | established | S1, S2, S4 |
| 0x15c | draw connected polyline (burst of 6) | pass | no | no | 176 | 12 | established | S1, S2, S4 |
| 0x15d | draw connected polyline, relative points | pass | no | no | 177 | 2 | established | S1, S2, S4 |
| 0x15e | draw connected polyline, relative points (burst of 6) | pass | no | no | 177 | 12 | established | S1, S2, S4 |
| 0x15f | draw points in the background colour | pass | no | no | 178 | 1 | established | S1, S2, S4 |
| 0x160 | draw points in the background colour (burst of 6) | pass | no | no | 178 | 6 | established | S1, S2, S4 |
| 0x161 | draw points in the background colour (burst of 24) | pass | no | no | 178 | 24 | established | S1, S2, S4 |

### 3.10 Vertex-array loop entries

| Token | Role | Form | Legal between begin and end | Chain | Command no. | Words that follow | Grade | Evidence |
|---|---|---|---|---|---|---|---|---|
| 0x183 | vertex-array loop entry 0 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x184 | vertex-array loop entry 1 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x185 | vertex-array loop entry 2 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x186 | vertex-array loop entry 3 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x187 | vertex-array loop entry 4 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x188 | vertex-array loop entry 5 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x189 | vertex-array loop entry 6 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x18a | vertex-array loop entry 7 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x18b | vertex-array loop entry 8 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x18c | vertex-array loop entry 9 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x18d | vertex-array loop entry 10 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x18e | vertex-array loop entry 11 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x18f | vertex-array loop entry 12 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x190 | vertex-array loop entry 13 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x191 | vertex-array loop entry 14 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x192 | vertex-array loop entry 15 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x193 | vertex-array loop entry 16 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x194 | vertex-array loop entry 17 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x195 | vertex-array loop entry 18 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x196 | vertex-array loop entry 19 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x197 | vertex-array loop entry 20 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x198 | vertex-array loop entry 21 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x199 | vertex-array loop entry 22 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x19a | vertex-array loop entry 23 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x19b | vertex-array loop entry 24 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x19c | vertex-array loop entry 25 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x19d | vertex-array loop entry 26 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x19e | vertex-array loop entry 27 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x19f | vertex-array loop entry 28 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x1a0 | vertex-array loop entry 29 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x1a1 | vertex-array loop entry 30 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x1a2 | vertex-array loop entry 31 | geometry | no | no | 0 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |

### 3.11 Other routed tokens

| Token | Role | Form | Legal between begin and end | Chain | Command no. | Words that follow | Grade | Evidence |
|---|---|---|---|---|---|---|---|---|
| 0x0b7 | set a fog parameter (float form) | pass | no | no | 129 | 5 | established | S1, S2, S4 |
| 0x0b8 | set a fog parameter (integer form) | pass | no | yes | 128 | 1 | inferred | S1, S4 |
| 0x0b9 | continuation entry of the integer fog parameter | pass | no | no | 2 | 4 | inferred | S1, S4 |
| 0x0c7 | flush the vertex pipeline | pass | no | no | 130 | 1 | inferred | S1, S4 |
| 0x0e0 | copy engine work memory to control memory (no handler bound) | pass | no | no | 141 | 17 | inferred | S1, S4 |
| 0x0e1 | pass one command word through (null handler) | pass | no | no | 142 | 1 | inferred | S1, S4 |
| 0x0e2 | write one raster-bus word (mode code, low half, high half) | pass | no | no | 143 | 3 | established | S1, S2, S4 |
| 0x0ed | load the post-texture scale and bias | pass | no | no | 161 | 4 | established | S1, S2, S4 |
| 0x10b | save light attributes on the engine attribute stack (ARM-injected) | pass | no | no | 162 | 1 | inferred | S1, S4 |
| 0x16a | reserved diagnostic token 0 | pass | no | no | 64 | 1 | inferred | S1, S4 |
| 0x16b | reserved diagnostic token 1 | pass | no | no | 64 | 1 | inferred | S1, S4 |
| 0x172 | distributor no-op padding word | pass | no | no | 96 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x179 | bind a 2D mip-mapped texture (22 words) | pass | no | no | 160 | 22 | established | S1, S2, S4 |
| 0x1bd | set the reference plane | pass | no | no | 144 | 8 | established | S1, S2, S4 |
| 0x1d8 | skip 2 words (not data) | pass | yes | no | 192 | 1 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x1d9 | skip 4 words (not data) | pass | yes | no | 192 | 3 (the token word itself; data-invalid) | inferred | S1, S4 |
| 0x1da | skip 5 words (not data) | pass | yes | no | 192 | 4 (the token word itself; data-invalid) | inferred | S1, S4 |

## 4. Token-map entry fields and command descriptors

### 4.1 Token-map entry fields

Entries are 32-bit words in a 512-entry table in the host interface (ARM address 0x00400000 + 4 x token). The first group applies to every entry.

| Bits | Role | Values | Grade | Evidence |
|---|---|---|---|---|
| 0 | entry route | 0 = run a processor routine, 1 = route in hardware | established | S2 |
| 2:1 | legality between begin and end | 0 ordinary (392 tokens), 1 begin token (12), 2 end token (1), 3 vertex data, list call or context switch (107) | established | S1, S2 |
| 3 | chain: more entries follow in the same list | 1 = chained | established | S2 |
| 4 | data-invalid: counted words are not data for the engines | set on 51 routed entries (begin, end, mesh swap, patch begin, array loops, flush, no-op, skips) | inferred | S2 |
| 31:6 | processor-routine entry: handler word address (byte address shifted left 4, bits 5:4 zero) | bit 0 = 0 | established | S2 |
| 5 | routed entry: command-valid | 1 on register and pixel forms | inferred | S2 |
| 10:6 | routed pass form: payload word count | bit 31 clear; field 0 reads as 32 | established | S2 |
| 30:11 | routed pass form: distributor control; command number in 23:15 | bit 31 clear | established | S2 |
| 8:6 | routed geometry form: payload word count | bit 31 set; field 0 reads as 8 | inferred | S2 |
| 30:9 | routed geometry form: distributor control; command number in 23:15 | bit 31 set | established | S2 |
| 23:15 | command number (9 bits); low six bits index the engine handler table | pass form only | established | S2, S4 |
| 23:21 of the command number's bits 8:6 | geometry form: three flags, vertex, floating-point data, unsigned data | the command number's bits 8:6 are flags here, not a bank | inferred | S2 |
| 30:29 | data type: 2 = single precision, 3 = double precision | floating-point tokens | inferred | S2 |
| 28:27 | last-word table value (valid bytes in the last data word) | geometry form | inferred | S2 |
| 31 | routed entry form | 1 = geometry form, 0 = pass form | established | S2 |


### 4.2 Command descriptor words and ports

The firmware, and the diagnostic through the same ports, send a routed command by writing an entry-shaped descriptor word to the descriptor port and then the payload words to the data ports. These are the constants a back end sees on the engine side.

| Value or address | Role | Grade | Evidence |
|---|---|---|---|
| 0x200600 | descriptor port (ARM address of window offset 0x400) | established | S12 |
| 0x200840 | operand port (window offset 0x840): operands of a descriptor command | established | S12 |
| 0x200ac0 | data port / last-word port (window offset 0x8c0) | established | S12 |
| 0x58404800 | descriptor: routed command 128, raster-bus register write (three payload words: bit mask, address word, value) | established | S12, S4 |
| 0x584fc800 | descriptor: routed command 159, image-processor register write (same three words) | established | S12, S4 |
| 0x46a00020 | descriptor: engine register address port (distributor register 0x235) | established | S2 |
| 0x46600020 | descriptor: engine register data port (distributor register 0x233) | established | S2 |
| 0x46000020 | descriptor: set the engine handler table index | established | S2 |
| 0x46200020 | descriptor: write one engine handler table entry and advance the index | established | S2 |
| 0x48200020 | descriptor: write one word of the distributor program (1024 words) | established | S2 |
| 0x42200020 | descriptor: load the 16-word primitive-class table | established | S2 |
| 0x42600020 | descriptor: load the 512-word entry table | established | S2 |
| 0x44200020 | descriptor: distributor step register on (pipe set-up) | inferred | S3 |
| command 0, 64, 128, 192, 256, 320, 384, 448 | raster-register write commands that differ only in command-number bits 8:6 (a qualifier handed to the handler) | established | S2 |
| bits 8:6 of those commands: which register space each selects | register-space qualifier | unknown | S2 |
| 64-entry engine handler table, 43 entries bound at start-up | index = command number & 63; indexes 0-12, 14-16, 25-34 and 42-54 and 60-63 are bound; 13, 17-24, 35-41 and 55-59 are not | established | S2, S4 |
| index 3-12 rebinding | matrix operations rebind when the matrix mode changes (model-view variants at start-up) | established | S2 |
| 0x00400000 + 4 x token | hardware copy of the token map; unlisted tokens read as the bad-command routine | established | S2 |


## 5. Display-generator requests (93)

A display request travels in the carrier token 0x1a6: the host sends the request number, then that many payload words, then a checksum word equal to the sum of the request number and the payload words ([S5](#1-how-to-read-this-table)). The firmware dispatches through a 93-entry table of {payload word count, handler}. "Reply" is the reply type number and length in bytes the handler sends back, or "none". Role names are plain-word paraphrases of the firmware's own handler names (the 93 `DoDGRqst*` symbols in arm1.u's symbol table, listed in [ucode/dg_requests.md](../ucode/dg_requests.md)); the word counts, reply types and role names are all read from the firmware.

| Request | Role | Payload words | Reply | Grade | Evidence |
|---|---|---|---|---|---|
| 0 | loop-back test (adds one) | 1 | type 0x0, 4 bytes | established | S5 |
| 1 | write a display-bus word | 2 | none | established | S5 |
| 2 | read a display-bus word | 1 | type 0x1, 4 bytes | established | S5 |
| 3 | diagnostic substitute colour set | 10 | none | established | S5 |
| 4 | diagnostic substitute colour off | 1 | none | established | S5 |
| 5 | bus trace (inert) | 4 | none | established | S5 |
| 6 | diagnostic cursor from a 64 x 64 two-bit image | 4107 | none | established | S5 |
| 7 | firmware debug-print mask | 1 | none | established | S5 |
| 8 | frame-buffer tile set-up | 3 | none | established | S5 |
| 9 | input sync source select | 1 | none | established | S5 |
| 10 | input sync source read | 1 | type 0x2, 4 bytes | established | S5 |
| 11 | horizontal phase set | 2 | none | established | S5 |
| 12 | horizontal phase read | 1 | type 0x3, 4 bytes | established | S5 |
| 13 | vertical phase set | 1 | none | established | S5 |
| 14 | vertical phase read | 1 | type 0x4, 4 bytes | established | S5 |
| 15 | channel gamma map select | 2 | none | established | S5 |
| 16 | channel gamma map read | 1 | type 0x5, 4 bytes | established | S5 |
| 17 | rebuild default display state | 1 | none | established | S5 |
| 18 | board configuration read | 1 | type 0x6, 20 bytes | established | S5 |
| 19 | channel configuration read | 1 | type 0x7, 76 bytes | established | S5 |
| 20 | channel resize | 8 | none | established | S5 |
| 21 | channel resize read | 1 | type 0x8, 72 bytes | established | S5 |
| 22 | load a video format (383 words) | 383 | none | established | S5 |
| 23 | enable a channel | 3 | none | established | S5 |
| 24 | disable a channel | 1 | none | established | S5 |
| 25 | load genlock parameters | 16 | none | established | S5 |
| 26 | enable genlock | 1 | none | established | S5 |
| 27 | cursor position | 2 | none | established | S5 |
| 28 | cursor channel select | 1 | none | established | S5 |
| 29 | cursor type | 1 | none | established | S5 |
| 30 | cursor priority | 2 | none | established | S5 |
| 31 | channel blanking set | 2 | none | established | S5 |
| 32 | channel blanking read | 1 | type 0x9, 4 bytes | established | S5 |
| 33 | output gain set | 2 | none | established | S5 |
| 34 | output gain read | 1 | type 0xa, 4 bytes | established | S5 |
| 35 | sync output select | 4 | none | established | S5 |
| 36 | sync output read | 1 | type 0xb, 24 bytes | established | S5 |
| 37 | output pedestal set | 2 | none | established | S5 |
| 38 | output pedestal read | 1 | type 0xc, 4 bytes | established | S5 |
| 39 | text-port id entry initialise | 1 | none | established | S5 |
| 40 | text-port glyph load | 1 | none | established | S5 |
| 41 | text-port colour-index load | 4 | none | established | S5 |
| 42 | video-output chip read-back enable | 1 | none | established | S5 |
| 43 | master clock select | 1 | none | established | S5 |
| 44 | master clock select read | 1 | type 0xd, 4 bytes | established | S5 |
| 45 | auto-initialise from the stored combination | 1 | none | established | S5 |
| 46 | encoder load | 1 | none | established | S5 |
| 47 | encoder output gain | 1 | none | established | S5 |
| 48 | encoder output gain read | 1 | type 0xe, 4 bytes | established | S5 |
| 49 | sub-carrier phase set | 1 | none | established | S5 |
| 50 | sub-carrier phase read | 1 | type 0xf, 4 bytes | established | S5 |
| 51 | encoder test pattern | 1 | none | established | S5 |
| 52 | bind a channel to a window id | 2 | none | established | S5 |
| 53 | load the display board logic serially (1328 words) | 1328 | none | established | S5 |
| 54 | option-board size registers | 4 | none | established | S5 |
| 55 | option-board control registers | 2 | none | established | S5 |
| 56 | DAC cursor load (263 words) | 263 | none | established | S5 |
| 57 | field dominance and copy flags | 7 | none | established | S5 |
| 58 | copy-channel information read | 1 | type 0x10, 24 bytes | established | S5 |
| 59 | fast-list chunk size | 1 | none | established | S5 |
| 60 | temporary blank of all channels (nesting) | 1 | none | established | S5 |
| 61 | display interrupt state read | 1 | type 0x11, 12 bytes | established | S5 |
| 62 | XMAP clock select | 1 | none | established | S5 |
| 63 | XMAP clock select read | 1 | type 0x12, 4 bytes | established | S5 |
| 64 | channel reset ratios | 3 | none | established | S5 |
| 65 | reset the raster boards | 1 | none | established | S5 |
| 66 | channel enables read | 1 | type 0x13, 8 bytes | established | S5 |
| 67 | placement resolution | 9 | none | established | S5 |
| 68 | genlock switching set | 1 | none | established | S5 |
| 69 | genlock switching read | 1 | type 0x14, 4 bytes | established | S5 |
| 70 | channel field dominance set | 2 | none | established | S5 |
| 71 | channel field dominance read | 1 | type 0x15, 4 bytes | established | S5 |
| 72 | board reset ratio set | 1 | none | established | S5 |
| 73 | board reset ratio read | 1 | type 0x16, 4 bytes | established | S5 |
| 74 | channel format information read | 1 | type 0x17, 20 bytes | established | S5 |
| 75 | channel gamma map state set | 5 | none | established | S5 |
| 76 | channel gamma map state read | 1 | type 0x18, 16 bytes | established | S5 |
| 77 | encoder enable | 1 | none | established | S5 |
| 78 | resize sync type | 2 | none | established | S5 |
| 79 | make one channel copy another's output | 7 | none | established | S5 |
| 80 | monitor identity query | 1 | type 0x19, 68 bytes | established | S5 |
| 81 | monitor command (inert) | 34 | none | established | S5 |
| 82 | option-board logic image load | 6 | type 0x1b, 4 bytes | established | S5 |
| 83 | window-system video initialise | 1 | none | established | S5 |
| 84 | internal genlock set | 1 | none | established | S5 |
| 85 | internal genlock read | 1 | type 0x1c, 4 bytes | established | S5 |
| 86 | buffer parameters (letterbox, safe area) | 3 | none | established | S5 |
| 87 | buffer parameters read | 1 | type 0x1d, 8 bytes | established | S5 |
| 88 | data format set | 3 | none | established | S5 |
| 89 | data format read | 1 | type 0x1e, 8 bytes | established | S5 |
| 90 | double-frequency pixel option | 1 | none | established | S5 |
| 91 | option-board two-wire packet (42 words) | 42 | none | established | S5 |
| 92 | option-board reply read | 1 | type 0x1f, 164 bytes | established | S5 |


## 6. Display-bus addresses and register indices

### 6.1 Access path

| Constant | Role | Grade | Evidence |
|---|---|---|---|
| window offset 0x3c0 (host address 0x8003c0) | video-controller address port: selects a display-bus register | established | S13, S16 |
| window offset 0x3d0 (host address 0x8003d0) | video-controller data port: moves the value of the selected register | established | S13, S16 |
| window offset 0x3c8 | video-controller ready port (HH_VC_FREADY): a 1-bit register that exists; the host-interface table lists it and a dump routine reads it, but no shipped software polls it, so when it is set is unknown | unknown | S16, S45, S46 |
| window offset 0x3d8 | video-controller data port with auto-increment (HH_VC_DATA_INCR): data only, no address write first; the diagnostic's `vcWriteIncr` and `vcReadIncr` store and load it, but neither has a direct caller (both are reached only through a function-pointer table), so no call pattern shows the increment. Auto-increment is inferred by analogy with the ARM-side increment port | inferred (access established) | S16, S45 |
| bit 16 of the address written to the address port (0x10000) | selects the in-band "fast list" path for indirect memories | inferred | S6, S45 |
| ARM address 0x00600000 + 4 x A | display-bus address A as the firmware sees it (one 32-bit word per address) | established | S10 |
| raster-bus word, bits 63:52 = 0x041, bits 47:32 = address, bits 31:0 = data | alternative path to the same registers | established | S6 |
| address 0x118..0x11f via engine write | the firmware reaches indirect memories through an engine bus-write handler (address to ARM offset 0x474, value to 0x840) | established | S10 |
| which address bits pick the chip behind the port | the frame-manager chip decodes the 16-bit local address into select outputs: XMAP select (bus 0x100-0x11f, XMAP register address 5 bits), VOC select x 9 (0x200 + 0x100 x id, VOC register address 8 bits), video DAC select x 8 (0xb00 + 0x100 x n, DAC register 2 bits), gain DAC select x 5 (0x1300 + 0x100 x pair) and encoder select (0x1800-0x1803, 2 address bits); addresses below 0x100 are the frame-manager chip's own registers. The decode table itself is inside that chip, a bridge ASIC with no program, and is not recorded | structure established (netlist widths agree with the observed address blocks); exact decode table unknown | S10, S46 |


### 6.2 Address map by family

| Display-bus addresses | Role | Grade | Evidence |
|---|---|---|---|
| i for display id i (0x00-0x7f) | per-display-id mode table: one mode byte per id; the last slot 0x7f doubles as the sequence-number push slot | established | S10, S17 |
| 0x080 | frame-manager swap strobe (`FM_SWAP_CNTRL_REG`, 2 bits, mask 0x3; the kernel and firmware write 2 after a swap; which bit means what stays with that note, and the firmware's bit 0 triggers the XMAP clock write) | established | S13, S45 |
| 0x081-0x08a | display id of VOC n (n = 0-7 at 0x81-0x88, 6 bits each, `FM_VOC_DID_0_REG` to `FM_VOC_DID_7_REG`); 0x89 and 0x8a are the two option-board slots (ten swap slots) | established for 0x81-0x88; 0x89-0x8a inferred from the firmware's ten-slot loop | S10, S45 |
| 0x08b | frame-manager control (`FM_XWINDOW_REG`, 23 bits, mask 0x7fffff): bits 21:20 input sync source, bit 22 reset ratio; bits 9:0 and 19:10 two 10-bit coordinates stored as 1023 minus the value (the diagnostic's read-back window x0 and x1), written together with 0x8e | established | S5, S45 |
| 0x08c | written four times by the diagnostic's video test; role unknown (only constant writes seen, no read, no name) | unknown | S45 |
| 0x08d | read by the diagnostic's display-id-shift check, which tests bit 3 and treats it as set while the display-id table is still loading (shifting); written by the normal and overlay/underlay display-id table tests | status bit established by name and use; remaining bits unknown | S45 |
| 0x08e | master clock select: bit 23; bits 9:0 and 19:10 two 10-bit coordinates stored as 1023 minus the value (y0 and y1, the other half of the window written with 0x8b); bits 22:20 a 3-bit field the diagnostic passes, meaning not recoverable. The internal-clock routine also read-modify-writes this register | established arithmetic; bits 22:20 meaning unknown | S5, S45 |
| 0x08f | interrupt state: the firmware's get-interrupt-state request writes 0 here to acknowledge; the diagnostic never touches it and no diagnostic register table lists it | inferred | S10, S45, S46 |
| 0x090 | raster-board configuration (`FM_DG4_STATUS`, the diagnostic's name). Write bits 7:5 = 0 for four boards, 1 for two, 3 for one (the diagnostic writes 0x00, 0x20, 0x60 together with XMAP register 0xb = 2, 1, 0); read bits 10:8 = board-stuffing code (firmware). The pin-to-bit binding of the chip's `rmpres` and `config` groups is inferred | established | S10, S45, S46 |
| 0x100-0x11f | XMAP: direct registers 0x100 + n, indirect memories 0x118-0x11f | established | S6 |
| 0x200 + 0x100 x id + r | video-output chip (VOC) register r of channel id (ids 0-7 on the base board) | established | S10, S11 |
| 0x300 | register 0 of VOC id 1, read as the master VOC status | established | S10 |
| 0xb00 + 0x100 x n + r | video DAC of channel n, register r in 0-3 (n in 0-7) | established | S13 |
| 0x1300 + 0x100 x pair | gain DAC: registers 0xf, 4, 5 for an even channel, 0x17, 2, 3 for an odd one | established | S13 |
| 0x1708 | encoder output gain (written as 255 minus the gain) | established | S13 |
| 0x1800-0x1803 | video encoder: 0x1800 control address, 0x1802 control data, 0x1801 colour-map address, 0x1803 colour-map data | established | S13 |
| 0x1900, 0x1920 | XMAP clock select; 0x1920 written with 1 on a swap-control token | established | S13, S10 |
| 0x2000-0xffff | option boards and the VOCs on them (pixel-address board 0x2300-0x2304, multi-pipe 0x8001, 0x8400, 0xe300, 0xe500, genlock and gamma blocks 0xc006, 0xc104, 0xf000) | inferred | S13 |
| 0xc000 | option-board strobe written 1 then 0 at video init | inferred | S5 |
| 0xf000 + i | external gamma RAM entry i (1024 entries behind the option-board window) | inferred | S9 |


### 6.3 XMAP direct registers (bus address 0x100 + n)

| Index n | Role | Width / values | Grade | Evidence |
|---|---|---|---|---|
| 0x00 | cursor channel id | 5 bits; kernel writes the owning channel | established | S13, S7 |
| 0x01 | cursor image base (address of the 260-word block) | 17 bits | established | S13, S7 |
| 0x02 | cursor position | 26 bits; layout in 7.5 | established | S13, S7 |
| 0x03 | cursor mode | 9-bit register; written values 0 off, 1 crosshair, 2 glyph | established | S13, S7 |
| 0x04 | copy-buffer strobe (diagnostic name `xmap_copybuffer`): written 1 after every group of writes; bit 2 forces the cursor position (observe pin `xmap_force_curs_pos`; the diagnostic writes 4 after a position change) | bit 0 established, bit 2 inferred (name match only) | established | S6, S45 |
| 0x05 | diagnostic substitute-colour enable (observe pin `xmap_substitute_en`) | 0 off | inferred | S6, S13, S45 |
| 0x06 | substitute colour, low word (`XMAP_SUBSTITUTE_LOW`) | 32 bits | established | S13, S45 |
| 0x07 | substitute colour, high bits plus a 2-bit mode shifted left 10 (`XMAP_SUBSTITUTE_HIGH`) | 13 bits | established | S13, S45 |
| 0x08 | read chip select (the diagnostic's observe pins `xmap_diag_rd` and `xmap_rd_id_match` fit a chip-id compare) | XMAP number 0-3 before a read | inferred | S6, S45 |
| 0x09 | role not read: 0 at start-up, 2 after the diagnostic, and the window-created / destroyed notice (1 / 0) | value only | unknown | S6 |
| 0x0a | read by the diagnostic's XMAP CRC routines (the `xmap_crc_done` poll): a CRC done status; bit layout unknown | none | established use; layout unknown | S45 |
| 0x0b | raster-board count code | 2 bits: 0, 1, 2 for one, two, four boards | established | S13 |
| 0x0c | display-id compare address (`XMAP_DI_COMPARE_ADDR`, observe pin `xmap_di_addr`) | 6 bits; start-up value 2 | inferred; name established | S13, S45 |
| 0x0d | image-processor pixel-stream delay (`XMAP_IMP_DELAY`) | 9 bits; 0xa5 on board type 2, else 0x64 | inferred; name and width established | S13, S45 |
| 0x0e | pipeline delay (`XMAP_PIPE_DELAY`) | 3 bits; 6 on board type 2, else 3 | inferred; name and width established | S13, S45 |
| 0x0f | fast-list configuration (`XMAP_FASTLIST_CONFIG`): low five bits chunk size, upper bits fixed 0x320; the layout is read from the firmware's chunk-size request | 10 bits; start-up 0x339 (chunk 25) | inferred; name and width established | S13, S45 |
| 0x10 | written 0 at start-up and nothing else | value only | unknown | S6 |
| 0x11 | read-back address (`XMAP_RD_ADDR`; 19 bits fits the 17-bit cursor address plus select bits) | 19 bits | inferred | S13, S45 |
| 0x12 | read-back data | 32 bits | inferred | S6, S45 |


### 6.4 XMAP indirect memories (bus address 0x118-0x11f)

| Bus address | Role | Layout of the data | Grade | Evidence |
|---|---|---|---|---|
| 0x118 | address for the data ports: memory address with select bits, or a channel number, or a display id | gamma form in 7.3 | established | S6 |
| 0x119 | colour-map and cursor data; consecutive words go to consecutive addresses | 32-bit words; colour words 10:10:10 | established | S6, S9 |
| 0x11a | not used by any code read | none | unknown | S6 |
| 0x11b | gamma data port | 12-bit entry | established | S9 |
| 0x11c | display-id table data (id in 0x118) | layout in 7.1 | established | S8 |
| 0x11d | channel set-up word (channel number in 0x118) | layout in 7.2 | established | S9 |
| 0x11e | written once after a load; closes a table load | data not meaningful in any code read | inferred | S6 |
| 0x11f | flush write, three times before a new address and three after 0x11e; pushes earlier entries through | data not meaningful in any code read | inferred | S6 |
| write order of a display-id load | 0x118, 0x11c, then 0x11f x 3, 0x11e x 1, 0x11f x 3 (seven trailing writes) | sequence | established | S10 |
| write order of a colour-map or cursor load | 0x118 address, n words to 0x119 (pieces of 0x200 words), then the same seven trailing writes | sequence | established | S9 |
| write order of a gamma load | 0x118 address, entries to 0x11b, 0x11f x 3, 0x11e, 0x11f x 3 | sequence | established | S9 |


### 6.5 Video-output chip (VOC) registers (address 0x200 + 0x100 x id + r)

Two chip layouts exist, called 1a (earlier) and 1b (later). The diagnostic selects between them by the chip's boundary-scan revision (identification code x5631057, revision nibbles 2, 3, 5, 6, 8, 9, b, c, e, f). Layout 1b adds: bits 29:26 of register 0x30 (line count high), register 0x34 (frame duration, 20 bits), bit 18 of register 0x43 (frame-reference select), bit 23 of register 0x44 (interlaced cursor) and register 0x4b, and widens the back-porch clamp width (register 0x84) to 8 bits at 21:14. Everything else below is identical in both. Field names and positions come from the diagnostic's own tables (key S45); the vendor's earlier header guessed several bit positions from the order of the output-format file's register list, and the rows below correct those.

| r | Role | Fields / values | Grade | Evidence |
|---|---|---|---|---|
| 0x00 | status (read only; the master copy at 0x300): bits 15:0 are the live level of the sequencer signals in the output-format order (bit 0 HSYNC, 1 VSYNC, 2 CSYNC, 3 CBLANK, 4 TRISYNC, 5 FIELD_START, 6 FIELD, 7 FRAME_START, 8 VIDEO_ACTIVE, 9 LINE_START, 10 STEREO_OUT, 11 IMPREG_LD, 12 XMAPREG_LD, 13 VOF_VDRC_EN, 14-15 spares); bits 17:16 field-sequential colour field; bits 18-24 interrupt flags: FIFO over, FIFO under, external sync loss, external sync detect, external frame, VDRC, host | bit 7 is FRAME_START, the signal the firmware waits on (pulses once per frame) | established | S11, S13, S45 |
| 0x01 | control: bits 1:0 double-buffer control mode (0 immediate, 1 copy on IMPREG_LD, 2 copy on SWAP, 3 copy on FRAME); bits 2-8 interrupt enables (2 FIFO over, 3 FIFO under, 4 external sync loss, 5 external sync detect, 6 external frame, 7 VDRC, 8 host); bits 11:9 output pixel mux (0 4:4, 1 4:2, 2 4:1, 3 4:8, 4 FS_4, 5 FS_2, 6 FS_1, 7 FS_8) | the firmware's values 1, 2, 3 in bits 1:0 are copy modes, not a channel enable; genlock set-up enables the sync-loss and sync-detect interrupts and disables the external-frame interrupt | established | S11, S13, S45 |
| 0x02 | `DBL_BUF_EN`, bit 0: the firmware writes 0 then 1 around enabling a channel; the diagnostic polls it ("DBL_BUF_EN timeout") in its double-buffer tests | 1 bit | established (name and polling); that it is a request that self-clears is inferred | S45 |
| 0x03 | video-requester input window: bits 4:0 channel id, bits 14:5 screen width in groupxels minus 1 | groupxel = 4 pixels | established | S11, S45 |
| 0x04 | video-requester window origin: x / 4 and y | two fields | established | S11, S45 |
| 0x05 | video-requester window size in groupxels and lines | two fields | established | S11, S45 |
| 0x06 | sequencer control: bit 0 enable; bits 2:1 reset source (0 none, 1 output-format-A reset, 3 phase-detector reset); bit 3 clears the state pointer; bits 8:4 line-edge select (a line type 0-31 or a signal 0-13); bits 12:9 reset rate | fields | established | S11, S45 |
| 0x07 | sequencer initial signal levels: bits 13:0 initial level of the 14 signals (bit n = signal n); bits 15:14 spares; bits 16, 17, 18 tri-state CSYNC, HSYNC, VSYNC (the firmware's 0x60000 on an old revision, with its "disabled sync outputs" message); bits 31:19 vertical-phase count | fields | established | S11, S45 |
| 0x08 | genlock vertical phase and hysteresis: bits 12:0 internal vertical phase; 25:13 external vertical phase; 28:26 hysteresis width; 29 hysteresis enable | the load-format request's words 299 and 300 (always 0 from the host) are the width and enable, so hysteresis stays off | established | S11, S45 |
| 0x09 | sequencer state-table port (auto-increments from the cleared pointer) | two states per word | established | S11, S45 |
| 0x0a | selected line type, word A: edge mask for edges 0-31 | 32 bits | established | S11, S45 |
| 0x0b | selected line type, word B: length minus 3 in 30:18, edge mask for edges 32-49 in 17:0 | 32 bits | established | S11, S45 |
| 0x0c-0x13 | edge slots of the selected signal (slot s at 0x0c + s) | edge position in 12:0, 0x1fff = unused | established | S11, S45 |
| 0x14 | pixel blank: bits 7:0 first, bits 15:8 last, bit 16 enable | three format words | established | S11, S45 |
| 0x30 | phase-frequency detector control: bit 0 enable, bit 1 flip, bits 3:2 clock select (0 host, 1 host/2, 2 host/4, 3 a fourth setting the table prints as 75), bit 4 frame select (internal frame reset or detector), bits 15:5 comparator precision, bits 23:16 line count, bits 25:24 composite-sync source (0 internal, 1 external, 2 output format), bits 29:26 line count high (layout 1b only) | fields | established | S11, S45 |
| 0x31, 0x32, 0x33, 0x34 | 0x31 and 0x32: sequence low and high (32 bits each; from format words 7-11 of the genlock request); 0x33: diagnostic (bits 11:0 duration count, bits 23:12 previous count); 0x34: frame duration (20 bits, layout 1b only) | words | established | S11, S45 |
| 0x43 | `PSD_CONTROL`: bit 0 enable, bits 11:1 line count, bits 14:12 frames off, bits 17:15 frames on, bit 18 frame-reference select (layout 1b). The firmware's clear, sleep and set of bit 0 is this enable. PSD is the diagnostic's name for the external sync-detect block (inferred from the paired external-sync-detect interrupt) | fields | established layout; purpose inferred | S11, S45 |
| 0x44 | video-requester control: bit 0 enable, bit 1 read enable, bit 2 external-request enable, bit 3 external request, bit 4 request done, bits 6:5 pixel size (0 small, 1 medium, 2 large, 3 xlarge), bit 7 dither, bit 8 transfer size (0 = 32-bit and 10-bit components, 1 = 42-bit and 12-bit), bit 9 transfer alpha, bit 10 transfer Z, bits 21:11 FIFO balance, bit 22 arbiter status, bit 23 interlaced cursor (layout 1b). Firmware pixel-format word 26: 0 (RGB10) sets nothing, 1 (alpha) sets bits 8 and 9, 2 (RGB12) sets bit 8, 3 sets bit 10 | bits 10:8 are not a single format code | established; the 32-bit and 42-bit reading of bit 8 is inferred (read from the table's enum order and the diagnostic's check of a 12-bit transfer on non-RGB) | S11, S45 |
| 0x45 | tiles per frame-buffer row | 5 bits (mask 0x1f) | established | S11, S45 |
| 0x47 | start line request word | tiles-1 in 2:0, groupxels-1 in 13:3, valid bit 14 | established | S11, S13 |
| 0x48 | middle line request word | same fields plus repeat count in 22:15 | established | S11, S13 |
| 0x49 | end line request word | same fields, valid never set | established | S11, S13 |
| 0x4a | pan: bits 5:0 groupxel offset = (x mod 160) / 4; bits 7:6 pixel offset = x mod 4 | fields | established (the diagnostic names bits 7:6 PIXEL_OFFSET) | S11, S45 |
| 0x4b | `ZREQ` (layout 1b): bits 3:0 field count, bit 4 enable; unused by the firmware | fields | established | S45 |
| 0x50 + f, 0x58 + f | per-field start: bits 6:0 start line, bits 19:7 first tile address, bits 23:20 skip count (the field-layout code is the skip); two banks | fields | established | S11, S45 |
| 0x60 + f | field request pattern of field f: bit 0 stereo eye (0 left, 1 right); bits 2:1 colour (0 RGB, 1 R, 2 G, 3 B), repeated for four slots at bit offsets 0, 3, 6, 9 (eye) and 1, 4, 7, 10 (colour); bits 23:12 active lines; bits 27:24 next-cursor offset | fields | established | S11, S45 |
| 0x70, 0x71, 0x72, 0x73 | PLL access: 0x70 control (bit 0 ready, bit 1 auto-update, bit 2 exec read, bit 3 exec write internal, bit 4 exec write external); 0x71 address (4 bits); 0x72 read-back (11 bits); 0x73 data (11 bits). The two clock parameter sets are not two registers: each is eight words written through address 0x71 and data 0x73, set 0 with exec-write-internal, set 1 with exec-write-external (as the firmware's clock routine sets bits 3 and 4) | fields | established layout; internal and external set mapping inferred | S11, S45 |
| 0x81 | genlock horizontal clock: bit 0 clock source (0 external, 1 internal), bit 1 auto clock, bits 11:2 horizontal-rate divider | fields | established | S11, S45 |
| 0x82 | genlock line ratio: bit 0 edge (0 falling, 1 rising), bits 13:1 line length, bits 21:14 divider | fields | established | S11, S45 |
| 0x83, 0x84 | 0x83 horizontal mask 2: start 12:0, width 25:13; 0x84 back-porch clamp: edge bit 0, delay 13:1, width 21:14 (8 bits in layout 1b) | fields | established | S45 |
| 0x8a | FIFO control (written on option-board VOCs 0x1f, 0x2f, 0x30, 0x5f, 0xc7, 0xca): bits 11:0 high water, bit 12 frame-reset enable, bit 13 field-reset enable, bit 14 external control enable, bit 15 interrupt source select (even or odd) | the firmware's eye-mask bits 13:12 are the two reset enables | established | S11, S13, S45 |
| 0x8b, 0x8d | 0x8b FIFO pointer (write pointer 10:0, read pointer 21:11); 0x8d SAC control (bit 0 input enable, bit 1 output enable) | fields | established | S45 |
| 0x8f | scaler control: bits 1:0 X filter (0 none, 1 minify, 2 magnify), bits 3:2 Y filter (adds 3 pass-through), bit 4 X magnify start pixel pair, bits 6:5 segment-switch preload, bit 7 interlace, bit 8 field-out select (output format or encoder), bit 9 encoder field dominance (0 even, 1 odd), bit 10 encoder frame-buffer write clock enable, bit 11 FIFO read clock (output-format clock or XMAP clock), bits 13:12 encoder frame mode (0 no drop, 1 field drop, 2 frame drop, 3 low latency), bit 14 encoder stereo mode, bits 18:15 vertical-minify kick, bits 20:19 first-field inhibit | field dominance is bit 9 | established | S5, S45 |
| 0x90 | scaler coefficient registers 0x90-0x9d: 0x90 X coefficient max (20 bits), 0x91 X filter slope (21), 0x92 X delta (24), 0x93-0x96 X segment starts 0-3 (24), 0x97 Y coefficient max, 0x98 Y filter slope, 0x99 Y delta, 0x9a-0x9d Y segment starts (segments 0 and 1 of fields 0 and 1); the firmware's resize routine computes them | names and widths; value semantics inferred from the names | established | S13, S45 |


### 6.6 Video DAC, encoder and gain registers

| Index | Role | Fields / values | Grade | Evidence |
|---|---|---|---|---|
| DAC block register 0 | index: two byte writes, low then high, forming a 16-bit index | high byte selects the 0x000 / 0x200 / 0x300 / 0x400 spaces | established | S13 |
| DAC block register 1 | colour-map data: three consecutive writes red, green, blue per entry, index advancing | 10-bit components | inferred | S13 |
| DAC block register 2 | indexed-register data | value | established | S13 |
| DAC block register 3 | mode: start-up writes 6, waits, writes 7 | bit 0 a strobe (inferred) | inferred | S13 |
| indexed 0x004 | pixel mask | 10 bits; start-up 0xff | established | S13, S45 |
| indexed 0x005, 0x006 | written 0x88 and 0xe4 at start-up | values only | unknown | S13 |
| indexed 0x200-0x203 | DAC cursor position: x low byte, x high byte, y low byte, y high byte | scaled to the channel output size | established | S7 |
| indexed 0x204 | DAC cursor control | 4 bits; the kernel writes 5 (bits 0 and 2) for the owning channel and 0 for the rest; start-up 0 | established | S7, S13, S45 |
| what each bit of the value 5 does | DAC cursor control bit meaning | bits 0 and 2 | unknown | S7 |
| indexed 0x303, 0x304 ... | DAC cursor colours: six values streamed after index 0x303. The diagnostic names 0x304 `CURSOR_CLR_2`, so the six values are not all one colour group: 0x304 belongs to colour 2 | 10-bit components | inferred; the name for 0x304 is established, the assignment of 0x303-0x308 to colours is inferred | S13, S45 |
| indexed 0x400 | DAC cursor image RAM select (256 image words streamed low byte first) | index | established | S7 |
| cursor-load request word 0 | channel, 0-7 or 0xde | - | established | S5, S44 |
| cursor-load request words 1-6 | foreground red, green, blue then background red, green, blue, each a 16-bit X colour >> 6 (10 bits); the firmware streams them to indexed DAC registers 0x303-0x308 | 6 words | established | S5, S44 |
| cursor-load request words 7-262 | 64 rows of four words, two bits per pixel, pixel = (mask << 1) \| source (the opposite plane order to the XMAP cursor). Width and height are clamped to 64 and the rest is zero. Bytes j of a row's X bitmap (MSB-first; a partial last byte keeps its high bits) are interleaved (source bit n to bit 2n, mask bit n to bit 2n+1), byte-swapped, and stored as halfword (w+7)/8 - 1 - j of the row; halfword 2k is the high half of word k. The firmware sends each word low byte first to index 0x400 | 256 image words, 1024 bytes = 64 x 64 x 2 bits | established | S5, S44 |
| resulting DAC image RAM byte, 64-wide image | byte 16y + 4(3 - floor(x/16)) + floor((x mod 16)/4), pixel at bits 7-2(x mod 4) downward; groups of 16 pixels run right to left across the row. A narrower image is right-aligned to a byte boundary (column x lands where x + 64 - 8 x ((w+7)/8) would); the builder does not compensate in the hot spot, which it stores unchanged | - | established as derived from the builder and the stream; that the DAC fills ascending RAM addresses from index 0x400 is inferred | S44 |
| which colour a 2-bit DAC cursor value selects | by X semantics value 3 (mask and source) is foreground, 2 (mask only) background, 0 transparent; value 1 (source without mask) is not defined by any sender | - | inferred; value 1 and the register-to-colour assignment unknown | S44 |
| cursor "channel block" setup | write 4 then 2 to DAC register 0 before the cursor control index (consecutive writes to one address) | values | established | S7 |
| encoder 0x1800 / 0x1802 | encoder control address port and data port (address pins Za1:Za0 = 0 and 2; the encoder has 2 address pins). Control index space, from the diagnostic's table: 0x00 global control (5 bits), 0x01 format control (7), 0x02 interface control, 0x04 key control, 0x05-0x07 D, E, F key, 0x10 horizontal sync tip, 0x11 breezeway, 0x12 burst length, 0x13 colour back porch, 0x14 extended colour back porch, 0x15 active, 0x16 active start, 0x17 active end, 0x19 front porch, 0x1a and 0x1b equalize low and high, 0x1c and 0x1d vertical sync low and high, 0x1e colour-bar length, 0x20-0x23 sub-carrier frequency bytes 4 to 1, 0x24 and 0x25 video phase LSB and MSB, 0x26 and 0x27 burst phase LSB and MSB; all 8 bits except as noted | index and value | established (index list, names, widths); a value's effect is inferred from its name | S13, S45, S46 |
| encoder 0x1801 / 0x1803 | encoder colour-map address and data | index and value | inferred | S13, S45 |


## 7. Field layouts of multi-field words

### 7.1 Display-id table entry (XMAP indirect memory, data at 0x11c, address = id in 0x118)

| Bits | Role | Values | Grade | Evidence |
|---|---|---|---|---|
| 23:7 | colour-map base: the visual's colour-map slot number shifted left 7 | value | established | S8 |
| 6:3 | number of index planes minus 1 (a visual's plane count, capped at 12 when a per-screen flag is set, then decremented; 0 stays 0) | 7 for an 8-plane visual, 11 for 12 planes | established | S8 |
| 2 | luminance visual flag | from visual flag 0x20000 | established | S8 |
| 1 | grey visual flag | from visual flag 0x10000 | established | S8 |
| 0 | unused | always 0 | established | S8 |
| whole word, id 0 | text-port initialisation entry | 0x80050 (base 0x1000, planes field 10) | established | S8 |
| what the XMAP does with bits 2:1 | luminance and grey handling in hardware | - | unknown | S8 |


### 7.2 Channel set-up word (XMAP indirect memory, data at 0x11d, channel number in 0x118)

| Bits | Role | Values | Grade | Evidence |
|---|---|---|---|---|
| 3:0 | gamma page (map index 0-15) | stored from the gamma-map request; -2 means no gamma | established | S9 |
| 4 | external gamma | 1 = use the external 1024-entry gamma RAM | established | S9 |
| 5 | no gamma | 1 = bypass gamma | established | S9 |
| 6 | alpha to blue | 1 = alpha is output on the blue component | established | S9 |


### 7.3 Gamma address (written to 0x118 before gamma data)

| Bits | Role | Values | Grade | Evidence |
|---|---|---|---|---|
| 11:0 | entry index | 4096 entries per colour and page; each colour index fills two consecutive entries | established | S9 |
| 13:12 | colour | 0 red, 1 green, 2 blue; 3 is turned into 2 | established | S9 |
| 17:14 | page | 0-15 | established | S9 |
| 18 | flag; set for one kind of map (address (map << 14) + 0x40000) | what it selects | unknown | S9 |
| entry value | 12-bit gamma output; colour-map entries are 10:10:10 with red 29:20, green 19:10, blue 9:0 | top 12 bits of the 16-bit client colour | established | S9 |
| padding rule widening a 10-bit colour-map output to the 12-bit gamma index | low-bit fill | replication of the top bits suggested | inferred | S9 |
| external gamma form | first word 0xdeadfeed, count 1024, then 1024 words red << 20 / green << 10 / blue (each 12-bit value >> 2) to 0xf000 + i | sequence | established | S9 |


### 7.4 Per-display-id mode byte (display-bus address = display id)

Sent as the third payload word of the display-mode token (0x1e6; the other two words are the drawable word and the display id). The firmware copies the byte unchanged to the mode table.

| Bits | Role | Values | Grade | Evidence |
|---|---|---|---|---|
| 0 | back buffer shown (rewritten at each swap) | kernel owns bits 1:0 | established | S8, S17 |
| 1 | stereo (main planes) | - | established | S8 |
| 2 | non-colour-index RGB below 24 bits | software contract | established | S8 |
| 3 | colour index or luminance | software contract | established | S8 |
| 4 | direct colour (main) or opaque (overlay) | software contract | established | S8 |
| 3:1 for overlays | overlay code | 2, or 3 when double-buffered and starting in the back buffer; plus 4 for an underlay | established | S8 |
| what the XMAP does with bits 4:2 | hardware use of the mode byte | 30-bit RGB main windows send no bits | unknown | S8 |


### 7.5 Cursor words

| Item | Role | Layout | Grade | Evidence |
|---|---|---|---|---|
| position register 0x102 | cursor position | bits 12:0 = x - hot x - rectangle x1 + 32; bits 25:13 = y - hot y - rectangle y1 + 32 | established | S7, S13 |
| position bias | offset that lets the cursor sit partly off the top-left corner | 32 | inferred | S13 |
| x alignment | on a display generator whose identity word has a zero top nibble, x bits 1:0 are cleared | x is a multiple of 4 | established | S7 |
| image block | cursor image: 64 rows of four words; each row is plane A (64 bits, pixel 0 in bit 31 of the first word) then plane B; pixel value = A << 1 / B | 256 image words | established | S7 |
| words 256-259 | colours of pixel values 3, 2, 1, 0, each 10:10:10 | red 29:20, green 19:10, blue 9:0 | established | S7 |
| X-server use of the planes | source bitmap in plane A, mask in plane B; word 256 = third colour or foreground, 257 = foreground, 258 = background | mapping | established | S7 |
| value 0 / word 259 transparent | no sender loads 259 | - | inferred | S7 |
| slot size and count | 260 words per slot, 39 slots; slot k at address k x 260 | 10140 words used | established | S7 |
| colour words offset | colour words at block address + 0x100 | - | established | S7 |
| crosshair | cursor mode 1, hot spot (32, 32), colour block at address 9884 + 0x100 (words 10140-10143), same colour in all four words | - | established | S7 |
| crosshair shape | arm lengths, thickness, extent. The X module's crosshair cursor (`konInitCrosshairCursor`) is a zeroed cursor record with no source or mask bits and no image is ever loaded, so the XMAP generates the shape; 64 x 64 stays a weak inference from the hot spot and the +32 bias | - | unknown (no shipped software or published source depends on it) | S7, S44 |
| XMAP cursor colour block: which word of 256-259 the crosshair draws with | the module writes the same colour into all four words. (The DAC has six colour values and no four-word block; see section 6.) | - | unknown | S7 |
| cursor owner | smallest priority value wins; the previous owner is kept on a tie; channels 0-7 can be DAC-capable (valid = 2); valid = 1 is the XMAP cursor; 32 means none | - | established | S7 |
| XMAP vs DAC cursor | alternatives: DAC cursor on means XMAP cursor mode 0 | - | established | S7 |
| colour map then gamma, cursor last | colour path order: colour map then 12-bit gamma; DAC cursor after gamma; XMAP cursor before gamma | bypass of gamma for the XMAP cursor not read | inferred | S9 |


### 7.6 Pixel-id placement and window kinds

| Item | Role | Values | Grade | Evidence |
|---|---|---|---|---|
| main-plane window ids | ids of main-plane windows | 0-62 | established | S8 |
| popup id | fixed popup window id | 63 | established | S8 |
| overlay window ids | overlay and underlay window ids | 64-95 (7 bits in all) | established | S8 |
| overlay fixed ids | 2/4/8-plane colour-index overlays, transparent and opaque | 64, 65; 15-bit RGB overlay 66 and 67 | established | S8 |
| larger pixel layout | the 16-bit painted value v: low nibble to bits 6:3 and bits 15:4 to bits 19:8 of the high word (foreground); the plane mask m goes through a different packing: high word ((m >> 4) & 0xfff) \| ((m & 0xf) << 20), low word 0 | 64-bit foreground and write mask | established | S8, S44 |
| smaller pixel layout | v: low nibble to bits 12:9 and bits 15:4 to bits 25:14 of the low word (foreground); mask: low word ((m >> 12) & 0xf) \| ((m & 0xfff) << 12), high word 0 | 64-bit foreground and write mask | established | S8, S44 |
| which layout a board uses | follows the board's pixel depth (the visual set chosen at start) | - | established | S8 |
| colour-index index inside the colour data | the pipe treats the index as a 12-bit component value left-justified: write mask (2^w - 1) << (12 - w) on the main level or << 4 on overlay and popup levels, written as `m \| m<<12` to image-processor register 0x1c14; clear index scaled by 1 << (12 - w); so CI8 is value << 4 (bits 11:4), CI12 bits 11:0, overlay planes bits [3+w:4]. The draw-pixels path puts the index at bits 15:8 of each 16-bit lane for index size 8 or less on board mode other than 2 (record CI16ToFBNorOvr8) and at lane bits 15:4 (or 11:4 for an 8-bit index) on board mode 2 or index size above 8 (CI16ToFBNorOvr12) | the mask, clear scale and record choice | established; lane offsets inferred (shift model); which component lane holds the index and its offset in the stored bank word unknown | S37, S8 (`arm1.u` 0x0c012e1c, 0x0c0134b8, 0x0c03bd40, 0x0c02dbe8; [arm1_pixel_tables.md](../ucode/arm1_pixel_tables.md)) |
| overlay window to main window pairing | no pairing is stored. The painter writes main id n (0-62) as v = n << 2 under mask 0xfc, and overlay or popup group g (id - 0x40; the popup's 0x3f gives 31) as v = g << 8 under mask 0x1f00, so a pixel holds a main field (v bits 7:2) and an overlay group field (v bits 12:8) independently. The ownership test's compared value is v >> 2 (main id 5:0, mask 0x3f; group 10:6, mask 0x7c0; section 10.2). How the display generator uses the pair is unread | structure | inferred | S37, S14, S8, S42, S44 (`arm1.u` 0x0c0131a0) |
| 15-bit RGB overlay transparency rule | transparent pixel test | - | unknown | S8 |
| 16-plane luminance with overlay or id planes | composition | - | unknown | S8 |
| layer order | popup over overlay over main; value 0 lets the lower layer through; opaque overlays replace | - | inferred | S8 |
| transparent pixel advertised | transparent overlays advertise pixel 0; opaque ones none; colour-map entry 0 reserved | - | established | S8 |


### 7.7 Window and clip set-up request (token 0x1f3, eleven words)

Words 0-9 are read from the payload port in order and word 10 from the last-word port; each is stored as a halfword in the pipe state block. The request is refused without the privileged status bit. Words 4-7 are one clip rectangle; word 8 is a framebuffer address shift.

| Word | Role | Layout | Grade | Evidence |
|---|---|---|---|---|
| 0 | window x position on screen | halfword; added to half of word 2's low half for the origin | inferred | S14 |
| 1 | window y position on screen | halfword | inferred | S14 |
| 2 | window width (low half) and screen-space x bias (high half) | 15:0 width, 31:16 bias | inferred | S14 |
| 3 | window height (low half) and screen-space y bias (high half) | 15:0 height, 31:16 bias | inferred | S14 |
| 4-7 | clip rectangle x origin, y origin, width, height (far corner = origin + size - 1) | four halfwords | established | S14 |
| 8 | per-window framebuffer address base; its change is added to the six 6-bit address fields | halfword | inferred | S14 |
| 9 | window id (encoded into the window-id test register; see section 10) | 32-bit signed value | established | S14 |
| 10 | window-id test enable flag (nonzero sets bit 0 of the encoded register value) | last-word read | established | S14 |
| derived: origin registers 0x0807, 0x0808 | negated, halved origin sums, rounded by adding 15 / 3 to 0x800 and clearing the low 5 / 3 bits | - | established | S14 |
| derived: scissor registers 0x3fc2, 0x3fc3 | x0 << 3 / x1 << 18 and the same for y | - | established | S14 |
| engine control word 0xc4 | offset subtracted from window x and y before the vertex leaves the engine: the float 0x47400000 = 49152.0 (1.5 x 2^15), stored once at context start-up (`ge.S` 0xb21e) and read into register 1 by every drawing module | float | inferred (store-data rule; the same rule reproduces words 0xbe, 0xbf, 0xc0, 0xc5 and 0x1d) | S43 |
| window x, y at the vertex bus | float(x - 49152.0) (the subtract at `udrawtri.s` 0x28ac and 0x28b0; operand order inferred from the routing form). While x stays within +-16384, the result is in the binade [2^15, 2^16), where one float step is exactly 1/256, so the engine's own subtract places x and y on the 12.8 grid; the converter chip needs only extract fixed-point bits | - | inferred; converter chip itself unknown | S43 |
| rounding of that subtract | single-precision unit-1 subtract. The one diagnostic tie test (0x44800347 + 0x45000347, expected 0x454004ea) is not rounded up, so nearest-even and truncation both fit; nearest-even assumed | - | inferred | S43, [ge_ops.md](../ucode/ge_ops.md) line 3729 |


### 7.8 X graphics-context load (token 0x129, thirteen words) and its companion loads

The X server sends its drawing state to the pipe as one thirteen-word load before it draws. The token is routed in hardware (no processor code runs for it); the engine program takes all thirteen words, keeps the first four in its own memory and writes words 4-12, one each, to nine raster registers. The pairing of word to register below is read from the instruction operands of the engine program's nine register writes (each write names its select and its input-FIFO word 4 + k directly), not from the order in which it stages the selects, and agrees with the names the X module gives the words. The raster registers keep their own bit layouts, which section 8.2 lists; this table gives only what the load adds.

| Word | Role | Destination in the pipe | Grade | Evidence |
|---|---|---|---|---|
| 0 | foreground colour, high half | engine memory word 0 | inferred | S20, S22 |
| 1 | foreground colour, low half | engine memory word 1 | inferred | S20, S22 |
| 2 | background colour, high half | engine memory word 2; a zero here makes the engine skip the whole raster-register part of the load | inferred | S20, S22 |
| 3 | background colour, low half | engine memory word 3 | inferred | S20, S22 |
| 4 | plane write mask, red and green 12-bit fields | raster register 0x1c14 (shadow word 45) and engine special register 0x23; mask 0xffffff | established | S20, S22, S48 |
| 5 | plane write mask, blue and alpha fields | raster register 0x1c15 (shadow word 46); mask 0xffffff | established | S20, S22, S48 |
| 6 | colour format (bits 5:2) and read format (bits 13:11) of the frame-buffer configuration; pixel size and the four write enables are not written | raster register 0x1c00 (shadow word 36); mask 0x383c | established | S20, S22, S48 |
| 7 | draw buffer (3:0), read-back format (17:14) and read base (23:18) of the operation register | raster register 0x1c02 (shadow word 37); mask 0xffc00f | established | S20, S22, S48 |
| 8 | colour base address only (the first of the six 6-bit fields) | raster register 0x1c0b (shadow word 43); mask 0x3f | established | S20, S22, S48 |
| 9 | logic-operation code (bits 4:1) only; no blend field, no enable bit | raster register 0x1c0d (shadow word 44); mask 0x1e | established | S20, S22, S48 |
| 10 | bus pixel-format code (5 bits) | raster register 0x3ff8 (shadow word 47); mask 0x1f | established | S20, S22, S48 |
| 11 | luminance-alpha colour flag for the texture filter | raster register 0x140f (shadow word 87); mask 0x1 | established | S20, S22, S48 |
| 12 | luminance-alpha pixel flag for the texture filter | raster register 0x1410 (shadow word 86); mask 0x1 | established | S20, S22, S48 |
| the six masks the engine program applies to words 4-12 | 0xffffff (words 4 and 5), 0x383c (6), 0xffc00f (7), 0x3f (8), 0x1e (9), 0x1f (10), 0x1 (11 and 12); read from the instruction operands | - | established | S22, S48 |
| what the engine does with word 4 in the special register | role of that second destination (special register 0x23). Tried: the diagnostic's special-register table (24 names, 0x23 not among them), the engine instruction-set document's register map (names only up to 0x4c) and every listing that writes offset 0x23: every primitive entry handler and several lighting routines store small constants there, and no read was found in the shipped program | - | unknown | S22, S48 |
| load ordering | the generic drawing path sends a position load (four words) just before this load; the clear path sends a clip load, then a position load, then this load | - | established | S20, S21 |

Values the X module is seen to put in the words. These are what a guest sends; the meaning of each bit pattern is the raster register's.

| Item | Value | Grade | Evidence |
|---|---|---|---|
| word 6, low five bits, bitmap and glyph-image loads | cleared | established | S21 |
| word 6, low bits, display-id painting | 0x8 (colour format 2, bits 5:2 = LA16) | established | S20, S48 |
| word 7, low nibble, display-id painting | 1 (draw buffer 1) | established | S20, S48 |
| word 8, low six bits, display-id painting | 0 (colour base 0) | established | S20, S48 |
| word 9, bits 4:1, display-id painting | 3 | established | S20 |
| words 10, 11, 12, display-id painting | 0, 1, 1 (bus code 0, both luminance-alpha flags on) | established | S20, S48 |
| words 0-5, display-id painting | the id and plane mask are placed by the larger-pixel or smaller-pixel layout of section 7.6 (larger: word 0 and mask word 4; smaller: word 1 and mask word 5) | established | S20, S8 |
| clear load | operation argument 3 (copy) and a plane mask of all ones go to the generic loader | established | S21 |
| image-rectangle load, colour words | masked to 24 bits | established | S21 |
| image-rectangle load, mode field | bits 1-4 cleared and the value 6 set | established | S21 |
| which word holds that mode field | - | unknown | S21 |
| glyph-image load | plane-mask word masked to 24 bits | established | S21 |
| opaque-bitmap load | the background colour travels in the foreground slot, so zero bits of the bitmap draw the background | established | S21 |
| word-image load | clearing masks 0xff03ffff and 0xfffc3fff, set bits 0x13000a and 0x28000, colour mask 0xffffff | established | S21 |
| window-copy load | mode constant chosen by branch among 0x110001, 0x40001, 0x40005 and others | established | S21 |
| which words those constants modify | - | unknown | S21 |
| operation-word code that means copy | the clear load's 3 is the logic-operation code (bits 4:1 of word 9, code 3 = copy), the same field as the word 9 row above. Display-id painting's low nibble 1 is word 7's draw-buffer field (buffer 1), a different register; the two numbers were never the same quantity | established | S21, S48 |

Companion state loads, sent with or just before the graphics-context load.

| Token | Words | Layout | Grade | Evidence |
|---|---|---|---|---|
| 0x12a position load | 4 | drawable x, y, width, height; screen-wide work sends 0, 0, screen width, screen height | established | S20 |
| 0x12b clip load | 5 | rectangle count n, then x1, y1, x2, y2 of the first rectangle, one per word; rectangles 2 to n follow as 0x145 data tokens of four words each; whole-screen clip is 1, 0, 0, width, height | established | S20 |
| 0x12d scissor load | 4 | x, y of the glyph box, then width and height | established | S20 |
| 0x13c, 0x13d, 0x13e stipple load, store, rotate | 1, 3, 3 | cache slot; store adds the pattern size then the pattern words; rotate adds the x and y origin | established | S20 |


### 7.9 X pixel packings: set-up, write, read, copy and finish

X pixel work is a bracket: a seven-word set-up, then a write, read or copy, then (for writes and copies) a finish. All five tokens run on the pipe's processor. Which packing of pixel data a transfer uses is chosen by the set-up words and by the state the graphics-context load left in the format words (section 7.8, words 10-12); the host-side tables that choose the format words, and their numbers, are listed below.

**Pixel set-up (token 0x136, seven words).**

| Word | Role | Values | Grade | Evidence |
|---|---|---|---|---|
| 0, bits 3:0 | transfer kind | 0 = frame buffer only; nonzero also sets up the texture-filter chip; 2 also loads the host-interface packer from word 2 | established | S23 |
| 0, bit 4 | direct-write flag, kept until the finish; not a bitmap-mode flag (the bitmap loaders send word 0 = 0). Clear: the write handler counts the data words through the command stream. Set: it counts none, so the rows are not in the command stream. The recorded 4Dwm set-ups with word 0 = 0x10 are each followed by a DMA packet of exactly rows x row-words x 4 bytes | 0 = rows in the command stream; 1 = rows by DMA | flag and its effect on the write handler established; that set means DMA inferred (recording plus the driver's DMA-write route for large bands); what the engine does with the DMA data unknown | S23, S20, recording |
| 1 | engine pixel-output module | 4 = bitmap and glyph output with a one-bit-to-pixel conversion; 5 = opaque bitmap draw with a 16- or 32-bit conversion chosen by word 2 | established | S23, S20 |
| 2 | conversion or packer code | 1 or 2 select the two conversions of module 5; for kind 2 it is the packer value | established | S23, S20 |
| 3 | value passed to the engine set-up | the X module sends 0 | established | S23 |
| 4 | transfer width in pixels, kept for the following read or write | value | established | S23 |
| 5 | transfer height in pixels, kept for the following read or write | value | established | S23 |
| 6 | value passed to the distributor set-up | the X module sends 0 | established | S23 |
| what words 3 and 6 mean to the engine and distributor | - | - | unknown | S23 |
| what the bitmap loaders send | 0, 4, a word from the context record, 0, width, height, 0 | - | established | S20 |
| set-up cache | words 0, 1, 2, 4 and 5 are cached; a finish, copy or read, and the pixel initialisation, invalidate the cache | - | established | S23 |
| transfer kinds other than 0 and 2, and output modules other than 4 and 5 | behaviour | - | unknown | S23 |

**Pixel write (token 0x139), read (0x138), copy (0x137) and finish (0x13a).**

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| write, first word | a header word, read with the last data word; it is kept beside the set-up width and height and passed to the raster set-up | established | S23 |
| write, direct-write flag clear | the following words are in the command stream and are counted through with the pass-through counter; the bitmap loaders (set-up word 0 = 0) use this with one-bit-per-pixel words | inferred | S23, S20 |
| write, colour image | the following words are pixels packed in the pixel size and format of the destination | inferred | S21 |
| write, large band | bands over 4096 bytes go by the driver's DMA-write request instead of the command FIFO | established | S21 |
| read, payload | two words: x and y of the block; y is measured from the bottom, so the handler subtracts it from the screen height | established | S23, S20 |
| read, size | width and height come from words 4 and 5 of the preceding set-up | established | S23, S20 |
| read, reply | small blocks come back through the read-back area; blocks over 8192 bytes go by the driver's DMA-read request; a flush token with 0xdeadbeef follows the read | established | S20, S21 |
| read, pack mode of the returned words | which host-interface pack-mode value (section 8.2, shadow word 0) an X read uses | unknown | S23 |
| copy, payload | four words: source x, source y, destination x, destination y | established | S23, S20 |
| copy, size | width and height come from the size the set-up kept (the module also sends position and clip loads first) | inferred | S23, S20 |
| finish, payload | one word, zero and unused; it clears the direct-write flag and the set-up cache | established | S23 |

**Host-side packing tables that fill the format words.** The loader for a pixmap read or write looks up, by pixel format, one source and one destination word from a table per pixel size, and a shift word from a table per layout. The existence, role and numbers are read from the module's data (each table is three words stored 16 bytes apart, indexed by the low nibble of the pixel-format argument, 0 to 2).

| Table | Role | Grade | Evidence |
|---|---|---|---|
| 32-bit pixel, source and destination | packing word for 32-bit pixels, one table each for the source and the destination, indexed by pixel format: source 2, 2, 2 (0x587048), destination 2, 2, 2 (0x587078) | established | S21, S51 |
| 16-bit pixel, source and destination | the same for 16-bit pixels: source 1, 1, 1 (0x587038), destination 1, 1, 1 (0x587068) | established | S21, S51 |
| 8-bit pixel, source and destination | the same for 8-bit pixels: source 0, 1, 1 (0x587028), destination 1, 1, 0 (0x587058) | established | S21, S51 |
| main-plane shift, 8-bit, 12-bit and 16-bit luminance | shift words for the three luminance layouts: 8-bit 8, 0, 8 (0x586fe8); 12-bit 4, 0, 12 (0x586ff8); the 16-bit table is zero-initialised in the file and filled at run time (values not in the file) | established (8-bit and 12-bit values); 16-bit values unknown | S21, S51 |
| main-plane shift, 10-bit and 12-bit colour | shift words for the two colour layouts, chosen with the 32-bit tables: RGB10 2, 0, -2 (0x587008); RGB12 8, 0, -8 (0x587018) | established | S24, S51 |
| overlay shift, colour, and two colour-index variants | shift words for overlay pixels, chosen with the 16-bit and 8-bit tables: RGB overlay 1, 0, 15 (0x586fd8); colour index A 0, 8, 8 (0x586fc8); popup colour index 0, 0, 2 (0x586fb8; an older variant at 0x586fa8 is 14, 0, -14). The main-plane colour-index shift and the second overlay colour-index shift are zero-initialised in the file and filled at run time | established (listed values); run-time tables unknown | S24, S51 |
| which table the loader uses | the pixmap loader switches on the low nibble of its fourth argument (1, 2, 4, 8): case 1 uses the 32-bit tables with the RGB10 shift (flag 0x4000) or RGB12 shift, and the 8-bit and 16-bit tables with the L8, L16 and L12 shifts; cases 2 and 4 use the 16-bit tables with the RGB overlay shift and the 8-bit tables with the two overlay colour-index shifts; case 8 uses the 8-bit tables with the popup colour-index shift | - | established | S24, S51 |
| which pixel format selects which table, and the numeric contents of every table | the numeric contents of the file-resident tables and the selector are recorded above. Not settled: the mapping of the three index values (0-2) to named pixel formats, the meaning of the words as shifts in the loader-built format word (whose bit layout the engine consumes, section 7.8 words 10-12 and the pixel set-up words), and the values of the three run-time tables, which start-up code builds | unknown (contents newly recorded) | S21, S24, S51 |
| unrecognised pixel format | reported as an error by the loader | established | S21 |


### 7.10 Texture-load headers (tokens 0x173, 0x174 and 0x176)

A texture level reaches texture memory as one or more texel-draw commands (token 0x174) followed by one load-finish command (token 0x176). The second texture set-up form (token 0x175) is a return in the firmware: it reads no payload and writes nothing, and no shipped software sends it (established, S27, S26). The first form (token 0x173) is routed to a real handler but no shipped driver, library or server was found sending it, so no recording exercises it; it is graded from the firmware's reads alone.

**Texel draw (token 0x174, twenty words).** Words are counted from zero after the token. Words 0-18 are plain reads; word 19 is read through the last-word port when the DMA flag (word 6) is nonzero, so the command ends there and the image arrives by a later DMA packet. When word 6 is zero it is read through the non-last port and the image words follow in the same command stream. The 19 "reads seen" in section 2.11 are words 0-18; the twentieth is the final read.

| Word | Role | Layout / values | Grade | Evidence |
|---|---|---|---|---|
| 0 | texture target | 0x0de0 = 1D, 0x0de1 = 2D, 0x806f = 3D (public enumerant values). The firmware picks the per-unit state from it: 1D clears it, 2D takes the context's value, anything else uses 1 | established | S25, S26, S30 |
| 1 | transfer width in texels. A wide image is sent in several commands of power-of-two width and this is the piece's width | value | established | S25, S30 |
| 2 | transfer height in texels | value | established | S25, S30 |
| 3 | source pixel-format code | 0 red, 1 green, 2 blue, 3 alpha, 4 RGB, 5 RGBA, 6 luminance, 7 luminance-alpha, 8 ABGR, 9 CMYK, 10 CMYKA, 11 colour index, 12 stencil index, 13 depth. Components per format: 1, 1, 1, 1, 3, 4, 1, 2, 4, 4, 5, 1, 1, 1 | established | S25, S26 |
| 4 | source component type code | 0-6 = signed byte, unsigned byte, signed short, unsigned short, signed int, unsigned int, float; 7 = one-bit bitmap; 8-12 and 14-20 = packed types. Bytes per component for 0-6: 1, 1, 2, 2, 4, 4, 4 | established | S25, S26 |
| 5 | byte offset of the image inside its first word (the low two bits of the host source address, taken before the unpack skips) | 0-3 | established | S25, S30 |
| 6 | DMA flag | 0 = image words follow in the command; 1 = image arrives by a later DMA packet | established | S25, S30 |
| 7 | row mode | 0 = the image is one byte stream (contiguous rows); 1 = every row starts on a word boundary (strided rows) | established | S25, S30 |
| 8 | caller-supplied split field | every texel sender found sends 0; what hardware does with a nonzero value is not read | established for the value 0; unknown for any other | S26, S30 |
| 9 | destination storage-format code (the texel format id) | a row number into the firmware's format tables and equal to the texture-mode register's texel-format field; codes in section 7.12 | established | S25, S26, S30 |
| 10 | texture-cache entry number (the load id) | the same number words 0 of the bind commands, 0x176, 0x178, 0x1c4 and 0x1c5 carry (section 7.13). Observed identical to the entry number in every recorded load | established | S25, S29, S30 |
| 11 | first texel x (s start) | 16-bit coordinate | inferred | S26, S30 |
| 12 | first texel y (t start) | 16-bit coordinate | inferred | S26, S30 |
| 13 | last texel x, inclusive | 16-bit coordinate | inferred | S26, S30 |
| 14 | last texel y, inclusive | 16-bit coordinate | inferred | S26, S30 |
| 15 | destination slice (r start) | 11-bit; a volume sends one command per slice with this word counting up from 0 | inferred | S26, S30, S29 |
| 16 | physical size exponents, the image of the texture-load size register (0x7fc1) | 3:0 s, 7:4 t, 11:8 r; each exponent is raised to at least the layout mode's tile minimum (layout mode 0: s 3, t 2; mode 1: s 3, t 2, r 1; mode 2: s 3, t 1, r 1). Observed 0x23 (an 8 by 4 tile), 0x677 (128 by 128 by 64) | established for the image layout; inferred that the exponents are log2 sizes | S26, S29, S30 |
| 17 | layout and bank, the image of the texture-load miscellaneous register (0x7fc5) | 1:0 texel size code; 2 DMA flag (equals word 6; also the register's load-scissor enable); 3 bank bit; 6:5 layout mode; 10:7 s address bits; 14:11 t address bits; 15 interlaced download | established | S25, S26, S30 |
| 18 | even-side address word of the level | see section 7.11 | inferred | S26, S29, S30 |
| 19 | odd-side address word of the level | see section 7.11 | inferred | S26, S29, S30 |
| after word 19: image length | not sent in any word; computed from the current unpack state | with bytes per pixel p, row length L (0 means the width), alignment A, skip rows and skip pixels: stride s = ceil(L x p / A) x A; total T = s x height - (s - width x p); start S = word 5 + skip rows x s + skip pixels x p. Row mode 0: ceil((S + T) / 4) - floor(S / 4) words. Row mode 1: each row counted on its own as the words spanning its useful bytes | established | S25 |
| after word 19: inline image words | whole words per row including the byte prefix and suffix | byte order is the client's (big-endian); byte swapping is separate unpack state sent as a pixel-store parameter (token 0x1bb, section 7.14) | established | S30, S27 |
| DMA image | the DMA packet carries the source address, total bytes, line size and gap | the address is the exact byte address (no word rounding); contiguous: line size is the total and gap 0; strided: line size width x p and gap s - width x p | established | S30 |
| client's choice of DMA | above two size limits (their values not read) the client sends the command through its DMA-write request | - | established | S29 |
| hardware use of words 8 and 11-15 | no register write traced | - | unknown | S26 |

Word 17 values the client builds, before the DMA and bank bits: layout family zero (every storage code except the 8-bit RGB and RGBA ones) is 0x2200 in mode 0, 0x11a0 in mode 1 and 0x11c0 in mode 2; family one (8-bit RGB and RGBA, texel size 1) is 0x2181 in mode 0, 0x09a1 in mode 1 and 0x1141 in mode 2. Add 4 for DMA and 8 for bank one. Established as the client's encoding (S30); the recordings carry 0x2204, 0x220c, 0x2185, 0x218d and 0x09ad (S29).

**Load finish (token 0x176, one word).** The word is the cache entry number. The firmware advances a 20-bit load counter and stores it in the entry's load-id slot, and writes the counter to the raster bus. Sent once per level, after all of that level's texel draws (a volume's slices, and the replicated copies of a border-less small level included) (established, S27, S30). A second load header naming the same entry as the next command also starts a new image in a back end's model; that is a model rule, not a hardware fact (inferred, S29).

**Texture-load set-up (token 0x173, eleven words).** Words 0-9 are plain reads, word 10 is the last-word read and is dropped.

| Word | Role | Layout / values | Grade | Evidence |
|---|---|---|---|---|
| 0 | image width | kept in the state block; its base-two logarithm goes to the load size register (0x7fc1) bits 3:0 | established | S27 |
| 1 | image height | kept; logarithm goes to bits 7:4 | established | S27 |
| 2 | not used by the handler's own register writes | kept on the stack | unknown | S27 |
| 3 | internal-format code (public enumerant) | classified: 0x8047-0x8048 and 0x8058-0x8059 give class 1, 0x805a-0x805b give class 2, every other code from 0x803b to 0x805b gives class 0, other codes leave the class unchanged. The class goes to bits 1:0 of the load miscellaneous register (0x7fc5) | established | S27 |
| 4 | not used by the handler's own register writes | kept on the stack | unknown | S27 |
| 5 | bank selector | zero sets the target-bank bit (bit 3) of the miscellaneous register, nonzero clears it | inferred | S27 |
| 6, 7, 8 | saved into the texture-state block | no use in the handler's own writes | unknown | S27 |
| 9 | layout mode | goes to bits 6:5 of the miscellaneous register; bits 10:7 get 4 minus the class | inferred | S27 |
| 10 | final word | discarded | established | S27 |
| target | forced to 0x0de1 (2D) whatever the payload says; the r logarithm is therefore never written | - | established | S27 |
| who sends it | no sender found in the shipped driver, library, server or kernel | - | established | S27 |

### 7.11 Levels: origin, size, address and the filter-table slots

A load does not name its level. The level is implied by the address words in its header and by where its texels land; the bind that follows lists the levels' addresses in order.

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| level origin in the tile (header words 11, 12) | a level at or above the tile loads once at the origin of its rectangle. A level smaller than the tile (border-less) is sent as 2^(tile exponent - level exponent) copies per axis, the copy index times the level's own size giving each origin, so whole copies cover the tile. The recordings' (4,0), (6,2), (7,3) origins (and the 512 by 64 cases) are the last of these copies | established | S40, S29 |
| what sets the origin | resolved: replication by the client, not a hardware corner rule. Where the border texels of a small bordered level sit is unknown (the separate bordered-level routine was not read) | established | S40 |
| level size on the wire | header word 16 holds the physical size exponents of this level: base physical exponent minus the level number, floored at the tile minimum (s 3, t 2 in layout mode 0). Logical size of level 0 is the low nibbles of bind word 3; each level halves every axis down to 1 | inferred | S30 |
| level address, word 18 or 19 | one address word per level. The same word sits in header word 19 when the bank bit (word 17 bit 3) is set and in word 18 otherwise. Observed for all 26 levels of three recorded textures; that the word is an address is inferred from the match with the bind's table | inferred | S29 |
| level banks | consecutive levels alternate banks, the first level's bank given by bit 28 of bind word 2. Observed for the recorded textures | inferred | S29, S30 |
| level address table in the bind (section 7.13) | sixteen words, level 0 first, one word per level, ended by 0xffffffff | inferred | S29, S30 |
| address units and the position of a level inside the address | one unit = 256 bits (16 sixteen-bit lanes; 16, 8 or 4 texels for 16/32/64-bit texels), counted per bank. The diagnostic's allocator advances a bank's next-level address by texels x lanes / 16, aligns up to the texel width in lanes, and writes the same value to both the even and odd fields of the load-base register; the bank bit selects the bank. The units of the global-offset registers 0x101a/0x5001 are not reconciled | established for the allocator, inferred for the hardware unit; global-offset unit unknown | S38, S26 |
| address space | one program's levels sit in a region of the pipe's texture memory chosen at allocation; table words are relative to that region (a swap-in moved the region and left the table words unchanged) | inferred | S29 |
| layout mode 2 (mip-mapped volume) | one pair of descriptor words per two levels: levels 2k and 2k + 1 share the pair, header words 18 and 19 both carry it, and bit 3 of word 17 is the level's parity, not an allocation bank | established | S30 |
| layout mode 1 (single-level volume) | a two-word table; its pair goes in words 18 and 19 for every slice; bit 3 is the bank state, not level parity | established | S30 |
| where mode-1 texels sit inside the pair, and how the pipe addresses them | not read | unknown | S29 |
| border texels | positive border at x = W or y = H, negative border at the physical extent minus one; border fill is sent as constant-colour rectangles | inferred | S30 |
| where a far-corner level's border texels sit | not read | unknown | S29 |

**Filter-coefficient table (token 0x17e, 34 words).** Despite the name used in section 2.11, the table the firmware stores for this token is not a level table: it holds filter coefficients. The command is a slot number, then 33 data words; the firmware stores them as a 33-word record at that slot and sends nothing to the hardware until a bind needs it. The read count 3 in section 2.11 understates the length: the routine reads the data through a block helper.

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| word 0 | slot number from a host-kept allocator; sent only when the descriptor has no slot yet. The slot is held in bits 11:0 of the bind control word (section 7.13) | established | S26, S27, S29 |
| words 1-33, type-0 (four-tap cubic) table | 129 samples, each a signed byte in 1.7 fixed point (range -1 to 127/128, rounding toward zero), four bytes to a word, first sample in the top byte. Observed: every word's four bytes sum to 127-129, from 0x00007f00 to 0xf84848f8 | established for the encoding; inferred that each word is four taps over 128 | S26, S29, S30 |
| words 1-33, spline form (sharpen and detail) | 64 coefficients as ten-bit codes: bits 7:0 hold the signed mantissa shifted left two, bits 1:0 hold an exponent 0-3, so value = mantissa x 2^exponent / 128. Four codes fill two words (c0 in 9:0, c1 in 19:10, c2 in 29:20, c3 low two bits in 31:30 of the first word and c3 >> 2 in bits 7:0 of the second). Word 33 is padding | established as the client's encoding | S26, S30 |
| which type a given table is | the command carries no type, so the pipe cannot tell the two forms apart; a back end must infer it from the bind that names the slot | inferred | S30 |
| the table's hardware write | kind 0 writes the 33 words to bus addresses 0x1820-0x1840 (one word each); other kinds write sixteen word pairs from 0x1800 or 0x1810, the second word of each pair merged into the address | inferred | S27 |
| which sign sharpening takes | the client's types double (type 1) or negate (type 2) the samples; which type it uses for sharpen and which for detail is not read | unknown | S30 |
| what the tables control in the sampler beyond the bind's reference to them | not read | unknown | S26 |

### 7.12 Texel formats and packing

The destination storage code (texel-draw word 9) selects a row of the firmware's two format tables and equals the texture-mode register's texel-format field (section 7.13, word 2 bits 20:14). Each row gives a destination component signature (a mask with one nibble per component, low nibble = red or luminance, high nibble = alpha), a bus format code for the packed data words and a no-alpha flag. A format's texel size code (header word 17 bits 1:0) is the log2 of its width in 16-bit units: 0 for rows 0x08-0x10, 0x14, 0x18 (16 bits); 1 for rows 0x20, 0x28, 0x30, 0x38 (32 bits); 2 for rows 0x40 and 0x50 (a 64-bit slot, 48 bits used). Two shipped programs agree: the diagnostic's texel-size routine and the firmware's texture read-back set-up, which writes the same 0/1/2 to the read-back format register (16/32/48-bit words) (established, S38, S39). Codes 0x00-0x07 are not exercised by the diagnostic; the firmware treats 0x00-0x06 as 16-bit and 0x07 and 0x11-0x13 as 64-bit, while the diagnostic rejects 0x11-0x13 (unknown).

The packing below is how the pipe's output stage arranges texels in the 64-bit words it moves to texture memory. It is the bus data layout of the converter records, graded inferred; the bit order of a texel inside texture memory is not read for any format (a row at the end of the table says so).

| Storage code | Formats sent (public internal formats) | Texel | Bus word layout (one 64-bit word, high bits first) | In recordings | Grade | Evidence |
|---|---|---|---|---|---|---|
| 0x30 (48) | RGB8, RGBA8 and the unsized RGB and RGBA, three- and four-component | 8-bit R, G, B, A, 32-bit texel | bus code 1: two pixels of R, G, B, A, red in the highest byte | yes (RGBA and volume textures) | inferred | S25, S28, S29 |
| 0x14 (20) | RGB5, RGB5A1 | R 5, G 5, B 5, A 1; 16-bit texel | bus code 6: four 16-bit lanes, R 15:11, G 10:6, B 5:1, A 0 | yes (a 128 by 128 byte-RGB texture stored this way) | inferred | S25, S28, S29 |
| 0x10 (16) | RGB2, RGBA2, R3-G3-B2, RGB4, RGBA4; also every quad-group format | 4-bit R, G, B, A; 16-bit texel | bus code 5: four pixels of 4-bit R, G, B, A | yes (a 512 by 64 byte-RGBA texture stored this way) | inferred | S25, S28, S29 |
| 0x28 (40) | LUMINANCE12_ALPHA12, LUMINANCE16_ALPHA16 | 16-bit L, 16-bit A | bus code 3: two pixels, 16-bit L then 16-bit A | 0x28 only, in a texture read-back copy | inferred | S25, S28, S29 |
| 0x08 | LUMINANCE_ALPHA 8/8 and 6/2 and every dual-group format | 8-bit L, 8-bit A | bus code 8: four 16-bit lanes, L in the high byte, A in the low byte | no (client table only) | inferred | S25, S28, S30 |
| 0x0d (13) | LUMINANCE and its sized forms; DEPTH_COMPONENT and its 16, 24, 32 forms | one 16-bit component | bus code 9: four 16-bit values | no (client table only) | inferred | S25, S28, S30 |
| 0x0e (14) | ALPHA and its sized forms | one component | bus code 0x17: four lanes, alpha in the high field | no | inferred | S25, S28, S30 |
| 0x0f (15) | INTENSITY | one 16-bit component | bus code 9, as luminance | no | inferred | S25, S28 |
| 0x0c (12) | LUMINANCE12_ALPHA4 | 12-bit L, 4-bit A | bus code 0x16 | no | inferred | S25, S28 |
| 0x38 (56) | RGB10, RGB10_A2 | R 10, G 10, B 10, A 2; 32-bit texel | bus code 2: two pixels, R 63:54, G 53:44, B 43:34, A 33:32, then the same in 31:0 | no | inferred | S25, S28 |
| 0x50 (80) | RGB12, RGB16, RGBA12, RGBA16 | 12-bit components | bus code 0: one pixel, R 63:52, G 51:40, B 39:28, A 27:16, bits 15:0 unused | no | inferred | S25, S28 |
| 0x00-0x06, 0x18, 0x20, 0x40 | 4-bit, 8-bit single- and dual-component rows; R5G6B5; 12-bit luminance-alpha; 12-bit RGB | - | rows exist in the firmware tables (the 4-bit ones with texel-only bus codes 0x12-0x14) but the traced client never sends these codes in word 9 | no | unknown | S25, S26 |
| shared codes | luminance and depth both load as one component with bus code 9, so the code cannot tell them apart; the bind's internal-format index does | - | - | - | inferred | S25, S30 |
| order and width of a texel inside texture memory, every format | the software-visible order is the bus-word layout the diagnostic's host formatter builds, first texel in the high lane (all rows, incl. 0x18, 0x20, 0x40, 0x0b), read back identically for row 0x10; the order inside the memory chips is not reachable from software | - | - | - | inferred for the bus layout; chip order unknown | S38, S28 |

RGB and RGBA internal formats share storage code 0x30; the bind's internal-format index (next section) distinguishes them. Missing alpha is one and missing colour zero when the source format lacks a component (public pixel-transfer rule, applied by the client's format choice, not by a pipe field). Scale, bias and the clamp of texture images happen before the texel reaches the packing above (inferred from the client sending component bytes with no scale or bias arithmetic).

**Internal-format index (bind word 1, bits 23:12).** The 12-bit index selects a row of the client's format table. It gives the pair: public internal format and storage code. Components per format come from the firmware's 63-entry table (index 1-4). The recordings' formats are rows 2 (RGBA), 33-34 (RGB8, RGBA8), 30-31 (RGB5, RGB5A1), 28-29 (RGB4, RGBA4), 0 (luminance) and 63 (depth); the other rows are read from the client's table.

| Index | Public internal format | Storage code | Grade | Evidence |
|---|---|---|---|---|
| 0, 15 | LUMINANCE; legacy one-component | 0x0d | established | S30 |
| 1, 21 | LUMINANCE_ALPHA; legacy two-component | 0x08 | established | S30 |
| 2, 41 | RGBA; legacy four-component | 0x30 | established | S30 |
| 3 | LUMINANCE16 | 0x0d | established | S30 |
| 6, 10, 16 | LUMINANCE4, LUMINANCE8, LUMINANCE12 | 0x0d | established | S30 |
| 7, 11, 17, 18, 23 | ALPHA4, ALPHA8, ALPHA, ALPHA12, ALPHA16 | 0x0e | established | S30 |
| 9, 13, 14 | LUMINANCE4_ALPHA4, LUMINANCE6_ALPHA2, LUMINANCE8_ALPHA8 | 0x08 | established | S30 |
| 25, 26, 27, 28, 29 | RGB2, RGBA2, R3_G3_B2, RGB4, RGBA4 | 0x10 | established | S30 |
| 30, 31 | RGB5, RGB5_A1 | 0x14 | established | S30 |
| 33, 34, 37, 38 | RGB8, RGBA8, legacy three-component, RGB | 0x30 | established | S30 |
| 63 | DEPTH_COMPONENT | 0x0d | established | S30 |
| table rows beyond these (storage codes 0x28, 0x38, 0x50, 0x0c, 0x0f and others) | not read | - | unknown | S30 |
| layout family of a row | family 0 for alpha, luminance, luminance-alpha and indices 25-31, family 1 for the 8-bit RGB and RGBA rows; it sets the low byte of the bind record: 0x44 or 0x43 in the ordinary form (family zero or one), 0x23 or 0x22 in the volume forms (0x13 for a mode-1 volume in family one) | n/a | inferred | S30 |

### 7.13 The bind contract: how a bind and the level table select an image

A bind makes a stored image current for drawing. It does so in two commands: a short bind (token 0x1d5, or 0x106 for a linear texture) and then a record that lists the texture's levels (token 0x179 for 2D and 1D, 0x17b or 0x17c for volumes). A following 0x178 names the texture by number. The first word of the short bind is the cache entry number, or 0xffffffff when the texture's entry was freed and its image must be found from the record.

**Short bind (tokens 0x1d5 and 0x106, five words).** Token 0x106 is sent instead of 0x1d5 when bits 27:24 of word 1 equal 3 and stores the next word as a flags word, sending no table.

| Word | Role | Layout / values | Grade | Evidence |
|---|---|---|---|---|
| 0 | cache entry number, or 0xffffffff | the firmware releases the entry's old load id when the number is valid | established | S27, S29, S30 |
| 1 | bind control | 11:0 filter-table slot (sharpen and detail); 23:12 internal-format index (section 7.12); 27:24 mode (3 = linear form, 1 = a form that sends the filter table through a special raster register); 31:28 target index (0 none or unused, 1 = 1D, 2 = 2D, 3 = 3D) | established for 31:12 and 27:24; inferred for 11:0 | S26, S27, S30 |
| 2 | texture-mode word, the image of the texture-mode register (0x3fd4) | 1:0 sampling mode (0 2D, 1 3D, 2 3D mip-mapped, 3 bicubic); 4:2 minification filter (0 nearest, 1 linear, 2 bicubic, 3-6 the four mip-map pairs: nearest or linear within a level, nearest or linear between levels); 7:5 magnification filter (0 nearest, 1 linear, 2 bicubic, 3 detail-add, 4 detail-modulate, 5 sharpen); 8 and 9 flags; 11:10 shadow comparison (0 off, 1 reference at least the texel, 2 reference at most the texel); 12 clamp style (0 older style, 1 current style); 13 environment-on; 20:14 texel format (section 7.12); 23:21 detail level (0-4, negated public value); 25:24 channel-select field; 27:26 magnification channels (0 all, 1 colour, 2 alpha, 3 level 0); 28 first-level bank (1 when the first level is in bank one) | established for 20:14, 11:10, 7:0, 28; inferred for the rest | S26, S29, S30 |
| 3 | texture-size word, the image of the texture-size register (0x3fd5) | 3:0 s size exponent, 7:4 t, 11:8 r (log2 of the level-0 logical size); 12 s clamp, 13 t clamp, 14 r clamp (set for every non-repeat mode, so one bit cannot tell the three public non-repeat modes apart). Observed 0x3077 (128 by 128, s and t clamp) and 0x677 (128 by 128 by 64) | established for the sizes; inferred for the clamp bits | S26, S29, S30 |
| 4 | depth-comparison and ambient word | normally 1; 0 when the depth comparison is on (with the r exponent nibble forced to 0xf and word 2 bits 11:10 holding the comparison); observed 0 in a volume bind with no comparison | inferred | S29, S30 |

**2D and 1D record (token 0x179, 22 words).** The first six are state words, then sixteen level-address words.

| Word | Role | Layout / values | Grade | Evidence |
|---|---|---|---|---|
| 0 | layout byte | the low byte is the format-and-layout pair 0x44 or 0x43; the upper bits are preserved from earlier state and unread | inferred | S29, S30 |
| 1 | LOD scales | 7:0 s, 15:8 t, 23:16 r. Each byte is 16 x 2^b for a public bias b, truncated, interpolated linearly between integer powers and clamped to 1-255 (byte / 16 gives the factor) | established | S30 |
| 2 | LOD bounds | 9:0 minimum, 19:10 maximum, each 64 x (level + 1) for non-negative levels; zero is the finite floor. Does not carry base or last level, and a bound is a sampling clamp, not a completeness rule | established for the packing | S30 |
| 3 | physical size exponents | 3:0 s, 7:4 t (3:0, 7:4, 11:8 for r in volume forms), the tile-minimum-enlarged exponents the loads used | established | S29, S30 |
| 4 | comparison operand | cleared by the client before a comparison is set; the decoded model requires 0 | inferred | S30 |
| 5 | shadow ambient value | 0-63 = trunc(clamp(ambient, 0, 1) x 63) | inferred | S30 |
| 6-21 | level-address table | level 0 first, one address word per level, end marker 0xffffffff (section 7.11) | inferred | S29, S30 |

**Volume records and other binds.**

| Token and words | Layout | Grade | Evidence |
|---|---|---|---|
| 0x17b, mip-mapped volume, 14 words | 0, 1, 2, 3: the same four state words as the 2D record (layout pair, LOD scales with r in 23:16, bounds, physical sizes with r in 11:8), then ten descriptor words (five pairs: levels 2k and 2k + 1 share pair k) | established as framing; inferred for pair order | S27, S30 |
| 0x17c, non-mip-mapped volume, 4 words | word 0 layout pair, word 1 physical sizes, words 2-3 the one descriptor pair. Omits LOD scales and bounds, so mixed minification and magnification filters need state the record does not carry | established as framing | S27, S30 |
| 0x17d, detail image, 6 words | 0 entry number or 0xffffffff, 1 s exponent, 2 t exponent, 3 internal-format index, 4 and 5 descriptor pair. Detail level, add or modulate mode (word 2 of the base bind's bits 7:5 and 23:21), channel select and coefficient slot come from the base bind, not from this command | established | S27, S30 |
| 0x17a, bicubic, 3 words | read by the firmware with a branch on the current target; no sender found | unknown | S27 |
| 0x1aa, 2D clip-map, 8 words | words 2 and 3 are the s and t centres (15 bits each), word 4 bit 22 selects a five-register or two-register write; no recording or sender used it | unknown | S26, S27 |
| 0x016, old-style bind (36 words) | firmware reads two words (width and height) plus a block of state words; no sender found | unknown | S27 |

**Image identity: how the pipe finds the image.** The firmware keeps a table of 513 entries, each a load id (set by 0x176) and a bind id (set by 0x178), both 20-bit counters that wrap by flushing every entry; 0x1c4 resets both ids of one entry to invalid and sends nothing to hardware, 0x1c5 writes the entry's ids and counters out to the raster registers and leaves the entry unchanged, and 0x1e0 (kind 0-2, index) clears the remembered texture of that kind if it equals the index (established, S27). What follows is the contract a back end needs; the firmware cannot be read for what the hardware does with the ids, so each line says how it is known.

| Rule | Detail | Grade | Evidence |
|---|---|---|---|
| numbered bind | when word 0 of a short bind is a valid number, the image is the one loaded under that number; 0x178 with the number follows when the texture is made current | established | S29, S30 |
| all-ones bind | word 0 = 0xffffffff, the record that follows locates the image without a number; in every frame after the first, a recorded draw's bind was this form, after the entry was freed and retaken | established | S29 |
| match rule for the all-ones form | the image is the one whose earlier complete bind stored the same level table and, for 2D, the same first-level bank (word 2 bit 28); a volume record is matched by its table alone. Level k is found only in the bank that bit 28 gives the first level, flipped when k is odd, and only in that bank's header word. Two or no matches leave the bind refused (reported) until a 0x178 names a texture | inferred | S29 |
| image lifetime | the image must survive the free-and-retake sequence 0x178 n, 0x1c5 n, 0x1c4 n; no recorded load is repeated | inferred | S29 |
| order of the bind and its record | a draw may fall between the record and the 0x178; the record alone must identify the image | inferred | S29 |
| entries and tables per context | each rendering context numbers entries from 0 and has its own region; two programs loaded entry 0 at table word 0 and both ran | inferred | S29 |
| contexts that share textures | not observed | unknown | S29 |
| what the pipe keeps for an entry, and what it does with an all-ones bind | not read | unknown | S29 |
| first-level bank bit | bit 28 of word 2 copies the texture object's first-level bank just before the bind is sent; set for exactly the two (of three) recorded textures whose first level was in bank one | inferred | S29, S30 |

### 7.14 Texture environment and filter state

State words that a draw reads besides the bind: the function that combines the texel with the fragment, the colour used by one of the functions, coordinate generation, the active texture, post-filter scale and bias, and the shadow reference.

**Texture environment (tokens 0x011 float and 0x012 integer, five words each).** The first word is a parameter name; the next four are the values. The firmware keeps no copy of the values.

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| parameter 0x2200 (mode) | the scalar forms accept only this name. Float form: the value as a float of the mode number (start-up value 0x46040000 = 8448.0 = modulate). Integer form: the mode number. Mode numbers: 0x2100 modulate, 0x2101 decal, 0x0be2 blend, 0x1e01 replace (0x8062 also selects the replace table) | established as the table that selects a record; inferred as the meaning | S27 |
| parameter 0x2201 | environment colour: four values (red, green, blue, alpha); start-up zero | inferred | S27, S26 |
| parameter 0x80be | four values, start-up zero; role not read | unknown | S27 |
| selected raster state | the mode picks one of six five-word records; the engine adds the format class to read one byte: bits 3:0 alpha function, bits 7:4 colour function. Function codes 0 fragment, 1 texture, 2 modulate, 3 blend, 4 decal, 5 add, 6 add minus one half (written to the texture-environment register 0x1401 of section 8.2). The environment colour is written to registers 0x1402 and 0x1413 | inferred | S27, S26 |
| format class | 0 no texture, 1 alpha, 2 luminance or RGB, 3 luminance-alpha or RGBA, 4 intensity | inferred | S27 |
| record, class 0-4, modulate | 0x00, 0x02, 0x20, 0x22, 0x22 | established as values | S27 |
| record, class 0-4, decal | 0x00, 0x00, 0x10, 0x40, 0x00 | established as values | S27 |
| record, class 0-4, blend | 0x00, 0x02, 0x30, 0x32, 0x33 | established as values | S27 |
| record, class 0-4, replace | 0x00, 0x01, 0x10, 0x11, 0x11 | established as values | S27 |
| record, class 0-4, add | 0x00, 0x02, 0x50, 0x52, 0x55 | established as values | S27 |
| record, class 0-4, add-signed | 0x00, 0x02, 0x60, 0x62, 0x66 | established as values | S27 |
| which public mode number selects the add and add-signed records | - | unknown | S27 |
| what each function code does on the raster board | - | unknown | S27 |

**Coordinate generation (token 0x014, nine words).** One word coordinate 0x2000-0x2003 (s, t, r, q), one word parameter name (mode, object-plane or eye-plane), seven value words; any other coordinate or name raises an invalid-enumerant error and ends the command. The mode name is also kept per coordinate (start-up 0x2400). Enable and disable of each coordinate use the generic enable and disable tokens with 0xc60-0xc63. The double and integer forms (0x013, 0x015) print a not-implemented message and read nothing (established); the pop token (0x1d6) reads one word and then routes the next 0x70 host words to engine memory (inferred) (S27).

**Other texture state.**

| Token | Words | Layout | Grade | Evidence |
|---|---|---|---|---|
| 0x177 select the active texture | 1 | a selector 0-3: 0 is the default, nonzero values are the other units the library resets in order 1, 2, 3, then 0 at start-up. The firmware stores it in the same state word the binds use as the current target, so unit and target are one variable in the firmware; whether a back end may treat them as separate is not read | inferred | S27, S29 |
| 0x1d7 post-filter scale and bias | 4 | unit (must equal the selector or the command is ignored), channel-enable (bit 3 red to bit 0 alpha; a bit is clear only when scale is 1 and bias 0), packed scale (red 31:24 to alpha 7:0, each byte x / 255), packed bias (same). Both packed words zero with zero enables mean identity. Applied after spatial and level filtering, with a clamp before the environment | established for the packing and defaults; inferred for the order | S27, S30 |
| 0x1c7 shadow state | 3 | words written to three raster registers (the first as is, the second doubled, the last as is); whether any shipped software sends it is not read, and the 0x179 record's ambient word (section 7.13) carries the same ambient value in the recorded sequence | unknown | S27 |
| 0x1bb texture pixel-store parameter | 2 | parameter name and value. Parameters in the 0xcf0 and 0xd00 groups and 0x806b-0x806e are kept; alignment-style values only when a power of two up to 8; nothing is written to hardware | established | S27, S25 |
| texture enables | - | 1D, 2D and 3D texturing each set a flag byte in the state block and all-ones to engine port 0x47c; written through the enable and disable tokens 0x24 and 0x25 with 0x0de0, 0x0de1 and 0x806f | inferred | S27 |
| texel read-back and copy-to-texture (0x0fd, 0x052) | 17 and 18 | header words list target, size, format, type, storage code, first and last texel, then five words copied from the texture's load record (the geometry word and the two bank addresses); not decoded further here | inferred | S27, S29 |


### 7.15 GL pixel operations: state, transfers and accumulation

Everything the OpenGL client sends for pixel state and for draw, read and copy runs, and what the pipe's processor does with it. X pixel work is section 7.9 and texel downloads are sections 7.10-7.12; the two share the pixel descriptor and the host-image reader but have their own headers. The client turns every public pixel call into one of the tokens below; where a token has no sender the client converts to a sibling form first (stated per row). All the tokens run on the pipe's processor.

**Pixel-store state (token 0x033, two words).** Word 0 is a parameter name, word 1 the integer value. The processor stores the value in its pixel-state copy and writes no hardware; a name outside the two groups below is ignored.

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| unpack names | 0xcf0 swap bytes, 0xcf1 least-significant-bit first (both booleans sent as 0 or 1), 0xcf2 row length, 0xcf3 skip rows, 0xcf4 skip pixels, 0xcf5 alignment, 0x806d skip images, 0x806e image height, 0x8132 skip volumes, 0x8133 image depth | established | S31, S32 |
| pack names | 0xd00 swap bytes, 0xd01 least-significant-bit first, 0xd02 row length, 0xd03 skip rows, 0xd04 skip pixels, 0xd05 alignment, 0x806b skip images, 0x806c image height, 0x8130 skip volumes, 0x8131 image depth | established | S31, S32 |
| values | the client refuses a negative count (error 0x501, nothing sent) for every name except the four booleans; alignments accept only 1, 2, 4 and 8 | established | S31 |
| invalid alignment | the client raises error 0x501 but does not stop: it still sends the invalid value under the alignment name. The pipe's alignment-to-mask table holds a mask only at 1, 2, 4 and 8 and zero elsewhere, so the effect of an invalid alignment on the pipe is a zero mask (inferred from the table) | client behaviour established; pipe effect inferred | S31, S32 |
| start-up and default values | pack and unpack records both default to alignment 4 and zero in every other word; the record used for display-list images has alignment 1, so list images are read unpadded | established | S32 |
| float form (token 0x032) | no sender: the client converts the value to an integer and sends the integer form (booleans become 0 or 1, other values are rounded half away from zero). Token 0x032 is refused by the firmware | established | S31, S1 |
| texture copy of the state | a second pixel-store record used by texel transfers is set with token 0x1bb (section 7.14); the two are separate | established | S31, S27 |

**Pixel-transfer state (token 0x030, two words) and zoom (token 0x02f, two words).** Word 0 is the parameter name, word 1 the value. The processor keeps the value, updates a transfer-flag word (bit 0 set when any scale is not 1.0, bit 1 when any bias is not 0, further bits for the map flags and the two index terms) and writes four summary words from the post-colour-matrix terms. It writes no raster register for the transfer terms themselves here.

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| names, scales and biases | 0xd14 and 0xd15 red scale and bias, 0xd18 and 0xd19 green, 0xd1a and 0xd1b blue, 0xd1c and 0xd1d alpha, 0xd1e and 0xd1f depth; value a float | established | S31, S32 |
| names, post-convolution | 0x801c-0x801f red, green, blue, alpha scale; 0x8020-0x8023 the four biases; value a float | established | S31, S32 |
| names, post-colour-matrix | 0x80b4-0x80b7 scales; 0x80b8-0x80bb biases; value a float | established | S31, S32 |
| names, index and maps | 0xd12 index shift and 0xd13 index offset: an integer, the client rounds half away from zero; 0xd10 map-colour and 0xd11 map-stencil: the integer 0 for a zero value and 1 otherwise | established | S31 |
| any other name | the client raises error 0x500 and sends nothing | established | S31 |
| integer form (token 0x031) | no sender: the client converts the integer to a float and sends token 0x030. Token 0x031 is refused by the firmware | established | S31, S1 |
| meaning of the four summary words | which stage the processor enables from them | inferred (the 1.0 and 0 tests that set them) | S32 |
| zoom (token 0x02f) | two floats, x then y. The client clamps a factor above 127.0 to 127.0 and raises error 0x501; a negative factor is not checked. The processor copies both to engine memory so the engines see the new factors | established | S31, S32 |

**Pixel-mode suspend (token 0x111, two words).** The client brackets transfers that must not run the fixed-function pixel stages (convolution copies, overlapped copies, colour-table copies, texture-image reads) with this token.

| Word | Layout | Grade | Evidence |
|---|---|---|---|
| 0, selector | 2 = use the texel-transfer pixel-store copies; 4 = use the fixed default records; 0x20 = use the fixed display-list unpack record; any other value (the client sends 8 for a colour-table copy) = use the context's own records. Bit 29 of word 1 enables the record switch; with it clear the context's own records are used whatever the selector | established | S31, S32 |
| 1, mode | zero = restore the saved transfer flags and colour-matrix word. Bit 30 set = save them, clear the transfer flags and set the colour-matrix word to 0x8421. Bit 29 = switch the record pointers as selected. Values the client sends: 0x60000000, 0x20000000, 0x40000000 and 0 | established | S31, S32 |
| the colour-matrix word (the "pixel-mode word" of the suspend token) | the cached classification of the current colour matrix: a 16-bit map with bit (4 x row + column) set when that element is exactly 1.0 and every other element is exactly 0 (identity = 0x8421, the value the suspend token sets); 0xffff when the matrix is anything else. Read from the matrix loaders, push and pop, the context initialiser (0x8421) and the pixel-path classifier, which tests single-bit values (one input channel into the first output) and the row-3 patterns 0x8000 (mask 0xf000), 0x8400, 0x8800, 0x4400, 0x2200, 0x1100 to decide which colour channels pass unchanged. The identity and single-ones tests are symmetric, so the row and column orientation rests on the column-major array order (inferred) | established; orientation inferred | S32, S47 |

**Pixel maps (tokens 0x034 float, 0x035 unsigned 32-bit, 0x036 unsigned 16-bit).** A fixed header of four words, then n value words. The processor reads the n values one at a time.

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| header | word 0 the map name, word 1 the entry count n, word 2 n - 1 as a float, word 3 a word taken from the client's pixel state | layout established; word 3 meaning unknown | S32, S31 |
| map names | 0xc70 index-to-index (record 0); 0xc71 stencil-to-stencil (record 1); 0xc72-0xc75 index to red, green, blue, alpha (record 2, components 0-3); 0xc76-0xc79 red, green, blue, alpha to themselves (record 3, components 0-3). An unrecognised name discards the payload | established | S32 |
| values | float form: n floats. 32-bit form: n words. 16-bit form: each value zero-extended into its own word. One value per word in every form | established | S32 |
| limit on n | the client's and the pipe's table sizes | unknown | S32 |

**Pixel image header (token 0x03a, draw).** Eight words; the firmware's slots, the bitmap and texel variants and the colour-table and filter headers are in the pixel-image tables of [the geometry-engine document](ge.md#pixel-images-hp_drawpixels-hp_drawtexels-hp_bitmap). The words as the client sends them for a pixel draw, numbered from 0 after the token:

| Word | Layout | Grade | Evidence |
|---|---|---|---|
| 0 | width of this strip in pixels | established | S31, S32 |
| 1 | the strip's height (the firmware keeps it as height; the client's source reading names it a start row, so which of the two the client means is not settled) | firmware side established; client naming inferred | S31, S32 |
| 2 | format code (table below) | established | S31, S32 |
| 3 | type code (table below) | established | S31, S32 |
| 4 | low two bits of the host data address (byte offset of the image within its first word) | established | S31, S32 |
| 5 | data-by-DMA flag: 0 = the image follows inline in this command; nonzero = it arrives by a later input DMA | established | S31, S32 |
| 6 | row mode: 0 = the image is one byte stream; 1 = every row starts on a word boundary | established | S31, S32 |
| 7 | the strip's first column within the image (the client splits wide images; zero for a whole image) | established | S31, S32 |
| image length, inline | not sent: the pipe computes it from the unpack state. With p bytes per pixel (components x element size, or the packed type's own size; one bit for a bitmap), row bytes r = row length x p (bitmap: (row length + 7) / 8), stride s = r rounded up to the alignment, total T = s x height - (s - r), start S = byte offset + skip rows x s + skip pixels x p. Row mode 0 moves `ceil((S + T) / 4) - floor(S / 4)` words; row mode 1 counts each row's words on its own | established | S32 |
| row-mode choice | the client sets row mode 0 when the strip width equals the row length it used, the skip-pixels count is 0 and the pad is below 4; row mode 1 otherwise | established | S31 |
| DMA choice | the client sets the DMA flag when the total exceeds a size threshold and, for row mode 1, when the row width times the element size also exceeds a second threshold. The two threshold values are constants of the client library and are not recorded here. | rule established; threshold values unknown | S31 |
| DMA delivery | with the flag clear the image goes through the command port: row mode 0 as one run from the word-aligned start, row mode 1 row by row at the stride. With it set the client sends the host buffer through the DMA-write request and the pipe fetches it when the next input-DMA token arrives. A third row mode (tiled rows) exists in the client's switch and ends the process with a message; it is never sent | established | S31, S32 |
| splitting wide images | when a convolution or pixel-texture stage is active, or a per-type width limit applies, the client cuts the image into strips of the limit's width less the filter border, sets skip pixels and row length (token 0x033) before each strip and restores them afterwards. A pixel-texture target (0x81c6) needs a power-of-two width up to 256, otherwise error 0x501 | rule established; the limit tables' values unknown | S31 |

**Format and type codes (words 2 and 3 of the draw header, and the read header).** The client turns the public enumerants into the pipe's codes before sending; the pipe indexes its component-count and element-size tables by them. Any other format or type enumerant raises error 0x500 in the client and is never sent.

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| format codes 0-7 | 0 red, 1 green, 2 blue, 3 alpha, 4 RGB, 5 RGBA, 6 luminance, 7 luminance-alpha | established | S31 |
| format codes 11-13 | 11 colour index, 12 stencil, 13 depth | established | S31 |
| components per pixel | the pipe's 15-word table by format code: 0-3 one each (red, green, blue, alpha), 4 three (RGB), 5 four (RGBA), 6 one (luminance), 7 two (luminance-alpha), 8 four, 9 four, 10 five, 11 one (colour index), 12 one (stencil), 13 one (depth), 14 zero | established | S32, S49 |
| format codes 8-10 | 8 = 0x8000 (ABGR extension, four components), 9 = 0x800c (CMYK extension, four components), 10 = 0x800d (CMYKA extension, five components). The client's format table is indexed by the public format minus 0x1900 for 0x1900-0x190a and the three extension enumerants index its slots 11, 12 and 13, whose entries are 8, 9 and 10 (the "11, 12 and 13" is a table index, not the code); the pipe's component table gives 4, 4, 5 at codes 8, 9, 10. Code 14 has component count 0 (unused) | established (codes and counts); the enumerant names are the public extension names | S31, S49, S50 |
| type codes 0-6 | 0 signed byte (0x1400), 1 unsigned byte, 2 short, 3 unsigned short, 4 int, 5 unsigned int, 6 float (0x1406) | established | S31 |
| type code 7 | one-bit bitmap (0x1a00) | established | S31, S32 |
| type codes 8-12 | packed types 0x8032 (3-3-2 bytes), 0x8033 (4-4-4-4 shorts), 0x8034 (5-5-5-1 shorts), 0x8035 (8-8-8-8 words), 0x8036 (10-10-10-2 words). The client requires RGB with 0x8032 and RGBA with the other four, and refuses a type whose component count differs from the format's (error 0x502) | established | S31 |
| type codes 14-20 | seven further packed types, enumerants 0x81bd-0x81c3; element sizes are two 16-bit, two 32-bit and three 64-bit (see above); the bit layouts inside them are not recorded. The client's packed-type validation checks only the component count, and the pipe's per-type converter lists name only codes 8-12 | code mapping and sizes established; layouts unknown | S31, S49 |
| element size per type | the pipe's 21-word table by type code: 0-6 are 1, 1, 2, 2, 4, 4, 4; 7 (bitmap) 1; 8 (3-3-2) 1; 9 (4-4-4-4) 2; 10 (5-5-5-1) 2; 11 (8-8-8-8) 4; 12 (10-10-10-2) 4; 13 unused 0; 14 and 15 are 2 each; 16 and 17 are 4 each; 18, 19 and 20 are 8 each | established | S32, S49 |
| bit and byte order on the wire | swap-bytes and least-significant-bit-first apply to the data as the pixel-store state says; on a big-endian host the image words arrive in host order. How the pipe's unpacker (21 per-type mode numbers) maps each packed type onto components is not recorded | unknown | S32 |
| bytes per pixel and alignment mask | components x element size (the packed type's own size for packed types); alignment mask 1, 3 or 7 for alignments 2, 4 or 8, zero otherwise | established | S32 |

**Pixel read (token 0x039, seven words).** The pipe reads the rectangle back to the host, applying the pack state.

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| header | x, y, width, height, format code, type code, low two bits of the host destination address. The processor also reads pack words from its pixel-state copy (token 0x033 pack side) | established | S31, S32 |
| clipping | a rectangle that reaches past 4095 is shortened by the processor and the shortened sizes are written to the output-DMA registers | established | S32 |
| reply by return-data buffer | when the strip is small (height x row bytes not above 0x3ff0 bytes, and a context bit clear) the client sends the token, waits, and copies the reply from offset 8 of the return-data buffer; the buffer is one 16 KB page | established | S31, S33 |
| reply by DMA | otherwise the client sends the token inside a DMA-read request and the pipe writes the image straight to the host buffer | established | S31 |
| what the context bit that forces the buffer reply means | - | unknown | S31 |
| bitmap reads | the client widens the span to whole bytes and merges unaligned starts into the destination itself | established | S31 |
| split | convolution borders or a per-type width limit make the client read in strips, setting skip pixels and row length for each | rule established; limit values unknown | S31 |
| layout of the reply words (which pack mode the pipe uses) | the host-interface pack-mode value an OpenGL read selects | unknown | S32 |
| validity | the client refuses a negative size (error 0x501), reading colour from a colour-index context, depth with no depth buffer or stencil with no stencil buffer (error 0x502), and a packed type with the wrong component count (error 0x502) | established | S31 |

**Pixel copy (token 0x038, seven words).** A copy inside the frame buffer. The destination is the current raster position; the destination is not sent.

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| header | source x, source y, width, height, destination offset, copy type (0x1800 colour, 0x1801 depth, 0x1802 stencil), overlap word | established | S31, S32 |
| destination offset | zero for a whole copy; the strip offset when the client splits a wide copy | established | S31 |
| overlap word | the client sends 0; the processor keeps it as the copy-overlap flag | established | S31, S32 |
| destination | the current raster position (the standard rule); no sender sends a destination word | inferred | S31 |
| overlap query (token 0x110, four words: x, y, width, height) | the pipe answers through the return-data buffer; bit 2 of the word at offset 8 set means the copy overlaps and the client does it through the host instead (reads the rectangle back and draws it again) | established | S31, S32 |
| convolution overlap query (token 0x115, four words) | the reply block's first word has bit 2 for overlap; another reply word (the tenth) less x tells the client whether the strip crosses the filter border, and bit 0 of a reply flag picks the strip order; the full reply layout is not decoded | partly established; layout inferred | S31, S32 |
| single-component query (token 0x116, four words) | the reply is one word, the mode word of the resolved result record, read from offset 8; it is not a yes or no answer | established | S31, S32 |
| copy of depth or stencil | needs both draw and read depth (or stencil) buffers, otherwise error 0x502 | established | S31 |
| strip rules | with a convolution target active or the wide mode on, a copy wider than the limit goes out as limit-wide strips, one token 0x038 each with the offset advancing, in an order picked by the reply flag, with the partial strip first or last in the same order | rule established; limit values unknown | S31 |
| video source | the processor has a copy form whose source is the video input, chosen by a processor-held flag; no OpenGL sender sets it in the shipped client | unknown (no sender: nothing in the shipped client sets the flag; the firmware's behaviour is established) | S32 |

**Bitmaps.** A bitmap is a pixel run of one bit per pixel.

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| empty bitmap (token 0x006) | five zero words and four floats (x origin, y origin, x move, y move): nine payload words, and only the raster position moves. Here the origin and the move are sent separately, unlike the small bitmap's origin-plus-move words | established | S31, S32 |
| small bitmap (up to 0xc40 pixels) | token 0x005 with eight payload words, numbered from 0 after the token: 0 width rounded up to 8, 1 height, 2 x origin, 3 y origin, 4 x origin plus x move, 5 y origin plus y move, 6 word count, 7 byte count. The image follows, packed with no row padding. The word count includes the byte-count word, so the image is word 6 - 1 words (the recorded bitmaps frame as 8 words plus word 6 - 1 image words). The recorded glyph advance equals word 4 - word 2 (the x move) | the eight-word header and the field order established; that word 6 counts the byte-count word and that word 4 - word 2 is the advance inferred (recording, one set of glyph draws) | S31, S32, recording |
| large bitmap | token 0x006 with the header words of the pixel table (width, height, byte offset, DMA flag, row mode) and the four floats, then the image as for a pixel draw | established | S31, S32 |

**Accumulation buffer (token 0x0c5, two words; clear value token 0x01b).** The client sends these in immediate mode and in display lists.

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| operation word | 0x100 accumulate, 0x101 load, 0x102 return, 0x103 multiply, 0x104 add; the client sends the operation unchecked. The processor raises invalid-enumerant for any other value | established | S31, S32 |
| value word | the value as a float | established | S31 |
| when it acts | a buffer with no accumulation bits raises invalid-operation; outside render mode (0x1c00) the processor does nothing. In render mode it programs raster registers, sends the operation through the engine port, covers the rectangle with the rectangle generator and repeats once for the two-pass operations | established | S32 |
| which operations are two-pass | only when the value is exactly 1.0: accumulate and add run twice with value 0.5; load runs as load 0.5 then accumulate 0.5; multiply by 1.0 does nothing; return is always one pass. Every other value is one pass for every operation (16-bit and 32-bit forms share this) | established (pass rule); inferred (reason: 1.0 does not fit the 13-bit value field) | S32 |
| clear value (token 0x01b, four floats) | red, green, blue, alpha. The display-list form clamps each component to minus one to one; the immediate-mode form is a short sender that was not read for a clamp (section 2.7) | list form established; immediate form inferred | S31 |
| accumulation clear on the board | narrow storage sends one value (when red equals blue and green and alpha need not differ) through a one-value path, otherwise per channel; 32-bit storage uses its own path with the write masks zeroed | established | S32 |
| accumulation storage format | the layout of accumulation values in frame-buffer memory is unknown. Known: per-component width from the state byte 0x1d4 (32-bit when 0x20, otherwise narrow); the bank count is 3, 2 or 4 by colour width and board density, not by accumulation width; the narrow clear is a 24-bit scaled value cut into 12/4/4/4-bit fields of the two clear-colour words (from the listing, inferred); the engine's accumulation operation register 0x1c0e (no shadow slot) has, in the diagnostic's table, value bits 12:0, operation code 15:13 (accumulate 0, load 1, return 2, multiply 3, add 4; the GL enumerant minus 0x100), return-by-four flag bit 16, precision bit 17, speed-up bit 18 and a 3-bit low-order extension of the value in bits 21:19; the engine accumulation routines scale the float value by 1024.0 or 4096.0 (constants 0x44800000 and 0x45800000); the published technical report shows an accumulation buffer in luminance-alpha formats with 32-bit components, which agrees with the firmware's 16-bit versus 32-bit storage switch; the layout inside the frame-buffer memory is produced by the image-processor chips, which no netlist or program describes | unknown (partial facts established) | S32, S48, S52 |


### 7.16 Queries, select and feedback

How the host asks the pipe a question, where the answer lands, and when the host stops waiting; then the select and feedback modes, whose output goes to host memory by DMA instead. Pixel reads and the copy-overlap queries are in section 7.15. All query tokens run on the pipe's processor. A query is a short token with its arguments, no pixels, and an answer written to host memory; the client then reads the answer in place.

**The return-data buffer and the completion rule.** One buffer per rendering context, one 16 KB page, whose pipe address and length the host registers with the read-back set-up token (0x1f2, three words: address high, address low, length 0x4000).

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| buffer layout | word 0 a completion word, word 1 the count of data words that follow, data from byte 8. Every query answer is read at byte 8 | established | S33, S34 |
| completion word | the client spins on word 0 until it is nonzero, then clears it. The pipe writes word 0, and writes it last: the start routine points the output DMA at the buffer base and sends a 0 (word 0), the reply's count follows as word 1 and the data from byte 8, and the finish routine moves the DMA address back to the buffer base, sets a 4-byte length and sends a 1 (nonzero word 0). The engines' own start and finish handlers (used by the current-value, raster-position, error, clip-plane and generic-state queries) take the same address words and stage the same registers; their literal completion value is not decoded | established for the ARM start and finish routines; the engine routines' literal value inferred | S33 |
| where the count word comes from | the processor writes the reply's word count first, then the words; the client reads the count at byte 4 for light, material and histogram-parameter replies and ignores it for fixed-size replies | established | S33, S34 |
| host wait | up to 200000 spins on word 0, then up to 200000 zero-length naps, then naps of a tick count scaled from the system clock rate. After 3000 passes of that phase it asks the kernel for a diagnostic report, prints the first 64 words of the buffer and goes on waiting. A signal ends the wait early. Every exit clears word 0 | established | S33 |
| reply for a query with no answer | the client has no other way out of the wait, so a handler that replies nothing hangs the client; a bad name replies zero or an empty reply with an invalid-enumerant error recorded | inferred (from the wait loop and the handlers) | S33 |
| host-only answers | evaluator-map queries, texture-parameter and texture-level queries, evaluator grid queries, client-array pointers, and the enable bits of 29 capabilities are answered from the client's own state and send nothing | established | S34 |

**Query tokens, their request words and replies.** Numbers of data words are after the count word. Floats are IEEE single precision in the pipe's order; the client does the conversions to integers, doubles and booleans (see the last row).

| Token | Request words and reply | Grade | Evidence |
|---|---|---|---|
| 0x03b current values | one request word (0). Reply count 13 words (52 bytes), as the pipe's current-attribute handler pushes them in vertex-record order: colour (4 floats) at 0-15, colour index at 16, normal (3 floats) at 20-31, texture coordinates (4 floats) at 32-47, edge flag (one word) at 48. The client's offsets, by GL name: 0xb00 current colour +0, 0xb01 index +16, 0xb02 current normal +20, 0xb03 current texture coordinates +32, 0xb43 edge flag +48. (An earlier reading swapped the names of 0xb02 and 0xb03, which produced an apparent overlap.) | established; edge-flag value encoding inferred (the handler's two complementary conditional stores; format not decoded) | S33, S34 |
| 0x03c clip plane | one word, the plane name (0x3000 + n). Reply 4 floats: the plane equation | established | S33, S34 |
| 0x03d raster position | one word (0). Reply count 15 words (60 bytes), no gaps: colour (4 floats) at 0, colour index at 16, texture coordinates (4 floats) at 20-35, position (4 floats) at 36-51, valid flag at 52, distance at 56. Client offsets by GL name: 0xb04 raster colour +0, 0xb05 index +16, 0xb06 texture coordinates +20, 0xb07 position +36, 0xb08 position-valid +52, 0xb09 distance +56. (An earlier reading gave the names in the wrong order, which made the tail look unsettled.) | established (client offsets, enum names, and exact tiling of the 15-word count); the engine handler's push order is not separately decoded | S33, S34 |
| 0x03e error | one request word, a filler (0xdbdbdbdb); the processor reads it as the payload. Reply 1 word: the first recorded error (invalid enumerant 0x500, invalid value 0x501, invalid operation 0x502, stack overflow 0x503, underflow 0x504); the processor clears it when it is read, and later errors are kept only if none is pending. The engines' own pending error is returned when the processor's is clear | established | S33, S34 |
| 0x041 light | two words: light number (0-based), parameter 0x1200-0x1209. Reply count 3 for the spot direction, 1 for single-value names, otherwise 4 floats | established | S33, S34 |
| 0x046 material | two words: face (0x404 front, 0x405 back), name 0x1200-0x1209 or 0x1600-0x1603. Reply count 4 for ambient, diffuse, specular and emission, 1 for shininess, otherwise 3 floats | established | S33, S34 |
| 0x048 pixel map | three words: map name (0xc70-0xc79), start entry, entry count. The client fetches in blocks of at most 512 entries. Reply: one 16-byte entry per map entry, four words, of which the client reads the component slot (0 for index and red, 1 green, 2 blue, 3 alpha) | client side established; entry layout inferred | S33, S34 |
| 0x04b polygon stipple | one word (0). Reply count 0x20, 32 words: the 32 stipple rows. The processor rotates the stipple before and after the read and leaves it rotated by the second pair of offsets; why is not read | reply established; rotation reason unknown | S33, S34 |
| 0x04c generic state | one word: the parameter name. Reply by the query table: the table gives each name a count of values and a kind (a value from the state block, a word from the context block, an engine-memory read, or a callback). 159 names are answered by the pipe; the others the client answers itself | mechanism established; the name-by-name counts unknown | S33, S34 |
| 0x04d texture environment | one word: the parameter name (0x2200, 0x2201 or 0x80be). Reply 1 word (the mode, as an unsigned integer) for 0x2200, otherwise 4 floats | established | S33, S34 |
| 0x050 texture generation | two words: coordinate (0x2000-0x2003), name (0x2500-0x2502, 0x81f4-0x81f7). Reply: the mode name as 1 word for 0x2500; 16 words (four rows of four floats, one column per coordinate) for the plane names and the first two distance names; 24 words (six rows) for 0x81f6 and 0x81f7. The client reads the plane rows at an address 0x8000 bytes below the mode word; why is not settled | reply shape inferred; the displacement unknown | S33, S34 |
| 0x052 texture image | eighteen words: target, size, format, type and the selection words (section 7.14). Reply: the image in the host format and type, by the return-data buffer, or by DMA when the client uses the DMA-read request | request established; reply layout inferred | S33, S34 |
| 0x0ea colour table | four words: target, format, start, count. The client reads 512 entries at a time. Reply length is the count rounded up to 32 entries times 4 bytes; the entry layout is the pipe's table format, which the client unpacks | request established; entry layout unknown | S33, S34 |
| 0x0ec colour-table parameter | two words: target, name. Reply count 4 floats for scale (0x80d6) and bias (0x80d7); otherwise 1 word: 0x80d8 the format, 0x80d9 the width, and the size names the stored size | established | S33, S34 |
| 0x0ee line-mode limits | one word (0). Reply count 0x20: eight rows of four words, the first two from the extended limit table and the last two from the standard one; the client splits each row between two arrays | established | S33, S34 |
| 0x0f4, 0x0f7 convolution and separable filter | target and the format and type codes (the processor's reads seen are 2 and 3; the client's word count is not settled); the separable form is sent once for the row filter and once for the column filter. Reply: the kernel in the host format by the return-data buffer | request word count unknown; reply inferred | S33, S34 |
| 0x0fa pixel-transform parameter | two words: target 0x81c6 and name 0x81c9 or 0x81ca. Reply count 1, the stored integer; any other target or name gets an empty reply. The client answers the filter-record names itself | established | S33, S34 |
| 0x104 histogram | one word, inferred to be the reset flag. Reply: the counters, width x components words. Up to 4093 words come by the return-data buffer; a larger table by the DMA-read request. A reset sends token 0x103 with 0x8024 afterwards | request word inferred; the rest established | S33, S34 |
| 0x105 histogram parameter | two words: target (0x8024, 0x8025 proxy), name. Reply count 1 then the value: 0x8026 width, 0x8027 format, 0x8028-0x802c a fixed 0x20, 0x802d sink flag (real target only); any other name replies zero and records an invalid-enumerant error | established | S33, S34 |
| 0x109 min-max | one word, inferred to be the reset flag (the client's read never sets it). Reply: the base format, then eight words from engine memory (the minimum and maximum per component, with a partner word that the client carries along; why is not read) | reply inferred | S33, S34 |
| 0x10a min-max parameter | one argument word. The client ignores the parameter name and returns reply word 0 for every name. Reply count 1: 0x802f gives the format and 0x8030 the sink flag | processor side established; client behaviour a quirk | S33, S34 |
| 0x134 texture attributes | one word. Reply 121 words: the texture environment and generation planes. Sent by the context-copy path only | reply established; sender inferred | S33, S34 |
| 0x1c6 deformation | one word (the query number). Reply: coefficients (three orders x 12 bytes of control points), domain (24 bytes, 6 values) or orders (3) as the query selects | inferred | S33, S34 |
| 0x1cb transform attributes | one word. Reply 61 words, of which the client copies the 32-byte clip-plane records. Sent by the context-copy path only | reply established; sender inferred | S33, S34 |
| 0x1e9 board configuration | one payload word, taken as the read-back argument (which value the tool sends is not recorded). Reply count 0x1de (478), then 478 words: the board-configuration block. Sent by the pipe-information tool, not by the OpenGL client | reply established; request word unknown | S33, S34 |
| 0x0c6 finish | two words: token and 1. The processor drains the raster boards and replies one word; the client returns after word 0 is set. A zero flag word does not reply | established | S33, S34 |
| float and integer query variants 0x03f, 0x040, 0x042, 0x043-0x045, 0x047, 0x049, 0x04a, 0x04e, 0x04f, 0x051, 0x053 | no sender: each is refused by the processor. The client answers these calls through the float forms above (light, material, texture environment and texture generation by 0x041, 0x046, 0x04d, 0x050; state by 0x04c), from host state (evaluator maps, texture parameters) or through the pixel-map float form | established | S34, S1 |
| client conversions of float replies | integer reads of a colour-range value are (v x 4294967295 - 1) x 0.5, giving 0 for 0.0 and 2147483647 for 1.0. Records that use it: light-model ambient (0xb53), fog colour (0xb66), depth range (0xb70), depth clear (0xb73), accumulation clear (0xb80), alpha reference (0xbc2), colour clear (0xc22), blend colour (0x8005) and the current-value and raster-position replies. Light and material ambient, diffuse, specular and emission colours and the texture-environment colour scale by 2^31 the same way. All other integer reads truncate; double reads widen; boolean reads test the low byte | established | S34 |

**Select and feedback.** Select and feedback do not use the return-data buffer. The pipe writes records straight to host memory by output DMA, and the host collects them when it leaves the mode or when a read or query needs the command path.

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| render mode (token 0x019, one word) | 0x1c00 render, 0x1c01 feedback, 0x1c02 select. The client sends the new mode first, then finishes the mode it is leaving, then starts the new one. The processor ends the old mode in the engines and begins the new, re-derives the transfer mask, viewport and primitive set-up, and keeps the mode in the state block | established | S35 |
| feedback type (token 0x017, one word) | 0x600 2D, 0x601 3D, 0x602 3D colour, 0x603 3D colour texture, 0x604 4D colour texture; the client refuses other values. The processor stores it and sends it to the engines when feedback starts | established | S35 |
| selection names | token 0x10c initialises the name stack, 0x10d replaces the top name, 0x0c3 pushes, 0x0c2 pops; each is the token and one word (0 for init and pop). They act only in select mode; in other modes the words are dropped | established | S35 |
| pass-through (token 0x0c1, one word) | a float marker; acts only in feedback mode, where it appears in the record stream as a pass-through record | established | S35 |
| start (token 0x1f5, six words) | address high, address low, length in bytes, line length, stride, snapshot ([the select-feedback DMA](hip.md#pipe-to-host-select-feedback-kona_dmaread)). The processor programs output-DMA channel 0 and keeps the five values; snapshot 1 keeps a second copy | established | S35 |
| finish (token 0x1f6, two words) | an event code (256, chosen by the kernel) and the context's slot index. The pipe answers with the engine event 0x100 carrying the slot index, the remaining byte count and a status word; the words delivered are (length - remaining) / 4 and the overflow flag is bit 11 (0x800) of the status | established | S35 |
| completion rule | the client waits on the kernel's event. A timeout stops the pipe (the kernel's reason 5). A select or feedback in flight is suspended (finished) before any read or query so the command path is free, and resumed afterwards at the buffer plus the words already delivered | established | S35 |
| restart (token 0x1bc) | one word. Reprograms channel 0 from the saved copy while a feed is active; nothing in the client or the kernel sends it | unknown (no sender) | S35 |
| host buffers | the client allocates the select buffer as (size + 256) x 4 x k bytes, where k is a client count word whose meaning is not settled, and the feedback buffer as sent | allocation established; k unknown | S35 |
| feedback record codes and layout | each record starts with a code word, a single-precision float of 0x700 (pass-through), 0x701 (point), 0x702 (line), 0x703 (polygon), 0x704 (bitmap), 0x705 (draw pixel), 0x706 (copy pixel) or 0x707 (line reset); the client truncates the float to an integer. The words after the code: pass-through 1 (the marker); point, bitmap, draw-pixel and copy-pixel one vertex; line and line-reset two vertices; polygon a count word n (float) then n vertices. A vertex is the feedback type's value count: 2D 2 words, 3D 3, 3D colour 3+c, 3D colour texture 7+c, 4D colour texture 8+c, where c is 4 (RGBA; selected by a context byte, taken to be the RGBA flag) or 1 (colour index). A word at a record boundary whose integer value minus 0x700 is 8 or more is not a record: the client deletes it by shifting the rest of the buffer down one word. Which words the pipe emits that the client drops is not decoded. On the pipe side the vertex formatter scales window x and y by 0.0625 after subtracting the window origin and z, after the depth offset, by 2^-20 (constants 0x3d800000, 0x35800000); the order of the values inside a vertex is not decoded and follows the GL feedback value order only by count | record sizes established (client); vertex value order and scaling inferred; dropped-word source unknown | S35 |
| select record | a marker word (the client skips a record whose marker is 0, or 0x2bad2d00 under a client capability bit; which board sets it is not settled), a name count, the minimum depth, the maximum depth, then the names. The client merges following records with the same marker, taking the smaller minimum and the larger maximum | established | S35 |
| depth encoding in select records | each depth word is an unsigned 32-bit integer; the client copies them unchanged. The pipe builds them from its floating-point depth bounds, scaled to the 32-bit range and clamped at the float 4294967040.0 (0x4f7fffff), with a 20-bit window-depth range constant 0x497fffff also loaded. Which constant multiplies and which clamps, and whether 0 is the near plane, is read from constants and operation kinds only | inferred (what would settle it: a recorded hit with a known depth) | S35 |
| result | the client returns the number of hits or feedback values; -1 when the status reported overflow | established | S35 |


### 7.17 Multisample

Multisampling is a buffer-configuration choice, three enables, a sample pattern and a sample mask. The client has senders for all of them. Sample locations are on an eighth-of-a-pixel grid: each location is a three-bit x and a three-bit y. The raster registers named below are the shadow words of section 8.2 (sample locations are words 21 and 22, the sample mask register word 81, the alpha-to-mask enables word 88, the primitive sampling selects word 27, the image-processor multisample word 38 and the image-processor bank addresses word 43).

**Configuration and enables.**

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| sample count | the sixth payload word of the buffer-configuration token (0x001) and of the read-buffer configuration token (0x004), after level, the two size words and double-buffer and stereo and before depth: 0 = no multisample buffer. The processor keeps it as a byte. Values 4 and 8 are the two counts the tables below cover (a count shifted right by 3 chooses the 4- or the 8-sample set); what a count of 1, 2 or any other value does is not recorded | position established; 4 and 8 inferred; other values unknown | S36, S37 |
| what a configuration does | on every buffer-configuration token the processor resets the sample mask to 1.0, writes all ones to the sample-mask register, zero to the alpha-to-mask enables, selects pattern 0x80a1 and writes its pair of location words, calls the enable or disable routine below by whether the count is above zero, records the enable byte as 1 whichever routine ran, and writes the multisample control word (enable bit, 4-or-8 bit and the buffer-width bits) | established (steps); control-word bit meanings inferred | S37 |
| control-word layout | the image-processor multisample word: bit 0 enable, bit 1 sample count (0 = 4, 1 = 8), bit 2 mask operation (0 AND, 1 replace), bits 10:3 an 8-bit mask, bit 11 maintain-two, bits 13:12 optimisation (0 none, 2 disable, 3 enable); the optimisation field is written by the blend enable and disable routines and the colour-mask handler | established for the layout names; inferred for effects. Field names come from the diagnostic's own strings (IMP_MS_SEL, maintain2 at bit 11, optimize_ms at 13:12, a 2-bit field); the firmware writes mask all ones, AND, optimisation 3 with a multisample buffer, except 0 for the 12-bit-colour, 8-sample case | S15, S37, S41 |
| frame-buffer bank layout with a multisample buffer | `arm_buffer_config` lays banks in order: bank 0 (overlay level base; main base = window address shift + 1), colour (k banks, or (3k+1)/2 when the RGB size word is 12 or above and not 16; k = 1 single, 2 double, 3 single stereo, 4 double stereo as coded), depth (1; with n samples n/2 for 16-bit depth, 3n/4 otherwise), stencil (only above 1 bit: n/4, minimum 1), multisample colour (3n/4, or 3n/2 for the 12-bit class), accumulation, auxiliary. Bases go into the image-processor bank-address word: colour 5:0, multisample 11:6, stencil 18:13, depth 24:19, accumulation 30:25; bit 12 is not written. Per-sample sizes read as 24-bit colour, 16- or 24-bit depth and 8-bit stencil in 32-bit-per-pixel banks (unit inferred). The diagnostic's expected word 0x1818a181 for RGBA12, 4 samples, 16-bit depth and 8-bit stencil reproduces exactly | established (rule, fields); unit inferred | S37 (`arm1.u` 0x0c0131a0), S15, S41, S42 |
| optimisation field under blend, logic op, colour mask and masked clear | with a multisample buffer present, blend enable, the logic-op enable and a partial colour mask write optimisation 2 to the multisample control word, and the matching disables write 3 (unless the colour-mask flag says otherwise); why the hardware needs it is not read | values established; meaning inferred | S37 (`arm1.u` 0x0c0158f8, 0x0c015984, 0x0c012c3c) |
| clear with a multisample buffer | `arm_clear` has no multisample branch: the same operation word (0x400 colour, 0x800 depth, 0x1000 stencil, 0x2000 accumulation) goes to register 0x1c02 either way. A clear with a write mask (`masked_clear`) with a multisample buffer first writes the multisample control word with mask all ones, AND, optimisation 2, then restores it from the shadow. Which sample banks a clear reaches is not visible in the firmware | established (firmware); hardware effect unknown | S37 (`arm1.u` 0x0c03bb60, 0x0c03b188) |
| depth clear word with a multisample buffer | for depth other than 32-bit the clear value (register 0x1c09) is a 4-bit zero count in 31:28, then 12 mantissa bits in 27:16 and 8 bits in 7:0 with 0xf000 set when the sample count is non-zero, or 11 bits in 27:17 and 8 bits in 15:8 when it is zero | established | S37 (`arm1.u` 0x0c01465c) |
| enables | three capabilities, public numbers 0x809d multisample, 0x809e alpha-to-mask and 0x809f alpha-to-one, plus 0x80a0 sample mask, go through the generic enable and disable tokens (0x024, 0x025). That all four lie in the handled range 0x8010-0x81c7 is established; which table slot is which capability is not recorded | numbers and range inferred | S36, S37 |
| multisample enable | sets the enable byte; if the configuration has multisample it re-derives polygon, line and point drawing, writes the primitive sampling word, then writes the alpha-to-mask enables with bit 0 from the alpha-to-mask byte and bit 2 from the alpha-to-one byte. Disable clears the byte and, with multisample configured, re-derives drawing and writes zero to the primitive sampling word and the alpha-to-mask enables | established | S37 |
| alpha-to-mask, alpha-to-one, sample-mask enables | each sets or clears its own byte and writes its one bit of the alpha-to-mask enable word: bit 0 alpha-to-mask, bit 1 sample mask, bit 2 alpha-to-one | established for the writes; bit names inferred | S37 |
| default | after a configuration the enable byte is 1 even when the count is 0, so multisample reads enabled with no buffer | established | S37 |
| values the primitive sampling word takes per primitive class | multisample enable writes bits 17:16 = 1 (disable 0). Polygons: bits 3:2 always 1; bits 15:14 = 1 with multisample enabled and a buffer, else 2 with polygon smoothing, else 0. Lines: with smoothing bits 1:0 = 1, 9:8 = 0, 13:12 = 2; without smoothing but with multisample bits 1:0 = 2, 9:8 = 1, 13:12 = 0; otherwise nothing is written. Points write no field (they pick a handler). The diagnostic's field names settle the classes: bits 3:2 TMASK and 15:14 TSAMPLE (polygons), 1:0 LMASK, 9:8 SLMASK and 13:12 LSAMPLE (lines), 17:16 XSAMPLE (multisample enable); PSAMPLE (11:10) is never written | values and class names established | S37 (`arm1.u` 0x0c015e8c, 0x0c016024, 0x0c016240, 0x0c015674), S12, S47 |

**Sample pattern (token 0x117, one word).** The client sends the enumerant unchecked, immediately and in display lists.

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| word | pattern enumerant 0x80a1-0x80a7: one-pass (0x80a1), two-pass 0 and 1 (0x80a2, 0x80a3), four-pass 0-3 (0x80a4-0x80a7). The processor records invalid-enumerant for any other value | numbers established; pass names inferred | S36, S37 |
| effect | stores the enumerant, picks a pair of 24-bit location words by pattern and by sample count and writes them to the two sample-location registers (0x3be0, 0x3be1), then sends the pattern number to the engines, which select their multisample point tables | established | S37 |
| location word layout | sample n of four in bits 6n+2:6n (x) and 6n+5:6n+3 (y); the first register holds samples 0-3, the second samples 4-7 | established | S15, S37 |
| first-power-on locations | the pixel-generator set-up writes 0x007f6280 to the first location register, samples 0-3 at (0,0) (2,1) (6,6) (7,3) (the diagnostic uses 0xc8b640: (0,0) (1,3) (3,1) (2,6)); the first configuration replaces them with pattern 0x80a1 | established | S12, S37 |
| pattern 0x80a1, 4 samples | words 0xd94880 twice: (0,0) (2,4) (4,2) (6,6) | words established; positions inferred (layout above) | S37 |
| pattern 0x80a2, 4 samples | words 0xf92940 twice: (0,0) (5,4) (2,2) (6,7) | words established; positions inferred | S37 |
| pattern 0x80a3, 4 samples | words 0xb19f80 twice: (0,0) (6,7) (1,3) (4,5) | words established; positions inferred | S37 |
| pattern 0x80a4, 4 samples | words 0x4eaf40 twice: (0,0) (5,7) (2,5) (3,2) | words established; positions inferred | S37 |
| pattern 0x80a5, 4 samples | words 0x793a40 twice: (0,0) (1,5) (3,2) (6,3) | words established; positions inferred | S37 |
| pattern 0x80a6, 4 samples | words 0xaddc80 twice: (0,0) (2,6) (5,3) (3,5) | words established; positions inferred | S37 |
| pattern 0x80a7, 4 samples | words 0xdad6c0 twice: (0,0) (3,3) (5,5) (6,6) | words established; positions inferred | S37 |
| pattern 0x80a1, 8 samples | words 0x655f80, 0xb0b9f2: (0,0) (6,7) (5,2) (1,3); (2,6) (7,4) (3,1) (4,5) | words established; positions inferred | S37 |
| pattern 0x80a2, 8 samples | words 0xf77380, 0x913a99: (0,0) (6,1) (7,6) (5,7); (1,3) (2,5) (3,2) (4,4) | words established; positions inferred | S37 |
| pattern 0x80a3, 8 samples | words 0xf32840, 0xad774e: (0,0) (1,4) (2,6) (4,7); (6,1) (5,3) (7,2) (3,5) | words established; positions inferred | S37 |
| pattern 0x80a4, 8 samples | words 0x2d1fc0, 0x8b476e: (0,0) (7,7) (1,2) (3,1); (6,5) (5,3) (4,6) (2,4) | words established; positions inferred | S37 |
| pattern 0x80a5, 8 samples | words 0x8ab240, 0x7fe535: (0,0) (1,1) (3,5) (2,4); (5,6) (4,2) (6,7) (7,3) | words established; positions inferred | S37 |
| pattern 0x80a6, 8 samples | words 0x3b3e40, 0xb6251f: (0,0) (1,7) (3,6) (6,1); (7,3) (4,2) (2,4) (5,5) | words established; positions inferred | S37 |
| pattern 0x80a7, 8 samples | words 0x5ede40, 0x2e27b4: (0,0) (1,7) (5,5) (7,2); (4,6) (6,3) (2,4) (3,1) | words established; positions inferred | S37 |
| whether the sample locations are positions from a pixel corner or centre | the table gives eighths from an origin the readings do not fix | unknown | S15 |
| multisample point tables | the engines hold packed per-pattern point-coverage data (0x15e00 bytes, two sets of seven tables) loaded at start-up in chunks of 256 words; a pattern change selects a table. The data layout is not decoded. A second routine that would compute tables from the pattern words is never called | selection established; layout unknown | S37 |

**Sample mask (token 0x118, two words).** The client sends it in immediate mode and in display lists.

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| words | word 0 the mask value as a float, clamped by the client to 0.0-1.0 (negative to 0.0, above 1.0 to 1.0); word 1 the invert flag in its low byte | established | S36, S37 |
| effect | stores value and flag; converts the float to an index 0 to 32 from its exponent and mantissa; reads a 32-bit coverage word from the 4-sample table (count shifted right by 3 is 0) or the 8-sample table; complements it when the invert flag is set; writes it to the sample-mask register with an all-ones write mask. The exact rounding of the float-to-index step is not recorded | established except the rounding | S37 |
| restore after an attribute pop | the restore routine rebuilds the word with a shift of 28 where the handler uses 26, so a restored 1.0 selects entry 8 rather than 32; whether that is a firmware fault or an intended difference is not settled | inferred | S37 |
| 4-sample coverage words, index n | 0 for n = 0; for n = 1-2 0x11, 3-4 0x11000011, 5-6 0x11001111, 7-8 0x11111111, 9-10 0x11111133, 11-12 0x33111133, 13-14 0x33113333, 15-16 0x33333333, 17-18 0x33333377, 19-20 0x77333377, 21-22 0x77337777, 23-24 0x77777777, 25-26 0x777777ff, 27-28 0xff7777ff, 29-30 0xff77ffff, 31-32 0xffffffff (one nibble per pixel, eight pixels) | values established; layout inferred | S37 |
| 8-sample coverage words, index n = 0-32 | 0x00000000, 0x00000001, 0x01000001, 0x01000101, 0x01010101, 0x01010111, 0x11010111, 0x11011111, 0x11111111, 0x11111113, 0x13111113, 0x13111313, 0x13131313, 0x13131333, 0x33131333, 0x33133333, 0x33333333, 0x33333337, 0x37333337, 0x37333737, 0x37373737, 0x37373777, 0x77373777, 0x77377777, 0x77777777, 0x7777777f, 0x7f77777f, 0x7f777f7f, 0x7f7f7f7f, 0x7f7f7fff, 0xff7f7fff, 0xff7fffff, 0xffffffff (one byte per pixel, four pixels) | values established; layout inferred | S37 |
| how coverage words combine | the word written to 0x140b is applied per sample with the sample-mask enable (0x1408 bit 1); the vendor diagnostic exercises seven coverage words and each one's complement, matching the 4-sample table entry for entry, so the invert flag is a plain complement (established). That the pixel generator ANDs the word with the primitive's own sample coverage is inferred from the table shape, the test pairing and the public definition; the image-processor mask in 10:3 is always sent all ones with the AND operation. The sharing of index 0x140b with the alpha-to-mask fade table and the alpha-to-mask coverage remain unknown | complement and values established; AND inferred; rest unknown | S12, S15, S37, S41 |
| alpha-to-mask coverage | how the fade table is indexed and what coverage alpha-to-mask and alpha-to-one produce. The diagnostic names registers 0x1409 and 0x140a TFP_A2M_LUT0 and TFP_A2M_LUT1; no firmware or engine routine writes them, only the diagnostic does (its vector file's multisample-alpha block carries 0x13110100 and 0x00ff7f773733, read as nine 8-bit entries 0x00, 0x01, 0x11, 0x13, 0x33, 0x37, 0x77, 0x7f, 0xff with 0 to 8 bits set: coverage by alpha level). The pipe in normal operation therefore relies on the hardware's reset contents, which are not in software | unknown (newly explained) | S37, S41, S47 |

**Items with no sender and open items.**

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| sample-buffer tag call | the client's immediate and list forms return at once; nothing reaches the pipe | unknown (no sender) | S36 |
| multisample point-table builder | a firmware routine that would build the point tables from the pattern words exists and nothing in the image calls it | unknown (no sender) | S37 |
| counts other than 4 and 8; the sample-buffer and sample-count queries; and visual selection by sample count | no reading establishes them | unknown | S36 |
| reads and copies with a multisample buffer | the pipe has no resolve step: read, copy and draw-buffer selection use only colour and auxiliary banks and their paths never read the sample count; the read configuration reserves the same sample banks so positions agree. The published design says the per-pixel colour is formed from the samples as they are accumulated, so colour reads and copies most likely take the maintained per-pixel colour (inferred); what a depth or stencil read returns, and how accumulation and copy with blending use samples, is not readable from software | established (the firmware has none); hardware inferred or unknown | S37 (`arm1.u` 0x0c013650, 0x0c01392c, 0x0c02c3ec, 0x0c02bb34), S42 |
| multisample lines, points and polygons | the rasterisation rules (tie rules, multisampled line and polygon coverage) beyond the three sampling selects | unknown | S37 |


## 8. Raster-bus register writes and index spaces

| Item | Role | Layout / values | Grade | Evidence |
|---|---|---|---|---|
| one register write | four stores: descriptor, then bit-mask word, address word, value | descriptor in 4.2 | established | S12 |
| address word | high half = 0x110 + i (i = shadow word of the register), low half = register index | (0x110 + i) << 16 / register | established | S12 |
| first word (mask) | bit mask of the write: the bits of the value that change. Bits outside the mask keep their previous contents in the register's shadow slot and in the value the raster chips see. Sent to raster-bus index 7 (BEF_REGSHADOW_BMASK in the diagnostic's table) | 0xffffffff for a whole register; field-sized masks for partial writes (about a hundred firmware sites rely on this, for example the blend enable under mask 0x21 leaving the blend factors written earlier under 0x0ffff000, and the stencil and depth handlers writing disjoint masks of one register) | established (merge behaviour); inferred (the chip that performs the merge) | S12, S47 |
| first word 0, value 0 | a write that changes no bits. The pixel-transfer tail (`CommonPixEnd`, `arm1.u` 0x0c026654-0x0c026770) sends ten of them, to 0x3fcc, 0x3fcd, 0x3fce, 0x3fd3, 0x101f, 0x3fd4, 0x3fd5, 0x1500, 0x0c04 and 0x1000, after a transfer whose set-up programmed the same registers by direct raster-bus writes that bypass the shadow. Read as a restore that re-sends the shadow's current value to the chip; not stated anywhere, but the alternative (a no-op) would make the code pointless | descriptor 0x58404800 | inferred | S47 |
| bus word, host-diagnostic form | register index in bits 62:48, value in bits 47:0 | 64 bits | established | S12 |
| bus word, vector-file form | top 16 bits register index, next 16 bits the index repeated (or a second register), low 32 bits value | 64 bits | established | S12 |
| bus mode codes | mode 1 travels as 0, mode 3 as 4, mode 2 as 6 | carried in the low bits of a store address | established | S18 |
| mode 3 / mode 2 pairing | mode 3 closes a vertex's first 64-bit word, mode 2 its second | - | inferred | S18 |
| 0x0800-0x0810 | pixel-generator registers | index block | established | S15 |
| 0x1400-0x1414, 0x1500 | texture-filter registers | index block | established | S15 |
| 0x1c00-0x1c15 | image-processor registers | index block | established | S15 |
| 0x3be0-0x3be1, 0x3fc2-0x3fd8, 0x3ff8 | shared generator registers | index block | established | S15 |
| 0x0400-0x0477 | board-side host-interface registers on the raster bus (not in the register index space) | 0x440 output channel, 0x441 pack mode, 0x450-0x456 output DMA, 0x460-0x464 second output DMA | inferred | S18, S47 |
| 0x0476, 0x0477 | reply-word port and its clear register. The read-data start routine writes 0x477 = 0, then 0x476 = 0; the finish routine writes 0x477 = 0, then 0x476 = 1 then 0, then clears 0x477; the configuration and read-word routines write a count to 0x476 and then one register write per reply word. The diagnostic's vector file writes 0x477 with a value whose bits 47:32 are a raster register number (0x1408 or 0x3fc3). Read from call order only; nothing names either register | values only | unknown | S18, S47 |
| 0x0420 | sequence-number register reflected in the host sequence register | - | inferred | S17 |
| texel / pixel bus format codes 0x0-0xf, 0x12-0x17 | bus format of a 64-bit data word (twelve pixel forms, six texel-only forms) | table in the pixel-data section | established | S18 |
| format codes 0xd, 0x10, 0x11, 0x18, 0x19 | no output module | - | established | S18 |


### 8.1 Window-id clip test register (0x1c06)

| Bits | Role | Values | Grade | Evidence |
|---|---|---|---|---|
| 0 | test enable | 0 off (start-up) | established | S15, S14 |
| 12:1 | reference window id (12 bits) | see section 10 | established | S15, S14 |
| 24:13 | mask (12 bits) | see section 10 | established | S15, S14 |
| write mask sent with the register | shadow bit mask | 0x01ffffff (bits 24:0) | established | S14 |
| address word | shadow slot 39 | 0x01371c06 | established | S12, S14 |


### 8.2 The 89-word register shadow

The back-end chip keeps a shadow of 89 raster registers. A register write names its shadow word in the high half of the address word. The start-up value is the value in the firmware's initial shadow table, before the raster initialisers run; those initialisers then write the values listed below, and the diagnostic's vector file replays the same writes after its own reset. Roles come from the diagnostic's field table. A row is established where a firmware or engine write whose bit mask equals the union of the diagnostic's fields (or a value the firmware computes from a GL state parameter, or a default that decodes to the GL default through the diagnostic's field and value names) agrees with the diagnostic's field boundaries, and inferred where only the diagnostic's names support the role. The pairing of shadow word and register index is established.

Values after the raster initialisers (whole-register writes from the point, texture-generator, texture-filter and image-processor initialisers, also seen in the vector file's second initialisation sequence; established): 0x0800 = 1; 0x080f = 0x8008 (point width and height 8 each, against 0x100 each at start-up); 0x0806 = 0x01380156; 0x3be0 = 0x007f6280; 0x3be1 = 0x008fc569; 0x3fd3 = 0x0e (texture generator off, against 0x0f); 0x140e = 0x4000 (against 0x8000); 0x1c00 = 0x3c6 (against 0x3c2); 0x1c03 = 0x7f8 (against 0x17f8); 0x1c07 = 6 (rewritten to the GL default by the depth initialiser, row 40); 0x1c08 = 0x12c00; 0x1c0b = 0x0c20a281 (against 0x32212301). The X server's own initialiser writes another set (0x3fd3 = 0xa, 0x1c02 = 0x11, 0x1c0d = 7). Registers written by an engine routine without a shadow slot also exist (clear colour 0x1c12 and 0x1c13 in the clear routines; the accumulation operation 0x1c0e), which is why 0x1c0e and 0x1c10-0x1c13 are absent from the 89 words. Evidence S47 unless a row names the engine listing (S48).

| Shadow word | Register index | Start-up value | Role | Grade | Evidence |
|---|---|---|---|---|---|
| 0 | 0x0441 | 0x0 | pack mode for host read-back (7 bits, built from four fields: bits 1:0, bit 2, bits 5:3, bit 6; written under mask 0x7f by the packer set-up and the pixel-transfer end routines) | established | S12, S15, S47 |
| 1 | 0x0455 | 0x0 | output DMA line length | inferred | S12, S15 |
| 2 | 0x0456 | 0x0 | output DMA stride | inferred | S12, S15 |
| 3 | 0x3fc2 | 0x3fff8000 | scissor x range, in eighth-pixel units (min 14:0, max 29:15; the load places x0 << 3 at bit 0 and x1 << 18 at bit 15) | established | S12, S15, S47, S48 |
| 4 | 0x3fc3 | 0x3fff8000 | scissor y range, in eighth-pixel units (min 14:0, max 29:15) | established | S12, S15, S47, S48 |
| 5 | 0x3fc4 | 0x0 | rectangle set-up word 0 (start x) | inferred | S12, S15 |
| 6 | 0x3fc5 | 0x0 | rectangle set-up word 1 (current x) | inferred | S12, S15 |
| 7 | 0x3fc6 | 0x0 | rectangle set-up word 2 (y) | inferred | S12, S15 |
| 8 | 0x3fc7 | 0x0 | rectangle set-up word 3 (row step of start x) | inferred | S12, S15 |
| 9 | 0x3fc8 | 0x0 | rectangle set-up word 4 (x step) | inferred | S12, S15 |
| 10 | 0x3fc9 | 0x0 | rectangle set-up word 5 (y step) | inferred | S12, S15 |
| 11 | 0x3fca | 0x100000 | rectangle set-up word 6 (depth slope in x) | inferred | S12, S15 |
| 12 | 0x3fcb | 0x100000 | rectangle set-up word 7 (depth slope in y) | inferred | S12, S15 |
| 13 | 0x3fcc | 0xc010010 | draw-rectangle word 0 (J 11:0, I 23:12, scan direction 25:24; the diagnostic also lists zoom enable bit 26, pixel-cache enable bit 27 and pixel interlace bit 28, and the convolution-filter handlers write bit 27 alone) | inferred | S12, S15 |
| 14 | 0x3fcd | 0x10 | draw-rectangle word 1 (width 11:0, start x 23:12) | inferred | S12, S15 |
| 15 | 0x3fce | 0x0 | draw-rectangle word 2 (current y 11:0, x 23:12) | inferred | S12, S15 |
| 16 | 0x3fcf | 0x10 | generator buffer size: points | inferred | S12, S15 |
| 17 | 0x3fd0 | 0x10 | generator buffer size: lines | inferred | S12, S15 |
| 18 | 0x3fd1 | 0xf | generator buffer size: triangles | inferred | S12, S15 |
| 19 | 0x3fd2 | 0xf00f | image buffer size (width 11:0, height 23:12) | inferred | S12, S15 |
| 20 | 0x3fd3 | 0xf | generator enables (texture, scan conversion, depth unit, draw pixels) | inferred | S12, S15 |
| 21 | 0x3be0 | 0xc8b640 | multisample sample locations 0-3 (six 3-bit fields: X0 2:0, Y0 5:3, X1 8:6 ... Y3 23:21) | established | S12, S15, S47 |
| 22 | 0x3be1 | 0x916f6f | multisample sample locations 4-7 (the same six-field layout for samples 4-7; the 4-sample pattern words are identical in both registers) | established | S12, S15, S47 |
| 23 | 0x0800 | 0x0 | pixel-generator mode (flat shading, direction mask source) | inferred | S12, S15 |
| 24 | 0x080f | 0x100100 | point size (width 11:0, height 23:12) | inferred | S12, S15 |
| 25 | 0x0804 | 0x0 | primitive bloat | inferred | S12, S15 |
| 26 | 0x0805 | 0x0 | primitive depth offset | inferred | S12, S15 |
| 27 | 0x0806 | 0x55 | primitive draw selectors (ten fields: LMASK 1:0, TMASK 3:2, SPMASK 5:4, SXMASK 7:6, SLMASK 9:8, PSAMPLE 11:10, LSAMPLE 13:12, TSAMPLE 15:14, XSAMPLE 17:16, LRULES 25:18; the firmware never writes PSAMPLE) | established | S12, S15, S47 |
| 28 | 0x0807 | 0x0 | window offset x (written under mask 0x7ff) | established | S12, S15, S14 |
| 29 | 0x0808 | 0x0 | window offset y (written under mask 0x7ff) | established | S12, S15, S14 |
| 30 | 0x0809 | 0xffffffff | multisample coverage mask | inferred | S12, S15 |
| 31 | 0x080a | 0x0 | polygon stipple control (enable field bits 1:0, written under mask 3 by the stipple load; offset) | established | S12, S15, S47 |
| 32 | 0x080b | 0x55 | polygon stipple pattern byte 0 | inferred | S12, S15 |
| 33 | 0x080c | 0x55 | polygon stipple pattern byte 1 | inferred | S12, S15 |
| 34 | 0x080d | 0xff | polygon stipple repeat lengths (x 3:0, y 7:4; written under masks 0xf and 0xf0, and the stipple load writes mask 0xff) | established | S12, S15, S47 |
| 35 | 0x0810 | 0x0 | primitive rule unit mode (none or line; the line resolver writes mask 1, value 1) | established | S12, S15, S47 |
| 36 | 0x1c00 | 0x3c2 | frame-buffer configuration: pixel size 1:0, colour format 5:2, write enables 9:6 (bit 6 red, 7 green, 8 blue, 9 alpha), per-bit-mask flag 10, read format 13:11. Written under 0x3c0 (colour mask), 0x7fc (buffer configuration) and 0x3800 (accumulation read format). Colour format names are the diagnostic's (RGB10 0, RGBA12 1, LA16 2, CI16 3, ...); the image-processor initialiser picks 1, and the X load writes code 2 | established | S12, S15, S47 |
| 37 | 0x1c02 | 0x1 | image-processor operation: draw buffer 3:0, packet kind 5:4 (2 = accumulate), clear repeat 8:6, clear flags 13:9 (bit 13 accumulate clear, bit 11 depth word clear, bit 9 overlay clear), read-back format 17:14, read base 23:18, calligraphic enable bit 24. Bits 25-31 (double depth, depth B, activate-only, image-unit FIFO, wafer probe, byte mask) carry manufacturing names, are never written by any firmware or engine routine and stay unknown | established | S12, S15, S47 |
| 38 | 0x1c03 | 0x17f8 | multisample control: enable 0, samples 1, mask operation 2, mask 10:3, maintain-two 11, optimise 13:12 (written under 0x3000 by the blend and colour logic-op enables and the colour mask, under 0x3fff by the multisample initialiser; the initial optimise value 1 has no name in the diagnostic's table) | established | S12, S15, S47 |
| 39 | 0x1c06 | 0x0 | window-id clip test (enable, reference, mask) | inferred | S12, S15 |
| 40 | 0x1c07 | 0x0 | stencil set-up: enable 0, size 1, function 4:2 (the low three bits of the GL comparison: 0 never, 1 less, 2 equal, 3 less-or-equal, 4 greater, 5 not-equal, 6 greater-or-equal, 7 always), reference 12:5, compare mask 20:13, write mask 28:21. The depth initialiser's 0x1fffe01c decodes to the GL defaults | established | S12, S15, S47 |
| 41 | 0x1c08 | 0x0 | stencil operations 2:0 (fail), 5:3 (depth fail), 8:6 (depth pass), codes 0 keep, 1 replace, 2 increment, 3 decrement, 4 zero, 5 invert; depth test enable 9; depth size 11:10; depth compress 12; depth function 15:13 (the comparison's low three bits); depth write mask 16. The depth initialiser's 0x12c00 is the GL default (function less, write mask on, size code 3) | established | S12, S15, S47 |
| 42 | 0x1c09 | 0x0 | depth clear value (compressed depth format) | established | S12, S15 |
| 43 | 0x1c0b | 0x32212301 | frame-buffer base addresses (six 6-bit fields; the draw-buffer and colour-pop handlers write only the colour base under mask 0x3f, the clip validation and buffer configuration write the whole word) | established | S12, S15, S47 |
| 44 | 0x1c0d | 0x11012 | blend and logic operation: bit 0 logic-op enable; bits 4:1 logic-op code (the low nibble of the GL logic-op enumerant, 3 = copy); bit 5 blend enable (when the stored equation is the logic-op value the enable goes to bit 0 instead); bits 8:6 colour equation and 11:9 alpha equation (0 add, 1 subtract, 2 reverse subtract, 3 minimum, 7 maximum; minimum and maximum force every factor to 1); factor codes source colour 15:12, source alpha 19:16, destination colour 23:20, destination alpha 27:24 (0 zero, 1 one, 2 destination colour, 3 one minus destination colour, 4 source colour, 5 one minus source colour, 6 constant colour, 7 one minus constant colour, 8 destination alpha, 9 one minus destination alpha, 0xa source alpha, 0xb one minus source alpha, 0xc constant alpha, 0xd one minus constant alpha, 0xe source-alpha-saturate; the alpha-source field uses 1 instead of 0xe); bit 28 precision and bit 29 speed-up (set by the image-processor initialiser, no other writer). The colour initialiser's 0x11006 decodes to the GL defaults | established | S12, S15, S47 |
| 45 | 0x1c14 | 0x0 | per-bit colour write mask, red 11:0 and green 23:12; open discrepancy: the firmware and the X load write this slot as the plane write mask, but the engine's blend-constant routine addresses the same two slots with four 12-bit components scaled by 4096 while the diagnostic names 0x1c10 and 0x1c11 as the user colour and nothing writes those. Either they truly share, or the routine's extra format words retarget the data; not resolved | inferred | S12, S15, S47, S48 |
| 46 | 0x1c15 | 0x0 | per-bit colour write mask, blue 11:0 and alpha 23:12; open discrepancy: the firmware and the X load write this slot as the plane write mask, but the engine's blend-constant routine addresses the same two slots with four 12-bit components scaled by 4096 while the diagnostic names 0x1c10 and 0x1c11 as the user colour and nothing writes those. Either they truly share, or the routine's extra format words retarget the data; not resolved | inferred | S12, S15, S47, S48 |
| 47 | 0x3ff8 | 0x0 | bus pixel-format code (5 bits, mask 0x1f; named by the diagnostic: RGBA4 or bitmap 0, RGB5A1 1, R5G6B5 2, LA8 3, L16 4, I16 5, S16 6, ZC16 7, RGBA8 8, RGB10A2 9, LA16 0xa, Z32 0xb, RGBA16 0x10, RGBA12 0x11; the firmware writes 0x11 for read-back and texture read-back) | established | S12, S15, S47 |
| 48 | 0x7fc5 | 0x0 | texture-load mode | established | S12, S15, S47 |
| 49 | 0x7fc3 | 0x0 | texture-load s and r start | established | S12, S15, S47 |
| 50 | 0x7fc2 | 0x0 | texture-load s and t start | established | S12, S15, S47 |
| 51 | 0x7fc1 | 0x0 | texture-load size (s, t, r) | inferred | S12, S15 |
| 52 | 0x7fc4 | 0x0 | texture-load s and t end | inferred | S12, S15 |
| 53 | 0x5001 | 0x0 | texture-load global offset (21 bits + 3 high bits) | established | S12, S15, S47 |
| 54 | 0x101a | 0x0 | texture draw global offset | established | S12, S15, S47 |
| 55 | 0x1000 | 0x0 | texture memory geometry (s and t address bits) | established | S12, S15, S47 |
| 56 | 0x3fd5 | 0x0 | bound texture size and address control | inferred | S12, S15 |
| 57 | 0x3fd4 | 0x30 | texture mode (dimension, filters, shadow compare) | established | S12, S15, S47 |
| 58 | 0x0c04 | 0x0 | mip-map level range (10 bits each) | established | S12, S15, S47 |
| 59 | 0x0c05 | 0x0 | level-of-detail scale s and t | established | S12, S15, S47 |
| 60 | 0x0c06 | 0x0 | level-of-detail scale r | established | S12, S15, S47 |
| 61 | 0x3fd6 | 0x0 | detail-texture and clip-map sizes | inferred | S12, S15 |
| 62 | 0x1019 | 0x0 | detail-map location in texture memory | inferred | S12, S15 |
| 63 | 0x13d5 | 0x0 | texture-memory copy of texture size | inferred | S12, S15 |
| 64 | 0x1020 | 0x0 | clip-map s and t offsets | inferred | S12, S15 |
| 65 | 0x1021 | 0x0 | clip-map break point | inferred | S12, S15 |
| 66 | 0x3fd7 | 0x0 | clip-map centre s | inferred | S12, S15 |
| 67 | 0x3fd8 | 0x0 | clip-map centre t | inferred | S12, S15 |
| 68 | 0x1850 | 0x0 | texel scale-and-bias enables | inferred | S12, S15 |
| 69 | 0x1851 | 0x0 | texel scale (four bytes) | inferred | S12, S15 |
| 70 | 0x1852 | 0x0 | texel bias (four bytes) | inferred | S12, S15 |
| 71 | 0x1853 | 0x0 | texture colour table control | inferred | S12, S15 |
| 72 | 0x101e | 0x0 | shadow-texture ambient level | inferred | S12, S15 |
| 73 | 0x101f | 0x0 | texture-memory redundancy bit | inferred | S12, S15 |
| 74 | 0x0c02 | 0x0 | texture-generator misc bits | inferred | S12, S15 |
| 75 | 0x1407 | 0x7000 | alpha test: reference 11:0, comparison 14:12, enable bit 15 (the alpha-function routine writes 0x7fff, the alpha-test routine bit 15; the start-up 0x7000 is compare always with the test off) | established | S12, S15, S48 |
| 76 | 0x1500 | 0x0 | texturing enable | inferred | S12, S15 |
| 77 | 0x1401 | 0x22 | texture environment functions | inferred | S12, S15 |
| 78 | 0x1402 | 0x0 | texture environment colour green and red | inferred | S12, S15 |
| 79 | 0x1413 | 0x0 | texture environment colour alpha and blue | inferred | S12, S15 |
| 80 | 0x140e | 0x8000 | texture-filter two-field word (12-bit and 5-bit fields) | inferred | S12, S15 |
| 81 | 0x140b | 0x0 | sample-mask coverage word (named FADE_MASK_LUT in the diagnostic; written whole by the sample-mask handler, all ones from the multisample initialiser) | established | S12, S15, S47 |
| 82 | 0x1403 | 0x80000 | fog control (modes, table address) | inferred | S12, S15 |
| 83 | 0x1404 | 0x0 | fog colour green and red | inferred | S12, S15 |
| 84 | 0x1414 | 0x0 | fog colour blue | inferred | S12, S15 |
| 85 | 0x1406 | 0x0 | fog depth offset | inferred | S12, S15 |
| 86 | 0x1410 | 0x0 | output luminance-alpha flag | inferred | S12, S15 |
| 87 | 0x140f | 0x0 | input luminance-alpha flag | inferred | S12, S15 |
| 88 | 0x1408 | 0x0 | alpha-to-mask enables (bit 0 alpha-to-mask, bit 1 sample mask, bit 2 alpha-to-one; the diagnostic's names A2M_EN, FADE_MASK_EN, A2ONE_EN) | established | S12, S15, S47 |


## 9. Host register window

Offsets from the register window base (host address 0x800000 + offset).

| Offset | Role | Grade | Evidence |
|---|---|---|---|
| 0x210, 0x218 | command FIFO write ports (high and low word of a 64-bit store) | established | S16 |
| 0x228 | interrupt acknowledge | established | S16 |
| 0x240 | ARM mailbox (event word per interrupt) | established | S16 |
| 0x248 | sequence-number readback (video interrupt handler) | established | S17 |
| 0x250-0x298 | output DMA registers (channel, pack mode, page number, offset, length, total, overrun, line length, stride, flush) | inferred | S18, S16 |
| 0x2a0-0x2c0 | second output DMA channel registers | inferred | S18 |
| 0x300 | reset: bit 0 holds the host interface in reset, bit 1 lets the ARM run | established | S16 |
| 0x308, 0x310 | ARM memory access control and status | inferred | S16 |
| 0x3c0, 0x3d0 | display-bus address and data ports | established | S13, S16 |
| 0xc00108 | kernel kick sequence: 0x30000 before the first token, 0x10000 before payload and later tokens, 0 at the end | established | S17 |
| ARM 0x200010-0x200020 | input DMA: page number, page offset, byte count, start, mode | established | S16 |
| ARM 0x200030-0x200040 | list DMA: pipe-memory address (bit 26 = write direction), byte count, start, status | established | S16 |
| ARM 0x200058 | pass-through count: (n - 1) / 0xc000000 moves n words from the FIFO to the engines | established | S16 |
| video interrupt bits | bit 3 per-frame video interrupt, bit 9 video-option (genlock) interrupt | established | S16 |

## 10. Window-placement word 9 and the window-id test

The window and clip set-up request (section 7.7) carries the window id as its word 9 and a test-enable flag as word 10. The display microcode encodes them into one raster register, index 0x1c06 (section 8.1). The kernel builds the request from the drawable's clip record: word 9 is the record word at offset 40 and word 10 the word at offset 44 ([S19](#1-how-to-read-this-table)). The encoder is read from the display microcode's window-set-up routine; its field table is the diagnostic's own table for the register.

### 10.1 What the microcode does with word 9

Word 9 is held as a full 32-bit signed value (the microcode keeps all 32 bits and compares them signed).

| Word 9 (signed 32-bit) | Reference id | Mask | Grade | Evidence |
|---|---|---|---|---|
| 0 to 0x3e | word 9 | 0x3f | established | S14 |
| 0x3f | 0x800 | 0x800 | established | S14 |
| 0x40 to 0x5f | (word 9 - 0x40) << 6 | 0x7c0 | established | S14 |
| -1 (all ones), silently | 0x3f | 0x3f | established | S14 |
| any other value (diagnostic printed) | 0x3f | 0x3f | established | S14 |
| register layout: bit 0 enable, 12:1 reference, 24:13 mask | section 8.1 | section 8.1 | established | S14, S15 |

The register value is `(word 10 != 0) | ((id << 1) & 0x1ffe) | ((mask << 13) & 0x1ffe000)`. It goes out through the image-processor register-write descriptor (0x584fc800) with write mask 0x01ffffff and address word 0x01371c06. Worked values with the test enabled: word 9 = 0x0e gives 0x7e01d; 0x0f gives 0x7e01f; 0x44 gives 0xf80201; 0x3f gives 0x1001001.

### 10.2 The two answers

| Question | Answer | Grade | Evidence |
|---|---|---|---|
| Is "id in 1-12, mask in 13-24" counted from one (id 11:0, mask 23:12)? | No: the ranges are zero-based; bit 0 is the enable flag | established | S14, S15 |
| Do the recorded ids 0xe, 0xf, 0x44 select between the readings? | No: they are word-9 inputs; the register ids for 0xe and 0xf decode as 0xe and 0xf only under 12:1 | established | S14 |
| Is a set mask bit an id bit the test ignores? | Probably the opposite: a set bit is compared; pass when ((plane ^ id) & mask) == 0 | inferred | S14 |
| Hardware text for the comparison | none read | unknown | S14, S15 |
| Painted pixel id to compared plane value | the compared 12-bit value is the painted value v >> 2. The X server paints main id n as v = n << 2 (mask 0xfc) and overlay or popup group g as v = g << 8 (mask 0x1f00); the encoder's id and mask pairs are those values shifted right by 2 for both fields | inferred | S14, S44 |
| Popup compare against the painted pattern | word 9 = 0x3f compares bit 11 only (id 0x800, mask 0x800 = v bit 13), but the painter writes the popup as group field 31 (v = 0x1f00) and never sets v bit 13; whether hardware derives bit 11 from the group field is unread | unknown | S14, S44 |
| Is the special 0x3f the same as the all-ones word? | No: 0x3f gives id 0x800 / mask 0x800; all ones gives id 0x3f / mask 0x3f | established | S14 |
| Does id 0x3f / mask 0x3f own no pixel? | Yes, plausibly: the painter never writes 0x3f into the main field (main ids are at most 0x3e; overlay and popup paint only the group field) and refuses negative and 0x60-and-up ids | inferred | S14, S8, S44 |
| Command-grammar rule that all ones owns no pixel | not found in this repository; the painter's behaviour above stands in for it | unknown | S14, S44 |

**Answer 1, bit numbering: established, and the reading "counted from one" is wrong.** The trace's wording, id in bits 1-12 and mask in bits 13-24, is already a zero-based range: the enable flag occupies bit 0, the 12-bit reference id occupies 12:1 and the 12-bit mask 24:13. Two independent sources agree. The microcode shifts the id left by one under the mask 0x1ffe, shifts the mask left by 13 under 0x1ffe000 and ORs the enable flag into bit 0. The diagnostic's own field table for the register lists the enable at low bit 0 width 1, the reference at low bit 1 width 12 and the mask at low bit 13 (0xd) width 12. Reading the id as 11:0 and the mask as 23:12 would put the enable flag inside the id. The recorded ids do not discriminate between the readings, because 0xe, 0xf and 0x44 are word-9 inputs seen before the encoder: 0x0e and 0x0f encode to register values 0x7e01d and 0x7e01f, and decoding those as 12:1 returns 0xe and 0xf, while decoding them as 11:0 returns 0x1d and 0x1f; the overlay input 0x44 is in the masked-group range and encodes to reference 0x100 with mask 0x7c0, so a trace that shows 0x44 is showing the input word, not the register field.

**Answer 2a, polarity of a set mask bit: inferred.** Nothing read describes the comparison hardware, so the polarity is a reading from the encoder's own values. Ordinary ids 0-0x3e carry mask 0x3f, the six bits that hold the id, and the overlay group range 0x40-0x5f carries mask 0x7c0, the five bits that hold the group number. If a set bit were an id bit the test ignores, an ordinary window's mask 0x3f would ignore its whole id and every id 0-63 would pass for every ordinary window, which defeats a test whose job is to separate windows. So the strongest reading is the opposite of the one proposed: a set mask bit is a bit the test compares, and a fragment passes when `((plane ^ id) & mask) == 0`. The proposed formula `((plane ^ id) & ~mask) == 0` is the other polarity; it is disfavoured by the argument above but not excluded by any text. A second gap sits under both polarities: how an id painted into a pixel (section 7.6) becomes the 12-bit plane value that is compared is unread, so the pairing of an overlay's painted id with the group index in its mask cannot be checked.

**Answer 2b, the special 0x3f against the all-ones word: established that they are different.** Word 9 = 0x3f takes the special pair, id 0x800 with mask 0x800. Word 9 = all ones (-1) is negative, so it falls to the last case, where the microcode prints nothing for -1 (every other out-of-range value prints a bogus-id diagnostic) and then encodes it as an ordinary id 0x3f with mask 0x3f. So the all-ones word is not the special value; it becomes an ordinary id 0x3f. Whether that owns no pixel is inferred: under the compare polarity it passes only pixels whose low six id bits are all ones, which no main-plane window id (0-62) paints, and the popup's id 63 is sent as 0x3f and so takes the special pair rather than this one. This repository holds no text that states a command-grammar rule that an all-ones word owns no pixel, and the kernel's use of all ones for a missing id was not found in the kernel readings, so that rule is not confirmed here.

## 11. Counts and the unknown entries

Counts are of graded rows in the tables above, by the grade rule in section 1. They do not count the token map entries as separate rows from their role, and they are not a count of hardware facts.

| Section | Established | Inferred | Unknown | Total |
|---|---|---|---|---|
| 2. Processor-run tokens | 60 | 239 | 7 | 306 |
| 3. Routed tokens | 59 | 147 | 0 | 206 |
| 4. Map entry and descriptors | 25 | 7 | 1 | 33 |
| 6. Display-bus registers | 58 | 33 | 10 | 101 |
| 7. Field layouts | 221 | 131 | 74 | 426 |
| 8. Raster bus | 17 | 92 | 1 | 110 |
| 9. Host window | 11 | 3 | 0 | 14 |
| 5. Display requests | 93 | 0 | 0 | 93 |
| 10. Window id | 9 | 3 | 3 | 15 |
| **All** | **553** | **655** | **96** | **1304** |

The unknown rows, by section. Each says what a back end should do: model the access as observable and unimplemented rather than inventing behaviour.


**2. Processor-run tokens**

- 0x1fb: context FIFO synchronise
- 0x0e7: set the blend equation
- 0x013: texture-coordinate generation, double form
- 0x015: texture-coordinate generation, integer form
- 0x016: bind a texture by old-style binding
- 0x175: texture-load set-up, second form
- 0x1fe: kernel-private command (ignored)

**4. Map entry and descriptors**

- bits 8:6 of those commands: which register space each selects: register-space qualifier

**6. Display-bus registers**

- window offsets 0x3c8, 0x3d8: video-controller ready and auto-increment data ports (never used by the driver)
- which address bits pick the chip behind the port: chip-select decode
- 0x09: role not read: 0 at start-up, 2 after the diagnostic, and the window-created / destroyed notice (1 / 0)
- 0x0a: untouched by any code read
- 0x10: written 0 at start-up and nothing else
- 0x11a: not used by any code read
- 0x90: size register
- indexed 0x005, 0x006: written 0x88 and 0xe4 at start-up
- what each bit of the value 5 does: DAC cursor control bit meaning

**7. Field layouts**

- what the XMAP does with bits 2:1: luminance and grey handling in hardware
- 18: flag; set for one kind of map (address (map << 14) + 0x40000)
- what the XMAP does with bits 4:2: hardware use of the mode byte
- crosshair shape: arm lengths, thickness, extent (the XMAP generates it; no image exists in software)
- XMAP cursor colour block: which of words 256-259 the crosshair draws with
- colour-index index placement: which component lane holds the index and its bit offset in the stored bank word; what board mode 2 is
- overlay window to main window pairing: how the display generator uses the pair of id fields
- 15-bit RGB overlay transparency rule: transparent pixel test
- 16-plane luminance with overlay or id planes: composition
- the six masks the engine program applies to graphics-context load words 4-12: which mask goes with which word
- what the engine does with graphics-context load word 4 in its special register: role of that second destination
- which graphics-context word holds the image-rectangle mode field
- which graphics-context words the word-image and window-copy mode constants modify
- what pixel set-up words 3 and 6 mean to the engine and distributor
- pixel set-up transfer kinds other than 0 and 2, and output modules other than 4 and 5: behaviour
- pack mode of the returned words of an X pixel read: which host-interface value
- which named pixel format each index value of the X packing tables selects, what the table words mean in the loader-built format word, and the values of the three tables filled at run time (the file-resident numbers are recorded)
- texel-draw header: hardware use of word 8 (nonzero) and of words 8 and 11-15 beyond storing them
- texture-load set-up (token 0x173): the roles of words 2, 4 and 6-8
- level origin rule: where the border texels of a small bordered level sit (small-level origins are resolved as client-side replication)
- level addresses: the units of the global-offset registers 0x101a/0x5001; where mode-1 volume texels sit
- filter tables: which table type sharpening and detail use, and what the sampler does with them beyond the bind's reference
- texel formats: the physical order of a texel inside the memory chips (not reachable from software); the firmware rows the traced client never sends (codes 0x00-0x06)
- bind forms with no sender: bicubic (0x17a), 2D clip-map (0x1aa), old-style (0x016)
- bind contract: what the pipe keeps for a cache entry and what it does with an all-ones bind; texture sharing between contexts
- environment: the role of parameter 0x80be, which public mode selects the add and add-signed records, what each function code does on the raster board
- shadow state (0x1c7): whether any shipped software sends it
- GL pixel state, transfer and accumulation (section 7.15): the fourth word of a pixel-map header and the largest map size; the client's two size thresholds for choosing DMA and its width limits for strips of draws, reads and copies; the bit layouts of the seven extra packed types; how the pipe's unpacker places each packed type; the pack mode of the reply words of a pixel read and what forces the return-data-buffer reply; the video-source copy (no sender); and the accumulation storage format
- queries, select and feedback (section 7.16): why the polygon stipple is rotated around its read; the name-by-name counts of the generic state query; why the texture-generation plane rows sit 0x8000 bytes below the mode word; the colour-table entry layout; the convolution and separable filter query's request length; the request word of the board-configuration query; the select-feedback restart token (no sender); the select buffer's multiplier word; the extra word the feedback client removes; and the depth multiplier in select records
- multisample (section 7.17): the effect of sample counts other than 4 and 8; whether sample locations are measured from a pixel corner or centre; the layout of the engines' multisample point tables; the hardware resolve rule and what depth and stencil reads return; which sample banks a clear reaches; the AND combination of the coverage word, how the sample-mask register doubles as the alpha-to-mask fade table and alpha-to-mask and alpha-to-one coverage; the sample-buffer tag call and the point-table builder (no sender); the sample-count queries and visual selection; multisample line, point and polygon rules

**8. Raster bus**

- 0x0476, 0x0477: reply-word port and its clear register

**10. Window id**

- Hardware text for the comparison: none read
- Popup compare: whether hardware derives compared bit 11 from the painted group field (the painter never sets v bit 13)
- Command-grammar rule that all ones owns no pixel: not found in this repository
