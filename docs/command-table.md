# Back-end definitions table

One canonical table of the numbers an emulator back end for the InfiniteReality2 pipe on an Onyx2 consumes: host token numbers with their word counts, display-request numbers, register and indirect-register indices, and the bit layout of every multi-field word. First configuration only: one IP27 Onyx2, one InfiniteReality2 pipe. The table consolidates what the other documents in this repository already establish; it adds no new reading except the two window-id answers in section 10, which come from the display microcode's own window-set-up code and the diagnostic's field table.

The names are role names in plain words, written for someone who transcribes the table into a definitions module. They are not the vendor's symbol, routine or request names, and no vendor identifier appears below. Where a row needs a handle, use the number.

## 1. How to read this table

**Grades.** *established*: read directly from a shipped binary, the display microcode, the diagnostic's own tables or a published paper (the evidence column says where). *inferred*: a reasoned reading; the cited section gives the reasoning. *unknown*: no read binary or published text reaches it; the row says what would settle it. A row's grade is the grade of the weakest thing the row asserts that a back end would rely on. In the token tables the token number, route, command number and map count field are always decoded from the map, so they are established; the grade column then reflects the role and, for processor-run tokens, the word count, which are readings. A role name is plain-words labelling and is inferred unless the row says otherwise.

**Evidence keys.** Each row cites one or more keys; every key is a document and section in this repository.

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

**Notation.** Bit ranges are `high:low`, counted from zero at the least significant bit. A "word" is 32 bits unless stated. The token map has 512 entries numbered 0x000-0x1ff; the host sends a token number and the payload words its entry describes.

**Totals.** The table has 937 graded entries: 368 established, 535 inferred and 34 unknown. Section 11 breaks these down and lists the unknown entries that matter to a back end.


## 2. Processor-run host tokens (306)

