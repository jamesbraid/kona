# GL tokens for the entry points the command map left located

[gl-command-map.md](gl-command-map.md) found 505 public GL entry points in the N32 `libGLcore.so` of IRIX 6.5.30m (`usr/gfx/arch/IP27KONA32/`). Its mechanical pass gave 199 a single known token, 102 a path-dependent token set, and left 204 "located": they send through helpers, or send nothing. This page says what those 204 do, by family, in the order the first textured, lit triangle and `glFinish` need them. It answers request K7 of the NT 4.0 InfiniteReality design (graphics-kona section 9). [gl-located-families.tsv](gl-located-families.tsv) is the per-entry table: one row per located entry with its family, what it sends, a label and the page that holds the reading.

Labels are **established** (the sender and the helper read in full, with address), **inferred** or **unknown**. The readings behind the rows are in [libglcore-driver-functions.md](libglcore-driver-functions.md), [libglcore-functions.md](libglcore-functions.md), [libglcore-get-functions.md](libglcore-get-functions.md) and [opengl.md](opengl.md); the word layouts of the tokens are in [command-table.md](../../formats/token/command-table.md). Token names are those of [GE.h](../../devices/ge/GE.h).

## What the 204 are

| Kind (the `kind` column) | Entries | What it means for an ICD |
|---|---:|---|
| `host`: sends nothing (list names, texture names and objects, array pointers, parameter reads from host state, pixel-store and attribute stacks, instrument records) | 51 | answer on the host |
| `tokens`: sends tokens through a helper | 67 | the tokens are in the table; the families below give the order and the words |
| `query`: request token, then a wait on the return-data page | 37 | needs the reply path below |
| `unimplemented`: an extension stub that raises a GL error and sends no token | 40 | answer `GL_INVALID_OPERATION` as the library does |
| `unread`: sender body not read | 9 | listed under "What remains" |

The counts are rows of the table, which counts aliases such as `glBindTexture` and `glBindTextureEXT` separately. The `kind` is this page's own classification of what the reading says, not an independent audit.

## The return-data handshake: queries and `glFinish`

**Established.** The host gives the pipe a return page at node creation: one 16 KB page, named to the pipe by an address pair, with the `RDATA_SETUP` packet (token `0x1f2`, sent for a new context by `KONApcxswap`, address pair then `0x4000`). The pipe stores the destination from that packet (`arm_rdata_setup`). A reply goes to it by the pipe's output DMA (`start_rdata` programs the read-back registers from the stored words, `finish_rdata` undoes it).

The host side is `__glkona_wait_rdata` (0xd9587c0): it reads one word from process address `0x10100` and discards it, then polls the first word of the page (the pointer at context +31588) until it is non-zero, then clears it and returns. Its waits: 200000 spins, then `sginap(0)` up to as many times, then a third phase with `sginap` tick counts of `sysconf(3)` doubled and divided by 100, for 3000 passes; after that it calls the check-pipe ioctl (10017), dumps the first 64 words of the page to standard error and keeps waiting. A signal ends the second and third phases early. The first word is therefore a ready flag, the reply starts 8 bytes into the page, and the word 4 bytes before the reply is the reply's element count (the readers use it as the count of floats).

- **Query.** The sender stores a request token and its words to the command port (`GETV` `0x4c` and the name; `GETLIGHTFV` `0x41`; `GETMATERIALFV` `0x46`; `GETTEXENVFV` `0x4d`; `GETTEXGENFV` `0x50`; `GETCOLORTABLE` `0xea`; requests `0x3b`, `0x3c`, `0x3d` and `0x3e` for the current state, a clip plane, the raster position and the error flag; the rest in [libglcore-get-functions.md](libglcore-get-functions.md)), waits, and reads the reply. Established.
- **`glFinish`** (`__glkonim_Finish`, 0xd94dc10, read in full this pass): inside a begin it raises `GL_INVALID_OPERATION` (0x502) and sends nothing. Otherwise it stores token `0xc6` (`FINISH`) and the word 1 to the command port and calls `__glkona_wait_rdata`. Established for the token and the wait; **inferred** that the begin test reads a begin flag, since the flag's setter is not identified.
- **The pipe's side.** `arm_finish` (0x0c014040, read in full this pass) starts the raster flush on all engines (`mgesi_FlushRM`, through port `0x4f4`); if the payload word is zero it returns; otherwise it runs `start_rdata` and then `finish_rdata`, so the host is told when the raster boards have drained. Established. **What value ends up in the page's first word** is not read: the flush handler and the read-back it triggers were not followed. What would settle it: `mgesi_FlushRM` (`raster.S` line 1149) and the read-back registers it feeds. For a driver the contract is enough: send `FINISH` with 1, poll the page's first word for non-zero, clear it.
- **`glFlush`** (`__glkonim_Flush`, 0xd94dc70): token `0xc7` (`FLUSH`), word 0, then one load from process address `0x10100` and no wait. Established.

