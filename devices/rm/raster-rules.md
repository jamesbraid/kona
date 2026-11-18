# Raster rules: what shipped software and published sources fix

Scope: five questions an emulator author needs answered about InfiniteReality2 rasterisation (IRIX 6.5.30m, one pipe): whether the diagnostic's signatures can decide edge rules, how vertices snap to the sub-pixel grid, which edge owns a sample that lies exactly on it, what the guard band is, and how depth is clipped and stored. Everything here comes from shipped binaries (`irsaudit`, `arm1.u`, the geometry microcode and its diagnostic), the diagnostic's data files, and the published papers and reports in [references/documents/](../../references/documents/README.md). No hardware was used. No IRIX source was opened and no restricted library hit was seen; only the `retools` submodule was checked out.

The full per-stage table, covering colour, depth, stencil, alpha test, blend, fog, texture, lines, points, multisample and dither, is in [raster-reference.md](raster-reference.md); this page keeps the arguments for the first five questions.

Labels follow [AGENTS.md](../../AGENTS.md): **established** (read in full, with place), **inferred** (reasoning given) and **unknown**. "Software expectation" below means established as what the shipped software sends or expects, not proof of what the chip does. The chip-side parts of every rule are inside chips that have no program, so they can only be bounded.

## Answers at a glance

