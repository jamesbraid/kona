# DG: how the kernel driver reaches the display generator

What the 6.5.30m kernel driver does about video: the cursor, the buffer swap and the retrace wait. Register values and addresses are in [DG.h](../DG.h). Facts are labelled **established** (read from the disassembly, function named), **inferred** (reasoning given) or **unknown**. First configuration only: one IP27 Onyx2, one InfiniteReality2 pipe; genlock, other pipe counts and the option boards are not read.

Sources: `kona_kernel/disasm/kona_video/kona_video.text.s` (all function names below), `kona_intr_hip2/kona_intr_hip2.text.s`, `kona_genlock/kona_genlock.text.s`, and the 6.5.5 installed header `sys/kona.h` for the ioctl structures.

Notation: `P` is the driver's per-pipe state. Offsets are the ones the code uses.

## What the driver can reach

**Established.** The kernel never writes a display register directly. Every display access is a write to `HH_VC_ADDRESS` (0x8003c0) followed by one or more writes to `HH_VC_DATA` (0x8003d0), through the 32-bit register window. The only reads are in `kona_attach` (`docs/xg.md`, steps 4 and 7), which writes 0x8800 and 0x0b00 to `HH_VC_ADDRESS` and reads `HH_VC_DATA`. `HH_VC_DATA_INCR` and `HH_VC_FREADY` (HIP.h) are never touched by the driver.

**Inferred.** The pair is an indirect port into the display generator: the address write selects a register, the data write moves its value. The name "VC" comes from the kpm table. The driver has no code for video timing, mode tables, colour lookup, gamma or blanking: the display mode, the video format and the colour tables are loaded by other paths (X server and the microcode, `ucode/dg4/`, `ucode/vof/`) that this driver does not carry. Whether the display generator is the chip on the far side of the port is **unknown**.

## Cursor

**Established.** Three ioctls feed the cursor, all of which only record state under the lock at `P+3520` and set a "pending" flag:

| Entry | Stores | Flag set |
|---|---|---|
| `kona_select_cursor` (`KONA_SELECT_CURSOR`) | mode byte at `P+3555`, glyph address word at `P+3560`, hot spot halfwords at `P+3568` and `P+3570` | `P+3552` and `P+3553` |
| `KONApositioncursor` | x halfword at `P+3564`, y halfword at `P+3566` | `P+3553` |
| `kona_set_channel_rect` (`KONA_SET_CHANNEL_RECT`) | one entry of the cursor-rectangle table (below) | `P+3552` and `P+3553`; also sets the current cursor channel `P+3556` to 32 (none) |

The mode values in the 6.5.5 header are 0 off, 1 crosshair, 2 glyph.

The pending flags are consumed in `kona_video_intr`, which is the handler for the video interrupt (docs/hip.md), under the same lock. So cursor state reaches the hardware once per video interrupt, not at ioctl time.

**Established.** `kona_video_intr` on `P+3552` set: runs `kona_enable_dac_cursor`, then writes address 0x101 and data `P+3560` (the glyph address). If the DAC flag `P+3554` is clear it first writes address 0x103 and data `P+3555` (the mode). On `P+3553` set: runs `kona_determine_cursor_channel`; if the owning channel changed, reruns `kona_enable_dac_cursor`, writes address 0x100 with the new channel number, and writes address 0x103 with the mode (or 0 when no channel owns the cursor); then writes the position, in one of two forms.

