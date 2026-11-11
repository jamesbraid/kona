# Volume textures, detail and sharpen: eight questions settled from the firmware, the client and the diagnostics

Scope: InfiniteReality (KONA) texture state for 3D (volume) textures, the detail and sharpen magnification filters, and the filter-curve table. Everything here is read from shipped binaries, the diagnostic's stored raster-bus vectors, and published specifications, patents and papers. Nothing here is copied from vendor source. [command-table.md](../command-table.md) is not edited by this change; its other writer should take the rows under "Proposed rows" in each section.

Grades follow the table's convention: **established** (a binary or stored vector shows it directly), **inferred** (a consistent reading, a patent or a published specification says it), **unknown** (nothing shipped answers it). Every unknown names the test that would settle it.

Sources used (names as the command table uses them where it has one):

| Tag | Source |
|---|---|
| FW | pipe firmware `arm1.u` 6.5.30m, [ucode/arm1.s](../../ucode/arm1.s); addresses are firmware addresses (`0x0c......`) |
| CL | OpenGL client library `libGLcore.so` (64-bit build), [libglcore/asm/texture/kon_texture_api.s](../../libglcore/asm/texture/kon_texture_api.s); addresses are `0x0d......` |
| DG | the IR diagnostic `irsaudit`, disassembly of `usr/diags/IR/bin/irsaudit` (the local install, not tracked); addresses are `0x10......` |
| TV | the diagnostic's stored raster-bus vectors `tbusdata.Z`, blocks `tex2d_detail.tbus` and `projtex.tbus` (S61); line numbers are in the decompressed file |
| RM | [RM.h](../../RM.h), the register table read from the diagnostic tool `kpm` |
| SP-D | SGIS_detail_texture specification, revision 1.31 (1995-07-09) |
| SP-S | SGIS_sharpen_texture specification, revision 1.16 (1995-07-09); read only through a secondary summary, so used for the sign convention only |
| P-D, P-S, P-3 | US 5,471,572 (adding detail), US 5,438,654 (sharpening), US 5,490,240 (3D textures); [published-sources.md](../published-sources.md) sources 14, 13, 8 |
| TR | InfiniteReality Technical Report, section 7.8 (printed pages 23-26); [published-sources.md](../published-sources.md) source 2 |

## Answers at a glance

| # | Question | Answer | Grade |
|---|---|---|---|
| 1 | Detail (s, t) from base (s, t) and level; widths and rounding | Detail texel coordinate = base level-0 texel coordinate times 2^\|L\|, wrapped to the detail size, sampled bilinearly. Widths and rounding unknown | derivation inferred (specification, patent, register inputs); widths and rounding unknown |
| 2 | Mode-1 volume placement; single-level bank bit; mip parity bit | Slice r goes to pair member r & 1 (no per-slice bank register exists); the single-level bank bit is an allocation flag the diagnostic writes as 0; the mip parity bit is the absolute level parity, and equals the XOR form because the client always clears bind bit 28 for volumes | member rule inferred; bank-bit meaning inferred; mip parity established; address inside a member unknown |
| 3 | Two decodes of the curve table | They are one format. The table holds 64 ten-bit codes; mantissa is bits 9:2, exponent bits 1:0, value = m x 2^e / 128. The quantiser row is how the codes are made | established |
| 4 | Sharpen arithmetic | `out = A + K (B - A)`, K = -F, A the base-level linear sample, B the next coarser. No hardware-side evidence of widths or rounding; no sharpen vector exists | formula inferred; widths unknown |
| 5 | 0x1d5 mode-1 mismatch rule | It forces magnification code 1 for every mode-1 target-2 bind, whatever code the bind carried. The client sends mode 1 only for the detail table, so in practice only codes 3 and 4 reach it | rule established; client usage inferred |
| 6 | Magnification channel code 3 | Never sent by the client or the diagnostic. The register tool names it LOD0. Behaviour unknown | name established; behaviour unknown |
| 7 | Curve nodes; 3D filter; r-aware LOD; 0x17c scales | The pipe never receives nodes: the client evaluates a spline into 64 samples. Interpolation between samples in hardware unknown. 0x17c writes no LOD-scale or LOD-bound register | client side and 0x17c established; rest inferred or unknown |
| 8 | 2D and 3D enables both set | 3D wins (highest enabled and complete target), in the client and again in the firmware | established |

Two corrections to existing rows fall out of this work and are included below: the 0x177 token selects the active target, not a texture unit; and the bind control word's mode field (bits 27:24) has four values, each naming a filter-table kind, not two.

---

## 1. The detail combine: how detail (s, t) derive from base (s, t) and level

