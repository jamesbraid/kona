# Published sources: papers, technical reports and patents

What the published primary sources say about InfiniteReality, one entry per source. Each entry gives the source's identity, the generation and chips it describes, how closely it matches the shipped board, and the facts it supplies. Authors are left out on purpose; the title, venue or number identifies each source.

Labels follow [AGENTS.md](../AGENTS.md) section 6, with one addition for published material:

- **established (published)**: a first-party SGI paper, technical report or slide deck about the shipped product says it, and either nothing in the binaries contradicts it or a binary agrees (the agreeing binary is cited). It is a designers' statement, not a read of the device.
- **inferred**: a patent or a paper about a predecessor says it. A patent describes a design and does not prove the shipped chip. A patent fact becomes established only where a binary or a stored test output agrees, and then the entry cites that binary and the owning chapter.
- **unknown**: the source does not say.

Generations used below. The first-generation Onyx board set is GE12, RM6 and DG4; the Onyx2 set is GE14 (InfiniteReality) or GE16 (InfiniteReality2), RM7 or RM9, and DG5 (technical report below). This workspace reads the Onyx2 InfiniteReality2 configuration, so a first-generation statement about a chip is inferred for the shipped board unless a binary agrees. The papers call the scan-conversion pair SC and TA; the binaries and the later paper call it PG and TG. The mapping SC = PG, TA = TG is inferred from the roles in both texts.

## Sources at a glance

| # | Source | Kind | Describes | Match to the shipped board |
|---|---|---|---|---|
| 1 | SIGGRAPH 1997 InfiniteReality architecture paper | paper | first-generation InfiniteReality | close; first generation, chip names differ |
| 2 | InfiniteReality Technical Report | white paper | first-generation (GE12, RM6, DG4) | close; first generation |
| 3 | Onyx2 Reality and InfiniteReality2 Technical Report (August 1998) | white paper | Onyx2 (GE14/GE16, RM7/RM9, DG5) | exact generation |
| 4 | Hot Chips 8 InfiniteReality slides (1996) | slides | first-generation | close; first generation |
| 5 | OpenGL implementations paper (Graphics Hardware 1997) | paper | Onyx2 InfiniteReality (and O2) | close; uses the binaries' chip names |
| 6 | RealityEngine Graphics (SIGGRAPH 1993) | paper | predecessor | predecessor only |
| 7 | US 5,760,783, clip-map texture | patent | generic; the clip-map feature | feature-level |
| 8 | US 5,490,240, three-dimensional texture | patent | generic, 1993 | predecessor-level |
| 9 | US 5,455,627, programmable video output format generator | patent | generic display timing | design-level |
| 10 | US 5,889,529, constant frame rate by dynamic resizing | patent | generic | design-level |
| 11 | US 6,147,695, combining multiple video streams | patent | names InfiniteReality, GE14, RM7, DG5 | feature-level |
| 12 | US 6,329,996, synchronising graphics pipelines | patent | multi-pipe swap | feature-level |

Reviewed and set aside, because they do not describe this board: US 5,548,709 (texture memory with interpolation logic on one chip, a design for the earlier texture RAM generation), US 5,528,738 and US 5,581,680 (line antialiasing for a desktop workstation with a single sample per pixel), US 6,650,327 and its continuations (floating-point rasterisation, filed 1998; the shipped pipe works in 12-bit fixed-point components, source 3). Searches of patent databases found no SGI patent that describes the geometry engine's instruction set, the pixel generator's set-up arithmetic or the vertex-bus encoding. The designers' own papers (sources 1, 4 and 5) are the only first-party text on those blocks.

## 1. InfiniteReality architecture paper (SIGGRAPH 1997)

