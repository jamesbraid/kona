# Fog, polygon mode, edge flags and smoothing coverage

What the pipe firmware (IRIX 6.5.30m, `arm1.u`, `ge.u`) settles about the fog setters, the fog factor, the polygon-mode token, edge flags, polygon offset in line and point modes, smoothing coverage and the point handler a multisampled window uses. Every fact carries a grade: **established** (read from a binary at the stated address), **inferred** (reasoned, reasoning given) or **unknown** (with what would settle it). Host-side C is never quoted; the host-software fog routines are used only as a reference for the standard fog functions.

Sources read: `software/ucode/arm1.s` (ARM image, addresses `0x0c......`), `software/ucode/arm1_functions.md`, the engine listings in `software/ucode/ge_listing/` (`fog`, `polymode`, `polygon`, `drawtri`, `glExt`, `line`, `point`, `drawpnt`, `aa`, `udecompose`, `mdecompose2` listings; engine addresses are 16-bit instruction addresses of `ge.u`), `devices/ge/ge-shadow-words.md`, `devices/rm/README.md` and the libGLcore client senders already read in `software/opengl/libglcore-driver-builds.md`. The proposed rows at the end are for the owner of `formats/token/command-table.md` to merge; this file does not edit that table.

## 1. Fog setters, tokens 0x0b7 and 0x0b8

### Word layout

| Fact | Grade | Evidence |
|---|---|---|
| Token 0x0b7 is routed (command 129, five words after the token) to the engine fog-parameter handler (`mgeb_Fogf`, ge 0x6fb2). Word 0 is the parameter name; words 1-4 are value operands. Scalar parameters read only word 1; the colour reads words 1-4 (R, G, B, A); the offset extension reads words 1-4. | established | `software/ucode/icu_map.tsv` 0x0b7; ge 0x6fb5-0x6fcf (name compared against seven constants), 0x6fd8 onward (word 1 reads, `D=1`), 0x708b-0x708e (four reads `D=1..4`), 0x70ff-0x7105 (four reads for the offset) |
| The seven accepted names are 0xb61 (index), 0xb62 (density), 0xb63 (start), 0xb64 (end), 0xb65 (mode), 0xb66 (colour) and 0x8199 (offset extension). The engine keeps them in engine memory: mode 0x9de, density 0x9df, start 0x9e0, end 0x9e1, colour 0x9e2-0x9e5, index 0x9e6, offset 0x9e7-0x9ea. | established | ge 0x6fb6-0x6fbc (the seven constants), stores at 0x6ff1 (0x9e0), 0x700f (0x9e1), 0x707c (0x9df), 0x709d-0x70a3 (0x9e2-0x9e5), 0x70e7 (0x9e6), 0x7108-0x710e (0x9e7-0x9ea); `software/ucode/arm1_functions.md` `initFogState`; the client reply rows 0xb61-0xb66 in the query table read the same words |
| Token 0x0b8 (integer form) is the same parameter set. The token itself is command 128 with one word after it and the chain bit set; the chained entry 0x0b9 carries the other four words as command 2, whose handler (`mgeb_Fogi`, ge 0x6fa5) stores a one-word marker at engine word 0xa35 and branches into the float handler. The float handler reads the marker at 0x6fb3 and clears it at 0x6fc8. | established for the routing and the marker's store, read and clear; inferred that the marker means "this call came in integer form" | `software/ucode/hw_route.tsv` 0x0b8, 0x0b9; ge 0x6fa5-0x6fae, 0x6fb3, 0x6fc8; the marker is written from register 0x1f, which reads as 1.0 (`software/ucode/ge_compute.md`, many sites) |
| The client sends the integer form as token, name, the integer, then three zero words, without scaling; for the vector form it sends name and four words. The float scalar form accepts names 0xb61-0xb65 only, so the colour and the offset reach the pipe only through the vector form. | established | `software/opengl/libglcore-driver-builds.md` (`__glkonim_Fogi`, `__glkonim_Fogf`, `__glkonim_Fogfv`, `__glkonim_Fogiv`, `__glkonlc_*`) |