**Answer.** With base level-0 size 2^n by 2^m, detail size 2^N by 2^M and detail level L (L is 0 to -4), the detail sample position in detail texels is `u = s * 2^(n - L)`, `v = t * 2^(m - L)`, taken modulo the detail size after a half-texel offset, then sampled bilinearly. The detail image repeats regardless of the base wrap mode. The combine is `T' = T_base + F * (2 * T_detail - 1)` for ADD and `T' = T_base * (1 + F * (2 * T_detail - 1))` for MODULATE, clamped to [0, 1]; the pipe's curve is already doubled, so the hardware form is `T' = T_base + K * (T_detail - 1/2)` with K = 2F.

**Evidence.**
- SP-D (section 3.8.2.1, the arithmetic block) gives `u`, `v`, the modulo, the bilinear weights and both combine forms. It says a detail image with L = -2 is replicated to four times the base image in each axis.
- P-D (column 11-12) gives the same addressing as hardware: the least significant integer bits of the base texel address pick which section of the detail image, the fractional bits pick the texel inside it; the example is a 16 by 16 base, an 8 by 8 detail and two bits each way. That is a shift left by |L| of the base texel coordinate with wrap at the detail size.
- The register inputs the pipe has are exactly these: base size exponents (TGTM_TEX_SIZE 0x3fd5, bits 3:0 s, 7:4 t), detail size exponents (TGTM_DCTEX_SIZE 0x3fd6, bits 3:0 s, 7:4 t; written by the 0x17d handler at FW 0x0c025efc as w1 | w2 << 4), and the detail degree field of the texture-mode word (0x3fd4 bits 23:21, named DEG in RM, range 0 to 4). The diagnostic's detail test writes sizes 0x44 (16 by 16 base) and 0x33 (8 by 8 detail) and steps DEG through 0 to 4 for each of magnification codes 3 and 4 (TV tex2d_detail.tbus, 0x3fd4 values 0x030c0064 ... 0x038c0084, 0x3fd5 = 0x44, 0x3fd6 = 0x33).
- The client stores DEG as the negated public level: `__glKonTexParameter`, in its DETAIL_TEXTURE_LEVEL_SGIS (0x809a) case, negates the value and rejects results outside 0 to 4 and the 7.13 row records the stored value as -L.
- The doubling is in the table, not the combine: CL `bindTexTable` 0x0d9651c0 doubles the kind-1 samples (section 3).

**Grade.** Derivation: inferred (specification and patent agree, the register set has exactly the inputs the derivation needs, no shipped program computes it). Widths, rounding, the number of fraction bits kept after the shift, the clamp point (before or after the channel select), and the order of the bias subtraction: **unknown**. The diagnostic stores no expected pixels for the detail test (TV has stimulus only; the gold files carry running CRC signatures, which cannot be inverted).

**Proposed row** (replaces the "detail combine with the base" row in 7.14):

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| detail combine with the base | detail sample position in detail texels: u = s x 2^(n - L), v = t x 2^(m - L) with n, m the level-0 base exponents (0x3fd5 bits 3:0, 7:4) and L = -(0x3fd4 bits 23:21), then (u - 1/2), (v - 1/2) taken modulo the detail size (0x3fd6 bits 3:0, 7:4), bilinear. add: T + K x (D - 1/2); modulate: T x (1 + K x (D - 1/2)); K is the stored doubled curve (section 7.11), D the detail texel in [0, 1]; result clamped to [0, 1]. Channel routing by 0x3fd4 bits 27:26 (0 all, 1 colour, 2 alpha). Widths, rounding and clamp point unknown | derivation inferred; widths and rounding unknown | SP-D 3.8.2.1; US 5,471,572 col. 11-12; S60 (FW 0x0c025efc); S61 |

**The test that settles the unknowns** (needs a real pipe or a vector trace with pixel read-back; none is possible from shipped data): bind a 1 by 1 base with a mid-grey texel and a 2^N by 2^M detail image of alternating 0 and 255 columns, ADD mode, a one-point curve with F = 1/4 so K = 1/2, DEG = 4. Draw a quad whose s advances by 2^-12 per pixel across one detail period, read back the red channel along the row and count distinct output levels. The count is 2^f for f fraction bits in the bilinear weight; the position of the first change from one plateau to the next gives the fraction width of u after the shift. Rounding: choose D = 255 and K so the exact result sits at x.5 of the output LSB, and see whether the pipe rounds or truncates. Clamp point: use K large enough that T + K(D - 1/2) exceeds 1 for the colour channel while the alpha channel stays routed to the plain linear sample.

---

## 2. Mode-1 volume placement, the single-level bank bit, and the mip volume's parity bit

### 2a. Where a mode-1 volume's texels sit inside the address pair

**Answer.** The pair is written once per volume; slices differ only in the r start register. So the pipe must pick the pair member from the slice parity itself: slice r lives in member r & 1 (member 0 is the bank-0 address, member 1 the bank-1 address). Why the layout is built so: the layout mode's tile minimum for a single-level volume is (3, 2, 1), a tile of 8 by 4 texels and two slices, i.e. one slice per bank, so a trilinear fetch of slices r and r + 1 reads both banks. The address of a texel inside a member (how s, t and r >> 1 are combined) is hardware addressing and **unknown**.

**Evidence.**
- Client: `translateLodAddr` (CL 0x0d96e210, the layout-mode-1 and -3 case) makes the descriptor pair {texture-object word +0x114, +0x118}, the object's two bank base addresses, for every slice. The 3D texel sender `__glKonDrawTexels3D` loops over slices resetting the header fields and incrementing only the r start (header word 15) each time (kon_pixel `__glKonDrawTexels3D`, S25/S26 rows in 7.10).
- Diagnostic: `tbuLoad3D` (DG 0x101496d4) writes the load size (0x7fc1), the layout word (0x7fc5, layout mode 1 at 0x10149878), the pair once into the load-base register (0x5000 at 0x10149c54) and then, per slice, only 0x7fc2 and 0x7fc3 (r start = slice << 16, 0x10149e7c). No per-slice address or bank register is written (loop 0x10149d88-0x10149f40).
- The diagnostic does compute `pair[slice & 1]` per slice (0x10149ef4-0x10149f0c, `andi s6,1` then a load of obj+744+4*parity) and hands it to its texel helper at 0x1014a078, but the main texel path of that helper (0x1014a0c8-0x1014a164) streams words through `tbTexel` without using the address, so the address is host-side bookkeeping.
- The diagnostic's own 3D mip loader writes the level parity into 0x7fc5 bit 3 (section 2c); its single-level loader clears that bit (section 2b). So the two loaders treat the bit differently, which is consistent only if mode 1 gets its bank from r.

**Grade.** Member = r & 1: inferred (strong; negative evidence from the absence of per-slice bank writes, plus the tile minimum). Address inside a member: **unknown**. Tried and failed: the address-bits-per-page table (s and t bits only, no r), the board netlists (wiring only), the vectors (the projective test is 2D; no 3D block exists in tbusdata.Z).

**The test.** On a pipe, load a 16 by 8 by 4 volume in mode 1 with a unique 16-bit value at every texel (value = 256 r + 16 t + s mod 2^16 keeps them distinguishable), then read the same address pair back with the texel read-back token (0x0fd/0x052) as a 2D image in layout mode 0 with the page-layout byte set to (t bits 2, s bits 3), at member 0's address and then member 1's. Map the values back to (s, t, r). The result gives member by r parity and the within-member order, and repeating with the load-register bit 3 at 0 and 1 settles 2b too.

### 2b. The bank bit for a single-level volume ("bank state")

**Answer.** Header word 17 bit 3 is a flag the client fills with "the texture object's unit-order field equals zero" and the diagnostic fills with 0. It is not level parity, and bind word 2 bit 28 plays no part (the client clears it for volume layouts). Whether the pipe reads the bit at all in layout mode 1 is not shown; the client and the diagnostic disagree on its value and both load correctly, which says the pipe ignores it in mode 1 (**inferred**).

**Evidence.**
- Client: `subloadLevel` (CL 0x0d96bc80) builds the header word as `texel size | (var << 3) | (layout mode << 5) | address bits`, where `var` is (unit-order field == level & 1); layout mode 1 keeps it unchanged, so for level 0 it is (unit-order == 0). Layout mode 2 replaces it with the level parity (section 2c).
- Bind word 2 bit 28: `translateLodAddr` (CL 0x0d96e210) clears it (`& 0xEFFFFFFF`) in layout cases 1, 2 and 3 and sets it to (unit-order == 0) only in case 0 (the ordinary 2D layout).
- Diagnostic: `tbuLoad3D` clears 0x7fc5 bits 4:3 before loading (DG 0x10149c90-0x10149ca0, mask -25), so the bank flag is 0 for every slice of every volume it loads.

**Grade.** What the client and the diagnostic write: established. That the pipe ignores bit 3 in mode 1: inferred.

**The test.** The one in 2a, run twice with bit 3 = 0 and = 1 in the load register image; identical read-back means the bit is ignored in mode 1. A difference shows what it selects.

### 2c. The mip volume's parity bit: absolute, or XORed with bind word 2 bit 28

**Answer.** Absolute. Header word 17 bit 3 for level k of a mip-mapped volume (layout mode 2) is `k & 1`. The relative rule in the table (bit 28 XOR (k & 1)) gives the same value for volumes because bind word 2 bit 28 is always 0 for layout mode 2, so both models are right for every stream the client produces; a back end should use the absolute form.

**Evidence.**
- Client `subloadLevel` (CL 0x0d96bc80, the layout-mode-2 case): the descriptor pair is {table[k & ~1], table[(k & ~1) + 1]} and `var = k & 1`, with no reference to the unit-order field. `translateLodAddr` layout-mode-2 case clears bit 28 and rebases pair member 0 on the bank-0 base and member 1 on the bank-1 base (`+= base0 - table[0]`, `+= base1 - table[1]`, alternating).
- Diagnostic `tbuLoadMipmap3D` (DG 0x10148bec): per-level it writes 0x7fc5 bit 3 from a per-level field computed as `level index & 1` (`andi a4,a4,1` at DG 0x101494f4, stored at descriptor +136, read back at 0x10149214 and shifted into bits 4:3 at 0x10149228-0x10149234). The loader has no bind, so no bit 28.
- Firmware `set_3d_mipmap_addr` (FW 0x0c0254bc) writes each pair twice (registers 0x100c/0x100d from words 0 and 1, 0x100e/0x100f from words 2 and 3, and so on to 0x1014/0x1015 from words 8 and 9), i.e. pair k lands in both registers of its level pair; the hardware chooses the member by level parity.
- P-3 (column 11-12) gives the same split for mip 3D: the 16 texels of a trilinear-between-levels fetch come from eight banks with the level parity as one bank bit.

**Grade.** Established for the client and the diagnostic (two independent writers); the hardware's use of the bit is inferred from them.

**Proposed rows** (replace the "layout mode 2" and "layout mode 1" rows of 7.11 and add the third):

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| layout mode 2 (mip-mapped volume) | one pair of descriptor words per two levels: levels 2k and 2k + 1 share pair k, member 0 rebased on the bank-0 base and member 1 on the bank-1 base; header words 18 and 19 both carry it, and bit 3 of word 17 is the absolute level parity `k & 1` (the diagnostic's loader writes the same). Bind word 2 bit 28 is 0 for this layout, so `bit 28 XOR (k & 1)` gives the same value | established | S30; CL `subloadLevel` 0x0d96bc80, `translateLodAddr` 0x0d96e210; DG `tbuLoadMipmap3D` 0x10148bec; FW `set_3d_mipmap_addr` 0x0c0254bc |
| layout mode 1 (single-level volume) | a two-word table {bank-0 base, bank-1 base}; the pair is sent once and goes in words 18 and 19 for every slice; slices differ only in the r start (word 15). Slice r lives in pair member `r & 1` (no per-slice bank or address register exists; tile minimum r extent 2). Bit 3 of word 17 is an allocation flag (client: unit-order field == 0; diagnostic: 0), not level parity and not the slice bank; the pipe is inferred to ignore it in this mode | pair and slice rules established; member rule and ignored bit inferred; address inside a member unknown | S30; CL `subloadLevel`, `translateLodAddr`; DG `tbuLoad3D` 0x101496d4 |
| bind word 2 bit 28 for volume layouts | 0 for layout modes 1, 2 and 3; (unit-order field == 0) only for layout mode 0 | established | CL `translateLodAddr` 0x0d96e210 |

---

## 3. The two curve-table decodes: "spline form" against "detail and sharpen curve"

**Answer.** They are the same format; neither row is wrong about the number, but the "spline form" row misplaces the mantissa. The table is 64 ten-bit codes. Each code is an 8-bit two's-complement mantissa in bits 9:2 and a 2-bit exponent in bits 1:0; the value is `m x 2^e / 128`, range -8 to 7.9375. The "detail and sharpen curve" row describes how the client produces a code from a sample v (and how the doubling and negation are applied); the "spline form" row describes the code. A doubled 2.0 is mantissa 64 with exponent 2 (code 0x102); the quantiser is what chooses the exponent.

**Evidence.**
- `getS2p7` (CL 0x0d9650d0-0x0d965158): `n = trunc_toward_zero(v * 512.0 + 2.0) >> 2` (arithmetic shift), clamp n to [-0x400, 0x3ff]; if n fits in [-128, 127] the code is `(n & 0xff) << 2`; otherwise shift n right (arithmetic) and count e until it fits, and the code is `e | ((n & 0xff) << 2)`. The constants are 512.0 (float literal 0x44000000) and 2.0 (double literal 0x4000...).
- The packing in `bindTexTable` (CL 0x0d9651c0-0x0d965570): sample i in 4j..4j+3 of pair j gives word A = c0 | c1 << 10 | c2 << 20 | c3 << 30 and word B = c3 >> 2; the command is token 0x17e, the slot, then 33 words (32 used, the last unwritten padding). Kind 1 doubles each spline sample first, kind 2 negates it; samples are the spline evaluated at x_i = log2(i / 64) for i = 0..63.
- Firmware `sendTexTable` (FW 0x0c02539c): for kind 1 sends each of 16 word pairs to register 0x1810 + j as a 48-bit value (word A in bits 31:0, word B in bits 47:32), so register j holds codes 4j..4j+3 at bits 9:0, 19:10, 29:20, 39:30 (RM: TFT_DETAILTEX N0..N3).
- **Vector check (the decisive one).** The detail test writes 0x1810-0x181f 31 times with four distinct tables (TV tex2d_detail.tbus lines 658, 760, 828, 896). Decoded with the rule above the first table is exactly the default curve (points (-4, 1) and (0, 0), doubled): samples i = 0..4 are code 0x102 = 2.0 (the clamp below x = -4, where i = 4 is x = log2(4/64) = -4 exactly), i = 5 is code 0x1d5 (117 x 2 / 128 = 1.828; the exact doubled value 2 x 0.9195 = 1.839 gives 941.6 + 2 = 943.6 -> 943 -> 235 -> 117 with e = 1), i = 16 is 0x101 = 1.0 (x = -2), i = 32 is 0x100 = 0.5 (x = -1), i = 63 is 0x004 = 0.0078. The second table clamps at code 0x1ff = 7.9375 (the top of the range), the fourth is zero from i = 16 upward. All four decode to smooth monotone curves. A plain signed 8-bit mantissa over 128 could not hold the doubled 2.0 (256/128) that the first table starts with; the exponent is what makes it fit. Because of this the x_i = log2(i / 64) spacing is also confirmed from the hardware side, not only from the client.
- No 0x1800-0x180f write exists in tbusdata.Z, so the sharpen kind has no vector.

**Grade.** Established (client arithmetic, firmware transport, and four independent hardware-side tables that decode exactly).

**Proposed rows** (replace the "words 1-33, spline form" and "detail and sharpen curve" rows in 7.11 with these two):

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| words 1-33, curve tables (kinds 1 and 2: detail and sharpen) | 64 samples, 32 words used (word 33 unwritten padding). Each sample is a ten-bit code: bits 9:2 a signed 8-bit mantissa m, bits 1:0 an exponent e; value = m x 2^e / 128 (range -8 to 7.9375). Pair j (words 2j and 2j + 1, j = 0..15) holds samples 4j..4j+3: word A = c0 \| c1 << 10 \| c2 << 20 \| c3 << 30, word B = c3 >> 2. The pipe sends pair j to register 0x1810 + j (kind 1) or 0x1800 + j (kind 2) as a 48-bit value, so the hardware register holds the same four codes at bits 9:0, 19:10, 29:20, 39:30. Checked against four tables in the diagnostic's detail vectors, which decode to the default curve and three others | established | CL `getS2p7` 0x0d9650d0, `bindTexTable` 0x0d9651c0; FW `sendTexTable` 0x0c02539c; S61 (tex2d_detail.tbus, 0x1810-0x181f) |
| how the client makes a curve (0x17e, kinds 1 and 2) | sample i is the spline through the user's control points evaluated at x_i = log2(i / 64), clamped to the lowest and highest control point beyond them; kind 1 doubles it, kind 2 negates it; the code is made by n = trunc(v x 512 + 2) >> 2 (arithmetic shift), clamp to [-0x400, 0x3ff], shift right with e counting until n is in [-128, 127]. Rounding is therefore to nearest 1/128 with floor on negatives (-2.0 codes as 0x201, +2.0 as 0x102) and the step is 1/16 above 4 in magnitude. Default points (-4, 1) and (0, 0) | established | CL `getS2p7`, `bindTexTable`; S61 |

---

## 4. Sharpen arithmetic

**Answer.** The datapath form is `out = A + K x (B - A)` with A the linearly filtered base-level sample, B the linearly filtered sample of the next coarser level, and K = -F where F is the public sharpen function (positive; default points (-4, 1) and (0, 0)). That reproduces the specification's `(1 + F) x T0 - F x T1` exactly. K comes from the kind-2 table indexed by the level of detail, which is why the client negates the samples. The widths and rounding of the product and of the sum, and whether the result is clamped to [0, 1] before or after the channel select, are **unknown**.

**Evidence.**
- Sign and table: CL `bindTexTable` negates the kind-2 samples (the `temp_s3->unk0 == 2` loop); the bind sends kind 2 to registers 0x1800-0x180f (FW `sendTexTable`; RM TFT_EXTRAP). Range of K: -8 to 7.9375 (section 3).
- Formula: SP-S (via the project's summary of revision 1.16) defines `clamp((1 + F(lambda)) T0 - F(lambda) T1, 0, 1)`, which is `A + K (B - A)` with A = T0, B = T1, K = -F. P-S gives the same datapath (a subtracter, a multiplier and an adder shared with level blending) with K "not greater than zero" in its claims.
- Which two levels: the client allows sharpen only when the two finest levels are defined (`setSharpenFilter`, CL 0x0d966290, falls back to linear magnification, code 1, when they are not); P-S uses LOD[0] and LOD[1].

**Grade.** Formula: inferred (specification plus patent plus the host-side table behaviour). Widths and rounding: **unknown**. There is no sharpen stimulus in the diagnostic's stored vectors (no write to 0x1800-0x180f).

**Proposed row** (new row in 7.14, after the detail combine):

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| sharpen combine | out = A + K x (B - A), A the base-level linear sample, B the next coarser level's linear sample, K = -F(lambda) from the kind-2 curve (section 7.11), per selected channel set (0x3fd4 bits 27:26: 0 all, 1 colour, 2 alpha; the others keep the plain linear sample). Result clamped to [0, 1] per the public specification; widths, rounding and clamp point unknown | formula and sign inferred; widths unknown | CL `bindTexTable`, `setSharpenFilter`; FW `sendTexTable`; SP-S; US 5,438,654 |

**The test.** Build a base level with every texel 128 and a level 1 with every texel 64, so out = 128 + 64 F with K = -F. Draw it magnified with the sharpen filter and a one-point curve, repeating for F from 1/128 upward in steps of 1/128 and reading the red byte. The F at which the output first changes by one LSB gives the product width; values that fall exactly on x.5 of an output LSB give the rounding rule; F = 7.9375 against a curve value just above it shows the top of the range. Swapping the two levels (base 64, level 1 128) gives out = 64 - 64 F and exercises the clamp at 0.

---

## 5. The 0x1d5 mode-1 rule: which magnification codes does a mismatched format row force to linear

**Answer.** All of them. For a bind with target index 2 (2D) and bind mode 1, if the bind's format row (word 1 bits 23:12) differs from word 3 of the last 0x17d, the firmware replaces bits 7:5 of the stored texture-mode word with 1, whatever they held (nearest, linear, detail add or modulate, sharpen). Mode 1 binds with any other target (1D, 3D, the detail target 0) skip the whole block and keep their code. In practice the client sends mode 1 only for the detail filters, so only codes 3 and 4 are rewritten by a working driver.

**Evidence.**
- Firmware `arm_bind_texture` (FW 0x0c0256c8): the mode field is `(word 1 >> 24) & 0xf`, stored at state offset 0x898 (FW 0x0c025888-0x0c02588c). Mode 1 at FW 0x0c0258e0: `teq r5,#2; bne 0x0c025980` (target must be 2D); then at 0x0c0258e8-0x0c0258f4 `ldr r1,[r4,#0x14]` (the detail format row 0x8a4), `teq r6,r1` and, on a mismatch, `bicne r0,r7,#0xe0; orrne r7,r0,#0x20` with no test of the old bits 7:5, then branch to the common send at 0x0c025980.
- On a match (FW 0x0c0258fc-0x0c025948) the handler marks the kind-0 slot invalid, sends the kind-1 table through `sendTexTable` when the slot changed, and writes register 0x1019 with the pair member chosen by bit 28 of the stored mode word.
- Mode 0 (FW 0x0c025954) sends the kind-0 table (bicubic, 0x1820-0x1840) and mode 2 (FW 0x0c0258a0-0x0c0258d8, call at 0x0c02597c) sends the kind-2 table (sharpen, 0x1800), except a mode-2 bind of target 3 with sampling mode 1 (non-mip 3D), which sends none. Mode 3 is the 0x106 form and sends nothing. So the four bind modes are the four table choices: 0 bicubic, 1 detail, 2 sharpen, 3 none. This is the correction to the 7.13 row, which has only "3 = linear form, 1 = a form that sends the filter table through a special raster register".
- Client: `changeFilter` (CL 0x0d9668c0) stores the mode in the object (`sw s2,16($s0)`) and in bind control bits 27:24; it assigns 2D objects mode 1 on the path reached only by the detail filters (CL 0x0d966ff0), sends mode 3 for nearest and plain linear magnification, mode 2 on the sharpen path. The client creates a kind-1 table only for 2D objects (`initTexture`, CL 0x0d96a8d0: 2D gets kinds 1, 2 and 0; 1D gets 2 and 0; 3D gets 2), which matches the firmware's 2D-only mode-1 block. The mode mapping above is read from a partial trace of a 4900-byte function, so the client usage is inferred.

