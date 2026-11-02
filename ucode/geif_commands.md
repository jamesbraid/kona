# Geometry-engine commands read one by one

One row per command slot of `geif.u` (IRIX 6.5.30m) whose handler's code was read word by word from its listing in [ge_listing/](ge_listing/), in the field readings of [ge_isa.md](ge_isa.md) and [ge_ops.md](ge_ops.md). The table of slots is in [geif_entries.md](geif_entries.md), the per-label catalogue in [ge_handlers.md](ge_handlers.md) and the arithmetic of the larger routines in [ge_compute.md](ge_compute.md#gl-mode-handlers-and-the-dirty-modules-glmodess). This page states what each command does to the engine's state words, to external memory, to the special flag registers and to the raster output, for commands that change mode rather than vertex data. Entry n of `geif.u` holds the handler address of slot (n - 1) / 2; the even entries are the zero upper halves of the slot words and have no handler.

How to read a row. **Established** means the words named in the row were read in the listing: the address, the immediate, the engine word or special register a word names, the predicate field of a store. **Inferred** means that what the words do rests on the repository's field rules: a store with `r95` = 4 writes the value that a word with `r99` bit 1 produced nine words earlier, a store with `r95` = 8 goes to external memory, special register 0x20 + k is bit k of the flag word that `cc` 0x60 + 2k tests, register 0x1e reads as zero and register 0x1f as 1.0 ([How the vertex path is chained](ge_compute.md#how-the-vertex-path-is-chained-successor-words)). A state word is "engine word N" when a store or read names it by an immediate with `r95` = 4 or 0x13. The set pattern is the move of register 0x1d (`r148` = 0x3a0) and the clear pattern the move of register 0x1e (`r148` = 0x3c0). "Code line" is the source line of the label's first instruction in the `ge.u` line table. Every handler starts with the framing words of [ge_ops.md](ge_ops.md#reading-a-handler-in-source-order) and ends with the end-of-command wait, so neither is repeated. A handler takes an operand only where a word reads command input (A = 0x1f); the framing words alone read none.

## Face culling and winding (`glmodes.S`)

Four handlers set the cull flag, the culled face and the winding. They read no vertex data.

- `geif.u entry 31` (slot 15, established words, inferred meaning): `mgeb_FrontFace` at 0xf3db, `glmodes.S` line
  293, 10 words, takes one operand, the winding enumerant, and compares it with 0x900 (`GL_CW`, staged at
  0xf3dd) by an integer subtract that sets the flags (0xf3de, M = 0x6c2). It writes engine word 0x6f twice: an
  unconditional store at 0xf3e8 whose data is the set pattern formed at 0xf3df, and a second store at 0xf3e9
  under predicate field `r198` = 3 whose data is the clear pattern formed at 0xf3e0. So the word is set unless
  the compare's predicate selects the clear store. Which outcome of the subtract (equal or not equal) carries
  `r198` = 3 is not read from the words. It changes no special register and no other state word.

- `geif.u entry 7` (slot 3, established words, inferred meaning): `mgeb_CullFace` at 0xf366, `glmodes.S` line
  546, 20 words, takes one operand, the culled-face enumerant, and compares it with 0x405 (`GL_BACK`, staged at
  0xf369, flag-setting subtract at 0xf36a). It stores engine word 0x70 twice, at 0xf372 unconditionally and at
  0xf375 under `r198` = 4, and the external-memory word at register 0x16 + 0x14 twice, at 0xf373 unconditionally
  and at 0xf376 under `r198` = 1, so the face selection reaches both an engine word and its copy in external
  memory. It then rebuilds bit 30 of engine word 3: it reads word 3 and clears the bit with an AND-NOT against
  0x40000000 (stage 0xf36c, read 0xf36d, AND-NOT 0xf36e, store 0xf377), and reads word 6 and ANDs it with the
  same mask under the flag-setting AND at 0xf370. A second store of word 3 at 0xf37b runs under `r198` = 3 after
  the conditional word at 0xf37a, so the bit returns only when word 6 shows culling enabled.

- `geif.u entry 21` (slot 10, established words, inferred meaning): `mgeb_Enable_Cull_Face` at 0xf352,
  `glmodes.S` line 619, 17 words, takes no operand and it sets bit 30 of engine word 6 by an OR with 0x40000000
  (stage 0xf357, read of word 6 and OR at 0xf358, store 0xf362), writes the set pattern to special register 0x26
  (0xf356), and stores 0xf547, the address of `mmo_DirtyCullAndLightModule`, into engine word 0xb (stage 0xf355,
  store 0xf363), so the next vertex batch runs the cull-and-light selector first. It also reads the
  external-memory word at register 0x16 + 0x14 that `mgeb_CullFace` writes (0xf352), ANDs it under the
  flag-setting word at 0xf359, and rebuilds engine word 3: an AND-NOT of bit 30 (0xf35b, store 0xf364), then an
  OR that puts the bit back (0xf35c), stored at 0xf365 under `r198` = 3.

- `geif.u entry 11` (slot 5, established words, inferred meaning): `mgeb_Disable_Cull_Face` at 0xf33e,
  `glmodes.S` line 643, 16 words, takes no operand and all three engine-word stores are unconditional. It clears
  bit 30 of engine word 6 by an AND-NOT against 0x40000000 (read of word 6 at 0xf33e, stage 0xf33f, AND-NOT
  0xf340, store 0xf34f), clears bit 30 of engine word 3 the same way (read 0xf347, stage 0xf345, AND-NOT 0xf348,
  store 0xf351), and stores 0xf547 (`mmo_DirtyCullAndLightModule`) into engine word 0xb (stage 0xf346, store
  0xf350). On special register 0x26 it writes the clear pattern (0xf341) and then, in two identical words under
  `r198` = 3 (0xf343, 0xf344), the set pattern again; the predicate comes from the flag-setting move of engine
  word 0x1b at 0xf342. So the register ends set or clear according to that word.

## User clip planes (`glmodes.S`)

Six planes, each with an enable flag and an eye-space slot in external memory. From the address arithmetic in the handlers (the enumerant minus 0x3000, `GL_CLIP_PLANE0`, plus a base), the flag of plane i is the word at register 0x16 + 0x904 + i and the plane slot is at register 0x16 + 0x90a + 4i.

- `geif.u entry 19` (slot 9, established words, inferred meaning): `mgeb_EnableUserClipPlane` at 0xf390,
  `glmodes.S` line 393, 10 words, takes one operand, the plane enumerant. It loads it into address register 0x1a
  (0xf390), adds -0x3000 (immediate 0xffffd000, 0xf398) and 0x904 (0xf39c), and stores the set pattern (formed
  at 0xf397) to external memory through register 0x16 at that address (store 0xf3a0, `r95` = 8): the plane's
  enable flag. Then it jumps, not calls, to `mUserClipResolve` at 0xf583 (0xf39b), which repacks the enabled
  planes and rebuilds the clip mask. It writes no engine word and no special register itself.

- `geif.u entry 9` (slot 4, established words, inferred meaning): `mgeb_DisableUserClipPlane` at 0xf37c,
  `glmodes.S` line 420, 10 words, the mirror of the enable command: the same address arithmetic on the operand
  (0xf37c, 0xf384, 0xf388) and a store to the same flag through register 0x16 (0xf38c), now of the clear pattern
  formed at 0xf383, then the jump to `mUserClipResolve` at 0xf583 (0xf387). The two commands differ only in the
  data move (`r148` = 0x3c0 here, 0x3a0 there).

- `geif.u entry 179` (slot 89, established words, inferred meaning): `mgeb_UserClipPlane` at 0xf3a4, `glmodes.S`
  line 329, 43 words, takes five operand words: the plane enumerant and the four plane coefficients. If the
  inverse-modelview dirty condition (`cc` 0x76) holds it first calls `mMatrixInverse` at 0xee7 (0xf3a4). It
  reads the sixteen inverse-modelview words at engine addresses 0x1f to 0x2e (immediates at 0xf3ae-0xf3c2) and
  combines them with the coefficients in seven single multiplies (M = 0x47f, 0xf3ae-0xf3b4), nine multiply-adds
  (M = 0x460, 0xf3b6-0xf3c2) and three float adds (M = 0x6e0,
  0xf3bf, 0xf3c4, 0xf3c6), giving the plane in eye coordinates. The slot address is built in register 0x1a from
  the enumerant: minus 0x3000 (0xf3b5), two scalings by `r176` = 2 (0xf3b9, 0xf3bd), plus 0x90a (0xf3c1), plus
  register 0x16 (0xf3c5). Eight stores through that address (`r95` = 8) follow: four at 0xf3c9, 0xf3cb,
  0xf3cd and 0xf3cf, and four at 0xf3d1,
  0xf3d3, 0xf3d5 and 0xf3d7, the second four carrying the operand words moved at 0xf3c8-0xf3ce (F field 7, 6, 5,
  4). Taking the F fields as the slot offsets 0-3 and 0x18-0x1b is the repository's reading of those F fields. It ends by jumping to `mUserClipResolve` (0xf3d2).

## Viewport, depth range and engine identity (`glmodes.S`)

- `geif.u entry 181` (slot 90, established words, inferred meaning): `mgeb_ViewPort` at 0xf404, `glmodes.S` line
  107, 47 words, takes eleven operand words (command words 0-10 read at 0xf404-0xf421). Words 0-3, the window x,
  y, width and height, are converted from integer to single float with unit-1 code 0x73 (M = 0x6f3, 0xf405,
  0xf407, 0xf409, 0xf410) into registers 0x19,
  0x1a, 0x1b and 0x1c, and the integers themselves are stored to external memory at register 0x16 + 0x248 to +
  0x24b (stores 0xf40d, 0xf40f, 0xf411,
  0xf413, `r95` = 8). The extents are multiplied by the staged 0.5 (0x3f000000 at 0xf412, multiply 0xf414); a
  reciprocal follows with the seed and a Newton-Raphson step (`r110` = 0x6bf at 0xf415, M = 0x4ff at 0xf417,
  0xf420 and 0xf422); operands 5-10 are converted the same way (0xf41a,
  0xf41b, 0xf41f, 0xf421) and the constant 49152.0 (0x47400000) is staged at 0xf423. Results are stored to
  engine words 0x7e (0xf41d), 0x7f (0xf42f), 0x80 (0xf427), 0x81 (0xf430) and 0x71 to 0x74 (0xf431-0xf434), and
  two more words go through register 0x16 at the F offsets 0x1a and 0x19 (0xf429,
  0xf42b, `r95` = 0x48). Which result lands in which word follows the nine-word store pairing and is inferred;
  [Perspective divide and viewport](ge_compute.md#perspective-divide-and-viewport-uscreen2s) shows where the
  transform loops read these words.

- `geif.u entry 671` (slot 335, established words, inferred meaning): `mgeb_DepthRange` at 0xf3ea, `glmodes.S`
  line 233, 21 words, takes two operands, near and far. Each is run through a maximum (M = 0x6e8,
  0xf3ea, 0xf3eb) and then a minimum (M = 0x6e6,
  0xf3ee, 0xf3ef), which the diagnostic readings of those two codes make a clamp to the range 0 to 1. Two float
  subtracts (M = 0x6e2, 0xf3f3, 0xf3f4) and one float add (M = 0x6e0,
  0xf3f5) follow, and four unit-2 multiplies (M = 0x47f, 0xf3f6-0xf3f9) scale by the staged 2^20 (0x49800000,
  0xf3f2) and 2^19 (0x49000000, 0xf3f1). Four stores write engine words 0xc6 (0xf3ff), 0x82 (0xf400), 0xc7
  (0xf401) and 0xc8 (0xf402). The conditional jump at 0xf3fa (`cc` 0x64, the fog-flag condition of the
  repository's reading) goes to `mResolveFogTable` at 0x763a, so a fog table is rebuilt for the new range when
  fog is on.

- `geif.u entry 449` (slot 224, established words, inferred meaning): `mgesi_SetGeId` at 0xf435, `glmodes.S`
  line 47, 15 words, takes one operand and gives the engine its number. It reads command word 0 twice (A = 0x1f
  at 0xf436 and 0xf438), ANDs one copy with the staged immediate 0xf and the flags enabled (M = 0x6d0,
  0xf437), and stores the operand to external-memory word 0x1389 (store 0xf441, `r95` = 8, unconditional). It
  stages 1000000.0 (0x49742400, 0xf439) and 16.0 (0x41800000,
  0xf43b) and stores one of them to word 0x138a with two complementary predicated stores, at 0xf443 (`r198` = 3)
  and 0xf445 (`r198` = 2), so exactly one executes according to whether the low four bits of the operand are
  zero. Which constant goes with which outcome is not read from the words.

## Sprites, multipass and point parameters (`glmodes.S`)

Enabling or disabling sprites or multipass changes feature bits in engine words 0xdf and 0x19, a flag in special register 0x27 and the two pre-path successor words 0xda and 0xdb, which all four commands set to 0xf4e4, the address of `mmo_DirtyPrePathModule`.

- `geif.u entry 25` (slot 12, established words, inferred meaning): `mgeb_EnableSprite` at 0xf2b9, `glmodes.S`
  line 1318, 15 words, takes no operand and reads engine word 0xdf and ORs in 0x10 (stage 0xf2bb, OR 0xf2bc,
  store 0xf2c7), reads word 0x19 and ORs in 4 (stage 0xf2ba, OR 0xf2bf, store 0xf2c9), writes the set pattern to
  special registers 0x2a (0xf2bd) and 0x27 (0xf2be), and stores 0xf4e4 to words 0xda and 0xdb (stage 0xf2c0,
  stores 0xf2ca, 0xf2cb). All four stores are unconditional.

- `geif.u entry 17` (slot 8, established words, inferred meaning): `mgeb_DisableSprite` at 0xf2a6, `glmodes.S`
  line 1364, 15 words, takes no operand and aNDs engine word 0xdf with 0xffffffef, flags enabled (stage 0xf2a8,
  AND 0xf2a9, store 0xf2b4), ANDs word 0x19 with 0xfffffffb (stage 0xf2aa, AND 0xf2ac, store 0xf2b6), and resets
  words 0xda and 0xdb to 0xf4e4 (stage 0xf2ad, stores 0xf2b7,
  0xf2b8). It clears special register 0x27 with the clear pattern under `r198` = 2 (0xf2ab), the predicate of
  the flag-setting AND of word 0xdf, so the pre-path flag drops only when that AND leaves no feature bit.
  Special register 0x2a, which the enable command set, is not written.

- `geif.u entry 275` (slot 137, established words, inferred meaning): `mgeb_Enable_Multipass` at 0xf293,
  `glmodes.S` line 1403, 15 words, takes no operand and oRs 8 into engine word 0xdf (stage 0xf296, OR 0xf299,
  store 0xf2a2) and into word 0x19 (stage 0xf295, OR 0xf29a, store 0xf2a3), writes the set pattern to special
  registers 0x27 (0xf297) and 0x2a (0xf298), and stores 0xf4e4 to words 0xda and 0xdb (stage 0xf294, stores
  0xf2a4, 0xf2a5).

- `geif.u entry 271` (slot 135, established words, inferred meaning): `mgeb_Disable_Multipass` at 0xf280,
  `glmodes.S` line 1447, 15 words, takes no operand and aNDs engine words 0xdf (flags enabled, 0xf283) and 0x19
  (0xf287) with 0xfffffff7 (stages 0xf282, 0xf286; stores 0xf28f,
  0xf290) and resets words 0xda and 0xdb to 0xf4e4 (stage 0xf284, stores 0xf291,
  0xf292). The clear pattern goes to special register 0x27 only under `r198` = 2 (0xf285), the predicate of the
  AND of word 0xdf. Special register 0x2a is not written, so it stays set once the enable command set it.

- `geif.u entry 163` (slot 81, established words, inferred meaning): `mgeb_Sprite` at 0xf2cc, `glmodes.S` line
  1263, 35 words, takes an operand code and up to four values. It stages 4,
  0 and 0x10 (0xf2cf,
  0xf2ce, 0xf2cd), compares command word 0 with each by an integer subtract that sets the flags (0xf2d0-0xf2d2)
  and takes one of three conditional jumps (0xf2dc, 0xf2dd, 0xf2de, condition 2). Code 0x10 stores the next
  operand to external memory at register 0x16 + 0x94a (0xf2f0), the sprite mode word. Code 0 stores operands 1-4
  at + 0x93a to + 0x93d (0xf2fd, 0xf2ff, 0xf301,
  0xf303). Code 4 stores operands 1-4 at + 0x93e to + 0x941 (0xf310, 0xf312, 0xf314,
  0xf316). Any other code reaches the end-of-command wait with nothing stored. The ARM's sprite default routine
  sends 0x10, then 4, then 0 (`initSpriteState` in [arm1_functions.md](arm1_functions.md)), and the sprite mode
  routines read the axis and translation at those addresses.

- `geif.u entry 127` (slot 63, established words, inferred meaning): `mgeb_PointParameter` at 0xf21b,
  `glmodes.S` line 1524, 50 words, takes a parameter name (operand 0, compared with 0x8126 to 0x8129, which the
  OpenGL registry gives as `GL_POINT_SIZE_MIN_EXT`, `GL_POINT_SIZE_MAX_EXT`,
  `GL_POINT_FADE_THRESHOLD_SIZE_EXT` and `GL_DISTANCE_ATTENUATION_EXT`; staged 0xf21c-0xf21f, subtracts
  0xf220-0xf223, conditional jumps 0xf22c-0xf22f to 0xf241, 0xf24d, 0xf259 and
  0xf265). For the first three names it multiplies operand 1 by the staged 0.5 (0x3f000000, 0xf233; multiplies
  0xf242, 0xf24e, 0xf25a) and stores the product to external-memory words 0x241,
  0x242 and 0x243 (stores 0xf24b,
  0xf257, 0xf263), which reads as turning a diameter into a radius. For the attenuation name it copies operands
  1-3 to words 0x23e, 0x23f and 0x240 (stores 0xf26e,
  0xf274, 0xf27a), subtracts 1.0 from the first with the flags enabled (0xf26f) and runs two more flag-setting
  tests (0xf270, 0xf271). It then stores an OR with 4 into engine word 4 under condition 2 (0xf27b), an AND-NOT
  result into word 4 (0xf27e) and 0xf449, the address of `mmo_DirtyXformAndObjToClipModule`, into engine word 8
  (stage 0xf273, store 0xf27f). Whether the attenuation bit of word 4 ends set or clear for the default (1, 0,
  0) depends on the flag predicates of 0xf26f-0xf271, whose values this page does not trace; the repository's reading is that it ends clear. An
  unknown name reaches the end-of-command wait with nothing stored.

- `geif.u entry 811` (slot 405, established words, inferred meaning): `mgeb_SetLMCFlag` at 0xf32f, `glmodes.S`
  line 687, 9 words, takes no operand and writes the result of unit-1 code 0x6c on register 0x1f to special
  register 0x20 (0xf330, `r148` = 0x3e0), and the same register converted to an integer with unit-1 code 0x71 (M
  = 0x6f1, 0xf334) to engine word 0xc1 (store 0xf33d). With register 0x1f reading as 1.0, the integer is 1. The
  ARM sends the slot for the IRIS GL mode call (`arm_irisgl_mode` in the cross-reference).

- `geif.u entry 813` (slot 406, established words, inferred meaning): `mgeb_ClearLMCFlag` at 0xf320, `glmodes.S`
  line 714, 9 words, takes no operand and writes the clear pattern to special register 0x20 (0xf321) and a move
  of register 0x1e (0xf325) to engine word 0xc1 (store 0xf32e), the reverse of the set command, so word 0xc1
  becomes 0.

## Sprite modes and the reference plane (`sprite.S`, `refplane.S`)

The three sprite mode routines are entered through consecutive slots chosen by the mode enumerant: 0x814c (`GL_SPRITE_AXIAL_SGIX`), 0x814d (`GL_SPRITE_OBJECT_ALIGNED_SGIX`) and 0x814e (`GL_SPRITE_EYE_ALIGNED_SGIX`) select slots 371, 372 and 373 (`resolveSpriteMode` in [arm1_functions.md](arm1_functions.md)), and the routine's address becomes the mode word that `mgeb_Sprite` stores at register 0x16 + 0x94a. Each routine reads the axis and translation that `mgeb_Sprite` stored at + 0x93a and + 0x93e.

- `geif.u entry 743` (slot 371, established words, inferred meaning): `mSpriteAxial` at 0x8800, `sprite.S` line
  167, 86 words, axial sprite. Reads six external-memory words through register 0x16, the axis at + 0x93a to +
  0x93c and the point at + 0x93e to + 0x940 (reads 0x8800-0x8819), and twelve engine words 0x2f to 0x3a of the
  modelview (reads 0x8813-0x8829). Takes a reciprocal-square-root seed (`r110` = 0x2bf, 0x8822) to normalise the
  axis and calls `mSpriteRotateV0OntoV1` at 0x8894 (0x8836). Stores four words to engine words 0x3b to 0x3e
  (stores 0x8839-0x883e), the translation row of the modelview. Calls `mMatrixAdjoint` at 0xf58 (0x883f) with
  register 0xa set to 0x2f (0x8844), forms a second vector from the adjoint's result with multiply words
  (0x8848-0x8885), takes another seed (0x8877) and ends by jumping to `mSpriteRotateMatrix` at 0x8676 (0x888b).

- `geif.u entry 745` (slot 372, established words, inferred meaning): `mSpriteObject` at 0x86d3, `sprite.S` line
  235, 170 words, object-aligned sprite, and the shared body of the eye-aligned one. Reads the axis at register
  0x16 + 0x93a to + 0x93c, the point at + 0x93e to + 0x940 and the mode word at + 0x94a (reads 0x86d3, 0x86d6,
  0x86e0, 0x8700, 0x870c-0x8710), and twelve engine words 0x2f to 0x3a (reads 0x86de-0x86ee). Combines the point
  with the modelview rows and stores engine words 0x3b to 0x3e (stores 0x86fc-0x86ff). Calls `mMatrixAdjoint`
  (0x86f7, register 0xa set to 0x2f at 0x86fb). It stages its own address 0x86d3 (0x8702) and compares the mode
  word with it (flag-setting subtract 0x8707); the conditional jump at 0x8713 (condition 2) goes to 0x8738 on a
  match, skipping the section 0x871c-0x8733, which rewrites registers 0x16, 0x1b and 0x1a, the registers that
  received the axis words at 0x8714-0x8717, from computed values. After seeds and Newton steps (0x8747-0x87e8)
  it calls `mSpriteRotateV0OntoV1` (0x87a7) and jumps to `mSpriteRotateMatrix` (0x87ee).

- `geif.u entry 747` (slot 373, established words, inferred meaning): `mSpriteEye` at 0x87f7, `sprite.S` line
  365, 1 words, eye-aligned sprite. Its only word is an unconditional jump to `mSpriteObject` at 0x86d3
  (0x87f7); it reads, computes and stores nothing itself. Because the mode word then differs from 0x86d3,
  `mSpriteObject` takes the path that runs the section 0x871c-0x8733, so the eye-aligned mode is the object-mode
  body with the axis registers replaced by computed values rather than the stored axis, an inferred reading.

- `geif.u entry 237` (slot 118, established words, inferred meaning): `mgebi_ReferencePlane_Disable` at 0x5b15,
  `refplane.S` line 75, 21 words, takes no operand and stages 0xfbffffff and ANDs engine word 3 with it (stage
  0x5b19, AND 0x5b21, store 0x5b2e), clearing bit 26 (0x4000000), the reference-plane enable bit. Sends five
  raster-bus words: the staged 0x70000 to address 0x1f8 (0x5b1d), the staged 6 to address 0x1f5 (0x5b1f), the
  staged 0x1243fd3 to 0x1f8 (0x5b20), 6 to 0x1f5 again (0x5b23) and staging word 0x10 to 0x1f4 (0x5b25). The
  three writes to 0x1f5 and 0x1f4 are predicated (`r198` = 0x11) on the state tested at 0x5b27; the two writes
  to 0x1f8 are not. Staging word 0x10 was loaded from register 0x1d at 0x5b18, which the framing words zero by
  the repository's reading, so the last word is a zero.

- `geif.u entry 235` (slot 117, established words, inferred meaning): `mgebi_ReferencePlane_Enable` at 0x5b2f,
  `refplane.S` line 41, 13 words, takes no operand and oRs 0x4000000 into engine word 3 (stage 0x5b35, OR
  0x5b37, store 0x5b40) and calls `mRefPlane` at 0x5b4c (0x5b38, condition 0x11, the unconditional condition),
  which sends the stored plane to the raster back end. Loads staging word 0x10 and register 0x13 from register
  0x1d at 0x5b32 and sets the flags from register 0x13 at 0x5b36. A closing word writes staging word 0x10, a
  zero by the repository's reading, to raster-bus address 0x1f4 under `r198` = 0x11 (0x5b41, 0x5b42).

- `geif.u entry 753` (slot 376, established words, inferred meaning): `mgebi_ReferencePlane` at 0x59a2,
  `refplane.S` line 127, 239 words, defines the plane from four operand words (A = 0x1f reads at 0x59d6,
  0x59d7, 0x59d9, 0x59e0). First writes thirteen words to external memory 0x94b to 0x957 (stores 0x59ab-0x59c3):
  a move of register 0x1f to 0x94e, 0x952 and 0x956 and of register 0x1e to the other ten. Calls
  `mMatrixMultCCC` on `cc` 0x72 (0x59c4) and `mMatrixAdjoint` (0x59cd, register 0xa set to 0x4f at 0x59d2),
  forms products of the operand words with the adjoint's staged words and sums them (M = 0x47f and 0x6e0,
  0x59da-0x59f9), takes a reciprocal (0x59f6-0x5a00) and stages 100.0 (0x42c80000, 0x5a05) and 1.0e-6
  (0x358637bd, 0x5a06). Builds a twelve-word block of float differences and products (0x5a0b-0x5a4e) that two
  loops (0x5a58-0x5a78 and 0x5a85-0x5a99) test with sign comparisons, branching to 0x5aea (0x5a66-0x5a6b,
  0x5aae, 0x5abe). Stores the final terms to 0x94b to 0x957 again (0x5ad0-0x5ae8). At the end it tests the
  enable bit with a flag-setting AND of engine word 3 against 0x4000000 (stage 0x5af5, AND 0x5af6); a
  conditional branch (`cc` 0x10, 0x5b01) can skip the call to `mRefPlane` (`cc` 3,
  0x5b02) before the closing word to address 0x1f4 (0x5b0b). It has no store to engine word 3, so unlike the
  enable command it never sets the bit, and the plane reaches the raster registers only while the bit is set.


## Raster bus commands (`raster.S`)

These handlers put words on the engine's bus-output addresses 0x1f4-0x1f8 ([Control-memory addresses in immediates](ge_ops.md#control-memory-addresses-in-immediates)); [ge_compute.md](ge_compute.md#raster-board-commands-rasters) and [rm.md](../docs/rm.md#the-shadow-bit-mask) say what the words mean to the raster side. How the entries read the words. Operand k is command word k, read with A = 0x1f and D = k. Staging word k is the k-th word of the staging file at address register 0x18, written by a form-15 word with B = 0x18 and E = k (the constant is its immediate) and read with A = 0x18 and D = k. A word with `r95` = 0x13, C = 0x1e and an immediate is an address word: its immediate names a control-memory address. A store word has B = 0x1e and `r213` = 3 (unconditional) or 2 (predicated by the field `r198`). A store word that carries its own immediate with `r95` = 0x13 goes to that address. **Inferred:** a store word with no immediate of its own goes to the address of the nearest earlier address word, and a store word that names no source (no A read, no `r148`) sends the word the last A and D read left in place, the rule of [ge_isa.md](ge_isa.md#unit-2-and-seed-unit-operands). Both readings give `mgesi_TbusRegWrite` and `mges_TbusRegWriteNoIncr` the same bus words, and they give `mgebi_ShadeModel` and `mgesi_IMPbshRegisterWrite` complete (address, value) pairs. A store with `r148` = 0x3c0 and `r110` = 0x4bd sends register 0x1e, zero. Every handler here starts with the framing words, and in these the third C = 0x1d read is stored as staging word 0x10 (a word with `r215` = 3, B = 0x18, E = 0x10), which the closing store to 0x1f4 sends; what that third read delivers is not settled by the words ([ge_compute.md](ge_compute.md#raster-board-commands-rasters) takes it as an input word, the entry of `mgebi_ReferencePlane_Disable` above as a zero), so the closing word's value is not given. The handlers end with the end-of-command wait, whose shadow still runs the words listed after it. "In issue order" means address order.

- `geif.u entry 423` (slot 211, established words, inferred meaning): `mgesi_PassThrough` at 0x3a5b, `raster.S` line 39,
  18 words, takes one operand. It stages 0x452 into staging word 2 (0x3a5c), 0x700 into word 1 (0x3a5d, which also
  reads staging word 2), 0x476 into word 0 (0x3a5e), 0x477 into word 2 again (0x3a5f) and 8 into word 3 (0x3a62).
  The wait is the word at 0x3a64. Bus stores in issue order, all unconditional: 0x1f7 (0x3a64, a word that carries
  the wait and names no source, so by the rule above it sends staging word 2, which still holds 0x452), 0x1f5 with
  staging word 3, 8 (0x3a65), 0x1f7 with staging word 0, 0x476 (0x3a66), 0x1f5 with staging word 1 through the
  integer-to-float code M = 0x6f3 (0x3a67, 0x700 becomes 1792.0), 0x1f5 with operand 0 (0x3a69), 0x1f7 with staging
  word 2, now 0x477 (0x3a6a), 0x1f5 with register 0x1e, zero (0x3a6b) and 0x1f4 with staging word 0x10 (0x3a6c).
  So it sends three register-number and value sets, for the board registers 0x452, 0x476 and 0x477
  ([rm.md](../docs/rm.md#host-interface-registers-on-the-raster-bus)): 8, then 1792.0 followed by the operand, then
  zero. It writes no engine word and sets no flag. That register 0x476 gets two 0x1f5 words after one 0x1f7 word is
  read from the words; what the raster side does with the second is not read.

- `geif.u entry 809` (slot 404, established words, inferred meaning): `mgeb_DeathCommand` at 0x3a52, `raster.S`
  line 83, one word and no framing words, so it reads no operand, stages nothing and stores nothing. The word is a
  code-4 relative transfer with immediate 0 in condition group 4 on `cc` 0x11 (sequencer field 0xcfe4). The
  end-of-command wait differs in two fields: its group is 31 and R88 is set (field 0x1cfdf). With R88 clear, the
  reading of [ge_isa.md](ge_isa.md#calls-returns-and-the-end-of-a-command) makes this a direct transfer to its own
  address, not a hand-over to the next command. The eight words after it (0x3a53-0x3a5a) are zero in `ge.hex`.
  **Inferred:** the engine spins here and never returns to command dispatch. No ARM function sends slot 404
  ([ge_xref.tsv](ge_xref.tsv)), and what would end the spin is not read.

- `geif.u entry 387` (slot 193, established words, inferred meaning): `mges_NullCommand` at 0x3a45, `raster.S`
  line 98, six words, takes no operand and holds only framing: the C = 0x1d reads (0x3a45, 0x3a46, 0x3a47), the
  wait (0x3a49), a read of address register 0x1a (0x3a4e) and the leading word (0x3a50). It stages nothing, stores
  nothing and sets no flag, so it changes no engine word and puts nothing on a bus-output address.

- `geif.u entry 353` (slot 176, established words, inferred meaning): `mgebi_NullCommand` at 0x3a32, `raster.S`
  line 119, 13 words, takes no operand. The word at 0x3a35 stores the third C = 0x1d read as staging word 0x10 and
  loads address register 0x13 from it (G = 0x13). 0x70000 is staged as word 0xf (0x3a36) and sent to 0x1f8
  (0x3a37, unconditional). The other two bus stores are predicated (`r213` = 2, `r198` = 0x11): register
  0x1e, zero, to 0x1f5 (0x3a39, after the address word 0x3a38) and staging word 0x10 to 0x1f4 (0x3a3b, after the
  address word 0x3a3a). The only flag-setting word, `r222` = 1 on register 0x13 at 0x3a41, comes after both
  predicated stores in issue order, so no word of this handler sets the flags they use. `mgebi_ShadeModel` uses
  `r198` = 2 and 3 for the two outcomes of its flag-setting AND; in the address-unit table of
  [ge_ops.md](ge_ops.md#address-unit-conditions) the code 0x11 is "result not zero", and whether `r198` shares that
  code space, and so whether these stores depend on the register 0x13 test, is not settled by the words. It writes no engine word. **Inferred:** with the predicates taken as holding, the bus words are the
  zero-valued write to shadow index 7 that [rm.md](../docs/rm.md#the-shadow-bit-mask) reads for `0x70000` on 0x1f8
  and the closing word, which changes no raster register.

- `geif.u entry 383` (slot 191, established words, inferred meaning): `mges_DiagDeactivate` at 0x3a25, `raster.S`
  line 146, six words, takes no operand. Its six words (0x3a25, 0x3a26, 0x3a27, the wait 0x3a29, 0x3a2e and 0x3a30)
  are the six words of `mges_NullCommand` in the same order and fields. It stages nothing and stores nothing, so it
  does nothing to engine words or the bus. Two ARM routines send it, `arm_ged_verif_dump` and
  `diag_ged_deactivate_context` ([ge_xref.tsv](ge_xref.tsv)); the wait is all it adds to those commands.

- `geif.u entry 199` (slot 99, established words, inferred meaning): `mgebi_ShadeModel` at 0x3a0a, `raster.S`
  line 169, 22 words, takes one operand, the shade-model enumerant (the public GL values 0x1d00 for `GL_FLAT` and
  0x1d01 for `GL_SMOOTH`). Staged: 1 into word 1 (0x3a0e), 0x70000 into word 0 (0x3a0f), 0x1270800 into word 2
  (0x3a11, which also reads staging word 1) and, with a load of address register 0x13, staging word 0x10 (0x3a0d).
  A flag-setting integer AND (M = 0x6d0, 0x3a12) takes operand 0 and the staged 1, so the flags show bit 0 of the
  enumerant. Bus stores in issue order: 0x1f8 with staging word 0, 0x70000 (0x3a10, unconditional); 0x1f5 in a word
  that names no source (0x3a14, `r198` = 0x11), so by the last-read rule staging word 1; 0x1f8 with staging word 2
  (0x3a15, unconditional); 0x1f5 with operand 0 (0x3a17, `r198` = 0x11); 0x1f4 with staging word 0x10 (0x3a1b,
  `r198` = 0x11). The wait is 0x3a1c, which also sets flags from register 0x13. Engine word 3 is read twice, at
  0x3a18 (OR with register 0x1d, `r148` = 0x3a0) and 0x3a19 (operation 0x6d1, the AND-NOT of the culling entries,
  same operands), each loading the store-data register. Two predicated stores to engine word 3 follow, 0x3a21 under
  `r198` = 2 and 0x3a24 under `r198` = 3. By the nine-word rule the first sends the OR result (0x3a18 is nine words
  earlier) and the second the AND-NOT result, the latest load at least nine words before it; which outcome of the
  AND takes predicate 2 or 3 is not read, and the bit of word 3 that the register 0x1d operand selects is not read
  either. **Inferred:** the first two bus pairs are a shadowed write of the enumerant to `PG_GENERAL`, bit 0 only
  (mask 1, address word 0x1270800 as [rm.md](../docs/rm.md#how-the-arm-firmware-writes-raster-registers) reads it),
  and word 3 holds the same choice for the drawing modules.

- `geif.u entry 215` (slot 107, established words, inferred meaning): `mgesi_TbusRegWrite` at 0x39fd, `raster.S`
  line 215, ten words, takes two operands, a board register number and a value. The wait is 0x3a01. Four bus
  stores, all unconditional and each carrying its own address: 0x1f7 with operand 0 (0x3a05), 0x1f6 with register
  0x1e, zero (0x3a07), 0x1f5 with operand 1 (0x3a08) and 0x1f4 with staging word 0x10 (0x3a09). It stores no engine
  word, stages nothing else and sets no flag. The board registers are those of
  [rm.md](../docs/rm.md#host-interface-registers-on-the-raster-bus).

- `geif.u entry 455` (slot 227, established words, inferred meaning): `mges_TbusRegWriteNoIncr` at 0x39da,
  `raster.S` line 282, nine words, takes two operands. The wait is 0x39de. Three stores, each with its own address:
  0x1f7 with operand 0 (0x39e4), 0x1f6 in a word that reads operand 1 and names register 0x1e (`r148` = 0x3c0,
  0x39e5), so it sends zero while operand 1 becomes the last word read, and 0x1f5 in a word that names no source
  (0x39e6). It stages staging word 0x10 (0x39dd) and never sends it: there is no 0x1f4 store. **Inferred:** by the
  last-read rule the 0x1f5 word is operand 1, so the bus sequence is that of `mgesi_TbusRegWrite` without its
  closing word. It writes no engine word and sets no flag.

- `geif.u entry 217` (slot 108, established words, inferred meaning): `mgesi_IMPtbusRegWrite` at 0x39e7, `raster.S`
  line 242, 22 words, takes two operands. Staged: 0x1681408 into word 1 (0x39e8), 0x1408 into word 0 (0x39ea),
  staging word 0x10 (0x39f0) and, after the wait at 0x39f4, 0x70000 into word 0 (0x39f7). Bus stores in issue
  order, with pairing as the preamble reads it: 0x1f7 with staging word 0, 0x1408 (0x39eb); 0x1f5 with zero
  (0x39ec); 0x1f7 with operand 0 (0x39ee, address word 0x39ed); 0x1f6 with zero while reading operand 1 (0x39f1);
  0x1f5 with the last word read, operand 1 (0x39f2); 0x1f8 with staging word 0 (0x39f4, address word 0x39f3, the
  store that carries the wait); 0x1f5 with zero (0x39f5); 0x1f8 with staging word 2 (0x39f6); 0x1f8 with staging
  word 0 (0x39f8); 0x1f5 with zero (0x39f9); 0x1f8 with staging word 1, 0x1681408 (0x39fa); 0x1f5 with zero (0x39fb);
  and 0x1f4 with staging word 0x10 (0x39fc). Two things the words leave open. When 0x39f4 reads staging word 0 the
  word still holds 0x1408, because 0x39f7 restages it only afterwards, and no word of this handler writes staging
  word 2, which 0x39f6 reads, so those two stores send values the handler does not set. **Inferred:** the handler
  is a direct zero write to register 0x1408, the board-register write (0x39ee-0x39f2, the sequence of
  `mgesi_TbusRegWrite`) and a zero mask and zero value for the address word 0x1681408 (shadow slot 0x58) as 0x39f8-0x39fb show. The
  stores 0x39f4-0x39f6 are not part of that reading. It writes no engine word and sets no flag.

- `geif.u entry 389` (slot 194, established words, inferred meaning): `mgesi_BshRegisterWrite` at 0x3991,
  `raster.S` line 452, 12 words, takes three operands, a mask, an address word and a value. The wait is 0x3995;
  0x70000 is staged into word 0 after it (0x3997). Five unconditional stores, each with its own address: 0x1f8 with
  staging word 0, 0x70000 (0x3998), 0x1f5 with operand 0 (0x3999), 0x1f8 with operand 1 (0x399b), 0x1f5 with
  operand 2 (0x399c) and 0x1f4 with staging word 0x10 (0x399d). It writes no engine word and sets no flag.
  [rm.md](../docs/rm.md#the-shadow-bit-mask) reads the first pair as the write to the shadow's bit-mask slot and the
  second as the register write; this handler is the shared form of that sequence.

- `geif.u entry 391` (slot 195, established words, inferred meaning): `mgesi_IMPbshRegisterWrite` at 0x395e,
  `raster.S` line 574, 20 words, takes three operands. Staged: 0x1681408 into word 2 (0x395f), 0x70000 into word 0
  (0x3961), 0x1408 into word 1 (0x3962) and staging word 0x10 (0x3968). The wait is 0x3969. Bus stores in issue
  order, with the preamble's pairing: 0x1f7 with staging word 1, 0x1408 (0x3963, address word 0x3960); 0x1f5 with
  zero (0x3964); 0x1f8 with staging word 0, 0x70000 (0x3966, address word 0x3965); 0x1f5 with operand 0 (0x3969,
  address word 0x3967, the store that carries the wait); 0x1f8 with operand 1 (0x396a); 0x1f5 with operand 2
  (0x396c); 0x1f8 with staging word 0 (0x396d); 0x1f5 with zero (0x396e); 0x1f8 with staging word 2, 0x1681408
  (0x396f); 0x1f5 with zero (0x3970); and 0x1f4 with staging word 0x10 (0x3971). All are unconditional. The
  complete pairs make it the shadowed write of `mgesi_BshRegisterWrite`, with a direct zero write to register 0x1408
  before it and a zero mask and value for the address word 0x1681408 (shadow slot 0x58) after it, **inferred**. It writes no engine word and sets no flag.

- `geif.u entry 451` (slot 225, established words, inferred meaning): `mgesi_TBUS_1` at 0x39ab, `raster.S` line 396,
  ten words, takes three operands. Operand 0 is loaded into address register 0x13 (0x39ac, G = 0x13, a word that
  also reads C = 0x1d). The wait is 0x39af. Three bus stores: 0x1f8 with operand 2 (0x39b3, own address), 0x1f5 with
  operand 1 (0x39b6, address word 0x39b5), in a word that names register 0x13 (C = 0x13, `r176` = 2, E = 0x3f), and
  0x1f4 with staging word 0x10 (0x39b7). The words do not show how a store uses register 0x13 in C.
  [rm.md](../docs/rm.md#bus-modes-2-and-3) reads it as the bus mode code, **inferred** from the host routine that
  sends the mode as the first operand. It writes no engine word and sets no flag.

- `geif.u entry 1` (slot 0, established words, inferred meaning): `mges_TBUS_1` at 0x399e, `raster.S` line 425,
  nine words, takes three operands. Operand 0 is loaded into address register 0x13 (0x39a1, G = 0x13). The wait is
  0x39a2. Two stores: 0x1f8 with operand 2 (0x39a8, own address) and 0x1f5 in the word 0x39aa that names register
  0x13 as `mgesi_TBUS_1` does (C = 0x13, `r176` = 2, E = 0x3f). The word 0x39a9 carries the address 0x1f5 and reads
  operand 1; the store at 0x39aa sends the last word read, operand 1 (**inferred**, last-read rule). There is no
  0x1f4 store: no word stages staging word 0x10, so it is neither stored nor sent. It writes no engine word and sets no flag.
