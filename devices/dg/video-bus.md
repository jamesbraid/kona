# The KONA video bus: board identity, the GPI test pattern and the enable path

A second pass at the pipe's video-in path ([video-in.md](video-in.md)). It identifies what drives the bus, writes the diagnostic's 196-word expected pattern as a generator, settles what turns the video forms of the pixel handlers on, and checks which shipped products use the bus on an Onyx2 or Onyx 3000. First configuration only (IRIX 6.5.30m, `arm1.u`, `irsaudit`, `libGLcore.so`/`libGL.so` IP27KONA builds); published documents are cited by number and page or section.

Grades: **established** (read in full from the routine or document), **inferred** (reasoned, with the reason), **unknown** (with what would settle it). No hardware was used. **No system the owner has can test any of this:** the owner's SGI machines are an Origin 350 and an Octane2 (VPro); neither has a KONA pipe, a Sirius board or a pipe video bus, so every hardware proposal below is not runnable on them.

## Summary

| Question | Answer | Grade |
|---|---|---|
| What drives the pipe's video bus? | The **Sirius Video** option (board name `PAB2`, one-wire part 030-0766-xxx) over what Sirius's own guide calls the "CP interface" or CP bus: 48 data bits at 33 MHz to the geometry-engine board. The IR side calls the connection "GPI" | established for the names and widths, inferred that GPI and CP are the same interface |
| Is a GPI interface present on an IR2 pipe? | No on every published IR2 and IR2E geometry-board identity word; the flag is derived from the GE board id | established (decode), inferred for "no on IR2" from the published ids |
| What is `gpi_exp_pat`? | A walking-one then walking-zero pattern over 48 data lines, 4 words per step, plus one all-zero step; generator below | established (it matches all 196 words) |
| What enables the video forms? | `HP_READBUFFER_CONFIG` (token 4) with its first word -3, sent by `kona_readconfig` when the read drawable is a video source; `HP_VIDEO_SOURCE` (0x114) only selects the source format | established. This corrects video-in.md, which said no sender was found |
| Does a shipped product use the bus on Onyx2 or Onyx 3000? | None found. Sirius is refused on an Onyx2 by the X module and not offered by the Onyx2 reports; DIVO has "no direct physical connection with the graphics board set" and goes through memory; no shipped library read here starts a transfer | established (published and checker), unknown for `libvl.so` (not held) |

## 1. The board and its identity

- **The names the shipped software uses (established).**
  - `gfxinfo` and `gfxinit` print "GPI interface device detected" and "Sirius video option detected" (strings in both tools; the published `gfxinfo` dumps of the first-generation `KONAS` pipes show Sirius in 10 and GPI in 7 of 15, [published-sources.md](../../references/documents/published-sources.md)).
  - `irsaudit` names the option board `PAB2` and checks its one-wire record: "NIC name field must be PAB2" (0x10189640), part `030-0766-` ("NIC part number field must be 030-0766-XXX", 0x10188e30), "Fix by correctly reprogramming the PAB2 NIC" (0x10188e70). The other options use `030-1511` (TVO), `030-1409` (DPLEX, by the order of the name and part checks), `030-1260` (DDO2), `030-1184` (GVO) and `030-1123` (DVP). The probe is "Nic probing for PAB2, DVP/DDO2 or TVO option." (0x10189d98).
  - Detection messages: "Sirius (PAB2) present in DG option slot." (`probe_dg4_chain` 0x10054c68), "SIRIUS interface present in option slot." (`unscramble_dg_boardId` 0x1008d1ec), "PAB found via both board ID and JTAG." / "PAB reported via board ID, but not JTAG." (0x10190268, 0x10190290), "GPI cable for Sirius video option present." / "not present (ok)." (`TEST_sysprobe` 0x100593f0, 0x10059abc), "Sirius Option board detected. Cannot run this test" (`TEST_gpi` 0x10076938).
