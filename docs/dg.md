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

**Inferred.** 0x100-0x103 are the cursor registers of the display generator (channel, glyph address, position, mode), from the values each carries; the IR diagnostic's XMAP register list names registers 0-3 `XMAP_CURSOR_CHAN_ID`, `_GLYPH_BASE`, `_POS` and `_ENABLES` ([DG.h](../DG.h)), so address 0x100 + n is **inferred** to be XMAP register n. The 0xb00 blocks are per-channel registers of eight video channels, from the stride of 0x100 and the eight-iteration loop; the 5 is a "DAC cursor on" encoding (bits 0 and 2), a guess from its being 0 for all other channels. A cursor in the 0x102 form that is aligned to four pixels matches the PROM textport's cursor routines for a mask of both coordinates with `~3` for an older display-generator revision. The "4 then 2" pair is the video DAC's two-byte index 0x204, the cursor control register ([below](#the-firmwares-display-bus-window)), and the glyph address is a word address in the cursor memory, slot x 260 ([cursor memory](#cursor-memory)). **Unknown: no shipped software or published source depends on it:** what DAC address 0x22 is beyond carrying the four position bytes. Routes tried: the kernel, the firmware's DAC helpers (which use only registers 0-3 of each block) and `irsaudit`'s DAC register list.

### Choosing the cursor channel

**Established.** The driver keeps 32 channel rectangles, 16 bytes each, at `P+0x1168` (4456), one per logical video channel. `kona_set_channel_rect` fills one from the 6.5.5 `kona_set_channel_rect_args`: valid (0 invalid, 1 xmap cursor, 2 DAC cursor), a signed priority, four halfword corners x1, y1, x2, y2, signed hot spot bytes and two halfword output sizes (DG.h has the offsets). `kona_get_xy_channel` (`KONA_GET_XY_CHANNEL`) and `kona_determine_cursor_channel` scan channels 31 down to 0. A channel is a candidate if it is valid and `x1 <= x < x2`, `y1 <= y < y2`. Among candidates the one with the **smallest** priority value wins, ties go to the lowest channel number (the scan accepts on equal, so the last, lowest index stays). The 6.5.5 header comment says "higher priority channels get the cursor": the code compares numerically, so a smaller number wins; whatever scale the X server uses, the kernel is not inverting it. The result 32 means no channel.

Channels 0-7 are the ones the display generator has cursor registers for (the same loop count as `kona_enable_dac_cursor`). For a winning channel of 8 or more the function takes a different branch that reports a change when the DAC flag was set (clearing it) and when the winner changed; what the logical channels above 7 map to is **unknown**.

## Buffer swap and retrace wait

**Established.** A swap is not a register write. `KONAschedswapbuf(P, buffer, index, mode)` sends commands in the pipe's stream through the kernel kick sequence of `kona_kern.h` (0x30000 before the first token, 0x10000 before payload and later tokens, 0 at the end), then asks to be told when the pipe passes a marker. The stream, tokens from `GE.h`:

