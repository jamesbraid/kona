# Frame-buffer size, pixel depth, the visuals each depth exports, and histogram and minmax read-back

Read 2026-11-28 against kona at 90714b4d: how the shipped IRIX 6.5.30m software sizes the InfiniteReality frame buffer for a managed area above 1280x1024, how a pixel depth is chosen and what it costs, which X and GL visuals each depth offers (12-bit RGBA included), and what a histogram or minmax query returns. Nothing here was run on a pipe.

Labels: **established** (read in a binary, with address), **inferred** (reasoned, reasoning given), **unknown**. Basis words: *binary* (a shipped file and address under `root/`), *capture* (published `gfxinfo` or `hinv` output, or a shipped data file), *RE note* (an existing page of this repository, named).

Binaries read (6.5.30m): `usr/lib/X11/dyDDX/konad.so` (IP35; `vfmtResolvePixelDepth` and the combination loader read in full, the other builds only compared where [kona-ddx.md](../../software/xsgi/kona-ddx.md) already did), `konavis.so` (tables decoded from `.data` and `.rel.dyn`), `usr/gfx/ircombine`, `usr/gfx/setmon`, `usr/gfx/ucode/KONA/arm1.u` through `software/ucode/arm1.s`, and the 26 combination files in `usr/gfx/ucode/KONA/dg4/cmb/`. Existing pages this one builds on: [ir4-against-ir3.md](ir4-against-ir3.md) (the budget constant per class), [devices/rm/README.md](../../devices/rm/README.md) (the per-pixel plane layout), [devices/dg/README.md](../../devices/dg/README.md) (tiles, combination limits), [software/xsgi/kona-ddx.md](../../software/xsgi/kona-ddx.md) (`vfmt*`), [software/opengl/libglcore-driver-functions.md](../../software/opengl/libglcore-driver-functions.md) (histogram and minmax in the client).

## Answers in one table

