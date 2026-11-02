# Diagnostic tools: `kpm` and the boundary-scan library

Sources: `usr/gfx/KONA/bin/kpm` (6.5.30m, an N32 executable with symbols, with the GNU readline code compiled in), its strings and its call lists; the same boundary-scan library is linked into `usr/diags/IR/bin/irsaudit`. Roles come from the names, the strings the functions use and the calls between them; where the symbol table attributes code to the wrong name (stripped static helpers sit after an exported symbol), the role below follows the code, not the label, and says so. **Established** means read from the code or a string; **inferred** says why.

## What `kpm` is

**Established** (strings). `kpm` is the pipe's post-mortem and inspection tool. Run as the super-user it takes a snapshot of the whole pipe into a dump file under `/usr/adm/crash/diags/gfx/IR/` (extension `.dump`), or it opens an existing dump file and shows it. The modes are the options `-dump`, `-view`, `-status` ("read out the JTAG information without disturbing H/W state") and `-interact` (its entry point `kpm_interact` is 8 bytes, a bare return; the string "Not implemented yet" is in the binary); the modifiers include `-allge`, `-ged`, `-sram`, `+beffifo`, `+geeram`, `+sram`, `+sdram`, `+eeprom`, `-fake` ("use fake JTAG, only useful with simulator"), `-gesymtab` and `-pipe`. A dump records the host environment first (`versions 'patch*'`, `hinv`, `date`, `uname -a`), then resets and reads the boundary-scan chains, then reads the host-interface registers, the ARM's memory, the geometry engines, the distributor, the raster boards and the display board, and finally writes an "overview" section whose lines summarise outstanding output DMA, the graphics FIFO fill level and its water marks, the BEF draw and load counts, the bus-status register and which engine was doing bypass transfers.

## Dump file and viewer

| Function | Role |
|---|---|
| `dfCreateDumpFile`, `dfOpenDumpFile`, `dfCloseDumpFile` | open a dump for writing (writes the header line "konadump" with two numbers) or for reading (checks it); closing a written dump also finishes it; the source file is `dumpfile.c` |
| `dfNewSection`, `dfWriteSection`, `dfPrintf`, `dfWriteNewSectionFromPipe` | add a named section, append bytes or formatted text to it, and record the output of a shell command as a whole section (the `versions`, `hinv`, `date` and `uname` captures); each section ends with a line "End-Of-Section" |
| `dfListSections`, `dfFindSection`, `dfSeekSection`, `dfReadSection`, `dfGetFilePointer` | walk the sections of a dump being read |
| `dfMarkSection`, `dfUnmarkSection`, `dfIsSectionMarked` | the viewer's "mark" state; marked sections are starred in the listing and can be saved together |
| `V_list`, `V_show`, `V_mark`, `V_unmark`, `V_inspect`, `Vpseudo_jtag` | the viewer's commands `list`, `show <section>`, `mark`, `unmark`, `inspect <dumpfile>` and `jtag <chip> [board]` (the last prints every scan register of one chip from the dump) |
| `kpm_view` | the viewer's command loop, with command-line editing, history and completion on section names (the GNU readline code below); `filter` pipes every command's output through a shell command |
| `kpm_dump`, `kpm_status`, `kpm_interact` | the capture entry point (calls every inspection function below in order and writes the sections), the read-only status entry point and the stub |
| `show_overview_section`, `show_general_section`, `show_adap_registers_section`, `show_hip_host_registers_section`, `show_hip_clock_status_section`, `show_icu_map0_section`, `show_fifo_section`, `show_arm_registers_section`, `show_arm_status_section`, `show_arm_ge_mbox_section`, `show_arm_eeprom_section`, `show_arm_sram_section`, `show_arm_sdram_section`, `show_arm_symbols_section`, `show_bef_fifo_section`, `show_bef_perfregs_section`, `show_bef_shadow_section`, `show_ge_section`, `show_ge_core`, `show_ged_section`, `show_ge12_jtag_section`, `show_rm6_jtag_section`, `show_jtag_register`, `show_fm_section`, `show_xmap_section`, `show_nic_section` | one decoder per section type: each reads the section's raw words and prints named fields (host-interface registers by the names of [HIP.h](../HIP.h), ARM status by its bit names, the ICU token map, the ARM's two mailboxes, the SRAM, SDRAM and EEPROM images with ARM symbol names, the geometry engines and distributor, the GE12 and RM6 scan chains, the display board's XMAP and frame-buffer parts, the board serial-number devices) |

## Capture

