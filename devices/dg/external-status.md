# External status into the KONA pipe: what software can read

Which status lines from the video, sync and option hardware reach software on an InfiniteReality2 pipe, by what path, and what each reports. It answers the question for a model: which inputs must the emulated pipe let an external device (a sync reference, a swap-ready cable, an option board, a monitor) change, and which register or event shows the change. First configuration only (IP27 Onyx2, IRIX 6.5.30m). Detail pages: [genlock-and-lock-status.md](genlock-and-lock-status.md), [swap-ready-and-swap-barrier.md](swap-ready-and-swap-barrier.md), [gvo-option.md](gvo-option.md).

Grades and citations as in the genlock page. "Display bus" is the display-generator word address space reached through the host registers `HH_VC_ADDRESS` (0x8003c0) and `HH_VC_DATA` (0x8003d0), or by the firmware at ARM address 0x00600000 + 4 x address ([firmware window](README.md#the-firmwares-display-bus-window)).

## The paths, in order of how much software uses them

| Path | What it carries | Who uses it | Grade |
|---|---|---|---|
| **Host interrupt cause bits** (`HH_INTR_STATUS`, 0x800238, write-one-to-clear, enable mask 0x800230) | bit 3 `VIDEO`: the per-frame video interrupt; bit 9 `VOC`: a video-output-chip interrupt (external-sync detect or loss, inferred); bit 4 `ARM`: a firmware event; bit 5 `GE`: a geometry-engine event; bits 0, 2, 6, 8, 10, 11 are error causes | kernel `kona_intr_handler`: VIDEO runs the retrace queue and swap completion, VOC sends a type-12 manager message ([genlock page](genlock-and-lock-status.md)); the diagnostic `vdCheckDgInterrupts` (0x10130d90) reads them | established |
| **Retrace sequence number** (`HH_SEQID`, 0x800248) | the sequence number the pipe has reached, written behind the stream by `RETRACE_SEQID` | `kona_video_intr`, once per video interrupt | established ([Retrace sequence](README.md#retrace-sequence)) |
| **Pipe progress** (`HH_TBUS_STATUS`, 0x8003a8) | raster-bus activity bit; no video or sync input | the kernel watchdog ([hip README](../hip/README.md)) | established |
| **Display-bus reads by a privileged host** (display requests 1 and 2, `DoDGRqstVCWrite` and `DoDGRqstVCRead` at `arm1.u` 0x0c012200 and 0x0c012250, or the kernel's own `HH_VC_*` pair) | any display-bus word: VOC status words 0x200 + 0x100 n (video active, line, frame and field starts, sync levels, external-sync detect/loss and FIFO under/over interrupt causes, [VOC registers](../voc/registers.md)); the master VOC's frame pulse (0x300 bit 7, read by `dgSyncWithMasterVoc` `arm1.u` 0x0c00b9a0); the frame manager's `did_status` (0x8d bit 3 "shifting"); the GVO status 0xcf00 and genlock-chip port 0xc400; DPLEX status 0xe200 | the diagnostics (`irsaudit`); the firmware for its own waits; the X server for the genlock and sync-select requests below | established as accesses |
| **Firmware replies to the X server** (display requests that answer) | request 10 `GetInputSync` (0x8b bits 21-20); 18 `GetBoardConfig` (the option mask, read from the identity word, no hardware read); 19 `GetChannelConfig` (reply flags: channel has a record, the id-group bit, and two bits copied from VOC registers 0x06 and 0x44 bit 0 for a real record); 32 channel blanking; 36 `GetSyncSelects` (six sync options, one read from register 0x8400 or the option board register); 38 pedestal (reads video-DAC register 6 bit 3); 66 channel enables; 69 and 85 the genlock-switching and internal-genlock flags; 73 `GetBoardResetRatio` (0x8b bit 22); 80 `QueryMonitorName` (a 68-byte monitor identity); 92 `GetVBOBReply` (the video breakout box over the serial bus 0xa000, slave 0xef) | `konal.so`, `setmon`, `gfxinfo`, `ircombine`, Inferno's support libraries | established (`dg_requests.md`, [arm1_functions.md](../../software/ucode/arm1_functions.md)) |
| **Firmware mailbox events** (`HH_ARM_MBOX`, 0x800240, causes bit 4) | the ARM's event codes: input DMA done (0x100), swap-in done (0x102), context-activate done (0x103) and text prints; no video or sync event exists among them | `kona_arm_intr` | established ([ARM events](../hip/README.md#arm-events-kona_arm_intr)) |
| **One-wire identity records** (`XG_NIC`, widget offset 0x9c, and the PROM's own accessor at 0x98) | 13 board records including the display board and the `DGOPT` option record (part number, serial, revision); a missing record prints "No NIC serial number available" | `kona_extract_nic_info`, `gfxinfo -v` | established ([xg.md](../xg/README.md)) |
| **XG error word** (XG window +0x6c, `xg_err_status`) | 31 error bits for the host link and map RAM; no video bit | `kona_report_errs` on an XG error interrupt | established ([hip README](../hip/README.md), [xg.md](../xg/README.md)) |
| **Scan chains (JTAG)** | identity words of every chip, option detection (`probe_dg4_chain`, `probe_dg5_chain`, `probe_kona_dgopt_chain`), the external PLL mux (`DG.PLL_MUX0`) | `arm1.u` `init_config`, `irsaudit` | established; not a run-time status path |
| **Serial bus to option boards** (display-bus 0xa000, slave 0xee and 0xef) | the VBOB and HD GVO board command and reply packets; the monitor's DDC channel (`irsaudit` `dg_ddc`, "DG5 - Test I2C Bus/DDC Display Data Channel") | `DoDGRqstVBOBCommand` (request 91), `DoDGRqstGetVBOBReply` (92), request 80 | established ([Display requests](README.md#display-requests)) |

## What each external device can change, and where it shows

| External input | Register or event that reflects it | Notes and grade |
|---|---|---|
| Genlock reference connected on a DG5-2 | VOC status bits 21 (`int_ext_sync_detect`), 20 (`int_ext_sync_loss`); HH_INTR_STATUS bit 9 when enabled | only the X server's lock handler reads them (chip 1, after a bit 9 interrupt and once at screen attach, through display request 61); level or latch unknown ([genlock page](genlock-and-lock-status.md), [events page](../../platforms/ir/xsgi-events-and-manager-messages.md#genlock-and-the-screen-lock-event)) |
| GVO genlock input and serial links | bus 0xc400 serial stream (third bit = lock, 1 = not locked); 0xcf00 bits 0, 2, 3 | read only by the diagnostics; unknown which signal the chip locks to |
| Swap-ready cable and other pipes | DPLEX 0xe200 bit 1 (`NOW`) and bit 5; VOC double-buffer copy completion | no level register ([swap page](swap-ready-and-swap-barrier.md)) |
| DPLEX LVDS cable (neighbour's transmit) | 0xe200 bit 7 (`AUTO_CONFIG_DAT_RCV`) | read by `kona_nclops_discover` and `TEST_ddo3_autoconfig_loopback`; the kernel builds the ring from it ([DPLEX](../../software/kernel/kernel.md#multi-pipe-dplex-display-port-writes)) |
| Option board fitted or absent | identity-word bits 21-19; the `DGOPT` one-wire record; the firmware's VOC presence probe (write and read back of VOC register 0x31 for the option ids); request 18's mask | [GVO page](gvo-option.md) |
| Monitor connected | the DDC channel (request 80, 68-byte identity) | request 80 exists in the dispatch table; which client sends it, and what it does with the bytes, was not traced (**unknown**) |
| Sirius (PAB2) video option and its GPI cable | `TEST_sysprobe` reports "GPI cable for Sirius video option present"; chain probes | first-generation boards only ([video-in.md](video-in.md)) |
| Sync-loss or other video error | none beyond the VOC interrupt and the VOC FIFO under/over status bits (`int_fifo_under`, `int_fifo_over`, enabled by VOC control bits 3-2) | no shipped code reads them; the firmware's VOC reset (`dgMakeVocFetal`) zeroes the enables |

## What a model must expose to pass the diagnostics

1. **Display-bus reads and writes.** Every address above is plain storage unless a page says otherwise; `vcRead` of a word the model has no device for must return the last value written (the diagnostics' register tests write patterns and read them back).
2. **Interrupt causes.** HH_INTR_STATUS bit 3 at each video interrupt and bit 9 on demand, writable-one-to-clear, gated by the enable mask. `vdCheckDgInterrupts` reports a frame interrupt and a VOC interrupt it sees; make both deliverable when the diagnostic enables bits 3 and 9 (`vdEnableDgInterrupts` 0x10130c98).
3. **No external events needed for the run-time stack.** The kernel, X server and firmware never wait on a sync-detect, lock or swap-ready edge (the server reports lock changes to clients that ask and blocks nothing); a model with no external devices passes them with the lines held "no reference, ready".

## Open questions and capture proposals

No hardware was contacted. These need a physical capture and the owner's explicit agreement.

| Unknown | Evidence tried | Smallest test | Safety and effort |
|---|---|---|---|
| Whether VOC status bits 21-20 latch, and what clears them | Every firmware, kernel and diagnostic access to VOC status and control; the VOC `.vof` register list | Read a VOC status word before and after a reference is connected, then after it is removed, and write a 1 or 0 to bit 21 or 20 to see if it clears | Reads are side-effect-free on every other status word the diagnostics read; the write is not (it is a guess) |
| What `HH_INTR_STATUS` bit 9 needs to clear (is the VOC line level-sensitive) | Kernel handler; it writes the cause bit back and nothing else | With a reference connected, read HH_INTR_STATUS repeatedly with bit 9 enabled | Read-only plus an enable write |
| Which DDC bytes the X server consumes from request 80 | Request handler only | Not needed unless a monitor model is built | None |