How the name word reaches the engine on the integer path (token 0x0b8 is routed to a different handler than the one that reads the name) is **unknown**. What would settle it: the distributor program's pass-through rule for a chained entry (`software/ucode/ged.md`), or a capture of the raster-bus writes after a vector integer call.

### Colour mapping

| Fact | Grade | Evidence |
|---|---|---|
| Float form: each of the four components is multiplied by register 0x1f (1.0) and clamped to [0, 1] (the unit-1 clamp, code 0x7c), then stored as float at 0x9e2-0x9e5. | established for the multiply and clamp; the scale being exactly 1.0 is inferred from register 0x1f reading as 1.0 elsewhere | ge 0x7083 (conditional move of register 0x1f into the scale register), 0x708b-0x708e (multiplies), 0x708f-0x7093 (clamps), 0x7094-0x709a (stores) |
| Integer form: the scale register instead gets the constant 0x30000000, the float 2^-31. Read as a value mapping this is `c = i / 2^31` clamped to [0, 1]: negative integers give 0, 2^31 - 1 gives 0.9999999995. The standard mapping `(2i + 1) / (2^32 - 1)` differs from it by at most 2^-32, below the 12-bit quantisation in the next row. | scale constant and the choice by marker: established; the mapping: inferred, because the step that turns the raw integer bits into a float before the multiply is not visible | ge 0x7081-0x7083 (constant load and conditional selection after the marker test at 0x7080) |
| The colour reaches the hardware as three 12-bit fields: red and green in the 24-bit register 0x1404 (mask 0xffffff), blue in 0x1414 (mask 0xfff). Alpha stays in engine memory (0x9e5) for queries and is not sent. | established for registers, masks and the three-component write; the field order (green 11:0, red 23:12) from the shadow-word reading in `devices/ge/ge-shadow-words.md`: inferred | ge 0x70a2-0x70be (masks 0xffffff and 0xfff, register words 0x1631404 and 0x1641414, three multiplies for D = 0xa, 0xb, 0xc) |
| The constant that scales a clamped component to 12 bits, and the float-to-integer rounding, are not resolved. | unknown | settle by interpreting the handler on a test vector or capturing the 0x1404 write for a known colour |

### Validation

| Fact | Grade | Evidence |
|---|---|---|
| An unknown name goes to the invalid-enum routine (ge 0x7058, `cc` not-zero after the seventh compare) and the pipe then continues into the table-rebuild check; no state changes. | established | ge 0x6fc9-0x6fcf, 0x7058-0x7059 |
| The mode value is converted to an integer and compared with 0x2601 (linear), 0x800 (exp), 0x801 (exp2) and 0x812a (the function-table extension). Each match stores the mode to 0x9de under a predicate and installs a pair of routine addresses in control words 0xa3c and 0xa3e, in that order (linear 0x74be and 0x74a8, exp and exp2 both 0x748a and 0x7431, function table 0x73ec and 0x7372). Any other mode value goes to the invalid-enum routine and the stores are predicated off, so the previous mode stays. | established | ge 0x7012-0x7059 |
| Exp and exp2 install the same two routines. They differ only in which comparison matched; where the second power is applied is not visible in these routines. | established for the identical routine addresses; where exp2 differs is unknown (settle by reading the table builder `mLoadFogTable` for 0x9de = 0x801, ge 0x76d8-0x76e8, against the exponent table loader at 0x6cf0) | ge 0x702b-0x7040 |
| Start, end and density values are not range-checked: they are stored unconditionally (0x9e0, 0x9e1, 0x9df). A start or end change rebuilds the table only when the mode is linear; a density change rebuilds it only for exp and exp2; in each case only when fog is enabled (the check at ge 0x711b). | established | ge 0x6fd8-0x6feb, 0x6ff5-0x7008, 0x7062-0x7077, 0x711b-0x7134 |
| The index value is converted to an integer, shifted by an amount tied to the colour-index width held at 0xa42 and masked to 12 bits, then stored as a float at 0x9e6. | inferred (the arithmetic is read; the field meaning follows from the buffer-configuration code that writes the width, `arm1.u` 0x0134e4-0x013510) | ge 0x70c4-0x70e7 |