| # | Question | Answer | Grade |
|---|---|---|---|
| 1 | Can the gold signatures decide the rules? | Not with what is held. Register widths and the covered buses are known; polynomial, seed, gating and the bit order of the covered words are in silicon and appear in no software. | widths and buses established; polynomial unknown |
| 2 | 1/256 to 1/8 reduction | Truncate or round: unknown. The engine's own float-to-1/256 step rounds to nearest, ties to even. | reduction unknown; engine step inferred |
| 3 | Edge tie owner | No source states it. The only board-derived hint (the kernel's rectangle fill) favours right and top. | inferred, weak, coupled to the sample position |
| 4 | Guard band | Four factors in engine words 0x71-0x74, built by the viewport handler from four offsets the ARM firmware computes. The band reaches the edge of the padded window region, or is exactly the viewport. | arithmetic established; meaning inferred |
| 5 | Near and far clip, colour and depth rounding | Clip is single precision, exact planes, Sutherland-Hodgman. Depth store is a leading-ones floating word. Colour and depth rounding in the raster chips: unknown. | clip established; store layout established for the clear path; rounding unknown |

## 1. The CRC route

### What the signatures are

**Established.** `irsaudit` never computes a CRC. The chips keep running CRCs of the buses that pass through them; the diagnostic switches collection on (`jtcrc_enable_collection`, `initCRCreg` 0x1001ede4), runs a test, and reads each register out of the boundary-scan chain with `jtcrc_get_crc_32`, `_64` and `_128` (0x100350d4, 0x100353c0, 0x100356dc). `jtcrc_get_crc_128` was read in full: it copies a bit range out of the shifted-out chain image with `jt_copy_bits` and repacks the bytes into two 64-bit words. `compareCRC` compares those words with the gold files and `-writecrc` writes new gold files from hardware. No routine in the binary holds a polynomial, a seed or a feedback loop, so the arithmetic is not recoverable from software.

**Established (the registers).** `irsaudit` carries one table per chip family (`pg2b_crc_info` at 0x101fd3f0, `tg2_crc_info` 0x101fd450, `tm1c_crc_info` 0x101fd320, `imp9_crc_info` 0x101fd040, `imp8d_crc_info` 0x101fd140, `hip1_crc_info` 0x101fcfe0, `sys_crc_info` 0x101fcf30). Each entry is a name, a chip code, and the first and last bit of the register in that chip's scan chain, so each register's width is known. They are CRCs of pin buses, not of pixels:

| Chip | Registers (width in bits) |
|---|---|
| host interface | `sfci` 64, `mfci` 40, `mfci2` 8, `tbus` 64, `gc_ctrl` 24, `gd_data` 70 |
| pixel generator | `tbus` 64, `pgtg` 22, four pixel-generator-to-filter buses `tfp` `tfq` `tfr` `tfs` of 80 each |
| texture generator | `tbus` 64, `pgtg` 22, four filter buses of 33 each, two texture-memory buses `tm0` `tm1` of 75 each |
| texture memory | `tgtm` 75, four filter buses of 19 each, four DRAM data buses of 16 and four address buses of 15 |
| image processor (two flavours) | filter-to-processor data 16 each, display-bus data 8 each (the bytes that go on to the display), four 1-bit lines per filter, and the framebuffer DRAM data (16 or 32 bits) and address (12 or 15 bits) buses, one pair per DRAM |

The gold rows follow these tables one value per register: the pixel generator's row has six values (one 64-bit, one 22-bit, four 80-bit) and the texture generator's eight. The same 64-bit raster-bus CRC appears in the host-interface, back-end and texture-generator rows of one test; the pixel generator's own raster-bus value differs from it, and why is unknown.

**What that means for rules.** The pixel generator's four 80-bit buses carry its fragment words, one filter chip per pixel of a 2 x 2 block (the clear test gives four identical values, a drawn test four different ones). The image processor's DRAM data buses carry the stored pixel words. A signature therefore covers a stream whose word layout is chip-internal and unknown: fragment words, or stored colour, depth and coverage words in the framebuffer format. It does not cover a frame in scan order.

### Is the polynomial recoverable?

**Unknown, and not recoverable from software.** What is missing:

1. The feedback polynomial and tap positions, the seed, and the final transform, for every width (1, 8, 16, 19, 22, 32, 33, 40, 64, 70, 75, 80).
2. Which clock cycles are sampled (valid cycles only, or every cycle; one parallel update per bus word or a serial bit order inside it).
3. The word layout of every covered bus except the host-side raster bus, whose words the diagnostic writes itself.
4. For the pixel-level registers, how fragments, or stored pixels, map to the covered words. That layout is the thing the rules would be read from.

**What helps.** Established from the gold files: the raster-bus CRC of a test depends only on the stream. It is identical across the configuration tags that differ in geometry-engine count (g2, g4, g8) and in the last field (t16, t64, t256; the tag's meaning is not spelled out in the files) for the same test (`aaspoke`, `fog1` and `linesRus` compared). Tests whose stream is a shipped file give an exactly known input: `aaspoke.tbus` (1108 words) and the six vectors in `tbusdata.Z` (`tex2d_detail`, `samplemask`, `msalpha`, `linesRus`, `projtex`, `fog1`). Each line is a mode (1 to 3) and one 64-bit word, and the gold files hold a 64-bit raster-bus CRC for each. A first probe over `aaspoke` and `fog1`, with the standard 64-bit CRC polynomials in both bit orders, both seeds, with and without a final inversion, over all lines or only the mode-1 or mode 2 and 3 lines, found no match. That is a negative on a small family of guesses, not an exclusion: a different tap set, a different word order, mode bits in the stream, and setup words the test sends before the vector are all untested.

**Rating for the route as a whole: not feasible with what is held; possibly feasible for the 64-bit raster-bus register, and that register does not carry a rendering result.** Even if it were solved, it would identify the arithmetic for the raster-bus word stream only. The pixel-level registers would still need the layout in item 4, which would have to be inferred back from signatures.

### Which gold tests could separate the rules

Gold values exist (in `irsaudit.h.gold`, `.hl.gold`, `.k.gold.Z` and `.oh.gold`, per configuration tag) for: `clearfb`, `rm_crc_reg`, `rm_crc_tri`, `rm_crc_pgtest`, `rm_crc_pgtest1`, `rm_crc_imptest`, `rm_crc_imptest1`, `rm_crc_imptest2`, `aaspoke`, `fog`, `fog1`, `test_callig`, `linesRus`, `msalpha`, `samplemask`, `projtex`, `tex2d_detail`, `rndm_load1`, `rndm_draw1`, `RmStressL`, `RmStressD` and the texture and clip-map tests.

**Established (inputs read from code).** `crc_imptest1` (0x100d8b78) sends two triangles whose corners are whole pixels, (160, 80), (160, 160), (320, 160) and (160, 80), (320, 80), (320, 160), in a 32-iteration loop with a register write between iterations, all with colour zero. That is a rectangle drawn as two triangles with a shared diagonal. The outer edges lie on whole-pixel coordinates, so whether the left or the right column, and the top or bottom row, are lit decides the signature: it would separate right-and-top from left-and-top ownership for axis-aligned edges, if the sample sits on the integer corner (the question 3 coupling below). Diagonal ownership cannot show, because the two triangles share it and their union is the same either way. `draw_tri` (0x100cead8) always sends whole-pixel corners; the tests that use it (`TEST_rmvis`, `TEST_dquad`) have no fractional vertices.

**Inferred.** The second half of `crc_imptest1` and `draw_random_thing` (`rndm_draw1`, `RmStress`) send vertices built from `random` after `srandom(1)`, with colour masked to 13 bits, so they carry arbitrary 1/256 fractions and would separate every sub-pixel rule. Whether IRIX's `random` matches a known generator is unchecked. The vector files (`linesRus`, `projtex`) also hold fractional positions: a word decodes to x 1873.45, y 1997.86.

**Not read.** The coordinates of `fog`, `test_callig` (one vertex at 100, 100), `rm_crc_tri` and `rm_crc_pgtest*`, which go through helpers that were not traced here.

### What would settle it

1. Run a wider search for the 64-bit raster-bus register on the known streams: free polynomial, parallel or serial update, mode bits folded in, a setup prefix. The streams are known exactly, so any hit is checkable against the several tests that share the register. `rm_crc_reg` (inferred to be `TEST_rmcrcreg` from its name) should write only registers and so be the smallest stream; its exact input would be the diagnostic's own register-write sequence, which was not extracted.
2. If that gives the update rule, the same rule applied to the 16-bit filter-to-processor and 8-bit display-bus image-processor registers, with a model of what an image processor sees for a rectangle, could test `crc_imptest1`'s edge rule. That also needs a layout assumption.
3. Anything that names the polynomial: a patent or paper on the chips' built-in self-test, or a netlist or data file that names a feedback register. The scan-chain net maps (`usr/diags/IR/data/*.netmap.Z`) name the CRC pins only (for example `EXTRA_CRC_0` on the host interface), not the update logic.

## 2. Sub-pixel snap

Vertices reach the bus as unsigned 12.8 (established, `draw_tri`, `tbVertex` 0x1013ebcc, see [README.md](README.md)). The reduction to the 8 x 8 grid happens inside the pixel generator, which has no program.

**The engine's own step: nearest, ties to even (inferred, firmer than before).** The engine subtracts 49152.0 from window x and y; for values in that binade one float step is 1/256, so this subtract makes the 1/256 value (the existing command-table row). Which way it rounds depends on the engine adder's mode. The diagnostic has two adder tests that constrain it. The single-precision add of 1024.1024 and 2048.2048 (`ge_inst.s` line 3729) has an exact sum exactly half way between two floats, and the expected word is the even one, the lower. The double-precision add (line 3829) has an exact sum of 6 minus 2^-51, exactly half way between 6 minus 2^-50 and 6.0, and the expected result is 6.0, the even one and the upper. Read together: the single result excludes round-half-up and round-half-away, the double result excludes truncation, and round to nearest even is the only mode that fits both, assuming one rounding rule for both widths. The multiplier is separately established as round to nearest by its expected word (truncation gives a different last bit). A non-tie case for the adder is not in the test.

**The 1/256 to 1/8 reduction: unknown.** No software, paper or report states it. The technical report (section 7.7) says each primitive is "computed with 8 x 8 subpixel accuracy", which fixes the grid but not the rule. Routes tried: the geometry microcode (it never makes the fixed-point value), `arm1.u` (no vertex arithmetic), `irsaudit` (sends only whole pixels except in the random and vector streams), the OpenGL and Performer manuals (`subpixel vertex positioning` is a mode name), the SIGGRAPH 97 paper and the two technical reports (searched for subpixel, round, truncat and snap).

**Seed table, for later work: not a rounding fact, but related.** The reciprocal seed (a hardware table, 7 fraction bits) has four data points, two for the reciprocal and two for the reciprocal square root. For the reciprocal, both fit "one over the midpoint of the 7-bit interval, rounded to nearest in 7 bits" and fit neither truncation nor the interval ends. Two points per table do not fix a table; this is a hypothesis, not a fact.

## 3. Edge tie rule

**Unknown from every source read; one weak inference.**

- No paper, report, manual or microcode states which edge owns a sample on an edge. The published statements stop at "8 x 8 subpixel accuracy", direct plane-equation evaluation, and per-pixel sampling at one, four or eight locations. The OpenGL specification requires exactly-once ownership only (both emulators comply).
- The kernel's rectangle fill ([README.md](README.md#set-up-arithmetic-what-the-software-fixes)) decrements the left x and bottom y before it sends whole-pixel corners; that fits a board that drops the left column and bottom row, so it lights columns x1 + 1 to x2 and rows y1 + 1 to y2. That is **inferred**, weak, and favours right and top ownership under a sample at the integer corner. An equivalent reading puts the sample half a pixel down and to the left with no sample ever on an edge, and then the rectangle says nothing about ties. Which of the two is true depends on the sample position inside the pixel, which is also unknown: the multisample location registers are loaded with (0, 0), (2, 1), (6, 6), (7, 3) by the firmware and (0, 0), (1, 3), (3, 1), (2, 6) by the diagnostic, coordinates in eighths of a pixel, with no statement of the origin.
- The one signature that could separate them is `crc_imptest1`'s rectangle (section 1).

## 4. Guard band: engine words 0x71-0x74

**Established.** The four words are written once, by the viewport handler `mgeb_ViewPort` (`glmodes.S`, stores at 0xf431-0xf434). Every other read of them is in the clipping code: the second-chance retest after the divide (`uSecondChance` and its variants) and the post-clip flag recompute in `mPerTriClipFlagsFrustum`. The only immediate-addressed stores to them in the production listings are those four; a whole-block context load could also rewrite them, which was not traced. No start-up value was found. The retest computes, for each vertex, w times the factor minus x or y, and the sign of each result is a clip code. A vertex outside the frustum but inside that scaled bound needs no geometric clip: the raster scissor trims it ([ge_compute.md](../../software/ucode/ge_compute.md#perspective-divide-and-viewport-uscreen2s)).

**Established: where the values come from.** `resolve_viewport` (`arm1.u` 0x0c01872c, read in full) sends the handler eleven operands in this order: viewport x, y, width, height (each biased into the window region's coordinates), a limit, four offsets, and the window-relative origin x and y. The four offsets are what the handler turns into the factors (operands 5 to 8 are converted to float and multiplied by reciprocals of the width and height, which the handler computes with a seed and Newton steps; the pairing of operand to word follows the store order and is inferred).

The offsets and the limit take one of three forms:

- **Extended band.** The region edges are 0x800 minus the x bias (the high half of word 2 of the window set-up token, [command-table.md](../../formats/token/command-table.md#77-window-and-clip-set-up-request-token-0x1f3-eleven-words)) minus half the window width, and 4096 minus that, and the same in y with the height and y bias. The viewport must lie inside the region on all four sides, the viewport must contain the resolved scissor rectangle (its left and bottom at or before the scissor's, its right and top beyond the scissor's), and its width must be below 0x630 (1584). Then the limit is 0xfff, and each offset is twice the distance from the viewport's edge to the region edge plus the viewport's own extent, with the minus sign on the left and bottom. Divided by the width or height, as the handler does, that is the region edge measured in half viewport extents from the viewport centre.
- **No band.** If the viewport lies inside the region but fails the scissor test or is 1584 pixels wide or more, the limit stays 0xfff and the offsets are minus and plus the width, and minus and plus the height. The factors are then minus and plus 1.0, which is exactly the frustum: every vertex outside the frustum is clipped geometrically.
- **Viewport outside the region.** The limit is 0xc30 (3120). Each side keeps the "no band" value unless the viewport crosses that side of the region, in which case the offset is the smaller, signed extent to the region edge.

**Inferred: what the bias is.** The region is 4096 wide and centred on bus coordinate 2048; its half width is half the window width plus the bias. That is the shape of the kernel's padded window, window plus a margin on each side, sized so that the padded area stays under 8M pixels and 3840 by 2184 ([opengl.md](../../software/opengl/opengl.md#clips-the-validate-clip-resource-manager-request-1011), margin formula). If the bias is that margin, a 1280 x 1024 window with a full-window viewport has a margin of 872 and factors of about 2.36 in x and 2.70 in y, that is a guard band about 870 pixels past each edge, not several window widths. This is inferred from the shape of the arithmetic only: the token that carries the bias was not isolated in a recording.

**Not found: recorded values.** The KONA stream recordings in the evidence store hold the host's FIFO words as the model saw them. Words equal to 0x1f3 do appear there, but they are followed by other tokens' data, not by eleven window words, so they are not the window set-up token. The window clip reaches the pipe by another route (the kernel's clip request, inferred) that those recordings do not carry. The factor values for a real window were therefore not read.

**What it means for the emulators.** The guard band is a per-window, per-viewport quantity, not a constant. Without the kernel's margin the safe model is "no band" (factors of plus and minus 1.0, full geometric clip), which is the form the firmware itself chooses whenever the viewport does not contain the scissor.

## 5. Near and far clip, and colour and depth rounding

**Clip (established, in [ge_compute.md](../../software/ucode/ge_compute.md#z-clip-near-and-far-planes)).** The composite matrix gives clip z as (z - w) / 2, so the near test is z' = -w and the far test z' = 0. Both are real geometric cuts against the exact planes, computed by the engine in single precision: the signed distances are dot products, the crossing fraction t is a ratio from a hardware reciprocal seed and two Newton steps, and each attribute is v0 + t (v1 - v0). The window depth leaving the divide is passed through a minimum, which clamps from above only. Multiplies and subtracts are IEEE round to nearest bit for bit against the diagnostic's expected words. What is not bit-exact in any model: the seed (section 2).

**Depth range (established).** `mgeb_DepthRange` clamps near and far to [0, 1] and scales by 2^20 (offset) and 2^19 (scale); window depth leaves the engine as a float in [0, 2^20]. The bus carries 32 bits of depth, which the diagnostic fills with all ones; that depth word is sent as an integer by a float-to-fixed converter with no program (inferred; the converter's rule is unknown).

**Depth store (established for the clear path, unknown for rendering).** The published technical report gives a 23-bit floating depth, or 16 and 15 bits compressed. The firmware's depth-clear handler (`arm_cleardepth` 0x0c01465c, read in full) builds the stored word from the clear depth as a 32-bit fraction F = depth x 2^32 - 1 (all ones at 1.0 and above): a 4-bit count of leading one bits of F, at most 14, with the terminating zero dropped unless the count is 14, then the next mantissa bits, packed in one of two layouts. The conversion from a double truncates (a right shift). So a stored depth is a leading-ones count plus a mantissa, finer near 1.0 than near 0. The rule the raster chips use to round a rendered depth into this format is unknown: no program does it. Which size and compression the firmware selects per configuration, and why the QEMU page's 24-bit depth is not a hardware format, are in [raster-reference.md](raster-reference.md#the-depth-buffer-and-the-qemu-manual-page).

**Colour (established for width, unknown for rounding).** The engine scales a colour by 4095.9998 so that 1.0 gives 0xfff ([ge_compute.md](../../software/ucode/ge_compute.md), `mgeb_RGBA_Mode`), and the bus has four 13-bit colour fields, with 8191 as full intensity in the diagnostic. How the float becomes the 13-bit field, and how 13 bits become the stored colour, is unknown. The image-processor registers in section 1 include the framebuffer DRAM data buses, so a signature does cover stored colour and depth words, if it were decoded.

**Running the shipped microcode on clip cases: what it needs.** Our tooling has a disassembler for the production program ([ge_disasm.py](../../retools/tools/kona/ge_disasm.py), listings in [ge_listing/](../../software/ucode/ge_listing/)) and a decoded operation table, but no simulator. A bounded simulator for the vertex path would need:

1. Operand semantics for every operation the path uses. The diagnostic fixes most of them ([ge_ops.md](../../software/ucode/ge_ops.md)); open ones that matter here are flag-setting latency, the conditions `cc` 6, 7, 0xe and 0xf, double-precision flag timing, and the 18-bit address wrap.
2. The result-forwarding rules and the nine-word store delay ([ge_isa.md](../../software/ucode/ge_isa.md#operand-ports-and-result-forwarding)), which the listings depend on.
3. A model of the fixed hardware around the engine: the input and output FIFOs, the clip-code register (special register 0x0d, produced by hardware from the signs of the six distances), and the distributor. The sign-to-code step is not readable.
4. The reciprocal and reciprocal-square-root seed tables. Four data points are known; a clip result differs in its last bits where the table matters, so bit exactness cannot be claimed without the table.
5. The initial engine state: the context load, the viewport words, the matrices and the window words, which come from the ARM firmware's handlers.

Without item 4 a simulator can reproduce the structure and rounding of the clip and its near and far cuts to within a few units in the last place, not bit for bit. It was not started.

## Open items

Recorded in [questions/README.md](../../questions/README.md#raster-rules-open-items-2026-11-17).