- Identity: "InfiniteReality: A Real-Time Graphics System", SIGGRAPH 97 proceedings, pages 293-302. Copy read: https://people.csail.mit.edu/ericchan/bib/pdf/p293-montrym.pdf, 10 pages, SHA-256 `877a4c9e19ff82107b496c10a91339c41635e05d0e2dfa4a9d849e2e2d8647bb` (also https://www.cs.cmu.edu/afs/cs/academic/class/15869-f11/www/readings/montrym97_infinitereality.pdf).
- Covers: the whole pipe: host interface processor, geometry distributor, four geometry engines, the geometry-raster FIFO, the vertex bus, the fragment generator (SC, TA, TM, TF), 80 image engines per raster board, the display generator. First generation; the board set it names is the three-board Onyx set.
- Match: close. The block structure matches the shipped netlist names. The paper predates the Onyx2 board revisions.

Facts:

- **Set-up lives in the fragment generator (established, published).** Section 2.5: the vertex bus carries only screen-space vertices, broadcast to every fragment generator; the geometry engines do not compute triangle set-up, which cuts their strip workload by about 60 percent; hardware to assemble screen-space primitives and compute parameter slopes is in the fragment generators. This agrees with [rm.md](rm.md#primitive-set-up-happens-in-the-pixel-generator), where the geometry-side code was read and found to send vertices only. It answers where the slope arithmetic is, not its widths.
- **Scan conversion by direct plane-equation evaluation (established, published).** Section 2.6: SC and TA evaluate the parameter plane equations at each pixel instead of stepping an interpolating DDA, trading more work per pixel for less set-up per triangle; up to four fragments (a 2x2 region) leave per clock; colour and depth interpolation, perspective-correct texture coordinates and level of detail are computed there. Consequence for a model: a fragment's value is a function of the plane and the pixel position only, with no error accumulated along a scan line. The widths and rounding of the plane coefficients are unknown: no source read gives them.
- **Strip and fan (established, published; the bit is not).** The vertex-bus protocol supports triangle strips and fans (quoted in [rm.md](rm.md#set-up-arithmetic-what-the-software-fixes)). No encoding is given, so the open question of which bit selects the fan is not moved by this source; it confirms only that the bus has both rules.
- **Tiling (established, published).** Section 2.8: fragment generators own two-pixel-wide vertical strips; scan conversion finishes a strip before the next for every primitive; the image-engine repeat pattern of a four-board system is 320 pixels wide and 80 tall. The 80 image engines of one board each own one 256K x 32 memory (section 2.7).
- **Geometry engine (established, published for the first-generation chip).** Section 2.3: a SIMD arrangement of three floating-point cores, each with a multiplier, an ALU and a 32-word register file with two read and two write ports; a 2560-word working memory that also holds OpenGL state and the queue of incoming vertex data, each core able to do two reads and one write to it per instruction; a float-to-fix converter after each core, one result per instruction; pipeline depth studied from one to four stages, with no gain beyond four; microcode divided into per-mode modules whose pointers sit in a table in working memory, each vertex running the active modules in table order; all fields needed to launch and retire an operation in the launching microinstruction. Where this meets the shipped engine: [ucode/ge_isa.md](../ucode/ge_isa.md) and [ge_ops.md](../ucode/ge_ops.md) already read two arithmetic units per word, a module table and operand fields in the launching word. The "float-to-fix convert and merge" stage corresponds to the output move with `r95` = 0x33 described under the fan-bit question, which is **inferred** by this source (the paper's "convert and merge" is the only published name for that block). The 2560-word figure is **not** reconciled: addresses up to 0xc00 occur in the shipped listings (`mmo_CopyFifoLine`, [ge_isa.md](../ucode/ge_isa.md)), so either the GE14 working memory is larger than the first-generation GE12's or those addresses name another memory. Route: tabulate the highest data-memory address read or written by `ge.u` outside the special-register window.
- **Back-end shadow RAM (established, published; agrees with the binaries).** Section 2.4: the geometry-raster FIFO holds a 256-word shadow RAM keeping the latest values of the fragment-generator and image-engine control registers, so only one engine need process a raster mode change. [rm.md](rm.md) reads an 89-word shadow in the back-end chip at `BEF_REGSHADOW` 0x100 ([ucode/befshadow.tsv](../ucode/befshadow.tsv)); 89 of 256 words fits.
- **FIFO and bus (established, published).** The FIFO holds 65536 vertices in SDRAM; the host path carries 400 MB/s on Onyx2 (200 on Onyx); there is a separate texture-load path through the FIFO that rides unused vertex-bus cycles, with barrier primitives ordering loads against use (section 3.2).
- **Texture (established, published).** Sections 2.6 and 3.1: one copy of texture memory per raster board, 32 texture SDRAMs reached through a two-rank omega network between the TM and TF chips (the 32-to-80 sort); the TMs merge redundant texel requests of neighbouring fragments; clip-maps of up to 32K x 32K addressable, the hardware substituting the best available coarser data when the requested level is not resident, with offset registers and per-clip-map centre registers.
- **Display (established, published).** Eight channels, each with its own timing generator, resize, gamma and DAC; the aggregate video bandwidth is 1200 MB/s and independent of raster-board count; 32,768 colour-index entries; 12-bit components through the gamma table; swap events constrained to a common interval; a wired-AND swap-ready line between systems with a write-exclusion window around the swap-ready register (section 2.9). Compare source 12.

Open questions moved: none closed. Adds routes to the raster set-up, fan-bit and geometry-memory entries.

## 2. InfiniteReality Technical Report

- Identity: SGI, "InfiniteReality Technical Report" (first-generation Onyx and i-Station). Copy read: http://www.sgidepot.co.uk/onyx/IR_techreport.pdf, 42 pages, SHA-256 `b5bdbb3f054c36768f6ef17a648543dac4aafad115d0d4f0161e693ee2bcc4b3`.
- Covers: the Onyx-generation system with GE12, RM6 and DG4 (the block diagrams in section 1.1 name them).
- Match: close for the pipeline model, first generation for boards.

Facts (all established, published):

- **Subpixel accuracy.** Section 7.7 (printed page 20): each primitive is computed with 8 x 8 subpixel accuracy, 64 possible subpixel locations per pixel; the raster system samples at one, four or eight of them. Section 5 repeats that eight samples sit at eight of 64 locations. Already used in [rm.md](rm.md#set-up-arithmetic-what-the-software-fixes); it bounds the 3-bit sample-position fields.
- **Depth and colour widths.** The smallest frame-buffer allocation is 256 bits per pixel: quad-buffered stereo at up to 12-bit RGBA with a 23-bit depth buffer, or four-sample antialiasing at 10-bit RGB with a 23-bit depth buffer. Colour is 12 bits per component end to end; indexes up to 12 bits (section 7.3, 7.5). The depth width of 23 bits at the smallest allocation is a floor, not the depth word of a larger format.
- **Fog.** Each fog value generated per pixel has 12 bits of precision per colour component; the system derives the per-pixel values from the projection, depth range and fog function, including a function given by sample points (section 7.10).
- **Batching.** Vertices of strips are accumulated and processed in batches of usually six to twelve (section 7.3.3). Compare the batch count the distributor keeps ([ucode/ged.md](../ucode/ged.md)).
- **Memory.** 80 MB of frame buffer per raster board; 256 to 1024 bits per pixel depending on board count and video channels.

Open questions moved: none closed.

## 3. Onyx2 Reality and InfiniteReality2 Technical Report (August 1998)

- Identity: SGI, "Onyx2 Reality and Onyx2 InfiniteReality2 Technical Report", August 1998, 95 pages. Copy read: the SGI PDF as mirrored at https://techpubs.jurassic.nl and the archive sites, SHA-256 `0b2be85d655ae996d7e39bf3f22248060e3c7c493a852a2358e2e0afdc2d6305`.
- Covers: the Onyx2 generation. Section 1.1 states that InfiniteReality uses GE14 and RM7 and InfiniteReality2 uses GE16 and RM9, with DG5 in both, and that everything in the report applies to both. This is the exact generation of the reference install.
- Match: exact.

Facts (established, published):

- **Board names** as above. They agree with the board names the netlists give for the reference install ([diags/netmap_chips.tsv](../diags/netmap_chips.tsv) names `ge14` and `dg5`-class boards).
- **Texturing path.** Section 5.1: scan conversion produces texture coordinates (S, T, R, W) that go to a dedicated texture processing unit; it applies perspective correction, picks the mip level and makes texture-memory addresses; texels are read and filtered by user-selectable filters; the result goes to the pixel processors with the pre-texture colour and depth from the main scan converter; texture colour lookup tables follow the filter. This fixes four coordinate words, not their widths.
- **Texel packing (section 7.9.7).** Supported texel sizes pad to 16 bits, and several smaller images can be packed into one 16-bit-texel image (two 8-bit images in one). Texture memory sizes of 16 MB and 64 MB are tabulated (for example one 256x256x128 non-mipmapped 3D texture in 16 MB).
- **Perspective correction** is done per pixel for textures and fog, with no performance cost (section 7.9.9).
- **Multisample** is the same eight-of-64 statement as source 2.

Open questions moved: none closed. Confirms the generation.

## 4. Hot Chips 8 slides (1996)

- Identity: "InfiniteReality Graphics: Power Through Complexity", Hot Chips 8, 1996, 20 slides. Copy read: https://old.hotchips.org/wp-content/uploads/hc_archives/hc08/3_Tue/HC8.S9/HC8.9.3.pdf, SHA-256 `2add1b6fe141645f0df472a2c15bfa1ff93c12b802da00889b9a2c576ee3a974`.
- Covers: first-generation InfiniteReality. First architecture pass September 1993, first customer shipment March 1996 (slide 20).
- Match: close; first generation.

Facts (established, published for the first generation; each is a design statement):

- **Microinstruction width (slide 8, 10).** The geometry engine has a 195-bit microinstruction, and a width-compression method gave a 2.7 times reduction with under 1.5 percent cost in performance and code length. 195 / 2.7 is 72.2, and the shipped engine takes 72-bit words ([ucode/ge_isa.md](../ucode/ge_isa.md): `ge.hex`, `u_d[72]`). **Inferred:** the 72-bit word is the compressed form and `ge.u`'s 256-bit record the decoded one; the 195-bit figure may be the decoded width of the first-generation chip rather than the 256-bit record the shipped tool writes, so the two decoded widths are not claimed equal. This supports the existing reading in ge_isa.md that the record is a decoded control word.
- **Throughput (slide 8).** 540 MFLOPS peak from three SIMD cores at 90 MHz, which is 2 operations per core per clock (one multiply, one add).
- **Code generation (slide 10).** Assembler for critical microcode and a proprietary scheduler for the remaining 80 percent, a tenfold productivity gain over hand-packed assembly. Matches the `.S` and `.s` source names in the shipped listings.
- **Raster stages (slide 12).** Per-fragment: subpixel coverage mask, colour, depth, perspective-correct texture lookup, mip-map and bicubic filtering (1D, 2D, 3D), texture application, fog, line and area stipple. Per sample (1, 4 or 8 per pixel): stencil and depth tests, blend function, logic operation.
- **Memory (slides 13, 14).** Texture memory is 128 16-bit-wide SDRAMs with individual address and data buses, 64 MB user-visible with 16 Mb parts; the peak texture bandwidth is derived as 2 bytes per sample x 8 samples per pixel x 960 M pixels/s = 15.36 GB/s. Frame buffer: 320 image-engine processors, each with one 256K x 32 SGRAM; 76.8 GB/s total; 256, 512 or 1024 bits per pixel.
- **Triangle bus (slide 11).** Named "T-bus", 400 MB/s, carries transformed vertices; triangle reassembly and set-up in the raster subsystem.
- **Display (slide 16).** Channel controllers request blocks of 160 pixels; video packets are de-interleaved into horizontal streams; the resize engine magnifies or minifies; a video-format compiler and combiner are supplied.
- **Verification (slide 19).** A full C simulation of every component from the system interface to the DACs ran the operational microcode, kernel, library and diagnostics. **Inferred:** the stored raster-bus vectors in the IR diagnostics (`tbusdata.Z`, the `.tbus` files) were produced by that simulator, as the O2 and VPro diagnostics' stored frames were by theirs. If so they are the simulator's expected output, and a vector with no matching frame is not a measurement.

Open questions moved: none closed. Adds the 195-to-72-bit ratio as a cross-check for the microcode-word question.

## 5. OpenGL implementations paper (Graphics Hardware 1997)

- Identity: "Realizing OpenGL: Two Implementations of One Architecture", the Eurographics/SIGGRAPH Graphics Hardware workshop, 1997. Copy read: the 11-page proceedings PDF (SHA-256 `c568a0eaabffc399c548c18f9a768a4d3156def7a6ab548cbae1cccdfffa26c3`), the copy SGI and later hosts mirror.
- Covers: Onyx2 InfiniteReality and, in the second half, O2.
- Match: close. It uses PG, TG, TM, TF and IMP, the same chip names as the shipped netlists and firmware ([rm.md](rm.md#chips-on-each-board)).

Facts (established, published):

- **Division of raster work (sections 3.4-3.6).** The PG "almost completely rasterises" primitives: scan conversion, pixel zoom, scissoring, colour and depth interpolation between vertices, antialiasing coverage alpha, polygon stipple; it handles over 12 million polygons per second. Texture application and fog are not in the PG: the TG makes per-fragment texture coordinates and broadcasts them to eight TMs; four TFs combine texels, coordinates and PG fragments, do filtering, an optional scale, bias and table look-up after filtering, texture environment, fog and the per-fragment alpha test. Each TF feeds five IMP chips; each IMP holds four IMP cores of 1 MB; the IMP core does every per-fragment operation except the alpha test (TF) and scissoring (PG). So blending, logic operations, stencil and depth test, accumulation and multisample resolve are IMP work. This places the blend arithmetic of KONA in the IMP, a chip no firmware writes except through register loads.
- **Names.** The geometry side is the transform engine distributor (TED), 2 or 4 transform engines (TEs, three SIMD cores, 540 MFLOPS each), the back-end FIFO (BEF) of 4 MB with separate draw and load FIFOs, and a microcoded 32-bit RISC core in the host interface with 16 MB of external memory, 15 MB of it display-list cache. The TED maps command tokens to TE microcode addresses so a command starts immediately; this agrees with the shipped command words that carry handler addresses ([ucode/ge_isa.md](../ucode/ge_isa.md)).
- **Pixel-path reuse.** Pixel rectangles and texture downloads run through the same TE microcode (section 3.2). The ARM-added modules for minmax and the like fit this, and the shipped listings show the pixel-path modules the paper describes.
- **Read-back.** Pixels and texels return through a readback bus to the TED (section 3.8).

Open questions moved: none closed.

## 6. RealityEngine Graphics (SIGGRAPH 1993)

- Identity: "RealityEngine Graphics", SIGGRAPH 93 proceedings, pages 109-116. Copy read: https://cseweb.ucsd.edu/~ravir/6160-fall04/papers/p109-akeley.pdf (SHA-256 `76b3bf10b66d0e8ee4f03971a7ecfa6540bfc919c58afce8e37062e5d3b08e71`).
- Covers: the predecessor generation. Its geometry engines compute the per-triangle slopes; InfiniteReality moved that to the fragment generator.
- Match: predecessor only. Everything below is **inferred** for InfiniteReality.

Facts:

- Fragments by edge-function ("Pineda") arithmetic restricted to the generator's own pixels; coverage mask for 4, 8 or 16 samples chosen on a regular 8 x 8 subsample grid with the same subset for every pixel; depth and texture coordinates sampled at the centre-most sample, and the image engines reconstruct per-sample depth from the stored depth and the X and Y depth slopes. The 8 x 8 grid agrees with source 2 for InfiniteReality, which keeps it. Whether InfiniteReality also reconstructs per-sample depth from the slopes, or has the pixel generator send a depth per sample, is **unknown**: the vertex-bus word carries one depth ([rm.md](rm.md#primitive-set-up-happens-in-the-pixel-generator)) and slopes are not on the bus, so the slopes must be formed at or before the IMP.
- Slopes were computed in double or single precision in software and packed by a conversion block; each parameter treated as a plane equation with signed slope in +X and +Y. Colour components are 12 bits in buffers and samples, depth 32 bits per sample, 12-to-10-bit dither before gamma. These widths are the background for the IR numbers in sources 2 and 3 and are not claimed for InfiniteReality.
- Perspective correction by interpolating S/W, T/W, R/W and 1/W and dividing per pixel; level of detail from the worst case of the four pixel-to-texel X and Y ratios; trilinear blend from the sub-texel and level fractions. Compare source 8.

Open questions moved: none closed.

## 7. US 5,760,783, texture from a selected portion of a texture map

- Identity: US 5,760,783, "Method and system for providing texture using a selected portion of a texture map", filed 1995-11-06, granted 1998-06-02, assigned to SGI. PCT WO 1997/017676. https://patents.google.com/patent/US5760783A/en
- Covers: the clip-map: a clip-map stack of fixed-size tiles centred on the eyepoint over a clip-map pyramid. The page names no product and no board. The block diagram has a texture generator, a texture memory manager and DRAM on a triangle bus, the arrangement of the first-generation board set.
- Match: feature-level. The paper in source 1 says the feature ships, so the behaviour is a design the shipped chips implement; details such as register names are not given.

Facts (all **inferred** for the shipped chips):

- The texture generator rotates and normalises triangles, makes iteration coefficients, scan-converts, divides, generates the level of detail, and compresses the quad's coordinates to one full coordinate plus offsets for the other three pixels; the memory manager decompresses, generates addresses and controls memory. This is the only published ordering of the set-up stages, and it describes the texture side only; it gives no formats or widths.
- A per-level "tile offset" and an "update offset" are subtracted from global texel coordinates; the coarser fallback address is the global coordinate shifted one bit and reduced by a half texel, minus that level's offsets. With factor-of-two levels the substitution is a one-bit address shift.
- Out-of-bounds detection takes the largest s or t distance from the quad's four samples to the tile centre; each tile has a fringe that is a multiple of eight texels (8 texels of a 1K tile leave 1008 usable), and access to a fringe is replaced by the coarser level. The finest available level comes from a count of significant bits. The preferred design supports 16 levels; the example is a 32K x 32K level 0 with 1K x 1K tiles, 6 million texels instead of 1.365 billion.
- Update cadence: tile n gets a new row after the eyepoint moves 2^n pixels.

Bearing on the shipped board. [RM.h](../RM.h) has `TM_DRAW_CLIP_OFFSET` (index 0x1020, a 16-bit s and a 16-bit t offset, written by the ARM's 2D clip-map bind) and `TM_DRAW_CLIP_BKPT` (index 0x1021, a 4-bit level number), both labelled inferred from names. [opengl.md](opengl.md) reads `guessClipmapBreakpoint`, which walks up from the first defined level while the following levels keep the same width and stores the last such level as the break point. These match the patent and source 1 on three points: the patent's stack levels all have one size and the levels above them are the pyramid, which is what the break point splits; the patent's per-level offsets and the paper's "offset registers" and clip-map-centre registers are what a pair of 16-bit offsets would hold; a 4-bit level number addresses 16 levels, the patent's preferred 16. **Inferred** support for the register meanings, still not established: the patent has per-level tile and update offsets while the shipped registers hold one offset pair per bound texture, so the per-level offsets are derived elsewhere (the texture-object fields at +412 to +440 that `changeClipmapParams` rewrites). Route: read the ARM's per-level address generation for the offset use, and `TEST_clipmap` in the IR diagnostic for its expected addresses.

## 8. US 5,490,240, three-dimensional textures

- Identity: US 5,490,240, "System and method of generating interactive computer graphic images incorporating three dimensional textures", filed 1993-07-09, granted 1996-02-06, assigned to SGI. https://patents.google.com/patent/US5490240A/en
- Covers: generic texture apparatus: level-of-detail generator, address generator, fraction generator, eight-bank texture storage, an interpolator. No product named.
- Match: predecessor-level. Same generation as source 6.

Facts (**inferred**):

- Level of detail is computed once per 2x2 quad (or per pixel as an alternative) as the maximum of six absolute differences across a step in x and in y of S, T and U (three axes, two directions). The fine level is `max(0, int(log2(LOD)))`, the coarse level is fine + 1, and the level fraction is `(LOD >> fine) - 1.0`: that is the LOD divided by 2^fine, minus one, linear in LOD between levels. Each axis's level is capped at its size.
- Eight texels are addressed from the integer parts (s or s+1, t or t+1, u or u+1), banked by the parity of each coordinate (and by the level parity in mip mode), so a trilinear lookup reads 16 texels in two groups of eight.
- Texels can be literal values or indices into a lookup table of 1 to 4 components, interpolated before or after the lookup.

Bearing: a level fraction linear in the maximum derivative is a candidate for the KONA `tg` level fraction, which no binary computes. It is **inferred** from a design of the generation before; discriminating reading: the `tg` diagnostic vectors in `aaspoke.tbus` and `tbusdata.Z`, if any texture test lists a level fraction.

## 9. US 5,455,627, programmable video output format generator

- Identity: US 5,455,627, "Programmable video output format generator", filed 1993-06-30, granted 1995-10-03, assigned to SGI. https://patents.google.com/patent/US5455627A/en
- Covers: a video format compiler reading a text description (the input file) and a reprogrammable timing state machine loaded from the compiler's tables. No product is named; the sample is a 1280 x 1024, 60 Hz format.
- Match: design-level. The shipped `vof/` tables and the format compiler `sdbutil` follow the same two-part shape, which is the reason to read it.

Facts (**inferred** for the shipped display generator):

- The compiler merges identical lines into line types, each with a repeat count, and outputs a line-type table and a line-count table. The formatter has a free-running vertical counter indexing a line-count table and a line-type table, a line counter, a line-length table indexed by line type (full, half or quarter line) that loads a horizontal counter, and signal tables indexed by line type and horizontal count driving the outputs. A load signal switches the tables to the compiler's data. An external reset syncs to another system.
- The input has per-frame fields (fields per frame, frames per second, total and active lines and pixels, horizontal porches and sync) and a line-by-line sync description; a signal-rule file fixes timing relative to sync for blank, video-address request, cursor and the like.
- The patent gives no register addresses, widths or depths.

Where it meets the shipped board: [dg.md](dg.md) reads a per-VOC state table of up to 32 line types, two states per word (a repeat count and a line type), a per-line-type length and a per-line-type edge mask, and a register that selects a line type or a signal ([display-file-format.md](display-file-format.md)). These are the patent's line-count table, line-type table, line-length table and signal table respectively. **Inferred**, not established, since the patent's tables are named by role and the shipped words by layout. The one difference: the patent's line length is full, half or quarter; the shipped length field is "minus 3" in bits 30-18, a general count. Route: confirm by reading whether any shipped format uses a half- or quarter-length line type.

## 10. US 5,889,529, constant frame rate by dynamic resizing

- Identity: US 5,889,529, "System and method for generating and displaying complex graphic images at a constant frame rate", filed 1996-03-22, granted 1999-03-30, assigned to SGI. https://patents.google.com/patent/US5889529A/en
- Covers: drawing at a reduced resolution chosen from the last frame's draw time and magnifying at output in the video output controller. The page names no product.
- Match: design-level. The paper in source 1 and the technical reports describe the shipped feature (dynamic video resize); the shipped request is the Resize request in [dg.md](dg.md#the-resize-request-8-words).

Facts (**inferred**):

- The resolution of frame N+1 is chosen from the draw time of frame N against a high-water and a low-water mark; the image is drawn in frame N and magnified in N+1. A buffered resolution-coefficients register written by software is copied to the register the video output controller uses at the buffer swap, during vertical blanking. Each display has a display ID with its own magnification ratio and swap rate; the display-ID table bits are X-server swap-buffer bits.
- Claimed interpolation: linear, bilinear, bicubic; optional sharpening of magnified lines, points and text; scaling horizontal-only or vertical-only; granularity of a line or one, two or four pixels; per window or per region (border, centre, focus).
- No widths, register addresses, ratios or mark values.

Bearing: the buffered-then-latched coefficient register is the pattern to look for in the VOC resize registers 0x28f-0x294 that `dgResize` writes ([dg.md](dg.md)): a shadow write and a swap-time copy would show as two register sets. Not checked in this pass.

## 11. US 6,147,695, combining multiple video streams

- Identity: US 6,147,695, "System and method for combining multiple video streams", filed 1998-08-26 (priority 1996-03-22, a continuation in part of source 10), granted 2000-11-14, assigned to SGI. https://patents.google.com/patent/US6147695A/en
- Covers: overlay and base streams read out and combined after resize; the example system is the InfiniteReality pipe on an Onyx2 module with a GE14 geometry board, RM7 raster boards and DG5 display boards.
- Match: feature-level and the right generation: it names the Onyx2 board set of this workspace.

Facts (**inferred**, since a patent):

- Overlay buffers are double-buffered separately from the base image, have fewer bits per pixel and no depth, and may hold a colour index. The per-pixel rule: an opaque overlay pixel shows, otherwise the base pixel shows, with optional blending. The combining multiplexers run after the colour-index lookup and after resizing. Several threads render partially, are sized, are resized to a common size and are multiplexed.
- The video output controller applies the magnification; the display-ID table selects per-window behaviour.
- The patent gives no filter taps, widths or water-mark values.

Bearing: the overlay-then-base multiplex after the colour-index look-up is the order to look for in the XMAP chips of the display generator ([dg.md](dg.md)). Not checked in this pass.

## 12. US 6,329,996, synchronising graphics pipelines

- Identity: US 6,329,996 B1, "Method and apparatus for synchronizing graphics pipelines", filed 1999-01-08 (granted 2001-12-11), assigned to SGI. https://patents.google.com/patent/US6329996B1/en. The page cites the Onyx2 InfiniteReality and InfiniteReality2 technical report of August 1998.
- Covers: several pipes in a daisy chain; no register names.
- Match: feature-level. The same wired-AND swap-ready line is in source 1 (the paper, section 2.9).

Facts (**inferred**): each pipe has three state bits, current, next and ready-disable; the host names the next pipe by setting its next bit and sets ready-disable on the others so that only the chosen pipe drives the local swap-ready; the global swap-ready is the AND of every pipe's local signal; the chosen pipe waits for the global signal and then swaps at the next vertical sync; pipes without the next bit pass through. Bearing: the three bits are the model for the DG swap-ready, genlock and pass-through registers listed in [DG.h](../DG.h). Not matched to registers in this pass.

## What these sources settle, by open question

- **Raster slope and fixed-point arithmetic.** Moved a step. Source 1 puts the slope arithmetic and the strip and fan assembly in the fragment generator and says it evaluates plane equations per pixel (no DDA). Source 6 shows the previous generation computing slopes on the geometry side, which the shipped geometry code does not. Widths, rounding of the start point and the edge rule on sloped edges stay unknown: no published source gives them. Next route: the `tbusdata.Z` vectors with a sloped primitive and a stored frame, if any; the IMP and TF diagnostic expected values.
- **Geometry engine instruction set and the fan or strip bit.** Not moved. The 195-bit and 2.7 times figures cross-check the 72-bit word (source 4). The paper's "float-to-fix convert and merge" names the block the `r95` = 0x33 words feed (source 1). No published source gives the strip or fan encoding.
- **Texture level fraction and filter precision.** Candidate formulas only (sources 6 and 8, inferred).
- **Display generator tables.** The patent in source 9 gives the roles of the line-type, line-count, line-length and signal tables that [dg.md](dg.md) reads by layout.