**Grade.** The firmware rule: established. Client usage (mode 1 only with codes 3 and 4): inferred.

**Proposed rows** (replace the 0x1d5 row in 7.13 and add a mode row under word 1):

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| 0x1d5 bind word 1 bits 27:24 (mode) | 0 bicubic: send the kind-0 table (registers 0x1820-0x1840) when the slot changed, except target 3; 1 detail: see the next row; 2 sharpen: send the kind-2 table (0x1800-0x180f) when the slot changed, except target 3 with sampling mode 1; 3 none (the form 0x106 sends instead of 0x1d5, and sends no table); the mode is also stored at 0x898 | established | S60 (FW 0x0c0258a0-0x0c02597c) |
| 0x1d5 mode-1 base bind (target 2), detail interaction | compares its format row (word 1 bits 23:12) with word 3 of the last 0x17d (initially -1). On a mismatch it replaces bits 7:5 of word 2 with 1 (linear magnification) for every code they held (0 nearest, 1 linear, 3 and 4 detail, 5 sharpen included), sends nothing else and does not write 0x1019. On a match it sends the kind-1 table when the slot changed and writes register 0x1019. Mode 1 on any target other than 2 does neither. A working client sends mode 1 only for the detail filters | rule established; client usage inferred | S60 (FW 0x0c0258e0-0x0c025948, 0x0c0256c8); CL `changeFilter` 0x0d9668c0 |

