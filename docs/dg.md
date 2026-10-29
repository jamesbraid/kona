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

**Inferred.** 0x100-0x103 are the cursor registers of the display generator (channel, glyph address, position, mode), from the values each carries. The 0xb00 blocks are per-channel registers of eight video channels, from the stride of 0x100 and the eight-iteration loop; the 5 is a "DAC cursor on" encoding (bits 0 and 2), a guess from its being 0 for all other channels. A cursor in the 0x102 form that is aligned to four pixels matches the PROM textport's cursor routines for a mask of both coordinates with `~3` for an older display-generator revision. **Unknown:** what the repeated "4 then 2" data writes do, what 0x22 is in the DAC, and the units of the glyph address.

### Choosing the cursor channel

**Established.** The driver keeps 32 channel rectangles, 16 bytes each, at `P+0x1168` (4456), one per logical video channel. `kona_set_channel_rect` fills one from the 6.5.5 `kona_set_channel_rect_args`: valid (0 invalid, 1 xmap cursor, 2 DAC cursor), a signed priority, four halfword corners x1, y1, x2, y2, signed hot spot bytes and two halfword output sizes (DG.h has the offsets). `kona_get_xy_channel` (`KONA_GET_XY_CHANNEL`) and `kona_determine_cursor_channel` scan channels 31 down to 0. A channel is a candidate if it is valid and `x1 <= x < x2`, `y1 <= y < y2`. Among candidates the one with the **smallest** priority value wins, ties go to the lowest channel number (the scan accepts on equal, so the last, lowest index stays). The 6.5.5 header comment says "higher priority channels get the cursor": the code compares numerically, so a smaller number wins; whatever scale the X server uses, the kernel is not inverting it. The result 32 means no channel.

Channels 0-7 are the ones the display generator has cursor registers for (the same loop count as `kona_enable_dac_cursor`). For a winning channel of 8 or more the function takes a different branch that reports a change when the DAC flag was set (clearing it) and when the winner changed; what the logical channels above 7 map to is **unknown**.

## Buffer swap and retrace wait

**Established.** A swap is not a register write. `KONAschedswapbuf(P, buffer, index, mode)` sends commands in the pipe's stream through the kernel kick sequence of `kona_kern.h` (0x30000 before the first token, 0x10000 before payload and later tokens, 0 at the end), then asks to be told when the pipe passes a marker. The stream, tokens from `GE.h`:

1. `VALIDATE_BANK` (0x1f4), two words: the halfwords at offset 18 of the objects at buffer+120 and buffer+128. Then token 0x172 (`HP_GED_NOP`) with one 0 word.
2. When `P+5488` is nonzero, `P+5500` is not -1 and it equals the halfword at +248 of the buffer: `HP_DPLEX_SWAP` (0x166), payload 1. That word pair belongs to the multi-pipe configuration and is not read.
3. `DISPMODE` (0x1e6), three payload words: the word at buffer+20, `index`, and a mode byte kept per index at `P+4360+index`. The byte's bit 0 is set from the halfword at +18 of the buffer's +120 object when `index` is below 64, bit 1 when it is 64 or more. `KONAsetdisplaymode` (the display-mode ioctl) stores a caller-supplied byte there and sends the same token with payload 0, index, byte. The meaning of the byte is **unknown**.
4. `mode` 1 calls `kona_swap_complete` at once with no wait. Any other `mode` queues a retrace sequence (below); `mode` 2 then also sends token 0xe2 (`HP_TBUS_1`) with 0x478478 twice, whose meaning is **unknown**.
5. A swap group (a list at buffer+160 with a countdown at +4) holds the sequence back until the last member has arrived, using `SWAP_CNTRL` (0x1db) with 1 or 0 per member. How the group is formed is not read.

When the marker is reached, `kona_swap_complete` runs. `kona_mswap_complete` is the matching path for the managed (multi-pipe) swap, `KONAschedmgrswapbuf`, with a 96-entry table at `P+3976` and `P+3592`; it is not read further.

### Retrace sequence

- `kona_retrace_setup` takes the next number from the counter at `P+3528`, stores it in the buffer's retrace record (record +0, record at buffer +112) together with the callback (record +16), and appends the record to a queue whose tail and head are at `P+3536` and `P+3544`.
- `kona_retrace_activate` arms a software timeout (`kona_timeout`, record +8 holds the handle) and sends the stream command `RETRACE_SEQID` (0x1e7) with the sequence number as its one payload word.
- The pipe processes the packet in order with the rest of its stream. The driver then waits for a video interrupt. `kona_video_intr` reads `HH_SEQID` (0x800248, HIP.h), and for every queued record whose number is not greater than that value, cancels its timeout and calls its callback with a 0 argument. If the timeout fires first, `kona_retrace_timeout` removes the record and calls the callback with a nonzero argument, and `kona_swap_complete` logs a message (cmn_err tag 2103; `kona_gsync_complete` uses 2104).

**Inferred.** The pipe writes the sequence number into `HH_SEQID` when it executes `RETRACE_SEQID` at a vertical retrace and raises the video interrupt; this is why a swap is held back to the retrace. The hardware side of the packet (when exactly the number is written) is **unknown**; the kernel only shows that the value compared is the one read back.