Tokens whose map entry has bit 0 clear run a routine on the pipe's own processor. The entry gives no payload length: the routine reads its payload itself, one word per read, and the last word with a read at offset 0x3c of the register window ([the command stream](hip.md#the-command-stream-as-the-arm-firmware-reads-it)). The exact count is therefore the routine's, not a table field. "Payload reads seen" is the number of read sites a straight-line scan of the routine finds; it is a lower bound where the routine loops or reads through a helper, so the grade is inferred. A count of zero with no last-word read means the routine hands the payload to another routine, so its word count is unknown from the scan alone. The 54 refused tokens run the firmware's bad-command routine; a working driver never sends them (established). Token numbers are those of the map ([S1](#1-how-to-read-this-table)); the role names are inferred from the routines' readings in [S3](#1-how-to-read-this-table).


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

### 2.12 Pixels, bitmaps and filters

| Token | Role | Payload reads seen | Last-word read | Grade | Evidence |
|---|---|---|---|---|---|
| 0x005 | draw a bitmap from a display list | 7 | n | inferred | S3 |
| 0x006 | draw a bitmap | 7 | n | inferred | S3 |
| 0x00b | load the polygon stipple pattern | 2 | n | inferred | S3 |
| 0x02f | set the pixel zoom factors | 2 | y | inferred | S3 |
| 0x030 | set a pixel-transfer parameter (float form) | 1 | y | inferred | S3 |
| 0x033 | set a pixel-store parameter (integer form) | 2 | y | inferred | S3 |
| 0x034 | load a pixel map (float values) | none seen; the routine hands off elsewhere | n | unknown | S3 |
| 0x035 | load a pixel map (unsigned 32-bit values) | none seen; the routine hands off elsewhere | n | unknown | S3 |
| 0x036 | load a pixel map (unsigned 16-bit values) | none seen; the routine hands off elsewhere | n | unknown | S3 |
| 0x038 | copy a pixel rectangle within the frame buffer | 7 | y | inferred | S3 |
| 0x039 | read a pixel rectangle back to the host | 7 | y | inferred | S3 |
| 0x03a | draw a pixel rectangle from host data | 7 | n | inferred | S3 |
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
| 0x111 | suspend pixel-mode state around a transfer | 1 | y | inferred | S3 |
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

A display request travels in the carrier token 0x1a6: the host sends the request number, then that many payload words, then a checksum word equal to the sum of the request number and the payload words ([S5](#1-how-to-read-this-table)). The firmware dispatches through a 93-entry table of {payload word count, handler}. "Reply" is the reply type number and length in bytes the handler sends back, or "none". Role names are inferred from the handlers' readings; the word counts and reply types are established.

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
| window offsets 0x3c8, 0x3d8 | video-controller ready and auto-increment data ports (never used by the driver) | unknown | S16 |
| bit 16 of the address written to the address port (0x10000) | selects the in-band "fast list" path for indirect memories | inferred | S6 |
| ARM address 0x00600000 + 4 x A | display-bus address A as the firmware sees it (one 32-bit word per address) | established | S10 |
| raster-bus word, bits 63:52 = 0x041, bits 47:32 = address, bits 31:0 = data | alternative path to the same registers | established | S6 |
| address 0x118..0x11f via engine write | the firmware reaches indirect memories through an engine bus-write handler (address to ARM offset 0x474, value to 0x840) | established | S10 |
| which address bits pick the chip behind the port | chip-select decode | unknown | S10 |


### 6.2 Address map by family

| Display-bus addresses | Role | Grade | Evidence |
|---|---|---|---|
| i for display id i (0x00-0x7f) | per-display-id mode table: one mode byte per id; the last slot 0x7f doubles as the sequence-number push slot | established | S10, S17 |
| 0x080 | frame-manager swap strobe (the kernel and firmware write 2 after a swap) | established | S13 |
| 0x081-0x08a | ten swap-group display-id slots | established | S10 |
| 0x08b | frame-manager control: bits 21:20 input sync source, bit 22 reset ratio | established | S5 |
| 0x08e | master clock select: bit 23 | established | S5 |
| 0x08f | interrupt state | inferred | S10 |
| 0x090 | raster-board count | inferred | S10 |
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
| 0x04 | copy-buffer strobe: written 1 after every group of writes; bit 2 forces the cursor position | bit 0 established, bit 2 inferred | established | S6 |
| 0x05 | diagnostic substitute-colour enable | 0 off | inferred | S6, S13 |
| 0x06 | substitute colour, low word | 32 bits | inferred | S13 |
| 0x07 | substitute colour, high bits plus a 2-bit mode shifted left 10 | 13 bits | inferred | S13 |
| 0x08 | read chip select | XMAP number 0-3 before a read | inferred | S6 |
| 0x09 | role not read: 0 at start-up, 2 after the diagnostic, and the window-created / destroyed notice (1 / 0) | value only | unknown | S6 |
| 0x0a | untouched by any code read | none | unknown | S6 |
| 0x0b | raster-board count code | 2 bits: 0, 1, 2 for one, two, four boards | established | S13 |
| 0x0c | display-id compare address | 6 bits; start-up value 2 | inferred | S13 |
| 0x0d | image-processor pixel-stream delay | 9 bits; 0xa5 on board type 2, else 0x64 | inferred | S13 |
| 0x0e | pipeline delay | 3 bits; 6 on board type 2, else 3 | inferred | S13 |
| 0x0f | fast-list configuration: low five bits chunk size, upper bits fixed 0x320 | 10 bits; start-up 0x339 (chunk 25) | inferred | S13 |
| 0x10 | written 0 at start-up and nothing else | value only | unknown | S6 |
| 0x11 | read-back address | 19 bits | inferred | S13 |
| 0x12 | read-back data | 32 bits | inferred | S6 |


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

| r | Role | Fields / values | Grade | Evidence |
|---|---|---|---|---|
| 0x00 | status (read only; the master copy at 0x300) | bit 7 pulses once per frame | inferred | S11, S13 |
| 0x01 | control | bits 1:0 channel enable (1 on, 2, 3 during genlock shutdown, 0 off); bits 5:4 set and bit 6 cleared by genlock set-up; bits 11:9 pixels-per-clock code | established | S11, S13 |
| 0x03 | video-requester input window: screen width in groupxels minus 1 | groupxel = 4 pixels | established | S11 |
| 0x04 | video-requester window origin: x / 4 and y | two fields | established | S11 |
| 0x05 | video-requester window size in groupxels and lines | two fields | established | S11 |
| 0x06 | sequencer control | bit 3 clears the state pointer; bits 8:4 select a line type (0-31) or a signal (0-13) | established | S11 |
| 0x07 | sequencer initial signal levels | bit n = initial level of signal n; bits 18:17 added on an old revision | established | S11 |
| 0x08 | genlock vertical phase | bits 12:0, 25:13 used; 28:26 and 29 sent as zero | inferred | S11 |
| 0x09 | sequencer state-table port (auto-increments from the cleared pointer) | two states per word | established | S11 |
| 0x0a | selected line type, word A: edge mask for edges 0-31 | 32 bits | established | S11 |
| 0x0b | selected line type, word B: length minus 3 in 30:18, edge mask for edges 32-49 in 17:0 | 32 bits | established | S11 |
| 0x0c-0x13 | edge slots of the selected signal (slot s at 0x0c + s) | edge position in 12:0, 0x1fff = unused | established | S11 |
| 0x14 | blanking | bit 16, 7:0, 15:8 from three format words | inferred | S11 |
| 0x30-0x32 | frame-detect control and sequence words (genlock) | from format words 7-11 of the genlock request | inferred | S11 |
| 0x44 | video-requester control | bits 10:8 pixel format code, bit 7 dither flag; other bits unread | inferred | S11 |
| 0x45 | tiles per frame-buffer row | value | established | S11 |
| 0x47 | start line request word | tiles-1 in 2:0, groupxels-1 in 13:3, valid bit 14 | established | S11, S13 |
| 0x48 | middle line request word | same fields plus repeat count in 22:15 | established | S11, S13 |
| 0x49 | end line request word | same fields, valid never set | established | S11, S13 |
| 0x4a | pan | bits 5:0 = (x mod 160) / 4; bits 7:6 = x mod 4 (the latter inferred) | established | S11 |
| 0x50 + f, 0x58 + f | first tile address of field f (two banks) | tile address in bits 19:7 | established | S11 |
| 0x60 + f | field request pattern of field f | value | established | S11 |
| 0x70, 0x71, 0x73 | clock control and the two clock parameter sets | set layout: eight words each | inferred | S11 |
| 0x81, 0x82 | genlock line ratio | bits 11:2 and bits 21:14 respectively | inferred | S11 |
| 0x8a | FIFO control (written on option-board VOCs 0x1f, 0x2f, 0x30, 0x5f, 0xc7, 0xca) | bits 13:12 from the eye mask | inferred | S11, S13 |
| 0x8f | field dominance | bit 9 | inferred | S5 |
| 0x90 | size register | not read beyond its use | unknown | S13 |


### 6.6 Video DAC, encoder and gain registers

| Index | Role | Fields / values | Grade | Evidence |
|---|---|---|---|---|
| DAC block register 0 | index: two byte writes, low then high, forming a 16-bit index | high byte selects the 0x000 / 0x200 / 0x300 / 0x400 spaces | established | S13 |
| DAC block register 1 | colour-map data: three consecutive writes red, green, blue per entry, index advancing | 10-bit components | inferred | S13 |
| DAC block register 2 | indexed-register data | value | established | S13 |
| DAC block register 3 | mode: start-up writes 6, waits, writes 7 | bit 0 a strobe (inferred) | inferred | S13 |
| indexed 0x004 | pixel mask | 10 bits; start-up 0xff | established | S13 |
| indexed 0x005, 0x006 | written 0x88 and 0xe4 at start-up | values only | unknown | S13 |
| indexed 0x200-0x203 | DAC cursor position: x low byte, x high byte, y low byte, y high byte | scaled to the channel output size | established | S7 |
| indexed 0x204 | DAC cursor control | 4 bits; the kernel writes 5 (bits 0 and 2) for the owning channel and 0 for the rest; start-up 0 | established | S7, S13 |
| what each bit of the value 5 does | DAC cursor control bit meaning | bits 0 and 2 | unknown | S7 |
| indexed 0x303, 0x304 ... | DAC cursor colours: six values streamed after index 0x303 | 10-bit components | inferred | S13 |
| indexed 0x400 | DAC cursor image RAM select (256 image words streamed low byte first) | index | established | S7 |
| layout of the 263 words of the cursor-load request | packing of colours and image into the six colour words and 256 image words | 263 words | unknown | S7 |
| cursor "channel block" setup | write 4 then 2 to DAC register 0 before the cursor control index (consecutive writes to one address) | values | established | S7 |
| encoder 0x1800 / 0x1802 | encoder control address and data | index and value | inferred | S13 |
| encoder 0x1801 / 0x1803 | encoder colour-map address and data | index and value | inferred | S13 |


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
| crosshair shape | arm lengths, thickness, extent | 64 x 64 suggested weakly | unknown | S7 |
| DAC cursor colour block | which word 0-3 order the DAC uses | - | unknown | S7 |
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
| larger pixel layout | id nibble goes to bits 6:3 of the high word, the remaining 12 bits to bits 19:8 of the high word; plane mask likewise | 64-bit foreground | established | S8 |
| smaller pixel layout | id nibble to bits 12:9 and the remaining 12 bits to bits 25:14 of the low word | 64-bit foreground | established | S8 |
| which layout a board uses | follows the board's pixel depth (the visual set chosen at start) | - | established | S8 |
| colour-index 8 index placement in the pixel word | position of the 8-bit index | raster hardware places it | unknown | S8 |
| overlay window to main window pairing | how an overlay's id pairs with the main window beneath | - | unknown | S8 |
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


## 8. Raster-bus register writes and index spaces

| Item | Role | Layout / values | Grade | Evidence |
|---|---|---|---|---|
| one register write | four stores: descriptor, then bit-mask word, address word, value | descriptor in 4.2 | established | S12 |
| address word | high half = 0x110 + i (i = shadow word of the register), low half = register index | (0x110 + i) << 16 / register | established | S12 |
| first word (mask) | bit mask applied to the shadow slot, sent to raster-bus index 7 | 0xffffffff for a whole register | inferred | S12 |
| bus word, host-diagnostic form | register index in bits 62:48, value in bits 47:0 | 64 bits | established | S12 |
| bus word, vector-file form | top 16 bits register index, next 16 bits the index repeated (or a second register), low 32 bits value | 64 bits | established | S12 |
| bus mode codes | mode 1 travels as 0, mode 3 as 4, mode 2 as 6 | carried in the low bits of a store address | established | S18 |
| mode 3 / mode 2 pairing | mode 3 closes a vertex's first 64-bit word, mode 2 its second | - | inferred | S18 |
| 0x0800-0x0810 | pixel-generator registers | index block | established | S15 |
| 0x1400-0x1414, 0x1500 | texture-filter registers | index block | established | S15 |
| 0x1c00-0x1c15 | image-processor registers | index block | established | S15 |
| 0x3be0-0x3be1, 0x3fc2-0x3fd8, 0x3ff8 | shared generator registers | index block | established | S15 |
| 0x0400-0x0477 | board-side host-interface registers on the raster bus (not in the register index space) | 0x440 output channel, 0x441 pack mode, 0x450-0x456 output DMA, 0x460-0x464 second output DMA | inferred | S18 |
| 0x0476, 0x0477 | reply-word port and its clear register | values only | unknown | S18 |
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

The back-end chip keeps a shadow of 89 raster registers. A register write names its shadow word in the high half of the address word. The start-up value is what the firmware writes at boot. Roles are inferred from the diagnostic's field table unless noted; the pairing of shadow word and register index is established.

| Shadow word | Register index | Start-up value | Role | Grade | Evidence |
|---|---|---|---|---|---|
| 0 | 0x0441 | 0x0 | pack mode for host read-back (7 bits) | inferred | S12, S15 |
| 1 | 0x0455 | 0x0 | output DMA line length | inferred | S12, S15 |
| 2 | 0x0456 | 0x0 | output DMA stride | inferred | S12, S15 |
| 3 | 0x3fc2 | 0x3fff8000 | scissor x range (min 14:0, max 29:15) | inferred | S12, S15 |
| 4 | 0x3fc3 | 0x3fff8000 | scissor y range (min 14:0, max 29:15) | inferred | S12, S15 |
| 5 | 0x3fc4 | 0x0 | rectangle set-up word 0 (start x) | inferred | S12, S15 |
| 6 | 0x3fc5 | 0x0 | rectangle set-up word 1 (current x) | inferred | S12, S15 |
| 7 | 0x3fc6 | 0x0 | rectangle set-up word 2 (y) | inferred | S12, S15 |
| 8 | 0x3fc7 | 0x0 | rectangle set-up word 3 (row step of start x) | inferred | S12, S15 |
| 9 | 0x3fc8 | 0x0 | rectangle set-up word 4 (x step) | inferred | S12, S15 |
| 10 | 0x3fc9 | 0x0 | rectangle set-up word 5 (y step) | inferred | S12, S15 |
| 11 | 0x3fca | 0x100000 | rectangle set-up word 6 (depth slope in x) | inferred | S12, S15 |
| 12 | 0x3fcb | 0x100000 | rectangle set-up word 7 (depth slope in y) | inferred | S12, S15 |
| 13 | 0x3fcc | 0xc010010 | draw-rectangle word 0 (J 11:0, I 23:12, scan direction) | inferred | S12, S15 |
| 14 | 0x3fcd | 0x10 | draw-rectangle word 1 (width 11:0, start x 23:12) | inferred | S12, S15 |
| 15 | 0x3fce | 0x0 | draw-rectangle word 2 (current y 11:0, x 23:12) | inferred | S12, S15 |
| 16 | 0x3fcf | 0x10 | generator buffer size: points | inferred | S12, S15 |
| 17 | 0x3fd0 | 0x10 | generator buffer size: lines | inferred | S12, S15 |
| 18 | 0x3fd1 | 0xf | generator buffer size: triangles | inferred | S12, S15 |
| 19 | 0x3fd2 | 0xf00f | image buffer size (width 11:0, height 23:12) | inferred | S12, S15 |
| 20 | 0x3fd3 | 0xf | generator enables (texture, scan conversion, depth unit, draw pixels) | inferred | S12, S15 |
| 21 | 0x3be0 | 0xc8b640 | multisample sample locations 0-3 | inferred | S12, S15 |
| 22 | 0x3be1 | 0x916f6f | multisample sample locations 4-7 | inferred | S12, S15 |
| 23 | 0x0800 | 0x0 | pixel-generator mode (flat shading, direction mask source) | inferred | S12, S15 |
| 24 | 0x080f | 0x100100 | point size (width 11:0, height 23:12) | inferred | S12, S15 |
| 25 | 0x0804 | 0x0 | primitive bloat | inferred | S12, S15 |
| 26 | 0x0805 | 0x0 | primitive depth offset | inferred | S12, S15 |
| 27 | 0x0806 | 0x55 | primitive draw selectors (five 2-bit fields) | inferred | S12, S15 |
| 28 | 0x0807 | 0x0 | window offset x | inferred | S12, S15 |
| 29 | 0x0808 | 0x0 | window offset y | inferred | S12, S15 |
| 30 | 0x0809 | 0xffffffff | multisample coverage mask | inferred | S12, S15 |
| 31 | 0x080a | 0x0 | polygon stipple control (enable, offset) | inferred | S12, S15 |
| 32 | 0x080b | 0x55 | polygon stipple pattern byte 0 | inferred | S12, S15 |
| 33 | 0x080c | 0x55 | polygon stipple pattern byte 1 | inferred | S12, S15 |
| 34 | 0x080d | 0xff | polygon stipple repeat lengths (x 3:0, y 7:4) | inferred | S12, S15 |
| 35 | 0x0810 | 0x0 | primitive rule unit mode (none or line) | inferred | S12, S15 |
| 36 | 0x1c00 | 0x3c2 | frame-buffer configuration (pixel size, colour format) | inferred | S12, S15 |
| 37 | 0x1c02 | 0x1 | image-processor operation (draw buffer, packet kind) | inferred | S12, S15 |
| 38 | 0x1c03 | 0x17f8 | multisample control | inferred | S12, S15 |
| 39 | 0x1c06 | 0x0 | window-id clip test (enable, reference, mask) | inferred | S12, S15 |
| 40 | 0x1c07 | 0x0 | stencil set-up (enable, size, compare, reference, mask) | inferred | S12, S15 |
| 41 | 0x1c08 | 0x0 | stencil actions and depth test | inferred | S12, S15 |
| 42 | 0x1c09 | 0x0 | depth clear value (compressed depth format) | established | S12, S15 |
| 43 | 0x1c0b | 0x32212301 | frame-buffer base addresses (six 6-bit fields) | inferred | S12, S15 |
| 44 | 0x1c0d | 0x11012 | blend and logic operation | inferred | S12, S15 |
| 45 | 0x1c14 | 0x0 | per-bit colour write mask, red 11:0 and green 23:12 | inferred | S12, S15 |
| 46 | 0x1c15 | 0x0 | per-bit colour write mask, blue 11:0 and alpha 23:12 | inferred | S12, S15 |
| 47 | 0x3ff8 | 0x0 | bus pixel-format code (5 bits) | inferred | S12, S15 |
| 48 | 0x7fc5 | 0x0 | texture-load mode | inferred | S12, S15 |
| 49 | 0x7fc3 | 0x0 | texture-load s and r start | inferred | S12, S15 |
| 50 | 0x7fc2 | 0x0 | texture-load s and t start | inferred | S12, S15 |
| 51 | 0x7fc1 | 0x0 | texture-load size (s, t, r) | inferred | S12, S15 |
| 52 | 0x7fc4 | 0x0 | texture-load s and t end | inferred | S12, S15 |
| 53 | 0x5001 | 0x0 | texture-load global offset (21 bits + 3 high bits) | inferred | S12, S15 |
| 54 | 0x101a | 0x0 | texture draw global offset | inferred | S12, S15 |
| 55 | 0x1000 | 0x0 | texture memory geometry (s and t address bits) | inferred | S12, S15 |
| 56 | 0x3fd5 | 0x0 | bound texture size and address control | inferred | S12, S15 |
| 57 | 0x3fd4 | 0x30 | texture mode (dimension, filters, shadow compare) | inferred | S12, S15 |
| 58 | 0x0c04 | 0x0 | mip-map level range (10 bits each) | inferred | S12, S15 |
| 59 | 0x0c05 | 0x0 | level-of-detail scale s and t | inferred | S12, S15 |
| 60 | 0x0c06 | 0x0 | level-of-detail scale r | inferred | S12, S15 |
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
| 75 | 0x1407 | 0x7000 | alpha test (reference, compare, enable) | inferred | S12, S15 |
| 76 | 0x1500 | 0x0 | texturing enable | inferred | S12, S15 |
| 77 | 0x1401 | 0x22 | texture environment functions | inferred | S12, S15 |
| 78 | 0x1402 | 0x0 | texture environment colour green and red | inferred | S12, S15 |
| 79 | 0x1413 | 0x0 | texture environment colour alpha and blue | inferred | S12, S15 |
| 80 | 0x140e | 0x8000 | texture-filter two-field word (12-bit and 5-bit fields) | inferred | S12, S15 |
| 81 | 0x140b | 0x0 | fade-mask table (four 8-bit entries) | inferred | S12, S15 |
| 82 | 0x1403 | 0x80000 | fog control (modes, table address) | inferred | S12, S15 |
| 83 | 0x1404 | 0x0 | fog colour green and red | inferred | S12, S15 |
| 84 | 0x1414 | 0x0 | fog colour blue | inferred | S12, S15 |
| 85 | 0x1406 | 0x0 | fog depth offset | inferred | S12, S15 |
| 86 | 0x1410 | 0x0 | output luminance-alpha flag | inferred | S12, S15 |
| 87 | 0x140f | 0x0 | input luminance-alpha flag | inferred | S12, S15 |
| 88 | 0x1408 | 0x0 | alpha-to-mask enables (coverage, fade, alpha-to-one) | inferred | S12, S15 |


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
| Painted pixel id to compared plane value | mapping unread | unknown | S8 |
| Is the special 0x3f the same as the all-ones word? | No: 0x3f gives id 0x800 / mask 0x800; all ones gives id 0x3f / mask 0x3f | established | S14 |
| Does id 0x3f / mask 0x3f own no pixel? | Plausibly, under the compare polarity: no main-plane id is 63 | inferred | S14, S8 |
| Command-grammar rule that all ones owns no pixel | not found in this repository | unknown | S14 |

**Answer 1, bit numbering: established, and the reading "counted from one" is wrong.** The trace's wording, id in bits 1-12 and mask in bits 13-24, is already a zero-based range: the enable flag occupies bit 0, the 12-bit reference id occupies 12:1 and the 12-bit mask 24:13. Two independent sources agree. The microcode shifts the id left by one under the mask 0x1ffe, shifts the mask left by 13 under 0x1ffe000 and ORs the enable flag into bit 0. The diagnostic's own field table for the register lists the enable at low bit 0 width 1, the reference at low bit 1 width 12 and the mask at low bit 13 (0xd) width 12. Reading the id as 11:0 and the mask as 23:12 would put the enable flag inside the id. The recorded ids do not discriminate between the readings, because 0xe, 0xf and 0x44 are word-9 inputs seen before the encoder: 0x0e and 0x0f encode to register values 0x7e01d and 0x7e01f, and decoding those as 12:1 returns 0xe and 0xf, while decoding them as 11:0 returns 0x1d and 0x1f; the overlay input 0x44 is in the masked-group range and encodes to reference 0x100 with mask 0x7c0, so a trace that shows 0x44 is showing the input word, not the register field.

**Answer 2a, polarity of a set mask bit: inferred.** Nothing read describes the comparison hardware, so the polarity is a reading from the encoder's own values. Ordinary ids 0-0x3e carry mask 0x3f, the six bits that hold the id, and the overlay group range 0x40-0x5f carries mask 0x7c0, the five bits that hold the group number. If a set bit were an id bit the test ignores, an ordinary window's mask 0x3f would ignore its whole id and every id 0-63 would pass for every ordinary window, which defeats a test whose job is to separate windows. So the strongest reading is the opposite of the one proposed: a set mask bit is a bit the test compares, and a fragment passes when `((plane ^ id) & mask) == 0`. The proposed formula `((plane ^ id) & ~mask) == 0` is the other polarity; it is disfavoured by the argument above but not excluded by any text. A second gap sits under both polarities: how an id painted into a pixel (section 7.6) becomes the 12-bit plane value that is compared is unread, so the pairing of an overlay's painted id with the group index in its mask cannot be checked.

**Answer 2b, the special 0x3f against the all-ones word: established that they are different.** Word 9 = 0x3f takes the special pair, id 0x800 with mask 0x800. Word 9 = all ones (-1) is negative, so it falls to the last case, where the microcode prints nothing for -1 (every other out-of-range value prints a bogus-id diagnostic) and then encodes it as an ordinary id 0x3f with mask 0x3f. So the all-ones word is not the special value; it becomes an ordinary id 0x3f. Whether that owns no pixel is inferred: under the compare polarity it passes only pixels whose low six id bits are all ones, which no main-plane window id (0-62) paints, and the popup's id 63 is sent as 0x3f and so takes the special pair rather than this one. This repository holds no text that states a command-grammar rule that an all-ones word owns no pixel, and the kernel's use of all ones for a missing id was not found in the kernel readings, so that rule is not confirmed here.

## 11. Counts and the unknown entries

Counts are of graded rows in the tables above, by the grade rule in section 1. They do not count the token map entries as separate rows from their role, and they are not a count of hardware facts.

| Section | Established | Inferred | Unknown | Total |
|---|---|---|---|---|
| 2. Processor-run tokens | 54 | 242 | 10 | 306 |
| 3. Routed tokens | 59 | 147 | 0 | 206 |
| 4. Map entry and descriptors | 25 | 7 | 1 | 33 |
| 6. Display-bus registers | 56 | 32 | 10 | 98 |
| 7. Field layouts | 44 | 10 | 9 | 63 |
| 8. Raster bus | 17 | 92 | 1 | 110 |
| 9. Host window | 11 | 3 | 0 | 14 |
| 5. Display requests | 93 | 0 | 0 | 93 |
| 10. Window id | 9 | 2 | 3 | 14 |
| **All** | **368** | **535** | **34** | **937** |

The unknown rows, by section. Each says what a back end should do: model the access as observable and unimplemented rather than inventing behaviour.


**2. Processor-run tokens**

- 0x1fb: context FIFO synchronise
- 0x0e7: set the blend equation
- 0x013: texture-coordinate generation, double form
- 0x015: texture-coordinate generation, integer form
- 0x016: bind a texture by old-style binding
- 0x034: load a pixel map (float values)
- 0x035: load a pixel map (unsigned 32-bit values)
- 0x036: load a pixel map (unsigned 16-bit values)
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
- layout of the 263 words of the cursor-load request: packing of colours and image into the six colour words and 256 image words

**7. Field layouts**

- what the XMAP does with bits 2:1: luminance and grey handling in hardware
- 18: flag; set for one kind of map (address (map << 14) + 0x40000)
- what the XMAP does with bits 4:2: hardware use of the mode byte
- crosshair shape: arm lengths, thickness, extent
- DAC cursor colour block: which word 0-3 order the DAC uses
- colour-index 8 index placement in the pixel word: position of the 8-bit index
- overlay window to main window pairing: how an overlay's id pairs with the main window beneath
- 15-bit RGB overlay transparency rule: transparent pixel test
- 16-plane luminance with overlay or id planes: composition

**8. Raster bus**

- 0x0476, 0x0477: reply-word port and its clear register

**10. Window id**

- Hardware text for the comparison: none read
- Painted pixel id to compared plane value: mapping unread
- Command-grammar rule that all ones owns no pixel: not found in this repository