## 2. The fog factor

### What it is a function of

| Fact | Grade | Evidence |
|---|---|---|
| The engine evaluates the fog function on eye distance. Eye distance comes from the window depth by the inverse of the projection's depth mapping (`mZclipToEye`, ge 0x7604: a ratio of two linear terms with a reciprocal by seed and Newton steps). The functions are linear, `(end - e) / (end - start)`; exponential and squared-exponential from the two lookup tables; and a piecewise-linear one from the 0x10f point list; each result is clamped to [0, 1]. | inferred (the arithmetic is read; what the operand is called is a reading) | ge 0x7604-0x7629, 0x74a8-0x74b7 (linear), 0x7431-0x7482 (exp, index into two tables whose bases are 0x1555 and 0x15d5), 0x7372-0x7392 (point list) |
| The host-software reference path takes the absolute value of the eye-space z and applies the same three functions in float. | established | `software/opengl/asm/soft/so_fog.s`, vertex routine (entry 0x0d9d7ae0) |
| In hardware the factor is a function of window depth, not of a per-fragment eye distance: the engine builds a table of fog factors at depth steps by running the function above on the eye distance of each step, then downloads it to the texture-filter chips through register 0x1405 (four 12-bit entries per 48-bit write; the diagnostic's own vector for it reads `ffa ffa ffa ffa`). A 32-bit window-depth value in register 0x1406 (shadow word 85) is added before the table is indexed. | table download and 12-bit entries: established; "indexed by depth plus the 0x1406 value": inferred from the shadow-word role and the table builder reading the depth-range words | ge 0x7187-0x71c7 (`mStartFogDownload`), 0x76a2-0x7770 (`mLoadFogTable` reads the viewport and projection depth words 0x49, 0x4a, 0x4d, 0x4e); `devices/rm/README.md` (diagnostic vector `TFP_FOG_DATA`); `devices/ge/ge-shadow-words.md` word 85 |
| The offset register 0x1406 is set by the fog-offset extension: `mSetFogOffset` (ge 0x765c) combines the four offset values at 0x9e7-0x9ea with the depth-range words and writes a 32-bit result (register word 0x1651406, mask all ones). The same extension, when enabled, adds an offset to the depth in the per-primitive fog stage (`mSendFog`, ge 0x75d8). | established for the write; the arithmetic's meaning: inferred | ge 0x765c-0x7699, 0x75d8 |

### How the 0x10f function table is built

| Fact | Grade | Evidence |
|---|---|---|
| Token 0x10f carries a point count (1 to 32) and that many (x, y) float pairs. The ARM handler rejects a count outside 1-32 with the bad-command path; it forwards the count and the pairs through the pass-through counter (2 x count words) to the engine. The engine copies the pairs to engine memory from 0x9ed (count at 0x9eb and 0x9ec) and rebuilds the hardware table only when the current mode is 0x812a. | established | `software/ucode/arm1_functions.md` `arm_fogfunc`; ge 0x6e4b-0x6ebe (`mgeb_FogFunc`) |
| The pipe does not check that x never decreases or that y never increases or is non-negative; the client does (`__glkonim_FogFuncSGIS`). The interval search assumes the order. | established (absence of any compare in the handler); behaviour with unordered points: unknown | ge 0x6e4b-0x6ebe; `software/opengl/libglcore-driver-builds.md` |
| The context default is a single point (0, 1.0): `initFogState` sends the function with operands one, zero, 1.0. | established | `software/ucode/arm1_functions.md` `initFogState` |
| The table builder chooses between one uniform table (`mLoadOneBigTable`, ge 0x715c: the depth span multiplied by 4096, step by reciprocal, start and step kept at 0xa3a and 0xa3b) and a coarse-plus-fine pair (`mDefineCoarseMode`, `mDefineFineMode`) whose break points come from a golden-section search (`mStartGSS`, ge 0x783f) that minimises the departure from a straight line between table points. The choice reads the mode and the depth-range words. The exact selection rule is not resolved. | structure: established; selection rule: unknown (settle by following the compares at ge 0x76f0-0x7710 for each mode) | ge 0x76a2-0x7770, 0x7187-0x71c7 |
| Entries are 12 bits, four per write to register 0x1405, the table address is an 8-bit field of register 0x1403. | entry width and write form: established (diagnostic vector); the address field: inferred (`devices/ge/ge-shadow-words.md`) | `devices/rm/README.md` |
| Fog on and off, the offset enable, and the centring enable are bits of register 0x1403 (start-up value 0x80000). The disable and offset-enable routines send the fixed words 0x70000 with 0x100000 (fog off, ge 0x6f05) and 0x70000 with 0x40000 (offset enable, ge 0x6eea) ahead of the register address 0x1621403. Their bit positions beyond bit 17 (below) are not resolved. | partial: inferred | ge 0x6eea-0x6f1d, 0x6f05-0x6f1d |

### Number format and blending

| Fact | Grade | Evidence |
|---|---|---|
| Factor format in hardware: 12-bit unsigned table entries, 1.0 near all ones. The conversion constant from the clamped float: the first-entry path multiplies by the float 0x400c000c (about 2.1875) before a float-to-integer step; the multiplier for the other entries is not resolved. | entry width: established; conversion: unknown (settle by interpreting `mSendFog`/`mFinishFogDownload` on a known table) | ge 0x74f3-0x74fe, 0x75d2-0x75c3 |
| The blend `fragment x f + fog colour x (1 - f)` and its rounding are done in the filter chips. No firmware path shows the arithmetic. | unknown | settle with the fog test vectors in `usr/diags/IR/data/tbusdata.Z` (the `fog1` block) against the hardware's output, or a measurement |
| Where fog sits in the fragment order (against texture environment, alpha test and the stencil/depth stage). The fog, texture-environment and alpha-function registers all belong to the texture-filter chips, in the chip's input-buffer half for fog and in its texture half for the environment; the order inside the chip is not stated by any firmware path. | unknown | the filter chip netlist (`rm11.netmap`) data path, or the order in the `fog1` and `msalpha` vectors |

### Colour-index mode

| Fact | Grade | Evidence |
|---|---|---|
| A buffer configuration with a non-zero colour-index width writes the colour-index bit of register 0x1403 (bit 17: mask 0x20000, value 0x20000); an RGB configuration writes it as zero. | established | `arm1.s` 0x0134a4-0x013538 (index branch), 0x013560-0x013578 (RGB branch) |
| In index mode the fog index (not the fog colour) is the second blend operand; the index is converted and stored in engine memory (row 1 above) and no raster write is made when it is set. How it reaches the hardware, and the blend, are not visible. | unknown (settle by capture: set a fog index, enable fog in an index window, read the raster writes) | ge 0x70c4-0x70e0 |

## 3. Token 0x0bf, polygon mode

| Fact | Grade | Evidence |
|---|---|---|
| The payload is two words, face then mode: word 0 is the face (0x404 front, 0x405 back, 0x408 both) and the last word is the mode (0x1b00 point, 0x1b01 line, 0x1b02 fill). Order is face, mode. | established | `arm1.s` 0x0c015598-0x0c0155a4 (face read from payload word 0, mode from the last word) |
| The ARM does not validate either value. The front word (state offset 0x250) takes the mode for face 0x404 or 0x408; the back word (0x254) takes it for 0x405 or 0x408; any other face leaves both words alone, with no error. The client validates before sending: faces 0x404, 0x405, 0x408 and modes 0x1b00-0x1b02 (invalid-enum error otherwise). | established | `arm1.s` 0x0c0155a8-0x0c0155c4; `software/opengl/libglcore-driver-builds.md` (`__glkonim_PolygonMode`, `__glkonlc_PolygonMode`) |
| Both mode words start as fill (0x1b02). | established | `arm1.s` 0x0c016590-0x0c0165f0 (`prim_init`) |
| Independent of the face, each call writes one flag to the per-context register at descriptor 0x49a00020: 1 when this call's mode is line, otherwise 0. After a front-line call followed by a back-fill call the flag is 0 although the front mode is line. After an attribute pop the same flag is rebuilt from the back mode word alone. | established | `arm1.s` 0x0c0155c8-0x0c0155ec; `polygon_pop` 0x0c016a80-0x0c016a98 |
| The call continues into the polygon set-up: when the front and back modes are not both fill, a non-zero first operand (0x80000000) turns on the engine's non-fill triangle module, with the two mode words as operands. In that module each triangle picks the front or back word by its facing, subtracts 0x1b01 and dispatches: result zero is line, negative is point, positive is fill (any other value above 0x1b01 therefore behaves as fill and any value below as point). | established | `arm1.s` 0x0c015e8c-0x0c015eb4, 0x0c015fc0-0x0c015fe0; ge 0x61fa-0x6256 (set-up), 0xda68-0xdae2 (dispatch) |

## 4. Edge flags, polygon offset in line and point modes, polygon-mode lines

### Token 0x0a7

| Fact | Grade | Evidence |
|---|---|---|
| The ARM writes all ones (payload non-zero) or zero to descriptor 0x52000020 and keeps no copy. A new context gets 7 there. The value is a distributor register, not a per-vertex field. | established | `software/ucode/arm1_functions.md` `arm_edgeflag`, `context_init_ged` |
| Per vertex, bits 22-24 of the vertex record's flag word carry the edge bits and bits 31-28 the raster command; the distributor register above feeds the edge bits as records are written. | inferred (`software/ucode/ge_compute.md` reasons it from 0x290 = 7 and the decomposer masks 0x00400000, 0x00800000, 0x01000000) | `software/ucode/ge_compute.md` word 0x26 sections |

### Strips, fans and quad strips

| Fact | Grade | Evidence |
|---|---|---|
| Independent triangles and general polygons: each triangle's flag word is built from its three vertices' words ANDed with the three edge masks (bits 22, 23, 24), so each vertex's flag controls one edge. | inferred | ge 0xcdb-0xcf0 (triangles), 0xca86-0xcb4 (polygon fan around the first vertex) |
| Quads: the flag words use bits 22 and 24 from the vertices and leave bit 23 out, which reads as the hidden diagonal. | inferred | ge 0xca3a-0xca5e |
| Quad strips: both triangles of every quad get the constant 0xc1400000 as flag word, not a value derived from the vertices, so the user's edge flags do not reach quad-strip triangles; bit 23 is clear in the constant, again the diagonal. | established for the constant; the meaning: inferred | ge 0xca6f-0xca82 |
| Triangle strips and fans: the flag word of each triangle is a combination of its vertices' words (strip: XOR with engine word 0x1d = 0xc1c00000 before the loop and OR in the loop; fan: OR of the centre's word) with no per-edge masks. Which edges of a strip or fan triangle draw in line mode is not resolved. | combination: inferred; per-edge outcome: unknown (settle with a capture of a line-mode strip with mixed flags) | ge 0xcc6-0xcda, 0xd25-0xd38, 0xd4a-0xd68 |
| Whether any of this matters in fill mode: flags travel in the vertex word to the raster side in every case; the geometry engine itself reads them only to build the triangle entries. | inferred | `software/ucode/ge_compute.md` |