---

## 6. Magnification channel code 3 ("level 0")

**Answer.** The register tool names value 3 of texture-mode bits 27:26 `LOD0` (field MC, with ALL = 0, COLOR = 1, ALPHA = 2). No shipped program ever writes 3 to it: the client's two filter setters clear the field with mask 0xF3FFFFFF and set only 0, 1 or 2 (detail: LINEAR_DETAIL 0x8097 -> 0, ALPHA 0x8098 -> 2, COLOR 0x8099 -> 1; sharpen: 0x80ad -> 0, 0x80ae -> 2, 0x80af -> 1), the diagnostic's detail test writes only 0, 1 and 2 (TV: all 95 texture-mode writes in the six blocks), and the firmware only passes the word through. What the pipe does with 3 is **unknown**; "applies to level 0 only" is a reading of the name, not of behaviour.

**Evidence.** RM raster-register table (kpm `raster_registers.tsv`, record at 0x101484a0: MC value 3 named LOD0); CL `setDetailFilter` 0x0d966190 and `setSharpenFilter` 0x0d966290; DG `tbuBindTexture` 0x1014c6a8 (copies a descriptor field into bits 27:26 without a restriction, DG 0x1014d2a4-0x1014d2c0, so the diagnostic could write 3 but the stored vectors never do); TV `tex2d_detail.tbus` (value histogram of 0x3fd4: MC in {0, 1, 2}).