- **Bus identity.**
  - **Option slot (established).** The Sirius board sits in the display generator's option slot on board set 0 (option type 1 or 2 in the identity word's bits 21-19, "PAB" in the firmware strings; [Where the record's channel count comes from](README.md#where-the-records-channel-count-and-option-type-come-from)). The firmware's `OptVocAddress` entries for it are ids 0x1e, 0x1f and 0x20 (mask 0x01, board type 2, flags bit 31), the combination slot is 9, and `dgGetBoardConfig` gives option mask 0x1 (id 0x1e) ([gvo-option.md](gvo-option.md), [combination-files.md](combination-files.md)).
  - **The CP bus (established, published).** The Sirius guide (007-2238-003, chapter 1, "CP Interface") says the CP interface "moves data between Sirius Video and the Geometry Engine board in the graphics subsystem", is built from a controller, a matrix multiplier, lookup tables, a frame buffer and drivers at 40 MHz bandwidth, and sends formatted video "over the 48-bit 33 MHz CP bus": RGBa_12 raster data, or RGBa_5, RGBa_4 and RGBa_8 texture data; raster memory in field mode, texture memory in field or frame mode. The InfiniteReality technical report (section 7.14) calls the same link "a proprietary interconnect" to texture memory (section 7.8.15 "Video to Texture").
  - **GPI (inferred equal to the CP interface).** The diagnostic's data is 48 lines wide (below) and its name for the receiving side is "GPI vid-bus"; the expansion of GPI is not stated in any shipped file read. Two published uses of the same letters mean something else and are not this: the DIVO and Sirius breakout boxes have a "General-Purpose Interface" of trigger lines (007-3524-003 appendix G; 007-2238-003 chapter 4). **Unknown:** what the IR firmware's "GPI" abbreviates.
  - **The id bit (established).** The pipe-side flag is a property of the geometry-engine board's identity word. The firmware sets it to 1 only when bits 15-9 are all zero and bit 20 is clear ([setup-tools.md](../../software/userland/setup-tools.md), `init_config`); `irsaudit`'s `TEST_sysprobe` stores `!(word >> 20 & 1)`, from the board-record word at +104, in its record at +340 (0x100593c4-0x100593d8; that the +104 word is the geometry-board identity word is **inferred** from the matching bit in the firmware's rule) and `TEST_gpi` begins by testing that record word (0x100764dc: "Requires GPI board", string 0x101996d8) and the Sirius flag at +3972 (0x100764fc). `gfxinfo` prints the GPI line from the same flag. **Inferred for IR2:** the published GE14-4 and GE16-4 identity words (`0x80160a04`, `0x5c160a04`, `0x80150a04`, `0x80f61806`) have bit 20 set, so the flag is 0 and `TEST_gpi` declines.
- **Which hardware provides the connector (unknown).** Whether the "GPI board" is a daughter-card on the geometry board, a cable adapter or just the GE-board connector is not stated. What would settle it: a part description of the GPI cable or board in a published Onyx IR inventory, or `ide`/manual text (none held).

## 2. The expected pattern of `TEST_gpi`

**Established.** The table `gpi_exp_pat` (`irsaudit` 0x10200740, 784 bytes = 196 big-endian words) is reproduced exactly by this generator, checked against all 196 words:

```
pack16(x) = ((x << 4) | (x >> 8)) & 0xffff        # x is a 12-bit value
word(c0, c1) = (pack16(c1) << 16) | pack16(c0)    # two 12-bit components
beat(k) for data line k = 0..47:
    s = k mod 12;  c = 1 << s                      # one 12-bit component with a single 1
    if (k mod 24) < 12: pair = (c, 0) else: pair = (0, c)   # c0 or c1
    v = word(pair)
    (w0, w1) = (0, v) if k < 24 else (v, 0)
    emit  w0, w1, ~w0, ~w1                          # four words per step
table = [0, 0, 0, 0]  +  concat(beat(k) for k in 0..47)    # 4 + 48*4 = 196 words
```

- **Reading.** Each 32-bit word carries two 12-bit components (the same two the test extracts: bits 15:4 and 31:20); each component is stored in 16 bits as `x << 4` with its top nibble repeated in the low four bits, so bits 3:0 and 19:16 duplicate bits 15:12 and 31:28. One step is a 64-bit item (w0, w1) with a single 1 in 48 possible data positions, followed by its complement (w2, w3): a walking one and its inverse over 48 lines, preceded by a step of all zeros. The first 24 lines walk through the odd (second) word, the last 24 through the even (first) word.
- **Why 48.** The CP bus is 48 bits wide (section 1) and a raster pixel is four 12-bit components ("RGBa_12"); the diagnostic's two halves are named "bits 0:23" and "bits 24:47".
- **The comparison (established, `TEST_gpi` 0x10076734-0x100767b0).** For each of the 196 received words it compares the word with the table entry; on a mismatch it recombines both into 24-bit values (`(w >> 8) & 0xfff000 | (w >> 4) & 0xfff`) and counts the error; the message is chosen by the word index parity: even index "bits 0:23 :: Exp: %x Recv: %x", odd index "bits 24:47 :: Exp: %x Recv: %x". The test passes when no word differs; the duplicate nibbles are part of the word equality, so a model must reproduce them.
- **Where the data comes from (unknown).** The host never writes the pattern: `TEST_gpi` programs output DMA channel 0 (raster-bus registers 0x440 = 0x43, 0x441, 0x450-0x453 with 784 bytes), calls `diag_setupGED` (0x10076084: GED writes to 0x50, 0x51, 0x2c0-0x2c6 and 0x32), `formatterFlush` (0x100763e8: six writes of 0 to GED register 0x31), `setupVidbusInterface` (0x10076164: GED registers 0x24 (board control, bit 0 and bits 2:1), 0x22 = 1 (video-bus read enable, `sendVidRBusReg`) and 0x23 (transfer control: bits 1:0 first argument, bits 12:2 word count minus 1 = 195, bits 23:13 a second count minus 1 = 0)), four writes of 0 to 0x21 and one to 0x20, `vidbusFlush` (0x10076484: 0x21), `resetVidbusInterface` (0x22 = 0), then raster-bus register 0x477 = 1 and polls host-interface offset 0x278 up to 0xc3500 reads for completion ("ODMA FAILED on Primary Channel."). So the pattern source is either a generator inside the geometry-engine distributor (GED) started by those writes or the GPI board; no sender wrote data. The captured geometry-engine data (`kpm`'s dump) has a video-bus transaction state: `kpm`'s `analyze_ged` (0x1001b21c) prints "Vidbus transaction in progress: (x, y) = (%d, %d)" and "Vidbus idle" from words of its capture structure (**inferred** to be the distributor's: +0x4e8 bit 0 with x at +0x4f0 and y at +0x4f4; +0x4ec bit 0 with x at +0x4f8, y at +0x4fc). What would settle where the pattern starts: a capture of `TEST_gpi` on a pipe with the GPI flag, with and without the cable (proposal below).
- **For a model.** To pass, deliver the generator's 196 words into the host buffer mapped by ioctl 10100 when the test's output DMA runs, and report DMA completion (host offset 0x278 reads 0) within 0xc3500 polls; on a pipe model with the GPI flag clear, the test never reaches this and reports "Requires GPI board".

## 3. What enables the video forms of copy, copy-texture and read-pixels

- **The flag (established).** The three handlers test one word at pixel state +0x348 (`arm_copypixels` 0x0c02bb2c-0x0c02bb98, `arm_copyteximage` 0x0c02c004, `arm_readpixels` 0x0c02c5d0; the pixel state is `r8 + 0x900`, so the word is at state-block +0xc48).
- **Who sets it (established, corrects video-in.md).** `arm_readbuffer_config` (token `HP_READBUFFER_CONFIG` = 4, `arm1.u` 0x0c013650) stores 1 at that word when its first payload word (the read level) equals -3 and 0 otherwise (0x0c013910-0x0c01391c: `cmn r4, #3`, then the store of the 0 or 1). `libGLcore.so` `kona_readconfig` (IP27KONA32 build 0xd949fc0) sends that token with a level word of -3 when the read drawable record's first word is 3 (a video-source drawable) and with the normal level otherwise; before it, for a video source, it sends `HP_VIDEO_SOURCE`. The make-current path sends `kona_readconfig` whenever the read drawable differs or is a video source ([opengl.md](../../software/opengl/opengl.md), the make-current section). So `glXMakeCurrentReadSGI(draw, videoSource, ctx)` is the enabling call and the sequence on the wire is `HP_VIDEO_SOURCE` (code) then `HP_READBUFFER_CONFIG` (-3, nine more words) for each video-source read drawable, and the same token with a real level for any other read drawable clears the flag. `EnableVideoCopy` (0x0c02bf28), reached from `arm_slop` (token 0x17f, a diagnostic multi-purpose entry whose sub-command words are 0x0dee0000 (video copy), 0x0dee0001 (interlace) and 0x0dee0002 (set video format)), stores the same word; **no sender of those sub-commands exists** in `libGLcore`, `libGL`, the X modules, `glx.so`, `irsaudit` or the other shipped binaries searched (no instruction builds 0x0dee0000-2; a raw scan of every file under `root/` finds no `lui` of 0x0dee or 0x0deb), so that route is a firmware test hook.
- **`HP_VIDEO_SOURCE` semantics (established as firmware, inferred as meaning).** Token 0x114 carries a code 0-3 that `libGLcore` derives from the video-source object's selector (0x1001 gives 0, 0x1000 gives 1, 0x1002 gives 2, 0x1003 gives 3, anything else 0). `arm_video_source` (0x0c013924) passes it to `SetVideoFormat` (0x0c02bdfc), which writes constants into the per-context record at `[r8+0xcf4] + 0x6d0` by code (0 and 1 share the first set):

  | Field | code 0 and 1 | code 2 | code 3 |
  |---|---|---|---|
  | +0x00 | the code | 2 | 2 |
  | +0x04 | 1 | 0 | 3 |
  | +0x08 | 1 | 0 | 2 |
  | +0x24 | 5 | 5 | 6 |
  | +0x28 | 1 | 3 | 3 |
  | +0x2c | 0x20 | 0x20 | 0x40 |
  | +0x30 | 2 | 8 | 8 |
  | +0x34 | 4 | 4 | 1 |

  Before storing, if the record's word +0x18 is 1 it calls `SetGedVideoBoard` (0x0c032ccc, which programs the distributor for a video board). No code of `SetVideoFormat` writes +0x18, so who sets it is **unknown**. **Inferred meaning:** the four codes are the four formatted CP-bus outputs the Sirius guide lists (RGBa_12 raster, and the three texture packings RGBa_5, RGBa_4, RGBa_8): the selectors 0x1000-0x1002 are the VL texture packing constants (`videoPackingToInternalFormat` in `libGL.so` 0xd824d30 maps 0x1000, 0x1001 and 0x1002 to the GL internal formats 0x8050, 0x8056 and 0x8058), and the three constant sets match three distinct widths (the +0x2c word 0x20 or 0x40 and +0x30 word 2 or 8). The unlisted fourth selector 0x1003 is not produced by any VL packing named in the guide. What would settle the meaning: the distributor's video-board register description (not held) or a trace on a Sirius pipe.
- **The transfer (established).** Once the flag is set, a copy-pixels call runs `videoCopyPixels` (0x0c02bd60: operation 0x50), a copy to texture `videoCopyTexImage` (0x0c02c0f8: operation 0x90), a read `videoReadPixels` (0x0c02c6d4: operation 0x30); the copy forms start `StartVbus` (0x0c032c30), and `SetupVbus` (0x0c032b9c) selects the video bus in the distributor.

## 4. Do shipped products use the video bus on Onyx2 or Onyx 3000?

- **Sirius (PAB2).** No on Onyx2 and Onyx 3000, with one contradiction between documents.
  - The X module's checker refuses it for an Onyx2 target ("Onyx2 does not support Sirius option board", `konal.so` checker table, [Option-board channel slots](README.md#option-board-channel-slots-and-what-the-software-refuses)); the firmware numbers it only on board set 0; the Onyx2 Reality and IR2 technical report and the 1998 IR2 report mention DIVO and GVO and no Sirius (a text search of both finds no "Sirius", "GPI" or "video bus"; established); the geometry-board GPI flag is 0 on IR2.
  - The Video Format Combiner guide (007-3279-003, "Option Boards") says "the Onyx2 accommodates video option boards: Sirius Video, Digital Video Port (DVP), and Graphics to Video Option (GVO)". That guide covers Onyx and Onyx2 together; the checker and the hardware flag decide for the shipped Onyx2 software. **Unknown** whether any Onyx2 ever shipped with one.
- **DIVO and DIVO-DVC (XIO boards).** No. The owner's guide (007-3524-003, introduction) says "The DIVO and DIVO-DVC options have no direct physical connection with the graphics board set, unlike some previous Silicon Graphics video boards, such as Sirius Video. Any transfers to or from graphics must go through memory"; graphics reach the DIVO only through the GVO option (a DG5 daughter-board). DIVO is a normal VL device with DMbuffer transfers; its "GPI" is the trigger interface (appendix G) and unrelated to the pipe's GPI. **Established** (published).
- **DPLEX, GVO, HD GVO, TVO, DVP.** Output only ([video-in.md](video-in.md)).
- **VL (`libvl.so`).** The GLX client loads it for video sources (`__glXInitializeVideoLibrary` 0xd824eb8: `dlopen("libvl.so", RTLD_NOW)`, `dlsym("vlGetControl")`). The library and `videod` are not in this repository (`references/irix-files.md` marks them out of scope), so which VL devices exist for a KONA pipe is **unknown**; the Sirius guide's VL nodes (`VL_SIR_TEX_PACK_*`, drain `VL_TEXTURE`, drain `VL_GFX`, packing, "VL_TEXTURE and VL_GFX use the same port", 007-2238-003 chapter 2) are the only held description, and it targets RealityEngine-era systems.

## What a model must do to pass

1. **`TEST_gpi` on a pipe with the GPI flag clear:** nothing; it reports "Requires GPI board". Present the geometry-board identity word with bit 20 set (as the published IR2 words do).
2. **Video-copy forms:** accept `HP_VIDEO_SOURCE` (0-3) and `HP_READBUFFER_CONFIG` with level -3 without error. No guest on an IR2 pipe can supply video, so the forms need no data path; a model that executes the firmware stream gets the flag logic for free.
3. **If GPI is modelled:** the 196-word generator above, output DMA channel 0 and completion at host offset 0x278.

## Open questions and capture proposals

No hardware was contacted, and none of the proposals can be run on the owner's Origin 350 or Octane2 (no KONA pipe). They need an Onyx or Onyx2 InfiniteReality pipe with the GPI interface, which the owner does not have and the repository rules do not allow bringing online without an agreement.

| Unknown | Evidence tried | Smallest test | Safety and effort |
|---|---|---|---|
| Where `TEST_gpi`'s pattern originates (distributor, GPI board or Sirius) | The whole test, its helpers, `kpm`'s `analyze_ged`, the manuals | Run `irsaudit -gpi` on a GPI-flagged pipe with the cable removed, then connected; save the console output only | Output only; read-only apart from the diagnostic's own writes |
| What "GPI" expands to and what hardware it is | Strings, id decode, the Sirius and IR guides | A published inventory or part number of the GPI board or cable (a document, not a test) | None |
| Whether any Onyx2 shipped with Sirius | Checker, reports, the combiner guide | A published `hinv`/`gfxinfo` of an Onyx2 with "Sirius video option detected" | None |
| `libvl.so` KONA devices | Client code only | Read `libvl.so` and `videod` on a 6.5.30m system (software; outside this repository's scope until the owner decides) | None |