### Polygon offset in line and point modes

| Fact | Grade | Evidence |
|---|---|---|
| Polygon offset has three separate enables for fill, line and point polygon modes (the public fill, line and point polygon-offset capabilities): each enable routine builds a three-bit word (bit 0 fill, bit 1 line, bit 2 point) from the three state bytes and sends it to the engine, which keeps the fill bit in a control word and the line and point bits in engine words 0xa8c and 0xa8d. | established | `arm1.s` 0x0c016308-0x0c016404; ge 0xb27b-0xb2a2, 0xb021-0xb026 |
| The non-fill triangle module applies the offset in its line branch (reads 0xa8c, ge 0xdb00) and its point branch (reads 0xa8d, ge 0xdb76): each reads the factor and scaled unit (0xa43 and 0xa44), forms depth differences across the triangle and sends a depth-offset register write (register 0x805) only when its own enable is set. | established | ge 0xdafc-0xdb72, 0xdb72-0xdbc4 |
| The offset applies to polygons drawn in line or point mode, not to line and point primitives: no line or point module reads the factor words 0xa43/0xa44 (a search of every listing finds them only in set-up, the offset commands, the triangle modules and a query). | established | search of `software/ucode/ge_listing/*.lst` |

### Polygon-mode lines and the smoothing switch