**Grade.** Name established; behaviour unknown.

**Proposed row** (amend the "27:26 magnification channels" text in the word-2 row of 7.13 to end: "3 is named LOD0 in the register tool; no shipped program writes it and its effect is unknown").

**The test.** Run the detail test pattern (section 1) with MC = 3 against MC = 0 on a pipe, at DEG = 0 and DEG = 4, with a curve of constant F, and compare the output to the all-channel result. If MC = 3 changes nothing, the field aliases ALL; if the detail contribution appears only where the fragment's level of detail is 0 (that is, only when exactly one base texel covers one pixel), it is a level-0 restriction.

---

## 7. Curve nodes, the 3D filter and mip arithmetic, the r-aware LOD rule, and the 0x17c LOD scales

### 7a. Does the hardware interpolate between curve nodes?

**Answer.** The hardware never sees nodes. The client fits a cubic spline through the user's control points and evaluates it at the 64 fixed positions (section 3), and the pipe forwards those 64 codes. Whether the hardware blends two adjacent table entries by the fraction of its index, or takes the nearest one, is **unknown**. The table is indexed by the scale 2^lambda in 64 steps (entry i is the value at 2^lambda = i / 64, confirmed by the vectors), and spans exactly the magnification range lambda < 0; the last entry is reached at 2^lambda = 63/64, so the table stops short of lambda = 0 and the position lambda = 0 is not representable as an entry.