| Function | Role |
|---|---|
| `adapterInspection`, `hipInspectionPreJtag`, `hipInspectionPostJtag` | read the host-interface registers, once before the scan chains are touched and once after (so the dump shows the state a scan did not disturb and the state after); registers are found by name in the chip tables below. The ODMA, JTAG and ARM registers they read are described in [hip.md](hip.md#output-dma-registers-as-the-host-programs-them) |
| `hipReset` | reset the host-interface chip through its boundary-scan chain ([hip.md](hip.md#reset)) |
| `armAccessEnable`, `armInspection` | give the host access to the ARM's memory and read the SRAM, SDRAM and EEPROM images, naming addresses with the ARM symbol table |
| `read_arm_symbols`, `read_ge_symbols`, `free_arm_symbols`, `asym_address`, `asym_symbol` | load the symbol tables of the ARM firmware and the geometry-engine microcode so that addresses print as names (`Cannot read ARM symtab`, `-gesymtab`), and look up either direction |
| `befFIFOInspection`, `befShadowDrain`, `bef_reset`, `bef_set_current_ge`, `save_bef_configuration` | read the BEF block of each geometry engine: its FIFO, its shadow registers and its performance counters (`beffifo` option), through the output-DMA path of [hip.md](hip.md#output-dma-registers-as-the-host-programs-them) and the scan chain |
| `gedReset`, `ged_register_write`, `ged_set_current_ge`, `gedStateDrain` | reset the geometry distributor, write its registers through the scan chain and read its state out |
| `ge11BypassEnable`, `ge11StateDrain`, `ge11LoadUcode`, `ge11ReadDiagRegisters`, `ge11RamScan`, `ge11EramScan`, `ge11WriteSection`, `ge_register_read`, `ge_register_write`, `tbRegisterWrite` | the geometry-engine side: put the engine in bypass so the host can drain its memories, load a diagnostic microcode image (the `geeram` option), read the diagnostic registers of [GE.h](../GE.h), scan its working and expression RAM, and write raster-bus registers (**inferred** from the names for `tbRegisterWrite` and the scan helpers) |
| `dgInspection`, `nicInspection` | the display board and the serial-number devices on every board (`nic_*`, [hip.md](hip.md)) |
| `jtagInspection`, `read_chains`, `read_jtag_vector` | read the boundary-scan chain description files and every chip's scan registers |
| `get_rm_status`, `rm_forward_analysis`, `rm_backward_analysis`, `ge12_forward_analysis`, `ge12_backward_analysis`, `analyze_hip`, `analyze_ged`, `analyze_ge`, `analyze_bef`, `analyze_rbus`, `analyze_rmstatus` | turn a capture into diagnostic verdict lines (**inferred** from the names and the strings they print: a scan-order walk over a raster or engine chain, forwards and backwards, that names the first chip whose captured bits disagree with its neighbour; `analyze_rbus` is an 8-byte stub) |
| `disassemble_tbus` | decode the raster-bus words saved in the BEF FIFO into token and register writes |
| `dump_indata_as_bits`, `dump_outdata_as_bits` | debug print of the bits sent to and read from a scan chain |

### Hardware helper readings

The following entries are separate readings of the N32 `kpm` routines; each
routine was disassembled from its complete address range before this entry was
written.

- `hipReset` (`usr/gfx/KONA/bin/kpm` 0x10017204, 368 bytes): **Established.** Returns zero after
  checking the adapter revision. For HIP2 it sets bit 0 at host offset 0x3a0
  and writes 5 to 0x3b0; for HIP1 it sets bit 0 at 0x380 and writes 5 to
  0x3b0. If the mapped adapter is absent it runs the boundary-scan reset and
  ID-code sequence through the scan-chain helpers, retrying the chain setup
  after a negative result. (`kpm`, 6.5.30m, full routine at 0x10017204.)
- `armAccessEnable` (`usr/gfx/KONA/bin/kpm` 0x10012340, 56 bytes): **Established.** Clears host
  offset 0x320, sets bit 0 in the word at 0x308, and returns zero; this enables
  the host-side ARM memory access path. (`kpm`, 6.5.30m, full routine at
  0x10012340.)
- `gedReset` (`usr/gfx/KONA/bin/kpm` 0x10019c50, 456 bytes): **Established.** If the distributor
  is mapped, writes 0x200008 then either writes 0x200004 and the selected reset
  value at 0x3f0 or reports failure, and calls `ged_set_current_ge` with the
  saved engine selector. Without the mapping it performs the scan-chain reset
  sequence and retries; it returns zero on success and -1 on an error. (`kpm`,
  6.5.30m, full routine at 0x10019c50.)
- `ged_register_write` (`usr/gfx/KONA/bin/kpm` 0x10019e3c, 164 bytes):
  **Established.** Selects distributor register 0x600 (`sw` at 0x10019e94),
  encodes the register index as bit 5 plus the index's upper bits masked by
  0x1ff00, writes the caller's value through offset 0x3f0 (`sw` at 0x10019eb0),
  then selects 0xac0 (`sw` at 0x10019ec0) and writes the same value there (`sw`
  at 0x10019ecc). It returns zero. (`kpm`, 6.5.30m, full routine at 0x10019e3c.)
- `ged_set_current_ge` (`usr/gfx/KONA/bin/kpm` 0x10019ee0, 228 bytes):
  **Established.** Converts the caller's engine number to a one-bit mask (`sllv`
  at 0x10019f10), writes that mask five times (calls at 0x10019f1c, 0x10019f2c,
  0x10019f3c, 0x10019f4c and 0x10019f5c) to distributor register 0x222, then
  selects 0x200600 at offset 0x3e8 (`sw` at 0x10019f80) and writes 0x58400800 at
  offset 0x3f0 (`sw` at 0x10019f94), and selects 0x200a80 at 0x3e8 (`sw` at
  0x10019fa4) and writes 1 at 0x3f0 (`sw` at 0x10019fc0). It returns zero.
  (`kpm`, 6.5.30m, full routine at 0x10019ee0.)
- `ge_register_write` (`usr/gfx/KONA/bin/kpm` 0x1001b730, 108 bytes):
  **Established.** Writes its first argument, the geometry-engine register
  number, to distributor register 0x234 (call at 0x1001b768), then writes its
  second argument, the value, to register 0x232 (call at 0x1001b778), and
  returns zero. (`kpm`, 6.5.30m, full routine at 0x1001b730.)
- `ge_register_read` (`usr/gfx/KONA/bin/kpm` 0x1001b79c, 100 bytes):
  **Established.** Writes the requested register number to distributor register
  0x234 (call at 0x1001b7cc), then writes 0x80000001 to register 0x236 (call at
  0x1001b7e0) to request the readback; it returns zero. The caller reads the
  resulting value through the surrounding diagnostic state path. (`kpm`,
  6.5.30m, full routine at 0x1001b79c.)
- `ge11BypassEnable` (`usr/gfx/KONA/bin/kpm` 0x1001b800, 304 bytes):
  **Established.** Chooses 0x800 or 0xc00 from the engine status field at +0x10
  (`lw` at 0x1001b85c), scans engine numbers 0..7, and for every set status bit
  calls `ged_set_current_ge` (call at 0x1001b8ac) followed by
  `ge_register_write(0x438 or 0xc38, 0x400001)` (call at 0x1001b8bc). It then
  selects the saved current engine (call at 0x1001b8f4) and returns zero.
  (`kpm`, 6.5.30m, full routine at 0x1001b800.)
- `ge11LoadUcode` (`usr/gfx/KONA/bin/kpm` 0x1001bbf0, 1332 bytes): **Established.** Opens and
  parses the engine image as address plus three words. It stops the engine by
  writing zero to 0x40000 and 0x40018, selects 0xce0 or 0x8e0 from the engine
  status, writes the program address to distributor register 0x234 and each
  three-word record to 0x232, then writes 0x100 to engine register 0x40010 and
  1 to register 0x40000. Non-contiguous records first write 0x200000 plus four times
  the new address to register 0x234; it reports parse, open and write failures
  and returns -1, otherwise zero. (`kpm`, 6.5.30m, full routine at 0x1001bbf0.)
- `ge11StateDrain` (`usr/gfx/KONA/bin/kpm` 0x1001b930, 704 bytes):
  **Established.** Iterates the selected engine's state records, uses the
  diagnostic register-read path (call at 0x1001ba78) for each record and writes
  the captured words to the current dump section (call at 0x1001bae4); it stops
  after the table's count or the first failed read and returns the
  section-writing result. (`kpm`, 6.5.30m, full routine at 0x1001b930.)
- `tbRegisterWrite` (`usr/gfx/KONA/bin/kpm` 0x1001c124, 200 bytes):
  **Established.** Selects raster-bus register 0x20630 (`sw` at 0x1001c14c),
  writes zero (`sw` at 0x1001c15c), selects 0x20a40 (`sw` at 0x1001c16c), writes
  the inverted low bit of the caller-selected field shifted left once (`sw` at
  0x1001c17c), and selects 0x20a40 again (`sw` at 0x1001c184) before returning.
  (`kpm`, 6.5.30m, full routine at 0x1001c124.)
- `hipInspectionPreJtag` (`usr/gfx/KONA/bin/kpm` 0x10012834, 5288 bytes): **Established.**
  Creates the `hip-registers` capture section, reads the host-interface words
  at offsets 0x220, 0x390, 0x398, 0x238 and the remaining table-selected
  offsets into the 145-record register buffer, and records each value with
  `assign_register`. It preserves the pre-scan values and writes the complete
  section to the dump. (`kpm`, 6.5.30m, full routine at 0x10012834.)
- `hipInspectionPostJtag` (`usr/gfx/KONA/bin/kpm` 0x10013cdc, 5072 bytes): **Established.**
  Clears the ARM-access trigger at 0x320, reads the ARM control word at 0x308,
  captures the host-interface and ARM-side register values after the scan, and
  writes the post-scan register section. It reports each captured field through
  the same 60-byte register records. (`kpm`, 6.5.30m, full routine at
  0x10013cdc.)
- `befFIFOInspection` (`usr/gfx/KONA/bin/kpm` 0x10017830, 1872 bytes): **Established.** Captures
  the selected BEF FIFO address/count state, stores the FIFO counters in the
  pipe record, reads the FIFO through the diagnostic output-DMA path, and
  writes the raw and decoded values to the dump section. (`kpm`, 6.5.30m, full
  routine at 0x10017830.)
- `befShadowDrain` (`usr/gfx/KONA/bin/kpm` 0x10018a60, 720 bytes): **Established.** Maps a
  0x418-byte diagnostic transfer, programs the output-DMA descriptor, toggles
  raster-bus control with `tbRegisterWrite`, and drains the selected BEF shadow
  registers into the dump buffer. (`kpm`, 6.5.30m, full routine at 0x10018a60.)
- `bef_reset` (`usr/gfx/KONA/bin/kpm` 0x100180cc, 228 bytes): **Established.** Resets the BEF
  through the scan-chain reset helper, retries the chain operation on a
  negative result, and emits the diagnostic status message before returning.
  (`kpm`, 6.5.30m, full routine at 0x100180cc.)
- `bef_set_current_ge` (`usr/gfx/KONA/bin/kpm` 0x1001890c, 340 bytes): **Established.** Selects
  the requested current geometry engine in the BEF scan record, updates the
  saved engine field, writes the corresponding subfield, and restores the
  scan-chain state. (`kpm`, 6.5.30m, full routine at 0x1001890c.)
- `save_bef_configuration` (`usr/gfx/KONA/bin/kpm` 0x10018d30, 864 bytes): **Established.**
  Reads the current BEF configuration and engine selection through the scan
  chain, extracts the configuration words for the selected engine, and stores
  the resulting records for later FIFO and shadow inspection. (`kpm`,
  6.5.30m, full routine at 0x10018d30.)
- `gedStateDrain` (`usr/gfx/KONA/bin/kpm` 0x10019fc4, 2680 bytes): **Established.** Obtains a
  diagnostic transfer for the distributor state, programs the DMA registers,
  reads distributor select/data pairs through offsets 0x3e8 and 0x3f0, and
  writes the captured state into the dump section. (`kpm`, 6.5.30m, full
  routine at 0x10019fc4.)
- `ge11ReadDiagRegisters` (`usr/gfx/KONA/bin/kpm` 0x1001e748, 620 bytes): **Established.**
  Obtains a 0x40-byte diagnostic transfer, starts output DMA, requests the
  engine diagnostic registers through the readback helper for each table entry,
  waits for completion, and writes the captured words to the report. (`kpm`,
  6.5.30m, full routine at 0x1001e748.)
- `ge11RamScan` (`usr/gfx/KONA/bin/kpm` 0x1001e9b4, 976 bytes): **Established.** Builds the
  selected working-RAM scan descriptor, maps its transfer, drains the engine
  RAM through the boundary-scan helpers, and restores the engine registers with
  the geometry-register writer before returning the captured section result.
  (`kpm`, 6.5.30m, full routine at 0x1001e9b4.)
- `ge11EramScan` (`usr/gfx/KONA/bin/kpm` 0x1001ed84, 496 bytes): **Established.** Selects the
  expression-RAM diagnostic window through distributor registers 0x234 and
  0x236, starts the mapped output-DMA transfer, waits with a ten-iteration
  bound, and writes the captured ERAM section. It reports a failed completion
  and returns -1 on that path. (`kpm`, 6.5.30m, full routine at 0x1001ed84.)
- `setup_dma` (`usr/gfx/KONA/bin/kpm` 0x1001f76c, 84 bytes): **Established.** Clears overflow at
  host offset 0x2c0, stores the caller's page, offset and length at 0x2a0,
  0x2a8 and 0x2b0, mirrors the length to total at 0x2b8, and writes 1 to
  `HH_TBUS_STATUS` at 0x3a8. It returns zero. (`kpm`, 6.5.30m, stores at
  0x1001f788-0x1001f7b4.)
- `cleanup_dma` (`usr/gfx/KONA/bin/kpm` 0x1001f898, 352 bytes): **Established.** If a DMA map is
  active, submits ioctl 0x2774 with kind 10, marks the map released, and calls
  the mapped-buffer cleanup callback when a buffer handle is present. It
  returns zero when the map is absent or cleanup succeeds, and -1 after a
  negative map or cleanup result. (`kpm`, 6.5.30m, branches at
  0x1001f8d4-0x1001f9f4.)
- `assign_register` (`usr/gfx/KONA/bin/kpm` 0x100121f4, 160 bytes): **Established.** Looks up a
  register key in the 60-byte register-record array, stores the caller's value
  at record offset 0x34, and returns zero. A missing key reports the diagnostic
  error and returns -1. (`kpm`, 6.5.30m, lookup at 0x1001221c and store at
  0x1001224c.)
- `extract_register` (`usr/gfx/KONA/bin/kpm` 0x10012294, 172 bytes): **Established.** Looks up
  the register key, ANDs the record's value at offset 0x30 with its mask at
  offset 0x34, stores the result through the caller's pointer, and returns
  zero. A missing key reports the same diagnostic error and returns -1.
  (`kpm`, 6.5.30m, lookup at 0x100122bc and extraction at 0x100122e0.)

The following routines were read in their complete N32 address ranges in the
same executable.

- `show_adap_registers_section` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x1001529c; size 448 bytes. It requests a 0x91-record adapter-register
  section with four-byte elements, then sends the returned section through the
  adapter formatter for offsets 0xc, 0x14, 0x1c, 0x24, 0x2c, 0x34, 0x3c,
  0x64, 0x6c, 0x74, 0x7c, 0x84, 0x8c and 0x94. A short request calls the
  section-error reporter and returns -1; a valid request returns zero after the
  last formatter call. (`kpm`, 6.5.30m, request at 0x100152c8 and formatter
  calls at 0x10015330-0x10015400.)

- `show_hip_clock_status_section` (`usr/gfx/KONA/bin/kpm`): **Established.**
  Address 0x10015c2c; size 376 bytes. It requests one four-byte record and
  branches on the returned value: a nonzero value is formatted through the
  HIP clock-status descriptor at the table offset loaded at 0x10015cac,
  while zero causes a read of the clock-status record followed by twenty
  formatter calls over the returned words. A failed or empty request reports
  the section error and returns -1; both successful paths return zero.
  (`kpm`, 6.5.30m, request at 0x10015c50, selector at 0x10015c90 and loop at
  0x10015d30.)

- `show_arm_status_section` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x10015da4; size 1892 bytes. It obtains the ARM-status section, requires the
  pipe capability bit tested at 0x10015e18, and dispatches the returned status
  selector to the individual status formatters. The body handles the three
  ARM-address selectors 0x200200, 0x20023c and 0x200240 as special cases,
  then emits the remaining status words through the formatter table and the
  ARM-symbol helper. Missing data, an unsupported capability or a formatter
  failure takes the error return; a complete decode returns zero. (`kpm`,
  6.5.30m, capability test at 0x10015e14 and selector dispatch at
  0x10015e50-0x10015e74.)

- `show_arm_eeprom_section` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x100168f0; size 796 bytes. It walks the EEPROM section records returned by
  the capture reader, rejects a missing or non-positive record count, and
  formats each record's address, length and status through the EEPROM display
  handlers. The header path prints the section failure on a negative reader
  result; a nonnegative read with no records is handled separately, and the
  normal record loop ends with zero. (`kpm`, 6.5.30m, complete body
  0x100168f0-0x10016c0b; count and record fields are loaded at
  0x1001698c-0x10016a94.)

- `show_bef_perfregs_section` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x10019090; size 384 bytes. It requests six four-byte performance-register
  values, reports the section error and returns -2 when fewer than six arrive,
  then formats them as the six BEF performance fields at descriptor offsets
  0x420, 0x440, 0x460, 0x480, 0x4a0 and 0x4c0. The formatter receives the six
  saved values at stack offsets 0, 4, 8, 0xc, 0x10 and 0x14, as loaded at
  0x10019144-0x100191e8. (`kpm`, 6.5.30m, request at 0x100190b4 and field
  calls at 0x1001914c-0x100191ec.)

- `show_bef_shadow_section` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x10019210; size 444 bytes. It requests 0x100 four-byte BEF shadow words,
  formats the first 0x59 words with the fixed descriptor at 0x508, and, when
  the caller supplies a positive count, formats the requested extra values
  through the descriptor at 0x518. A nonzero result from that optional read
  selects the alternate descriptor at 0x520; otherwise the routine formats up
  to 0x100 captured words through the indexed descriptor at 0x538. It returns
  zero after a complete pass and -1 for the short initial request. (`kpm`,
  6.5.30m, request at 0x10019240, 0x59-word loop at 0x100192f0 and indexed
  loop at 0x10019390.)

- `show_ged_section` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x1001aa3c; size 2016 bytes. It reads the GED capture records, formats the
  fixed header and per-engine state through the GED descriptors, and passes
  the captured words to the register/status decoders used by the diagnostic
  viewer. The body has separate paths for an empty capture, a failed section
  read and a valid capture; valid records are emitted in the engine order
  supplied by the capture table and the function returns zero. (`kpm`,
  6.5.30m, complete routine 0x1001aa3c-0x1001b21b; record dispatch begins at
  0x1001ab24.)

- `read_ge_symbols` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x1001b554; size 476 bytes. It reads the GE symbol file into a four-byte
  record buffer, allocates the symbol table, and parses records in 0x54-byte
  steps until the parser returns its end marker (2). The first record is
  cleared at byte 0 and word 0x50 (stores at 0x1001b624 and 0x1001b630), and
  parser or allocation failures are logged and return -1. A null input loops
  through the file-open path rather than dereferencing it; a completed read
  returns zero. (`kpm`, 6.5.30m, file read at 0x1001b590 and record loop at
  0x1001b6ec-0x1001b720.)

- `show_ge_core` (`usr/gfx/KONA/bin/kpm`): **Established.** Address 0x1001c44c;
  size 772 bytes. It formats the GE core capture header, the saved engine
  identity and the fixed status fields at capture offsets 0x2980, 0x2984,
  0x2988, 0x2a08, 0x2a88, 0x2c88, 0x2c8c, 0x2c90, 0x2c94 and 0x2c98. The
  status path selects one of two formatter sequences based on the captured
  engine value and only emits the alternate fields when the corresponding
  flag differs. (`kpm`, 6.5.30m, capture loads at 0x1001c4f4-0x1001c71c.)

- `show_ge_section` (`usr/gfx/KONA/bin/kpm`): **Established.** Address 0x1001cb0c;
  size 1296 bytes. It reads the GE section, rejects an empty or failed read,
  and uses `show_ge_core` for each valid core record. The valid path then
  emits the GE register, symbol, diagnostic and engine-state subsections in
  the order of the descriptor table; the count is checked before each group
  and the routine returns zero only after all requested groups have been
  formatted. (`kpm`, 6.5.30m, section read at 0x1001cb70 and core calls at
  0x1001cc80 and 0x1001ce74-0x1001ce9c.)

- `dgInspection` (`usr/gfx/KONA/bin/kpm`): **Established.** Address 0x1001f044;
  size 444 bytes. It runs only when board-status bit 3 is set (the `lw` at
  0x1001f064 and `andi` at 0x1001f06c), snapshots eleven display-generator
  words into the capture record at offset 0x3c0, and then snapshots eighteen
  more words while clearing the associated status word at offset 0x3d0. It
  creates and writes the two capture sections through the dump-file helpers;
  with the capability absent it returns zero without creating either section.
  (`kpm`, 6.5.30m, first loop at 0x1001f0d0-0x1001f0f4 and second loop at
  0x1001f184-0x1001f1a8.)

- `show_fm_section` (`usr/gfx/KONA/bin/kpm`): **Established.** Address 0x1001f200;
  size 424 bytes. It requests the FM section and accepts only the 0x11-word
  result identified by the selector comparison at 0x1001f258. It masks each
  of the seventeen returned words with the matching field mask from the FM
  descriptor table and formats the result; an invalid count follows the
  section-error path and returns -1, while a valid decode returns zero.
  (`kpm`, 6.5.30m, section request at 0x1001f2c4 and field loop at
  0x1001f32c-0x1001f368.)

- `show_xmap_section` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x1001f3a8; size 396 bytes. It requests the XMAP section and accepts the
  0x12-word form selected at 0x1001f400. Each returned word is masked with its
  XMAP field mask and formatted with the field descriptor at 0x88; a short
  section invokes the error reporter and returns -1, while all eighteen
  fields decode and return zero. (`kpm`, 6.5.30m, request at 0x1001f46c and
  field loop at 0x1001f4ec-0x1001f528.)

- `jtagInspection` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x1002207c; size 568 bytes. It opens the JTAG inspection path, checks the
  board's capability and pipe configuration, then walks the configured scan
  records and invokes the JTAG vector reader for each active entry. A missing
  scan configuration or failed vector read takes the diagnostic error path;
  successful inspection stores the final scan result in the pipe record at
  offset 0x440, written by `sw` at 0x100222a4. (`kpm`, 6.5.30m, complete body
  0x1002207c-0x100222a7.)

- `read_jtag_vector` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x10022410; size 400 bytes. It validates the caller's vector descriptor,
  arranges the global boundary-scan instruction state, reads the requested
  vector into the caller's output pointer and returns the scan result. A
  negative vector setup result branches to cleanup at 0x1002252c; a nonzero
  saved completion flag at 0x10022508 selects the alternate cleanup path.
  (`kpm`, 6.5.30m, setup call at 0x10022450, result store at 0x100224f0 and
  completion test at 0x10022508.)

- `show_jtag_register` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x100225a0; size 612 bytes. It finds the selected JTAG register descriptor,
  reads its bit range and display metadata, and passes the extracted value to
  the register formatter. Missing descriptor data or a zero register pointer
  returns through the empty-section path; otherwise it computes the field
  length with the helper at 0x10022738 and formats the register value and
  mask. (`kpm`, 6.5.30m, descriptor loads at 0x1002266c-0x10022724 and
  extraction call at 0x10022768.)

- `show_ge12_jtag_section` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x10022804; size 1164 bytes. It builds the GE12 scan-register descriptors,
  reads each configured vector with `read_jtag_vector`, and formats the
  returned fields through `show_jtag_register`. The initial vector failure
  branches to the error return at 0x10022c58; the normal path emits the
  register groups in table order, including the records whose values are
  loaded at 0x10022ab4, 0x10022aec, 0x10022b84 and 0x10022bf4. (`kpm`,
  6.5.30m, vector call at 0x100228c4 and formatter calls at
  0x10022954-0x10022c78.)

- `ge12_backward_analysis` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x1002cf5c; size 424 bytes. It walks the captured GE12 engine records in
  reverse scan order, skips records whose validity flag at offset 0x564 is
  clear, and reports the saved control and status values at offsets 0x500 and
  0x520. The loop stops at the capture boundary words at offsets 0x4d4 and
  0x4d8 and returns after the final diagnostic message. (`kpm`, 6.5.30m,
  record loads at 0x1002cfc0, 0x1002d01c and 0x1002d02c.)

- `ge12_forward_analysis` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x1002d104; size 424 bytes. It performs the corresponding forward scan of
  the GE12 capture records, using the same validity, control and status fields
  but advancing through the record chain. It reports each valid transition,
  then checks the capture boundary at 0x1002d214-0x1002d220 before returning.
  (`kpm`, 6.5.30m, record validity load at 0x1002d168 and state loads at
  0x1002d1c4 and 0x1002d1d4.)

- `show_rm6_jtag_section` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x1002d2b8; size 2248 bytes. It assembles the RM6 scan descriptors from the
  board's register tables, reads the configured chains and formats the raster
  manager fields. The body separates absent chains from valid chain data and
  emits the field groups through the same JTAG register formatter; a failed
  chain read follows the section error return. (`kpm`, 6.5.30m, complete body
  0x1002d2b8-0x1002db77; descriptor setup begins at 0x1002d2c0.)

- `get_rm_status` (`usr/gfx/KONA/bin/kpm`): **Established.** Address 0x1002e200;
  size 3836 bytes. It selects each present raster-manager record, reads its
  status blocks and returns the captured status pointer used by the RM6
  inspection and viewer paths. The record walk tests the board presence and
  per-record validity before decoding the status fields, and the error paths
  leave the caller's output unchanged. (`kpm`, 6.5.30m, complete body
  0x1002e200-0x1002f0fb; callers use the result in the inspection code at
  0x1002d2b8.)

- `nicInspection` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x10030a48; size 900 bytes. It reads the board serial-number device through
  the configured NIC access procedure, checks the returned device status and
  records the serial and identity fields in the capture structure. An absent
  NIC or failed transaction reports the inspection error; successful device
  reads proceed to `show_nic_section`. (`kpm`, 6.5.30m, complete body
  0x10030a48-0x10030dcb.)

- `show_nic_section` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x10030dcc; size 372 bytes. It reads the NIC capture record, formats the
  board identity and serial fields through the section formatter, and returns
  the formatter result. A missing capture record takes the section-error
  path, so the viewer does not print an invented identity. (`kpm`, 6.5.30m,
  complete body 0x10030dcc-0x10030f3f.)

- `show_hip_host_registers_section` (`usr/gfx/KONA/bin/kpm`). **Established.**
  Address 0x1001545c; size 1028 bytes. It allocates a 0xb6-entry register
  section, then reads the host-interface offsets 0x220, 0x390, 0x398, 0x238,
  0x310, 0x3a8, 0x108, 0x200, 0x208, 0x210, 0x218, 0x220, 0x230, 0x240,
  0x248, 0x250, 0x258, 0x260, 0x268, 0x270, 0x278, 0x280, 0x288, 0x290,
  0x298, 0x2a0, 0x2a8, 0x2b0, 0x2b8, 0x2c0, 0x308, 0x338, 0x340, 0x348,
  0x350, 0x358, 0x360, 0x368, 0x370, 0x378 and either 0x380/0x388 or
  0x3a0, followed by 0x3b0, 0x3c0, 0x3c8 and 0x3e8. A short allocation falls
  back to the report error path; otherwise it records every value and returns
  zero. (`kpm`, 6.5.30m, calls at 0x1001549c-0x100157bc.)

- `show_arm_registers_section` (`usr/gfx/KONA/bin/kpm`). **Established.**
  Address 0x10015860; size 972 bytes. It allocates 0xe4 four-byte records for
  the ARM register section, rejects a short result, and otherwise records the
  ARM offsets 0x200000, 0x200004, 0x200008, 0x20000c, 0x200010, 0x200014,
  0x200018, 0x200020, 0x200024, 0x200030, 0x200034, 0x20003c, 0x200040,
  0x200048, 0x200050, 0x200054, 0x200058, 0x20005c, 0x200060, 0x200064,
  0x200068, 0x20006c, 0x200070, 0x200074, 0x200078, 0x20007c, 0x200090,
  0x200094, 0x200098, 0x20009c, 0x2000b0, 0x2000b4, 0x2000b8, 0x2000bc,
  0x2000c0, 0x2000c4, 0x2000c8, 0x2000cc, 0x2000f0 and 0x2000f4. It returns
  zero after the final record is stored. (`kpm`, 6.5.30m, calls at
  0x100158a0 and 0x10015908-0x10015c08.)

- `show_fifo_section` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10016508; size 452 bytes. It requests four four-byte values, allocates a
  buffer sized by the returned count, and passes each value with its index to
  the section formatter. A missing buffer or non-positive count reports an
  error and returns -1; a complete loop frees the buffer and returns zero.
  (`kpm`, 6.5.30m, allocation at 0x1001655c and loop at 0x100165c8.)

- `show_arm_ge_mbox_section` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x100166cc; size 256 bytes. It requests four four-byte mailbox words, formats
  all four with indices 0 through 3, and returns zero. When the request yields
  fewer than four words it reports the section error and returns -1.
  (`kpm`, 6.5.30m, loop at 0x10016774.)

- `show_icu_map0_section` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x100167cc; size 292 bytes. It requests 0x200 four-byte entries, reads the
  map word at the address formed from the pipe base plus 0x8218, and formats
  each entry with its index and corresponding map value. A short request takes
  the section error path; the 0x200-entry loop otherwise finishes with zero.
  (`kpm`, 6.5.30m, address formation at 0x10016868 and loop at 0x1001688c.)

- `show_arm_sram_section` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10016c0c; size 408 bytes. It requires bit 6 in the pipe flags, requests
  0x400 words, and formats each word as four byte fields in the ARM SRAM
  section. A short request or a clear flag reports an error and returns -1;
  0x400 formatted words lead to zero. (`kpm`, 6.5.30m, flag test at
  0x10016c40 and byte extraction at 0x10016cbc.)

- `show_arm_sdram_section` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10016da4; size 1120 bytes. It requires pipe flag 0x100, accepts only the
  two supported display selectors (the first byte of the selected name must be
  `p` or `s`), and uses the requested selector and channel arguments to format
  the SDRAM capture. A missing flag, invalid selector or failed section read
  follows the error path; the four-channel loop stores each result before
  returning zero. (`kpm`, 6.5.30m, selector checks at 0x10016e00 and channel
  loop through 0x100170b0.)

- `analyze_hip` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x100173b0;
  size 1152 bytes. It checks the capture counters at offsets 0x4b8 and 0x4c0,
  reports an empty or inconsistent capture, then classifies the saved register
  at 0x4c8 against the host-interface ranges 0x2000200-0x20009fc and
  0x2000a00-0x2000bfc plus the special values 0x2000400, 0x2000200,
  0x200023c and 0x2000240. It also reports decoded values from offsets 0x4b0,
  0x4b4, 0x4cc and 0x4d0 and conditionally reports flags from 0x4a4 and 0x4a8.
  (`kpm`, 6.5.30m, classification branches at 0x10017474-0x10017510.)

- `analyze_bef` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x100199a8;
  size 680 bytes. It scans eight engine records, reports each set bit in the
  capture mask at record offset 0x10 only when that engine's record flag at
  +0x564 is clear, and distinguishes a missing capture at +0x5ac. It then
  reports the saved state words at +0x55c, +0x560, +0x58c, +0x590, +0x594,
  +0x598, +0x5a4 and +0x5a8, with separate messages for bits 0 and 1 of the
  flags at +0x4a4. (`kpm`, 6.5.30m, engine loop at 0x100199e4.)

- `analyze_ged` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x1001b21c;
  size 824 bytes. It requires both capture state at +0x4d4 and a non-zero
  validity word at +0x4d8, derives the selected engine from bits 6:8 of +0x4e0,
  and scans eight engine bits in +0x10 against the corresponding bits in +0x4e4.
  It reports each mismatch, then decodes flags in +0x4dc (bits 2, 1 and 0),
  status bits 13 and 12 of +0x4e0, and the three three-bit fields at positions
  9, 0 and 3. (`kpm`, 6.5.30m, validity and engine scan at 0x1001b254-0x1001b2c8.)

- `analyze_ge` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x1001d218;
  size 364 bytes. It scans eight engine records whose active bits are in each
  record's word at +4, calls the status decoder with the saved value at +0x5b0,
  and formats the engine number, decoded status and words at +0x500 and +0x510
  from the selected record. It advances records by 0x20 bytes and ends with a
  summary message after all eight slots. (`kpm`, 6.5.30m, record loop at
  0x1001d28c-0x1001d32c.)

- `ge11WriteSection` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x1001ef74; size 208 bytes. It writes a section header of 0x43314 bytes from
  the supplied buffer, copies the captured count at +0x32f4 into each selected
  engine record at +0x5b0, saves the first handler pointer at +0x5cc, and copies
  six words from the table at +0x32d8 into consecutive record slots. The engine
  index selects records in a 0x20-byte stride. (`kpm`, 6.5.30m, record writes
  at 0x1001eff8-0x1001f034.)

- `set_transfer_address` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x1001f534; size 568 bytes. It rejects a zero address, clears the current DMA
  handle, and for an address below 0x80000000 allocates a 0x200000-byte map,
  records kind 9 and submits ioctl 0x2774. On success it marks the transfer
  active and returns the mapped page, offset and length through its three output
  pointers; allocation, ioctl, or negative adapter-state paths log an error and
  return the sentinel 0xdeadbabe. (`kpm`, 6.5.30m, map setup at
  0x1001f5a0-0x1001f638.)

- `wait_for_dma_completion` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x1001f7c0; size 216 bytes. It polls the DMA length at host record offset
  0x2b8, calling the delay hook between polls, for at most the caller's positive
  limit; the first two polls pass the loop index as the delay argument and later
  polls pass zero. It stores 1 at host offset 0x298 and returns the final DMA
  length, including a non-zero value when the limit expires. (`kpm`, 6.5.30m,
  polling loop at 0x1001f820-0x1001f864.)

- `analyze_rmstatus` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x1002f7d8; size 344 bytes. It requires bit 2 of the board status word, then
  scans four raster-manager records at 0x108-byte and 0x14-byte strides. For
  each record with a non-zero presence word at +0x20 and status pointer at
  +0x44c, it reports the three status bits in the word at +0x6b8 by calling the
  matching message formatter. It exits quietly when the board flag or required
  record pointers are absent. (`kpm`, 6.5.30m, four-record loop at
  0x1002f840-0x1002f8ec.)

## Register tables and logging

| Function | Role |
|---|---|
| `locate_register`, `assign_register`, `extract_register`, `get_field_length` | find a register by name in the per-chip tables (`hip1_jt_regs`, `hip2_jt_regs`, `imp8_jt_regs`, `pg2_jt_regs`, `tg1_jt_regs`, `tf1_jt_regs`, `tm1_jt_regs` and their later revisions), then set or read a bit field of a captured image |
| `kjiSetSubField`, `kjiGetSubField`, `kjiGetSubFieldV`, `kj_arrange_global_instruction` | set or read a sub-field of a scan instruction or data register and build the global instruction word that selects one chip's register on a chain |
| `kerror`, `klog`, `get_time`, `findfile`, `create_file`, `open_file`, `init_report`, `close_report` | the tool's logging and files: error and information lines ("EFATAL", "EINFO"), the time stamp, a path search under the `GL_GRROOT` root, and the summary and error report files |
| `__start`, `__istart`, `_mcount` | C runtime start-up and the profiling hook the compiler inserts |

## Boundary-scan library (`jt_*`)

**Established** (names, strings and the host procedures in [hip.md](hip.md#the-hosts-boundary-scan-controller-and-the-arm-debug-window)). `kpm` and `irsaudit` link the same boundary-scan library: it reads chain and chip descriptions from boundary-scan description files (`read_bsdl`, `read_bsr`, `jt_findfile`, `jt_zopen`, `jt_zclose`, `jt_canonize`, `type_to_func`, `type_to_safe`, `porttopin`, `pintoport`, `premature_eof`), builds instruction and data vectors for each chip on a chain, and sends them through a set of low-level procedures that the tool installs (`jt_set_procs`; for `kpm` those are the host-register routines of the previous reference).

| Function | Role |
|---|---|
| `jt_init`, `jt_set_error_handler`, `jt_set_debug_handler`, `jt_error`, `jt_debug`, `jt_perror` | library start-up and the error and debug hooks (the tool's handler prints "KONAjtag:") |
| `jt_new_data_vector`, `jt_new_data_bvector`, `jt_new_inst_vector`, `jt_new_inst_bvector`, `jt_dispose_vector`, `jt_int_to_vector`, `jt_reverse_unpacked_vector`, `jt_copy_bits`, `jt_extract_bits`, `jt_insert_bits`, `jt_nullify` | bit vectors for shifting: allocate, convert to and from integers, reverse, copy, cut out and splice bit ranges |
| `jt_find_chip`, `jt_find_chain_length`, `jt_expand_portlist`, `jt_lookup_port`, `jt_extract_chip_register`, `jt_insert_chip_register`, `jt_print_chain`, `jt_print_bsr`, `jt_dispose_chain`, `jt_read_chain` | the chain model: find a chip by name, measure the chain, resolve pin names, move a register's bits in and out of the chain image, print and free it |
| `jt_send_instruction`, `jt_set_individual_instructions`, `jt_conditional_reset`, `jt_powerup_chain`, `jt_free_bist` | send an instruction to one chip or one to each, reset the chain only when needed, power up the chips' test logic, release a chip's built-in self-test state |

These boundary-scan helpers were read in their complete N32 address ranges.

- `jt_select_chain` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10033a80; size 68 bytes. It forwards the caller's chain selector to the
  installed low-level chain procedure and returns that procedure's result.
  (`kpm`, 6.5.30m, indirect call at 0x10033aa0.)

- `jt_soft_reset` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10033ad0; size 60 bytes. It invokes the installed soft-reset procedure
  without arguments and propagates its result to the caller. (`kpm`, 6.5.30m,
  indirect call at 0x10033aec.)

- `jt_hard_reset` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10033b10; size 60 bytes. It invokes the installed hard-reset procedure
  without arguments and returns its result unchanged. (`kpm`, 6.5.30m, indirect
  call at 0x10033b2c.)

- `jt_send_instruction` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10033b90; size 84 bytes. It forwards its three arguments to the installed
  instruction-shift procedure and returns that procedure's result. (`kpm`,
  6.5.30m, argument reloads at 0x10033bb4-0x10033bc4.)

- `jt_send_data` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x10033bf0;
  size 84 bytes. It forwards its three arguments to the installed data-shift
  procedure and passes the returned status back unchanged. (`kpm`, 6.5.30m,
  argument reloads at 0x10033c14-0x10033c24.)

- `jt_extract_chip_register` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x100396d0; size 348 bytes. It finds a chip by the supplied chain and chip
  selectors, computes the selected register's byte length by rounding its bit
  count up to a byte, allocates that many bytes, and extracts the register bits
  into the caller's buffer. It stores the bit count through the fourth output
  pointer and returns the allocated byte-vector handle, or zero when the chip
  lookup fails. (`kpm`, 6.5.30m, lookup and sizing at 0x100396f8-0x100397cc.)

- `jt_insert_chip_register` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10039830; size 292 bytes. It finds the selected chip register, reads its bit
  count from the chain description, and inserts the caller's byte vector into
  the register image starting at bit zero. A failed chip lookup returns -1;
  the normal path returns zero after the insertion call. (`kpm`, 6.5.30m,
  register-size calculation at 0x1003988c-0x10039910.)

- `jt_extract_bits` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10039960; size 796 bytes. It resolves a chip and register, walks the
  register's field descriptors, and copies each selected bit from the packed
  source image into the destination bit vector. It preserves destination bits
  outside the selected range, reports an unknown pin or bit position through
  the error hook, and returns -1 on lookup or allocation failure. (`kpm`,
  6.5.30m, bit extraction and destination writes at 0x10039a6c-0x10039bbc.)

- `read_bsdl` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x100375d0;
  size 300 bytes. It opens the requested BSDL path and its associated stream,
  allocates the parser record, reads the two supplied names into that record,
  closes the stream, and returns the record pointer. A failed open reports the
  path and returns zero. (`kpm`, 6.5.30m, file operations at
  0x100375f0-0x100376d0.)

- `read_bsr` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x10035c00;
  size 6000 bytes. It tries up to 32 registered scan descriptions, allocates a
  0x248-byte parser object and its input stream, reads the register data, and
  creates a chain record with the parsed instruction and data vectors. It then
  walks the description entries to accumulate instruction and data lengths,
  closes the stream, and returns the chain record. Missing entries advance to
  the next slot; allocation or parse failures release the temporary objects.
  (`kpm`, 6.5.30m, 32-entry search at 0x10035c2c and chain construction at
  0x10035eac.)

- `jt_powerup_chain` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10035050; size 548 bytes. It walks the chain from the last chip toward the
  first, selects each active chip's power-up instruction, and inserts the
  instruction into the chain image. Chips with a one-bit bypass state use the
  per-chip instruction vector and update the accumulated bit length from the
  selected data register; other chips receive the bypass instruction and add
  one bit. It stores the accumulated length at chain offset 0x18. (`kpm`,
  6.5.30m, reverse chain loop at 0x10035090-0x1003524c.)

The following boundary-scan wrappers were read in their complete N32 address ranges.

- `jt_new_data_vector` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10033410; size 68 bytes. It reads the requested data-register bit count
  from the descriptor's word at +0x18 (`lw` at 0x10033430), passes that count
  to the vector allocator, and returns the allocator's handle. No scan-chain
  register is touched by this wrapper. (`kpm`, 6.5.30m, complete routine
  0x10033410-0x10033453.)

- `jt_new_data_bvector` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10033460; size 76 bytes. It loads the data-vector bit count from +0x18
  (`lw` at 0x10033480), rounds it up by seven and divides by eight (`addiu`
  at 0x10033484 and `srl` at 0x10033488), then returns the byte-vector
  allocator's result. (`kpm`, 6.5.30m, complete routine 0x10033460-0x100334ab.)

- `jt_new_inst_vector` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x100334b0; size 68 bytes. It obtains the instruction-register bit count
  from descriptor offset +0x14 (`lw` at 0x100334d0), calls the instruction
  vector allocator with that count, and returns its result unchanged. The
  wrapper itself performs no hardware access. (`kpm`, 6.5.30m, complete
  routine 0x100334b0-0x100334f3.)

- `jt_new_inst_bvector` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10033500; size 76 bytes. It reads the instruction bit count at +0x14
  (`lw` at 0x10033520), converts it to a rounded byte count with `addiu` at
  0x10033524 and `srl` at 0x10033528, and returns the byte-vector allocation
  result. (`kpm`, 6.5.30m, complete routine 0x10033500-0x1003354b.)

- `jt_dispose_vector` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10033550; size 64 bytes. It forwards the caller's vector handle to the
  installed disposal procedure (`lw` at 0x10033570 followed by `jalr` at
  0x10033574) and returns after that procedure completes. (`kpm`, 6.5.30m,
  complete routine 0x10033550-0x1003358f.)

- `jt_vector_to_int` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10033590; size 100 bytes. It reads four bytes from the supplied vector,
  with the first byte as the least-significant part (`lbu` at 0x100335a0, 0x100335ac,
  0x100335bc and 0x100335cc), combines them at shifts 0, 8, 16 and 24, and
  stores the resulting word through the output pointer (`sw` at 0x100335e4).
  (`kpm`, 6.5.30m, complete routine 0x10033590-0x100335f3.)

- `jt_int_to_vector` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10033600; size 124 bytes. It emits the input word's four bytes into the
  destination vector, storing at offsets 0, 1, 2 and 3 (`sb` at 0x10033614,
  0x10033630, 0x1003364c and 0x10033668) while shifting the source right by
  eight between stores. It returns zero. (`kpm`, 6.5.30m, complete routine
  0x10033600-0x1003367b.)

- `jt_find_chip` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10033680; size 252 bytes. It scans the chain's record array up to the
  count at descriptor offset +8 (`lw` at 0x100336a8), considers only records
  whose kind word is one (`lw` at 0x100336d8 and compare at 0x100336e0), and
  invokes the record matcher with the chip descriptor and caller's selector.
  It returns the first matching index, or -1 after the count is exhausted.
  (`kpm`, 6.5.30m, complete routine 0x10033680-0x1003377b.)

- `jt_set_procs` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10033780; size 104 bytes. It copies the seven procedure pointers from the
  caller's table at offsets 0, 4, 8, 0xc, 0x10, 0x14 and 0x18 (`lw` at
  0x100337a0-0x100337d0) into the library's installed-procedure table and
  returns zero. (`kpm`, 6.5.30m, complete routine 0x10033780-0x100337e7.)

- `jt_init` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x10033a40;
  size 60 bytes. It calls the currently installed initialization procedure
  through the table load at 0x10033a58 and the indirect call at 0x10033a60;
  its return value is passed through unchanged. (`kpm`, 6.5.30m, complete
  routine 0x10033a40-0x10033a7b.)

- `jt_test_thyself` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10033b50; size 60 bytes. It invokes the installed boundary-scan self-test
  procedure through the table loads at 0x10033b68-0x10033b6c and leaves that
  procedure's result as its own return value. (`kpm`, 6.5.30m, complete
  routine 0x10033b50-0x10033b8b.)

- `jt_set_error_handler` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10033c50; size 40 bytes. It stores the caller's error callback in the
  library slot written by `sw` at 0x10033c68 and returns without invoking it.
  (`kpm`, 6.5.30m, complete routine 0x10033c50-0x10033c77.)

- `jt_set_debug_handler` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10033c80; size 40 bytes. It records the supplied debug callback in the
  separate library slot written by `sw` at 0x10033c98; the setter has no
  diagnostic side effect and returns void. (`kpm`, 6.5.30m, complete routine
  0x10033c80-0x10033ca7.)

- `jt_error` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x10033cb0;
  size 184 bytes. It collects the variadic arguments into a local argument
  area, then either calls the installed error callback at the slot loaded by
  `lw` at 0x10033cf0 or formats the message into the library's fallback error
  stream before writing it. (`kpm`, 6.5.30m, complete routine
  0x10033cb0-0x10033d67.)

- `jt_debug` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x10033d70;
  size 116 bytes. It saves the variadic debug arguments, tests the debug
  callback slot with `lw` at 0x10033db0, and calls that callback only when it
  is nonzero; an unset callback makes the function return without output.
  (`kpm`, 6.5.30m, complete routine 0x10033d70-0x10033de3.)

- `jt_perror` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x10033df0;
  size 120 bytes. It formats the supplied error number and text into its local
  buffer through the formatter call at 0x10033e34, then passes that formatted
  message and the original context to `jt_error` through the call at
  0x10033e4c. (`kpm`, 6.5.30m, complete routine 0x10033df0-0x10033e67.)

- `type_to_func` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x10037370;
  size 236 bytes. It maps the type byte after subtracting 0x62 through a
  0x17-entry jump table (`sll` at 0x1003739c and indirect jump at
  0x100373bc), returning the table's values 0, 1, 2, 3 or 4. An out-of-range
  type reports an error and returns -1. (`kpm`, 6.5.30m, complete routine
  0x10037370-0x1003745b.)

- `type_to_safe` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x10037460;
  size 272 bytes. It accepts the type characters `0`, `1`, `X`, `M` and `I`
  and returns the corresponding safety values 0 through 4. Other characters
  invoke the error formatter at 0x1003753c and return -1. (`kpm`, 6.5.30m,
  complete routine 0x10037460-0x1003756f.)

- `premature_eof` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x10037570;
  size 88 bytes. It sends the supplied parser context and position to the
  library error routine, using the fixed premature-end message selected by
  the string pointer loaded at 0x10037598. It returns after reporting the
  error. (`kpm`, 6.5.30m, complete routine 0x10037570-0x100375c7.)

- `jt_lookup_port` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10038410; size 232 bytes. It resolves the port-list index, follows the
  selected entry's linked records through the pointer at +0x20 (`lw` at
  0x100384c0), and compares each record's name against the requested name.
  A match returns the record offset relative to the table base divided by
  0x24 (`div` at 0x100384a8); an exhausted list returns -1. (`kpm`,
  6.5.30m, complete routine 0x10038410-0x100384f7.)

- `porttopin` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x10038500;
  size 260 bytes. It scans the port entries up to the count at +0x3c
  (`lw` at 0x1003852c), compares the requested port with each entry's second
  word (`lw` at 0x10038554), and returns the matching entry's first word
  (`lw` at 0x10038580). No match reports an error and returns the installed
  failure result. (`kpm`, 6.5.30m, complete routine 0x10038500-0x10038603.)

- `pintoport` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x10038610;
  size 260 bytes. It performs the inverse table walk: each entry's first word
  is compared with the requested pin (`lw` at 0x10038664), and a match returns
  the entry's second word (`lw` at 0x10038690). It reports an absent mapping
  through the error path and returns its failure result. (`kpm`, 6.5.30m,
  complete routine 0x10038610-0x10038713.)

- `jt_canonize` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x10038720;
  size 172 bytes. It walks a NUL-terminated string, converts ASCII uppercase
  bytes in the range 0x41-0x5a to lowercase by adding 0x20 (`lbu` at
  0x10038770 and `sb` at 0x10038798), and modifies the string in place. It
  returns the original pointer. (`kpm`, 6.5.30m, complete routine
  0x10038720-0x100387cb.)

- `jt_expand_portlist` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x1003a620; size 68 bytes. It forwards the port-list object to the expanded
  port-list builder through the call at 0x1003a648 and propagates that
  builder's result. (`kpm`, 6.5.30m, complete routine 0x1003a620-0x1003a663.)

- `jt_zclose` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x100393a0;
  size 156 bytes. It tests the supplied compressed-stream handle with the
  predicate call at 0x100393c8, then dispatches to the compressed close path
  or the ordinary close path. The selected cleanup result is returned through
  the final load at 0x10039424. (`kpm`, 6.5.30m, complete routine
  0x100393a0-0x1003943b.)

- `jt_find_chain_length` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x1003ab70; size 564 bytes. It builds two test instruction vectors filled
  with the chain's two scan-state bytes (`sb` at 0x1003abf0 and 0x1003ac04),
  sends both vectors through the installed scan procedures, and compares the
  returned bytes from the two paths. It returns the first differing index or
  -1 when all requested positions match. (`kpm`, 6.5.30m, complete routine
  0x1003ab70-0x1003ada3.)

## GNU readline and history (compiled in)

**Established** (names and strings: "rl_", "history_", "tilde_expand" and the library's own key-binding and completion tables). `kpm`'s viewer links the GNU readline line-editing library and its history module; none of it touches the hardware.

- Line editing, key bindings, the keyboard macro and undo machinery: `_rl_bind_if_unbound`, `_rl_dispatch`, `_rl_erase_at_end_of_line`, `_rl_free_history_entry`, `_rl_kill_kbd_macro`, `_rl_move_cursor_relative`, `_rl_move_vert`, `_rl_output_character_function`, `_rl_output_some_chars`, `_rl_set_screen_size`, `_rl_update_final`, `_rl_vi_done_inserting`, `_rl_vi_reset_last`, `_rl_vi_set_last`, `rl_abort`, `rl_add_defun`, `rl_add_funmap_entry`, `rl_add_undo`, `rl_arrow_keys`, `rl_back_to_indent`, `rl_backward`, `rl_backward_kill_line`, `rl_backward_kill_word`, `rl_backward_word`, `rl_beg_of_line`, `rl_begin_undo_group`, `rl_beginning_of_history`, `rl_bind_key`, `rl_bind_key_in_map`, `rl_call_last_kbd_macro`, `rl_capitalize_word`, `rl_character_len`, `rl_clean_up_for_exit`, `rl_clear_message`, `rl_clear_screen`, `rl_clear_signals`, `rl_complete`, `rl_complete_internal`, `rl_copy_keymap`, `rl_copy_text`, `rl_delete`, `rl_delete_horizontal_space`, `rl_delete_text`, `rl_deprep_terminal`, `rl_digit_argument`, `rl_discard_argument`, `rl_discard_keymap`, `rl_do_lowercase_version`, `rl_do_undo`, `rl_downcase_word`, `rl_dump_functions`, `rl_emacs_editing_mode`, `rl_end_kbd_macro`, `rl_end_of_history`, `rl_end_of_line`, `rl_end_undo_group`, `rl_exchange_mark_and_point`, `rl_execute_next`, `rl_expand_prompt`, `rl_extend_line_buffer`, `rl_forced_update_display`, `rl_forward`, `rl_forward_search_history`, `rl_forward_word`, `rl_function_dumper`, `rl_function_of_keyseq`, `rl_funmap_names`, `rl_gather_tyi`, `rl_generic_bind`, `rl_get_char`, `rl_get_keymap`, `rl_get_keymap_by_name`, `rl_get_next_history`, `rl_get_previous_history`, `rl_get_termcap`, `rl_getc`, `rl_history_search_backward`, `rl_history_search_forward`, `rl_init_argument`, `rl_initialize`, `rl_initialize_funmap`, `rl_insert`, `rl_insert_completions`, `rl_insert_text`, `rl_invoking_keyseqs`, `rl_invoking_keyseqs_in_map`, `rl_kill_full_line`, `rl_kill_line`, `rl_kill_text`, `rl_kill_word`, `rl_list_funmap_names`, `rl_macro_bind`, `rl_make_bare_keymap`, `rl_make_keymap`, `rl_message`, `rl_modifying`, `rl_named_function`, `rl_newline`, `rl_noninc_forward_search`, `rl_noninc_forward_search_again`, `rl_noninc_reverse_search`, `rl_noninc_reverse_search_again`, `rl_on_new_line`, `rl_parse_and_bind`, `rl_possible_completions`, `rl_prep_terminal`, `rl_quoted_insert`, `rl_re_read_init_file`, `rl_read_init_file`, `rl_read_key`, `rl_redisplay`, `rl_refresh_line`, `rl_reset_line_state`, `rl_reset_terminal`, `rl_restart_output`, `rl_reverse_search_history`, `rl_revert_line`, `rl_rubout`, `rl_set_key`, `rl_set_keymap`, `rl_set_keymap_from_edit_mode`, `rl_set_mark`, `rl_set_retained_kills`, `rl_set_signals`, `rl_show_char`, `rl_start_kbd_macro`, `rl_stop_output`, `rl_stuff_char`, `rl_tab_insert`, `rl_tilde_expand`, `rl_translate_keyseq`, `rl_transpose_chars`, `rl_transpose_words`, `rl_tty_status`, `rl_unbind_key`, `rl_unbind_key_in_map`, `rl_undo_command`, `rl_unget_char`, `rl_universal_argument`, `rl_unix_line_discard`, `rl_unix_word_rubout`, `rl_upcase_word`, `rl_variable_bind`, `rl_vi_append_eol`, `rl_vi_append_mode`, `rl_vi_arg_digit`, `rl_vi_bWord`, `rl_vi_bracktype`, `rl_vi_bword`, `rl_vi_change_case`, `rl_vi_change_char`, `rl_vi_change_to`, `rl_vi_char_search`, `rl_vi_check`, `rl_vi_column`, `rl_vi_comment`, `rl_vi_complete`, `rl_vi_delete`, `rl_vi_delete_to`, `rl_vi_domove`, `rl_vi_eWord`, `rl_vi_editing_mode`, `rl_vi_end_word`, `rl_vi_eof_maybe`, `rl_vi_eword`, `rl_vi_fWord`, `rl_vi_fetch_history`, `rl_vi_first_print`, `rl_vi_fword`, `rl_vi_insert_beg`, `rl_vi_insertion_mode`, `rl_vi_match`, `rl_vi_movement_mode`, `rl_vi_next_word`, `rl_vi_overstrike`, `rl_vi_overstrike_delete`, `rl_vi_prev_word`, `rl_vi_put`, `rl_vi_redo`, `rl_vi_replace`, `rl_vi_search`, `rl_vi_search_again`, `rl_vi_subst`, `rl_vi_textmod_command`, `rl_vi_tilde_expand`, `rl_vi_yank_arg`, `rl_vi_yank_to`, `rl_yank`, `rl_yank_last_arg`, `rl_yank_nth_arg`, `rl_yank_pop`.
- History list and search: `add_history`, `append_history`, `current_history`, `get_history_event`, `history_arg_extract`, `history_expand`, `history_get`, `history_get_history_state`, `history_is_stifled`, `history_list`, `history_search`, `history_search_pos`, `history_search_prefix`, `history_set_history_state`, `history_set_pos`, `history_tokenize`, `history_total_bytes`, `history_truncate_file`, `next_history`, `previous_history`, `read_history`, `read_history_range`, `remove_history`, `replace_history_entry`, `stifle_history`, `unstifle_history`, `using_history`, `where_history`, `write_history`.
- Completion, prompting and small helpers: `completion_matches`, `filename_completion_function`, `get_y_or_n`, `readline`, `username_completion_function`, `tilde_expand`, `tilde_expand_word`, `xmalloc`, `xrealloc`.
- Character-class and string helpers: `alphabetic`, `backspace`, `crlf`, `digit_p`, `digit_value`, `ding`, `free_undo_list`, `ibuffer_space`, `lowercase_p`, `maybe_replace_line`, `maybe_save_line`, `maybe_unsave_line`, `pure_alphabetic`, `rltty_set_default_bindings`, `savestring`, `to_lower`, `to_upper`, `uppercase_p`.

**Unknown: no shipped software or published source depends on it:** what "BEF" stands for. Routes tried: the strings and section names of `kpm`, `irsaudit` and `postmortem`.

## Capture routines read in full

- `adapterInspection` (`usr/gfx/KONA/bin/kpm` 0x10012378, 1212 bytes, `hip.c`):
  **Established.** Records the adapter registers for the report. `a0` (`s3`) is the report handle. It calls `klog` (0x1000f794) with level 5 and "Inspecting HIP (before Jtag)\n" (0x100747b0) and `dfNewSection` (0x1000b1a0) with the report and the name "adapter-registers" (0x100747d0). It then loads the word at `kpminfo` + 8 (the global `kpminfo`, whose address is the GOT entry at gp-29880; the load is at 0x100123e8). When that word is zero it skips the reads. Otherwise it makes fourteen calls of `assign_register` (0x100121f4) on the buffer at 0x100b2620 (`s0`, written out as 8700 bytes, which is 145 records of 60 bytes), each with a register key in `a1` and, in `a2`, a word read from the absolute address 0x10000 plus the same key: keys 12, 20, 28, 36, 44, 52, 60, 100, 108, 116, 124, 132, 140 and 148, in that order. The reads are plain 32-bit loads at 0x1000c, 0x10014, 0x1001c, 0x10024, 0x1002c, 0x10034, 0x1003c, 0x10064, 0x1006c, 0x10074, 0x1007c, 0x10084, 0x1008c and 0x10094, addresses far below the program image, so a window the program does not map itself. `assign_register` finds the record by looking the key up with `locate_register` (0x10012068) in the buffer; a negative result is returned as it is, otherwise it stores `a2` in the word at +52 of the 60-byte record with that index (the instructions at 0x10012230 to 0x1001224c) and returns 0. A negative result from any of the fourteen calls goes to a stub that calls `__assert` (the GOT entry at gp-31656) with "rc >= 0" (0x100747e8), "hip.c" (0x100747f0) and the source line 106, 107, 108, 109, 110, 111, 112, 114, 115, 116, 117, 118, 119 or 120 for the keys in the order above, and then resumes at the next call if `__assert` returns. Both paths finish by calling `dfWriteSection` (0x1000b2c8) with the report, the buffer and 8700 bytes and returning 0.
