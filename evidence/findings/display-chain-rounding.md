# Display chain rounding: colour-map widening, gamma-to-DAC reduction, cursor and gamma

Three questions about the InfiniteReality2 display path (one Onyx2, one pipe, DG4/DG5 board with XMAP chips). Each is graded established, inferred or unknown, with the evidence tried and, for every unknown, the test that would settle it. This file describes the hardware rule only. Proposed rows for [command-table.md](../../formats/token/command-table.md) are given as text because that file has a single writer; nothing here edits it.

Sources searched, in order: the X server module `kona.so` (gamma and colour-map loaders, `konStore24DCColors`, `konStoreColors`, `konReloadAllGammas`), `setmon` (external gamma form), the diagnostic `irsaudit` (loaders `load_full_gamma`, `load_gamma_table`, `load_full_cmap`, `load_cmap`, address legaliser `make_gamma_addr_legal`; test list and its strings; the `.gold` files), the diagnostic board netlists (`usr/diags/IR/data/dg4_2voc*.netmap`), the published papers and manuals under `references/documents/` (the Montrym 1997 paper, the InfiniteReality technical report, the combiner manual 007-3279-003), the display-generator patents there, and the Library (`--roots techpubs` and an artifacts search). No XMAP datasheet, pin description or ADV716x datasheet exists in any of them (the Library has no ADV716x document; the only published ADV716x text in this project is the register description cited as S67).

## Summary

| # | Question | Answer | Grade |
|---|---|---|---|
| 1 | Widening a 10-bit colour-map output to the 12-bit gamma index | Replicate the top two bits into the low two (c << 2 \| c >> 8) is the only candidate the diagnostic's address rules fit. Zero fill and 8-bit-based widening do not fit them. | inferred (replication favoured; not captured) |
| 2 | 12-bit gamma output to the DAC's 8-bit inputs | Truncation to the top eight bits. The base board wires only gamma output bits 11:4 onward; bits 3:0 reach nothing but the 12-bit option connector. No rounding or dither control exists on this link. | established for the XMAP-to-video-output-chip link; inferred end to end (a chip sits between XMAP and DAC) |
| 3 | Do cursor colours bypass gamma | DAC cursor: bypasses gamma (it lives inside the DAC). XMAP cursor: passes the gamma stage. | DAC cursor established by topology; XMAP cursor inferred; the per-cursor bypass bit is unknown |

## 1. Widening the colour-map output to the gamma index

**Established facts the question rests on.**

- Colour-map entries are 10:10:10 words (red 29:20, green 19:10, blue 9:0). The X server fills them from the top ten bits of each 16-bit client colour. Source: colour-map store routines in `kona.so`.
- The gamma RAM has 4096 entries per colour and page. The X server loads 4096-entry tables from a per-screen shadow, values being the top twelve bits of the 16-bit colour. The diagnostic loads 4 x 1024 entries per colour and page. Source: `konReloadAllGammas` and its callee, `load_full_gamma`.
- The published description says colour width is held at 12 bits through the gamma table outputs (Montrym 1997, section 2.9).

**What software does about widening: nothing.** No loader pre-compensates a widening rule.

- The X server writes gamma values as plain `colour >> 4`, with no correction term.
- The per-visual form (direct-colour cells) writes each value at two consecutive entries, index 2v and 2v + 1, so the low index bit is a don't-care there; this is the legacy addressing in which low index bits are not independent.
- The external-gamma form (sent by `setmon` and `kona.so`) takes entries 4i of the 4096-entry table to make its 1024-entry table. That is a sample at a zero-filled index, but the external RAM is natively 10-bit addressed, so it says nothing about the internal widening.
- The diagnostic's gamma fill has three modes: identity (value = index & 0xfff), a random fill, and a power curve. The identity ramp would expose the widening on readback, but no test in the shipped list checks pixel output against expected values. The `.gold` files (`irsaudit.h.gold`, `.hl.gold`, `.oh.gold`, `.k.gold.Z`) hold chip CRC lines (record kinds such as `r1T00`, `xxX00`), not read-back values, so they cannot be read as widening evidence without the CRC polynomial and a bit-exact model of the chain. That is a possible later route, not attempted.

**What does discriminate: the diagnostic's address legaliser.** `make_gamma_addr_legal` rewrites a gamma address so it names an entry the pixel path can actually reach. After removing bit 17 (page bits 17:14 are exact only when bit 18 is set, which it leaves alone), it overwrites the low two index bits:

- when index bits 11:10 are non-zero, the low two bits are set to index bits 11:10, in every mode;
- when bits 11:10 are zero, the low bits are set from bits 9:8 (or bit 8 into bit 0 for one mode), or left alone, depending on the caller's mode argument.