**Evidence.** CL `bindTexTable` calls the cubic-spline fit and evaluate helpers with the log table; FW `sendTexTable` copies the 64 codes verbatim; TV tables decode to the exact doubled curve at the 64 abscissae (section 3); no program writes a node count, an abscissa or a slope to the pipe.

**Grade.** Client-side spline and fixed abscissae: established. Hardware interpolation between entries: **unknown**.

**Test.** Draw a magnified quad with the detail combine (section 1) on a constant detail value D = 255, base 0, with a curve whose entries differ by one code step (for example the straight line from (-4, 0) to (0, 1)), and a texture coordinate gradient that runs lambda from -4 to -0.02 over at least 2048 pixels. Read the red channel along the line. Exactly 64 plateaus means no interpolation between entries; a staircase finer than 64 steps (up to every code change) means interpolation, and the count and position of the sub-steps give its fraction width.

### 7b. The 3D filter and mip arithmetic

**Answer.** A non-mip-mapped volume uses trilinear interpolation (eight texels, full rate); a mip-mapped volume uses quadlinear (sixteen texels, half rate): two groups of eight, one from the finer level and one from the coarser, blended by the level fraction. Texel data come from a 2-bank layout in which the slice or level parity picks the bank. Widths and rounding of the weights are **unknown**.

