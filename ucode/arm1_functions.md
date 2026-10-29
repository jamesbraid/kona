# ARM firmware (arm1.u) functions and data, one entry per symbol

The named functions and data of `usr/gfx/ucode/KONA/arm1.u` (IRIX 6.5.30m), one table row per debug-table symbol, grouped by what they do. [arm1_firmware.md](arm1_firmware.md) covers the structure (start-up, the input loop, the engine ports, the host-interface registers and the token handlers by group) and [arm1.md](arm1.md) the token map.

Each row was written from the code at its address in [arm1.s](arm1.s): its callers, the registers and state it touches and its effect. Labels as elsewhere: **established** (read from the code or the image), **inferred** (with the reasoning in the row). A code row cites `+0x` offsets from the read-only image base 0x0c000000, so `+0x2336c` is ARM address 0x0c02336c; data rows give the ARM address (initialised data from 0x04040260, zero-initialised data from 0x04067edc). "The state block" is the RAM the firmware addresses through r8 (base 0), which holds the GL state shadow; "the host-interface block" is the register window at 0x00200200 it addresses through r9. "Port n" is offset n in that window: 0x8c0 takes an engine handler address, 0x400 a descriptor, 0x474-0x47c operands, and reads at 0, 0x3c and 0x40 return payload words. Engine handler names are the `geif.u` slots of [ge.md](ge.md). Names that occur twice belong to two objects and have one row each.

## Start-up, exceptions and the run-time library

Reset, start-up, fault reporting, printing and the ARM C library helpers. A short lowercase name is written in backticks so it is read as code.

| Symbol | Address | What it is and does |
|---|---|---|
| `fault_cookie` | 0x040516ec | **Established** (`arm1.u` 6.5.30m). Zero in the image; `fault()` writes 0xdead into it before printing the exception, so a debugger reading memory can tell that the firmware stopped in its fault handler. |
| `REV_REL` | 0x04067ed4 | **Established** (`arm1.u` 6.5.30m). A pointer to the string "sherwood-root", the build tree name that `init()` prints in its start-up banner. |
| `REV_VER` | 0x04067ed8 | **Established** (`arm1.u` 6.5.30m). A pointer to the string "0607201829" that `init()` prints beside the tree name. **Inferred:** a build time stamp (date and time). |

## Host interface, token map and input loop