Reading: in the case that matters for a 10-bit colour-map output sitting at index bits 11:2, the reachable entries have low two bits equal to the top two bits. That is bit replication. Zero fill would force the low bits to zero, which the legaliser never does. Rounding via an 8-bit intermediate (v << 4 | v >> 4) would tie four low bits to bits 11:8, but the legaliser only ever ties two bits. The zero-top-bits branch (copying bits 9:8, or bit 8 alone) does not follow from a 10-bit-at-11:2 rule; it probably covers another pixel width and is not explained here. That is why the grade stops at inferred.

**Grade: inferred.** Replication fits the only independent evidence; the other two candidates conflict with it. Not established because the legaliser is a diagnostic helper, its mode argument is unexplained, and the legaliser only describes the legacy (bit 18 clear) addressing.

**Test that settles it.** On a board whose word 5 is zero, so legacy addressing applies, with the pixel path and gamma page chosen as in a normal X start-up:
1. Load a 10-bit colour map where entry K holds red = green = blue = 0x3ff. Use gamma page P as a marker table: entry 0xfff = 0xfff, all other entries 0. Show one pixel with index K and read the DAC level or video CRC. Replication reaches entry 0xfff and shows level 0xff. Zero fill reaches entry 0xffc and shows 0x00.
2. Repeat with colour-map value 0x200 and a marker at entry 0x802 (replication) against entry 0x800 (zero fill), then with 0x155 against 0x555 versus 0x554, to separate replication from a plain shift by two. Every probe reads at 8 bits, so the marker values must differ in the top eight bits.
3. Repeat once with bit 18 set to see whether exact addressing changes the answer.

## 2. Gamma output to the DAC inputs