**Evidence.** TR (the filter list before "Global Texturing", printed pages 23-24): quadlinear for 3D mip-maps and bicubic run at half the rate of the others, trilinear non-mip 3D at full rate. P-3 (column 11-12): non-mip 3D reads eight texels from eight banks by (s, t, u) parity and mip 3D reads two groups of eight by (s, t, level) parity, the level blend linear in the level fraction (equation 37). Firmware: sampling mode field 1 = 3D, 2 = 3D mip-mapped in the texture-mode word; the 3D mip bind writes five pairs and a LOD-scale word, the non-mip bind writes none (7c).

**Grade.** Filter shape: inferred (report and patent). Weights, rounding, bank mapping inside the 2-bank pipe: unknown.

**Test.** Weights and rounding: make a two-slice non-mip volume with every texel 0 in slice 0 and 255 in slice 1 (one channel), and draw a quad whose r coordinate ramps across the slice gap over at least 2048 pixels. Count the plateaus on the red line: N distinct output codes between 0 and 255 means a weight of about log2(N) fraction bits, and the codes at the plateau edges show truncation against rounding. Repeat along s and t to compare the in-slice weights. Bank mapping: fill only the even slices (or levels) with a marked value and read back at integer coordinates of both parities; a swapped or merged pair shows as the marker in the wrong bank's lanes. The level blend of a mip volume is the same ramp across two levels.

### 7c. The r-aware LOD rule and the LOD scales for the single-level 0x17c record

**Answer for the scales.** The 0x17c handler (FW 0x0c025e6c) reads two words (layout pair and physical sizes) and writes only two raster registers: 0x1000 (TM_MEMCONF) and 0x13d5 (TGTM_TEX_SIZE), plus the address pair. It writes none of TG_MAP_LEVEL (0x0c04), TG_LOD_SCALEST (0x0c05) or TG_LOD_SCALER (0x0c06), which the mip-mapped bind 0x17b does write (FW 0x0c025d40-0x0c025d78: word 1 to 0x0c05, word 1 >> 16 to 0x0c06, word 2 to 0x0c04). So a single-level volume is sampled with whatever the three registers held: the values of the previous bind that wrote them, or the reset value. The diagnostic restores 0 for all three (`tbuRegReset`, RM); the diagnostic's detail test writes 0x101010 to 0x0c05 (all three scales 16/16 = 1.0) and 0x10000 to 0x0c04 (minimum 0, maximum field 64, i.e. level 0) before each draw (TV tex2d_detail.tbus, 87 writes each). What the pipe does when the scale registers are zero is not shown. **Established** (the handler's writes); the effect of stale scales: inferred.

**Answer for the r-aware rule.** The existence of a separate r scale register (0x0c06, 8 bits, same 16 x 2^bias encoding as s and t, written only by the 3D mip bind) says the level of detail of a volume fetch includes the r derivative scaled by it. P-3 gives the form: the level of detail is the maximum of the six absolute differences over a pixel step in x and in y of S, T and U (after the per-axis scales). Which of the six or how they are combined, and the arithmetic widths, are **unknown**; this patent predates the shipped pipe.

**Grade.** Register set and handler writes: established. LOD form: inferred (patent). Everything numeric: unknown.