1. `VALIDATE_BANK` (0x1f4), two words: the halfwords at offset 18 of the objects at buffer+120 and buffer+128. Then token 0x172 (`HP_GED_NOP`) with one 0 word.
2. A member of a multi-pipe network (`P+5488` nonzero, `P+5500` not -1 and equal to the halfword at +248 of the buffer) sends `HP_DPLEX_SWAP` (0x166) with payload 1, then the `DISPMODE` packet of step 3, then always takes the retrace wait below, whatever `mode` is: no swap-group logic runs, and mode 1's immediate completion does not apply.
3. `DISPMODE` (0x1e6), three payload words: the word at buffer+20, `index`, and a mode byte kept per index at `P+4360+index`. The byte's bit 0 is set from the halfword at +18 of the buffer's +120 object when `index` is below 64, bit 1 when it is 64 or more. `KONAsetdisplaymode` (the display-mode ioctl) stores a caller-supplied byte there and sends the same token with payload 0, index, byte. The value comes from the X server: it is the `hwd_mode` word `konValidateMode` builds and passes through `RRM_LOADDISPLAYMODE` ([opengl.md](opengl.md#display-modes-x_loadxmap_did-and-rrm_loaddisplaymode-1017) lists its bits by the module's own visual cases). The firmware's `arm_dispmode` writes the byte unchanged to the display-id mode table. What the XMAP does with each bit beyond that is unknown: no shipped software or published source depends on it; routes tried: `arm_dispmode`, the X module's builder in `konValidateMode`, the kernel's two senders.
4. Outside a network, with `mode` 1 or a buffer in no swap group (buffer+120's +160 is 0): the `DISPMODE` packet, then mode 1 calls `kona_swap_complete` at once with no wait, and any other mode takes the retrace wait. This path sends no `HP_TBUS_1`.
5. A buffer in a swap group (the record at buffer+120's +160: member count +0, members still due +4, sequence number +8; members linked in a ring through +168, each with an arrived byte at +176) holds the swap back until the last member arrives. When the due count is 0 it is reloaded from the member count, every arrived byte is cleared and `SWAP_CNTRL` (0x1db) with 0 goes out for each swap-table entry naming the group; a member whose byte is already set sends nothing more. A first arrival sets its byte, calls `kona_retrace_setup` with `kona_swap_complete`, keeps the returned number at group +8 and counts down; while members are due it stops there. The last member sends a `DISPMODE` packet for every ring member, clears the bytes, sends `SWAP_CNTRL` with 1 for each table entry naming the group and calls `kona_retrace_activate` with the number kept at +8. Only then, and only for `mode` 2, does it send token 0xe2 (`HP_TBUS_1`) with 0x478478 twice and call `rrmValidateBuffer` (`kona_video.text.s`, the `bne` on mode 2 before `li $a1,226`). **Inferred** from the token's handler `mgesi_TBUS_1`, which takes three words (a bus-mode code, then the low and high halves of a 64-bit raster-bus word; [GE.h](../GE.h) at `HP_TBUS_1`): the kernel's two words are a mode of 0x478478 and the low half, and the pipe takes the next word written to the command port as the high half, since the token map counts three.

When the marker is reached, `kona_swap_complete` runs. `kona_mswap_complete` is the matching path for the managed (multi-pipe) swap, `KONAschedmgrswapbuf`, with a 96-entry table at `P+3976` and `P+3592`; it is not read further.

### Retrace sequence

- `kona_retrace_setup` takes the next number from the counter at `P+3528`, stores it in the buffer's retrace record (record +0, record at buffer +112) together with the callback (record +16), and appends the record to a queue whose tail and head are at `P+3536` and `P+3544`.
- `kona_retrace_activate` arms a software timeout (`kona_timeout`, record +8 holds the handle) and sends the stream command `RETRACE_SEQID` (0x1e7) with the sequence number as its one payload word.
- The pipe processes the packet in order with the rest of its stream. The driver then waits for a video interrupt. `kona_video_intr` reads `HH_SEQID` (0x800248, HIP.h), and for every queued record whose number is not greater than that value, cancels its timeout and calls its callback with a 0 argument. If the timeout fires first, `kona_retrace_timeout` removes the record and calls the callback with a nonzero argument, and `kona_swap_complete` logs a message (cmn_err tag 2103; `kona_gsync_complete` uses 2104).

**Established** (`arm_retrace_seqid` 0x0c013f5c, `init_dg_board` 0x0c003d3c). The firmware turns `KONA_HP_RETRACE_SEQID` into six engine display-bus writes of 1 to 6 at address 0x7f, the last slot of the display-id mode table, and then a raster-bus register write of the sequence number to index 0x420 (`tbus_regwrite()`), so the number travels behind everything drawn before it; at start-up it writes 0 to the same index. The kernel reads the number back from `HH_SEQID` in the video-interrupt handler. **Inferred:** index 0x420 is the register `HH_SEQID` reflects, and the six writes push earlier display-bus traffic ahead of it. **Unknown: no shipped software or published source depends on it:** whether `HH_SEQID` changes when the write arrives or at the next vertical retrace, and what raises the video interrupt (bit 3). Routes tried: the kernel's retrace queue and handlers, the firmware's sequence-number path and its start-up, `irsaudit`'s interrupt helpers ([interrupts](#interrupts)), and the netlists.

`kona_swap_complete` finds each buffer pointer (`buffer+120`'s +160 field) among the entries listed at `P+184` (count `P+176`), and for every match writes data 2 to address 0x80 (the swap strobe, DG.h), then calls `rrmValidateBuffer`. `kona_gsync_complete` ends with `rrmValidateRetrace`; `KONAschedretraceevent` queues a bare retrace sequence with a callback taken from the driver's slot table. `kona_voc_intr` (the video-option interrupt, bit 9 of `HH_INTR_STATUS`) calls `rrmGenlockNotify(-1)`.

`kona_video_tick` at +0x1468 of `kona_video.o` (112 bytes, the same code in both kernels) is **established** as the per-frame bookkeeping of the video interrupt.
The video-interrupt service `kona_video_intr` calls it before anything else.
When the word at `P+144` is nonzero it first signals the share group whose pointer is at `P+152` (`sendgroupintr`).
It then adds 1 to the three frame counters at `P+124`, `P+128` and `P+164`.
Last, when either doubleword at `P+136` or `P+168` is nonzero, it calls `rrmValidateVideoSync` with `P`, which wakes the video-sync and swap-interval sleepers ([kernel.md](kernel.md)).

## Not covered

Everything about video timing, video format tables, the combiner, palettes, gamma, blanking, genlock lock state and the display-option boards. The driver has no code for them, so the kernel cannot show them. The microcode tables in `ucode/dg4/` and `ucode/vof/` and the X server modules are the next places to look (coverage.md, microcode section).

## Start-up and reset as the ARM firmware performs them

The video timing and combination handling the kernel never touches is in the ARM firmware ([ucode/arm1_firmware.md](../ucode/arm1_firmware.md), IRIX 6.5.30m); [ucode/tport.md](../ucode/tport.md) covers a second image with the same code. Labels as above.

**Established** (`init_dg_board` 0x0c003d3c, `DoDGRqstAutoInit` 0x0c004674). At start-up the ARM configures the display-generator board through the boundary-scan chain (`init_dg_jtag`), blanks every channel (`dgTempBlankAllChannels`), runs `dgAutoInit` and refreshes its configuration record (`dgUpdateConfigInfo`). `dgAutoInit` reads a stored combination from EEPROM (`eeprom_read`) and loads it (`dgLoadCombo`); a bad magic cookie, a combination too large for the scratch memory or a failed flash image falls back to the emergency backup format, as the messages in [ucode/tport.md](../ucode/tport.md) say. Not run when simulated. The 93 requests of `arm_video_cmd` that follow are in [ucode/dg_dispatch.tsv](../ucode/dg_dispatch.tsv).

**Established.** The run-time reset is the request `DoDGRqstResetRMBoards`: blank all channels, shut down the requesters on each present video output chip, wait, reset the raster boards' pixel chips ([rm.md](rm.md#reset-of-the-raster-boards)), restart the master video output chip, with the log lines "ResetRMBoards starting..." and "ResetRMBoards complete!". **Unknown: no shipped software or published source depends on it:** a display-generator reset register. No software writes one. The board is brought to a known state by writes alone: the scan-chain configuration, `DoDGRqstFetal`'s defaults for the XMAP, every present VOC, the video and gain DACs, the encoder and the option boards (`dgMake*Fetal`), then the copy-buffer strobe. The values are in [DG.h](../DG.h). Routes tried: `init_dg_board`, `DoDGRqstResetRMBoards`, `DoDGRqstFetal`, `DoDGRqstXServerVideoInit` (its 0xc000 strobe belongs to an option board), the kernel's `HH_RESET` paths ([xg.md](xg.md)), and `irsaudit`'s `base_xmap_init`, `dg_clock_setup` and `reset_dacs`. The last is a video-DAC sequence on 0x1711, 0x8000 and 0x1900.

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

**Established** (`arm_dispmode` 0x0c013dd4, `arm_swap_cntrl` 0x0c013e50, `arm_dplex_swap` 0x0c013ef4, `arm_x_loadxmap_did` 0x0c03db80). Four token handlers write the display bus in step with the command stream: each stores a bus address to r9 + 0x474 and a value to r9 + 0x840 and hands the engine `gepc[251]` (`mgesi_VCbusWrite`). `DISPMODE` writes its third payload word (the X module's `hwd_mode` byte) to bus address = its second word (the display id), after `dgUpdateFMDidSwapTable` records the display id in every swap-group slot whose drawable word equals the first payload word. `SWAP_CNTRL` writes its payload to 0x80 and, when bit 0 is set, 1 to 0x1920 (or to 0x8001 on a DPLEX board). `DPLEX_SWAP` writes its payload to 0xe500. `X_LOADXMAP_DID` writes its two words to XMAP 0x118 and 0x11c, then 0x11f three times, 0x11e once and 0x11f three more times; the data of those seven writes is whatever register r8 holds, so only the address counts ([fast list](#xmap-registers-memories-and-the-fast-list)).

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
| 1 | always 1: the channel loader at 0x4dc610 stores it | not read |
| 2-17 | the `.vfo` file name (64 bytes) | copied to the channel record + 0x08 |
| 18 | modification time of the `.vfo` file | record + 0x48 |
| 19 | `FramesPerSecond` x 65536; on a genlocked channel 0x4fcfd0 rounds it to a whole multiple or fraction of the sync format's rate | record + 0x8c |
| 20 | `FieldsPerFrame` (1-8, else "illegal nFieldsPerFrame") | record + 0xa4, field loop count |
| 21, 22 | `TotalLinesPerFrame`, `TotalPixelsPerLine` | record + 0x90, + 0x94 |
| 23, 24 | `ActiveLinesPerFrame`, `ActivePixelsPerLine` | not read by this handler |
| 25 | `VideoClockRatioDenominator` (1, 2 or 4, else "illegal nPixelsPerClock") | record + 0x98; VOC 0x01 bits 11-9 through the table at 0x040416c4 (clamped to 4 above 9); DAC pixel mux |
| 26, 27 | word 26: the source channel's `PixelFormat` (0 RGB10, 1 RGBA10, 2 RGB12; 3 and 4 also pass the module's validator), or 5 when this channel's `OutputAlpha` is set; word 27: channel record +324, which ircombine's Dither toggle sets and no `.cmb` field fills ([combination channels](#loading-a-combination-channel)) | record + 0xac; bit 0 to record flag bit 30. `dgConfigureVideoRequester` turns word 26 (1, 2 or 3) into bits 10-8 of VOC 0x44 and flag bit 30 into its bit 7 ([requester](#the-video-requester)) |
| 28-30 | built from `ActiveBlankingLeft` and `ActiveBlankingRight` | VOC 0x14: bit 16, bits 7-0, bits 15-8 |
| 31 | `StateTableValidStates` | number of state words: words 33 to 33 + 31/2 go to VOC 0x09 |
| 32 | bit n set when `SignalInitialStateValue[n]` equals `TransitionDirectionHigh` | VOC 0x07; bits 17-18 added on an old DG4 |
| 33-160 | the state table, two states a word (even state bits 10-0 repeat, 15-11 line type; odd state bits 26-16, 31-27) | VOC 0x09 |
| 161-192 | per line type: bit e set when edge e (< 32) is used on that type (`TransitionLineTypesUsing`) | VOC 0x0a, type selected in VOC 0x06 |
| 193-224 | per line type: `LineTypeLength` - 3 in bits 30-18 (0 if invalid), edges 32-49 in bits 17-0 | VOC 0x0b |
| 225-274 | per edge slot: `TransitionValue` in bits 12-0, 0x1fff if not `TransitionValid` | VOC 0x0c + slot, signal selected in VOC 0x06 |
| 275 | by channel kind ([combination channels](#loading-a-combination-channel)): `usingEncoderOutput` on an encoder-capable channel, 1 on a GVO channel that copies another channel, 1 on the VBOB channel | tested for ids 1, 0x5e and 0xc6/0xc7 before the record + 0x88 update and the HDGVO set-up |
| 276-278 | 276: 1 when an encoder or GVO channel copies another channel; 277: 0 for field-sequential colour, an interlaced format or a PAB channel, else 1; 278: the union of the fields' eye codes as a 2-bit mask, 1 for a non-stereo record | record + 0x88 bits 9, 12-13, 14; word 278 also VOC 0x8a bits 12-13 |
| 279-286, 287-294 | two clock parameter sets from the module's PLL solver at 0x4adfc0: set 0 from a 14.75 MHz or 12.2727 MHz crystal, set 1 from the sync format's line rate when genlocked (word layout in [DG.h](../DG.h), `KONA_LF_CLOCK0`) | `dgLoadVocClockParams` set 0 and set 1 (VOC 0x71, 0x73) |
| 295, 296 | genlock line ratio, from 0x4fcfd0: this format's lines / gcd and the sync format's lines / gcd - 1 when the line counts differ; 1 and 0 when they match; 0 and 0 when not genlocked | VOC 0x81 bits 11-2; VOC 0x82 bits 21-14 |
| 297-300 | 297: always 8191; 298: the sync format's `PFDVOFVerticalPhase` when the line counts match, lines x that phase / sync lines - 2 for a ratio, 8191 when not genlocked; 299 and 300: never stored, 0 | VOC 0x08 bits 12-0, 25-13, 28-26, 29; word 298 also record + 0x164 |
| 301, 302 | the source channel's `MaxTilesPerRequest` and `MaxTilesPerLine` | record + 0xb4, + 0xb8 |
| 303-318 | `FieldLineCount` | per-field records |
| 319-334, 335-350 | `FieldLineOffset`, `FieldLineSkip` | record + 0xe0 + 16 x field, + 0xe4 + 16 x field; the number of distinct offsets to record + 0xa8 |
| 351-366, 367-382 | `FieldColor`, `FieldEye`, re-coded by the module | `dgLoadFieldSequentialAndStereo` (VOC 0x60 table) |

**Established** (absence): the edge direction arrays (`TransitionDirection`) are read by the module but no request word carries them; the frame-detection fields (`PFDTable` packed into two words, `PFDInvert`, `PFDRegularLines`, `PFDComparatorPrecision`, `PFDClockSelect`, `PFDVOFVerticalPhase`, `PFDValidTable`) are read into the record past the request (offsets 1984-2012), so they are not part of it. **Inferred:** the hardware toggles a signal at each valid edge, so no direction is needed.

**Unknown: no shipped software or published source depends on it:** what the clock chip does with each PLL code beyond the solver's own model, and what VOC 0x08 bits 28-26 and 29 (words 299 and 300, always 0 from the host) select. Routes tried: the module's builder, the channel loader and the PLL solver, `setmon` (which carries its own copy of the loader and solver), `ircombine`, the firmware's consumer above, `dgLoadVocClockParams` and the `.vfo` and `vfc/rules/*.def` files.

## Loading a combination channel

**Established** (`kona.so` 6.5.30m, static function at 0x4dc610, called once per enabled channel by the combination loader that follows `konWriteFBSubBlock` in the file). **Inferred** names: the module's section-name strings include `konLdCombinationChannel` and `konLdCombination`, and `setmon` carries the same names; the functions match them by content.

The combination record is the one `vfmtReadKonaCombination` fills (see [opengl.md](opengl.md#vfmtreadkonacombination)): global fields first, then 15 channel records of 2736 bytes at +596. The channel-record offsets the readers and `ircombine`'s channel form use:

| Offset | `.cmb` field | `ircombine` control | Sent as |
|---:|---|---|---|
| +260 | `SourceChannel` | | the channel whose pixels this one copies (vampire) |
| +264, +272 | `InputOrigin`, `InputSize` | | commands 20 and 79 |
| +280, +288 | `MinSize`, `MaxSize` | | command 67 |
| +296 | `OutputSize` | | command 79 |
| +308 | `PixelFormat` | RGB10 0, RGBA10 1, RGB12 2 | LoadFormat word 26 |
| +312 | `DataFormat` | | command 88 |
| +316 | `OutputAlpha` | Alpha On Blue | LoadFormat word 26 = 5 |
| +320 | `CursorPriority` | | command 30 |
| +324 | (none) | Dither | LoadFormat word 27 |
| +328 | `PlacementRes` | | command 67 |
| +340 | `FormatName` | | the `.vfo` to load |
| +600, +604, +608 | `HPhase`, `VPhase`, `SCHPhase` | | commands 11, 13, 49 |
| +612 | `Gain` | | command 33 |
| +628 | `FilterSize` | | command 79 |
| +636, +640, +644 | `FlickerFilter`, `Letterbox`, `SafeArea` | | commands 20 and 86 |
| +648 | `SetupEnable` | Setup | command 37 (pedestal) |
| +652 | `HSync` | Horizontal stores 1, Composite stores 3 | command 35 on the auxiliary port |
| +656 | `TriLevelSyncEnable` | Tri-Level Sync | command 35 on the colour ports |
| +660 | `SyncSource` | | |
| +664-+672 | `SyncComponent` | R, G, B sync toggles | command 35 on the colour ports |
| +676, +680 | `Enable`, `Blanking` | | channel skipped when disabled; command 31 |
| +684 | `FieldLayout` | | command 79 |
| +688 | `VbobSyncSource` | | command 91 |
| +696, +700 | `MaxTilesPerRequest`, `MaxTilesPerLine` | | LoadFormat words 301, 302 |
| +712 | (none) | | set by the reader when the channel exists |

The `ircombine` column is **established** from its channel-form handlers (`horizontalSync__5Form1`, `compositeSync__5Form1`, `rSync__5Form1`, `gSync__5Form1`, `bSync__5Form1`, `triLevelSync__5Form1`, `setup__5Form1`, `dither__5Form1`, `alphaChannel__5Form1`, `rgba10__5Form1`, `rgb12__5Form1`), each of which stores into the same offset of the same channel record.

Each channel's description word (a record the module keeps per pipe channel, reached through word +500 of a 504-byte entry) decides some steps: bit 1 of its first word marks the channel that runs `SCHPhase`, **inferred** the encoder-capable channel; its word +24 is 1 on the path that prints the PAB pixel-mux messages, 3 and 4 elsewhere. **Inferred:** word +24 is the option-board channel type of the 6.5.5 `sys/kona_if.h` configuration record (none 0, PAB 1, VEG 2, DGO/GVO 3, DVP 4, DPLEX 5), from the value match and those messages.

The steps, in order (display-command numbers from [dg_dispatch.tsv](../ucode/dg_dispatch.tsv), payloads as the module stores them):

1. Command 30 (`DoDGRqstCursorPriority`): the VOC id and `CursorPriority`.
2. The format: the source channel's `.vfo` is read into the request (above), words 1, 26, 27, 275-278, 301 and 302 are set, and a channel that copies another one takes the source's name and date words. On a field-sequential channel that copies another, word 25 is cleared.
3. On channel 14 only, command 91 (`DoDGRqstVBOBCommand`, 42 words): 1, 161 and a sync byte, 0x80 | s << 4 for formats whose `TotalLinesPerFrame` is neither 525 nor 625, else 0x08 | s, with s = 3 when `VbobSyncSource` is set and 0 otherwise. The other 39 words are not written (stack contents). Word 275 of the format then becomes 1. **Inferred:** the byte selects the VBOB option's sync input and standard; the firmware passes it to the option over I2C ([display requests](#display-requests)).
4. Command 22 (LoadFormat), through 0x4fcfd0, which also computes the clock and genlock words.
5. Command 88 (`DoDGRqstDataFormat`): the VOC id, `DataFormat` (0-9 passed through, anything else 3) and a flag from the helper at 0x47ad00.
6. Command 86 (`DoDGRqstBufferParams`): the VOC id, `Letterbox`, and `SafeArea` clamped to 50-100 and multiplied by 65536.
7. Command 79 (`DoDGRqstVampire`, 7 words): the VOC id, the source's VOC id, the output width and height (`OutputSize`, or on channels 8 and 11 with `Letterbox` set a size from `SafeArea` and the input's aspect; the width rounded down to a multiple of 4, the height to an even number), `FieldLayout` (5 for a record marked stereo), and the two `FilterSize` values truncated.
8. Command 20 (Resize, [below](#the-resize-request-8-words)): the input rectangle with its y turned into a top line, 1, `FlickerFilter` == 0, 0.
9. Command 67 (`DoDGRqstPlacementRes`, 9 words): the VOC id, the x code (`PlacementRes` x 0 gives 0, 1 gives 4, 2 gives 160 when the channel is its own source and 4 otherwise), the y code (0 gives 0, 1 gives 1 or 4 by the same test), 4 when the channel copies another or its format runs two pixels per clock (word 25 of the format copy the channel record keeps at +716) and 0 otherwise, 1, `MaxSize` and `MinSize`. **Inferred** from the Combiner user guide's placement menu (Locked, Pixel, Tile; files store x 2 and y 1, its defaults Tile and Pixel): the codes are the panning step, 0 none, 4 pixels (one groupxel) or 1 line for Pixel, 160 pixels (one tile) for Tile.
10. Sync, for channels 0-7, 10 and 12: command 35 through the sender at 0x555cf0 (**inferred** `konSetOutputSync`): the auxiliary port gets horizontal TTL sync when `HSync` is 1 and composite TTL sync otherwise. With `TriLevelSyncEnable` set, each colour port whose `SyncComponent` entry is set gets composite tri-level sync and the others none; without it, each set entry gets composite sync and the others none. Select codes and refusals are in [DG.h](../DG.h) (`KONA_SYNC_*`).
11. Controls, through 0x548db0 (**inferred** `konSetControls`, attribute codes 5-11): `Gain` (command 33), `SetupEnable` (command 37, pedestal), `HPhase` (command 11), `VPhase` (command 13), blanking (command 31: 1 when `Blanking` is set or the channel copies another channel, except on channel 11, which sends `Blanking` alone), and on the encoder-capable channel `SCHPhase` (command 49) and `VPhase` again. Attribute codes 1-4 are per-colour gains the module refuses ("CTRLRedOutputGain( %g ) not supported").

**Established** (absence): `SyncSource` (+660), `SyncMethod` (+708) and `HalfLineInterp` (+336) are read but no step above sends them, and no other load of +660 or +708 exists in `kona.so` (the loads at +336 elsewhere are screen function-table calls). **Unknown: no shipped software or published source depends on it:** what the hardware would do with those three fields. Routes tried: every load of those offsets in `kona.so`, `ircombine`'s channel form (no control stores them), the Combiner user guide, `setmon`.

## Genlock parameters (command 25)

**Established** (the combination loader, 0x4fb4c0-0x4fbd24). When the combination names an external sync format, the loader reads that `.vfo` ("failed to load external sync format %s!") and keeps four values in its combination state: the sync format's `TotalLinesPerFrame`, its `PFDVOFVerticalPhase`, its frame rate and its line rate. The first two feed LoadFormat words 295-298 (above). It then fills the 16 words of `DoDGRqstLoadGenlockParams`:

| Word | Value |
|---|---|
| 0 | 0 |
| 1-3 | timing values computed from the sync format's `FormatInfo_H_Sync` (bounded by three times itself), `TotalPixelsPerLine` and a factor 0.33, each multiplied by the ratio of 50 MHz to the sync format's pixel clock (50 MHz is the fastest `PFDClockSpeeds` entry) |
| 4 | 1 |
| 5 | `FormatInfo_H_BackPorch` / 4, scaled the same way, at most 8191 |
| 6 | `FormatInfo_H_BackPorch` / 2, scaled, at most 63 |
| 7, 8 | `PFDTable`, packed into two words by the format reader |
| 9 | `PFDInvert` |
| 10 | `PFDClockSelect` |
| 11 | `PFDComparatorPrecision` |
| 12-15 | 1, 1, 2, 7 |

The firmware handler keeps the words and `dgLoadChannelGenlockParams` writes VOC 0x30-0x32 from them ([display requests](#display-requests)); **inferred** from the `.vof` register list that 0x30-0x32 are `VOC_PFD_CONTROL` and `VOC_PFD_SEQUENCE_LO/HI`, which matches words 7-11 being the frame-detection fields. **Established** (absence): `PFDRegularLines` and `PFDValidTable` are read into the format record (+1996, +2012) and no code in `kona.so` loads them again. **Unknown: no shipped software or published source depends on it:** their role, and the meaning of words 1-6 and 12-15 in the hardware. Routes tried: the loader, the format readers and every load of the record offsets in `kona.so`, the firmware handler, the Combiner user guide, and the same loads in `setmon` (whose copy of this builder loads the same six fields) and `ircombine` (which carries the reader and loads none of them).


## The Resize request (8 words)

**Established** (`DoDGRqstResize` 0x0c00fe84, `dgResize` 0x0c00efc8). Word 0 is the VOC id. Words 1-4 are copied as a block to the channel record + 0x50 and, when word 7 is 0, also to + 0x60. Word 5 sets record flag bit 23 and word 6 bit 22. Word 3 rounded up to a multiple of 4 and word 4 are compared with the channel's output size (record + 0x80, + 0x84; "Illegal x output size %d, clipping to 2" below 2) to compute the scaler steps in 12.20 fixed point, written to VOC 0x90-0x9d, with VOC 0x02 written 0 then 1 around the update and 0x8f rewritten. When the channel has a vampire partner (record + 0xbc > 0) the request is repeated for every present VOC through `dgResizeVampire`.

**Inferred**, from the firmware and from libGLcore's `ChannelRect`, which sends `a0, a1, a2 + a4 - 1, a3, a4, 0, 0, 1`: words 1 and 2 are the source rectangle's x origin and top line (the caller turns a bottom-left y into a top line), words 3 and 4 its width and height, words 5 and 6 two mode flags that libGLcore always clears, and word 7 = 1 means "do not make this the channel's default rectangle". **Unknown: no shipped software or published source depends on it:** what flag bits 22 and 23 change in the scaler; no caller sets them. Routes tried: libGLcore's `ChannelRect`, the X module's resize calls and `dgResize`.

## Display requests

**Established** ([ucode/dg_dispatch.tsv](../ucode/dg_dispatch.tsv), handlers in `arm1.u`; bus addresses from [ucode/dg_access.tsv](../ucode/dg_access.tsv)). What each handler touches, read from its code. "record" is the per-channel record DGGlobalState + 0x3294 + 4 x id. [ucode/dg_requests.md](../ucode/dg_requests.md) has one row per request number with its table word, handler address and reply type.

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
| `pgmclr()` | 0x0c012644 | 0x2400 r/w | - |  |
| `databit()` | 0x0c0126c8 | 0x2500 w | - |  |
| `waitclr()` | 0x0c01271c | - | - |  |
| `chkframe()` | 0x0c012724 | - | - |  |
| `chkdone()` | 0x0c01272c | 0x2600 r | - |  |
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
- `init_fm()`, `init_voc()` and `init_dac()` (0x0c0037a8, 0x0c0037a0, 0x0c0037a4) return at once; the display board's start-up is the scan-chain and request code above.
- `fm2_chip_type`, `adv7160_chip_type` and `tmc22090_chip_type` (0x0404201c, 0x040420bc, 0x0404210c) are three more scan-chain part descriptions in the same table as `xmap8_chip_type` and `voc1_chip_type`. **Inferred:** the bridge (`fm0` in the netlists), the video DACs (ADV7160 is a public RAMDAC part number) and the video encoder (TMC22090 is a public encoder part number), matching the netlist's `dac0`, `dac1` and `encoder`.

## XMAP registers, memories and the fast list

The XMAP registers beyond the diagnostic's list, read from `irsaudit` (IRIX 6.5.30m, register helpers at 0x1013afe4-0x1013c5xx and `vcWrite`/`vcWriteFastlist`/`vcRead` at 0x1014071c-0x10140bac) and the firmware. Numbers are XMAP register n at bus address 0x100 + n. [DG.h](../DG.h) has the fields.

**Established.** Both programs end every group of XMAP register writes by writing 1 to register 4 (`xmap_copybuffer`, `dgForceXmapCopyBuffer()`). `irsaudit` also writes 4 after moving the cursor (`load_cursor_cntrs`). Register 5 turns the substitute colour in 6 and 7 on and off. Register 8 takes the XMAP number 0-3 in the read-back sequence of `TEST_xmapmem`: the address goes to 0x11, the chip to 8, 1 to 4, then 0x12 is read. Register 9 is 0 after the firmware's start-up and 2 after `irsaudit`'s. It also takes the X module's `KONA_HP_X_LOADXMAP_CONFIG` word, 1 when a window is created and 0 when one is destroyed, which `arm_x_loadxmap_config` (0x0c03dc44) writes to bus address 0x109 through the engine. Register 0x10 is written 0 at start-up and nothing else touches it; nothing touches 0xa. **Inferred**, from the function name and the XMAP pin names in the diagnostic's pin list (`xmap_force_curs_pos`, `xmap_rd_id_match`): 4 bit 0 copies double-buffered registers into use and bit 2 forces the cursor position; 8 picks the chip that answers a read; 0x12 is read data. **Unknown: no shipped software or published source depends on it:** what 9, 0xa and 0x10 do beyond these values. Routes tried: the firmware, the kernel, the X module, `irsaudit`'s XMAP tests and its pin list.

**Established** (`vcWriteFastlist`). The diagnostic reaches 0x118-0x11f, the XMAP's indirect memories, in one of two ways. It can write `HH_VC_ADDRESS` with the register number or-ed with 0x10000, then `HH_VC_DATA`. It can also send a raster-bus word: 0x041 in bits 63-52, the bus address in bits 47-32 and the data in bits 31-0 (`bloTbusWrite`). The plain `vcWrite` uses `HH_VC_ADDRESS` without bit 16. The firmware reaches the same registers through the engine (`mgesi_VCbusWrite`). **Inferred:** bit 16 of `HH_VC_ADDRESS` selects the in-band path the XMAP calls the fast list, whose chunk size is register 0xf (`DoDGRqstFastlistChunksize`).

| Register | Use (established) |
|---|---|
| 0x118 | address for the data ports below: memory address and select bits, or a channel or display id |
| 0x119 | colour-map and cursor data; consecutive words go to consecutive addresses (`irsaudit` `load_cmap` writes one address then n words) |
| 0x11b | gamma data (`load_gamma_table`, `arm_x_loadgamma`) |
| 0x11c | display-id table data (`arm_x_loadxmap_did`) |
| 0x11d | channel set-up, channel number in 0x118 (`define_xmap_channel`): bits 3-0 gamma page, 4 external gamma, 5 no gamma, 6 alpha to blue, named by the function's debug line |
| 0x11e | once after a gamma load (`irsaudit`, data 0) and after every firmware load |
| 0x11f | data 0 after a colour-map or cursor load (`irsaudit`, once; the firmware three times, then 0x11e, then three more) and three times before a new address (`change_fastlist_addr`) |

**Inferred:** 0x11f moves earlier list entries through without storing anything, and 0x11e ends a load. **Unknown: no shipped software or published source depends on it** beyond the order above. Routes tried: both programs' loaders, the X module and the pin list.

## Colour maps and gamma tables

**Established** (`irsaudit` `load_gamma_table` 0x1013bbd4, `load_full_gamma` 0x1013bf80, `make_gamma_addr_legal` 0x1013c214). A gamma load writes 0x118 with entry bits 11-0, colour bits 13-12 (0 red, 1 green, 2 blue), page bits 17-14 and a flag in bit 18. It then writes the entries to 0x11b, then 0x11e once and 0x11f three times. `load_full_gamma` fills 4 x 1024 entries per colour and page. `make_gamma_addr_legal` masks the address to 19 bits and turns colour 3 into 2. Below bit 18, it copies bits 9-8 or 11-10 into bits 1-0 (or bit 8 into bit 0), chosen by bits 11-9 and the caller's mode. **Inferred:** page and entry are the 16 address bits of each of the three gamma RAMs (`xmap_gam_ad_red`, `_green`, `_blue` in the pin list), and the low-bit copy reflects which pixel bits feed the gamma index at narrower pixel sizes.

**Established** (`kona.so` `konStore24DCColors`; `arm_x_loadgamma` 0x0c03d6fc). `KONA_HP_X_LOADGAMMA` has two forms.

- **XMAP form**, for each colour of each X colour cell that changes: four words. They are the address (a per-visual base + 2 x pixel index + 0x1000 x colour), the count 2, and then the 12-bit value twice, which is the top 12 bits of the 16-bit X colour. The firmware writes the address to 0x118, streams the counted words to 0x11b through the pass-through counter, then writes 0x11f three times, 0x11e once and 0x11f three times. Each colour index fills two consecutive gamma entries. The module also keeps the values in a 1536-word shadow, three blocks of 512.
- **External form**, first word 0xdeadfeed: sent by `setmon` (the function at 0x10027da0, reached from its video-request switch) and by `kona.so` (the unnamed function at 0x498ff0). Both take a 4096-entry table of 12-bit values per colour, pick every (n / 1024)th entry, and send 0xdeadfeed, 1024 and then 1024 words packed red << 20 | green << 10 | blue, each the 12-bit value shifted right by 2. The firmware clears bits 11-8 of bus address 0xc104 and sets bits 8-7 of 0xc006. It writes the words to 0xf000 + i, the last one through the last-word port, then restores 0xc006. **Inferred:** a 1024-entry 10:10:10 table in the external gamma RAM behind the option-board window. The 6.5.5 `kona_if.h` configuration record has an `extgamma` size field, and `init_dg_board` warns "external gamma forced to internal for down rev XMAPs".

`KONA_HP_X_LOADCMAP` (`arm_x_loadcmap` 0x0c03d5e8) is the XMAP form with data port 0x119 and any count. Counts above 0x200 go in 0x200-word pieces, and the same seven writes to 0x11f and 0x11e follow.

## Cursor memory

**Established.** The cursor image goes through 0x118/0x119 like a colour map. `irsaudit`'s `load_cursor` is its colour-map loader with 260 words, and the firmware's `arm_x_loadcursor` (0x0c03d9c4) moves 1 + 260 words. `kon_initCursorCaches` in the X module builds 39 cache entries of 16 bytes, so cursor slots 0-38 sit at slot x 260. The crosshair address 9884 equals 39 x 260 - 256. The crosshair's colour block, at address + 0x100 where `arm_x_loadcursorcolor` (0x0c03daa0) puts it, is therefore the four words 10140-10143 just past the last slot, and the 256 image words it would cover overlap slot 38's image but are never loaded for it. **Inferred:** the cursor lives in the XMAP's external colour-map RAM. That RAM's address bus (`xmap_cmap_addr`) and the cursor glyph-base register are both 17 bits wide.

**Established** (block layout, from the X module's builders and `DoDGRqstDiagCursorFromImage` 0x0c0081a0). There are 64 rows of four words. Each row holds plane A as 64 bits (pixel 0 in bit 31 of the first word) and then plane B. A pixel's value is A << 1 | B. Words 256, 257, 258 and 259 are the colours of values 3, 2, 1 and 0, each 10:10:10. The diagnostic request builds the planes from bit 1 and bit 0 of each image pixel, and it writes its colours 3, 2 and 1 followed by a stack word it never sets. The X module puts the source bitmap in plane A and the mask in plane B. So 256 is the foreground (or the module's third colour), 258 the background, and 257 the foreground again, for source-without-mask pixels. **Inferred:** value 0 is transparent and word 259 is never shown, since no sender sets it. **Unknown: no shipped software or published source depends on it:** which of the four words the crosshair draws with, because the module loads the same colour into all four. Routes tried: the X module, the firmware's cursor and diagnostic handlers, `irsaudit`'s cursor helpers (`easy_xmap_cursor`, `load_cursor_cntrs`).

## The video requester

**Established** (`dgConfigureVideoRequester` 0x0c00e324, `dgLoadVocIwsc` 0x0c00e104; field names from the `.vof` comment list, [ucode/dg.md](../ucode/dg.md), matched by content). The VOC fetches its channel's window from the framebuffer in tiles of 160 pixels by 8 lines. Pixels are counted in groupxels of four, so a tile line is 40 groupxels. Per channel, the firmware writes:

- the input window: screen width in groupxels - 1 (VOC 0x03), origin x / 4 and y (0x04), size in groupxels and lines (0x05);
- the line requests: a request word holds tiles - 1 in bits 2-0, groupxels - 1 in bits 13-3, a valid bit 14 and a repeat count in bits 22-15. A window that fits one request of at most 8 tiles (4 on board type 2) fills only the END word (0x49) and zeroes START (0x47) and MIDDLE (0x48). A wider one is split into a START request from the window's first groupxel to its tile boundary, a MIDDLE request of whole tiles repeated, and an END request;
- the pan, (x mod 160) / 4, in VOC 0x4a bits 5-0, and x mod 4 in bits 7-6 (`dgConfigureVideoRequester` reloads x at 0x0c00e45c after its divide by 160). **Inferred:** bits 7-6 pick the first pixel inside the first groupxel, so the window can start on any pixel;
- per field f, the first tile address (tile row x tiles per row + x / 160) in bits 19-7 of VOC 0x50 + f and 0x58 + f, and the field pattern in 0x60 + f;
- the requester control VOC 0x44, with bits from LoadFormat words 26 and 27 ([DG.h](../DG.h)), and the tiles per framebuffer row in 0x45.

`irsaudit` prints the same three-request split ("requesting START (%d,%d) (%dx%d) tileaddr %d tilecount %d groupxels %d", MIDDLE with a repeat, END) in its own requester code. **Unknown: no shipped software or published source depends on it:** which control bit is pixel size, dither, transfer size and transfer alpha. Routes tried: the firmware, the `.vof` list and `irsaudit`'s format checks ("XferSize 12 on non-RGB", "XferSize 10 && XferAlpha").

**The pixel format on the video bus.** **Established:** the transfer size is 10 or 12 bits per component with an optional alpha transfer, and 12 is allowed only for RGB (`irsaudit`'s format checks). The 40 wires into each XMAP come from four IMP output lanes of 8 bits ([rm.md](rm.md#display-and-scanout-from-the-raster-boards)). **Inferred:** one 40-bit word per XMAP per clock, enough for a 10:10:10:10 or a 12:12:12 pixel. **Unknown: no shipped software or published source depends on it:** the bit order on the wires. Routes tried: the netlists, the firmware's requester code, `irsaudit`'s video tests (which compare CRC signatures, not wire values) and the `.vof` list.

## Interrupts

**Established** (`irsaudit` `vdEnableDgInterrupts` 0x10130c98, `vdCheckDgInterrupts` 0x10130d90; kernel `kona_video_intr`, `kona_voc_intr`). The diagnostic enables exactly bits 3 and 9 of `HH_INTR_ENABLE` (0x208, after `HH_INTR_INFO` = 0x8000 and `HH_GINTR_INFO` = 0x30000). It reports bit 3 as "got video interrupt" and bit 9 as "got voc interrupt", then writes the status back and 0 to `HH_INTR_ACK`. The kernel treats bit 3 as the per-frame video interrupt (retrace queue, cursor, swaps) and bit 9 as the genlock notifier. In the firmware, `VOC_CONTROL` interrupt bits are set only by `dgLoadChannelGenlockParams` (bits 5-4 set, bit 6 cleared). **Inferred:** from the `.vof` field order, those are the external-sync-loss and external-frame interrupt enables, which makes bit 9 the VOCs' own interrupt line, raised by genlock events. The master VOC's status bit 7 pulses once per frame (`dgSyncWithMasterVoc` waits for it to rise and fall). **Unknown: no shipped software or published source depends on it:** the exact condition behind bit 3 and its timing within the frame. Routes tried: the kernel handlers, the firmware (no code arms an interrupt on `fm0`), `irsaudit`'s video tests and the netlists.

## Display tokens

The tokens of the display path, by their `GE.h` names, with the section that reads each:

| Token | Firmware handler | Read in |
|---|---|---|
| `KONA_HP_DISPMODE` 0x1e6 | `arm_dispmode` | [buffer swap](#buffer-swap-and-retrace-wait), [display-bus window](#the-firmwares-display-bus-window) |
| `KONA_HP_RETRACE_SEQID` 0x1e7 | `arm_retrace_seqid` | [retrace sequence](#retrace-sequence) |
| `KONA_HP_SWAP_CNTRL` 0x1db | `arm_swap_cntrl` | [display-bus window](#the-firmwares-display-bus-window) |
| `KONA_HP_X_LOADGAMMA` 0x12f | `arm_x_loadgamma` | [gamma tables](#colour-maps-and-gamma-tables) |
| `KONA_HP_X_LOADCURSORCOLOR` 0x131 | `arm_x_loadcursorcolor` | [cursor memory](#cursor-memory) |
| `KONA_HP_X_LOADXMAP_DID` 0x132 | `arm_x_loadxmap_did` | [opengl.md](opengl.md#display-modes-x_loadxmap_did-and-rrm_loaddisplaymode-1017) |
| `KONA_HP_X_LOADXMAP_CONFIG` 0x133 | `arm_x_loadxmap_config` | [XMAP registers](#xmap-registers-memories-and-the-fast-list) |

## What the published manuals add

SGI's own manuals describe the display generator from the user's side. They give no register, but they fix limits and meanings that the firmware and the combination files only imply. Labels follow [published-sources.md](published-sources.md): **established (published)** is a first-party statement about the shipped product; where a binary read in this chapter agrees, the line says so. Page numbers are PDF page indexes of the stored copies in [docs/sources/](sources/README.md); the printed page of each manual is lower by its front matter (14 for the combiner guide, 10 for the DPLEX guide, 12 for the HD GVO guide and the DVP2 specification, 18 for the Onyx2 and Onyx 3000 owner's guides).

### Channels and boards (owner's guides, IR4 addendum)

- **Board names (established, published).** The display generator is the DG5, one board per pipe, always in the rightmost slot of the pipe. DG5-2 has two high-resolution channels. DG5-8 is a DG5 with the VIO5H daughterboard and has eight, monitors 0 to 7 on 13W3 connectors. The other options all sit on a DG5-2: GVO (two CCIR 601 serial outputs on BNCs), TVO or HD GVO (two TMDS outputs) and DPLEX. Every DG5 carries an S-Video output, two composite outputs (RCA, BNC), a StereoView connector, genlock in, genlock loop-through and swap ready. 007-4264-002 PDF p. 61-62 (table 2-1), 007-3454-005 PDF p. 64-65 (tables 4-1 and 4-2), 007-4525-001 PDF p. 2. Agrees with the board-composition line under [Start-up and reset](#start-up-and-reset-as-the-arm-firmware-performs-them) (two voc chips in `dg4_2voc`, eight in the 8-VOC variant) and with `NIC_channels` ([above](#firmware-data-and-board-identification)).
- **Prose slip (inferred).** The Onyx2 guides say the VIO5H "outputs five high-resolution video channels" (007-3454-005 PDF p. 67; the rack guide repeats it on PDF p. 80), while the same guides' connector table and the IR4 addendum count six extra monitor connectors, eight in all. Taken as a slip; recorded under [open questions](open-questions.md).
- **Maximum scan-out (established, published).** The deskside guide gives the board's maximum output bandwidth as about 300 million pixels a second, with a 1920 x 1200 at 66 Hz SuperWide monitor as the default; more than two monitors must fit inside that total (007-3454-005 PDF p. 65). The combiner guide is more specific (next section). The guide's own arithmetic for two monitors (188 Mpixel/s) is not reconciled with 300; **unknown** which of the two figures it describes.
- **Encoder and VTR channel (established, published).** The packet bus carries processed video to one of the video output channels or to the NTSC or PAL encoder (VTR channel); a video output controller feeds a three-DAC array (007-3454-005 PDF p. 65). Agrees with the encoder commands of [Display requests](#display-requests).
- **Texture and frame memory per board set (established, published).** See [rm.md](rm.md#what-the-published-manuals-add) for the memory and configuration figures.

### Combination limits (InfiniteReality Video Format Combiner User's Guide, 007-3279-003)

- **Channels and tiles (established, published).** A channel takes pixels from a rectangular area of the framebuffer, two to eight areas per pipe, each with its own timing; channels may overlap (PDF p. 15). The framebuffer is addressed in tiles 160 pixels wide and 8 high and whole tiles are transferred on each line; per-pixel panning costs one extra tile per line (PDF p. 33-34); a 1280 pixel width takes exactly eight tiles and 1281 takes nine (PDF p. 41). This **confirms** the tile size that [DG.h](../DG.h) takes from the code (`KONA_TILE_WIDTH`, `KONA_TILE_HEIGHT`) and the `KONA_CMB_TILE_W` rounding that was only inferred from `allocatedSize`.
- **Placement modes (established, published).** The X placement choices are locked, pixel or tile (tile is the default for X, pixel for Y; PDF p. 35). This is the user-level meaning of the `PlacementRes` codes of command 67 (0 gives 0, 1 gives 4, 2 gives 160 in the list under [Loading a combination channel](#loading-a-combination-channel)): **inferred** locked, pixel and tile, in that order.
- **Pixel depth classes (established, published).** The managed area is allocated in one of Small, Medium, Large or X-Large pixel depth, or "Deepest" (the default), which picks the deepest class that fits the managed area on the installed RM boards. The framebuffer is a fixed amount of memory re-cut into more or fewer pixels; deeper pixels cost a little rendering and video bandwidth; changing depth needs graphics restarted, and a configuration the hardware cannot hold (for example too few RM boards) falls back to the emergency combination (PDF p. 42-44). Agrees with the `Medium pixel depth` line of the `gfxinfo` sample below.
- **Swap rate (established, published).** Every channel of a combination, option boards included, must have the same swap rate, because the display subsystem does its housekeeping (cursor, resampling parameters) for all formats at once, at field, frame or multi-frame boundaries. Rates within about 2 percent count as equal; 525-line formats imply 60 Hz and 625-line formats 50 Hz; 120 Hz stereo and 180 Hz field-sequential formats swap at the 60 Hz frame rate (PDF p. 61-62). Gives the user-level reason a combination whose formats disagree is invalid.
- **Video transmission bandwidth (established, published).** The path from the framebuffer to the video subsystem carries about 290 million pixels a second of 10-bit RGB or 12-bit field-sequential video and about 210 million of 10-bit RGBA or 12-bit RGB; each channel's stream has one type and precision, different channels may differ, and the total is independent of the number of RM boards (PDF p. 62-63). Adding RM boards adds fill, not video bandwidth, and spreads the refresh overhead (PDF p. 21, 64). The bandwidth and "reduced fill" scales of the combiner are percentages of these two (PDF p. 21).
- **DAC limits (established, published).** The DACs of channels 0 and 1 stop at 220 million pixels a second and the other six at 170 million; the manual says to give the fastest formats to channels 0 and 1 (PDF p. 63). A channel's output can be larger than its framebuffer rectangle because of dynamic resampling (zoom). The image-quality paper gives the same 220 Mpixel/s DAC figure (specs/sgi-onyx2-image-quality-whitepaper-20000613.html).
- **Pixel formats (established, published).** Per-channel output pixel format: RGB10 (default), RGBA10, RGB12, a 24-bit Z and a colour-field-sequential format "FS"; only the Sirius Video channel really outputs RGBA10, any other channel puts the 10-bit alpha on the blue port when "Alpha On Blue" is on (and then gamma is bypassed for that channel); Z output lets a second channel carry depth for virtual-set masking (PDF p. 30-31, 38-39). Dither adds a fixed noise pattern before truncating to the output depth (PDF p. 31). Compare the `PixelFormat` and `AlphaOnBlue` rows of the [channel record](#loading-a-combination-channel).
- **Gamma and gain (established, published).** The factory gamma is 1.700 for each component; a two-channel board uses one gamma table (gamma map 0) for both channels, an eight-channel board can have per-channel gamma when the global gamma box is off (PDF p. 36-38). Gain runs 0.0 to 10.0 (default 1.0), is rounded to what the output stage can realise, and a mid-range 6.0 gives 700 mV peak white (PDF p. 39). The `Using Gamma Map 0` line in the `gfxinfo` sample below shows the same map index.
- **Cursor priority (established, published).** The cursor shows on one channel at a time; priority is 0 to 255, a lower number wins; on a tie the channel that last showed the cursor keeps it, and if neither did, the lower channel number wins (PDF p. 32). The smaller-number-wins rule agrees with `kona_determine_cursor_channel` ([Choosing the cursor channel](#choosing-the-cursor-channel)); the "last shower keeps it" rule is not in that function (it takes the lowest index on a tie) and is recorded under [open questions](open-questions.md).
- **Sync (established, published).** Composite sync on green is always present; the alternate sync port carries horizontal or composite sync (composite is the default); R, G and B each have a sync-enable box; tri-level sync is available on the colour ports but not on the composite port; pedestal ("setup") is off by default and must stay off for PAL and Japanese NTSC (PDF p. 31, 35-36). Phase: horizontal phase is a floating-point value, positive values delay the genlocked channel, vertical phase runs from 0 to lines minus 1 (PDF p. 35). Sync source is internal or the genlock input, with a sync format file; with none given the lowest-numbered valid channel's format is used (PDF p. 44). These are the user-level names of the `SetupEnable`, `TriLevelSyncEnable`, `HSync`, `HPhase`, `VPhase` rows of the channel record and of [Genlock parameters](#genlock-parameters-command-25).
- **Textport channel and persistence (established, published).** The combination names one channel for textport output, which shows boot information; `setmon -x` or "Save to EEPROM" stores a combination that takes effect at the next graphics start; `setmon -n` or `ircombine -dest active` loads it at once, and `setmon` rejects an invalid combination that `ircombine` can still save (PDF p. 22, 40, 42, 45). Agrees with `DoDGRqstAutoInit` reading the stored combination from EEPROM.
- **Emergency combination (established, published).** If the stored combination cannot be loaded at boot (for example it exceeds the hardware), the software runs a built-in one: one RM board, two channels, no option boards, a single `1280x1024_60` format on channel 0, editable only by SGI (PDF p. 64). Agrees with the fallback in `DoDGRqstAutoInit` ([Display requests](#display-requests)) and names the format it falls back to.
- **Target hardware facility (established, published).** The combiner can validate a combination for a hardware set it does not run on; the choices are the graphics type (Onyx InfiniteReality, Onyx2 InfiniteReality, Onyx2 Reality), 1, 2 or 4 RM boards, 2 or 8 channels, and the option board (Sirius Video, DVP or GVO) (PDF p. 45-46). This is the manual's list of the board-configuration cases `init_config` keys on (`NIC_channels`, `NIC_rm_config`, `NIC_dgopt_type`).
- **Encoder channel (established, published).** The encoder channel replaces channel 1, can be a window on another channel's pixels or the whole channel (a roaming window saves bandwidth), and is a pass-through for pixel clocks above 120 MHz, where only a pannable NTSC or PAL sized region is recorded (PDF p. 47-48). "Dependent" mode adds no bandwidth or fill, "independent" mode does (PDF p. 21).

### Video option boards

- **Option set (established, published).** On Onyx2 the options appear in the combiner as dedicated channels: Sirius Video (live video in, with alpha, chroma or generated keys), the Digital Video Port (DVP) and the Graphics to Video Option (GVO) (007-3279-003 PDF p. 16-17). The VFC rule files name the same option hardware strings: `Presenter`, `DDO2` and `GVO` (007-3402-003 PDF p. 83), matching the `dg4_ddo_gvo.def` rules of [ucode/dg.md](../ucode/dg.md).
- **DVP and DVP2 (established, published).** Both stream the framebuffer's pixels in raster order, one pixel per pixel clock, 36 bits wide (12 bits per RGB component, no alpha) through a CrayLink-type cable from a daughterboard on the DG5, as 45 differential 5 V PECL pairs: 36 data, two clock pairs (half-rate clock and its quadrature), CBLANK, CSYNC, VSYNC, FIELD and VOC_SWAP, reserved pairs, a receiver-power sense line and an I2C pair. CBLANK leads the data by three pixel clocks. VOC_SWAP is a catch-all that can be set to line start, field start, frame start, tri-sync, the requester-enable window (`vdrc_en` gated by the swap latch), or held high or low; the default is "first frame after a swap". Added latency is 0, 2 or 3 pixel clocks for clock ranges 2.5-60, 60-120 and 120-230 Mpixel/s (the same three break points in both documents). DVP is programmable from 2.5 to 175 MHz and designed for 230; DVP2 from 2.5 to 175 MHz guaranteed, designed for 260, and uses a separate high-speed clock above 220 Mpixel/s, selected by `ircombine`. Timing signals come from the video format compiler. 16-bit luminance goes out on RED[11:0] and the top bits again on GREEN, with the four low bits on BLUE[3:0] and a copy of the top eight on BLUE[11:4]; it needs a 16-bit luminance X visual. The DVP2 block diagram names an ICS1522 video PLL, an MC12439 high-speed clock, ECL shift registers and a Philips PFC8584 I2C controller. DVP2 differs from DVP in connector footprint, timing signals and clock limits. 007-3651-001 PDF p. 13-24, 007-3594-001 PDF p. 13-19. Compare: `DoDGRqstDVPMult2Freq` (command 90) writes 0x3400 and 0xcd00 ([Display requests](#display-requests)); **inferred** that it selects the DVP2 high-speed clock, because the published rule is "clock above 220 Mpixel/s uses the second clock" and the request name says "multiply by two frequency". The I2C controller of `i2c_init` is **inferred** to be the PFC8584 on this board for the same reason; `read_edid` is the VESA DDC use the specification names.
- **DPLEX (established, published).** DG5-2 plus a DPLEX daughtercard, IRIX 6.5.3 or later (the datasheet says 6.5.2), Onyx2 only, not in older Onyx InfiniteReality systems, not on a pipe that has a DVP2 (also called DDO2, DPLEX is code-named DDO3). Pipes are daisy-chained by 40-pin LVDS cables, digital video "out" of one to "in" of the next, no ring and no terminators; the pipe whose analog output drives the display does not use its out connector. All pipes must be genlocked, from pipe 0 or from house sync, by a 75 ohm chain with the last loop-through terminated (for more than four pipes through a distribution amplifier), and swap-ready cabled together with BNC T pieces and no terminators. The combiner sets the sync source to "Loopback Ch1" on the master and "External" on the others; every pipe runs the same format, 31 to 110 MHz pixel clock, 8 bits per component. Each pipe contributes at least one frame, switching on frame boundaries, in a user-programmable sequence, with no hardware master; added latency is N-1 frames for N pipes. The block diagram has a display sequence controller, a digital video output controller, a swap controller and a host interface. 007-3849-001 PDF p. 11-19, 41-44, 51-54 and 007-4264-002 PDF p. 61 (the board table), datasheet 2003 (specs/sgi-2003-dplex-datasheet.pdf). The register addresses `DoDGRqstDataFormat` uses for DPLEX (0x8001, 0xe300, 0xe500) have no published counterpart; the manual gives none. The two documents disagree on the pixel clock range and the IRIX release; see [open questions](open-questions.md).
- **HD GVO / TVO (established, published).** A TMDS Video Output daughterboard on a DG5-2 sends digital pixels as two TMDS links (A and B) to the SGI Video Breakout Box, which makes serial HD and SD video: a subset of ATSC table 3 (at least 720p and 1080i at 59.94 Hz) and CCIR 601 with NTSC or PAL timing, with alpha or key out (needs the RGBA10 pixel format) and genlock from the box's timing output into the board's genlock input. It needs IRIX 6.5.10 with a patch, cannot share a pipe with DVP2, and `ircombine` configures 1920 x 1080 for it by default. 007-3868-001 PDF p. 13-26; the box's firmware needs flashing for DG5-2/TVO (007-4636-001). The `HDGVO_*.vfo` files of [display-formats.md](display-formats.md) are its formats. The original GVO is the same idea with two CCIR 601 BNC outputs from the board itself (007-3279-003 PDF p. 17; 007-4264-002 PDF p. 61-62).

### `gfxinfo -v` sample (DPLEX guide)

007-3849-001 PDF p. 46-49 prints the verbose `gfxinfo` of two DPLEX pipes of an Onyx2 with GE14, one RM7 and a DG5-2. It is a published instance of the report that [setup-tools.md](setup-tools.md#gfxinit-and-gfxinfo) lists by function. Fields: the graphics name `KONAL`, the managed area, "Display has 2 channels", "4 GEs (of 4), occmask = 0x0f" (the engine mask the firmware writes to register 0x222, [arm1_firmware.md](../ucode/arm1_firmware.md)), "4MB external BEF ram, 32bit path", "1 RM7 board (of 1) 1/0/0/0", "Texture Memory: 64MB/-/-/-", "Medium pixel depth", "32K cmap", "DPLEX option detected", a `brd:` line of chip identity words (`20160a06 3020c02/-/-/- f9211002`, per-chip words such as `14832057`, `15032057` and `05532057`, and per-chip-type revision lists `1/1/1/1`, `2/2/2/2/2/2/2/2` and twenty `4`s for the RM; **unknown** what each digit group encodes), then one block per board with its one-wire serial chip: family `0b`, a serial number and a part number. The part numbers are 030-1129-001 (GE board), 030-1054-001 (RM), 030-1053-001 (TM), 030-1242-001 (DG) and 030-1409-001 (the DPLEX option). "KT" (the Ktown2 board) and the extra RM, TM and BP (back plane) slots report "No NIC serial number available". The input-sync line reads "Source - Internal" on pipe 0 and "Source - External, Genlocked - True" on the others, and each channel prints its origin, format file, sync outputs and gamma map. **Established (published)** as output of the shipped tool on that system. The part numbers and the slot list (GE, KT, RM0-3, TM0-3, BP, DG, DGOPT) appear nowhere else in this repository; `extract_nic_ser_nums` ([above](#firmware-data-and-board-identification)) reads the same chips. `hyperpipeinfo` (printed on PDF p. 49) lists `pipe :0.n  network id k`; id -1 marks a pipe with no DPLEX or a cut LVDS cable.