`kona_swap_complete` finds each buffer pointer (`buffer+120`'s +160 field) among the entries listed at `P+184` (count `P+176`), and for every match writes data 2 to address 0x80 (the swap strobe, DG.h), then calls `rrmValidateBuffer`. `kona_gsync_complete` ends with `rrmValidateRetrace`; `KONAschedretraceevent` queues a bare retrace sequence with a callback taken from the driver's slot table. `kona_voc_intr` (the video-option interrupt, bit 9 of `HH_INTR_STATUS`) calls `rrmGenlockNotify(-1)`.

`kona_video_tick`, called at the top of every video interrupt, bumps three counters at `P+124`, `P+128` and `P+164`, sends a signal to the share group at `P+152` when `P+144` is nonzero, and calls `rrmValidateVideoSync` when `P+136` or `P+168` is nonzero. **Inferred:** frame counters and a per-frame wake-up for waiters; their consumers are not read.

## Not covered

Everything about video timing, video format tables, the combiner, palettes, gamma, blanking, genlock lock state and the display-option boards. The driver has no code for them, so the kernel cannot show them. The microcode tables in `ucode/dg4/` and `ucode/vof/` and the X server modules are the next places to look (coverage.md, microcode section).

## Start-up and reset as the ARM firmware performs them

The video timing and combination handling the kernel never touches is in the ARM firmware ([ucode/arm1_firmware.md](../ucode/arm1_firmware.md), IRIX 6.5.30m); [ucode/tport.md](../ucode/tport.md) covers a second image with the same code. Labels as above.

**Established** (`init_dg_board` 0x0c003d3c, `DoDGRqstAutoInit` 0x0c004674). At start-up the ARM configures the display-generator board through the boundary-scan chain (`init_dg_jtag`), blanks every channel (`dgTempBlankAllChannels`), runs `dgAutoInit` and refreshes its configuration record (`dgUpdateConfigInfo`). `dgAutoInit` reads a stored combination from EEPROM (`eeprom_read`) and loads it (`dgLoadCombo`); a bad magic cookie, a combination too large for the scratch memory or a failed flash image falls back to the emergency backup format, as the messages in [ucode/tport.md](../ucode/tport.md) say. Not run when simulated. The 93 requests of `arm_video_cmd` that follow are in [ucode/dg_dispatch.tsv](../ucode/dg_dispatch.tsv).

**Established.** The run-time reset is the request `DoDGRqstResetRMBoards`: blank all channels, shut down the requesters on each present video output chip, wait, reset the raster boards' pixel chips ([rm.md](rm.md#reset-of-the-raster-boards)), restart the master video output chip, with the log lines "ResetRMBoards starting..." and "ResetRMBoards complete!". **Unknown:** the display generator's own reset register and whether a request or an interrupt reaches it from the host.

## The far side of the video-controller port

**Established** (diagnostic netlists, `usr/diags/IR/data/dg4_2voc.netmap.Z` and the `fpln_*` set, IRIX 6.5.30m; pin names are SGI's). The 8-bit video-controller bus of the host-interface chip (`vc_data[8]`, `vc_fifof`, `vc_req_l`, `vc_rdy_l`, `vc_wr_l`, `vc_in_en_l`, `vc_out_en_l`, and `vint[2]` for interrupts) reaches one chip on the display-generator board, `fm0`, through its `dg4_dat[8]` pins (net `vc_data[0]` on `fm0:dg4_dat[0]`). `fm0` is a bridge, not a video chip: it presents a 16-bit local address (`loc_add[16]`) and 32-bit data (`loc_dat[32]`) to the chips of the board, whose nets carry the same names (`locadd`, `locdat`, `dac_dat`, `x_dat`, `v_dat`, `opt_data`), and drives the chip selects: `voc_sel_l[9]` (VOC chips), `xmap_sel_l`, `vdac_sel_l[8]`, `gdac_sel_l[5]`, `enc_sel_l`, `fast_sel_l`, `slow_rdy_in`. It also takes the swap handshake (`do_swap[10]`, `swap_rdy_in`/`swap_rdy_out`), per-VOC video requests (`vidreq_i_voc[10]`, `req[10]`, `req_ack[10]`) and the two interrupts `int1`, `int2` (nets `vc_int1_l` and `vc_int2_l`) and `voc_intr_l`. **Inferred:** the data the driver writes after `HH_VC_ADDRESS` ([above](#what-the-driver-can-reach)) is a local-bus access to one of those chips, `fm0` decoding the address into a select; this is what the "indirect port" is. The `HH_VC_ADDRESS` bit layout that picks the chip is **unknown**; the kernel's addresses 0x100-0x103 (cursor), 0x0b00 + 0x100n (channel blocks) and 0x22 (DAC cursor) are the values that decode.

Board composition, **established** (`dg4_2voc`): `fm0`, two VOC chips (`voc00`, `voc01`; the 8-VOC variant has eight), four XMAP chips (`xmap0`-`xmap3`), two DACs (`dac0`, `dac1`, four 8-bit pixels per colour per clock: `reda[8]`..`redd[8]`) and one video encoder (`encoder`, with `Zcvbs[8]` composite output); variants add `dacsamp`, `dvp`, `hdgvo`, `dplex` and `lvds` option chips. The VOC chip's outputs are exactly the 14 signals of the `.vof` sequencer ([ucode/dg.md](../ucode/dg.md)): `Zhsync`, `Zvsync`, `Zcsync`, `Zcblank`, `Ztrisync`, `Zfield`, `Zframe_st`, `Zimpreg_ld`, `Zxmapreg_ld` and `Zvideo_out`/`vact`, so the format files program a sequencer whose pins these are (**inferred** by the name match). The XMAP has a 40-bit pixel input, 17-bit colour-map address with 32-bit data, three 16-bit gamma-RAM addresses and 12-bit per-colour outputs to the DAC.