**Test (LOD combination).** Bind a mip-mapped volume whose levels hold distinct constants and draw a minified quad three times with the same scale registers: once with only the s derivative nonzero, once with only t, once with only r (a view along the volume's third axis). Which level constant shows up for each, and then for two derivatives nonzero at once, tells whether the rule is a maximum or a sum and which of the six pixel-step differences count. Repeat with the r scale (0x0c06) at 16 and 32 for the r-only view: if the selected level moves by one, the r scale enters the rule as the s and t scales do.

**Proposed rows** (replace the 0x17c row of 7.13 and the 3D filter text; new row for 7.14):

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| 0x17c, non-mip-mapped volume, 4 words | word 0 layout pair, word 1 physical sizes, words 2-3 the one descriptor pair. The handler writes only TM_MEMCONF (0x1000), TGTM_TEX_SIZE (0x13d5) and the address pair, and never TG_MAP_LEVEL (0x0c04), TG_LOD_SCALEST (0x0c05) or TG_LOD_SCALER (0x0c06): a 0x17c draw uses the values the previous bind left in those registers (or the reset value). The 0x17b record writes them (word 1 to 0x0c05, word 1 >> 16 to 0x0c06, word 2 to 0x0c04) | established for the writes; effect of stale values inferred | S60 (FW 0x0c025e6c, 0x0c025ccc, 0x0c025d40-0x0c025d78); RM |
| 3D filtering and level of detail | non-mip volume: trilinear (8 texels, full rate); mip volume: quadlinear (16 texels in two groups of 8, half rate). Level of detail for volumes includes the r axis through the r scale register (0x0c06); the form is the maximum of the absolute screen-space differences of s, t and r after their scales (patent). Weight widths, rounding and the combination rule unknown | filter shape and LOD form inferred; arithmetic unknown | TR 7.8; US 5,490,240 col. 5-12; FW 0x0c025ccc |

**Test (stale scales).** Bind a mip-mapped volume with LOD scales 0x20 (factor 2.0) and draw it; bind a non-mip volume (token 0x17c) and draw it minified by a factor of two with a linear min and magnification filter; compare the transition between the minification and magnification filters (their switch is at lambda = 0, so a scale of 2.0 moves it) to a run after a reset. If the switch moves with the previous scale, the registers are stale as read. **Test (r term):** draw a polygon whose texture coordinate varies only in r, with an r scale of 0x10 and then 0x20, and see whether the minification filter engages in the first case and not the second.

---

## 8. 2D and 3D texture enables both set: which target wins

**Answer.** 3D. The client computes the active target as the highest-numbered dimension that is both enabled and holds a complete texture (3D, then 2D, then 1D) and sends it with token 0x177. The firmware enforces the same priority independently: a bind for a target below the current one is dropped, and a bind for a higher one is adopted only if that dimension's enable byte is set.

**Evidence.**
- Client `computeActiveTarget` (CL 0x0d965160): a loop from 3 down to 1 testing `enable bit (1 << t)` of the context and the "complete" flag 0x01000000 in the texture object; the first hit is stored and sent as `0x177, t`; a result of 0 is sent when none qualifies.
- Firmware `arm_active_texture` (FW 0x0c025204) stores the value at state offset 0x890 (the current target) and sends port 0x47c all-ones when nonzero. In `arm_bind_texture` (FW 0x0c025760-0x0c0257cc): if the bind's target (bits 31:28) equals the current one it proceeds; if it is greater, the matching enable byte at state offset 0x76e (1D), 0x76f (2D) or 0x770 (3D) must be nonzero, in which case 0x890 takes the new target; otherwise, or if it is smaller, the handler writes 0x4f8, drains the remaining payload words and returns without binding. The bicubic bind (0x0c025da8), the 3D binds (0x0c025ccc, 0x0c025e6c) and the linear bind (0x0c0259ac) have the same structure. The enable tokens (FW `e_texture_1d/2d/3d`, 0x0c024c60, 0x0c024cb0, 0x0c024d00) set one byte each at 0x76e-0x770, and the disables clear the byte and write zero to port 0x47c only when all three are clear.

**Grade.** Established (two independent implementations, and the public rule agrees).

**Proposed rows** (replace the "texture enables" and "0x177" rows in 7.14):

| Item | Layout | Grade | Evidence |
|---|---|---|---|
| 0x177 select the active target | 1 word: the active target, 0 none, 1 1D, 2 2D, 3 3D (not a texture unit). The client sends the highest dimension that is enabled and has a complete texture (3D before 2D before 1D). The firmware stores it as the current target (state offset 0x890); a later bind is applied only if its target equals the current one, or is higher and its enable byte is set (and then becomes the current target); a bind for a lower target is dropped with its payload | established | S27; CL `computeActiveTarget` 0x0d965160; FW `arm_active_texture` 0x0c025204, `arm_bind_texture` 0x0c025760-0x0c0257cc |
| texture enables | 1D, 2D and 3D texturing each set a byte at state offsets 0x76e, 0x76f, 0x770 and write all ones to port 0x47c; a disable clears its byte and writes zero only when all three are clear. With more than one enabled and complete, 3D wins over 2D over 1D | established | S27; FW 0x0c024c60-0x0c024d20 |

---

## What stays unknown, and the single test for each

| Unknown | Test (section) |
|---|---|
| detail coordinate and weight widths, rounding, clamp point | fraction-width and rounding scan with a 1 by 1 base and a 0/255 detail image (1) |
| address inside a pair member for mode-1 volumes; whether member is `r & 1` | unique-value volume and 2D read-back at both members (2a) |
| whether mode 1 ignores load bit 3 | the 2a test at bit 3 = 0 and = 1 (2b) |
| sharpen product width, rounding, clamp point | one-point-curve scan with base 128 and level-1 64 (4) |
| effect of magnification channel code 3 | detail pattern at MC = 3 against MC = 0 (6) |
| interpolation between curve entries | 64-plateau count on a lambda ramp (7a) |
| 3D weights, rounding, r-term combination, stale LOD scales | see 7c |

None of these can be settled from shipped software, the stored vectors or the published sources; each needs pixels from a running pipe or a vector trace with read-back.