## Textures: the first textured triangle

A textured triangle needs a texture name, an image, parameters, an environment, a bind and the enable. In order, with what each sends:

1. **`glGenTextures`**: nothing. Zeroed 544-byte host objects, priority 1.0 (`__glkonim_GenTexturesEXT`, 0xd96ee20). Established.
2. **`glBindTexture`** (`__glkonim_BindTextureEXT`, 0xd96f840): host table work, then it calls the object's bind hook at +256 (initially `initTexture`, then set per texture kind). The hook's tokens are the bind routines below. **Inferred** that the hook runs at bind time and not at draw time: the reading says the hook is called and names it the bind hook from its position; the hook's later values were not traced.
3. **`glTexImage2D`** (`__glkonim_TexImage2D` to `__glkonim_TexImage`, 0xd970de0): validates, then `subloadLevel` (0xd96bc80) cuts the level into tiles and `subloadSimple` (0xd96ac30) loads each: `BIND_ARM_TEX_CACHE` `0x1c4` first if the object has no cache entry (`bindARMTexCache`, 0xd965040: token and the entry's slot), then `DRAWTEXELS` `0x174` (`__glKonDrawTexels3D`, `DrawSubTexels`, `DoDrawPixelsOrTexels`), and at the end of the level `TEXLOAD_ID` `0x176` with the cache slot. Established for each routine; **inferred** that the draw path reaches `DRAWTEXELS` `0x174` through them, because the indirect call that links them is not resolved.
   - `DRAWTEXELS` header (20 words, [section 7.10](../../formats/token/command-table.md#710-texture-load-headers-tokens-0x173-0x174-and-0x176)): target, width, height, source format code, type code, low two address bits, DMA flag, row mode, 0, texel format id, cache entry, first s and t, last s and t, slice, size exponents, layout word, even and odd address words; the image follows inline or by DMA write. The pipe computes the image length from the pixel-store state.
   - The DMA flag is set when the image exceeds `0x9000` bytes (36864) and, for strided rows (row mode 1), a row also exceeds `0x280` (640) bytes. Those are the build's defaults in the library's data (0xda8cf54, 0xda8cf58, read from the file image); `GLKONA_DMATHRESHOLD_IMAGE` and `GLKONA_DMATHRESHOLD_SCANLINE` override them at context creation. Established as the defaults.
   - A level wider than the pipe takes in one piece is cut into power-of-two pieces (`DrawSubTexels`, which sends the pieces in the order multiple of 8, then 4, 2, 1). Established.
4. **`glTexParameter*`** (`__glkonim_TexParameterf` and kin to `__glKonTexParameter`, 0xd968390): edit the host object. Only the post-texture filter scale and bias names (`0x8179`, `0x817a`) send a token, `CHANGE_POST_TEX_SCALE_BIAS` `0x1d7` (unit, enables, packed scale, packed bias). Everything else (filters, wrap, LOD, base and maximum level, shadow compare) is **inferred** to reach the pipe in words 2 and 3 of the next bind, because those are the words built from the object's mode and size fields; the routine's whole body, 6156 bytes, is labelled inferred in the existing reading.
5. **`glTexEnv*`**: already among the 102 path-dependent rows of the command map: `TEXENVF` `0x11` and `TEXENVI` `0x12`, name and four values (only target `0x2300`).
6. **The bind tokens** (`bind2DMipmapTexture`, 0xd96a200 and its 3D, bicubic and detail siblings; [section 7.13](../../formats/token/command-table.md#713-the-bind-contract-how-a-bind-and-the-level-table-select-an-image)): `BIND_TEXTURE` `0x1d5` (5 words: cache entry or -1, control word, texture-mode word, size word, depth-compare word) or `BIND_LINEAR_TEXTURE` `0x106`; then the level record, `BIND_2D_MIPMAP_TEXTURE` `0x179` (22 words: six state words, sixteen level addresses); then `LOAD_POST_TEX_SCALE_BIAS` `0xed` (a zero word and three scale words). Established.
7. **`glEnable(GL_TEXTURE_2D)`**: the `Enable` sender, token `0x24` and the capability name; already among the 102 path-dependent rows.

What is not read for this path: `slowBindTexture` and `checkTexImage` (the two helpers `__glkonim_TexImage` leans on for objects that cannot upload in place), the mipmap generation for `GL_GENERATE_MIPMAP`-style use, and the clip-map set-up (`setClipmapRegisters`).

## Pixels

- **`glDrawPixels`**: `DRAWPIXELS` `0x3a`, eight header words (width, start row, format code, type code, low two address bits, 0, row mode, column offset), then the image by the same inline-or-DMA rule as texels. Formats are numbered 0 to 13 (red, green, blue, alpha, RGB, RGBA, luminance, luminance-alpha, ABGR, CMYK, CMYKA, colour index, stencil, depth) and types 0 to 6 plus 7 (bitmap) and the packed codes ([`__glKonParseInput`](libglcore-driver-functions.md)). Established.
- **`glReadPixels`**: `READPIXELS` `0x39` with position, size, format code, type code and address bits; the reply is in the return-data page, and a large read goes by the DMA-read ioctl (10000) with the same token as its command. Established.
- **`glPixelStore*`**: `PIXELSTOREI` `0x33` (name, value). **`glPixelTransfer*`**: `PIXELTRANSFERF` `0x30` (name, float). **`glPixelMap*`**: `PIXELMAPUSV` `0x36` and the table. Established.
- **Colour table, convolution, histogram and minmax**: tokens in the table; layouts not summarised here.

## Display lists and the DMA pool

- **Recording** (`glNewList`, `glEndList`): no token. The context's dispatch table switches to the compile-mode senders (`__glkonlc_*`), which append the same token and payload words the immediate senders would store, into 0x400-byte host blocks with a three-word header. Established that compile-mode `Begin` appends `0x57 + mode` and a zero word and `End` appends `0x71` and a zero word; the general rule is **inferred** from that and from the paired immediate and compile senders.
- **Finishing**: unused tails of blocks are filled with skip tokens `SKIP4` (`0x1d9`, four words each), closed with `SKIP5` (`0x1da`) or `SKIP2` (`0x1d8`) followed by `SKIP4` ([`__glkonPadBlocks`](libglcore-driver-functions.md)). Established.
- **Where a list lives**: host blocks, pipe display-list memory (`__glKonSdramSwapIn` copies blocks in with the DMA-write ioctl and `IDMACOPYLIST_LDMA` `0x1c8`), or locked host memory registered as the pool. Established.
- **The pool**: the DMA-pool ioctl (10018, address and length multiples of 16 KB, type 0, share flag) locks the pages and the kernel sends `DMAPOOL_SETUP` (`0x1ed`; three words: address high, address low, length), then `GED_NOP` (`0x172`) and a zero. The pipe keeps the address and length, and the playback tokens read them ([hip.md](../../devices/hip/README.md#dma-pools)). Established.
- **Playback**: `EXECLIST_IDMA` (`0x16e`: byte offset and word count) makes the pipe fetch that many words from the pool as if they were a command stream; `EXECLIST_IDMA_N` (`0x171`: a count of pairs, each an offset and a word count) does several fragments in one token. `EXECLIST_LDMA` (`0x16d`) and `EXECLIST_LDMA_N` (`0x170`) do the same from pipe display-list memory. The single IDMA form prints "IDMA out-of-bounds" when offset plus four times the count passes the pool length and goes on; the `_N` form does no check. Established.
- **What a list may hold**: any command sequence the immediate senders produce, with two limits. Privileged tokens (context, memory, DMA and select-feedback packets) take effect only from the kernel's privileged stream, so a list containing one is refused by the pipe (inferred: the handlers test the status bit, and list data does not set it). The compiler closes an open begin before it finishes a list or records a nested call (`__glsplc_AddSentinel`, `__glkonlc_CallList`), so a played list is balanced. Established for those two routines.
- **What ends a list**: the word count in the playback token. The pipe returns to the command FIFO when the counted words are consumed; the host-side list sentinel (`__glsple_Sentinel`) is a host instruction, not a pipe token. Inferred from the handlers' mode switch (mode 1 for the pool, 2 for pipe memory) and the absence of any end token in the player.
- **`glCallList` inside a list**: a call from a list is closed first (the compile-mode `CallList` ends an open begin) and nests on the host; whether the pipe nests playbacks was not read (the player returns "through the token dispatcher").

## Evaluators

`glMap1*`/`glMap2*` send `MAPDATA1D`/`MAPDATA2D` (`0x2a`, `0x2b`) and `MAPSPEC1D`/`MAPSPEC2D` (`0x2c`, `0x2d`) only when the active maps are small enough for the pipe (208 words or fewer, largest order below 9); otherwise the control points stay on the host and the host evaluates. `glEvalCoord*` then goes through an indirect call: on the pipe path `EVAL_COORD1F` `0x9d` or `EVAL_COORD2F` `0xa1` (count, floats); `glEvalMesh*` sends `EVALSTRIP1D` `0x26` and `EVALSTRIP2D` `0x27` records. Established for the pipe path; the host-evaluated path's output (vertex tokens) was not read.

## Queries and state reads

`glGetBooleanv`, `glGetDoublev`, `glGetFloatv`, `glGetIntegerv` and `glIsEnabled` share a 1227-record table: 159 names ask the pipe (`GETV` `0x4c`, name), 111 read the host context, 45 call a host function, 4 read a texture-binding record, 1 reads a constant, 907 raise `GL_INVALID_ENUM`. The other `glGet*` entries use their own request tokens (table). Established ([libglcore-get-functions.md](libglcore-get-functions.md)).

## What a fresh context sends

- **The kernel** (`KONApcxswap`, established): `CONTEXT_INIT` `0x1fd` (address pair, `0x10000`), then `RDATA_SETUP` `0x1f2` (address pair, `0x4000`). The pipe's `context_init` (0x0c01fd50) clears the state block and runs the default routines for transforms, colour, depth, hints, primitives, lighting, attributes, pixel state, textures and fog, so **no GL defaults are sent by the host**: the pipe builds them (established; the values are in [arm1_functions.md](../ucode/arm1_functions.md)).
- **The GL library** on the first make-current (`MakeCurrentRead`, established): `kona_writeconfig` sends `BUFFER_CONFIG` `0x1` (ten words) and `PACK` `0x2` (word 0), then the set-display-mode request (ioctl 1008); `kona_readconfig` sends `READBUFFER_CONFIG` `0x4` when the read target differs. The library then runs the texture, evaluator and hyperpipe initialisers, which send no token on this path (the evaluator initialiser is host-only; the hyperpipe initialiser clears one word; the texture initialiser was not read). `__glKonInitPixelState` reads sixteen pairs with query `0xee`.
- **A later make-current** replays only dirty host state: `__glkonResolveContext` sends the groups its dirty mask names, through the ordinary entry points, and the lights (`0x119`, twelve words each), texture-coordinate generation (`0x1d6`) and transform attribute (`0x1ca`) blocks directly. **Inferred** (the reading is labelled inferred; the call sites are `MakeCurrentRead` and `PopAttrib`).

## What remains

| Item | What would settle it |
|---|---|
| The value of the page's first word after `FINISH` | `mgesi_FlushRM` and the read-back it triggers |
| `slowBindTexture`, `checkTexImage` and clip-map set-up tokens | read the helpers whole; the first two are in [opengl.md](opengl.md) only by name |
| Bodies of `AreTexturesResident`, `PrioritizeTextures`, `ArrayElement`, `DrawElements`, `InterleavedArrays`, `GetString` | read the senders; the first two end in indirect calls through context pointers |
| Colour-table, convolution, histogram and minmax word layouts | the matching `__glkonim_*` bodies in [libglcore-driver-functions.md](libglcore-driver-functions.md) hold the tokens; the words need a per-token page |
| The host evaluator's output | `EvalU`, `EvalV` and `Eval2Rows` in [libglcore-driver-functions.md](libglcore-driver-functions.md) |
| Whether the pipe nests list playbacks | the player behind `arm_execlist_idma`'s return through the token dispatcher |
| Anything for IR3, IR4, the IP35 builds, or other IRIX releases | none was read; the IP35 copy of the N32 library has byte-identical code for the routines compared |