Building the token map, the input loop, refused-token paths, payload helpers and the vertex-array token chains. The token map and its entry format are in [arm1.md](arm1.md); the loop is in [arm1_firmware.md](arm1_firmware.md#the-input-loop).

| Symbol | Address | What it is and does |
|---|---|---|
| `SendDGRply` | 0x0c0064f8 | **Established** (`arm1.u` +0x64f8). Sends a reply to the host through the read-back path: checks the reply type is below 0x20 (else prints an error and stops), opens the read-back stream, writes the word count plus one, the type, then each payload word to raster-bus register 0x476, and finally the sum of the type and the words as a checksum, then closes the stream. Called by every get-style display request. |
| `vertex_table` | 0x0405102c | **Established** (`arm1.u` 6.5.30m). 60 words indexed by vertex-array type and size giving the vertex token for each array format, zero where none exists; `varray_build_command` reads it to build the vertex-array token-map chain. |
| `normal_table` | 0x0405111c | **Established** (`arm1.u` 6.5.30m). 60 words giving the normal token for each array format (for example 0x76), zero where none exists; read by `varray_build_command`. |
| `color_table` | 0x0405120c | **Established** (`arm1.u` 6.5.30m). 60 words giving the colour token for each array format (such as 0x61), zero where none exists; read by `varray_build_command`. |
| `index_table` | 0x040512fc | **Established** (`arm1.u` 6.5.30m). 60 words giving the colour-index token for each array format, zero where none exists; read by `varray_build_command`. |
| `tex_coord_table` | 0x040513ec | **Established** (`arm1.u` 6.5.30m). 60 words giving the texture-coordinate token for each array format, zero where none exists; read by `varray_build_command`. |
| `wordCountTable` | 0x040514dc | **Established** (`arm1.u` 6.5.30m). 60 payload word counts per array format that `varray_build_command` puts into bits 6-8 of each vertex-array token-map entry. |
| `lastWrdTable` | 0x040515cc | **Established** (`arm1.u` 6.5.30m). 60 values (0-3) per array format that `varray_build_command` puts into bits 27-28 of each vertex-array token-map entry. |
| `byteCmpTable` | 0x040516bc | **Established** (`arm1.u` 6.5.30m). Twelve values (0-3) per component type that `varray_build_command` puts into bits 29-30 of a vertex-array token-map entry, the component-type field. |
| `icu_map` | 0x04068e54 | **Established** (`arm1.u` 6.5.30m). The firmware's 512-word copy of the token map that `init_hip` builds; the vertex-array builder and `arm_pack` read entries from it to build vertex-array and packed entries. |

## Engine and distributor set-up

Loading the distributor program and tables, the geometry-engine microcode and the bef chip, and the per-engine set-up commands ([arm1_firmware.md](arm1_firmware.md#how-a-handler-reaches-the-engines), [ged.md](ged.md)).

| Symbol | Address | What it is and does |
|---|---|---|
| `befsh_addrs` | 0x04067c0c | **Established** (`arm1.u` 6.5.30m). 89 register addresses of the bef chip (starting at 0x441) that `init_geBefAddrs` broadcasts to every engine as one command; `arm_slop` also reads it. |
| `befsh_init` | 0x04067d70 | **Established** (`arm1.u` 6.5.30m). 89 initial values for the bef chip shadow (mostly zero, some 0x3fff8000), matching the address list entry by entry; `init_befshadow` sends them to one engine as one command. |
| `gepc` | 0x04068654 | **Established** (`arm1.u` 6.5.30m). 512 words, the engine handler address table copied from `geif.u` by `init_hip`; every engine send loads its handler address from here or from the packed copy in the state block. |

## Boundary scan, boards and serial numbers

The scan chain, board and chip identification, the board-configuration block and the serial-number (NIC) readers.

| Symbol | Address | What it is and does |
|---|---|---|
| `sysconf` | 0x04067edc | **Established** (`arm1.u` 6.5.30m). The board-configuration block at the start of zero-initialised data, filled at start-up (engine count at +0x54, occupancy mask at +0x5c, engine numbering from +0x64); `arm_getconfig` returns its 478 words to the host. |
| `v0` | 0x0408ce34 | **Established** (`arm1.u` 6.5.30m). A 1 KB bit-vector buffer for the boundary-scan chain, shifted in and out by `jt_reg_read`, `jt_reg_write` and the board and chip identity readers. |

## Display generator

The display-generator requests (`arm_video_cmd`, [dg_dispatch.tsv](dg_dispatch.tsv)) and their helpers. [docs/dg.md](../docs/dg.md) explains the display side; the entries here say what each routine in `arm1.u` does.

| Symbol | Address | What it is and does |
|---|---|---|
| `DoDGRqstGetInternalGenlock` | 0x0c006364 | **Established** (`arm1.u` +0x6364). Replies to the host with one word, bit 27 of the firmware's genlock-state word at 0x0406cd1c, which the internal-genlock request stores from its payload; reply type 0x1c, sent through the reply writer. Touches no display hardware. |
| `arm_video_cmd` | 0x0c006398 | **Established** (`arm1.u` +0x6398). Token 0x1a6 handler (the display-generator command port): reads a command number from the host-interface block, rejects numbers of 0x5d or more, then reads as many payload words as the command's entry in the dispatch table gives (on the stack up to 16 words, else into the 128 KB scratch buffer). Adds them to the command number, compares with the checksum word at offset 0x3c and prints a message and drops the command on a mismatch, else calls the entry's handler. Keeps the last two command numbers in a history pair. |
| `DoDGRqstCursorChannel` | 0x0c0065d4 | **Established** (`arm1.u` +0x65d4). Selects which video channel owns the hardware cursor: looks up the per-channel record named by payload word 0 and writes its first word (the channel's index) to XMAP register 0x100, with short delay loops around the access. Dispatch-table request only. |
| `DoDGRqstCursorType` | 0x0c00663c | **Established** (`arm1.u` +0x663c). Sets the cursor mode in XMAP register 0x103: payload 0 writes 2, payload 1 writes 1, any other value writes 0 (cursor off). Delay loops surround the display-bus write; no state is kept. |
| `DoDGRqstCursorPosition` | 0x0c0066a4 | **Established** (`arm1.u` +0x66a4). Writes the cursor position to XMAP register 0x102: payload word 0 masked to 13 bits is the horizontal part and payload word 1 shifted left by 13 and masked to bits 13-25 is the vertical part, combined into one word, the same layout the host kernel driver writes. |
| `DoDGRqstCursorPriority` | 0x0c006710 | **Established** (`arm1.u` +0x6710). Stores payload word 1 (the cursor priority) at offset 4 of the per-channel record named by payload word 0; it writes no display register, so the value only changes firmware state. |
| `dgVDacControlWrite` | 0x0c006730 | **Established** (`arm1.u` +0x6730). Writes one indexed control register of a video DAC: argument 0 is the channel, argument 1 the register number, argument 2 the value. Sends the register number as a low byte then a high byte to the DAC index port at display-bus address 0xb00 plus 0x100 per channel, then the value to the data port at 0xb02, with delay loops between accesses. |
| `dgVDacControlRead` | 0x0c006814 | **Established** (`arm1.u` +0x6814). Reads one indexed control register of a video DAC: argument 0 is the channel, argument 1 the register number. Sends the number as two bytes to the DAC index port at display-bus address 0xb00 plus 0x100 per channel, waits, and returns the value read from the data port at 0xb02. |
| `dgVDacClutWrite` | 0x0c0068b8 | **Established** (`arm1.u` +0x68b8). Writes one byte of a video DAC's colour map: argument 0 is the channel, argument 1 the map index sent as two bytes to the index port at 0xb00 plus 0x100 per channel, argument 2 the value written to the colour-map data port at 0xb01. No caller in the image uses it. |
| `dgVDacClutRead` | 0x0c00699c | **Established** (`arm1.u` +0x699c). Reads one byte of a video DAC's colour map: argument 0 is the channel, argument 1 the map index sent as two bytes to the index port at 0xb00 plus 0x100 per channel; returns the byte read from the colour-map data port at 0xb01. No caller in the image uses it. |
| `dgVDacModeWrite` | 0x0c006a40 | **Established** (`arm1.u` +0x6a40). Writes argument 1 to a video DAC's mode port at display-bus address 0xb03 plus 0x100 per channel (argument 0), after a delay loop and followed by another. Its only caller is the video-DAC reset sequence. |
| `dgVDacModeRead` | 0x0c006a90 | **Established** (`arm1.u` +0x6a90). Returns the value read from a video DAC's mode port at display-bus address 0xb03 plus 0x100 per channel (the first argument), with no delay loops. No caller in the image uses it. |
| `dgGDacChannelWrite` | 0x0c006a9c | **Established** (`arm1.u` +0x6a9c). Writes a register of the gain or gamma DAC serving a channel: argument 0 is the channel (0-7, or 0xdc/0xde for the option-board DAC), argument 1 picks register slot 0-2, argument 2 is the value. Channels 0-7 use display-bus block 0x1300 plus 0x100 per channel pair, registers 4/5/0xf for even channels and 2/3/0x17 for odd ones; the option-board channels write 0xe600/0xe601/0xe610 (bit 0 only). |
| `dgSetDacPixelMux` | 0x0c006db4 | **Established** (`arm1.u` +0x6db4). Sets the pixel-multiplex ratio of a video DAC: argument 0 is the channel (0-7, or 0xde mapped to 0xdc), argument 1 the pixels per clock. Ratios 1/2/4 map to codes 0/1/3, written to bits 7-6 of video-DAC control register 7 (the other bits are written as zero); any other ratio prints an error and writes nothing. |
| `dgBlankChannel` | 0x0c006e40 | **Established** (`arm1.u` +0x6e40). Blanks or unblanks one channel's output: argument 0 is the channel id, argument 1 points to the blank flag (zero means use the channel record's stored blank bit). For video DACs it writes 0 (blank) or 0xff to control register 4; for the option-board id 0xc6 it sets a blank field in register 0xc104 and, when blanking, writes 1024 zero entries at 0xf000; for id 0x5e it sends the option board a command. |
| `DoDGRqstChannelBlanking` | 0x0c007088 | **Established** (`arm1.u` +0x7088). Records the blank flag (payload word 1, one bit) in bit 31 of the channel record's flag word for the channel in payload word 0, and applies it through the blanking routine only when no temporary all-channel blank is in force. |
| `DoDGRqstGetChannelBlanking` | 0x0c0070d0 | **Established** (`arm1.u` +0x70d0). Replies (type 9) with one word: the channel's stored blank bit, from bit 31 of its record's flag word, or 1 when a temporary all-channel blank is in force. Reads no display hardware. |
| `DoDGRqstTempBlankAllChannels` | 0x0c007124 | **Established** (`arm1.u` +0x7124). Nests a temporary blank of every present channel: a nonzero payload increments a blank-depth counter and blanks all channels only if it was not already positive; a zero payload decrements it (clamped at zero) and unblanks all when it reaches zero. Walks the present video-output chips with the per-channel blank routine. Used by genlock handling and the board reset. |
| `dgTempBlankAllChannels` | 0x0c007188 | **Established** (`arm1.u` +0x7188). Wrapper that puts its argument (nonzero to blank, zero to unblank) on the stack as a one-word payload and calls the temporary-blank request. Called once with 1 by the display-board start-up code, so every channel is blank before the stored video combination loads. |
| `DoDGRqstOutputGain` | 0x0c0071a4 | **Established** (`arm1.u` +0x71a4). Sets the output gain of a video DAC channel (payload word 0, ids 0-7 or 0xde; word 1 the gain 0-255). Stores the gain in the channel record and writes 255 minus the gain to the gain DAC through the gain-DAC writer; channel 1, when its record marks encoder drive, instead stores it in the encoder gain word and writes display-bus register 0x1708. |
| `DoDGRqstGetOutputGain` | 0x0c007270 | **Established** (`arm1.u` +0x7270). Replies (type 0xa) with one word, the gain last set for the channel in payload word 0: the stored value in its channel record, or for channel 1 with the encoder-drive flag set the shared encoder gain word. Reads no display hardware. |
| `dgResolveVDacGain` | 0x0c0072d8 | **Established** (`arm1.u` +0x72d8). Recomputes the gain-select field, bits 4-3, of video-DAC control register 8 from the sync and pedestal switches held in registers 6 and 8: gain code 2 when no switch is set, 1 when exactly one of the two groups is set, 0 when both are. Argument 0 is the channel (0xde maps to 0xdc); ids outside 0-7 are ignored. |
| `DoDGRqstSyncSelects` | 0x0c007394 | **Established** (`arm1.u` +0x7394). Sets one sync-output option of a video DAC channel: payload word 0 is the channel, word 1 picks one of five options (control register 8 bit 1, register 6 bit 2, register 8 bit 2, the gain-DAC sync bit, or the sync-source bits of display-bus register 0x8400), word 2 the on/off value, word 3 control register 8 bit 0. Option-board ids use registers 0x3400/0xcd00 instead; it ends by recomputing the DAC gain select. |
| `DoDGRqstGetSyncSelects` | 0x0c007808 | **Established** (`arm1.u` +0x7808). Replies (type 0xb) with six words giving the sync options of the channel in payload word 0: control register 8 bit 1, register 6 bit 2, register 8 bit 2, register 8 bit 0, the record's stored gain-DAC sync bit, and a sync-source code read from register 0x8400 or the option-board register. Unsupported ids return minus one in four of them. |
| `DoDGRqstOutputPedestal` | 0x0c0079ec | **Established** (`arm1.u` +0x79ec). Sets the output pedestal (payload word 1, low bit) of the channel in payload word 0: channel 1 additionally goes through the encoder pedestal routine; ids 0-7 set bit 3 of video-DAC control register 6 from the value, then the gain select is recomputed. |
| `DoDGRqstGetOutputPedestal` | 0x0c007a54 | **Established** (`arm1.u` +0x7a54). Replies (type 0xc) with one word: bit 3 of control register 6 of the video DAC for the channel in payload word 0 (ids 0-7), or minus one for any other id. |
| `DoDGRqstLoadDacCursor` | 0x0c007aa8 | **Established** (`arm1.u` +0x7aa8). Loads a video DAC's hardware cursor (263 payload words: channel, six colour words, 256 image words): selects the DAC's indexed register 0x0303 and writes six colour bytes to the data port, then selects index 0x0400 and streams 1024 image bytes, four from each image word, low byte first. Only ids 0-7 and 0xde are accepted. **Inferred:** index 0x0303 is the cursor colours and 0x0400 the cursor RAM, from the byte counts and the 64 by 64 two-bit size of the image. |
| `DoDGRqstDiagXmapColor` | 0x0c007ef0 | **Established** (`arm1.u` +0x7ef0). Diagnostic request 3 (ten payload words): packs the colour in the payload, in a layout chosen by word 7, into two words written to XMAP registers 0x106 and 0x107 for every XMAP chip whose bit is set in the mask in word 9 (the chip number goes to 0x108 first), switches on the substitute colour in XMAP register 0x105 and forces an XMAP copy-buffer update. |
| `DoDGRqstDisableDiagXmapColor` | 0x0c008120 | **Established** (`arm1.u` +0x8120). Diagnostic request 4: writes 0 to XMAP register 0x105, turning the substitute colour off, then forces an XMAP copy-buffer update. It reads no payload. |
| `DoDGRqstVCBusTrace` | 0x0c00816c | **Established** (`arm1.u` +0x816c). Diagnostic request 5: prints the message that the firmware must be compiled with bus tracing enabled and returns, so in this build the request does nothing to the hardware and ignores its four payload words. |
| `DoDGRqstDiagCursorFromImage` | 0x0c0081a0 | **Established** (`arm1.u` +0x81a0). Diagnostic request 6 (4107 payload words): writes payload word 0 to XMAP register 0x118, then converts a 64 by 64 image of two-bit pixels, one pixel per word, taken from the bottom row up, into four packed words per row (two bit planes of 64 pixels) written to XMAP data port 0x119, then writes colour words packed from ten-bit fields near the payload end to port 0x119 and a closing 0-3 value sequence to ports 0x11f and 0x11e. |
| `dgEncoderControlWrite` | 0x0c00852c | **Established** (`arm1.u` +0x852c). Writes one register of the video encoder chip: argument 0 is the register number, sent to the encoder index port at display-bus address 0x1800, argument 1 the value written to the control data port at 0x1802, with delay loops between the accesses. |
| `dgEncoderControlRead` | 0x0c0085bc | **Established** (`arm1.u` +0x85bc). Reads one register of the video encoder chip: sends the register number (argument 0) to the encoder index port at display-bus address 0x1800, waits, and returns the value read from the control data port at 0x1802. |
| `dgEncoderClutWrite` | 0x0c008614 | **Established** (`arm1.u` +0x8614). Writes one byte of the video encoder's colour map: argument 0 is the index sent to the encoder's map index port at display-bus address 0x1801, argument 1 the value written to the map data port at 0x1803. No caller in the image uses it. |
| `dgEncoderClutRead` | 0x0c0086a4 | **Established** (`arm1.u` +0x86a4). Reads one byte of the video encoder's colour map: sends the index (argument 0) to the map index port at display-bus address 0x1801 and returns the value read from the map data port at 0x1803. No caller in the image uses it. |
| `dgEncoderPedestal` | 0x0c0086fc | **Established** (`arm1.u` +0x86fc). Sets the encoder's pedestal control: reads encoder register 0xf and rewrites bit 4 and the two 2-bit fields at bits 3-2 and 1-0 from the argument and the master-clock-select word saved by the clock request; when that word is zero the fields become 2 and bit 4 clears, else bit 4 takes the argument and the fields become 1 for a zero argument and 0 otherwise. |
| `DoDGRqstEncoderOutputGain` | 0x0c008784 | **Established** (`arm1.u` +0x8784). Sets the video encoder's output gain: keeps the low 8 bits of payload word 0 in the shared encoder gain word and writes 255 minus that value to display-bus register 0x1708 (with delay loops), the same gain register channel 1 uses when it is encoder-driven. |
| `DoDGRqstGetEncoderOutputGain` | 0x0c0087e8 | **Established** (`arm1.u` +0x87e8). Replies (type 0xe) with one word, the encoder output gain last stored by the encoder gain request; reads no display hardware. |
| `DoDGRqstSCHPhase` | 0x0c008814 | **Established** (`arm1.u` +0x8814). Sets the encoder's subcarrier-to-sync phase: writes the low and high bytes of payload word 0 to encoder registers 0x24-0x25, then the low and high bytes of that value plus 0x2000 to registers 0x26-0x27. |
| `DoDGRqstGetSCHPhase` | 0x0c008870 | **Established** (`arm1.u` +0x8870). Replies (type 0xf) with one word, the encoder's phase value rebuilt from the bytes read back from encoder registers 0x24 (low) and 0x25 (high). |
| `DoDGRqstLoadEncoder` | 0x0c0088b4 | **Established** (`arm1.u` +0x88b4). Programs the video encoder from scratch: clears control register 0 twice, sets it again from the master-clock-select word, then writes registers 0xe/0xf/1/2 (bit 2 from payload word 0), clears registers 3-4, loads one of two fixed tables into registers 0x10-0x23 chosen by the master-clock-select word, and clears registers 0x26-0x27 (0x27 gets 0x20 for the second table). **Inferred:** the two tables are the two video standards, since the choice follows the master clock select. |
| `DoDGRqstEncoderTestPattern` | 0x0c008c00 | **Established** (`arm1.u` +0x8c00). Controls the encoder test pattern: reads encoder register 1, clears bit 5 and sets bit 4, then payload 1 clears bit 4 and payload 2 sets bit 5 (other values leave bit 4 set and bit 5 clear), and writes the result back to register 1. |
| `DoDGRqstEnableEncoder` | 0x0c008c44 | **Established** (`arm1.u` +0x8c44). Enables or disables the video encoder: writes encoder control register 0 twice with bit 0 and bit 4 both taken from bit 0 of payload word 0 and bit 3 set when the master-clock-select word is zero. |
| `DoDGRqstFetal` | 0x0c008cb0 | **Established** (`arm1.u` +0x8cb0). Builds the display board's default state from scratch (the payload is ignored): clears the blank-depth counter, writes 0xff to display-bus register 0x1711, sets the raster-board count to zero, fills display-bus words 0-0x3f with 0x20 and 0x40-0x5f with 0, zeroes three 4096-word XMAP banks, then runs the XMAP, channel, VOC, video-DAC, gain-DAC and encoder default builders for each VOC the board reports present, the option-board builders by board type, and a board-generation-specific final register write. |
| `dgFetal` | 0x0c009628 | **Established** (`arm1.u` +0x9628). Thin wrapper that pushes a zero word as a payload and calls the default-state request; the request ignores its payload. Called by the start-up code unless the firmware runs in the simulator, and again by the stored-combination loader when the flash image fails to load, just before it loads the emergency format. |
| `DoDGRqstXServerVideoInit` | 0x0c009648 | **Established** (`arm1.u` +0x9648). Dispatch-table request 83: when the board option word is 6 it pulses display-bus register 0xc000 to 1 then 0 with sleeps between, then walks the 17 option VOC entries, rebuilding default VOC state for each present option VOC (printing warnings for unexpected or missing ones), and finishes by tail-calling the late-channel auto-initialisation. |
| `dgMakeXmapFetal` | 0x0c0097d4 | **Established** (`arm1.u` +0x97d4). Writes the XMAP defaults: zero to seven of the registers 0x100-0x109, then 2 to 0x10c, a board-dependent pair of values (0xa5 with 6, or 0x64 with 3) to 0x10d-0x10e, 0x339 to 0x10f and zero to 0x110, then forces an XMAP copy-buffer update so the values take effect. |
| `dgMakeChannelFetal` | 0x0c009b98 | **Established** (`arm1.u` +0x9b98). Initialises a channel record: argument 0 is the channel id, argument 1 its ordinal in the record array. Stores the ordinal, the id and minus one (the vertical-phase word), clears the size, format and field fields, stores 0x500 and 0x400 in two size fields, puts the flag word in a known state, then calls the gamma-map request with the id and zero. Writes no display register directly. |
| `dgMakeVocFetal` | 0x0c009c88 | **Established** (`arm1.u` +0x9c88). Resets one video-output chip to its defaults: writes zero to VOC registers 0x01/0x07/0x30/0x43/0x44/0x50/0x60/0x70/0x81/0x8d/0x8f, the channel ordinal's low five bits to register 0x03, a 0x10-then-zero pair to 0x06 and 0x10000 to 0x14, then resets the VOC's FIFO and reads back register 0. Argument 0 is the channel id. |
| `dgMakeVDacFetal` | 0x0c00a108 | **Established** (`arm1.u` +0xa108). Resets a video DAC to defaults: writes mode port values 6 then 7 with delays, control register 5 to 0x88, register 6 to 0xe4, loads a 256-entry linear ten-bit ramp into the colour map (each value written three times), then register 4 to 0xff and registers 7/8/0xd/9/0x204 to zero. Argument 0 is the channel (0-7, or 0xdc). |
| `dgMakeGDacFetal` | 0x0c00a3f0 | **Established** (`arm1.u` +0xa3f0). Sets the gain DAC of a channel to its default of 0x80: calls the gain-DAC writer for the channel (argument 0) with selector 0, then selector 1, each with value 0x80. |
| `dgMakeEncoderFetal` | 0x0c00a420 | **Established** (`arm1.u` +0xa420). Loads a linear ramp into the video encoder's colour map: sets the map index port at display-bus 0x1801 to 0, then for each of 256 entries writes the entry number three times to the map data port at 0x1803. |
| `dgMakeGvoFetal` | 0x0c00a544 | **Established** (`arm1.u` +0xa544). Does nothing: the function is a single return, so the digital-video-output option board board type gets no default state set from here. |
| `dgMakeTvoFetal` | 0x0c00a548 | **Established** (`arm1.u` +0xa548). Selects the TVO option board: sets the two mode bits 12-11 of the saved copy of display-bus register 0x8400 to 1, writes the word to 0x8400 and starts the I2C interface with bus base 0xa000. |
| `dgMakeDplexFetal` | 0x0c00a5b4 | **Established** (`arm1.u` +0xa5b4). Selects the DPLEX option board: sets the two mode bits 12-11 of the saved copy of display-bus register 0x8400 to 2 and writes it, writes 0 to 0x8001, writes 1 to 0xe300 and to 0xe500, then resets the option VOC id 0xde and video DAC id 0xdc to their defaults. A table of sequencer signal names follows it in the image. |
| `dgLoadFieldSequentialAndStereo` | 0x0c00a7ac | **Established** (`arm1.u` +0xa7ac). Builds the per-field colour and eye selects of a loaded format: for each field (count in payload word 20) combines the field's colour word and eye code from the format payload into a field word, writes it to the channel's VOC register 0x60 plus the field number, and keeps a copy in the channel record; an eye code above 3 prints an error. |
| `dgEnableRequester` | 0x0c00a930 | **Established** (`arm1.u` +0xa930). Starts or stops a channel's video requester: argument 0 is the channel and argument 1 the enable bit, written to bit 0 of VOC register 0x44 (read, modify, write with delays), and mirrored into bit 27 of the channel record's flag word. |
| `DoDGRqstLoadFormat` | 0x0c00a9b0 | **Established** (`arm1.u` +0xa9b0). Loads a video format (383 payload words) into a channel: disables the channel, copies the summary words into the channel record, loads both clock parameter sets and starts the VOC clock, writes the state table, edge and line-type registers of the sequencer, sets pixel mux, blanking, FIFO and vertical-phase registers, loads partner VOCs of option boards by recursion, sets the DAC pixel mux for ids 0-7, then the field selects and the XMAP channel format. Does not enable the channel. |
| `dgSyncWithMasterVoc` | 0x0c00b9a0 | **Established** (`arm1.u` +0xb9a0). Waits for a frame boundary on the master VOC: reads its status at display-bus 0x300 until bit 7 goes high, then until it goes low, each wait bounded at one million ticks of the free-running counter at 0x2000b0. Returns the ticks elapsed since entry. |
| `DoDGRqstEnableChannel` | 0x0c00ba20 | **Established** (`arm1.u` +0xba20). Turns a channel on (payload: channel, turn-on flag, set-up flag). A set-up flag pauses the channel, sets VOC register 0x01 bits 1-0 to 1, computes a FIFO threshold from the record's width into register 0x8a (also on option-board copies), starts the requester and resumes it. A turn-on flag clears VOC 0x01 bits 1-0 on the write VOC, syncs to the master VOC, sets bit 0 of register 0x06 and marks the record enabled. |
| `DoDGRqstGetChannelEnables` | 0x0c00bf50 | **Established** (`arm1.u` +0xbf50). Replies (type 0x13) with two words from the channel record's flag word: the requester-enabled bit 27 and the channel-enabled bit 28 for the channel in payload word 0. Reads no display hardware. |
| `DoDGRqstDisableChannel` | 0x0c00bfb4 | **Established** (`arm1.u` +0xbfb4). Turns a channel off: clears bits 1-0 of VOC register 0x01 and bit 0 of register 0x06 on the channel's write VOC, clears the enabled bit 28 in the record flag word (and in the partner option-board channel's record), and stops the requester. |
| `DoDGRqstGetChannelFormatInfo` | 0x0c00c10c | **Established** (`arm1.u` +0xc10c). Replies (type 0x17) with five words about the channel's loaded format, all from its record and none from the hardware: the saved pixel-format word at offset 0xac, flag bits 30 and 26, a constant minus one, and the saved vertical-phase word at offset 0x164. |
| `dgWriteDgoTMC22071a` | 0x0c00c1a4 | **Established** (`arm1.u` +0xc1a4). Shifts a 47-bit configuration image out to the digital-video-output board's encoder chip: bits 46 down to 1 of the image (argument 0, an array of words) go one at a time to display-bus register 0xc400, each followed by a sleep of 50 ticks, then bit 0 of word 0 goes to 0xc401 as a final strobe. **Inferred:** a bit-serial load, from the one-bit writes and sleeps. |
| `DoDGRqstDataFormat` | 0x0c00c280 | **Established** (`arm1.u` +0xc280). Sets the data format of an output channel (payload: channel, format code, flag): stores the format and the flag in the channel record, then by channel id programs the option board. Ids 0x5e-0x60 write the same 0x8400 mode value as the TVO default builder and send a serial-bus byte for device 0xee chosen from the format; the digital video output ids load registers 0xc006/0xc104, the range 0xc200-0xc216 and the encoder bit image; the remaining option ids set mode bit 12 of 0x8400, and 0xde also writes three more registers. |
| `DoDGRqstGetDataFormat` | 0x0c00ca44 | **Established** (`arm1.u` +0xca44). Replies (type 0x1e) with two words about the channel in payload word 0: the data-format code kept at offset 0xb0 of its record, and 1 when bit 20 of the record's flag word is clear, else 0. Reads no display hardware. |
| `DGGlobalState` | 0x04069654 | **Established** (`arm1.u` 6.5.30m). The display generator's 0x37e0-byte state record (channels, formats, genlock and option-board state), cleared by `DoDGRqstAutoInit` and read and written by nearly every display-request handler. |
| `sdram_scratch` | 0x0406ce34 | **Established** (`arm1.u` 6.5.30m). A 128 KB scratch buffer used for flash PROM contents: `eeprom_read` and the write routine move data through it, and the display auto-initialisation checks the stored video combination in it. |

## GL state handlers

Token handlers and helpers that keep GL state (colour, lighting, material, fog, blending, depth, stencil, hints, evaluators) in the state block and send it to the engines or raster boards.

| Symbol | Address | What it is and does |
|---|---|---|
| `expX` | 0x04051804 | **Established** (`arm1.u` 6.5.30m). 128 decreasing floats from 1.0 (the next is 0.9394) loaded into engine memory by `InitFogGlobal`. **Inferred:** coarse steps of the exponential fog function, multiplied with the fine table. |
| `expY` | 0x04051a04 | **Established** (`arm1.u` 6.5.30m). 258 floats falling slowly from 1.0 (0.99976 ...) loaded by `InitFogGlobal`. **Inferred:** fine steps of the exponential fog function between the coarse entries. |

## Lines, points, polygons and raster set-up

Primitive set-up derived from GL state: line, point and polygon modes, stipple, antialiasing tables, multisampling and scissor.

| Symbol | Address | What it is and does |
|---|---|---|
| `initStipplePat` | 0x0404d538 | **Established** (`arm1.u` 6.5.30m). 32 words of all ones: the default polygon stipple that `InitPolygonStippleGEState` loads so an unstippled polygon draws every pixel. |
| `MSPoints_Infos` | 0x04051e0c | **Established** (`arm1.u` 6.5.30m). 0x15e00 bytes of packed sample-coverage data that `InitMSPointsGlobal` expands and loads into engine memory for drawing multisampled points. |

## Texture management

Texture binding, loading, the ARM texture cache and texture-format tables.

| Symbol | Address | What it is and does |
|---|---|---|
| `texFormatConvert` | 0x0404db08 | **Established** (`arm1.u` 6.5.30m). 33 words translating a texture's internal format to the raster boards' texel format number (up to 0xe); `SetupRM_TextureBind` reads it when binding a texture. |
| `nComponents` | 0x040516f0 | **Established** (`arm1.u` 6.5.30m). Six words of components per texture colour-table format (one to four) that `PixValidateTexColorTable` uses to size the table load. |
| `texFormatLookup` | 0x04051708 | **Established** (`arm1.u` 6.5.30m). 63 words mapping a texture internal format and colour-table format pair to the resulting texel layout (values 1-5); read by `PixValidateTexColorTable`. |
| `tex_cache` | 0x0409086c | **Established** (`arm1.u` 6.5.30m). The ARM's texture cache table of id pairs, invalidated by writing -1 to both words; the bind handlers, `flush_texload_ids` and `update_texbind_id` keep it. |
| `texState` | 0x04095334 | **Established** (`arm1.u` 6.5.30m). 0xa4 bytes of current texture set-up shared by `arm_texsetup`, `arm_texbind` and the raster-board load and bind routines, including the resolved internal format. |

## Pixel path: engine pipeline modules

The engine-side pixel pipeline: the modules each stage adds and their parameters.

| Symbol | Address | What it is and does |
|---|---|---|
| `UConvolveTable` | 0x0404d3a8 | **Established** (`arm1.u` 6.5.30m). Twelve pairs of an engine module slot (0x11b-0x11d) and one of three writer routines in the image (from 0x0c032080 to 0x0c0325b0), one pair per kernel shape; `AddConvolution` picks the pair that builds the convolution stage. |

## Pixel path: X server pixel commands

The X server's pixel read, write and copy commands and the X pixel planners.

| Symbol | Address | What it is and does |
|---|---|---|
| `cvm_spec_8` | 0x0404d970 | **Established** (`arm1.u` 6.5.30m). Eight converter words (0x02083800 down to 0x42080000, bit 30 marking the last) for 8-bit X pixels, reached through the 8-bit converter group by `X_PixSetupGE`; `CompGedReg` loads its address only as a base for the register-list count at +0x15c. |
| `cvm_spec_16` | 0x0404d990 | **Established** (`arm1.u` 6.5.30m). Eight converter words for 16-bit X pixels (0x02103000 ... 0x42100000), reached only through the 16-bit converter group that `X_PixSetupGE` picks. |
| `cvm_spec_32` | 0x0404d9b0 | **Established** (`arm1.u` 6.5.30m). Eight converter words for 32-bit X pixels, alternating between 0x02202000 and the last-word form 0x42200000, reached only through the 32-bit converter group that the X pixel set-up picks. |
| `cvm_spec_48` | 0x0404d9d0 | **Established** (`arm1.u` 6.5.30m). Eight converter words for 48-bit X pixels (0x020c3400 ... 0x420c1000), reached only through the 48-bit converter group of `X_PixSetupGE`. |
| `cvm_spec_rgb10_sw` | 0x0404d9f0 | **Established** (`arm1.u` 6.5.30m). Eight converter words for 10-bit-per-component RGB X pixels written to the framebuffer, reached only through their converter group in `X_PixSetupGE`. |
| `cvm_spec_rgb10_sr` | 0x0404da10 | **Established** (`arm1.u` 6.5.30m). Eight converter words for 10-bit-per-component RGB X pixels read back, the field order of the write set reversed; reached through `X_PixSetupGE`. |
| `cvm_spec_tbm` | 0x0404da30 | **Established** (`arm1.u` 6.5.30m). Eight converter words (0x02013f00 ... 0x42010f00) for X bitmap transfers, reached only through their converter group in `X_PixSetupGE`. |
| `cvmg_8` | 0x0404da50 | **Established** (`arm1.u` 6.5.30m). Converter group for 8-bit X pixels: a count of 8 and a pointer to its converter words; `X_PixSetupGE` chooses it by pixel depth. |
| `cvmg_16` | 0x0404da58 | **Established** (`arm1.u` 6.5.30m). Converter group for 16-bit X pixels: a count of 8 and a pointer to its words; `X_PixSetupGE` uses it with the small tag table for depth 1. |
| `cvmg_32` | 0x0404da60 | **Established** (`arm1.u` 6.5.30m). Converter group for 32-bit X pixels: count 8 and a pointer to its words; `X_PixSetupGE` uses it with the big tag table for depth 2. |
| `cvmg_48` | 0x0404da68 | **Established** (`arm1.u` 6.5.30m). Converter group for 48-bit X pixels: count 8 and a pointer to its words, chosen by `X_PixSetupGE`. |
| `cvmg_rgb10_sw` | 0x0404da70 | **Established** (`arm1.u` 6.5.30m). Converter group for 10-bit RGB X pixel writes: count 8 and a pointer to its words, chosen by `X_PixSetupGE`. |
| `cvmg_rgb10_sr` | 0x0404da78 | **Established** (`arm1.u` 6.5.30m). Converter group for 10-bit RGB X pixel reads: count 8 and a pointer to its words, chosen by `X_PixSetupGE`. |
| `cvmg_tbm` | 0x0404da80 | **Established** (`arm1.u` 6.5.30m). Converter group for X bitmap transfers: count 8 and a pointer to its words, chosen by `X_PixSetupGE`. |
| `ptagBig` | 0x0404da88 | **Established** (`arm1.u` 6.5.30m). Four tag words alternating between 0x30006 and the plain form 0x30000 that `X_PixSetupGE` pairs with the 32-bit converter group for wide X pixels. A second table of the same name for the GL output modules sits at 0x0404c038. |
| `ptagSmall` | 0x0404da98 | **Established** (`arm1.u` 6.5.30m). Four tag words, 0x30006 in the second and 0x30000 elsewhere, that `X_PixSetupGE` pairs with the 16-bit converter group; a GL-path table of the same name sits at 0x0404c048. |
| `NumGedRegs` | 0x0404dacc | **Established** (`arm1.u` 6.5.30m). The count of pending entries in the distributor register list `GedRegs`: `CompGedReg` clears it, the formatter, unpacker, reorderer and transfer-unit planners append, and the same routine then writes each entry through a computed descriptor. |
| `tfRegs` | 0x0404dae8 | **Established** (`arm1.u` 6.5.30m). Five words of X-path texture-filter register values, zero in the image: `CompTF` stores a mode (up to 2) and a component mask (up to 0x1f) by pixel kind, and `XSetTF` stores 3 in the third word and applies the mask. |
| `NumRMBoards` | 0x0404dafc | **Established** (`arm1.u` 6.5.30m). Second copy of the three words counting up from 0 indexed by raster-board count, in the X pixel object; `XSetupGedRead` reads it when it sets up a framebuffer read. |
| `GedRegs` | 0x040952cc | **Established** (`arm1.u` 6.5.30m). Thirteen register-number and value pairs collected by the X pixel planners (formatter, unpacker, reorderer, transfer unit); `CompGedReg` writes each as a distributor register through a descriptor built from the number. |

## Pixel path: output-module records and conversion lists

Fixed records that describe an output module: command words, module routine, tag tables and converter groups.

| Symbol | Address | What it is and does |
|---|---|---|
| `cvmg_4_8_CI16ToFBPup2` | 0x0404d0a0 | **Established** (`arm1.u` 6.5.30m). An eight-byte converter group: a count of 16 and a pointer to the sixteen converter words at 0x0404cfb0; it is the sixth word of the output-module record for 16-bit colour index into the pop-up planes, which reaches it only through that record. |
| `tbus2CI` | 0x0404d0a8 | **Established** (`arm1.u` 6.5.30m). Table of 26 words, mostly 0xffff with small selector values between them, that `AddOutputI` indexes by output format to pick the index mask written for colour-index output. |
| `CIoutputModuleTable` | 0x0404d110 | **Established** (`arm1.u` 6.5.30m). Output-module records for colour-index output, seven words each: two 0x132 command words, the module routine 0x0c031b6c, two tag tables, a converter group pointer and a flag; `AddOutputI` selects one by format. |
| `CI16ToFBNorOvr8` | 0x0404d164 | **Established** (`arm1.u` 6.5.30m). One seven-word output-module record for 16-bit colour index written to the 8-bit normal or overlay planes: two command words of 0x132, the module routine, the big and small tag tables, a converter-group pointer and flag 1; chosen by `AddOutputI`. |
| `CI16ToFBNorOvr12` | 0x0404d180 | **Established** (`arm1.u` 6.5.30m). The same seven-word output-module record for 16-bit colour index written to the 12-bit normal or overlay planes, differing only in its converter group; chosen by `AddOutputI`. |
| `CI16ToFBPup2` | 0x0404d19c | **Established** (`arm1.u` 6.5.30m). The seven-word output-module record for 16-bit colour index written to the two-bit pop-up planes; its converter group is the record at 0x0404d0a0; chosen by `AddOutputI`. |
| `S16ToFB` | 0x0404d1b8 | **Established** (`arm1.u` 6.5.30m). The seven-word output-module record for 16-bit stencil values written to the framebuffer, with the converter group at 0x0404d080 and flag 1; chosen by `AddOutputI`. |
| `FBToBitmap16` | 0x0404d1d4 | **Established** (`arm1.u` 6.5.30m). The seven-word output-module record that reads framebuffer data back as a 16-bit bitmap, with the short-to-bitmap converter group and flag 0; chosen by `AddOutputI`. |
| `FBToBitmap16Rev` | 0x0404d1f0 | **Established** (`arm1.u` 6.5.30m). The same read-back record as the forward bitmap one but with the bit-reversed converter group, for least-significant-bit-first bitmaps; chosen by `AddOutputI`. |
| `LUMoutputModuleTable` | 0x04094ff4 | **Established** (`arm1.u` 6.5.30m). 0x2d8 bytes of zero-initialised space that no instruction or pool word in the image addresses. **Inferred** from the name and the colour-index table beside it: room for luminance output-module records that this build never fills. |

## Pixel path: parameter and format tables

Constant tables the pixel path indexes by format, type or kernel shape.

| Symbol | Address | What it is and does |
|---|---|---|
| `defaultKernel` | 0x0404d20c | **Established** (`arm1.u` 6.5.30m). 100 floats of the default convolution kernel (the first four 1.0, the rest 0), copied into engine memory by `__glkonSetDefaultKernel` when a context starts. |
| `ConvolveEramLoc` | 0x0404d39c | **Established** (`arm1.u` 6.5.30m). Three engine external-memory word addresses, 0xc06 then 0xcca then 0xd8e, where the convolution kernels sit; read by `LoadKernel` and the default-kernel and kernel-copy routines. |
| `promotedTotalSize` | 0x0404d408 | **Established** (`arm1.u` 6.5.30m). Twelve words of kernel word counts after promotion to the working size, from 4 up to 0xc4 for square kernels and smaller for separable ones; read by `LoadKernel` and `AddConvolutionOutput`. |
| `saveRestoreCram` | 0x0404d438 | **Established** (`arm1.u` 6.5.30m). Twelve words giving where in engine control memory a kernel shape saves and restores its working words (word offsets up to 0x92); read by `LoadKernel` and `RestoreKernel`. |
| `cramKernelLoc` | 0x0404d468 | **Established** (`arm1.u` 6.5.30m). Twelve control-memory addresses (from 0x4e up to 0xe0) where `LoadKernel` places each kernel shape for the engine convolution module. |
| `promotedSize` | 0x0404d498 | **Established** (`arm1.u` 6.5.30m). Twelve words of promoted kernel widths, the odd sizes from 1 to 7 repeated, that `LoadKernel` and the engine-memory copy routines use to size the convolution working area. |
| `passthruComp` | 0x0404d4c8 | **Established** (`arm1.u` 6.5.30m). Twelve words of component selectors in the range 0-3 that `AddConvolutionOutput` uses to route components past the convolution unchanged. |
| `ExtractShiftMasksL12A4` | 0x0404d4f8 | **Established** (`arm1.u` 6.5.30m). Repeated shift-and-mask quadruples (shift 4 with mask 0xfff, then shift 0 with mask 0xf) that `U_uExtract` uses to split a 16-bit word into 12-bit luminance and 4-bit alpha. |
| `F4thCompTable` | 0x0404d5b8 | **Established** (`arm1.u` 6.5.30m). Per-type fill value for a missing fourth component: the largest value of each signed and unsigned integer type from 0x7f to 0xffffffff, then 1.0 for floats, with 0xdeadbabe in unused slots; read by `SetupFormatter` and `SetupReorderer`. |
| `UnpackerTable` | 0x0404d60c | **Established** (`arm1.u` 6.5.30m). 21 per-format unpacker mode numbers, 0 for plain types and small codes up to 7 for packed formats, that `SetupUnpacker` writes to the distributor's unpacker register. |
| `UnpackedTypeTable` | 0x0404d660 | **Established** (`arm1.u` 6.5.30m). 21 words mapping each host type code to the component type after unpacking (identity for the eight plain types, then 1 for the packed ones); read by `SetupUnpacker`. |
| `UnpackednumByteInCmpTable` | 0x0404d6b4 | **Established** (`arm1.u` 6.5.30m). 21 words of bytes per component after unpacking (one to four) that `SetupUnpacker` uses to set the unpacker's component width. |
| `rByteSel_PASS` | 0x0404d708 | **Established** (`arm1.u` 6.5.30m). A constant 0x00053053 that no instruction or pool word in the image refers to. **Inferred** from the name and its siblings: the raster-bus byte-select pattern for unswapped data, compiled from a shared definition into two objects and left unused (a second copy sits at 0x0404dad0). |
| `rWordSel_PASS` | 0x0404d70c | **Established** (`arm1.u` 6.5.30m). A zero word that no code refers to; **inferred** to be the word-select partner of the pass-through byte select above, unused at run time. |
| `rByteSel_REVERSE_BYTE` | 0x0404d710 | **Established** (`arm1.u` 6.5.30m). A constant 0x00688688 that no code refers to; **inferred** to be the byte-select pattern for byte-reversed data, compiled in but unused. |
| `rWordSel_REVERSE_BYTE` | 0x0404d714 | **Established** (`arm1.u` 6.5.30m). A zero word that no code refers to; **inferred** to be the word-select half of the byte-reversal pattern, unused. |
| `rByteSel_REVERSE_SHORT` | 0x0404d718 | **Established** (`arm1.u` 6.5.30m). A constant 0x00b64b64 that no code refers to; **inferred** to be the byte-select pattern for 16-bit swapped data, unused at run time. |
| `rWordSel_REVERSE_SHORT` | 0x0404d71c | **Established** (`arm1.u` 6.5.30m). A zero word that no code refers to; **inferred** to be the word-select half of the 16-bit swap pattern, unused. |
| `rByteSel_REVERSE_WORD` | 0x0404d720 | **Established** (`arm1.u` 6.5.30m). A constant 0x00b64b64 that no code refers to; **inferred** to be the byte-select pattern for 32-bit reversal, the same value as the 16-bit case, unused. |
| `rWordSel_REVERSE_WORD` | 0x0404d724 | **Established** (`arm1.u` 6.5.30m). A constant 0x00016349 that no code refers to; **inferred** to be the word-select pattern that swaps the halves for 32-bit reversal, unused. |
| `rByteSel_SWAP_16B_COMP` | 0x0404d728 | **Established** (`arm1.u` 6.5.30m). A constant 0x004c14c1 that no code refers to; **inferred** to be a byte-select pattern for swapping 16-bit components, unused at run time. |
| `NumRMBoards` | 0x0404d72c | **Established** (`arm1.u` 6.5.30m). Three words counting up from 0, indexed by raster-board count; `SetupRbus` and `XSetupGedRead` read this copy to encode the board count into the raster-bus set-up. A second copy sits at 0x0404dafc. |
| `BgnLineOffsetTable` | 0x0404d738 | **Established** (`arm1.u` 6.5.30m). 64 words of starting component offsets per format and alignment (0-3 pattern) that `SetupFormatter` uses to place the first component of a line. |
| `fbRbusIs16Bit` | 0x0404d838 | **Established** (`arm1.u` 6.5.30m). Sixteen words, 2 for the first seven framebuffer formats and 0 after, that `SetupPTUStream` and `SetupPTULine` use to choose a 16-bit raster-bus packing for framebuffer data. |
| `tmRbusIs16Bit` | 0x0404d878 | **Established** (`arm1.u` 6.5.30m). Ten words, each zero, two or four, giving the raster-bus packing for each texture-memory format, read by `SetupPTUStream` and `SetupPTULine`. |
| `ifmt` | 0x0404d8a0 | **Established** (`arm1.u` 6.5.30m). 26 words translating the pixel path's internal format codes to raster-board format numbers, with -1 for none; read by `SetupPGTG` and `SetupSubtexload`. |
| `numPixelPerTBUSPacket` | 0x0404d908 | **Established** (`arm1.u` 6.5.30m). 26 words of pixels per raster-bus packet for each format (one to eight); `CompCommonIndexStream` and `CompLineDist`, like the colour and luminance stream planners, divide the work by it. |
| `compFormatTable` | 0x0404daa8 | **Established** (`arm1.u` 6.5.30m). Nine words of components per pixel format (one, three or four), read by the engine set-up routines such as `SetupGE_PerRect` and `X_PixSetupGE`. |
| `rByteSel_PASS` | 0x0404dad0 | **Established** (`arm1.u` 6.5.30m). The second copy of the unswapped byte-select constant 0x00053053, beside the X pixel tables; no code refers to it. |
| `rWordSel_PASS` | 0x0404dad4 | **Established** (`arm1.u` 6.5.30m). Second copy of the zero pass-through word-select constant, in the X pixel object; no code refers to it. |
| `rByteSel_REVERSE_BYTE` | 0x0404dad8 | **Established** (`arm1.u` 6.5.30m). Second copy of the byte-reversal select constant 0x00688688, in the X pixel object; no code refers to it. |
| `rWordSel_REVERSE_BYTE` | 0x0404dadc | **Established** (`arm1.u` 6.5.30m). Second copy of the zero word-select constant for byte reversal, in the X pixel object; no code refers to it. |
| `rByteSel_REVERSE_SHORT` | 0x0404dae0 | **Established** (`arm1.u` 6.5.30m). Second copy of the 16-bit swap byte-select constant 0x00b64b64, in the X pixel object; no code refers to it. |
| `rWordSel_REVERSE_SHORT` | 0x0404dae4 | **Established** (`arm1.u` 6.5.30m). Second copy of the zero word-select constant for the 16-bit swap, in the X pixel object; no code refers to it. |
| `promotedSizeTable` | 0x0404db8c | **Established** (`arm1.u` 6.5.30m). 24 words of promoted kernel sizes per filter width and type; `__glkonGetPromotedSize` reads it for the convolution-filter handlers. |
| `FFT_Factors` | 0x0404dbec | **Established** (`arm1.u` 6.5.30m). 256 complex twiddle factors as float pairs, the first being one and zero and the rest the cosine and negated sine of steps of 2 pi over 256, that `InitFFTGlobal` loads into engine memory for the FFT pixel path. |
| `FFT_Sort_2` | 0x0404e3ec | **Established** (`arm1.u` 6.5.30m). Bit-reversed sample order for a 2-point transform as byte offsets, zero then 8, loaded by `InitFFTGlobal`. |
| `FFT_Sort_4` | 0x0404e3f4 | **Established** (`arm1.u` 6.5.30m). Sample order for a 4-point transform as byte offsets, here the natural order 0x0-0x18 in steps of 8, loaded by `InitFFTGlobal`. |
| `FFT_Sort_8` | 0x0404e404 | **Established** (`arm1.u` 6.5.30m). Bit-reversed sample order for an 8-point transform as byte offsets (the first two are 0 then 0x20), loaded by `InitFFTGlobal`. |
| `FFT_Sort_16` | 0x0404e424 | **Established** (`arm1.u` 6.5.30m). Sample order for a 16-point transform as byte offsets in a four-by-four interleave (0 to 0x60 in steps of 0x20, then from 8), loaded by `InitFFTGlobal`. |
| `FFT_Sort_32` | 0x0404e464 | **Established** (`arm1.u` 6.5.30m). Bit-reversed sample order for a 32-point transform as byte offsets, starting 0 then 0x80, loaded by `InitFFTGlobal`. |
| `FFT_Sort_64` | 0x0404e4e4 | **Established** (`arm1.u` 6.5.30m). Sample order for a 64-point transform as byte offsets, 64 words, loaded into engine memory by `InitFFTGlobal`. |
| `FFT_Sort_128` | 0x0404e5e4 | **Established** (`arm1.u` 6.5.30m). Bit-reversed sample order for a 128-point transform as byte offsets, 128 words, loaded by `InitFFTGlobal`. |
| `FFT_Sort_256` | 0x0404e7e4 | **Established** (`arm1.u` 6.5.30m). Sample order for a 256-point transform as byte offsets, 256 words, loaded by `InitFFTGlobal`. |
| `divModLut` | 0x04091874 | **Established** (`arm1.u` 6.5.30m). A 0x1020-byte quotient and remainder cache filled by `InitDivModLut` and read by `DivModFunc` to avoid the slow software divide. |
| `GeTypeFormatTable` | 0x04092894 | **Established** (`arm1.u` 6.5.30m). Zero in the image and filled by `InitGeTypeFormatTable`: per host type and format, what the engines receive; read by the colour, luminance, index, depth and FFT stream planners. |

## Context switch, saved state and memory

Context creation, activation and deactivation, saved engine and distributor state, memory reservation, swap and list DMA.

| Symbol | Address | What it is and does |
|---|---|---|
| `stored_gedstate_mem` | 0x0408d234 | **Established** (`arm1.u` 6.5.30m). Storage for the saved distributor state; no code names it directly, `init_arm` rounds its address plus 4 down to eight bytes and stores that in the pointer `stored_gedstate`. |
| `stored_gefifo_mem` | 0x0408d640 | **Established** (`arm1.u` 6.5.30m). 8 KB of storage for saved engine input words; `init_arm` stores its eight-byte-aligned address in the pointer `stored_gefifo`, through which the context code reaches it. |
| `stored_geregs_mem` | 0x0408f64c | **Established** (`arm1.u` 6.5.30m). Storage for saved engine registers; `init_arm` stores its eight-byte-aligned address in the pointer `stored_geregs`. |
| `saved_stack_mem` | 0x0408f718 | **Established** (`arm1.u` 6.5.30m). 4 KB of storage for a saved ARM stack; `init_arm` stores its eight-byte-aligned address in the pointer that the context code and the resume routine use. |
| `loadCtxMap` | 0x04090724 | **Established** (`arm1.u` 6.5.30m). An 82-word zero-initialised record shared by the context load handler and `arm_context_activate`; when a context's pixel record says kind 3 (X pixels), the activation passes three of its words (offsets 0x20-0x24 with 0xc) to `XPixelRestore`, so it holds the X pixel set-up a context resumes with. |

## Queries and read-back

Handlers that answer GL queries through the read-back path ([arm1_firmware.md](arm1_firmware.md#how-the-arm-answers-the-host)).

| Symbol | Address | What it is and does |
|---|---|---|
| `get_table` | 0x0404ebe4 | **Established** (`arm1.u` 6.5.30m). 1161 two-word query descriptors that `arm_getv` indexes by GL query enum (folded into one range): word 0 holds a value count in bits 0-4 and a kind in bits 5-7, word 1 an offset into the state; the handler sends the values to the host through read-back register 0x476. |

## Linker marks and other data

Region marks the linker defines and data with no closer family.

| Symbol | Address | What it is and does |
|---|---|---|
| `C$$data$$Limit` | 0x04067edc | **Established** (`arm1.u` 6.5.30m). Linker mark for the end of initialised data and so the start of zero-initialised data; code uses it as the address of the board-configuration block that begins there. |
| `C$$zidata$$Base` | 0x04067edc | **Established** (`arm1.u` 6.5.30m). Linker mark for the start of the zero-initialised data region, 0x04067edc-0x040953d8, which the loader clears rather than copies. |
| `Image$$ZI$$Base` | 0x04067edc | **Established** (`arm1.u` 6.5.30m). Image-level linker mark for the start of zero-initialised data, the same address as the end of initialised data. |
| `_edata` | 0x04067edc | **Established** (`arm1.u` 6.5.30m). Conventional end-of-initialised-data mark, the same address as the start of zero-initialised data. |
| `C$$zidata$$Limit` | 0x040953d8 | **Established** (`arm1.u` 6.5.30m). Linker mark for the end of zero-initialised data; `init()` records it as the base of free memory. |
| `Image$$RW$$Limit` | 0x040953d8 | **Established** (`arm1.u` 6.5.30m). Image-level mark for the end of all read-write data, initialised and zero-initialised. |
| `Image$$ZI$$Limit` | 0x040953d8 | **Established** (`arm1.u` 6.5.30m). Image-level mark for the end of zero-initialised data, the same address as the end of all data. |
| `_end` | 0x040953d8 | **Established** (`arm1.u` 6.5.30m). Conventional end-of-program mark at the end of zero-initialised data, the same address as the read-write limit. |

## First-pass family summaries

The family tables of the first pass, kept until every symbol above has its own row. They list several symbols per line; the per-symbol rows above supersede them.

### Enable and disable

**Established** (`arm_enable` 0x0c02336c, `arm_disable` 0x0c023418, and the twelve pointer tables they index). The capability number is the token's last payload word. Each of `arm_enable` and `arm_disable` checks six ranges and jumps through one table per range; a number outside every range, or one whose slot holds `set_invalid_enum`, raises the GL invalid-enum error.

| Table (enable, disable) | Address (enable, disable) | Capability range |
|---|---|---|
| `e0`, `d0` | 0x04046fe8, 0x04048258 | 0x0b10-0x0de1 |
| `e0a`, `d0a` | 0x04047b30, 0x04048da0 | 0x2a01-0x2a02 |
| `e1`, `d1` | 0x04047b38, 0x04048da8 | 0x3000-0x3005 |
| `e2`, `d2` | 0x04047b50, 0x04048dc0 | 0x4000-0x4007 |
| `e3`, `d3` | 0x04047b70, 0x04048de0 | 0x8010-0x81c7 |
| `e4`, `d4` | 0x04048254, 0x040494c4 | 0x6000 only |

**Established.** Every routine below except `e_multipass`, `d_multipass` and the `*_unimp` pair first stores 1 (enable) or 0 (disable) in one byte of the enable block at r8 + 0x758-0x796, then does the work in the last column. The byte is shared by the pair, so the block is the firmware's copy of the enable state. `enable_pop` (0x0c023568) walks the bytes and calls the matching `e_*` or `d_*` routine for each, which is how a restored or popped enable state reaches the hardware. The GL names in the first column are the public enum names for the numbers, given as a reading aid where the value is a core or SGI-extension enum.

| Capability | Enable, disable | Byte | What the pair does |
|---|---|---|---|
| 0x0b10 (POINT_SMOOTH) | `e_point_smooth`, `d_point_smooth` | 0x766 | re-derives the point set-up with `ResolvePoint` |
| 0x0b20 (LINE_SMOOTH) | `e_line_smooth`, `d_line_smooth` | 0x761 | `ResolveLine`, then `ResolvePolygon` (polygon modes drawn as lines) |
| 0x0b24 (LINE_STIPPLE) | `e_line_stipple`, `d_line_stipple` | 0x762 | `ResolveLine` |
| 0x0b41 (POLYGON_SMOOTH) | `e_polygon_smooth`, `d_polygon_smooth` | 0x767 | `ResolvePolygon` |
| 0x0b42 (POLYGON_STIPPLE) | `e_polygon_stipple`, `d_polygon_stipple` | 0x768 | `ResolveLine` and `ResolvePolygon`; the disable also reloads the antialiased-line table (engine handler `mgeb_DownLoadAALineTable`), (**inferred:** the stipple and the line table share one pattern memory, the `PramContentsType` record below) |
| 0x0b44 (CULL_FACE) | `e_cull_face`, `d_cull_face` | 0x75c | engine handler `mgeb_Enable_Cull_Face` or `mgeb_Disable_Cull_Face` |
| 0x0b50 (LIGHTING) | `e_lighting`, `d_lighting` | 0x760 | re-derives the distributor transfer mask (`XferMask`); the disable sends `mgeb_LiDisableLighting` |
| 0x0b57 (COLOR_MATERIAL) | `e_colormaterial`, `d_colormaterial` | 0x75b | `XferMask`, then `mgeb_LiEnableClrMtrl`; the disable sends `mgeb_LiDisableClrMtrl`, rewrites the transfer mask with `set_ged_xfer_mask` and sends two descriptor-port words |
| 0x0b60 (FOG) | `e_fog`, `d_fog` | 0x75f | the disable sends `mgebi_FogDisable` (`e_fog` is in [arm1_firmware.md](arm1_firmware.md)) |
| 0x0b71 (DEPTH_TEST) | `e_depth_test`, `d_depth_test` | 0x75d | writes one raster register through descriptor 0x584fc800: select word 0x200, address word 0x01391c08, value 0x200 (enable) or 0 (disable); the enable writes only when the byte at r8 + 0x1d2 is set ([docs/rm.md](../docs/rm.md) decodes the descriptor and address word) |
| 0x0b90 (STENCIL_TEST) | `e_stencil_test`, `d_stencil_test` | 0x76d | the same with address word 0x01381c07 |
| 0x0ba1 (NORMALIZE) | `e_normalize`, `d_normalize` | 0x765 | `mgeb_Enable_Normalize` or `mgeb_Disable_Normalize` |
| 0x0bc0 (ALPHA_TEST) | `e_alpha_test`, `d_alpha_test` | 0x758 | `mgesi_AlphaTest` with the new state as operand (port 0x474) |
| 0x0bd0 (DITHER) | `e_dither`, `d_dither` | 0x75e | stores the byte only; nothing is sent |
| 0x0be2 (BLEND) | `e_blend`, `d_blend` | 0x75a | raster registers through descriptor 0x584fc800, address words 0x013c1c0d and 0x01361c03 |
| 0x0bf1 (INDEX_LOGIC_OP) | `e_logic_op`, `d_logic_op` | 0x763 | raster register, address word 0x013c1c0d |
| 0x0bf2 (COLOR_LOGIC_OP) | `e_color_logic_op`, `d_color_logic_op` | 0x764 | raster registers, address words 0x013c1c0d and 0x01361c03 (shared with blending, so each routine recomputes the combined word) |
| 0x0c11 (SCISSOR_TEST) | `e_scissor`, `d_scissor` | 0x76c | `resolve_scissor` |
| 0x0c60-0x0c63 (TEXTURE_GEN_S, T, R, Q) | `e_texgen_s`, `e_texgen_t`, `e_texgen_r`, `e_texgen_q`, `d_texgen_s`, `d_texgen_t`, `d_texgen_r`, `d_texgen_q` | 0x771-0x774 | `mgeb_TexGen_Enable` or `mgeb_TexGen_Disable` with the coordinate's GL enum (0xc60-0xc63) at port 0x478; S and T also re-derive `XferMask` |
| 0x0d80, 0x0d90-0x0d98, 0x0db0-0x0db8 (AUTO_NORMAL and the MAP1 and MAP2 evaluator targets) | `e_unimp`, `d_unimp` | none | print "unimplemented enable called" or "unimplemented disable called" and return. **Inferred:** the host library evaluates these maps itself, so the pipe never needs the state |
| 0x0de0, 0x0de1 (TEXTURE_1D, TEXTURE_2D) | `e_texture_1d`, `e_texture_2d`, `d_texture_1d`, `d_texture_2d` | 0x76e, 0x76f | `XferMask`, then `mgebi_Texture` |
| 0x2a01, 0x2a02 (POLYGON_OFFSET_POINT, POLYGON_OFFSET_LINE) | `e_polygonoffsetpoint`, `e_polygonoffsetline`, `d_polygonoffsetpoint`, `d_polygonoffsetline` | 0x769, 0x76a | `mgeb_Disable_EnablePolyOffsetExt` with a three-bit mode word at port 0x478: bit 0 fill, bit 1 line, bit 2 point (from bytes 0x76b, 0x76a, 0x769) |
| 0x3000-0x3005 (CLIP_PLANE0-5) | `e_clip_plane0`, `e_clip_plane1`, `e_clip_plane2`, `e_clip_plane3`, `e_clip_plane4`, `e_clip_plane5`, `d_clip_plane0`, `d_clip_plane1`, `d_clip_plane2`, `d_clip_plane3`, `d_clip_plane4`, `d_clip_plane5` | 0x77d-0x782 | `mgeb_EnableUserClipPlane` or `mgeb_DisableUserClipPlane` with the plane number |
| 0x4000-0x4007 (LIGHT0-7) | `e_light0`, `e_light1`, `e_light2`, `e_light3`, `e_light4`, `e_light5`, `e_light6`, `e_light7`, `d_light0`, `d_light1`, `d_light2`, `d_light3`, `d_light4`, `d_light5`, `d_light6`, `d_light7` | 0x775-0x77c | `mgeb_LiEnableLightS` or `mgeb_LiDisableLightS` with the light number |
| 0x6000 | `e_multipass`, `d_multipass` | none | sends `mgeb_Enable_Multipass` or `mgeb_Disable_Multipass` and keeps no byte |
| 0x8010, 0x8011, 0x8012 (CONVOLUTION_1D, 2D, SEPARABLE_2D) | `e_convolution_1d`, `e_convolution_2d`, `e_convolution_sep2d`, `d_convolution_1d`, `d_convolution_2d`, `d_convolution_sep2d` | 0x784-0x786 | set or clear bit 0x20, 0x40 or 0x80 of the pixel-path flag word at r8 + 0xc88, only while pixel transform is on and the transform mode word (r8 + 0x36c) is 0x81c5 |
| 0x8024 (HISTOGRAM) | `e_histogram`, `d_histogram` | 0x794 | the enable sets 0x100 in r8 + 0xc88, or 0x4100 when word +0x518 of the pixel record at r8 + 0xcf4 is nonzero; the disable clears them |
| 0x802e (MINMAX) | `e_minmax`, `d_minmax` | 0x795 | the same with 0x200, or 0x8200 when word +0x550 of that record is nonzero |
| 0x8037 (POLYGON_OFFSET_FILL) | `e_polygonoffset`, `d_polygonoffset` | 0x76b | `mgeb_Disable_EnablePolyOffsetExt`, then `ResolvePolygon` |
| 0x806f (TEXTURE_3D) | `e_texture_3d`, `d_texture_3d` | 0x770 | `XferMask`, then `mgebi_Texture` |
| 0x8094 (INTERLACE_SGIX) | `e_interlace`, `d_interlace` | 0x78f | writes the one-word flag to engine external memory at 0xc03 with `WriteEram` |
| 0x809d (MULTISAMPLE_SGIS) | `e_multisample`, `d_multisample` | 0x783 | raster registers through descriptor 0x58404800 (address words 0x012b0806, 0x01681408), then `ResolvePolygon`, `ResolveLine`, `ResolvePoint`; also called by `init_multisample` |
| 0x809e, 0x809f, 0x80a0 (SAMPLE_ALPHA_TO_MASK, SAMPLE_ALPHA_TO_ONE, SAMPLE_MASK) | `e_alpha2mask`, `e_alpha2one`, `e_samplemask`, `d_alpha2mask`, `d_alpha2one`, `d_samplemask` | 0x789, 0x788, 0x787 | one raster register, address word 0x01681408 |
| 0x80bc (TEXTURE_COLOR_TABLE_SGI) | `e_texcoltab`, `d_texcoltab` | 0x790 | the enable re-validates the table (`PixValidateTexColorTable`); the disable clears the table-loaded flag and writes raster register 0x01571853 |
| 0x80d0, 0x80d1, 0x80d2 (COLOR_TABLE, POST_CONVOLUTION_COLOR_TABLE, POST_COLOR_MATRIX_COLOR_TABLE) | `e_coltab`, `e_convcoltab`, `e_colmatcoltab`, `d_coltab`, `d_convcoltab`, `d_colmatcoltab` | 0x791-0x793 | set or clear 0x800, 0x1000 or 0x2000 in the pixel-path flag word r8 + 0xc88 |
| 0x8148 (SPRITE_SGIX) | `e_sprite`, `d_sprite` | 0x78a | `mgeb_EnableSprite` or `mgeb_DisableSprite` |
| 0x817d (REFERENCE_PLANE_SGIX) | `e_reference_plane`, `d_reference_plane` | 0x78d | `mgebi_ReferencePlane_Enable` or `_Disable` with the selector at port 0x43c; also called by `arm_load_ge_xform_attrib` |
| 0x817f (IR_INSTRUMENT1_SGIX) | `e_instruments`, `d_instruments` | 0x78c | stores the byte only |
| 0x8183 (CALLIGRAPHIC_FRAGMENT_SGIX) | `e_calligraphic_fragment`, `d_calligraphic_fragment` | 0x78e | one raster register, address word 0x01351c02 |
| 0x8198 (FOG_OFFSET_SGIX) | `e_fog_offset`, `d_fog_offset` | 0x78b | `mgebi_FogOffsetEnableDisable` |
| 0x81c7 | `e_pixel_transform`, `d_pixel_transform` | 0x796 | sets bit 0x80000 of r8 + 0xc88 unless the transform mode word is 0x81c5, in which case it re-applies the three convolution bits; the disable clears all four. `InitPixelGLState` calls the enable |

### Start-up, exceptions and the run-time library

A short lowercase name is written as a call (`name()`) so it is not read as an English word.

| Symbol | Address | What it is |
|---|---|---|
| `start()` | 0x0c00002c | **Established.** Entry after the reset stub: sets r8 = 0, r9 = 0x00200200 and the stack, calls `init()`, then runs the input loop that fetches each handler address from r9 + 0x200 ([arm1_firmware.md](arm1_firmware.md#the-input-loop)) |
| `restore()` | 0x0c000124 | **Established.** Two parts. The first reloads every ARM register and the saved program status from the save area whose pointer is in the data block, copies the saved stack back to 0xd00-0xfff, and returns into the saved code; `arm_context_activate` uses it to resume a context. The rest are the exception entry stubs: each saves r0-r14 and the status into `saved_regs`, sets r8, r9 and a private stack at 0xffc, and calls one of `reset()`, `badinstr()`, `pabort()`, `badaddr()`, `irq()`, `fiq()` |
| `hipctl` | 0x0c000328 | **Established.** Same address as `vector_end`: the static list `init_hip` walks to build the token map ([arm1.md](arm1.md#the-token-map-icu_map)) |
| `hipwc` | 0x0c000ff4 | **Established.** 512 words, one per token: the payload word count `arm_bgnend` drains for a token refused inside a begin/end pair ([arm1_firmware.md](arm1_firmware.md#refused-tokens-begin-end-divert-bad-command)) |
| `init()` | 0x0c004108 | **Established.** The start-up sequence (banner "Welcome to ARMLand", `init_jtag`, `init_ge_board`, `dgFetal`, `init_rm_board`, `init_dg_board`, `mem_init`, `init_simulator_hacks`, `check_pipe_sync`), bracketed by `simfast_bgn()` and `simfast_end` ([arm1_firmware.md](arm1_firmware.md#start-up)) |
| `arm_initpipe()` | 0x0c0042bc | **Established.** One instruction: a branch to `init()`. No token map entry points at it; **inferred** a restart entry for a debugger or simulator |
| `init_fm()` | 0x0c0037a8 | **Established.** Returns at once; `init_voc` and `init_dac` beside it are the same. **Inferred:** placeholders for display-board chips that the display code (`dgAutoInit`) sets up instead |
| `init_simulator_hacks` | 0x0c003eb8 | **Established.** Sets a default read-back block (r8 + 0xc98 = 0xc, + 0xca0 = 0x4000) and, only when `InSimulator` is set, fills the board-configuration bytes r8 + 0x40-0x45 with fixed values and clears the screen with `rect_word_clear`. **Inferred:** stands in for the probing a simulator cannot do |
| `sleep()` | 0x0c00437c | **Established.** Busy-waits until the counter at 0x2000b0 has advanced by the argument, handling wrap; the counter ticks at the host-interface clock ([arm1_firmware.md](arm1_firmware.md#control-and-status-registers)) |
| `simfast_bgn()` | 0x0c019c1c | **Established.** When `InSimulator` is set, writes 1 to RAM address 0x1000 (`simfast_end` writes -1). **Inferred:** a marker word a simulator watches to speed through start-up |
| `clear_icache_stats` | 0x0c019c58 | **Established.** When simulated, writes 0 to RAM address 0x1040; `report_icache_stats` (called by `arm_end_of_simulation`) writes 0 to 0x1044. **Inferred:** like `simfast_bgn()`, words a simulator watches, here to reset and print its instruction-cache counters |
| `report_icache_stats` | 0x0c019c78 | see `clear_icache_stats` |
| `putchar()` | 0x0c019c98 | **Established.** Sends one character to the host through `send_host_intr` unless simulated ([arm1_firmware.md](arm1_firmware.md#how-the-arm-answers-the-host)) |
| `printn()` | 0x0c019cb8 | **Established.** Prints an unsigned number in a given base with `__rt_udiv` and the digit string `printc`, for `_printf` |
| `null_printf` | 0x0c01e09c | **Established.** Returns at once; passed as the print routine to `nic_read_redirected_page` to silence it |
| `__assert()` | 0x0c039bd8 | **Established.** Prints "Assertion failed", the file and line, and the current and previous token numbers from 0x200078 and 0x20007c |
| `fault()` | 0x0c03ca3c | **Established.** Prints "ARM: Unexpected Exception (fault)" with the exception name and the saved registers (`print_savedregs`), then stops |
| `print_savedregs` | 0x0c03c8ac | **Established.** Prints r0-r15 and the status word from `saved_regs`; also used by `load_arm` |
| `reset()`, `badinstr()`, `pabort()`, `badaddr()`, `irq()`, `fiq()` | 0x0c03ca9c-0x0c03cb14 | **Established.** Each calls `fault()` with its name: "RESET", "ILLEGAL INSTRUCTION", "PREFETCH ABORT", "ILLEGAL ADDRESS", "INTERRUPT REQUEST", "FAST INTERRUPT REQUEST". So the firmware takes no interrupts in normal running: an IRQ or FIQ is reported as a fault |
| `__memmove()` | 0x0c0400e4 | **Established.** Word copy used by the list-DMA code (same address as `C$$code$$Limit`) |
| `wzero()` | 0x0c04011c | **Established.** Zeroes a word range; `context_init` uses it to clear a new context's shadow |
| `__rt_divtest()`, `__rt_udiv()`, `__rt_udiv10()`, `__rt_sdiv10()` | 0x0c04015c-0x0c040228 | **Established.** The ARM C library's division helpers (the processor has no divide instruction) |
| `C$$code$$Base`, `C$$code$$Limit`, `Image$$RO$$Base`, `_estext`, `ucode$$Base`, `ucode$$Limit` | | **Established.** Linker region marks, not functions. `C$$code$$Base` is the start of compiled C code (0x0c0017f4, also `arm_badcmd`), so scans that list it as a callee mean `arm_badcmd`; `ucode$$Limit` (0x0c001958) falls inside `arm_bgnend` |
| `ucode` | 0x0c000000, 0x0c04015c | **Established.** Two marks of the same name: the start of the image and the start of the library area |
| `x$constdata` | 0x0c03feb0 | **Established.** Linker mark for a constant-data area (several objects contribute one) |
| `pack_cmd` | 0x0c039538 | **Established.** A zero-length label inside the X pixel code; nothing branches to it |
| `ungray()` | 0x0c01a3e4 | **Established.** Returns entry n of the table at 0x04040284. **Inferred** from the name and its users (`init_ge`, `init_ge_jtag`): converts a Gray-coded board-position number to binary |

### State shadow: initialisation, push and pop

**Established.** When a context is created, `context_init` calls one `*_init` routine per attribute group to put the GL defaults into the r8 shadow and to the hardware; `arm_popattrib` calls one `*_pop` routine per group to send the restored shadow back. Errors keep the first code in the two bytes at r8 + 0x860 ([arm1_firmware.md](arm1_firmware.md#what-the-arm-sees)).

| Symbol | Address | What it is |
|---|---|---|
| `color_init` | 0x0c014084 | **Established.** Colour-buffer defaults: raster registers through descriptor 0x58404800 (address words 0x013c1c0d, 0x013d1c14, 0x013e1c15, 0x01681408) and `mgesi_TbusRegWrite` |
| `late_state_init` | 0x0c014174 | **Established.** Run by `arm_buffer_config` once the framebuffer layout is known: raster register 0x013a1c09, `rasterpos_init`, an engine-memory write and `init_per_ge_context` |
| `stencil_pop` | 0x0c014b34 | **Established.** Resends stencil and depth state after a pop: raster registers 0x01381c07, 0x01391c08, 0x01681408 and `mgesi_TbusRegWrite` |
| `hint_init` | 0x0c0164bc | **Established.** Stores 0x1100 (GL `DONT_CARE`) in the five hint words at r8 + 0x7ec-0x7fc. `arm_hint` keeps the hint for targets 0xc50-0xc54 in the same words and re-derives lines or points for the line and point hints |
| `color()`, `cindex()`, `normal()`, `texcoord()`, `vertex()`, `edgeflag()` | 0x0c0164d8-0x0c016568 | **Established.** Called by `prim_init` to load the default current colour, index, normal, texture coordinate and edge flag: each writes a routed token-map entry to the descriptor port and its operands. The entries are those of `COLOR4F` (command 144), `INDEXF` (145), `NORMAL3F` (143) and `TEXCOORD4F` (146) with command-number bit 6 set (208, 209, 207, 210), the vertex command 206, and 0x52000020 for the edge flag (which sends the negated flag). [ged.md](ged.md) reads the command-number bits |
| `light_init` | 0x0c017c54 | **Established.** Lighting defaults (the literal pool holds 0.2, the default ambient), sent through the descriptor port |
| `lightmodelf_gamb`, `lightmodeli_gamb` | 0x0c016bf0, 0x0c016c04 | **Established.** The global-ambient branch of `arm_lightmodelf` and `arm_lightmodeli` (entries of the `lightmodelf` and `lightmodeli` tables): read four words, convert the integer form with `convFixToFloat`, then `lightmodel_gamb` |
| `doFixToFloat`, `scaleFix` | 0x0c017b4c, 0x0c017bb4 | **Established.** Helpers of `convFixToFloat`: integer to single-precision conversion and the scaling GL applies to integer colour and normal parameters |
| `scissor_pop` | 0x0c019b5c | **Established.** One branch to `resolve_scissor` |
| `xform_pop` | 0x0c019b60 | **Established.** After a pop of the transform attributes: re-applies the six clip-plane enables and the normalise enable through their `e_`/`d_` routines, then `xform_restore` |
| `enable_pop` | 0x0c023560 | **Established.** Calls the `e_` or `d_` routine for every byte of the enable block (above) |
| `fog_pop` | 0x0c03f49c | **Established.** `e_fog` or `d_fog` from the fog byte |
| `multisample_pop` | 0x0c03c654 | **Established.** Resends the multisample state: raster registers through descriptors 0x58404800 (0x0161140b) and 0x584fc800 (0x01253be0, 0x01263be1) with the sample masks and patterns from `masks4`, `masks8` and `patterns` |
| `attrib_init` | 0x0c03ad38 | **Established.** Returns at once |
| `context_init_ged` | 0x0c01fcb8 | **Established.** Distributor defaults for a new context (`init_ged_regs`, then descriptor-port writes) |
| `set_invalid_value`, `set_stack_overflow`, `set_stack_underflow` | 0x0c015460, 0x0c0154b0, 0x0c0154d8 | **Established.** Record GL errors 0x0501, 0x0503, 0x0504 (invalid value, stack overflow, stack underflow) in the sticky error unless one is already there |
| `ResolvePolygon` | 0x0c015e8c | **Established.** Re-derives how polygons are drawn from the polygon mode, smoothing, stipple, offset, multisample and render mode, and writes the result to the raster boards (descriptor 0x58404800, address words 0x012b0806 and 0x012f080a) and, with all engines selected (port 0x438), an engine handler. Called by every enable that affects polygons and by `arm_polygonmode` and `arm_rendermode` |
| `ResolvePoint` | 0x0c016240 | **Established.** The same for points (size, smoothing, multisample, the point-parameter extension); sends one engine handler with an operand at port 0x47c |
| `compute_gedxfermask` | 0x0c012a98 | **Established.** Sets every bit of the two distributor transfer-mask words at r8 + 0xc90 and 0xc94 that `arm_ged_verif_load` needs (all attributes transferred) |
| `XferMaskRpos` | 0x0c01315c | **Established.** The transfer mask for raster-position commands: r8 + 0xc94 = 0x10fe000 or 0x1ffe000 by bit 0 of r8 + 0xcf0, plus 0xf00 or 0x1e00 by the byte at r8 + 0x1ce |
| `rasterpos_init` | 0x0c036388 | **Established.** Default raster position: rewrites the transfer mask with `set_ged_xfer_mask` and writes engine memory |
| `getcurrent` | 0x0c0383dc | **Established.** Reads the current attribute values back from the engines (`mgesi_GetCurrent` after setting the transfer mask); used by `arm_getcurrent` and by `arm_pushattrib` to save them |
| `generate_rect` | 0x0c037fb8 | **Established.** Used by `arm_accum`: programs the raster boards to cover a rectangle (`tbus_regwrite`, `tbus_write_word`) |
| `VertarrayRestore` | 0x0c039abc | **Established.** Reloads the vertex-array token-map entries from the context (`varray_set_cmd_table` with word +0x740 of the record at r8 + 0xcf4); `activate_private` calls it |
| `word_clear` | 0x0c03bed4 | **Established.** Clears a rectangle with the raster boards' fill, saving and restoring the colour registers it borrows (address words 0x01351c02, 0x013b1c0b, 0x01391c08, 0x01361c03, 0x013a1c09); `imp_clear` does the fill. Used by `accum_clear`, `accum_clear32`, `rect_word_clear` |
| `masked_word_clear` | 0x0c03c000 | **Established.** The same through `masked_clear`, with the write masks (0x013d1c14, 0x013e1c15, 0x01681408) |
| `rect_word_clear` | 0x0c03c14c | **Established.** Clears a rectangle given as arguments with `word_clear`; `arm_x_init` and `init_simulator_hacks` use it |
| `x_initregs` | 0x0c03d0b8 | **Established.** The X server's raster-board defaults sent by `arm_x_init`: about fifteen raster registers (address words 0x01203fcf-0x01243fd3, 0x01351c02 and others) and `mgesi_TbusRegWrite` |
| `x_initpixels` | 0x0c034754 | **Established.** Marks the six cached X pixel-path words at r8 + 0x938-0x94c invalid (-1), so the next X pixel command reprograms the path |

### Diagnostic commands (`DIAG_DISPATCH`)

**Established** (`arm_diag_dispatch` 0x0c037958, token 0x169). The first payload word is a sub-command 0-11; any other prints "Unrecognized diag command". The IR diagnostics use these to reach the distributor and the ARM's address space from the host.

| Sub-command | Routine | Address | What it does |
|---|---|---|---|
| 0 | `diag_ged_deactivate_context` | 0x0c037d64 | saves the distributor state as a context switch would |
| 1 | `diag_set_immediat` | 0x0c0379f0 | writes the second word to the ARM address in the first. For token-map addresses 0x4007f0-0x4007fc (the entries of tokens 0x1fc-0x1ff) it sets the token-map hold bit 0x200050 around the store, so the hardware does not consult an entry while it changes |
| 2 | `diag_set` | 0x0c037a34 | copies one word from the ARM address in the first word to the address in the second |
| 3 | `diag_load_ged_table` | 0x0c037bcc | loads distributor table words through the descriptor port |
| 4 | `diag_transfer_ged_table` | 0x0c037c6c | the same with a filler word at port 0x880 |
| 5 | `diag_ged_register` | 0x0c037a48 | builds a distributor register descriptor from a register number ((number << 13) with bit 0 or bit 12 set, shifted into bits 11 and up, bit 5 set) and writes one value |
| 6 | `diag_ged_pixelsetup` | 0x0c037aac | loads the pixel set-up registers with descriptors 0x58200020, 0x58600020, 0x58a00020 (the same three `SetupPTUStream` uses) |
| 7 | `diag_ged_pixels` | 0x0c037b40 | writes descriptor 0x06000020, peeks the word count at r9 + 0x40, prints "diag_ged_pixels: totalWords %d" and starts the pass-through counter (0x200058) with the bare count, no source bits |
| 8 | `diag_ged_pixels_b2b` | 0x0c037b90 | the same, but first starts the counter with count \| 0x8000000, waits for bit 4 of 0x200060, then writes the bare count |
| 9 | `diag_tbus_1` | 0x0c037ce8 | one raster-bus register write to one engine ([arm1_firmware.md](arm1_firmware.md#how-a-handler-reaches-the-engines)) |
| 10 | `diag_tbus_1_noid` | 0x0c037d14 | the same without the engine id |
| 11 | `diag_ged_nextge` | 0x0c037d48 | selects the next engine (port 0x434) |
| | `arm_diag_reserved0()`, `arm_diag_reserved1()` | 0x0c037d40, 0x0c037d44 | handlers of tokens 0x16a and 0x16b: return at once |

### Boundary scan, boards and serial numbers

**Established.** The firmware finds the boards on the boundary-scan ("JTAG") chain through the bit-bang port 0x2000c0-0x2000cc ([arm1_firmware.md](arm1_firmware.md#control-and-status-registers)). A chain description is a list of chips, each a chip-type record; `init_kona_jtag_chain` picks the description that matches the boards found.

| Symbol | Address | What it is |
|---|---|---|
| `*_chip_type` records: `tg1_chip_type`, `tm1_chip_type`, `tf1_chip_type`, `imp8_chip_type`, `pg2_chip_type`, `fm2_chip_type`, `xmap8_chip_type`, `adv7160_chip_type`, `tmc22090_chip_type`, `voc1_chip_type`, `hip1_chip_type`, `hip1b_chip_type`, `hip2_chip_type`, `bef1_chip_type`, `ged1_chip_type`, `ged1b_chip_type`, `imp8d_chip_type`, `imp9_chip_type`, `tf1c_chip_type`, `pg2b_chip_type`, `tg2_chip_type`, `tm1c_chip_type` | 0x04041c58-0x04042e00 | **Established.** 80-byte records: a chip code in word 0 (0x10 HIP, 0x11 distributor, 0x13 BEF, 0x20 XMAP, 0x21 VOC, 0x22 FM, 0x23 ADV7160 DAC, 0x24 TMC22090 encoder, 0x30-0x39 the raster-board chips PG, TG, TM, TF, IMP and their later revisions), then a word that is 8 for the SGI chips and 3 and 2 for the two commercial parts (**inferred:** the instruction-register length), a pointer to `kona_jtag_ivalues` and further per-chip constants. The names give the chip and revision: HIP1 and HIP2 host interfaces, GED1 and GED1B distributors, IMP8, IMP8D and IMP9 image processors |
| `kona_jtag_ivalues` | 0x04041c18 | **Established.** 16 byte values (0x00, 0x10, 0x20 ... 0xff) the chip-type records point at. **Inferred:** the boundary-scan instruction codes the SGI chips share |
| `KONA_GE_element_list`, `KONA_GE_chain`, `HILO_GE_element_list`, `HILO_GE_chain`, `HILO_ONYX_GE_element_list`, `HILO_ONYX_GE_chain` | 0x040424c4-0x04042dec | **Established.** Geometry-board chains: an element list of {0, chip type, -1, -1} entries (HIP, BEF, distributor) and a chain record {chip count 3, total instruction bits 0x18, -1, -1, element list}. The three variants differ in the HIP and distributor revisions (HIP1/GED1, HIP2/GED1B, HIP1B) |
| `KONA_RM6_element_list`, `KONA_RM6_chain`, `KONA_RM8_element_list`, `KONA_RM8_chain`, `HILO_RM7_element_list`, `HILO_RM7_chain`, `HILO_RM9_element_list`, `HILO_RM9_chain`, `HILO_RM11_element_list`, `HILO_RM11_chain` | 0x04041de8-0x04043204 | **Established.** Raster-board chains in the same form (0x22 or 0x18 chips) for the raster-manager revisions the names give (RM6, RM7, RM8, RM9, RM11) |
| `KONA_DG4_2VOC_element_list`, `KONA_DG4_2VOC_chain`, `KONA_DG4_8VOC_element_list`, `KONA_DG4_8VOC_chain`, `HILO_DG5_2VOC_element_list`, `HILO_DG5_2VOC_chain`, `HILO_DG5_8VOC_element_list`, `HILO_DG5_8VOC_chain` | 0x040421ac-0x04042c74 | **Established.** Display-board chains for the DG4 and DG5 boards with two or eight channel chips (VOC) |
| `jtag_chain`, `jtag_chain_hilo`, `jtag_chain_hilo_lite`, `jtag_chain_hilo_ir4` | 0x040459f0-0x04045a98 | **Established.** Whole-pipe chain maps: pairs {scan-chain number, chain record}, for example `jtag_chain` = chain 1 the DG4 display board, chains 4-7 four RM6 raster boards, chain 8 the geometry board. `init_kona_jtag_chain` chooses among them. The HILO maps use the DG5 display board and RM7 (`jtag_chain_hilo`), RM8 (`_lite`) or RM11 (`_ir4`) raster boards; since the firmware refuses to mix "InfiniteReality4 RMs" with others, RM11 is the InfiniteReality4 raster board (**inferred** from the map name and that message) |
| `dg_8voc_scan_chain` | 0x04045ad0 | **Established.** A pointer to `KONA_DG4_8VOC_chain` |
| `current_chain`, `cur_chain` | 0x04045ad4, 0x04045dd8 | **Established.** The chain the scan routines and the `knic_*` routines are using now |
| `jt_arm_regs` | 0x04043218 | **Established.** The table `jt_reg_init`, `jt_reg_read` and `jt_reg_write` index by register number (first words 0x1bf, 0x13, 0x20, 0, 0x1f). **Inferred:** per register its chip and its position in the scan vector |
| `v0` | 0x0408ce34 | **Established.** A 1 KB bit-vector buffer the scan routines shift through; `board_id()` fills it with 0xa8 before a read |
| `board_id()` | 0x0c01ab38 | **Established.** Selects a chain and shifts out its identification bits into `v0`; `rm_board_id` and `ge_board_id` are thin wrappers |
| `rm_board_id` | 0x0c01aba0 | see `board_id()` |
| `jt_vector_to_int` | 0x0c01ac18 | **Established.** Packs four bytes of a scan vector into one word (little-endian order); no caller in the image |
| `rmcode` | 0x04045b18 | **Established.** Five words, one per raster-board slot: a code `init_rm_jtag` fills and the `config_imp*_jtag` routines pass to the image processor |
| `config_imp_jtag` | 0x04045b2c | **Established.** Function pointer set to one of `config_imp8_jtag`, `config_imp8d_jtag`, `config_imp9_jtag` by the image-processor revision found |
| `config_imp8_jtag`, `config_imp8d_jtag`, `config_imp9_jtag` | 0x0c01afd8, 0x0c01b974, 0x0c01b824 | **Established.** Write the image-processor chip (code 0x34, or 0x39 for IMP8D) configuration registers over the scan chain (`jt_select_chip`, `jt_reg_write`, `jt_flush`) with the slot's `rmcode` |
| `bef_tbus_redirect` | 0x0c01d0c8 | **Established.** Called from `arm_slop`: selects the BEF chip (code 0x13) on the geometry chain and reads and writes its registers 0x29 and 0x230 over the scan chain. **Inferred** from the name: points the BEF's raster-bus output somewhere else for a test |
| `tbus_redirect` | 0x04045be4 | **Established.** A table of increasing values 0, 0x19, 0x21, 0x32, 0x50 ... used with `bef_tbus_redirect` |
| `pinfo` | 0x04040270 | **Established.** Pointer to the board-information block `init_config`, `init_ge_jtag` and `init_rm_jtag` fill |
| `crc8`, `oddparity` | 0x04045c58, 0x04045d58 | **Established.** 256-entry tables for the serial-number devices: the CRC-8 table (first bytes 0x00, 0x5e, 0xbc, 0xe2, the Dallas 1-Wire polynomial) and an odd-parity table used for the CRC-16 check (`nic_crc16`, `nic_calc_crc`) |
| `last_sampled_value`, `dg_shift` | 0x04045ddc, 0x04045de0 | **Established.** State words of the `knic_*` bit-bang routines |
| `NIC_no_sleep_delay_threshold`, `NIC_channels`, `NIC_clock_mhz`, `NIC_rm_nic`, `NIC_rm_config` | 0x04045de4-0x04045df8 | **Established.** Serial-number reading parameters: `extract_nic_ser_nums` takes `NIC_clock_mhz` from a per-chain table (above 45 it caps `NIC_no_sleep_delay_threshold` at 4); `init_config` reads the channel count and the raster-board values |
| `pgmclr()`, `databit()`, `waitclr()`, `chkframe()`, `chkdone()` | 0x0c012644-0x0c01272c | **Established.** The steps `DoDGRqstLoadPabXilinx` uses to load an FPGA on the display board through the register at 0x609400 (data bit) and 0x609800 (status, bit 0 = done): pulse program and wait for clear, clock one data bit, check frame and done |
| `ungray()` | 0x0c01a3e4 | see the start-up table |

### Memory reservation and swap

**Established** (the `reserve`, `swapout`, `swapin` and `copydown` tables at 0x040494d8-0x04049508, each four function pointers). `arm_mem_reserve`, `arm_mem_swapout`, `arm_mem_swapin` and `arm_mem_copydown` take a memory kind 0-3 from the command and call entry n of their table: 0 ARM memory, 1 a second ARM area ("sarm"), 2 geometry-engine memory, 3 texture memory. The base of each area is in `arm_mem_base`, `sarm_mem_base`, `ge_mem_base`, `tex_mem_base` (0x040494c8-0x040494d4), set by `mem_init`.

| Symbol | Address | What it is |
|---|---|---|
| `mem_reserve_arm`, `mem_reserve_sarm`, `mem_reserve_ge`, `mem_reserve_tex` | 0x0c023b3c, 0x0c023d28, 0x0c023ef8, 0x0c0241e0 | **Established.** Check the key, page number and page count of a reservation ("invalid key" message otherwise) and record it; the engine form also writes engine memory, the texture form a raster register (0x0146101a) |
| `mem_swapin_arm`, `mem_swapin_sarm` | 0x0c023c54, 0x0c023e24 | **Established.** Write a host copy back into pipe memory by list DMA: 0x200030 with the direction bit set, 0x200034, 0x200038, then poll 0x200040 bit 2 ([arm1_firmware.md](arm1_firmware.md#control-and-status-registers)) |
| `mem_swapin_ge`, `mem_swapout_ge` | 0x0c0240f0, 0x0c02408c | **Established.** Move engine memory by sending engine handlers (port 0x474 operand) and, for swap-in, the pass-through counter and `waitForDH` |
| `mem_swapin_tex`, `mem_swapout_tex` | 0x0c0242fc, 0x0c024284 | **Established.** Texture memory moves as a texture download or read-back: `tex_swapin` or `tex_swapout` between raster-register set-up writes |
| `mem_copydown_arm`, `mem_copydown_sarm` | 0x0c023cd8, 0x0c023ea8 | **Established.** Copy within the reserved area (no hardware access) |
| `mem_copydown_tex` | 0x0c024374 | **Established.** Returns at once: texture memory has no copy-down |
| `arm_mem_swapout_toobig` | 0x0c024430 | **Established.** The swap-out of a block larger than one transfer, split into pieces (`__rt_sdiv`), through the `swapout` table |
| `sdram_reserved`, `sdram_length` | 0x04040274, 0x04040278 | **Established.** Zero in the image; **inferred** the reserved part of the ARM's SDRAM |
| `sdram_scratch` | 0x0406ce34 | **Established.** A 128 KB zero-initialised buffer used by the display-generator command handler, `DoDGRqstAutoInit` and the EEPROM routines (`eeprom_read`, `eeprom_write`, `eeprom_load`, `arm_eeprom_op`) as a staging area |

### Saved context and exception state

| Symbol | Address | What it is |
|---|---|---|
| `stored_gedstate`, `stored_gefifo`, `stored_geregs`, `saved_stack`, `saved_regs`, `pHipState` | 0x04045e80-0x04045e94 | **Established.** Pointers `init_arm` sets to the save areas below (and `saved_regs` to the register save area the exception stubs and `print_savedregs` use) |
| `stored_gedstate_mem`, `stored_gefifo_mem`, `stored_geregs_mem`, `saved_stack_mem`, `saved_hipState_mem` | 0x0408d234, 0x0408d640, 0x0408f64c, 0x0408f718, 0x04045e4c | **Established.** The save areas themselves: distributor state, engine FIFO contents, engine registers, the ARM stack and the host-interface state words of `deactivate_hip` |
| `aborted`, `abortInstrSkip`, `load_nopipe`, `geFifoEntry`, `geRegsEntry` | 0x04045e98-0x04045ea8 | **Established.** Zero-initialised words beside the pointers; no code in the image names them directly. **Inferred** from the names: debugger and simulator flags and save-area cursors |
| `context` | 0x04045eac | **Established.** The context table `context_init` fills (0x1130 bytes) |
| `gecomm_poff`, `gecomm_len` | 0x04046fdc, 0x04046fe0 | **Established.** The page offset and length of the engine-to-host communication record, next to `gecomm_pnum` ([arm1_firmware.md](arm1_firmware.md#how-the-arm-answers-the-host)) |
| `f3_war` | 0x04046fe4 | **Established.** A flag `init_arm` sets (initially 1). **Inferred:** a hardware work-around switch |
| `fault_cookie` | 0x040516ec | **Established.** A word `fault()` reads before printing |
| `trash` | 0x04040280 | **Established.** A scratch word in the data block |
| `frustum_index` | 0x0404027c | **Established.** Used by `matrix_passthru` when it restores the matrix tokens' routed entries |
| `backdoor_ged_loading`, `backdoor_geif_loading`, `backdoor_ge_loading` | 0x04040264-0x0404026c | **Established.** Three flags initialised to 1. **Inferred** from the names: whether the distributor program, the engine interface table and the engine program are loaded by a back door (the simulator) rather than through the ports |
| `REV_REL`, `REV_VER` | 0x04067ed4, 0x04067ed8 | **Established.** Pointers to the build strings "sherwood-root" and "0607201829" that `init()` prints in its banner |

### Texture management

**Established.** The texture handlers ([arm1_firmware.md](arm1_firmware.md#the-306-arm-run-tokens-by-kind), group texture) keep a 513-entry cache `tex_cache` (0x0409086c, 8 bytes an entry) of texture-memory table entries indexed by the load or bind number the driver passes ([docs/opengl.md](../docs/opengl.md)).

| Symbol | Address | What it is |
|---|---|---|
| `flush_texload_ids`, `flush_texbind_ids` | 0x0c025138, 0x0c02522c | **Established.** Mark every cache entry invalid (word 0 = -1) |
| `update_texload_id`, `update_texbind_id` | 0x0c025168, 0x0c025258 | **Established.** Advance the 20-bit generation number at r8 + 0x8b8 (load) or r8 + 0x8bc (bind); when it wraps to zero, flush the cache. Then send the number to the raster boards (`mgesi_TbusRegWrite`, operand 0x1002 at port 0x474) and queue the entry with `mgesi_FillTMLoadFifo`. Called by `arm_texload_id`, `arm_texbind_id` and the texture swap paths |
| `set_bicubic_or_3d_addr` | 0x0c025490 | **Established.** Writes one raster-bus word built from a two-word base address (bits 8-23 of the second word, flags 0x10040000, low byte in bits 24-31) with `tbus_write_word`; used when binding 3D and bicubic textures |
| `set_3d_mipmap_addr` | 0x0c0254bc | **Established.** The same for every level of a 3D mipmap (115 instructions of per-level address arithmetic) |
| `tex_swapout` | 0x0c02c1ac | **Established.** Reads a texture back to the host for `mem_swapout_tex`: refreshes the load id, then `getteximage` with the fixed pack state `GlobalTexPackState` and a level size from `log2` |
| `tex_swapin` | 0x0c02b6b0 | **Established.** The reverse for `mem_swapin_tex`: `drawtexels` with `GlobalTexUnpackState`, then `update_texbind_id` |
| `drawtexels` | 0x0c02b8cc | **Established.** The body of `arm_drawtexels` (token `DRAWTEXELS`): parse the host image (`ParseHostImage`), pick the path (`ResolveDrawPath`), position the sub-load (`SetupSubtexload`, `SetupSubtexloadPos`), apply `SetTextureWorkaround` and stream the texels (`SendPixelsToPipe`) |
| `getteximage` | 0x0c02c358 | **Established.** The body of `arm_getteximage`: `ParseHostImage`, `ResolveReadPath`, `SetupTexRead`, then the packer set-up and `__glkonSendPixelsToHost` |
| `SetTextureWorkaround` | 0x0c02cb94 | **Established.** Adjusts a texture download's size by a division before it starts; the name marks it as a hardware work-around. What it works around is **unknown** |
| `ResolveTextureInternalFormat` | 0x0c036424 | **Established.** `arm_texsetup` step: maps the GL internal format to the texture-memory format kept in `texState` |
| `PixRM_TextureLoadSetup` | 0x0c036570 | **Established.** `arm_texsetup` step: writes the raster registers for a texture load (address words 0x01407fc5, 0x01417fc3, 0x01427fc2, 0x01437fc1, 0x01447fc4, 0x01455001 through descriptor 0x58404800) and the raster-bus words |
| `SetupRM_TextureBind` | 0x0c0367c8 | **Established.** `arm_texbind` step: writes the bind registers (0x01483fd5, 0x0146101a, 0x01493fd4, 0x014a0c04, 0x014b0c05, 0x014c0c06) using `texFormatConvert` |
| `GetTexManageBindParam` | 0x0c036a10 | **Established.** Reads the bind command's payload words into `texState` |
| `texState` | 0x04095334 | **Established.** Zero-initialised record of the texture being set up or bound (164 bytes) |
| `texComps` | 0x04049520 | **Established.** 63 words, one per texture internal-format index: its component count (1-4). Used by the bind handlers and `initTextureState` |
| `modulateTevFunc`, `decalTevFunc`, `blendTevFunc`, `replaceTevFunc`, `addTevFunc`, `addSignedTevFunc` | 0x0404961c-0x04049680 | **Established.** Five words each, one per texture base format, giving the code `initTextureState` loads for that texture-environment mode (for example modulate 0, 2, 0x20, 0x22, 0x22; add 0, 2, 0x50, 0x52, 0x55). **Inferred:** the low nibble selects the colour operation and the high nibble the alpha operation |
| `nComponents`, `texFormatLookup` | 0x040516f0, 0x04051708 | **Established.** Six words each, used by `PixValidateTexColorTable`: the component count and the texture format code for each colour-table format |
| `TexRPacket`, `TexTFType` | 0x0404a244, 0x0404a26c | **Established.** Ten words each, read by `setFromTM()` for a texture-memory source: the raster-bus packet size and the texture-filter chip's type code per format |
| `setFromTM()` | 0x0c028ac8 | **Established.** Fills the source description of a pixel path that reads from texture memory from those two tables |
| `TexReadWar`, `HugeTexRead`, `HugeTexReadLM` | 0x0c029428, 0x0c029770, 0x0c029638 | **Established.** Texture read-back paths of `__glkonSendPixelsToHost`: set the distributor's raster-bus register (`SetGEDRbusReg`), start a texture-memory read (`StartTexRead`) and the raster bus (`StartRbus`), in pieces when the texture is too large for one pass ("Huge"); `TexReadWar` is the work-around form and `HugeTexReadLM` the form for one line mode |
| `SetupTexRead`, `StartTexRead` | 0x0c034464, 0x0c034630 | **Established.** Program the raster boards to read texture memory (raster register 0x013f3ff8 and raster-bus words) and start the read |
| `SetupSubtexloadPos` | 0x0c0343a0 | **Established.** Writes the position of a texture sub-load to the raster boards |

### Pixel path

**Established.** Pixel transfers (`DRAWPIXELS`, `READPIXELS`, `COPYPIXELS`, texture loads and reads, colour tables, convolution filters, bitmaps and the polygon stipple) are built from five stages chosen by a path number. The table `path` (0x04049698) holds ten records of five routine pointers, in this order: set up the raster boards, compute how the data is split across the engines, set up the distributor, load the engine pipeline, and finish.

| Path | Raster set-up | Split | Distributor | Engine pipeline | Finish |
|---|---|---|---|---|---|
| 0 colour stream | `SetupRM` | `CompCommonColorStream` | `SetupGED_ColorStream` | `SetupGE_ColorStream` | `PixEndRGBStream` |
| 1 luminance stream | `SetupRM` | `CompCommonLumStream` | `SetupGED` | `SetupGE_LuminanceStream` | `PixEndRGBStream` |
| 2 colour, line at a time (convolution) | `SetupRM` | `CompCommonColorLine` | `SetupGED` | `SetupGE_ColorLine` | `PixEndRGBLine` |
| 3 luminance, line at a time | `SetupRM` | `CompCommonLumLine` | `SetupGED` | `SetupGE_LuminanceLine` | `PixEndRGBLine` |
| 4 colour short circuit | `SetupRM` | `CompCommonColorStream` | `SetupGED_ColorStream` | `SetupGE_ShortCircuit` | `PixEndRGBStream` |
| 5 luminance short circuit | `SetupRM` | `CompCommonLumStream` | `SetupGED_ColorStream` | `SetupGE_ShortCircuit` | `PixEndRGBStream` |
| 6 colour index | `SetupRM` | `CompCommonIndexStream` | `SetupGED` | `SetupGE_IndexStream` | `PixEndRGBStream` |
| 7 depth | `SetupRM` | `CompCommonLumStream` | `SetupGED` | `SetupGE_DepthStream` | `PixEndRGBStream` |
| 8 stencil | `SetupRM` | `CompCommonIndexStream` | `SetupGED` | `SetupGE_StencilStream` | `PixEndRGBStream` |
| 9 FFT | `SetupRM_FFT` | `CompCommon_FFT` | `SetupGED_FFT` | `SetupGE_FFT` | `PixEnd_FFT` |

The engine pipeline is a chain of engine modules (the `mmo_*` slots of [ge.md](ge.md)). Each `Add*` routine appends one module and its parameters, each `U_*` routine writes a module's parameters into engine control memory (`WriteCram`) or external memory (`WriteEram`), and the last module of a chain is an output module chosen from a record table (below). **Inferred:** "short circuit" paths skip the floating-point stages and move integer data straight to the output, since their modules (`mmo_short*`) convert packed integers only.

### Set-up and state

| Symbol | Address | What it is |
|---|---|---|
| `InitPixState` | 0x0c026cb8 | **Established.** Per-context pixel defaults: calls `InitPixGED`, `InitFbState`, `InitFastState`, `InitPixelGLState`, `InitSlowState`, `InitInputState`, `InitPolygonStippleState`, `InitColortableState`, `InitHistogramState`, `InitDivModLut`, `BuildStreamWramModel` |
| `InitFastState`, `InitInputState`, `InitSlowState`, `InitPixelGLState` | 0x0c026e68, 0x0c026eac, 0x0c026edc, 0x0c0271c4 | **Established.** Defaults for the pixel transfer, pixel store and pixel map state in the r8 shadow; `InitSlowState` also sets the default convolution kernel (`__glkonSetDefaultKernel`) and `InitPixelGLState` turns pixel transform on |
| `InitFbState`, `SetFbReadState` | 0x0c0273cc, 0x0c027360 | **Established.** Framebuffer description for drawing and for reading (`arm_readbuffer_config`); the first writes raster register 0x0132080d |
| `InitPixelGlobal`, `InitGeTypeFormatTable` | 0x0c02cc30, 0x0c02710c | **Established.** Once at start-up (`init_ge`): build `GeTypeFormatTable` from four static tables and set the engine-side pixel globals |
| `InitPixGED` | 0x0c033b40 | **Established.** Distributor defaults for pixel work, by raster-board count |
| `InitColortableState`, `InitHistogramState`, `InitPolygonStippleState`, `InitPolygonStippleGEState` | 0x0c03ddb4, 0x0c03f67c, 0x0c02cae4, 0x0c0328c8 | **Established.** Defaults for colour tables, the histogram (clears it with `reset_histogram`), and the polygon stipple (writes `initStipplePat` to engine memory) |
| `SetDB` | 0x0c026874 | **Established.** Compares the pixel-path flag word (r8 + 0xc88) and format bytes with the copies cached at r8 + 0xc70 and 0xc7c and sets dirty bits in r8 + 0x908 and 0x90c for what changed, so the next transfer reloads only those stages |
| `resolveColorPath` | 0x0c027e34 | **Established.** The common part of `ResolveDrawPath`, `ResolveReadPath` and `ResolveCopyPath` (422 instructions): picks the path number and the modules from the formats, the transfer state and the enables |
| `resolveVideoPath` | 0x0c028a1c | **Established.** The same for video sources (`commonResolve`, then `resolveColorPath`) |
| `__glkonSetFromFB` | 0x0c028b0c | **Established.** Fills the source description of a path that reads the framebuffer |
| `__glkonFbToRbusFmt`, `__glkonGetTbusFmt` | 0x0c0276e0, 0x0c0276f8 | **Established.** Look-ups in `FBFmt2RbusTable` and `HostFmt2TbusTable` |
| `__glkonGetPromotedSize` | 0x0c036c20 | **Established.** Look-up in `promotedSizeTable`: the working size of a convolution kernel |
| `SetupCopyConvolve` | 0x0c036ec8 | **Established.** Source set-up for the copy forms of the convolution filters |
| `ResolveColortablePath` | 0x0c03e824 | **Established.** Path choice for `arm_colortable` |
| `lut_index`, `pixelmap_index`, `internalformat_index` | 0x0c03dec8, 0x0c03df58, 0x0c03e008 | **Established.** Map a GL colour-table target, pixel-map name or internal format to an index (the last raises invalid-enum) |
| `push_colormatrix`, `pop_colormatrix` | 0x0c02cb28, 0x0c02cb60 | **Established.** The colour-matrix stack, called by `arm_pushmatrix` and `arm_popmatrix` in colour-matrix mode |
| `f2i()` | 0x0c035988 | **Established.** Float-to-integer helper of `PixelRestore` and `XPixelRestore` |

### Splitting the data across engines

| Symbol | Address | What it is |
|---|---|---|
| `CompCommonColor`, `CompCommonLum` | 0x0c029d4c, 0x0c029e3c | **Established.** Work out, from `GeTypeFormatTable` and `DivModFunc`, how many pixels each engine takes per packet for colour and luminance data |
| `CompCommonColorStream`, `CompCommonLumStream`, `CompCommonIndexStream` | 0x0c02a074, 0x0c02ab34, 0x0c029f14 | **Established.** The split stage of the stream paths: packet sizes from `numPixelPerTBUSPacket`, written into the engine working-memory model `wramBuf` |
| `CompCommonColorLine`, `CompCommonLumLine` | 0x0c02a910, 0x0c02ac30 | **Established.** The split for line-at-a-time paths (convolution), with `CompLineDist` and `NumEolGeneratedBytes` |
| `CompCommon_FFT` | 0x0c02abec | **Established.** The split for the FFT path |
| `CompLineDist`, `GetLineDist`, `ResolveNumGEs` | 0x0c02a3f0, 0x0c02a1e4, 0x0c02a1b8 | **Established.** How many lines each engine takes for a given kernel size and engine count (`ConvolveTable`) |
| `__initlinemodedist` | 0x0c02a530 | **Established.** At start-up (`init_arm`), precompute the line-mode limits `LMLimit` and `LMLimit48` for every valid combination of `validConvType`, `validPixPerTbus` and `validRPacket` |
| `NumEolGeneratedBytes` | 0x0c02a858 | **Established.** Bytes the engines add at the end of each line |
| `ConvolveReduce`, `PadGeVOutcomp` | 0x0c02aa90, 0x0c02aad0 | **Established.** Size corrections for convolution output (border reduction, padding to whole engine packets) |
| `DivModFunc`, `loadDivModEntry`, `InitDivModLut` | 0x0c026e28, 0x0c026d54, 0x0c026db0 | **Established.** Quotient and remainder of fixed constants (6, 12, ...) by an engine or pixel count: precomputed in `divModLut` for counts 0-128, computed and cached beyond |
| `BuildStreamWramModel` | 0x0c026cf4 | **Established.** Fills `wramBuf` with the fixed engine working-memory addresses the stream paths use (0x80c8, 0x8528, 0x852c ...) |

### Distributor and raster-bus set-up

| Symbol | Address | What it is |
|---|---|---|
| `SetupGED` | 0x0c033738 | **Established.** The distributor stage: `SetupFormatter`, `SetupVbus` or `SetupRbus`, `SetupUnpacker`, `SetupReorderer`, then `SetupPTULine` or `SetupPTUStream` |
| `SetupRbus`, `SetupRbus_FFT`, `SetupVbus` | 0x0c0329c0, 0x0c0337e4, 0x0c032b9c | **Established.** Program the distributor's raster-bus (or video-bus) input for the number of raster boards (`NumRMBoards`) |
| `StartVbus`, `XStartRbus` | 0x0c032c30, 0x0c0358e0 | **Established.** Start a video-bus transfer, or the X form of the raster-bus transfer (descriptor 0x58200020), into the distributor; `StartRbus` is the general raster-bus form |
| `SetGEDRbusReg` | 0x0c0328e0 | **Established.** One distributor raster-bus register write, for the texture read-back paths |
| `SetupFormatter`, `SetupUnpacker`, `SetupReorderer` | 0x0c032dc0, 0x0c033180, 0x0c0332d8 | **Established.** Program the distributor's pixel formatter (`BgnLineOffsetTable`, `F4thCompTable`), unpacker (`UnpackerTable`, `UnpackedTypeTable`, `UnpackednumByteInCmpTable`) and byte reorderer |
| `SetupPTUStream`, `SetupPTULine` | 0x0c0333c0, 0x0c033580 | **Established.** Program the distributor's pixel transfer unit with descriptors 0x58200020, 0x58600020 and 0x58a00020, using `fbRbusIs16Bit` and `tmRbusIs16Bit` |
| `SetGedVideoBoard` | 0x0c032ccc | **Established.** Distributor set-up for a video-board source, for `SetVideoFormat` |
| `RestoreDistMode` | 0x0c033b28 | **Established.** Puts the distributor back into geometry mode after a pixel transfer; every `PixEnd*` routine calls it |
| `CompPixGedReg`, `CompFormatter`, `CompUnpacker`, `CompReorderer`, `CompPtu` | 0x0c034cfc, 0x0c034f68, 0x0c035020, 0x0c03506c, 0x0c035108 | **Established.** Compute the same distributor register values into `GedRegs` without writing them (for the X server's cached pixel set-up, `CompGedReg`) |
| `CompBMGedReg` | 0x0c034da4 | **Established.** The bitmap form, which writes the three transfer-unit descriptors directly |
| `WrapScreenCord` | 0x0c033b84 | **Established.** Wraps a screen coordinate for `SetupReadback` |
| `SetupReadback` | 0x0c033bbc | **Established.** Raster-board set-up for reading the framebuffer (read, copy and copy-texture paths) |
| `start_pixel_rdata`, `start_pixel_rdata_noincr`, `finish_pixel_rdata` | 0x0c022614, 0x0c0226b4, 0x0c022754 | **Established.** The pixel forms of `start_rdata` and `finish_rdata`: program the read-back registers (0x440-0x477, [arm1_firmware.md](arm1_firmware.md#how-the-arm-answers-the-host)) with `tbus_regwrite` or `tbus_regwritenoincr` before pixels go back to the host |

### Engine pipeline: set-up, modules and parameters

| Symbol | Address | What it is |
|---|---|---|
| `SetupGE_ColorStream`, `SetupGE_LuminanceStream`, `SetupGE_StencilStream`, `SetupGE_DepthStream`, `SetupGE_Bitmap`, `SetupGE_ShortCircuit`, `SetupGE_Convolution` | 0x0c02cce0-0x0c02d57c | **Established.** The engine stage of each path: call the matching `load*Path` routine to build the module chain, then `SetupGE_PerRect` for the rectangle |
| `InitModulePath` | 0x0c02ccc4 | **Established.** Starts an empty module chain; every `load*Path` calls it first |
| `ReloadVolatileConvState`, `LoadKernel`, `RestoreKernel`, `__glkonSetDefaultKernel` | 0x0c02cd3c, 0x0c02ee5c, 0x0c02efbc, 0x0c02ede0 | **Established.** Convolution kernel handling: copy the kernel between engine external memory (`ConvolveEramLoc`) and control memory (`cramKernelLoc`, saved in `saveRestoreCram`) around a line-mode transfer; the default kernel is `defaultKernel` |
| `loadStencilPath`, `loadShortCircuitPath` | 0x0c02dd90, 0x0c02e3f4 | **Established.** Module chains for stencil and short-circuit transfers; both end with `mmo_PixStreamNextGE` or its `_BEFWAR` variant |
| `loadInputExpandRGBA`, `loadInput1Cmpnt`, `loadComplexInput` | 0x0c02e7b0, 0x0c02eb10, 0x0c02ecfc | **Established.** The input part of a chain: unpack and expand to RGBA, one component, or complex (FFT) data, using `int2FloatParams` |
| `AddOutputI`, `AddOutput1Cmpnt`, `AddRGBALut`, `AddDispatch` | 0x0c02dbe8, 0x0c0302dc, 0x0c02f87c, 0x0c02f82c | **Established.** Append the colour-index output module (from `CIoutputModuleTable` and the `CI16ToFB*`, `S16ToFB`, `FBToBitmap16*` records), the one-component output module (`OneCmpntoutputModuleTable`), the RGBA look-up module and a dispatch module |
| `U_uExtract`, `U_uF2I`, `U_uDecompress`, `U_uHipSetter`, `U_uShiftAdd`, `U_uI2F`, `U_uCopyEramToWram`, `U_uSignScaleBias`, `U_uExpand`, `U_uScaleBias`, `U_uScaleBias1Cmpnt`, `U_uPostClrMtrxScaleBias`, `U_uPostClrMtrxScaleBias1Cmpnt`, `U_uClamp`, `U_uLut`, `U_mLutCI`, `U_uCompOrder`, `U_uSumRGB2L`, `U_uArbClamp`, `U_uHistogram`, `U_mColorMatrix`, `U_uConvolutionOutput`, `U_uPolygonStippleOutput` | 0x0c03092c-0x0c031854 | **Established.** The parameter writers of the modules their `Add*` caller appends (named alike: `U_uScaleBias` for `AddScaleBias` and so on). Each copies its parameter block (`scaleBiasParams`, `clampParams`, `lutParams`, `int2FloatParams` and the GL state) into engine control or external memory |
| `U_mPixout_8_16`, `U_mPixout_2_4`, `U_mPixout_32`, `U_mPixout_RGB_in_RGBA`, `U_mPixoutI_4_8`, `U_mShortWord`, `U_mShort8_16`, `U_mShort4_8`, `U_mShort_Complex_To_8`, `U_mShort_Complex_To_16` | 0x0c03188c-0x0c032014 | **Established.** Parameter writers of the output modules, reached only through the output-module records below. They copy the record's control-word lists into control memory (`Cache`, `WriteCram`) and, for the packing modules, the last engine's state (`U_loadLastGEState`) |
| `U_loadLastGEState`, `Cache` | 0x0c031ca8, 0x0c0327a8 | **Established.** Helpers of the output writers: the state of the last engine in a split, and a copy of n words into the ARM's staging area at r8 + 0xc5c |
| `U_uConv5x5S`, `U_uFastConv5x5S`, `U_uConv5x5G`, `U_uConv7x7G`, `U_uConv3x3G` | 0x0c032084, 0x0c032228, 0x0c0323b8, 0x0c0325b0, 0x0c032080 | **Established.** Convolution parameter writers chosen through `UConvolveTable` (pairs of engine slot and writer: `mmo_GeneralConvolve3x3_124` ... `mmo_SepConvolve7x7_124`). `U_uConv3x3G` returns at once; `U_uFastConv5x5S` serves `AddFastSep5Convolution` when `bFastSepConv5` is set |

### Finishing a transfer

| Symbol | Address | What it is |
|---|---|---|
| `PixEndRGBStream` | 0x0c0269b0 | **Established.** End of the stream paths: `CommonPixEnd`, raster register 0x0167140f, `RestoreDistMode` |

### Video sources

| Symbol | Address | What it is |
|---|---|---|
| `videoCopyPixels`, `videoCopyTexImage`, `videoReadPixels` | 0x0c02bd60, 0x0c02c0f8, 0x0c02c6d4 | **Established.** The forms of `CopyPixels`, `CopyTexImage` and `ReadPixels` whose source is the video input (selected by `arm_video_source`): `resolveVideoPath`, then `StartVbus` or the read-back; the read form also sends `mgebi_Texture` and raster register 0x011d3fcc |
| `SetVideoFormat` | 0x0c02bdfc | **Established.** Records the video source format and programs the distributor (`SetGedVideoBoard`); called by `arm_video_source` and `arm_slop` |
| `EnableVideoCopy`, `EnableInterlace` | 0x0c02bf28, 0x0c02bf34 | **Established.** Diagnostic switches reached from `arm_slop`: set a flag, or write the interlace word to engine memory |

### X server pixel commands

| Symbol | Address | What it is |
|---|---|---|
| `XSetupGedRead` | 0x0c035598 | **Established.** Distributor set-up for `arm_x_pix_copy` and `arm_x_pix_read`, by raster-board count |
| `CompTF`, `XSetTF` | 0x0c0356d4, 0x0c03573c | **Established.** Compute and write the texture-filter chip registers (`tfRegs`) for X pixel commands |
| `XSetPacker` | 0x0c035830 | **Established.** Packer register for `arm_x_pix_setup` |
| `SendXToHost` | 0x0c035874 | **Established.** Read-back for `arm_x_pix_read`: `start_pixel_rdata`, `XStartRbus` |

### Output-module records and conversion lists

**Established** (the record tables and the routines that read them). An output module is described by a 7-word (28-byte) record: the engine slot of the module, the slot of its no-clamp variant (`NC`), the ARM routine that writes its parameters (a `U_m*` routine), a pixel tag table and a texel tag table (`ptagBig` or `ptagSmall`, `ttagBig` or `ttagSmall`), a pointer to a conversion record (`cvmg_*`), and a flag that is 1 with the "Big" tag tables. A record whose slots are `mges_TBUS_1` and whose other words are zero marks a format with no output module. For example the second record of `RGBAoutputModuleTable` is {`mmo_Pixout_8_16`, `mmo_Pixout_8_16NC`, `U_mPixout_8_16`, `ptagBig`, `ttagBig`, `cvmg_8_16_RGBA8`, 1}.

A conversion record is a list of {word count, pointer to a word list}: `cvmg_8_16_RGBA8` = {16, `RGBA8_8_16`, 16, a second list}. The word lists are the control words the `U_m*` routine copies into the module's engine control memory. **Inferred:** they program the module's packer for one framebuffer or texel format; the format is in the list name (RGBA8, RGB10A2, LA16, RGBA4, RGB5A1, R5G6B5, LA8, 16- and 32-bit luminance and depth split into four passes `_1st` to `_4th`, the texture formats `TEX_L4` to `TEX_A16`, and `_F` for float sources), and the suffix names the module family (`_8_16` for `mmo_Pixout_8_16`, `_2_4`, `_32`, `_4_8`, `RGB_in_RGBA`).

| Symbols | Address range | What they are |
|---|---|---|
| `RGBAoutputModuleTable`, `OneCmpntoutputModuleTable` | 0x0404c28c, 0x0404c564 | **Established.** 26 records each, one per destination format index, for RGBA and one-component data (`AddOutput`, `AddOutput1Cmpnt`) |
| `CIoutputModuleTable` | 0x0404d110 | **Established.** Three records for colour-index output: 8-bit and 16-bit (`mmo_PixoutCI_4_8`) and 32-bit (`mmo_PixoutMerge2_4C`) |
| `ShortCircuitOutput` | 0x0404cb14 | **Established.** 30 records for the short-circuit paths (`mmo_shortpass8W`, `mmo_short8to4`, `mmo_short16to8`, `mmo_shortLA8toL12A4`, `mmo_short8toRGB5A1`, `mmo_shortBGRApass`, `mmo_Short_Complex_To_8` and others) |
| `BitmapOutput` | 0x0404c83c | **Established.** 26 records, only one used (`mmo_PixoutCI_4_8` with `cvmg_4_8_BITMAP8`) |
| `LUMoutputModuleTable` | 0x04094ff4 | **Established.** Zero-initialised; the luminance table built at run time |
| `RGB32outputModule`, `RGB32FoutputModule`, `RGBA32FoutputModule`, `LA32outputModule`, `LA32FoutputModule`, `PACK_332OutputModule`, `Z322ndOutputModule`, `Z323rdOutputModule`, `Z324thOutputModule`, `Z32F1stOutputModule`, `Z32F2ndOutputModule`, `Z32F3rdOutputModule`, `Z32F4thOutputModule`, `L8_2ndOutputModule`, `L8_3rdOutputModule`, `L8_4thOutputModule`, `L16_2ndOutputModule`, `L16_3rdOutputModule`, `L16_4thOutputModule` | 0x0404c078-0x0404c270 | **Established.** Single records for formats that need their own module or several passes (the second to fourth pass of 32-bit depth and of split luminance) |
| `CI16ToFBNorOvr8`, `CI16ToFBNorOvr12`, `CI16ToFBPup2`, `S16ToFB`, `FBToBitmap16`, `FBToBitmap16Rev` | 0x0404d164-0x0404d1f0 | **Established.** Single records `AddOutputI` uses for colour-index and stencil writes into the normal, overlay and pop-up planes, and for reading the framebuffer as a bitmap |
| `cvmg_8_16_RGBA8`, `cvmg_8_16_RGB10A2`, `cvmg_8_16_LA16`, `cvmg_8_16_RGBA4`, `cvmg_8_16_RGB5A1`, `cvmg_8_16_R5G6B5`, `cvmg_8_16_LA8`, `cvmg_8_16_L16_1st`, `cvmg_8_16_L16_2nd`, `cvmg_8_16_L16_3rd`, `cvmg_8_16_L16_4th`, `cvmg_8_16_TEX_L4`, `cvmg_8_16_TEX_A4`, `cvmg_8_16_TEX_LA4`, `cvmg_8_16_TEX_L8`, `cvmg_8_16_TEX_L12A4`, `cvmg_8_16_TEX_A16`, `cvmg_8_16_Z32_1st`, `cvmg_8_16_Z32_2nd`, `cvmg_8_16_Z32_3rd`, `cvmg_8_16_Z32_4th`, `cvmg_8_16_Z32_F_1st`, `cvmg_8_16_Z32_F_2nd`, `cvmg_8_16_Z32_F_3rd`, `cvmg_8_16_Z32_F_4th`, `cvmg_8_16_RGB8`, `cvmg_2_4_RGBA12`, `cvmg_2_4_RGBA32`, `cvmg_2_4_RGBA32_F`, `cvmg_2_4_RGBA16`, `cvmg_2_4_RGB16`, `cvmg_2_4_LA32`, `cvmg_2_4_LA32_F`, `cvmg_RGB32`, `cvmg_RGB32_F`, `cvmg_32_L8_1st`, `cvmg_32_L8_2nd`, `cvmg_32_L8_3rd`, `cvmg_32_L8_4th`, `cvmg_4_8_BITMAP8`, `cvmg_4_8_I8`, `cvmg_4_8_I16`, `cvmg_4_8_S16ToFB`, `cvmg_2_4_I32`, `cvmg_4_8_CI16ToFBNorOvr8`, `cvmg_4_8_CI16ToFBNorOvr12`, `cvmg_4_8_CI16ToFBPup2`, `cvmg_Comp3_332` | 0x0404be78-0x0404d088 | **Established.** Conversion records of the RGBA, luminance, depth, index and packed (3-3-2) output modules |
| `cvmg_Short_To_4`, `cvmg_Short_To_8`, `cvmg_Short_To_16`, `cvmg_Short_8_To_16`, `cvmg_ShortPassWord`, `cvmg_Short8To16`, `cvmg_ShortBGRATo4`, `cvmg_Short_To_8_Rep2`, `cvmg_ShortBGRATo8`, `cvmg_ShortLA8ToL12A4`, `cvmg_ShortLA16ToL12A4`, `cvmg_ShortToRGB5A1`, `cvmg_ShortBGRAToRGB5A1`, `cvmg_ShortToBitmap16`, `cvmg_ShortToBitmap16Rev` | 0x0404bfb8-0x0404c028 | **Established.** Conversion records of the short-circuit modules |
| `RGBA8_8_16`, `RGB10A2_8_16`, `LA16_8_16`, `RGBA4_8_16`, `RGB5A1_8_16`, `R5G6B5_8_16`, `LA8_8_16`, `L16_1st_8_16`, `L16_2nd_8_16`, `L16_3rd_8_16`, `L16_4th_8_16`, `TEX_L4_8_16`, `TEX_A4_8_16`, `TEX_LA4_8_16`, `TEX_L8_8_16`, `TEX_L12A4_8_16`, `TEX_A16_8_16`, `RGBA12_2_4`, `RGB32_RGB_in_RGBA`, `RGB32_F_RGB_in_RGBA`, `RGBA32_2_4`, `RGBA32_F_2_4`, `LA32_2_4`, `LA32_F_2_4`, `Z32_1st_8_16`, `Z32_2nd_8_16`, `Z32_3rd_8_16`, `Z32_4th_8_16`, `Z32_F_1st_8_16`, `Z32_F_2nd_8_16`, `Z32_F_3rd_8_16`, `Z32_F_4th_8_16`, `RGBA16_2_4`, `RGB8_8_16`, `RGB16_2_4`, `L8_1st_32`, `L8_2nd_32`, `L8_3rd_32`, `L8_4th_32`, `CI_BITMAP`, `I8_4_8`, `I16_4_8`, `CI16_4_8_ToFBOff8`, `CI16_4_8_ToFBOff4`, `S16_4_8_ToFB`, `I32_2_4`, `Comp3_332` | 0x0404b130-0x0404d030 | **Established.** The control-word lists the conversion records point at (16 words for the `_8_16` lists; the first words of `RGBA8_8_16` are 0x00083808, 0x00083008, 0x00082808, 0x00082008) |
| `Short_To_4`, `Short_To_8`, `Short_To_16`, `Short_8_To_16`, `ShortPassWord`, `Short_To_8_Rep2`, `ShortLA8To16`, `ShortBGRATo4`, `ShortBGRATo8`, `ShortLA8ToL12A4`, `ShortLA16ToL12A4`, `ShortToRGB5A1`, `ShortBGRAToRGB5A1`, `ShortToBitmap16`, `ShortToBitmap16Rev` | 0x0404baf0-0x0404bdb8 | **Established.** The control-word lists of the short-circuit records (first words of `Short_To_4`: 0x02043c00, 0x02043800 ...) |
| `ptagBig`, `ptagSmall`, `ttagBig`, `ttagSmall` | 0x0404da88, 0x0404da98, 0x0404c058, 0x0404c068 | **Established.** Four-word tag tables a record points at, used by `X_PixSetupGE` (values 0x30000, 0x30004, 0x30006). **Inferred:** the packet tags the engines put on pixel and texel data, by packet size |
| `cvmg_8`, `cvmg_16`, `cvmg_32`, `cvmg_48`, `cvmg_rgb10_sw`, `cvmg_rgb10_sr`, `cvmg_tbm`, `cvm_spec_8`, `cvm_spec_16`, `cvm_spec_32`, `cvm_spec_48`, `cvm_spec_rgb10_sw`, `cvm_spec_rgb10_sr`, `cvm_spec_tbm` | 0x0404d970-0x0404da50 | **Established.** The distributor's equivalent: records of {8, `cvm_spec_*`} per pixel size (8, 16, 32, 48 bits, 10-bit RGB in two orders, and `tbm`), read by `CompGedReg`, `CompPixGedReg`, `CompBMGedReg` and `CompReorderer`. The spec lists start 0x02083800, 0x02083000 ... |
| `rByteSel_PASS`, `rWordSel_PASS`, `rByteSel_REVERSE_BYTE`, `rWordSel_REVERSE_BYTE`, `rByteSel_REVERSE_SHORT`, `rWordSel_REVERSE_SHORT`, `rByteSel_REVERSE_WORD`, `rWordSel_REVERSE_WORD`, `rByteSel_SWAP_16B_COMP` | 0x0404d708 and 0x0404dad0 (two copies, from two objects) | **Established.** Byte and word select words for the distributor's reorderer, one pair per host byte order (pass, swap bytes, swap shorts, swap words, swap 16-bit components). The pass pair starts 0x053053, 0, 0x688688, 0 |

### Pixel-path parameter and format tables

| Symbols | Address | What they are |
|---|---|---|
| `int2FloatParams`, `clampParams`, `lutParams`, `scaleBiasParams` | 0x0404a520 onward | **Established.** Parameter blocks the `U_*` routines copy to the engines; `int2FloatParams` starts with engine control-memory addresses (0xb2b, 0xb31, 0xb37, 0xb3d) |
| `_U_I2F_scaleTable`, `_U_I2F_signBiasTable`, `_U_I2F_scaleBiasL12A4`, `_U_F2I_signScaleBiasTable`, `U_I2F_scaleTable`, `U_I2F_signBiasTable`, `U_F2I_signScaleBiasTable`, `U_F2I_scaleBiasL12A4` | 0x0404a568-0x0404b110 | **Established** by name and use: the scale and sign-bias constants for integer-to-float and float-to-integer conversion per component size, with a special case for the L12A4 texture format; the underscore forms are the tables and the plain forms point at them |
| `pixoutScaleByte`, `pPixoutScaleByte`, `fOne`, `pFOne`, `scaleEpsilon` | 0x0404b100-0x0404b11c | **Established.** Float constants and pointers to them: `fOne` = 1.0, `scaleEpsilon` = 0.99999994 (the largest float below 1.0) |
| `WriteECramBroadcast`, `prev_ptr`, `prev_data`, `bFastSepConv5` | 0x0404b120-0x0404b12c | **Established:** words of the engine-memory writers, initially 1, 0, 0 and 0; `bFastSepConv5` selects `U_uFastConv5x5S`. **Inferred** from the names: write to all engines at once, and the last pointer and data written so a repeated write can be skipped |
| `compFormatTable` | 0x0404daa8 | **Established.** Component count per pixel format (1, 3, 4, 3, 1, 1, 4, 3 ...), used by the engine set-up routines and `X_PixSetupGE` |
| `numPixelPerTBUSPacket` | 0x0404d908 | **Established.** Pixels per raster-bus packet by pixel size (2, 4, 4, 4, 4, 8, 8, 8 ...) |
| `fbRbusIs16Bit`, `tmRbusIs16Bit` | 0x0404d838, 0x0404d878 | **Established.** Per format, whether the framebuffer or texture-memory side of the raster bus carries 16-bit components |
| `ifmt` | 0x0404d8a0 | **Established.** Format code table (0x11, 8, 9, 10 ...) used with the transfer-unit set-up |
| `NumGedRegs`, `GedRegs` | 0x0404dacc, 0x040952cc | **Established.** The count and the buffer of distributor register values the `Comp*` routines fill |
| `NumRMBoards` | 0x0404dafc | **Established.** Raster-board count per configuration code, read by the raster-bus set-up |
| `tfRegs` | 0x0404dae8 | **Established.** Texture-filter chip register values for the X pixel path (`CompTF`, `XSetTF`) |
| `UnpackerTable`, `UnpackedTypeTable`, `UnpackednumByteInCmpTable`, `F4thCompTable`, `BgnLineOffsetTable` | 0x0404d5b8-0x0404d738 | **Established.** Distributor unpacker and formatter tables by host type (`F4thCompTable` holds the all-ones value of a component: 0x7f, 0xff, 0x7fff, 0xffff) |
| `vByteTable` | 0x0404a3ac | **Established.** Used by `__glkonSetupPacker` for read-back packing |
| `HostFmt2TbusTable`, `HostFmt2MayInp1Cmp`, `FBFmt2TbusFmt`, `FBFmt2DstSignature`, `FBFmt2RbusTable`, `TexFmt2DstSignatureB`, `TexFmt2NoAlphaInpB`, `TexFmt2TbusTableB`, `TexFmt2RbusTableB` | 0x04049a4c-0x0404a20c | **Established.** Format-mapping tables read by `commonResolve`: from host, framebuffer or texture format to raster-bus format, component signature, whether the data may enter as one component, and whether alpha is absent |
| `GeTypeFormatTable` | 0x04092894 | **Established.** Built by `InitGeTypeFormatTable`: per host type and format, what the engines receive |
| `ConvolveTable`, `validPixPerTbus`, `validRPacket`, `validConvType`, `LMLimit`, `LMLimit48` | 0x0404a414-0x0404a4e0 | **Established.** Line-mode distribution: the kernel sizes and packet shapes `__initlinemodedist` combines, and the limits it computes (read again by `arm_getlinemodedist`) |
| `promotedSizeTable`, `promotedSize`, `promotedTotalSize`, `defaultKernel`, `ConvolveEramLoc`, `cramKernelLoc`, `saveRestoreCram`, `UConvolveTable` | 0x0404d20c-0x0404db8c | **Established.** Convolution: working kernel sizes, the default kernel (all 1.0), the kernel's engine memory addresses (0xc06 and 0xcca in external memory), the control-memory save area and the slot-and-writer pairs per kernel shape |
| `convIntFmtFcn`, `convIntFmtReadFcn` | 0x0404ceb0, 0x0404cec8 | **Established.** Zero in the image, read by `U_uCopyEramToWram`; **inferred** run-time format selectors |
| `passthruComp`, `ExtractShiftMasksL12A4` | 0x0404d4c8, 0x0404d4f8 | **Established.** Component order for pass-through, and the shift and mask pairs for unpacking L12A4 (4, 0xfff, 0, 0xf) |
| `tbus2CI` | 0x0404d0a8 | **Established.** Index masks for colour-index output (`AddOutputI`), 0xffff per entry |
| `initStipplePat` | 0x0404d538 | **Established.** The default polygon stipple, all ones |
| `wramBuf` | 0x04049760 | **Established.** The engine working-memory address model (`BuildStreamWramModel`) |
| `DefPackState`, `DefUnpackState`, `DlistUnpackState`, `GlobalTexPackState`, `GlobalTexUnpackState` | 0x0404977c-0x0404980c | **Established.** Fixed pixel-store records: the defaults `arm_pixel_nomode` installs, the one for display-list images, and the ones the texture swap paths use |
| `overlap` | 0x04049694 | **Established.** Flag set when a copy's source and destination overlap (`QueryOverlap`, `WaitOverlap`, `SetupRM`) |
| `OverlapFromGE` | 0x04049a04 | **Established.** 16 masks (0, 0xf, 0xf000, 0xf00f ...). **Inferred:** which engine outputs must drain before an overlapping copy continues |
| `FFT_Factors`, `FFT_Sort_2`, `FFT_Sort_4`, `FFT_Sort_8`, `FFT_Sort_16`, `FFT_Sort_32`, `FFT_Sort_64`, `FFT_Sort_128`, `FFT_Sort_256` | 0x0404dbec-0x0404e7e4 | **Established.** FFT constants for `InitFFTGlobal`: complex twiddle factors (1.0, 0, then cos and -sin of 2π/256 = 0.99970, -0.02454 ...) and, per transform size, the bit-reversed order as byte offsets (`FFT_Sort_8` = 0, 0x20, 8, 0x28 ...) |

### Other data

| Symbols | Address | What they are |
|---|---|---|
| `lightmodelf`, `lightmodeli`, `colormaterial`, `lightfi` | 0x04041bbc-0x04041bdc | **Established.** Dispatch tables of `arm_lightmodelf`, `arm_lightmodeli`, `arm_colormaterial`, `arm_lightf` and `arm_lighti`: `lightmodelf` = {`lightmodel_locv`, `lightmodel_2side`, `lightmodelf_gamb`}; `colormaterial` = {`colormaterial_front`, `colormaterial_back`, ...}; `lightfi` = {`light_amb`, `light_diff`, `light_spec`, `light_pos`, `light_sdir`, `light_sexp`, `light_scut`, `light_k0`, `light_k1`, `light_k2`} by light parameter |
| `ADDR_LIGHT` | 0x04041b9c | **Established.** Engine memory address of each light's block: 0x2c7, 0x2ea, 0x30d ... 0x3bc (eight lights, 0x23 words apart) |
| `PramContentsType`, `PramContentsData` | 0x04041b90, 0x04041b94 | **Established.** What the shared pattern memory holds now (the polygon stipple, the X stipple or the antialiased-line table) and its data words (`downLoadAALineTable`, `downLoadPolygonStipple`, `arm_x_loadstipple`, `PolygonStippleGLRotate`). **Inferred:** each routine reloads the memory only when another owner changed it |
| `expX`, `expY` | 0x04051804, 0x04051a04 | **Established.** Tables of decreasing floats from 1.0 (0.9394, 0.8825 ... and 0.99976 ...) that `InitFogGlobal` loads. **Inferred:** coarse and fine steps of the exponential fog function |
| `MSPoints_Infos` | 0x04051e0c | **Established.** Packed sample-position data `InitMSPointsGlobal` expands for multisampled points |
| `get_table` | 0x0404ebe4 | **Established.** The table `arm_getv` indexes by query |
| `printc` | 0x04041c04 | **Established.** The digit string "0123456789abcdef" of `printn()` |
| `gepc` | 0x04068654 | **Established.** The engine handler table, a copy of `geif.u` ([arm1.md](arm1.md)) |
| `sysconf` | 0x04067edc | **Established.** The board-configuration block at the start of zero-initialised data that `arm_getconfig` returns (478 words, 0x1de, after a count word of the same value; `arm_getconfig` 0x0c022474) |
| `divModLut` | 0x04091874 | **Established.** The quotient and remainder cache of `DivModFunc` |
| `bLateInit`, `pEmergencyBackupFormat`, `nGreyDecode` | 0x040402c4, 0x040402c8, 0x04041afc | **Established.** Display-generator state: a flag for channels started after the rest (`dgAutoInit`, `dgAutoInitLateChannels`, `dgLoadCombo`), the format `DoDGRqstAutoInit` falls back to, and a Gray-code decode table used by the format and genlock code ([docs/dg.md](../docs/dg.md) covers the display side) |
| `C$$data$$Base`, `Image$$RW$$Base`, `C$$data$$Limit`, `C$$zidata$$Base`, `Image$$ZI$$Base`, `_edata`, `C$$zidata$$Limit`, `Image$$RW$$Limit`, `Image$$ZI$$Limit`, `_end`, `Image$$RO$$Limit`, `_etext` | | **Established.** Linker marks: initialised data 0x04040260-0x04067edc, zero-initialised data 0x04067edc-0x040953d8, read-only image end 0x0c040248. Code addresses initialised data relative to `C$$data$$Base`, which is also `InSimulator` |
| `arm_gethistogramparameterfv`, `arm_getminmaxparameterfv` | 0x0c026608, 0x0c02660c | **Established.** One branch each to `arm_badcmd` (through the `C$$code$$Base` mark): the two queries are not supported |

### Handlers and helpers named only in the token table

**Established** from the code at each address; [arm1_handlers.tsv](arm1_handlers.tsv) gives each token's payload reads and ports.

| Symbol | Token | What it does |
|---|---|---|
| `arm_texgend` | 0x013 `TEXGEND` | prints "arm_texgend NYI -- use arm_texgenf instead" and returns without reading the payload. So the host must never send it: its payload words would be taken as the next command |
| `arm_texgeni` | 0x015 `TEXGENI` | the same message and the same behaviour (it reuses the string) |
| `arm_bind_arm_tex_cache` | 0x1c4 `BIND_ARM_TEX_CACHE` | reads one index and marks that `tex_cache` entry invalid (both words -1) |
| `arm_tex_send_arm_table` | 0x17e `TEX_SEND_ARM_TABLE` | reads an index and 33 words into the texture record at r8 + 0xcf4 (entry = index x 33 words, from +0x86c) |
| `arm_tex_arm_cache_index_invalid` | 0x1e0 `TEX_ARM_CACHE_INDEX_INVALID` | reads a kind (0, 1, 2) and an index; if the remembered index of that kind (r8 + 0x8a0, 0x8b4, 0x8b0) equals it, sets it to -1 |
| `arm_change_post_tex_scale_bias` | 0x1d7 `CHANGE_POST_TEX_SCALE_BIAS` | reads a texture id and three words; when the id is the bound one (r8 + 0x890), writes them through descriptor 0x5850d800 |
| `arm_texelstorei` | 0x1bb `TEXELSTOREI` | keeps the texel-store parameter (GL targets 0xcf0-0xcf4 and 0xd00-0xd02) in the pixel shadow and marks the pixel state dirty (bit 0x80 of r8 + 0x90c) |
| `arm_copyteximage` | 0x0fd `COPYTEXIMAGE` | `SetDB`, `ResolveCopyPath`, `SetupReadback`, `SetupSubtexload`, `SetupSubtexloadPos`, `SetupReadbackTF`, `SetTextureWorkaround`, `StartRbus`: a framebuffer-to-texture copy through the pixel path |
| `arm_get_pixel_transform_parameteriv` | 0x0fa | answers through the read-back path (`start_rdata`, register 0x476) |
| `arm_getcolortableparameterfv`, `arm_getcolortable`, `arm_getpixelmapfv` | 0x0ec, 0x0ea, 0x048 | colour-table and pixel-map queries: `lut_index` or `pixelmap_index`, then `do_getcolortable` or the read-back path |
| `arm_gethistogram`, `arm_gethistogramparameteriv`, `arm_getminmax`, `arm_getminmaxparameteriv` | 0x104, 0x105, 0x109, 0x10a | histogram and min-max queries through `start_rdata`; `arm_getminmax` also sends an engine handler (port 0x474) to collect the result from the engines |
| `load_ged` | | one branch to `activate_ged` (a second name for it) |
| `get_addr` | | reads n payload words: discards them when the destination pointer is 0, else stores them; ends with the last-word read at r9 + 0x3c |
| `real_format` | | maps a GL format number to the one the pixel path works with; it tests 0x1906 (`ALPHA`), 0x1909 (`LUMINANCE`) and the extension range from 0x8000 (exact mapping not written out here) |
| `ge_xform_attrib_to_host`, `ge_texture_attrib_to_host` | | for `arm_pushattrib`: ask the engines to send the transform or texture attribute block to the host (operands 0x90a and 0x94b, or 0x293, at port 0x474, then slot 197, `mgesi_Eram2ODMA`: engine external memory out through the output DMA) |