| Item | Answer | Grade | Basis |
|---|---|---|---|
| Who fixes the managed area | the X session: a combination larger than the running session is refused, a smaller one is promoted to the session's size | established | `konad.so` 0x504048-0x5041dc |
| Frame-buffer request sent to the pipe | display request 8 with (width, height, depth code 0 to 3), sent by the combination loader in the X server and by `setmon` | established | `konad.so` 0x504e54; `setmon` 0x10030494 |
| Budget rule | words per pixel = RM count x 5 x 2^22 (class 3, IR4: 2^27) over (width rounded up to 160) x height; thresholds 8, 16, 32, 64 give Small, Medium, Large, Extra-Large | established | `konad.so` 0x427040; `arm1.u` 0x0c01112c |
| Bits per pixel per depth | Small 256, Medium 512, Large 1024, Extra-Large 2048 | established (the 256 << code in the loader's message); inferred (that it is bits) | `konad.so` 0x504868-0x504884; published figures in RE note `devices/rm/README.md` |
| 1920x1200 | IR3: one RM Small, two Medium, four Large. IR4: Extra-Large with any RM count | established (arithmetic) | table in section 1 |
| 2K (2048x1120) | managed 2048x1120, allocated 2080x1120; same depths as 1920x1200 | established | `2048x1120_72.cmb`; arithmetic |
| Explicit upper limit on managed size | none found in the checker, the loader or the firmware; the budget is the only limit that was derived | established (negative over the routes in section 1); hardware field widths unknown | section 1 |
| Large and Extra-Large visuals | the same table: `konVisualInfo` entry 3 repeats entry 2 | established | `konavis.so` 0x42e228, 0x444ed0 |
| 12/12/12/12 RGBA visuals | present in Small, Medium and Large tables; every 24-plane TrueColor row reports 12-bit components; no row has 8-bit components | established | `konavis.so` capability tables |
| First visual with 12-bit RGBA, double buffer, accumulation and stencil | Medium (a Small row has it only single-buffered with 1 stencil bit) | established (tables); inferred (that Small cannot hold the double-buffered one: 9 words against 8) | section 2 |
| Depth selects the visual table | `konInit` indexes four 40-byte entries by the pipe's depth code | established | `konad.so` 0x57b7d0-0x57b7ec |
| Histogram | 4 channels x 32-bit count per bin in the engines' external memory, 256, 1024 or 4096 bins, read back per engine and summed by the client | established (storage and path); inferred (the summing) | `arm1.u` 0x0c03f818, 0x0c03f9a4; RE note `libglcore-driver-functions.md` |
| Minmax | per engine 8 floats (4 minima, 4 maxima); reset seeds 1.0 and 0.0 | established (read-back shape, seed values); inferred (which group is which) | `arm1.u` 0x0c03fcfc, 0x0c03fbe8 |

## 1. Managed area, allocation and depth

### What a combination holds

A combination file carries `managedSize`, `allocatedSize` and `pixelDepth` (RE note `devices/dg/combination-files.md`). `ircombine`'s `clampManagedArea` (0x1003cc40, both the `Form2` and `GlobalsWindowClass` entries; the second only forwards) computes the allocated size from the managed size: width rounded up to a multiple of 160 (the tile width), height rounded up to a multiple of 8 (the tile height). It clamps nothing against an upper bound despite its name. Established, binary. Every one of the 26 shipped combinations obeys it (`1024x768` is allocated 1120x768, `1200x900` 1280x904, `2048x1120` 2080x1120, `1920x1035` 1920x1040). Established, capture.

All 26 shipped combinations have `pixelDepth` 2. `ircombine`'s `vfcFormatPIXEL_DEPTH` (0x10081ca0) prints 2 as "DEEPEST", 3 as "S", 4 as "M", 5 as "L" and 6 as "XL" and prints nothing for other values. Established, binary. The shipped widest managed areas are 3840x1024 (`3@1280x1024_60`), 3200x1200 and 3200x1080 (the 8-channel and `1280x1024+1920x1080_72` files), 2560x1024, and the 1920x1200, 2080x1120 and 1600x1200 single desktops.

### The resolver

`vfmtResolvePixelDepth` (`konad.so` 0x427040, same in `konal.so`, `kona.so`, `ircombine`, `setmon`; [ir4-against-ir3.md](ir4-against-ir3.md#3-the-raster-memory-budget-pixel-depth-rule) has the budget) turns the combination's `pixelDepth` and a target {class, RM count, ...} into a code in the range 3 to 7, or 0 for "does not fit". Let Q be the budget quotient (words per pixel). Read in full from the jump table at file offset 0x190c68 (eight entries indexed by the request):

| `pixelDepth` in the file | Result | Grade |
|---|---|---|
| 0 | 0 (refused) | established |
| 1 | class other than 2: 4 if Q >= 16, 3 if Q >= 8, else 0. Class 2: 3 if Q >= 8, 7 if Q >= 4, else 0 | established (arithmetic); unknown (the role: no name for 1 appears in the tools) |
| 2, Deepest | class other than 2: 6 if Q >= 64, 5 if Q >= 32, 4 if Q >= 16, 3 if Q >= 8; class 2 stops at 4; class 2 gives 7 if Q >= 4; else 0 | established |
| 3 Small, 4 Medium | the same code if Q >= 8 or Q >= 16, else 0 | established |
| 5 Large, 6 Extra-Large | the same code if Q >= 32 or Q >= 64 and the class is not 2; class 2 refuses; else 0 | established |
| 7 | 7 if Q >= 4 and the class is 2; refused on any other class | established (arithmetic); inferred (that this is "X-Small"; the loader's "xsmall" messages and `gfxinfo`'s "Extra-Small (Tiny)" are the evidence) |

The class comes from the board set as in the IR4 page: 2 stays 2, set 6 is class 3, anything else is class 0 or 1, which are identical here. Q is `RM count x 5 x 2^22 / pixels`, with 2^27 for class 3 and half for class 2; pixels is `ceil(width / 160) x 160 x height` with the height unrounded.

The X server wraps the resolver in a static routine at `konad.so` 0x45b540 (objdump shows it as `konStereoImageText8+0x...`; the module's string table has the section name `.text.konResolveCombinationPixelDepth`, so that is **inferred** to be its name, and `setmon` has the same name). It builds a target from the pipe's board record (class from the board set, RM count, depth 0, two channels), calls the resolver on the combination and maps the result to the pipe's own depth code: 3 to 0, 4 to 1, 5 to 2, 6 to 3, 7 to 3, anything else to -1. Established, binary. So depth code 3 is Extra-Large on every class except 2, where it is "Extra-Small (Tiny)", matching `gfxinfo`.

### Worked cases

Arithmetic from the rule above (pixels use the 160-rounded width). IR3 is class 1, IR4 class 3. The Q column is words per pixel.

| Area | Pixels | IR3, 1 RM | IR3, 2 RM | IR3, 4 RM | IR4, any RM count |
|---|---|---|---|---|---|
| 1280x1024 | 1,310,720 | Medium (16) | Large (32) | Extra-Large (64) | Extra-Large (512 or more) |
| 1600x1200 | 1,920,000 | Small (10) | Medium (21) | Large (43) | Extra-Large |
| 1920x1080 | 2,073,600 | Small (10) | Medium (20) | Large (40) | Extra-Large |
| 1920x1200 | 2,304,000 | Small (9) | Medium (18) | Large (36) | Extra-Large (291 at 1 RM) |
| 2048x1120 | 2,329,600 | Small (9) | Medium (18) | Large (36) | Extra-Large |
| 3840x1024 | 3,932,160 | refused (5) | Small (10) | Medium (21) | Extra-Large |
| 4096x2048 | 8,519,680 | refused (2) | refused (4) | Small (9) | Extra-Large (78 at 1 RM) |

Capacity per RM in pixels: IR3 2,621,440 at Small, 1,310,720 at Medium, 655,360 at Large and 327,680 at Extra-Large; IR4 32 times each. The 1280x1024 row agrees with the published captures of a four-RM10 pipe (Extra-Large) and a one-RM10 pipe (Medium) (RE note `devices/rm/README.md`). Established (arithmetic and capture).

### Who may change the managed area, and the request the pipe gets

The combination loader (`konad.so` 0x502ed0, the combination callback; objdump labels it `konWriteFBSubBlock`) runs these steps for a combination whose two guard words are zero (the words at record offsets 1192 and 1196 of the loader's state; what sets them is unknown):

1. A combination wider or taller than the running X screen is refused with "combination %s too large for current X session (current=%dx%d new=%dx%d)" (0x504078-0x504104). A narrower or shorter one is promoted: the managed width and height are overwritten with the screen's and a warning is printed (0x504110-0x5041dc). Established, binary. The managed area of a session therefore never changes while the server runs; a bigger one needs a restart with a larger startup combination. The way the startup combination is chosen was not traced; **unknown**.
2. The wrapper above resolves the depth and compares it with the pipe's current depth code (screen private +24, read from the board record's pixel-depth word). A result of -1 is refused ("illegal pixel depth"). For a pipe that is not board set 2 (0x504470-0x5046b8), a resolved depth deeper than the current one is refused ("combo pixel depth %d too big for <current> pixels") and a shallower or equal one is accepted with "Warning: promoting pixel depth %d to <current>", and the loader's copy of `pixelDepth` is rewritten to the current depth. The depth is thus also fixed for the session. Established, binary.
3. A second check compares the screen's width and height and the resolved depth with the combination's, and refuses a mismatch with "combination %s wrong size for current managed area (current=%dx%dx%d new=%dx%dx%d)", the last number being `256 << depth code` (0x504800-0x5048e0). Established, binary; how this step and step 2's promotion interact when the resolved depth is shallower is **unknown** (the second resolve at 0x5047a8 reuses the same record).
4. The loader sends display request 8 with three words: the combination's managed width, managed height and the resolved depth code, 0 to 3 (0x504e30-0x504e68). `setmon`'s combination loader sends the same request with the same three words (0x10030458-0x10030494, with `vcVideoCmd` as the fallback sender at 0x100304b4). Established, binary. `ircombine` does not send it; it builds the combination and hands it to the server. No other sender was found in `konad.so`, `ircombine`, `setmon` or `gfxinit` (the `gfxinit` hit at 0x10017724 is the older board family's encoder set-up).

### What the pipe does with request 8

`DoDGRqstSetupFrameBuffer` (`arm1.u` 0x0c011128) is read in full here, with the code and thresholds the existing entries leave out. It stores `ceil(width / 160)` at display state +0x36b4, forms the pixel count, takes the RM count from display-bus register 0x10b, and computes r6 = Q. For board set 6 it takes `(RM count << 23) / pixels`, then multiplies by 80 (0x0c0112a4-0x0c0112b0); for other sets `5 x RM count x 2^22 / pixels` (0x0c0111a8-0x0c0111b4). The two forms are the same constant, but the IR4 form divides first, so Q only takes the values 0, 80, 160, ... On IR4 the firmware therefore counts 8,388,608 pixels per RM against the host's 10,485,760 for Extra-Large: an area of 4096x2048 on one RM resolves to Extra-Large in the host (Q = 78) but reads 0 in the firmware and draws the "not enough RMs" warning. Established, arithmetic; no shipped combination is near it.

The payload's third word selects the stored code at +0x36b8 (switch on word + 2 at 0x0c011214 and 0x0c0112e0):

| Word | Stored code, and the threshold on Q that avoids the warning (class other than 2) |
|---|---|
| 0 | 0 if Q >= 8 |
| 1 | 1 if Q >= 16 |
| 2 | 2 if Q >= 32 |
| 3 | 3 if Q >= 64 |
| -1 | 1 if Q >= 16, else 0; no warning |
| -2 | deepest: 3 if Q >= 64, 2 if Q >= 32, 1 if Q >= 16, else 0 |
| anything else | prints "illegal pixel depth %d, using DEEPEST", then as -2 |

Below its threshold the handler prints a "not enough RMs for SMALL pixels" style warning and sets bit 28 of the status word at 0x0406cd1c; it still stores the code. Established, binary. The X server never sends -1 or -2 (it refuses a negative resolve), so those two are the firmware's own cases and nothing shipped was found sending them; **unknown** whether anything does. For board set 2 Q is halved, a count above 2 RMs prints "detected %d RMs in HILO_LITE" and Q below 4 prints the "XSMALL" warning (0x0c0111c4-0x0c0111fc), and word 3 stores code 3 with a threshold of 4; the other words are not detailed here.

The handler ends by storing width, height and code as big-endian halfword pairs at state bytes 0x40 to 0x45. Readers found: `arm_x_init` (0x0c03d2c8) clears one rectangle per plane word at start-up, 8 for code 0, 16 for 1, 32 for 2 and 64 for 3, and prints "xinit() unknown pixel_depth = %d" and uses 8 for other codes (0x0c03d368-0x0c03d3dc), then sends width minus 1 and height minus 1 to the engines; `x_initregs` (0x0c03d0b8) writes the code, or-ed with 0x1fcc, to register 0x1c00; `dgConfigureVideoRequester` (0x0c00e324) loads the tile count (+0x36b4) and puts the code's low two bits into bits 6:5 of the video requester control register at 0x00600910 plus 0x400 per channel (0x0c00ee88-0x0c00ee98). Established, binary. The clear loop's counts, 8, 16, 32 and 64, are the same numbers as the thresholds on Q, so Small is 8 words (256 bits) and Extra-Large 64 (2048 bits) in both places.

### Limits, summarised

- The budget. Pixels (160-rounded width) must not exceed `RM count x 5 x 2^22 / 8` at the shallowest depth (2,621,440 per RM on IR3, 83,886,080 on IR4). With the default Deepest, a larger area refuses with "Illegal Pixel Depth or Managed Area * Pixel Depth exceeds %d RM capacity" (`konad.so` string at 0x591300, printed at 0x429190-0x4291c8 when the resolver returns 0). Established, binary.
- Session size and depth are fixed at server start (steps 1 and 2 above).
- Video bandwidth is checked per channel and does not depend on the RM count (RE note `devices/dg/README.md`). It limits the rate, not the framebuffer: 1920x1200 reaches 66 Hz on the two fast channels.
- The firmware stores width and height as 16-bit values (state bytes 0x40 to 0x45), so 65,535 is the largest value that survives that store. Established (storage); whether any field downstream is narrower is **unknown**. The width goes to the video requester as a tile count (6-bit and wider fields appear in 0x0c00e454 and 0x0c00ed58 but what each limits was not derived).
- Routes tried for an explicit cap: constant compares in the combination checker (0x429320-0x42ae8c) and the loader, the firmware handler above, and the `ircombine` clamp. None has one. A hardware cap, if any, is not derivable from these routes.

## 2. Depth, per-pixel storage and the visuals

### What the RM stores per pixel

A pixel is one record of N 32-bit words in the RM's image memories, N being 8, 16, 32 or 64 at most; a visual uses only what its buffers need and the rest stays free. The plane order and sizes (colour buffers, depth, 8-bit stencil, multisample colour, accumulation) are in RE note `devices/rm/README.md` (read from `arm_buffer_config`, `arm1.u` 0x0c0131a0). The facts used below:

- Colour with 12 or more bits per component takes one and a half words per buffer (48 bits), 10-bit colour one word, so a 12/12/12/12 pixel is 48 bits. Established, binary.
- Depth rounds up to a multiple of 8 bits first. One word without multisampling; with S samples S/2 words for 16 bits and 3S/4 for 24 or 32. Established, binary.
- Stencil of 8 bits takes max(1, S/4) words; accumulation takes 3 words (colour under 12 bits) or 4 (12 bits or more). Established, binary.

Applying that model to every visual row of each table gives a largest row of 7 words for the Small tables, 15 for Medium and 21 for Large (so one row of Large needs more than Medium's 16 and fits Large's 32). Both Small tables stay within 8, both Medium tables within 16: **inferred** support for the layout and for choosing the table by depth, since the rows were not written against these budgets by anything read. The model treats the rows' `Stereo` capability name as a stereo buffer pair, which is a guess; it does not change the maxima.

### The visual tables and how a depth picks one

`konInit` (`konad.so` 0x57b130) picks a `konVisualInfo_<set>` per board set (IR3 and IR4: `_imp8c`, see the IR4 page), then indexes it with the pipe's depth code times 40 (0x57b7d0-0x57b7ec) and refuses to start if the entry's visual count is 0. Established, binary. Each 40-byte entry holds, in order: visual count, visual table, per-visual private records, 0, number of depth records (9), depth table, size in bytes of the capability table, capability table, two zeros. Decoded from `konavis.so` `.data` (0x42e228 and 0x444ed0):

| Depth code | `_imp8` | `_imp8c` |
|---|---|---|
| 0 Small | 96 visuals, `konSmVisuals_imp8` | 105, `konSmVisuals_imp8c` |
| 1 Medium | 133 | 133 |
| 2 Large | 126, `konLgVisuals_imp8` | 126, `konLgVisuals_imp8c` |
| 3 Extra-Large | the same pointers as 2 | the same pointers as 2 |

So Large and Extra-Large export exactly the same visuals; Extra-Large only leaves more words free per pixel. Established, binary. Each visual is a 36-byte record (id, class, bits per RGB, colormap entries, planes, three masks, three more words), a 20-byte private record and a list of {capability name pointer, value} entries in the capability table (16 bytes each, the name through a dynamic relocation to `nmbx...String`). The number of capability lists equals the number of visuals in all six tables. Established, binary.

Reading the capability lists (class 4 is TrueColor, 3 PseudoColor, 5 DirectColor):

| Rows | Small | Medium | Large and Extra-Large |
|---|---|---|---|
| TrueColor 12/12/12/12 (24 planes) in `_imp8c` | 17 | 36 | 30 |
| TrueColor 12/12/12/12 in `_imp8` | 14 | 36 | 30 |
| TrueColor 10/10/10, no alpha (30 planes), either set | 27 (`_imp8c`), 25 (`_imp8`) | 50 | 49 |
| TrueColor 5/5/5/1 (15 planes) | 2 rows | 2 rows | 2 rows |
| 12-bit rows with 4 samples | none | 26 | 20 |
| 10-bit rows with 4 samples / with 8 samples | 10 / 1 | 23 / 20 | 22 / 20 |

Established, binary (counts), with the reading of the capability names as GLX attributes **inferred** as in [opengl.md](../../software/opengl/opengl.md#10-bit-visuals-in-the-x-server-tables). No row in any table has 8-bit components: the 24-plane TrueColor rows all report red, green, blue and alpha 12. GLX size requests are minimums, so an 8/8/8/8 request is expected to match a 12-bit row (**inferred** from the public GLX matching rule).

The 12-bit multisample rows carry a visual-caveat value of 0x800d, which is the published GLX non-conformant-visual constant (**inferred** meaning; the constant is from the public visual-rating extension). `_imp8` and `_imp8c` differ in the rows' limits: the deepest `_imp8` 12-bit rows have depth 23 with 1 or 8 stencil bits and accumulation components of 25 bits, the deepest `_imp8c` rows depth 31 with 1 stencil bit or 32 with 0 or 8, and accumulation components of 32 bits. Established, binary (table values); the width semantics are the tables' own.

### 12/12/12/12 with accumulation and stencil

Rows with 12-bit RGBA, accumulation, a stencil buffer, no stereo and no multisampling (`_imp8c`; `_imp8` is the same shape with depth 23):

| Table | Row | Buffers | Depth / stencil | Accumulation | Words (model) |
|---|---|---|---|---|---|
| Small | 67 | single | 31 / 1 | 32 | 7 |
| Medium | 52, 54 | single, double | 32 / 8 | 32 | 8, 9 |
| Large | 52, 53 | single, double | 32 / 8 | 32 | 8, 9 |

Established, binary, for the rows; the word counts are the **inferred** model above. So the first visual with 12/12/12/12 plus accumulation plus stencil and double buffering is in the Medium table, and a pipe at Small depth offers only a single-buffered one with a 1-bit stencil. For the Onyx 350 target (IR4, always Extra-Large at the shipped sizes) the whole Large table is exported, including the double-buffered 8-bit-stencil row.

### Selecting a depth: summary

The depth code comes from the budget rule at start-up, by way of the combination the server loads (default Deepest), is fixed for the session, and is stored by the pipe as the code at state +0x36b8 and in the board record's pixel-depth word, which `gfxinfo` prints as Small, Medium, Large or Extra-Large and `GetBoardInfo` prints as S, M, L or X in `GL_RENDERER` (RE note `software/userland/setup-tools.md`). How the board record's word takes the value of state +0x36b8 is **inferred** (the record is read back through the board-configuration request; the copy was not traced); the X server and `GetBoardInfo` both read the record's word, not the firmware state.

## 3. Histogram and minmax queries

The client side is in [libglcore-driver-functions.md](../../software/opengl/libglcore-driver-functions.md). What follows is the path and what the pipe holds, from `arm1.u`.

### Histogram

- Define: token 0x102 (`arm_histogram`, 0x0c03f8c4) stores target, width, sink flag, internal format and a base format, picks a table size of 0x100 to 0x1000 entries from the width, and clears the bins. `reset_histogram` (0x0c03f818) sends four `mgeb_EramIndirectFill` commands at engine external-memory address 0x2a8, with first operands 0, size, 2 x size and 3 x size, so the bins are four arrays of `size` words, one per colour channel. The client allocates 16 bytes per bin (`EramAlloc`, widths rounded to 256, 1024 or 4096), which agrees. Established, binary.
- Count: the pixel-path stage `mmo_Histogram` (GE module, parameters at control memory 0x174, `AddHistogram` 0x0c02fe2c) adds into those arrays as transfers pass; the count is a 32-bit word per bin and channel. **Inferred** from the 16 bytes per bin and the fill pattern; the GE program (`software/ucode/ge_listing/histogram.s.lst`) was not read for the count width.
- Read: token 0x104 (`arm_gethistogram`, 0x0c03f9a4) opens read-back, sends `mgesi_HistogramUpload` once per engine with the table size, a channel count and an alpha-only flag, and closes read-back. Each engine holds its own array, so the client's unpack loop adds each counter into its output element. **Inferred** (the per-engine send is established; that every engine's array is partial is the reading of the client loop).
- Reset after read: the client sends token 0x103 for target 0x8024 when its reset argument is nonzero. Established, binary.
- Parameters: token 0x105 replies through display register 0x476 with a count of one and a value: 0x8026 the width, 0x8027 the format, 0x8028 to 0x802c a fixed 0x20 (32-bit components), 0x802d the sink flag; any other name replies 0 with an invalid-enum error. The float form of the query is a stub in the firmware and nothing reaches it; the client converts the integer reply. Established, binary and RE note `arm1_functions.md`.
- Result for a fresh context: `InitHistogramState` clears the bins, so an unused histogram reads zero counts for every bin. Established, binary.

### Minmax

- Define: token 0x107 (`arm_minmax`, 0x0c03fc74) stores sink flag, format and base format in the record at pixel-block offset 0x550 (order sink, format, base, **inferred** from the parameter query below), then runs `reset_minmax`. Reset (`reset_minmax` 0x0c03fbe8, also token 0x108 for target 0x802e) copies an eight-word constant of four 1.0 and four 0.0 into engine control memory 0x183 and sends two `mgeb_EramIndirectFill` commands at external address 0x2a9, one filling four words with 1.0, one filling four with 0.0. Established, binary. The minima therefore start at 1.0 and the maxima at 0.0: **inferred** which group is which, since the fills write only those two values; the OpenGL minmax rule also starts the minimum at the top of the range and the maximum at the bottom.
- Read: token 0x109 (`arm_getminmax`, 0x0c03fcfc) replies through register 0x476 with the word at +8 of the minmax record, then for each engine writes address 0x183 and receives 8 words from the engine's control memory (one engine's minima and maxima, matching the client's "eight words apart" reading). A nonzero payload word then runs `reset_minmax`. Established, binary. The client takes the pair at each component's slot; with one sample (the usual case) nothing is combined.
- Parameters: token 0x10a (`arm_getminmaxparameteriv`, 0x0c03fd98): name 0x802f replies the record's format word, 0x8030 the sink flag, each with a count of one; other names reply 0 and an invalid-enum error. Established, binary. The client ignores the name and takes the word at +8 of the reply, so every name reads whichever value the firmware sent. Established, binary.
- Result for a fresh context: min 1.0 and max 0.0 for every component, not zero. A model that answers a minmax query with zeros before any data has passed is off from the firmware's seed. **Inferred** from the seed values, not from a pipe.

### Register path

Both queries use the generic read-back path: the client sends the token through the command FIFO, the ARM runs `start_rdata`, writes the reply count and words to display register 0x476 (`tbus_regwrite`), the per-engine words are pulled one engine at a time (for minmax: control-memory address 0x183, a count of 8 and the engine handler word at gepc +0x310 per engine), and `finish_rdata` ends it. The host reads a small reply through `__glkon_get_special`, and a histogram of 4093 words or more through the DMA-read driver request 10000. Established, binary, for the pipe side, and RE note `libglcore-get-functions.md` for the client side.

## Unknowns

- What sets the guard words at loader record offsets 1192 and 1196, and which combination the server loads first at start-up (so which managed area and depth a fresh session gets). Settled by tracing the callers of the loader and the startup path of `konInit` for the default combination.
- Whether the pipe's depth code (state +0x36b8) is copied into the board record the kernel returns, or the record's word has a separate source. Settled by reading the kernel's board-configuration reply handler against the firmware's reply writer.
- Any hardware limit on managed width or height above 65,535 or in the video requester's fields; the role of `pixelDepth` values 1 and 7 in the tools' menus; what, if anything, sends firmware depth words -1 and -2.
- The histogram count width and the exact word order of a minmax reply per engine: settled by reading `histogram.s` and `minmax.s` word by word against the upload handlers.
- The row-by-row mapping from capability names to the bits an IRIX application sees through GLX (stereo, caveats, transparent types): the table values are read, the application-level meaning is not.
- Whether `konad.so`'s depth and size path is identical in `kona.so` and `konal.so`; only `vfmtResolvePixelDepth` was compared there.
