# Geometry-engine labels: what each one does and what reaches it

Every label `ge_symbols` gives for the geometry-engine program (IRIX 6.5.30m, 1100 labels at 1025 addresses) has one entry below, grouped by the source module the `ge.u` line table names. Each entry says where the label sits, what reaches it, what its instructions do in the field readings of [ge_ops.md](ge_ops.md) and [ge_isa.md](ge_isa.md), and how its code ends. [retools/tools/kona/ge_catalogue.py](../../retools/tools/kona/ge_catalogue.py) writes the entries and the cross-reference [ge_xref.tsv](ge_xref.tsv) from `ge_symbols`, `geif.u`, `arm1.u`, the listings in [ge_listing/](ge_listing/) and the ARM tables of [arm1.md](arm1.md). The module roles and the per-label role lines are written by hand in [ge_modules.tsv](ge_modules.tsv). How a command reaches a handler is in [arm1.md](arm1.md#how-a-command-reaches-a-geometry-engine-handler).

Slot k of `geif.u` is entry 2k+1, and the entry of the label at that slot's address says what the slot runs. Each of the 1024 entries, the even ones and the 60 unused odd ones that hold address 0 included, has its own row in [geif_entries.md](geif_entries.md): the word, its copies in the ARM, and the ARM functions and distributor words that send it.

## How to read the entries

**Established** (counted from the files):

- The first line gives the address, the source file and line of the label's first instruction (`ge.u` line table) and the number of instructions from the label to the next label of the same listing (labels at the same address share the count).
- **geif slot k (entry n)**: `geif.u` entry n = 2k+1 holds the label's address, so the ARM's copy `gepc` names it ([ge.md](ge.md#command-dispatch-table-geifu)). 348 of the 1100 labels sit at a slot address. The `arm1.u` functions whose code loads one of those slots (from `gepc` through a base loaded from the literal pool, or from the packed copy at r8 + 0x48; linear per-function scan, the patterns of `retools/tools/kona/arm1_handlers.py`) and the host tokens those functions handle ([arm1_handlers.tsv](arm1_handlers.tsv)) are in a table after each module's entries, kept apart so that an entry here does not count as explaining an ARM function or a token.
- **Distributor** gives the index of the 64-entry handler table `init_ged` fills ([ged_bound_table.tsv](ged_bound_table.tsv)) or says the slot is in a word of the distributor program that the ARM relocates at load ([ged_relocs.tsv](ged_relocs.tsv)).
- **Transfers in** names a label whose code holds a decoded transfer to this address. Transfers to `HereWeGo` (address 0) are left out. **Inferred:** the relative-target reading of [ge_isa.md](ge_isa.md) is right for these.
- **Inside** names the nearest preceding handler or module label in the same source when nothing else reaches a label. **Inferred:** such a label is a loop head, a branch target or a second entry of that routine.
- **Address loaded as a constant** names a label whose code loads this label's address as an immediate in a constant-load word. 242 labels are reached this way. **Inferred:** the loading code stores the address in engine memory and a later indirect transfer goes through it, which is how the program chains modules (`mGL_EM_Initialize` and `mGL_CM_Initialize` load the transform, lighting and primitive modules, the `Dirty*` modules and the primitive set-up handlers load the modules they select); the indirect transfer itself is not decoded.
- 13 labels head a module that no slot, ARM load, decoded transfer or address constant reaches (`AA_Response_Max`, the two bitmap stages, the dummy decomposer, `uWramToCram`, `mDummy`, `mmo_DrawTriPrimPhong`, the three math.S routines, `mMatrixTransposeWW`, `mCramToWram` and `mge_ErrNoError`). Routes tried: the `geif.u` slots, every `arm1.u` load of `gepc` and the packed copy, the distributor table and relocations, every decoded transfer target within three words of each address, every immediate of any form in the 129 listings, and a search for the label's first three instructions elsewhere in `ge.u` (only `umo_DummyDecompose` matches another routine, `mmo_DummyDecompose`, and `msqrt`/`misqrt` match each other). **Inferred:** these are unused copies or library routines assembled into the image; no shipped software or published source depends on how they would be entered. Their entries still say what their code does.
- 75 addresses carry two names: 49 `mmo_`/`umo_` pairs, 13 `m`/`u` pairs (`mWramToEram` and `uWramToEram`), 12 command-handler pairs (`mgeb_`/`ugeb_`, `mgesi_`/`ugesi_`, `mges_`/`uges_`), and one address with two `mgeb_` names. The second name's entry says so and repeats what the shared code does.

**Inferred** (the field readings each entry's middle line rests on; counts are over the label's own words):

- **Operations** names the operation of every word that carries the decoded group M, by the table of [ge_ops.md](ge_ops.md#operation-table): unit 1's code in M[6:0] and unit 2's in M[10:7], so a two-unit word counts once for each unit, except that the single-precision multiply paired with the add (M = 0x460) counts as one multiply-add. An operation the diagnostic test does not fix is given by its M value. The reciprocal and reciprocal-square-root seeds come from r110 = 0x6bf and 0x2bf. "Sets the condition flags" counts unit-1 or unit-2 words with the flag-enable bit.
- **Reads command words** lists the offsets D of the words read as source A = 0x1f, the command-input reading of [ge_ops.md](ge_ops.md#input-and-output-fifo-operations). Offsets past a command's own length are the vertex record the distributor assembles.
- **Raster-bus output addresses** counts form-5 stores (enable pair set, B = 0x1e) to 0x1f4-0x1f8, the addresses `mgesi_TbusRegWrite` and `mgesi_BshRegisterWrite` send a raster register write through. A form-5 store to another address is given as a control-memory address, the space the ARM fills with `WriteCram` ([ge_ops.md](ge_ops.md#control-memory-addresses-in-immediates) says which addresses are read back and which are not). **Reads engine memory** counts the form-14 reads (C = 0x1e with the memory pointer field 0x17) of [ge_isa.md](ge_isa.md#immediates).
- **Stored through address registers 9-0xb** counts form-10 and form-12 words that store through B = 9, 10 or 11, the form of the diagnostic test's output instruction. In production code these are engine-memory stores: B names an address register, and only the diagnostic aims those registers at the output ([ge_ops.md](ge_ops.md#input-and-output-fifo-operations)); `mMatrixTransposeWW` uses eleven of them to transpose a matrix in place.
- **Constants** counts form-15 constant loads. The constants line shows each distinct value once, in address order, with its single-precision reading where the pattern is an exactly representable float of moderate size.
- **Conditional transfers** are sequencer code 5 and **loops** sequencer code 3 ([ge_isa.md](ge_isa.md#transfers)).

**Inferred** (how a label ends, its last line):

- **End-of-command wait**: a relative code-4 transfer with immediate 0 in condition group 31, the way 215 handlers end ([ge_ops.md](ge_ops.md#reading-a-handler-in-source-order)).
- **Ends the command with an indirect transfer in condition group 31**: a code-4 transfer with R88 set and immediate 0, which the listings print as a jump to `HereWeGo`. R88 takes the target from outside the word ([ge_isa.md](ge_isa.md#calls-returns-and-the-end-of-a-command)), here the next command's handler.
- **Calls** and **returns**. Code-4 transfers in condition group 0 (112 words) all go to named routines, 96 of them subroutines with the bare `m`/`u` prefix, and at every one of the 112 sites the caller's own code resumes after the delay slots. R88 transfers in groups 4, 5 and 7 (the ones the listings print as going to address 0, 161 words) end 28 of the 31 called routines and most `mmo_` modules; the other three called routines end in a tail jump to one that returns. So group 0 is a call and an R88 transfer outside group 31 a return through a hardware return stack, **inferred** in [ge_isa.md](ge_isa.md#calls-returns-and-the-end-of-a-command) with the counts.
- **Has no jump of its own and runs on into** the next label: the label's words hold no code-4 transfer, so execution continues at the next address.

**Inferred** from the prefixes and from what reaches each class:

- `mgeb_`, `mges_`, `mgesi_`, `mgebi_` are command handlers: every one of them that has a slot is reached through a slot. What the letters after `mge` distinguish is **unknown**: the destination registers 0x430-0x43c that the sending ARM functions write ([arm1_firmware.md](arm1_firmware.md)) do not separate the classes.
- `mmo_` and `umo_` are modules: routines the ARM chains into a pixel or geometry path by slot (the `Add*` routines of [arm1_firmware.md](arm1_firmware.md)) or that handlers reach by transfer. 116 `mmo_` labels have a slot; of the 87 `umo_` labels 49 are aliases of an `mmo_` label.
- A bare `m` or `u` before a capital (`mMatrixMultCCC`, `uSinCos`) marks a subroutine reached by transfer; only three have a slot (`mSpriteObject`, `mSpriteEye`, `mSpriteAxial`, the sprite modes the ARM selects).
- Lower-case names (`mainloop_mm`, `epilogue_clamp`, `lDE2`, `V3Floop`) are local labels: loop heads, epilogues and branch targets inside the routine above them.
- The `.s` sources (lower case) carry the `u` names and the inner loops (`ueval1D.s`, `uxform.s`, `udrawtri.s`); the `.S` sources carry the command handlers. **Inferred:** two source styles, one for hand-scheduled inner loops and one passed through the C preprocessor; the `ge.u` line table distinguishes the names, nothing else in the media does.

Four short lower-case names are subroutines, not local labels: `minv()`, `msqrt()` and `misqrt()` in math.S (reciprocal, square root and reciprocal square root; **established** that math.S holds the reciprocal seed twice and the reciprocal-square-root seed four times, the seed codes of [ge_ops.md](ge_ops.md)), and `mod()` in mpixout.S, reached from `mgeb_XPolygonStippleRotate` (**inferred:** a remainder for the stipple rotation).

**Unknown:** the meaning of the `m`/`u` pairing beyond "same address"; whether `u` names were once separate entry points.

## Modules

<!-- generated by retools/tools/kona/ge_catalogue.py below this line -->

### aa.S

Antialiased-line response tables (maximum, step, response), used by the line-width and AA table code. **Inferred** from its labels and callers.

- `AA_Response`: address 0x9059, `aa.S` line 133 (65 words). Reached: transfers in `mGenerateAALineTable` and 3 other labels.
  **Inferred** role: subroutine that computes the antialiased-line response with float subtracts, adds and multiplies, called by the AA table generators and returning to them.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (18), float add (16), float multiply (16), move (8), operation 0x6ea (4), second-unit move (2); sets the condition flags 10 times.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `AA_Response_Step`: address 0x9045, `aa.S` line 264 (11 words). Reached: transfers in `mGenerateAALineTable` and 3 other labels.
  **Inferred** role: subroutine for one step of the antialiased response: four float compares that set the flags, then a return.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (4), move (4), float add (2); sets the condition flags 4 times.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `AA_Response_Max`: address 0x903c, `aa.S` line 337 (2 words). Reached: no slot, ARM load, decoded transfer or address constant reaches it (routes tried: [How to read the tables](#how-to-read-the-entries)).
  **Inferred** role: two-word subroutine, one move in each unit and a return, giving the response maximum by its name; nothing in the program calls it.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1), second-unit move (1).
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).

### bitmaptofloat.s

Pixel-path stage expanding bitmap bits to floats, LSB-first and MSB-first loops. **Inferred** from its labels and callers.

- `umo_BitmapToFloat`: address 0x25a0, `bitmaptofloat.s` line 56 (69 words). Reached: no slot, ARM load, decoded transfer or address constant reaches it (routes tried: [How to read the tables](#how-to-read-the-entries)).
  **Inferred** role: pixel-path stage that expands bitmap bits to float pixels: single-bit masks (4 to 0x80) choose the bits, then the LSB-first or MSB-first loop runs; no slot or ARM function adds it to a path.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (12), second-unit operation 0xff (8), shift left (8), AND (4), second-unit move (4); loads 9 constants; closes 2 loops.
  It has no jump of its own and runs on into `mainloop_b2f_lsb_first`.
  Constants loaded: 0x4, 0x10, 0x20, 0x40, 0x80, 0x7f00, 0xfe00, 0x1fc00 and 1 more.
- `mainloop_b2f_lsb_first`: address 0x25e5, `bitmaptofloat.s` line 150 (20 words). Reached: inside `umo_BitmapToFloat`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (16), second-unit operation 0xff (16), shift left (1); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_b2f_lsb_first`.
- `epilogue_b2f_lsb_first`: address 0x25f9, `bitmaptofloat.s` line 173 (39 words). Reached: transfers in `umo_BitmapToFloat`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (15), second-unit operation 0xff (15), second-unit move (2), shift left (1).
  It ends the command with an indirect transfer in condition group 31.
- `b2f_msb_first`: address 0x2620, `bitmaptofloat.s` line 219 (13 words). Reached: transfers in `umo_BitmapToFloat`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (4); closes 1 loop.
  It has no jump of its own and runs on into `mainloop_b2f_msb_first`.
- `mainloop_b2f_msb_first`: address 0x262d, `bitmaptofloat.s` line 240 (21 words). Reached: inside `umo_BitmapToFloat`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (16), second-unit operation 0xff (16), second-unit move (1), shift left (1); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_b2f_msb_first`.
- `epilogue_b2f_msb_first`: address 0x2642, `bitmaptofloat.s` line 264 (39 words). Reached: transfers in `b2f_msb_first`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (15), second-unit operation 0xff (15), second-unit move (1), shift left (1).
  It ends the command with an indirect transfer in condition group 31.

### bitmaptoint.s

Pixel-path stage expanding bitmap bits to integers, LSB-first and MSB-first loops. **Inferred** from its labels and callers.

- `umo_BitmapToInt`: address 0x2669, `bitmaptoint.s` line 45 (58 words). Reached: no slot, ARM load, decoded transfer or address constant reaches it (routes tried: [How to read the tables](#how-to-read-the-entries)).
  **Inferred** role: pixel-path stage that expands bitmap bits to integer pixels with masks and integer adds, through an LSB-first or MSB-first loop; no slot or ARM function adds it to a path.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (11), integer add (10), shift left (1); loads 4 constants; closes 2 loops.
  It has no jump of its own and runs on into `mainloop_b2i_lsb_first`.
  Constants loaded: 0x4, 0x1, 0x2, 0x3.
- `mainloop_b2i_lsb_first`: address 0x26a3, `bitmaptoint.s` line 126 (35 words). Reached: inside `umo_BitmapToInt`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (16), logical shift right (15); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_b2i_lsb_first`.
- `epilogue_b2i_lsb_first`: address 0x26c6, `bitmaptoint.s` line 164 (49 words). Reached: transfers in `umo_BitmapToInt`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (15), logical shift right (14).
  It ends the command with an indirect transfer in condition group 31.
- `b2i_msb_first`: address 0x26f7, `bitmaptoint.s` line 218 (8 words). Reached: transfers in `umo_BitmapToInt`.
  **Inferred** role: MSB-first entry of the bitmap-to-integer stage, which `umo_BitmapToInt` takes from its transfer at 0x2692 under condition 0x15; its eight words have the same encodings, in the same order, as the LSB-first set-up at 0x269b to 0x26a2 (the forward 0x15 exit to the epilogue, register loads into G = 0x10, 0 and 6 and the sequencer words), so the bit order is not chosen here but in the loop that follows.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): closes 1 loop.
  It has no jump of its own and runs on into `mainloop_b2i_msb_first`.
- `mainloop_b2i_msb_first`: address 0x26ff, `bitmaptoint.s` line 232 (35 words). Reached: inside `umo_BitmapToInt`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (16), logical shift right (15); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_b2i_msb_first`.
- `epilogue_b2i_msb_first`: address 0x2722, `bitmaptoint.s` line 270 (49 words). Reached: transfers in `b2i_msb_first`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (15), logical shift right (15).
  It ends the command with an indirect transfer in condition group 31.

### bootinit.s

Start-up initialisation of engine memories and registers (`MemRegInit`), reached from the entry code. **Inferred** from its labels and callers.

- `MemRegInit`: address 0x27cc, `bootinit.s` line 9 (9 words). Reached: transfers in `HereWeGo`.
  **Inferred** role: start-up subroutine that the entry code calls before the first command; its nine words carry no operation the field readings name, so what it sets is held in fields not yet read.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).

### bootstrap.s

Program entry at address 0 (`HereWeGo`): every even geif.u entry and the 60 unused odd entries point here, and 31 handlers end by jumping to it (software/ucode/ge_ops.md). **Inferred** from its labels and callers.

- `HereWeGo`: address 0x0000, `bootstrap.s` line 20 (83 words). Reached: the program's first word, where the engines start.
  **Inferred** role: program entry where the engines start: it loads four start-up values (among them 0x43 and 0x435, which the FIFO reconfiguration after a context save loads again), calls the start-up initialisation and waits for the first command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4); loads 4 constants.
  It calls `MemRegInit`; ends with the end-of-command wait.
  Constants loaded: 0x380, 0x43, 0x435, 0x14.

### clamp.s

Pixel-path clamp stage, added by AddClamp. **Inferred** from its labels and callers.

- `mmo_Clamp`: address 0x1633, `clamp.s` line 43 (100 words). Reached: geif slot 254 (entry 509); the ARM functions that send it are in the table below.
  **Inferred** role: pixel-path clamp stage: set-up moves and two clamps, then it runs into its main loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (18), clamp at zero (2); closes 1 loop.
  It has no jump of its own and runs on into `mainloop_clamp`.
- `umo_Clamp`: address 0x1633, `clamp.s` line 43 (100 words). Reached: second name for `mmo_Clamp` at the same address, so the same code.
  **Inferred** role: pixel-path clamp stage: set-up moves and two clamps, then it runs into its main loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (18), clamp at zero (2); closes 1 loop.
  It has no jump of its own and runs on into `mainloop_clamp`.
- `mainloop_clamp`: address 0x1697, `clamp.s` line 167 (29 words). Reached: inside `mmo_Clamp`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations clamp at zero (24), float multiply (24); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_clamp`.
- `epilogue_clamp`: address 0x16b4, `clamp.s` line 199 (51 words). Reached: transfers in `mmo_Clamp`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations clamp at zero (23), float multiply (23).
  It ends the command with an indirect transfer in condition group 31.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mmo_Clamp` | 254 | `AddClamp` |  |

### clear.S

Clear commands: colour, index, depth, accumulation and overlay clears, sent by arm_clear and its helpers. **Inferred** from its labels and callers.

- `mgesi_ClearColor`: address 0x91ce, `clear.S` line 43 (21 words). Reached: geif slot 336 (entry 673); the ARM functions that send it are in the table below.
  **Inferred** role: colour clear: reads the four colour words, scales them with float multiplies and writes three words to the raster bus (constants 0x1c12 and 0x1c13 among them).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations move (5), float multiply (4); writes 3 words to the raster-bus output addresses; loads 4 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x1c13, 0x400c0c00, 0xc0000, 0x1c12.
- `mgesi_ClearLA16`: address 0x91b6, `clear.S` line 97 (24 words). Reached: geif slot 402 (entry 805); the ARM functions that send it are in the table below.
  **Inferred** role: clear of a 16-bit luminance-alpha buffer: scales the one clear value (constants 4096.0 and 16.0 among nine) and writes three raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (6), float multiply (4); writes 3 words to the raster-bus output addresses; loads 9 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x400c0c00, 4096.0 (0x45800000), 0x40000, 0x1c13, 0x40041400, 16.0 (0x41800000), 0xc0000, 0x417fffff and 1 more.
- `mgesi_ClearIndex`: address 0x91a9, `clear.S` line 166 (13 words). Reached: geif slot 346 (entry 693); the ARM functions that send it are in the table below.
  **Inferred** role: colour-index clear: converts the index operand to float, scales it and writes three raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (3), float multiply (1), integer-to-float conversion (1); writes 3 words to the raster-bus output addresses; loads 2 constants.
  It ends with the end-of-command wait.
  Constants loaded: 2.1875 (0x400c0000), 0x1c12.
- `mgesi_OverlayClearColor`: address 0x918f, `clear.S` line 210 (26 words). Reached: geif slot 343 (entry 687); the ARM functions that send it are in the table below.
  **Inferred** role: overlay-plane colour clear: moves and scales the four colour words and writes two raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations move (11), float multiply (5); writes 2 words to the raster-bus output addresses; loads 9 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x40021600, 0x30400, 0x50700, 0x51100, 0x3fffffff, 0x11000, 0x41ffffff, 0x40ffffff and 1 more.
- `mgesi_OverlayClearIndex`: address 0x9156, `clear.S` line 275 (36 words). Reached: geif slot 344 (entry 689); the ARM functions that send it are in the table below.
  **Inferred** role: overlay-plane index clear: compares one operand, scales by 1/256 and 1/16 and writes four raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations move (13), float multiply (2), integer subtract or compare (1); sets the condition flags 2 times; writes 4 words to the raster-bus output addresses; loads 9 constants; takes 1 conditional transfer.
  It ends with the end-of-command wait.
  Constants loaded: 0x1c12, 0x8, 0.00390625 (0x3b800000), 0x40080400, 0x81000, 0.0625 (0x3d800000), 0x40000, 0x41400.
- `mgesi_ClearDepth32`: address 0x9138, `clear.S` line 363 (29 words). Reached: geif slot 345 (entry 691); the ARM functions that send it are in the table below.
  **Inferred** role: 32-bit depth clear: double-precision multiplies on the three operand words, then nine raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations move (11), double move (2), double multiply (2), operation 0x6aa (2); writes 9 words to the raster-bus output addresses; loads 7 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x13a1c09, 0x1408, 2.5 (0x40200000), 0x70000, 0xffffffff, 0x41efffff, 0x1681408.
- `mgesi_ClearAccum`: address 0x911b, `clear.S` line 424 (29 words). Reached: geif slot 347 (entry 695); the ARM functions that send it are in the table below.
  **Inferred** role: accumulation-buffer clear: combines the operand with the masks 0xfff to 0x1f00000 (AND and OR) and writes six raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations AND (4), move (4), OR (2), logical shift right (2), shift left (2), float multiply (1), float-to-integer conversion (1); writes 6 words to the raster-bus output addresses; loads 9 constants.
  It jumps within its own code.
  Constants loaded: 0x1c12, 0x1c13, 0x4b7fffff, 0xfff, 0xf000, 0xf0000, 0x1f00000, 0xc and 1 more.
- `mgesi_ClearAccum32`: address 0x90f8, `clear.S` line 487 (35 words). Reached: geif slot 433 (entry 867); the ARM functions that send it are in the table below.
  **Inferred** role: 32-bit accumulation-buffer clear: the same masking as the 16-bit clear plus double-precision scaling, six raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations AND (4), move (4), OR (2), double multiply (2), logical shift right (2), operation 0x6b1 (2), shift left (2), operation 0x6f5 (1); writes 6 words to the raster-bus output addresses; loads 11 constants.
  It jumps within its own code.
  Constants loaded: 0x4b7fffff, 0x1c12, 0x1c13, 0xff800000, 0x41dfffff, 0x4, 0xc, 0xfff00000 and 3 more.
- `mgesi_ClearAccumWord`: address 0x90ea, `clear.S` line 551 (14 words). Reached: geif slot 348 (entry 697); the ARM functions that send it are in the table below.
  **Inferred** role: writes one accumulation-buffer clear word: scales the operand and writes three raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (4), float multiply (1); writes 3 words to the raster-bus output addresses; loads 3 constants.
  It ends with the end-of-command wait.
  Constants loaded: 2.5 (0x40200000), 0x1c09, 0x4b7fffff.
- `mgesi_ClearAccumWord32`: address 0x90c4, `clear.S` line 627 (26 words). Reached: geif slot 432 (entry 865); the ARM functions that send it are in the table below.
  **Inferred** role: writes one 32-bit accumulation-buffer clear word: double-precision scaling of two operand words, then three raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (6), double multiply (2), operation 0x6b1 (2), OR (1), logical shift right (1), operation 0x6f5 (1), shift left (1); sets the condition flags once; writes 3 words to the raster-bus output addresses; loads 5 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0xff800000, 0x41dfffff, 0x10, 40.0 (0x42200000), 0x1c09.
- `mgesi_ClearVertex`: address 0x90a3, `clear.S` line 658 (31 words). Reached: geif slot 349 (entry 699); the ARM functions that send it are in the table below.
  **Inferred** role: masked-clear set-up: reads nine operand words, converts and scales them and stores seven values to engine memory 0xc9-0xd5 before one raster bus word.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 8; operations move (6), float multiply (5), double move (4), double multiply (2), integer-to-float conversion (2), operation 0x6aa (2), AND (1), NOT (1); sets the condition flags 2 times; writes 1 word to the raster-bus output addresses; stores 7 words to control-memory addresses from 0xc9 to 0xd5; loads 4 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x800, 16.0 (0x41800000), 0x412fffff, 0xfff00000.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgesi_ClearColor` | 336 | `arm_clear` | `HP_CLEAR` |
| `mgesi_ClearLA16` | 402 | `arm_clear` | `HP_CLEAR` |
| `mgesi_ClearIndex` | 346 | `arm_clear` | `HP_CLEAR` |
| `mgesi_OverlayClearColor` | 343 | `overlay_clear` |  |
| `mgesi_OverlayClearIndex` | 344 | `overlay_clear` |  |
| `mgesi_ClearDepth32` | 345 | `arm_cleardepth`, `depth_pop` | `HP_CLEARDEPTH` |
| `mgesi_ClearAccum` | 347 | `accum_clear` |  |
| `mgesi_ClearAccum32` | 433 | `accum_clear32` |  |
| `mgesi_ClearAccumWord` | 348 | `accum_clear` |  |
| `mgesi_ClearAccumWord32` | 432 | `accum_clear32` |  |
| `mgesi_ClearVertex` | 349 | `masked_clear` |  |

### clip.S

Triangle and polygon clipping against the user planes and the view frustum. **Inferred** from its labels and callers.

- `mClipPolyToPlane`: address 0xefb5, `clip.S` line 93 (229 words). Reached: transfers in `mClipTriUserAndFrustum`.
  **Inferred** role: clips a polygon against one plane: by its name and its float multiplies, adds and reciprocal steps it interpolates the crossing vertices, then returns to the triangle clipper.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (45), move (27), float add (14), reciprocal Newton step (8), float subtract (6), operation 0x6ea (5), shift left (5), AND (4), OR (4), XOR (2), float multiply-add (2), float-to-integer conversion (1), reciprocal seed (1); sets the condition flags 11 times; loads 6 constants; takes 12 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31); jumps within its own code; conditional transfers reach `HereWeGo`.
  Constants loaded: 0x400000, 0x1, 0x8000, 0.
- `mEyeToClipAfterUserClip`: address 0xf182, `clip.S` line 712 (77 words). Reached: transfers in `mClipLinUserAndFrustum` and 1 other label.
  **Inferred** role: takes the vertices a user-plane clip produced from eye to clip space with multiply-add chains, then returns.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (20), float add (16), float multiply-add (16), move (5), AND (4), float subtract (4); sets the condition flags 4 times; loads 1 constant; takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0.5 (0x3f000000).
- `mSetClipVertsFree`: address 0xf20a, `clip.S` line 860 (16 words). Reached: transfers in `mClipTriUserAndFrustum`.
  **Inferred** role: marks the clipper's vertex slots free: loads six constants, five of them multiples of 0x9c (a vertex-record stride, inferred), and returns.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): loads 6 constants.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0, 0x9c, 0x138, 0x1d4, 0x270, 0x3c.
- `mPerTriClipFlagsFrustum`: address 0xef7e, `clip.S` line 924 (29 words). Reached: transfers in `mClipTriUserAndFrustum`.
  **Inferred** role: computes a triangle's frustum flags by float subtracts and multiplies against the bounds, then ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (5), float multiply (4), move (2), OR (1), float add (1); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `mClipTriUserAndFrustum`: address 0xed52, `clip.S` line 1080 (218 words). Reached: its address loaded as a constant in `mGL_EM_Initialize` and 13 other labels.
  **Inferred** role: triangle clipper: tests the outcode flags, calls the vertex-slot, per-plane clip and clip-space routines and ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 11 to 14; operations move (73), AND (12), second-unit move (7), operation 0x6ec (5), OR (4), operation 0x6d1 (3), float-to-integer conversion (2), integer add (2), logical shift right (1), second-unit move or minimum (1), shift left (1); sets the condition flags 11 times; loads 18 constants; takes 27 conditional transfers.
  It calls `mSetClipVertsFree` and 4 other routines; ends the command with an indirect transfer in condition group 31; returns to its caller or the next chained stage (an indirect transfer outside condition group 31); jumps within its own code; conditional transfers reach `uEvalSaveState` and 3 other labels.
  Constants loaded: 0xeda7 (code in `mClipTriUserAndFrustum`), 0x2, 2.0 (0x40000000), 0x80000000, 0x1c00000, 0x10, 0x20, 0x1 and 6 more.
- `mClipTriFlushSR`: address 0xf14f, `clip.S` line 1603 (42 words). Reached: transfers in `mClipTriUserAndFrustum`.
  **Inferred** role: ends a clipped triangle in the save-and-restore strip mode: 15 moves and a constant holding an address inside itself, then it returns or ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (15); loads 3 constants.
  It ends the command with an indirect transfer in condition group 31; returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0x3f, 0xf168 (code in `mClipTriFlushSR`).
- `mClipTriFlush`: address 0xf1dc, `clip.S` line 1700 (36 words). Reached: transfers in `mClipTriUserAndFrustum`.
  **Inferred** role: ends a clipped triangle: 15 moves and a constant holding an address inside itself, then it returns or ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (15); loads 3 constants.
  It ends the command with an indirect transfer in condition group 31; returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0x3f, 0xf1f3 (code in `mClipTriFlush`).

### colortable.S

Colour-table and pixel-map lookup stages and their upload and download. **Inferred** from its labels and callers.

- `mgeb_ColorTableSetup`: address 0x422e, `colortable.S` line 80 (13 words). Reached: geif slot 128 (entry 257); the ARM functions that send it are in the table below.
  **Inferred** role: colour-table set-up: tests its one operand and branches to the matching colour-table path.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (3); sets the condition flags once; takes 1 conditional transfer.
  It ends with the end-of-command wait; conditional transfers reach `uEvalSaveState`.
- `mmo_Lutout`: address 0x41fb, `colortable.S` line 110 (26 words). Reached: geif slot 293 (entry 587); the ARM functions that send it are in the table below.
  **Inferred** role: pixel-path lookup output stage: eight moves, then it continues into the one-dimensional evaluator entry.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (8).
  It jumps to `umo_EvalEntry1D`.
- `mLutoutDone`: address 0x41e0, `colortable.S` line 151 (8 words). Reached: transfers in `mmo_LutoutI` and 2 other labels.
  **Inferred** role: common exit of the three lookup output stages: two moves and a return.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2); loads 2 constants.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0.
- `mmo_LutoutRGBA`: address 0x41b5, `colortable.S` line 174 (25 words). Reached: geif slot 294 (entry 589); the ARM functions that send it are in the table below.
  **Inferred** role: RGBA lookup output: clamps and scales four components and joins the common exit.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations clamp at zero (4), float multiply (4), float-to-integer conversion (4), OR (2), shift left (2); takes 1 conditional transfer.
  It jumps to `mLutoutDone`.
- `mmo_LutoutLA`: address 0x418e, `colortable.S` line 208 (19 words). Reached: geif slot 295 (entry 591); the ARM functions that send it are in the table below.
  **Inferred** role: luminance-alpha lookup output: clamps and scales two components and joins the common exit.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations OR (2), clamp at zero (2), float multiply (2), float-to-integer conversion (2), shift left (1); takes 1 conditional transfer.
  It jumps to `mLutoutDone`.
- `mmo_LutoutI`: address 0x416c, `colortable.S` line 239 (13 words). Reached: geif slot 296 (entry 593); the ARM functions that send it are in the table below.
  **Inferred** role: intensity lookup output: clamps and scales one component and joins the common exit.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations OR (1), clamp at zero (1), float multiply (1), float-to-integer conversion (1), shift left (1); takes 1 conditional transfer.
  It jumps to `mLutoutDone`.
- `mgeb_LutRamp3`: address 0x4074, `colortable.S` line 302 (192 words). Reached: geif slot 157 (entry 315); the ARM functions that send it are in the table below.
  **Inferred** role: three-component lookup ramp: steps three running values, applies unit-1 code 0x51 to each, and shifts and ORs them into packed entries (constant 0xffff0000) stored for the download (software/ucode/ge_compute.md).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations OR (48), shift left (32), move (22), integer add (17), AND (16), operation 0x6d1 (16), second-unit operation 0xff (1); loads 2 constants; takes 1 conditional transfer.
  It waits on its own address under another condition group.
  Constants loaded: 0xffff0000, 0x10.
- `mgeb_LutRamp1`: address 0x4022, `colortable.S` line 379 (41 words). Reached: geif slot 156 (entry 313); the ARM functions that send it are in the table below.
  **Inferred** role: fills a one-component lookup ramp with integer adds and packing.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 4; operations integer add (4), move (4), OR (2), operation 0x6d1 (2), second-unit operation 0xff (1); loads 1 constant; takes 1 conditional transfer.
  It waits on its own address under another condition group.
  Constants loaded: 0x3.
- `mgeb_PixMapOutputI`: address 0x3fd8, `colortable.S` line 456 (39 words). Reached: geif slot 160 (entry 321).
  **Inferred** role: index pixel-map output stage: masks the value to 16 bits (0xffff).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations move (3), AND (2), OR (2), float-to-integer conversion (2), shift left (2); loads 2 constants; takes 1 conditional transfer.
  It waits on its own address under another condition group.
  Constants loaded: 0x10, 0xffff.
- `mgeb_PixMapOutputRGBA`: address 0x3f87, `colortable.S` line 520 (43 words). Reached: geif slot 161 (entry 323); the ARM functions that send it are in the table below.
  **Inferred** role: RGBA pixel-map output stage: clamps, scales by 65535.0 and masks the components to 16 bits.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations move (4), shift left (3), OR (2), clamp at zero (2), float multiply (2), float-to-integer conversion (2), operation 0x6d1 (2); loads 2 constants; takes 1 conditional transfer.
  It ends with the end-of-command wait.
  Constants loaded: 65535.0 (0x477fff00), 0xffff.
- `mgesi_TLutDownload`: address 0x3f52, `colortable.S` line 589 (32 words). Reached: geif slot 226 (entry 453); the ARM functions that send it are in the table below.
  **Inferred** role: texture-lookup-table download: reads six set-up words from engine memory and writes one raster bus word.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (9); writes 1 word to the raster-bus output addresses; reads engine memory at 6 addresses from 0x299 to 0x29e; loads 1 constant.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0x1854 (code in `mainloop_exp_ci`).
- `mTLutDownloadDone`: address 0x3f49, `colortable.S` line 628 (6 words). Reached: transfers in `mmo_TLutDownloadI` and 2 other labels.
  **Inferred** role: common end of the texture lookup downloads: two complemented words to the raster bus and the end-of-command wait.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations NOT (2), move (1); writes 2 words to the raster-bus output addresses.
  It ends with the end-of-command wait.
- `mmo_TLutDownloadRGBA`: address 0x3f10, `colortable.S` line 647 (38 words). Reached: geif slot 330 (entry 661); the ARM functions that send it are in the table below.
  **Inferred** role: sends RGBA texture lookup entries: engine-memory reads and moves with the constants 0x2181800 and 0x2180000, then the common end.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (13), integer add (2), second-unit operation 0xff (2); reads engine memory at 3 addresses from 0x295 to 0x297; loads 3 constants; takes 2 conditional transfers.
  It jumps to `mTLutDownloadDone`.
  Constants loaded: 0x2181800, 0x4004, 0x2180000.
- `mmo_TLutDownloadLA`: address 0x3edb, `colortable.S` line 699 (39 words). Reached: geif slot 331 (entry 663); the ARM functions that send it are in the table below.
  **Inferred** role: sends luminance-alpha texture lookup entries: engine-memory reads and moves, then the common end.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (15), integer add (3), second-unit operation 0xff (2); reads engine memory at 4 addresses from 0x295 to 0x298; loads 3 constants; takes 1 conditional transfer.
  It jumps to `mTLutDownloadDone`.
  Constants loaded: 0x2180000, 0x2, 0x2181800.
- `mmo_TLutDownloadI`: address 0x3ea8, `colortable.S` line 744 (33 words). Reached: geif slot 332 (entry 665); the ARM functions that send it are in the table below.
  **Inferred** role: sends intensity texture lookup entries: moves with four constants, then the common end.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (12); loads 4 constants; takes 1 conditional transfer.
  It jumps to `mTLutDownloadDone`.
  Constants loaded: 0x420c2400, 0x20c1800, 0x20c0c00, 0x20c0000.
- `mmo_LUT16_big`: address 0x3c18, `colortable.S` line 809 (320 words). Reached: geif slot 290 (entry 581).
  **Inferred** role: large 16-bit lookup stage: float adds, 16-bit masks and 15 conditional transfers.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (36), float-to-integer conversion (36), AND (18), logical shift right (18), move (17); loads 2 constants; takes 15 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0x10, 0xffff.
- `mmo_LUT_I2C_16`: address 0x3b81, `colortable.S` line 958 (101 words). Reached: geif slot 291 (entry 583); the ARM functions that send it are in the table below.
  **Inferred** role: index-to-colour 16-bit lookup stage: 15 engine-memory reads and 45 moves.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (45), AND (4), integer subtract or compare (1); sets the condition flags once; reads engine memory at 15 addresses from 0xb9e to 0xbad; loads 1 constant; closes 1 loop.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0x1.
- `mmo_LUT_I2I_16`: address 0x3aae, `colortable.S` line 1071 (113 words). Reached: geif slot 292 (entry 585); the ARM functions that send it are in the table below.
  **Inferred** role: index-to-index 16-bit lookup stage: ten engine-memory reads and 49 moves.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (49), AND (5), integer subtract or compare (1); sets the condition flags once; reads engine memory at 10 addresses from 0xb9e to 0xbaa; loads 1 constant; closes 4 loops.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0x1.
- `mgesi_LutUpload`: address 0x3a6d, `colortable.S` line 1213 (47 words). Reached: geif slot 210 (entry 421); the ARM functions that send it are in the table below.
  **Inferred** role: lookup-table upload: converts table entries to float, scales them and masks them to 16 bits.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 7; operations move (13), AND (4), float multiply (4), integer-to-float conversion (4), logical shift right (3), integer subtract or compare (1); writes 1 word to the raster-bus output addresses; loads 3 constants; closes 1 loop.
  It waits on its own address under another condition group.
  Constants loaded: 0x10, 0x476, 0xffff.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgeb_ColorTableSetup` | 128 | `SetupGE_ColorTable` |  |
| `mmo_Lutout` | 293 | `AddLutOutput` |  |
| `mmo_LutoutRGBA` | 294 | `U_uLutOutput` |  |
| `mmo_LutoutLA` | 295 | `U_uLutOutput` |  |
| `mmo_LutoutI` | 296 | `U_uLutOutput` |  |
| `mgeb_LutRamp3` | 157 | `PixEndColorTable` |  |
| `mgeb_LutRamp1` | 156 | `PixEndColorTable` |  |
| `mgeb_PixMapOutputRGBA` | 161 | `do_pixelmap` |  |
| `mgesi_TLutDownload` | 226 | `PixValidateTexColorTable` |  |
| `mmo_TLutDownloadRGBA` | 330 | `PixValidateTexColorTable` |  |
| `mmo_TLutDownloadLA` | 331 | `PixValidateTexColorTable` |  |
| `mmo_TLutDownloadI` | 332 | `PixValidateTexColorTable` |  |
| `mmo_LUT_I2C_16` | 291 | `AddIndexLut` |  |
| `mmo_LUT_I2I_16` | 292 | `AddIndexLut` |  |
| `mgesi_LutUpload` | 210 | `do_getcolortable` |  |

### conv3x3.s

General 3x3 convolution pixel stage. **Inferred** from its labels and callers.

- `mmo_GeneralConvolve3x3_124`: address 0x20a3, `conv3x3.s` line 127 (93 words). Reached: geif slot 283 (entry 567).
  **Inferred** role: general 3x3 convolution stage for one, two or four components: set-up moves, then its normal path.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (40); loads 2 constants; closes 1 loop.
  It has no jump of its own and runs on into `normal_path_conv3`.
  Constants loaded: 0.
- `umo_GeneralConvolve3x3_124`: address 0x20a3, `conv3x3.s` line 127 (93 words). Reached: second name for `mmo_GeneralConvolve3x3_124` at the same address, so the same code.
  **Inferred** role: general 3x3 convolution stage for one, two or four components: set-up moves, then its normal path.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (40); loads 2 constants; closes 1 loop.
  It has no jump of its own and runs on into `normal_path_conv3`.
  Constants loaded: 0.
- `normal_path_conv3`: address 0x2100, `conv3x3.s` line 246 (74 words). Reached: transfers in `mmo_GeneralConvolve3x3_124`; its address loaded as a constant in `mValidateTexenvMode` and 1 other label.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (10), float multiply (8), move (3), integer add (1); loads 1 constant; closes 1 loop.
  It has no jump of its own and runs on into `mainloop_conv3`.
  Constants loaded: 0.
- `mainloop_conv3`: address 0x214a, `conv3x3.s` line 345 (37 words). Reached: inside `mmo_GeneralConvolve3x3_124`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (36); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_conv3`.
- `epilogue_conv3`: address 0x216f, `conv3x3.s` line 393 (26 words). Reached: transfers in `normal_path_conv3`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (9), float add (8).
  It ends the command with an indirect transfer in condition group 31.

### conv5x5.s

General 5x5 convolution pixel stage. **Inferred** from its labels and callers.

- `mmo_GeneralConvolve5x5_124`: address 0x2189, `conv5x5.s` line 110 (130 words). Reached: geif slot 284 (entry 569).
  **Inferred** role: general 5x5 convolution stage for one, two or four components: set-up moves, then its normal path.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (43); loads 6 constants; closes 1 loop.
  It has no jump of its own and runs on into `normal_path_conv5`.
  Constants loaded: 0.
- `umo_GeneralConvolve5x5_124`: address 0x2189, `conv5x5.s` line 110 (130 words). Reached: second name for `mmo_GeneralConvolve5x5_124` at the same address, so the same code.
  **Inferred** role: general 5x5 convolution stage for one, two or four components: set-up moves, then its normal path.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (43); loads 6 constants; closes 1 loop.
  It has no jump of its own and runs on into `normal_path_conv5`.
  Constants loaded: 0.
- `normal_path_conv5`: address 0x220b, `conv5x5.s` line 275 (90 words). Reached: transfers in `mmo_GeneralConvolve5x5_124`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (18), float multiply (7), move (4), integer add (1); loads 1 constant; closes 1 loop.
  It has no jump of its own and runs on into `mainloop_conv5`.
  Constants loaded: 0.
- `mainloop_conv5`: address 0x2265, `conv5x5.s` line 399 (109 words). Reached: inside `mmo_GeneralConvolve5x5_124`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (92), float add (8), float multiply (8); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_conv5`.
- `epilogue_conv5`: address 0x22d2, `conv5x5.s` line 550 (91 words). Reached: transfers in `normal_path_conv5`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (46), float add (11), float multiply (4), integer subtract or compare (1), move (1).
  It ends the command with an indirect transfer in condition group 31.

### conv7x7.s

General 7x7 convolution pixel stage. **Inferred** from its labels and callers.

- `mmo_GeneralConvolve7x7_124`: address 0x232d, `conv7x7.s` line 116 (143 words). Reached: geif slot 285 (entry 571).
  **Inferred** role: general 7x7 convolution stage for one, two or four components: set-up moves, then its normal path.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (40); loads 8 constants; closes 1 loop.
  It has no jump of its own and runs on into `normal_path_conv7`.
  Constants loaded: 0.
- `umo_GeneralConvolve7x7_124`: address 0x232d, `conv7x7.s` line 116 (143 words). Reached: second name for `mmo_GeneralConvolve7x7_124` at the same address, so the same code.
  **Inferred** role: general 7x7 convolution stage for one, two or four components: set-up moves, then its normal path.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (40); loads 8 constants; closes 1 loop.
  It has no jump of its own and runs on into `normal_path_conv7`.
  Constants loaded: 0.
- `normal_path_conv7`: address 0x23bc, `conv7x7.s` line 295 (123 words). Reached: transfers in `mmo_GeneralConvolve7x7_124`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (42), float multiply (7), move (4), integer add (1); loads 1 constant; closes 1 loop.
  It has no jump of its own and runs on into `mainloop_conv7`.
  Constants loaded: 0.
- `mainloop_conv7`: address 0x2437, `conv7x7.s` line 456 (217 words). Reached: inside `mmo_GeneralConvolve7x7_124`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (188), float add (8), float multiply (8); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_conv7`.
- `epilogue_conv7`: address 0x2510, `conv7x7.s` line 734 (144 words). Reached: transfers in `normal_path_conv7`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (94), float add (11), float multiply (4), integer subtract or compare (1), move (1).
  It ends the command with an indirect transfer in condition group 31.

### CRAMBlockLoad.s

Block load of coefficient memory (CRAM) from the input stream. **Inferred** from its labels and callers.

- `mgeb_CRAMBlockLoad`: address 0x15f9, `CRAMBlockLoad.s` line 50 (26 words). Reached: geif slot 127 (entry 255).
  **Inferred** role: coefficient-memory block load: five set-up moves, then the copy loop that follows it.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 4; operations move (5); closes 1 loop.
  It has no jump of its own and runs on into `mainloop_cbl`.
- `ugeb_CRAMBlockLoad`: address 0x15f9, `CRAMBlockLoad.s` line 50 (26 words). Reached: second name for `mgeb_CRAMBlockLoad` at the same address, so the same code.
  **Inferred** role: coefficient-memory block load: five set-up moves, then the copy loop that follows it.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 4; operations move (5); closes 1 loop.
  It has no jump of its own and runs on into `mainloop_cbl`.
- `mainloop_cbl`: address 0x1613, `CRAMBlockLoad.s` line 103 (9 words). Reached: inside `mgeb_CRAMBlockLoad`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (5); closes 1 loop.
  It has no jump of its own and runs on into `post_loop_cbl`.
- `post_loop_cbl`: address 0x161c, `CRAMBlockLoad.s` line 118 (7 words). Reached: inside `mgeb_CRAMBlockLoad`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It has no jump of its own and runs on into `epilogue_cbl`.
- `epilogue_cbl`: address 0x1623, `CRAMBlockLoad.s` line 148 (16 words). Reached: transfers in `mgeb_CRAMBlockLoad`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4).
  It ends with the end-of-command wait.

### ctx_deact.S

Context save (deactivate and mop-up): engine state written out section by section for the ARM's deactivate code. **Inferred** from its labels and callers.

- `mges_ContextDeactivate`: address 0x68da, `ctx_deact.S` line 217 (240 words). Reached: geif slot 186 (entry 373); the ARM functions that send it are in the table below.
  **Inferred** role: context save: 96 moves and calls to the memory-clear and copy routines, ending with the end-of-command wait.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (96), NOT (6), integer add (5), integer subtract or compare (2), OR (1), arithmetic shift right (1); sets the condition flags 2 times; writes 47 words to the raster-bus output addresses; reads engine memory at 3 addresses from 0xeae to 0xeb0; loads 55 constants; takes 2 conditional transfers.
  It calls `mClearEram` and 3 other routines; ends with the end-of-command wait; conditional transfers reach `uEvalSaveState`.
  Constants loaded: 0, 0x477, 0x3ff1 (code in `mgeb_PixMapOutputI`), 0x1, 0x460, 0x461, 0x462, 0x463 and 32 more.
- `mges_ContextDeactGED`: address 0x68ba, `ctx_deact.S` line 585 (21 words). Reached: geif slot 183 (entry 367); the ARM functions that send it are in the table below.
  **Inferred** role: saves the distributor-facing state: one raster bus word, then a call to the WRAM-to-FIFO copy.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4), integer add (1); writes 1 word to the raster-bus output addresses; loads 3 constants.
  It calls `mWramToFifo`; ends with the end-of-command wait.
  Constants loaded: 0x476, 0x100, 0.
- `mgeb_ContextDeactReconfigureFifo`: address 0x6886, `ctx_deact.S` line 633 (49 words). Reached: geif slot 185 (entry 371); the ARM functions that send it are in the table below.
  **Inferred** role: reconfigures the input FIFO after a save: two complemented words, one raster bus word and the constants 0x43 and 0x435 that the entry code also loads.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations NOT (2), move (2); writes 1 word to the raster-bus output addresses; loads 2 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x43, 0x435.
- `mges_ContextDeactSection`: address 0x6866, `ctx_deact.S` line 699 (20 words). Reached: geif slot 184 (entry 369); the ARM functions that send it are in the table below.
  **Inferred** role: saves one section named by its operand word through the WRAM-to-FIFO copy.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (4), integer add (1); writes 1 word to the raster-bus output addresses; loads 2 constants.
  It calls `mWramToFifo`; ends with the end-of-command wait.
  Constants loaded: 0x476, 0.
- `mges_ContextDeactStoreValue`: address 0x6859, `ctx_deact.S` line 752 (6 words). Reached: geif slot 181 (entry 363); the ARM functions that send it are in the table below.
  **Inferred** role: stores the one operand word of the command into the saved context.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (1).
  It ends with the end-of-command wait.
- `mges_ContextDeactFinish`: address 0x67d0, `ctx_deact.S` line 784 (125 words). Reached: geif slot 182 (entry 365); the ARM functions that send it are in the table below.
  **Inferred** role: finishes a context save: reads saved engine memory and writes 58 words to the raster bus.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (77), integer add (1); writes 58 words to the raster-bus output addresses; reads engine memory at 11 addresses from 0xeae to 0x1386; loads 23 constants; takes 1 conditional transfer.
  It jumps within its own code.
  Constants loaded: 0x477, 0x460, 0x461, 0x462, 0x463, 0x476, 0xa4, 0x20f0476 and 3 more.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mges_ContextDeactivate` | 186 | `deactivate_ge` |  |
| `mges_ContextDeactGED` | 183 | `arm_context_deactivate` | `HP_CONTEXT_DEACTIVATE` |
| `mgeb_ContextDeactReconfigureFifo` | 185 | `arm_context_deactivate`, `arm_context_mopup` | `HP_CONTEXT_DEACTIVATE`, `HP_CONTEXT_MOPUP` |
| `mges_ContextDeactSection` | 184 | `deact_section` |  |
| `mges_ContextDeactStoreValue` | 181 | `deactivate_arm`, `deactivate_ged_ge` |  |
| `mges_ContextDeactFinish` | 182 | `arm_context_deactivate` | `HP_CONTEXT_DEACTIVATE` |

### ctx_load.S

Context load and destroy: registers, flag registers, WRAM, ERAM, CRAM and the input FIFO restored, and reload from the BEF shadow. **Inferred** from its labels and callers.

- `mges_ContextLoadODMA`: address 0x6795, `ctx_load.S` line 145 (20 words). Reached: geif slot 190 (entry 381); the ARM functions that send it are in the table below.
  **Inferred** role: restores the output DMA state: five operand words with the constants 0x450 to 0x454, eight raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 4; operations move (10); writes 8 words to the raster-bus output addresses; loads 5 constants.
  It jumps within its own code.
  Constants loaded: 0x450, 0x451, 0x452, 0x453, 0x454.
- `mges_ContextLoadBEF`: address 0x6760, `ctx_load.S` line 208 (41 words). Reached: geif slot 187 (entry 375); the ARM functions that send it are in the table below.
  **Inferred** role: restores the back-end shadow: packs fields and writes four raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (8), integer add (3), NOT (2), OR (2); writes 4 words to the raster-bus output addresses; loads 6 constants; takes 1 conditional transfer.
  It jumps within its own code.
  Constants loaded: 0x1408, 0x30000, 0x60000, 0x3100000, 0x3110000, 0x3120000.
- `mges_ContextReloadFromBEF`: address 0x6730, `ctx_load.S` line 297 (40 words). Reached: geif slot 188 (entry 377); the ARM functions that send it are in the table below.
  **Inferred** role: reloads raster state from the 89-word back-end shadow, writing seven raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (9), integer add (3), NOT (2), OR (2); writes 7 words to the raster-bus output addresses; loads 5 constants; takes 1 conditional transfer.
  It ends with the end-of-command wait.
  Constants loaded: 0x1100000, 0x70000, 0x1408, 0x1110000, 0x1120000.
- `mgeb_ContextLoadCram`: address 0x671e, `ctx_load.S` line 387 (9 words). Reached: geif slot 130 (entry 261); the ARM functions that send it are in the table below.
  **Inferred** role: restores coefficient memory by calling the WRAM-to-CRAM copy.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It calls `mWramToCram`; ends with the end-of-command wait.
- `mgeb_ContextLoadEram`: address 0x670c, `ctx_load.S` line 419 (9 words). Reached: geif slot 131 (entry 263); the ARM functions that send it are in the table below.
  **Inferred** role: restores external memory by calling the WRAM-to-ERAM copy.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0.
  It calls `mWramToEram`; ends with the end-of-command wait.
- `mgeb_ContextLoadWram`: address 0x66ff, `ctx_load.S` line 437 (6 words). Reached: geif slot 134 (entry 269); the ARM functions that send it are in the table below.
  **Inferred** role: restores working memory; its six words carry no operation the field readings name.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It ends with the end-of-command wait.
- `mgeb_ContextLoadFlagRegs`: address 0x66ed, `ctx_load.S` line 457 (10 words). Reached: geif slot 133 (entry 267); the ARM functions that send it are in the table below.
  **Inferred** role: restores the flag registers from four operand words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations move (4).
  It ends with the end-of-command wait.
- `mgeb_ContextLoadRegs`: address 0x6697, `ctx_load.S` line 484 (67 words). Reached: geif slot 132 (entry 265); the ARM functions that send it are in the table below.
  **Inferred** role: restores engine registers from nine operand words, with two conditional transfers to the material-state update.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 8; operations move (12); takes 2 conditional transfers.
  It ends with the end-of-command wait; conditional transfers reach `mLiUpdateMtrlState`.
- `mges_ContextLoadFifo`: address 0x668a, `ctx_load.S` line 564 (5 words). Reached: geif slot 189 (entry 379); the ARM functions that send it are in the table below.
  **Inferred** role: restores the input FIFO; its five words carry no operation the field readings name.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It ends with the end-of-command wait.
- `mgeb_ContextDestroy`: address 0x6622, `ctx_load.S` line 590 (90 words). Reached: geif slot 129 (entry 259); the ARM functions that send it are in the table below.
  **Inferred** role: tears down a context: 38 moves, two conditional transfers and the constants 0x2102000 to 0x2202000.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (38); loads 4 constants; takes 2 conditional transfers.
  It ends with the end-of-command wait.
  Constants loaded: 40.0 (0x42200000), 0x2102000, 0x2103000, 0x2202000.
- `mLiUpdateMtrlState`: address 0x67a9, `ctx_load.S` line 670 (27 words). Reached: transfers in `mgeb_ContextLoadRegs`.
  **Inferred** role: updates the lighting material state after a register restore: one bit test (0x80), a conditional path, then a return.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (7), AND (2); sets the condition flags once; loads 2 constants; takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31); jumps to `mmo_LighterGeneral`.
  Constants loaded: 0x80, 0x67c1 (code in `mLiUpdateMtrlState`).

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mges_ContextLoadODMA` | 190 | `arm_context_load` | `HP_CONTEXT_LOAD` |
| `mges_ContextLoadBEF` | 187 | `arm_context_load`, `init_befshadow` | `HP_CONTEXT_LOAD` |
| `mges_ContextReloadFromBEF` | 188 | `reset_imps` |  |
| `mgeb_ContextLoadCram` | 130 | `arm_context_load` | `HP_CONTEXT_LOAD` |
| `mgeb_ContextLoadEram` | 131 | `arm_context_init`, `arm_x_init`, `init_geBefAddrs`, `load_broadcast_geEram` | `HP_CONTEXT_INIT`, `HP_X_INIT` |
| `mgeb_ContextLoadWram` | 134 | `arm_context_load` | `HP_CONTEXT_LOAD` |
| `mgeb_ContextLoadFlagRegs` | 133 | `arm_context_activate` | `HP_CONTEXT_ACTIVATE` |
| `mgeb_ContextLoadRegs` | 132 | `activate_geregs` |  |
| `mges_ContextLoadFifo` | 189 | `activate_gefifo` |  |
| `mgeb_ContextDestroy` | 129 | `arm_context_destroy` | `HP_CONTEXT_DESTROY` |

### debug.S

Debug monitor: number printing, drain, roll call and the slop command. **Inferred** from its labels and callers.

- `mgeb_DebugDrain`: address 0x4a9c, `debug.S` line 148 (6 words). Reached: geif slot 350 (entry 701); the ARM functions that send it are in the table below.
  **Inferred** role: debug drain command with no operation the field readings name, ending with the end-of-command wait.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It ends with the end-of-command wait.
- `mmo_DebugGE`: address 0x4a8d, `debug.S` line 217 (4 words). Reached: geif slot 281 (entry 563).
  **Inferred** role: four-word debug module that ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It ends the command with an indirect transfer in condition group 31.
- `mPrintf`: address 0x4aa9, `debug.S` line 294 (270 words). Reached: transfers in `MSPoint_Print_Scratch_Tables` and 2 other labels.
  **Inferred** role: formatted print routine (by its name): moves, bit tests and an engine-memory read, then a return.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (82), AND (5), shift left (2), XOR (1); sets the condition flags 7 times; reads engine memory at 0x1389; loads 85 constants; takes 4 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31); jumps within its own code.
  Constants loaded: 0, 0x1, 0x401, 0x2103000, 40.0 (0x42200000), 0x477, 0x440, 0x464 and 9 more.
- `mgesi_PrintNum`: address 0x4961, `debug.S` line 548 (191 words). Reached: geif slot 351 (entry 703); the ARM functions that send it are in the table below.
  **Inferred** role: debug print of one number: calls the print routine with ASCII format words (0x526f6c6c, "Roll") and writes one raster bus word.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (41); writes 1 word to the raster-bus output addresses; loads 13 constants.
  It calls `mPrintf`; ends with the end-of-command wait.
  Constants loaded: 0x1, 0, 0xa, 0x526f6c6c, 0x63616c6c, 0x3a200000.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgeb_DebugDrain` | 350 | `arm_slop` | `HP_SLOP` |
| `mgesi_PrintNum` | 351 | `arm_gerollcall` | `HP_GEROLLCALL` |

### deform.S

Deformation map loading and the deformation query. **Inferred** from its labels and callers.

- `mmo_DirtyDeformModule`: address 0x48d8, `deform.S` line 50 (22 words). Reached: its address loaded as a constant in `mgeb_DeformationMap3_1` and 1 other label.
  **Inferred** role: selects the deformation module after state changes: tests flag bits 0x80000 and 0x100000 and loads deformation module addresses.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3), AND (2); sets the condition flags 3 times; loads 7 constants.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0x100000, 0x80000, 0x2b32 (code in `mmo_DeformTexture`), 0x2ab8 (code in `mmo_DeformCoord`), 0x2ae7 (code in `mmo_DeformCoordTexture`), 0x2b61 (code in `mmo_DeformCoordNormal`), 0x2ba7 (code in `mmo_DeformCoordNormalTexture`).
- `mgeb_DeformationMap3_1`: address 0x482e, `deform.S` line 129 (119 words). Reached: geif slot 407 (entry 815); the ARM functions that send it are in the table below; distributor table 29.
  **Inferred** role: loads a three-input deformation map: tests the flag bits and enumerant 0x8194 and handles the map coefficients.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (19), float subtract (11), OR (3), AND (2), float add (2), XOR (1), integer subtract or compare (1); sets the condition flags 4 times; loads 7 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x80000, 0x100000, 0x8194, 0x200000, 0x48d8 (code in `mmo_DirtyDeformModule`), 0xf4e4 (code in `mmo_DirtyPrePathModule`), 0x4.
- `mgeb_LoadIdentityDeformation`: address 0x4806, `deform.S` line 344 (23 words). Reached: geif slot 408 (entry 817); the ARM functions that send it are in the table below; distributor table 30.
  **Inferred** role: resets the deformation to identity by clearing its flag bits.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations AND (4), move (3), NOT (1), XOR (1), operation 0x6d1 (1), shift left (1); sets the condition flags 3 times; loads 3 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x13, 0x180000, 0xf4e4 (code in `mmo_DirtyPrePathModule`).
- `mgesi_GetDeformation`: address 0x479b, `deform.S` line 447 (74 words). Reached: geif slot 409 (entry 819); the ARM functions that send it are in the table below.
  **Inferred** role: writes the deformation state to the raster bus output addresses.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (47), AND (1), XOR (1), float add (1); sets the condition flags 2 times; writes 2 words to the raster-bus output addresses; loads 4 constants; takes 2 conditional transfers.
  It ends with the end-of-command wait; jumps within its own code.
  Constants loaded: 0x476, 0x8194, 0x80000, 0x100000.
- `mgesi_GetDeformationsMask`: address 0x4786, `deform.S` line 559 (17 words). Reached: geif slot 410 (entry 821); the ARM functions that send it are in the table below.
  **Inferred** role: writes the mask of enabled deformations to the raster bus output addresses.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (5), AND (1), logical shift right (1); writes 2 words to the raster-bus output addresses; loads 3 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x476, 0x1, 0x3.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgeb_DeformationMap3_1` | 407 | `init_ged` |  |
| `mgeb_LoadIdentityDeformation` | 408 | `init_ged` |  |
| `mgesi_GetDeformation` | 409 | `arm_get_deformation` | `HP_GET_DEFORMATION` |
| `mgesi_GetDeformationsMask` | 410 | `get_deformations_mask` |  |

### drawlin.S

Line primitive output: plain, stippled, multisample and line-list forms. **Inferred** from its labels and callers.

- `mmo_DrawLinPrim`: address 0x8db0, `drawlin.S` line 111 (14 words). Reached: its address loaded as a constant in `mGL_CM_Initialize` and 2 other labels.
  **Inferred** role: line-drawing module entry: tests one flag (0x100) and enters the single-line or line-list code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), AND (1); sets the condition flags once; loads 2 constants; takes 1 conditional transfer.
  It jumps to `mDrawLinPrim`; conditional transfers reach `mDrawLinList`.
  Constants loaded: 0x100, 0xe0000000.
- `mDrawLinPrim`: address 0x892b, `drawlin.S` line 165 (136 words). Reached: transfers in `mmo_DrawLinPrim`.
  **Inferred** role: draws one line: endpoint deltas and slopes with float subtracts and multiplies.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (30), float multiply (26), move (23), float add (8), operation 0x6fe (8), NOT (4), AND (2), operation 0x6e4 (2); sets the condition flags 6 times; writes 3 words to the raster-bus output addresses; stores 20 words to control-memory addresses from 0xc9 to 0xd8; reads engine memory at 0x236; loads 1 constant; takes 2 conditional transfers.
  It jumps within its own code; conditional transfers reach `HereWeGo`.
  Constants loaded: 0x70000.
- `mDrawLinList`: address 0x89bc, `drawlin.S` line 318 (105 words). Reached: transfers in `mmo_DrawLinPrim`.
  **Inferred** role: draws a list of lines with the same set-up as the single-line code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (25), float multiply (22), move (17), float add (8), operation 0x6fe (6), NOT (4), operation 0x6e4 (2); sets the condition flags 2 times; writes 2 words to the raster-bus output addresses; stores 19 words to control-memory addresses from 0xc9 to 0xd8; reads engine memory at 0x236; takes 2 conditional transfers.
  It waits on its own address under another condition group; conditional transfers reach `HereWeGo`.
- `mmo_DrawMSLinPrim`: address 0x8a2d, `drawlin.S` line 482 (211 words). Reached: its address loaded as a constant in `mgeb_LineWidth_MS`.
  **Inferred** role: multisample line drawing: the single-line set-up plus multisample constants.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (52), float multiply (42), move (35), operation 0x6fe (16), float add (10), NOT (7), AND (2); sets the condition flags 4 times; writes 9 words to the raster-bus output addresses; stores 30 words to control-memory addresses from 0xc9 to 0xd7; reads engine memory at 0x236; loads 4 constants; takes 2 conditional transfers.
  It waits on its own address under another condition group; conditional transfers reach `HereWeGo`.
  Constants loaded: 0x80a, 0x22f080a, 0x70000.
- `mmo_DrawLinStipplePrim`: address 0x8b08, `drawlin.S` line 806 (516 words). Reached: its address loaded as a constant in `mgeb_LineWidth_Aliased` and 2 other labels.
  **Inferred** role: stippled line drawing: splits the line into stipple segments with multiply-add chains.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (154), float add (80), float subtract (71), move (47), float multiply-add (28), operation 0x6fe (16), reciprocal Newton step (10), NOT (8), AND (4), maximum (3), minimum (2), operation 0x6e4 (2), operation 0x6ee (2), reciprocal seed (2), reciprocal square-root Newton step (2), second-unit move or minimum (2), shift left (2), OR (1), reciprocal square-root seed (1); sets the condition flags 10 times; writes 4 words to the raster-bus output addresses; stores 82 words to control-memory addresses from 0xc9 to 0x1eb; reads engine memory at 4 addresses from 0x236 to 0x25e; loads 12 constants; takes 12 conditional transfers.
  It waits on its own address under another condition group; jumps within its own code; conditional transfers reach `HereWeGo`.
  Constants loaded: 0x100, 0x400, 0x17, 0, 0x15, 0x3013e00, 0x3023d00, 16.0 (0x41800000) and 4 more.

### drawmstpnt.S

Multisample point output with distance attenuation and the sample tables. **Inferred** from its labels and callers.

- `SaveClipState`: address 0x8123, `drawmstpnt.S` line 269 (9 words). Reached: transfers in `mmo_DrawMSDistAttTablePntPrim` and 2 other labels.
  **Inferred** role: saves the clip state by calling the WRAM-to-ERAM copy, then returns.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It calls `mWramToEram`; returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `RestoreClipState`: address 0x810b, `drawmstpnt.S` line 285 (9 words). Reached: transfers in `mmo_DrawMSDistAttTablePntPrim` and 2 other labels.
  **Inferred** role: restores the clip state by calling the ERAM-to-WRAM copy, then returns.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It calls `mEramToWram`; returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mmo_DrawMSTablePntPrim`: address 0x7e6f, `drawmstpnt.S` line 662 (450 words). Reached: its address loaded as a constant in `mgebi_PointSize_MS`.
  **Inferred** role: multisample point drawing from the sample table: integer compares and masks pick the covered samples.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (79), integer subtract or compare (40), integer add (32), logical shift right (22), AND (20), XOR (15), float multiply (15), float subtract (15), OR (14), shift left (14), float-to-integer conversion (9), operation 0x6d1 (8), NOT (6), second-unit operation 0xff (6), integer-to-float conversion (5), operation 0x6f7 (4), operation 0x6fe (4), second-unit move or minimum (1); sets the condition flags 22 times; writes 16 words to the raster-bus output addresses; stores 3 words to control-memory addresses from 0xd2 to 0xd9; reads engine memory at 4 addresses from 0x237 to 0x247; loads 53 constants; takes 10 conditional transfers; closes 2 loops.
  It waits on its own address under another condition group; conditional transfers reach `SaveClipState` and 2 other labels.
  Constants loaded: 0x2, 0x70000, 0x1, 0x5, 0xfffffffe, 0xfffffff0, 0x8, 8.0 (0x41000000) and 22 more.
- `mmo_DrawMSTablePntPrim1`: address 0x7c28, `drawmstpnt.S` line 1382 (384 words). Reached: its address loaded as a constant in `mgebi_PointSize_MS`.
  **Inferred** role: second multisample table point drawer, with float distance terms.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (90), AND (20), integer add (16), integer subtract or compare (15), OR (14), float multiply (14), float subtract (14), logical shift right (14), shift left (14), float-to-integer conversion (8), NOT (6), second-unit operation 0xff (6), integer-to-float conversion (4), operation 0x6d1 (4), operation 0x6f7 (4), operation 0x6fe (4); sets the condition flags 22 times; writes 17 words to the raster-bus output addresses; stores 3 words to control-memory addresses from 0xd2 to 0xd9; reads engine memory at 3 addresses from 0x245 to 0x247; loads 52 constants; takes 12 conditional transfers.
  It waits on its own address under another condition group; conditional transfers reach `SaveClipState` and 2 other labels.
  Constants loaded: 0x2, 0x70000, 0x1, 0x5, 0xfffffffe, 0xfffffff0, 0x8, 8.0 (0x41000000) and 21 more.
- `DrawMSTablePnt`: address 0x7a54, `drawmstpnt.S` line 3079 (268 words). Reached: transfers in `mmo_DrawMSDistAttTablePntPrim`.
  **Inferred** role: draws one multisample point from the sample table, then returns.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (60), integer subtract or compare (39), integer add (20), OR (13), shift left (13), logical shift right (11), AND (8), float multiply (8), float subtract (7), NOT (6), integer-to-float conversion (6), float-to-integer conversion (5), second-unit operation 0xff (5), operation 0x6d1 (4), operation 0x6f7 (2), operation 0x6fe (2), second-unit move (1), second-unit move or minimum (1); sets the condition flags 27 times; writes 15 words to the raster-bus output addresses; stores 3 words to control-memory addresses from 0xd2 to 0xd9; loads 11 constants; takes 5 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0, 0x3fd3, 0x806, 0x1243fd3, 0x70000, 0x12b0806.
- `DrawMSTFanPnt`: address 0x79a3, `drawmstpnt.S` line 4019 (144 words). Reached: transfers in `mmo_DrawMSDistAttTablePntPrim`.
  **Inferred** role: draws a large multisample point as a fan, calling the sine and cosine routines for its corners.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (39), float subtract (24), move (21), float add (15), operation 0x6fe (8), NOT (4), integer-to-float conversion (2), reciprocal Newton step (2), second-unit move (2), float-to-integer conversion (1), integer add (1), reciprocal seed (1), second-unit move or minimum (1); sets the condition flags once; writes 2 words to the raster-bus output addresses; stores 15 words to control-memory addresses from 0xc9 to 0xd3; takes 1 conditional transfer.
  It calls `mSinCosAB` and `mSinCos`; jumps within its own code.
- `mmo_DrawMSDistAttTablePntPrim`: address 0x7855, `drawmstpnt.S` line 4198 (138 words). Reached: its address loaded as a constant in `mgebi_PointSize_MS`.
  **Inferred** role: multisample point drawing with distance attenuation: size from a reciprocal square root, then the table or fan code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (23), float multiply (20), float add (4), reciprocal square-root Newton step (4), AND (3), float subtract (3), reciprocal square-root seed (2), float-to-integer conversion (1), integer subtract or compare (1), integer-to-float conversion (1); sets the condition flags 8 times; writes 5 words to the raster-bus output addresses; reads engine memory at 9 addresses from 0x237 to 0x247; loads 37 constants; takes 8 conditional transfers.
  It calls `DrawMSTFanPnt`; waits on its own address under another condition group; conditional transfers reach `SaveClipState` and 3 other labels.
  Constants loaded: 0x2, 0, 0x1, 0x5, 0xfffffffe, 0xfffffff0, 0x8, 8.0 (0x41000000) and 23 more.

### drawpnt.S

Point primitive output: plain, antialiased, multisample and distance-attenuated. **Inferred** from its labels and callers.

- `mmo_DrawPntPrim`: address 0x8465, `drawpnt.S` line 199 (79 words). Reached: its address loaded as a constant in `mGL_CM_Initialize` and 1 other label.
  **Inferred** role: point-drawing module: the point's screen square from its size.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (16), float subtract (10), float multiply (8), integer add (8), AND (6), NOT (4), operation 0x6fe (4); sets the condition flags 4 times; writes 4 words to the raster-bus output addresses; stores 10 words to control-memory addresses from 0xc9 to 0xd9; loads 1 constant; takes 2 conditional transfers.
  It waits on its own address under another condition group; conditional transfers reach `HereWeGo`.
  Constants loaded: 0x70000.
- `mmo_DrawDistAttPntPrim`: address 0x8357, `drawpnt.S` line 362 (214 words). Reached: its address loaded as a constant in `mgebi_PointSize_Aliased`.
  **Inferred** role: point drawing with distance attenuation: size from a reciprocal square root of the eye distance.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (63), float multiply (38), float subtract (14), float add (12), AND (8), integer add (8), reciprocal square-root Newton step (8), float-to-integer conversion (6), NOT (4), operation 0x6fe (4), reciprocal square-root seed (4), float multiply-add (2), second-unit operation 0xff (2), shift left (2); sets the condition flags 10 times; writes 16 words to the raster-bus output addresses; stores 10 words to control-memory addresses from 0xc9 to 0xd9; reads engine memory at 6 addresses from 0x237 to 0x242; loads 13 constants; takes 2 conditional transfers.
  It waits on its own address under another condition group; conditional transfers reach `HereWeGo`.
  Constants loaded: 0x70000, 0xfff, 0xfff000, 0xc, 0x1203fcf, 0x128080f, 8.0 (0x41000000), 2.0 (0x40000000) and 3 more.
- `mmo_DrawAAPntPrim`: address 0x84be, `drawpnt.S` line 768 (219 words). Reached: its address loaded as a constant in `mgebi_PointSize_AlphaAA`.
  **Inferred** role: antialiased point drawing: size and coverage terms with constants 0.5 and 3.0.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (37), move (37), float subtract (23), float add (19), AND (7), NOT (4), operation 0x6f7 (4), operation 0x6fe (4), reciprocal square-root Newton step (4), OR (3), float-to-integer conversion (2), operation 0x6e3 (2), operation 0x6ea (2), reciprocal square-root seed (2), float multiply-add (1), integer-to-float conversion (1), second-unit move (1), second-unit move or minimum (1); sets the condition flags 17 times; writes 4 words to the raster-bus output addresses; stores 11 words to control-memory addresses from 0x1a to 0xd9; reads engine memory at 6 addresses from 0x237 to 0x242; loads 12 constants; takes 10 conditional transfers.
  It waits on its own address under another condition group; jumps to `AA_Response_Step`; conditional transfers reach `AA_Response` and 1 other label.
  Constants loaded: 0x20000000, 0.5 (0x3f000000), 3.0 (0x40400000), 0x8, 6.0 (0x40c00000), 0.25 (0x3e800000), 1.0 (0x3f800000), 0x70000.
- `mmo_DrawMSPntPrim`: address 0x82a7, `drawpnt.S` line 1264 (154 words). Reached: its address loaded as a constant in `mgebi_PointSize_MS`.
  **Inferred** role: multisample point drawing with float set-up of the point square.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (38), move (27), float subtract (26), float add (14), operation 0x6fe (12), AND (2), NOT (2); sets the condition flags 4 times; writes 4 words to the raster-bus output addresses; stores 25 words to control-memory addresses from 0xc9 to 0xd5; reads engine memory at 5 addresses from 0x237 to 0x245; loads 2 constants; takes 3 conditional transfers.
  It waits on its own address under another condition group; conditional transfers reach `HereWeGo`.
  Constants loaded: 0x2043c00, 0x70000.
- `mmo_DrawMSDistAttPntPrim`: address 0x813b, `drawpnt.S` line 1474 (283 words). Reached: its address loaded as a constant in `mgebi_PointSize_MS`.
  **Inferred** role: multisample point drawing with distance attenuation, calling the sine and cosine routine for its corners.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (86), move (41), float subtract (40), float add (26), operation 0x6fe (12), reciprocal square-root Newton step (8), integer add (4), reciprocal Newton step (4), AND (2), NOT (2), float-to-integer conversion (2), integer-to-float conversion (2), reciprocal seed (2), reciprocal square-root seed (2), second-unit move (1), second-unit move or minimum (1); sets the condition flags 10 times; writes 4 words to the raster-bus output addresses; stores 26 words to control-memory addresses from 0xc9 to 0xd5; reads engine memory at 8 addresses from 0x237 to 0x244; loads 3 constants; takes 2 conditional transfers; closes 1 loop.
  It calls `mSinCosAB`; waits on its own address under another condition group; conditional transfers reach `HereWeGo`.
  Constants loaded: 360.0 (0x43b40000), 0x2043c00, 0x70000.

### drawtri.S

Triangle output with polygon offset. **Inferred** from its labels and callers.

- `mmo_DrawTriPrimOffset`: address 0x8dc0, `drawtri.S` line 127 (224 words). Reached: its address loaded as a constant in `mgeb_PolygonSetup_Render`.
  **Inferred** role: triangle drawing with polygon offset: edge set-up with float subtracts, multiplies and reciprocal steps.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (48), float multiply (47), move (33), operation 0x6fe (14), AND (5), NOT (4), reciprocal Newton step (4), operation 0x6e9 (2); sets the condition flags 8 times; writes 7 words to the raster-bus output addresses; stores 28 words to control-memory addresses from 0xc9 to 0xd7; reads engine memory at 2 addresses from 0x13ae to 0x13af; loads 7 constants; takes 6 conditional transfers.
  It calls `mGenerateAALineTable`; waits on its own address under another condition group; conditional transfers reach `mDoPolygonStippleDownload` and 2 other labels.
  Constants loaded: 2.0 (0x40000000), 0x4020000c, 0x805, 1048576.0 (0x49800000), 0x8000000, 0x70000.

### entry.S

Vertex-entry points the distributor jumps to: raster position, points and the line-strip vertex save and copy forms. **Inferred** from its labels and callers.

- `mgesi_TriangleStrip`: address 0xb699, `entry.S` line 81 (28 words). Reached: geif slot 234 (entry 469); distributor relocated word.
  **Inferred** role: triangle-strip vertex entry: loads code addresses inside the strip decomposition modules and ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (7), float add (2); loads 3 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `HereWeGo`.
  Constants loaded: 0xca01 (code in `mmo_DummyDecompose`), 0xcc6, 0xc9b2 (code in `mmo_DecomposeTriangleStripWithSwapEven`).
- `mgesi_TriangleStripSave`: address 0xb673, `entry.S` line 105 (31 words). Reached: geif slot 237 (entry 475); distributor relocated word.
  **Inferred** role: triangle-strip vertex entry that also saves the vertex (an extra code address in the save path).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (8), float add (2), OR (1); loads 4 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `HereWeGo`.
  Constants loaded: 0xe4de (code in `mmo_Vn2ToSave`), 0xca01 (code in `mmo_DummyDecompose`), 0xcc6, 0xc9b2 (code in `mmo_DecomposeTriangleStripWithSwapEven`).
- `mgesi_TriangleStripRestore`: address 0xb64d, `entry.S` line 131 (31 words). Reached: geif slot 235 (entry 471); distributor relocated word.
  **Inferred** role: triangle-strip vertex entry that restores a saved vertex first.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (8), float add (2), OR (1); loads 4 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `HereWeGo`.
  Constants loaded: 0xe605 (code in `mmo_SaveToV0`), 0xca01 (code in `mmo_DummyDecompose`), 0xcc6, 0xc9b2 (code in `mmo_DecomposeTriangleStripWithSwapEven`).
- `mgesi_TriangleStripRestoreSave`: address 0xb627, `entry.S` line 158 (31 words). Reached: geif slot 236 (entry 473); distributor relocated word.
  **Inferred** role: triangle-strip vertex entry that restores a saved vertex and saves the new one.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (8), float add (2), OR (1); loads 4 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `HereWeGo`.
  Constants loaded: 0xe57e (code in `mmo_SaveToV0AndVn2ToSave`), 0xca01 (code in `mmo_DummyDecompose`), 0xcc6, 0xc9b2 (code in `mmo_DecomposeTriangleStripWithSwapEven`).
- `mgesi_TriangleStripWithSwapOdd`: address 0xb60e, `entry.S` line 184 (25 words). Reached: geif slot 418 (entry 837); distributor relocated word.
  **Inferred** role: triangle-strip vertex entry that swaps the vertex order on odd triangles.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (7), float add (2); loads 3 constants.
  It jumps within its own code.
  Constants loaded: 0xcc6, 0xca01 (code in `mmo_DummyDecompose`), 0xc989 (code in `mmo_DecomposeTriangleStripWithSwapOdd`).
- `mgesi_TriangleStripSaveWithSwapOdd`: address 0xb5f6, `entry.S` line 207 (24 words). Reached: geif slot 415 (entry 831); distributor relocated word.
  **Inferred** role: odd-swapping strip entry that also saves the vertex.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), float add (2), OR (1); loads 2 constants.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xc989 (code in `mmo_DecomposeTriangleStripWithSwapOdd`), 0xe4de (code in `mmo_Vn2ToSave`).
- `mgesi_TriangleStripRestoreWithSwapOdd`: address 0xb5de, `entry.S` line 230 (24 words). Reached: geif slot 416 (entry 833); distributor relocated word.
  **Inferred** role: odd-swapping strip entry that restores a saved vertex first.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), float add (2), OR (1); loads 2 constants.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xc989 (code in `mmo_DecomposeTriangleStripWithSwapOdd`), 0xe605 (code in `mmo_SaveToV0`).
- `mgesi_TriangleStripRestoreSaveWithSwapOdd`: address 0xb5c6, `entry.S` line 254 (24 words). Reached: geif slot 417 (entry 835); distributor relocated word.
  **Inferred** role: odd-swapping strip entry that restores and saves.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), float add (2), OR (1); loads 2 constants.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xc989 (code in `mmo_DecomposeTriangleStripWithSwapOdd`), 0xe57e (code in `mmo_SaveToV0AndVn2ToSave`).
- `mgesi_Triangles`: address 0xb5ae, `entry.S` line 281 (24 words). Reached: geif slot 238 (entry 477); distributor relocated word.
  **Inferred** role: independent-triangles vertex entry: loads code addresses of the triangle decomposition and ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), float add (2); loads 2 constants.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xca01 (code in `mmo_DummyDecompose`), 0xca10 (code in `mmo_DecomposeSimpleTriangles`).
- `mgesi_QuadStrip`: address 0xb596, `entry.S` line 304 (24 words). Reached: geif slot 217 (entry 435); distributor relocated word.
  **Inferred** role: quad-strip vertex entry: loads code addresses of the quad-strip decomposition and ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), float add (2); loads 2 constants.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xc9e1 (code in `mmo_DummyDecomposeQuadStrip`), 0xca60 (code in `mmo_DecomposeQuadStrip`).
- `mgesi_QuadStripSave`: address 0xb57b, `entry.S` line 330 (27 words). Reached: geif slot 220 (entry 441); distributor relocated word.
  **Inferred** role: quad-strip vertex entry that also saves the vertex.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (7), float add (2), OR (1); loads 3 constants.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xe4de (code in `mmo_Vn2ToSave`), 0xc9e1 (code in `mmo_DummyDecomposeQuadStrip`), 0xca60 (code in `mmo_DecomposeQuadStrip`).
- `mgesi_QuadStripRestore`: address 0xb560, `entry.S` line 358 (27 words). Reached: geif slot 218 (entry 437); distributor relocated word.
  **Inferred** role: quad-strip vertex entry that restores a saved vertex first.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (7), float add (2), OR (1); loads 3 constants.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xe605 (code in `mmo_SaveToV0`), 0xc9e1 (code in `mmo_DummyDecomposeQuadStrip`), 0xca60 (code in `mmo_DecomposeQuadStrip`).
- `mgesi_QuadStripRestoreSave`: address 0xb545, `entry.S` line 387 (27 words). Reached: geif slot 219 (entry 439); distributor relocated word.
  **Inferred** role: quad-strip vertex entry that restores a saved vertex and saves the new one.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (7), float add (2), OR (1); loads 3 constants.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xe57e (code in `mmo_SaveToV0AndVn2ToSave`), 0xc9e1 (code in `mmo_DummyDecomposeQuadStrip`), 0xca60 (code in `mmo_DecomposeQuadStrip`).
- `mgesi_Quads`: address 0xb531, `entry.S` line 419 (20 words). Reached: geif slot 221 (entry 443); distributor relocated word.
  **Inferred** role: independent-quads vertex entry: loads one code address of the quad decomposition and ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (5), float add (2); loads 1 constant.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xca3a (code in `mmo_DecomposeQuads`).
- `mgeb_SetTfanPolyMode`: address 0xb51f, `entry.S` line 445 (9 words). Reached: geif slot 171 (entry 343); distributor relocated word.
  **Inferred** role: sets the triangle-fan polygon mode with four moves.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4).
  It ends with the end-of-command wait.
- `mgesi_TfanPoly`: address 0xb4f1, `entry.S` line 476 (36 words). Reached: geif slot 228 (entry 457); distributor relocated word.
  **Inferred** role: triangle-fan and polygon vertex entry: clears field bits 22-24 (mask 0xfe3fffff) and loads code addresses of the fan decomposition.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (9), float add (2), AND (1); loads 5 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xca01 (code in `mmo_DummyDecompose`), 0xd25, 0xca86 (code in `mmo_DecomposePolygon`), 0xfe3fffff.
- `mgesi_TfanPolySave`: address 0xb4bd, `entry.S` line 526 (45 words). Reached: geif slot 233 (entry 467); distributor relocated word.
  **Inferred** role: triangle-fan and polygon vertex entry that also saves the vertex.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (11), OR (2), float add (2), AND (1); loads 7 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xca01 (code in `mmo_DummyDecompose`), 0xe544 (code in `mmo_V0ToSave`), 0xd25, 0xe519 (code in `mmo_V0ToSave_SaveExtra`), 0xca86 (code in `mmo_DecomposePolygon`), 0xfe3fffff.
- `mgesi_TfanPolyRestore`: address 0xb48b, `entry.S` line 581 (39 words). Reached: geif slot 230 (entry 461); distributor relocated word.
  **Inferred** role: triangle-fan and polygon vertex entry that restores a saved vertex first (a code address in the restore module).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (10), float add (2), AND (1), OR (1); loads 6 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xe605 (code in `mmo_SaveToV0`), 0xca01 (code in `mmo_DummyDecompose`), 0xd25, 0xca86 (code in `mmo_DecomposePolygon`), 0xfe3fffff.
- `mgesi_TfanPolyRestoreEdge`: address 0xb430, `entry.S` line 635 (72 words). Reached: geif slot 338 (entry 677); distributor relocated word.
  **Inferred** role: fan and polygon vertex entry that restores a saved vertex and its edge state, calling the ERAM-to-WRAM copy.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (27), OR (4), AND (2), float add (2); loads 7 constants; takes 1 conditional transfer.
  It calls `mEramToWram`; ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xe0000000, 0xd25, 0xca01 (code in `mmo_DummyDecompose`), 0xe5d7 (code in `mmo_SaveToV0_RestoreExtra`), 0xca86 (code in `mmo_DecomposePolygon`), 0xfe3fffff.
- `mgesi_TfanPolyRestoreSave`: address 0xb3fc, `entry.S` line 728 (45 words). Reached: geif slot 232 (entry 465); distributor relocated word.
  **Inferred** role: fan and polygon vertex entry that restores a saved vertex and saves the new one.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (11), OR (2), float add (2), AND (1); loads 7 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xca01 (code in `mmo_DummyDecompose`), 0xe605 (code in `mmo_SaveToV0`), 0xd25, 0xe5a9 (code in `mmo_SaveToV0_SaveExtra`), 0xca86 (code in `mmo_DecomposePolygon`), 0xfe3fffff.
- `mgesi_TfanPolyEnd`: address 0xb3cf, `entry.S` line 778 (33 words). Reached: geif slot 229 (entry 459); distributor relocated word.
  **Inferred** role: fan and polygon vertex entry for the last vertex: loads the fan decomposition's code addresses and ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (9), float add (2); loads 4 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xca01 (code in `mmo_DummyDecompose`), 0xd25, 0xca86 (code in `mmo_DecomposePolygon`).
- `mgesi_TfanPolyRestoreEnd`: address 0xb39e, `entry.S` line 820 (36 words). Reached: geif slot 231 (entry 463); distributor relocated word.
  **Inferred** role: last-vertex fan entry that restores a saved vertex first.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (10), float add (2), OR (1); loads 5 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xe605 (code in `mmo_SaveToV0`), 0xca01 (code in `mmo_DummyDecompose`), 0xd25, 0xca86 (code in `mmo_DecomposePolygon`).
- `mgesi_LineStrip`: address 0xb38a, `entry.S` line 865 (20 words). Reached: geif slot 203 (entry 407); distributor relocated word.
  **Inferred** role: line-strip vertex entry: loads one code address of the line decomposition and ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (5), float add (2); loads 1 constant.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xcfa.
- `mgesi_LineStripSaveV0`: address 0xb372, `entry.S` line 888 (24 words). Reached: geif slot 208 (entry 417); distributor relocated word.
  **Inferred** role: line-strip vertex entry that also saves the first vertex (a code address in the save module).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), float add (2), OR (1); loads 2 constants.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xcfa, 0xe544 (code in `mmo_V0ToSave`).
- `mgesi_LineStripSaveAndIgnoreV0`: address 0xb35a, `entry.S` line 914 (24 words). Reached: geif slot 207 (entry 415); distributor relocated word.
  **Inferred** role: line-strip vertex entry that saves the first vertex and draws nothing for it.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), float add (2), OR (1); loads 2 constants.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xcfa, 0xe4fd (code in `mmo_V0ToSaveAndIgnore`).
- `mgesi_LineStripCopyV0`: address 0xb342, `entry.S` line 939 (24 words). Reached: geif slot 205 (entry 411); distributor relocated word.
  **Inferred** role: line-strip vertex entry that copies the first vertex to the closing position (line loop).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), float add (2), OR (1); loads 2 constants.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xcfa, 0xe6d4 (code in `mmo_CopyV0ToVn1`).
- `mgesi_LineStripCopyAndIgnoreV0`: address 0xb32a, `entry.S` line 965 (24 words). Reached: geif slot 204 (entry 409); distributor relocated word.
  **Inferred** role: line-strip vertex entry that copies the first vertex and draws nothing for it.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), float add (2), OR (1); loads 2 constants.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xcfa, 0xe6c0 (code in `mmo_CopyV0ToVn1AndIgnore`).
- `mgesi_LineStripRestoreV0`: address 0xb312, `entry.S` line 990 (24 words). Reached: geif slot 206 (entry 413); distributor relocated word.
  **Inferred** role: line-strip vertex entry that restores the saved first vertex.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), float add (2), OR (1); loads 2 constants.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xcfa, 0xe560 (code in `mmo_SaveToVn1`).
- `mgesi_Points`: address 0xb2fe, `entry.S` line 1019 (20 words). Reached: geif slot 214 (entry 429); distributor relocated word.
  **Inferred** role: point vertex entry: loads one code address of the point decomposition and ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (5), float add (2); loads 1 constant.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xd10.
- `mgeb_RasterPos`: address 0xb2d2, `entry.S` line 1044 (42 words). Reached: geif slot 169 (entry 339); distributor relocated word.
  **Inferred** role: raster position: transforms the four position words with float multiplies and adds and loads the address of the module that saves the raster position.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations float multiply (12), float add (8), move (6), float multiply-add (4), operation 0x6d1 (1); reads engine memory at 0x138a; loads 3 constants.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xe623 (code in `mmo_SaveRasterPos`), 0xd10, 0x4.

### ERAMBlockClear.s

Block clear of external memory (ERAM). **Inferred** from its labels and callers.

- `mgeb_ERAMBlockClear`: address 0x16e7, `ERAMBlockClear.s` line 43 (36 words). Reached: geif slot 136 (entry 273).
  **Inferred** role: external-memory block clear: one compare and one move, then the clear loop that follows it.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations integer subtract or compare (1), move (1); closes 1 loop.
  It has no jump of its own and runs on into `mainloop_ebc`.
- `ugeb_ERAMBlockClear`: address 0x16e7, `ERAMBlockClear.s` line 43 (36 words). Reached: second name for `mgeb_ERAMBlockClear` at the same address, so the same code.
  **Inferred** role: external-memory block clear: one compare and one move, then the clear loop that follows it.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations integer subtract or compare (1), move (1); closes 1 loop.
  It has no jump of its own and runs on into `mainloop_ebc`.
- `mainloop_ebc`: address 0x170b, `ERAMBlockClear.s` line 93 (9 words). Reached: inside `mgeb_ERAMBlockClear`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): closes 1 loop.
  It has no jump of its own and runs on into `epilogue_ebc`.
- `epilogue_ebc`: address 0x1714, `ERAMBlockClear.s` line 118 (10 words). Reached: transfers in `mgeb_ERAMBlockClear`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It ends with the end-of-command wait.

### err.S

GL error codes recorded on the engine (invalid enum, value, operation, stack overflow and underflow). **Inferred** from its labels and callers.

- `mge_ErrNoError`: address 0xd4b9, `err.S` line 32 (10 words). Reached: no slot, ARM load, decoded transfer or address constant reaches it (routes tried: [How to read the tables](#how-to-read-the-entries)).
  **Inferred** role: error entry for "no error": loads 0 and waits; nothing in the program enters it.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1); loads 1 constant.
  It waits on its own address under another condition group.
  Constants loaded: 0.
- `mErrInvalidEnum`: address 0xd520, `err.S` line 54 (9 words). Reached: transfers in `mgeb_Fogf` and 2 other labels.
  **Inferred** role: records the GL error GL_INVALID_ENUM (constant 0x500) and ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations integer subtract or compare (1), move (1); sets the condition flags once; loads 2 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0, 0x500.
- `mErrInvalidValue`: address 0xd50a, `err.S` line 77 (9 words). Reached: transfers in `mFrustum` and 5 other labels.
  **Inferred** role: records the GL error GL_INVALID_VALUE (constant 0x501) and ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations integer subtract or compare (1), move (1); sets the condition flags once; loads 2 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0, 0x501.
- `mErrInvalidOperation`: address 0xd4f4, `err.S` line 100 (9 words). Reached: transfers in `mgeb_LoadName`.
  **Inferred** role: records the GL error GL_INVALID_OPERATION (constant 0x502) and ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations integer subtract or compare (1), move (1); sets the condition flags once; loads 2 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0, 0x502.
- `mErrStackOverflow`: address 0xd4de, `err.S` line 123 (9 words). Reached: transfers in `mgeb_PushMatrix_Color` and 4 other labels.
  **Inferred** role: records the GL error GL_STACK_OVERFLOW (constant 0x503) and ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations integer subtract or compare (1), move (1); sets the condition flags once; loads 2 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0, 0x503.
- `mErrStackUnderflow`: address 0xd4c8, `err.S` line 146 (9 words). Reached: transfers in `mgeb_PopMatrix_Color` and 4 other labels.
  **Inferred** role: records the GL error GL_STACK_UNDERFLOW (constant 0x504) and ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations integer subtract or compare (1), move (1); sets the condition flags once; loads 2 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0, 0x504.

### eval.s

Evaluator polynomial inner loops of general order in U and V, with derivatives. **Inferred** from its labels and callers.

- `umo_EvalPolyV`: address 0x0586, `eval.s` line 186 (19 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: evaluator stage for the v direction of a polynomial: converts the order to float and runs into its order loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (2), AND (1), integer-to-float conversion (1), move (1); sets the condition flags once.
  It has no jump of its own and runs on into `lPOLYVUORDERLOOP`.
- `lPOLYVUORDERLOOP`: address 0x0599, `eval.s` line 206 (20 words). Reached: transfers in `lPOLYVVORDERLOOP`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (12), float multiply (8).
  It has no jump of its own and runs on into `lPOLYVVORDERLOOP`.
- `lPOLYVVORDERLOOP`: address 0x05ad, `eval.s` line 227 (29 words). Reached: inside `umo_EvalPolyV`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (24), float add (4); takes 2 conditional transfers.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `lPOLYVUORDERLOOP`.
- `umo_EvalPolyU`: address 0x05ca, `eval.s` line 290 (37 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: evaluator stage for the u direction: multiply-add chains over the coefficients.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (11), float multiply-add (9), float subtract (3), move (3), AND (1), integer-to-float conversion (1); sets the condition flags once.
  It has no jump of its own and runs on into `lPOLYUUORDERLOOP`.
- `lPOLYUUORDERLOOP`: address 0x05ef, `eval.s` line 328 (26 words). Reached: inside `umo_EvalPolyU`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (18), float add (6), float multiply (2); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `umo_EvalPolyVdV`: address 0x0609, `eval.s` line 394 (28 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: evaluator stage for v with its derivative: set-up, then its order loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (2), AND (1), integer-to-float conversion (1), move (1); sets the condition flags once.
  It has no jump of its own and runs on into `lPOLYVDVUORDERLOOP`.
- `lPOLYVDVUORDERLOOP`: address 0x0625, `eval.s` line 423 (16 words). Reached: transfers in `lPOLYVDVVORDERLOOP`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (12), float multiply-add (4), move (4).
  It has no jump of its own and runs on into `lPOLYVDVVORDERLOOP`.
- `lPOLYVDVVORDERLOOP`: address 0x0635, `eval.s` line 440 (41 words). Reached: inside `umo_EvalPolyVdV`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (20), float multiply (8), float subtract (8), float add (4); takes 2 conditional transfers.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `lPOLYVDVUORDERLOOP`.
- `umo_EvalPolyUdU`: address 0x065e, `eval.s` line 520 (22 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: evaluator stage for u with its derivative: set-up, then its size loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (2), move (2), AND (1), integer-to-float conversion (1); sets the condition flags once.
  It has no jump of its own and runs on into `lPOLYUDUUSIZELOOP`.
- `lPOLYUDUUSIZELOOP`: address 0x0674, `eval.s` line 543 (16 words). Reached: transfers in `lPOLYUDUUORDERLOOP`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (12), float multiply-add (4), move (4).
  It has no jump of its own and runs on into `lPOLYUDUUORDERLOOP`.
- `lPOLYUDUUORDERLOOP`: address 0x0684, `eval.s` line 560 (41 words). Reached: inside `umo_EvalPolyUdU`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (20), float subtract (9), float multiply (8), float add (4), move (1); 2 words stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here); takes 2 conditional transfers.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `lPOLYUDUUSIZELOOP`.
- `umo_EvalComputeNormals3D`: address 0x06ad, `eval.s` line 628 (83 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: computes evaluated-surface normals for 3D control points: cross products by float multiplies and a reciprocal square root to normalise.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (32), float subtract (6), float add (4), reciprocal square-root Newton step (4), reciprocal square-root seed (2), second-unit move (2), move (1).
  It ends the command with an indirect transfer in condition group 31.
- `umo_EvalComputeNormals4D`: address 0x0700, `eval.s` line 748 (111 words). Reached: its address loaded as a constant in `mGL_EM_Initialize` and 1 other label.
  **Inferred** role: computes evaluated-surface normals for 4D (rational) control points: more multiplies than the 3D form and a reciprocal square root.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (56), float subtract (18), second-unit move (6), float add (4), reciprocal square-root Newton step (4), reciprocal square-root seed (2), move (1).
  It ends the command with an indirect transfer in condition group 31.

### eval1.s

Evaluator polynomial loops of order 1. **Inferred** from its labels and callers.

- `umo_EvalPoly1V`: address 0x076f, `eval1.s` line 84 (20 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: first-order evaluator stage for v: no named operation in its set-up, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It has no jump of its own and runs on into `lPOLY1VLOOP`.
- `lPOLY1VLOOP`: address 0x0783, `eval1.s` line 104 (11 words). Reached: inside `umo_EvalPoly1V`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (8); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `umo_EvalPoly1U`: address 0x078e, `eval1.s` line 144 (22 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: first-order evaluator stage for u: nine moves and two words to the output port.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (9); 2 words stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here).
  It ends the command with an indirect transfer in condition group 31.
- `umo_EvalPoly1VdV`: address 0x07a4, `eval1.s` line 192 (13 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: first-order evaluator stage for v with derivative: set-up, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It has no jump of its own and runs on into `lPOLY1VDVLOOP`.
- `lPOLY1VDVLOOP`: address 0x07b1, `eval1.s` line 205 (18 words). Reached: inside `umo_EvalPoly1VdV`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (16); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `umo_EvalPoly1UdU`: address 0x07c3, `eval1.s` line 250 (34 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: first-order evaluator stage for u with derivative: 17 moves and five words to the output port.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (17); 5 words stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here).
  It ends the command with an indirect transfer in condition group 31.

### eval2.s

Evaluator polynomial loops of order 2. **Inferred** from its labels and callers.

- `umo_EvalPoly2V`: address 0x07e5, `eval2.s` line 117 (21 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: second-order evaluator stage for v: set-up, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (1), move (1).
  It has no jump of its own and runs on into `lPOLY2VLOOP`.
- `lPOLY2VLOOP`: address 0x07fa, `eval2.s` line 139 (22 words). Reached: inside `umo_EvalPoly2V`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (8), float multiply-add (8), float add (4); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `umo_EvalPoly2U`: address 0x0810, `eval2.s` line 189 (35 words). Reached: its address loaded as a constant in `mGL_EM_Initialize` and 1 other label.
  **Inferred** role: second-order evaluator stage for u: float multiplies and adds over the coefficients.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (14), float add (6), move (3), float multiply-add (2), float subtract (2).
  It ends the command with an indirect transfer in condition group 31.
- `umo_EvalPoly2VdV`: address 0x0833, `eval2.s` line 253 (24 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: second-order evaluator stage for v with derivative: set-up, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (1), move (1).
  It has no jump of its own and runs on into `lPOLY2VDVLOOP`.
- `lPOLY2VDVLOOP`: address 0x084b, `eval2.s` line 278 (26 words). Reached: inside `umo_EvalPoly2VdV`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (8), float multiply (8), operation 0x6e3 (4); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `umo_EvalPoly2UdU`: address 0x0865, `eval2.s` line 333 (13 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: second-order evaluator stage for u with derivative: set-up, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3), float subtract (2).
  It has no jump of its own and runs on into `lPOLY2UDULOOP`.
- `lPOLY2UDULOOP`: address 0x0872, `eval2.s` line 347 (17 words). Reached: inside `umo_EvalPoly2UdU`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (4), float multiply (4), float multiply-add (4), operation 0x6e3 (4), move (2); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.

### eval4.s

Evaluator polynomial loops of order 4. **Inferred** from its labels and callers.

- `umo_EvalPoly4V`: address 0x0883, `eval4.s` line 134 (17 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: fourth-order evaluator stage for v: set-up, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (1), second-unit move (1).
  It has no jump of its own and runs on into `lPOLY4VLOOP`.
- `lPOLY4VLOOP`: address 0x0894, `eval4.s` line 152 (41 words). Reached: inside `umo_EvalPoly4V`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (28), float multiply (8), float add (4); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `umo_EvalPoly4U`: address 0x08bd, `eval4.s` line 220 (53 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: fourth-order evaluator stage for u: 22 multiply-adds over the coefficients.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (22), float multiply (14), float add (6), float subtract (2), second-unit move (2), move (1); 1 word stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here).
  It ends the command with an indirect transfer in condition group 31.
- `umo_EvalPoly4VdV`: address 0x08f2, `eval4.s` line 307 (18 words). Reached: its address loaded as a constant in `mGL_EM_Initialize` and 1 other label.
  **Inferred** role: fourth-order evaluator stage for v with derivative: set-up, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (1), move (1).
  It has no jump of its own and runs on into `lPOLY4VDVLOOP`.
- `lPOLY4VDVLOOP`: address 0x0904, `eval4.s` line 326 (41 words). Reached: inside `umo_EvalPoly4VdV`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (24), float add (8), float multiply-add (8), float subtract (8); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `umo_EvalPoly4UdU`: address 0x092d, `eval4.s` line 400 (13 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: fourth-order evaluator stage for u with derivative: set-up, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2), float subtract (1).
  It has no jump of its own and runs on into `lPOLY4UDULOOP`.
- `lPOLY4UDULOOP`: address 0x093a, `eval4.s` line 414 (40 words). Reached: inside `umo_EvalPoly4UdU`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (21), float add (9), float subtract (9), float multiply-add (7), move (1); 1 word stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.

### evalbasis.s

Evaluator change of basis for orders 1-8. **Inferred** from its labels and callers.

- `uEvalChangeBasis1and2`: address 0x09f5, `evalbasis.s` line 92 (15 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: evaluator basis change for orders one and two, which needs no arithmetic: it ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It ends the command with an indirect transfer in condition group 31.
- `uEvalChangeBasis3`: address 0x0a04, `evalbasis.s` line 128 (8 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: evaluator basis change for order three: set-up, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It has no jump of its own and runs on into `lCB3LOOP`.
- `lCB3LOOP`: address 0x0a0c, `evalbasis.s` line 137 (22 words). Reached: inside `uEvalChangeBasis3`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (1), float multiply (1), float subtract (1), move (1); takes 2 conditional transfers.
  It ends the command with an indirect transfer in condition group 31.
- `uEvalChangeBasis4`: address 0x0a22, `evalbasis.s` line 181 (16 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: evaluator basis change for order four: multiplies and subtracts, then its polynomial loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4), float multiply (3), float subtract (2).
  It has no jump of its own and runs on into `lCB4POLYLOOP`.
- `lCB4POLYLOOP`: address 0x0a32, `evalbasis.s` line 198 (22 words). Reached: inside `uEvalChangeBasis4`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (5), float add (1), float multiply-add (1), float subtract (1); takes 2 conditional transfers.
  It ends the command with an indirect transfer in condition group 31.
- `uEvalChangeBasis5`: address 0x0a48, `evalbasis.s` line 243 (26 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: evaluator basis change for order five: multiplies, subtracts and adds, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (8), float multiply (5), float subtract (5), float add (2).
  It has no jump of its own and runs on into `lCB5LOOP`.
- `lCB5LOOP`: address 0x0a62, `evalbasis.s` line 270 (24 words). Reached: inside `uEvalChangeBasis5`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (8), float add (2), float multiply-add (2); takes 2 conditional transfers.
  It ends the command with an indirect transfer in condition group 31.
- `uEvalChangeBasis6`: address 0x0a7a, `evalbasis.s` line 318 (31 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: evaluator basis change for order six: multiplies and subtracts, then its matrix loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (9), float multiply (7), float subtract (5), float add (4), float multiply-add (1).
  It has no jump of its own and runs on into `lCB6MATRIXLOOP`.
- `lCB6MATRIXLOOP`: address 0x0a99, `evalbasis.s` line 350 (1 word). Reached: transfers in `lCB6LOOP`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (1), float subtract (1).
  It has no jump of its own and runs on into `lCB6LOOP`.
- `lCB6LOOP`: address 0x0a9a, `evalbasis.s` line 352 (28 words). Reached: inside `uEvalChangeBasis6`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (11), float multiply-add (4), float add (2), float subtract (2); takes 2 conditional transfers.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `lCB6MATRIXLOOP`.
- `uEvalChangeBasis7`: address 0x0ab6, `evalbasis.s` line 405 (40 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: evaluator basis change for order seven: multiplies and subtracts, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (14), float subtract (12), move (6), float add (3).
  It has no jump of its own and runs on into `lCB7LOOP`.
- `lCB7LOOP`: address 0x0ade, `evalbasis.s` line 446 (30 words). Reached: inside `uEvalChangeBasis7`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (12), float multiply-add (5), float add (2), float subtract (2); takes 2 conditional transfers.
  It ends the command with an indirect transfer in condition group 31.
- `uEvalChangeBasis8`: address 0x0afc, `evalbasis.s` line 502 (51 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: evaluator basis change for order eight: multiplies and subtracts, then its matrix loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (15), float subtract (15), move (11), float add (4), float multiply-add (1).
  It has no jump of its own and runs on into `lCB8MATRIXLOOP`.
- `lCB8MATRIXLOOP`: address 0x0b2f, `evalbasis.s` line 554 (2 words). Reached: transfers in `lCB8LOOP`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (1), float multiply-add (1).
  It has no jump of its own and runs on into `lCB8LOOP`.
- `lCB8LOOP`: address 0x0b31, `evalbasis.s` line 557 (31 words). Reached: inside `uEvalChangeBasis8`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (12), float multiply (8), float add (1); takes 2 conditional transfers.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `lCB8MATRIXLOOP`.
- `uEvalChangeBasis4x4`: address 0x0b50, `evalbasis.s` line 613 (10 words). Reached: inside `uEvalChangeBasis8`, reached from that routine's own code.
  **Inferred** role: second entry inside the order-eight basis change for a 4x4 case: four moves and two subtracts, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4), float subtract (2).
  It has no jump of its own and runs on into `lCB4X4LOOP`.
- `lCB4X4LOOP`: address 0x0b5a, `evalbasis.s` line 624 (43 words). Reached: inside `uEvalChangeBasis4x4`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (12), float subtract (12), float multiply-add (10), float add (6); 7 words stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.

### evalmisc.s

Evaluator state save, load and swap for 1D and 2D maps. **Inferred** from its labels and callers.

- `uEvalSaveState`: address 0x0962, `evalmisc.s` line 55 (21 words). Reached: transfers in `mClipLinUserAndFrustum` and 6 other labels.
  **Inferred** role: saves the evaluator state by jumping to the WRAM-to-ERAM copy.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4); sets the condition flags once.
  It jumps to `mWramToEram`.
- `uEvalSaveState1D`: address 0x0977, `evalmisc.s` line 92 (18 words). Reached: transfers in `mgeb_EvalMapSpec2D`.
  **Inferred** role: saves the one-dimensional evaluator state through the WRAM-to-ERAM copy.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2).
  It jumps to `mWramToEram`.
- `uEvalSaveState2D`: address 0x0989, `evalmisc.s` line 126 (18 words). Reached: transfers in `mgeb_EvalMapSpec1D`.
  **Inferred** role: saves the two-dimensional evaluator state through the WRAM-to-ERAM copy.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2).
  It jumps to `mWramToEram`.
- `uEvalLoadState1D`: address 0x099b, `evalmisc.s` line 160 (18 words). Reached: transfers in `mgeb_EvalMapData1D` and 2 other labels.
  **Inferred** role: loads the one-dimensional evaluator state through the ERAM-to-WRAM copy.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2), float-to-integer conversion (1).
  It jumps to `mEramToWram`.
- `uEvalLoadState2D`: address 0x09ad, `evalmisc.s` line 194 (18 words). Reached: transfers in `lstrip2dreturn` and 3 other labels.
  **Inferred** role: loads the two-dimensional evaluator state through the ERAM-to-WRAM copy.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2), float-to-integer conversion (1).
  It jumps to `mEramToWram`.
- `uEvalSwapState1D`: address 0x09bf, `evalmisc.s` line 228 (27 words). Reached: transfers in `mgeb_EvalMapData2D` and 2 other labels.
  **Inferred** role: swaps in the one-dimensional evaluator state: one copy out to ERAM and one back.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3), float-to-integer conversion (1).
  It jumps to `mWramToEram` and `mEramToWram`.
- `uEvalSwapState2D`: address 0x09da, `evalmisc.s` line 272 (27 words). Reached: transfers in `mgeb_EvalMapData1D` and 2 other labels.
  **Inferred** role: swaps in the two-dimensional evaluator state: one copy out to ERAM and one back.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3), float-to-integer conversion (1).
  It jumps to `mWramToEram` and `mEramToWram`.

### expand.s

Pixel-path component expansion (RGB, LA, CI, single component), added by AddExpand2RGBA. **Inferred** from its labels and callers.

- `mmo_Expand`: address 0x171e, `expand.s` line 69 (66 words). Reached: geif slot 256 (entry 513); the ARM functions that send it are in the table below.
  **Inferred** role: pixel-path expand stage: set-up moves, four loops, then its RGB path.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (10); closes 4 loops.
  It has no jump of its own and runs on into `expand_rgb`.
- `umo_Expand`: address 0x171e, `expand.s` line 69 (66 words). Reached: second name for `mmo_Expand` at the same address, so the same code.
  **Inferred** role: pixel-path expand stage: set-up moves, four loops, then its RGB path.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (10); closes 4 loops.
  It has no jump of its own and runs on into `expand_rgb`.
- `expand_rgb`: address 0x1760, `expand.s` line 163 (8 words). Reached: inside `mmo_Expand`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): closes 1 loop.
  It has no jump of its own and runs on into `mainloop_exp_rgb`.
- `mainloop_exp_rgb`: address 0x1768, `expand.s` line 174 (29 words). Reached: inside `mmo_Expand`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (24); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_exp_rgb`.
- `epilogue_exp_rgb`: address 0x1785, `expand.s` line 206 (30 words). Reached: transfers in `expand_rgb`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (20).
  It ends the command with an indirect transfer in condition group 31.
- `expand_la`: address 0x17a3, `expand.s` line 248 (8 words). Reached: transfers in `mmo_Expand`.
  **Inferred** role: luminance-alpha entry of the expand stage, reached from the condition-0x15 transfer of `mmo_Expand` at 0x1757; its one working word leaves for `epilogue_exp_la` under 0x15, the forward exit of the pixel loops (ge_ops.md), and seven empty words follow before the loop, which scales each component with a float multiply.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): closes 1 loop.
  It has no jump of its own and runs on into `mainloop_exp_la`.
- `mainloop_exp_la`: address 0x17ab, `expand.s` line 259 (29 words). Reached: inside `mmo_Expand`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (12), move (12); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_exp_la`.
- `epilogue_exp_la`: address 0x17c8, `expand.s` line 291 (30 words). Reached: transfers in `expand_la`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (10), move (10).
  It ends the command with an indirect transfer in condition group 31.
- `expand_l`: address 0x17e6, `expand.s` line 333 (9 words). Reached: transfers in `mmo_Expand`.
  **Inferred** role: single-luminance entry of the expand stage: `mmo_Expand` reaches it at 0x174e under condition 0x15, on the word after its condition-0x14 transfer to `expand_ci`; an empty word, the 0x15 exit to `epilogue_exp_l`, then seven empty words lead into a loop that, like the luminance-alpha one, multiplies each component as it moves it.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): closes 1 loop.
  It has no jump of its own and runs on into `mainloop_exp_l`.
- `mainloop_exp_l`: address 0x17ef, `expand.s` line 345 (29 words). Reached: inside `mmo_Expand`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (12), move (12); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_exp_l`.
- `epilogue_exp_l`: address 0x180c, `expand.s` line 377 (30 words). Reached: transfers in `expand_l`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (10), move (10).
  It ends the command with an indirect transfer in condition group 31.
- `expand_ci`: address 0x182a, `expand.s` line 418 (20 words). Reached: transfers in `mmo_Expand`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): closes 2 loops.
  It has no jump of its own and runs on into `mainloop_exp_ci`.
- `mainloop_exp_ci`: address 0x183e, `expand.s` line 443 (29 words). Reached: inside `mmo_Expand`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (24); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_exp_ci`.
- `epilogue_exp_ci`: address 0x185b, `expand.s` line 475 (30 words). Reached: transfers in `expand_ci`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (20).
  It ends the command with an indirect transfer in condition group 31.
- `expand_ci2`: address 0x1879, `expand.s` line 517 (8 words). Reached: transfers in `expand_ci`.
  **Inferred** role: second colour-index entry: `expand_ci` jumps here at 0x182d under condition 0x14 before its own loop starts, so the colour-index path has two loops picked by that test; here the 0x15 exit goes to `epilogue_exp_ci2`, the loop is moves only with no multiply, and the closing epilogue is eleven words longer than the first colour-index one.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): closes 1 loop.
  It has no jump of its own and runs on into `mainloop_exp_ci2`.
- `mainloop_exp_ci2`: address 0x1881, `expand.s` line 528 (29 words). Reached: inside `mmo_Expand`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (24); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_exp_ci2`.
- `epilogue_exp_ci2`: address 0x189e, `expand.s` line 560 (41 words). Reached: transfers in `expand_ci2`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (24).
  It ends the command with an indirect transfer in condition group 31.
- `expand_single`: address 0x18c7, `expand.s` line 616 (24 words). Reached: transfers in `mmo_Expand`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3); closes 1 loop.
  It has no jump of its own and runs on into `mainloop_exp_single`.
- `mainloop_exp_single`: address 0x18df, `expand.s` line 650 (29 words). Reached: inside `mmo_Expand`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (24); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_exp_single`.
- `epilogue_exp_single`: address 0x18fc, `expand.s` line 682 (50 words). Reached: transfers in `expand_single`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (23).
  It ends the command with an indirect transfer in condition group 31.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mmo_Expand` | 256 | `AddExpand2RGBA` |  |

### feedback.S

Feedback mode: begin and end, and the point, line, triangle and pixel feedback records. **Inferred** from its labels and callers.

- `mgeb_BgnFeedbackMode`: address 0xb72f, `feedback.S` line 59 (32 words). Reached: geif slot 125 (entry 251); the ARM functions that send it are in the table below.
  **Inferred** role: enters feedback mode: compares the type operand with the GL feedback types (0x601 to 0x604 among 11 constants) and sets mode bits.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations OR (5), integer subtract or compare (4), move (2), AND (1); sets the condition flags 5 times; loads 11 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x800, 0x601, 0x602, 0x603, 0x604, 0x1, 0x5, 0x15 and 3 more.
- `mgeb_EndFeedbackMode`: address 0xb720, `feedback.S` line 131 (9 words). Reached: geif slot 138 (entry 277); the ARM functions that send it are in the table below.
  **Inferred** role: leaves feedback mode by clearing bit 28 (mask 0xefffffff).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (1); loads 1 constant.
  It ends with the end-of-command wait.
  Constants loaded: 0xefffffff.
- `mmo_FeedbackTriangle`: address 0xb76e, `feedback.S` line 166 (80 words). Reached: its address loaded as a constant in `mgeb_PolygonSetup_Feedback`.
  **Inferred** role: feedback output for a triangle: writes the polygon token (0x703) and calls the vertex feedback routine.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (19), integer add (6), integer-to-float conversion (4), AND (3), NOT (2), float add (2), float-to-integer conversion (1), second-unit operation 0xff (1); sets the condition flags 5 times; writes 7 words to the raster-bus output addresses; loads 5 constants; takes 4 conditional transfers.
  It calls `mFeedbackVertex`; ends with the end-of-command wait; conditional transfers reach `HereWeGo`.
  Constants loaded: 0x703, 0, 0x452, 0x476, 0x477.
- `mmo_FeedbackLine`: address 0xb89a, `feedback.S` line 320 (85 words). Reached: its address loaded as a constant in `mgeb_LineWidth_Feedback`.
  **Inferred** role: feedback output for a line: writes the line token (0x702, or 0x707 for a reset line) and calls the vertex feedback routine.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (19), AND (5), integer add (5), integer-to-float conversion (4), NOT (2), float add (2), float-to-integer conversion (1), second-unit operation 0xff (1); sets the condition flags 7 times; writes 7 words to the raster-bus output addresses; loads 7 constants; takes 4 conditional transfers.
  It calls `mFeedbackVertex`; ends with the end-of-command wait; conditional transfers reach `HereWeGo`.
  Constants loaded: 0x702, 0x707, 0x20000000, 0, 0x452, 0x476, 0x477.
- `mmo_FeedbackPoint`: address 0xb80f, `feedback.S` line 479 (72 words). Reached: its address loaded as a constant in `mgebi_PointSize_Feedback`.
  **Inferred** role: feedback output for a point: writes the point token (0x701) and calls the vertex feedback routine.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (20), integer add (4), AND (3), NOT (2), float add (2), integer-to-float conversion (2), float-to-integer conversion (1), second-unit operation 0xff (1); sets the condition flags 5 times; writes 7 words to the raster-bus output addresses; loads 5 constants; takes 4 conditional transfers.
  It calls `mFeedbackVertex`; ends with the end-of-command wait; conditional transfers reach `HereWeGo`.
  Constants loaded: 0x701, 0, 0x452, 0x476, 0x477.
- `mFeedbackVertex`: address 0xb93f, `feedback.S` line 612 (85 words). Reached: transfers in `mmo_FeedbackLine` and 2 other labels.
  **Inferred** role: writes one feedback vertex: multiply-adds to window coordinates, scaling by 1/16 and 2^-20, two raster bus words, then a return.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (24), move (20), float multiply (12), float add (10), float subtract (4), clamp at zero (2); writes 2 words to the raster-bus output addresses; loads 2 constants.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0.0625 (0x3d800000), 9.536743e-07 (0x35800000).
- `mgesi_FeedbackPixel`: address 0xb6bc, `feedback.S` line 737 (65 words). Reached: geif slot 419 (entry 839); the ARM functions that send it are in the table below.
  **Inferred** role: feedback output for a pixel operation, with the same 1/16 and 2^-20 scaling.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (24), integer add (3), float multiply (2), clamp at zero (1), float-to-integer conversion (1), integer-to-float conversion (1); writes 7 words to the raster-bus output addresses; reads engine memory at 10 addresses from 0x28 to 0x33; loads 5 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0.0625 (0x3d800000), 9.536743e-07 (0x35800000), 0x476, 0x452, 0x477.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgeb_BgnFeedbackMode` | 125 | `arm_rendermode` | `HP_RENDERMODE` |
| `mgeb_EndFeedbackMode` | 138 | `arm_rendermode` | `HP_RENDERMODE` |
| `mgesi_FeedbackPixel` | 419 | `PixelRestore`, `SetupRM`, `arm_bitmap_dlist`, `do_bitmap` | `HP_BITMAP_DLIST` |

### fft.S

FFT pixel path (sizes 2 to 256), transpose and complex output, set up by SetupGE_FFT. **Inferred** from its labels and callers.

- `mmo_FFT_2`: address 0x37cb, `fft.S` line 764 (11 words). Reached: geif slot 440 (entry 881).
  **Inferred** role: two-point FFT stage: float adds and subtracts, then it ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4), float add (2), float subtract (2).
  It ends the command with an indirect transfer in condition group 31.
- `mmo_FFT_4`: address 0x37aa, `fft.S` line 810 (25 words). Reached: geif slot 441 (entry 883).
  **Inferred** role: four-point FFT stage: eight butterfly adds and subtracts.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (8), float subtract (8), move (6), second-unit move (2).
  It ends the command with an indirect transfer in condition group 31.
- `mmo_FFT_8`: address 0x375e, `fft.S` line 858 (62 words). Reached: geif slot 442 (entry 885).
  **Inferred** role: eight-point FFT stage: butterflies with four twiddle multiplies.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (15), float add (13), float subtract (13), float multiply (4), second-unit move (2), second-unit move or minimum (1).
  It ends the command with an indirect transfer in condition group 31.
- `mmo_FFT_16`: address 0x36c0, `fft.S` line 941 (139 words). Reached: geif slot 443 (entry 887); the ARM functions that send it are in the table below.
  **Inferred** role: 16-point FFT stage: butterflies and twiddle multiplies.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (35), float subtract (35), move (27), float multiply (12), second-unit move (8), second-unit move or minimum (3).
  It ends the command with an indirect transfer in condition group 31.
- `mmo_FFT_32`: address 0x35c1, `fft.S` line 1027 (190 words). Reached: geif slot 444 (entry 889); the ARM functions that send it are in the table below.
  **Inferred** role: 32-point FFT stage: butterflies and twiddle multiplies.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (40), float subtract (40), move (39), float multiply (16), second-unit move (8), second-unit move or minimum (1); 6 words stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here); takes 3 conditional transfers.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_FFT_64`: address 0x3488, `fft.S` line 1090 (245 words). Reached: geif slot 445 (entry 891).
  **Inferred** role: 64-point FFT stage: butterflies and twiddle multiplies.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (54), float subtract (54), move (46), float multiply (24), second-unit move (12), second-unit move or minimum (2); 9 words stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here); takes 3 conditional transfers.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_FFT_128`: address 0x330f, `fft.S` line 1155 (293 words). Reached: geif slot 446 (entry 893); the ARM functions that send it are in the table below.
  **Inferred** role: 128-point FFT stage: butterflies and twiddle multiplies.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (59), float subtract (59), move (55), float multiply (28), second-unit move (12), second-unit move or minimum (3); 8 words stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here); takes 5 conditional transfers.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_FFT_256`: address 0x315b, `fft.S` line 1219 (349 words). Reached: geif slot 447 (entry 895); the ARM functions that send it are in the table below.
  **Inferred** role: 256-point FFT stage: butterflies and twiddle multiplies.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (73), float subtract (73), move (62), float multiply (36), second-unit move (16), second-unit move or minimum (4); 11 words stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here); takes 5 conditional transfers.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_Complex_Out`: address 0x3133, `fft.S` line 1385 (30 words). Reached: geif slot 448 (entry 897).
  **Inferred** role: FFT output stage for complex results: moves and one conditional transfer.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (18), second-unit move (3), NOT (1); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_Complex_Sort_Out`: address 0x30d4, `fft.S` line 1489 (55 words). Reached: geif slot 449 (entry 899).
  **Inferred** role: FFT output stage that reorders the complex results: 27 moves and one conditional transfer.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (27), NOT (1); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `mgesi_PixRasterPosSetup_FFT`: address 0x3051, `fft.S` line 1667 (105 words). Reached: geif slot 452 (entry 905); the ARM functions that send it are in the table below.
  **Inferred** role: raster-position set-up for an FFT pixel operation: three operand words, minimum and maximum bounds and raster constants.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations move (36), float add (5), float multiply (4), integer-to-float conversion (3), NOT (2), float-to-integer conversion (2), maximum (2), minimum (2), operation 0x6f9 (2), AND (1); sets the condition flags once; writes 13 words to the raster-bus output addresses; loads 30 constants.
  It waits on its own address under another condition group.
  Constants loaded: 0x3fc2, 8.0 (0x41000000), 0x400f0f00, 0xf0000, 0x806, 0x3fd3, 0x3fce (code in `mgeb_PixMapOutputRGBA`), 0x3fcd and 20 more.
- `mmo_Transpose`: address 0x3026, `fft.S` line 2050 (43 words). Reached: geif slot 450 (entry 901); the ARM functions that send it are in the table below.
  **Inferred** role: transpose stage of the FFT pixel path.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (11), float add (7), AND (1), integer add (1), integer-to-float conversion (1), logical shift right (1), second-unit move or minimum (1); writes 3 words to the raster-bus output addresses; stores 1 word to control-memory address 0x1a2; reads engine memory at 0x1389; loads 12 constants.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0x400c0c00, 0xc0000, 0x3fcd, 35.0 (0x420c0000), 0x3eff0000, 0x8002000, 0xff, 0x2200000 and 3 more.
- `mgeb_PixDrawColorSetup_FFT`: address 0x3000, `fft.S` line 2191 (15 words). Reached: geif slot 451 (entry 903); the ARM functions that send it are in the table below.
  **Inferred** role: draw-colour set-up for an FFT pixel operation: tests two operand words and branches.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (4); sets the condition flags once; takes 1 conditional transfer.
  It ends with the end-of-command wait; conditional transfers reach `uEvalSaveState`.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mmo_FFT_16` | 443 | `SetupGE_FFT` |  |
| `mmo_FFT_32` | 444 | `SetupGE_FFT` |  |
| `mmo_FFT_128` | 446 | `SetupGE_FFT` |  |
| `mmo_FFT_256` | 447 | `SetupGE_FFT` |  |
| `mgesi_PixRasterPosSetup_FFT` | 452 | `SetupRM_FFT` |  |
| `mmo_Transpose` | 450 | `SetupGE_FFT` |  |
| `mgeb_PixDrawColorSetup_FFT` | 451 | `SetupGE_FFT` |  |

### floattoint.s

Pixel-path float-to-integer stage, added by AddF2I. **Inferred** from its labels and callers.

- `mmo_FloatToInt`: address 0x2753, `floattoint.s` line 30 (41 words). Reached: geif slot 288 (entry 577); the ARM functions that send it are in the table below.
  **Inferred** role: pixel-path float-to-integer stage: scaling multiplies, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), float multiply (2); closes 1 loop.
  It has no jump of its own and runs on into `mainloop_f2i`.
- `umo_FloatToInt`: address 0x2753, `floattoint.s` line 30 (41 words). Reached: second name for `mmo_FloatToInt` at the same address, so the same code.
  **Inferred** role: pixel-path float-to-integer stage: scaling multiplies, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), float multiply (2); closes 1 loop.
  It has no jump of its own and runs on into `mainloop_f2i`.
- `mainloop_f2i`: address 0x277c, `floattoint.s` line 94 (29 words). Reached: inside `mmo_FloatToInt`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (24), float-to-integer conversion (24); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_f2i`.
- `epilogue_f2i`: address 0x2799, `floattoint.s` line 126 (51 words). Reached: transfers in `mmo_FloatToInt`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (23), float-to-integer conversion (23).
  It ends the command with an indirect transfer in condition group 31.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mmo_FloatToInt` | 288 | `AddF2I` |  |

### fluff.S

Geometry pipeline control: module dirty flags, multipass, punt and the vertex save and copy helpers. **Inferred** from its labels and callers.

- `mDispatchCentral`: address 0xe741, `fluff.S` line 53 (11 words). Reached: its address loaded as a constant in `mGL_CM_Initialize`.
  **Inferred** role: primitive dispatch: five conditional transfers on different conditions to the polygon-mode, clip and draw paths, then its finish code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3); takes 5 conditional transfers.
  It jumps to `mdc_finish`; conditional transfers reach `mdc_polymode_or_clip` and 3 other labels.
- `mdc_finish`: address 0xe450, `fluff.S` line 83 (14 words). Reached: transfers in `mDispatchCentral` and 2 other labels.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (5), AND (1), integer subtract or compare (1); sets the condition flags 2 times; writes 1 word to the raster-bus output addresses; loads 3 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x8, 0xe623 (code in `mmo_SaveRasterPos`), 0x70000.
- `mdc_polymode_or_clip`: address 0xe4d0, `fluff.S` line 121 (3 words). Reached: transfers in `mDispatchCentral`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1).
  It ends the command with an indirect transfer in condition group 31.
- `mdc_sprite`: address 0xe4b6, `fluff.S` line 140 (9 words). Reached: transfers in `mDispatchCentral`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2); takes 2 conditional transfers.
  It calls `mEramToCram`; jumps to `mdc_finish`; conditional transfers reach `mdc_multipass` and 1 other label.
- `mdc_multipass`: address 0xe471, `fluff.S` line 169 (29 words). Reached: transfers in `mDispatchCentral` and 1 other label.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (7), AND (1), OR (1), operation 0x6d1 (1); sets the condition flags once; loads 3 constants; takes 2 conditional transfers.
  It calls `mEramToCram`; ends the command with an indirect transfer in condition group 31; jumps to `mdc_finish`; conditional transfers reach `mdc_evaluator`.
  Constants loaded: 0x80, 0xfffffff7, 0xca01 (code in `mmo_DummyDecompose`).
- `mdc_evaluator`: address 0xe462, `fluff.S` line 239 (4 words). Reached: transfers in `mDispatchCentral` and 2 other labels.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1).
  It ends the command with an indirect transfer in condition group 31.
- `mmo_AbortGeometry`: address 0xe6e8, `fluff.S` line 264 (38 words). Reached: transfers in `lCU2` and 17 other labels.
  **Inferred** role: abandons the current primitive: tests the abort flags, writes one raster bus word and ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (11), AND (3), integer subtract or compare (1); sets the condition flags 4 times; writes 1 word to the raster-bus output addresses; reads engine memory at 0x14d5; loads 5 constants; takes 3 conditional transfers.
  It ends the command with an indirect transfer in condition group 31; ends with the end-of-command wait; jumps within its own code; conditional transfers reach `HereWeGo`.
  Constants loaded: 0x10, 0xe623 (code in `mmo_SaveRasterPos`), 0x70000, 0xe3d2 (code in `mmo_Punt`), 0xe730 (code in `mmo_AbortGeometry`).
- `mmo_SaveRasterPos`: address 0xe623, `fluff.S` line 459 (65 words). Reached: its address loaded as a constant in `mRecordHit` and 3 other labels.
  **Inferred** role: saves the raster position: reads 15 vertex-record words (offsets 11 to 38), transforms them and copies them out with the WRAM-to-ERAM copy.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads 15 command words between offsets 11 and 38; operations float multiply-add (12), float add (10), move (9), float subtract (8), float multiply (4), AND (3), OR (1); sets the condition flags 9 times; loads 2 constants; takes 4 conditional transfers.
  It calls `mWramToEram`; ends with the end-of-command wait; conditional transfers reach `mmo_ToScreenSpaceInvQ` and 2 other labels.
  Constants loaded: 0x4, 0x20000000.
- `mmo_Vn2ToSave`: address 0xe4de, `fluff.S` line 625 (20 words). Reached: its address loaded as a constant in `mgesi_QuadStripSave` and 2 other labels.
  **Inferred** role: vertex-cache step that moves the vertex two back into the save slot (nine moves).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (9).
  It ends the command with an indirect transfer in condition group 31.
- `mmo_SaveToV0`: address 0xe605, `fluff.S` line 656 (19 words). Reached: its address loaded as a constant in `mgesi_QuadStripRestore` and 5 other labels.
  **Inferred** role: vertex-cache step that moves the saved vertex into slot 0 (nine moves).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (9).
  It ends the command with an indirect transfer in condition group 31.
- `mmo_SaveToV0AndVn2ToSave`: address 0xe57e, `fluff.S` line 687 (34 words). Reached: its address loaded as a constant in `mgesi_QuadStripRestoreSave` and 2 other labels.
  **Inferred** role: vertex-cache step doing both moves above (17 moves).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (17).
  It ends the command with an indirect transfer in condition group 31.
- `mmo_V0ToSave`: address 0xe544, `fluff.S` line 731 (19 words). Reached: its address loaded as a constant in `mgesi_LineStripSaveV0` and 1 other label.
  **Inferred** role: vertex-cache step that moves the current vertex (record words 27 to 34) into the save slot.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 27 to 34; operations move (9).
  It ends the command with an indirect transfer in condition group 31.
- `mmo_SaveToVn1`: address 0xe560, `fluff.S` line 766 (20 words). Reached: its address loaded as a constant in `mgesi_LineStripRestoreV0`.
  **Inferred** role: vertex-cache step that moves the saved vertex into the previous-vertex slot.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (9).
  It ends the command with an indirect transfer in condition group 31.
- `mmo_CopyV0ToVn1`: address 0xe6d4, `fluff.S` line 796 (12 words). Reached: its address loaded as a constant in `mgesi_LineStripCopyV0`.
  **Inferred** role: vertex-cache step that copies the current vertex into the previous-vertex slot.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 27 to 34; operations move (9).
  It ends the command with an indirect transfer in condition group 31.
- `mmo_V0ToSaveAndIgnore`: address 0xe4fd, `fluff.S` line 825 (21 words). Reached: its address loaded as a constant in `mgesi_LineStripSaveAndIgnoreV0`.
  **Inferred** role: saves the current vertex and draws nothing for it.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 27 to 34; operations move (9).
  It ends the command with an indirect transfer in condition group 31.
- `mmo_CopyV0ToVn1AndIgnore`: address 0xe6c0, `fluff.S` line 863 (15 words). Reached: its address loaded as a constant in `mgesi_LineStripCopyAndIgnoreV0`.
  **Inferred** role: copies the current vertex into the previous slot and draws nothing for it.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 27 to 34; operations move (9).
  It ends the command with an indirect transfer in condition group 31.
- `mmo_V0ToSave_SaveExtra`: address 0xe519, `fluff.S` line 895 (24 words). Reached: its address loaded as a constant in `mgesi_TfanPolySave`.
  **Inferred** role: saves the current vertex and its extra state through the WRAM-to-ERAM copy.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 27 to 34; operations move (9).
  It calls `mWramToEram`; ends the command with an indirect transfer in condition group 31.
- `mmo_SaveToV0_SaveExtra`: address 0xe5a9, `fluff.S` line 932 (24 words). Reached: its address loaded as a constant in `mgesi_TfanPolyRestoreSave`.
  **Inferred** role: moves the saved vertex into slot 0 and saves the extra state.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (9).
  It calls `mWramToEram`; ends the command with an indirect transfer in condition group 31.
- `mmo_SaveToV0_RestoreExtra`: address 0xe5d7, `fluff.S` line 965 (35 words). Reached: its address loaded as a constant in `mgesi_TfanPolyRestoreEdge`.
  **Inferred** role: moves the saved vertex into slot 0 and restores the extra state.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (17).
  It jumps within its own code.
- `mmo_Punt`: address 0xe3d2, `fluff.S` line 1002 (5 words). Reached: its address loaded as a constant in `mmo_AbortGeometry`.
  **Inferred** role: five-word module that gives up on the current primitive and ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1).
  It ends the command with an indirect transfer in condition group 31.
- `mmo_DirtyMultipassModule`: address 0xe6a5, `fluff.S` line 1016 (8 words). Reached: its address loaded as a constant in `mmo_DirtyPrePathModule`.
  **Inferred** role: selects the multipass module after a state change by loading its address.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1); loads 1 constant.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xe3e1 (code in `mmo_MultipassModule`).
- `mmo_MultipassModule`: address 0xe3e1, `fluff.S` line 1038 (31 words). Reached: its address loaded as a constant in `mmo_DirtyMultipassModule`.
  **Inferred** role: multipass drawing: tests flags 0x80 and 0x10 and copies state between coefficient and external memory for each pass.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations integer subtract or compare (2), move (2), AND (1); sets the condition flags once; loads 3 constants; takes 1 conditional transfer.
  It calls `mCramToEram` and `mEramToCram`; ends the command with an indirect transfer in condition group 31; jumps within its own code.
  Constants loaded: 0x80, 0x10.

### fog.S

Fog: global table set-up, fog function, mode, enable and offset. **Inferred** from its labels and callers.

- `mDummy`: address 0x7631, `fog.S` line 180 (1 word). Reached: no slot, ARM load, decoded transfer or address constant reaches it (routes tried: [How to read the tables](#how-to-read-the-entries)).
  **Inferred** role: one-word return routine; nothing in the program calls it.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mZclipToEye`: address 0x7604, `fog.S` line 202 (29 words). Reached: transfers in `mCoarseTblSpecialEntry` and 6 other labels; its address loaded as a constant in `mLoadFogTable`.
  **Inferred** role: converts a clip-space depth to eye space: reciprocal steps, multiplies and a minimum, then a return.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (10), float add (4), reciprocal Newton step (4), minimum (2), operation 0x6ee (2).
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mSendFog`: address 0x75d2, `fog.S` line 247 (22 words). Reached: its address loaded as a constant in `mStartFogDownload`.
  **Inferred** role: sends one fog value: float adds and multiplies and one raster bus word, then a return.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (4), float multiply (4), NOT (2); writes 1 word to the raster-bus output addresses; takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31); conditional transfers reach `mZclipToEye`.
- `mFinishFogDownload`: address 0x75c3, `fog.S` line 316 (7 words). Reached: transfers in `mLoadFogTable` and 2 other labels; its address loaded as a constant in `mgeb_InitFogGlobal`.
  **Inferred** role: finishes a fog table download: one engine-memory read and a return.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2); reads engine memory at 0x1389.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mSendFineTblSpecialEntry`: address 0x75ba, `fog.S` line 344 (3 words). Reached: its address loaded as a constant in `mFineTblSpecialEntry`.
  **Inferred** role: sends the special entry of the fine fog table: one multiply, then the download finish.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (1); loads 1 constant.
  It jumps to `mFinishFogDownload`.
  Constants loaded: 0x400c000c.
- `mFineTblSpecialEntry`: address 0x75ab, `fog.S` line 358 (7 words). Reached: its address loaded as a constant in `mLoadFineTable` and 1 other label.
  **Inferred** role: computes the special entry of the fine fog table through the eye-depth conversion.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2); loads 1 constant.
  It jumps to `mZclipToEye`.
  Constants loaded: 0x75ba (code in `mSendFineTblSpecialEntry`).
- `mSendCoarseTblSpecialEntry`: address 0x7595, `fog.S` line 389 (14 words). Reached: its address loaded as a constant in `mCoarseTblSpecialEntry`.
  **Inferred** role: sends the special entry of the coarse fog table: multiplies and moves, then a return.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (4), move (4).
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mCoarseTblSpecialEntry`: address 0x74ff, `fog.S` line 448 (23 words). Reached: its address loaded as a constant in `mgeb_InitFogGlobal`.
  **Inferred** role: computes the special entry of the coarse fog table through the eye-depth conversion.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4), float add (3), float multiply (1), integer-to-float conversion (1), operation 0x6ec (1), second-unit operation 0xff (1); reads engine memory at 2 addresses from 0x1414 to 0x1419; loads 3 constants.
  It jumps to `mZclipToEye`.
  Constants loaded: 0x7595 (code in `mSendCoarseTblSpecialEntry`), 0x7534 (code in `mSplineFogGSS`), 0x4.
- `mSendOneBigTblSpecialEntry`: address 0x74f3, `fog.S` line 484 (12 words). Reached: its address loaded as a constant in `mOneBigTblSpecialEntry`.
  **Inferred** role: sends the special entry of the single large fog table: three raster bus words, then the download finish.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3), float multiply (1), float-to-integer conversion (1); writes 3 words to the raster-bus output addresses; loads 5 constants.
  It jumps to `mFinishFogDownload`.
  Constants loaded: 0x400c000c, 0x70000, 0x10000, 0x1621403, 0x42011000.
- `mOneBigTblSpecialEntry`: address 0x74e4, `fog.S` line 522 (8 words). Reached: its address loaded as a constant in `mgeb_InitFogGlobal`.
  **Inferred** role: computes the special entry of the single large fog table through the eye-depth conversion.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2), operation 0x6ec (1); loads 1 constant.
  It jumps to `mZclipToEye`.
  Constants loaded: 0x74f3 (code in `mSendOneBigTblSpecialEntry`).
- `mInitLinearFog`: address 0x74be, `fog.S` line 556 (15 words). Reached: its address loaded as a constant in `mgeb_Fogf`.
  **Inferred** role: set-up for linear fog: reciprocal of (end - start) by seed and Newton steps, then the eye-depth conversion.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (2), reciprocal Newton step (2), float subtract (1), move (1), reciprocal seed (1); reads engine memory at 2 addresses from 0x9e0 to 0x9e1.
  It jumps to `mZclipToEye`.
- `mLinearFog`: address 0x74a8, `fog.S` line 580 (9 words). Reached: its address loaded as a constant in `mgeb_Fogf`.
  **Inferred** role: linear fog value: subtract, multiply and clamp, then a return.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations clamp at zero (2), float multiply (2), float subtract (2).
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mInitExpFog`: address 0x748a, `fog.S` line 644 (14 words). Reached: its address loaded as a constant in `mgeb_Fogf`.
  **Inferred** role: set-up for exponential fog: loads 256.0 and 127.9984 and reads the density from engine memory.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3), float multiply (2); reads engine memory at 0x9df; loads 3 constants.
  It jumps to `mZclipToEye`.
  Constants loaded: 256.0 (0x43800000), 127.9984 (0x42ffff2e), 16.0 (0x41800000).
- `mExpFog`: address 0x7431, `fog.S` line 686 (49 words). Reached: its address loaded as a constant in `mgeb_Fogf`.
  **Inferred** role: named for the exponential fog factor; the words multiply, convert a float to an integer, clamp at zero and take a minimum, then return, no engine-memory read appears in them, so a table lookup is not shown, and what the result feeds is unknown.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (8), move (6), float-to-integer conversion (4), operation 0x6fb (4), clamp at zero (2), float subtract (2), minimum (2).
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mSplineSlopeAndOffset`: address 0x7404, `fog.S` line 777 (28 words). Reached: transfers in `mInitSplineFog` and 1 other label.
  **Inferred** role: slope and offset of one fog-spline interval: differences divided by reciprocal Newton steps, then a return.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (10), float subtract (6), reciprocal Newton step (4), float add (2).
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mInitSplineFog`: address 0x73ec, `fog.S` line 826 (15 words). Reached: its address loaded as a constant in `mgeb_Fogf`.
  **Inferred** role: set-up for spline fog: reads the spline from engine memory and computes the first slope.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4), second-unit move or minimum (4); reads engine memory at 0x9ed.
  It jumps to `mSplineSlopeAndOffset`.
- `mUpdateSplineIntervals`: address 0x7390, `fog.S` line 856 (34 words). Reached: transfers in `mSplineFog` and 1 other label.
  **Inferred** role: steps through the fog-spline intervals in a loop and recomputes the slope.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (8), float subtract (2); sets the condition flags 2 times; closes 1 loop.
  It jumps to `mSplineSlopeAndOffset`.
- `mSplineFog`: address 0x7372, `fog.S` line 932 (10 words). Reached: transfers in `mSplineFogGSS`; its address loaded as a constant in `mLoadFogTable` and 1 other label.
  **Inferred** role: spline fog value for one depth, updating the interval when the depth leaves it.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (2), float multiply (2), float subtract (2), second-unit move (2), move (1), second-unit move or minimum (1); sets the condition flags 2 times; takes 1 conditional transfer.
  It jumps to `mUpdateSplineIntervals`; conditional transfers reach `HereWeGo`.
- `mSplineFogGSS`: address 0x7534, `fog.S` line 972 (31 words). Reached: its address loaded as a constant in `mCoarseTblSpecialEntry` and 1 other label.
  **Inferred** role: spline fog search: six compares in a loop to find the interval.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (6), move (4); sets the condition flags 6 times; takes 1 conditional transfer; closes 1 loop.
  It jumps to `mUpdateSplineIntervals`; conditional transfers reach `mSplineFog`.
- `mGetInternalPointsGSS`: address 0x7360, `fog.S` line 1065 (7 words). Reached: transfers in `mLinearApproxErrorGSS` and 1 other label.
  **Inferred** role: inner points of a golden-section search (constant 0.382).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (2), float add (1), float multiply (1); loads 1 constant.
  It jumps to `mZclipToEye`.
  Constants loaded: 0.382 (0x3ec39581).
- `mLinearApproxErrorGSS`: address 0x7332, `fog.S` line 1089 (18 words). Reached: its address loaded as a constant in `mLinearApproxParamsGSS`.
  **Inferred** role: error of a linear approximation of the fog curve, compared during the golden-section search.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4), float subtract (3), float add (2), float multiply (2), operation 0x6ee (2); sets the condition flags once; takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31); conditional transfers reach `mGetInternalPointsGSS`.
- `mLinearApproxParamsGSS`: address 0x730b, `fog.S` line 1138 (17 words). Reached: its address loaded as a constant in `mStartGSS`.
  **Inferred** role: parameters of the linear fog approximation: reciprocal of the interval, then the inner points.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (4), float subtract (3), reciprocal Newton step (2), move (1), reciprocal seed (1); loads 1 constant.
  It jumps to `mGetInternalPointsGSS`.
  Constants loaded: 0x7332 (code in `mLinearApproxErrorGSS`).
- `mStartGSS`: address 0x783f, `fog.S` line 1167 (10 words). Reached: transfers in `mDefineCoarseMode` and 1 other label.
  **Inferred** role: starts a golden-section search: loads the address of the parameter routine and returns.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2), second-unit move or minimum (1); loads 1 constant.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0x730b (code in `mLinearApproxParamsGSS`).
- `mDefineFineMode`: address 0x71c8, `fog.S` line 1222 (129 words). Reached: transfers in `mDefineCoarseMode`.
  **Inferred** role: builds the fine fog table: runs the search and scales into 4096 and 251-step ranges.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (28), float subtract (10), float multiply (7), float add (6), OR (1), XOR (1), integer subtract or compare (1), shift left (1); sets the condition flags 10 times; writes 3 words to the raster-bus output addresses; reads engine memory at 5 addresses from 0x9de to 0x142f; 1 word stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here); loads 15 constants; takes 6 conditional transfers.
  It calls `mStartGSS`; ends the command with an indirect transfer in condition group 31; jumps within its own code; conditional transfers reach `HereWeGo`.
  Constants loaded: 0x801, 4096.0 (0x45800000), 251.0 (0x437b0000), 0.001 (0x3a83126f), 253.0 (0x437d0000), 0, 0x70000, 0x100ff and 4 more.
- `mDefineCoarseMode`: address 0x7771, `fog.S` line 1490 (85 words). Reached: transfers in `mLoadFogTable`.
  **Inferred** role: builds the coarse fog table: runs the search with large float constants, then the fine table.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (16), float multiply (10), float subtract (9), operation 0x6ec (2), reciprocal Newton step (2), reciprocal seed (1); sets the condition flags 4 times; reads engine memory at 2 addresses from 0x141b to 0x1420; loads 8 constants; closes 1 loop.
  It calls `mStartGSS`; jumps to `mDefineFineMode`.
  Constants loaded: 4096.0 (0x45800000), 0, 0x4f600000, 0x4f7c0000, 0x4f7f8000, 0.001 (0x3a83126f), 0x4f7ff000.
- `mStartFogDownload`: address 0x7187, `fog.S` line 1660 (41 words). Reached: transfers in `mLoadFineTable` and 2 other labels.
  **Inferred** role: starts sending a fog table to the raster system: 13 constants and one raster bus word.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (7), float add (6), move (3); writes 1 word to the raster-bus output addresses; loads 13 constants.
  It jumps within its own code.
  Constants loaded: 21.0 (0x41a80000), 12.0 (0x41400000), 16.0 (0x41800000), 4.0 (0x40800000), 20.0 (0x41a00000), 8.0 (0x41000000), 0x1405, 0x75d2 (code in `mSendFog`) and 5 more.
- `mLoadOneBigTable`: address 0x715c, `fog.S` line 1736 (27 words). Reached: transfers in `mLoadFogTable`.
  **Inferred** role: builds the single large fog table, then starts its download.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (5), move (4), reciprocal Newton step (2), float add (1), operation 0x6ec (1), reciprocal seed (1), second-unit move (1); reads engine memory at 3 addresses from 0x1413 to 0x141a; loads 2 constants.
  It jumps to `mStartFogDownload`.
  Constants loaded: 4096.0 (0x45800000), 8388608.0 (0x4b000000).
- `mLoadFineTable`: address 0x7146, `fog.S` line 1799 (11 words). Reached: its address loaded as a constant in `mgeb_InitFogGlobal`.
  **Inferred** role: loads the fine fog table from engine memory and starts its download.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3); reads engine memory at 2 addresses from 0xa33 to 0xa34; loads 2 constants.
  It jumps to `mStartFogDownload`.
  Constants loaded: 0x75ab (code in `mFineTblSpecialEntry`), 0x40.
- `mLoadFogTable`: address 0x76a2, `fog.S` line 1835 (90 words). Reached: transfers in `mResolveFogTable` and 4 other labels.
  **Inferred** role: builds the fog table for the current mode and starts its download.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (30), float multiply (9), XOR (2), operation 0x6ea (2), operation 0x6ec (2), reciprocal Newton step (2), float add (1), float subtract (1), reciprocal seed (1); sets the condition flags 6 times; writes 2 words to the raster-bus output addresses; reads engine memory at 11 addresses from 0x9de to 0x1418; loads 9 constants; takes 5 conditional transfers.
  It calls `mDefineCoarseMode`; jumps to `mStartFogDownload`; jumps within its own code; conditional transfers reach `mFinishFogDownload` and 1 other label.
  Constants loaded: 0x7604 (code in `mZclipToEye`), 0x70000, 0xff00, 0x1621403, 0x42080800, 0x801, 0x812a, 0x7534 (code in `mSplineFogGSS`) and 1 more.
- `mSetFogOffset`: address 0x765c, `fog.S` line 1992 (38 words). Reached: transfers in `mResolveFogTable` and 2 other labels.
  **Inferred** role: computes the fog offset with reciprocal steps and a maximum, then returns.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (10), move (7), float add (2), maximum (2), reciprocal Newton step (2), float subtract (1), reciprocal seed (1); reads engine memory at 2 addresses from 0x9e9 to 0x9ea; loads 4 constants.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0x70000, 0xffffffff, 0x1651406, 0x4020000c.
- `mgeb_Fogf`: address 0x6fb2, `fog.S` line 2079 (211 words). Reached: geif slot 352 (entry 705); the ARM functions that send it are in the table below; distributor table 1; transfers in `mgeb_Fogi`.
  **Inferred** role: GL fog call with a float parameter: compares the parameter name (XOR against GL fog enumerants), stores the value and rebuilds the table.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 4; operations move (52), XOR (15), float multiply (7), clamp at zero (4), AND (3), float-to-integer conversion (2), OR (1), integer subtract or compare (1), integer-to-float conversion (1), logical shift right (1), operation 0x6ea (1), shift left (1); sets the condition flags 18 times; writes 12 words to the raster-bus output addresses; reads engine memory at 3 addresses from 0x9de to 0xa42; loads 49 constants; takes 14 conditional transfers; closes 1 loop.
  It calls `mSetFogOffset` and `mLoadFogTable`; ends with the end-of-command wait; jumps within its own code.
  Constants loaded: 0xb63, 0xb64, 0xb65, 0xb62, 0xb66, 0xb61, 0x8199, 0x2601 and 24 more.
- `mgeb_Fogi`: address 0x6fa5, `fog.S` line 2364 (4 words). Reached: geif slot 353 (entry 707); the ARM functions that send it are in the table below; distributor table 2.
  **Inferred** role: GL fog call with an integer parameter: one move, then the float handler.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1).
  It jumps to `mgeb_Fogf`.
- `mgeb_FogEnable`: address 0x6f1e, `fog.S` line 2418 (51 words). Reached: geif slot 112 (entry 225); the ARM functions that send it are in the table below.
  **Inferred** role: enables fog: sets the fog flag bits and rebuilds the offset and table.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (12), float subtract (6), AND (2), NOT (1), float-to-integer conversion (1); sets the condition flags 7 times; reads engine memory at 6 addresses from 0xa36 to 0xa3b; loads 5 constants; takes 7 conditional transfers.
  It calls `mSetFogOffset` and `mLoadFogTable`; ends with the end-of-command wait; jumps within its own code.
  Constants loaded: 0x70000, 0x100000, 0x1621403, 32.26953 (0x42011400), 0x4.
- `mgebi_FogDisable`: address 0x6f05, `fog.S` line 2505 (18 words). Reached: geif slot 113 (entry 227); the ARM functions that send it are in the table below.
  **Inferred** role: disables fog by writing the fog-off raster words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6); loads 4 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x1621403, 32.26953 (0x42011400), 0x70000, 0x100000.
- `mgebi_FogOffsetEnableDisable`: address 0x6eea, `fog.S` line 2557 (20 words). Reached: geif slot 115 (entry 231); the ARM functions that send it are in the table below.
  **Inferred** role: switches the fog offset from its operand word.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (6); loads 4 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x70000, 0x40000, 0x1621403, 32.26758 (0x42011200).
- `mgeb_FogRestore`: address 0x6ebf, `fog.S` line 2608 (13 words). Reached: geif slot 354 (entry 709); the ARM functions that send it are in the table below.
  **Inferred** role: restores fog after a context load by rebuilding the table.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations OR (1), move (1); loads 1 constant; takes 1 conditional transfer.
  It calls `mLoadFogTable`; ends with the end-of-command wait; jumps within its own code.
  Constants loaded: 0x4.
- `mgeb_FogFunc`: address 0x6e4b, `fog.S` line 2647 (45 words). Reached: geif slot 114 (entry 229); the ARM functions that send it are in the table below.
  **Inferred** role: GL fog func (SGIS) call: reads the point count and table words and rebuilds the table.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations move (8), OR (1), XOR (1), float-to-integer conversion (1), operation 0x6ea (1); sets the condition flags 2 times; reads engine memory at 0x9de; loads 4 constants; takes 3 conditional transfers; closes 1 loop.
  It calls `mLoadFogTable`; ends with the end-of-command wait; jumps within its own code.
  Constants loaded: 0, 0x7f800000, 0x812a, 0x4.
- `mgesi_GetFogFunc`: address 0x6e20, `fog.S` line 2742 (23 words). Reached: geif slot 356 (entry 713).
  **Inferred** role: reads the fog function back through the raster bus output addresses.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), integer add (1); sets the condition flags once; writes 2 words to the raster-bus output addresses; reads engine memory at 2 addresses from 0x9eb to 0x9ec; loads 1 constant; takes 1 conditional transfer.
  It ends with the end-of-command wait.
  Constants loaded: 0x476.
- `mResolveFogTable`: address 0x763a, `fog.S` line 2782 (6 words). Reached: transfers in `mMatrixMultCCW` and 7 other labels.
  **Inferred** role: common fog update after a matrix or fog change: calls the offset and table routines, then the end-of-command wait.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1).
  It calls `mSetFogOffset` and `mLoadFogTable`; ends with the end-of-command wait.
- `mgeb_InitFogGlobal`: address 0x6cf0, `fog.S` line 2821 (208 words). Reached: geif slot 355 (entry 711); the ARM functions that send it are in the table below.
  **Inferred** role: fog state initialisation: combines operand words with small constants by XOR and OR and branches on the result.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (61), XOR (11), OR (6), logical shift right (5), second-unit operation 0xff (5), AND (4), float-to-integer conversion (3), integer subtract or compare (3), integer add (2), integer-to-float conversion (2); sets the condition flags 10 times; reads engine memory at 0x1389; loads 48 constants; takes 3 conditional transfers.
  It ends with the end-of-command wait; jumps within its own code.
  Constants loaded: 0x8, 0xf, 0x2, 0x7, 0x4, 0x5, 0x6, 0x74ff (code in `mCoarseTblSpecialEntry`) and 37 more.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgeb_Fogf` | 352 | `init_ged` |  |
| `mgeb_Fogi` | 353 | `init_ged` |  |
| `mgeb_FogEnable` | 112 | `e_fog` |  |
| `mgebi_FogDisable` | 113 | `d_fog` |  |
| `mgebi_FogOffsetEnableDisable` | 115 | `d_fog_offset`, `e_fog_offset` |  |
| `mgeb_FogRestore` | 354 | `fogRestore` |  |
| `mgeb_FogFunc` | 114 | `arm_fogfunc`, `initFogState` | `HP_FOGFUNC` |
| `mgeb_InitFogGlobal` | 355 | `InitFogGlobal` |  |

### ge.S

Start-up and context initialisation of GL and X state, pipe set-up. **Inferred** from its labels and callers.

- `mgeb_GlobalInitialize`: address 0xad66, `ge.S` line 54 (19 words). Reached: geif slot 152 (entry 305); the ARM functions that send it are in the table below.
  **Inferred** role: global engine initialisation at board start: loads five constants (142.0, 40.0 among them) and calls the register, light and evaluator initialisers.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (5); loads 5 constants.
  It calls `mGL_REGS_Initialize` and 2 other routines; ends with the end-of-command wait.
  Constants loaded: 142.0 (0x430e0000), 40.0 (0x42200000), 0x2102000, 0x2103000, 0x2202000.
- `mgeb_GLContextInitialize`: address 0xad39, `ge.S` line 90 (9 words). Reached: geif slot 365 (entry 731); the ARM functions that send it are in the table below.
  **Inferred** role: GL context initialisation: calls the register, colour-module, light-context and extension initialisers.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It calls `mGL_REGS_Initialize` and 3 other routines; ends with the end-of-command wait.
- `mgeb_XContextInitialize`: address 0xad1c, `ge.S` line 114 (11 words). Reached: geif slot 364 (entry 729); the ARM functions that send it are in the table below.
  **Inferred** role: X server context initialisation: two operand words, then the X register and colour-module initialisers.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (2).
  It calls `mX_REGS_Initialize` and `mX_CM_Initialize`; ends with the end-of-command wait.
- `mX_REGS_Initialize`: address 0xade8, `ge.S` line 132 (25 words). Reached: transfers in `mgeb_XContextInitialize`.
  **Inferred** role: initialises the engine registers for an X context: loads 0, 1.0 and the sign bit, then returns.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float-to-integer conversion (4), move (3); loads 3 constants.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0, 1.0 (0x3f800000), 0x80000000.
- `mGL_REGS_Initialize`: address 0xb25a, `ge.S` line 200 (26 words). Reached: transfers in `mgeb_GLContextInitialize` and 1 other label.
  **Inferred** role: initialises the engine registers for a GL context: loads 0, 0x14, 1.0 and the sign bit, then returns.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float-to-integer conversion (4), move (4); loads 4 constants.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0, 0x14, 1.0 (0x3f800000), 0x80000000.
- `mX_CM_Initialize`: address 0xadaf, `ge.S` line 279 (52 words). Reached: transfers in `mgeb_XContextInitialize`.
  **Inferred** role: initialises the X context's state words in engine memory: 18 mask and value constants.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (19); loads 18 constants; takes 1 conditional transfer.
  It jumps within its own code.
  Constants loaded: 0xfffff, 0xffffffff, 0xff, 0xff001fff, 0x4ff, 0x3ff, 0x142808, 0x141408 and 10 more.
- `mGL_CM_Initialize`: address 0xb1ac, `ge.S` line 332 (165 words). Reached: transfers in `mgeb_GLContextInitialize`.
  **Inferred** role: initialises the GL context's state words, among them the addresses of the transform, clip and draw modules (63 constants).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (64); loads 63 constants; takes 1 conditional transfer.
  It jumps within its own code.
  Constants loaded: 0x2, 0x3f, 0xfff, 0x1218, 1.0 (0x3f800000), 0xd69, 0x10c9 (code in `mmo_ToScreenSpace`), 0x28ca (code in `mmo_DrawQuad`) and 41 more.
- `mGL_EM_Initialize`: address 0xb0f4, `ge.S` line 496 (178 words). Reached: transfers in `mgeb_GlobalInitialize`.
  **Inferred** role: initialises the evaluator and math constants in engine memory: 86 constants, among them pi (0x40490fdb), -pi and pi/2.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (86); loads 86 constants.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0xc0490fdb, 0x40490fdb, 0x3c8efa35, 0x3fc90fdb, 0x4b400000, 0x40c90fdb, 0x3b360b61, 0x3941db50 and 56 more.
- `mGL_EX_Initialize`: address 0xae09, `ge.S` line 941 (715 words). Reached: transfers in `mgeb_GLContextInitialize`.
  **Inferred** role: initialises the GL extension state: 246 constants, among them GL enumerants and module addresses, then returns.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (257), OR (2); loads 246 constants.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0x1b02, 0.5 (0x3f000000), 0, 1.0 (0x3f800000), 32.0 (0x42000000), 0x8a2, 0x8c2, 0x8e2 and 19 more.
- `mDebugInitialize`: address 0xad90, `ge.S` line 985 (16 words). Reached: inside `mGL_EX_Initialize`, reached from that routine's own code.
  **Inferred** role: debug initialisation inside the extension initialiser: calls the ERAM clear and loads the marker 0xdeadbeef.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2); loads 3 constants.
  It calls `mClearEram`; returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0, 0xdeadbeef.
- `mgesi_PipeSetup`: address 0xab9d, `ge.S` line 1023 (224 words). Reached: geif slot 374 (entry 749); the ARM functions that send it are in the table below.
  **Inferred** role: pipe set-up from the ARM: four operand words, one raster bus word and a call to the print routine with a greeting string ("Welcome to GE...").
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations move (48); writes 1 word to the raster-bus output addresses; loads 12 constants.
  It calls `mPrintf`; ends with the end-of-command wait.
  Constants loaded: 0, 0x57656c63, 0x6f6d6520, 0x746f2047, 0x454c616e, 0x64210000.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgeb_GlobalInitialize` | 152 | `init_ge` |  |
| `mgeb_GLContextInitialize` | 365 | `context_init` |  |
| `mgeb_XContextInitialize` | 364 | `arm_slop`, `arm_x_init` | `HP_SLOP`, `HP_X_INIT` |
| `mgesi_PipeSetup` | 374 | `arm_pipe_setup`, `init_simulator_hacks` | `HP_PIPE_SETUP` |

### generallight.S

General (multi-light, local viewer) lighting loop. **Inferred** from its labels and callers.

- `mmo_LiColorMask`: address 0xd87e, `generallight.S` line 41 (26 words). Reached: its address loaded as a constant in `mmo_DirtyCullAndLightModule` and 1 other label.
  **Inferred** role: lighting colour-mask stage: converts integer colour components to float and masks them by the colour mask.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations integer-to-float conversion (6), AND (3), float multiply (2), float-to-integer conversion (2), move (2); loads 2 constants; takes 2 conditional transfers.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `mmo_AbortGeometry`.
  Constants loaded: 0xffffffef, 16.0 (0x41800000).
- `mmo_LighterGeneral`: address 0xd85e, `generallight.S` line 147 (30 words). Reached: transfers in `mLiUpdateMtrlState`; its address loaded as a constant in `mLiPushMtrlInit` and 2 other labels.
  **Inferred** role: general lighting module entry: tests material flags and loads the per-vertex loop and colour code addresses before the primitive material set-up.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), AND (2), operation 0x6cc (1); sets the condition flags once; loads 6 constants; takes 2 conditional transfers.
  It jumps to `mLiPrimMtrlInit`; conditional transfers reach `mmo_AbortGeometry` and 1 other label.
  Constants loaded: 0xd8a0 (code in `mLiVtxLoop`), 0x2, 0x10, 0xd54e (code in `mLiIrisColoring`), 0xc321 (code in `mLiLocalLight`), 1e-05 (0x3727c5ac).
- `mLiVtxLoop`: address 0xd8a0, `generallight.S` line 295 (27 words). Reached: transfers in `mLiPrimMtrlInit` and 1 other label; its address loaded as a constant in `mmo_LighterGeneral`.
  **Inferred** role: per-vertex lighting loop head: loads the back-colour and accumulation code addresses and returns.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (14); loads 2 constants.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0xd91a (code in `mLiBackClrInit`), 0xd943 (code in `mLiLocLiFrnClrInit`).
- `mLiDirtyLocLiVwrLiSrcInit`: address 0xd9a2, `generallight.S` line 373 (27 words). Reached: its address loaded as a constant in `mgeb_LiDisableLightS` and 4 other labels.
  **Inferred** role: lighting set-up after a change to local lights, local viewer or light sources: picks the infinite or local path by three conditional transfers.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (9), operation 0x6ea (1); sets the condition flags once; loads 7 constants; takes 3 conditional transfers.
  It jumps to `mLiInfVInfLiInit`; conditional transfers reach `mLiNoLightSrc` and 1 other label.
  Constants loaded: 0xc3db (code in `mLiInfVInfLi`), 0xc426 (code in `mLiLocVInfLi`), 0xc321 (code in `mLiLocalLight`), 0xc493 (code in `mLiLocVInfLiInit`), 0xd9f7 (code in `mLiInfVInfLiInit`), 0xd8bc (code in `mLiLocalViewer`), 0xd901 (code in `mLiNoLightSrc`).
- `mLiNoLightSrc`: address 0xd901, `generallight.S` line 492 (23 words). Reached: transfers in `mLiDirtyLocLiVwrLiSrcInit`; its address loaded as a constant in `mGL_CtxLightInitialize` and 1 other label.
  **Inferred** role: lighting with no enabled light: copies the emission and ambient terms (22 moves) and returns.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (22), second-unit move (7), second-unit move or minimum (2).
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mLiInfVInfLiInit`: address 0xd9f7, `generallight.S` line 566 (68 words). Reached: transfers in `mLiDirtyLocLiVwrLiSrcInit`; its address loaded as a constant in `mLiDirtyLocLiVwrLiSrcInit`.
  **Inferred** role: lighting set-up for an infinite viewer and infinite lights: half-vector and colour products by float multiplies and adds.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (28), move (25), float add (10), second-unit move or minimum (8), second-unit move (4), operation 0x6ec (3), clamp at zero (2), float subtract (2), maximum (2), operation 0x6ea (1), operation 0x6ed (1); sets the condition flags 3 times; loads 1 constant.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0xd9c1 (code in `mLiLocLiFrnClrAccum`).
- `mLiLocalViewer`: address 0xd8bc, `generallight.S` line 820 (61 words). Reached: transfers in `mLiDirtyLocLiVwrLiSrcInit`; its address loaded as a constant in `mLiDirtyLocLiVwrLiSrcInit`.
  **Inferred** role: lighting set-up for a local viewer: view vectors normalised by reciprocal and reciprocal-square-root steps.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (36), move (7), operation 0x6ec (6), float add (4), reciprocal Newton step (4), reciprocal square-root Newton step (4), operation 0x6eb (2), move of the second operand (1); sets the condition flags 2 times; loads 1 constant.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0x5f0ac723.
- `mLiLocLiFrnClrAccum`: address 0xd9c1, `generallight.S` line 947 (54 words). Reached: its address loaded as a constant in `mLiInfVInfLiInit` and 4 other labels.
  **Inferred** role: front-colour accumulation for a local light: diffuse and specular terms with clamps.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (18), float multiply (14), move (12), operation 0x6ec (4), clamp at zero (2), float multiply-add (2), float subtract (2), maximum (2), second-unit move or minimum (1); sets the condition flags 2 times.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mLiLocLiFrnClrInit`: address 0xd943, `generallight.S` line 1146 (48 words). Reached: its address loaded as a constant in `mLiVtxLoop`.
  **Inferred** role: front-colour set-up for a local light: clamps and a maximum before the accumulation.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (22), float multiply (16), operation 0x6ec (4), clamp at zero (2), float add (2), float subtract (2), maximum (2), second-unit move (1), second-unit move or minimum (1); sets the condition flags 2 times; loads 1 constant.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0xd9c1 (code in `mLiLocLiFrnClrAccum`).
- `mLiBackClrAccum`: address 0xd973, `generallight.S` line 1326 (41 words). Reached: its address loaded as a constant in `mLiBackClrInit` and 1 other label.
  **Inferred** role: back-colour accumulation for two-sided lighting.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (16), float add (14), move (3), clamp at zero (2), float subtract (2), maximum (2); sets the condition flags 2 times.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mLiBackClrInit`: address 0xd91a, `generallight.S` line 1479 (33 words). Reached: its address loaded as a constant in `mLiPrimShinLoop` and 1 other label.
  **Inferred** role: back-colour set-up for two-sided lighting, loading the address of the back accumulation.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (16), move (5), clamp at zero (2), float add (2), float subtract (2), maximum (2), second-unit move (1); sets the condition flags 2 times; loads 1 constant.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0xd973 (code in `mLiBackClrAccum`).
- `mLiFinalLi`: address 0xda3c, `generallight.S` line 1585 (43 words). Reached: its address loaded as a constant in `mGL_CtxLightInitialize` and 2 other labels.
  **Inferred** role: final lighting step: multiply-adds of the colour terms and clamps to the vertex colour.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (13), move (8), clamp at zero (6), float add (5), float multiply (5), operation 0x6cc (1); takes 1 conditional transfer.
  It jumps within its own code; conditional transfers reach `HereWeGo`.

### generallight2.S

Local and infinite light-source terms of the general lighting. **Inferred** from its labels and callers.

- `mLiInfVInfLi`: address 0xc3db, `generallight2.S` line 91 (72 words). Reached: its address loaded as a constant in `mGL_CtxLightInitialize` and 1 other label.
  **Inferred** role: per-vertex lighting for an infinite viewer and infinite lights: dot products and colour sums.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (27), float multiply (25), move (20), second-unit move or minimum (6), operation 0x6ec (4), clamp at zero (2), float subtract (2), maximum (2), float multiply-add (1), operation 0x6ea (1), second-unit move (1); sets the condition flags 3 times.
  It jumps within its own code.
- `mLiLocVInfLi`: address 0xc426, `generallight2.S` line 403 (104 words). Reached: its address loaded as a constant in `mLiDirtyLocLiVwrLiSrcInit`.
  **Inferred** role: per-vertex lighting for a local viewer and infinite lights.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (40), float add (34), move (19), second-unit move or minimum (6), float multiply-add (4), float subtract (4), reciprocal square-root Newton step (4), second-unit move (4), clamp at zero (2), maximum (2), operation 0x6ec (2), operation 0x6ed (2), operation 0x6ea (1), reciprocal square-root seed (1); sets the condition flags 5 times.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mLiLocVInfLiInit`: address 0xc493, `generallight2.S` line 761 (104 words). Reached: its address loaded as a constant in `mLiDirtyLocLiVwrLiSrcInit`.
  **Inferred** role: set-up for a local viewer with infinite lights.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (43), move (27), float add (19), second-unit move or minimum (5), float subtract (4), operation 0x6ec (4), reciprocal square-root Newton step (4), second-unit move (4), clamp at zero (2), maximum (2), float multiply-add (1), operation 0x6ea (1); sets the condition flags 5 times; loads 1 constant.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0xd9c1 (code in `mLiLocLiFrnClrAccum`).
- `mLiLocalLight`: address 0xc321, `generallight2.S` line 1097 (175 words). Reached: transfers in `mLiPrmMtrlFrntClrAccmEnd`; its address loaded as a constant in `mLiDirtyLocLiVwrLiSrcInit` and 1 other label.
  **Inferred** role: per-vertex lighting for one local light: distance by a reciprocal square root, attenuation and spot terms (constant 1e-05 as a floor).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (63), move (31), float add (28), float multiply-add (19), reciprocal square-root Newton step (8), float subtract (6), maximum (4), reciprocal Newton step (4), operation 0x6f7 (3), reciprocal square-root seed (2), clamp at zero (1), move of the second operand (1), operation 0x6ea (1), operation 0x6f6 (1), operation 0x6fd (1), second-unit move (1), second-unit move or minimum (1); sets the condition flags 3 times; loads 1 constant.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 1e-05 (0x3727c5ac).

### get.S

Query replies: current values, raster position and special registers. **Inferred** from its labels and callers.

- `mgesi_GetCurrent`: address 0x95cd, `get.S` line 39 (24 words). Reached: geif slot 222 (entry 445); the ARM functions that send it are in the table below.
  **Inferred** role: reads current vertex state back: 13 vertex-record words (offsets 4 to 38) and three raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads 13 command words between offsets 4 and 38; operations move (16), AND (1); sets the condition flags once; writes 3 words to the raster-bus output addresses; loads 2 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x476, 0x1c00000.
- `mgesi_GetRaster`: address 0x959a, `get.S` line 99 (51 words). Reached: geif slot 200 (entry 401); the ARM functions that send it are in the table below.
  **Inferred** role: reads the raster position back: scales by 1/16 and 2^-20 and writes to the raster bus output addresses.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (25), AND (2), float multiply (2); sets the condition flags 2 times; writes 1 word to the raster-bus output addresses; stores 1 word to control-memory address 0x2b; reads engine memory at 11 addresses from 0x28 to 0x34; loads 5 constants.
  It jumps within its own code.
  Constants loaded: 0x4, 9.536743e-07 (0x35800000), 0.0625 (0x3d800000), 0x800, 0x476.
- `mgesi_GetSpecial`: address 0x9562, `get.S` line 180 (54 words). Reached: geif slot 397 (entry 795); the ARM functions that send it are in the table below.
  **Inferred** role: reads special state back: compares the parameter name and writes the matching values.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (11), XOR (7), arithmetic shift right (4), integer add (4), integer subtract or compare (4); sets the condition flags 7 times; writes 2 words to the raster-bus output addresses; loads 14 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x8038, 0x80b2, 0xba5, 0xba4, 0x8e2, 0x6a2, 0x4, 0x8a2 and 6 more.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgesi_GetCurrent` | 222 | `getcurrent` |  |
| `mgesi_GetRaster` | 200 | `arm_copyconvisoverlapped`, `arm_getraster`, `arm_pushattrib` | `HP_COPYCONVISOVERLAPPED`, `HP_GETRASTER`, `HP_PUSHATTRIB` |
| `mgesi_GetSpecial` | 397 | `arm_pushattrib`, `special_get` | `HP_PUSHATTRIB` |

### getlight.S

Light and material queries, and the push and pop of light attributes. **Inferred** from its labels and callers.

- `mgesi_LiGetLight`: address 0xc2d2, `getlight.S` line 89 (68 words). Reached: geif slot 198 (entry 397); the ARM functions that send it are in the table below.
  **Inferred** role: reads light parameters back: compares the parameter name with the GL light enumerants (0x1201 and up) and scales the values.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (11), integer subtract or compare (9), float multiply (7), operation 0x6ea (1); sets the condition flags 10 times; writes 3 words to the raster-bus output addresses; loads 10 constants; takes 1 conditional transfer.
  It waits on its own address under another condition group.
  Constants loaded: 0x1201, 0x1202, 0x1203, 0x1204, 0x1205, 0x1206, 0x1207, 0x1208 and 2 more.
- `mgesi_LiGetMaterial`: address 0xc284, `getlight.S` line 275 (67 words). Reached: geif slot 199 (entry 399); the ARM functions that send it are in the table below.
  **Inferred** role: reads material parameters back: compares the parameter name with the GL material enumerants (0x1200 and up).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads 6 command words between offsets 4 and 40; operations move (15), integer subtract or compare (13), operation 0x6c1 (3), second-unit operation 0xff (2), AND (1); sets the condition flags 8 times; writes 3 words to the raster-bus output addresses; loads 12 constants; takes 1 conditional transfer.
  It waits on its own address under another condition group.
  Constants loaded: 0x1200, 0x1201, 0x8, 0x408, 0x1202, 0x1600, 0x1601, 0x1602 and 4 more.
- `mgesi_PushAttrLights`: address 0xc255, `getlight.S` line 470 (34 words). Reached: geif slot 180 (entry 361); the ARM functions that send it are in the table below; distributor table 34.
  **Inferred** role: the engine side of host token 0x10b (`HP_GET_LIGHT_ATTRIBS`). It streams the lighting attribute blocks to the host reply port: it writes the reply header 0x476 to bus output 0x1f7, forwards the light-block words from external memory to the output window (address register 0x1e), and closes with a zero to bus output 0x1f4. It never programs the output-DMA registers (0x440, 0x460 to 0x464, 0x477) and writes no count word, so a reply completes only inside the firmware's push-attributes bracket, which supplies those (the 0x10b entry in `command-table.md`). A bare 0x10b from the client's context-copy path gets no completion word from this handler (inferred).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (15); writes 2 words to the raster-bus output addresses; loads 3 constants; takes 1 conditional transfer.
  It jumps within its own code.
  Constants loaded: 0x2c7, 0x476, 0x8.
- `mgeb_PopAttrLights`: address 0xc20a, `getlight.S` line 593 (64 words). Reached: geif slot 166 (entry 333); the ARM functions that send it are in the table below.
  **Inferred** role: pops the lighting attributes: restores state words and clears flag bits, then marks the lighting modules for re-selection.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (18), AND (2); loads 8 constants; takes 1 conditional transfer.
  It ends with the end-of-command wait.
  Constants loaded: 0x2c7, 0xffffff9f, 0xd9a2 (code in `mLiDirtyLocLiVwrLiSrcInit`), 0xf50d (code in `mmo_DirtyLightModule`), 0xf547 (code in `mmo_DirtyCullAndLightModule`), 0xffffffdf, 0xf449 (code in `mmo_DirtyXformAndObjToClipModule`), 0x8.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgesi_LiGetLight` | 198 | `arm_getlightfv` | `HP_GETLIGHTFV` |
| `mgesi_LiGetMaterial` | 199 | `arm_getmaterialfv`, `material_push` | `HP_GETMATERIALFV` |
| `mgesi_PushAttrLights` | 180 | `arm_pushattrib` (injects 0x10b inside its bracket), `init_ged` (installs the table entry) | `HP_GET_LIGHT_ATTRIBS` (sent bare by the client's context copy) |
| `mgeb_PopAttrLights` | 166 | `arm_poplights` | `HP_POPLIGHTS` |

### glExt.S

Polygon-offset commands (core and extension). **Inferred** from its labels and callers.

- `mgeb_PolygonOffsetExt`: address 0xb2c3, `glExt.S` line 64 (9 words). Reached: geif slot 64 (entry 129); the ARM functions that send it are in the table below.
  **Inferred** role: GL polygon offset (EXT) call: stores the factor and bias operand words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (2).
  It ends with the end-of-command wait.
- `mgeb_PolygonOffset`: address 0xb2ab, `glExt.S` line 93 (13 words). Reached: geif slot 435 (entry 871); the ARM functions that send it are in the table below.
  **Inferred** role: GL polygon offset call: stores the factor and the bias scaled by one multiply.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (3), float multiply (1).
  It ends with the end-of-command wait.
- `mgeb_Disable_EnablePolyOffsetExt`: address 0xb27b, `glExt.S` line 118 (32 words). Reached: geif slot 6 (entry 13); the ARM functions that send it are in the table below.
  **Inferred** role: enables or disables polygon offset: sets or clears flag bits and reads two state words from engine memory.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (5), AND (3), OR (3), operation 0x6d1 (3); sets the condition flags 5 times; reads engine memory at 2 addresses from 0xa8c to 0xa8d; loads 3 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x80000000, 0x1, 0x4.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgeb_PolygonOffsetExt` | 64 | `arm_polygonoffsetext` | `HP_POLYGONOFFSETEXT` |
| `mgeb_PolygonOffset` | 435 | `arm_polygonoffset` | `HP_POLYGONOFFSET` |
| `mgeb_Disable_EnablePolyOffsetExt` | 6 | `d_polygonoffset`, `d_polygonoffsetline`, `d_polygonoffsetpoint`, `e_polygonoffset`, `e_polygonoffsetline`, `e_polygonoffsetpoint`, `polygon_pop` |  |

### glmodes.S

Raster and pipeline modes: viewport, depth range, cull face, front face, matrix mode, point parameters, sprites, multipass, the IrisGL lighting flag. **Inferred** from its labels and callers.

- `mgesi_SetGeId`: address 0xf435, `glmodes.S` line 47 (15 words). Reached: geif slot 224 (entry 449); the ARM functions that send it are in the table below.
  **Inferred** role: sets the engine's identity from its operand (masked to four bits, 0xf) and loads two scale constants.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (3), AND (1); sets the condition flags once; loads 3 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0xf, 1000000.0 (0x49742400), 16.0 (0x41800000).
- `mgeb_ViewPort`: address 0xf404, `glmodes.S` line 107 (47 words). Reached: geif slot 90 (entry 181); the ARM functions that send it are in the table below.
  **Inferred** role: GL viewport call: converts the 11 operand words to float and computes half-widths and centres (constant 0.5) with a reciprocal for the scale.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 10; operations float multiply (10), integer-to-float conversion (10), move (5), float add (4), reciprocal Newton step (4), reciprocal seed (2); loads 2 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0.5 (0x3f000000), 49152.0 (0x47400000).
- `mgeb_DepthRange`: address 0xf3ea, `glmodes.S` line 233 (21 words). Reached: geif slot 335 (entry 671); the ARM functions that send it are in the table below.
  **Inferred** role: GL depth range call: clamps the near and far values to [0, 1] with maximum and minimum and scales them to the 2^20 depth range.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations float multiply (4), float subtract (2), maximum (2), minimum (2), float add (1); loads 2 constants; takes 1 conditional transfer.
  It ends with the end-of-command wait; conditional transfers reach `mResolveFogTable`.
  Constants loaded: 524288.0 (0x49000000), 1048576.0 (0x49800000).
- `mgeb_FrontFace`: address 0xf3db, `glmodes.S` line 293 (10 words). Reached: geif slot 15 (entry 31); the ARM functions that send it are in the table below.
  **Inferred** role: GL front face call: compares the enumerant with GL_CW (0x900) and sets the face orientation.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (2), integer subtract or compare (1); sets the condition flags once; loads 1 constant.
  It ends with the end-of-command wait.
  Constants loaded: 0x900.
- `mgeb_UserClipPlane`: address 0xf3a4, `glmodes.S` line 329 (43 words). Reached: geif slot 89 (entry 179); the ARM functions that send it are in the table below.
  **Inferred** role: GL clip plane call: transforms the plane by the inverse modelview with multiply-adds, inverting the matrix first when needed, then resolves the clip state.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 4; operations float multiply-add (9), float multiply (7), move (4), float add (3); takes 1 conditional transfer.
  It jumps to `mUserClipResolve`; conditional transfers reach `mMatrixInverse`.
- `mgeb_EnableUserClipPlane`: address 0xf390, `glmodes.S` line 393 (10 words). Reached: geif slot 9 (entry 19); the ARM functions that send it are in the table below.
  **Inferred** role: enables one user clip plane and resolves the clip state.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (1).
  It jumps to `mUserClipResolve`.
- `mgeb_DisableUserClipPlane`: address 0xf37c, `glmodes.S` line 420 (10 words). Reached: geif slot 4 (entry 9); the ARM functions that send it are in the table below.
  **Inferred** role: disables one user clip plane and resolves the clip state.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (1).
  It jumps to `mUserClipResolve`.
- `mUserClipResolve`: address 0xf583, `glmodes.S` line 441 (69 words). Reached: transfers in `mgeb_DisableUserClipPlane` and 2 other labels.
  **Inferred** role: resolves the user clip state: counts enabled planes and selects the transform module whose address it loads.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (15), OR (2), integer add (2), integer subtract or compare (2), operation 0x6d1 (2); sets the condition flags 5 times; loads 9 constants; takes 5 conditional transfers.
  It ends with the end-of-command wait.
  Constants loaded: 0xf449 (code in `mmo_DirtyXformAndObjToClipModule`), 0x1, 0x3f, 0xff, 0xfff, 0x2, 0x6.
- `mgeb_CullFace`: address 0xf366, `glmodes.S` line 546 (20 words). Reached: geif slot 3 (entry 7); the ARM functions that send it are in the table below.
  **Inferred** role: GL cull face call: compares the enumerant with GL_BACK (0x405) and stores 0x70 or 3 as the cull mode.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (2), AND (1), OR (1), integer subtract or compare (1), operation 0x6d1 (1); sets the condition flags 2 times; loads 3 constants.
  It ends with the end-of-command wait.
  Constants loaded: 2.0 (0x40000000), 0x405.
- `mgeb_Enable_Cull_Face`: address 0xf352, `glmodes.S` line 619 (17 words). Reached: geif slot 10 (entry 21); the ARM functions that send it are in the table below.
  **Inferred** role: enables face culling: sets the cull bits and marks the cull and light module for re-selection.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations OR (2), move (2), AND (1), operation 0x6d1 (1); sets the condition flags once; loads 3 constants.
  It ends with the end-of-command wait.
  Constants loaded: 2.0 (0x40000000), 0xf547 (code in `mmo_DirtyCullAndLightModule`).
- `mgeb_Disable_Cull_Face`: address 0xf33e, `glmodes.S` line 643 (16 words). Reached: geif slot 5 (entry 11); the ARM functions that send it are in the table below.
  **Inferred** role: disables face culling: clears the cull bits and marks the cull and light module for re-selection.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (5), operation 0x6d1 (2); sets the condition flags 2 times; loads 3 constants.
  It ends with the end-of-command wait.
  Constants loaded: 2.0 (0x40000000), 0xf547 (code in `mmo_DirtyCullAndLightModule`).
- `mgeb_SetLMCFlag`: address 0xf32f, `glmodes.S` line 687 (9 words). Reached: geif slot 405 (entry 811); the ARM functions that send it are in the table below.
  **Inferred** role: sets the IRIS GL lighting-mode flag (two words with operations 0x6ec and 0x6f1).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float-to-integer conversion (1), operation 0x6ec (1).
  It ends with the end-of-command wait.
- `mgeb_ClearLMCFlag`: address 0xf320, `glmodes.S` line 714 (9 words). Reached: geif slot 406 (entry 813); the ARM functions that send it are in the table below.
  **Inferred** role: clears the IRIS GL lighting-mode flag.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2).
  It ends with the end-of-command wait.
- `mmo_DirtyCullAndLightModule`: address 0xf547, `glmodes.S` line 754 (52 words). Reached: its address loaded as a constant in `mGL_CtxLightInitialize` and 22 other labels.
  **Inferred** role: re-selects the cull and lighting modules after a state change: tests flag bits and loads module addresses.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (13), AND (6), operation 0x6cc (4), integer-to-float conversion (2), OR (1), XOR (1), float multiply (1); sets the condition flags 6 times; loads 11 constants; takes 3 conditional transfers.
  It jumps to `mLiDirtyGenLiCRAM`; conditional transfers reach `HereWeGo` and 2 other labels.
  Constants loaded: 0x10, 0x1, 0xd85e (code in `mmo_LighterGeneral`), 0xd7c, 0xd69, 0xd87e (code in `mmo_LiColorMask`), 0x80, 0xc76 and 3 more.
- `mmo_DirtyLightModule`: address 0xf50d, `glmodes.S` line 899 (52 words). Reached: its address loaded as a constant in `mGL_CtxLightInitialize` and 19 other labels.
  **Inferred** role: re-selects the lighting module after a state change: the same tests as the cull-and-light form.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (13), AND (6), operation 0x6cc (4), integer-to-float conversion (2), OR (1), XOR (1), float multiply (1); sets the condition flags 6 times; loads 12 constants; takes 3 conditional transfers.
  It jumps to `mLiDirtyGenLiCRAM`; conditional transfers reach `mLiUpdateShin` and 1 other label.
  Constants loaded: 0x10, 0x1, 0xd85e (code in `mmo_LighterGeneral`), 0xd7c, 0xd69, 0xd87e (code in `mmo_LiColorMask`), 0x80, 0x6 and 4 more.
- `mmo_DirtyXformAndObjToClipModule`: address 0xf449, `glmodes.S` line 1032 (38 words). Reached: its address loaded as a constant in `mTexGenResolve` and 11 other labels.
  **Inferred** role: re-selects the transform and object-to-clip modules: tests flag bits and loads one of nine module addresses.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (14), AND (3); sets the condition flags 5 times; loads 9 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31; jumps within its own code.
  Constants loaded: 0x2, 0x135c (code in `mmo_ObjToEyeSpaceAndSixUserTR`), 0x1325, 0x1293 (code in `mmo_ObjToClipSpaceN2EN`), 0x124c (code in `mmo_ObjToClipSpaceN2E`), 0x12fe (code in `mmo_ObjToEyeSpace`), 0x1218, 0x4 and 1 more.
- `mmo_DirtyTextureAndScreenModule`: address 0xf494, `glmodes.S` line 1136 (54 words). Reached: its address loaded as a constant in `mTexGenResolve` and 12 other labels.
  **Inferred** role: re-selects the texture and screen-space modules: bit tests and module addresses.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations NOT (10), OR (10), move (9), AND (5), float subtract (4), operation 0x6d1 (1), second-unit operation 0xff (1); sets the condition flags 12 times; loads 8 constants.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0x2000, 0x2000000, 0x10c9 (code in `mmo_ToScreenSpace`), 0x1, 0x11b6 (code in `mmo_ToScreenSpaceInvQ2DI`), 0x1113, 0x2.
- `mgeb_Sprite`: address 0xf2cc, `glmodes.S` line 1263 (35 words). Reached: geif slot 81 (entry 163); the ARM functions that send it are in the table below.
  **Inferred** role: GL sprite parameter (SGIX) call: compares the parameter name and stores the sprite mode or axis.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 4; operations move (9), integer subtract or compare (3); sets the condition flags 3 times; loads 3 constants; takes 3 conditional transfers.
  It ends with the end-of-command wait; jumps within its own code.
  Constants loaded: 0x10, 0, 0x4.
- `mgeb_EnableSprite`: address 0xf2b9, `glmodes.S` line 1318 (15 words). Reached: geif slot 12 (entry 25); the ARM functions that send it are in the table below.
  **Inferred** role: enables sprites: sets bits 0x4 and 0x10 and marks the pre-path module for re-selection.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3), OR (2); loads 3 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x4, 0x10, 0xf4e4 (code in `mmo_DirtyPrePathModule`).
- `mgeb_DisableSprite`: address 0xf2a6, `glmodes.S` line 1364 (15 words). Reached: geif slot 8 (entry 17); the ARM functions that send it are in the table below.
  **Inferred** role: disables sprites: clears the same bits and marks the pre-path module for re-selection.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (2), move (2); sets the condition flags once; loads 3 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0xffffffef, 0xfffffffb, 0xf4e4 (code in `mmo_DirtyPrePathModule`).
- `mgeb_Enable_Multipass`: address 0xf293, `glmodes.S` line 1403 (15 words). Reached: geif slot 137 (entry 275); the ARM functions that send it are in the table below.
  **Inferred** role: enables multipass: sets bit 0x8 and marks the pre-path module for re-selection.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3), OR (2); loads 3 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0xf4e4 (code in `mmo_DirtyPrePathModule`), 0x8.
- `mgeb_Disable_Multipass`: address 0xf280, `glmodes.S` line 1447 (15 words). Reached: geif slot 135 (entry 271); the ARM functions that send it are in the table below.
  **Inferred** role: disables multipass: clears bit 0x8 and marks the pre-path module for re-selection.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (2), move (2); sets the condition flags once; loads 3 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0xfffffff7, 0xf4e4 (code in `mmo_DirtyPrePathModule`).
- `mgeb_PointParameter`: address 0xf21b, `glmodes.S` line 1524 (50 words). Reached: geif slot 63 (entry 127); the ARM functions that send it are in the table below.
  **Inferred** role: GL point parameter call: compares the parameter name with the point-parameter enumerants (0x8126 to 0x8129) and stores the value.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations integer subtract or compare (4), move (4), float multiply (3), operation 0x6ea (2), OR (1), float subtract (1), operation 0x6d1 (1); sets the condition flags 7 times; loads 6 constants; takes 4 conditional transfers.
  It ends with the end-of-command wait; jumps within its own code.
  Constants loaded: 0x8129, 0x8128, 0x8127, 0x8126, 0.5 (0x3f000000), 0xf449 (code in `mmo_DirtyXformAndObjToClipModule`).
- `mmo_DirtyPrePathModule`: address 0xf4e4, `glmodes.S` line 1637 (25 words). Reached: its address loaded as a constant in `mGL_CM_Initialize` and 9 other labels.
  **Inferred** role: re-selects the modules that run before the geometry path: tests sprite, deform and multipass bits and loads their addresses.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (5), AND (3); sets the condition flags 3 times; loads 6 constants.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0x4, 0x48d8 (code in `mmo_DirtyDeformModule`), 0x8, 0xe6a5 (code in `mmo_DirtyMultipassModule`), 0x10, 0x8669 (code in `mmo_DirtySpriteModule`).

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgesi_SetGeId` | 224 | `init_ge` |  |
| `mgeb_ViewPort` | 90 | `resolve_viewport` |  |
| `mgeb_DepthRange` | 335 | `arm_depthrange`, `depth_init`, `viewport_pop` | `HP_DEPTHRANGE` |
| `mgeb_FrontFace` | 15 | `arm_frontface`, `polygon_pop`, `prim_init` | `HP_FRONTFACE` |
| `mgeb_UserClipPlane` | 89 | `arm_clipplane` | `HP_CLIPPLANE` |
| `mgeb_EnableUserClipPlane` | 9 | `e_clip_plane0`, `e_clip_plane1`, `e_clip_plane2`, `e_clip_plane3`, `e_clip_plane4`, `e_clip_plane5` |  |
| `mgeb_DisableUserClipPlane` | 4 | `arm_context_activate`, `d_clip_plane0`, `d_clip_plane1`, `d_clip_plane2`, `d_clip_plane3`, `d_clip_plane4`, `d_clip_plane5` | `HP_CONTEXT_ACTIVATE` |
| `mgeb_CullFace` | 3 | `arm_context_activate`, `arm_cullface`, `polygon_pop`, `prim_init` | `HP_CONTEXT_ACTIVATE`, `HP_CULLFACE` |
| `mgeb_Enable_Cull_Face` | 10 | `e_cull_face` |  |
| `mgeb_Disable_Cull_Face` | 5 | `d_cull_face` |  |
| `mgeb_SetLMCFlag` | 405 | `arm_irisgl_mode` | `HP_IRISGL_MODE` |
| `mgeb_ClearLMCFlag` | 406 | `arm_irisgl_mode` | `HP_IRISGL_MODE` |
| `mgeb_Sprite` | 81 | `arm_spriteparameterfv`, `initSpriteState`, `resolveSpriteMode`, `sprite_pop` | `HP_SPRITEPARAMETERFV` |
| `mgeb_EnableSprite` | 12 | `e_sprite` |  |
| `mgeb_DisableSprite` | 8 | `d_sprite` |  |
| `mgeb_Enable_Multipass` | 137 | `e_multipass` |  |
| `mgeb_Disable_Multipass` | 135 | `d_multipass` |  |
| `mgeb_PointParameter` | 63 | `arm_pointparameterf`, `arm_pointparameterfv` | `HP_POINTPARAMETERF`, `HP_POINTPARAMETERFV` |

### histogram.S

Histogram and min-max state moved between ERAM and CRAM, and the ERAM fill. **Inferred** from its labels and callers.

- `DoEramFill`: address 0x4544, `histogram.S` line 38 (11 words). Reached: transfers in `mgeb_EramFill` and 1 other label.
  **Inferred** role: external-memory fill loop shared by the two fill commands, returning to them.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mgeb_EramFill`: address 0x4530, `histogram.S` line 77 (10 words). Reached: geif slot 140 (entry 281); the ARM functions that send it are in the table below.
  **Inferred** role: fills external memory with one operand word.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations move (1).
  It calls `DoEramFill`; waits on its own address under another condition group.
- `mgeb_EramIndirectFill`: address 0x4503, `histogram.S` line 113 (15 words). Reached: geif slot 141 (entry 283); the ARM functions that send it are in the table below.
  **Inferred** role: fills external memory with a value named by its operand.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations move (2).
  It calls `DoEramFill`; waits on its own address under another condition group.
- `mgesi_HistogramUpload`: address 0x449d, `histogram.S` line 175 (65 words). Reached: geif slot 201 (entry 403).
  **Inferred** role: reads the histogram back through the raster bus output addresses.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations move (11), float-to-integer conversion (2), OR (1), integer add (1); sets the condition flags 2 times; writes 2 words to the raster-bus output addresses; reads engine memory at 0x2a8; loads 2 constants; takes 2 conditional transfers.
  It ends with the end-of-command wait.
  Constants loaded: 0x476, 0xfffffffd.
- `mmo_CramMinmaxToEramMinmax`: address 0x4472, `histogram.S` line 271 (23 words). Reached: geif slot 300 (entry 601); the ARM functions that send it are in the table below.
  **Inferred** role: copies the minmax result from coefficient memory to external memory.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4); reads engine memory at 0x2a9.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mgeb_EramMinmaxToCramMinmax`: address 0x443b, `histogram.S` line 313 (24 words). Reached: geif slot 143 (entry 287); the ARM functions that send it are in the table below.
  **Inferred** role: copies the minmax result from external memory to coefficient memory.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (9); reads engine memory at 0x2a9.
  It waits on its own address under another condition group.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgeb_EramFill` | 140 | `AddConvolutionOutput`, `init_per_ge_context` |  |
| `mgeb_EramIndirectFill` | 141 | `reset_histogram`, `reset_minmax` |  |
| `mmo_CramMinmaxToEramMinmax` | 300 | `AddMinMax` |  |
| `mgeb_EramMinmaxToCramMinmax` | 143 | `MinmaxRestore`, `init_per_ge_context` |  |

### histogram.s

Pixel-path histogram stage, added by AddHistogram. **Inferred** from its labels and callers.

- `mmo_Histogram`: address 0x13b4, `histogram.s` line 46 (75 words). Reached: geif slot 286 (entry 573); the ARM functions that send it are in the table below.
  **Inferred** role: pixel-path histogram stage: set-up, then its main loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (9), float multiply (1), float-to-integer conversion (1), minimum (1).
  It has no jump of its own and runs on into `mainloop_hist`.
- `umo_Histogram`: address 0x13b4, `histogram.s` line 46 (75 words). Reached: second name for `mmo_Histogram` at the same address, so the same code.
  **Inferred** role: pixel-path histogram stage: set-up, then its main loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (9), float multiply (1), float-to-integer conversion (1), minimum (1).
  It has no jump of its own and runs on into `mainloop_hist`.
- `mainloop_hist`: address 0x13ff, `histogram.s` line 142 (24 words). Reached: inside `mmo_Histogram`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (1), float-to-integer conversion (1), minimum (1); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_hist`.
- `epilogue_hist`: address 0x1417, `histogram.s` line 176 (9 words). Reached: inside `mmo_Histogram`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It ends the command with an indirect transfer in condition group 31.
- `uge_HistogramFill`: address 0x1420, `histogram.s` line 195 (30 words). Reached: inside `mmo_Histogram`, reached from that routine's own code.
  **Inferred** role: second entry inside the histogram stage that fills histogram counts from three operand words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 5; operations integer add (3).
  It ends with the end-of-command wait.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mmo_Histogram` | 286 | `AddHistogram` |  |

### hostio.S

Engine-to-host returns: read-data framing, ERAM, CRAM, special-register and last-vertex output DMA. **Inferred** from its labels and callers.

- `mgesi_Cram2ODMA`: address 0x6b13, `hostio.S` line 115 (25 words). Reached: geif slot 196 (entry 393); the ARM functions that send it are in the table below.
  **Inferred** role: sends coefficient memory out through the output DMA path: complemented control words and raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (6), NOT (2); writes 3 words to the raster-bus output addresses; loads 1 constant; takes 1 conditional transfer.
  It waits on its own address under another condition group.
  Constants loaded: 0x476.
- `mgesi_Eram2ODMA`: address 0x6af0, `hostio.S` line 137 (28 words). Reached: geif slot 197 (entry 395); the ARM functions that send it are in the table below.
  **Inferred** role: sends external memory out through the output DMA path.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (6), NOT (2); writes 2 words to the raster-bus output addresses; loads 1 constant; takes 1 conditional transfer.
  It waits on its own address under another condition group.
  Constants loaded: 0x476.
- `mgesi_WramFifo2ODMA`: address 0x6ad4, `hostio.S` line 162 (23 words). Reached: geif slot 239 (entry 479); the ARM functions that send it are in the table below.
  **Inferred** role: sends working memory through the output DMA path.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (5), NOT (2); writes 2 words to the raster-bus output addresses; loads 1 constant; takes 1 conditional transfer.
  It waits on its own address under another condition group.
  Constants loaded: 0x476.
- `mgeb_LoadEram`: address 0x6ac2, `hostio.S` line 208 (8 words). Reached: geif slot 42 (entry 85); the ARM functions that send it are in the table below.
  **Inferred** role: loads external memory by calling the WRAM-to-ERAM copy.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0.
  It calls `mWramToEram`; ends with the end-of-command wait.
- `mgesi_LoadEram`: address 0x6ab0, `hostio.S` line 232 (12 words). Reached: geif slot 209 (entry 419).
  **Inferred** role: loads external memory with three raster bus words, then the WRAM-to-ERAM copy.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (3); writes 3 words to the raster-bus output addresses; loads 1 constant.
  It calls `mWramToEram`; ends with the end-of-command wait.
  Constants loaded: 0x70000.
- `mgesi_SR2ODMA`: address 0x6a9e, `hostio.S` line 263 (13 words). Reached: geif slot 223 (entry 447); the ARM functions that send it are in the table below.
  **Inferred** role: sends the saved raster state through the output DMA path.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (3); writes 3 words to the raster-bus output addresses; loads 1 constant.
  It ends with the end-of-command wait.
  Constants loaded: 0x476.
- `mgesi_LastVertex2ODMA`: address 0x6a86, `hostio.S` line 288 (17 words). Reached: geif slot 202 (entry 405); the ARM functions that send it are in the table below.
  **Inferred** role: sends the last vertex through the output DMA path.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3); writes 2 words to the raster-bus output addresses; loads 1 constant; takes 1 conditional transfer.
  It ends with the end-of-command wait.
  Constants loaded: 0x476.
- `mgesi_SlopReadWord`: address 0x6a79, `hostio.S` line 322 (10 words). Reached: geif slot 401 (entry 803); the ARM functions that send it are in the table below.
  **Inferred** role: reads one word back for the host: one operand word and three raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (3); writes 3 words to the raster-bus output addresses; loads 1 constant.
  It ends with the end-of-command wait.
  Constants loaded: 0x476.
- `mgesi_StartRdata`: address 0x6a57, `hostio.S` line 346 (34 words). Reached: geif slot 413 (entry 827); the ARM functions that send it are in the table below.
  **Inferred** role: starts a read-back: three operand words, nine raster bus words to the output DMA registers (constants 0x460 to 0x477).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations move (18); writes 9 words to the raster-bus output addresses; loads 10 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x476, 0x462, 0x461, 0x460, 0x400, 0x477, 0x464, 0x463 and 2 more.
- `mgesi_FinishRdata`: address 0x6a32, `hostio.S` line 409 (37 words). Reached: geif slot 414 (entry 829); the ARM functions that send it are in the table below.
  **Inferred** role: finishes a read-back: two operand words and ten raster bus words to the output DMA registers.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (22); writes 10 words to the raster-bus output addresses; loads 10 constants.
  It jumps within its own code.
  Constants loaded: 0x440, 0x476, 0x462, 0x461, 0x477, 0x460, 0x400, 0x464 and 2 more.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgesi_Cram2ODMA` | 196 | `arm_getv`, `arm_slop` | `HP_GETV`, `HP_SLOP` |
| `mgesi_Eram2ODMA` | 197 | `arm_getclipplane`, `arm_getpolygonstipple`, `arm_gettexenvfv`, `arm_gettexgenfv`, `arm_getv`, `arm_pushattrib`, `arm_slop`, `ge_texture_attrib_to_host`, `ge_xform_attrib_to_host`, `special_get` | `HP_GETCLIPPLANE`, `HP_GETPOLYGONSTIPPLE`, `HP_GETTEXENVFV`, `HP_GETTEXGENFV`, `HP_GETV`, `HP_PUSHATTRIB`, `HP_SLOP` |
| `mgesi_WramFifo2ODMA` | 239 | `mem_swapout_arm`, `mem_swapout_sarm` |  |
| `mgeb_LoadEram` | 42 | `InitMSPointsGlobal`, `WriteEram`, `arm_texgen_pop`, `arm_x_storestipple` | `HP_TEXGEN_POP`, `HP_X_STORESTIPPLE` |
| `mgesi_SR2ODMA` | 223 | `arm_slop` | `HP_SLOP` |
| `mgesi_LastVertex2ODMA` | 202 | `arm_slop` | `HP_SLOP` |
| `mgesi_SlopReadWord` | 401 | `slop_readword` |  |
| `mgesi_StartRdata` | 413 | `arm_get_deformation`, `arm_get_ge_texture_attrib`, `arm_get_ge_xform_attrib`, `arm_getclipplane`, `arm_getcurrent`, `arm_geterror`, `arm_getraster`, `arm_gettexgenfv`, `arm_getv`, `arm_pushattrib` | `HP_GETCLIPPLANE`, `HP_GETCURRENT`, `HP_GETERROR`, `HP_GETRASTER`, `HP_GETTEXGENFV`, `HP_GETV`, `HP_GET_DEFORMATION`, `HP_GET_GE_TEXTURE_ATTRIB`, `HP_GET_GE_XFORM_ATTRIB`, `HP_PUSHATTRIB` |
| `mgesi_FinishRdata` | 414 | `arm_get_deformation`, `arm_get_ge_texture_attrib`, `arm_get_ge_xform_attrib`, `arm_getclipplane`, `arm_getcurrent`, `arm_geterror`, `arm_getraster`, `arm_gettexgenfv`, `arm_getv`, `arm_pushattrib` | `HP_GETCLIPPLANE`, `HP_GETCURRENT`, `HP_GETERROR`, `HP_GETRASTER`, `HP_GETTEXGENFV`, `HP_GETV`, `HP_GET_DEFORMATION`, `HP_GET_GE_TEXTURE_ATTRIB`, `HP_GET_GE_XFORM_ATTRIB`, `HP_PUSHATTRIB` |

### indxirislight.S

Colour-index and IrisGL lighting final stages. **Inferred** from its labels and callers.

- `mLiPrimMtrlIndxFinalLi`: address 0xd536, `indxirislight.S` line 65 (23 words). Reached: its address loaded as a constant in `mLiPrimMtrlInit`.
  **Inferred** role: final lighting step for colour-index mode with per-primitive materials.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), AND (1), float-to-integer conversion (1), operation 0x6ec (1); sets the condition flags once; loads 4 constants; takes 1 conditional transfer.
  It jumps to `mLiPrimMtrlCopyStckCmpn`; conditional transfers reach `mLiPrimMtrlCopyCmpn`.
  Constants loaded: 0xd786 (code in `mLiPrimMtrlCopyCmpn`), 0x3f, 0xd745 (code in `mLiPrimMtrlCopyStckCmpn`), 0xd5c4 (code in `mLiFinalLiEquIndx`).
- `mLiIndexFinalLi`: address 0xd5a6, `indxirislight.S` line 134 (22 words). Reached: its address loaded as a constant in `mgeb_CI_Mode`.
  **Inferred** role: final lighting step for colour-index mode.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (7); takes 1 conditional transfer.
  It jumps to `mLiFinalLiEquIndx`.
- `mLiFinalLiEquIndx`: address 0xd5c4, `indxirislight.S` line 192 (62 words). Reached: transfers in `mLiIndexFinalLi`; its address loaded as a constant in `mLiPrimMtrlIndxFinalLi`.
  **Inferred** role: colour-index lighting result: luminance weights 0.3 and 0.59 on the colour terms, then a range scale.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (18), float add (10), float subtract (6), integer-to-float conversion (6), minimum (4), move (4), AND (2), float multiply-add (2), float-to-integer conversion (2); loads 4 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 16.0 (0x41800000), 0.3 (0x3e99999a), 0.59 (0x3f170a3d), 0.11 (0x3de147ae).
- `mLiIrisColoring`: address 0xd54e, `indxirislight.S` line 393 (66 words). Reached: transfers in `lLI1`; its address loaded as a constant in `mmo_LighterGeneral`.
  **Inferred** role: IRIS GL colour mode lighting: clamps and packs the colour.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (30), clamp at zero (8), AND (7), float multiply (2), float-to-integer conversion (2), integer-to-float conversion (2); sets the condition flags 5 times; loads 3 constants; takes 3 conditional transfers.
  It ends the command with an indirect transfer in condition group 31; jumps within its own code.
  Constants loaded: 0x10, 0x10000, 16.0 (0x41800000).

### inttofloat.s

Pixel-path integer-to-float stage, added by AddInt2Float. **Inferred** from its labels and callers.

- `mmo_IntToFloat`: address 0x200d, `inttofloat.s` line 31 (70 words). Reached: geif slot 287 (entry 575); the ARM functions that send it are in the table below.
  **Inferred** role: pixel-path integer-to-float stage: two conversions in its set-up, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (7), integer-to-float conversion (2); closes 1 loop.
  It has no jump of its own and runs on into `mainloop_i2f`.
- `umo_IntToFloat`: address 0x200d, `inttofloat.s` line 31 (70 words). Reached: second name for `mmo_IntToFloat` at the same address, so the same code.
  **Inferred** role: pixel-path integer-to-float stage: two conversions in its set-up, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (7), integer-to-float conversion (2); closes 1 loop.
  It has no jump of its own and runs on into `mainloop_i2f`.
- `mainloop_i2f`: address 0x2053, `inttofloat.s` line 127 (29 words). Reached: inside `mmo_IntToFloat`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (24), integer-to-float conversion (24); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_i2f`.
- `epilogue_i2f`: address 0x2070, `inttofloat.s` line 159 (51 words). Reached: transfers in `mmo_IntToFloat`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (23), integer-to-float conversion (23).
  It ends the command with an indirect transfer in condition group 31.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mmo_IntToFloat` | 287 | `AddInt2Float` |  |

### lightenables.S

Lighting, light-source and colour-material enables and disables, spot power table recompute. **Inferred** from its labels and callers.

- `mgeb_LiEnableLighting`: address 0xdda1, `lightenables.S` line 77 (34 words). Reached: geif slot 26 (entry 53); the ARM functions that send it are in the table below.
  **Inferred** role: enables lighting: sets the lighting bit and marks the lighting module for re-selection.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), OR (4), AND (2), operation 0x6cc (1), operation 0x6ec (1); sets the condition flags once; reads engine memory at 0x1bfe; loads 10 constants; takes 1 conditional transfer.
  It jumps to `mLiSwichSpotPrwTable`.
  Constants loaded: 0x2, 0x80000000, 0xf50d (code in `mmo_DirtyLightModule`), 0xf547 (code in `mmo_DirtyCullAndLightModule`), 0x24, 0xf449 (code in `mmo_DirtyXformAndObjToClipModule`), 0x80, 0x7 and 1 more.
- `mLiSwichSpotPrwTable`: address 0xde3f, `lightenables.S` line 185 (78 words). Reached: transfers in `mgeb_LiEnableLighting` and 1 other label.
  **Inferred** role: rebuilds the spot-power table after a lighting change: conversions and multiplies over the table.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (20), float-to-integer conversion (13), float multiply (8), float subtract (8), operation 0x6f7 (8), integer add (7); sets the condition flags 17 times; reads engine memory at 0x1bff; takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31); conditional transfers reach `mLiSwichSpotPrwTable2`.
- `mLiSwichSpotPrwTable2`: address 0xddc5, `lightenables.S` line 319 (52 words). Reached: transfers in `mLiSwichSpotPrwTable`.
  **Inferred** role: second part of the spot-power table switch: nine conditional transfers on the enabled lights.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations operation 0x6cc (8), move (2); takes 9 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31); conditional transfers reach `mLiSwichSpotPrwTableSub`.
- `mLiSwichSpotPrwTableSub`: address 0xde2a, `lightenables.S` line 418 (10 words). Reached: transfers in `mLiSwichSpotPrwTable2`.
  **Inferred** role: subroutine for one spot-power table entry.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2), float multiply (1), float subtract (1); loads 1 constant.
  It jumps to `mLiPwrTable`.
  Constants loaded: 0x3d042108.
- `mgeb_LiReCmpPwrTable`: address 0xdd83, `lightenables.S` line 462 (18 words). Reached: geif slot 154 (entry 309); the ARM functions that send it are in the table below.
  **Inferred** role: recomputes the lighting power table when the shininess changes.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3), AND (1), float-to-integer conversion (1), operation 0x6cc (1), operation 0x6ec (1); loads 4 constants; takes 1 conditional transfer.
  It waits on its own address under another condition group; conditional transfers reach `mLiSwichSpotPrwTable`.
  Constants loaded: 0x80, 0x7, 0xf50d (code in `mmo_DirtyLightModule`), 0xf547 (code in `mmo_DirtyCullAndLightModule`).
- `mgeb_LiEnableLightS`: address 0xdd3e, `lightenables.S` line 546 (49 words). Reached: geif slot 25 (entry 51); the ARM functions that send it are in the table below.
  **Inferred** role: enables one light: sets its bit and marks the lighting set-up for re-selection.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 1; operations move (15), operation 0x6cc (3), OR (2), float-to-integer conversion (2), integer add (2), AND (1), operation 0x6ea (1); sets the condition flags 2 times; loads 7 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0xd9a2 (code in `mLiDirtyLocLiVwrLiSrcInit`), 0xf547 (code in `mmo_DirtyCullAndLightModule`), 0xf50d (code in `mmo_DirtyLightModule`), 0, 0x20, 0xf449 (code in `mmo_DirtyXformAndObjToClipModule`), 0x1.
- `mgeb_LiEnableClrMtrl`: address 0xdd2b, `lightenables.S` line 665 (16 words). Reached: geif slot 24 (entry 49); the ARM functions that send it are in the table below.
  **Inferred** role: enables colour material: sets bit 0x10 and points the final lighting step at the colour-material form.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3), AND (1), OR (1); sets the condition flags once; loads 5 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x10, 0xd831 (code in `mLiClrMtrlFinalLi`), 0xf50d (code in `mmo_DirtyLightModule`), 0xf547 (code in `mmo_DirtyCullAndLightModule`), 0x8.
- `mgeb_LiDisableLighting`: address 0xdd0d, `lightenables.S` line 722 (30 words). Reached: geif slot 23 (entry 47); the ARM functions that send it are in the table below.
  **Inferred** role: disables lighting: clears the lighting bits and marks the transform module for re-selection.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (4), move (4), OR (1), operation 0x6c4 (1), operation 0x6cc (1), operation 0x6d1 (1); loads 9 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x80000000, 0x8, 0xfffffffd, 0xffffffdb, 0xf449 (code in `mmo_DirtyXformAndObjToClipModule`), 0xffffff7f, 0xf50d (code in `mmo_DirtyLightModule`), 0xf547 (code in `mmo_DirtyCullAndLightModule`) and 1 more.
- `mgeb_LiDisableLightS`: address 0xdcc0, `lightenables.S` line 832 (60 words). Reached: geif slot 22 (entry 45); the ARM functions that send it are in the table below.
  **Inferred** role: disables one light: clears its bit and marks the lighting set-up for re-selection.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 1; operations move (18), float-to-integer conversion (3), integer subtract or compare (3), operation 0x6cc (3), AND (1), OR (1), operation 0x6ea (1); sets the condition flags 2 times; loads 6 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0xd9a2 (code in `mLiDirtyLocLiVwrLiSrcInit`), 0xf547 (code in `mmo_DirtyCullAndLightModule`), 0x1, 0xf449 (code in `mmo_DirtyXformAndObjToClipModule`), 0xffffffdf, 0xf50d (code in `mmo_DirtyLightModule`).
- `mgeb_LiDisableClrMtrl`: address 0xdc9c, `lightenables.S` line 967 (33 words). Reached: geif slot 21 (entry 43); the ARM functions that send it are in the table below.
  **Inferred** role: disables colour material: restores the material terms from four operand words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 4 to 7; operations move (9), AND (3), operation 0x6cc (1); sets the condition flags 2 times; loads 12 constants; takes 1 conditional transfer.
  It ends with the end-of-command wait; conditional transfers reach `mLiUpdateMtrlColor`.
  Constants loaded: 0x10, 0xda3c (code in `mLiFinalLi`), 0x405, 0x1200, 0x1600, 0x8, 0x1202, 0x1602 and 4 more.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgeb_LiEnableLighting` | 26 | `e_lighting` |  |
| `mgeb_LiReCmpPwrTable` | 154 | `ReCompPwrTable` |  |
| `mgeb_LiEnableLightS` | 25 | `e_light0`, `e_light1`, `e_light2`, `e_light3`, `e_light4`, `e_light5`, `e_light6`, `e_light7`, `init_ge` |  |
| `mgeb_LiEnableClrMtrl` | 24 | `e_colormaterial` |  |
| `mgeb_LiDisableLighting` | 23 | `PixelRestore`, `SetupGE_ColorLine`, `SetupGE_LuminanceLine`, `d_lighting` |  |
| `mgeb_LiDisableLightS` | 22 | `d_light0`, `d_light1`, `d_light2`, `d_light3`, `d_light4`, `d_light5`, `d_light6`, `d_light7`, `slop_readword` |  |
| `mgeb_LiDisableClrMtrl` | 21 | `SetupGE_FFT`, `d_colormaterial` |  |

### lightmodel.S

Light-model parameters (ambient, local viewer, two-sided) and colour-material face selection. **Inferred** from its labels and callers.

- `mgeb_LightModel2Side`: address 0xc7fb, `lightmodel.S` line 59 (28 words). Reached: geif slot 32 (entry 65); the ARM functions that send it are in the table below.
  **Inferred** role: GL light model call two-sided: sets or clears the two-sided bit and marks the cull and light module for re-selection.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (6), OR (3), operation 0x6cc (2), operation 0x6d1 (2), AND (1), operation 0x6c4 (1), operation 0x6ec (1); sets the condition flags once; loads 4 constants.
  It jumps within its own code.
  Constants loaded: 0x80, 0x80000000, 0xf547 (code in `mmo_DirtyCullAndLightModule`), 0xf50d (code in `mmo_DirtyLightModule`).
- `mgeb_LightModelLocV`: address 0xc7e1, `lightmodel.S` line 152 (26 words). Reached: geif slot 34 (entry 69); the ARM functions that send it are in the table below.
  **Inferred** role: GL light model call local viewer: sets or clears the local-viewer bit and marks the transform module for re-selection.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (6), AND (2), OR (2), operation 0x6cc (1), operation 0x6d1 (1); sets the condition flags once; loads 6 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x80, 0xf449 (code in `mmo_DirtyXformAndObjToClipModule`), 0x4, 0xd9a2 (code in `mLiDirtyLocLiVwrLiSrcInit`), 0xf50d (code in `mmo_DirtyLightModule`), 0xf547 (code in `mmo_DirtyCullAndLightModule`).
- `mgeb_LightModelGAmb`: address 0xc7cf, `lightmodel.S` line 228 (17 words). Reached: geif slot 33 (entry 67); the ARM functions that send it are in the table below.
  **Inferred** role: GL light model call global ambient: stores three operand words and marks the lighting module for re-selection.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations move (5), OR (1); loads 3 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0xf50d (code in `mmo_DirtyLightModule`), 0x1, 0xf547 (code in `mmo_DirtyCullAndLightModule`).
- `mgeb_LiClrMtrlFront`: address 0xc795, `lightmodel.S` line 289 (55 words). Reached: geif slot 19 (entry 39); the ARM functions that send it are in the table below.
  **Inferred** role: GL color material call for the front face: compares the mode with the material enumerants and updates the colour terms.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads 5 command words between offsets 4 and 39; operations move (15), integer subtract or compare (5), operation 0x6c4 (5), XOR (4), AND (3), operation 0x6cc (1); loads 12 constants; takes 1 conditional transfer.
  It jumps to `mLiUpdateMtrlColor`.
  Constants loaded: 0x405, 0x1200, 0x1600, 0x1602, 0x1201, 0x1202, 0x404, 0x80.
- `mgeb_LiClrMtrlBack`: address 0xc75b, `lightmodel.S` line 416 (55 words). Reached: geif slot 18 (entry 37); the ARM functions that send it are in the table below.
  **Inferred** role: GL color material call for the back face.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads 5 command words between offsets 4 and 39; operations move (15), integer subtract or compare (5), operation 0x6c4 (5), XOR (4), AND (3), operation 0x6cc (1); loads 12 constants; takes 1 conditional transfer.
  It jumps to `mLiUpdateMtrlColor`.
  Constants loaded: 0x405, 0x1200, 0x1600, 0x1602, 0x1201, 0x1202, 0x80.
- `mgeb_LiClrMtrlFrontBack`: address 0xc721, `lightmodel.S` line 543 (55 words). Reached: geif slot 20 (entry 41); the ARM functions that send it are in the table below.
  **Inferred** role: GL color material call for both faces.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads 5 command words between offsets 4 and 39; operations move (11), XOR (8), integer subtract or compare (5), operation 0x6c4 (5), AND (3), operation 0x6cc (1); loads 11 constants; takes 1 conditional transfer.
  It jumps to `mLiUpdateMtrlColor`.
  Constants loaded: 0x405, 0x1600, 0x1602, 0x1201, 0x1200, 0x1202, 0x408.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgeb_LightModel2Side` | 32 | `light_pop`, `lightmodel_2side` |  |
| `mgeb_LightModelLocV` | 34 | `light_pop`, `lightmodel_locv` |  |
| `mgeb_LightModelGAmb` | 33 | `light_pop`, `lightmodel_gamb` |  |
| `mgeb_LiClrMtrlFront` | 19 | `colormaterial_front` |  |
| `mgeb_LiClrMtrlBack` | 18 | `AddOutput`, `colormaterial_back` |  |
| `mgeb_LiClrMtrlFrontBack` | 20 | `colormaterial_frontback` |  |

### lightsource.S

Per-light parameters: position, spot direction, exponent and cutoff, attenuation, colours. **Inferred** from its labels and callers.

- `mLightColor`: address 0xc70d, `lightsource.S` line 71 (18 words). Reached: transfers in `mgeb_LightAmb` and 2 other labels.
  **Inferred** role: stores one light colour (four operand words) and marks the lighting module for re-selection.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 1 to 4; operations move (6), AND (1), OR (1); sets the condition flags once; loads 3 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0xf50d (code in `mmo_DirtyLightModule`), 0x1, 0xf547 (code in `mmo_DirtyCullAndLightModule`).
- `mgeb_LightAmb`: address 0xc704, `lightsource.S` line 143 (8 words). Reached: geif slot 27 (entry 55); the ARM functions that send it are in the table below.
  **Inferred** role: light ambient colour: selects slot 1 and the common light-colour code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; loads 1 constant.
  It jumps to `mLightColor`.
  Constants loaded: 0x1.
- `mgeb_LightDiff`: address 0xc6fb, `lightsource.S` line 176 (8 words). Reached: geif slot 28 (entry 57); the ARM functions that send it are in the table below.
  **Inferred** role: light diffuse colour: the common light-colour code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; loads 1 constant.
  It jumps to `mLightColor`.
  Constants loaded: 0x1.
- `mgeb_LightSpec`: address 0xc6f2, `lightsource.S` line 209 (8 words). Reached: geif slot 36 (entry 73); the ARM functions that send it are in the table below.
  **Inferred** role: light specular colour: the common light-colour code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; loads 1 constant.
  It jumps to `mLightColor`.
  Constants loaded: 0x1.
- `mgeb_LightK0`: address 0xc6e5, `lightsource.S` line 231 (6 words). Reached: geif slot 29 (entry 59); the ARM functions that send it are in the table below.
  **Inferred** role: stores the constant attenuation factor from its operand.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (1).
  It ends with the end-of-command wait.
- `mgeb_LightK1`: address 0xc6d8, `lightsource.S` line 269 (6 words). Reached: geif slot 30 (entry 61); the ARM functions that send it are in the table below.
  **Inferred** role: stores the linear attenuation factor from its operand.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (1).
  It ends with the end-of-command wait.
- `mgeb_LightK2`: address 0xc6cb, `lightsource.S` line 307 (6 words). Reached: geif slot 31 (entry 63); the ARM functions that send it are in the table below.
  **Inferred** role: stores the quadratic attenuation factor from its operand.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (1).
  It ends with the end-of-command wait.
- `mgeb_LightSpotCutAng`: address 0xc697, `lightsource.S` line 350 (27 words). Reached: geif slot 37 (entry 75); the ARM functions that send it are in the table below.
  **Inferred** role: spot cutoff angle: checks the range 0 to 90 or 180 degrees and calls the sine and cosine routine for the cutoff.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations float subtract (2), move (2), operation 0x6ec (2), float multiply (1), minimum (1), operation 0x6ea (1); sets the condition flags 3 times; loads 2 constants; takes 3 conditional transfers.
  It calls `mSinCos`; ends with the end-of-command wait; conditional transfers reach `mErrInvalidValue`.
  Constants loaded: 90.0 (0x42b40000), 180.0 (0x43340000).
- `mgeb_LightSpotExp`: address 0xc626, `lightsource.S` line 450 (74 words). Reached: geif slot 39 (entry 79); the ARM functions that send it are in the table below.
  **Inferred** role: spot exponent: range check against 128.0 (otherwise the invalid-value error) and the power-table scale.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations float multiply (11), move (10), float subtract (3), float-to-integer conversion (2), operation 0x6ea (2), reciprocal Newton step (2), float add (1), integer-to-float conversion (1), minimum (1), operation 0x6cc (1), operation 0x6ec (1), operation 0x6f7 (1), reciprocal seed (1), second-unit operation 0xff (1); sets the condition flags 5 times; loads 7 constants; takes 3 conditional transfers.
  It ends with the end-of-command wait; jumps to `mErrInvalidValue`; conditional transfers reach `mLiPwrTable`.
  Constants loaded: 0x8, 0x20, 128.0 (0x43000000), 0x3d042108, 30.99997 (0x41f7fff0), 262144.0 (0x48800000), 32.0 (0x42000000).
- `mgeb_LightSpotDir`: address 0xc5cd, `lightsource.S` line 626 (52 words). Reached: geif slot 38 (entry 77); the ARM functions that send it are in the table below.
  **Inferred** role: spot direction: transforms the direction by the modelview and normalises it with a reciprocal square root.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations float multiply (21), float add (6), operation 0x6ec (3), float multiply-add (2), reciprocal square-root Newton step (2), operation 0x6ea (1), operation 0x6ed (1), reciprocal square-root seed (1); sets the condition flags once; takes 1 conditional transfer.
  It ends with the end-of-command wait; conditional transfers reach `mMatrixInverse`.
- `mgeb_LightPos`: address 0xc500, `lightsource.S` line 750 (165 words). Reached: geif slot 35 (entry 71); the ARM functions that send it are in the table below.
  **Inferred** role: light position: transforms the position by the modelview and stores it, with local or infinite light set-up.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 4; operations float multiply (41), move (26), float add (13), OR (4), float multiply-add (4), integer subtract or compare (4), operation 0x6cc (4), reciprocal square-root Newton step (4), float-to-integer conversion (3), AND (2), float subtract (2), operation 0x6ea (2), reciprocal Newton step (2), reciprocal seed (2), reciprocal square-root seed (2), integer add (1), operation 0x6ec (1); sets the condition flags 4 times; loads 10 constants; takes 1 conditional transfer.
  It ends with the end-of-command wait.
  Constants loaded: 0x1, 0xd9a2 (code in `mLiDirtyLocLiVwrLiSrcInit`), 0xf449 (code in `mmo_DirtyXformAndObjToClipModule`), 1e-05 (0x3727c5ac), 0xf547 (code in `mmo_DirtyCullAndLightModule`), 0xf50d (code in `mmo_DirtyLightModule`).

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgeb_LightAmb` | 27 | `light_amb`, `light_pop` |  |
| `mgeb_LightDiff` | 28 | `light_diff`, `light_pop` |  |
| `mgeb_LightSpec` | 36 | `light_pop`, `light_spec` |  |
| `mgeb_LightK0` | 29 | `light_k0`, `light_pop` |  |
| `mgeb_LightK1` | 30 | `light_k1`, `light_pop` |  |
| `mgeb_LightK2` | 31 | `light_k2`, `light_pop` |  |
| `mgeb_LightSpotCutAng` | 37 | `light_pop`, `light_scut` |  |
| `mgeb_LightSpotExp` | 39 | `light_pop`, `light_sexp` |  |
| `mgeb_LightSpotDir` | 38 | `light_sdir` |  |
| `mgeb_LightPos` | 35 | `light_pos` |  |

### lightsubroutines.S

Lighting initialisation and the dirty-state refresh of the lighting tables. **Inferred** from its labels and callers.

- `mLiDirtySimLiCRAM`: address 0xe334, `lightsubroutines.S` line 108 (78 words). Reached: transfers in `mmo_DirtyCullAndLightModule` and 1 other label; its address loaded as a constant in `mmo_DirtyCullAndLightModule` and 1 other label.
  **Inferred** role: writes the simple lighting state to coefficient memory after a change.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (33), float multiply (12), float add (7), AND (2), operation 0x6d1 (1), second-unit move or minimum (1); sets the condition flags once.
  It ends the command with an indirect transfer in condition group 31.
- `mLiDirtyGenLiCRAM`: address 0xe391, `lightsubroutines.S` line 320 (52 words). Reached: transfers in `mmo_DirtyCullAndLightModule` and 1 other label; its address loaded as a constant in `mmo_DirtyCullAndLightModule` and 1 other label.
  **Inferred** role: writes the general lighting state to coefficient memory after a change.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (21), float add (6), float multiply (6), OR (1), operation 0x6d1 (1).
  It ends the command with an indirect transfer in condition group 31.
- `mLiUpdateShin`: address 0xe27a, `lightsubroutines.S` line 674 (143 words). Reached: transfers in `mLiEndPrimShinLp` and 3 other labels.
  **Inferred** role: updates the shininess terms: reciprocal steps and multiplies, then a return.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (23), float multiply (22), float add (15), float subtract (10), AND (4), float-to-integer conversion (4), reciprocal Newton step (4), operation 0x6cc (3), operation 0x6f7 (3), second-unit move (3), integer-to-float conversion (2), operation 0x6d1 (2), operation 0x6e3 (2), float multiply-add (1), logical shift right (1), move of the second operand (1), operation 0x6ec (1), reciprocal seed (1), second-unit operation 0xff (1); sets the condition flags 5 times; reads engine memory at 2 addresses from 0x1bfc to 0x1bfd; loads 7 constants; takes 8 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31); jumps within its own code; conditional transfers reach `mLiPwrTable` and 2 other labels.
  Constants loaded: 0xf50d (code in `mmo_DirtyLightModule`), 0xf547 (code in `mmo_DirtyCullAndLightModule`), 0.999999 (0x3f7fffef), 0.003921569 (0x3b808081), 32768.0 (0x47000000), 0x2.
- `mGL_CtxLightInitialize`: address 0xe184, `lightsubroutines.S` line 896 (236 words). Reached: transfers in `mgeb_GLContextInitialize`.
  **Inferred** role: initialises the lighting state of a GL context: 106 constants (default material and light values such as 0.2 and 0.8).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (106); loads 106 constants; takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0, 1.0 (0x3f800000), 0.2 (0x3e4ccccd), 0.8 (0x3f4ccccd), 180.0 (0x43340000), 262152.0 (0x48800100), -1.0 (0xbf800000), 0x1602 and 8 more.
- `mGL_LightInitialize`: address 0xe05a, `lightsubroutines.S` line 1087 (292 words). Reached: transfers in `mgeb_GlobalInitialize`.
  **Inferred** role: initialises the global lighting tables: 141 constants.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (141); loads 141 constants.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: -1.0 (0xbf800000), 1.0 (0x3f800000), 0, 0.501319 (0x3f005671), 0.537159 (0x3f098341), 0.56838 (0x3f11815a), 0.59578 (0x3f18850a), 0.619993 (0x3f1eb7dc) and 123 more.

### linclip.S

Line clipping against the user planes and the view frustum. **Inferred** from its labels and callers.

- `mClipLineToPlane`: address 0xebbf, `linclip.S` line 89 (338 words). Reached: transfers in `mClipLinUserAndFrustum`.
  **Inferred** role: clips a line against one plane: interpolation by multiplies and reciprocal steps, then a return.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (185), float add (65), move (38), reciprocal Newton step (10), float subtract (8), AND (6), float multiply-add (3), XOR (2), operation 0x6ea (2), reciprocal seed (2); sets the condition flags 12 times; 34 words stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here); takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31); conditional transfers reach `HereWeGo`.
- `mClipLinUserAndFrustum`: address 0xea1c, `linclip.S` line 695 (230 words). Reached: its address loaded as a constant in `mGL_EM_Initialize` and 1 other label.
  **Inferred** role: line clipper: tests the outcode bits (0x1 to 0x20), calls the clip-space transform and the flush.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 11 to 14; operations move (133), AND (7), second-unit move (7), OR (5), operation 0x6ec (5), second-unit move or minimum (2), float-to-integer conversion (1), integer add (1), operation 0x6d1 (1); sets the condition flags 9 times; loads 15 constants; takes 11 conditional transfers.
  It calls `mEyeToClipAfterUserClip` and `mClipLinFlush`; returns to its caller or the next chained stage (an indirect transfer outside condition group 31); conditional transfers reach `uEvalSaveState` and 1 other label.
  Constants loaded: 0x2, 0, 0x10, 0x20, 0x1, 0x4, 0x8, 0x69045951.
- `mClipLinFlush`: address 0xed2c, `linclip.S` line 1028 (30 words). Reached: transfers in `mClipLinUserAndFrustum`.
  **Inferred** role: ends a clipped line: nine moves and a constant holding an address inside itself, then it returns or ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (9); loads 3 constants.
  It ends the command with an indirect transfer in condition group 31; returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0x3f, 0xed41 (code in `mClipLinFlush`).

### line.S

Line width, stipple and antialiased-line tables. **Inferred** from its labels and callers.

- `mDownLoadAALineTable`: address 0x65db, `line.S` line 216 (59 words). Reached: transfers in `mGenerateAALineTable` and 2 other labels.
  **Inferred** role: sends the antialiased-line table to the raster system: scales by 255.0 and compares in a loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations integer subtract or compare (12), float-to-integer conversion (8), move (4), NOT (2), float multiply (2), AND (1), float subtract (1); sets the condition flags 2 times; writes 5 words to the raster-bus output addresses; loads 9 constants; takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0.5 (0x3f000000), 0x10000000, 255.0 (0x437f0000), 0x3, 0x6, 0x89f, 0x8bf, 0x8df and 1 more.
- `mDownLoadAALineTable4`: address 0x6579, `line.S` line 328 (76 words). Reached: transfers in `mGenerateAALineTable4` and 1 other label.
  **Inferred** role: sends the four-entry form of the antialiased-line table.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float-to-integer conversion (12), integer subtract or compare (12), move (8), float multiply (3), AND (2), NOT (2), float subtract (1), integer add (1), second-unit operation 0xff (1); sets the condition flags 2 times; writes 8 words to the raster-bus output addresses; reads engine memory at 0x1389; loads 9 constants.
  It jumps within its own code.
  Constants loaded: 0.5 (0x3f000000), 0x89f, 0x10000000, 255.0 (0x437f0000), 0x3, 0x6, 0x8bf, 0x8df and 1 more.
- `mDownLoadAALineTable8`: address 0x652d, `line.S` line 435 (56 words). Reached: transfers in `mGenerateAALineTable8` and 1 other label.
  **Inferred** role: sends the eight-entry form of the antialiased-line table.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float-to-integer conversion (8), integer subtract or compare (8), move (4), AND (2), NOT (2), float multiply (2), float subtract (1), integer add (1), second-unit operation 0xff (1); sets the condition flags 2 times; writes 5 words to the raster-bus output addresses; reads engine memory at 0x1389; loads 9 constants.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0.5 (0x3f000000), 0x89f, 0x10000000, 255.0 (0x437f0000), 0x3, 0x6, 0x8bf, 0x8df and 1 more.
- `mGenerateAALineTable`: address 0x64af, `line.S` line 550 (62 words). Reached: transfers in `mgeb_DownLoadAALineTable` and 2 other labels.
  **Inferred** role: builds the antialiased-line table with the response routine (constant 3.0 among them).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (9), float add (6), move (5), AND (3), clamp at zero (2), float subtract (2), second-unit move or minimum (2), OR (1), integer-to-float conversion (1); sets the condition flags 5 times; loads 11 constants; takes 3 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31); jumps to `AA_Response_Step`; conditional transfers reach `AA_Response` and 1 other label.
  Constants loaded: 0x10000000, 0x3d042108, 3.0 (0x40400000), 0x8000000, 0.25 (0x3e800000), 0.5 (0x3f000000), 1.0 (0x3f800000).
- `mGenerateAALineTable4`: address 0x6432, `line.S` line 702 (70 words). Reached: transfers in `mgeb_DownLoadAALineTable`.
  **Inferred** role: builds the four-entry antialiased-line table.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (9), AND (5), float add (4), move (4), clamp at zero (3), second-unit move or minimum (3), float subtract (2), integer add (1), integer-to-float conversion (1), second-unit operation 0xff (1); sets the condition flags 6 times; reads engine memory at 0x1389; loads 10 constants; takes 3 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31); jumps to `AA_Response_Step`; conditional transfers reach `AA_Response` and 1 other label.
  Constants loaded: 0x10000000, 0.5 (0x3f000000), 0x3d042108, 3.0 (0x40400000), 0.25 (0x3e800000), 1.0 (0x3f800000).
- `mGenerateAALineTable8`: address 0x63d4, `line.S` line 854 (57 words). Reached: transfers in `mgeb_DownLoadAALineTable`.
  **Inferred** role: builds the eight-entry antialiased-line table.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (7), AND (4), move (4), float add (3), second-unit move or minimum (3), clamp at zero (2), float subtract (2), integer add (1), integer-to-float conversion (1), second-unit operation 0xff (1); sets the condition flags 5 times; reads engine memory at 0x1389; loads 10 constants; takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31); jumps to `AA_Response_Step`; conditional transfers reach `AA_Response` and 1 other label.
  Constants loaded: 0x10000000, 0.5 (0x3f000000), 0x3d042108, 3.0 (0x40400000), 0.25 (0x3e800000), 1.0 (0x3f800000).
- `mgeb_LineWidth_AlphaAA`: address 0x6379, `line.S` line 1014 (73 words). Reached: geif slot 94 (entry 189); the ARM functions that send it are in the table below.
  **Inferred** role: line width for alpha-antialiased lines: three operand words scaled by 2.0, 0.5 and 8.0.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations move (16), OR (4), float add (4), operation 0x6d1 (4), float subtract (3), float multiply (2), integer subtract or compare (2), AND (1), float-to-integer conversion (1), operation 0x6f9 (1); sets the condition flags 9 times; writes 2 words to the raster-bus output addresses; reads engine memory at 2 addresses from 0x13ae to 0x13af; loads 14 constants.
  It ends with the end-of-command wait.
  Constants loaded: 2.0 (0x40000000), 0.5 (0x3f000000), 8.0 (0x41000000), 0x8b08 (code in `mmo_DrawLinStipplePrim`), 0xfffffbff, 0x8db0 (code in `mmo_DrawLinPrim`), 0x20, 0x1102 and 6 more.
- `mgeb_DownLoadAALineTable`: address 0x6319, `line.S` line 1190 (50 words). Reached: geif slot 375 (entry 751); the ARM functions that send it are in the table below.
  **Inferred** role: command that builds and sends the antialiased-line table from two operand words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (10), integer subtract or compare (4), float subtract (3), integer-to-float conversion (2), AND (1), float multiply (1), logical shift right (1), operation 0x6ea (1); sets the condition flags 8 times; writes 3 words to the raster-bus output addresses; reads engine memory at 3 addresses from 0x1389 to 0x13af; loads 5 constants; takes 8 conditional transfers.
  It calls `mGenerateAALineTable`; ends with the end-of-command wait; jumps within its own code; conditional transfers reach `mDownLoadAALineTable8` and 5 other labels.
  Constants loaded: 0.5 (0x3f000000), 0x1102, 0x10000000, 0x4, 0x70000.
- `mgeb_InitAALineTables`: address 0x6300, `line.S` line 1325 (14 words). Reached: geif slot 400 (entry 801); the ARM functions that send it are in the table below.
  **Inferred** role: initialises the antialiased-line tables from two operand words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (3), float multiply (1), integer subtract or compare (1); sets the condition flags once; loads 3 constants.
  It calls `mGenerateAALineTable`; ends with the end-of-command wait.
  Constants loaded: 0.5 (0x3f000000), 0x1102, 0x10000000.
- `mgeb_LineWidth_MS`: address 0x62dc, `line.S` line 1424 (28 words). Reached: geif slot 95 (entry 191).
  **Inferred** role: line width for multisample lines: clears and sets mode bits (0x400) and selects the stippled line module.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (7), AND (2), OR (2), float multiply (1), operation 0x6d1 (1); sets the condition flags 3 times; loads 7 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x400, 0xfffffeff, 0x8b08 (code in `mmo_DrawLinStipplePrim`), 0xbfffffff, 0.5 (0x3f000000), 0x8a2d (code in `mmo_DrawMSLinPrim`), 0x20.
- `mgeb_LineStipple`: address 0x62a7, `line.S` line 1520 (31 words). Reached: geif slot 40 (entry 81); the ARM functions that send it are in the table below.
  **Inferred** role: GL line stipple call: converts the factor and pattern to float and computes a reciprocal of the factor.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations integer-to-float conversion (3), float multiply (2), reciprocal Newton step (2), logical shift right (1), move (1), reciprocal seed (1); takes 1 conditional transfer.
  It ends with the end-of-command wait.
- `mgeb_LineWidth_Select`: address 0x6298, `line.S` line 1572 (9 words). Reached: geif slot 175 (entry 351).
  **Inferred** role: line handling in selection mode: loads the address of the selection line module.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1); loads 1 constant.
  It ends with the end-of-command wait.
  Constants loaded: 0xbfaf (code in `mmo_SelectLine`).
- `mgeb_LineWidth_Feedback`: address 0x6289, `line.S` line 1604 (9 words). Reached: geif slot 174 (entry 349).
  **Inferred** role: line handling in feedback mode: loads the address of the feedback line module.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1); loads 1 constant.
  It ends with the end-of-command wait.
  Constants loaded: 0xb89a (code in `mmo_FeedbackLine`).
- `mgeb_LineWidth_Aliased`: address 0x6257, `line.S` line 1668 (41 words). Reached: geif slot 93 (entry 187).
  **Inferred** role: line width for aliased lines: masks the mode bits and selects the line module from the width.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (11), AND (2), integer add (2), OR (1), float multiply (1), float-to-integer conversion (1), operation 0x6d1 (1), second-unit operation 0xff (1); sets the condition flags 3 times; writes 2 words to the raster-bus output addresses; loads 11 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0xfffffaff, 0x2, 0x8, 0x1213fd0, 0xfff, 0x8b08 (code in `mmo_DrawLinStipplePrim`), 0x8db0 (code in `mmo_DrawLinPrim`), 0x20 and 3 more.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgeb_LineWidth_AlphaAA` | 94 | `ResolveLine` |  |
| `mgeb_DownLoadAALineTable` | 375 | `d_polygon_stipple`, `downLoadAALineTable` |  |
| `mgeb_InitAALineTables` | 400 | `initAALineTablesGlobal` |  |
| `mgeb_LineStipple` | 40 | `arm_linestipple`, `line_pop` | `HP_LINESTIPPLE` |

### LUT.s

Pixel-path lookup-table stage (16-bit and RGBA alpha-only forms), added by the ARM's AddLuminanceLut. **Inferred** from its labels and callers.

- `mmo_LUT16`: address 0x1b8d, `LUT.s` line 77 (137 words). Reached: geif slot 289 (entry 579); the ARM functions that send it are in the table below.
  **Inferred** role: pixel-path 16-bit lookup stage: set-up, then its main loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (24), float add (10); closes 1 loop.
  It has no jump of its own and runs on into `mainloop_lut`.
- `umo_LUT16`: address 0x1b8d, `LUT.s` line 77 (137 words). Reached: second name for `mmo_LUT16` at the same address, so the same code.
  **Inferred** role: pixel-path 16-bit lookup stage: set-up, then its main loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (24), float add (10); closes 1 loop.
  It has no jump of its own and runs on into `mainloop_lut`.
- `mainloop_lut`: address 0x1c16, `LUT.s` line 246 (83 words). Reached: inside `mmo_LUT16`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (72), second-unit move or minimum (72); closes 1 loop.
  It has no jump of its own and runs on into `postmainloop_lut`.
- `postmainloop_lut`: address 0x1c69, `LUT.s` line 332 (4 words). Reached: inside `mmo_LUT16`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It has no jump of its own and runs on into `epilogue_lut`.
- `epilogue_lut`: address 0x1c6d, `LUT.s` line 339 (168 words). Reached: transfers in `mmo_LUT16`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (72), second-unit move or minimum (72).
  It ends the command with an indirect transfer in condition group 31.
- `umo_LUT16RGBA_AlphaOnly`: address 0x1d15, `LUT.s` line 518 (137 words). Reached: inside `mmo_LUT16`, reached from that routine's own code.
  **Inferred** role: second entry of the 16-bit lookup stage for RGBA pixels where only alpha is looked up.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (24), float add (10); closes 1 loop.
  It has no jump of its own and runs on into `mainloop_lut_rgba_alpha_only`.
- `mainloop_lut_rgba_alpha_only`: address 0x1d9e, `LUT.s` line 687 (35 words). Reached: inside `umo_LUT16RGBA_AlphaOnly`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (24), second-unit move or minimum (24); closes 1 loop.
  It has no jump of its own and runs on into `postmainloop_lut_rgba_alpha_only`.
- `postmainloop_lut_rgba_alpha_only`: address 0x1dc1, `LUT.s` line 725 (4 words). Reached: inside `umo_LUT16RGBA_AlphaOnly`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It has no jump of its own and runs on into `epilogue_lut_rgba_alpha_only`.
- `epilogue_lut_rgba_alpha_only`: address 0x1dc5, `LUT.s` line 732 (73 words). Reached: transfers in `umo_LUT16RGBA_AlphaOnly`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (24), second-unit move or minimum (24).
  It ends the command with an indirect transfer in condition group 31.
- `umo_LUT16LA_AlphaOnly`: address 0x1e0e, `LUT.s` line 817 (137 words). Reached: inside `umo_LUT16RGBA_AlphaOnly`, reached from that routine's own code.
  **Inferred** role: third entry of the 16-bit lookup stage for luminance-alpha pixels where only alpha is looked up.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (24), float add (10); closes 1 loop.
  It has no jump of its own and runs on into `mainloop_lut_la_alpha_only`.
- `mainloop_lut_la_alpha_only`: address 0x1e97, `LUT.s` line 986 (35 words). Reached: inside `umo_LUT16LA_AlphaOnly`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (24), second-unit move or minimum (24); closes 1 loop.
  It has no jump of its own and runs on into `postmainloop_lut_la_alpha_only`.
- `postmainloop_lut_la_alpha_only`: address 0x1eba, `LUT.s` line 1024 (4 words). Reached: inside `umo_LUT16LA_AlphaOnly`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It has no jump of its own and runs on into `epilogue_lut_la_alpha_only`.
- `epilogue_lut_la_alpha_only`: address 0x1ebe, `LUT.s` line 1031 (73 words). Reached: transfers in `umo_LUT16LA_AlphaOnly`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (24), second-unit move or minimum (24).
  It ends the command with an indirect transfer in condition group 31.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mmo_LUT16` | 289 | `AddLuminanceLut` |  |

### m_pipecontrol.S

GL context swap in and out on the engines, end of a pixel stream. **Inferred** from its labels and callers.

- `mmo_PixEndStream`: address 0x6cc7, `m_pipecontrol.S` line 51 (16 words). Reached: geif slot 305 (entry 611).
  **Inferred** role: ends a pixel stream: one XOR, two raster bus words and a short loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), XOR (1); writes 2 words to the raster-bus output addresses; loads 1 constant; closes 1 loop.
  It ends with the end-of-command wait.
  Constants loaded: 0x1.
- `mgeb_SwapOutGL`: address 0x6cb3, `m_pipecontrol.S` line 97 (9 words). Reached: geif slot 341 (entry 683).
  **Inferred** role: swaps the GL state out by calling the CRAM-to-ERAM copy.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2.
  It calls `mCramToEram`; ends with the end-of-command wait.
- `mgeb_SwapInGL`: address 0x6c9f, `m_pipecontrol.S` line 119 (9 words). Reached: geif slot 340 (entry 681).
  **Inferred** role: swaps the GL state in by calling the ERAM-to-CRAM copy.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2.
  It calls `mEramToCram`; ends with the end-of-command wait.

### mask.s

Pixel-path mask stage. **Inferred** from its labels and callers.

- `mmo_Mask`: address 0x1b07, `mask.s` line 29 (55 words). Reached: geif slot 297 (entry 595); the ARM functions that send it are in the table below.
  **Inferred** role: pixel-path mask stage: set-up, then its main loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (7); closes 1 loop.
  It has no jump of its own and runs on into `mainloop_mask`.
- `umo_Mask`: address 0x1b07, `mask.s` line 29 (55 words). Reached: second name for `mmo_Mask` at the same address, so the same code.
  **Inferred** role: pixel-path mask stage: set-up, then its main loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (7); closes 1 loop.
  It has no jump of its own and runs on into `mainloop_mask`.
- `mainloop_mask`: address 0x1b3e, `mask.s` line 107 (29 words). Reached: inside `mmo_Mask`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (24); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_mask`.
- `epilogue_mask`: address 0x1b5b, `mask.s` line 139 (50 words). Reached: transfers in `mmo_Mask`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (23).
  It ends the command with an indirect transfer in condition group 31.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mmo_Mask` | 297 | `loadIndexPath` |  |

### material.S

Material parameters and their updates. **Inferred** from its labels and callers.

- `mgeb_Material`: address 0xde94, `material.S` line 54 (80 words). Reached: geif slot 158 (entry 317); distributor relocated word.
  **Inferred** role: GL material call: compares the face (0x404, 0x405, 0x408) and the parameter name with the material enumerants and stores the values.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations integer subtract or compare (10), move (7), operation 0x6c4 (4), integer-to-float conversion (3), float multiply (2), AND (1), OR (1), operation 0x6ea (1), second-unit operation 0xff (1); sets the condition flags 7 times; loads 16 constants; takes 5 conditional transfers.
  It ends with the end-of-command wait; conditional transfers reach `mErrInvalidEnum` and 4 other labels.
  Constants loaded: 0x404, 0x405, 0x408, 0x1200, 0x1201, 0x1202, 0x1600, 0x1601 and 7 more.
- `mLiSetMAmbDiff`: address 0xdf4c, `material.S` line 268 (26 words). Reached: transfers in `mLiUpdateMtrlColor` and 1 other label.
  **Inferred** role: stores the ambient and diffuse material colour together.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (5), OR (1); loads 1 constant.
  It ends with the end-of-command wait.
  Constants loaded: 0x1.
- `mLiSetMShininess`: address 0xdf27, `material.S` line 322 (26 words). Reached: transfers in `mgeb_Material`.
  **Inferred** role: stores the material shininess after a range check against 128.0.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (9), OR (2), operation 0x6ec (2), float subtract (1), operation 0x6ea (1); sets the condition flags 2 times; loads 3 constants; takes 2 conditional transfers.
  It jumps to `mErrInvalidValue`.
  Constants loaded: 128.0 (0x43000000), 0x2, 0x4.
- `mLiUpdateMtrlColor`: address 0xdef0, `material.S` line 406 (37 words). Reached: transfers in `mgeb_LiClrMtrlBack` and 3 other labels.
  **Inferred** role: updates the material colour terms for the colour-material mode and marks the lighting modules for re-selection.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), integer subtract or compare (5), AND (1), OR (1), operation 0x6c4 (1), second-unit operation 0xff (1); sets the condition flags 5 times; loads 3 constants; takes 1 conditional transfer.
  It ends with the end-of-command wait; conditional transfers reach `mLiSetMAmbDiff`.
  Constants loaded: 0xf547 (code in `mmo_DirtyCullAndLightModule`), 0xf50d (code in `mmo_DirtyLightModule`), 0x1.
- `mLiPushMaterial`: address 0xe036, `material.S` line 532 (24 words). Reached: transfers in `mLiPushMtrlInit` and 2 other labels.
  **Inferred** role: material update inside a primitive: compares the parameter name and branches to the per-term code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations integer-to-float conversion (2), AND (1), XOR (1), float multiply (1), float-to-integer conversion (1), integer subtract or compare (1), move (1), operation 0x6cc (1), second-unit operation 0xff (1), shift left (1); sets the condition flags once; loads 3 constants; takes 3 conditional transfers.
  It jumps to `mLiPushMtrlShin`; conditional transfers reach `mLiPushMtrlDiff` and 1 other label.
  Constants loaded: 0x10, 0xe, 0x1200.
- `mLiPushMtrlASEI`: address 0xe009, `material.S` line 612 (30 words). Reached: transfers in `mLiPushMaterial` and 1 other label.
  **Inferred** role: per-primitive update of the ambient, specular, emission or index material term.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4), integer subtract or compare (3), OR (2); sets the condition flags 3 times.
  It ends with the end-of-command wait.
- `mLiPushMtrlDiff`: address 0xdfe4, `material.S` line 689 (31 words). Reached: transfers in `mLiPushMaterial`.
  **Inferred** role: per-primitive update of the diffuse material term.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), OR (2); loads 1 constant; takes 1 conditional transfer.
  It jumps within its own code; conditional transfers reach `mLiPushMtrlASEI`.
  Constants loaded: 0x1200.
- `mLiPushMtrlShin`: address 0xdf72, `material.S` line 742 (33 words). Reached: transfers in `mLiPushMaterial`.
  **Inferred** role: per-primitive update of the shininess, range-checked against 128.0.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (7), OR (3), operation 0x6ec (2), second-unit operation 0xff (2), AND (1), float subtract (1), operation 0x6ea (1); sets the condition flags 4 times; loads 3 constants; takes 2 conditional transfers.
  It jumps to `mErrInvalidValue`.
  Constants loaded: 128.0 (0x43000000), 0x2, 0x4.
- `mLiPushMtrlInit`: address 0xdfb1, `material.S` line 822 (46 words). Reached: transfers in `mgeb_Material`.
  **Inferred** role: set-up of a per-primitive material update, then the shininess update.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (10), OR (2), integer-to-float conversion (2), AND (1), float multiply (1), operation 0x6ec (1), second-unit move or minimum (1), second-unit operation 0xff (1); sets the condition flags 3 times; loads 5 constants; takes 1 conditional transfer.
  It jumps to `mLiUpdateShin`; conditional transfers reach `mLiPushMaterial`.
  Constants loaded: 0x10, 0x6, 0xd85e (code in `mmo_LighterGeneral`), 0xdf9c (code in `mLiPushMtrlInit2`), 0xc76.
- `mLiPushMtrlInit2`: address 0xdf9c, `material.S` line 946 (11 words). Reached: its address loaded as a constant in `mLiPushMtrlInit`.
  **Inferred** role: second set-up of a per-primitive material update: compares the face with GL_BACK (0x405).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations integer subtract or compare (4), operation 0x6c4 (3); sets the condition flags once; loads 1 constant.
  It jumps to `mLiPushMaterial`.
  Constants loaded: 0x405.

### math.S

Scalar math subroutines: reciprocal, square root, reciprocal square root. **Inferred** from its labels and callers.

- `misqrt`: address 0xd340, `math.S` line 13 (11 words). Reached: no slot, ARM load, decoded transfer or address constant reaches it (routes tried: [How to read the tables](#how-to-read-the-entries)).
  **Inferred** role: reciprocal square root: seed and two Newton steps, then a return; nothing in the program calls it.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (4), reciprocal square-root Newton step (2), reciprocal square-root seed (2).
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `msqrt`: address 0xd31e, `math.S` line 34 (12 words). Reached: no slot, ARM load, decoded transfer or address constant reaches it (routes tried: [How to read the tables](#how-to-read-the-entries)).
  **Inferred** role: square root: a reciprocal square root multiplied back by the argument, then a return; nothing in the program calls it.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (5), reciprocal square-root Newton step (2), reciprocal square-root seed (2).
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `minv`: address 0xd308, `math.S` line 56 (9 words). Reached: no slot, ARM load, decoded transfer or address constant reaches it (routes tried: [How to read the tables](#how-to-read-the-entries)).
  **Inferred** role: reciprocal: seed and two Newton steps, then a return; nothing in the program calls it.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (2), reciprocal Newton step (2), reciprocal seed (2).
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).

### matrix.S

Matrix copy, transpose, identity, ortho and frustum helpers. **Inferred** from its labels and callers.

- `mMatrixTransposeWW`: address 0xd399, `matrix.S` line 34 (12 words). Reached: no slot, ARM load, decoded transfer or address constant reaches it (routes tried: [How to read the tables](#how-to-read-the-entries)).
  **Inferred** role: transposes a matrix in working memory: twelve moves and a return; nothing in the program calls it.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (12); 11 words stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here).
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mMatrixLoadIdentityC`: address 0xd3f7, `matrix.S` line 54 (17 words). Reached: inside `mMatrixTransposeWW`, reached from that routine's own code.
  **Inferred** role: loads an identity matrix in coefficient memory (second entry after the transpose).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2).
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mMatrixCopyCW`: address 0xd380, `matrix.S` line 87 (25 words). Reached: inside `mMatrixLoadIdentityC`, reached from that routine's own code.
  **Inferred** role: copies a 16-word matrix from coefficient to working memory.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (16).
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mMatrixCopyCC`: address 0xd35e, `matrix.S` line 117 (32 words). Reached: inside `mMatrixCopyCW`, reached from that routine's own code.
  **Inferred** role: copies a 16-word matrix within coefficient memory.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (16).
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mFrustum`: address 0xd410, `matrix.S` line 151 (67 words). Reached: transfers in `mgeb_Frustum_Color` and 3 other labels.
  **Inferred** role: builds a perspective matrix from the six operand words: double-precision products and differences, an invalid-value check, then the matrix multiply.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 5; operations double multiply (12), float multiply (10), double subtract (6), operation 0x6b5 (6), operation 0x6f5 (6), second-unit move (6), float add (5), float subtract (4), move (4), second-unit move or minimum (4), operation 0x6ea (3), reciprocal Newton step (3), move of the second operand (2), operation 0x6eb (1), operation 0x6f4 (1); sets the condition flags 5 times; loads 1 constant; takes 5 conditional transfers.
  It jumps to `mMatrixMultCCW`; conditional transfers reach `mErrInvalidValue`.
  Constants loaded: 2.0 (0x40000000).
- `mOrtho`: address 0xd3ad, `matrix.S` line 233 (64 words). Reached: transfers in `mgeb_Ortho_Color` and 3 other labels.
  **Inferred** role: builds an orthographic matrix from the six operand words, then the matrix multiply.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 5; operations double multiply (12), double subtract (6), float add (6), float multiply (6), operation 0x6b5 (6), operation 0x6f5 (6), float subtract (5), move (5), second-unit move (5), second-unit move or minimum (4), operation 0x6ea (3), reciprocal Newton step (3), move of the second operand (2), operation 0x6f4 (1); sets the condition flags 3 times; loads 1 constant; takes 3 conditional transfers.
  It jumps to `mMatrixMultCCW`; conditional transfers reach `mErrInvalidValue`.
  Constants loaded: 2.0 (0x40000000).

### matrixfunc.S

Matrix stack commands per matrix mode: push, pop, load, multiply, rotate, scale, translate, frustum, ortho. **Inferred** from its labels and callers.

- `mgeb_MatrixMode`: address 0xbe80, `matrixfunc.S` line 40 (9 words). Reached: geif slot 51 (entry 103); the ARM functions that send it are in the table below.
  **Inferred** role: GL matrix mode call: compares the enumerant with GL_PROJECTION (0x1701).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations integer subtract or compare (1); loads 1 constant.
  It ends with the end-of-command wait.
  Constants loaded: 0x1701.
- `mgeb_LoadIdentity_Modelview`: address 0xbe57, `matrixfunc.S` line 68 (36 words). Reached: geif slot 44 (entry 89); the ARM functions that send it are in the table below; distributor table 3.
  **Inferred** role: GL load identity call for the modelview matrix.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4).
  It jumps within its own code.
- `mgeb_LoadIdentity_Projection`: address 0xbe3c, `matrixfunc.S` line 132 (21 words). Reached: geif slot 45 (entry 91); the ARM functions that send it are in the table below.
  **Inferred** role: GL load identity call for the projection matrix, with the fog table update.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3); takes 1 conditional transfer.
  It jumps within its own code; conditional transfers reach `mResolveFogTable`.
- `mgeb_LoadIdentity_Texture`: address 0xbe22, `matrixfunc.S` line 187 (22 words). Reached: geif slot 46 (entry 93); the ARM functions that send it are in the table below.
  **Inferred** role: GL load identity call for the texture matrix, marking the texture module for re-selection.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3); loads 1 constant.
  It jumps within its own code.
  Constants loaded: 0xf494 (code in `mmo_DirtyTextureAndScreenModule`).
- `mgeb_LoadIdentity_Color`: address 0xbe08, `matrixfunc.S` line 219 (23 words). Reached: geif slot 43 (entry 87); the ARM functions that send it are in the table below.
  **Inferred** role: GL load identity call for the colour matrix, setting its flag bit 0x10000.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2), OR (1); loads 1 constant.
  It jumps within its own code.
  Constants loaded: 0x10000.
- `mgeb_LoadMatrix_Modelview`: address 0xbdec, `matrixfunc.S` line 271 (28 words). Reached: geif slot 48 (entry 97); the ARM functions that send it are in the table below; distributor table 4.
  **Inferred** role: GL load matrix call for the modelview matrix: reads the 16 operand words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 15; operations move (18).
  It jumps within its own code.
- `mgeb_LoadMatrix_Projection`: address 0xbdd0, `matrixfunc.S` line 315 (27 words). Reached: geif slot 49 (entry 99); the ARM functions that send it are in the table below.
  **Inferred** role: GL load matrix call for the projection matrix: reads the 16 operand words, with the fog table update.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 15; operations move (17); takes 1 conditional transfer.
  It jumps within its own code; conditional transfers reach `mResolveFogTable`.
- `mgeb_LoadMatrix_Texture`: address 0xbdb5, `matrixfunc.S` line 358 (27 words). Reached: geif slot 50 (entry 101); the ARM functions that send it are in the table below.
  **Inferred** role: GL load matrix call for the texture matrix: reads the 16 operand words and marks the texture module for re-selection.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 15; operations move (17); loads 1 constant.
  It jumps within its own code.
  Constants loaded: 0xf494 (code in `mmo_DirtyTextureAndScreenModule`).
- `mgeb_LoadMatrix_Color`: address 0xbd99, `matrixfunc.S` line 392 (28 words). Reached: geif slot 47 (entry 95); the ARM functions that send it are in the table below.
  **Inferred** role: GL load matrix call for the colour matrix: reads the 16 operand words and sets its flag bit.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 15; operations move (16), operation 0x6d1 (1); loads 1 constant.
  It jumps within its own code.
  Constants loaded: 0x10000.
- `mgeb_MultMatrix_Modelview`: address 0xbd89, `matrixfunc.S` line 436 (9 words). Reached: geif slot 53 (entry 107); the ARM functions that send it are in the table below; distributor table 6.
  **Inferred** role: GL mult matrix call for the modelview matrix: selects it and enters the matrix multiply.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3).
  It jumps to `mMatrixMultCCW`.
- `mgeb_MultMatrix_Projection`: address 0xbd7a, `matrixfunc.S` line 465 (8 words). Reached: geif slot 54 (entry 109); the ARM functions that send it are in the table below.
  **Inferred** role: GL mult matrix call for the projection matrix.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2).
  It jumps to `mMatrixMultCCW`.
- `mgeb_MultMatrix_Texture`: address 0xbd6c, `matrixfunc.S` line 494 (10 words). Reached: geif slot 55 (entry 111); the ARM functions that send it are in the table below.
  **Inferred** role: GL mult matrix call for the texture matrix.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2); loads 1 constant.
  It jumps to `mMatrixMultCCW`.
  Constants loaded: 0xf494 (code in `mmo_DirtyTextureAndScreenModule`).
- `mgeb_MultMatrix_Color`: address 0xbd5e, `matrixfunc.S` line 515 (11 words). Reached: geif slot 52 (entry 105); the ARM functions that send it are in the table below.
  **Inferred** role: GL mult matrix call for the colour matrix.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1), operation 0x6d1 (1); loads 1 constant.
  It jumps to `mMatrixMultCCW`.
  Constants loaded: 0x10000.
- `mgeb_Rotate_Modelview`: address 0xbd4e, `matrixfunc.S` line 546 (8 words). Reached: geif slot 75 (entry 151); the ARM functions that send it are in the table below; distributor table 10.
  **Inferred** role: GL rotate call for the modelview matrix: selects it and enters the rotate routine.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3).
  It jumps to `mRotate`.
- `mgeb_Rotate_Projection`: address 0xbd3f, `matrixfunc.S` line 574 (7 words). Reached: geif slot 76 (entry 153); the ARM functions that send it are in the table below.
  **Inferred** role: GL rotate call for the projection matrix.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2).
  It jumps to `mRotate`.
- `mgeb_Rotate_Texture`: address 0xbd31, `matrixfunc.S` line 596 (9 words). Reached: geif slot 77 (entry 155); the ARM functions that send it are in the table below.
  **Inferred** role: GL rotate call for the texture matrix.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2); loads 1 constant.
  It jumps to `mRotate`.
  Constants loaded: 0xf494 (code in `mmo_DirtyTextureAndScreenModule`).
- `mgeb_Rotate_Color`: address 0xbd23, `matrixfunc.S` line 622 (10 words). Reached: geif slot 74 (entry 149); the ARM functions that send it are in the table below.
  **Inferred** role: GL rotate call for the colour matrix.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1), operation 0x6d1 (1); loads 1 constant.
  It jumps to `mRotate`.
  Constants loaded: 0x10000.
- `mgeb_Scale_Modelview`: address 0xbd05, `matrixfunc.S` line 651 (28 words). Reached: geif slot 78 (entry 157); the ARM functions that send it are in the table below; distributor table 11.
  **Inferred** role: GL scale call for the modelview matrix: twelve multiplies by the three operand words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations float multiply (12), move (2).
  It jumps within its own code.
- `mgeb_Scale_Projection`: address 0xbce6, `matrixfunc.S` line 695 (29 words). Reached: geif slot 79 (entry 159); the ARM functions that send it are in the table below.
  **Inferred** role: GL scale call for the projection matrix, with the fog table update.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations float multiply (12), move (1); takes 1 conditional transfer.
  It jumps within its own code; conditional transfers reach `mResolveFogTable`.
- `mgeb_Scale_Texture`: address 0xbcc8, `matrixfunc.S` line 743 (30 words). Reached: geif slot 80 (entry 161); the ARM functions that send it are in the table below.
  **Inferred** role: GL scale call for the texture matrix.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations float multiply (12), move (1); loads 1 constant.
  It jumps within its own code.
  Constants loaded: 0xf494 (code in `mmo_DirtyTextureAndScreenModule`).
- `mgeb_Scale_Color`: address 0xbca7, `matrixfunc.S` line 775 (32 words). Reached: geif slot 170 (entry 341); the ARM functions that send it are in the table below.
  **Inferred** role: GL scale call for the colour matrix.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations float multiply (12), operation 0x6d1 (1); loads 1 constant.
  It jumps within its own code.
  Constants loaded: 0x10000.
- `mgeb_Translate_Modelview`: address 0xbc89, `matrixfunc.S` line 823 (27 words). Reached: geif slot 85 (entry 171); the ARM functions that send it are in the table below; distributor table 12.
  **Inferred** role: GL translate call for the modelview matrix: multiply-adds of the three operand words into the last column.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations float add (8), float multiply (8), float multiply-add (4), move (2).
  It ends with the end-of-command wait.
- `mgeb_Translate_Projection`: address 0xbc6a, `matrixfunc.S` line 872 (28 words). Reached: geif slot 86 (entry 173); the ARM functions that send it are in the table below.
  **Inferred** role: GL translate call for the projection matrix, with the fog table update.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations float add (8), float multiply (8), float multiply-add (4), move (1); takes 1 conditional transfer.
  It ends with the end-of-command wait; conditional transfers reach `mResolveFogTable`.
- `mgeb_Translate_Texture`: address 0xbc4b, `matrixfunc.S` line 920 (29 words). Reached: geif slot 87 (entry 175); the ARM functions that send it are in the table below.
  **Inferred** role: GL translate call for the texture matrix.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations float add (8), float multiply (8), float multiply-add (4), move (1); loads 1 constant.
  It ends with the end-of-command wait.
  Constants loaded: 0xf494 (code in `mmo_DirtyTextureAndScreenModule`).
- `mgeb_Translate_Color`: address 0xbc2b, `matrixfunc.S` line 966 (30 words). Reached: geif slot 173 (entry 347); the ARM functions that send it are in the table below.
  **Inferred** role: GL translate call for the colour matrix.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations float add (8), float multiply (8), float multiply-add (4), operation 0x6d1 (1); loads 1 constant.
  It ends with the end-of-command wait.
  Constants loaded: 0x10000.
- `mgeb_Frustum_Modelview`: address 0xbc1b, `matrixfunc.S` line 1016 (8 words). Reached: geif slot 151 (entry 303); the ARM functions that send it are in the table below; distributor table 5.
  **Inferred** role: GL frustum call applied to the modelview matrix.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3).
  It jumps to `mFrustum`.
- `mgeb_Frustum_Projection`: address 0xbc0c, `matrixfunc.S` line 1044 (7 words). Reached: geif slot 16 (entry 33); the ARM functions that send it are in the table below.
  **Inferred** role: GL frustum call applied to the projection matrix.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2).
  It jumps to `mFrustum`.
- `mgeb_Frustum_Texture`: address 0xbbfe, `matrixfunc.S` line 1066 (9 words). Reached: geif slot 17 (entry 35); the ARM functions that send it are in the table below.
  **Inferred** role: GL frustum call applied to the texture matrix.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2); loads 1 constant.
  It jumps to `mFrustum`.
  Constants loaded: 0xf494 (code in `mmo_DirtyTextureAndScreenModule`).
- `mgeb_Frustum_Color`: address 0xbbf0, `matrixfunc.S` line 1092 (10 words). Reached: geif slot 150 (entry 301); the ARM functions that send it are in the table below.
  **Inferred** role: GL frustum call applied to the colour matrix.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1), operation 0x6d1 (1); loads 1 constant.
  It jumps to `mFrustum`.
  Constants loaded: 0x10000.
- `mgeb_Ortho_Modelview`: address 0xbbe0, `matrixfunc.S` line 1121 (8 words). Reached: geif slot 56 (entry 113); the ARM functions that send it are in the table below; distributor table 7.
  **Inferred** role: GL ortho call applied to the modelview matrix.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3).
  It jumps to `mOrtho`.
- `mgeb_Ortho_Projection`: address 0xbbd1, `matrixfunc.S` line 1149 (7 words). Reached: geif slot 57 (entry 115); the ARM functions that send it are in the table below.
  **Inferred** role: GL ortho call applied to the projection matrix.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2).
  It jumps to `mOrtho`.
- `mgeb_Ortho_Texture`: address 0xbbc3, `matrixfunc.S` line 1171 (9 words). Reached: geif slot 58 (entry 117); the ARM functions that send it are in the table below.
  **Inferred** role: GL ortho call applied to the texture matrix.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2); loads 1 constant.
  It jumps to `mOrtho`.
  Constants loaded: 0xf494 (code in `mmo_DirtyTextureAndScreenModule`).
- `mgeb_Ortho_Color`: address 0xbbb5, `matrixfunc.S` line 1197 (10 words). Reached: geif slot 159 (entry 319); the ARM functions that send it are in the table below.
  **Inferred** role: GL ortho call applied to the colour matrix.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1), operation 0x6d1 (1); loads 1 constant.
  It jumps to `mOrtho`.
  Constants loaded: 0x10000.
- `mgeb_PushMatrix_Modelview`: address 0xbb81, `matrixfunc.S` line 1226 (44 words). Reached: geif slot 71 (entry 143); the ARM functions that send it are in the table below; distributor table 9.
  **Inferred** role: GL push matrix call for the modelview stack: checks the depth (stack-overflow error) and copies 16 words to the stack in engine memory.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (17), integer add (1), integer subtract or compare (1); sets the condition flags once; loads 2 constants; takes 1 conditional transfer.
  It ends with the end-of-command wait; conditional transfers reach `mErrStackOverflow`.
  Constants loaded: 0x892, 0x10.
- `mgeb_PushMatrix_Projection`: address 0xbb45, `matrixfunc.S` line 1291 (46 words). Reached: geif slot 72 (entry 145); the ARM functions that send it are in the table below.
  **Inferred** role: GL push matrix call for the projection stack.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (17), integer add (1), integer subtract or compare (1); sets the condition flags once; loads 2 constants; takes 2 conditional transfers.
  It ends with the end-of-command wait; conditional transfers reach `mErrStackOverflow` and 1 other label.
  Constants loaded: 0x8b2, 0x10.
- `mgeb_PushMatrix_Texture`: address 0xbb0a, `matrixfunc.S` line 1355 (45 words). Reached: geif slot 73 (entry 147); the ARM functions that send it are in the table below.
  **Inferred** role: GL push matrix call for the texture stack.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (17), integer add (1), integer subtract or compare (1); sets the condition flags once; loads 2 constants; takes 1 conditional transfer.
  It ends with the end-of-command wait; conditional transfers reach `mErrStackOverflow`.
  Constants loaded: 0x8d2, 0x10.
- `mgeb_PushMatrix_Color`: address 0xbacd, `matrixfunc.S` line 1418 (47 words). Reached: geif slot 70 (entry 141); the ARM functions that send it are in the table below.
  **Inferred** role: GL push matrix call for the colour stack.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (18), integer add (1), integer subtract or compare (1); sets the condition flags once; loads 2 constants; takes 1 conditional transfer.
  It ends with the end-of-command wait; conditional transfers reach `mErrStackOverflow`.
  Constants loaded: 0x8f2, 0x10.
- `mgeb_PopMatrix_Modelview`: address 0xba88, `matrixfunc.S` line 1488 (46 words). Reached: geif slot 67 (entry 135); the ARM functions that send it are in the table below; distributor table 8.
  **Inferred** role: GL pop matrix call for the modelview stack: checks the depth (stack-underflow error) and copies 16 words back.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (18), integer subtract or compare (2); sets the condition flags once; loads 2 constants; takes 1 conditional transfer.
  It jumps within its own code; conditional transfers reach `mErrStackUnderflow`.
  Constants loaded: 0x6a2, 0x10.
- `mgeb_PopMatrix_Projection`: address 0xba3a, `matrixfunc.S` line 1553 (47 words). Reached: geif slot 68 (entry 137); the ARM functions that send it are in the table below.
  **Inferred** role: GL pop matrix call for the projection stack.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (17), integer subtract or compare (2); sets the condition flags once; loads 2 constants; takes 2 conditional transfers.
  It ends with the end-of-command wait; conditional transfers reach `mErrStackUnderflow` and 1 other label.
  Constants loaded: 0x8a2, 0x10.
- `mgeb_PopMatrix_Texture`: address 0xb9ed, `matrixfunc.S` line 1622 (47 words). Reached: geif slot 69 (entry 139); the ARM functions that send it are in the table below.
  **Inferred** role: GL pop matrix call for the texture stack.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (17), integer subtract or compare (2); sets the condition flags once; loads 3 constants; takes 1 conditional transfer.
  It jumps within its own code; conditional transfers reach `mErrStackUnderflow`.
  Constants loaded: 0x8c2, 0x10, 0xf494 (code in `mmo_DirtyTextureAndScreenModule`).
- `mgeb_PopMatrix_Color`: address 0xb99d, `matrixfunc.S` line 1692 (50 words). Reached: geif slot 66 (entry 133); the ARM functions that send it are in the table below.
  **Inferred** role: GL pop matrix call for the colour stack.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (16), integer subtract or compare (2), AND (1), OR (1), operation 0x6d1 (1); sets the condition flags once; loads 3 constants; takes 1 conditional transfer.
  It ends with the end-of-command wait; conditional transfers reach `mErrStackUnderflow`.
  Constants loaded: 0x8e2, 0x10, 0x10000.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgeb_MatrixMode` | 51 | `arm_matrixmode`, `xform_init` | `HP_MATRIXMODE` |
| `mgeb_LoadIdentity_Modelview` | 44 | `arm_matrixmode`, `init_ged`, `xform_init`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_LoadIdentity_Projection` | 45 | `arm_matrixmode`, `xform_init`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_LoadIdentity_Texture` | 46 | `arm_matrixmode`, `xform_init`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_LoadIdentity_Color` | 43 | `arm_loadidentity` |  |
| `mgeb_LoadMatrix_Modelview` | 48 | `arm_getpolygonstipple`, `arm_matrixmode`, `init_ged`, `xform_init`, `xform_restore` | `HP_GETPOLYGONSTIPPLE`, `HP_MATRIXMODE` |
| `mgeb_LoadMatrix_Projection` | 49 | `arm_getpolygonstipple`, `arm_matrixmode`, `xform_restore` | `HP_GETPOLYGONSTIPPLE`, `HP_MATRIXMODE` |
| `mgeb_LoadMatrix_Texture` | 50 | `arm_matrixmode`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_LoadMatrix_Color` | 47 | `arm_loadmatrixd`, `arm_loadmatrixf` |  |
| `mgeb_MultMatrix_Modelview` | 53 | `arm_matrixmode`, `init_ged`, `xform_init`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_MultMatrix_Projection` | 54 | `arm_matrixmode`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_MultMatrix_Texture` | 55 | `arm_matrixmode`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_MultMatrix_Color` | 52 | `arm_multmatrixd`, `arm_multmatrixf` |  |
| `mgeb_Rotate_Modelview` | 75 | `arm_matrixmode`, `init_ged`, `xform_init`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_Rotate_Projection` | 76 | `arm_matrixmode`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_Rotate_Texture` | 77 | `arm_matrixmode`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_Rotate_Color` | 74 | `arm_rotated`, `arm_rotatef` |  |
| `mgeb_Scale_Modelview` | 78 | `arm_matrixmode`, `init_ged`, `xform_init`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_Scale_Projection` | 79 | `arm_matrixmode`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_Scale_Texture` | 80 | `arm_matrixmode`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_Scale_Color` | 170 | `arm_scaled`, `arm_scalef` |  |
| `mgeb_Translate_Modelview` | 85 | `init_ged`, `xform_init` |  |
| `mgeb_Translate_Projection` | 86 | `arm_matrixmode`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_Translate_Texture` | 87 | `arm_matrixmode`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_Translate_Color` | 173 | `arm_translated`, `arm_translatef` |  |
| `mgeb_Frustum_Modelview` | 151 | `arm_matrixmode`, `init_ged`, `xform_init`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_Frustum_Projection` | 16 | `arm_matrixmode`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_Frustum_Texture` | 17 | `arm_matrixmode`, `init_ged_ucode`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_Frustum_Color` | 150 | `arm_frustum` |  |
| `mgeb_Ortho_Modelview` | 56 | `arm_matrixmode`, `init_ged`, `xform_init`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_Ortho_Projection` | 57 | `arm_matrixmode`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_Ortho_Texture` | 58 | `arm_matrixmode`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_Ortho_Color` | 159 | `arm_ortho` |  |
| `mgeb_PushMatrix_Modelview` | 71 | `arm_matrixmode`, `init_ged`, `xform_init`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_PushMatrix_Projection` | 72 | `arm_matrixmode`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_PushMatrix_Texture` | 73 | `arm_matrixmode`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_PushMatrix_Color` | 70 | `arm_pushmatrix` |  |
| `mgeb_PopMatrix_Modelview` | 67 | `arm_matrixmode`, `init_ged`, `xform_init`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_PopMatrix_Projection` | 68 | `arm_matrixmode`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_PopMatrix_Texture` | 69 | `arm_matrixmode`, `xform_restore` | `HP_MATRIXMODE` |
| `mgeb_PopMatrix_Color` | 66 | `arm_popmatrix` |  |

### mcolormatrix.S

Pixel-path colour-matrix stage, added by AddColorMatrix. **Inferred** from its labels and callers.

- `mmo_ColorMatrix`: address 0x9767, `mcolormatrix.S` line 55 (43 words). Reached: geif slot 253 (entry 507); the ARM functions that send it are in the table below.
  **Inferred** role: pixel-path colour-matrix stage: reads the matrix from engine memory 0xbda-0xbe1 and multiplies, then the inner routine.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (16), move (11); reads engine memory at 8 addresses from 0xbda to 0xbe1.
  It jumps to `uColorMatrix`.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mmo_ColorMatrix` | 253 | `AddColorMatrix` |  |

### mcomporder.S

Pixel-path component-order reversal, added by AddCompOrder. **Inferred** from its labels and callers.

- `mmo_ReverseComp4Order`: address 0x6b2f, `mcomporder.S` line 65 (62 words). Reached: geif slot 280 (entry 561); the ARM functions that send it are in the table below.
  **Inferred** role: pixel-path stage that reverses the order of four components (ABGR to RGBA): moves in three loops.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (39); reads engine memory at 3 addresses from 0xbae to 0xbb0; closes 3 loops.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mmo_ReverseComp4Order` | 280 | `AddCompOrder` |  |

### mdecompose2.S

Primitive decomposition: triangle strips, quads, quad strips, polygons, simple triangles. **Inferred** from its labels and callers.

- `mmo_DummyDecompose`: address 0xca01, `mdecompose2.S` line 37 (7 words). Reached: its address loaded as a constant in `mdc_multipass` and 13 other labels.
  **Inferred** role: decomposition that draws nothing: loads the triangle clipper's address and ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2); loads 1 constant.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xed52 (code in `mClipTriUserAndFrustum`).
- `mmo_DecomposePolygon`: address 0xca86, `mdecompose2.S` line 53 (37 words). Reached: its address loaded as a constant in `mgesi_TfanPoly` and 6 other labels.
  **Inferred** role: polygon decomposition into triangles for the clipper.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (8), OR (5), AND (3); sets the condition flags once; loads 6 constants; takes 2 conditional transfers.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `mmo_AbortGeometry`.
  Constants loaded: 0xed52 (code in `mClipTriUserAndFrustum`), -2.0 (0xc0000000), 0.
- `mmo_DecomposeQuads`: address 0xca3a, `mdecompose2.S` line 132 (37 words). Reached: its address loaded as a constant in `mgesi_Quads`.
  **Inferred** role: independent-quad decomposition into triangles.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations OR (6), AND (4), arithmetic shift right (1), move (1); loads 11 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `mmo_AbortGeometry`.
  Constants loaded: 0, 0x2, 0xed52 (code in `mClipTriUserAndFrustum`), -2.0 (0xc0000000), 0x7800, 0x6000.
- `mmo_DummyDecomposeQuadStrip`: address 0xc9e1, `mdecompose2.S` line 222 (31 words). Reached: its address loaded as a constant in `mgesi_QuadStrip` and 3 other labels.
  **Inferred** role: quad-strip decomposition step that only advances the vertex count.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations integer add (4), move (4); sets the condition flags 2 times; loads 3 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `mmo_AbortGeometry`.
  Constants loaded: 0xed52 (code in `mClipTriUserAndFrustum`), 0x6000, 0x6800.
- `mmo_DecomposeQuadStrip`: address 0xca60, `mdecompose2.S` line 281 (34 words). Reached: its address loaded as a constant in `mgesi_QuadStrip` and 3 other labels.
  **Inferred** role: quad-strip decomposition into triangles.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations integer add (2), move (2); sets the condition flags once; loads 11 constants; takes 2 conditional transfers.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `mmo_AbortGeometry`.
  Constants loaded: 0xed52 (code in `mClipTriUserAndFrustum`), 0x6000, 0x6800, 0, -12.0 (0xc1400000).
- `mmo_DecomposeSimpleTriangles`: address 0xca10, `mdecompose2.S` line 350 (38 words). Reached: its address loaded as a constant in `mgesi_Triangles`.
  **Inferred** role: independent-triangle decomposition.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (6), OR (6), float multiply (1), float-to-integer conversion (1), integer-to-float conversion (1), move (1), operation 0x6f7 (1); loads 6 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `mmo_AbortGeometry`.
  Constants loaded: 0.334 (0x3eab020c), 0, -2.0 (0xc0000000), 0xed52 (code in `mClipTriUserAndFrustum`).
- `mmo_DecomposeTriangleStripWithSwapEven`: address 0xc9b2, `mdecompose2.S` line 410 (34 words). Reached: its address loaded as a constant in `mgesi_TriangleStrip` and 3 other labels.
  **Inferred** role: triangle-strip decomposition with the vertex swap on even triangles.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3), AND (2), operation 0x6d1 (2), OR (1), XOR (1); sets the condition flags 2 times; loads 5 constants; takes 2 conditional transfers.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `mmo_AbortGeometry`.
  Constants loaded: 0xed52 (code in `mClipTriUserAndFrustum`), 0x10000000, 0.
- `mmo_DecomposeTriangleStripWithSwapOdd`: address 0xc989, `mdecompose2.S` line 501 (26 words). Reached: its address loaded as a constant in `mgesi_TriangleStripRestoreSaveWithSwapOdd` and 3 other labels.
  **Inferred** role: triangle-strip decomposition with the vertex swap on odd triangles.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4), AND (1), XOR (1); sets the condition flags once; loads 4 constants; takes 2 conditional transfers.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `mmo_AbortGeometry`.
  Constants loaded: 0xed52 (code in `mClipTriUserAndFrustum`), 0x10000000, 0.

### mdecompress.S

Pixel-path 16-bit depth decompression, added by AddDecompressZ. **Inferred** from its labels and callers.

- `mmo_DecompressZ16`: address 0x9793, `mdecompress.S` line 68 (106 words). Reached: geif slot 255 (entry 511); the ARM functions that send it are in the table below.
  **Inferred** role: pixel-path stage that expands compressed 16-bit depth: masks and compares on 12- and 13-bit fields.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (18), OR (16), integer subtract or compare (16), shift left (16), AND (8), logical shift right (8), integer add (1); sets the condition flags 8 times; reads engine memory at 4 addresses from 0xbf2 to 0xbf5; loads 4 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xfffff000, 0xffffe000, 0x13, 0xfff.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mmo_DecompressZ16` | 255 | `AddDecompressZ` |  |

### memove.S

Memory moves between ERAM, WRAM and CRAM. **Inferred** from its labels and callers.

- `mCramToWram`: address 0xd4a2, `memove.S` line 32 (16 words). Reached: no slot, ARM load, decoded transfer or address constant reaches it (routes tried: [How to read the tables](#how-to-read-the-entries)).
  **Inferred** role: copy from coefficient to working memory; nothing in the program calls it.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2); takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mEramToWram`: address 0xd45d, `memove.S` line 68 (18 words). Reached: transfers in `RestoreClipState` and 5 other labels.
  **Inferred** role: copy from external to working memory, returning to the caller.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2); takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mEramToEram`: address 0xd47f, `memove.S` line 108 (24 words). Reached: transfers in `mLiUpdateShin` and 1 other label.
  **Inferred** role: copy within external memory, returning to the caller.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6); takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).

### mexpand.S

32-bit expansion stages for 1- and 2-component pixels. **Inferred** from its labels and callers.

- `mmo_Expand32_1_4`: address 0x6c55, `mexpand.S` line 43 (53 words). Reached: geif slot 257 (entry 515).
  **Inferred** role: expands 32-bit pixels from one to four components.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (37); closes 1 loop.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_Expand32_2_4`: address 0x6c0b, `mexpand.S` line 132 (52 words). Reached: geif slot 258 (entry 517).
  **Inferred** role: expands 32-bit pixels from two to four components.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (36); closes 1 loop.
  It ends the command with an indirect transfer in condition group 31.

### mextract.S

Pixel-path L12A4 extraction, added by AddExtract. **Inferred** from its labels and callers.

- `mmo_ExtractL12A4`: address 0x91e3, `mextract.S` line 71 (143 words). Reached: geif slot 282 (entry 565); the ARM functions that send it are in the table below.
  **Inferred** role: extracts 12-bit luminance and 4-bit alpha from packed pixels with masks.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (66), AND (18), logical shift right (18); reads engine memory at 21 addresses from 0xbc0 to 0xbd4; closes 3 loops.
  It ends the command with an indirect transfer in condition group 31.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mmo_ExtractL12A4` | 282 | `AddExtract` |  |

### minmax.s

Pixel-path min-max stage, added by AddMinMax (software/ucode/ge_ops.md, "Settling the ties"). **Inferred** from its labels and callers.

- `mmo_Minmax`: address 0x143e, `minmax.s` line 62 (52 words). Reached: geif slot 298 (entry 597); the ARM functions that send it are in the table below.
  **Inferred** role: pixel-path minmax stage: set-up, then its loop of minimum and maximum.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (29); closes 1 loop.
  It has no jump of its own and runs on into `mainloop_mm`.
- `umo_Minmax`: address 0x143e, `minmax.s` line 62 (52 words). Reached: second name for `mmo_Minmax` at the same address, so the same code.
  **Inferred** role: pixel-path minmax stage: set-up, then its loop of minimum and maximum.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (29); closes 1 loop.
  It has no jump of its own and runs on into `mainloop_mm`.
- `mainloop_mm`: address 0x1472, `minmax.s` line 129 (27 words). Reached: inside `mmo_Minmax`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations maximum (12), minimum (12); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_mm`.
- `epilogue_mm`: address 0x148d, `minmax.s` line 159 (139 words). Reached: transfers in `mmo_Minmax`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations maximum (36), minimum (36), move (24); closes 3 loops.
  It has no jump of its own and runs on into `merge2_mm`.
- `merge2_mm`: address 0x1518, `minmax.s` line 318 (54 words). Reached: inside `mmo_Minmax`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations maximum (14), minimum (14).
  It ends the command with an indirect transfer in condition group 31.
- `merge1_mm`: address 0x154e, `minmax.s` line 381 (49 words). Reached: transfers in `epilogue_mm`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations maximum (12), minimum (12).
  It ends the command with an indirect transfer in condition group 31.
- `merge3_mm`: address 0x157f, `minmax.s` line 438 (46 words). Reached: transfers in `epilogue_mm`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations maximum (12), minimum (12).
  It ends the command with an indirect transfer in condition group 31.
- `merge4_mm`: address 0x15ad, `minmax.s` line 492 (46 words). Reached: transfers in `epilogue_mm`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations maximum (12), minimum (12).
  It ends the command with an indirect transfer in condition group 31.
- `uge_MinmaxFill`: address 0x15db, `minmax.s` line 544 (30 words). Reached: inside `mmo_Minmax`, reached from that routine's own code.
  **Inferred** role: second entry inside the minmax stage that seeds the minimum and maximum from six operand words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 8; operations move (6), maximum (3), minimum (3).
  It ends with the end-of-command wait.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mmo_Minmax` | 298 | `AddMinMax` |  |

### mmath.S

Sine and cosine of two angles. **Inferred** from its labels and callers.

- `mSinCosAB`: address 0xd23f, `mmath.S` line 115 (119 words). Reached: transfers in `DrawMSTFanPnt` and 1 other label.
  **Inferred** role: sine and cosine of an angle range: series terms by multiplies and subtracts.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (33), float subtract (33), float add (9), double subtract (6), move (6), operation 0x6b5 (6), second-unit operation 0x5ff (6); sets the condition flags 9 times.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).

### mmatrix.S

4x4 matrix multiply, CRAM by CRAM into CRAM. **Inferred** from its labels and callers.

- `mMatrixMultCCC`: address 0xe8a6, `mmatrix.S` line 36 (343 words). Reached: transfers in `mgebi_ReferencePlane`.
  **Inferred** role: matrix multiply in coefficient memory: 101 multiplies and 63 adds, then a return.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (101), float add (63), move (51), float subtract (44), float multiply-add (25), reciprocal Newton step (2), reciprocal seed (1); sets the condition flags once; loads 1 constant.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31); jumps within its own code.
  Constants loaded: 0.5 (0x3f000000).

### mmemove.S

Memory moves from WRAM to CRAM and to the output FIFO. **Inferred** from its labels and callers.

- `mWramToCram`: address 0xd191, `mmemove.S` line 33 (17 words). Reached: transfers in `mgeb_ContextLoadCram` and 1 other label.
  **Inferred** role: copy from working to coefficient memory, returning to the caller.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6); takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mWramToFifo`: address 0xd1a9, `mmemove.S` line 271 (102 words). Reached: transfers in `mges_ContextDeactGED` and 2 other labels.
  **Inferred** role: copy from working memory out through the FIFO: complemented control words and raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (19), NOT (6); writes 3 words to the raster-bus output addresses; takes 6 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).

### mpixelSetup.S

Pixel-path set-up: stream distribution to the next engine, CRAM/ERAM copies, integer-to-float and shift skips. **Inferred** from its labels and callers.

- `mgesi_PixRasterPosSetup`: address 0xa990, `mpixelSetup.S` line 143 (315 words). Reached: geif slot 106 (entry 213); the ARM functions that send it are in the table below.
  **Inferred** role: pixel raster-position set-up: nine operand words turned into the pixel rectangle and zoom terms.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 8; operations move (89), float add (23), float multiply (18), AND (9), integer-to-float conversion (9), OR (5), integer subtract or compare (5), float subtract (4), float-to-integer conversion (4), maximum (2), minimum (2), operation 0x6e1 (2), operation 0x6e4 (2), operation 0x6f9 (2), shift left (2), NOT (1); sets the condition flags 14 times; reads engine memory at 0x20; loads 81 constants; takes 7 conditional transfers.
  It ends the command with an indirect transfer in condition group 31; waits on its own address under another condition group; jumps within its own code.
  Constants loaded: 0, 0x400, 0x2, 49152.0 (0x47400000), 8.0 (0x41000000), 0x2103000, 0x3fc2, 0xf0000 and 57 more.
- `mgesi_PixQueryCopyOverlap`: address 0xa8f7, `mpixelSetup.S` line 667 (93 words). Reached: geif slot 213 (entry 427); the ARM functions that send it are in the table below.
  **Inferred** role: checks whether a pixel copy's source and destination overlap.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 4; operations move (16), float subtract (12), float add (9), integer add (9), integer-to-float conversion (5), float-to-integer conversion (3), AND (2), OR (2), float multiply (2), integer subtract or compare (2), maximum (2), minimum (2), operation 0x6e4 (2), shift left (1); sets the condition flags 18 times; loads 8 constants; takes 4 conditional transfers.
  It waits on its own address under another condition group; jumps within its own code.
  Constants loaded: 0.0009765625 (0x3a800000), 0x3, 40.0 (0x42200000), 0x2103000, 0x430, 0x434, 142.0 (0x430e0000), 0x10.
- `mgeb_StrideEramToCram`: address 0xa8bb, `mpixelSetup.S` line 840 (44 words). Reached: geif slot 172 (entry 345).
  **Inferred** role: copies a strided block from external to coefficient memory.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations move (6); takes 1 conditional transfer.
  It waits on its own address under another condition group.
- `mgeb_FlipXConvKern`: address 0xa864, `mpixelSetup.S` line 906 (53 words). Reached: geif slot 148 (entry 297); the ARM functions that send it are in the table below.
  **Inferred** role: flips a convolution kernel in x.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations move (15), second-unit move or minimum (6), integer subtract or compare (3), arithmetic shift right (1), integer add (1), shift left (1); sets the condition flags once; loads 1 constant; takes 2 conditional transfers.
  It waits on its own address under another condition group.
  Constants loaded: 0x1.
- `mgeb_FlipYConvKern`: address 0xa7fe, `mpixelSetup.S` line 992 (61 words). Reached: geif slot 149 (entry 299); the ARM functions that send it are in the table below.
  **Inferred** role: flips a convolution kernel in y.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations move (18), second-unit move or minimum (6), integer subtract or compare (5), arithmetic shift right (1), second-unit operation 0xff (1); sets the condition flags once; loads 1 constant; takes 2 conditional transfers.
  It waits on its own address under another condition group.
  Constants loaded: 0.
- `mgeb_BitmapApplyOrig`: address 0xa7e8, `mpixelSetup.S` line 1076 (11 words). Reached: geif slot 1 (entry 3); the ARM functions that send it are in the table below.
  **Inferred** role: GL bitmap call origin: subtracts the origin operands from the raster position.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations float subtract (2).
  It waits on its own address under another condition group.
- `mgeb_BitmapApplyMove`: address 0xa7cf, `mpixelSetup.S` line 1108 (14 words). Reached: geif slot 2 (entry 5); the ARM functions that send it are in the table below.
  **Inferred** role: GL bitmap call move: adds the move operands to the raster position.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations float add (4).
  It waits on its own address under another condition group.
- `mgeb_PixDrawColorSetup`: address 0xa7aa, `mpixelSetup.S` line 1151 (16 words). Reached: geif slot 59 (entry 119); the ARM functions that send it are in the table below.
  **Inferred** role: draw-colour set-up for a pixel operation: tests the operand and branches.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations move (5); sets the condition flags once; takes 1 conditional transfer.
  It ends with the end-of-command wait; conditional transfers reach `uEvalSaveState`.
- `mgeb_PixLastGECounterSetup`: address 0xa79b, `mpixelSetup.S` line 1197 (9 words). Reached: geif slot 403 (entry 807); the ARM functions that send it are in the table below.
  **Inferred** role: sets the last-engine counter of a pixel stream from its operand (converted to float, minus 0.5).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations float subtract (1), integer-to-float conversion (1); loads 1 constant.
  It ends with the end-of-command wait.
  Constants loaded: 0.5 (0x3f000000).
- `mgebi_PixCurGEIDSetup`: address 0xa77f, `mpixelSetup.S` line 1226 (22 words). Reached: geif slot 121 (entry 243); the ARM functions that send it are in the table below.
  **Inferred** role: sets the current-engine identity of a pixel stream: raster constants.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6); loads 5 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x10f087f, 40.0 (0x42200000), 0xffffffff, 0x2202000, 0x70000.
- `mgeb_PixPolygonStippleSetup`: address 0xa75f, `mpixelSetup.S` line 1277 (14 words). Reached: geif slot 62 (entry 125); the ARM functions that send it are in the table below.
  **Inferred** role: polygon-stipple pixel set-up: tests one flag.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3); sets the condition flags once; loads 1 constant; takes 1 conditional transfer.
  It waits on its own address under another condition group; conditional transfers reach `uEvalSaveState`.
  Constants loaded: 0x1.
- `mgeb_TransparentBitmapSetup`: address 0xa747, `mpixelSetup.S` line 1306 (14 words). Reached: geif slot 88 (entry 177); the ARM functions that send it are in the table below.
  **Inferred** role: transparent-bitmap set-up: subtracts two operand words from the raster position.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations float subtract (2), move (1).
  It waits on its own address under another condition group.
- `DoFlushPGPCache`: address 0xa71e, `mpixelSetup.S` line 1328 (34 words). Reached: transfers in `mgebi_PixEndTransparentBitmap` and 1 other label.
  **Inferred** role: flushes the pixel-path cache: eight raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (16); writes 8 words to the raster-bus output addresses; loads 5 constants.
  It waits on its own address under another condition group.
  Constants loaded: 0x70000, 0x1661410, 0x3ff1 (code in `mgeb_PixMapOutputI`), 0x1243fd3, 0x1133fc2.
- `mgesi_FlushPGPCache`: address 0xa715, `mpixelSetup.S` line 1376 (5 words). Reached: geif slot 398 (entry 797); the ARM functions that send it are in the table below.
  **Inferred** role: command that flushes the pixel-path cache through the common flush code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It jumps to `DoFlushPGPCache`.
- `mgebi_PixEndTransparentBitmap`: address 0xa6ff, `mpixelSetup.S` line 1391 (11 words). Reached: geif slot 96 (entry 193); the ARM functions that send it are in the table below.
  **Inferred** role: ends a transparent bitmap: advances the raster position, then the cache flush.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations float add (2).
  It jumps to `DoFlushPGPCache`.
- `mgeb_PixEndRGBStream`: address 0xa6e8, `mpixelSetup.S` line 1419 (23 words). Reached: geif slot 61 (entry 123); the ARM functions that send it are in the table below.
  **Inferred** role: ends an RGB pixel stream: one raster bus word.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float-to-integer conversion (10), NOT (2), move (2); writes 1 word to the raster-bus output addresses; loads 2 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x70000, 0x14.
- `mgeb_PixEndPolygonStipple`: address 0xa6db, `mpixelSetup.S` line 1464 (8 words). Reached: geif slot 60 (entry 121); the ARM functions that send it are in the table below.
  **Inferred** role: ends a polygon-stipple pixel operation.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It waits on its own address under another condition group.
- `mgesi_PixConv5GVEntry`: address 0xa6be, `mpixelSetup.S` line 1513 (23 words). Reached: geif slot 105 (entry 211).
  **Inferred** role: entry for the 5x5 convolution general-vertex path: counts and compares.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (5), integer add (2), integer subtract or compare (2), float-to-integer conversion (1); sets the condition flags once; loads 1 constant; takes 2 conditional transfers.
  It ends with the end-of-command wait.
  Constants loaded: 0x2.
- `mmo_PixLineNextGE`: address 0xa6ad, `mpixelSetup.S` line 1608 (15 words). Reached: geif slot 301 (entry 603); the ARM functions that send it are in the table below; transfers in `FastRowConv5Epilog`.
  **Inferred** role: hands a pixel line to the next engine: one raster bus word.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (5), NOT (2); writes 1 word to the raster-bus output addresses; loads 3 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x70000, 142.0 (0x430e0000), 40.0 (0x42200000).
- `mmo_SetupHip`: address 0xa62a, `mpixelSetup.S` line 1680 (98 words). Reached: geif slot 299 (entry 599); the ARM functions that send it are in the table below.
  **Inferred** role: sets up the host-interface side of a pixel operation: masks addresses to 4 KB pages (0xfffff000) and computes counts.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (42), integer add (6), AND (5), OR (2), logical shift right (2), second-unit operation 0xff (1); sets the condition flags once; writes 3 words to the raster-bus output addresses; reads engine memory at 4 addresses from 0xdc6 to 0xdc9; loads 21 constants.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0xc, 0xfffff000, 0xfff, 0, 0x7, 32.0 (0x42000000), 0x2103000, 0x400000 and 12 more.
- `mmo_PixStreamNextGE_BEFWAR`: address 0xa614, `mpixelSetup.S` line 1915 (22 words). Reached: geif slot 303 (entry 607); the ARM functions that send it are in the table below.
  **Inferred** role: hands a pixel stream to the next engine with the back-end workaround: three raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float-to-integer conversion (10), NOT (4), move (2); writes 3 words to the raster-bus output addresses; loads 1 constant.
  It ends with the end-of-command wait.
  Constants loaded: 0x70000.
- `mmo_PixStreamNextGE`: address 0xa60b, `mpixelSetup.S` line 1980 (6 words). Reached: geif slot 304 (entry 609); the ARM functions that send it are in the table below.
  **Inferred** role: hands a pixel stream to the next engine: two raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations NOT (2), move (1); writes 2 words to the raster-bus output addresses.
  It ends with the end-of-command wait.
- `mmo_PixStreamBrdcastCore0ANextGE`: address 0xa5fa, `mpixelSetup.S` line 1999 (11 words). Reached: geif slot 302 (entry 605); the ARM functions that send it are in the table below.
  **Inferred** role: hands a broadcast pixel stream to the next engine: one raster bus word.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4); writes 1 word to the raster-bus output addresses; loads 1 constant.
  It ends with the end-of-command wait.
  Constants loaded: 0x70000.
- `mgeb_LoadCram`: address 0xa5e8, `mpixelSetup.S` line 2032 (8 words). Reached: geif slot 41 (entry 83); the ARM functions that send it are in the table below.
  **Inferred** role: loads coefficient memory by calling the WRAM-to-CRAM copy.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0.
  It calls `mWramToCram`; ends with the end-of-command wait.
- `mgeb_CramToEram`: address 0xa5d4, `mpixelSetup.S` line 2054 (9 words). Reached: geif slot 412 (entry 825); the ARM functions that send it are in the table below.
  **Inferred** role: command that copies coefficient memory to external memory.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2.
  It calls `mCramToEram`; ends with the end-of-command wait.
- `mgeb_EramToCram`: address 0xa5c0, `mpixelSetup.S` line 2080 (9 words). Reached: geif slot 411 (entry 823); the ARM functions that send it are in the table below.
  **Inferred** role: command that copies external memory to coefficient memory.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2.
  It calls `mEramToCram`; ends with the end-of-command wait.
- `mgeb_EramToEram`: address 0xa5ac, `mpixelSetup.S` line 2107 (9 words). Reached: geif slot 142 (entry 285); the ARM functions that send it are in the table below.
  **Inferred** role: command that copies within external memory.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2.
  It calls `mEramToEram`; ends with the end-of-command wait.
- `mmo_CopyFifoLine`: address 0xab59, `mpixelSetup.S` line 2246 (50 words). Reached: geif slot 267 (entry 535); the ARM functions that send it are in the table below.
  **Inferred** role: copies one FIFO line: reads the five words the ARM wrote at 0xbfc-0xc00 and moves the data.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (20); sets the condition flags once; reads engine memory at 5 addresses from 0xbfc to 0xc00; takes 2 conditional transfers.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_Shift_Skip`: address 0xa570, `mpixelSetup.S` line 2433 (35 words). Reached: geif slot 438 (entry 877); the ARM functions that send it are in the table below.
  **Inferred** role: shift-and-skip pixel stage using the same five control words at 0xbfc-0xc00.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations logical shift right (8), move (5); reads engine memory at 5 addresses from 0xbfc to 0xc00; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_I2F_Scale_Skip`: address 0xa532, `mpixelSetup.S` line 2556 (38 words). Reached: geif slot 439 (entry 879); the ARM functions that send it are in the table below.
  **Inferred** role: integer-to-float scale-and-skip pixel stage using the five control words at 0xbfc-0xc00.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (8), integer-to-float conversion (8), move (5); reads engine memory at 5 addresses from 0xbfc to 0xc00; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgesi_PixRasterPosSetup` | 106 | `PixelRestore`, `SetupPGTG`, `arm_bitmap_dlist`, `do_bitmap` | `HP_BITMAP_DLIST` |
| `mgesi_PixQueryCopyOverlap` | 213 | `QueryOverlap` |  |
| `mgeb_FlipXConvKern` | 148 | `__glkonFixConvKernDirection` |  |
| `mgeb_FlipYConvKern` | 149 | `__glkonFixConvKernDirection` |  |
| `mgeb_BitmapApplyOrig` | 1 | `SetupGE_FFT`, `do_bitmap` |  |
| `mgeb_BitmapApplyMove` | 2 | `BitmapEndStream`, `arm_bitmap` | `HP_BITMAP` |
| `mgeb_PixDrawColorSetup` | 59 | `SetupGE_IndexStream`, `SetupGE_PerRect`, `X_PixSetupGE` |  |
| `mgeb_PixLastGECounterSetup` | 403 | `PixelRestore`, `SetupGE_FFT` |  |
| `mgebi_PixCurGEIDSetup` | 121 | `PixelRestore`, `SendPixelsToPipe`, `StartRbus`, `XPixelRestore`, `arm_x_pix_write` | `HP_X_PIX_WRITE` |
| `mgeb_PixPolygonStippleSetup` | 62 | `SetupGE_PolygonStipple` |  |
| `mgeb_TransparentBitmapSetup` | 88 | `arm_bitmap_dlist` | `HP_BITMAP_DLIST` |
| `mgesi_FlushPGPCache` | 398 | `BitmapEndStream`, `CommonPixEnd`, `PixEndConvolve`, `PixEndReadConvolve`, `PixEnd_FFT` |  |
| `mgebi_PixEndTransparentBitmap` | 96 | `arm_bitmap_dlist` | `HP_BITMAP_DLIST` |
| `mgeb_PixEndRGBStream` | 61 | `BitmapEndStream`, `CommonPixEnd`, `PixEndColorTable`, `PixEndReadConvolve`, `PixEndTexColorTable`, `PixEnd_FFT`, `arm_x_pix_copy`, `arm_x_pix_finish`, `arm_x_pix_read` | `HP_X_PIX_COPY`, `HP_X_PIX_FINISH`, `HP_X_PIX_READ` |
| `mgeb_PixEndPolygonStipple` | 60 | `PixEndConvolve`, `PixEndPolygonStipple` |  |
| `mmo_PixLineNextGE` | 301 | `loadColorPath`, `loadLuminancePath` |  |
| `mmo_SetupHip` | 299 | `AddHipSetter` |  |
| `mmo_PixStreamNextGE_BEFWAR` | 303 | `SetupGE_FFT`, `loadBitmapPath`, `loadColorPath`, `loadConvolutionReadPath`, `loadDepthPath`, `loadIndexPath`, `loadLuminancePath`, `loadShortCircuitPath`, `loadStencilPath` |  |
| `mmo_PixStreamNextGE` | 304 | `SetupGE_FFT`, `loadBitmapPath`, `loadColorPath`, `loadConvolutionReadPath`, `loadDepthPath`, `loadIndexPath`, `loadLuminancePath`, `loadShortCircuitPath`, `loadStencilPath` |  |
| `mmo_PixStreamBrdcastCore0ANextGE` | 302 | `loadColorTablePath`, `loadConvolutionPath`, `loadPolygonStipplePath` |  |
| `mgeb_LoadCram` | 41 | `SetupGE_FFT`, `WriteCram`, `XWriteCram`, `arm_slop` | `HP_SLOP` |
| `mgeb_CramToEram` | 412 | `CopyCramToEram` |  |
| `mgeb_EramToCram` | 411 | `CopyEramToCram` |  |
| `mgeb_EramToEram` | 142 | `mem_copydown_ge` |  |
| `mmo_CopyFifoLine` | 267 | `AddCopyFifoLine` |  |
| `mmo_Shift_Skip` | 438 | `AddShiftRealFifo` |  |
| `mmo_I2F_Scale_Skip` | 439 | `AddI2FScaleRealFifo` |  |

### mpixout.S

Pixel output stages for GL and X: component packing, polygon stipple, transparent and opaque bitmaps. **Inferred** from its labels and callers.

- `mmo_Pixout_8_16NC`: address 0xa44e, `mpixout.S` line 90 (85 words). Reached: geif slot 310 (entry 621).
  **Inferred** role: pixel output for 8- and 16-bit formats without the colour path: 48 multiplies and output words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (48), move (11); sets the condition flags 2 times; 1 word stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here); takes 4 conditional transfers.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `mLASTGE`.
- `mmo_Pixout_8_16`: address 0xa4b5, `mpixout.S` line 228 (27 words). Reached: geif slot 309 (entry 619).
  **Inferred** role: pixel output for 8- and 16-bit formats: tests the last block and engine, then the last-block code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (9); sets the condition flags 2 times; takes 2 conditional transfers.
  It jumps to `uPO_8_16C_LastBlck`; conditional transfers reach `mLASTGE` and 1 other label.
- `mmo_Pixout_2_4NC`: address 0xa407, `mpixout.S` line 308 (50 words). Reached: geif slot 312 (entry 625).
  **Inferred** role: pixel output for 2- and 4-component formats without the colour path.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (12), move (11); sets the condition flags 2 times; 1 word stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here); takes 4 conditional transfers.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `mLASTGE`.
- `mmo_Pixout_2_4`: address 0xa3e8, `mpixout.S` line 404 (27 words). Reached: geif slot 311 (entry 623).
  **Inferred** role: pixel output for 2- and 4-component formats.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (9); sets the condition flags 2 times; takes 2 conditional transfers.
  It jumps to `uPO_2_4C_LastBlck`; conditional transfers reach `mLASTGE` and 1 other label.
- `mmo_Pixout_RGB_in_RGBA`: address 0xa395, `mpixout.S` line 507 (60 words). Reached: geif slot 259 (entry 519).
  **Inferred** role: pixel output of RGB data in RGBA layout: clamps and scales in three loops.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations clamp at zero (20), float multiply (20), move (10); closes 3 loops.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mmo_Pixout_RGB_in_RGBANC`: address 0xa33f, `mpixout.S` line 595 (57 words). Reached: geif slot 260 (entry 521).
  **Inferred** role: pixel output of RGB data in RGBA layout without clamping: scaling multiplies in three loops.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (20), move (10); closes 3 loops.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mmo_Pixout_32`: address 0xa2d5, `mpixout.S` line 687 (102 words). Reached: geif slot 261 (entry 523).
  **Inferred** role: 32-bit pixel output: clamps and scales every component (64 of each) in its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations clamp at zero (64), float multiply (64), move (10); closes 1 loop.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mmo_Pixout_32NC`: address 0xa276, `mpixout.S` line 859 (92 words). Reached: geif slot 262 (entry 525).
  **Inferred** role: 32-bit pixel output without clamping: 64 scaling multiplies in its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (64), move (10); closes 1 loop.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mmo_PixoutCI_4_8`: address 0xa214, `mpixout.S` line 1034 (77 words). Reached: geif slot 306 (entry 613).
  **Inferred** role: colour-index pixel output for 4- and 8-bit indices: moves in three loops.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (56); 3 words stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here); closes 3 loops.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mmo_PixoutMerge2_4C`: address 0xa1c2, `mpixout.S` line 1128 (68 words). Reached: geif slot 307 (entry 615).
  **Inferred** role: merges two-component pixels into four-component words for output, with two raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (38), float-to-integer conversion (1); writes 2 words to the raster-bus output addresses; 4 words stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here); loads 2 constants; takes 2 conditional transfers; closes 1 loop.
  It ends with the end-of-command wait.
  Constants loaded: 0x2202000, 0x2200000.
- `mmo_ArbClamp`: address 0xa154, `mpixout.S` line 1332 (90 words). Reached: geif slot 264 (entry 529); the ARM functions that send it are in the table below.
  **Inferred** role: pixel-path clamp to arbitrary bounds: 32 minimums and 32 maximums against four bounds read from engine memory 0xbbc-0xbbf.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations maximum (32), minimum (32), move (6); reads engine memory at 4 addresses from 0xbbc to 0xbbf; closes 1 loop.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mmo_ConvEramToWram`: address 0xa132, `mpixout.S` line 1412 (19 words). Reached: geif slot 265 (entry 531); the ARM functions that send it are in the table below.
  **Inferred** role: loads a convolution kernel from external memory: five control words at 0xbb6-0xbba.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (5); reads engine memory at 5 addresses from 0xbb6 to 0xbba.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mmo_unloadConvA`: address 0xa105, `mpixout.S` line 1467 (16 words). Reached: geif slot 268 (entry 537); the ARM functions that send it are in the table below.
  **Inferred** role: unloads alpha from the convolution buffer.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1); loads 3 constants; takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0.
- `mmo_unloadConvL`: address 0xa0d8, `mpixout.S` line 1505 (16 words). Reached: geif slot 270 (entry 541); the ARM functions that send it are in the table below.
  **Inferred** role: unloads luminance from the convolution buffer.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1); loads 3 constants; takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0.
- `mmo_unloadConvLA`: address 0xa0a9, `mpixout.S` line 1539 (17 words). Reached: geif slot 271 (entry 543); the ARM functions that send it are in the table below.
  **Inferred** role: unloads luminance-alpha from the convolution buffer.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2); loads 2 constants; takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0.
- `mmo_unloadConvI`: address 0xa07c, `mpixout.S` line 1578 (16 words). Reached: geif slot 269 (entry 539); the ARM functions that send it are in the table below.
  **Inferred** role: unloads intensity from the convolution buffer.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1); loads 3 constants; takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0.
- `mmo_unloadConvRGBA`: address 0xa049, `mpixout.S` line 1612 (19 words). Reached: geif slot 273 (entry 547); the ARM functions that send it are in the table below.
  **Inferred** role: unloads RGBA from the convolution buffer.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4); takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mmo_unloadConvRGB`: address 0xa018, `mpixout.S` line 1645 (18 words). Reached: geif slot 272 (entry 545); the ARM functions that send it are in the table below.
  **Inferred** role: unloads RGB from the convolution buffer.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3); loads 1 constant; takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0.
- `mmo_ConvolveOut`: address 0xa002, `mpixout.S` line 1678 (11 words). Reached: geif slot 266 (entry 533); the ARM functions that send it are in the table below.
  **Inferred** role: convolution output stage: four moves.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4).
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mmo_loadConvA`: address 0x9fd7, `mpixout.S` line 1726 (13 words). Reached: geif slot 274 (entry 549); the ARM functions that send it are in the table below.
  **Inferred** role: loads alpha into the convolution buffer.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1); takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mmo_loadConvL`: address 0x9fa9, `mpixout.S` line 1760 (14 words). Reached: geif slot 276 (entry 553); the ARM functions that send it are in the table below.
  **Inferred** role: loads luminance into the convolution buffer.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1); takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mmo_loadConvLA`: address 0x9f79, `mpixout.S` line 1794 (16 words). Reached: geif slot 277 (entry 555); the ARM functions that send it are in the table below.
  **Inferred** role: loads luminance-alpha into the convolution buffer.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2); takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mmo_loadConvI`: address 0x9f49, `mpixout.S` line 1829 (15 words). Reached: geif slot 275 (entry 551); the ARM functions that send it are in the table below.
  **Inferred** role: loads intensity into the convolution buffer.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1); takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mmo_loadConvRGBA`: address 0x9f19, `mpixout.S` line 1863 (18 words). Reached: geif slot 279 (entry 559); the ARM functions that send it are in the table below.
  **Inferred** role: loads RGBA into the convolution buffer.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4); takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mmo_loadConvRGB`: address 0x9eeb, `mpixout.S` line 1899 (16 words). Reached: geif slot 278 (entry 557); the ARM functions that send it are in the table below.
  **Inferred** role: loads RGB into the convolution buffer.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3); takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mmo_PolygonStippleOut`: address 0x9eb1, `mpixout.S` line 1940 (23 words). Reached: geif slot 313 (entry 627); the ARM functions that send it are in the table below.
  **Inferred** role: polygon-stipple pixel output: tests the pattern bit and ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (5), AND (1), OR (1), shift left (1); loads 2 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0x1, 0.
- `mDoPolygonStippleRotate`: address 0x9df3, `mpixout.S` line 1988 (80 words). Reached: transfers in `mgeb_PolygonStippleRotate` and 1 other label.
  **Inferred** role: rotates the 32-bit polygon-stipple rows by bit shifts (masks 0x1 and 0x20) and returns.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), shift left (6), AND (4), OR (4), integer subtract or compare (4), logical shift right (4); sets the condition flags once; loads 3 constants; takes 3 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0x1, 0x20, 0xffffffff.
- `mgeb_PolygonStippleRotate`: address 0x9ddc, `mpixout.S` line 2085 (13 words). Reached: geif slot 65 (entry 131); the ARM functions that send it are in the table below.
  **Inferred** role: rotates the polygon stipple by the two operand offsets through the rotate routine.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (4); loads 2 constants.
  It calls `mDoPolygonStippleRotate`; ends with the end-of-command wait.
  Constants loaded: 0x20.
- `mDoPolygonStippleDownloadInner`: address 0x9dae, `mpixout.S` line 2112 (26 words). Reached: transfers in `mDoPolygonStippleDownload`.
  **Inferred** role: inner loop of the stipple download: one raster bus word per row.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (10), logical shift right (4), integer add (2); writes 1 word to the raster-bus output addresses; takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mDoPolygonStippleDownload`: address 0x9d6b, `mpixout.S` line 2160 (39 words). Reached: transfers in `mgesi_PolygonStippleDownload` and 2 other labels.
  **Inferred** role: downloads the polygon stipple to the raster system: 13 constants (0x880 to 0x8e0 among them) and the inner loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (8), integer add (4), NOT (2), shift left (1); writes 1 word to the raster-bus output addresses; loads 13 constants; takes 1 conditional transfer.
  It calls `mDoPolygonStippleDownloadInner`; returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0x880, 0x8a0, 0x8c0, 0x8e0, 0x1, 0x2010700, 0x2010600, 0x2010500 and 5 more.
- `mgesi_PolygonStippleDownload`: address 0x9d56, `mpixout.S` line 2212 (9 words). Reached: geif slot 215 (entry 431); the ARM functions that send it are in the table below.
  **Inferred** role: command that downloads the polygon stipple.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations NOT (1), move (1); sets the condition flags once; writes 1 word to the raster-bus output addresses.
  It calls `mDoPolygonStippleDownload`; ends with the end-of-command wait.
- `mmo_X_pixout_8_16`: address 0x9cd5, `mpixout.S` line 2256 (122 words). Reached: geif slot 367 (entry 735).
  **Inferred** role: X server pixel output for 8- and 16-bit formats: 32 packing ORs and two raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations OR (32), logical shift right (32), shift left (32), move (13); writes 2 words to the raster-bus output addresses; loads 1 constant.
  It ends with the end-of-command wait.
  Constants loaded: 0x1.
- `mmo_X_pixout_4`: address 0x9c54, `mpixout.S` line 2359 (122 words). Reached: geif slot 368 (entry 737).
  **Inferred** role: X server pixel output for 4-bit formats.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations OR (32), logical shift right (32), shift left (32), move (13); writes 2 words to the raster-bus output addresses; loads 1 constant.
  It ends with the end-of-command wait.
  Constants loaded: 0x1.
- `mmo_X_pixout_4Comp`: address 0x9c14, `mpixout.S` line 2459 (59 words). Reached: geif slot 369 (entry 739).
  **Inferred** role: X server pixel output for four-component formats.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations logical shift right (32), move (12); writes 2 words to the raster-bus output addresses; loads 1 constant.
  It ends with the end-of-command wait.
  Constants loaded: 0x1.
- `mmo_X_DrawBitmapOpaque`: address 0x9b8f, `mpixout.S` line 2561 (125 words). Reached: geif slot 370 (entry 741).
  **Inferred** role: X server opaque bitmap drawing: 32 bit compares that set the flags and two raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (78), integer subtract or compare (32); sets the condition flags 32 times; writes 2 words to the raster-bus output addresses.
  It ends with the end-of-command wait.
- `mLASTGE`: address 0xa4d4, `mpixout.S` line 2711 (69 words). Reached: transfers in `mmo_Pixout_2_4` and 15 other labels.
  **Inferred** role: end of a pixel operation on the last engine: reads six control words at 0xbf6-0xbfb and clears bit 16.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (23), AND (1); reads engine memory at 6 addresses from 0xbf6 to 0xbfb; loads 2 constants; takes 2 conditional transfers.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0, 0xfffeffff.
- `mgesi_TransparentBitmap`: address 0x9b4a, `mpixout.S` line 2838 (48 words). Reached: geif slot 111 (entry 223); the ARM functions that send it are in the table below.
  **Inferred** role: transparent bitmap drawing: raster constants and two raster bus words in a loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (17), logical shift right (7), NOT (2); writes 2 words to the raster-bus output addresses; loads 6 constants; closes 1 loop.
  It waits on its own address under another condition group.
  Constants loaded: 0x2010f00, 0x2011f00, 0x4, 0x1, 0x42013f00, 0x2012f00.
- `mod`: address 0x9ae9, `mpixout.S` line 2905 (12 words). Reached: transfers in `mgeb_XPolygonStippleRotate`.
  **Inferred** role: integer remainder by repeated subtract and compare, returning to the stipple rotation.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations integer subtract or compare (3), integer add (2), move (1); sets the condition flags 4 times; takes 4 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31); conditional transfers reach `HereWeGo`.
- `mgeb_XPolygonStippleRotate`: address 0x9a98, `mpixout.S` line 2955 (40 words). Reached: geif slot 165 (entry 331); the ARM functions that send it are in the table below.
  **Inferred** role: X server polygon-stipple rotation: three operand words, the remainder routine and the rotate routine.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations move (14), integer subtract or compare (4), float-to-integer conversion (2), integer add (2).
  It calls `mod` and `mDoPolygonStippleRotate`; waits on its own address under another condition group.
- `mgesi_XPolygonStippleDownload`: address 0x9a83, `mpixout.S` line 3010 (9 words). Reached: geif slot 216 (entry 433); the ARM functions that send it are in the table below.
  **Inferred** role: X server polygon-stipple download through the common download routine.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations integer add (1), move (1); sets the condition flags once; writes 1 word to the raster-bus output addresses.
  It calls `mDoPolygonStippleDownload`; ends with the end-of-command wait.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mmo_ArbClamp` | 264 | `AddArbClamp` |  |
| `mmo_ConvEramToWram` | 265 | `AddCopyEramToWram` |  |
| `mmo_unloadConvA` | 268 | `InitPixGEState` |  |
| `mmo_unloadConvL` | 270 | `InitPixGEState` |  |
| `mmo_unloadConvLA` | 271 | `InitPixGEState` |  |
| `mmo_unloadConvI` | 269 | `InitPixGEState` |  |
| `mmo_unloadConvRGBA` | 273 | `InitPixGEState` |  |
| `mmo_unloadConvRGB` | 272 | `InitPixGEState` |  |
| `mmo_ConvolveOut` | 266 | `AddConvolutionOutput` |  |
| `mmo_loadConvA` | 274 | `InitPixGEState` |  |
| `mmo_loadConvL` | 276 | `InitPixGEState` |  |
| `mmo_loadConvLA` | 277 | `InitPixGEState` |  |
| `mmo_loadConvI` | 275 | `InitPixGEState` |  |
| `mmo_loadConvRGBA` | 279 | `InitPixGEState` |  |
| `mmo_loadConvRGB` | 278 | `InitPixGEState` |  |
| `mmo_PolygonStippleOut` | 313 | `AddPolygonStippleOutput` |  |
| `mgeb_PolygonStippleRotate` | 65 | `PolygonStippleGLRotate`, `arm_getpolygonstipple` | `HP_GETPOLYGONSTIPPLE` |
| `mgesi_PolygonStippleDownload` | 215 | `PolygonStippleGLRotate`, `downLoadPolygonStipple` |  |
| `mgesi_TransparentBitmap` | 111 | `arm_bitmap_dlist` | `HP_BITMAP_DLIST` |
| `mgeb_XPolygonStippleRotate` | 165 | `arm_x_rotatestipple` | `HP_X_ROTATESTIPPLE` |
| `mgesi_XPolygonStippleDownload` | 216 | `arm_x_loadstipple` | `HP_X_LOADSTIPPLE` |

### msepconv.S

Separable convolution stages 3x3, 5x5 and 7x7. **Inferred** from its labels and callers.

- `mmo_SepConvolve3x3_124`: address 0x9710, `msepconv.S` line 107 (86 words). Reached: geif slot 314 (entry 629).
  **Inferred** role: separable 3x3 convolution stage set-up, then its inner routine.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (32), integer add (14), float-to-integer conversion (1), integer subtract or compare (1), logical shift right (1), second-unit move or minimum (1); sets the condition flags once; loads 2 constants; takes 1 conditional transfer.
  It jumps to `uSepConv3_124`.
  Constants loaded: 0.
- `mmo_SepConvolve5x5_124`: address 0x96ac, `msepconv.S` line 424 (99 words). Reached: geif slot 315 (entry 631).
  **Inferred** role: separable 5x5 convolution stage set-up, then its inner routine.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (33), integer add (18), float-to-integer conversion (1), integer subtract or compare (1), logical shift right (1); sets the condition flags once; takes 1 conditional transfer.
  It jumps to `uSepConv5_124`.
- `mmo_FastSepConvolve5x5_124`: address 0x9654, `msepconv.S` line 769 (88 words). Reached: geif slot 316 (entry 633); the ARM functions that send it are in the table below.
  **Inferred** role: fast separable 5x5 convolution stage set-up, then its inner routine.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (33), integer add (14), second-unit move or minimum (3); takes 1 conditional transfer.
  It jumps to `uFastSepConv5_124`.
- `mmo_SepConvolve7x7_124`: address 0x95e5, `msepconv.S` line 1190 (111 words). Reached: geif slot 317 (entry 635).
  **Inferred** role: separable 7x7 convolution stage set-up, then its inner routine.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (35), integer add (21), float-to-integer conversion (1), integer subtract or compare (1), logical shift right (1); sets the condition flags once; takes 1 conditional transfer.
  It jumps to `uSepConv7_124`.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mmo_FastSepConvolve5x5_124` | 316 | `AddFastSep5Convolution` |  |

### mshortcircuit.S

Short-circuit pixel conversions between packed formats. **Inferred** from its labels and callers.

- `mmo_shortpass8W`: address 0x99b0, `mshortcircuit.S` line 172 (48 words). Reached: geif slot 318 (entry 637).
  **Inferred** role: short-circuit pixel path that passes 8-bit words straight through.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (19); sets the condition flags 2 times; takes 5 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31); conditional transfers reach `mLASTGE`.
- `mmo_short8to16`: address 0x998d, `mshortcircuit.S` line 318 (31 words). Reached: geif slot 319 (entry 639).
  **Inferred** role: short-circuit conversion of 8-bit to 16-bit pixels, then the merge code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (13); sets the condition flags 2 times; takes 2 conditional transfers.
  It jumps to `mMerge4_8C_LastBlk`; conditional transfers reach `mLASTGE` and 1 other label.
- `mmo_shortLA8toL12A4`: address 0x98fa, `mshortcircuit.S` line 409 (31 words). Reached: geif slot 323 (entry 647).
  **Inferred** role: short-circuit conversion of 8-bit luminance-alpha to 12-bit luminance and 4-bit alpha.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (13); sets the condition flags 2 times; takes 2 conditional transfers.
  It jumps to `mMerge4_8C_LastBlk`; conditional transfers reach `mLASTGE` and 1 other label.
- `mMerge4_8C`: address 0x9a57, `mshortcircuit.S` line 494 (38 words). Reached: transfers in `mmo_short8to16` and 1 other label.
  **Inferred** role: merges 4- and 8-component short-circuit pixels: 32 packing words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations logical shift right (32); takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31); conditional transfers reach `mMerge4_8C_LastBlk`.
- `mMerge4_8C_LastBlk`: address 0x9a3d, `mshortcircuit.S` line 616 (21 words). Reached: transfers in `mMerge4_8C` and 2 other labels.
  **Inferred** role: last-block form of the 4-to-8 merge: 16 packing words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations logical shift right (16); takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mmo_short8to4`: address 0x9968, `mshortcircuit.S` line 705 (32 words). Reached: geif slot 320 (entry 641).
  **Inferred** role: short-circuit conversion of 8-bit to 4-bit pixels.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (13); sets the condition flags 2 times; loads 1 constant; takes 2 conditional transfers.
  It jumps to `mMerge8_16C_LastBlk`; conditional transfers reach `mLASTGE` and 1 other label.
  Constants loaded: 0x4.
- `mmo_short16to4`: address 0x9943, `mshortcircuit.S` line 798 (32 words). Reached: geif slot 321 (entry 643).
  **Inferred** role: short-circuit conversion of 16-bit to 4-bit pixels.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (13); sets the condition flags 2 times; loads 1 constant; takes 2 conditional transfers.
  It jumps to `mMerge8_16C_LastBlk`; conditional transfers reach `mLASTGE` and 1 other label.
  Constants loaded: 0xc.
- `mmo_short16to8`: address 0x991e, `mshortcircuit.S` line 891 (32 words). Reached: geif slot 322 (entry 645).
  **Inferred** role: short-circuit conversion of 16-bit to 8-bit pixels.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (13); sets the condition flags 2 times; loads 1 constant; takes 2 conditional transfers.
  It jumps to `mMerge8_16C_LastBlk`; conditional transfers reach `mLASTGE` and 1 other label.
  Constants loaded: 0x8.
- `mmo_shortLA16toL12A4`: address 0x98d5, `mshortcircuit.S` line 984 (32 words). Reached: geif slot 324 (entry 649).
  **Inferred** role: short-circuit conversion of 16-bit luminance-alpha to 12-bit luminance and 4-bit alpha.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (13); sets the condition flags 2 times; loads 1 constant; takes 2 conditional transfers.
  It jumps to `mMerge8_16C_LastBlk`; conditional transfers reach `mLASTGE` and 1 other label.
  Constants loaded: 0x4.
- `mmo_short8toRGB5A1`: address 0x98b0, `mshortcircuit.S` line 1081 (32 words). Reached: geif slot 325 (entry 651).
  **Inferred** role: short-circuit conversion of 8-bit to RGB5A1 pixels.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (13); sets the condition flags 2 times; loads 1 constant; takes 2 conditional transfers.
  It jumps to `mMerge8_16C_LastBlk`; conditional transfers reach `mLASTGE` and 1 other label.
  Constants loaded: 0x3.
- `mmo_short16toRGB5A1`: address 0x988b, `mshortcircuit.S` line 1177 (32 words). Reached: geif slot 326 (entry 653).
  **Inferred** role: short-circuit conversion of 16-bit to RGB5A1 pixels.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (13); sets the condition flags 2 times; loads 1 constant; takes 2 conditional transfers.
  It jumps to `mMerge8_16C_LastBlk`; conditional transfers reach `mLASTGE` and 1 other label.
  Constants loaded: 0xb.
- `mmo_shortBGRApass`: address 0x9868, `mshortcircuit.S` line 1269 (31 words). Reached: geif slot 327 (entry 655).
  **Inferred** role: short-circuit path that passes BGRA pixels.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (13); sets the condition flags 2 times; takes 2 conditional transfers.
  It jumps to `mMerge8_16C_LastBlk`; conditional transfers reach `mLASTGE` and 1 other label.
- `mMerge8_16C`: address 0x9a10, `mshortcircuit.S` line 1352 (39 words). Reached: transfers in `mmo_short16to4` and 6 other labels.
  **Inferred** role: merges 8- and 16-component short-circuit pixels: 32 packing words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations logical shift right (32); takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31); conditional transfers reach `mMerge8_16C_LastBlk`.
- `mMerge8_16C_LastBlk`: address 0x99f5, `mshortcircuit.S` line 1491 (22 words). Reached: transfers in `mMerge8_16C` and 7 other labels.
  **Inferred** role: last-block form of the 8-to-16 merge: 16 packing words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations logical shift right (16); takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mmo_Short_Complex_To_8`: address 0x9833, `mshortcircuit.S` line 1618 (40 words). Reached: geif slot 436 (entry 873).
  **Inferred** role: short-circuit conversion of complex (FFT) values to 8-bit pixels.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations logical shift right (16), move (6); takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31); conditional transfers reach `mLASTGE`.
- `mmo_Short_Complex_To_16`: address 0x9805, `mshortcircuit.S` line 1734 (33 words). Reached: geif slot 437 (entry 875).
  **Inferred** role: short-circuit conversion of complex (FFT) values to 16-bit pixels.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations logical shift right (8), move (6); takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31); conditional transfers reach `mLASTGE`.

### msum.S

Pixel-path RGB-to-luminance sum, added by AddSumRGB2L. **Inferred** from its labels and callers.

- `mmo_SumRGB2L`: address 0x6b9a, `msum.S` line 78 (65 words). Reached: geif slot 263 (entry 527); the ARM functions that send it are in the table below.
  **Inferred** role: pixel-path stage that sums RGB to luminance, clamped at 1.0 by a minimum.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (18), minimum (9), move (4); reads engine memory at 3 addresses from 0xbb1 to 0xbb3; loads 1 constant; closes 3 loops.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 1.0 (0x3f800000).

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mmo_SumRGB2L` | 263 | `AddSumRGB2L` |  |

### munpack.S

Vertex-array unpack for lit vertex formats (V3F with colour, normal and texture coordinates). **Inferred** from its labels and callers.

- `mmo_UnpackVertexV3F_N3S`: address 0x5757, `munpack.S` line 291 (141 words). Reached: geif slot 381 (entry 763); its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: vertex-array unpack for float position and short normal: scales the normal by 1/32767 (3.05185e-05).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (39), float multiply (22), integer-to-float conversion (12), logical shift right (8), shift left (8), arithmetic shift right (4), float subtract (4), AND (2), float add (2), reciprocal square-root Newton step (2), reciprocal square-root seed (2), second-unit move (1); sets the condition flags 2 times; reads engine memory at 4 addresses from 0x13a7 to 0x13aa; loads 5 constants; takes 3 conditional transfers.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 3.05185e-05 (0x380000fd), 0x3b808080, 0x8, 0x10.
- `mmo_UnpackVertexV3F_C4UB_N3S`: address 0x56ff, `munpack.S` line 323 (82 words). Reached: geif slot 382 (entry 765); its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: vertex-array unpack for float position, byte colour (scaled by 1/255, 0x3b808080) and short normal.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (22), move (12), integer-to-float conversion (8), logical shift right (8), shift left (8), arithmetic shift right (4), float subtract (4), operation 0x6f2 (4), AND (2), float add (2), reciprocal square-root Newton step (2); sets the condition flags 2 times; loads 5 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0x3b808080, 3.05185e-05 (0x380000fd), 0x18, 0x8, 0x10.
- `mmo_UnpackVertexV3F_N3S_T2F`: address 0x563d, `munpack.S` line 407 (159 words). Reached: geif slot 385 (entry 771); its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: vertex-array unpack for float position, short normal and float texture coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (62), float multiply (22), integer-to-float conversion (12), logical shift right (8), shift left (8), arithmetic shift right (4), float subtract (4), AND (2), float add (2), reciprocal square-root Newton step (2), move of the second operand (1), reciprocal square-root seed (1), second-unit move (1); sets the condition flags 2 times; reads engine memory at 4 addresses from 0x13a7 to 0x13aa; loads 6 constants; takes 3 conditional transfers.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 3.05185e-05 (0x380000fd), 0x3b808080, 0x18, 0x8, 0x10.
- `mmo_UnpackVertexV3F_C4UB_N3S_T2F`: address 0x55da, `munpack.S` line 440 (91 words). Reached: geif slot 386 (entry 773); its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: vertex-array unpack for float position, byte colour, short normal and float texture coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (22), move (20), integer-to-float conversion (10), logical shift right (8), shift left (8), arithmetic shift right (4), float subtract (4), AND (2), float add (2), operation 0x6f2 (2), reciprocal square-root Newton step (2), reciprocal square-root seed (2); sets the condition flags 2 times; loads 4 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 3.05185e-05 (0x380000fd), 0x3b808080, 0x8, 0x10.
- `mmo_UnpackVertexV3F_N3S_T2S`: address 0x5504, `munpack.S` line 533 (189 words). Reached: geif slot 389 (entry 779); its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: vertex-array unpack for float position, short normal and short texture coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (59), integer-to-float conversion (24), float multiply (22), arithmetic shift right (16), shift left (14), logical shift right (8), float subtract (4), AND (2), float add (2), reciprocal square-root Newton step (2), move of the second operand (1), reciprocal square-root seed (1), second-unit move (1); sets the condition flags 2 times; reads engine memory at 4 addresses from 0x13a7 to 0x13aa; loads 5 constants; takes 3 conditional transfers.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 3.05185e-05 (0x380000fd), 0x3b808080, 0x10, 0x8.
- `mmo_UnpackVertexV3F_C4UB_N3S_T2S`: address 0x549e, `munpack.S` line 573 (96 words). Reached: geif slot 390 (entry 781); its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: vertex-array unpack for float position, byte colour, short normal and short texture coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (22), move (19), integer-to-float conversion (14), shift left (10), arithmetic shift right (8), logical shift right (8), float subtract (4), AND (2), float add (2), operation 0x6f2 (2), reciprocal square-root Newton step (2); sets the condition flags 2 times; loads 5 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0x3b808080, 3.05185e-05 (0x380000fd), 0x8, 0x10.
- `mmo_UnpackVertexV3F_LGT`: address 0x5470, `munpack.S` line 605 (36 words). Reached: geif slot 391 (entry 783); its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: vertex-array unpack for float position with lighting: reads seven state words at 0x13a7-0x13ad.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (23); reads engine memory at 7 addresses from 0x13a7 to 0x13ad; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_UnpackVertexV3F_C4UB_LGT`: address 0x542c, `munpack.S` line 632 (59 words). Reached: geif slot 392 (entry 785); its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: vertex-array unpack for float position and byte colour with lighting.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (14), float multiply (8), integer-to-float conversion (8), logical shift right (8), shift left (6), second-unit move (1); reads engine memory at 3 addresses from 0x13ab to 0x13ad; loads 4 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0x3b808080, 0x8, 0x10.
- `mmo_UnpackVertexV3F_T2F_LGT`: address 0x53f6, `munpack.S` line 659 (44 words). Reached: geif slot 393 (entry 787); its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: vertex-array unpack for float position and float texture coordinates with lighting.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (31); reads engine memory at 7 addresses from 0x13a7 to 0x13ad; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_UnpackVertexV3F_C4UB_T2F_LGT`: address 0x53a8, `munpack.S` line 689 (67 words). Reached: geif slot 394 (entry 789); its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: vertex-array unpack for float position, byte colour and float texture coordinates with lighting.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (22), float multiply (8), integer-to-float conversion (8), logical shift right (8), shift left (6), second-unit move (1); reads engine memory at 3 addresses from 0x13ab to 0x13ad; loads 5 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0x3b808080, 0x18, 0x8, 0x10.
- `mmo_UnpackVertexV3F_T2S_LGT`: address 0x5368, `munpack.S` line 720 (53 words). Reached: geif slot 395 (entry 791); its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: vertex-array unpack for float position and short texture coordinates with lighting.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (30), arithmetic shift right (4), integer-to-float conversion (4), shift left (2); reads engine memory at 7 addresses from 0x13a7 to 0x13ad; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_UnpackVertexV3F_C4UB_T2S_LGT`: address 0x5312, `munpack.S` line 752 (75 words). Reached: geif slot 396 (entry 793); its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: vertex-array unpack for float position, byte colour and short texture coordinates with lighting.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (22), integer-to-float conversion (12), float multiply (8), logical shift right (8), shift left (8), arithmetic shift right (4); reads engine memory at 3 addresses from 0x13ab to 0x13ad; loads 4 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0x3b808080, 0x10, 0x8.

### phong.S

Phong-shaded triangle output with per-pixel normalise and light. **Inferred** from its labels and callers.

- `mmo_DrawTriPrimPhong`: address 0x9296, `phong.S` line 85 (523 words). Reached: no slot, ARM load, decoded transfer or address constant reaches it (routes tried: [How to read the tables](#how-to-read-the-entries)).
  **Inferred** role: Phong-shaded triangle drawing: 523 words with per-pixel normal interpolation and lighting; nothing in the program enters it.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (139), float subtract (99), move (83), float add (54), reciprocal Newton step (14), minimum (10), NOT (5), maximum (4), operation 0x6f7 (4), AND (1), operation 0x6e3 (1), reciprocal seed (1); sets the condition flags 5 times; writes 15 words to the raster-bus output addresses; stores 19 words to control-memory addresses from 0xc9 to 0xd7; 55 words stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here); loads 33 constants; takes 6 conditional transfers.
  It ends with the end-of-command wait; jumps to `normalize_and_light`; conditional transfers reach `HereWeGo`.
  Constants loaded: 0x2, 0x3f, 0x70000, 0x6, 0x1243fd3, 0x1, 0.5 (0x3f000000), 2.0 (0x40000000) and 14 more.
- `normalize_and_light`: address 0x952c, `phong.S` line 727 (35 words). Reached: transfers in `mmo_DrawTriPrimPhong`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (18), reciprocal square-root Newton step (4), float add (2), float multiply-add (2), reciprocal square-root seed (2), move (1).
  It ends the command with an indirect transfer in condition group 31.

### pi.S

Performance instruments start and stop. **Inferred** from its labels and callers.

- `mgesi_StartInstruments`: address 0x494f, `pi.S` line 37 (18 words). Reached: geif slot 420 (entry 841); the ARM functions that send it are in the table below.
  **Inferred** role: starts the performance instruments: eight raster bus words to the counter registers (constants 0x30476 to 0x60476).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (9); writes 8 words to the raster-bus output addresses; loads 4 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x50476, 0x40476, 0x60476, 0x30476.
- `mgesi_StopInstruments`: address 0x4905, `pi.S` line 81 (70 words). Reached: geif slot 421 (entry 843); the ARM functions that send it are in the table below.
  **Inferred** role: halts and reads out the performance counters: 44 raster bus words, select words to 0x1f8 alternating with data words that are one of four command words or a staged constant such as 0x4760000, and a closing word to 0x1f4 (software/ucode/ge_compute.md).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads 4 command words between offsets 0 and 9; operations move (45); writes 44 words to the raster-bus output addresses; loads 18 constants.
  It jumps within its own code.
  Constants loaded: 0x817f, 0x4760000, 0x4610000, 0x4600000, 0xa, 0x4740000, 0x400, 0x4640000 and 10 more.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgesi_StartInstruments` | 420 | `arm_read_instruments`, `arm_start_instruments` | `HP_READ_INSTRUMENTS`, `HP_START_INSTRUMENTS` |
| `mgesi_StopInstruments` | 421 | `arm_read_instruments`, `arm_stop_instruments` | `HP_READ_INSTRUMENTS`, `HP_STOP_INSTRUMENTS` |

### pntclip.S

Point clipping against the user planes and the view frustum. **Inferred** from its labels and callers.

- `mClipPntUserAndFrustum`: address 0xe75e, `pntclip.S` line 54 (82 words). Reached: its address loaded as a constant in `mGL_EM_Initialize` and 1 other label.
  **Inferred** role: point clipper: tests the point against the user planes and the frustum and ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (17), OR (14), float subtract (10), float add (7), float multiply-add (7), move (3), AND (2), logical shift right (2), operation 0x6d1 (2); sets the condition flags once; loads 3 constants; takes 3 conditional transfers.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0x3f, 0x1.

### point.S

Multisample point tables and point size. **Inferred** from its labels and callers.

- `mgebi_PointSize_Select`: address 0x61e0, `point.S` line 37 (16 words). Reached: geif slot 179 (entry 359).
  **Inferred** role: point handling in selection mode: loads the address of the selection point module.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4); writes 1 word to the raster-bus output addresses; loads 2 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0xbf6d (code in `mmo_SelectPoint`), 0x70000.
- `mgebi_PointSize_Feedback`: address 0x61c6, `point.S` line 69 (16 words). Reached: geif slot 178 (entry 357).
  **Inferred** role: point handling in feedback mode: loads the address of the feedback point module.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4); writes 1 word to the raster-bus output addresses; loads 2 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0xb80f (code in `mmo_FeedbackPoint`), 0x70000.
- `mgebi_PointSize_Aliased`: address 0x6163, `point.S` line 177 (81 words). Reached: geif slot 177 (entry 355).
  **Inferred** role: point size for aliased points: rounds the size (0.5) and selects the point module.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (23), AND (3), float add (3), float-to-integer conversion (3), float multiply (2), maximum (1), operation 0x6fb (1), second-unit operation 0xff (1), shift left (1); sets the condition flags 2 times; writes 7 words to the raster-bus output addresses; loads 19 constants; takes 1 conditional transfer.
  It ends with the end-of-command wait.
  Constants loaded: 0x8357 (code in `mmo_DrawDistAttPntPrim`), 0x8, 0.5 (0x3f000000), 0xfffffb7f, 0xfff000, 0x1203fcf, 0x1, 0 and 8 more.
- `mgebi_PointSize_AlphaAA`: address 0x612c, `point.S` line 396 (51 words). Reached: geif slot 97 (entry 195).
  **Inferred** role: point size for alpha-antialiased points: one operand word, mode bits and raster constants.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (14), OR (2), AND (1), float multiply (1), integer subtract or compare (1), operation 0x6d1 (1); sets the condition flags once; writes 6 words to the raster-bus output addresses; loads 14 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x20000000, 0x128080f, 0xfff, 0x8, 0xfffffbff, 0x1203fcf, 0x80, 0x70000 and 5 more.
- `mgebi_PointSize_MS`: address 0x6094, `point.S` line 589 (95 words). Reached: geif slot 98 (entry 197).
  **Inferred** role: point size for multisample points: reciprocal steps on the size and the sine and cosine routine for the large-point fan.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (17), float multiply (12), reciprocal Newton step (4), integer subtract or compare (3), AND (2), float-to-integer conversion (2), integer add (2), reciprocal seed (2), OR (1), float subtract (1), integer-to-float conversion (1), operation 0x6d1 (1); sets the condition flags 6 times; writes 1 word to the raster-bus output addresses; loads 18 constants; takes 1 conditional transfer.
  It calls `mSinCos`; ends with the end-of-command wait.
  Constants loaded: 0xffffff7f, 0.5 (0x3f000000), 0x813b (code in `mmo_DrawMSDistAttPntPrim`), 0x1102, 0x20000000, 0x7855 (code in `mmo_DrawMSDistAttTablePntPrim`), 0x8, 2.0 (0x40000000) and 10 more.
- `MSPoint_Print_Scratch_Tables`: address 0x5fbe, `point.S` line 858 (120 words). Reached: inside `mgebi_PointSize_MS`, reached from that routine's own code.
  **Inferred** role: debug dump of the multisample point tables inside the multisample point-size handler, through the print routine.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (25); loads 3 constants; takes 1 conditional transfer.
  It calls `mPrintf`; returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0.
- `MSPoint_Init_Samples`: address 0x5e9e, `point.S` line 927 (66 words). Reached: transfers in `mgeb_ComputeMSPointTables`.
  **Inferred** role: initialises the multisample sample offsets: 16 constants in steps of 3.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (16), integer add (16), logical shift right (16); loads 16 constants.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0, 0x3, 0x6, 0x9, 0xc, 0xf, 0x12, 0x15.
- `MSPoint_Init`: address 0x5d94, `point.S` line 1056 (180 words). Reached: transfers in `mgeb_ComputeMSPointTables`.
  **Inferred** role: builds the multisample point tables: integer adds and packing over the samples.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations shift left (40), integer add (33), OR (32), second-unit operation 0xff (18), integer subtract or compare (6), float-to-integer conversion (1), move (1); sets the condition flags 2 times; takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `MSPoint_Sort`: address 0x5ccc, `point.S` line 1200 (118 words). Reached: transfers in `mgeb_ComputeMSPointTables`.
  **Inferred** role: sorts the multisample point table entries by compare and move.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (46), AND (15), logical shift right (12), integer subtract or compare (7); sets the condition flags 7 times; loads 1 constant; takes 3 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31); conditional transfers reach `HereWeGo`.
  Constants loaded: 0.
- `MSPoint_Pack`: address 0x5c5a, `point.S` line 1428 (74 words). Reached: transfers in `mgeb_ComputeMSPointTables`.
  **Inferred** role: packs the multisample point tables into fields of 5, 8, 16 and 24 bits.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (12), logical shift right (8), OR (7), shift left (7), integer add (4), move (4), second-unit operation 0xff (4); loads 4 constants; takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0x5, 0x8, 0x10, 0x18.
- `mgeb_ComputeMSPointTables`: address 0x5bab, `point.S` line 1572 (77 words). Reached: geif slot 422 (entry 845); the ARM functions that send it are in the table below.
  **Inferred** role: computes the multisample point tables from three operand words through the init, sort and pack routines.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations integer subtract or compare (6), move (4), float-to-integer conversion (1), second-unit operation 0xff (1); sets the condition flags once; writes 2 words to the raster-bus output addresses; loads 20 constants; takes 1 conditional transfer.
  It calls `MSPoint_Init_Samples` and 3 other routines; ends with the end-of-command wait.
  Constants loaded: 0x640, 0x1, 0x5, 0xfffffffe, 0x8, 0x19, 0, 0x4 and 8 more.
- `mgeb_SetMSPointTables`: address 0x5b96, `point.S` line 1871 (11 words). Reached: geif slot 423 (entry 847); the ARM functions that send it are in the table below.
  **Inferred** role: selects the multisample point tables from its operand.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations integer add (1), second-unit operation 0xff (1); loads 2 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x640, 0x1c07.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgeb_ComputeMSPointTables` | 422 | `initMSPointTablesGlobal` |  |
| `mgeb_SetMSPointTables` | 423 | `arm_samplepattern`, `init_multisample` | `HP_SAMPLEPATTERN` |

### polygon.S

Polygon set-up for render, select and feedback modes, and polygon mode. **Inferred** from its labels and callers.

- `mgeb_PolygonSetup_Render`: address 0x6216, `polygon.S` line 37 (28 words). Reached: geif slot 163 (entry 327).
  **Inferred** role: polygon set-up in render mode: two operand words, mode bits and the triangle module's address, then the polygon-mode set-up.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 3 to 4; operations move (6), OR (2), operation 0x6d1 (2); sets the condition flags 3 times; loads 5 constants.
  It jumps to `mPolymodeSetup`.
  Constants loaded: 0x40, 2.0 (0x40000000), 0x288c (code in `mmo_DrawTri`), 0x28ca (code in `mmo_DrawQuad`), 0x8dc0 (code in `mmo_DrawTriPrimOffset`).
- `mgeb_PolygonSetup_Select`: address 0x6208, `polygon.S` line 84 (11 words). Reached: geif slot 164 (entry 329).
  **Inferred** role: polygon set-up in selection mode: loads the selection triangle module's address.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2); loads 1 constant.
  It jumps to `mPolymodeSetup`.
  Constants loaded: 0xbecc (code in `mmo_SelectTriangle`).
- `mgeb_PolygonSetup_Feedback`: address 0x61fa, `polygon.S` line 115 (10 words). Reached: geif slot 162 (entry 325).
  **Inferred** role: polygon set-up in feedback mode: loads the feedback triangle module's address.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1); loads 1 constant.
  It jumps to `mPolymodeSetup`.
  Constants loaded: 0xb76e (code in `mmo_FeedbackTriangle`).
- `mPolymodeSetup`: address 0x6237, `polygon.S` line 156 (23 words). Reached: transfers in `mgeb_PolygonSetup_Feedback` and 2 other labels.
  **Inferred** role: common polygon-mode set-up: three operand words and the cull and light module re-selection.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations move (11), OR (1), operation 0x6d1 (1); sets the condition flags 4 times; loads 3 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x1, 0xf547 (code in `mmo_DirtyCullAndLightModule`), 0xda68 (code in `mmo_DrawTriPolymodePrim`).

### polymode.S

Triangle output in line or point polygon mode. **Inferred** from its labels and callers.

- `mmo_DrawTriPolymodePrim`: address 0xda68, `polymode.S` line 80 (306 words). Reached: its address loaded as a constant in `mPolymodeSetup`.
  **Inferred** role: triangle drawing for line and point polygon modes: compares the mode with GL_LINE (0x1b01) and draws the edges or vertices.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (59), float multiply (24), float subtract (18), AND (9), OR (9), shift left (7), integer subtract or compare (5), reciprocal Newton step (4), operation 0x6e9 (2), operation 0x6fe (2), reciprocal seed (2), XOR (1), operation 0x6d1 (1), operation 0x6d5 (1); sets the condition flags 11 times; writes 6 words to the raster-bus output addresses; reads engine memory at 7 addresses from 0xa8c to 0x14d9; 23 words stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here); loads 36 constants; takes 20 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31); jumps within its own code; conditional transfers reach `HereWeGo`.
  Constants loaded: 0x1, 0x1b01, 0, 1048576.0 (0x49800000), 0x8, 0x7, 0x6, 2.0 (0x40000000) and 7 more.

### primmtrllight.S

Lighting with per-primitive material changes. **Inferred** from its labels and callers.

- `mLiPrimMtrlInit`: address 0xd6ef, `primmtrllight.S` line 57 (51 words). Reached: transfers in `mmo_LighterGeneral`.
  **Inferred** role: set-up of per-primitive material lighting: clears bit 4 and loads the per-vertex loop and final step addresses.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (27), AND (2), OR (1), operation 0x6cc (1), second-unit operation 0xff (1); loads 12 constants.
  It jumps to `mLiVtxLoop`.
  Constants loaded: 0xffffffef, 0, 0xd726 (code in `mLiPrimMtrlFinalLi`), 0xf547 (code in `mmo_DirtyCullAndLightModule`), 0xf50d (code in `mmo_DirtyLightModule`), 0x3f, 0xd536 (code in `mLiPrimMtrlIndxFinalLi`), 0xd6c4 (code in `mLiPrimMtrlCopyEnd`) and 4 more.
- `mLiPrimShinLoop`: address 0xd60e, `primmtrllight.S` line 218 (74 words). Reached: transfers in `mLiEndPrimShinLp`; its address loaded as a constant in `mLiPrimMtrlCopyEnd` and 1 other label.
  **Inferred** role: per-primitive shininess loop of material lighting.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (13), OR (3), operation 0x6cc (3), AND (2), float-to-integer conversion (2), operation 0x6d1 (2), shift left (2), operation 0x6ec (1); sets the condition flags once; loads 9 constants; takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0x3f, 0x2, 0xd690 (code in `mLiPrmMtrlFrntClrAccmEnd`), 0, 0x4, 0xd676 (code in `mLiPrmMtrlBackClrInitAccm`), 0xd91a (code in `mLiBackClrInit`).
- `mLiPrmMtrlFrntClrAccmEnd`: address 0xd690, `primmtrllight.S` line 432 (13 words). Reached: its address loaded as a constant in `mLiPrimShinLoop`.
  **Inferred** role: end of the front-colour accumulation for per-primitive materials.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3), operation 0x6ea (1); sets the condition flags once; loads 1 constant; takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31); conditional transfers reach `mLiEndPrimShinLp` and 1 other label.
  Constants loaded: 0xd9c1 (code in `mLiLocLiFrnClrAccum`).
- `mLiPrmMtrlBackClrInitAccm`: address 0xd676, `primmtrllight.S` line 487 (20 words). Reached: its address loaded as a constant in `mLiPrimShinLoop` and 1 other label.
  **Inferred** role: set-up of the back-colour accumulation for per-primitive materials.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (8), operation 0x6ea (1); sets the condition flags once; loads 3 constants.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0xd7d9 (code in `mLiEndPrimShinLp`), 0xd667 (code in `mLiPrmMtrlBackClrAccmEnd`), 0xd9c1 (code in `mLiLocLiFrnClrAccum`).
- `mLiPrmMtrlBackClrAccmEnd`: address 0xd667, `primmtrllight.S` line 561 (8 words). Reached: its address loaded as a constant in `mLiPrmMtrlBackClrInitAccm`.
  **Inferred** role: end of the back-colour accumulation for per-primitive materials.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2); loads 2 constants.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0xd973 (code in `mLiBackClrAccum`), 0xd676 (code in `mLiPrmMtrlBackClrInitAccm`).
- `mLiEndPrimShinLp`: address 0xd7d9, `primmtrllight.S` line 604 (33 words). Reached: transfers in `mLiPrmMtrlFrntClrAccmEnd`; its address loaded as a constant in `mLiPrmMtrlBackClrInitAccm`.
  **Inferred** role: end of the per-primitive shininess loop: three conditional transfers.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (9), integer subtract or compare (2), OR (1), operation 0x6c6 (1); loads 1 constant; takes 3 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31); conditional transfers reach `mLiUpdateShin` and 1 other label.
  Constants loaded: 0xd7e9 (code in `mLiEndPrimShinLp`).
- `mLiPrimMtrlFinalLi`: address 0xd726, `primmtrllight.S` line 737 (30 words). Reached: its address loaded as a constant in `mLiPrimMtrlInit`.
  **Inferred** role: final lighting step for per-primitive materials.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (8), AND (5), float-to-integer conversion (1), integer add (1); sets the condition flags 4 times; loads 3 constants.
  It jumps within its own code.
  Constants loaded: 0xd786 (code in `mLiPrimMtrlCopyCmpn`), 0x3f, 0xd745 (code in `mLiPrimMtrlCopyStckCmpn`).
- `mLiPrimMtrlCopyStckCmpn`: address 0xd745, `primmtrllight.S` line 831 (62 words). Reached: transfers in `mLiPrimMtrlIndxFinalLi`; its address loaded as a constant in `mLiPrimMtrlFinalLi` and 1 other label.
  **Inferred** role: copies material components from the material stack.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (31), second-unit move or minimum (2), AND (1), integer subtract or compare (1), operation 0x6d1 (1), shift left (1); sets the condition flags 2 times; loads 1 constant; takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0.
- `mLiPrimMtrlCopyCmpn`: address 0xd786, `primmtrllight.S` line 1052 (16 words). Reached: transfers in `mLiPrimMtrlIndxFinalLi`; its address loaded as a constant in `mLiPrimMtrlFinalLi` and 1 other label.
  **Inferred** role: copies material components for a per-primitive material.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (12), AND (1), integer subtract or compare (1); sets the condition flags once.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mLiPrimMtrlCpFrntEnd`: address 0xd6a7, `primmtrllight.S` line 1111 (29 words). Reached: its address loaded as a constant in `mLiPrimMtrlInit`.
  **Inferred** role: end of the front material copy.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (7), AND (3), integer add (1), operation 0x6cc (1); sets the condition flags 3 times.
  It jumps within its own code.
- `mLiPrimMtrlCopyEnd`: address 0xd6c4, `primmtrllight.S` line 1174 (40 words). Reached: its address loaded as a constant in `mLiPrimMtrlInit`.
  **Inferred** role: end of the per-primitive material copy.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations logical shift right (12), float add (6), move (4), AND (1), OR (1), operation 0x6cc (1), second-unit operation 0xff (1); loads 5 constants.
  It jumps within its own code.
  Constants loaded: 0x6, 0x3f, 0x54, 0xd60e (code in `mLiPrimShinLoop`), 0.
- `mLiClrMtrlFinalLi`: address 0xd831, `primmtrllight.S` line 1304 (43 words). Reached: its address loaded as a constant in `mgeb_LiEnableClrMtrl` and 1 other label.
  **Inferred** role: final lighting step for colour material: copies the vertex colour into the material term.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (28), float add (6); takes 1 conditional transfer.
  It jumps within its own code; conditional transfers reach `mLiColorMtrlCopy`.
- `mLiColorMtrlCopy`: address 0xd808, `primmtrllight.S` line 1403 (36 words). Reached: transfers in `mLiClrMtrlFinalLi`; its address loaded as a constant in `mLiPrimMtrlInit`.
  **Inferred** role: copies the vertex colour into the material terms the colour-material mode names.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (10), operation 0x6cc (1); takes 2 conditional transfers.
  It jumps within its own code; conditional transfers reach `mLiFinalLiEqu`.
- `mLiFinalLiEqu`: address 0xd796, `primmtrllight.S` line 1511 (63 words). Reached: transfers in `mLiColorMtrlCopy`; its address loaded as a constant in `mLiPrimMtrlInit`.
  **Inferred** role: lighting equation result: multiplies, adds and clamps of the colour terms.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (16), float multiply (16), clamp at zero (6), move (4), float multiply-add (2); takes 1 conditional transfer.
  It jumps within its own code; conditional transfers reach `HereWeGo`.

### push_attrib.S

Restore of transform attributes, FFT factor initialisation. **Inferred** from its labels and callers.

- `mgeb_InitFFTFactors`: address 0x37de, `push_attrib.S` line 36 (13 words). Reached: geif slot 431 (entry 863); the ARM functions that send it are in the table below.
  **Inferred** role: initialises the FFT twiddle factors by calling the WRAM-to-ERAM copy.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It calls `mWramToEram`; ends with the end-of-command wait.
- `mgeb_RestoreXformAttribs`: address 0x37de, `push_attrib.S` line 36 (13 words). Reached: second name for `mgeb_InitFFTFactors` at the same address, so the same code.
  **Inferred** role: initialises the FFT twiddle factors by calling the WRAM-to-ERAM copy.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It calls `mWramToEram`; ends with the end-of-command wait.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgeb_InitFFTFactors` | 431 | `arm_load_ge_xform_attrib` | `HP_LOAD_GE_XFORM_ATTRIB` |

### raster.S

Raster-board commands: register writes, flush, accumulation, current raster, colour-index and RGBA modes, texture address set-up, clipmap transform. **Inferred** from its labels and callers.

- `mgesi_PassThrough`: address 0x3a5b, `raster.S` line 39 (18 words). Reached: geif slot 211 (entry 423); the ARM functions that send it are in the table below.
  **Inferred** role: passes one operand word through to the raster system: seven raster bus words with output DMA constants (0x452, 0x476, 0x477).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (7), integer-to-float conversion (1); writes 7 words to the raster-bus output addresses; loads 5 constants.
  It jumps within its own code.
  Constants loaded: 0x452, 0x700, 0x476, 0x477, 0x8.
- `mgeb_DeathCommand`: address 0x3a52, `raster.S` line 83 (1 word). Reached: geif slot 404 (entry 809).
  **Inferred** role: one-word handler that waits on its own address under condition group 4; by its name, the command that stops the engine.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It waits on its own address under another condition group.
- `mges_NullCommand`: address 0x3a45, `raster.S` line 98 (6 words). Reached: geif slot 193 (entry 387); the ARM functions that send it are in the table below; distributor relocated word, table 14.
  **Inferred** role: command that does nothing: the framing words of every handler and the end-of-command wait.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It ends with the end-of-command wait.
- `mgebi_NullCommand`: address 0x3a32, `raster.S` line 119 (13 words). Reached: geif slot 176 (entry 353); the ARM functions that send it are in the table below; distributor relocated word.
  **Inferred** role: null command for the raster path: one raster bus word with 0x70000.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3); writes 1 word to the raster-bus output addresses; loads 1 constant.
  It ends with the end-of-command wait.
  Constants loaded: 0x70000.
- `mges_DiagDeactivate`: address 0x3a25, `raster.S` line 146 (6 words). Reached: geif slot 191 (entry 383); the ARM functions that send it are in the table below.
  **Inferred** role: diagnostic deactivate: framing words only, then the end-of-command wait.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It ends with the end-of-command wait.
- `mgebi_ShadeModel`: address 0x3a0a, `raster.S` line 169 (22 words). Reached: geif slot 99 (entry 199); the ARM functions that send it are in the table below.
  **Inferred** role: GL shade model call: tests the mode bit and writes two raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (5), AND (1), OR (1), operation 0x6d1 (1); sets the condition flags once; writes 2 words to the raster-bus output addresses; loads 3 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x1, 0x70000, 0x1270800.
- `mgesi_TbusRegWrite`: address 0x39fd, `raster.S` line 215 (10 words). Reached: geif slot 107 (entry 215); the ARM functions that send it are in the table below.
  **Inferred** role: raster register write: the register (operand word 0) to bus address 0x1f7 and the value (word 1) to 0x1f5.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (4); writes 4 words to the raster-bus output addresses.
  It ends with the end-of-command wait.
- `mgesi_IMPtbusRegWrite`: address 0x39e7, `raster.S` line 242 (22 words). Reached: geif slot 108 (entry 217).
  **Inferred** role: raster register write for the IMP path: two operand words and eleven raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (13); writes 11 words to the raster-bus output addresses; loads 3 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x1681408, 0x1408, 0x70000.
- `mges_TbusRegWriteNoIncr`: address 0x39da, `raster.S` line 282 (9 words). Reached: geif slot 227 (entry 455); the ARM functions that send it are in the table below.
  **Inferred** role: raster register write without address increment: three raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (3); writes 3 words to the raster-bus output addresses.
  It ends with the end-of-command wait.
- `mgesi_AlphaFunc`: address 0x39c8, `raster.S` line 307 (18 words). Reached: geif slot 91 (entry 183); the ARM functions that send it are in the table below.
  **Inferred** role: GL alpha func call: the function and reference value (scaled by a multiply) to the raster system.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (6), float multiply (1); writes 3 words to the raster-bus output addresses; loads 5 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x15b1407, 0x7fff, 0x70000, 0xc0000, 32.76172 (0x42030c00).
- `mgesi_AlphaTest`: address 0x39b8, `raster.S` line 352 (16 words). Reached: geif slot 92 (entry 185); the ARM functions that send it are in the table below.
  **Inferred** role: enables or disables the alpha test: five raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (6), shift left (1); writes 5 words to the raster-bus output addresses; loads 4 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x15b1407, 0xf, 0x8000, 0x70000.
- `mgesi_TBUS_1`: address 0x39ab, `raster.S` line 396 (10 words). Reached: geif slot 225 (entry 451); the ARM functions that send it are in the table below; distributor table 15.
  **Inferred** role: raster bus write in a given bus mode: operand words 1 and 2 to two raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations move (3); writes 2 words to the raster-bus output addresses.
  It ends with the end-of-command wait.
- `mges_TBUS_1`: address 0x399e, `raster.S` line 425 (9 words). Reached: geif slot 0 (entry 1); the ARM functions that send it are in the table below.
  **Inferred** role: raster bus write in a given bus mode: operand words 1 and 2 to one raster bus word.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations move (2); writes 1 word to the raster-bus output addresses.
  It ends with the end-of-command wait.
- `mgesi_BshRegisterWrite`: address 0x3991, `raster.S` line 452 (12 words). Reached: geif slot 194 (entry 389); the ARM functions that send it are in the table below; distributor table 0.
  **Inferred** role: back-end register write: 0x70000 to bus address 0x1f8, then the three operand words to 0x1f5 and 0x1f8.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations move (5); writes 5 words to the raster-bus output addresses; loads 1 constant.
  It ends with the end-of-command wait.
  Constants loaded: 0x70000.
- `mgesi_BshRegisterWriteN`: address 0x3972, `raster.S` line 485 (31 words). Reached: geif slot 102 (entry 205); the ARM functions that send it are in the table below.
  **Inferred** role: back-end register write of several words: nine raster bus words in a loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (10), NOT (2); writes 9 words to the raster-bus output addresses; loads 1 constant; takes 1 conditional transfer.
  It ends with the end-of-command wait.
  Constants loaded: 0x70000.
- `mgesi_IMPbshRegisterWrite`: address 0x395e, `raster.S` line 574 (20 words). Reached: geif slot 195 (entry 391); the ARM functions that send it are in the table below; distributor table 31.
  **Inferred** role: back-end register write for the IMP path: three operand words and eight raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations move (11); writes 8 words to the raster-bus output addresses; loads 3 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x1681408, 0x70000, 0x1408.
- `mgeb_Enable_Normalize`: address 0x394e, `raster.S` line 614 (11 words). Reached: geif slot 11 (entry 23); the ARM functions that send it are in the table below.
  **Inferred** role: enables normal normalisation and marks the transform module for re-selection.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations OR (1), move (1); loads 2 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0xf449 (code in `mmo_DirtyXformAndObjToClipModule`), 0x1.
- `mgeb_Disable_Normalize`: address 0x393e, `raster.S` line 647 (11 words). Reached: geif slot 7 (entry 15); the ARM functions that send it are in the table below.
  **Inferred** role: disables normal normalisation and marks the transform module for re-selection.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1), operation 0x6d1 (1); loads 2 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0xf449 (code in `mmo_DirtyXformAndObjToClipModule`), 0x1.
- `mgeb_RGBA_Mode`: address 0x3923, `raster.S` line 682 (25 words). Reached: geif slot 333 (entry 667); the ARM functions that send it are in the table below.
  **Inferred** role: switches the context to RGBA mode: mode bits and lighting module re-selection.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (5), operation 0x6d1 (2), AND (1); sets the condition flags once; loads 8 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x10, 0xf50d (code in `mmo_DirtyLightModule`), 0x8, 0x800, 0xda3c (code in `mLiFinalLi`), 0xf547 (code in `mmo_DirtyCullAndLightModule`), 0xd831 (code in `mLiClrMtrlFinalLi`), 4095.998 (0x457ffff8).
- `mgeb_CI_Mode`: address 0x38fd, `raster.S` line 754 (31 words). Reached: geif slot 334 (entry 669); the ARM functions that send it are in the table below.
  **Inferred** role: switches the context to colour-index mode: two operand words scaled by 16.0 and 1/16.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (6), OR (2), float multiply (1), float-to-integer conversion (1), integer subtract or compare (1), integer-to-float conversion (1), second-unit operation 0xff (1), shift left (1); loads 7 constants.
  It ends with the end-of-command wait.
  Constants loaded: 16.0 (0x41800000), 0x1, 0x800, 0.0625 (0x3d800000), 0xf547 (code in `mmo_DirtyCullAndLightModule`), 0xf50d (code in `mmo_DirtyLightModule`), 0xd5a6 (code in `mLiIndexFinalLi`).
- `mgesi_UserColor`: address 0x38e5, `raster.S` line 842 (24 words). Reached: geif slot 342 (entry 685); the ARM functions that send it are in the table below.
  **Inferred** role: user colour: four operand words scaled and written as five raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations move (9), float multiply (4); writes 5 words to the raster-bus output addresses; loads 6 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x70000, 0xffffff, 0x13d1c14, 0xc0000, 0x400c0c00, 0x13e1c15.
- `mgesi_Accum`: address 0x38c0, `raster.S` line 901 (34 words). Reached: geif slot 337 (entry 675).
  **Inferred** role: GL accum call: compares the operation and scales the value for the accumulation buffer.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (15), OR (2), integer subtract or compare (2), float multiply (1), float subtract (1), operation 0x6ee (1), second-unit move (1); sets the condition flags 2 times; writes 8 words to the raster-bus output addresses; loads 9 constants.
  It jumps within its own code.
  Constants loaded: 0x1c0e, 0x100, 0x2040d00, 2.203125 (0x400d0000), 1024.0 (0x44800000), 4096.0 (0x45800000), 0x1408, 0x70000 and 1 more.
- `mgesi_Accum32`: address 0x3894, `raster.S` line 970 (38 words). Reached: geif slot 434 (entry 869).
  **Inferred** role: GL accum call for the 32-bit accumulation buffer.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (18), OR (2), integer subtract or compare (2), float multiply (1), float subtract (1), operation 0x6ee (1); sets the condition flags 2 times; writes 7 words to the raster-bus output addresses; loads 9 constants.
  It jumps within its own code.
  Constants loaded: 0x40031303, 4096.0 (0x45800000), 0x1408, 1024.0 (0x44800000), 0x1c0e, 0xd0000, 0x2060d00, 0x70000 and 1 more.
- `mgebi_ErrQuery`: address 0x387d, `raster.S` line 1052 (17 words). Reached: geif slot 339 (entry 679); the ARM functions that send it are in the table below.
  **Inferred** role: reads back the recorded GL error, loading the output-DMA constant 0x476 that the other read-back handlers also use.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (5); loads 1 constant.
  It ends with the end-of-command wait.
  Constants loaded: 0x476.
- `mgeb_SetCurrentRaster`: address 0x384b, `raster.S` line 1093 (39 words). Reached: geif slot 366 (entry 733); the ARM functions that send it are in the table below.
  **Inferred** role: sets the current raster state from 15 operand words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 14; operations move (19), AND (1), float multiply (1), float subtract (1); sets the condition flags 2 times; loads 3 constants.
  It ends with the end-of-command wait.
  Constants loaded: 16.0 (0x41800000), 0x800, 0x4.
- `mgesi_FlushRM`: address 0x380b, `raster.S` line 1149 (46 words). Reached: geif slot 399 (entry 799); the ARM functions that send it are in the table below.
  **Inferred** role: flushes the raster managers: six raster bus words in a counted loop of eight.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (13), NOT (6); writes 6 words to the raster-bus output addresses; loads 3 constants; takes 3 conditional transfers.
  It jumps within its own code.
  Constants loaded: 0x1c3a, 0x1411, 0x87f.
- `mgeb_ClipmapXform`: address 0x37f9, `raster.S` line 1238 (17 words). Reached: geif slot 427 (entry 855); the ARM functions that send it are in the table below.
  **Inferred** role: clipmap transform: four operand words and texture module re-selection.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations move (5), OR (1), operation 0x6d1 (1); sets the condition flags once; loads 2 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0xf494 (code in `mmo_DirtyTextureAndScreenModule`), 0x2000000.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgesi_PassThrough` | 211 | `arm_passthrough` | `HP_PASSTHROUGH` |
| `mges_NullCommand` | 193 | `init_ged` |  |
| `mgebi_NullCommand` | 176 | `PixEndRGBLine`, `PixelRestore`, `SetupGE_ColorLine`, `SetupGE_LuminanceLine`, `activate_setcurrentge`, `arm_context_mopup`, `diag_ged_nextge` | `HP_CONTEXT_MOPUP` |
| `mges_DiagDeactivate` | 191 | `arm_ged_verif_dump`, `diag_ged_deactivate_context` | `HP_GED_VERIF_DUMP` |
| `mgebi_ShadeModel` | 99 | `arm_shademodel`, `light_pop` | `HP_SHADEMODEL` |
| `mgesi_TbusRegWrite` | 107 | `SetupReadbackTF`, `arm_bind_linear_texture`, `arm_bind_texture`, `arm_blendcolor`, `arm_buffer_config`, `arm_clear`, `arm_colormask`, `arm_validate_clip`, `color_init`, `color_pop`, `init_imp`, `init_multisample`, `init_simulator_hacks`, `masked_clear`, `masked_word_clear`, `resolve_banks`, `stencil_pop`, `tbus_regwrite`, `update_texbind_id`, `update_texload_id`, `word_clear`, `x_initregs` | `HP_BIND_LINEAR_TEXTURE`, `HP_BIND_TEXTURE`, `HP_BLENDCOLOR`, `HP_BUFFER_CONFIG`, `HP_CLEAR`, `HP_COLORMASK`, `HP_VALIDATE_CLIP` |
| `mges_TbusRegWriteNoIncr` | 227 | `tbus_regwritenoincr` |  |
| `mgesi_AlphaFunc` | 91 | `arm_alphafunc`, `color_pop` | `HP_ALPHAFUNC` |
| `mgesi_AlphaTest` | 92 | `color_pop`, `d_alpha_test`, `e_alpha_test` |  |
| `mgesi_TBUS_1` | 225 | `init_ged` |  |
| `mges_TBUS_1` | 0 | `arm_context_activate`, `deactivate_arm`, `diag_tbus_1`, `diag_tbus_1_noid`, `init_simulator_hacks` | `HP_CONTEXT_ACTIVATE` |
| `mgesi_BshRegisterWrite` | 194 | `init_ged` |  |
| `mgesi_BshRegisterWriteN` | 102 | `arm_bind_2d_clipmap_texture`, `arm_bind_3d_mipmap_texture`, `arm_bind_3d_texture`, `arm_bind_bicubic_texture`, `arm_shadow_texture` | `HP_BIND_2D_CLIPMAP_TEXTURE`, `HP_BIND_3D_MIPMAP_TEXTURE`, `HP_BIND_3D_TEXTURE`, `HP_BIND_BICUBIC_TEXTURE`, `HP_SHADOW_TEXTURE` |
| `mgesi_IMPbshRegisterWrite` | 195 | `init_ged` |  |
| `mgeb_Enable_Normalize` | 11 | `e_normalize` |  |
| `mgeb_Disable_Normalize` | 7 | `d_normalize` |  |
| `mgeb_RGBA_Mode` | 333 | `arm_buffer_config` | `HP_BUFFER_CONFIG` |
| `mgeb_CI_Mode` | 334 | `arm_buffer_config` | `HP_BUFFER_CONFIG` |
| `mgesi_UserColor` | 342 | `arm_blendcolor`, `color_pop` | `HP_BLENDCOLOR` |
| `mgebi_ErrQuery` | 339 | `arm_geterror` | `HP_GETERROR` |
| `mgeb_SetCurrentRaster` | 366 | `arm_set_current_raster` | `HP_SET_CURRENT_RASTER` |
| `mgesi_FlushRM` | 399 | `arm_finish`, `arm_flush_raster`, `reset_imps` | `HP_FINISH`, `HP_FLUSH_RASTER` |
| `mgeb_ClipmapXform` | 427 | `arm_bind_2d_clipmap_texture` | `HP_BIND_2D_CLIPMAP_TEXTURE` |

### refplane.S

Reference-plane commands. **Inferred** from its labels and callers.

- `mgebi_ReferencePlane_Enable`: address 0x5b2f, `refplane.S` line 41 (13 words). Reached: geif slot 117 (entry 235); the ARM functions that send it are in the table below.
  **Inferred** role: enables the reference plane (bit 0x4000000) and computes it.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations OR (1), move (1); loads 1 constant; takes 1 conditional transfer.
  It ends with the end-of-command wait; conditional transfers reach `mRefPlane`.
  Constants loaded: 0x4000000.
- `mgebi_ReferencePlane_Disable`: address 0x5b15, `refplane.S` line 75 (21 words). Reached: geif slot 118 (entry 237); the ARM functions that send it are in the table below.
  **Inferred** role: disables the reference plane: clears the bit and writes two raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (5), AND (1); writes 2 words to the raster-bus output addresses; loads 4 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0xfbffffff, 0x1243fd3, 0x6, 0x70000.
- `mgebi_ReferencePlane`: address 0x59a2, `refplane.S` line 127 (239 words). Reached: geif slot 376 (entry 753); the ARM functions that send it are in the table below; distributor table 16.
  **Inferred** role: defines the reference plane from four operand words: inverse through the adjoint and multiplies.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations move (44), float subtract (41), float multiply (37), float add (33), reciprocal Newton step (6), operation 0x6ea (3), AND (1); sets the condition flags 12 times; writes 1 word to the raster-bus output addresses; loads 3 constants; takes 16 conditional transfers.
  It calls `mMatrixAdjoint`; ends with the end-of-command wait; jumps within its own code; conditional transfers reach `mMatrixMultCCC` and 1 other label.
  Constants loaded: 100.0 (0x42c80000), 1e-06 (0x358637bd), 0x4000000.
- `mRefPlane`: address 0x5b4c, `refplane.S` line 464 (73 words). Reached: transfers in `mgebi_ReferencePlane` and 1 other label.
  **Inferred** role: computes the reference-plane raster terms and writes eight raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (23), float multiply (9), float add (6), float subtract (6), operation 0x6fe (6), minimum (3), NOT (1); writes 8 words to the raster-bus output addresses; stores 13 words to control-memory addresses from 0xc9 to 0xd7; reads engine memory at 9 addresses from 0x94b to 0x953; loads 3 constants.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0x70000, 0x1243fd3, 0x2.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgebi_ReferencePlane_Enable` | 117 | `activate_private`, `e_reference_plane`, `resolve_viewport` |  |
| `mgebi_ReferencePlane_Disable` | 118 | `d_reference_plane` |  |
| `mgebi_ReferencePlane` | 376 | `init_ged` |  |

### scalebias.s

Pixel-path scale-and-bias stage and the depth final stage. **Inferred** from its labels and callers.

- `mmo_ScaleBias`: address 0x1f07, `scalebias.s` line 67 (112 words). Reached: geif slot 328 (entry 657); the ARM functions that send it are in the table below.
  **Inferred** role: pixel-path scale-and-bias stage: set-up, then the depth form and its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (30).
  It has no jump of its own and runs on into `umo_DepthFinalCont`.
- `umo_ScaleBias`: address 0x1f07, `scalebias.s` line 67 (112 words). Reached: second name for `mmo_ScaleBias` at the same address, so the same code.
  **Inferred** role: pixel-path scale-and-bias stage: set-up, then the depth form and its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (30).
  It has no jump of its own and runs on into `umo_DepthFinalCont`.
- `umo_DepthFinalCont`: address 0x1f77, `scalebias.s` line 198 (11 words). Reached: transfers in `umo_DepthFinal`.
  **Inferred** role: continuation of the depth scale-and-bias stage: two multiplies, then the main loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (2); closes 1 loop.
  It has no jump of its own and runs on into `mainloop_sb`.
- `mainloop_sb`: address 0x1f82, `scalebias.s` line 217 (29 words). Reached: inside `umo_DepthFinalCont`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (20), float add (4), float multiply (4); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_sb`.
- `epilogue_sb`: address 0x1f9f, `scalebias.s` line 249 (51 words). Reached: transfers in `umo_DepthFinalCont`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (21), float add (2), float multiply (2).
  It ends the command with an indirect transfer in condition group 31.
- `umo_DepthFinal`: address 0x1fd2, `scalebias.s` line 313 (59 words). Reached: inside `umo_DepthFinalCont`, reached from that routine's own code.
  **Inferred** role: final depth scale-and-bias step inside the stage: multiplies and moves.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (18), float multiply (16), float add (1), float subtract (1); closes 1 loop.
  It has no jump of its own; it is the last code of its source file.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mmo_ScaleBias` | 328 | `AddF2ISignScaleBias`, `AddPostClrMtrxScaleBias`, `AddPostClrMtrxScaleBias1Cmpnt`, `AddScaleBias`, `AddScaleBias1Cmpnt`, `AddSignedBias` |  |

### select.S

Selection mode: begin and end, name stack. **Inferred** from its labels and callers.

- `mgeb_InitNames`: address 0xc12e, `select.S` line 36 (12 words). Reached: geif slot 153 (entry 307); the ARM functions that send it are in the table below.
  **Inferred** role: GL init names call: clears the name stack after flushing a pending hit.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (1), move (1); sets the condition flags once; loads 1 constant; takes 1 conditional transfer.
  It calls `mSelectFlush`; ends with the end-of-command wait.
  Constants loaded: 0x20000000.
- `mgeb_PopName`: address 0xc0e0, `select.S` line 70 (17 words). Reached: geif slot 167 (entry 335); the ARM functions that send it are in the table below.
  **Inferred** role: GL pop name call: flushes a pending hit and pops the name stack, checking for underflow.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (1), integer subtract or compare (1), move (1); sets the condition flags 2 times; loads 2 constants; takes 2 conditional transfers.
  It calls `mSelectFlush`; ends with the end-of-command wait; conditional transfers reach `mErrStackUnderflow`.
  Constants loaded: 0x20000000, 0x1.
- `mgeb_PushName`: address 0xc086, `select.S` line 113 (22 words). Reached: geif slot 168 (entry 337); the ARM functions that send it are in the table below.
  **Inferred** role: GL push name call: flushes a pending hit and pushes the operand onto the name stack, checking its depth (0x40).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations AND (1), integer add (1), integer subtract or compare (1), move (1); sets the condition flags 2 times; loads 3 constants; takes 2 conditional transfers.
  It calls `mSelectFlush`; ends with the end-of-command wait; conditional transfers reach `mErrStackOverflow`.
  Constants loaded: 0x20000000, 0x40, 0x1.
- `mgeb_LoadName`: address 0xc02c, `select.S` line 165 (19 words). Reached: geif slot 155 (entry 311); the ARM functions that send it are in the table below.
  **Inferred** role: GL load name call: flushes a pending hit and replaces the top name, with the invalid-operation error on an empty stack.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (3), AND (1); sets the condition flags 2 times; loads 1 constant; takes 2 conditional transfers.
  It calls `mSelectFlush`; ends with the end-of-command wait; conditional transfers reach `mErrInvalidOperation`.
  Constants loaded: 0x20000000.
- `mgeb_BgnSelectMode`: address 0xc016, `select.S` line 219 (12 words). Reached: geif slot 126 (entry 253); the ARM functions that send it are in the table below.
  **Inferred** role: enters selection mode: sets bit 29 and flushes.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations OR (1), move (1); loads 1 constant.
  It calls `mSelectFlush`; ends with the end-of-command wait.
  Constants loaded: 0x20000000.
- `mgeb_EndSelectMode`: address 0xc002, `select.S` line 252 (10 words). Reached: geif slot 139 (entry 279); the ARM functions that send it are in the table below.
  **Inferred** role: leaves selection mode: clears bit 29 and flushes.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (1); loads 1 constant.
  It calls `mSelectFlush`; ends with the end-of-command wait.
  Constants loaded: 0xdfffffff.
- `mSelectFlush`: address 0xc159, `select.S` line 282 (79 words). Reached: transfers in `mgeb_BgnSelectMode` and 5 other labels.
  **Inferred** role: writes a pending selection hit record (names, minimum and maximum depth) through seven raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (24), NOT (2), minimum (2), AND (1), integer add (1); sets the condition flags once; writes 7 words to the raster-bus output addresses; reads engine memory at 0x1389; loads 10 constants; takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0x1, 0x1000, 0x452, 0, 0x476, 0x497fffff, 0x5020000c, 0x477 and 2 more.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgeb_InitNames` | 153 | `arm_initnames` | `HP_INITNAMES` |
| `mgeb_PopName` | 167 | `arm_popname` | `HP_POPNAME` |
| `mgeb_PushName` | 168 | `arm_pushname` | `HP_PUSHNAME` |
| `mgeb_LoadName` | 155 | `arm_loadname` | `HP_LOADNAME` |
| `mgeb_BgnSelectMode` | 126 | `arm_rendermode` | `HP_RENDERMODE` |
| `mgeb_EndSelectMode` | 139 | `arm_rendermode` | `HP_RENDERMODE` |

### selectmods.S

Selection hit recording per primitive type. **Inferred** from its labels and callers.

- `mmo_SelectTriangle`: address 0xbecc, `selectmods.S` line 70 (42 words). Reached: its address loaded as a constant in `mgeb_PolygonSetup_Select`.
  **Inferred** role: selection for a triangle: updates the hit's minimum and maximum depth and records the hit.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (7), float add (6), maximum (6), minimum (6), AND (2); sets the condition flags 2 times; takes 1 conditional transfer.
  It jumps to `mRecordHit`.
- `mmo_SelectLine`: address 0xbfaf, `selectmods.S` line 138 (34 words). Reached: its address loaded as a constant in `mgeb_LineWidth_Select`.
  **Inferred** role: selection for a line: updates the hit depth range and records the hit.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (7), float add (4), maximum (4), minimum (4), AND (2); sets the condition flags 2 times; takes 1 conditional transfer.
  It jumps to `mRecordHit`.
- `mmo_SelectPoint`: address 0xbf6d, `selectmods.S` line 203 (26 words). Reached: its address loaded as a constant in `mgebi_PointSize_Select`.
  **Inferred** role: selection for a point: updates the hit depth range and records the hit.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (7), AND (2), float add (2), maximum (2), minimum (2); sets the condition flags 2 times; takes 1 conditional transfer.
  It jumps to `mRecordHit`.
- `mmo_SelectRasterPos`: address 0xbf2f, `selectmods.S` line 261 (24 words). Reached: transfers in `mmo_SaveRasterPos`.
  **Inferred** role: selection for a raster position: updates the hit depth range and records the hit.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (7), AND (2), maximum (2), minimum (2); sets the condition flags 2 times; takes 1 conditional transfer.
  It jumps to `mRecordHit`.
- `mRecordHit`: address 0xbe8f, `selectmods.S` line 316 (34 words). Reached: transfers in `mmo_SelectLine` and 3 other labels.
  **Inferred** role: records a selection hit: depth range update and one raster bus word.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (7), maximum (2), minimum (2), integer subtract or compare (1); sets the condition flags once; writes 1 word to the raster-bus output addresses; loads 3 constants; takes 2 conditional transfers.
  It ends with the end-of-command wait; conditional transfers reach `HereWeGo`.
  Constants loaded: 0x1000, 0xe623 (code in `mmo_SaveRasterPos`), 0x70000.

### shiftadd.s

Pixel-path shift-and-add stage. **Inferred** from its labels and callers.

- `mmo_ShiftAdd`: address 0x192e, `shiftadd.s` line 33 (55 words). Reached: geif slot 329 (entry 659); the ARM functions that send it are in the table below.
  **Inferred** role: pixel-path shift-and-add stage: set-up, then the shift loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (8), operation 0x6ce (1); sets the condition flags once; closes 1 loop.
  It has no jump of its own and runs on into `shift_left`.
- `umo_ShiftAdd`: address 0x192e, `shiftadd.s` line 33 (55 words). Reached: second name for `mmo_ShiftAdd` at the same address, so the same code.
  **Inferred** role: pixel-path shift-and-add stage: set-up, then the shift loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (8), operation 0x6ce (1); sets the condition flags once; closes 1 loop.
  It has no jump of its own and runs on into `shift_left`.
- `shift_left`: address 0x1965, `shiftadd.s` line 111 (9 words). Reached: inside `mmo_ShiftAdd`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations shift left (4); closes 1 loop.
  It has no jump of its own and runs on into `mainloop_sa_ls`.
- `mainloop_sa_ls`: address 0x196e, `shiftadd.s` line 123 (19 words). Reached: inside `mmo_ShiftAdd`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations integer add (8), shift left (8); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_sa_ls`.
- `epilogue_sa_ls`: address 0x1981, `shiftadd.s` line 145 (26 words). Reached: transfers in `shift_left`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations integer add (7), shift left (7).
  It ends the command with an indirect transfer in condition group 31.
- `shift_right`: address 0x199b, `shiftadd.s` line 175 (9 words). Reached: transfers in `mmo_ShiftAdd`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations logical shift right (4); closes 1 loop.
  It has no jump of its own and runs on into `mainloop_sa_rs`.
- `mainloop_sa_rs`: address 0x19a4, `shiftadd.s` line 187 (19 words). Reached: inside `mmo_ShiftAdd`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations integer add (8), logical shift right (8); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_sa_rs`.
- `epilogue_sa_rs`: address 0x19b7, `shiftadd.s` line 209 (26 words). Reached: transfers in `shift_right`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations integer add (7), logical shift right (7).
  It ends the command with an indirect transfer in condition group 31.
- `umo_ShiftAdd_RGB`: address 0x19d1, `shiftadd.s` line 247 (55 words). Reached: inside `mmo_ShiftAdd`, reached from that routine's own code.
  **Inferred** role: RGB entry of the shift-and-add stage.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (7), operation 0x6ce (2); sets the condition flags once; closes 1 loop.
  It has no jump of its own and runs on into `shift_left_rgb`.
- `shift_left_rgb`: address 0x1a08, `shiftadd.s` line 325 (9 words). Reached: inside `umo_ShiftAdd_RGB`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): closes 1 loop.
  It has no jump of its own and runs on into `mainloop_sa_ls_rgb`.
- `mainloop_sa_ls_rgb`: address 0x1a11, `shiftadd.s` line 337 (21 words). Reached: inside `umo_ShiftAdd_RGB`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations shift left (12), logical shift right (4); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_sa_ls_rgb`.
- `epilogue_sa_ls_rgb`: address 0x1a26, `shiftadd.s` line 361 (20 words). Reached: transfers in `shift_left_rgb`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations shift left (9), logical shift right (3).
  It ends the command with an indirect transfer in condition group 31.
- `shift_right_rgb`: address 0x1a3a, `shiftadd.s` line 390 (9 words). Reached: transfers in `umo_ShiftAdd_RGB`.
  **Inferred** role: right-shift path of the RGB shift-and-add stage, taken at 0x19ff on condition 4 of the flags the register-5 move at 0x19e9 sets; after the 0x15 exit to `epilogue_sa_rs_rgb` and eight empty words, its loop applies the logical right shift (unit-1 code 0x5d) to sixteen input words straight into the matching outputs, where the left path uses code 0x5f.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): closes 1 loop.
  It has no jump of its own and runs on into `mainloop_sa_rs_rgb`.
- `mainloop_sa_rs_rgb`: address 0x1a43, `shiftadd.s` line 402 (21 words). Reached: inside `umo_ShiftAdd_RGB`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations logical shift right (16); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_sa_rs_rgb`.
- `epilogue_sa_rs_rgb`: address 0x1a58, `shiftadd.s` line 426 (20 words). Reached: transfers in `shift_right_rgb`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations logical shift right (12).
  It ends the command with an indirect transfer in condition group 31.
- `umo_ShiftAdd_Luminance`: address 0x1a6c, `shiftadd.s` line 463 (55 words). Reached: inside `umo_ShiftAdd_RGB`, reached from that routine's own code.
  **Inferred** role: luminance entry of the shift-and-add stage.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (7), operation 0x6ce (2); sets the condition flags once; closes 1 loop.
  It has no jump of its own and runs on into `shift_left_luminance`.
- `shift_left_luminance`: address 0x1aa3, `shiftadd.s` line 541 (9 words). Reached: inside `umo_ShiftAdd_Luminance`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): closes 1 loop.
  It has no jump of its own and runs on into `mainloop_sa_ls_luminance`.
- `mainloop_sa_ls_luminance`: address 0x1aac, `shiftadd.s` line 553 (21 words). Reached: inside `umo_ShiftAdd_Luminance`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations shift left (12), logical shift right (4); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_sa_ls_luminance`.
- `epilogue_sa_ls_luminance`: address 0x1ac1, `shiftadd.s` line 577 (20 words). Reached: transfers in `shift_left_luminance`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations shift left (9), logical shift right (3).
  It ends the command with an indirect transfer in condition group 31.
- `shift_right_luminance`: address 0x1ad5, `shiftadd.s` line 606 (9 words). Reached: transfers in `umo_ShiftAdd_Luminance`.
  **Inferred** role: right-shift path of the luminance shift-and-add stage, taken at 0x1a9a on condition 4 after the flag-setting move of register 5 at 0x1a84; its loop shifts right logically (code 0x5d) while widening pairs, each even input word going to three outputs and each odd one to one, sixteen outputs from eight inputs, so a luminance and alpha pair leaves as four components.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): closes 1 loop.
  It has no jump of its own and runs on into `mainloop_sa_rs_luminance`.
- `mainloop_sa_rs_luminance`: address 0x1ade, `shiftadd.s` line 618 (21 words). Reached: inside `umo_ShiftAdd_Luminance`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations logical shift right (16); closes 1 loop.
  It has no jump of its own and runs on into `epilogue_sa_rs_luminance`.
- `epilogue_sa_rs_luminance`: address 0x1af3, `shiftadd.s` line 642 (20 words). Reached: transfers in `shift_right_luminance`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations logical shift right (12).
  It ends the command with an indirect transfer in condition group 31.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mmo_ShiftAdd` | 329 | `AddCopyFloat`, `AddShiftAdd`, `AddUnsignedIntShift` |  |

### sprite.S

Sprite (SGIX_sprite) rotation modes. **Inferred** from its labels and callers.

- `mmo_DirtySpriteModule`: address 0x8669, `sprite.S` line 109 (6 words). Reached: its address loaded as a constant in `mmo_DirtyPrePathModule`.
  **Inferred** role: re-selects the sprite module after a state change, through the CRAM-to-ERAM copy.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It jumps to `mCramToEram`.
- `mSpriteAxial`: address 0x8800, `sprite.S` line 167 (86 words). Reached: geif slot 371 (entry 743); the ARM functions that send it are in the table below.
  **Inferred** role: sprite in axial mode: rotates the sprite about its axis toward the eye with normalised vectors and the adjoint.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (34), float add (14), move (13), float multiply-add (4), reciprocal square-root Newton step (4), float subtract (3), reciprocal square-root seed (2), second-unit move (2).
  It calls `mSpriteRotateV0OntoV1` and `mMatrixAdjoint`; jumps to `mSpriteRotateMatrix`.
- `mSpriteObject`: address 0x86d3, `sprite.S` line 235 (170 words). Reached: geif slot 372 (entry 745); transfers in `mSpriteEye`.
  **Inferred** role: sprite in object mode: rotation toward the eye from normalised vectors and the adjoint.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (75), float add (36), move (19), reciprocal square-root Newton step (8), reciprocal square-root seed (4), float subtract (3), float multiply-add (1), integer subtract or compare (1); sets the condition flags once; loads 1 constant; takes 1 conditional transfer.
  It calls `mMatrixAdjoint` and `mSpriteRotateV0OntoV1`; jumps to `mSpriteRotateMatrix`.
  Constants loaded: 0x86d3 (code in `mSpriteObject`).
- `mSpriteEye`: address 0x87f7, `sprite.S` line 365 (1 word). Reached: geif slot 373 (entry 747).
  **Inferred** role: one-word entry for eye-aligned sprites that continues into the object-mode code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It jumps to `mSpriteObject`.
- `mSpriteRotateV0OntoV1`: address 0x8894, `sprite.S` line 390 (59 words). Reached: transfers in `mSpriteAxial` and 1 other label.
  **Inferred** role: builds the rotation that takes one vector onto another, then the matrix multiply.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (32), float add (10), float subtract (7), reciprocal square-root Newton step (2), reciprocal square-root seed (1); loads 1 constant.
  It jumps to `mMatrixMultCCWNoFetch`.
  Constants loaded: 1.0 (0x3f800000).
- `mSpriteRotateMatrix`: address 0x8676, `sprite.S` line 466 (54 words). Reached: transfers in `mSpriteAxial` and 1 other label.
  **Inferred** role: applies the sprite rotation to the matrix, then ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (16), float add (8), move (6), float subtract (5), float multiply-add (2), OR (1), second-unit move (1), second-unit move or minimum (1); sets the condition flags once; loads 7 constants; takes 1 conditional transfer.
  It calls `mMatrixMultCCWNoFetch`; ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0, 1.0 (0x3f800000).
- `mMatrixMultCCWNoFetch`: address 0x88e9, `sprite.S` line 605 (63 words). Reached: transfers in `mSpriteRotateMatrix` and 1 other label.
  **Inferred** role: matrix multiply with the operands already loaded: 16 multiply-adds, then a return.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (16), float multiply (16), float multiply-add (16).
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mSpriteAxial` | 371 | `initSpriteState` |  |

### subdiv.S

Patch subdivision entry and tags. **Inferred** from its labels and callers.

- `mgeb_Subdiv`: address 0x442e, `subdiv.S` line 36 (6 words). Reached: geif slot 424 (entry 849); the ARM functions that send it are in the table below.
  **Inferred** role: subdivision command: framing words only, then the end-of-command wait.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It ends with the end-of-command wait.
- `mges_SubdivTag`: address 0x4421, `subdiv.S` line 59 (6 words). Reached: geif slot 425 (entry 851); the ARM functions that send it are in the table below.
  **Inferred** role: subdivision tag command: framing words only, then the end-of-command wait.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It ends with the end-of-command wait.
- `mgesi_SubdivEntry`: address 0x4414, `subdiv.S` line 82 (7 words). Reached: geif slot 426 (entry 853); distributor relocated word.
  **Inferred** role: subdivision vertex entry: one raster bus word.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1); writes 1 word to the raster-bus output addresses.
  It ends with the end-of-command wait.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgeb_Subdiv` | 424 | `arm_subdiv_patch_parameter` | `HP_SUBDIV_PATCH_PARAMETER` |
| `mges_SubdivTag` | 425 | `arm_subdiv_patch` | `HP_SUBDIV_PATCH` |

### texenv.S

Texture environment. **Inferred** from its labels and callers.

- `mValidateTexenvMode`: address 0x594d, `texenv.S` line 54 (43 words). Reached: transfers in `mgebi_TexEnv` and 1 other label.
  **Inferred** role: checks the texture environment mode against the texture format: compares with GL_MODULATE (0x2100), GL_DECAL (0x2101) and the format enumerants, and writes three raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (13), integer subtract or compare (5), OR (3); sets the condition flags 6 times; writes 3 words to the raster-bus output addresses; reads engine memory at 6 addresses from 0x28f to 0x294; loads 7 constants; takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0x2100, 0x2101, 0xbe2, 0x8062, 0x1e01, 0x70000, 0x15d1401.
- `mTexEnvDone`: address 0x5942, `texenv.S` line 111 (4 words). Reached: transfers in `mgebi_TexEnv`.
  **Inferred** role: common end of GL tex env call: one move and the end-of-command wait.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1).
  It ends with the end-of-command wait.
- `mgebi_TexEnv`: address 0x5879, `texenv.S` line 137 (89 words). Reached: geif slot 109 (entry 219); the ARM functions that send it are in the table below.
  **Inferred** role: GL tex env call: compares a command word with 0x2200 and 0x2201 (the enumerants for the texture environment mode and colour parameters), checks the mode word against the five texture environment mode enumerants (0x2100, 0x2101, 0xbe2, 0x8062, 0x1e01), does four float multiplies that look like colour scaling (inferred), and validates the mode or raises the invalid-enum error.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 4; operations move (25), integer subtract or compare (10), NOT (6), float multiply (4), float-to-integer conversion (1); sets the condition flags 10 times; writes 5 words to the raster-bus output addresses; loads 17 constants; takes 5 conditional transfers.
  It jumps to `mTexEnvDone` and `mErrInvalidEnum`; jumps within its own code; conditional transfers reach `mTexEnvDone` and 1 other label.
  Constants loaded: 0x2200, 0x2201, 0x80be, 0x2100, 0x2101, 0xbe2, 0x8062, 0x1e01 and 6 more.
- `mgebi_TexEnvComps`: address 0x5857, `texenv.S` line 238 (17 words). Reached: geif slot 110 (entry 221); the ARM functions that send it are in the table below.
  **Inferred** role: sets the texture component count and revalidates the environment mode.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (4); writes 1 word to the raster-bus output addresses; loads 1 constant; takes 1 conditional transfer.
  It ends with the end-of-command wait; conditional transfers reach `mValidateTexenvMode`.
  Constants loaded: 0x70000.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgebi_TexEnv` | 109 | `arm_texenvf`, `arm_texenvi`, `initTextureState` | `HP_TEXENVF`, `HP_TEXENVI` |
| `mgebi_TexEnvComps` | 110 | `arm_bind_linear_texture`, `arm_bind_texture`, `initTextureState`, `texture_pop` | `HP_BIND_LINEAR_TEXTURE`, `HP_BIND_TEXTURE` |

### texgen.S

Texture-coordinate generation modes and planes. **Inferred** from its labels and callers.

- `mTexGenResolve`: address 0xd11e, `texgen.S` line 57 (65 words). Reached: transfers in `mTexGenEyeLin` and 8 other labels.
  **Inferred** role: resolves the texture-coordinate generation state: combines the per-coordinate mode bits and selects the transform module.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (9), OR (7), AND (6), shift left (4), integer subtract or compare (3), operation 0x6d1 (1); sets the condition flags 4 times; loads 10 constants; takes 2 conditional transfers.
  It ends with the end-of-command wait.
  Constants loaded: 0x2c03ffff, 0x20000000, 0x1, 0x2, 0x8000000, 0x4c03ffff, 0x4000000, 0xf449 (code in `mmo_DirtyXformAndObjToClipModule`) and 2 more.
- `mTexGenSph`: address 0xcd59, `texgen.S` line 189 (10 words). Reached: transfers in `mgeb_TexGen`.
  **Inferred** role: sets sphere-map generation for one coordinate.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations OR (2), AND (1); reads engine memory at 0x3df; loads 3 constants; takes 1 conditional transfer.
  It jumps to `mTexGenResolve`; conditional transfers reach `mTexGenResolve`.
  Constants loaded: 0x60000000, 0xc000000, 0xb85.
- `mTexGenObjLin`: address 0xcd3f, `texgen.S` line 223 (10 words). Reached: transfers in `mgeb_TexGen`.
  **Inferred** role: sets object-linear generation for one coordinate.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations OR (2), AND (1); reads engine memory at 0x3df; loads 3 constants.
  It jumps to `mTexGenResolve`.
  Constants loaded: 0x60000000, 0xc30, 0xc53.
- `mTexGenEyeLin`: address 0xcd21, `texgen.S` line 249 (12 words). Reached: transfers in `mgeb_TexGen`.
  **Inferred** role: sets eye-linear generation for one coordinate.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations OR (3), AND (1); reads engine memory at 0x3df; loads 4 constants.
  It jumps to `mTexGenResolve`.
  Constants loaded: 0x60000000, 0x8000000, 0xbea, 0xc0d.
- `mTexGenEyePointDist`: address 0xcd03, `texgen.S` line 278 (12 words). Reached: transfers in `mgeb_TexGen`.
  **Inferred** role: sets eye point-distance generation and loads its module address.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations OR (3), AND (1); reads engine memory at 0x3df; loads 4 constants.
  It jumps to `mTexGenResolve`.
  Constants loaded: 0x60000000, 0x8000000, 0xd068 (code in `mmo_TexGenEyePoint_ST`), 0xd0c3 (code in `mmo_TexGenEyePoint_RQ`).
- `mTexGenObjPointDist`: address 0xcce9, `texgen.S` line 306 (10 words). Reached: transfers in `mgeb_TexGen`.
  **Inferred** role: sets object point-distance generation and loads its module address.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations OR (2), AND (1); reads engine memory at 0x3df; loads 3 constants.
  It jumps to `mTexGenResolve`.
  Constants loaded: 0x60000000, 0xce98 (code in `mmo_TexGenObjPoint_ST`), 0xcef3 (code in `mmo_TexGenObjPoint_RQ`).
- `mTexGenEyeLineDist`: address 0xcccb, `texgen.S` line 333 (12 words). Reached: transfers in `mgeb_TexGen`.
  **Inferred** role: sets eye line-distance generation and loads its module address.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations OR (3), AND (1); reads engine memory at 0x3df; loads 4 constants.
  It jumps to `mTexGenResolve`.
  Constants loaded: 0x60000000, 0x8000000, 0xcf4e (code in `mmo_TexGenEyeLine_ST`), 0xcfdb (code in `mmo_TexGenEyeLine_RQ`).
- `mTexGenObjLineDist`: address 0xccb1, `texgen.S` line 361 (10 words). Reached: transfers in `mgeb_TexGen`.
  **Inferred** role: sets object line-distance generation and loads its module address.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations OR (2), AND (1); reads engine memory at 0x3df; loads 3 constants.
  It jumps to `mTexGenResolve`.
  Constants loaded: 0x60000000, 0xcd7e (code in `mmo_TexGenObjLine_ST`), 0xce0b (code in `mmo_TexGenObjLine_RQ`).
- `mTexGenObjPlane`: address 0xcc9e, `texgen.S` line 382 (10 words). Reached: transfers in `mgeb_TexGen`.
  **Inferred** role: stores an object plane from four operand words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 2 to 5; operations move (4).
  It ends with the end-of-command wait.
- `mTexGenEyePlane`: address 0xcc6e, `texgen.S` line 402 (32 words). Reached: transfers in `mgeb_TexGen`.
  **Inferred** role: stores an eye plane from four operand words, transformed by the inverse modelview.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 2 to 5; operations float multiply-add (11), float add (5), float multiply (5), move (4); takes 1 conditional transfer.
  It ends with the end-of-command wait; conditional transfers reach `mMatrixInverse`.
- `mTexGenObjPoint`: address 0xcc43, `texgen.S` line 443 (20 words). Reached: transfers in `mgeb_TexGen`.
  **Inferred** role: stores an object reference point, divided by its w with a reciprocal.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 2 to 5; operations float multiply (5), move (4), reciprocal Newton step (2), reciprocal seed (1).
  It ends with the end-of-command wait.
- `mTexGenEyePoint`: address 0xcbff, `texgen.S` line 469 (43 words). Reached: transfers in `mgeb_TexGen`.
  **Inferred** role: stores an eye reference point, transformed and divided by its w.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 2 to 5; operations float multiply (18), float add (13), float multiply-add (3), reciprocal Newton step (2), reciprocal seed (1); takes 1 conditional transfer.
  It ends with the end-of-command wait; conditional transfers reach `mMatrixInverse`.
- `mTexGenObjLine`: address 0xcbbe, `texgen.S` line 518 (41 words). Reached: transfers in `mgeb_TexGen`.
  **Inferred** role: stores an object reference line from seven operand words, normalised.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 2 to 8; operations float multiply (15), move (7), float add (2), reciprocal Newton step (2), reciprocal seed (2), reciprocal square-root Newton step (2), reciprocal square-root seed (1).
  It ends with the end-of-command wait.
- `mTexGenEyeLine`: address 0xcb59, `texgen.S` line 556 (77 words). Reached: transfers in `mgeb_TexGen`.
  **Inferred** role: stores an eye reference line from seven operand words, transformed and normalised.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 2 to 8; operations float multiply (33), float add (20), float multiply-add (7), reciprocal Newton step (2), reciprocal square-root Newton step (2), reciprocal seed (1), reciprocal square-root seed (1); takes 1 conditional transfer.
  It ends with the end-of-command wait; conditional transfers reach `mMatrixInverse`.
- `mgeb_TexGen_Enable`: address 0xcb39, `texgen.S` line 623 (12 words). Reached: geif slot 84 (entry 169); the ARM functions that send it are in the table below.
  **Inferred** role: enables texture-coordinate generation (bits 0x60000000) and resolves the state.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations OR (1); loads 1 constant.
  It jumps to `mTexGenResolve`.
  Constants loaded: 0x60000000.
- `mgeb_TexGen_Disable`: address 0xcb19, `texgen.S` line 654 (12 words). Reached: geif slot 83 (entry 167); the ARM functions that send it are in the table below.
  **Inferred** role: disables texture-coordinate generation and resolves the state.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations operation 0x6d1 (1); loads 1 constant.
  It jumps to `mTexGenResolve`.
  Constants loaded: 0x60000000.
- `mgeb_TexGen`: address 0xcabe, `texgen.S` line 688 (59 words). Reached: geif slot 82 (entry 165); the ARM functions that send it are in the table below.
  **Inferred** role: GL tex gen call: compares the parameter and mode with 16 enumerants (0x2400 to 0x2502 and the SGIX distance modes 0x81f2, 0x81f3) and branches to the per-mode code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations integer subtract or compare (15), second-unit operation 0xff (1); sets the condition flags 15 times; loads 16 constants; takes 14 conditional transfers.
  It ends with the end-of-command wait; conditional transfers reach `mTexGenSph` and 12 other labels.
  Constants loaded: 0x2500, 0x2402, 0x2401, 0x2400, 0x81f3, 0x81f2, 0x2501, 0x2502 and 8 more.
- `mmo_TexGenObjPoint_ST`: address 0xce98, `texgen.S` line 870 (77 words). Reached: its address loaded as a constant in `mTexGenObjPointDist`.
  **Inferred** role: object point-distance generation for s and t: distances by reciprocal square roots.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (29), float subtract (12), reciprocal square-root Newton step (8), float add (5), float multiply-add (3), reciprocal square-root seed (2), shift left (2); loads 2 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0x2, 0x1.
- `mmo_TexGenObjPoint_RQ`: address 0xcef3, `texgen.S` line 961 (77 words). Reached: its address loaded as a constant in `mTexGenObjPointDist`.
  **Inferred** role: object point-distance generation for r and q.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (29), float subtract (12), reciprocal square-root Newton step (8), float add (5), float multiply-add (3), reciprocal square-root seed (2), shift left (2); loads 2 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0x2, 0x1.
- `mmo_TexGenObjLine_ST`: address 0xcd7e, `texgen.S` line 1057 (121 words). Reached: its address loaded as a constant in `mTexGenObjLineDist`.
  **Inferred** role: object line-distance generation for s and t.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (45), float subtract (24), float multiply-add (11), reciprocal square-root Newton step (8), move (6), float add (5), reciprocal square-root seed (2), shift left (2); loads 2 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0x2, 0x1.
- `mmo_TexGenObjLine_RQ`: address 0xce0b, `texgen.S` line 1216 (121 words). Reached: its address loaded as a constant in `mTexGenObjLineDist`.
  **Inferred** role: object line-distance generation for r and q.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (45), float subtract (24), float multiply-add (11), reciprocal square-root Newton step (8), move (6), float add (5), reciprocal square-root seed (2), shift left (2); loads 2 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0x2, 0x1.
- `mmo_TexGenEyePoint_ST`: address 0xd068, `texgen.S` line 1372 (77 words). Reached: its address loaded as a constant in `mTexGenEyePointDist`.
  **Inferred** role: eye point-distance generation for s and t.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (29), float subtract (12), reciprocal square-root Newton step (8), float add (5), float multiply-add (3), reciprocal square-root seed (2), shift left (2); loads 2 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0x2, 0x1.
- `mmo_TexGenEyePoint_RQ`: address 0xd0c3, `texgen.S` line 1463 (77 words). Reached: its address loaded as a constant in `mTexGenEyePointDist`.
  **Inferred** role: eye point-distance generation for r and q.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (29), float subtract (12), reciprocal square-root Newton step (8), float add (5), float multiply-add (3), reciprocal square-root seed (2), shift left (2); loads 2 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0x2, 0x1.
- `mmo_TexGenEyeLine_ST`: address 0xcf4e, `texgen.S` line 1559 (121 words). Reached: its address loaded as a constant in `mTexGenEyeLineDist`.
  **Inferred** role: eye line-distance generation for s and t.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (45), float subtract (24), float multiply-add (11), reciprocal square-root Newton step (8), move (6), float add (5), reciprocal square-root seed (2), shift left (2); loads 2 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0x2, 0x1.
- `mmo_TexGenEyeLine_RQ`: address 0xcfdb, `texgen.S` line 1718 (121 words). Reached: its address loaded as a constant in `mTexGenEyeLineDist`.
  **Inferred** role: eye line-distance generation for r and q.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (45), float subtract (24), float multiply-add (11), reciprocal square-root Newton step (8), move (6), float add (5), reciprocal square-root seed (2), shift left (2); loads 2 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0x2, 0x1.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgeb_TexGen_Enable` | 84 | `e_texgen_q`, `e_texgen_r`, `e_texgen_s`, `e_texgen_t` |  |
| `mgeb_TexGen_Disable` | 83 | `d_texgen_q`, `d_texgen_r`, `d_texgen_s`, `d_texgen_t` |  |
| `mgeb_TexGen` | 82 | `arm_texgenf`, `texture_pop` | `HP_TEXGENF` |

### texture.S

Texture binding, scale and bias, the texture-memory load FIFO and the texture address. **Inferred** from its labels and callers.

- `mgebi_Texture`: address 0x43f3, `texture.S` line 85 (29 words). Reached: geif slot 100 (entry 201); the ARM functions that send it are in the table below.
  **Inferred** role: enables or disables texturing: three raster bus words and texture module re-selection.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (10), OR (1), operation 0x6d1 (1); writes 3 words to the raster-bus output addresses; loads 6 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x15c1500, 0x70000, 0x1, 0xf494 (code in `mmo_DirtyTextureAndScreenModule`), 0x1243fd3.
- `mgebi_UpdateTexturing`: address 0x43bd, `texture.S` line 170 (49 words). Reached: geif slot 101 (entry 203); the ARM functions that send it are in the table below.
  **Inferred** role: loads 13 constants (raster register values and module addresses, among them the address of mmo_DirtyTextureAndScreenModule) and shifts and masks the four command words into them; which texturing state this updates is unknown.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations move (16), shift left (4), AND (3), OR (2), NOT (1), operation 0x6d1 (1); loads 13 constants.
  It jumps within its own code.
  Constants loaded: 0x1000000, 0x70000, 0x2000, 0xf494 (code in `mmo_DirtyTextureAndScreenModule`), 0x1000, 0x4000, 0, 0x12 and 4 more.
- `mgeb_SkipNextTextureAddr`: address 0x43ae, `texture.S` line 301 (9 words). Reached: geif slot 122 (entry 245); the ARM functions that send it are in the table below.
  **Inferred** role: sets the flag (bit 24) that skips the next texture address.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations operation 0x6d1 (1); loads 1 constant.
  It ends with the end-of-command wait.
  Constants loaded: 0x1000000.
- `mgebi_Bind2dMipmapTexture`: address 0x42d3, `texture.S` line 367 (192 words). Reached: geif slot 428 (entry 857); the ARM functions that send it are in the table below; distributor table 32.
  **Inferred** role: binds a 2D mipmapped texture: 16 operand words packed into texture-manager register words (0x1471000 and others).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 21; operations move (60), OR (26), AND (17), shift left (10), logical shift right (9), integer add (2), NOT (1); sets the condition flags 4 times; loads 26 constants; takes 4 conditional transfers.
  It ends with the end-of-command wait.
  Constants loaded: 0x1000000, 0x1471000, 0x14b0c05, 0x14a0c04, 0x14f13d5, 0x2, 0x1, 0x15a0c02 and 13 more.
- `mgesi_RestoreTextureAddress`: address 0x4293, `texture.S` line 644 (35 words). Reached: geif slot 430 (entry 861); the ARM functions that send it are in the table below.
  **Inferred** role: restores the texture address from engine memory 0x9cd and writes two raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (8), NOT (2); writes 2 words to the raster-bus output addresses; reads engine memory at 0x9cd; loads 1 constant; takes 1 conditional transfer.
  It ends with the end-of-command wait.
  Constants loaded: 0.
- `mgesi_FillTMLoadFifo`: address 0x4278, `texture.S` line 721 (27 words). Reached: geif slot 123 (entry 247); the ARM functions that send it are in the table below.
  **Inferred** role: fills the texture-manager load FIFO: four raster bus words with mask 0x7fc0.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (18), NOT (1); writes 4 words to the raster-bus output addresses; loads 2 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0, 0x7fc0.
- `mgebi_TextureScaleBias`: address 0x424e, `texture.S` line 790 (34 words). Reached: geif slot 429 (entry 859); the ARM functions that send it are in the table below; distributor table 33.
  **Inferred** role: texture scale and bias: four operand words to texture-manager register words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations move (14), AND (1), OR (1), operation 0x6d1 (1), second-unit operation 0xff (1); sets the condition flags once; loads 7 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x1000000, 0x70000, 0x1541850, 0xffffffff, 0x1551851, 0x1561852.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgebi_Texture` | 100 | `arm_active_texture`, `arm_bind_linear_texture`, `arm_bind_texture`, `arm_getconvolutionfilter`, `arm_getseparablefilter`, `arm_readpixels`, `d_texture_1d`, `d_texture_2d`, `d_texture_3d`, `e_texture_1d`, `e_texture_2d`, `e_texture_3d`, `videoReadPixels` | `HP_ACTIVE_TEXTURE`, `HP_BIND_LINEAR_TEXTURE`, `HP_BIND_TEXTURE`, `HP_GETCONVOLUTIONFILTER`, `HP_GETSEPARABLEFILTER`, `HP_READPIXELS` |
| `mgebi_UpdateTexturing` | 101 | `arm_bind_linear_texture`, `arm_bind_texture` | `HP_BIND_LINEAR_TEXTURE`, `HP_BIND_TEXTURE` |
| `mgeb_SkipNextTextureAddr` | 122 | `arm_bind_linear_texture`, `arm_bind_texture` | `HP_BIND_LINEAR_TEXTURE`, `HP_BIND_TEXTURE` |
| `mgebi_Bind2dMipmapTexture` | 428 | `init_ged` |  |
| `mgesi_RestoreTextureAddress` | 430 | `activate_texture` |  |
| `mgesi_FillTMLoadFifo` | 123 | `SetupSubtexload`, `activate_texture`, `arm_bind_detail_texture`, `arm_bind_linear_texture`, `arm_bind_texture`, `arm_free_arm_tex_cache`, `update_texbind_id`, `update_texload_id` | `HP_BIND_DETAIL_TEXTURE`, `HP_BIND_LINEAR_TEXTURE`, `HP_BIND_TEXTURE`, `HP_FREE_ARM_TEX_CACHE` |
| `mgebi_TextureScaleBias` | 429 | `init_ged` |  |

### ucolormatrix.s

Colour-matrix inner loop. **Inferred** from its labels and callers.

- `uColorMatrix`: address 0x298a, `ucolormatrix.s` line 59 (4 words). Reached: transfers in `mmo_ColorMatrix`.
  **Inferred** role: inner loop of the colour-matrix stage: four multiplies, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (4).
  It has no jump of its own and runs on into `clrmtrixloop`.
- `clrmtrixloop`: address 0x298e, `ucolormatrix.s` line 68 (20 words). Reached: inside `uColorMatrix`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (16); takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).

### ucull.s

Face culling. **Inferred** from its labels and callers.

- `mmo_FaceCull`: address 0x0c76, `ucull.s` line 29 (17 words). Reached: its address loaded as a constant in `mLiPushMtrlInit` and 2 other labels.
  **Inferred** role: face-culling module: the sign of the triangle area by float multiplies, then its cull code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), float multiply (3), AND (2); sets the condition flags 2 times; loads 1 constant.
  It has no jump of its own and runs on into `lCU1`.
  Constants loaded: 0.
- `umo_FaceCull`: address 0x0c76, `ucull.s` line 29 (17 words). Reached: second name for `mmo_FaceCull` at the same address, so the same code.
  **Inferred** role: face-culling module: the sign of the triangle area by float multiplies, then its cull code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), float multiply (3), AND (2); sets the condition flags 2 times; loads 1 constant.
  It has no jump of its own and runs on into `lCU1`.
  Constants loaded: 0.
- `lCU1`: address 0x0c87, `ucull.s` line 47 (54 words). Reached: inside `mmo_FaceCull`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (14), float add (7), XOR (6), float subtract (6), OR (4), float multiply-add (4), move (4), operation 0x6d1 (4), NOT (1); sets the condition flags 4 times; takes 2 conditional transfers.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `lCU2`.
- `lCU2`: address 0x0cbd, `ucull.s` line 104 (9 words). Reached: transfers in `lCU1`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It jumps to `mmo_AbortGeometry`.

### udecompose.s

Primitive decomposition of strips, lines and triangles. **Inferred** from its labels and callers.

- `mmo_DecomposeTriangleStrip`: address 0x0cc6, `udecompose.s` line 20 (11 words). Reached: its address loaded as a constant in `mgesi_TriangleStrip` and 4 other labels.
  **Inferred** role: triangle-strip decomposition: reads two vertex-record words and alternates the winding (XOR).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads 2 command words between offsets 38 and 63; operations OR (1), XOR (1), move (1); sets the condition flags once; loads 1 constant; takes 1 conditional transfer.
  It has no jump of its own and runs on into `lDE2`; conditional transfers reach `mmo_AbortGeometry`.
  Constants loaded: 0xed52 (code in `mClipTriUserAndFrustum`).
- `umo_DecomposeTriangleStrip`: address 0x0cc6, `udecompose.s` line 20 (11 words). Reached: second name for `mmo_DecomposeTriangleStrip` at the same address, so the same code.
  **Inferred** role: triangle-strip decomposition: reads two vertex-record words and alternates the winding (XOR).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads 2 command words between offsets 38 and 63; operations OR (1), XOR (1), move (1); sets the condition flags once; loads 1 constant; takes 1 conditional transfer.
  It has no jump of its own and runs on into `lDE2`; conditional transfers reach `mmo_AbortGeometry`.
  Constants loaded: 0xed52 (code in `mClipTriUserAndFrustum`).
- `lDE2`: address 0x0cd1, `udecompose.s` line 32 (10 words). Reached: inside `mmo_DecomposeTriangleStrip`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations OR (2), AND (1), XOR (1); sets the condition flags once; loads 2 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0.
- `mmo_DecomposeTriangles`: address 0x0cdb, `udecompose.s` line 49 (10 words). Reached: inside `mmo_DecomposeTriangleStrip`, reached from that routine's own code.
  **Inferred** role: second entry inside the strip decomposition for independent triangles.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 63; operations OR (1), move (1); sets the condition flags once; loads 2 constants; takes 1 conditional transfer.
  It has no jump of its own and runs on into `lDE9`; conditional transfers reach `mmo_AbortGeometry`.
  Constants loaded: 0xed52 (code in `mClipTriUserAndFrustum`), -2.0 (0xc0000000).
- `umo_DecomposeTriangles`: address 0x0cdb, `udecompose.s` line 49 (10 words). Reached: second name for `mmo_DecomposeTriangles` at the same address, so the same code.
  **Inferred** role: second entry inside the strip decomposition for independent triangles.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 63; operations OR (1), move (1); sets the condition flags once; loads 2 constants; takes 1 conditional transfer.
  It has no jump of its own and runs on into `lDE9`; conditional transfers reach `mmo_AbortGeometry`.
  Constants loaded: 0xed52 (code in `mClipTriUserAndFrustum`), -2.0 (0xc0000000).
- `lDE9`: address 0x0ce5, `udecompose.s` line 60 (21 words). Reached: inside `mmo_DecomposeTriangles`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations OR (4), AND (3); sets the condition flags once; loads 3 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0.
- `mmo_DecomposeLineStrip`: address 0x0cfa, `udecompose.s` line 90 (11 words). Reached: its address loaded as a constant in `mgesi_LineStrip` and 5 other labels.
  **Inferred** role: line-strip decomposition, loading the line clipper's address.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 63; operations move (3); sets the condition flags once; loads 2 constants; takes 1 conditional transfer.
  It has no jump of its own and runs on into `lDE3`; conditional transfers reach `mmo_AbortGeometry`.
  Constants loaded: 0x20000000, 0xea1c (code in `mClipLinUserAndFrustum`).
- `umo_DecomposeLineStrip`: address 0x0cfa, `udecompose.s` line 90 (11 words). Reached: second name for `mmo_DecomposeLineStrip` at the same address, so the same code.
  **Inferred** role: line-strip decomposition, loading the line clipper's address.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 63; operations move (3); sets the condition flags once; loads 2 constants; takes 1 conditional transfer.
  It has no jump of its own and runs on into `lDE3`; conditional transfers reach `mmo_AbortGeometry`.
  Constants loaded: 0x20000000, 0xea1c (code in `mClipLinUserAndFrustum`).
- `lDE3`: address 0x0d05, `udecompose.s` line 102 (11 words). Reached: inside `mmo_DecomposeLineStrip`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2), AND (1), OR (1); sets the condition flags once; loads 1 constant; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0.
- `mmo_DecomposePoints`: address 0x0d10, `udecompose.s` line 120 (9 words). Reached: its address loaded as a constant in `mgeb_RasterPos` and 1 other label.
  **Inferred** role: point decomposition, loading the point clipper's address.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1); loads 1 constant; takes 1 conditional transfer.
  It has no jump of its own and runs on into `lDE6`; conditional transfers reach `mmo_AbortGeometry`.
  Constants loaded: 0xe75e (code in `mClipPntUserAndFrustum`).
- `umo_DecomposePoints`: address 0x0d10, `udecompose.s` line 120 (9 words). Reached: second name for `mmo_DecomposePoints` at the same address, so the same code.
  **Inferred** role: point decomposition, loading the point clipper's address.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1); loads 1 constant; takes 1 conditional transfer.
  It has no jump of its own and runs on into `lDE6`; conditional transfers reach `mmo_AbortGeometry`.
  Constants loaded: 0xe75e (code in `mClipPntUserAndFrustum`).
- `lDE6`: address 0x0d19, `udecompose.s` line 131 (12 words). Reached: inside `mmo_DecomposePoints`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4); loads 2 constants; takes 1 conditional transfer.
  It jumps within its own code.
  Constants loaded: 0.
- `mmo_DecomposeTriangleFan`: address 0x0d25, `udecompose.s` line 150 (11 words). Reached: its address loaded as a constant in `mgesi_TfanPoly` and 6 other labels.
  **Inferred** role: triangle-fan decomposition, loading the triangle clipper's address.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2), OR (1); sets the condition flags once; loads 1 constant; takes 1 conditional transfer.
  It has no jump of its own and runs on into `lDE7`; conditional transfers reach `mmo_AbortGeometry`.
  Constants loaded: 0xed52 (code in `mClipTriUserAndFrustum`).
- `umo_DecomposeTriangleFan`: address 0x0d25, `udecompose.s` line 150 (11 words). Reached: second name for `mmo_DecomposeTriangleFan` at the same address, so the same code.
  **Inferred** role: triangle-fan decomposition, loading the triangle clipper's address.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2), OR (1); sets the condition flags once; loads 1 constant; takes 1 conditional transfer.
  It has no jump of its own and runs on into `lDE7`; conditional transfers reach `mmo_AbortGeometry`.
  Constants loaded: 0xed52 (code in `mClipTriUserAndFrustum`).
- `lDE7`: address 0x0d30, `udecompose.s` line 162 (11 words). Reached: inside `mmo_DecomposeTriangleFan`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations OR (1), move (1); sets the condition flags once; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.

### udecompose2.s

Simple triangle-strip decomposition. **Inferred** from its labels and callers.

- `umo_DummyDecompose`: address 0x0d3b, `udecompose2.s` line 13 (15 words). Reached: no slot, ARM load, decoded transfer or address constant reaches it (routes tried: [How to read the tables](#how-to-read-the-entries)).
  **Inferred** role: decomposition that draws nothing (the same code as the other dummy decomposer); nothing in the program enters it.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2); loads 1 constant.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0xed52 (code in `mClipTriUserAndFrustum`).
- `umo_DecomposeSimpleTriangleStrip`: address 0x0d4a, `udecompose2.s` line 41 (13 words). Reached: inside `umo_DummyDecompose`, reached from that routine's own code.
  **Inferred** role: simple triangle-strip decomposition inside the dummy decomposer's source.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3), XOR (1); loads 2 constants; takes 1 conditional transfer.
  It has no jump of its own and runs on into `lDE4`; conditional transfers reach `mmo_AbortGeometry`.
  Constants loaded: 0xed52 (code in `mClipTriUserAndFrustum`), 0x81c00000.
- `lDE4`: address 0x0d57, `udecompose2.s` line 55 (18 words). Reached: inside `umo_DecomposeSimpleTriangleStrip`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (2), OR (2), operation 0x6d3 (2), XOR (1); loads 1 constant; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0.

### udeform.s

Deformation of coordinates and texture coordinates. **Inferred** from its labels and callers.

- `mmo_DeformCoord`: address 0x2ab8, `udeform.s` line 51 (19 words). Reached: its address loaded as a constant in `mmo_DirtyDeformModule`.
  **Inferred** role: deforms vertex coordinates with the deformation map read from engine memory 0x95e-0x963.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (4), move (4); reads engine memory at 6 addresses from 0x95e to 0x963; loads 1 constant.
  It has no jump of its own and runs on into `loopDC`.
  Constants loaded: 0x40000.
- `umo_DeformCoord`: address 0x2ab8, `udeform.s` line 51 (19 words). Reached: second name for `mmo_DeformCoord` at the same address, so the same code.
  **Inferred** role: deforms vertex coordinates with the deformation map read from engine memory 0x95e-0x963.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (4), move (4); reads engine memory at 6 addresses from 0x95e to 0x963; loads 1 constant.
  It has no jump of its own and runs on into `loopDC`.
  Constants loaded: 0x40000.
- `loopDC`: address 0x2acb, `udeform.s` line 71 (28 words). Reached: inside `mmo_DeformCoord`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (18), AND (2); sets the condition flags 2 times; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_DeformCoordTexture`: address 0x2ae7, `udeform.s` line 107 (26 words). Reached: its address loaded as a constant in `mmo_DirtyDeformModule`.
  **Inferred** role: deforms vertex coordinates and texture coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (8), float multiply (4); reads engine memory at 3 addresses from 0x99d to 0x99f; loads 2 constants.
  It has no jump of its own and runs on into `loopDCT`.
  Constants loaded: 0x20000, 0x40000.
- `umo_DeformCoordTexture`: address 0x2ae7, `udeform.s` line 107 (26 words). Reached: second name for `mmo_DeformCoordTexture` at the same address, so the same code.
  **Inferred** role: deforms vertex coordinates and texture coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (8), float multiply (4); reads engine memory at 3 addresses from 0x99d to 0x99f; loads 2 constants.
  It has no jump of its own and runs on into `loopDCT`.
  Constants loaded: 0x20000, 0x40000.
- `loopDCT`: address 0x2b01, `udeform.s` line 134 (49 words). Reached: inside `mmo_DeformCoordTexture`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (36), AND (4); sets the condition flags 4 times; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_DeformTexture`: address 0x2b32, `udeform.s` line 193 (19 words). Reached: its address loaded as a constant in `mmo_DirtyDeformModule`.
  **Inferred** role: deforms texture coordinates with the map read from engine memory 0x99d-0x9a2.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (4), move (4); reads engine memory at 6 addresses from 0x99d to 0x9a2; loads 1 constant.
  It has no jump of its own and runs on into `loopDT`.
  Constants loaded: 0x20000.
- `umo_DeformTexture`: address 0x2b32, `udeform.s` line 193 (19 words). Reached: second name for `mmo_DeformTexture` at the same address, so the same code.
  **Inferred** role: deforms texture coordinates with the map read from engine memory 0x99d-0x9a2.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (4), move (4); reads engine memory at 6 addresses from 0x99d to 0x9a2; loads 1 constant.
  It has no jump of its own and runs on into `loopDT`.
  Constants loaded: 0x20000.
- `loopDT`: address 0x2b45, `udeform.s` line 213 (28 words). Reached: inside `mmo_DeformTexture`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (18), AND (2); sets the condition flags 2 times; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_DeformCoordNormal`: address 0x2b61, `udeform.s` line 252 (24 words). Reached: its address loaded as a constant in `mmo_DirtyDeformModule`.
  **Inferred** role: deforms coordinates and normals, calling the inverse deformation for the normals.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (4), move (4), AND (1); sets the condition flags once; reads engine memory at 2 addresses from 0x95e to 0x95f; loads 2 constants; takes 1 conditional transfer.
  It has no jump of its own and runs on into `loopDCN`; conditional transfers reach `mDeformation3_1Inverse`.
  Constants loaded: 0x200000, 0x40000.
- `umo_DeformCoordNormal`: address 0x2b61, `udeform.s` line 252 (24 words). Reached: second name for `mmo_DeformCoordNormal` at the same address, so the same code.
  **Inferred** role: deforms coordinates and normals, calling the inverse deformation for the normals.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (4), move (4), AND (1); sets the condition flags once; reads engine memory at 2 addresses from 0x95e to 0x95f; loads 2 constants; takes 1 conditional transfer.
  It has no jump of its own and runs on into `loopDCN`; conditional transfers reach `mDeformation3_1Inverse`.
  Constants loaded: 0x200000, 0x40000.
- `loopDCN`: address 0x2b79, `udeform.s` line 277 (46 words). Reached: inside `mmo_DeformCoordNormal`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (36), AND (2); sets the condition flags 2 times; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_DeformCoordNormalTexture`: address 0x2ba7, `udeform.s` line 334 (30 words). Reached: its address loaded as a constant in `mmo_DirtyDeformModule`.
  **Inferred** role: deforms coordinates, normals and texture coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (8), float multiply (4), AND (1); sets the condition flags once; reads engine memory at 3 addresses from 0x99d to 0x99f; loads 3 constants; takes 1 conditional transfer.
  It has no jump of its own and runs on into `loopDCNT`; conditional transfers reach `mDeformation3_1Inverse`.
  Constants loaded: 0x200000, 0x20000, 0x40000.
- `umo_DeformCoordNormalTexture`: address 0x2ba7, `udeform.s` line 334 (30 words). Reached: second name for `mmo_DeformCoordNormalTexture` at the same address, so the same code.
  **Inferred** role: deforms coordinates, normals and texture coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (8), float multiply (4), AND (1); sets the condition flags once; reads engine memory at 3 addresses from 0x99d to 0x99f; loads 3 constants; takes 1 conditional transfer.
  It has no jump of its own and runs on into `loopDCNT`; conditional transfers reach `mDeformation3_1Inverse`.
  Constants loaded: 0x200000, 0x20000, 0x40000.
- `loopDCNT`: address 0x2bc5, `udeform.s` line 365 (67 words). Reached: inside `mmo_DeformCoordNormalTexture`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (54), AND (4); sets the condition flags 4 times; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `mDeformation3_1Inverse`: address 0x2c08, `udeform.s` line 453 (99 words). Reached: transfers in `mmo_DeformCoordNormal` and 1 other label.
  **Inferred** role: inverse of the three-input deformation for normals: reciprocal steps and multiplies, then a return.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (14), move (11), float subtract (3), float add (2), reciprocal Newton step (2), integer add (1), operation 0x6d2 (1), reciprocal seed (1); loads 1 constant.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0xfffffff8.
- `uDeformation3_1Inverse`: address 0x2c08, `udeform.s` line 453 (99 words). Reached: second name for `mDeformation3_1Inverse` at the same address, so the same code.
  **Inferred** role: inverse of the three-input deformation for normals: reciprocal steps and multiplies, then a return.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (14), move (11), float subtract (3), float add (2), reciprocal Newton step (2), integer add (1), operation 0x6d2 (1), reciprocal seed (1); loads 1 constant.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0xfffffff8.

### udrawtri.s

Triangle and quad output. **Inferred** from its labels and callers.

- `mmo_DrawTri`: address 0x288c, `udrawtri.s` line 42 (12 words). Reached: its address loaded as a constant in `mGL_CM_Initialize` and 1 other label.
  **Inferred** role: triangle-drawing module entry: tests the list and quad bits and enters the triangle code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3), AND (1), XOR (1), shift left (1); loads 1 constant; takes 3 conditional transfers.
  It jumps to `mmo_DrawTriPrim`; conditional transfers reach `mmo_DrawTriPrim` and 1 other label.
  Constants loaded: 0xe0000000.
- `umo_DrawTri`: address 0x288c, `udrawtri.s` line 42 (12 words). Reached: second name for `mmo_DrawTri` at the same address, so the same code.
  **Inferred** role: triangle-drawing module entry: tests the list and quad bits and enters the triangle code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3), AND (1), XOR (1), shift left (1); loads 1 constant; takes 3 conditional transfers.
  It jumps to `mmo_DrawTriPrim`; conditional transfers reach `mmo_DrawTriPrim` and 1 other label.
  Constants loaded: 0xe0000000.
- `uDTList`: address 0x2898, `udrawtri.s` line 55 (5 words). Reached: transfers in `mmo_DrawTri`.
  **Inferred** role: triangle-list entry of the triangle drawer.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations OR (1).
  It has no jump of its own and runs on into `lDI3`.
- `lDI3`: address 0x289d, `udrawtri.s` line 63 (45 words). Reached: inside `uDTList`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (10), float multiply (8), move (7), NOT (4), operation 0x6fe (4), OR (2); writes 2 words to the raster-bus output addresses; stores 1 word to control-memory address 0x3a8; takes 2 conditional transfers.
  It waits on its own address under another condition group; conditional transfers reach `HereWeGo`.
- `mmo_DrawQuad`: address 0x28ca, `udrawtri.s` line 115 (12 words). Reached: its address loaded as a constant in `mGL_CM_Initialize` and 1 other label.
  **Inferred** role: quad-drawing module entry: the same tests as the triangle entry.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3), AND (1), XOR (1), shift left (1); loads 1 constant; takes 3 conditional transfers.
  It jumps to `mmo_DrawTriPrim`; conditional transfers reach `mmo_DrawTriPrim` and 1 other label.
  Constants loaded: 0.
- `umo_DrawQuad`: address 0x28ca, `udrawtri.s` line 115 (12 words). Reached: second name for `mmo_DrawQuad` at the same address, so the same code.
  **Inferred** role: quad-drawing module entry: the same tests as the triangle entry.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3), AND (1), XOR (1), shift left (1); loads 1 constant; takes 3 conditional transfers.
  It jumps to `mmo_DrawTriPrim`; conditional transfers reach `mmo_DrawTriPrim` and 1 other label.
  Constants loaded: 0.
- `uDQList`: address 0x28d6, `udrawtri.s` line 128 (5 words). Reached: transfers in `mmo_DrawQuad`.
  **Inferred** role: quad-list entry of the triangle drawer (constant 0x800).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2); loads 1 constant.
  It has no jump of its own and runs on into `lDI4`.
  Constants loaded: 0x800.
- `lDI4`: address 0x28db, `udrawtri.s` line 136 (46 words). Reached: inside `uDQList`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (10), float multiply (8), operation 0x6fe (4), move (3), AND (2), NOT (2), shift left (2); sets the condition flags 2 times; writes 2 words to the raster-bus output addresses; stores 1 word to control-memory address 0x3a8; takes 2 conditional transfers.
  It waits on its own address under another condition group; conditional transfers reach `HereWeGo`.
- `mmo_DrawTriPrim`: address 0x2909, `udrawtri.s` line 189 (5 words). Reached: transfers in `mmo_DrawQuad` and 1 other label.
  **Inferred** role: triangle drawer proper, entered from the triangle and quad entries.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2).
  It has no jump of its own and runs on into `lDI1`.
- `umo_DrawTriPrim`: address 0x2909, `udrawtri.s` line 189 (5 words). Reached: second name for `mmo_DrawTriPrim` at the same address, so the same code.
  **Inferred** role: triangle drawer proper, entered from the triangle and quad entries.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2).
  It has no jump of its own and runs on into `lDI1`.
- `lDI1`: address 0x290e, `udrawtri.s` line 197 (124 words). Reached: inside `mmo_DrawTriPrim`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (30), float multiply (24), move (17), operation 0x6fe (12), NOT (4), AND (2); sets the condition flags 4 times; writes 3 words to the raster-bus output addresses; loads 1 constant; takes 2 conditional transfers.
  It jumps within its own code; conditional transfers reach `HereWeGo`.
  Constants loaded: 0x70000.

### ueval1D.s

1D evaluator commands: map spec, map data, grid, strip. **Inferred** from its labels and callers.

- `mgeb_EvalMapSpec1D`: address 0x0053, `ueval1D.s` line 114 (73 words). Reached: geif slot 146 (entry 293); the ARM functions that send it are in the table below; distributor table 27.
  **Inferred** role: GL one-dimensional map call specification: eight operand words of the map (order, range, stride) stored, with a save of the 1D state.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads 10 command words between offsets 0 and 11; operations move (13), integer add (9), second-unit move or minimum (8), second-unit operation 0xff (2), shift left (2), AND (1), float-to-integer conversion (1), logical shift right (1); sets the condition flags once; 5 words stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here); loads 5 constants; takes 1 conditional transfer.
  It ends with the end-of-command wait; conditional transfers reach `uEvalSaveState2D`.
  Constants loaded: 0x81d0, 0x1d0, 0xf, 0x166, 0.
- `ugeb_EvalMapSpec1D`: address 0x0053, `ueval1D.s` line 114 (73 words). Reached: second name for `mgeb_EvalMapSpec1D` at the same address, so the same code.
  **Inferred** role: GL one-dimensional map call specification: eight operand words of the map (order, range, stride) stored, with a save of the 1D state.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads 10 command words between offsets 0 and 11; operations move (13), integer add (9), second-unit move or minimum (8), second-unit operation 0xff (2), shift left (2), AND (1), float-to-integer conversion (1), logical shift right (1); sets the condition flags once; 5 words stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here); loads 5 constants; takes 1 conditional transfer.
  It ends with the end-of-command wait; conditional transfers reach `uEvalSaveState2D`.
  Constants loaded: 0x81d0, 0x1d0, 0xf, 0x166, 0.
- `mgeb_EvalMapData1D`: address 0x009c, `ueval1D.s` line 220 (38 words). Reached: geif slot 13 (entry 27); the ARM functions that send it are in the table below.
  **Inferred** role: GL one-dimensional map call control points: three operand words and the loop that stores them.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 4; operations move (7), AND (1), float-to-integer conversion (1); sets the condition flags 2 times; loads 4 constants; takes 2 conditional transfers.
  It has no jump of its own and runs on into `levaldata1dloop`; conditional transfers reach `uEvalSwapState2D` and 1 other label.
  Constants loaded: 0x8010, 0x80f0, 0x8160, 0x8080.
- `ugeb_EvalMapData1D`: address 0x009c, `ueval1D.s` line 220 (38 words). Reached: second name for `mgeb_EvalMapData1D` at the same address, so the same code.
  **Inferred** role: GL one-dimensional map call control points: three operand words and the loop that stores them.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 4; operations move (7), AND (1), float-to-integer conversion (1); sets the condition flags 2 times; loads 4 constants; takes 2 conditional transfers.
  It has no jump of its own and runs on into `levaldata1dloop`; conditional transfers reach `uEvalSwapState2D` and 1 other label.
  Constants loaded: 0x8010, 0x80f0, 0x8160, 0x8080.
- `levaldata1dloop`: address 0x00c2, `ueval1D.s` line 259 (15 words). Reached: inside `mgeb_EvalMapData1D`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2); takes 1 conditional transfer.
  It ends with the end-of-command wait.
- `mgeb_EvalGrid1D`: address 0x00d1, `ueval1D.s` line 292 (16 words). Reached: geif slot 144 (entry 289); the ARM functions that send it are in the table below; distributor table 25.
  **Inferred** role: GL one-dimensional map grid call: four operand words, the count converted to float.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations move (8), integer-to-float conversion (1); sets the condition flags once.
  It ends with the end-of-command wait.
- `ugeb_EvalGrid1D`: address 0x00d1, `ueval1D.s` line 292 (16 words). Reached: second name for `mgeb_EvalGrid1D` at the same address, so the same code.
  **Inferred** role: GL one-dimensional map grid call: four operand words, the count converted to float.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations move (8), integer-to-float conversion (1); sets the condition flags once.
  It ends with the end-of-command wait.
- `mgesi_EvalStrip1D`: address 0x00e1, `ueval1D.s` line 324 (118 words). Reached: geif slot 103 (entry 207); the ARM functions that send it are in the table below.
  **Inferred** role: evaluates a 1D strip of points: parameter steps by float subtracts, multiplies and adds.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations move (28), float subtract (18), float multiply (10), float add (8), float-to-integer conversion (2), AND (1), OR (1), integer-to-float conversion (1), second-unit move or minimum (1), second-unit operation 0xff (1); sets the condition flags 14 times; 4 words stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here); loads 6 constants; takes 3 conditional transfers.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `uEvalSwapState2D` and 2 other labels.
  Constants loaded: 0, 0x157.
- `ugesi_EvalStrip1D`: address 0x00e1, `ueval1D.s` line 324 (118 words). Reached: second name for `mgesi_EvalStrip1D` at the same address, so the same code.
  **Inferred** role: evaluates a 1D strip of points: parameter steps by float subtracts, multiplies and adds.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 2; operations move (28), float subtract (18), float multiply (10), float add (8), float-to-integer conversion (2), AND (1), OR (1), integer-to-float conversion (1), second-unit move or minimum (1), second-unit operation 0xff (1); sets the condition flags 14 times; 4 words stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here); loads 6 constants; takes 3 conditional transfers.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `uEvalSwapState2D` and 2 other labels.
  Constants loaded: 0, 0x157.
- `lstrip1dreturn`: address 0x0157, `ueval1D.s` line 443 (15 words). Reached: its address loaded as a constant in `mgesi_EvalStrip1D`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float-to-integer conversion (1), operation 0x6d1 (1); loads 1 constant.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0x10.
- `umo_EvalEntry1D`: address 0x0166, `ueval1D.s` line 470 (22 words). Reached: transfers in `mmo_Lutout`; its address loaded as a constant in `mgeb_EvalMapSpec1D`.
  **Inferred** role: entry of the 1D evaluator stage: one test and a branch.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 2; operations move (5); sets the condition flags once; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `HereWeGo`.
- `umo_EvalDecomposeLines1D`: address 0x017c, `ueval1D.s` line 504 (15 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: line decomposition of 1D evaluator output: six constants.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3); loads 6 constants.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgeb_EvalMapSpec1D` | 146 | `init_ged` |  |
| `mgeb_EvalMapData1D` | 13 | `arm_mapdata1d` | `HP_MAPDATA1D` |
| `mgeb_EvalGrid1D` | 144 | `init_ged` |  |
| `mgesi_EvalStrip1D` | 103 | `arm_evalstrip1d` | `HP_EVALSTRIP1D` |

### ueval2D.s

2D evaluator commands: map spec, map data, grid, strip. **Inferred** from its labels and callers.

- `mgeb_EvalMapSpec2D`: address 0x018b, `ueval2D.s` line 178 (122 words). Reached: geif slot 147 (entry 295); the ARM functions that send it are in the table below; distributor table 28.
  **Inferred** role: GL two-dimensional map call specification: 15 operand words of the map stored, with a save of the 2D state.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads 15 command words between offsets 0 and 16; operations move (40), integer add (17), second-unit operation 0xff (11), second-unit move or minimum (10), integer subtract or compare (3), shift left (2), AND (1), float-to-integer conversion (1), logical shift right (1); sets the condition flags 2 times; loads 6 constants; takes 1 conditional transfer.
  It ends with the end-of-command wait; conditional transfers reach `uEvalSaveState1D`.
  Constants loaded: 0x81e8, 0x8528, 0x1e8, 0x317, 0.
- `ugeb_EvalMapSpec2D`: address 0x018b, `ueval2D.s` line 178 (122 words). Reached: second name for `mgeb_EvalMapSpec2D` at the same address, so the same code.
  **Inferred** role: GL two-dimensional map call specification: 15 operand words of the map stored, with a save of the 2D state.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads 15 command words between offsets 0 and 16; operations move (40), integer add (17), second-unit operation 0xff (11), second-unit move or minimum (10), integer subtract or compare (3), shift left (2), AND (1), float-to-integer conversion (1), logical shift right (1); sets the condition flags 2 times; loads 6 constants; takes 1 conditional transfer.
  It ends with the end-of-command wait; conditional transfers reach `uEvalSaveState1D`.
  Constants loaded: 0x81e8, 0x8528, 0x1e8, 0x317, 0.
- `mgeb_EvalMapData2D`: address 0x0205, `ueval2D.s` line 334 (38 words). Reached: geif slot 14 (entry 29); the ARM functions that send it are in the table below.
  **Inferred** role: GL two-dimensional map call control points: six operand words and the loop that stores them.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 7; operations move (10), AND (1), float-to-integer conversion (1); sets the condition flags 2 times; loads 4 constants; takes 2 conditional transfers.
  It has no jump of its own and runs on into `levaldata2dloop`; conditional transfers reach `uEvalSwapState1D` and 1 other label.
  Constants loaded: 0x8028, 0x8108, 0x8178, 0x8098.
- `ugeb_EvalMapData2D`: address 0x0205, `ueval2D.s` line 334 (38 words). Reached: second name for `mgeb_EvalMapData2D` at the same address, so the same code.
  **Inferred** role: GL two-dimensional map call control points: six operand words and the loop that stores them.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 7; operations move (10), AND (1), float-to-integer conversion (1); sets the condition flags 2 times; loads 4 constants; takes 2 conditional transfers.
  It has no jump of its own and runs on into `levaldata2dloop`; conditional transfers reach `uEvalSwapState1D` and 1 other label.
  Constants loaded: 0x8028, 0x8108, 0x8178, 0x8098.
- `levaldata2dloop`: address 0x022b, `ueval2D.s` line 373 (15 words). Reached: inside `mgeb_EvalMapData2D`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2); takes 1 conditional transfer.
  It ends with the end-of-command wait.
- `mgeb_EvalGrid2D`: address 0x023a, `ueval2D.s` line 405 (26 words). Reached: geif slot 145 (entry 291); the ARM functions that send it are in the table below; distributor table 26.
  **Inferred** role: GL two-dimensional map grid call: eight operand words, the counts converted to float.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 7; operations move (15), integer-to-float conversion (2); sets the condition flags once.
  It ends with the end-of-command wait.
- `ugeb_EvalGrid2D`: address 0x023a, `ueval2D.s` line 405 (26 words). Reached: second name for `mgeb_EvalGrid2D` at the same address, so the same code.
  **Inferred** role: GL two-dimensional map grid call: eight operand words, the counts converted to float.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 7; operations move (15), integer-to-float conversion (2); sets the condition flags once.
  It ends with the end-of-command wait.
- `mgesi_EvalStrip2D`: address 0x0254, `ueval2D.s` line 461 (111 words). Reached: geif slot 104 (entry 209); the ARM functions that send it are in the table below.
  **Inferred** role: evaluates a 2D strip of points: parameter steps by float subtracts, multiplies and adds.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads 5 command words between offsets 2 and 7; operations move (38), float subtract (18), float multiply (10), float add (8), float-to-integer conversion (2), integer-to-float conversion (2), second-unit operation 0xff (2), AND (1), OR (1), second-unit move or minimum (1); sets the condition flags 15 times; 4 words stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here); loads 4 constants; takes 3 conditional transfers.
  It has no jump of its own and runs on into `lstrip2dloop`; conditional transfers reach `uEvalSwapState1D` and 2 other labels.
  Constants loaded: 0, 0x9c.
- `ugesi_EvalStrip2D`: address 0x0254, `ueval2D.s` line 461 (111 words). Reached: second name for `mgesi_EvalStrip2D` at the same address, so the same code.
  **Inferred** role: evaluates a 2D strip of points: parameter steps by float subtracts, multiplies and adds.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads 5 command words between offsets 2 and 7; operations move (38), float subtract (18), float multiply (10), float add (8), float-to-integer conversion (2), integer-to-float conversion (2), second-unit operation 0xff (2), AND (1), OR (1), second-unit move or minimum (1); sets the condition flags 15 times; 4 words stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here); loads 4 constants; takes 3 conditional transfers.
  It has no jump of its own and runs on into `lstrip2dloop`; conditional transfers reach `uEvalSwapState1D` and 2 other labels.
  Constants loaded: 0, 0x9c.
- `lstrip2dloop`: address 0x02c3, `ueval2D.s` line 573 (46 words). Reached: transfers in `lstrip2dreturn`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 5; operations move (8), float subtract (5), float multiply (3), float add (1), float-to-integer conversion (1); sets the condition flags 4 times; loads 6 constants.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0x2f1, 0.
- `lstrip2dreturn`: address 0x02f1, `ueval2D.s` line 620 (38 words). Reached: its address loaded as a constant in `lstrip2dloop`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads 4 command words between offsets 1 and 7; operations move (7), float add (1), operation 0x6d1 (1); sets the condition flags 2 times; loads 1 constant; takes 3 conditional transfers.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `uEvalLoadState2D` and 1 other label.
  Constants loaded: 0x10.
- `umo_EvalEntry2D`: address 0x0317, `ueval2D.s` line 697 (30 words). Reached: its address loaded as a constant in `mgeb_EvalMapSpec2D`.
  **Inferred** role: entry of the 2D evaluator stage: one test and a branch.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads 3 command words between offsets 1 and 5; operations move (5); sets the condition flags once; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `HereWeGo`.
- `umo_EvalDecomposePoints`: address 0x0335, `ueval2D.s` line 750 (15 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: point decomposition of 2D evaluator output.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1); loads 6 constants.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0, -24.0 (0xc1c00000).
- `umo_EvalDecomposeLines2D`: address 0x0344, `ueval2D.s` line 777 (55 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: line decomposition of 2D evaluator output.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads 5 command words between offsets 0 and 7; operations move (4), AND (2), second-unit operation 0xff (1); sets the condition flags 3 times; loads 20 constants; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `HereWeGo`.
  Constants loaded: 0, -24.0 (0xc1c00000).
- `umo_EvalDecomposeFill`: address 0x037b, `ueval2D.s` line 844 (37 words). Reached: its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: fill decomposition of 2D evaluator output into triangles: 20 constants.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads 2 command words between offsets 1 and 4; operations move (1); loads 20 constants.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0, -6.0 (0xc0c00000).

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgeb_EvalMapSpec2D` | 147 | `init_ged` |  |
| `mgeb_EvalMapData2D` | 14 | `arm_mapdata2d` | `HP_MAPDATA2D` |
| `mgeb_EvalGrid2D` | 145 | `init_ged` |  |
| `mgesi_EvalStrip2D` | 104 | `arm_evalstrip2d` | `HP_EVALSTRIP2D` |

### uevalbasis.s

Evaluator change of basis for geometry, colour, normal and texture maps. **Inferred** from its labels and callers.

- `uEvalChangeBasis1D`: address 0x0484, `uevalbasis.s` line 102 (34 words). Reached: transfers in `mgesi_EvalStrip1D` and 1 other label.
  **Inferred** role: changes the basis of the 1D evaluator's texture and geometry maps.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), float add (4); sets the condition flags 2 times; 1 word stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here); loads 4 constants; takes 1 conditional transfer.
  It has no jump of its own and runs on into `eval_texturechangebasis`; conditional transfers reach `HereWeGo`.
  Constants loaded: 0x4a6, 0x4b6, 0x4c6, 0x4d6.
- `eval_texturechangebasis`: address 0x04a6, `uevalbasis.s` line 137 (16 words). Reached: its address loaded as a constant in `uEvalChangeBasis1D`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4); sets the condition flags once; takes 1 conditional transfer.
  It has no jump of its own and runs on into `eval_colorchangebasis`; conditional transfers reach `HereWeGo`.
- `eval_colorchangebasis`: address 0x04b6, `uevalbasis.s` line 154 (16 words). Reached: its address loaded as a constant in `uEvalChangeBasis1D`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4); sets the condition flags once; 1 word stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here); takes 1 conditional transfer.
  It has no jump of its own and runs on into `eval_normalchangebasis`; conditional transfers reach `HereWeGo`.
- `eval_normalchangebasis`: address 0x04c6, `uevalbasis.s` line 171 (16 words). Reached: its address loaded as a constant in `uEvalChangeBasis1D`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2); takes 1 conditional transfer.
  It has no jump of its own and runs on into `eval_changebasis1ddone`; conditional transfers reach `HereWeGo`.
- `eval_changebasis1ddone`: address 0x04d6, `uevalbasis.s` line 188 (15 words). Reached: its address loaded as a constant in `uEvalChangeBasis1D`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1).
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `uEvalChangeBasis2D`: address 0x04e5, `uevalbasis.s` line 239 (34 words). Reached: transfers in `mgesi_EvalStrip2D` and 1 other label.
  **Inferred** role: changes the basis of the 2D evaluator's maps.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), float add (4), second-unit operation 0xff (2); sets the condition flags once; loads 8 constants; takes 1 conditional transfer.
  It has no jump of its own and runs on into `eval_geomchangebasisv`; conditional transfers reach `HereWeGo`.
  Constants loaded: 0x507, 0x517, 0x527, 0x537, 0x547, 0x557, 0x567, 0x577.
- `eval_geomchangebasisv`: address 0x0507, `uevalbasis.s` line 274 (16 words). Reached: its address loaded as a constant in `uEvalChangeBasis2D`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4); sets the condition flags once; takes 1 conditional transfer.
  It has no jump of its own and runs on into `eval_texturechangebasisu`; conditional transfers reach `HereWeGo`.
- `eval_texturechangebasisu`: address 0x0517, `uevalbasis.s` line 291 (16 words). Reached: its address loaded as a constant in `uEvalChangeBasis2D`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2), second-unit operation 0xff (1); takes 1 conditional transfer.
  It has no jump of its own and runs on into `eval_texturechangebasisv`; conditional transfers reach `HereWeGo`.
- `eval_texturechangebasisv`: address 0x0527, `uevalbasis.s` line 308 (16 words). Reached: its address loaded as a constant in `uEvalChangeBasis2D`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4); sets the condition flags once; takes 1 conditional transfer.
  It has no jump of its own and runs on into `eval_colorchangebasisu`; conditional transfers reach `HereWeGo`.
- `eval_colorchangebasisu`: address 0x0537, `uevalbasis.s` line 325 (16 words). Reached: its address loaded as a constant in `uEvalChangeBasis2D`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2), second-unit operation 0xff (1); takes 1 conditional transfer.
  It has no jump of its own and runs on into `eval_colorchangebasisv`; conditional transfers reach `HereWeGo`.
- `eval_colorchangebasisv`: address 0x0547, `uevalbasis.s` line 342 (16 words). Reached: its address loaded as a constant in `uEvalChangeBasis2D`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4); sets the condition flags once; takes 1 conditional transfer.
  It has no jump of its own and runs on into `eval_normalchangebasisu`; conditional transfers reach `HereWeGo`.
- `eval_normalchangebasisu`: address 0x0557, `uevalbasis.s` line 359 (16 words). Reached: its address loaded as a constant in `uEvalChangeBasis2D`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2); takes 1 conditional transfer.
  It has no jump of its own and runs on into `eval_normalchangebasisv`; conditional transfers reach `HereWeGo`.
- `eval_normalchangebasisv`: address 0x0567, `uevalbasis.s` line 376 (16 words). Reached: its address loaded as a constant in `uEvalChangeBasis2D`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1); takes 1 conditional transfer.
  It has no jump of its own and runs on into `eval_changebasis2ddone`; conditional transfers reach `HereWeGo`.
- `eval_changebasis2ddone`: address 0x0577, `uevalbasis.s` line 393 (15 words). Reached: its address loaded as a constant in `uEvalChangeBasis2D`.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1).
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).

### uevalcoord.s

Evaluator coordinate entry (EvalCoord) for 1D and 2D. **Inferred** from its labels and callers.

- `mges_EvalCoord`: address 0x03a0, `uevalcoord.s` line 61 (11 words). Reached: geif slot 192 (entry 385); distributor relocated word.
  **Inferred** role: GL eval coord call: one test, then the 2D coordinate loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1); takes 1 conditional transfer.
  It has no jump of its own and runs on into `evalcoord2dloop`.
- `uges_EvalCoord`: address 0x03a0, `uevalcoord.s` line 61 (11 words). Reached: second name for `mges_EvalCoord` at the same address, so the same code.
  **Inferred** role: GL eval coord call: one test, then the 2D coordinate loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1); takes 1 conditional transfer.
  It has no jump of its own and runs on into `evalcoord2dloop`.
- `evalcoord2dloop`: address 0x03ab, `uevalcoord.s` line 80 (46 words). Reached: inside `mges_EvalCoord`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (1); sets the condition flags once; loads 3 constants; takes 3 conditional transfers.
  It has no jump of its own and runs on into `evalcoord1dloop`; conditional transfers reach `uEvalCoord2D`.
  Constants loaded: 0x4000000, 0.
- `evalcoord1dloop`: address 0x03d9, `uevalcoord.s` line 127 (45 words). Reached: inside `mges_EvalCoord`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (1); sets the condition flags once; loads 3 constants; takes 3 conditional transfers.
  It ends with the end-of-command wait; conditional transfers reach `uEvalCoord1D`.
  Constants loaded: 0x2000000, 0.
- `uEvalCoord1D`: address 0x0406, `uevalcoord.s` line 195 (57 words). Reached: transfers in `evalcoord1dloop`.
  **Inferred** role: evaluates one 1D coordinate: parameter scaling and the polynomial stages.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (12), float subtract (4), AND (1), float multiply (1), float-to-integer conversion (1), operation 0x688 (1); sets the condition flags 6 times; loads 5 constants; takes 3 conditional transfers.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `uEvalSwapState2D` and 2 other labels.
  Constants loaded: 0.
- `uEvalCoord2D`: address 0x043f, `uevalcoord.s` line 264 (69 words). Reached: transfers in `evalcoord2dloop`.
  **Inferred** role: evaluates one 2D coordinate: parameter scaling and the polynomial stages.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (19), float subtract (8), float multiply (4), AND (1), float-to-integer conversion (1); sets the condition flags 9 times; loads 6 constants; takes 3 conditional transfers.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `uEvalSwapState1D` and 2 other labels.
  Constants loaded: 0.

### ulight.s

Simple lighting and colour clamp. **Inferred** from its labels and callers.

- `mmo_LiColorClamp`: address 0x0d69, `ulight.s` line 35 (9 words). Reached: its address loaded as a constant in `mGL_CM_Initialize` and 2 other labels.
  **Inferred** role: lighting colour-clamp module: tests bit 4 and clamps the colour.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (1), move (1); loads 1 constant; takes 1 conditional transfer.
  It has no jump of its own and runs on into `lLI2`; conditional transfers reach `mmo_AbortGeometry`.
  Constants loaded: 0xffffffef.
- `umo_LiColorClamp`: address 0x0d69, `ulight.s` line 35 (9 words). Reached: second name for `mmo_LiColorClamp` at the same address, so the same code.
  **Inferred** role: lighting colour-clamp module: tests bit 4 and clamps the colour.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations AND (1), move (1); loads 1 constant; takes 1 conditional transfer.
  It has no jump of its own and runs on into `lLI2`; conditional transfers reach `mmo_AbortGeometry`.
  Constants loaded: 0xffffffef.
- `lLI2`: address 0x0d72, `ulight.s` line 46 (10 words). Reached: inside `mmo_LiColorClamp`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations clamp at zero (8); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_LighterSimple`: address 0x0d7c, `ulight.s` line 67 (13 words). Reached: its address loaded as a constant in `mmo_DirtyCullAndLightModule` and 1 other label.
  **Inferred** role: simple lighting module: multiplies with a 1e-05 floor.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (5), move (3); loads 1 constant; takes 1 conditional transfer.
  It has no jump of its own and runs on into `lLI1`; conditional transfers reach `mmo_AbortGeometry`.
  Constants loaded: 1e-05 (0x3727c5ac).
- `umo_LighterSimple`: address 0x0d7c, `ulight.s` line 67 (13 words). Reached: second name for `mmo_LighterSimple` at the same address, so the same code.
  **Inferred** role: simple lighting module: multiplies with a 1e-05 floor.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (5), move (3); loads 1 constant; takes 1 conditional transfer.
  It has no jump of its own and runs on into `lLI1`; conditional transfers reach `mmo_AbortGeometry`.
  Constants loaded: 1e-05 (0x3727c5ac).
- `lLI1`: address 0x0d89, `ulight.s` line 81 (64 words). Reached: inside `mmo_LighterSimple`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (19), float multiply (15), clamp at zero (8), float add (3), float subtract (2), maximum (2), minimum (2), operation 0x6f9 (2), move (1); takes 2 conditional transfers.
  It jumps to `mLiIrisColoring`; conditional transfers reach `HereWeGo`.
- `mLiPwrTable`: address 0x0dc9, `ulight.s` line 192 (44 words). Reached: transfers in `mLiSwichSpotPrwTableSub` and 2 other labels.
  **Inferred** role: builds the lighting power table: conversions, masks and multiply-adds.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (9), integer-to-float conversion (9), logical shift right (9), AND (8), float add (6), float multiply-add (3), float subtract (3), second-unit operation 0xff (3), float-to-integer conversion (2), operation 0x6f7 (1), second-unit move (1); sets the condition flags 2 times; loads 3 constants.
  It has no jump of its own and runs on into `lPT1`.
  Constants loaded: 3.0 (0x40400000), 0.
- `uLiPwrTable`: address 0x0dc9, `ulight.s` line 192 (44 words). Reached: second name for `mLiPwrTable` at the same address, so the same code.
  **Inferred** role: builds the lighting power table: conversions, masks and multiply-adds.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (9), integer-to-float conversion (9), logical shift right (9), AND (8), float add (6), float multiply-add (3), float subtract (3), second-unit operation 0xff (3), float-to-integer conversion (2), operation 0x6f7 (1), second-unit move (1); sets the condition flags 2 times; loads 3 constants.
  It has no jump of its own and runs on into `lPT1`.
  Constants loaded: 3.0 (0x40400000), 0.
- `lPT1`: address 0x0df5, `ulight.s` line 240 (30 words). Reached: inside `mLiPwrTable`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (8), float add (5), float multiply-add (5), float subtract (2), logical shift right (2), move (1), second-unit move (1); sets the condition flags 3 times; takes 2 conditional transfers.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).

### umath.s

Sine and cosine. **Inferred** from its labels and callers.

- `mSinCos`: address 0x0e13, `umath.s` line 24 (79 words). Reached: transfers in `DrawMSTFanPnt` and 2 other labels.
  **Inferred** role: sine and cosine of one angle by series multiplies and subtracts, then a return.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (11), float subtract (10), float add (3), double subtract (2), operation 0x6b5 (2), second-unit operation 0x5ff (2); sets the condition flags 3 times.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `uSinCos`: address 0x0e13, `umath.s` line 24 (79 words). Reached: second name for `mSinCos` at the same address, so the same code.
  **Inferred** role: sine and cosine of one angle by series multiplies and subtracts, then a return.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (11), float subtract (10), float add (3), double subtract (2), operation 0x6b5 (2), second-unit operation 0x5ff (2); sets the condition flags 3 times.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).

### umatrix.s

Matrix multiply, inverse, adjoint, rotate and scale. **Inferred** from its labels and callers.

- `uMatrixMultCCC`: address 0x0e62, `umatrix.s` line 39 (78 words). Reached: transfers in `mmo_ObjToClipSpace` and 2 other labels.
  **Inferred** role: inner matrix multiply: 28 multiply-adds.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (28), float add (18), float multiply (8), float subtract (4), integer add (1); loads 2 constants.
  It jumps within its own code.
  Constants loaded: 0xfffffff8, 0.5 (0x3f000000).
- `mMatrixMultCCW`: address 0x0eb0, `umatrix.s` line 209 (55 words). Reached: transfers in `mFrustum` and 6 other labels.
  **Inferred** role: multiplies the current matrix by the operand matrix: 31 multiply-adds, then the fog update or the end-of-command wait.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (31), float add (5), float multiply (1), move (1); takes 1 conditional transfer.
  It ends with the end-of-command wait; conditional transfers reach `mResolveFogTable`.
- `uMatrixMultCCW`: address 0x0eb0, `umatrix.s` line 209 (55 words). Reached: second name for `mMatrixMultCCW` at the same address, so the same code.
  **Inferred** role: multiplies the current matrix by the operand matrix: 31 multiply-adds, then the fog update or the end-of-command wait.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (31), float add (5), float multiply (1), move (1); takes 1 conditional transfer.
  It ends with the end-of-command wait; conditional transfers reach `mResolveFogTable`.
- `mMatrixInverse`: address 0x0ee7, `umatrix.s` line 314 (113 words). Reached: transfers in `mTexGenEyeLine` and 6 other labels.
  **Inferred** role: inverts a 4x4 matrix: cofactors by multiplies and subtracts and a reciprocal of the determinant.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (31), float multiply-add (19), float subtract (16), move (16), float add (3), operation 0x6e3 (2), reciprocal Newton step (2), integer add (1), reciprocal seed (1); loads 1 constant.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0xfffffff8.
- `uMatrixInverse`: address 0x0ee7, `umatrix.s` line 314 (113 words). Reached: second name for `mMatrixInverse` at the same address, so the same code.
  **Inferred** role: inverts a 4x4 matrix: cofactors by multiplies and subtracts and a reciprocal of the determinant.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (31), float multiply-add (19), float subtract (16), move (16), float add (3), operation 0x6e3 (2), reciprocal Newton step (2), integer add (1), reciprocal seed (1); loads 1 constant.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
  Constants loaded: 0xfffffff8.
- `mMatrixAdjoint`: address 0x0f58, `umatrix.s` line 435 (88 words). Reached: transfers in `mSpriteAxial` and 2 other labels.
  **Inferred** role: adjoint of a 4x4 matrix: cofactors by multiplies and subtracts.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (24), float multiply (22), float multiply-add (18), move (16), float add (3), operation 0x6e3 (2); sets the condition flags once.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `uMatrixAdjoint`: address 0x0f58, `umatrix.s` line 435 (88 words). Reached: second name for `mMatrixAdjoint` at the same address, so the same code.
  **Inferred** role: adjoint of a 4x4 matrix: cofactors by multiplies and subtracts.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (24), float multiply (22), float multiply-add (18), move (16), float add (3), operation 0x6e3 (2); sets the condition flags once.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mRotate`: address 0x0fb0, `umatrix.s` line 557 (99 words). Reached: transfers in `mgeb_Rotate_Color` and 3 other labels.
  **Inferred** role: builds a rotation from the angle and axis (four operand words) with sine and cosine terms, then the matrix multiply.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations float multiply (33), float add (17), float subtract (17), float multiply-add (5), double subtract (2), operation 0x6b5 (2), reciprocal square-root Newton step (2), second-unit operation 0x5ff (2), move (1), reciprocal square-root seed (1); sets the condition flags 3 times.
  It jumps to `mMatrixMultCCW`.
- `uRotate`: address 0x0fb0, `umatrix.s` line 557 (99 words). Reached: second name for `mRotate` at the same address, so the same code.
  **Inferred** role: builds a rotation from the angle and axis (four operand words) with sine and cosine terms, then the matrix multiply.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations float multiply (33), float add (17), float subtract (17), float multiply-add (5), double subtract (2), operation 0x6b5 (2), reciprocal square-root Newton step (2), second-unit operation 0x5ff (2), move (1), reciprocal square-root seed (1); sets the condition flags 3 times.
  It jumps to `mMatrixMultCCW`.

### umemove.s

Memory moves WRAM, CRAM and ERAM in each direction. **Inferred** from its labels and callers.

- `uWramToCram`: address 0x1013, `umemove.s` line 18 (8 words). Reached: no slot, ARM load, decoded transfer or address constant reaches it (routes tried: [How to read the tables](#how-to-read-the-entries)).
  **Inferred** role: copy from working to coefficient memory (inner loop form); nothing in the program enters it.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6).
  It has no jump of its own and runs on into `lW2C`.
- `lW2C`: address 0x101b, `umemove.s` line 27 (10 words). Reached: inside `uWramToCram`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6); takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mWramToEram`: address 0x1025, `umemove.s` line 45 (8 words). Reached: transfers in `SaveClipState` and 12 other labels.
  **Inferred** role: copy from working to external memory: four set-up moves, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4).
  It has no jump of its own and runs on into `lW2E`.
- `uWramToEram`: address 0x1025, `umemove.s` line 45 (8 words). Reached: second name for `mWramToEram` at the same address, so the same code.
  **Inferred** role: copy from working to external memory: four set-up moves, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4).
  It has no jump of its own and runs on into `lW2E`.
- `lW2E`: address 0x102d, `umemove.s` line 54 (13 words). Reached: inside `mWramToEram`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6); takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mCramToEram`: address 0x103a, `umemove.s` line 75 (7 words). Reached: transfers in `mgeb_CramToEram` and 3 other labels.
  **Inferred** role: copy from coefficient to external memory: set-up, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4).
  It has no jump of its own and runs on into `lC2E`.
- `uCramToEram`: address 0x103a, `umemove.s` line 75 (7 words). Reached: second name for `mCramToEram` at the same address, so the same code.
  **Inferred** role: copy from coefficient to external memory: set-up, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4).
  It has no jump of its own and runs on into `lC2E`.
- `lC2E`: address 0x1041, `umemove.s` line 83 (14 words). Reached: inside `mCramToEram`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6); takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mEramToCram`: address 0x104f, `umemove.s` line 105 (17 words). Reached: transfers in `mdc_multipass` and 4 other labels.
  **Inferred** role: copy from external to coefficient memory: set-up, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4).
  It has no jump of its own and runs on into `lE2C`.
- `uEramToCram`: address 0x104f, `umemove.s` line 105 (17 words). Reached: second name for `mEramToCram` at the same address, so the same code.
  **Inferred** role: copy from external to coefficient memory: set-up, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4).
  It has no jump of its own and runs on into `lE2C`.
- `lE2C`: address 0x1060, `umemove.s` line 123 (20 words). Reached: inside `mEramToCram`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6); takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mClearEram`: address 0x1074, `umemove.s` line 151 (8 words). Reached: transfers in `mDebugInitialize` and 1 other label.
  **Inferred** role: named for clearing the engine memory ERAM; the 8-word entry sets registers and runs on into the loop at lcE, and what the loop stores is unknown.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1).
  It has no jump of its own and runs on into `lcE`.
- `uClearEram`: address 0x1074, `umemove.s` line 151 (8 words). Reached: second name for `mClearEram` at the same address, so the same code.
  **Inferred** role: named for clearing the engine memory ERAM; the 8-word entry sets registers and runs on into the loop at lcE, and what the loop stores is unknown.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (1).
  It has no jump of its own and runs on into `lcE`.
- `lcE`: address 0x107c, `umemove.s` line 160 (13 words). Reached: inside `mClearEram`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mCramToFifo`: address 0x1089, `umemove.s` line 183 (6 words). Reached: transfers in `mges_ContextDeactivate`.
  **Inferred** role: copy from coefficient memory out through the FIFO: set-up, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It has no jump of its own and runs on into `lC2F`.
- `uCramToFifo`: address 0x1089, `umemove.s` line 183 (6 words). Reached: second name for `mCramToFifo` at the same address, so the same code.
  **Inferred** role: copy from coefficient memory out through the FIFO: set-up, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It has no jump of its own and runs on into `lC2F`.
- `lC2F`: address 0x108f, `umemove.s` line 190 (12 words). Reached: inside `mCramToFifo`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations NOT (2), move (2); writes 1 word to the raster-bus output addresses; takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `mEramToFifo`: address 0x109b, `umemove.s` line 210 (10 words). Reached: transfers in `mges_ContextDeactivate`.
  **Inferred** role: copy from external memory out through the FIFO: set-up, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It has no jump of its own and runs on into `lE2F`.
- `uEramToFifo`: address 0x109b, `umemove.s` line 210 (10 words). Reached: second name for `mEramToFifo` at the same address, so the same code.
  **Inferred** role: copy from external memory out through the FIFO: set-up, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): carries no operation, operand read, store or constant the field readings name.
  It has no jump of its own and runs on into `lE2F`.
- `lE2F`: address 0x10a5, `umemove.s` line 221 (19 words). Reached: inside `mEramToFifo`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations NOT (2), move (2); writes 1 word to the raster-bus output addresses; takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).

### unpack.S

Vertex-array unpack enable and disable, colour and normal restore. **Inferred** from its labels and callers.

- `mgeb_EnableUnpack`: address 0x583e, `unpack.S` line 42 (11 words). Reached: geif slot 119 (entry 239); the ARM functions that send it are in the table below; distributor table 60.
  **Inferred** role: enables vertex-array unpacking.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (2).
  It ends with the end-of-command wait.
- `mgeb_DisableUnpack`: address 0x582e, `unpack.S` line 80 (10 words). Reached: geif slot 120 (entry 241); the ARM functions that send it are in the table below; distributor table 61.
  **Inferred** role: disables vertex-array unpacking.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3); sets the condition flags once.
  It ends with the end-of-command wait.
- `mgeb_RestoreColor`: address 0x581b, `unpack.S` line 105 (13 words). Reached: geif slot 377 (entry 755); the ARM functions that send it are in the table below; distributor table 62.
  **Inferred** role: restores the current colour from vertex-record words 4 to 7.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 4 to 7; operations move (4).
  It ends with the end-of-command wait.
- `mgeb_RestoreNormal`: address 0x580a, `unpack.S` line 133 (11 words). Reached: geif slot 378 (entry 757); the ARM functions that send it are in the table below; distributor table 63.
  **Inferred** role: restores the current normal from vertex-record words 8 to 10.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 8 to 10; operations move (3).
  It ends with the end-of-command wait.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgeb_EnableUnpack` | 119 | `init_ged` |  |
| `mgeb_DisableUnpack` | 120 | `init_ged` |  |
| `mgeb_RestoreColor` | 377 | `init_ged` |  |
| `mgeb_RestoreNormal` | 378 | `init_ged` |  |

### upixelSetup.s

Pixel colour-stream entry into the engine. **Inferred** from its labels and callers.

- `mgesi_PixDrawColorEntry`: address 0x27d5, `upixelSetup.s` line 51 (16 words). Reached: geif slot 212 (entry 425); the ARM functions that send it are in the table below.
  **Inferred** role: pixel draw-colour entry: one add and one subtract, then the end of the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (1), float subtract (1).
  It ends the command with an indirect transfer in condition group 31.
- `ugesi_PixDrawColorEntry`: address 0x27d5, `upixelSetup.s` line 51 (16 words). Reached: second name for `mgesi_PixDrawColorEntry` at the same address, so the same code.
  **Inferred** role: pixel draw-colour entry: one add and one subtract, then the end of the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (1), float subtract (1).
  It ends the command with an indirect transfer in condition group 31.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgesi_PixDrawColorEntry` | 212 | `CompGedReg`, `SetupGED_ColorStream`, `SetupGED_FFT`, `__glkonSendConvKernToHost`, `init_ged_regs` |  |

### upixout.s

Packed pixel output loops. **Inferred** from its labels and callers.

- `umo_Pixout32_8_16`: address 0x27e5, `upixout.s` line 60 (30 words). Reached: geif slot 308 (entry 617).
  **Inferred** role: pixel output from 32-bit to 8- and 16-bit formats: clamps, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (10), clamp at zero (2); loads 1 constant.
  It has no jump of its own and runs on into `loop32_8_16`.
  Constants loaded: 0.
- `loop32_8_16`: address 0x2803, `upixout.s` line 100 (46 words). Reached: inside `umo_Pixout32_8_16`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (33), clamp at zero (32), move (3); closes 1 loop.
  It ends with the end-of-command wait.
- `uPO_2_4C`: address 0x2831, `upixout.s` line 170 (4 words). Reached: transfers in `mmo_Pixout_2_4`.
  **Inferred** role: clamp step at the head of the 2- and 4-component pixel output, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations clamp at zero (4).
  It has no jump of its own and runs on into `uPO_2_4C_loop`.
- `uPO_2_4C_loop`: address 0x2835, `upixout.s` line 178 (12 words). Reached: inside `uPO_2_4C`, reached from that routine's own code.
  **Inferred** role: loop of the 2- and 4-component pixel output: clamps and scales each component.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations clamp at zero (8), float multiply (8); takes 2 conditional transfers.
  It has no jump of its own and runs on into `uPO_2_4C_LastBlck`; conditional transfers reach `HereWeGo`.
- `uPO_2_4C_LastBlck`: address 0x2841, `upixout.s` line 194 (9 words). Reached: transfers in `mmo_Pixout_2_4`.
  **Inferred** role: last block of the 2- and 4-component pixel output: clamps and scales, then ends the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations clamp at zero (4), float multiply (4).
  It ends the command with an indirect transfer in condition group 31.
- `uPO_8_16C`: address 0x284a, `upixout.s` line 209 (4 words). Reached: transfers in `mmo_Pixout_8_16`.
  **Inferred** role: clamp step at the head of the 8- and 16-component pixel output, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations clamp at zero (4).
  It has no jump of its own and runs on into `uPO_8_16C_loop`.
- `uPO_8_16C_loop`: address 0x284e, `upixout.s` line 216 (40 words). Reached: inside `uPO_8_16C`, reached from that routine's own code.
  **Inferred** role: loop of the 8- and 16-component pixel output: 36 clamps and scales.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations clamp at zero (36), float multiply (36); takes 2 conditional transfers.
  It has no jump of its own and runs on into `uPostLoop`; conditional transfers reach `HereWeGo`.
- `uPostLoop`: address 0x2876, `upixout.s` line 259 (13 words). Reached: transfers in `uPO_8_16C_LastBlck`.
  **Inferred** role: tail of the 8- and 16-component pixel output after its loop, then the end of the command.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (12), clamp at zero (8).
  It ends the command with an indirect transfer in condition group 31.
- `uPO_8_16C_LastBlck`: address 0x2883, `upixout.s` line 275 (9 words). Reached: transfers in `mmo_Pixout_8_16`.
  **Inferred** role: last block of the 8- and 16-component pixel output, then the tail.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations clamp at zero (8), float multiply (4).
  It jumps to `uPostLoop`.

### uscreen2.s

Transformation to screen space with the second-chance (clipped) path. **Inferred** from its labels and callers.

- `uSecondChance`: address 0x10b8, `uscreen2.s` line 66 (1 word). Reached: transfers in `mmo_ToScreenSpace`.
  **Inferred** role: second test of the screen-space transform for vertices the first test rejected.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations OR (1).
  It has no jump of its own and runs on into `lSC2`.
- `lSC2`: address 0x10b9, `uscreen2.s` line 69 (16 words). Reached: inside `uSecondChance`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (8), float subtract (8); takes 1 conditional transfer.
  It jumps to `uBack`.
- `mmo_ToScreenSpace`: address 0x10c9, `uscreen2.s` line 91 (2 words). Reached: its address loaded as a constant in `mGL_CM_Initialize` and 1 other label.
  **Inferred** role: screen-space transform module: tests w and runs into the divide.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (1); sets the condition flags once; takes 1 conditional transfer.
  It has no jump of its own and runs on into `uBack`; conditional transfers reach `uSecondChance`.
- `umo_ToScreenSpace`: address 0x10c9, `uscreen2.s` line 91 (2 words). Reached: second name for `mmo_ToScreenSpace` at the same address, so the same code.
  **Inferred** role: screen-space transform module: tests w and runs into the divide.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (1); sets the condition flags once; takes 1 conditional transfer.
  It has no jump of its own and runs on into `uBack`; conditional transfers reach `uSecondChance`.
- `uBack`: address 0x10cb, `uscreen2.s` line 94 (9 words). Reached: transfers in `lSC2`.
  **Inferred** role: perspective divide of the screen-space transform: reciprocal Newton steps.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (2), reciprocal Newton step (2); loads 1 constant.
  It has no jump of its own and runs on into `lSC1`.
  Constants loaded: 0.
- `lSC1`: address 0x10d4, `uscreen2.s` line 104 (44 words). Reached: inside `uBack`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (14), move (13), float add (4), reciprocal Newton step (4), float multiply-add (2), minimum (2), reciprocal seed (2); writes 2 words to the raster-bus output addresses; reads engine memory at 0x138a; loads 1 constant; takes 3 conditional transfers.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `HereWeGo`.
  Constants loaded: 0x70000.
- `uSecondChanceInvQ`: address 0x1100, `uscreen2.s` line 156 (3 words). Reached: transfers in `mmo_ToScreenSpaceInvQ`.
  **Inferred** role: second test of the screen-space transform that also keeps 1/q.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations OR (1); loads 1 constant.
  It has no jump of its own and runs on into `lSC4`.
  Constants loaded: 0.
- `lSC4`: address 0x1103, `uscreen2.s` line 161 (16 words). Reached: inside `uSecondChanceInvQ`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (8), float subtract (8); takes 1 conditional transfer.
  It jumps to `uBackInvQ`.
- `mmo_ToScreenSpaceInvQ`: address 0x1113, `uscreen2.s` line 183 (2 words). Reached: transfers in `mmo_SaveRasterPos`; its address loaded as a constant in `mTexGenResolve` and 1 other label.
  **Inferred** role: screen-space transform module that also keeps 1/q for texture coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (1); sets the condition flags once; takes 1 conditional transfer.
  It has no jump of its own and runs on into `uBackInvQ`; conditional transfers reach `uSecondChanceInvQ`.
- `umo_ToScreenSpaceInvQ`: address 0x1113, `uscreen2.s` line 183 (2 words). Reached: second name for `mmo_ToScreenSpaceInvQ` at the same address, so the same code.
  **Inferred** role: screen-space transform module that also keeps 1/q for texture coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (1); sets the condition flags once; takes 1 conditional transfer.
  It has no jump of its own and runs on into `uBackInvQ`; conditional transfers reach `uSecondChanceInvQ`.
- `uBackInvQ`: address 0x1115, `uscreen2.s` line 186 (12 words). Reached: transfers in `lSC4`.
  **Inferred** role: perspective divide that also scales the texture coordinates by 1/q.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6), float multiply (4), float add (2).
  It has no jump of its own and runs on into `lSC3`.
- `lSC3`: address 0x1121, `uscreen2.s` line 199 (130 words). Reached: inside `uBackInvQ`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (38), float multiply (26), minimum (23), move (19), float add (8), reciprocal Newton step (8), operation 0x6f7 (3), integer subtract or compare (1); sets the condition flags 2 times; writes 2 words to the raster-bus output addresses; reads engine memory at 0x138a; loads 1 constant; takes 3 conditional transfers.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `HereWeGo`.
  Constants loaded: 0x70000.
- `uSecondChanceInvQ2DI`: address 0x11a3, `uscreen2.s` line 338 (3 words). Reached: transfers in `mmo_ToScreenSpaceInvQ2DI`.
  **Inferred** role: second test of the screen-space transform with 1/q for two-dimensional interpolation.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations OR (1); loads 1 constant.
  It has no jump of its own and runs on into `lSC6`.
  Constants loaded: 0.
- `lSC6`: address 0x11a6, `uscreen2.s` line 343 (16 words). Reached: inside `uSecondChanceInvQ2DI`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (8), float subtract (8); takes 1 conditional transfer.
  It jumps to `uBackInvQ2DI`.
- `mmo_ToScreenSpaceInvQ2DI`: address 0x11b6, `uscreen2.s` line 365 (2 words). Reached: its address loaded as a constant in `mmo_DirtyTextureAndScreenModule`.
  **Inferred** role: screen-space transform with 1/q for two-dimensional texture interpolation.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (1); sets the condition flags once; takes 1 conditional transfer.
  It has no jump of its own and runs on into `uBackInvQ2DI`; conditional transfers reach `uSecondChanceInvQ2DI`.
- `umo_ToScreenSpaceInvQ2DI`: address 0x11b6, `uscreen2.s` line 365 (2 words). Reached: second name for `mmo_ToScreenSpaceInvQ2DI` at the same address, so the same code.
  **Inferred** role: screen-space transform with 1/q for two-dimensional texture interpolation.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (1); sets the condition flags once; takes 1 conditional transfer.
  It has no jump of its own and runs on into `uBackInvQ2DI`; conditional transfers reach `uSecondChanceInvQ2DI`.
- `uBackInvQ2DI`: address 0x11b8, `uscreen2.s` line 368 (9 words). Reached: transfers in `lSC6`.
  **Inferred** role: divide step of the two-dimensional 1/q transform.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (4), move (4).
  It has no jump of its own and runs on into `lSC5`.
- `lSC5`: address 0x11c1, `uscreen2.s` line 378 (87 words). Reached: inside `uBackInvQ2DI`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (21), move (19), minimum (16), reciprocal Newton step (8), float multiply-add (6), float add (5), operation 0x6f7 (2), reciprocal seed (2); sets the condition flags 2 times; writes 2 words to the raster-bus output addresses; reads engine memory at 0x138a; loads 1 constant; takes 3 conditional transfers.
  It ends the command with an indirect transfer in condition group 31; conditional transfers reach `HereWeGo`.
  Constants loaded: 0x70000.

### usepconv3x3.s

Separable 3x3 convolution row and column loops. **Inferred** from its labels and callers.

- `uSepConv3_124`: address 0x29a2, `usepconv3x3.s` line 68 (7 words). Reached: transfers in `mmo_SepConvolve3x3_124`.
  **Inferred** role: inner routine of the separable 3x3 convolution: kernel set-up multiplies, then the row loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (6), float multiply-add (1).
  It has no jump of its own and runs on into `RowConv3Loop`.
- `RowConv3Loop`: address 0x29a9, `usepconv3x3.s` line 80 (16 words). Reached: inside `uSepConv3_124`, reached from that routine's own code.
  **Inferred** role: row pass of the separable 3x3 convolution: multiply-adds per pixel.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (8), float multiply-add (8); takes 1 conditional transfer.
  It has no jump of its own and runs on into `ColumnConv3Loop`.
- `ColumnConv3Loop`: address 0x29b9, `usepconv3x3.s` line 108 (13 words). Reached: inside `uSepConv3_124`, reached from that routine's own code.
  **Inferred** role: column pass of the separable 3x3 convolution: multiply-adds, then a return.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (12); takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).

### usepconv5x5.s

Separable 5x5 convolution row and column loops, with a fast form. **Inferred** from its labels and callers.

- `uSepConv5_124`: address 0x29c6, `usepconv5x5.s` line 78 (9 words). Reached: transfers in `mmo_SepConvolve5x5_124`.
  **Inferred** role: inner routine of the separable 5x5 convolution.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (7), float multiply-add (2).
  It has no jump of its own and runs on into `RowConv5Loop`.
- `RowConv5Loop`: address 0x29cf, `usepconv5x5.s` line 91 (29 words). Reached: inside `uSepConv5_124`, reached from that routine's own code.
  **Inferred** role: row pass of the separable 5x5 convolution.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (16), float multiply (8); takes 1 conditional transfer.
  It has no jump of its own and runs on into `ColumnConv5Loop`.
- `ColumnConv5Loop`: address 0x29ec, `usepconv5x5.s` line 133 (21 words). Reached: inside `uSepConv5_124`, reached from that routine's own code.
  **Inferred** role: column pass of the separable 5x5 convolution.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (20); takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).
- `uFastSepConv5_124`: address 0x2a01, `usepconv5x5.s` line 188 (47 words). Reached: transfers in `mmo_FastSepConvolve5x5_124`.
  **Inferred** role: inner routine of the fast separable 5x5 convolution: integer conversions and multiplies.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (28), integer-to-float conversion (22), float multiply-add (11), move (1); 2 words stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here).
  It has no jump of its own and runs on into `FastRowConv5Loop`.
- `FastRowConv5Loop`: address 0x2a30, `usepconv5x5.s` line 243 (24 words). Reached: inside `uFastSepConv5_124`, reached from that routine's own code.
  **Inferred** role: row pass of the fast separable 5x5 convolution.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (16), float multiply (8), integer-to-float conversion (4); 3 words stored through address registers 9-0xb (the diagnostic test's output form, an engine-memory store here); takes 1 conditional transfer.
  It has no jump of its own and runs on into `FastRowConv5Epilog`.
- `FastRowConv5Epilog`: address 0x2a48, `usepconv5x5.s` line 280 (11 words). Reached: inside `uFastSepConv5_124`, reached from that routine's own code.
  **Inferred** role: end of the fast 5x5 row pass.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (4), float multiply (4), float multiply-add (1); takes 1 conditional transfer.
  It has no jump of its own and runs on into `FastColumnConv5Loop`; conditional transfers reach `mmo_PixLineNextGE`.
- `FastColumnConv5Loop`: address 0x2a53, `usepconv5x5.s` line 301 (21 words). Reached: inside `uFastSepConv5_124`, reached from that routine's own code.
  **Inferred** role: column pass of the fast separable 5x5 convolution.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (20); takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).

### usepconv7x7.s

Separable 7x7 convolution row and column loops. **Inferred** from its labels and callers.

- `uSepConv7_124`: address 0x2a68, `usepconv7x7.s` line 82 (11 words). Reached: transfers in `mmo_SepConvolve7x7_124`.
  **Inferred** role: inner routine of the separable 7x7 convolution.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (7), float multiply-add (4).
  It has no jump of its own and runs on into `RowConv7Loop`.
- `RowConv7Loop`: address 0x2a73, `usepconv7x7.s` line 97 (39 words). Reached: inside `uSepConv7_124`, reached from that routine's own code.
  **Inferred** role: row pass of the separable 7x7 convolution.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (24), float multiply (8); takes 1 conditional transfer.
  It has no jump of its own and runs on into `ColumnConv7Loop`.
- `ColumnConv7Loop`: address 0x2a9a, `usepconv7x7.s` line 149 (30 words). Reached: inside `uSepConv7_124`, reached from that routine's own code.
  **Inferred** role: column pass of the separable 7x7 convolution.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (28); takes 1 conditional transfer.
  It returns to its caller or the next chained stage (an indirect transfer outside condition group 31).

### utexgen.s

Texture-coordinate generation loops: sphere, eye-linear, object-linear. **Inferred** from its labels and callers.

- `mmo_TexGenSphere_ST`: address 0x0b85, `utexgen.s` line 45 (9 words). Reached: its address loaded as a constant in `mTexGenSph`.
  **Inferred** role: sphere-map texture-coordinate generation for s and t.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations shift left (2); loads 2 constants.
  It has no jump of its own and runs on into `lTGLOOP2`.
  Constants loaded: 0.
- `umo_TexGenSphere_ST`: address 0x0b85, `utexgen.s` line 45 (9 words). Reached: second name for `mmo_TexGenSphere_ST` at the same address, so the same code.
  **Inferred** role: sphere-map texture-coordinate generation for s and t.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations shift left (2); loads 2 constants.
  It has no jump of its own and runs on into `lTGLOOP2`.
  Constants loaded: 0.
- `lTGLOOP2`: address 0x0b8e, `utexgen.s` line 55 (92 words). Reached: inside `mmo_TexGenSphere_ST`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (44), float add (16), float multiply-add (8), reciprocal square-root Newton step (8), float subtract (6), move (2); loads 1 constant; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
  Constants loaded: 0.5 (0x3f000000).
- `mmo_TexGenEyeLinear_ST`: address 0x0bea, `utexgen.s` line 154 (14 words). Reached: its address loaded as a constant in `mGL_EX_Initialize` and 1 other label.
  **Inferred** role: eye-linear texture-coordinate generation for s and t: plane dot products.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (3), shift left (2); loads 2 constants.
  It has no jump of its own and runs on into `lXF8`.
  Constants loaded: 0.
- `umo_TexGenEyeLinear_ST`: address 0x0bea, `utexgen.s` line 154 (14 words). Reached: second name for `mmo_TexGenEyeLinear_ST` at the same address, so the same code.
  **Inferred** role: eye-linear texture-coordinate generation for s and t: plane dot products.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (3), shift left (2); loads 2 constants.
  It has no jump of its own and runs on into `lXF8`.
  Constants loaded: 0.
- `lXF8`: address 0x0bf8, `utexgen.s` line 169 (21 words). Reached: inside `mmo_TexGenEyeLinear_ST`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (12), float add (4), float multiply (4); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_TexGenEyeLinear_RQ`: address 0x0c0d, `utexgen.s` line 197 (14 words). Reached: its address loaded as a constant in `mGL_EX_Initialize` and 1 other label.
  **Inferred** role: eye-linear texture-coordinate generation for r and q.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (3), shift left (2); loads 2 constants.
  It has no jump of its own and runs on into `lXF9`.
  Constants loaded: 0.
- `umo_TexGenEyeLinear_RQ`: address 0x0c0d, `utexgen.s` line 197 (14 words). Reached: second name for `mmo_TexGenEyeLinear_RQ` at the same address, so the same code.
  **Inferred** role: eye-linear texture-coordinate generation for r and q.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (3), shift left (2); loads 2 constants.
  It has no jump of its own and runs on into `lXF9`.
  Constants loaded: 0.
- `lXF9`: address 0x0c1b, `utexgen.s` line 212 (21 words). Reached: inside `mmo_TexGenEyeLinear_RQ`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (12), float add (4), float multiply (4); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_TexGenObjLinear_ST`: address 0x0c30, `utexgen.s` line 240 (14 words). Reached: its address loaded as a constant in `mTexGenObjLin`.
  **Inferred** role: object-linear texture-coordinate generation for s and t.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (3), shift left (2); loads 2 constants.
  It has no jump of its own and runs on into `lXF10`.
  Constants loaded: 0.
- `umo_TexGenObjLinear_ST`: address 0x0c30, `utexgen.s` line 240 (14 words). Reached: second name for `mmo_TexGenObjLinear_ST` at the same address, so the same code.
  **Inferred** role: object-linear texture-coordinate generation for s and t.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (3), shift left (2); loads 2 constants.
  It has no jump of its own and runs on into `lXF10`.
  Constants loaded: 0.
- `lXF10`: address 0x0c3e, `utexgen.s` line 255 (21 words). Reached: inside `mmo_TexGenObjLinear_ST`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (12), float add (4), float multiply (4); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_TexGenObjLinear_RQ`: address 0x0c53, `utexgen.s` line 283 (14 words). Reached: its address loaded as a constant in `mTexGenObjLin`.
  **Inferred** role: object-linear texture-coordinate generation for r and q.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (3), shift left (2); loads 2 constants.
  It has no jump of its own and runs on into `lXF11`.
  Constants loaded: 0.
- `umo_TexGenObjLinear_RQ`: address 0x0c53, `utexgen.s` line 283 (14 words). Reached: second name for `mmo_TexGenObjLinear_RQ` at the same address, so the same code.
  **Inferred** role: object-linear texture-coordinate generation for r and q.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (3), shift left (2); loads 2 constants.
  It has no jump of its own and runs on into `lXF11`.
  Constants loaded: 0.
- `lXF11`: address 0x0c61, `utexgen.s` line 298 (21 words). Reached: inside `mmo_TexGenObjLinear_RQ`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (12), float add (4), float multiply (4); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.

### uunpack.s

Vertex-array unpack loops for unlit vertex formats. **Inferred** from its labels and callers.

- `mmo_UnpackVertexV3F`: address 0x2c6b, `uunpack.s` line 44 (13 words). Reached: geif slot 379 (entry 759); its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: vertex-array unpack of float positions: reads the array state at 0x13a7-0x13aa, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3); reads engine memory at 4 addresses from 0x13a7 to 0x13aa.
  It has no jump of its own and runs on into `V3Floop`.
- `umo_UnpackVertexV3F`: address 0x2c6b, `uunpack.s` line 44 (13 words). Reached: second name for `mmo_UnpackVertexV3F` at the same address, so the same code.
  **Inferred** role: vertex-array unpack of float positions: reads the array state at 0x13a7-0x13aa, then its loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3); reads engine memory at 4 addresses from 0x13a7 to 0x13aa.
  It has no jump of its own and runs on into `V3Floop`.
- `V3Floop`: address 0x2c78, `uunpack.s` line 60 (11 words). Reached: inside `mmo_UnpackVertexV3F`, reached from that routine's own code.
  **Inferred** role: loop of the float-position unpack: ten moves per vertex.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (10); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_UnpackVertexV3F_C4UB`: address 0x2c83, `uunpack.s` line 78 (17 words). Reached: geif slot 380 (entry 761); its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: vertex-array unpack of float positions and byte colours (scaled by 1/255).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4), logical shift right (3); loads 5 constants.
  It has no jump of its own and runs on into `V3F_C4UBloop`.
  Constants loaded: 0, 0xff, 0x3b808080.
- `umo_UnpackVertexV3F_C4UB`: address 0x2c83, `uunpack.s` line 78 (17 words). Reached: second name for `mmo_UnpackVertexV3F_C4UB` at the same address, so the same code.
  **Inferred** role: vertex-array unpack of float positions and byte colours (scaled by 1/255).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4), logical shift right (3); loads 5 constants.
  It has no jump of its own and runs on into `V3F_C4UBloop`.
  Constants loaded: 0, 0xff, 0x3b808080.
- `V3F_C4UBloop`: address 0x2c94, `uunpack.s` line 97 (25 words). Reached: inside `mmo_UnpackVertexV3F_C4UB`, reached from that routine's own code.
  **Inferred** role: loop of the position and byte-colour unpack: masks, conversions and scales.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (8), integer-to-float conversion (8), AND (6), logical shift right (6), move (2); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `umo_UnpackVertexV3F_N3S`: address 0x2cad, `uunpack.s` line 129 (18 words). Reached: inside `mmo_UnpackVertexV3F_C4UB`, reached from that routine's own code.
  **Inferred** role: vertex-array unpack of float positions and short normals (scaled by 1/32767).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6); reads engine memory at 4 addresses from 0x13a7 to 0x13aa; loads 3 constants.
  It has no jump of its own and runs on into `V3F_N3Sloop`.
  Constants loaded: 0, 3.05185e-05 (0x380000fd).
- `V3F_N3Sloop`: address 0x2cbf, `uunpack.s` line 150 (52 words). Reached: inside `umo_UnpackVertexV3F_N3S`, reached from that routine's own code.
  **Inferred** role: loop of the position and short-normal unpack.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (14), move (10), arithmetic shift right (4), float subtract (4), integer-to-float conversion (4), float add (2), integer add (2), reciprocal square-root Newton step (2), shift left (2); sets the condition flags 2 times; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_UnpackVertexV3F_T2F`: address 0x2cf3, `uunpack.s` line 209 (12 words). Reached: geif slot 383 (entry 767); its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: vertex-array unpack of float positions and float texture coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3); reads engine memory at 4 addresses from 0x13a7 to 0x13aa.
  It has no jump of its own and runs on into `V3F_T2Floop`.
- `umo_UnpackVertexV3F_T2F`: address 0x2cf3, `uunpack.s` line 209 (12 words). Reached: second name for `mmo_UnpackVertexV3F_T2F` at the same address, so the same code.
  **Inferred** role: vertex-array unpack of float positions and float texture coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3); reads engine memory at 4 addresses from 0x13a7 to 0x13aa.
  It has no jump of its own and runs on into `V3F_T2Floop`.
- `V3F_T2Floop`: address 0x2cff, `uunpack.s` line 223 (19 words). Reached: inside `mmo_UnpackVertexV3F_T2F`, reached from that routine's own code.
  **Inferred** role: loop of the position and float texture-coordinate unpack.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (18); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_UnpackVertexV3F_C4UB_T2F`: address 0x2d12, `uunpack.s` line 249 (10 words). Reached: geif slot 384 (entry 769); its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: vertex-array unpack of positions, byte colours and float texture coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3); loads 4 constants.
  It has no jump of its own and runs on into `V3F_C4UB_T2Floop`.
  Constants loaded: 0, 0x3b808080.
- `umo_UnpackVertexV3F_C4UB_T2F`: address 0x2d12, `uunpack.s` line 249 (10 words). Reached: second name for `mmo_UnpackVertexV3F_C4UB_T2F` at the same address, so the same code.
  **Inferred** role: vertex-array unpack of positions, byte colours and float texture coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3); loads 4 constants.
  It has no jump of its own and runs on into `V3F_C4UB_T2Floop`.
  Constants loaded: 0, 0x3b808080.
- `V3F_C4UB_T2Floop`: address 0x2d1c, `uunpack.s` line 261 (38 words). Reached: inside `mmo_UnpackVertexV3F_C4UB_T2F`, reached from that routine's own code.
  **Inferred** role: loop of the position, byte-colour and float texture-coordinate unpack.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (10), float multiply (8), integer-to-float conversion (8), logical shift right (8), shift left (6); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `umo_UnpackVertexV3F_N3S_T2F`: address 0x2d42, `uunpack.s` line 306 (18 words). Reached: inside `mmo_UnpackVertexV3F_C4UB_T2F`, reached from that routine's own code.
  **Inferred** role: vertex-array unpack of positions, short normals and float texture coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6); reads engine memory at 4 addresses from 0x13a7 to 0x13aa; loads 3 constants.
  It has no jump of its own and runs on into `V3F_N3S_T2Floop`.
  Constants loaded: 0, 3.05185e-05 (0x380000fd).
- `V3F_N3S_T2Floop`: address 0x2d54, `uunpack.s` line 327 (58 words). Reached: inside `umo_UnpackVertexV3F_N3S_T2F`, reached from that routine's own code.
  **Inferred** role: loop of the position, short-normal and float texture-coordinate unpack.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (18), float multiply (14), arithmetic shift right (4), float subtract (4), integer-to-float conversion (4), float add (2), integer add (2), reciprocal square-root Newton step (2), shift left (2); sets the condition flags 2 times; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_UnpackVertexV3F_T2S`: address 0x2d8e, `uunpack.s` line 392 (14 words). Reached: geif slot 387 (entry 775); its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: vertex-array unpack of positions and short texture coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4); reads engine memory at 4 addresses from 0x13a7 to 0x13aa; loads 1 constant.
  It has no jump of its own and runs on into `V3F_T2Sloop`.
  Constants loaded: 0.
- `umo_UnpackVertexV3F_T2S`: address 0x2d8e, `uunpack.s` line 392 (14 words). Reached: second name for `mmo_UnpackVertexV3F_T2S` at the same address, so the same code.
  **Inferred** role: vertex-array unpack of positions and short texture coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (4); reads engine memory at 4 addresses from 0x13a7 to 0x13aa; loads 1 constant.
  It has no jump of its own and runs on into `V3F_T2Sloop`.
  Constants loaded: 0.
- `V3F_T2Sloop`: address 0x2d9c, `uunpack.s` line 408 (25 words). Reached: inside `mmo_UnpackVertexV3F_T2S`, reached from that routine's own code.
  **Inferred** role: loop of the position and short texture-coordinate unpack.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (14), arithmetic shift right (4), integer-to-float conversion (4), shift left (2); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_UnpackVertexV3F_C4UB_T2S`: address 0x2db5, `uunpack.s` line 440 (10 words). Reached: geif slot 388 (entry 777); its address loaded as a constant in `mGL_EM_Initialize`.
  **Inferred** role: vertex-array unpack of positions, byte colours and short texture coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3); loads 4 constants.
  It has no jump of its own and runs on into `V3F_C4UB_T2Sloop`.
  Constants loaded: 0, 0x3b808080.
- `umo_UnpackVertexV3F_C4UB_T2S`: address 0x2db5, `uunpack.s` line 440 (10 words). Reached: second name for `mmo_UnpackVertexV3F_C4UB_T2S` at the same address, so the same code.
  **Inferred** role: vertex-array unpack of positions, byte colours and short texture coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3); loads 4 constants.
  It has no jump of its own and runs on into `V3F_C4UB_T2Sloop`.
  Constants loaded: 0, 0x3b808080.
- `V3F_C4UB_T2Sloop`: address 0x2dbf, `uunpack.s` line 452 (43 words). Reached: inside `mmo_UnpackVertexV3F_C4UB_T2S`, reached from that routine's own code.
  **Inferred** role: loop of the position, byte-colour and short texture-coordinate unpack.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations integer-to-float conversion (12), float multiply (8), logical shift right (8), shift left (8), move (6), arithmetic shift right (4); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `umo_UnpackVertexV3F_N3S_T2S`: address 0x2dea, `uunpack.s` line 502 (18 words). Reached: inside `mmo_UnpackVertexV3F_C4UB_T2S`, reached from that routine's own code.
  **Inferred** role: vertex-array unpack of positions, short normals and short texture coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (6); reads engine memory at 4 addresses from 0x13a7 to 0x13aa; loads 3 constants.
  It has no jump of its own and runs on into `V3F_N3S_T2Sloop`.
  Constants loaded: 0, 3.05185e-05 (0x380000fd).
- `V3F_N3S_T2Sloop`: address 0x2dfc, `uunpack.s` line 523 (64 words). Reached: inside `umo_UnpackVertexV3F_N3S_T2S`, reached from that routine's own code.
  **Inferred** role: loop of the position, short-normal and short texture-coordinate unpack.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (14), move (14), arithmetic shift right (8), integer-to-float conversion (8), float subtract (4), shift left (4), float add (2), integer add (2), reciprocal square-root Newton step (2); sets the condition flags 2 times; takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.

### uxform.s

Object-to-clip transformation with optional normal-to-eye transformation. **Inferred** from its labels and callers.

- `mmo_ObjToClipSpace`: address 0x1218, `uxform.s` line 44 (7 words). Reached: its address loaded as a constant in `mGL_CM_Initialize` and 1 other label.
  **Inferred** role: object-to-clip transform module: matrix rows by multiplies and multiply-adds.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (2), float multiply-add (2); takes 1 conditional transfer.
  It has no jump of its own and runs on into `lXF1`; conditional transfers reach `uMatrixMultCCC`.
- `umo_ObjToClipSpace`: address 0x1218, `uxform.s` line 44 (7 words). Reached: second name for `mmo_ObjToClipSpace` at the same address, so the same code.
  **Inferred** role: object-to-clip transform module: matrix rows by multiplies and multiply-adds.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (2), float multiply-add (2); takes 1 conditional transfer.
  It has no jump of its own and runs on into `lXF1`; conditional transfers reach `uMatrixMultCCC`.
- `lXF1`: address 0x121f, `uxform.s` line 52 (45 words). Reached: inside `mmo_ObjToClipSpace`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (30), float add (8), float subtract (6), float multiply (5); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_ObjToClipSpaceN2E`: address 0x124c, `uxform.s` line 104 (8 words). Reached: its address loaded as a constant in `mmo_DirtyXformAndObjToClipModule`.
  **Inferred** role: object-to-clip transform that also takes the normal to eye space.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (2), float multiply-add (2); takes 2 conditional transfers.
  It has no jump of its own and runs on into `lXF2`; conditional transfers reach `uMatrixMultCCC` and 1 other label.
- `umo_ObjToClipSpaceN2E`: address 0x124c, `uxform.s` line 104 (8 words). Reached: second name for `mmo_ObjToClipSpaceN2E` at the same address, so the same code.
  **Inferred** role: object-to-clip transform that also takes the normal to eye space.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (2), float multiply-add (2); takes 2 conditional transfers.
  It has no jump of its own and runs on into `lXF2`; conditional transfers reach `uMatrixMultCCC` and 1 other label.
- `lXF2`: address 0x1254, `uxform.s` line 113 (63 words). Reached: inside `mmo_ObjToClipSpaceN2E`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (48), float add (8), float subtract (6), float multiply (5); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_ObjToClipSpaceN2EN`: address 0x1293, `uxform.s` line 183 (8 words). Reached: its address loaded as a constant in `mmo_DirtyXformAndObjToClipModule`.
  **Inferred** role: object-to-clip transform that also takes the normal to eye space and normalises it.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (4); takes 2 conditional transfers.
  It has no jump of its own and runs on into `lXF3`; conditional transfers reach `uMatrixMultCCC` and 1 other label.
- `umo_ObjToClipSpaceN2EN`: address 0x1293, `uxform.s` line 183 (8 words). Reached: second name for `mmo_ObjToClipSpaceN2EN` at the same address, so the same code.
  **Inferred** role: object-to-clip transform that also takes the normal to eye space and normalises it.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (4); takes 2 conditional transfers.
  It has no jump of its own and runs on into `lXF3`; conditional transfers reach `uMatrixMultCCC` and 1 other label.
- `lXF3`: address 0x129b, `uxform.s` line 192 (99 words). Reached: inside `mmo_ObjToClipSpaceN2EN`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (50), float multiply (20), float add (10), float subtract (6), reciprocal square-root Newton step (4); takes 1 conditional transfer.
  It ends the command with an indirect transfer in condition group 31.
- `mmo_ObjToEyeSpace`: address 0x12fe, `uxform.s` line 558 (6 words). Reached: its address loaded as a constant in `mmo_DirtyXformAndObjToClipModule`.
  **Inferred** role: object-to-eye transform module.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (4).
  It has no jump of its own and runs on into `lXF5`.
- `umo_ObjToEyeSpace`: address 0x12fe, `uxform.s` line 558 (6 words). Reached: second name for `mmo_ObjToEyeSpace` at the same address, so the same code.
  **Inferred** role: object-to-eye transform module.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (4).
  It has no jump of its own and runs on into `lXF5`.
- `lXF5`: address 0x1304, `uxform.s` line 565 (33 words). Reached: inside `mmo_ObjToEyeSpace`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (32); takes 1 conditional transfer.
  It jumps within its own code.
- `mmo_ObjToEyeSpaceAndTwoUserTR`: address 0x1325, `uxform.s` line 605 (6 words). Reached: its address loaded as a constant in `mmo_DirtyXformAndObjToClipModule`.
  **Inferred** role: object-to-eye transform for two user clip planes.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (4).
  It has no jump of its own and runs on into `lXF12`.
- `umo_ObjToEyeSpaceAndTwoUserTR`: address 0x1325, `uxform.s` line 605 (6 words). Reached: second name for `mmo_ObjToEyeSpaceAndTwoUserTR` at the same address, so the same code.
  **Inferred** role: object-to-eye transform for two user clip planes.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (4).
  It has no jump of its own and runs on into `lXF12`.
- `lXF12`: address 0x132b, `uxform.s` line 612 (49 words). Reached: inside `mmo_ObjToEyeSpaceAndTwoUserTR`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (48); takes 1 conditional transfer.
  It jumps within its own code.
- `mmo_ObjToEyeSpaceAndSixUserTR`: address 0x135c, `uxform.s` line 668 (6 words). Reached: its address loaded as a constant in `mmo_DirtyXformAndObjToClipModule`.
  **Inferred** role: object-to-eye transform for six user clip planes.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (4).
  It has no jump of its own and runs on into `lXF7`.
- `umo_ObjToEyeSpaceAndSixUserTR`: address 0x135c, `uxform.s` line 668 (6 words). Reached: second name for `mmo_ObjToEyeSpaceAndSixUserTR` at the same address, so the same code.
  **Inferred** role: object-to-eye transform for six user clip planes.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply (4).
  It has no jump of its own and runs on into `lXF7`.
- `lXF7`: address 0x1362, `uxform.s` line 675 (82 words). Reached: inside `mmo_ObjToEyeSpaceAndSixUserTR`, reached from that routine's own code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float multiply-add (80); takes 1 conditional transfer.
  It jumps within its own code.

### video.S

Video-controller bus writes for the display board (cursor, colour map, gamma, mode, swap). **Inferred** from its labels and callers.

- `mgesi_VCbusWrite`: address 0x5305, `video.S` line 35 (11 words). Reached: geif slot 251 (entry 503); the ARM functions that send it are in the table below.
  **Inferred** role: video-bus write: two operand words to four raster bus words (constant 0x411).
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (4); writes 4 words to the raster-bus output addresses; loads 1 constant.
  It ends with the end-of-command wait.
  Constants loaded: 0x411.
- `mgesi_VCbusWriteMultiple`: address 0x52e8, `video.S` line 67 (24 words). Reached: geif slot 252 (entry 505); the ARM functions that send it are in the table below.
  **Inferred** role: video-bus write of several words in a loop.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations move (7), NOT (2); writes 2 words to the raster-bus output addresses; loads 1 constant; takes 1 conditional transfer.
  It waits on its own address under another condition group.
  Constants loaded: 0x411.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgesi_VCbusWrite` | 251 | `arm_dispmode`, `arm_dplex_swap`, `arm_retrace_seqid`, `arm_swap_cntrl`, `arm_x_loadcmap`, `arm_x_loadcursor`, `arm_x_loadcursorcolor`, `arm_x_loadgamma`, `arm_x_loadxmap_config`, `arm_x_loadxmap_did`, `dgResolveXMapChannelFormat`, `init_simulator_hacks` | `HP_DISPMODE`, `HP_DPLEX_SWAP`, `HP_RETRACE_SEQID`, `HP_SWAP_CNTRL`, `HP_X_LOADCMAP`, `HP_X_LOADCURSOR`, `HP_X_LOADCURSORCOLOR`, `HP_X_LOADGAMMA`, `HP_X_LOADXMAP_CONFIG`, `HP_X_LOADXMAP_DID` |
| `mgesi_VCbusWriteMultiple` | 252 | `arm_x_loadcmap`, `arm_x_loadcursor`, `arm_x_loadcursorcolor`, `arm_x_loadgamma` | `HP_X_LOADCMAP`, `HP_X_LOADCURSOR`, `HP_X_LOADCURSORCOLOR`, `HP_X_LOADGAMMA` |

### xclipdraw.S

X server clipped drawing of points, lines and rectangles. **Inferred** from its labels and callers.

- `mmo_XclipDrawPoints`: address 0x5130, `xclipdraw.S` line 70 (71 words). Reached: transfers in `mAbsX` and 1 other label.
  **Inferred** role: X server point drawing with clip: five raster bus words per point.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (24), float subtract (10), OR (6), float add (6), NOT (5); sets the condition flags 2 times; writes 5 words to the raster-bus output addresses; stores 4 words to control-memory addresses from 0xf to 0x15; loads 2 constants; takes 2 conditional transfers.
  It waits on its own address under another condition group.
  Constants loaded: 0.5 (0x3f000000), 0x70000.
- `mmo_XclipDrawRects`: address 0x508b, `xclipdraw.S` line 170 (129 words). Reached: transfers in `mAbsX` and 2 other labels.
  **Inferred** role: X server rectangle drawing with clip: minimum and maximum against the clip rectangle.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (64), float subtract (16), float add (8), NOT (7), second-unit move (6), maximum (4), minimum (4), second-unit move or minimum (3); sets the condition flags 9 times; writes 12 words to the raster-bus output addresses; stores 14 words to control-memory addresses from 0xf to 0x13; loads 4 constants; takes 4 conditional transfers.
  It waits on its own address under another condition group.
  Constants loaded: 0x70000, 0x12f080a, 0x40.
- `mmo_XclipDrawLines`: address 0x4ead, `xclipdraw.S` line 327 (386 words). Reached: transfers in `mAbsX` and 1 other label.
  **Inferred** role: X server line drawing with clip: 386 words of clipping and slope set-up.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float subtract (76), move (61), AND (50), float multiply (44), OR (36), logical shift right (32), float add (24), XOR (8), reciprocal Newton step (8), NOT (4), reciprocal square-root Newton step (4), reciprocal seed (3), float multiply-add (2), move of the second operand (2), second-unit move or minimum (2); sets the condition flags 38 times; writes 7 words to the raster-bus output addresses; stores 9 words to control-memory addresses from 0xf to 0x14; loads 2 constants; takes 4 conditional transfers.
  It waits on its own address under another condition group.
  Constants loaded: 0.5 (0x3f000000), 0x70000.

### xentry.S

X server drawing commands: points, lines, segments, rectangles, boxes, spans. **Inferred** from its labels and callers.

- `mgesi_XPoint`: address 0x5293, `xentry.S` line 59 (8 words). Reached: geif slot 240 (entry 481); the ARM functions that send it are in the table below; distributor table 42.
  **Inferred** role: X server point with absolute coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3).
  It jumps to `mAbsX`.
- `mgesi_XPointRel`: address 0x5284, `xentry.S` line 86 (7 words). Reached: geif slot 241 (entry 483); the ARM functions that send it are in the table below; distributor table 43.
  **Inferred** role: X server point with relative coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2).
  It jumps to `mRelX`.
- `mgesi_XBgPoint`: address 0x5274, `xentry.S` line 112 (8 words). Reached: geif slot 242 (entry 485); the ARM functions that send it are in the table below; distributor table 50.
  **Inferred** role: X server background point with absolute coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3).
  It jumps to `mAbsX`.
- `mgesi_XBgPointRel`: address 0x5265, `xentry.S` line 139 (7 words). Reached: geif slot 243 (entry 487).
  **Inferred** role: X server background point with relative coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2).
  It jumps to `mRelX`.
- `mgesi_XRect`: address 0x5223, `xentry.S` line 163 (49 words). Reached: geif slot 244 (entry 489); the ARM functions that send it are in the table below; distributor table 44.
  **Inferred** role: X server rectangle: converts the coordinates to float and draws through the clipped rectangle code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations float add (8), integer-to-float conversion (8), arithmetic shift right (4), integer add (4), logical shift right (3), AND (2), move (2), shift left (2); loads 3 constants; takes 1 conditional transfer.
  It jumps to `mmo_XclipDrawRects`.
  Constants loaded: 0x1, 0, 0xffff.
- `mgesi_XBox`: address 0x520c, `xentry.S` line 252 (9 words). Reached: geif slot 245 (entry 491); the ARM functions that send it are in the table below; distributor table 45.
  **Inferred** role: X server box outline through the absolute-coordinate path.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations logical shift right (1), move (1); loads 1 constant.
  It jumps to `mAbsX`.
  Constants loaded: 0x1.
- `mgesi_XSpans`: address 0x51d4, `xentry.S` line 297 (43 words). Reached: geif slot 246 (entry 493); the ARM functions that send it are in the table below; distributor table 46.
  **Inferred** role: X server spans: converts the coordinates and draws them as rectangles.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations float add (8), integer-to-float conversion (6), arithmetic shift right (4), integer add (4), shift left (2), move (1); loads 1 constant; takes 1 conditional transfer.
  It jumps to `mmo_XclipDrawRects`.
  Constants loaded: 0.
- `mgesi_XSegment`: address 0x51bd, `xentry.S` line 370 (11 words). Reached: geif slot 247 (entry 495); the ARM functions that send it are in the table below; distributor table 47.
  **Inferred** role: X server line segment with absolute coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3), logical shift right (1); loads 1 constant.
  It jumps to `mAbsX`.
  Constants loaded: 0x1.
- `mgesi_XSegmentRel`: address 0x51a6, `xentry.S` line 405 (10 words). Reached: geif slot 248 (entry 497); the ARM functions that send it are in the table below.
  **Inferred** role: X server line segment with relative coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2), logical shift right (1); loads 1 constant.
  It jumps to `mRelX`.
  Constants loaded: 0x1.
- `mgesi_XLine`: address 0x5196, `xentry.S` line 447 (8 words). Reached: geif slot 249 (entry 499); the ARM functions that send it are in the table below; distributor table 48.
  **Inferred** role: X server polyline with absolute coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (3).
  It jumps to `mAbsX`.
- `mgesi_XLineRel`: address 0x5187, `xentry.S` line 476 (7 words). Reached: geif slot 250 (entry 501); the ARM functions that send it are in the table below; distributor table 49.
  **Inferred** role: X server polyline with relative coordinates.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations move (2).
  It jumps to `mRelX`.
- `mAbsX`: address 0x52c4, `xentry.S` line 499 (26 words). Reached: transfers in `mgesi_XBgPoint` and 4 other labels.
  **Inferred** role: X server absolute-coordinate path: converts the coordinates and enters the clipped point or line code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations arithmetic shift right (4), integer add (4), integer-to-float conversion (4), shift left (2), move (1); loads 1 constant; takes 3 conditional transfers.
  It jumps to `mmo_XclipDrawPoints`; conditional transfers reach `mmo_XclipDrawRects` and 1 other label.
  Constants loaded: 0.
- `mRelX`: address 0x52a3, `xentry.S` line 552 (19 words). Reached: transfers in `mgesi_XBgPointRel` and 3 other labels.
  **Inferred** role: X server relative-coordinate path: adds the offsets and enters the clipped point or line code.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): operations integer-to-float conversion (4), arithmetic shift right (2), float add (2), move (1), shift left (1); loads 1 constant; takes 2 conditional transfers.
  It jumps to `mmo_XclipDrawPoints`; conditional transfers reach `mmo_XclipDrawLines`.
  Constants loaded: 0.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgesi_XPoint` | 240 | `arm_slop`, `init_ged` | `HP_SLOP` |
| `mgesi_XPointRel` | 241 | `arm_slop`, `init_ged` | `HP_SLOP` |
| `mgesi_XBgPoint` | 242 | `init_ged` |  |
| `mgesi_XRect` | 244 | `arm_slop`, `init_ged` | `HP_SLOP` |
| `mgesi_XBox` | 245 | `arm_slop`, `init_ged` | `HP_SLOP` |
| `mgesi_XSpans` | 246 | `arm_slop`, `init_ged` | `HP_SLOP` |
| `mgesi_XSegment` | 247 | `arm_slop`, `init_ged` | `HP_SLOP` |
| `mgesi_XSegmentRel` | 248 | `arm_slop` | `HP_SLOP` |
| `mgesi_XLine` | 249 | `arm_slop`, `init_ged` | `HP_SLOP` |
| `mgesi_XLineRel` | 250 | `arm_slop`, `init_ged` | `HP_SLOP` |

### xload.S

X server state loads: graphics context, position, clip, scissor, pixel set-up. **Inferred** from its labels and callers.

- `mgebi_XLoadPosition`: address 0x4d7c, `xload.S` line 62 (96 words). Reached: geif slot 360 (entry 721); the ARM functions that send it are in the table below; distributor table 52.
  **Inferred** role: loads the X window position: four operand words masked and compared against the window bounds.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations move (23), integer add (12), integer subtract or compare (7), logical shift right (4), shift left (4), AND (2), integer-to-float conversion (2), operation 0x6c6 (2), operation 0x6c8 (2), operation 0x6cc (2); writes 18 words to the raster-bus output addresses; loads 19 constants; takes 1 conditional transfer.
  It ends with the end-of-command wait.
  Constants loaded: 0x1, 0x803, 0xfffffff8, 0x80f, 0xffffffe0, 0, 0x70000, 0x7fff and 8 more.
- `mgesi_XLoadScissor`: address 0x4d43, `xload.S` line 195 (57 words). Reached: geif slot 361 (entry 723); the ARM functions that send it are in the table below; distributor table 54.
  **Inferred** role: loads the X scissor rectangle: four operand words and raster register words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations move (17), integer add (8), integer subtract or compare (7), shift left (4), float-to-integer conversion (2), operation 0x6c6 (2), operation 0x6c8 (2); writes 12 words to the raster-bus output addresses; loads 8 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x70000, 0x7fff, 0x3fff8000, 0x1133fc2, 0x3, 0x1143fc3.
- `mgebi_XLoadGC`: address 0x4cf4, `xload.S` line 307 (72 words). Reached: geif slot 362 (entry 725); the ARM functions that send it are in the table below; distributor table 51.
  **Inferred** role: loads an X graphics context: 13 operand words to 40 raster bus words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 12; operations move (47); writes 40 words to the raster-bus output addresses; loads 16 constants; takes 1 conditional transfer.
  It ends with the end-of-command wait.
  Constants loaded: 0x13d1c14, 0x13e1c15, 0x1341c00, 0x1351c02, 0x13b1c0b, 0x13c1c0d, 0x13f3ff8, 0x167140f and 8 more.
- `mgeb_XLoadClip`: address 0x4cc0, `xload.S` line 447 (42 words). Reached: geif slot 363 (entry 727); the ARM functions that send it are in the table below; distributor table 53.
  **Inferred** role: loads the X clip rectangle: eight conversions to float.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations integer-to-float conversion (8), move (1); takes 1 conditional transfer.
  It ends with the end-of-command wait.
- `mgesi_XPixRmSetup`: address 0x4c70, `xload.S` line 554 (72 words). Reached: geif slot 116 (entry 233); the ARM functions that send it are in the table below.
  **Inferred** role: X server pixel set-up for the raster managers: seven operand words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 6; operations move (27), float-to-integer conversion (5), integer add (5), integer subtract or compare (3), float add (2), NOT (1); writes 4 words to the raster-bus output addresses; loads 25 constants.
  It ends with the end-of-command wait.
  Constants loaded: 0x2103000, 0x806, 0x11b00, 0x2011a00, 0x2021800, 0x20c0c00, 0x20c0000, 0x12b0806 and 14 more.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgebi_XLoadPosition` | 360 | `arm_x_loadpos`, `init_ged` |  |
| `mgesi_XLoadScissor` | 361 | `init_ged` |  |
| `mgebi_XLoadGC` | 362 | `init_ged` |  |
| `mgeb_XLoadClip` | 363 | `arm_x_loadclip_arm`, `init_ged` | `HP_X_LOADCLIP_ARM` |
| `mgesi_XPixRmSetup` | 116 | `XPixSetupRM`, `arm_x_pix_write` | `HP_X_PIX_WRITE` |

### xsetup.S

X server set-up of clip, colours and window. **Inferred** from its labels and callers.

- `mgebi_XSetupWindow`: address 0x4e30, `xsetup.S` line 40 (101 words). Reached: geif slot 357 (entry 715); the ARM functions that send it are in the table below.
  **Inferred** role: X window set-up: two operand words and the window bounds.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 1; operations move (26), integer add (9), integer subtract or compare (9), logical shift right (6), shift left (6), AND (2), arithmetic shift right (2), float add (2), integer-to-float conversion (2), operation 0x6cc (2); sets the condition flags 4 times; writes 18 words to the raster-bus output addresses; loads 21 constants; takes 1 conditional transfer.
  It ends with the end-of-command wait.
  Constants loaded: 0, 0x1, 0x804, 0x810, 0xfffffff8, 0xffffffe0, 0.5 (0x3f000000), 0x70000 and 9 more.
- `mgeb_XSetupColors`: address 0x4e22, `xsetup.S` line 199 (12 words). Reached: geif slot 358 (entry 717); the ARM functions that send it are in the table below.
  **Inferred** role: X colour set-up: four operand words.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command words 0 to 3; operations move (4).
  It ends with the end-of-command wait.
- `mgeb_XSetupClip`: address 0x4deb, `xsetup.S` line 231 (47 words). Reached: geif slot 359 (entry 719); the ARM functions that send it are in the table below.
  **Inferred** role: X clip set-up: conversions to float and 16-bit masks.
  **Inferred** from the `ge.u` listing (6.5.30m, readings of ge_ops.md): reads command word 0; operations integer-to-float conversion (8), AND (4), logical shift right (4), move (3); loads 2 constants; takes 1 conditional transfer.
  It ends with the end-of-command wait.
  Constants loaded: 0, 0xffff.

ARM functions and host tokens that send these handlers:

| Label | geif slot | ARM functions | Tokens |
|---|---|---|---|
| `mgebi_XSetupWindow` | 357 | `arm_slop` | `HP_SLOP` |
| `mgeb_XSetupColors` | 358 | `arm_slop` | `HP_SLOP` |
| `mgeb_XSetupClip` | 359 | `arm_slop` | `HP_SLOP` |