| Fact | Grade | Evidence |
|---|---|---|
| The ARM derives the polygon sampling fields only from the polygon-smooth byte (state 0x767) and the multisample state, never from the line-smooth byte. Polygon-mode lines are polygon primitives, so the polygon-smooth switch governs their coverage select (fields 15:14 of the primitive draw selectors). | established for what the ARM writes; "governs the coverage of line-mode outlines in hardware": inferred | `arm1.s` 0x0c015ed8-0x0c015f6c |
| The line-smooth switch reaches polygons in one way: the set-up call carries a flag that is set when polygon stipple and line smoothing are both on (non-multisample path). Enabling line smoothing re-runs the polygon set-up for that reason; polygon stipple and the line coverage table share one pattern memory. | established | `arm1.s` 0x0c015f34-0x0c015f6c, 0x0c01560c-0x0c015628; `software/ucode/arm1_functions.md` `PramContentsType` |

## 5. Smoothing coverage

| Fact | Grade | Evidence |
|---|---|---|
| The primitive draw-selector word has an alpha-coverage field and a sample-coverage field per class. For lines the diagnostic's smoothed-line style sets the coverage field to 2 and reads four 32-entry ramps, which `devices/rm/README.md` reads as "samples coverage into alpha"; the firmware sets the same value 2 for smoothed lines (13:12) and for smoothed polygons (15:14), and value 1 for the multisample cases. | field values: established; the reading "2 is alpha, 1 is multisample sample coverage": inferred | `arm1.s` 0x0c016090-0x0c0160c8, 0x0c015f20-0x0c015f28; `devices/rm/README.md` (`tbuLineStyle`) |
| Smoothed lines and points: coverage reaches the image engines as an alpha value, not as a coverage word. No firmware path sends a coverage word for a smoothed primitive; the coverage words that exist are the sample-mask word (register 0x140b) and the alpha-to-mask table. | inferred (by absence in the firmware and by the field encoding) | as above |
| Smoothed lines: the engine builds three response blocks from the line width with a response function (`AA_Response`, ge 0x9059, a filter of the pixel's distance to the line), for the 8-, 4- and 1-sample cases (`mGenerateAALineTable8`, `4`, no suffix; ge 0x63d4, 0x6432, 0x64af), multiplies the entries by 255.0, converts them to integers and writes them as 8-bit values to four 32-entry ramp memories at indexes 0x880-0x89f, 0x8a0-0x8bf, 0x8c0-0x8df, 0x8e0-0x8ff. The pixel generator then reads the ramp by distance. | table build and download: established; the pixel-generator step: inferred | ge 0x6319-0x6429, 0x652d-0x65db |
| Smoothed points: the point module forms a footprint from the radius and the attenuation, calls the same response function and sends vertices carrying the response in the texture slots; the size handler also sets the 0x80 mode bit. The exact per-pixel coverage is computed in the pixel generator from those vertices. | inferred | ge 0x612c-0x6162 (`mgebi_PointSize_AlphaAA`), 0x84be-0x8668 (`mmo_DrawAAPntPrim`) |
| Smoothed polygons: no coverage computation exists in the geometry engine; the selector value 2 (above) switches the pixel generator to compute coverage from the polygon's edges. The coverage rule is not visible. | unknown (settle by a vector with a known edge position, from the `linesRus` or `msalpha` blocks, against the expected output) | `arm1.s` 0x0c015f08-0x0c015f28 |
| Alpha-to-mask fade table: the firmware does write it. `init_tf` writes register 0x1409 with 0x13110100 and register 0x140a with 0x00ff7f773733 (the second as a raster-bus word, index in the high half). Read as nine bytes, entries 0 to 8 are 0x00, 0x01, 0x11, 0x13, 0x33, 0x37, 0x77, 0x7f, 0xff: entry n has n bits set, in the order of the 8-sample per-pixel bytes of the sample-mask coverage table (`masks8`). This corrects the earlier reading that no firmware routine writes the table. | writes and values: established; "index = quantised alpha, entry = per-pixel sample mask": inferred (the diagnostic's multisample-alpha block carries the same two words; the index derivation is not in any firmware path) | `arm1.s` 0x0c0038b0-0x0c0038d0 (`init_tf`), 0x0c036408 (`tbus_write_word`); `formats/token/command-table.md` section 7.17 |
| For 4 samples the nine entries cannot all be distinct: the low nibble of each entry gives 0, 1, 1, 3, 3, 7, 7, f, f, i.e. 0, 1, 1, 2, 2, 3, 3, 4, 4 bits. Whether the 4-sample mode uses the low nibble is not visible. | unknown | settle with a 4-sample alpha-to-mask vector |

## 6. Which point handler a multisampled window uses

| Fact | Grade | Evidence |
|---|---|---|
| In render mode the point set-up tests, in this order: point smoothing (state 0x766), then multisample enabled and a multisample buffer configured (states 0x783 and 0x1d1), then the aliased case. Point smoothing on selects the smoothed-point size handler (`mgebi_PointSize_AlphaAA`, handler slot 97) even when the window has a multisample buffer and multisample is enabled. The multisample size handler (`mgebi_PointSize_MS`, slot 98) is chosen only when smoothing is off, and the aliased handler (`mgebi_PointSize_Aliased`, slot 177) when both are off or the window has no multisample buffer. Feedback and select modes use slots 178 and 179 regardless of smoothing. | established | `arm1.s` 0x0c016240-0x0c016300 (the handler word fetches: 0x0c016270 selects the packed word at state 0x108, low half; 0x0c0162a0 the word at 0x10c, high half; 0x0c016288 the constant 0xb1 = 177); `software/ucode/ge_handlers.md` slots 97, 98, 177-179 |
| Lines differ: line smoothing is tested first and picks the smoothed-line width handler (slot 94) before any multisample test; with smoothing off, a multisample buffer picks slot 95, otherwise slot 93. Feedback and select use slots 174 and 175. Polygons choose their set-up handler by render mode only (slots 162-164); the multisample and smoothing state changes only the selector fields. | established | `arm1.s` 0x0c016024-0x0c0161f4; `software/ucode/ge_handlers.md` slots 93-95, 174-175 |

## Proposed rows for `formats/token/command-table.md`

Section 3.11, replacing the 0x0b7-0x0b9 rows (the grades are the rows' own; the evidence column names the sources in words so the table owner can assign its own labels):

```
| 0x0b7 | set a fog parameter, float form: word 0 name (0xb61 index, 0xb62 density, 0xb63 start, 0xb64 end, 0xb65 mode, 0xb66 colour, 0x8199 offset), words 1-4 value operands; scalars read word 1, colour and offset read all four; unknown names raise invalid-enum, unknown modes (not 0x2601, 0x800, 0x801, 0x812a) raise invalid-enum and keep the old mode | pass | no | no | 129 | 5 | established | fog.S listing 0x6fb2-0x7058; this note section 1 |
| 0x0b8 | set a fog parameter, integer form: same names; the token is command 128 with the name word, the chained entry 0x0b9 carries four words (command 2, which sets a one-shot integer marker and enters the float handler); colour scale 2^-31 with clamp to [0, 1] | pass | no | yes | 128 | 1 | layout established; value conversion unknown | fog.S listing 0x6fa5-0x6fc8, 0x7081-0x7083; this note section 1 |
| 0x0b9 | continuation entry of the integer fog parameter: four value words, command 2 | pass | no | no | 2 | 4 | established | hw_route.tsv; this note section 1 |
```

Section 2.6 (processor-run raster and pipeline state), replacing the rows for 0x0a7, 0x0bf and 0x10f (the `Words`, `Legal` columns unchanged):

```
| 0x0a7 | set the current edge flag: the ARM writes all ones or zero to a distributor register and keeps no copy; no validation | 1 | y | established | arm1.u 0x0c015c7c; this note section 4 |
| 0x0bf | set the polygon mode: word 0 face (0x404, 0x405, 0x408), last word mode (0x1b00, 0x1b01, 0x1b02); neither is validated by the pipe (the client validates); an unmatched face is ignored; every call also writes a line-mode flag from this call's mode alone | 2 | y | established | arm1.u 0x0c015598; this note section 3 |
| 0x10f | set the fog function table: count 1-32 (outside is a bad command), then count (x, y) float pairs; the hardware table is rebuilt only when the mode is 0x812a; ordering of the points is not checked by the pipe | 1 | n | established | arm1.u arm_fogfunc; fog.S listing 0x6e4b-0x6ebe; this note section 2 |
```

Section 7.17, replacing the rows "alpha-to-mask coverage" and "multisample lines, points and polygons", and adding two rows to the first table:

```
| alpha-to-mask coverage | the firmware writes the fade table at start-up (`init_tf`): register 0x1409 = 0x13110100 and register 0x140a = 0x00ff7f773733; nine bytes 0x00, 0x01, 0x11, 0x13, 0x33, 0x37, 0x77, 0x7f, 0xff, entry n with n bits set, in the order of the 8-sample sample-mask per-pixel bytes. How alpha indexes it, and the 4-sample use, are not visible | writes and values established; index rule and 4-sample use unknown | arm1.u 0x0c0038b0-0x0c0038d0 |
| point handler in a multisampled window | point smoothing is tested before multisample: smoothing on gives the smoothed-point handler (slot 97) even with a multisample buffer; multisample on without smoothing gives slot 98; neither gives the aliased handler (slot 177). Lines test line smoothing first (slot 94), then multisample (slot 95), then aliased (slot 93) | established | arm1.u 0x0c016240-0x0c016300, 0x0c016024-0x0c0161f4 |
| smoothing coverage form | smoothed lines and points deliver coverage as alpha through the four 32-entry ramps (the engine writes them as 8-bit values scaled by 255.0); the multisample cases use the sample-mask path; smoothed polygon coverage is computed by the pixel generator and not visible from software | inferred (field value 2 means alpha, 1 means multisample); polygon rule unknown | this note section 5 |
| polygon offset in line and point polygon modes | applies to polygons drawn in line or point mode, gated by its own enables (engine words 0xa8c, 0xa8d), not to line and point primitives | established | polymode listing 0xdafc-0xdbc4; this note section 4 |
```

Section 8.2, replacing the descriptions of shadow words 82-85:

```
| 82 | 0x1403 | 0x80000 | fog control: bit 17 colour-index mode (set by a colour-index buffer configuration, cleared by an RGB one; established); remaining bits inferred (modes, table address, one-table, offset, centring (start-up) and fog enables) | partly established | arm1.u 0x0134a4-0x013578; S12, S15 |
| 83 | 0x1404 | 0x0 | fog colour: green 11:0 and red 23:12, written under mask 0xffffff | established (mask), inferred (order) | fog.S listing 0x70a2-0x70be |
| 84 | 0x1414 | 0x0 | fog colour blue, 12 bits, written under mask 0xfff | established (mask) | same |
| 85 | 0x1406 | 0x0 | 32-bit depth offset added before the fog table is indexed (fog-offset extension), written whole by `mSetFogOffset` | established (write), inferred (use) | fog.S listing 0x765c-0x7699 |
```

## Open items and what would settle them

| Item | Settled by |
|---|---|
| Integer-to-float step for the integer fog colour; the 12-bit scale and rounding | interpret the handler (`ge_listing/fog.S.lst` 0x6fa5-0x70be) on test words, or capture the 0x1404 and 0x1414 writes |
| Exp2 versus exp: where the square is taken | table-builder reading for mode 0x801 (ge 0x76d8-0x7710) and the table loader at 0x6cf0 |
| Fog factor to blend: rounding, fragment order, colour-index blend | the filter chip data path, or the diagnostic's `fog1` block against measured output |
| Which strip and fan edges draw in line mode | a line-mode strip capture with mixed edge flags |
| How alpha indexes the fade table; 4-sample use; smoothed polygon coverage rule | the diagnostic's `msalpha` and `linesRus` blocks against measured output |
| How the name word reaches the engine on the integer fog path | the distributor program's handling of a chained entry |