- **Not a DAC cursor.** One data write to address 0x102: bits 0-12 are `x - hot_x - x1 + 32`, bits 13-25 are `y - hot_y - y1 + 32` (x1, y1 from the owning channel's rectangle, hot spot from the select call). When the word at `P+1088` has a zero top nibble, bits 0-1 are cleared, so x is a multiple of four. **Established:** `P+1088` is `id.dg.xmap[0]`, the identity word of the first display-generator XMAP chip in the configuration record the caller supplied ([kernel.md](kernel.md#the-configuration-record-and-its-identity-words)).
- **DAC cursor** (`P+3554` set, the channel's rectangle has valid = 2). Address 0x0b00 + 0x100*channel, data 0 then 2; then four address-0x22 writes carrying x low byte, x high byte, y low byte, y high byte. The position is scaled to the channel's output size: `x_out = dac_xout * (x - x1) / (x2 - x1) - dac_hotx`, `y_out` likewise (divide-by-zero is trapped with `teq`, so a degenerate rectangle halts the kernel thread).

`kona_enable_dac_cursor` writes eight channel blocks: for channel n it writes address 0x0b00 + 0x100*n with data 4 then 2 (two consecutive data writes to the same address, **established**), then address 0x0b02 + 0x100*n with 5 if n is the cursor channel and the DAC flag is set, otherwise 0. If the DAC flag is set it first writes address 0x103 with 0.

**Inferred.** 0x100-0x103 are the cursor registers of the display generator (channel, glyph address, position, mode), from the values each carries; the IR diagnostic's XMAP register list names registers 0-3 `XMAP_CURSOR_CHAN_ID`, `_GLYPH_BASE`, `_POS` and `_ENABLES` ([DG.h](../DG.h)), so address 0x100 + n is **inferred** to be XMAP register n. The 0xb00 blocks are per-channel registers of eight video channels, from the stride of 0x100 and the eight-iteration loop; the 5 is a "DAC cursor on" encoding (bits 0 and 2), a guess from its being 0 for all other channels. A cursor in the 0x102 form that is aligned to four pixels matches the PROM textport's cursor routines for a mask of both coordinates with `~3` for an older display-generator revision. **Unknown:** what the repeated "4 then 2" data writes do, what 0x22 is in the DAC, and the units of the glyph address.

### Choosing the cursor channel

**Established.** The driver keeps 32 channel rectangles, 16 bytes each, at `P+0x1168` (4456), one per logical video channel. `kona_set_channel_rect` fills one from the 6.5.5 `kona_set_channel_rect_args`: valid (0 invalid, 1 xmap cursor, 2 DAC cursor), a signed priority, four halfword corners x1, y1, x2, y2, signed hot spot bytes and two halfword output sizes (DG.h has the offsets). `kona_get_xy_channel` (`KONA_GET_XY_CHANNEL`) and `kona_determine_cursor_channel` scan channels 31 down to 0. A channel is a candidate if it is valid and `x1 <= x < x2`, `y1 <= y < y2`. Among candidates the one with the **smallest** priority value wins, ties go to the lowest channel number (the scan accepts on equal, so the last, lowest index stays). The 6.5.5 header comment says "higher priority channels get the cursor": the code compares numerically, so a smaller number wins; whatever scale the X server uses, the kernel is not inverting it. The result 32 means no channel.

Channels 0-7 are the ones the display generator has cursor registers for (the same loop count as `kona_enable_dac_cursor`). For a winning channel of 8 or more the function takes a different branch that reports a change when the DAC flag was set (clearing it) and when the winner changed; what the logical channels above 7 map to is **unknown**.

## Buffer swap and retrace wait

**Established.** A swap is not a register write. `KONAschedswapbuf(P, buffer, index, mode)` sends commands in the pipe's stream through the kernel kick sequence of `kona_kern.h` (0x30000 before the first token, 0x10000 before payload and later tokens, 0 at the end), then asks to be told when the pipe passes a marker. The stream, tokens from `GE.h`:

1. `VALIDATE_BANK` (0x1f4), two words: the halfwords at offset 18 of the objects at buffer+120 and buffer+128. Then token 0x172 (`HP_GED_NOP`) with one 0 word.
2. When `P+5488` is nonzero, `P+5500` is not -1 and it equals the halfword at +248 of the buffer: `HP_DPLEX_SWAP` (0x166), payload 1. That word pair belongs to the multi-pipe configuration and is not read.
3. `DISPMODE` (0x1e6), three payload words: the word at buffer+20, `index`, and a mode byte kept per index at `P+4360+index`. The byte's bit 0 is set from the halfword at +18 of the buffer's +120 object when `index` is below 64, bit 1 when it is 64 or more. `KONAsetdisplaymode` (the display-mode ioctl) stores a caller-supplied byte there and sends the same token with payload 0, index, byte. The value comes from the X server: it is the `hwd_mode` word `konValidateMode` builds and passes through `RRM_LOADDISPLAYMODE` ([opengl.md](opengl.md#display-modes-x_loadxmap_did-and-rrm_loaddisplaymode-1017) lists its bits by the module's own names). What the display hardware does with each bit is **unknown**.
4. `mode` 1 calls `kona_swap_complete` at once with no wait. Any other `mode` queues a retrace sequence (below); `mode` 2 then also sends token 0xe2 (`HP_TBUS_1`) with 0x478478 twice, whose meaning is **unknown**.
5. A swap group (a list at buffer+160 with a countdown at +4) holds the sequence back until the last member has arrived, using `SWAP_CNTRL` (0x1db) with 1 or 0 per member. How the group is formed is not read.

When the marker is reached, `kona_swap_complete` runs. `kona_mswap_complete` is the matching path for the managed (multi-pipe) swap, `KONAschedmgrswapbuf`, with a 96-entry table at `P+3976` and `P+3592`; it is not read further.

### Retrace sequence

- `kona_retrace_setup` takes the next number from the counter at `P+3528`, stores it in the buffer's retrace record (record +0, record at buffer +112) together with the callback (record +16), and appends the record to a queue whose tail and head are at `P+3536` and `P+3544`.
- `kona_retrace_activate` arms a software timeout (`kona_timeout`, record +8 holds the handle) and sends the stream command `RETRACE_SEQID` (0x1e7) with the sequence number as its one payload word.
- The pipe processes the packet in order with the rest of its stream. The driver then waits for a video interrupt. `kona_video_intr` reads `HH_SEQID` (0x800248, HIP.h), and for every queued record whose number is not greater than that value, cancels its timeout and calls its callback with a 0 argument. If the timeout fires first, `kona_retrace_timeout` removes the record and calls the callback with a nonzero argument, and `kona_swap_complete` logs a message (cmn_err tag 2103; `kona_gsync_complete` uses 2104).

**Inferred.** The pipe writes the sequence number into `HH_SEQID` when it executes `RETRACE_SEQID` at a vertical retrace and raises the video interrupt; this is why a swap is held back to the retrace. The hardware side of the packet (when exactly the number is written, and what raises the video interrupt) is **open question** ([open-questions.md](open-questions.md)); the kernel only shows that the value compared is the one read back.

`kona_swap_complete` finds each buffer pointer (`buffer+120`'s +160 field) among the entries listed at `P+184` (count `P+176`), and for every match writes data 2 to address 0x80 (the swap strobe, DG.h), then calls `rrmValidateBuffer`. `kona_gsync_complete` ends with `rrmValidateRetrace`; `KONAschedretraceevent` queues a bare retrace sequence with a callback taken from the driver's slot table. `kona_voc_intr` (the video-option interrupt, bit 9 of `HH_INTR_STATUS`) calls `rrmGenlockNotify(-1)`.

`kona_video_tick`, called at the top of every video interrupt, bumps three counters at `P+124`, `P+128` and `P+164`, sends a signal to the share group at `P+152` when `P+144` is nonzero, and calls `rrmValidateVideoSync` when `P+136` or `P+168` is nonzero. **Inferred:** frame counters and a per-frame wake-up for waiters; their consumers are not read.

## Not covered

Everything about video timing, video format tables, the combiner, palettes, gamma, blanking, genlock lock state and the display-option boards. The driver has no code for them, so the kernel cannot show them. The microcode tables in `ucode/dg4/` and `ucode/vof/` and the X server modules are the next places to look (coverage.md, microcode section).

## Start-up and reset as the ARM firmware performs them

The video timing and combination handling the kernel never touches is in the ARM firmware ([ucode/arm1_firmware.md](../ucode/arm1_firmware.md), IRIX 6.5.30m); [ucode/tport.md](../ucode/tport.md) covers a second image with the same code. Labels as above.

**Established** (`init_dg_board` 0x0c003d3c, `DoDGRqstAutoInit` 0x0c004674). At start-up the ARM configures the display-generator board through the boundary-scan chain (`init_dg_jtag`), blanks every channel (`dgTempBlankAllChannels`), runs `dgAutoInit` and refreshes its configuration record (`dgUpdateConfigInfo`). `dgAutoInit` reads a stored combination from EEPROM (`eeprom_read`) and loads it (`dgLoadCombo`); a bad magic cookie, a combination too large for the scratch memory or a failed flash image falls back to the emergency backup format, as the messages in [ucode/tport.md](../ucode/tport.md) say. Not run when simulated. The 93 requests of `arm_video_cmd` that follow are in [ucode/dg_dispatch.tsv](../ucode/dg_dispatch.tsv).

**Established.** The run-time reset is the request `DoDGRqstResetRMBoards`: blank all channels, shut down the requesters on each present video output chip, wait, reset the raster boards' pixel chips ([rm.md](rm.md#reset-of-the-raster-boards)), restart the master video output chip, with the log lines "ResetRMBoards starting..." and "ResetRMBoards complete!". **open question** ([open-questions.md](open-questions.md)): the display generator's own reset register and whether a request or an interrupt reaches it from the host. The start-up and run-time paths read here write none.

## The far side of the video-controller port

**Established** (diagnostic netlists, `usr/diags/IR/data/dg4_2voc.netmap.Z` and the `fpln_*` set, IRIX 6.5.30m; pin names are SGI's). The 8-bit video-controller bus of the host-interface chip (`vc_data[8]`, `vc_fifof`, `vc_req_l`, `vc_rdy_l`, `vc_wr_l`, `vc_in_en_l`, `vc_out_en_l`, and `vint[2]` for interrupts) reaches one chip on the display-generator board, `fm0`, through its `dg4_dat[8]` pins (net `vc_data[0]` on `fm0:dg4_dat[0]`). `fm0` is a bridge, not a video chip: it presents a 16-bit local address (`loc_add[16]`) and 32-bit data (`loc_dat[32]`) to the chips of the board, whose nets carry the same names (`locadd`, `locdat`, `dac_dat`, `x_dat`, `v_dat`, `opt_data`), and drives the chip selects: `voc_sel_l[9]` (VOC chips), `xmap_sel_l`, `vdac_sel_l[8]`, `gdac_sel_l[5]`, `enc_sel_l`, `fast_sel_l`, `slow_rdy_in`. It also takes the swap handshake (`do_swap[10]`, `swap_rdy_in`/`swap_rdy_out`), per-VOC video requests (`vidreq_i_voc[10]`, `req[10]`, `req_ack[10]`) and the two interrupts `int1`, `int2` (nets `vc_int1_l` and `vc_int2_l`) and `voc_intr_l`. **Inferred:** the data the driver writes after `HH_VC_ADDRESS` ([above](#what-the-driver-can-reach)) is a local-bus access to one of those chips, `fm0` decoding the address into a select; this is what the "indirect port" is. The `HH_VC_ADDRESS` bit layout that picks the chip is **unknown**; the kernel's addresses 0x100-0x103 (cursor), 0x0b00 + 0x100n (channel blocks) and 0x22 (DAC cursor) are the values that decode.

Board composition, **established** (`dg4_2voc`): `fm0`, two VOC chips (`voc00`, `voc01`; the 8-VOC variant has eight), four XMAP chips (`xmap0`-`xmap3`), two DACs (`dac0`, `dac1`, four 8-bit pixels per colour per clock: `reda[8]`..`redd[8]`) and one video encoder (`encoder`, with `Zcvbs[8]` composite output); variants add `dacsamp`, `dvp`, `hdgvo`, `dplex` and `lvds` option chips. The VOC chip's outputs are exactly the 14 signals of the `.vof` sequencer ([ucode/dg.md](../ucode/dg.md)): `Zhsync`, `Zvsync`, `Zcsync`, `Zcblank`, `Ztrisync`, `Zfield`, `Zframe_st`, `Zimpreg_ld`, `Zxmapreg_ld` and `Zvideo_out`/`vact`, so the format files program a sequencer whose pins these are (**inferred** by the name match). The XMAP has a 40-bit pixel input, 17-bit colour-map address with 32-bit data, three 16-bit gamma-RAM addresses and 12-bit per-colour outputs to the DAC.

## The firmware's display-bus window

How the ARM firmware (`arm1.u`, IRIX 6.5.30m) reaches the display-generator board, from its own code. [DG.h](../DG.h) has the addresses and fields; [ucode/dg_access.tsv](../ucode/dg_access.tsv) lists every access whose address the code builds from constants (435 of them, written by [scripts/dg_access.py](../scripts/dg_access.py)).

**Established** (`DoDGRqstVCWrite` 0x0c012200, `DoDGRqstVCRead` 0x0c012250). Display-bus address A is ARM address 0x00600000 + 4 x A, one 32-bit word per address. The two requests let the host read or write any address. Every firmware access sits between two short delay loops (three iterations of a stack counter).

**Established** (the access table). The space divides by function family:

| Bus addresses | Used by | Chip (inferred from names and the fm0 chip selects) |
|---|---|---|
| display id | `arm_dispmode` (engine path): the DISPMODE mode byte at address = display id | per-display-id mode table |
| 0x80, 0x81-0x8a, 0x8b, 0x8e, 0x8f, 0x90 | swap strobe, ten swap-group display ids (`dgUpdateFMDidSwapTable`), input sync and reset ratio, master clock select, interrupt state, raster-board count | fm0 bridge |
| 0x100-0x11f | cursor, XMAP diagnostics, textport glyph and colour, display-id loads | XMAP |
| 0x200 + 0x100 x id | the VOC of channel id (ids 0-7 on the base board) | VOC |
| 0xb00 + 0x100 x n | video DAC of channel n: index (two byte writes), colour map, indexed control, mode | video DAC |
| 0x1300 + 0x100 x n | registers 2-5, 0xf, 0x17 (`dgGDacChannelWrite`) | gamma or gain DAC |
| 0x1708, 0x1800-0x1803, 0x1900, 0x1920 | output gain, video encoder control and colour map, XMAP clock select | encoder and clocks |
| 0x2000-0xffff | PAB, DPLEX, DGO, HDGVO and DVP option boards and the VOCs on them | option boards |

The kernel's own accesses ([above](#what-the-driver-can-reach)) land in the same blocks with the same values: cursor registers 0x100-0x103, the swap strobe 0x80, and the video-DAC blocks, where the kernel's "4 then 2" on register 0 of block 0xb00 + 0x100n is the two-byte index 0x204 (the DAC's cursor control) and its 5 or 0 on register 2 is that register's value. **Inferred:** the kernel's `HH_VC_ADDRESS` value is this bus address.

**Established** (`arm_dispmode` 0x0c013dd4, `arm_swap_cntrl` 0x0c013e50, `arm_dplex_swap` 0x0c013ef4, `arm_x_loadxmap_did` 0x0c03db80). Four token handlers write the display bus in step with the command stream: each stores a bus address to r9 + 0x474 and a value to r9 + 0x840 and hands the engine `gepc[251]` (`mgesi_VCbusWrite`). `DISPMODE` writes its third payload word (the X module's `hwd_mode` byte) to bus address = its second word (the display id), after `dgUpdateFMDidSwapTable` records the display id in every swap-group slot whose drawable word equals the first payload word. `SWAP_CNTRL` writes its payload to 0x80 and, when bit 0 is set, 1 to 0x1920 (or to 0x8001 on a DPLEX board). `DPLEX_SWAP` writes its payload to 0xe500. `X_LOADXMAP_DID` writes its two words to XMAP 0x118 and 0x11c and then 0 to 0x11f three times and to 0x11e four times.

### VOC registers

**Established.** Per-channel requests address VOC register r of channel id at 0x200 + 0x100 x id + r (id from payload word 0). [DG.h](../DG.h) lists the offsets 0x00-0x9d with the functions that use each and the fields the code builds; the names in brackets there are the `vof/` comment list's VOC register names matched by role. The sequencer is loaded through four of them, all by `DoDGRqstLoadFormat`:

- 0x06 (VOF control): bit 3 is set and cleared before the state table is written; bits 8-4 select a line type (0-31) or a signal (0-13) for the next accesses.
- 0x09: the state-table port. The firmware writes the state words one after another to this one address. **Inferred:** it auto-increments from the pointer bit 3 cleared.
- 0x0a and 0x0b: the selected line type's two words (edge mask for edges 0-31; length minus 3 in bits 30-18 and the edge mask for edges 32-49 in bits 17-0).
- 0x0c-0x13: edge slots of the selected signal. The firmware walks `EdgeDescArray` (0x0c00d140: 14 {name, slot count} pairs with counts 4, 4, 8, 6, 6, 2, 2, 2, 6, 2, 2, 2, 2, 2) and writes each signal's slots to 0x0c + slot. A slot word holds the edge position in bits 12-0, or 0x1fff when unused.

Option-board VOCs use ids above 7: `DoDGRqstLoadFormat` loads a format into the partners of ids 0x1e/0x1f, 0x2e/0x2f/0x30, 0x5e/0x5f/0x60, 0xc6/0xc7 and 0xc9/0xca by calling itself with the partner id. **Unknown: no shipped software or published source depends on it:** which option board each id pair belongs to beyond the function names (`dgConfigureHDGVO` for 0x5e). Routes tried: the firmware's request code and the X module's channel table.

## The LoadFormat request (383 words)

**Established.** On the host the X server module builds the request. In `kona.so` (`konad.so`, `konal.so` and `konas.so` export the same `vfmt*` functions with the same sizes) `vfmtReadKonaVideoFormat` (0x4319c0) opens the `.vfo` file, clears a 2020-byte format record, and calls seven readers at 0x42f280-0x4314d0 that fetch fields by name and pack them; the request is the record's 1532 bytes from offset 452. The unnamed function at 0x4fcfd0 (**inferred** to be `konLoadVideoFormat`, a name the module's section-name strings carry) fills the clock words and the vertical-phase words, then calls the display-command sender at 0x5341a0 with command 22 and 1532 bytes. The sender stores the command number at the command window + 0x34c0 (32 x 0x1a6, the `HP_VIDEO_CMD` token in the address), each payload word at + 0, then the sum of the command number and the words as a checksum. Two words of a screen record (+1200, +1204) divert the same call to two other functions. **Inferred:** they build an EEPROM image instead of sending (the module carries the section names `StoreEEPROMRqst` and `StoreEBFRqst` and the string "XVC_MAKE_EBF"), which is how a combination is stored for `DoDGRqstAutoInit`; `ireeprom` also carries the name "LoadFormat".

**Established** (`DoDGRqstLoadFormat` 0x0c00a9b0-0x0c00b998): the firmware disables the channel, copies the summary words into its per-channel record (DGGlobalState + 0x3294 + 4 x id points at it), loads both clock parameter sets and starts the VOC clock, writes the sequencer, sets the pixel mux, blanking, FIFO and vertical-phase registers, configures the DAC pixel mux for ids 0-7, and calls `dgLoadFieldSequentialAndStereo` and `dgResolveXMapChannelFormat`.

| Words | Host source (`kona.so` readers) | Firmware use |
|---|---|---|
| 0 | the channel's VOC id, from the combination | the VOC block for every write; partner ids above |
| 1 | a second channel word from the caller | not read |
| 2-17 | the `.vfo` file name (64 bytes) | copied to the channel record + 0x08 |
| 18 | modification time of the `.vfo` file | record + 0x48 |
| 19 | `FramesPerSecond` x 65536 | record + 0x8c |
| 20 | `FieldsPerFrame` (1-8, else "illegal nFieldsPerFrame") | record + 0xa4, field loop count |
| 21, 22 | `TotalLinesPerFrame`, `TotalPixelsPerLine` | record + 0x90, + 0x94 |
| 23, 24 | `ActiveLinesPerFrame`, `ActivePixelsPerLine` | not read by this handler |
| 25 | `VideoClockRatioDenominator` (1, 2 or 4, else "illegal nPixelsPerClock") | record + 0x98; VOC 0x01 bits 11-9 through the table at 0x040416c4 (clamped to 4 above 9); DAC pixel mux |
| 26, 27 | two words from the combination channel | record + 0xac; bit 0 to record flag bit 30 |
| 28-30 | built from `ActiveBlankingLeft` and `ActiveBlankingRight` | VOC 0x14: bit 16, bits 7-0, bits 15-8 |
| 31 | `StateTableValidStates` | number of state words: words 33 to 33 + 31/2 go to VOC 0x09 |
| 32 | bit n set when `SignalInitialStateValue[n]` equals `TransitionDirectionHigh` | VOC 0x07; bits 17-18 added on an old DG4 |
| 33-160 | the state table, two states a word (even state bits 10-0 repeat, 15-11 line type; odd state bits 26-16, 31-27) | VOC 0x09 |
| 161-192 | per line type: bit e set when edge e (< 32) is used on that type (`TransitionLineTypesUsing`) | VOC 0x0a, type selected in VOC 0x06 |
| 193-224 | per line type: `LineTypeLength` - 3 in bits 30-18 (0 if invalid), edges 32-49 in bits 17-0 | VOC 0x0b |
| 225-274 | per edge slot: `TransitionValue` in bits 12-0, 0x1fff if not `TransitionValid` | VOC 0x0c + slot, signal selected in VOC 0x06 |
| 275 | from the combination (record + 1552) | tested for ids 1, 0x5e and 0xc6/0xc7 before the record + 0x88 update and the HDGVO set-up |
| 276-278 | from the combination | record + 0x88 bits 9, 12-13, 14; word 278 also VOC 0x8a bits 12-13 |
| 279-286, 287-294 | two clock parameter sets computed by the module at 0x4fcfd0 from the frame rate, the line and pixel totals and a reference frequency chosen by a board flag | `dgLoadVocClockParams` set 0 and set 1 (VOC 0x71, 0x73) |
| 295, 296 | set at 0x4fcfd0 (0 or 1, and a count) | VOC 0x81 bits 11-2; VOC 0x82 bits 21-14 |
| 297-300 | the same function (297 and 298 default to 8191) | VOC 0x08 bits 12-0, 25-13, 28-26, 29; word 298 also record + 0x164 |
| 301, 302 | from the combination channel (record + 1656, 1660) | record + 0xb4, + 0xb8 |
| 303-318 | `FieldLineCount` | per-field records |
| 319-334, 335-350 | `FieldLineOffset`, `FieldLineSkip` | record + 0xe0 + 16 x field, + 0xe4 + 16 x field; the number of distinct offsets to record + 0xa8 |
| 351-366, 367-382 | `FieldColor`, `FieldEye`, re-coded by the module | `dgLoadFieldSequentialAndStereo` (VOC 0x60 table) |

**Established** (absence): the edge direction arrays (`TransitionDirection`) are read by the module but no request word carries them; the frame-detection fields (`PFDTable` packed into two words, `PFDInvert`, `PFDRegularLines`, `PFDComparatorPrecision`, `PFDClockSelect`, `PFDVOFVerticalPhase`, `PFDValidTable`) are read into the record past the request (offsets 1984-2012), so they are not part of it. **Inferred:** the hardware toggles a signal at each valid edge, so no direction is needed.

**Unknown: no shipped software or published source depends on it:** the units of the clock parameter words and the meaning of words 1, 26, 27, 275-277 and 297-300 beyond the register bits they fill. Routes tried: the module's builder and the firmware's consumer above, `dgLoadVocClockParams` and the `.vfo` and `vfc/rules/*.def` files.

## The Resize request (8 words)

**Established** (`DoDGRqstResize` 0x0c00fe84, `dgResize` 0x0c00efc8). Word 0 is the VOC id. Words 1-4 are copied as a block to the channel record + 0x50 and, when word 7 is 0, also to + 0x60. Word 5 sets record flag bit 23 and word 6 bit 22. Word 3 rounded up to a multiple of 4 and word 4 are compared with the channel's output size (record + 0x80, + 0x84; "Illegal x output size %d, clipping to 2" below 2) to compute the scaler steps in 12.20 fixed point, written to VOC 0x90-0x9d, with VOC 0x02 written 0 then 1 around the update and 0x8f rewritten. When the channel has a vampire partner (record + 0xbc > 0) the request is repeated for every present VOC through `dgResizeVampire`.

**Inferred**, from the firmware and from libGLcore's `ChannelRect`, which sends `a0, a1, a2 + a4 - 1, a3, a4, 0, 0, 1`: words 1 and 2 are the source rectangle's x origin and top line (the caller turns a bottom-left y into a top line), words 3 and 4 its width and height, words 5 and 6 two mode flags that libGLcore always clears, and word 7 = 1 means "do not make this the channel's default rectangle". **Unknown: no shipped software or published source depends on it:** what flag bits 22 and 23 change in the scaler; no caller sets them. Routes tried: libGLcore's `ChannelRect`, the X module's resize calls and `dgResize`.

## Display requests

**Established** ([ucode/dg_dispatch.tsv](../ucode/dg_dispatch.tsv), handlers in `arm1.u`; bus addresses from [ucode/dg_access.tsv](../ucode/dg_access.tsv)). What each handler touches, read from its code. "record" is the per-channel record DGGlobalState + 0x3294 + 4 x id.

| # | Request | Words | What the handler does |
|---|---|---|---|
| 0 | `DoDGRqstTest` | 1 | replies with the payload word + 1 |
| 1, 2 | `DoDGRqstVCWrite`, `DoDGRqstVCRead` | 2, 1 | write or read any bus address (word 0 address, word 1 value) |
| 3, 4 | `DoDGRqstDiagXmapColor`, `DoDGRqstDisableDiagXmapColor` | 10, 1 | XMAP 0x105 = 1 or 0 (diagnostic colour substitute) |
| 5 | `DoDGRqstVCBusTrace` | 4 | prints "need to compile with VCBUS_TRACING defined": a no-op in this build |
| 6 | `DoDGRqstDiagCursorFromImage` | 4107 | loads a cursor image through XMAP 0x118, 0x119, 0x11e, 0x11f |
| 7 | `DoDGRqstDebugMask` | 1 | sets the firmware's debug-print mask |
| 8 | `DoDGRqstSetupFrameBuffer` | 3 | reads XMAP 0x10b, checks the raster-board count against the pixel size |
| 9, 10 | `DoDGRqstInputSync`, `DoDGRqstGetInputSync` | 1 | fm0 0x8b |
| 11-14 | `DoDGRqstHPhase`, `DoDGRqstGetHPhase`, `DoDGRqstVPhase`, `DoDGRqstGetVPhase` | 2, 1, 1, 1 | horizontal phase through VOC 0x06, 0x0c, 0x0d and 0xcc00; vertical phase through `dgAdjustVPhase` (VOC 0x08) |
| 15, 16, 75, 76 | `DoDGRqstChannelGammaMap`, `DoDGRqstGetChannelGammaMap`, `DoDGRqstChannelGammaMapState`, `DoDGRqstGetChannelGammaMapState` | 2, 1, 5, 1 | record only; the gamma tables themselves are loaded by the `X_LOADGAMMA` token (`arm_x_loadgamma`: 0xc006, 0xc104, 0xf000) |
| 17 | `DoDGRqstFetal` | 1 | builds the board's state from scratch: raster-board count, XMAP, each present VOC, video DAC, gain DAC, encoder and option-board defaults (`dgMake*Fetal`) |
| 18, 19, 74 | `DoDGRqstGetBoardConfig`, `DoDGRqstGetChannelConfig`, `DoDGRqstGetChannelFormatInfo` | 1 | reply from the records; channel config reads VOC 0x06 and 0x44 |
| 20, 21 | `DoDGRqstResize`, `DoDGRqstGetResize` | 8, 1 | [above](#the-resize-request-8-words) |
| 22 | `DoDGRqstLoadFormat` | 383 | [above](#the-loadformat-request-383-words) |
| 23, 24, 66 | `DoDGRqstEnableChannel`, `DoDGRqstDisableChannel`, `DoDGRqstGetChannelEnables` | 3, 1, 1 | VOC 0x01, 0x02, 0x06 and the FIFO 0x8a (also of the option-board partner VOCs); enable syncs with the master VOC first |
| 25, 26, 68, 69, 84, 85 | `DoDGRqstLoadGenlockParams`, `DoDGRqstEnableGenlock`, `DoDGRqstGenlockSwitching`, `DoDGRqstGetGenlockSwitching`, `DoDGRqstInternalGenlock`, `DoDGRqstGetInternalGenlock` | 16, 1, 1, 1, 1, 1 | keep their words in the firmware's state; enabling blanks all channels and runs `dgEnableChannelGenlock` per VOC (VOC 0x30-0x32, 0x43, 0x81-0x84, 0x343, 0xc801/0xc806, 0xe801/0xe806) |
| 27-30 | `DoDGRqstCursorPosition`, `DoDGRqstCursorChannel`, `DoDGRqstCursorType`, `DoDGRqstCursorPriority` | 2, 1, 1, 2 | XMAP 0x102, 0x100, 0x103; priority is kept in the record |
| 31, 32, 60 | `DoDGRqstChannelBlanking`, `DoDGRqstGetChannelBlanking`, `DoDGRqstTempBlankAllChannels` | 2, 1, 1 | `dgBlankChannel` (0xc006, 0xc104, 0xf000) |
| 33, 34, 47, 48 | `DoDGRqstOutputGain`, `DoDGRqstGetOutputGain`, `DoDGRqstEncoderOutputGain`, `DoDGRqstGetEncoderOutputGain` | 2, 1, 1, 1 | 0x1708 |
| 35, 36 | `DoDGRqstSyncSelects`, `DoDGRqstGetSyncSelects` | 4, 1 | video-DAC control registers, gain DAC, 0x3400, 0x8400, 0xcd00 |
| 37, 38 | `DoDGRqstOutputPedestal`, `DoDGRqstGetOutputPedestal` | 2, 1 | video-DAC control register and `dgEncoderPedestal` |
| 39-41 | `DoDGRqstInitTextport`, `DoDGRqstLoadTextportGlyph`, `DoDGRqstLoadTextportColorIndex` | 1, 1, 4 | XMAP 0x118/0x119 data port and 0x11c (0x80050), cursor registers 0x100, 0x101, 0x103 for the glyph |
| 42 | `DoDGRqstEnableVocReadback` | 1 | VOC 0x44 and a clock restart |
| 43, 44, 62, 63 | `DoDGRqstMasterClockSelect`, `DoDGRqstGetMasterClockSelect`, `DoDGRqstXMapClockSelect`, `DoDGRqstGetXMapClockSelect` | 1 | fm0 0x8e; 0x1900 or 0x8000 ("Unknown XMapClockSelect %d") |
| 45 | `DoDGRqstAutoInit` | 1 | reads the stored combination from EEPROM and runs it (`dgLoadCombo`), falling back to the emergency format |
| 46, 49-51, 77 | `DoDGRqstLoadEncoder`, `DoDGRqstSCHPhase`, `DoDGRqstGetSCHPhase`, `DoDGRqstEncoderTestPattern`, `DoDGRqstEnableEncoder` | 1 | encoder control registers through 0x1800/0x1802 |
| 52 | `DoDGRqstBindChannelToXWid` | 2 | records the display id and re-runs the channel's resize |
| 53-55 | `DoDGRqstLoadPabXilinx`, `DoDGRqstLoadPabSizeRegs`, `DoDGRqstLoadPabCtrlRegs` | 1328, 4, 2 | loads the PAB board's programmable logic serially (`pgmclr`, `databit`, `chkframe`, `chkdone` on 0x2400-0x2600), then its registers 0x2300-0x2304 |
| 56 | `DoDGRqstLoadDacCursor` | 263 | video-DAC cursor RAM and colours through the DAC index (0xb00) and indexed data (0xb02) |
| 57, 58, 79 | `DoDGRqstVampireAndFieldDominance`, `DoDGRqstGetVampire`, `DoDGRqstVampire` | 7, 1, 7 | record which channel copies another's output; the encoder and DGO letterbox |
| 59 | `DoDGRqstFastlistChunksize` | 1 | XMAP 0x10f |
| 61 | `DoDGRqstGetDGInterruptState` | 1 | reads 0x90 and 0x300, clears 0x8f |
| 64, 72, 73 | `DoDGRqstChannelResetRatios`, `DoDGRqstBoardResetRatio`, `DoDGRqstGetBoardResetRatio` | 3, 1, 1 | record; fm0 0x8b |
| 65 | `DoDGRqstResetRMBoards` | 1 | [above](#start-up-and-reset-as-the-arm-firmware-performs-them); reads and writes 0x301 and 0x306 |
| 67 | `DoDGRqstPlacementRes` | 9 | record only |
| 70, 71 | `DoDGRqstChannelFieldDominance`, `DoDGRqstGetChannelFieldDominance` | 2, 1 | VOC 0x8f |
| 78 | `DoDGRqstResizeSyncType` | 2 | record only |
| 80, 81 | `DoDGRqstQueryMonitorName`, `DoDGRqstMonitorCommand` | 1, 34 | monitor EDID over the display board's I2C controller (`i2c_init`, `read_edid`) |
| 82 | `DoDGRqstLoadXilinx` | 6 | option-board logic load through 0x8900 ("Illegal xilinx type %d") |
| 83 | `DoDGRqstXServerVideoInit` | 1 | 0xc000 = 1 then 0, re-initialises present VOCs |
| 86, 87 | `DoDGRqstBufferParams`, `DoDGRqstGetBufferParams` | 3, 1 | record only |
| 88, 89 | `DoDGRqstDataFormat`, `DoDGRqstGetDataFormat` | 3, 1 | HDGVO registers 0xc200-0xc216, DGO encoder (`dgWriteDgoTMC22071a`), DPLEX 0x8001/0xe300/0xe500 |
| 90 | `DoDGRqstDVPMult2Freq` | 1 | 0x3400, 0xcd00 |
| 91, 92 | `DoDGRqstVBOBCommand`, `DoDGRqstGetVBOBReply` | 42, 1 | I2C messages to the VBOB option |

**Established** (`i2c_init`, `i2c_start`, `i2c_stop`, `i2c_sendbyte`, `i2c_recvbyte`, `read_edid`). The I2C controller is two bus words at an address the code takes from a variable: a data word and a control word. The control values written are 0x80, 0xc1, 0xc5, 0xc3 and 0x40, and the set-up writes 0x50, 0x1c and 0x14 to the data word between control writes 0x80 and 0xa0. **Inferred:** a PCF8584-style controller (0xc5 start, 0xc3 stop, 0xc1 idle), from the values matching that part's control bits.

### Helper functions

**Established** by `scripts/dg_access.py --functions ucode/arm1.s ucode/dg_access.tsv`: every display-side helper of `arm1.u` with the bus addresses it reads (r) and writes (w) at constant addresses (+0x100*n is a per-channel block, +i an index register), the functions it calls and its first message. A dash means the function reaches the bus only through its callees or through an address held in a variable.

| Function | Address | Bus accesses | Calls | First message |
|---|---|---|---|---|
| `init_voc` | 0x0c0037a0 | - | - |  |
| `init_dac` | 0x0c0037a4 | - | - |  |
| `init_dg_board` | 0x0c003d3c | - | `init_dg_jtag`, `dgTempBlankAllChannels`, `dgAutoInit`, `dgUpdateConfigInfo` | "Warning: external gamma forced to internal for down rev XMAP" |
| `dgLoadCombo` | 0x0c0043c4 | - | - | "Error executing stored video command %d @0x%08x\n" |
| `dgAutoInit` | 0x0c0047d4 | - | `DoDGRqstAutoInit` |  |
| `dgAutoInitLateChannels` | 0x0c004800 | - | `DoDGRqstAutoInit` |  |
| `dgWaitForVocPllInterface` | 0x0c004834 | 0x270+0x100*n r | - | "video_clocks.c" |
| `dgLoadVocClockParams` | 0x0c004894 | 0x271+0x100*n w, 0x273+0x100*n w | - |  |
| `dgProgramClock` | 0x0c004a5c | 0x270+0x100*n w | `dgWaitForVocPllInterface` |  |
| `dgSelectVocClockSrc` | 0x0c004af8 | 0x281+0x100*n r/w | - |  |
| `dgStartVocClock` | 0x0c004bbc | - | `dgProgramClock`, `dgWaitForVocPllInterface`, `dgSelectVocClockSrc` |  |
| `dgLoadChannelGenlockParams` | 0x0c004ec0 | 0x201+0x100*n r/w, 0x206+0x100*n r/w, 0x230+0x100*n w, 0x231+0x100*n w, 0x232+0x100*n w, 0x243+0x100*n w, 0x270+0x100*n r/w, 0x281+0x100*n r/w, 0x282+0x100*n r/w, 0x283+0x100*n w, 0x284+0x100*n w | - |  |
| `dgIsChannelGenlockable` | 0x0c005494 | 0x281+0x100*n r | - |  |
| `dgEnableChannelGenlockClocks` | 0x0c0054d4 | - | `dgIsChannelGenlockable`, `dgProgramClock` |  |
| `dgEnableChannelGenlock` | 0x0c005538 | 0x206+0x100*n r/w, 0x230+0x100*n r/w, 0x243+0x100*n w, 0x343 r, 0xc006 r/w, 0xc801 r, 0xc806 r, 0xe801 w, 0xe806 w | `dgIsChannelGenlockable`, `dgSelectVocClockSrc`, `dgProgramClock` |  |
| `dgShutdownRequesters` | 0x0c0059d0 | 0x201+0x100*n r/w, 0x244+0x100*n r/w | - |  |
| `dgStartupRequesters` | 0x0c005a90 | 0x201+0x100*n r/w, 0x202+0x100*n w, 0x244+0x100*n r/w | - |  |
| `dgShutdownChannelGenlockNicely` | 0x0c005cb0 | 0x201+0x100*n r/w, 0x202+0x100*n w, 0x206+0x100*n r, 0x230+0x100*n r, 0x244+0x100*n r/w, 0x281+0x100*n r | `dgEnableChannelGenlockClocks`, `dgEnableChannelGenlock` | "checking for genlock on channel %d\n" |
| `dgShutdownGenlockNicely` | 0x0c005f28 | - | `dgShutdownChannelGenlockNicely` |  |
| `dgFlushStatus` | 0x0c005f68 | 0x200+0x100*n r | - |  |
| `dgGetInterruptState` | 0x0c005f8c | 0x300 r, 0x90 r | - |  |
| `arm_video_cmd` | 0x0c006398 | - | - | "DG: Illegal video command %d\n" |
| `SendDGRply` | 0x0c0064f8 | - | `start_rdata`, `tbus_regwrite` | "DG: Illegal reply type being sent (%d), aborting\n" |
| `dgVDacControlWrite` | 0x0c006730 | 0xb00+0x100*n w, 0xb02+0x100*n w | - |  |
| `dgVDacControlRead` | 0x0c006814 | 0xb00+0x100*n w, 0xb02+0x100*n r | - |  |
| `dgVDacClutWrite` | 0x0c0068b8 | 0xb00+0x100*n w, 0xb01+0x100*n w | - |  |
| `dgVDacClutRead` | 0x0c00699c | 0xb00+0x100*n w, 0xb01+0x100*n r | - |  |
| `dgVDacModeWrite` | 0x0c006a40 | 0xb03+0x100*n w | - |  |
| `dgVDacModeRead` | 0x0c006a90 | 0xb03+0x100*n r | - |  |
| `dgGDacChannelWrite` | 0x0c006a9c | 0x1302+0x100*n w, 0x1303+0x100*n w, 0x1304+0x100*n w, 0x1305+0x100*n w, 0x130f+0x100*n w, 0x1317+0x100*n w, 0xe610 w | - |  |
| `dgSetDacPixelMux` | 0x0c006db4 | - | - | "illegal mux ratio %d for DAC %d\n" |
| `dgBlankChannel` | 0x0c006e40 | 0xc006 r/w, 0xc104 r/w, 0xf000 w | `DoDGRqstVBOBCommand` |  |
| `dgTempBlankAllChannels` | 0x0c007188 | - | `DoDGRqstTempBlankAllChannels` |  |
| `dgResolveVDacGain` | 0x0c0072d8 | - | `dgVDacControlRead` |  |
| `dgEncoderControlWrite` | 0x0c00852c | 0x1800 w, 0x1802 w | - |  |
| `dgEncoderControlRead` | 0x0c0085bc | 0x1800 w, 0x1802 r | - |  |
| `dgEncoderClutWrite` | 0x0c008614 | 0x1801 w, 0x1803 w | - |  |
| `dgEncoderClutRead` | 0x0c0086a4 | 0x1801 w, 0x1803 r | - |  |
| `dgEncoderPedestal` | 0x0c0086fc | - | `dgEncoderControlRead` |  |
| `dgFetal` | 0x0c009628 | - | `DoDGRqstFetal` |  |
| `dgMakeXmapFetal` | 0x0c0097d4 | 0x100 w, 0x103 w, 0x105 w, 0x106 w, 0x107 w, 0x108 w, 0x109 w, 0x10c w, 0x10d w, 0x10e w, 0x10f w, 0x110 w | - |  |
| `dgMakeChannelFetal` | 0x0c009b98 | - | `DoDGRqstChannelGammaMap` |  |
| `dgMakeVocFetal` | 0x0c009c88 | 0x200+0x100*n r, 0x201+0x100*n w, 0x203+0x100*n w, 0x206+0x100*n w, 0x207+0x100*n w, 0x214+0x100*n w, 0x230+0x100*n w, 0x243+0x100*n w, 0x244+0x100*n w, 0x250+0x100*n w, 0x260+0x100*n w, 0x270+0x100*n w, 0x281+0x100*n w, 0x28d+0x100*n w, 0x28f+0x100*n w | `dgResetVocFifo` |  |
| `dgMakeVDacFetal` | 0x0c00a108 | 0xb00+0x100*n w, 0xb01+0x100*n w, 0xb02+0x100*n w | `dgVDacModeWrite`, `dgVDacControlWrite` |  |
| `dgMakeGDacFetal` | 0x0c00a3f0 | - | `dgGDacChannelWrite` |  |
| `dgMakeEncoderFetal` | 0x0c00a420 | 0x1801 w, 0x1803 w | - |  |
| `dgMakeGvoFetal` | 0x0c00a544 | - | - |  |
| `dgMakeTvoFetal` | 0x0c00a548 | 0x8400 w | - |  |
| `dgMakeDplexFetal` | 0x0c00a5b4 | 0x8001 w, 0x8400 w, 0xe300 w, 0xe500 w | `dgMakeVocFetal` |  |
| `dgLoadFieldSequentialAndStereo` | 0x0c00a7ac | 0x260+i w | - | "Illegal field stereo setting\n" |
| `dgEnableRequester` | 0x0c00a930 | 0x244+0x100*n r/w | - |  |
| `dgSyncWithMasterVoc` | 0x0c00b9a0 | 0x300 r | - |  |
| `dgWriteDgoTMC22071a` | 0x0c00c1a4 | 0xc400 w, 0xc401 w | - |  |
| `dgConfigureHDGVO` | 0x0c00caa4 | - | `i2c_start`, `i2c_sendbyte`, `dgSendHDGVOFormatInfo`, `i2c_stop` |  |
| `dgSendHDGVOFormatInfo` | 0x0c00cea4 | - | `i2c_sendbyte` |  |
| `dgGetBoardConfig` | 0x0c00d200 | - | - | "Warning: unknown jtag dg4 option (%d)\n" |
| `dgUpdateConfigInfo` | 0x0c00d51c | - | `dgGetBoardConfig` |  |
| `i2c_init` | 0x0c00d6fc | 0x0+i r/w, 0x1+i w | - |  |
| `read_edid` | 0x0c00da20 | 0x0+i r/w, 0x1+i r/w | `i2c_init` |  |
| `i2c_start` | 0x0c00de40 | 0x0+i w, 0x1+i w | - |  |
| `i2c_stop` | 0x0c00df58 | 0x1+i w | - |  |
| `i2c_sendbyte` | 0x0c00dfb4 | 0x0+i w, 0x1+i r | - |  |
| `i2c_recvbyte` | 0x0c00e054 | 0x0+i r, 0x1+i r/w | - |  |
| `dgLoadVocIwsc` | 0x0c00e104 | 0x203+0x100*n w, 0x204+0x100*n w, 0x205+0x100*n w | `dgGetWriteVoc` | "Warning: setting screen X to %d groupxels!\n" |
| `dgConfigureVideoRequester` | 0x0c00e324 | 0x206+0x100*n r/w, 0x244+0x100*n r/w, 0x245+0x100*n w, 0x247+0x100*n w, 0x248+0x100*n w, 0x249+0x100*n w, 0x24a+0x100*n w, 0x250+i w, 0x258+i w, 0x260+i w | `dgGetWriteVoc`, `dgLoadVocIwsc` | "WARNING: unknown field layout %d, assuming progressive\n" |
| `dgResize` | 0x0c00efc8 | 0x201+0x100*n r/w, 0x202+0x100*n w, 0x206+0x100*n r, 0x28f+0x100*n w, 0x290+0x100*n w, 0x291+0x100*n w, 0x292+0x100*n w, 0x293+0x100*n w, 0x294+0x100*n w, 0x295+0x100*n w, 0x296+0x100*n w, 0x297+0x100*n w, 0x298+0x100*n w, 0x299+0x100*n w, 0x29a+0x100*n w, 0x29b+0x100*n w, 0x29c+0x100*n w, 0x29d+0x100*n w | `dgGetWriteVoc`, `dgConfigureVideoRequester`, `isvoc1b` | "Illegal x output size %d, clipping to 2\n" |
| `dgResizeVampire` | 0x0c00fd1c | - | `dgResize` |  |
| `dgUpdateFMDidSwapTable` | 0x0c0101b4 | 0x81 w | - |  |
| `dgEncoderOutputLetterbox` | 0x0c010230 | 0x8b r/w, 0x8e r/w | - |  |
| `dgDGOOutputLetterbox` | 0x0c0103ac | 0xc100 w, 0xc101 w, 0xc102 w, 0xc103 w, 0xc104 r/w | - |  |
| `isvoc1b` | 0x0c010990 | - | - |  |
| `dgForceXmapCopyBuffer` | 0x0c010d24 | 0x104 w | - |  |
| `dgGetNumRMs` | 0x0c010d74 | 0x90 r | - |  |
| `dgSetNumRMs` | 0x0c010dd0 | 0x10b w, 0x90 w | `dgGetNumRMs` | "DG: Illegal RM board stuffing\n" |
| `dgIsVocPresent` | 0x0c010f6c | 0x231 r/w, 0x232 w | - |  |
| `dgEnumPresentVocs` | 0x0c011048 | - | - |  |
| `dgResetVocFifo` | 0x0c01109c | 0x28a+0x100*n w | - |  |
| `dgAdjustVPhase` | 0x0c011964 | 0x208+0x100*n r, 0xcc00 w | `DoDGRqstVBOBCommand` |  |
| `dgResolveXMapChannelFormat` | 0x0c011c14 | - | - |  |
| `dgGetWriteVoc` | 0x0c012190 | - | - |  |
| `pgmclr` | 0x0c012644 | 0x2400 r/w | - |  |
| `databit` | 0x0c0126c8 | 0x2500 w | - |  |
| `waitclr` | 0x0c01271c | - | - |  |
| `chkframe` | 0x0c012724 | - | - |  |
| `chkdone` | 0x0c01272c | 0x2600 r | - |  |
| `pabSetupRegisters` | 0x0c0128c0 | 0x2300 w, 0x2301 w, 0x2302 w, 0x2303 w, 0x2304 w | - |  |
| `eeprom_state` | 0x0c019f7c | - | - |  |
| `eeprom_write` | 0x0c019fdc | - | `eeprom_state` |  |
| `eeprom_read` | 0x0c01a07c | - | - |  |
| `eeprom_id` | 0x0c01a0a8 | - | `eeprom_state` |  |
| `eeprom_load` | 0x0c01a230 | - | `eeprom_write` |  |
| `eeprom_setup` | 0x0c01a31c | - | - |  |
| `eeprom_check` | 0x0c01a340 | - | `tbus_regwritenoincr`, `tbus_regwrite`, `start_rdata` |  |
| `init_dg_jtag` | 0x0c01afcc | - | - |  |

### Firmware data and board identification

**Established** (`arm1.u` symbols and the functions that use them):

- `DGGlobalState` (0x04069654) is the display generator's state; the word at + 0x3294 + 4 x id points at the per-channel record every channel request reads and writes ([LoadFormat](#the-loadformat-request-383-words) lists the record offsets it fills).
- `nVideoCmdHistory` (0x040415a8) is used only by `arm_video_cmd`; **inferred** a count for the command log.
- `OptVocAddress` (0x040415b0) is read by `DoDGRqstFetal` and `DoDGRqstXServerVideoInit`; **inferred** the option boards' VOC ids.
- `dgTextportGlyph` (0x040416ec) is the glyph buffer of `DoDGRqstLoadTextportGlyph`.
- `xmap8_chip_type`, `voc1_chip_type`, `KONA_DG4_2VOC_element_list`, `KONA_DG4_2VOC_chain`, `KONA_DG4_8VOC_element_list`, `KONA_DG4_8VOC_chain`, `HILO_DG5_2VOC_element_list`, `HILO_DG5_2VOC_chain`, `HILO_DG5_8VOC_element_list`, `HILO_DG5_8VOC_chain`, `dg_8voc_scan_chain` and `dg_shift` (0x0404206c-0x04045de0) are scan-chain descriptions of the display board for its 2- and 8-VOC builds and of a later DG5 board; the code reaches them through tables (only `HILO_DG5_8VOC_chain` is named by an instruction, in `init_kona_jtag_chain`). `dg_board_id` (0x0c01d2d0) reads the board's identity over the scan chain (`jt_select_chain`, `jt_send_inst_or_data`).
- `NIC_no_sleep_delay_threshold`, `NIC_channels`, `NIC_clock_mhz`, `NIC_rm_nic`, `NIC_rm_config` and `NIC_dgopt_type` (0x04045de4-0x04045df8) are set by `init_config` and read by `extract_nic_ser_nums`.
- `extract_nic_ser_nums` (0x0c01d464) reads the boards' serial-number chips ("Not NIC queriable from %s", "Exhausted all %s NIC probe attempts") through a one-wire layer: `nic_setup`, `nic_next`, `nic_next_scan`, `nic_presence`, `nic_rom_skip`, `nic_read_redirected_page`, `nic_read`, `nic_write`, `nic_read_byte`, `nic_write_byte`, `nic_wait_done`, `nic_crc16` and `nic_calc_crc` (0x0c01e0a0-0x0c01e5e4; page reads check two CRCs, "CRC addr mismatch" and "HW CRC mismatch"), and a bit-level layer that drives the wire through raster-board chips, `knic_setup`, `knic_pulldown`, `knic_release`, `knic_sample`, `knic_stall`, `knic_write`, `knic_read` (0x0c01e938-0x0c01fb40; their messages name the TM7, RM8 and RM10 boards). **Inferred:** the "NIC" is a Dallas-style one-wire serial-number part, from the presence, ROM-skip and CRC-16 steps.