**Established (netlists `dg4_2voc.netmap` and the `dplex`, `hdgvo` variants, IRIX 6.5.30m; pin names are the vendor's).**

- The XMAP output toward the video-output chips (VOC) is a 12-bit-per-colour port. On the base board only bits 11:4 of each colour are connected, to the `redin_n`, `greenin_n`, `bluein_n` byte ports of the two VOC chips (four pixels, eight bits each). Bits 3:0 of the XMAP's voc_red, voc_green and voc_blue pins are unconnected (`-` in the netlist).
- In the option-board variants, the full 12 bits appear on one net that also reaches the 12-bit option connector, with bits 11:4 only going to the VOC and to the video encoder (eight bits, `enc_r0[11:4]`). Bits 3:0 go only to the connector.
- The VOC outputs and the DAC pixel inputs are eight bits wide (`Zredout_n[8]`; `dac0:reda[8]`..`redd[8]`, four pixels per clock).

So the eight-bit value any 8-bit consumer sees is the top eight bits of the same 12-bit value that a 12-bit option board sees: a right shift by four. Rounding to nearest or dithering at this link would have to modify the 12-bit value itself, which the 12-bit connector would then also carry, and nothing in the register map (XMAP direct registers 0x00-0x12, channel word 0x11d) has a rounding or dither control. The only dither control found is the combination-level Dither toggle, which the combiner manual says applies when the framebuffer format is wider than the chosen output format (for example 12-bit RGB stored, RGB10 output): without it the colours are truncated, with it a fixed noise pattern is added before truncation. That is an adaptation of framebuffer pixels before the colour path (the video requester's dither bit, register 0x44 bit 7), not a gamma-to-DAC step.

**Not established.**

- The VOC sits between the XMAP and the DACs and also does the per-channel resize filtering, on eight-bit data after gamma. At unity size (no resize) it is probably a pass-through. Nothing read proves it adds no rounding or dither. The netlist shows the VOC output nets only as unresolved, not as connected to the DAC pins by name.
- Whether the DAC (an ADV716x-class part, mode register written 6 then 7: 10-bit palette and DACs, 24-bit bypass colour) widens an eight-bit bypass input to its 10-bit converter by zero fill or replication. The published register description does not say, and no datasheet is held.

**Grade:** truncation (value >> 4) on the XMAP-to-VOC link: established. Truncation end to end to the DAC pins at unity scale: inferred. The DAC-internal widening: unknown.

**Tests.**
1. Unity-size channel, no resize, dither off. Load gamma page P with identity values (entry i = i) and show colour-map entries or direct pixels yielding gamma outputs 0x0f7, 0x0f8, 0x0ff, 0x100. Read the DAC level or video CRC. Truncation gives 0x0f, 0x0f, 0x0f, 0x10. Round-to-nearest gives 0x0f, 0x10, 0x10, 0x10.
2. Hold one gamma output of 0x0f8 across a whole frame and check for pixel-to-pixel variation. Any variation is dither downstream of gamma.
3. For the DAC itself: read the analogue level at DAC input 0xff in bypass colour mode against 10-bit DAC full scale, or compare against the ADV716x datasheet's bypass rule (a document to acquire).

## 3. Cursor colours and gamma

**DAC cursor (hardware cursor inside the video DAC): bypasses gamma. Established by topology and software.** The cursor colours are ten-bit values (client colour >> 6) written straight to the DAC's own registers, and the cursor is generated inside the DAC after the pixel port. The XMAP gamma stage is upstream of the DAC. No loader applies a gamma correction to the cursor colours.

**XMAP cursor (glyph and crosshair, driven from the 260-word slots at XMAP address block): passes gamma. Inferred.** The Montrym paper places cursor injection in the pixel de-serialise / de-interleave stage, ahead of the colour map and gamma. The cursor colours are 10:10:10 words held in the colour-map RAM in the same format as colour-map output, with no gamma pre-correction by the server. The published remark that cursors and pop-ups "appear in their true colours" is about field-sequential video only. The XMAP's per-channel "no gamma" bit (0x11d bit 5) is channel-wide; nothing read shows a separate cursor bypass.

**Grade:** DAC cursor established; XMAP cursor path inferred (gamma applies); whether a hidden XMAP bypass exists for cursor pixels: unknown (capture only).

**Test.** Load the channel's gamma page with a marker table mapping every index to 0x800. Show an XMAP glyph cursor whose foreground colour word is 0x3ff:3ff:3ff and read the DAC level at the cursor. Level 0x80 means gamma applied; 0xff means bypassed. Then show the DAC cursor with the same colour as a control (expect 0xff). Repeat with the channel's "no gamma" bit set; the XMAP cursor should then equal 0xff if it follows the channel bypass. The diagnostic's substitute-colour registers (XMAP 0x05-0x07) could replace a pixel with a fixed colour for a second cross-check, but where that substitution sits relative to gamma is also unknown.

## Correction found on the way

The note for the gamma address in section 7.3 says colour 3 is "turned into 2". The legaliser clears bit 13 of the address when bits 13:12 are 3, which leaves 0x1000: colour 1 (green). Read from the instruction sequence at the start of `make_gamma_addr_legal` (0x1013c214 to 0x1013c2c4 in `irsaudit`); not tested on hardware. The row should name that it quotes the diagnostic helper; the X module's own handling of colour 3 was not read.

## Proposed rows for formats/token/command-table.md

Replace the "padding rule widening a 10-bit colour-map output to the 12-bit gamma index" row in section 7.3 with:

| padding rule widening a 10-bit colour-map output to the 12-bit gamma index | the colour-map output occupies index bits 11:2 and the low two bits repeat its top two bits (index = c << 2 \| c >> 8). The diagnostic's address legaliser forces index bits 1:0 to equal bits 11:10 whenever those are non-zero and never forces them to zero; no loader pre-compensates a widening rule, and no shipped test reads the widened entry back. Zero fill and an 8-bit-based widening (v << 4 \| v >> 4) conflict with the legaliser. Applies to legacy addressing (flag bit 18 clear). What would settle it: marker-table probe (0x3ff selecting entry 0xfff against 0xffc; evidence/findings/display-chain-rounding.md, question 1) | replication | inferred | S9, S72 |

Add this NEW row after it (question 2):

| reduction of the 12-bit gamma output to the 8-bit DAC pixel inputs | truncation: the video-output chips and DACs receive gamma output bits 11:4 only (bits 3:0 of the XMAP's per-colour output are unconnected on the base board and go only to the 12-bit option connector); no rounding or dither control exists on this link. A resize filter in the video-output chip, and the DAC's own widening of an 8-bit bypass input to its 10-bit converter, are not covered | value >> 4 | established for the XMAP-to-video-output-chip link (netlist); inferred end to end at unity size; DAC-internal widening unknown. What would settle it: gamma outputs 0x0f7, 0x0f8, 0x0ff, 0x100 on a unity-size channel read at the DAC (finding question 2) | S45, S71 |

Replace the last row of section 7.5 ("colour map then gamma, cursor last") with:

| colour map then gamma, cursor last | colour path order: colour map then 12-bit gamma. DAC cursor: after gamma, inside the DAC, gamma bypassed (established by topology; colours written as client colour >> 6 with no correction). XMAP cursor: injected before the colour map and gamma, colours in colour-map format, so gamma applies | DAC cursor bypass established; XMAP cursor not bypassed inferred; a hidden XMAP cursor bypass bit: unknown (capture only; test in the finding, question 3) | inferred | S9, S7 |

Also correct the section 7.3 colour row: "3 is turned into 2" should read "3 is turned into 1 (bit 13 cleared) by the diagnostic's legaliser" (`make_gamma_addr_legal`).
